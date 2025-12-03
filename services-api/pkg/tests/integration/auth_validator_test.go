// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"crypto/rand"
	"crypto/rsa"
	"encoding/base64"
	"fmt"
	"os"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/go-jose"
	"github.com/AccelByte/go-jose/jwt"
	"github.com/stretchr/testify/assert"
)

func TestTokenValidator_ValidateTokenClient(t *testing.T) {
	tests := []struct {
		name            string
		localValidation bool
		action          int
		resource        string
		expectError     bool
	}{
		{"LocalValidation_False_Valid", false, 2, "ROLE", false},
		{"LocalValidation_False_InvalidResource", false, 2, "ROLE:INVALID", true},
		{"LocalValidation_False_InvalidAction", false, 1, "ROLE", true},
		{"LocalValidation_True_Valid", true, 2, "ROLE", false},
		{"LocalValidation_True_InvalidResource", true, 2, "ROLE:INVALID", true},
		{"LocalValidation_True_InvalidAction", true, 1, "ROLE", true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Arrange
			configRepo := auth.DefaultConfigRepositoryImpl()
			tokenRepo := auth.DefaultTokenRepositoryImpl()
			authService := iam.OAuth20Service{
				Client:           factory.NewIamClient(configRepo),
				ConfigRepository: configRepo,
				TokenRepository:  tokenRepo,
			}

			err := authService.LoginClient(&configRepo.ClientId, &configRepo.ClientSecret)
			if err != nil {
				assert.Fail(t, err.Error())
				return
			}

			accessToken, err := authService.GetToken()
			if err != nil {
				assert.Fail(t, err.Error())
				return
			}

			namespace := os.Getenv("AB_NAMESPACE")
			requiredPermission := iam.Permission{
				Action:   tt.action,
				Resource: tt.resource,
			}

			authService.SetLocalValidation(tt.localValidation)
			claims, errClaims := authService.ParseAccessTokenToClaims(accessToken, false)
			if errClaims != nil {
				assert.Fail(t, errClaims.Error())
				return
			}

			// Act
			err = authService.Validate(accessToken, &requiredPermission, &namespace, nil)

			// Assert
			if tt.expectError {
				assert.NotNil(t, err)
			} else {
				assert.Nil(t, err)
				assert.Equal(t, claims.Namespace, namespace)
			}
		})
	}
}

func TestTokenValidator_ValidateTokenUser(t *testing.T) {
	tests := []struct {
		name            string
		localValidation bool
		action          int
		resource        string
		expectError     bool
	}{
		{"LocalValidation_False_Valid", false, 2, "NAMESPACE:{namespace}:WALLET", false},
		{"LocalValidation_False_InvalidResource", false, 2, "NAMESPACE:{namespace}:WALLET:INVALID", true},
		{"LocalValidation_False_InvalidAction", false, 1, "NAMESPACE:{namespace}:WALLET", true},
		{"LocalValidation_True_Valid", true, 2, "NAMESPACE:{namespace}:WALLET", false},
		{"LocalValidation_True_InvalidResource", true, 2, "NAMESPACE:{namespace}:WALLET:INVALID", true},
		{"LocalValidation_True_InvalidAction", true, 1, "NAMESPACE:{namespace}:WALLET", true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Arrange
			configRepo := auth.DefaultConfigRepositoryImpl()
			tokenRepo := auth.DefaultTokenRepositoryImpl()
			authService := iam.OAuth20Service{
				Client:           factory.NewIamClient(configRepo),
				ConfigRepository: configRepo,
				TokenRepository:  tokenRepo,
			}

			username := os.Getenv("AB_USERNAME")
			password := os.Getenv("AB_PASSWORD")

			err := authService.LoginUser(username, password)
			if err != nil {
				assert.Fail(t, err.Error())
				return
			}

			accessToken, err := authService.GetToken()
			if err != nil {
				assert.Fail(t, err.Error())
				return
			}

			namespace := os.Getenv("AB_NAMESPACE")
			requiredPermission := iam.Permission{
				Action:   tt.action,
				Resource: tt.resource,
			}

			authService.SetLocalValidation(tt.localValidation)
			claims, errClaims := authService.ParseAccessTokenToClaims(accessToken, false)
			if errClaims != nil {
				assert.Fail(t, errClaims.Error())
				return
			}

			// Act
			err = authService.Validate(accessToken, &requiredPermission, &namespace, nil)

			// Assert
			if tt.expectError {
				assert.NotNil(t, err)
			} else {
				assert.Nil(t, err)
				assert.Equal(t, claims.Namespace, namespace)
			}
		})
	}
}

func TestTokenValidator_ValidateExtendNamespace(t *testing.T) {
	t.Skip() // only allow publisher/studio namespace oauth client for this grant type

	// Arrange
	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := iam.OAuth20Service{
		Client:           factory.NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	extendNamespace := os.Getenv("AB_NAMESPACE")

	token, err := authService.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{
		ExtendNamespace: &extendNamespace,
		GrantType:       o_auth2_0.TokenGrantV3UrnIetfParamsOauthGrantTypeExtendClientCredentialsConstant,
	})
	if err != nil {
		assert.Fail(t, err.Error())

		return
	}

	authService.SetLocalValidation(false)                                                // true will do it locally, false will do it remotely
	claims, errClaims := authService.ParseAccessTokenToClaims(*token.AccessToken, false) // false will not validate at all, only claim. This test will validate in the next line
	if errClaims != nil {
		assert.Fail(t, errClaims.Error())

		return
	}

	// Act
	err = authService.Validate(*token.AccessToken, nil, &extendNamespace, nil) // validate against the extend namespace

	// Assert
	assert.Nil(t, err)
	assert.Equal(t, claims.ExtendNamespace, extendNamespace)
}

func TestTokenValidator_ValidateNamespaceRevamp(t *testing.T) {
	validator := NewTokenValidatorTest(iam.OAuth20Service{}, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	tests := []struct {
		Name               string
		Key                *rsa.PrivateKey
		Claims             iam.JWTClaims
		IsErrorNil         bool
		ExpectedPermission iam.Permission
	}{
		{
			Name:       "assert 1",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "studio1",
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: iam.Permission{
				Resource: "NAMESPACE:{namespace}:CLIENT",
				Action:   2,
			},
		},

		{
			Name:       "assert 2",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "studio2",
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: iam.Permission{
				Resource: "NAMESPACE:studio2-:CLIENT",
				Action:   2,
			},
		},

		{
			Name:       "assert 3",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "studio1-game1",
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: iam.Permission{
				Resource: "NAMESPACE:{namespace}:CLIENT",
				Action:   2,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}

		// Act
		err = validator.Validate(token, &tc.ExpectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func TestTokenValidator_ValidateNamespaceRevamp2(t *testing.T) {
	validator := NewTokenValidatorTest2(iam.OAuth20Service{}, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	expectedPermission := iam.Permission{
		Resource: "NAMESPACE:{namespace}:CLIENT",
		Action:   2,
	}

	tests := []struct {
		Name       string
		Key        *rsa.PrivateKey
		Claims     iam.JWTClaims
		IsErrorNil bool
	}{
		{
			Name:       "assert 4",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "studio1", // game1 in the NewTokenValidatorTest2
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},

		{
			Name:       "assert 5",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "game2",
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}

		// Act
		err = validator.Validate(token, &expectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func TestTokenValidator_ValidateNamespaceRevamp3(t *testing.T) {
	validator := NewTokenValidatorTest3(iam.OAuth20Service{}, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	expectedPermission := iam.Permission{
		Resource: "NAMESPACE:{namespace}:CLIENT",
		Action:   2,
	}

	tests := []struct {
		Name       string
		Key        *rsa.PrivateKey
		Claims     iam.JWTClaims
		IsErrorNil bool
	}{

		{
			Name:       "assert 5",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: iam.JWTClaims{
				Namespace: "game2", // the NewTokenValidatorTest3 is using game1 as namespace
				Permissions: []iam.Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}

		// Act
		err = validator.Validate(token, &expectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func getKey() (*rsa.PublicKey, *rsa.PrivateKey) {
	pr, err := rsa.GenerateKey(rand.Reader, 1024)
	if err != nil {
		return nil, nil
	}

	return &pr.PublicKey, pr
}

var privateKey *rsa.PrivateKey

func NewTokenValidatorTest(authService iam.OAuth20Service, refreshInterval time.Duration) iam.AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &iam.TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   iam.JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts:     make(map[string]*iam.NamespaceContext),
	}
}

func NewTokenValidatorTest2(authService iam.OAuth20Service, refreshInterval time.Duration) iam.AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &iam.TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   iam.JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts: map[string]*iam.NamespaceContext{
			"studio1": {
				Namespace:          "game1",
				Type:               iam.TypeGame,
				PublisherNamespace: "accelbyte",
				StudioNamespace:    "studio1",
			},
		},
	}
}

func NewTokenValidatorTest3(authService iam.OAuth20Service, refreshInterval time.Duration) iam.AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &iam.TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   iam.JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts: map[string]*iam.NamespaceContext{
			"game1": {
				Namespace:          "game1",
				Type:               iam.TypeGame,
				PublisherNamespace: "accelbyte",
				StudioNamespace:    "studio1",
			},
		},
	}
}

func findAndCheckResourceFromRole(configRepo *auth.ConfigRepositoryImpl, tokenRepo *auth.TokenRepositoryImpl, roleID string, resourceToCheck string) (int, error) {
	iamClient := factory.NewIamClient(configRepo)

	resultAction := -1

	overrideRoleService := iam.OverrideRoleConfigv3Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	tkn, err := tokenRepo.GetToken()
	if err != nil {
		return resultAction, err
	}

	permissions, err := overrideRoleService.AdminGetRoleNamespacePermissionV3Short(&override_role_config_v3.AdminGetRoleNamespacePermissionV3Params{
		RoleID:    roleID,
		Namespace: *tkn.Namespace,
	})

	if err != nil {
		return resultAction, err
	}

	for _, permission := range permissions.Permissions {
		if *permission.Resource == resourceToCheck {
			resultAction = int(*permission.Action)
			break
		}
	}

	return resultAction, err
}

func Test_RoleOverride(t *testing.T) {
	roleIdentityToUpdate := "USER"
	resourceToCheck := "NAMESPACE:{namespace}:PROFILE"
	actionToCheck := 7
	updatedActionToCheck := 2
	checkCount := 20
	checkInterval := 1000

	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	iamClient := factory.NewIamClient(configRepo)

	authService := iam.OAuth20Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	err := authService.LoginClient(&configRepo.ClientId, &configRepo.ClientSecret)
	assert.NoError(t, err)

	tkn, err := tokenRepo.GetToken()
	assert.NoError(t, err)

	roleService := iam.RolesService{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	adminRole := false
	roles, err := roleService.AdminGetRolesV4Short(&roles.AdminGetRolesV4Params{
		AdminRole: &adminRole,
	})
	assert.NoError(t, err)

	userRoleID := ""

	for _, role := range roles.Data {
		if strings.ToUpper(*role.RoleName) == roleIdentityToUpdate {
			userRoleID = *role.RoleID
			break
		}
	}

	action, err := findAndCheckResourceFromRole(configRepo, tokenRepo, userRoleID, resourceToCheck)

	assert.NoError(t, err)
	assert.Equal(t, actionToCheck, action)

	overrideRoleService := iam.OverrideRoleConfigv3Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	updateResponse, err := overrideRoleService.AdminUpdateRoleOverrideConfigV3Short(&override_role_config_v3.AdminUpdateRoleOverrideConfigV3Params{
		Body: &iamclientmodels.ModelRoleOverrideUpdateRequest{
			Exclusions: []*iamclientmodels.AccountcommonOverrideRolePermission{
				{
					Actions:  []int32{1, 4},
					Resource: &resourceToCheck,
				},
			},
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})
	assert.NoError(t, err)

	assert.NotNil(t, updateResponse)

	active := true
	activateResponse, err := overrideRoleService.AdminChangeRoleOverrideConfigStatusV3Short(&override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params{
		Body: &iamclientmodels.ModelRoleOverrideStatsUpdateRequest{
			Active: &active,
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})
	assert.NoError(t, err)

	assert.NotNil(t, activateResponse)

	if activateResponse != nil {
		assert.Equal(t, true, *activateResponse.Active)
	}

	uValid := false
	currentCount := 0

	for currentCount < checkCount {
		uAction, err := findAndCheckResourceFromRole(configRepo, tokenRepo, userRoleID, resourceToCheck)
		assert.NoError(t, err)

		if uAction == updatedActionToCheck {
			uValid = true
			break
		}

		currentCount++
		time.Sleep(time.Duration(checkInterval) * time.Millisecond)
	}

	assert.Equal(t, true, uValid)

	active = false
	overrideRoleService.AdminChangeRoleOverrideConfigStatusV3Short(&override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params{
		Body: &iamclientmodels.ModelRoleOverrideStatsUpdateRequest{
			Active: &active,
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})

}
