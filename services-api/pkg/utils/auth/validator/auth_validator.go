// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package validator

import (
	"bytes"
	"crypto/rsa"
	"encoding/base64"
	"encoding/binary"
	"fmt"
	"math/big"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"

	"github.com/AccelByte/bloom"
	"github.com/AccelByte/go-jose/jwt"
	"github.com/pkg/errors"
)

type AuthTokenValidator interface {
	Initialize()
	Validate(token string, permission *Permission, namespace *string, userId *string) error
}

type authTokenValidator struct {
	authService     iam.OAuth20Service
	refreshInterval time.Duration

	filter                *bloom.Filter
	jwkSet                *iamclientmodels.OauthcommonJWKSet
	jwtClaims             JWTClaims
	jwtEncoding           base64.Encoding
	localValidationActive bool
	publicKeys            map[string]*rsa.PublicKey
	revokedUsers          map[string]time.Time
	roles                 map[string]*iamclientmodels.ModelRoleResponseV3
}

func (v *authTokenValidator) Initialize() {
	if err := v.fetchAll(); err != nil {
		panic(err)
	}
	go func() {
		for {
			time.Sleep(v.refreshInterval)
			if err := v.fetchClientToken(); err != nil {
				panic(err)
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.refreshInterval)
			if err := v.fetchJWKSet(); err != nil {
				panic(err)
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.refreshInterval)
			if err := v.fetchRevocationList(); err != nil {
				panic(err)
			}
		}
	}()
}

func (v *authTokenValidator) Validate(token string, permission *Permission, namespace *string, userId *string) error {
	jsonWebToken, err := jwt.ParseSigned(token)
	if err != nil {
		return err
	}

	if len(jsonWebToken.Headers) == 0 {
		return errors.New("no headers found")
	}

	kid := jsonWebToken.Headers[0].KeyID
	if kid == "" {
		return errors.New("'kid' header not found")
	}

	publicKey := v.publicKeys[kid]
	err = jsonWebToken.Claims(publicKey, &v.jwtClaims)
	if err != nil {
		return err
	}

	if !v.localValidationActive {
		input := &o_auth2_0.VerifyTokenV3Params{
			Token: token,
		}
		_, errVerify := v.authService.VerifyTokenV3Short(input)
		if errVerify != nil {
			return errVerify
		}
		fmt.Print("token verified")

		if !v.hasValidPermissions(v.jwtClaims, permission, namespace, userId) {
			return errors.New("insufficient permissions")
		}

		return nil
	}

	err = v.jwtClaims.Validate()
	if err != nil {
		return err
	}

	if v.isTokenRevoked(token) {
		return errors.New("token was revoked")
	}

	if v.isUserRevoked(v.jwtClaims.Subject, int64(v.jwtClaims.IssuedAt)) {
		return errors.New("user was revoked")
	}

	if !v.hasValidPermissions(v.jwtClaims, permission, namespace, userId) {
		return errors.New("insufficient permissions")
	}

	return nil
}

func (v *authTokenValidator) convertExponent(e string) (int, error) {
	decodedE, err := v.jwtEncoding.DecodeString(e)
	if err != nil {
		return 0, err
	}

	var bytesE []byte
	if len(bytesE) < 8 {
		bytesE = make([]byte, 8-len(decodedE), 8)
		bytesE = append(bytesE, decodedE...)
	} else {
		bytesE = decodedE
	}

	readerE := bytes.NewReader(bytesE)

	var uint64E uint64
	err = binary.Read(readerE, binary.BigEndian, &uint64E)
	if err != nil {
		return 0, err
	}

	return int(uint64E), nil
}

func (v *authTokenValidator) convertModulus(n string) (*big.Int, error) {
	decodedN, err := v.jwtEncoding.DecodeString(n)
	if err != nil {
		return nil, err
	}

	bigN := big.NewInt(0)
	bigN.SetBytes(decodedN)

	return bigN, nil
}

func (v *authTokenValidator) convertToPermission(permission iamclientmodels.AccountcommonPermissionV3) Permission {
	resource := ""
	action := 0

	if permission.Resource != nil {
		resource = *permission.Resource
	}
	if permission.Action != nil {
		action = int(*permission.Action)
	}

	return Permission{
		Resource:        resource,
		Action:          action,
		ScheduledAction: int(permission.SchedAction),
		CronSchedule:    permission.SchedCron,
		RangeSchedule:   permission.SchedRange,
	}
}

func (v *authTokenValidator) convertToPublicKey(jwkKey *iamclientmodels.OauthcommonJWKKey) (*rsa.PublicKey, error) {
	n, err := v.convertModulus(jwkKey.N)
	if err != nil {
		return nil, err
	}

	e, err := v.convertExponent(jwkKey.E)
	if err != nil {
		return nil, err
	}

	return &rsa.PublicKey{N: n, E: e}, nil
}

func (v *authTokenValidator) fetchAll() error {
	err := v.fetchClientToken()
	if err != nil {
		return err
	}

	err = v.fetchJWKSet()
	if err != nil {
		return err
	}

	err = v.fetchRevocationList()
	if err != nil {
		return err
	}

	return nil
}

func (v *authTokenValidator) fetchClientToken() error {
	clientId := v.authService.ConfigRepository.GetClientId()
	clientSecret := v.authService.ConfigRepository.GetClientSecret()

	return v.authService.LoginClient(&clientId, &clientSecret)
}

func (v *authTokenValidator) fetchJWKSet() error {
	jwkSet, err := v.authService.GetJWKSV3Short(&o_auth2_0.GetJWKSV3Params{})
	if err != nil {
		return err
	}

	for _, key := range jwkSet.Keys {
		publicKey, err := v.convertToPublicKey(key)
		if err != nil {
			return err
		}

		v.publicKeys[key.Kid] = publicKey
	}

	return nil
}

func (v *authTokenValidator) fetchRevocationList() error {
	revocationList, err := v.authService.GetRevocationListV3Short(&o_auth2_0.GetRevocationListV3Params{})
	if err != nil {
		return err
	}

	v.filter = bloom.From(revocationList.RevokedTokens.Bits, uint(*revocationList.RevokedTokens.K))

	for _, revokedUser := range revocationList.RevokedUsers {
		v.revokedUsers[*revokedUser.ID] = time.Time(revokedUser.RevokedAt)
	}

	return nil
}

func (v *authTokenValidator) getRole(roleId string, forceFetch bool) (*iamclientmodels.ModelRoleResponseV3, error) {
	if !forceFetch {
		if role, found := v.roles[roleId]; found {
			return role, nil
		}
	}

	roleService := iam.RolesService{
		Client:           v.authService.Client,
		ConfigRepository: v.authService.ConfigRepository,
		TokenRepository:  v.authService.TokenRepository,
	}
	role, err := roleService.AdminGetRoleV3Short(&roles.AdminGetRoleV3Params{RoleID: roleId})
	if err != nil {
		return nil, err
	}

	v.roles[roleId] = role

	return role, nil
}

func (v *authTokenValidator) getRolePermissions(roleId string, forceFetch bool) ([]Permission, error) {
	role, err := v.getRole(roleId, forceFetch)
	if err != nil {
		return nil, err
	}

	permissions := make([]Permission, len(role.Permissions))
	for index, permission := range role.Permissions {
		permissions[index] = v.convertToPermission(*permission)
	}

	return permissions, nil
}

func (v *authTokenValidator) getRolePermissions2(roleId string, namespace string, userId *string, forceFetch bool) ([]Permission, error) {
	permissions, err := v.getRolePermissions(roleId, forceFetch)
	if err != nil {
		return nil, err
	}

	modifiedPermissions := make([]Permission, len(permissions))
	for index, permission := range permissions {
		modifiedResource := v.replaceResource(permission.Resource, &namespace, nil, nil, userId, false)
		modifiedPermissions[index] = Permission{
			Action:   permission.Action,
			Resource: modifiedResource,
		}
	}

	return modifiedPermissions, nil
}

func (v *authTokenValidator) getRolePermissions3(namespaceRole NamespaceRole, userId *string, forceFetch bool) ([]Permission, error) {
	return v.getRolePermissions2(namespaceRole.RoleID, namespaceRole.Namespace, userId, forceFetch)
}

func (v *authTokenValidator) hasValidPermissions(claims JWTClaims, permission *Permission, namespace *string, userId *string) bool {
	if permission == nil {
		return true
	}

	tokenNamespace := claims.Namespace
	if tokenNamespace == "" {
		return false
	}

	modifiedResource := v.replaceResource(
		permission.Resource,
		namespace,
		&tokenNamespace,
		nil,
		userId,
		false,
	)

	originPermissions := claims.Permissions
	if len(originPermissions) > 0 &&
		v.validatePermissions(originPermissions, modifiedResource, permission.Action) {
		return true
	}

	claimsUserId := claims.Subject
	namespaceRoles := claims.NamespaceRoles
	if claimsUserId != "" && len(namespaceRoles) > 0 {
		allRoleNamespacePermissions := make([]Permission, 0)
		for _, namespaceRole := range namespaceRoles {
			roleNamespacePermissions, err := v.getRolePermissions3(namespaceRole, &claimsUserId, false)
			if err != nil {
				panic(err)
			}

			allRoleNamespacePermissions = append(allRoleNamespacePermissions, roleNamespacePermissions...)
		}
		if len(allRoleNamespacePermissions) > 0 &&
			v.validatePermissions(allRoleNamespacePermissions, modifiedResource, permission.Action) {
			return true
		}
	}

	claimsRoles := claims.Roles
	if len(claimsRoles) > 0 {
		allRolePermissions := make([]Permission, 0)
		for _, roleId := range claimsRoles {
			rolePermissions, err := v.getRolePermissions2(roleId, tokenNamespace, userId, false)
			if err != nil {
				panic(err)
			}

			allRolePermissions = append(allRolePermissions, rolePermissions...)
		}
		if len(allRolePermissions) > 0 &&
			v.validatePermissions(allRolePermissions, modifiedResource, permission.Action) {
			return true
		}
	}

	return false
}

func (v *authTokenValidator) isTokenRevoked(token string) bool {
	return v.filter.MightContain([]byte(token))
}

func (v *authTokenValidator) isUserRevoked(userId string, issuedAt int64) bool {
	if revokedAt, found := v.revokedUsers[userId]; found {
		return revokedAt.Unix() >= issuedAt
	}

	return false
}

func (v *authTokenValidator) replaceResource(resource string, namespace *string, tokenNamespace *string, publisherNamespace *string, userId *string, crossAllowed bool) string {
	modifiedResource := resource

	if crossAllowed && tokenNamespace != nil && (publisherNamespace == tokenNamespace || publisherNamespace == namespace) {
		modifiedResource = strings.Replace(modifiedResource, "{namespace}", *tokenNamespace, -1)
	}

	if namespace != nil {
		modifiedResource = strings.Replace(modifiedResource, "{namespace}", *namespace, -1)
	}

	if userId != nil {
		modifiedResource = strings.Replace(modifiedResource, "{userId}", *userId, -1)
	}

	return modifiedResource
}

func (v *authTokenValidator) validatePermissions(permissions []Permission, resource string, action int) bool {
	if len(permissions) > 0 {
		requiredResourceItems := strings.Split(resource, ":")
		for _, permission := range permissions {
			hasResourceItems := strings.Split(permission.Resource, ":")

			hasResourceItemsLen := len(hasResourceItems)
			requiredResourceItemsLen := len(requiredResourceItems)
			minLen := min(hasResourceItemsLen, requiredResourceItemsLen)

			matches := true
			for i := 0; i < minLen; i++ {
				s1 := hasResourceItems[i]
				s2 := requiredResourceItems[i]
				if s1 != s2 && s1 != "*" {
					matches = false

					break
				}
			}

			if matches {
				if hasResourceItemsLen < requiredResourceItemsLen {
					if hasResourceItems[hasResourceItemsLen-1] == "*" {
						if hasResourceItemsLen < 2 {
							return true
						} else {
							segment := hasResourceItems[hasResourceItemsLen-2]
							if segment == "NAMESPACE" || segment == "USER" {
								matches = false
							} else {
								matches = true
							}
						}
					} else {
						matches = false
					}
					if !matches {
						continue
					}
				} else if hasResourceItemsLen > requiredResourceItemsLen {
					for i := requiredResourceItemsLen; i < hasResourceItemsLen; i++ {
						if hasResourceItems[i] != "*" {
							matches = false

							break
						}
					}
					if !matches {
						continue
					}
				}

				if (permission.Action & action) > 0 {
					return true
				}
			}
		}
	}

	return false
}

func NewTokenValidator(authService iam.OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	return &authTokenValidator{
		authService:     authService,
		refreshInterval: refreshInterval,

		filter:                nil,
		jwkSet:                nil,
		jwtClaims:             JWTClaims{},
		jwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		publicKeys:            make(map[string]*rsa.PublicKey),
		localValidationActive: false,
		revokedUsers:          make(map[string]time.Time),
		roles:                 make(map[string]*iamclientmodels.ModelRoleResponseV3),
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}

	return b
}
