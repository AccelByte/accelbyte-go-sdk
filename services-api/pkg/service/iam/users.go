// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type UsersService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *UsersService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use CreateUserShort instead.
func (aaa *UsersService) CreateUser(input *users.CreateUserParams) (*iamclientmodels.ModelUserCreateResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := aaa.Client.Users.CreateUser(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetAdminUsersByRoleIDShort instead.
func (aaa *UsersService) GetAdminUsersByRoleID(input *users.GetAdminUsersByRoleIDParams) (*iamclientmodels.ModelGetAdminUsersResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.GetAdminUsersByRoleID(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserByLoginIDShort instead.
func (aaa *UsersService) GetUserByLoginID(input *users.GetUserByLoginIDParams) (*iamclientmodels.ModelPublicUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.Users.GetUserByLoginID(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserByPlatformUserIDShort instead.
func (aaa *UsersService) GetUserByPlatformUserID(input *users.GetUserByPlatformUserIDParams) (*iamclientmodels.ModelPublicUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetUserByPlatformUserID(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use ForgotPasswordShort instead.
func (aaa *UsersService) ForgotPassword(input *users.ForgotPasswordParams) error {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.ForgotPassword(input, client.BasicAuth(clientID, clientSecret))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetUsersByLoginIdsShort instead.
func (aaa *UsersService) GetUsersByLoginIds(input *users.GetUsersByLoginIdsParams) (*iamclientmodels.ModelPublicUsersResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := aaa.Client.Users.GetUsersByLoginIds(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use ResetPasswordShort instead.
func (aaa *UsersService) ResetPassword(input *users.ResetPasswordParams) error {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	_, badRequest, forbidden, notFound, internalServerError, err := aaa.Client.Users.ResetPassword(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use SearchUserShort instead.
func (aaa *UsersService) SearchUser(input *users.SearchUserParams) (*iamclientmodels.ModelSearchUsersResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := aaa.Client.Users.SearchUser(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserByUserIDShort instead.
func (aaa *UsersService) GetUserByUserID(input *users.GetUserByUserIDParams) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.Users.GetUserByUserID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdateUserShort instead.
func (aaa *UsersService) UpdateUser(input *users.UpdateUserParams) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.UpdateUser(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteUserShort instead.
func (aaa *UsersService) DeleteUser(input *users.DeleteUserParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.Users.DeleteUser(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use BanUserShort instead.
func (aaa *UsersService) BanUser(input *users.BanUserParams) (*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.BanUser(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserBanHistoryShort instead.
func (aaa *UsersService) GetUserBanHistory(input *users.GetUserBanHistoryParams) ([]*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetUserBanHistory(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DisableUserBanShort instead.
func (aaa *UsersService) DisableUserBan(input *users.DisableUserBanParams) (*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.DisableUserBan(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use EnableUserBanShort instead.
func (aaa *UsersService) EnableUserBan(input *users.EnableUserBanParams) (*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.EnableUserBan(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use ListCrossNamespaceAccountLinkShort instead.
func (aaa *UsersService) ListCrossNamespaceAccountLink(input *users.ListCrossNamespaceAccountLinkParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.ListCrossNamespaceAccountLink(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use DisableUserShort instead.
func (aaa *UsersService) DisableUser(input *users.DisableUserParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.DisableUser(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use EnableUserShort instead.
func (aaa *UsersService) EnableUser(input *users.EnableUserParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.EnableUser(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetUserInformationShort instead.
func (aaa *UsersService) GetUserInformation(input *users.GetUserInformationParams) (*iamclientmodels.ModelUserInformation, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetUserInformation(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteUserInformationShort instead.
func (aaa *UsersService) DeleteUserInformation(input *users.DeleteUserInformationParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.Users.DeleteUserInformation(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetUserLoginHistoriesShort instead.
func (aaa *UsersService) GetUserLoginHistories(input *users.GetUserLoginHistoriesParams) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetUserLoginHistories(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdatePasswordShort instead.
func (aaa *UsersService) UpdatePassword(input *users.UpdatePasswordParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.UpdatePassword(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use SaveUserPermissionShort instead.
func (aaa *UsersService) SaveUserPermission(input *users.SaveUserPermissionParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.SaveUserPermission(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AddUserPermissionShort instead.
func (aaa *UsersService) AddUserPermission(input *users.AddUserPermissionParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AddUserPermission(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use DeleteUserPermissionShort instead.
func (aaa *UsersService) DeleteUserPermission(input *users.DeleteUserPermissionParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.DeleteUserPermission(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetUserPlatformAccountsShort instead.
func (aaa *UsersService) GetUserPlatformAccounts(input *users.GetUserPlatformAccountsParams) ([]*iamclientmodels.AccountcommonUserLinkedPlatform, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := aaa.Client.Users.GetUserPlatformAccounts(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserMappingShort instead.
func (aaa *UsersService) GetUserMapping(input *users.GetUserMappingParams) (*iamclientmodels.ModelGetUserMapping, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetUserMapping(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetUserJusticePlatformAccountShort instead.
func (aaa *UsersService) GetUserJusticePlatformAccount(input *users.GetUserJusticePlatformAccountParams) (*iamclientmodels.ModelGetUserJusticePlatformAccountResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := aaa.Client.Users.GetUserJusticePlatformAccount(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PlatformLinkShort instead.
func (aaa *UsersService) PlatformLink(input *users.PlatformLinkParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.PlatformLink(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PlatformUnlinkShort instead.
func (aaa *UsersService) PlatformUnlink(input *users.PlatformUnlinkParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PlatformUnlink(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetPublisherUserShort instead.
func (aaa *UsersService) GetPublisherUser(input *users.GetPublisherUserParams) (*iamclientmodels.ModelGetPublisherUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetPublisherUser(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SaveUserRolesShort instead.
func (aaa *UsersService) SaveUserRoles(input *users.SaveUserRolesParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := aaa.Client.Users.SaveUserRoles(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AddUserRoleShort instead.
func (aaa *UsersService) AddUserRole(input *users.AddUserRoleParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AddUserRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use DeleteUserRoleShort instead.
func (aaa *UsersService) DeleteUserRole(input *users.DeleteUserRoleParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.DeleteUserRole(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use UpgradeHeadlessAccountShort instead.
func (aaa *UsersService) UpgradeHeadlessAccount(input *users.UpgradeHeadlessAccountParams) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, conflict, err := aaa.Client.Users.UpgradeHeadlessAccount(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpgradeHeadlessAccountWithVerificationCodeShort instead.
func (aaa *UsersService) UpgradeHeadlessAccountWithVerificationCode(input *users.UpgradeHeadlessAccountWithVerificationCodeParams) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, err := aaa.Client.Users.UpgradeHeadlessAccountWithVerificationCode(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UserVerificationShort instead.
func (aaa *UsersService) UserVerification(input *users.UserVerificationParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.UserVerification(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use SendVerificationCodeShort instead.
func (aaa *UsersService) SendVerificationCode(input *users.SendVerificationCodeParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, tooManyRequests, internalServerError, err := aaa.Client.Users.SendVerificationCode(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminGetAgeRestrictionStatusV2Short instead.
func (aaa *UsersService) AdminGetAgeRestrictionStatusV2(input *users.AdminGetAgeRestrictionStatusV2Params) (*iamclientmodels.ModelAgeRestrictionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminGetAgeRestrictionStatusV2(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateAgeRestrictionConfigV2Short instead.
func (aaa *UsersService) AdminUpdateAgeRestrictionConfigV2(input *users.AdminUpdateAgeRestrictionConfigV2Params) (*iamclientmodels.ModelAgeRestrictionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminUpdateAgeRestrictionConfigV2(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetListCountryAgeRestrictionShort instead.
func (aaa *UsersService) GetListCountryAgeRestriction(input *users.GetListCountryAgeRestrictionParams) ([]*iamclientmodels.AccountcommonCountryAgeRestriction, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.GetListCountryAgeRestriction(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdateCountryAgeRestrictionShort instead.
func (aaa *UsersService) UpdateCountryAgeRestriction(input *users.UpdateCountryAgeRestrictionParams) (*iamclientmodels.ModelCountry, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.UpdateCountryAgeRestriction(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminSearchUsersV2Short instead.
func (aaa *UsersService) AdminSearchUsersV2(input *users.AdminSearchUsersV2Params) (*iamclientmodels.ModelSearchUsersByPlatformIDResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := aaa.Client.Users.AdminSearchUsersV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserByUserIDV2Short instead.
func (aaa *UsersService) AdminGetUserByUserIDV2(input *users.AdminGetUserByUserIDV2Params) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserByUserIDV2(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserV2Short instead.
func (aaa *UsersService) AdminUpdateUserV2(input *users.AdminUpdateUserV2Params) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminUpdateUserV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminBanUserV2Short instead.
func (aaa *UsersService) AdminBanUserV2(input *users.AdminBanUserV2Params) (*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminBanUserV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserBanV2Short instead.
func (aaa *UsersService) AdminGetUserBanV2(input *users.AdminGetUserBanV2Params) ([]*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminGetUserBanV2(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDisableUserV2Short instead.
func (aaa *UsersService) AdminDisableUserV2(input *users.AdminDisableUserV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminDisableUserV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminEnableUserV2Short instead.
func (aaa *UsersService) AdminEnableUserV2(input *users.AdminEnableUserV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminEnableUserV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminResetPasswordV2Short instead.
func (aaa *UsersService) AdminResetPasswordV2(input *users.AdminResetPasswordV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminResetPasswordV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminDeletePlatformLinkV2Short instead.
func (aaa *UsersService) AdminDeletePlatformLinkV2(input *users.AdminDeletePlatformLinkV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminDeletePlatformLinkV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminPutUserRolesV2Short instead.
func (aaa *UsersService) AdminPutUserRolesV2(input *users.AdminPutUserRolesV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminPutUserRolesV2(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminCreateUserRolesV2Short instead.
func (aaa *UsersService) AdminCreateUserRolesV2(input *users.AdminCreateUserRolesV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := aaa.Client.Users.AdminCreateUserRolesV2(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicGetCountryAgeRestrictionShort instead.
func (aaa *UsersService) PublicGetCountryAgeRestriction(input *users.PublicGetCountryAgeRestrictionParams) (*iamclientmodels.AccountcommonCountry, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, err := aaa.Client.Users.PublicGetCountryAgeRestriction(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicCreateUserV2Short instead.
func (aaa *UsersService) PublicCreateUserV2(input *users.PublicCreateUserV2Params) (*iamclientmodels.ModelUserCreateResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := aaa.Client.Users.PublicCreateUserV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicForgotPasswordV2Short instead.
func (aaa *UsersService) PublicForgotPasswordV2(input *users.PublicForgotPasswordV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, tooManyRequests, internalServerError, err := aaa.Client.Users.PublicForgotPasswordV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicResetPasswordV2Short instead.
func (aaa *UsersService) PublicResetPasswordV2(input *users.PublicResetPasswordV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicResetPasswordV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserByUserIDV2Short instead.
func (aaa *UsersService) PublicGetUserByUserIDV2(input *users.PublicGetUserByUserIDV2Params) (*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserByUserIDV2(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicUpdateUserV2Short instead.
func (aaa *UsersService) PublicUpdateUserV2(input *users.PublicUpdateUserV2Params) ([]*iamclientmodels.ModelUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicUpdateUserV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserBanShort instead.
func (aaa *UsersService) PublicGetUserBan(input *users.PublicGetUserBanParams) ([]*iamclientmodels.ModelUserBanResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.PublicGetUserBan(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicUpdatePasswordV2Short instead.
func (aaa *UsersService) PublicUpdatePasswordV2(input *users.PublicUpdatePasswordV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicUpdatePasswordV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetListJusticePlatformAccountsShort instead.
func (aaa *UsersService) GetListJusticePlatformAccounts(input *users.GetListJusticePlatformAccountsParams) ([]*iamclientmodels.ModelGetUserMapping, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.Users.GetListJusticePlatformAccounts(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicPlatformLinkV2Short instead.
func (aaa *UsersService) PublicPlatformLinkV2(input *users.PublicPlatformLinkV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicPlatformLinkV2(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicDeletePlatformLinkV2Short instead.
func (aaa *UsersService) PublicDeletePlatformLinkV2(input *users.PublicDeletePlatformLinkV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicDeletePlatformLinkV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ListAdminsV3Short instead.
func (aaa *UsersService) ListAdminsV3(input *users.ListAdminsV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.ListAdminsV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetAgeRestrictionStatusV3Short instead.
func (aaa *UsersService) AdminGetAgeRestrictionStatusV3(input *users.AdminGetAgeRestrictionStatusV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetAgeRestrictionStatusV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateAgeRestrictionConfigV3Short instead.
func (aaa *UsersService) AdminUpdateAgeRestrictionConfigV3(input *users.AdminUpdateAgeRestrictionConfigV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminUpdateAgeRestrictionConfigV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetListCountryAgeRestrictionV3Short instead.
func (aaa *UsersService) AdminGetListCountryAgeRestrictionV3(input *users.AdminGetListCountryAgeRestrictionV3Params) ([]*iamclientmodels.ModelCountryV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminGetListCountryAgeRestrictionV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateCountryAgeRestrictionV3Short instead.
func (aaa *UsersService) AdminUpdateCountryAgeRestrictionV3(input *users.AdminUpdateCountryAgeRestrictionV3Params) (*iamclientmodels.ModelCountryV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminUpdateCountryAgeRestrictionV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminListUserIDByPlatformUserIDsV3Short instead.
func (aaa *UsersService) AdminListUserIDByPlatformUserIDsV3(input *users.AdminListUserIDByPlatformUserIDsV3Params) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminListUserIDByPlatformUserIDsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserByPlatformUserIDV3Short instead.
func (aaa *UsersService) AdminGetUserByPlatformUserIDV3(input *users.AdminGetUserByPlatformUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserByPlatformUserIDV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetAdminUsersByRoleIDV3Short instead.
func (aaa *UsersService) GetAdminUsersByRoleIDV3(input *users.GetAdminUsersByRoleIDV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.GetAdminUsersByRoleIDV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserByEmailAddressV3Short instead.
func (aaa *UsersService) AdminGetUserByEmailAddressV3(input *users.AdminGetUserByEmailAddressV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserByEmailAddressV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetBulkUserBanV3Short instead.
func (aaa *UsersService) AdminGetBulkUserBanV3(input *users.AdminGetBulkUserBanV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetBulkUserBanV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminListUserIDByUserIDsV3Short instead.
func (aaa *UsersService) AdminListUserIDByUserIDsV3(input *users.AdminListUserIDByUserIDsV3Params) (*iamclientmodels.ModelListUserInformationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminListUserIDByUserIDsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminBulkGetUsersPlatformShort instead.
func (aaa *UsersService) AdminBulkGetUsersPlatform(input *users.AdminBulkGetUsersPlatformParams) (*iamclientmodels.ModelListBulkUserPlatformsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.Users.AdminBulkGetUsersPlatform(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminInviteUserV3Short instead.
func (aaa *UsersService) AdminInviteUserV3(input *users.AdminInviteUserV3Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, unprocessableEntity, internalServerError, err := aaa.Client.Users.AdminInviteUserV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminQueryThirdPlatformLinkHistoryV3Short instead.
func (aaa *UsersService) AdminQueryThirdPlatformLinkHistoryV3(input *users.AdminQueryThirdPlatformLinkHistoryV3Params) (*iamclientmodels.ModelLinkingHistoryResponseWithPaginationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminQueryThirdPlatformLinkHistoryV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminListUsersV3Short instead.
func (aaa *UsersService) AdminListUsersV3(input *users.AdminListUsersV3Params) (*iamclientmodels.AccountcommonListUsersWithPlatformAccountsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminListUsersV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminSearchUserV3Short instead.
func (aaa *UsersService) AdminSearchUserV3(input *users.AdminSearchUserV3Params) (*iamclientmodels.ModelSearchUsersResponseWithPaginationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.AdminSearchUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetBulkUserByEmailAddressV3Short instead.
func (aaa *UsersService) AdminGetBulkUserByEmailAddressV3(input *users.AdminGetBulkUserByEmailAddressV3Params) (*iamclientmodels.ModelListUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetBulkUserByEmailAddressV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserByUserIDV3Short instead.
func (aaa *UsersService) AdminGetUserByUserIDV3(input *users.AdminGetUserByUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserByUserIDV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserV3Short instead.
func (aaa *UsersService) AdminUpdateUserV3(input *users.AdminUpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminUpdateUserV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserBanV3Short instead.
func (aaa *UsersService) AdminGetUserBanV3(input *users.AdminGetUserBanV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserBanV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminBanUserV3Short instead.
func (aaa *UsersService) AdminBanUserV3(input *users.AdminBanUserV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminBanUserV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserBanV3Short instead.
func (aaa *UsersService) AdminUpdateUserBanV3(input *users.AdminUpdateUserBanV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminUpdateUserBanV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminSendVerificationCodeV3Short instead.
func (aaa *UsersService) AdminSendVerificationCodeV3(input *users.AdminSendVerificationCodeV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, tooManyRequests, err := aaa.Client.Users.AdminSendVerificationCodeV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminVerifyAccountV3Short instead.
func (aaa *UsersService) AdminVerifyAccountV3(input *users.AdminVerifyAccountV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminVerifyAccountV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetUserVerificationCodeShort instead.
func (aaa *UsersService) GetUserVerificationCode(input *users.GetUserVerificationCodeParams) (*iamclientmodels.ModelVerificationCodeResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.GetUserVerificationCode(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserDeletionStatusV3Short instead.
func (aaa *UsersService) AdminGetUserDeletionStatusV3(input *users.AdminGetUserDeletionStatusV3Params) (*iamclientmodels.ModelUserDeletionStatusResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserDeletionStatusV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserDeletionStatusV3Short instead.
func (aaa *UsersService) AdminUpdateUserDeletionStatusV3(input *users.AdminUpdateUserDeletionStatusV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminUpdateUserDeletionStatusV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminUpgradeHeadlessAccountV3Short instead.
func (aaa *UsersService) AdminUpgradeHeadlessAccountV3(input *users.AdminUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminUpgradeHeadlessAccountV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteUserInformationV3Short instead.
func (aaa *UsersService) AdminDeleteUserInformationV3(input *users.AdminDeleteUserInformationV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminDeleteUserInformationV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserLoginHistoriesV3Short instead.
func (aaa *UsersService) AdminGetUserLoginHistoriesV3(input *users.AdminGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminGetUserLoginHistoriesV3(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminResetPasswordV3Short instead.
func (aaa *UsersService) AdminResetPasswordV3(input *users.AdminResetPasswordV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminResetPasswordV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserPermissionV3Short instead.
func (aaa *UsersService) AdminUpdateUserPermissionV3(input *users.AdminUpdateUserPermissionV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminUpdateUserPermissionV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminAddUserPermissionsV3Short instead.
func (aaa *UsersService) AdminAddUserPermissionsV3(input *users.AdminAddUserPermissionsV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminAddUserPermissionsV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteUserPermissionBulkV3Short instead.
func (aaa *UsersService) AdminDeleteUserPermissionBulkV3(input *users.AdminDeleteUserPermissionBulkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminDeleteUserPermissionBulkV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteUserPermissionV3Short instead.
func (aaa *UsersService) AdminDeleteUserPermissionV3(input *users.AdminDeleteUserPermissionV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminDeleteUserPermissionV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserPlatformAccountsV3Short instead.
func (aaa *UsersService) AdminGetUserPlatformAccountsV3(input *users.AdminGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserPlatformAccountsV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetListJusticePlatformAccountsShort instead.
func (aaa *UsersService) AdminGetListJusticePlatformAccounts(input *users.AdminGetListJusticePlatformAccountsParams) ([]*iamclientmodels.ModelGetUserMapping, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetListJusticePlatformAccounts(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserMappingShort instead.
func (aaa *UsersService) AdminGetUserMapping(input *users.AdminGetUserMappingParams) (*iamclientmodels.ModelGetUserMappingV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminGetUserMapping(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateJusticeUserShort instead.
func (aaa *UsersService) AdminCreateJusticeUser(input *users.AdminCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminCreateJusticeUser(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminLinkPlatformAccountShort instead.
func (aaa *UsersService) AdminLinkPlatformAccount(input *users.AdminLinkPlatformAccountParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.Users.AdminLinkPlatformAccount(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminPlatformUnlinkV3Short instead.
func (aaa *UsersService) AdminPlatformUnlinkV3(input *users.AdminPlatformUnlinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminPlatformUnlinkV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminPlatformLinkV3Short instead.
func (aaa *UsersService) AdminPlatformLinkV3(input *users.AdminPlatformLinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminPlatformLinkV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminGetThirdPartyPlatformTokenLinkStatusV3Short instead.
func (aaa *UsersService) AdminGetThirdPartyPlatformTokenLinkStatusV3(input *users.AdminGetThirdPartyPlatformTokenLinkStatusV3Params) (*iamclientmodels.ModelTokenThirdPartyLinkStatusResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetThirdPartyPlatformTokenLinkStatusV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetUserSinglePlatformAccountShort instead.
func (aaa *UsersService) AdminGetUserSinglePlatformAccount(input *users.AdminGetUserSinglePlatformAccountParams) (*iamclientmodels.ModelUserPlatformMetadata, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminGetUserSinglePlatformAccount(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteUserRolesV3Short instead.
func (aaa *UsersService) AdminDeleteUserRolesV3(input *users.AdminDeleteUserRolesV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.AdminDeleteUserRolesV3(input, client.BearerToken(*token.AccessToken))
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
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminSaveUserRoleV3Short instead.
func (aaa *UsersService) AdminSaveUserRoleV3(input *users.AdminSaveUserRoleV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, unprocessableEntity, internalServerError, err := aaa.Client.Users.AdminSaveUserRoleV3(input, client.BearerToken(*token.AccessToken))
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
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminAddUserRoleV3Short instead.
func (aaa *UsersService) AdminAddUserRoleV3(input *users.AdminAddUserRoleV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminAddUserRoleV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteUserRoleV3Short instead.
func (aaa *UsersService) AdminDeleteUserRoleV3(input *users.AdminDeleteUserRoleV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminDeleteUserRoleV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminUpdateUserStatusV3Short instead.
func (aaa *UsersService) AdminUpdateUserStatusV3(input *users.AdminUpdateUserStatusV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.AdminUpdateUserStatusV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminVerifyUserWithoutVerificationCodeV3Short instead.
func (aaa *UsersService) AdminVerifyUserWithoutVerificationCodeV3(input *users.AdminVerifyUserWithoutVerificationCodeV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.AdminVerifyUserWithoutVerificationCodeV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AdminGetMyUserV3Short instead.
func (aaa *UsersService) AdminGetMyUserV3(input *users.AdminGetMyUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.Users.AdminGetMyUserV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetCountryAgeRestrictionV3Short instead.
func (aaa *UsersService) PublicGetCountryAgeRestrictionV3(input *users.PublicGetCountryAgeRestrictionV3Params) (*iamclientmodels.ModelCountryV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, err := aaa.Client.Users.PublicGetCountryAgeRestrictionV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicListUserIDByPlatformUserIDsV3Short instead.
func (aaa *UsersService) PublicListUserIDByPlatformUserIDsV3(input *users.PublicListUserIDByPlatformUserIDsV3Params) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.PublicListUserIDByPlatformUserIDsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserByPlatformUserIDV3Short instead.
func (aaa *UsersService) PublicGetUserByPlatformUserIDV3(input *users.PublicGetUserByPlatformUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserByPlatformUserIDV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetAsyncStatusShort instead.
func (aaa *UsersService) PublicGetAsyncStatus(input *users.PublicGetAsyncStatusParams) (*iamclientmodels.ModelLinkRequest, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.PublicGetAsyncStatus(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicSearchUserV3Short instead.
func (aaa *UsersService) PublicSearchUserV3(input *users.PublicSearchUserV3Params) (*iamclientmodels.ModelPublicUserInformationResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.Users.PublicSearchUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicCreateUserV3Short instead.
func (aaa *UsersService) PublicCreateUserV3(input *users.PublicCreateUserV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicCreateUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CheckUserAvailabilityShort instead.
func (aaa *UsersService) CheckUserAvailability(input *users.CheckUserAvailabilityParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, unprocessableEntity, err := aaa.Client.Users.CheckUserAvailability(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicBulkGetUsersShort instead.
func (aaa *UsersService) PublicBulkGetUsers(input *users.PublicBulkGetUsersParams) (*iamclientmodels.ModelListBulkUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.Users.PublicBulkGetUsers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicSendRegistrationCodeShort instead.
func (aaa *UsersService) PublicSendRegistrationCode(input *users.PublicSendRegistrationCodeParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, err := aaa.Client.Users.PublicSendRegistrationCode(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicVerifyRegistrationCodeShort instead.
func (aaa *UsersService) PublicVerifyRegistrationCode(input *users.PublicVerifyRegistrationCodeParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := aaa.Client.Users.PublicVerifyRegistrationCode(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicForgotPasswordV3Short instead.
func (aaa *UsersService) PublicForgotPasswordV3(input *users.PublicForgotPasswordV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, tooManyRequests, err := aaa.Client.Users.PublicForgotPasswordV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetAdminInvitationV3Short instead.
func (aaa *UsersService) GetAdminInvitationV3(input *users.GetAdminInvitationV3Params) (*iamclientmodels.ModelUserInvitationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.Users.GetAdminInvitationV3(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreateUserFromInvitationV3Short instead.
func (aaa *UsersService) CreateUserFromInvitationV3(input *users.CreateUserFromInvitationV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, internalServerError, err := aaa.Client.Users.CreateUserFromInvitationV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdateUserV3Short instead.
func (aaa *UsersService) UpdateUserV3(input *users.UpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.Users.UpdateUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicPartialUpdateUserV3Short instead.
func (aaa *UsersService) PublicPartialUpdateUserV3(input *users.PublicPartialUpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.Users.PublicPartialUpdateUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicSendVerificationCodeV3Short instead.
func (aaa *UsersService) PublicSendVerificationCodeV3(input *users.PublicSendVerificationCodeV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, tooManyRequests, err := aaa.Client.Users.PublicSendVerificationCodeV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicUserVerificationV3Short instead.
func (aaa *UsersService) PublicUserVerificationV3(input *users.PublicUserVerificationV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, conflict, err := aaa.Client.Users.PublicUserVerificationV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicUpgradeHeadlessAccountV3Short instead.
func (aaa *UsersService) PublicUpgradeHeadlessAccountV3(input *users.PublicUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicUpgradeHeadlessAccountV3(input, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicVerifyHeadlessAccountV3Short instead.
func (aaa *UsersService) PublicVerifyHeadlessAccountV3(input *users.PublicVerifyHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicVerifyHeadlessAccountV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicUpdatePasswordV3Short instead.
func (aaa *UsersService) PublicUpdatePasswordV3(input *users.PublicUpdatePasswordV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.Users.PublicUpdatePasswordV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicCreateJusticeUserShort instead.
func (aaa *UsersService) PublicCreateJusticeUser(input *users.PublicCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicCreateJusticeUser(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicPlatformLinkV3Short instead.
func (aaa *UsersService) PublicPlatformLinkV3(input *users.PublicPlatformLinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicPlatformLinkV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicPlatformUnlinkV3Short instead.
func (aaa *UsersService) PublicPlatformUnlinkV3(input *users.PublicPlatformUnlinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.Users.PublicPlatformUnlinkV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicPlatformUnlinkAllV3Short instead.
func (aaa *UsersService) PublicPlatformUnlinkAllV3(input *users.PublicPlatformUnlinkAllV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.Users.PublicPlatformUnlinkAllV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicForcePlatformLinkV3Short instead.
func (aaa *UsersService) PublicForcePlatformLinkV3(input *users.PublicForcePlatformLinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.Users.PublicForcePlatformLinkV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicWebLinkPlatformShort instead.
func (aaa *UsersService) PublicWebLinkPlatform(input *users.PublicWebLinkPlatformParams) (*iamclientmodels.ModelWebLinkingResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, err := aaa.Client.Users.PublicWebLinkPlatform(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicWebLinkPlatformEstablishShort instead.
func (aaa *UsersService) PublicWebLinkPlatformEstablish(input *users.PublicWebLinkPlatformEstablishParams) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	found, err := aaa.Client.Users.PublicWebLinkPlatformEstablish(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

// Deprecated: 2022-01-10 - please use PublicProcessWebLinkPlatformV3Short instead.
func (aaa *UsersService) PublicProcessWebLinkPlatformV3(input *users.PublicProcessWebLinkPlatformV3Params) (*iamclientmodels.ModelLinkRequest, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.Users.PublicProcessWebLinkPlatformV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use ResetPasswordV3Short instead.
func (aaa *UsersService) ResetPasswordV3(input *users.ResetPasswordV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, err := aaa.Client.Users.ResetPasswordV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserByUserIDV3Short instead.
func (aaa *UsersService) PublicGetUserByUserIDV3(input *users.PublicGetUserByUserIDV3Params) (*iamclientmodels.ModelPublicUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserByUserIDV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserBanHistoryV3Short instead.
func (aaa *UsersService) PublicGetUserBanHistoryV3(input *users.PublicGetUserBanHistoryV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserBanHistoryV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicListUserAllPlatformAccountsDistinctV3Short instead.
func (aaa *UsersService) PublicListUserAllPlatformAccountsDistinctV3(input *users.PublicListUserAllPlatformAccountsDistinctV3Params) (*iamclientmodels.AccountcommonDistinctPlatformResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicListUserAllPlatformAccountsDistinctV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserInformationV3Short instead.
func (aaa *UsersService) PublicGetUserInformationV3(input *users.PublicGetUserInformationV3Params) (*iamclientmodels.AccountcommonUserInformationV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserInformationV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserLoginHistoriesV3Short instead.
func (aaa *UsersService) PublicGetUserLoginHistoriesV3(input *users.PublicGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.Users.PublicGetUserLoginHistoriesV3(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetUserPlatformAccountsV3Short instead.
func (aaa *UsersService) PublicGetUserPlatformAccountsV3(input *users.PublicGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicGetUserPlatformAccountsV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicListJusticePlatformAccountsV3Short instead.
func (aaa *UsersService) PublicListJusticePlatformAccountsV3(input *users.PublicListJusticePlatformAccountsV3Params) ([]*iamclientmodels.ModelGetUserMappingV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicListJusticePlatformAccountsV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicLinkPlatformAccountShort instead.
func (aaa *UsersService) PublicLinkPlatformAccount(input *users.PublicLinkPlatformAccountParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.PublicLinkPlatformAccount(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicForceLinkPlatformWithProgressionShort instead.
func (aaa *UsersService) PublicForceLinkPlatformWithProgression(input *users.PublicForceLinkPlatformWithProgressionParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.PublicForceLinkPlatformWithProgression(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicGetPublisherUserV3Short instead.
func (aaa *UsersService) PublicGetPublisherUserV3(input *users.PublicGetPublisherUserV3Params) (*iamclientmodels.ModelGetPublisherUserV3Response, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := aaa.Client.Users.PublicGetPublisherUserV3(input, client.BearerToken(*token.AccessToken))
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
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicValidateUserByUserIDAndPasswordV3Short instead.
func (aaa *UsersService) PublicValidateUserByUserIDAndPasswordV3(input *users.PublicValidateUserByUserIDAndPasswordV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Users.PublicValidateUserByUserIDAndPasswordV3(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicGetMyUserV3Short instead.
func (aaa *UsersService) PublicGetMyUserV3(input *users.PublicGetMyUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.Users.PublicGetMyUserV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublicGetLinkHeadlessAccountToMyAccountConflictV3Short instead.
func (aaa *UsersService) PublicGetLinkHeadlessAccountToMyAccountConflictV3(input *users.PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) (*iamclientmodels.ModelGetLinkHeadlessAccountConflictResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.PublicGetLinkHeadlessAccountToMyAccountConflictV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use LinkHeadlessAccountToMyAccountV3Short instead.
func (aaa *UsersService) LinkHeadlessAccountToMyAccountV3(input *users.LinkHeadlessAccountToMyAccountV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.Users.LinkHeadlessAccountToMyAccountV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicSendVerificationLinkV3Short instead.
func (aaa *UsersService) PublicSendVerificationLinkV3(input *users.PublicSendVerificationLinkV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, tooManyRequests, err := aaa.Client.Users.PublicSendVerificationLinkV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if conflict != nil {
		return conflict
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use PublicVerifyUserByLinkV3Short instead.
func (aaa *UsersService) PublicVerifyUserByLinkV3(input *users.PublicVerifyUserByLinkV3Params) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	found, err := aaa.Client.Users.PublicVerifyUserByLinkV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

func (aaa *UsersService) CreateUserShort(input *users.CreateUserParams) (*iamclientmodels.ModelUserCreateResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.CreateUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) GetAdminUsersByRoleIDShort(input *users.GetAdminUsersByRoleIDParams) (*iamclientmodels.ModelGetAdminUsersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetAdminUsersByRoleIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetUserByLoginIDShort(input *users.GetUserByLoginIDParams) (*iamclientmodels.ModelPublicUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserByLoginIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetUserByPlatformUserIDShort(input *users.GetUserByPlatformUserIDParams) (*iamclientmodels.ModelPublicUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserByPlatformUserIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) ForgotPasswordShort(input *users.ForgotPasswordParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.ForgotPasswordShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetUsersByLoginIdsShort(input *users.GetUsersByLoginIdsParams) (*iamclientmodels.ModelPublicUsersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUsersByLoginIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) ResetPasswordShort(input *users.ResetPasswordParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.ResetPasswordShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) SearchUserShort(input *users.SearchUserParams) (*iamclientmodels.ModelSearchUsersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.SearchUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetUserByUserIDShort(input *users.GetUserByUserIDParams) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserByUserIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) UpdateUserShort(input *users.UpdateUserParams) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.UpdateUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) DeleteUserShort(input *users.DeleteUserParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.DeleteUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) BanUserShort(input *users.BanUserParams) (*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.BanUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) GetUserBanHistoryShort(input *users.GetUserBanHistoryParams) ([]*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserBanHistoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) DisableUserBanShort(input *users.DisableUserBanParams) (*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.DisableUserBanShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) EnableUserBanShort(input *users.EnableUserBanParams) (*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.EnableUserBanShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) ListCrossNamespaceAccountLinkShort(input *users.ListCrossNamespaceAccountLinkParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.ListCrossNamespaceAccountLinkShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) DisableUserShort(input *users.DisableUserParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.DisableUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) EnableUserShort(input *users.EnableUserParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.EnableUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetUserInformationShort(input *users.GetUserInformationParams) (*iamclientmodels.ModelUserInformation, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserInformationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) DeleteUserInformationShort(input *users.DeleteUserInformationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.DeleteUserInformationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetUserLoginHistoriesShort(input *users.GetUserLoginHistoriesParams) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserLoginHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) UpdatePasswordShort(input *users.UpdatePasswordParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.UpdatePasswordShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) SaveUserPermissionShort(input *users.SaveUserPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.SaveUserPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AddUserPermissionShort(input *users.AddUserPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AddUserPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) DeleteUserPermissionShort(input *users.DeleteUserPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.DeleteUserPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetUserPlatformAccountsShort(input *users.GetUserPlatformAccountsParams) ([]*iamclientmodels.AccountcommonUserLinkedPlatform, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserPlatformAccountsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetUserMappingShort(input *users.GetUserMappingParams) (*iamclientmodels.ModelGetUserMapping, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserMappingShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetUserJusticePlatformAccountShort(input *users.GetUserJusticePlatformAccountParams) (*iamclientmodels.ModelGetUserJusticePlatformAccountResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserJusticePlatformAccountShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PlatformLinkShort(input *users.PlatformLinkParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PlatformLinkShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PlatformUnlinkShort(input *users.PlatformUnlinkParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PlatformUnlinkShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetPublisherUserShort(input *users.GetPublisherUserParams) (*iamclientmodels.ModelGetPublisherUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetPublisherUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) SaveUserRolesShort(input *users.SaveUserRolesParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.SaveUserRolesShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AddUserRoleShort(input *users.AddUserRoleParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AddUserRoleShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) DeleteUserRoleShort(input *users.DeleteUserRoleParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.DeleteUserRoleShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) UpgradeHeadlessAccountShort(input *users.UpgradeHeadlessAccountParams) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.UpgradeHeadlessAccountShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) UpgradeHeadlessAccountWithVerificationCodeShort(input *users.UpgradeHeadlessAccountWithVerificationCodeParams) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.UpgradeHeadlessAccountWithVerificationCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) UserVerificationShort(input *users.UserVerificationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.UserVerificationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) SendVerificationCodeShort(input *users.SendVerificationCodeParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.SendVerificationCodeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminGetAgeRestrictionStatusV2Short(input *users.AdminGetAgeRestrictionStatusV2Params) (*iamclientmodels.ModelAgeRestrictionResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetAgeRestrictionStatusV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateAgeRestrictionConfigV2Short(input *users.AdminUpdateAgeRestrictionConfigV2Params) (*iamclientmodels.ModelAgeRestrictionResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateAgeRestrictionConfigV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetListCountryAgeRestrictionShort(input *users.GetListCountryAgeRestrictionParams) ([]*iamclientmodels.AccountcommonCountryAgeRestriction, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetListCountryAgeRestrictionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) UpdateCountryAgeRestrictionShort(input *users.UpdateCountryAgeRestrictionParams) (*iamclientmodels.ModelCountry, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.UpdateCountryAgeRestrictionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminSearchUsersV2Short(input *users.AdminSearchUsersV2Params) (*iamclientmodels.ModelSearchUsersByPlatformIDResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminSearchUsersV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserByUserIDV2Short(input *users.AdminGetUserByUserIDV2Params) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserByUserIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateUserV2Short(input *users.AdminUpdateUserV2Params) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateUserV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminBanUserV2Short(input *users.AdminBanUserV2Params) (*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.AdminBanUserV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserBanV2Short(input *users.AdminGetUserBanV2Params) ([]*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserBanV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminDisableUserV2Short(input *users.AdminDisableUserV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDisableUserV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminEnableUserV2Short(input *users.AdminEnableUserV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminEnableUserV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminResetPasswordV2Short(input *users.AdminResetPasswordV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminResetPasswordV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminDeletePlatformLinkV2Short(input *users.AdminDeletePlatformLinkV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeletePlatformLinkV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminPutUserRolesV2Short(input *users.AdminPutUserRolesV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminPutUserRolesV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminCreateUserRolesV2Short(input *users.AdminCreateUserRolesV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminCreateUserRolesV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicGetCountryAgeRestrictionShort(input *users.PublicGetCountryAgeRestrictionParams) (*iamclientmodels.AccountcommonCountry, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetCountryAgeRestrictionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicCreateUserV2Short(input *users.PublicCreateUserV2Params) (*iamclientmodels.ModelUserCreateResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.PublicCreateUserV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) PublicForgotPasswordV2Short(input *users.PublicForgotPasswordV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicForgotPasswordV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicResetPasswordV2Short(input *users.PublicResetPasswordV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicResetPasswordV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicGetUserByUserIDV2Short(input *users.PublicGetUserByUserIDV2Params) (*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserByUserIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicUpdateUserV2Short(input *users.PublicUpdateUserV2Params) ([]*iamclientmodels.ModelUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicUpdateUserV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserBanShort(input *users.PublicGetUserBanParams) ([]*iamclientmodels.ModelUserBanResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserBanShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicUpdatePasswordV2Short(input *users.PublicUpdatePasswordV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicUpdatePasswordV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetListJusticePlatformAccountsShort(input *users.GetListJusticePlatformAccountsParams) ([]*iamclientmodels.ModelGetUserMapping, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetListJusticePlatformAccountsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicPlatformLinkV2Short(input *users.PublicPlatformLinkV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicPlatformLinkV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicDeletePlatformLinkV2Short(input *users.PublicDeletePlatformLinkV2Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicDeletePlatformLinkV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) ListAdminsV3Short(input *users.ListAdminsV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.ListAdminsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetAgeRestrictionStatusV3Short(input *users.AdminGetAgeRestrictionStatusV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetAgeRestrictionStatusV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateAgeRestrictionConfigV3Short(input *users.AdminUpdateAgeRestrictionConfigV3Params) (*iamclientmodels.ModelAgeRestrictionResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateAgeRestrictionConfigV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetListCountryAgeRestrictionV3Short(input *users.AdminGetListCountryAgeRestrictionV3Params) ([]*iamclientmodels.ModelCountryV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetListCountryAgeRestrictionV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateCountryAgeRestrictionV3Short(input *users.AdminUpdateCountryAgeRestrictionV3Params) (*iamclientmodels.ModelCountryV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateCountryAgeRestrictionV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminListUserIDByPlatformUserIDsV3Short(input *users.AdminListUserIDByPlatformUserIDsV3Params) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminListUserIDByPlatformUserIDsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserByPlatformUserIDV3Short(input *users.AdminGetUserByPlatformUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserByPlatformUserIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) GetAdminUsersByRoleIDV3Short(input *users.GetAdminUsersByRoleIDV3Params) (*iamclientmodels.ModelGetUsersResponseWithPaginationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetAdminUsersByRoleIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserByEmailAddressV3Short(input *users.AdminGetUserByEmailAddressV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserByEmailAddressV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetBulkUserBanV3Short(input *users.AdminGetBulkUserBanV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetBulkUserBanV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminListUserIDByUserIDsV3Short(input *users.AdminListUserIDByUserIDsV3Params) (*iamclientmodels.ModelListUserInformationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminListUserIDByUserIDsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminBulkGetUsersPlatformShort(input *users.AdminBulkGetUsersPlatformParams) (*iamclientmodels.ModelListBulkUserPlatformsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminBulkGetUsersPlatformShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminInviteUserV3Short(input *users.AdminInviteUserV3Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.AdminInviteUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) AdminQueryThirdPlatformLinkHistoryV3Short(input *users.AdminQueryThirdPlatformLinkHistoryV3Params) (*iamclientmodels.ModelLinkingHistoryResponseWithPaginationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminQueryThirdPlatformLinkHistoryV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminListUsersV3Short(input *users.AdminListUsersV3Params) (*iamclientmodels.AccountcommonListUsersWithPlatformAccountsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminListUsersV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminSearchUserV3Short(input *users.AdminSearchUserV3Params) (*iamclientmodels.ModelSearchUsersResponseWithPaginationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminSearchUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetBulkUserByEmailAddressV3Short(input *users.AdminGetBulkUserByEmailAddressV3Params) (*iamclientmodels.ModelListUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetBulkUserByEmailAddressV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserByUserIDV3Short(input *users.AdminGetUserByUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserByUserIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateUserV3Short(input *users.AdminUpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserBanV3Short(input *users.AdminGetUserBanV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserBanV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminBanUserV3Short(input *users.AdminBanUserV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.AdminBanUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateUserBanV3Short(input *users.AdminUpdateUserBanV3Params) (*iamclientmodels.ModelUserBanResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpdateUserBanV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminSendVerificationCodeV3Short(input *users.AdminSendVerificationCodeV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminSendVerificationCodeV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminVerifyAccountV3Short(input *users.AdminVerifyAccountV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminVerifyAccountV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetUserVerificationCodeShort(input *users.GetUserVerificationCodeParams) (*iamclientmodels.ModelVerificationCodeResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetUserVerificationCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserDeletionStatusV3Short(input *users.AdminGetUserDeletionStatusV3Params) (*iamclientmodels.ModelUserDeletionStatusResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserDeletionStatusV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminUpdateUserDeletionStatusV3Short(input *users.AdminUpdateUserDeletionStatusV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminUpdateUserDeletionStatusV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminUpgradeHeadlessAccountV3Short(input *users.AdminUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminUpgradeHeadlessAccountV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminDeleteUserInformationV3Short(input *users.AdminDeleteUserInformationV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeleteUserInformationV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminGetUserLoginHistoriesV3Short(input *users.AdminGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserLoginHistoriesV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminResetPasswordV3Short(input *users.AdminResetPasswordV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminResetPasswordV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminUpdateUserPermissionV3Short(input *users.AdminUpdateUserPermissionV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminUpdateUserPermissionV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminAddUserPermissionsV3Short(input *users.AdminAddUserPermissionsV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminAddUserPermissionsV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminDeleteUserPermissionBulkV3Short(input *users.AdminDeleteUserPermissionBulkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeleteUserPermissionBulkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminDeleteUserPermissionV3Short(input *users.AdminDeleteUserPermissionV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeleteUserPermissionV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminGetUserPlatformAccountsV3Short(input *users.AdminGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserPlatformAccountsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetListJusticePlatformAccountsShort(input *users.AdminGetListJusticePlatformAccountsParams) ([]*iamclientmodels.ModelGetUserMapping, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetListJusticePlatformAccountsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserMappingShort(input *users.AdminGetUserMappingParams) (*iamclientmodels.ModelGetUserMappingV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserMappingShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminCreateJusticeUserShort(input *users.AdminCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.AdminCreateJusticeUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) AdminLinkPlatformAccountShort(input *users.AdminLinkPlatformAccountParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminLinkPlatformAccountShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminPlatformUnlinkV3Short(input *users.AdminPlatformUnlinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminPlatformUnlinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminPlatformLinkV3Short(input *users.AdminPlatformLinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminPlatformLinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminGetThirdPartyPlatformTokenLinkStatusV3Short(input *users.AdminGetThirdPartyPlatformTokenLinkStatusV3Params) (*iamclientmodels.ModelTokenThirdPartyLinkStatusResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetThirdPartyPlatformTokenLinkStatusV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminGetUserSinglePlatformAccountShort(input *users.AdminGetUserSinglePlatformAccountParams) (*iamclientmodels.ModelUserPlatformMetadata, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetUserSinglePlatformAccountShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) AdminDeleteUserRolesV3Short(input *users.AdminDeleteUserRolesV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeleteUserRolesV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminSaveUserRoleV3Short(input *users.AdminSaveUserRoleV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminSaveUserRoleV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminAddUserRoleV3Short(input *users.AdminAddUserRoleV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminAddUserRoleV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminDeleteUserRoleV3Short(input *users.AdminDeleteUserRoleV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminDeleteUserRoleV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminUpdateUserStatusV3Short(input *users.AdminUpdateUserStatusV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminUpdateUserStatusV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminVerifyUserWithoutVerificationCodeV3Short(input *users.AdminVerifyUserWithoutVerificationCodeV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.AdminVerifyUserWithoutVerificationCodeV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) AdminGetMyUserV3Short(input *users.AdminGetMyUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.AdminGetMyUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetCountryAgeRestrictionV3Short(input *users.PublicGetCountryAgeRestrictionV3Params) (*iamclientmodels.ModelCountryV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetCountryAgeRestrictionV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicListUserIDByPlatformUserIDsV3Short(input *users.PublicListUserIDByPlatformUserIDsV3Params) (*iamclientmodels.AccountcommonUserPlatforms, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicListUserIDByPlatformUserIDsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserByPlatformUserIDV3Short(input *users.PublicGetUserByPlatformUserIDV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserByPlatformUserIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetAsyncStatusShort(input *users.PublicGetAsyncStatusParams) (*iamclientmodels.ModelLinkRequest, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetAsyncStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicSearchUserV3Short(input *users.PublicSearchUserV3Params) (*iamclientmodels.ModelPublicUserInformationResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicSearchUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicCreateUserV3Short(input *users.PublicCreateUserV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.PublicCreateUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) CheckUserAvailabilityShort(input *users.CheckUserAvailabilityParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.CheckUserAvailabilityShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicBulkGetUsersShort(input *users.PublicBulkGetUsersParams) (*iamclientmodels.ModelListBulkUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicBulkGetUsersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicSendRegistrationCodeShort(input *users.PublicSendRegistrationCodeParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicSendRegistrationCodeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicVerifyRegistrationCodeShort(input *users.PublicVerifyRegistrationCodeParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicVerifyRegistrationCodeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicForgotPasswordV3Short(input *users.PublicForgotPasswordV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicForgotPasswordV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) GetAdminInvitationV3Short(input *users.GetAdminInvitationV3Params) (*iamclientmodels.ModelUserInvitationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.GetAdminInvitationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) CreateUserFromInvitationV3Short(input *users.CreateUserFromInvitationV3Params) (*iamclientmodels.ModelUserCreateResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.CreateUserFromInvitationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) UpdateUserV3Short(input *users.UpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.UpdateUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicPartialUpdateUserV3Short(input *users.PublicPartialUpdateUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicPartialUpdateUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicSendVerificationCodeV3Short(input *users.PublicSendVerificationCodeV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicSendVerificationCodeV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicUserVerificationV3Short(input *users.PublicUserVerificationV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicUserVerificationV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicUpgradeHeadlessAccountV3Short(input *users.PublicUpgradeHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicUpgradeHeadlessAccountV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicVerifyHeadlessAccountV3Short(input *users.PublicVerifyHeadlessAccountV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicVerifyHeadlessAccountV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicUpdatePasswordV3Short(input *users.PublicUpdatePasswordV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicUpdatePasswordV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicCreateJusticeUserShort(input *users.PublicCreateJusticeUserParams) (*iamclientmodels.ModelCreateJusticeUserResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Users.PublicCreateJusticeUserShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *UsersService) PublicPlatformLinkV3Short(input *users.PublicPlatformLinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicPlatformLinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicPlatformUnlinkV3Short(input *users.PublicPlatformUnlinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicPlatformUnlinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicPlatformUnlinkAllV3Short(input *users.PublicPlatformUnlinkAllV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicPlatformUnlinkAllV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicForcePlatformLinkV3Short(input *users.PublicForcePlatformLinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicForcePlatformLinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicWebLinkPlatformShort(input *users.PublicWebLinkPlatformParams) (*iamclientmodels.ModelWebLinkingResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicWebLinkPlatformShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicWebLinkPlatformEstablishShort(input *users.PublicWebLinkPlatformEstablishParams) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	found, err := aaa.Client.Users.PublicWebLinkPlatformEstablishShort(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

func (aaa *UsersService) PublicProcessWebLinkPlatformV3Short(input *users.PublicProcessWebLinkPlatformV3Params) (*iamclientmodels.ModelLinkRequest, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicProcessWebLinkPlatformV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) ResetPasswordV3Short(input *users.ResetPasswordV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.ResetPasswordV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicGetUserByUserIDV3Short(input *users.PublicGetUserByUserIDV3Params) (*iamclientmodels.ModelPublicUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserByUserIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserBanHistoryV3Short(input *users.PublicGetUserBanHistoryV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserBanHistoryV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicListUserAllPlatformAccountsDistinctV3Short(input *users.PublicListUserAllPlatformAccountsDistinctV3Params) (*iamclientmodels.AccountcommonDistinctPlatformResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicListUserAllPlatformAccountsDistinctV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserInformationV3Short(input *users.PublicGetUserInformationV3Params) (*iamclientmodels.AccountcommonUserInformationV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserInformationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserLoginHistoriesV3Short(input *users.PublicGetUserLoginHistoriesV3Params) (*iamclientmodels.ModelLoginHistoriesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserLoginHistoriesV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetUserPlatformAccountsV3Short(input *users.PublicGetUserPlatformAccountsV3Params) (*iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetUserPlatformAccountsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicListJusticePlatformAccountsV3Short(input *users.PublicListJusticePlatformAccountsV3Params) ([]*iamclientmodels.ModelGetUserMappingV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicListJusticePlatformAccountsV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicLinkPlatformAccountShort(input *users.PublicLinkPlatformAccountParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicLinkPlatformAccountShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicForceLinkPlatformWithProgressionShort(input *users.PublicForceLinkPlatformWithProgressionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicForceLinkPlatformWithProgressionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicGetPublisherUserV3Short(input *users.PublicGetPublisherUserV3Params) (*iamclientmodels.ModelGetPublisherUserV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetPublisherUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicValidateUserByUserIDAndPasswordV3Short(input *users.PublicValidateUserByUserIDAndPasswordV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicValidateUserByUserIDAndPasswordV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicGetMyUserV3Short(input *users.PublicGetMyUserV3Params) (*iamclientmodels.ModelUserResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetMyUserV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(input *users.PublicGetLinkHeadlessAccountToMyAccountConflictV3Params) (*iamclientmodels.ModelGetLinkHeadlessAccountConflictResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Users.PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *UsersService) LinkHeadlessAccountToMyAccountV3Short(input *users.LinkHeadlessAccountToMyAccountV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.LinkHeadlessAccountToMyAccountV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicSendVerificationLinkV3Short(input *users.PublicSendVerificationLinkV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Users.PublicSendVerificationLinkV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *UsersService) PublicVerifyUserByLinkV3Short(input *users.PublicVerifyUserByLinkV3Params) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	found, err := aaa.Client.Users.PublicVerifyUserByLinkV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Location, nil
}
