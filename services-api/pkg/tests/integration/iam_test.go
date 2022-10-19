// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

//lint:ignore SA5011 possible nil pointer dereference

import (
	"fmt"
	"net/http"
	"os"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var (
	httpClient = &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	tokenRepository = auth.DefaultTokenRepositoryImpl()
	oAuth20Service  = &iam.OAuth20Service{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	userService = &iam.UsersService{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	userV4Service = &iam.UsersV4Service{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	oAuth20ExtensionService = &iam.OAuth20ExtensionService{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	codeChallengeMethod = o_auth2_0.AuthorizeV3S256Constant
	redirectURI         string
	scope               = "commerce account social publishing analytics"
	username            = os.Getenv("AB_USERNAME")
	password            = os.Getenv("AB_PASSWORD")
	clientID            = oAuth20Service.ConfigRepository.GetClientId()
	authType            = "EMAILPASSWD"
	country             = "US"
	displayName         = "Go Server SDK Test"
	pwd                 = "q!w@e#r$azsxdcfv1"
	dynamicUsername     = RandStringBytes(5)
	emailAdd            = fmt.Sprint(dynamicUsername + "@test.com")
	createUserBody      = &iamclientmodels.AccountCreateUserRequestV4{
		AuthType:        &authType,
		Code:            "",
		Country:         &country,
		DateOfBirth:     "1990-01-01",
		DisplayName:     displayName,
		EmailAddress:    &emailAdd,
		Password:        pwd,
		PasswordMD5Sum:  "",
		ReachMinimumAge: true,
		Username:        &dynamicUsername,
	}
	updateUserBody = &iamclientmodels.ModelUserUpdateRequest{
		DisplayName: "Golang Update Test",
	}
)

func Init() {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3PasswordConstant,
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		logrus.Error("failed login")
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		logrus.Error("empty access token")
	} else {
		errStore := oAuth20Service.TokenRepository.Store(*accessToken)
		if errStore != nil {
			logrus.Error("failed stored the token")
		}
	}
}

// Authorization
func TestIntegrationAuthorizeV3(t *testing.T) {
	t.Parallel()

	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        o_auth2_0.AuthorizeV3CodeConstant,
		HTTPClient:          httpClient,
	}
	expected, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Authentication
func TestIntegrationAuthenticate(t *testing.T) {
	t.Parallel()

	// Authorize
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            oAuth20Service.ConfigRepository.GetClientId(),
		ResponseType:        o_auth2_0.AuthorizeV3CodeConstant,
		HTTPClient:          httpClient,
	}
	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Authentication
	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	expected, errExpected := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}

	// Assert
	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

func TestIntegrationGrantTokenAuthorizationCode(t *testing.T) {
	t.Parallel()

	// CASE Authorize
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        o_auth2_0.AuthorizeV3CodeConstant,
		HTTPClient:          httpClient,
	}

	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, requestID, "response should not be nil")

	// CASE User authentication
	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}

	code, errCode := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errCode != nil {
		assert.FailNow(t, errCode.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errCode, "err should be nil")
	assert.NotNil(t, code, "response should not be nil")

	// CASE Token grant
	codeVerifier := codeVerifierGenerator.String()
	inputTokenGrant := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    o_auth2_0.TokenGrantV3AuthorizationCodeConstant,
	}

	expected, errExpected := oAuth20Service.TokenGrantV3Short(inputTokenGrant)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

func TestIntegrationLogin(t *testing.T) {
	t.Parallel()

	// CASE Login
	err := oAuth20Service.Login(username, password)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.Nil(t, errGetToken, "err should be nil")
	assert.NotNil(t, getToken, "response should not be nil")
}

func TestIntegrationUser(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a user
	input := &users_v4.PublicCreateUserV4Params{
		Body:      createUserBody,
		Namespace: integration.NamespaceTest,
	}

	user, err := userV4Service.PublicCreateUserV4Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	t.Logf("userId: %v", *user.UserID)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, user, "response should not be nil")

	// CASE Update a user
	inputUpdate := &users.UpdateUserParams{
		Body:      updateUserBody,
		Namespace: integration.NamespaceTest,
		UserID:    *user.UserID,
	}

	update, errUpdate := userService.UpdateUserShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, update, "should not be nil")

	// CASE Get user by Id
	inputGet := &users.AdminGetUserByUserIDV3Params{
		Namespace: integration.NamespaceTest,
		UserID:    *user.UserID,
	}

	get, errGet := userService.AdminGetUserByUserIDV3Short(inputGet)
	if errUpdate != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, get, "should not be nil")

	// CASE Delete a user
	inputDelete := &users.DeleteUserParams{
		Namespace: integration.NamespaceTest,
		UserID:    *user.UserID,
	}

	errDelete := userService.DeleteUserShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}
