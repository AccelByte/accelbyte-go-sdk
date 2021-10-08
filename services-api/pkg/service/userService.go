// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"
	"errors"
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
	OauthService    *OauthService
	TokenRepository repository.TokenRepository
}

// PublicCreateUserV3 is used to create user. Support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
func (userService *UserService) PublicCreateUserV3(namespace, displayName, birthDate, email, countryId, password string) (*iamclientmodels.ModelUserCreateResponseV3, error) {
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

// PublicUserVerificationV3 is used to redeem verification code sent to user
func (userService *UserService) PublicUserVerificationV3(code, contactType, namespace string) error {
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

// ListAdminsV3 is used to get list of admins by admin
func (userService *UserService) ListAdminsV3(namespace string, after, before *string, limit *int64) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.ListAdminsV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.ListAdminsV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("admin list is empty")
	}
	return ok.GetPayload(), nil
}

// AdminGetAgeRestrictionStatusV3 is used to get age restriction status
func (userService *UserService) AdminGetAgeRestrictionStatusV3(namespace string) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetAgeRestrictionStatusV3Params{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminGetAgeRestrictionStatusV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("age restriction is nil")
	}
	return ok.GetPayload(), nil
}

// AdminUpdateAgeRestrictionConfigV3 is used to update age restriction config value
func (userService *UserService) AdminUpdateAgeRestrictionConfigV3(namespace string, ageRestriction *int32, enable *bool) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminUpdateAgeRestrictionConfigV3Params{
		Body: &iamclientmodels.ModelAgeRestrictionRequestV3{
			AgeRestriction: ageRestriction,
			Enable:         enable,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.AdminUpdateAgeRestrictionConfigV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("age restriction is nil")
	}
	return ok.GetPayload(), nil
}

// AdminGetListCountryAgeRestrictionV3 is used to get age restriction country list
func (userService *UserService) AdminGetListCountryAgeRestrictionV3(namespace string) ([]*iamclientmodels.ModelCountryV3Response, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetListCountryAgeRestrictionV3Params{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.AdminGetListCountryAgeRestrictionV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("age restriction country list is nil")
	}
	return ok.GetPayload(), nil
}

// AdminUpdateCountryAgeRestrictionV3 is used to get age restriction country list
func (userService *UserService) AdminUpdateCountryAgeRestrictionV3(namespace, countryCode string, ageRestriction *int32) (*iamclientmodels.ModelCountryV3Response, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminUpdateCountryAgeRestrictionV3Params{
		Body: &iamclientmodels.ModelCountryAgeRestrictionV3Request{
			AgeRestriction: ageRestriction,
		},
		CountryCode: countryCode,
		Namespace:   namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, notFound, err :=
		userService.IamService.Users.AdminUpdateCountryAgeRestrictionV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("age restriction country list is nil")
	}
	return ok.GetPayload(), nil
}

// GetAdminUsersByRoleIDV3 is used to get list of admin users which have the roleId
func (userService *UserService) GetAdminUsersByRoleIDV3(namespace, roleId string, after, before, limit *int64) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.GetAdminUsersByRoleIDV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
		RoleID:    roleId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.GetAdminUsersByRoleIDV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("admin users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminGetUserByEmailAddressV3 is used to get users by email
func (userService *UserService) AdminGetUserByEmailAddressV3(namespace string, emailAddress *string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserByEmailAddressV3Params{
		EmailAddress: emailAddress,
		Namespace:    namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminGetUserByEmailAddressV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminInviteUserV3 is used to invite admin user and assign role to them
func (userService *UserService) AdminInviteUserV3(namespace string, emailAddresses, roles []string) (*iamclientmodels.ModelInviteAdminResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminInviteUserV3Params{
		Body: &iamclientmodels.ModelInviteAdminRequestV3{
			EmailAddresses: emailAddresses,
			Roles:          roles,
		},
		Namespace: namespace,
	}
	created, badRequest, notFound, conflict, unprocessableEntity, internalServer, err :=
		userService.IamService.Users.AdminInviteUserV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if created == nil {
		return nil, errors.New("admin created is nil")
	}
	return created.GetPayload(), nil
}

// AdminListUsersV3 is used to get list of users ID and namespace with their Justice platform account, under a namespace
func (userService *UserService) AdminListUsersV3(namespace string, limit, offset *int64) (*iamclientmodels.AccountcommonListUsersWithPlatformAccountsResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminListUsersV3Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.AdminListUsersV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("user's ids and namespaces are nil")
	}
	return ok.GetPayload(), nil
}

// AdminSearchUserV3 is used to search user
func (userService *UserService) AdminSearchUserV3(namespace string, by, endDate, offset, query, startDate *string, limit *int64) (*iamclientmodels.ModelSearchUsersResponseWithPaginationV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminSearchUserV3Params{
		By:        by,
		EndDate:   endDate,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Query:     query,
		StartDate: startDate,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.AdminSearchUserV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("admin users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminGetBulkUserByEmailAddressV3 is used to get bulk user by email address
func (userService *UserService) AdminGetBulkUserByEmailAddressV3(namespace string, listEmailAddressRequest []string) (*iamclientmodels.ModelListUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetBulkUserByEmailAddressV3Params{
		Body: &iamclientmodels.ModelListEmailAddressRequest{
			ListEmailAddressRequest: listEmailAddressRequest,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminGetBulkUserByEmailAddressV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminGetUserByUserIDV3 is used to get user by userId
func (userService *UserService) AdminGetUserByUserIDV3(namespace, userId string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserByUserIDV3Params{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminGetUserByUserIDV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminUpdateUserV3 is used to update user by userId
func (userService *UserService) AdminUpdateUserV3(namespace, userId, country, dateOfBirth, displayName, languageTag, userName string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminUpdateUserV3Params{
		Body: &iamclientmodels.ModelUserUpdateRequestV3{
			Country:     country,
			DateOfBirth: dateOfBirth,
			DisplayName: displayName,
			LanguageTag: languageTag,
			UserName:    userName,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		userService.IamService.Users.AdminUpdateUserV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("unable to update user")
	}
	return ok.GetPayload(), nil
}

// AdminGetUserBanV3 is to get the first page of the data if after and before parameters is empty
func (userService *UserService) AdminGetUserBanV3(namespace, userId string, after, before *string, activeOnly *bool, limit *int64) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserBanV3Params{
		ActiveOnly: activeOnly,
		After:      after,
		Before:     before,
		Limit:      limit,
		Namespace:  namespace,
		UserID:     userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminGetUserBanV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if ok == nil {
		return nil, errors.New("ban users are empty")
	}
	return ok.GetPayload(), nil
}

// AdminBanUserV3 is used to ban a single user with specific type of ban
func (userService *UserService) AdminBanUserV3(namespace, userId string, ban, comment,
	endDate, reason *string, skipNotif *bool) (*iamclientmodels.ModelUserBanResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminBanUserV3Params{
		Body: &iamclientmodels.ModelBanCreateRequest{
			Ban:       ban,
			Comment:   comment,
			EndDate:   endDate,
			Reason:    reason,
			SkipNotif: skipNotif,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	created, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminBanUserV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if created == nil {
		return nil, errors.New("ban creation is empty")
	}
	return created.GetPayload(), nil
}

// AdminUpdateUserBanV3 is used to update enable or disable ban for single user
func (userService *UserService) AdminUpdateUserBanV3(namespace, userId, banId string, enabled, skipNotif *bool) (*iamclientmodels.ModelUserBanResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminUpdateUserBanV3Params{
		Body: &iamclientmodels.ModelBanUpdateRequest{
			Enabled:   enabled,
			SkipNotif: skipNotif,
		},
		Namespace: namespace,
		UserID:    userId,
		BanID:     banId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminUpdateUserBanV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("ban status is empty")
	}
	return ok.GetPayload(), nil
}

// AdminSendVerificationCodeV3 is used to send verification code to user
func (userService *UserService) AdminSendVerificationCodeV3(namespace, userId, context, languageTag string, emailAddress *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminSendVerificationCodeV3Params{
		Body: &iamclientmodels.ModelSendVerificationCodeRequestV3{
			Context:      context,
			EmailAddress: emailAddress,
			LanguageTag:  languageTag,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, tooManyRequest, err :=
		userService.IamService.Users.AdminSendVerificationCodeV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if tooManyRequest != nil {
		errorMsg, _ := json.Marshal(*tooManyRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return tooManyRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminVerifyAccountV3 is used to verify account by validating verification code
func (userService *UserService) AdminVerifyAccountV3(namespace, userId string, code, contactType, languageTag *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminVerifyAccountV3Params{
		Body: &iamclientmodels.ModelUserVerificationRequest{
			Code:        code,
			ContactType: contactType,
			LanguageTag: languageTag,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminVerifyAccountV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// GetUserVerificationCodeV3 is used to get verification code sent to user. [WARNING] This endpoint is only for testing purpose.
func (userService *UserService) GetUserVerificationCodeV3(namespace, userId string) (*iamclientmodels.ModelVerificationCodeResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.GetUserVerificationCodeParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.GetUserVerificationCode(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("active user verification is empty")
	}
	return ok.GetPayload(), nil
}

// AdminGetUserDeletionStatusV3 is to get user deletion status
func (userService *UserService) AdminGetUserDeletionStatusV3(namespace, userId string) (*iamclientmodels.ModelUserDeletionStatusResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserDeletionStatusV3Params{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminGetUserDeletionStatusV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("deletion status is empty")
	}
	return ok.GetPayload(), nil
}

// AdminUpdateUserDeletionStatusV3 is used to update user deletion status
func (userService *UserService) AdminUpdateUserDeletionStatusV3(namespace, userId string, enabled *bool) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminUpdateUserDeletionStatusV3Params{
		Namespace: namespace,
		UserID:    userId,
		Body:      &iamclientmodels.ModelUpdateUserDeletionStatusRequest{Enabled: enabled},
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.AdminUpdateUserDeletionStatusV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminUpgradeHeadlessAccountV3 is used to upgrade headless account with verification code
func (userService *UserService) AdminUpgradeHeadlessAccountV3(namespace, userId, country, dateOfBirth, displayName string,
	code, emailAddress, password *string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminUpgradeHeadlessAccountV3Params{
		Body: &iamclientmodels.ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3{
			Code:         code,
			Country:      country,
			DateOfBirth:  dateOfBirth,
			DisplayName:  displayName,
			EmailAddress: emailAddress,
			Password:     password,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		userService.IamService.Users.AdminUpgradeHeadlessAccountV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("admin upgrade headless account is empty")
	}
	return ok.GetPayload(), nil
}

// AdminDeleteUserInformationV3 is used to delete user's information
func (userService *UserService) AdminDeleteUserInformationV3(namespace, userId string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminDeleteUserInformationV3Params{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminDeleteUserInformationV3(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("User information successfully deleted")
	return nil
}

// AdminGetUserLoginHistoriesV3 is used to get user's login histories
func (userService *UserService) AdminGetUserLoginHistoriesV3(namespace, userId string, after, before, limit *float64) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserLoginHistoriesV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminGetUserLoginHistoriesV3(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("users are nil")
	}
	return ok.GetPayload(), nil
}

// AdminUpdateUserPermissionV3 is used to update user permissions
func (userService *UserService) AdminUpdateUserPermissionV3(namespace, userId string, permissions []*iamclientmodels.AccountcommonPermission) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminUpdateUserPermissionV3Params{
		Namespace: namespace,
		UserID:    userId,
		Body:      &iamclientmodels.AccountcommonPermissions{Permissions: permissions},
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminUpdateUserPermissionV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminAddUserPermissionsV3 is used to add user permissions
func (userService *UserService) AdminAddUserPermissionsV3(namespace, userId string, permissions []*iamclientmodels.AccountcommonPermission) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminAddUserPermissionsV3Params{
		Namespace: namespace,
		UserID:    userId,
		Body:      &iamclientmodels.AccountcommonPermissions{Permissions: permissions},
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminAddUserPermissionsV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteUserPermissionBulkV3 is used to delete user permission
func (userService *UserService) AdminDeleteUserPermissionBulkV3(namespace, userId string, body []*iamclientmodels.ModelPermissionDeleteRequest) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminDeleteUserPermissionBulkV3Params{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminDeleteUserPermissionBulkV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteUserPermissionV3 delete user permission action
func (userService *UserService) AdminDeleteUserPermissionV3(namespace, userId, resource string, action int64) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminDeleteUserPermissionV3Params{
		Action:    action,
		Namespace: namespace,
		Resource:  resource,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminDeleteUserPermissionV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminGetUserPlatformAccountsV3 is used to get platform accounts linked to the user
func (userService *UserService) AdminGetUserPlatformAccountsV3(namespace, userId string, after, before *string, limit *int64) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetUserPlatformAccountsV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminGetUserPlatformAccountsV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if ok == nil {
		return nil, errors.New("user is nil")
	}
	return ok.GetPayload(), nil
}

// AdminCreateJusticeUser is to create platform justice user from publisher user
func (userService *UserService) AdminCreateJusticeUser(namespace, targetNamespace, userId string) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminCreateJusticeUserParams{
		Namespace:       namespace,
		TargetNamespace: targetNamespace,
		UserID:          userId,
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err :=
		userService.IamService.Users.AdminCreateJusticeUser(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if created == nil {
		return nil, errors.New("users are nil")
	}
	return created.GetPayload(), nil
}

// AdminLinkPlatformAccount is used to links a platform user account to user account
func (userService *UserService) AdminLinkPlatformAccount(namespace, userId string, platformId, platformUserId *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminLinkPlatformAccountParams{
		Body: &iamclientmodels.ModelLinkPlatformAccountRequest{
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err :=
		userService.IamService.Users.AdminLinkPlatformAccount(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminPlatformUnlinkV3 is used to unlink a platform user account to user account
func (userService *UserService) AdminPlatformUnlinkV3(namespace, platformId, userId, platformNamespace string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminPlatformUnlinkV3Params{
		Body:       &iamclientmodels.ModelUnlinkUserPlatformRequest{PlatformNamespace: platformNamespace},
		Namespace:  namespace,
		PlatformID: platformId,
		UserID:     userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err :=
		userService.IamService.Users.AdminPlatformUnlinkV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("User successfully unlinked")
	return nil
}

// AdminDeleteUserRoleV3 is used to delete user's role
func (userService *UserService) AdminDeleteUserRoleV3(namespace, userId, roleId string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminDeleteUserRoleV3Params{
		Namespace: namespace,
		RoleID:    roleId,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminDeleteUserRoleV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("Role successfully deleted")
	return nil
}

// AdminDeleteUserRolesV3 is used to delete user's roles
func (userService *UserService) AdminDeleteUserRolesV3(namespace, userId string, body []string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminDeleteUserRolesV3Params{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminDeleteUserRolesV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("Roles successfully added")
	return nil
}

// AdminSaveUserRoleV3 is used to update user's role
func (userService *UserService) AdminSaveUserRoleV3(namespace, userId string, body []*iamclientmodels.ModelNamespaceRoleRequest) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminSaveUserRoleV3Params{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, forbidden, notFound, unprocessableEntity, internalServer, err :=
		userService.IamService.Users.AdminSaveUserRoleV3(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return unprocessableEntity
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("Role successfully added")
	return nil
}

// AdminAddUserRoleV3 is used to add user's role
func (userService *UserService) AdminAddUserRoleV3(namespace, userId, roleId string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminAddUserRoleV3Params{
		Namespace: namespace,
		RoleID:    roleId,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err :=
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
	logrus.Info("Role successfully added")
	return nil
}

// AdminUpdateUserStatusV3 is used to disable or enable user account
func (userService *UserService) AdminUpdateUserStatusV3(namespace, userId string, reason *string, enabled *bool) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminUpdateUserStatusV3Params{
		Namespace: namespace,
		UserID:    userId,
		Body: &iamclientmodels.ModelUpdateUserStatusRequest{
			Enabled: enabled,
			Reason:  reason,
		},
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.AdminUpdateUserStatusV3(param, client.BearerToken(*accessToken.AccessToken))
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
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("enabling or disabling successfully executed")
	return nil
}

// AdminVerifyUserWithoutVerificationCodeV3 is used to force verify user
func (userService *UserService) AdminVerifyUserWithoutVerificationCodeV3(namespace, userId string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.AdminVerifyUserWithoutVerificationCodeV3Params{
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		userService.IamService.Users.AdminVerifyUserWithoutVerificationCodeV3(param, client.BearerToken(*accessToken.AccessToken))
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
	logrus.Info("user verified")
	return nil
}

// AdminGetMyUserV3 is used to get user's data
func (userService *UserService) AdminGetMyUserV3() (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &users.AdminGetMyUserV3Params{}
	ok, unauthorized, internalServer, err :=
		userService.IamService.Users.AdminGetMyUserV3(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	logrus.Info("get my user data succeed")
	return ok.GetPayload(), nil
}

// PublicListUserIDByPlatformUserIDsV3 is used to get list user id by platform user id
func (userService *UserService) PublicListUserIDByPlatformUserIDsV3(namespace, platformId string,
	platformUserIds []string) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicListUserIDByPlatformUserIDsV3Params{
		Body:       &iamclientmodels.ModelPlatformUserIDRequest{PlatformUserIds: platformUserIds},
		Namespace:  namespace,
		PlatformID: platformId,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.PublicListUserIDByPlatformUserIDsV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("userIDPlatform is empty")
	}
	return ok.GetPayload(), nil
}

// PublicGetUserByPlatformUserIDV3 is used to gets user by platform user ID
func (userService *UserService) PublicGetUserByPlatformUserIDV3(namespace, platformId, platformUserId string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetUserByPlatformUserIDV3Params{
		Namespace:      namespace,
		PlatformID:     platformId,
		PlatformUserID: platformUserId,
	}
	ok, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.PublicGetUserByPlatformUserIDV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("userIDPlatform is empty")
	}
	return ok.GetPayload(), nil
}

// PublicGetAsyncStatus is used to get linking status
func (userService *UserService) PublicGetAsyncStatus(namespace, requestId string) (*iamclientmodels.ModelLinkRequest, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetAsyncStatusParams{
		Namespace: namespace,
		RequestID: requestId,
	}
	ok, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.PublicGetAsyncStatus(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("status is empty")
	}
	return ok.GetPayload(), nil
}

// PublicSearchUserV3 is used to search all users on the specified namespace that match the query on these fields: email address, display name, and username
func (userService *UserService) PublicSearchUserV3(namespace string, by, query *string) (*iamclientmodels.ModelPublicUserInformationResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicSearchUserV3Params{
		Namespace: namespace,
		Query:     query,
		By:        by,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err :=
		userService.IamService.Users.PublicSearchUserV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("user is empty")
	}
	return ok.GetPayload(), nil
}

// PublicForgotPasswordV3 is used to requests password reset code
func (userService *UserService) PublicForgotPasswordV3(namespace, languageTag string, emailAddress *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicForgotPasswordV3Params{
		Body: &iamclientmodels.ModelForgotPasswordRequestV3{
			EmailAddress: emailAddress,
			LanguageTag:  languageTag,
		},
		Namespace: namespace,
	}
	_, badRequest, notFound, tooManyRequests, err :=
		userService.IamService.Users.PublicForgotPasswordV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if tooManyRequests != nil {
		errorMsg, _ := json.Marshal(*tooManyRequests.GetPayload())
		logrus.Error(string(errorMsg))
		return tooManyRequests
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// GetAdminInvitationV3 is used to validate user admin invitation
func (userService *UserService) GetAdminInvitationV3(namespace, invitationId string) (*iamclientmodels.ModelAdminInvitationV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.GetAdminInvitationV3Params{
		Namespace:    namespace,
		InvitationID: invitationId,
	}
	ok, notFound, internalServer, err :=
		userService.IamService.Users.GetAdminInvitationV3(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("invitation is empty")
	}
	return ok.GetPayload(), nil
}

// CreateUserFromInvitationV3 is used to create user from saved roles when creating invitation and submitted data
func (userService *UserService) CreateUserFromInvitationV3(namespace, invitationId string, authType, country, dateOfBirth, displayName,
	password *string) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.CreateUserFromInvitationV3Params{
		Body: &iamclientmodels.ModelUserCreateFromInvitationRequestV3{
			AuthType:    authType,
			Country:     country,
			DateOfBirth: dateOfBirth,
			DisplayName: displayName,
			Password:    password,
		},
		InvitationID: invitationId,
		Namespace:    namespace,
	}
	created, badRequest, notFound, internalServer, err :=
		userService.IamService.Users.CreateUserFromInvitationV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if created == nil {
		return nil, errors.New("new user is empty")
	}
	return created.GetPayload(), nil
}

// PublicUpdateUserV3 is used to updates user
func (userService *UserService) PublicUpdateUserV3(namespace, country, dateOfBirth, displayName, languageTag,
	userName string) ([]*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicUpdateUserV3Params{
		Body: &iamclientmodels.ModelUserUpdateRequestV3{
			Country:     country,
			DateOfBirth: dateOfBirth,
			DisplayName: displayName,
			LanguageTag: languageTag,
			UserName:    userName,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, conflict, internalServer, err :=
		userService.IamService.Users.PublicUpdateUserV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("update user is empty")
	}
	return ok.GetPayload(), nil
}

// UpdateUserV3 is used to updates user
func (userService *UserService) UpdateUserV3(namespace, country, dateOfBirth, displayName, languageTag,
	userName string) ([]*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.UpdateUserV3Params{
		Body: &iamclientmodels.ModelUserUpdateRequestV3{
			Country:     country,
			DateOfBirth: dateOfBirth,
			DisplayName: displayName,
			LanguageTag: languageTag,
			UserName:    userName,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, conflict, internalServer, err :=
		userService.IamService.Users.UpdateUserV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("update user is empty")
	}
	return ok.GetPayload(), nil
}

// PublicSendVerificationCodeV3 is used to sends verification code to user
func (userService *UserService) PublicSendVerificationCodeV3(namespace, context, languageTag string, emailAddress *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicSendVerificationCodeV3Params{
		Body: &iamclientmodels.ModelSendVerificationCodeRequestV3{
			Context:      context,
			EmailAddress: emailAddress,
			LanguageTag:  languageTag,
		},
		Namespace: namespace,
	}
	_, badRequest, unauthorized, notFound, conflict, tooManyRequests, err :=
		userService.IamService.Users.PublicSendVerificationCodeV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if tooManyRequests != nil {
		errorMsg, _ := json.Marshal(*tooManyRequests.GetPayload())
		logrus.Error(string(errorMsg))
		return tooManyRequests
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicUpgradeHeadlessAccountV3 is used to upgrades headless account and automatically verified the email address if it is succeeded
func (userService *UserService) PublicUpgradeHeadlessAccountV3(namespace, country, dateOfBirth, displayName string, code,
	emailAddress, password *string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicUpgradeHeadlessAccountV3Params{
		Body: &iamclientmodels.ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3{
			Code:         code,
			Country:      country,
			DateOfBirth:  dateOfBirth,
			DisplayName:  displayName,
			EmailAddress: emailAddress,
			Password:     password,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		userService.IamService.Users.PublicUpgradeHeadlessAccountV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("upgrade headless account is empty")
	}
	return ok.GetPayload(), nil
}

// PublicVerifyHeadlessAccountV3 is used to upgrades user account to full account with email
func (userService *UserService) PublicVerifyHeadlessAccountV3(namespace string, emailAddress, password *string) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicVerifyHeadlessAccountV3Params{
		Body: &iamclientmodels.ModelUpgradeHeadlessAccountV3Request{
			EmailAddress: emailAddress,
			Password:     password,
		},
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServer, err :=
		userService.IamService.Users.PublicVerifyHeadlessAccountV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New(" verify upgrade headless account is empty")
	}
	return ok.GetPayload(), nil
}

// PublicUpdatePasswordV3 is used to sends verification code to user
func (userService *UserService) PublicUpdatePasswordV3(namespace string, languageTag, newPassword, oldPassword *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicUpdatePasswordV3Params{
		Body: &iamclientmodels.ModelUserPasswordUpdateV3Request{
			LanguageTag: languageTag,
			NewPassword: newPassword,
			OldPassword: oldPassword,
		},
		Namespace: namespace,
	}
	_, badRequest, unauthorized, internalServer, err :=
		userService.IamService.Users.PublicUpdatePasswordV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicCreateJusticeUser is used to creates justice user from publisher user
func (userService *UserService) PublicCreateJusticeUser(namespace, targetNamespace string) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicCreateJusticeUserParams{
		Namespace:       namespace,
		TargetNamespace: targetNamespace,
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.PublicCreateJusticeUser(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if created == nil {
		return nil, errors.New("create justice user is empty")
	}
	return created.GetPayload(), nil
}

// PublicPlatformLinkV3 is used to links user s account with platform
func (userService *UserService) PublicPlatformLinkV3(namespace, platformId, ticket string, redirectURI *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicPlatformLinkV3Params{
		Namespace:   namespace,
		PlatformID:  platformId,
		RedirectURI: redirectURI,
		Ticket:      ticket,
	}
	_, badRequest, unauthorized, notFound, conflict, internalServer, err :=
		userService.IamService.Users.PublicPlatformLinkV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicPlatformUnlinkV3 is used to unlinks user s account from specific platform
func (userService *UserService) PublicPlatformUnlinkV3(namespace, platformId, platformNamespace string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.PublicPlatformUnlinkV3Params{
		Body:       &iamclientmodels.ModelUnlinkUserPlatformRequest{PlatformNamespace: platformNamespace},
		Namespace:  namespace,
		PlatformID: platformId,
	}
	_, badRequest, unauthorized, notFound, internalServerError, err :=
		userService.IamService.Users.PublicPlatformUnlinkV3(param, client.BearerToken(*accessToken.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("User successfully unlinked")
	return nil
}

// PublicWebLinkPlatform is used to creates public web linking
func (userService *UserService) PublicWebLinkPlatform(namespace, platformId string, clientId, redirectUri *string) (*iamclientmodels.ModelWebLinkingResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicWebLinkPlatformParams{
		ClientID:    clientId,
		Namespace:   namespace,
		PlatformID:  platformId,
		RedirectURI: redirectUri,
	}
	ok, badRequest, unauthorized, notFound, err :=
		userService.IamService.Users.PublicWebLinkPlatform(params, client.BearerToken(*accessToken.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("create justice user is empty")
	}
	return ok.GetPayload(), nil
}

// PublicWebLinkPlatformEstablish is used to establishes link progress
func (userService *UserService) PublicWebLinkPlatformEstablish(namespace, platformId, state string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &users.PublicWebLinkPlatformEstablishParams{
		Namespace:  namespace,
		PlatformID: platformId,
		State:      state,
	}
	found, err :=
		userService.IamService.Users.PublicWebLinkPlatformEstablish(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	if found == nil {
		return errors.New("create justice user is empty")
	}
	return nil
}

// ResetPasswordV3 is used to resets user password
func (userService *UserService) ResetPasswordV3(namespace string, code, emailAddress, newPassword *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.ResetPasswordV3Params{
		Body: &iamclientmodels.ModelResetPasswordRequestV3{
			Code:         code,
			EmailAddress: emailAddress,
			NewPassword:  newPassword,
		},
		Namespace: namespace,
	}
	_, badRequest, forbidden, notFound, err :=
		userService.IamService.Users.ResetPasswordV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
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
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicGetUserByUserIDV3 is used to gets user by user ID
func (userService *UserService) PublicGetUserByUserIDV3(namespace, userId string) (*iamclientmodels.ModelPublicUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetUserByUserIDV3Params{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, notFound, internalServer, err :=
		userService.IamService.Users.PublicGetUserByUserIDV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("user is empty")
	}
	return ok.GetPayload(), nil
}

// PublicGetUserBanHistoryV3 is used to gets user s bans
func (userService *UserService) PublicGetUserBanHistoryV3(namespace, userId string, after, before *string, activeOnly *bool, limit *int64) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetUserBanHistoryV3Params{
		ActiveOnly: activeOnly,
		After:      after,
		Before:     before,
		Limit:      limit,
		Namespace:  namespace,
		UserID:     userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.PublicGetUserBanHistoryV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServer != nil {
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("status is empty")
	}
	return ok.GetPayload(), nil
}

// PublicGetUserLoginHistoriesV3 is used to gets user s login histories status
func (userService *UserService) PublicGetUserLoginHistoriesV3(namespace, userId string, after, before, limit *float64) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetUserLoginHistoriesV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.PublicGetUserLoginHistoriesV3(params, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("login history is empty")
	}
	return ok.GetPayload(), nil
}

// PublicGetUserPlatformAccountsV3 is used to get platform accounts linked to the user
func (userService *UserService) PublicGetUserPlatformAccountsV3(namespace, userId string, after, before *string, limit *int64) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetUserPlatformAccountsV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		userService.IamService.Users.PublicGetUserPlatformAccountsV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if ok == nil {
		return nil, errors.New("account is empty")
	}
	return ok.GetPayload(), nil
}

// PublicLinkPlatformAccount is used to links a platform user account to user account
func (userService *UserService) PublicLinkPlatformAccount(namespace, userId string, platformId, platformUserId *string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicLinkPlatformAccountParams{
		Body: &iamclientmodels.ModelLinkPlatformAccountRequest{
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, internalServer, err :=
		userService.IamService.Users.PublicLinkPlatformAccount(params, client.BearerToken(*accessToken.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicValidateUserByUserIDAndPasswordV3 is used to validates user password by user ID and password
func (userService *UserService) PublicValidateUserByUserIDAndPasswordV3(namespace, userId, password string) error {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &users.PublicValidateUserByUserIDAndPasswordV3Params{
		Namespace: namespace,
		Password:  password,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		userService.IamService.Users.PublicValidateUserByUserIDAndPasswordV3(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServer != nil {
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicGetMyUserV3 is used to get my user
func (userService *UserService) PublicGetMyUserV3() (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := userService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &users.PublicGetMyUserV3Params{}
	ok, unauthorized, internalServer, err :=
		userService.IamService.Users.PublicGetMyUserV3(params, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if ok == nil {
		return nil, errors.New("my user is empty")
	}
	return ok.GetPayload(), nil
}

// Login is used to login with username and password
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

// Logout is used to logout with client service oauth2 revoke
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
