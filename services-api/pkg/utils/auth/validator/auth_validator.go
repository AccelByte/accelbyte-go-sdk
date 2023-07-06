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

type TokenValidator struct {
	AuthService     iam.OAuth20Service
	RefreshInterval time.Duration

	Filter                *bloom.Filter
	JwkSet                *iamclientmodels.OauthcommonJWKSet
	JwtClaims             JWTClaims
	JwtEncoding           base64.Encoding
	LocalValidationActive bool
	PublicKeys            map[string]*rsa.PublicKey
	RevokedUsers          map[string]time.Time
	Roles                 map[string]*iamclientmodels.ModelRoleResponseV3
}

func (v *TokenValidator) Initialize() {
	if err := v.fetchAll(); err != nil {
		panic(err)
	}
	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchClientToken(); err != nil {
				panic(err)
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchJWKSet(); err != nil {
				panic(err)
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchRevocationList(); err != nil {
				panic(err)
			}
		}
	}()
}

func (v *TokenValidator) Validate(token string, permission *Permission, namespace *string, userId *string) error {
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

	publicKey := v.PublicKeys[kid]
	err = jsonWebToken.Claims(publicKey, &v.JwtClaims)
	if err != nil {
		return err
	}

	if !v.LocalValidationActive {
		input := &o_auth2_0.VerifyTokenV3Params{
			Token: token,
		}
		_, errVerify := v.AuthService.VerifyTokenV3Short(input)
		if errVerify != nil {
			return errVerify
		}
		fmt.Print("token verified")

		if !v.hasValidPermissions(v.JwtClaims, permission, namespace, userId) {
			return errors.New("insufficient permissions")
		}

		return nil
	}

	err = v.JwtClaims.Validate()
	if err != nil {
		return err
	}

	if v.isTokenRevoked(token) {
		return errors.New("token was revoked")
	}

	if v.isUserRevoked(v.JwtClaims.Subject, int64(v.JwtClaims.IssuedAt)) {
		return errors.New("user was revoked")
	}

	if !v.hasValidPermissions(v.JwtClaims, permission, namespace, userId) {
		return errors.New("insufficient permissions")
	}

	return nil
}

func (v *TokenValidator) convertExponent(e string) (int, error) {
	decodedE, err := v.JwtEncoding.DecodeString(e)
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

func (v *TokenValidator) convertModulus(n string) (*big.Int, error) {
	decodedN, err := v.JwtEncoding.DecodeString(n)
	if err != nil {
		return nil, err
	}

	bigN := big.NewInt(0)
	bigN.SetBytes(decodedN)

	return bigN, nil
}

func (v *TokenValidator) convertToPermission(permission iamclientmodels.AccountcommonPermissionV3) Permission {
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

func (v *TokenValidator) convertToPublicKey(jwkKey *iamclientmodels.OauthcommonJWKKey) (*rsa.PublicKey, error) {
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

func (v *TokenValidator) fetchAll() error {
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

func (v *TokenValidator) fetchClientToken() error {
	clientId := v.AuthService.ConfigRepository.GetClientId()
	clientSecret := v.AuthService.ConfigRepository.GetClientSecret()

	return v.AuthService.LoginClient(&clientId, &clientSecret)
}

func (v *TokenValidator) fetchJWKSet() error {
	jwkSet, err := v.AuthService.GetJWKSV3Short(&o_auth2_0.GetJWKSV3Params{})
	if err != nil {
		return err
	}

	for _, key := range jwkSet.Keys {
		publicKey, err := v.convertToPublicKey(key)
		if err != nil {
			return err
		}

		v.PublicKeys[key.Kid] = publicKey
	}

	return nil
}

func (v *TokenValidator) fetchRevocationList() error {
	revocationList, err := v.AuthService.GetRevocationListV3Short(&o_auth2_0.GetRevocationListV3Params{})
	if err != nil {
		return err
	}

	v.Filter = bloom.From(revocationList.RevokedTokens.Bits, uint(*revocationList.RevokedTokens.K))

	for _, revokedUser := range revocationList.RevokedUsers {
		v.RevokedUsers[*revokedUser.ID] = time.Time(revokedUser.RevokedAt)
	}

	return nil
}

func (v *TokenValidator) getRole(roleId string, forceFetch bool) (*iamclientmodels.ModelRoleResponseV3, error) {
	if !forceFetch {
		if role, found := v.Roles[roleId]; found {
			return role, nil
		}
	}

	roleService := iam.RolesService{
		Client:           v.AuthService.Client,
		ConfigRepository: v.AuthService.ConfigRepository,
		TokenRepository:  v.AuthService.TokenRepository,
	}
	role, err := roleService.AdminGetRoleV3Short(&roles.AdminGetRoleV3Params{RoleID: roleId})
	if err != nil {
		return nil, err
	}

	v.Roles[roleId] = role

	return role, nil
}

func (v *TokenValidator) getRolePermissions(roleId string, forceFetch bool) ([]Permission, error) {
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

func (v *TokenValidator) getRolePermissions2(roleId string, namespace string, userId *string, forceFetch bool) ([]Permission, error) {
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

func (v *TokenValidator) getRolePermissions3(namespaceRole NamespaceRole, userId *string, forceFetch bool) ([]Permission, error) {
	return v.getRolePermissions2(namespaceRole.RoleID, namespaceRole.Namespace, userId, forceFetch)
}

func (v *TokenValidator) hasValidPermissions(claims JWTClaims, permission *Permission, namespace *string, userId *string) bool {
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

func (v *TokenValidator) isTokenRevoked(token string) bool {
	return v.Filter.MightContain([]byte(token))
}

func (v *TokenValidator) isUserRevoked(userId string, issuedAt int64) bool {
	if revokedAt, found := v.RevokedUsers[userId]; found {
		return revokedAt.Unix() >= issuedAt
	}

	return false
}

func (v *TokenValidator) replaceResource(resource string, namespace *string, tokenNamespace *string, publisherNamespace *string, userId *string, crossAllowed bool) string {
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

func (v *TokenValidator) validatePermissions(permissions []Permission, resource string, action int) bool {
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
	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:                nil,
		JwkSet:                nil,
		JwtClaims:             JWTClaims{},
		JwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys:            make(map[string]*rsa.PublicKey),
		LocalValidationActive: false,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRoleResponseV3),
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}

	return b
}
