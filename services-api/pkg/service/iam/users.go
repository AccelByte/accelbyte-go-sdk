// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package iam

import (
	"encoding/json"
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UsersService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// PublicCreateUserV3 is used to create user. Support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
func (u *UsersService) PublicCreateUserV3(input *users.PublicCreateUserV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.Users.PublicCreateUserV3(input, nil)
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
		logrus.Infof("Response: \n %v", string(payloadString))
	}
	return created.GetPayload(), nil
}

// PublicUserVerificationV3 is used to redeem verification code sent to user
func (u *UsersService) PublicUserVerificationV3(input *users.PublicUserVerificationV3Params) error {
	logrus.Infof("Invoke VerifyToken with parameter %v %v %v", input.Body.Code, input.Body.ContactType, input.Namespace)
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, err :=
		u.Client.Users.PublicUserVerificationV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) ListAdminsV3(input *users.ListAdminsV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.ListAdminsV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetAgeRestrictionStatusV3(input *users.AdminGetAgeRestrictionStatusV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminGetAgeRestrictionStatusV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateAgeRestrictionConfigV3(input *users.AdminUpdateAgeRestrictionConfigV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.AdminUpdateAgeRestrictionConfigV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetListCountryAgeRestrictionV3(input *users.AdminGetListCountryAgeRestrictionV3Params) ([]*iamclientmodels.ModelCountryV3Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.AdminGetListCountryAgeRestrictionV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateCountryAgeRestrictionV3(input *users.AdminUpdateCountryAgeRestrictionV3Params) (*iamclientmodels.ModelCountryV3Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, notFound, err :=
		u.Client.Users.AdminUpdateCountryAgeRestrictionV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) GetAdminUsersByRoleIDV3(input *users.GetAdminUsersByRoleIDV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.GetAdminUsersByRoleIDV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserByEmailAddressV3(input *users.AdminGetUserByEmailAddressV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminGetUserByEmailAddressV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminInviteUserV3(input *users.AdminInviteUserV3Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, internalServer, err :=
		u.Client.Users.AdminInviteUserV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminListUsersV3(input *users.AdminListUsersV3Params) (*iamclientmodels.AccountcommonListUsersWithPlatformAccountsResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.AdminListUsersV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminSearchUserV3(input *users.AdminSearchUserV3Params) (*iamclientmodels.ModelSearchUsersResponseWithPaginationV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.AdminSearchUserV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetBulkUserByEmailAddressV3(input *users.AdminGetBulkUserByEmailAddressV3Params) (*iamclientmodels.ModelListUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminGetBulkUserByEmailAddressV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserByUserIDV3(input *users.AdminGetUserByUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminGetUserByUserIDV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateUserV3(input *users.AdminUpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		u.Client.Users.AdminUpdateUserV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserBanV3(input *users.AdminGetUserBanV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminGetUserBanV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminBanUserV3(input *users.AdminBanUserV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminBanUserV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateUserBanV3(input *users.AdminUpdateUserBanV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminUpdateUserBanV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminSendVerificationCodeV3(input *users.AdminSendVerificationCodeV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, tooManyRequest, err :=
		u.Client.Users.AdminSendVerificationCodeV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminVerifyAccountV3(input *users.AdminVerifyAccountV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminVerifyAccountV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) GetUserVerificationCodeV3(input *users.GetUserVerificationCodeParams) (*iamclientmodels.ModelVerificationCodeResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.GetUserVerificationCode(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserDeletionStatusV3(input *users.AdminGetUserDeletionStatusV3Params) (*iamclientmodels.ModelUserDeletionStatusResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminGetUserDeletionStatusV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateUserDeletionStatusV3(input *users.AdminUpdateUserDeletionStatusV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.AdminUpdateUserDeletionStatusV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpgradeHeadlessAccountV3(input *users.AdminUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		u.Client.Users.AdminUpgradeHeadlessAccountV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminDeleteUserInformationV3(input *users.AdminDeleteUserInformationV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminDeleteUserInformationV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserLoginHistoriesV3(input *users.AdminGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminGetUserLoginHistoriesV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateUserPermissionV3(input *users.AdminUpdateUserPermissionV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminUpdateUserPermissionV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminAddUserPermissionsV3(input *users.AdminAddUserPermissionsV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminAddUserPermissionsV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminDeleteUserPermissionBulkV3(input *users.AdminDeleteUserPermissionBulkV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminDeleteUserPermissionBulkV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminDeleteUserPermissionV3(input *users.AdminDeleteUserPermissionV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminDeleteUserPermissionV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetUserPlatformAccountsV3(input *users.AdminGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminGetUserPlatformAccountsV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminCreateJusticeUser(input *users.AdminCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err :=
		u.Client.Users.AdminCreateJusticeUser(input, client.BearerToken(*accessToken.AccessToken))
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

// AdminLinkPlatformAccount is used to link a platform user account to user account
func (u *UsersService) AdminLinkPlatformAccount(input *users.AdminLinkPlatformAccountParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err :=
		u.Client.Users.AdminLinkPlatformAccount(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminPlatformUnlinkV3(input *users.AdminPlatformUnlinkV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err :=
		u.Client.Users.AdminPlatformUnlinkV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminDeleteUserRoleV3(input *users.AdminDeleteUserRoleV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminDeleteUserRoleV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminDeleteUserRolesV3(input *users.AdminDeleteUserRolesV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminDeleteUserRolesV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminSaveUserRoleV3(input *users.AdminSaveUserRoleV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, unprocessableEntity, internalServer, err :=
		u.Client.Users.AdminSaveUserRoleV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminAddUserRoleV3(input *users.AdminAddUserRoleV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		u.Client.Users.AdminAddUserRoleV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminUpdateUserStatusV3(input *users.AdminUpdateUserStatusV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.AdminUpdateUserStatusV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminVerifyUserWithoutVerificationCodeV3(input *users.AdminVerifyUserWithoutVerificationCodeV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		u.Client.Users.AdminVerifyUserWithoutVerificationCodeV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) AdminGetMyUserV3() (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServer, err :=
		u.Client.Users.AdminGetMyUserV3(nil, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicListUserIDByPlatformUserIDsV3(input *users.PublicListUserIDByPlatformUserIDsV3Params) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.PublicListUserIDByPlatformUserIDsV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicGetUserByPlatformUserIDV3(input *users.PublicGetUserByPlatformUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.PublicGetUserByPlatformUserIDV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicGetAsyncStatus(input *users.PublicGetAsyncStatusParams) (*iamclientmodels.ModelLinkRequest, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.PublicGetAsyncStatus(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicSearchUserV3(input *users.PublicSearchUserV3Params) (*iamclientmodels.ModelPublicUserInformationResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServer, err :=
		u.Client.Users.PublicSearchUserV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicForgotPasswordV3 is used to request password reset code
func (u *UsersService) PublicForgotPasswordV3(input *users.PublicForgotPasswordV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, tooManyRequests, err :=
		u.Client.Users.PublicForgotPasswordV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) GetAdminInvitationV3(input *users.GetAdminInvitationV3Params) (*iamclientmodels.ModelUserInvitationV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServer, err :=
		u.Client.Users.GetAdminInvitationV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) CreateUserFromInvitationV3(input *users.CreateUserFromInvitationV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, internalServer, err :=
		u.Client.Users.CreateUserFromInvitationV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicUpdateUserV3 is used to update user
func (u *UsersService) PublicUpdateUserV3(input *users.PublicUpdateUserV3Params) ([]*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServer, err :=
		u.Client.Users.PublicUpdateUserV3(input, client.BearerToken(*accessToken.AccessToken))
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

// UpdateUserV3 is used to update user
func (u *UsersService) UpdateUserV3(input *users.UpdateUserV3Params) ([]*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServer, err :=
		u.Client.Users.UpdateUserV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicSendVerificationCodeV3 is used to send verification code to user
func (u *UsersService) PublicSendVerificationCodeV3(input *users.PublicSendVerificationCodeV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, tooManyRequests, err :=
		u.Client.Users.PublicSendVerificationCodeV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicUpgradeHeadlessAccountV3 is used to upgrade headless account and automatically verified the email address if it is succeeded
func (u *UsersService) PublicUpgradeHeadlessAccountV3(input *users.PublicUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServer, err :=
		u.Client.Users.PublicUpgradeHeadlessAccountV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicVerifyHeadlessAccountV3 is used to upgrade user account to full account with email
func (u *UsersService) PublicVerifyHeadlessAccountV3(input *users.PublicVerifyHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServer, err :=
		u.Client.Users.PublicVerifyHeadlessAccountV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicUpdatePasswordV3 is used to send verification code to user
func (u *UsersService) PublicUpdatePasswordV3(input *users.PublicUpdatePasswordV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServer, err :=
		u.Client.Users.PublicUpdatePasswordV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicCreateJusticeUser is used to create justice user from publisher user
func (u *UsersService) PublicCreateJusticeUser(input *users.PublicCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.PublicCreateJusticeUser(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicPlatformLinkV3 is used to link user s account with platform
func (u *UsersService) PublicPlatformLinkV3(input *users.PublicPlatformLinkV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServer, err :=
		u.Client.Users.PublicPlatformLinkV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicPlatformUnlinkV3 is used to unlink user s account from specific platform
func (u *UsersService) PublicPlatformUnlinkV3(input *users.PublicPlatformUnlinkV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err :=
		u.Client.Users.PublicPlatformUnlinkV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicWebLinkPlatform is used to create public web linking
func (u *UsersService) PublicWebLinkPlatform(input *users.PublicWebLinkPlatformParams) (*iamclientmodels.ModelWebLinkingResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, err :=
		u.Client.Users.PublicWebLinkPlatform(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicWebLinkPlatformEstablish is used to established link progress
func (u *UsersService) PublicWebLinkPlatformEstablish(input *users.PublicWebLinkPlatformEstablishParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	found, err :=
		u.Client.Users.PublicWebLinkPlatformEstablish(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	if found == nil {
		return errors.New("create justice user is empty")
	}
	return nil
}

// ResetPasswordV3 is used to reset user password
func (u *UsersService) ResetPasswordV3(input *users.ResetPasswordV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, err :=
		u.Client.Users.ResetPasswordV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicGetUserByUserIDV3 is used to get user by user ID
func (u *UsersService) PublicGetUserByUserIDV3(input *users.PublicGetUserByUserIDV3Params) (*iamclientmodels.ModelPublicUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServer, err :=
		u.Client.Users.PublicGetUserByUserIDV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicGetUserBanHistoryV3 is used to get user s bans
func (u *UsersService) PublicGetUserBanHistoryV3(input *users.PublicGetUserBanHistoryV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.PublicGetUserBanHistoryV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicGetUserLoginHistoriesV3 is used to get user s login histories status
func (u *UsersService) PublicGetUserLoginHistoriesV3(input *users.PublicGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err :=
		u.Client.Users.PublicGetUserLoginHistoriesV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicGetUserPlatformAccountsV3(input *users.PublicGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.Users.PublicGetUserPlatformAccountsV3(input, client.BearerToken(*accessToken.AccessToken))
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

// PublicLinkPlatformAccount is used to link a platform user account to user account
func (u *UsersService) PublicLinkPlatformAccount(input *users.PublicLinkPlatformAccountParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServer, err :=
		u.Client.Users.PublicLinkPlatformAccount(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicValidateUserByUserIDAndPasswordV3(input *users.PublicValidateUserByUserIDAndPasswordV3Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServer, err :=
		u.Client.Users.PublicValidateUserByUserIDAndPasswordV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (u *UsersService) PublicGetMyUserV3() (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServer, err :=
		u.Client.Users.PublicGetMyUserV3(nil, client.BearerToken(*accessToken.AccessToken))
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
