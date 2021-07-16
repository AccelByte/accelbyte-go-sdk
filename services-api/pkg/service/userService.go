// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UserService struct {
	IamService      *iamclient.JusticeIamService
	BasicService    *basicclient.JusticeBasicService
	OauthService    *OauthService
	TokenRepository repository.TokenRepository
}

func (userService *UserService) RegisterUser(namespace, displayName, birthDate, email, countryId, password string) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	authType := "EMAILPASSWD"
	param := &users.PublicCreateUserV3Params{
		Body: &iamclientmodels.ModelUserCreateRequestV3{
			AuthType:     &authType,
			Country:      &countryId,
			DateOfBirth:  &birthDate,
			DisplayName:  &displayName,
			EmailAddress: &email,
			Password:     &password,
		},
		Namespace: namespace,
	}
	created, badRequest, notFound, conflict, internalServerError, err := userService.IamService.Users.PublicCreateUserV3(param, nil)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if created != nil {
		payloadString, err := json.Marshal(created.GetPayload())
		if err != nil {
			logrus.Error(err)
			return nil, err
		}
		logrus.Info("User created")
		logrus.Info("Response: \n %v", string(payloadString))
	}
	return created.GetPayload(), nil
}

func (userService *UserService) VerifyToken(code, contactType, namespace string) error {
	logrus.Infof("Invoke VerifyToken with parameter %v %v %v", code, contactType, namespace)
	param := &users.PublicUserVerificationV3Params{
		Body: &iamclientmodels.ModelUserVerificationRequestV3{
			Code:        &code,
			ContactType: &contactType,
		},
		Namespace: namespace,
	}
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, err :=
		userService.IamService.Users.PublicUserVerificationV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if err != nil {
		logrus.Error(err)
		return err
	}

	return nil
}

func (userService *UserService) CreateProfile(namespace string) error {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &user_profile.CreateMyProfileParams{
		Body: &basicclientmodels.UserProfilePrivateCreate{
			DateOfBirth: nil,
		},
		Namespace: namespace,
	}
	profileCreated, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		userService.BasicService.UserProfile.CreateMyProfile(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	if profileCreated == nil {
		return errors.New("profile not created")
	}
	return nil
}

func (userService *UserService) GetProfile(namespace string) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetMyProfileInfoParams{
		Namespace: namespace,
	}
	profileInfo, badRequest, unauthorized, forbidden, notFound, err :=
		userService.BasicService.UserProfile.GetMyProfileInfo(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if profileInfo == nil {
		return nil, errors.New("profileInfo is empty")
	}
	return profileInfo.GetPayload(), nil
}

func (userService *UserService) AddUserRole(namespace, userId, roleId string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminAddUserRoleV3Params{
		Namespace: namespace,
		RoleID:    roleId,
		UserID:    userId,
	}
	roleAdded, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		userService.IamService.Users.AdminAddUserRoleV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	if roleAdded == nil {
		return errors.New("profileInfo is empty")
	}
	logrus.Info("Role successfully added")
	return nil
}

func (userService *UserService) Login(username, password string) error {
	scope := "commerce account social publishing analytics"
	codeVerifierGenerator, err := utils.CreateCodeVerifier()
	if err != nil {
		return err
	}
	codeVerifier := codeVerifierGenerator.String()
	challenge := codeVerifierGenerator.CodeChallengeS256()
	challengeMethod := "S256"
	requestId, err := userService.OauthService.Authorize(scope, challenge, challengeMethod)
	if err != nil {
		return err
	}
	code, err := userService.OauthService.Authenticate(requestId, username, password)
	if err != nil {
		return err
	}
	err = userService.OauthService.GrantTokenAuthorizationCode(code, codeVerifier, "")
	if err != nil {
		return err
	}
	return nil
}

func (userService *UserService) Logout() error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &o_auth2_0.TokenRevocationV3Params{
		Token: *accessToken.AccessToken,
	}
	clientId := userService.OauthService.ConfigRepository.GetClientId()
	clientSecret := userService.OauthService.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := userService.IamService.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	err = userService.TokenRepository.RemoveToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
