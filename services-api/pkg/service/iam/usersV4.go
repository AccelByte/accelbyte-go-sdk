// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type UsersV4Service struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminBulkCheckValidUserIDV4Short instead
func (u *UsersV4Service) AdminBulkCheckValidUserIDV4(input *users_v4.AdminBulkCheckValidUserIDV4Params) (*iamclientmodels.ModelListValidUserIDResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := u.Client.UsersV4.AdminBulkCheckValidUserIDV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminUpdateUserV4Short instead
func (u *UsersV4Service) AdminUpdateUserV4(input *users_v4.AdminUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminUpdateUserEmailAddressV4Short instead
func (u *UsersV4Service) AdminUpdateUserEmailAddressV4(input *users_v4.AdminUpdateUserEmailAddressV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserEmailAddressV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDisableUserMFAV4Short instead
func (u *UsersV4Service) AdminDisableUserMFAV4(input *users_v4.AdminDisableUserMFAV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableUserMFAV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminListUserRolesV4Short instead
func (u *UsersV4Service) AdminListUserRolesV4(input *users_v4.AdminListUserRolesV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminListUserRolesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminUpdateUserRoleV4Short instead
func (u *UsersV4Service) AdminUpdateUserRoleV4(input *users_v4.AdminUpdateUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminUpdateUserRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
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

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminAddUserRoleV4Short instead
func (u *UsersV4Service) AdminAddUserRoleV4(input *users_v4.AdminAddUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminAddUserRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
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

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminRemoveUserRoleV4Short instead
func (u *UsersV4Service) AdminRemoveUserRoleV4(input *users_v4.AdminRemoveUserRoleV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminRemoveUserRoleV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
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

// Deprecated: Use AdminUpdateMyUserV4Short instead
func (u *UsersV4Service) AdminUpdateMyUserV4(input *users_v4.AdminUpdateMyUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateMyUserV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDisableMyAuthenticatorV4Short instead
func (u *UsersV4Service) AdminDisableMyAuthenticatorV4(input *users_v4.AdminDisableMyAuthenticatorV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableMyAuthenticatorV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminEnableMyAuthenticatorV4Short instead
func (u *UsersV4Service) AdminEnableMyAuthenticatorV4(input *users_v4.AdminEnableMyAuthenticatorV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminEnableMyAuthenticatorV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGenerateMyAuthenticatorKeyV4Short instead
func (u *UsersV4Service) AdminGenerateMyAuthenticatorKeyV4(input *users_v4.AdminGenerateMyAuthenticatorKeyV4Params) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGenerateMyAuthenticatorKeyV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGetMyBackupCodesV4Short instead
func (u *UsersV4Service) AdminGetMyBackupCodesV4(input *users_v4.AdminGetMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGetMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGenerateMyBackupCodesV4Short instead
func (u *UsersV4Service) AdminGenerateMyBackupCodesV4(input *users_v4.AdminGenerateMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGenerateMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDisableMyBackupCodesV4Short instead
func (u *UsersV4Service) AdminDisableMyBackupCodesV4(input *users_v4.AdminDisableMyBackupCodesV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminDownloadMyBackupCodesV4Short instead
func (u *UsersV4Service) AdminDownloadMyBackupCodesV4(input *users_v4.AdminDownloadMyBackupCodesV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDownloadMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminEnableMyBackupCodesV4Short instead
func (u *UsersV4Service) AdminEnableMyBackupCodesV4(input *users_v4.AdminEnableMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminEnableMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGetMyEnabledFactorsV4Short instead
func (u *UsersV4Service) AdminGetMyEnabledFactorsV4(input *users_v4.AdminGetMyEnabledFactorsV4Params) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGetMyEnabledFactorsV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminMakeFactorMyDefaultV4Short instead
func (u *UsersV4Service) AdminMakeFactorMyDefaultV4(input *users_v4.AdminMakeFactorMyDefaultV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminMakeFactorMyDefaultV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminInviteUserV4Short instead
func (u *UsersV4Service) AdminInviteUserV4(input *users_v4.AdminInviteUserV4Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminInviteUserV4(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use PublicCreateTestUserV4Short instead
func (u *UsersV4Service) PublicCreateTestUserV4(input *users_v4.PublicCreateTestUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateTestUserV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicCreateUserV4Short instead
func (u *UsersV4Service) PublicCreateUserV4(input *users_v4.PublicCreateUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateUserV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateUserFromInvitationV4Short instead
func (u *UsersV4Service) CreateUserFromInvitationV4(input *users_v4.CreateUserFromInvitationV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, internalServerError, err := u.Client.UsersV4.CreateUserFromInvitationV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicUpdateUserV4Short instead
func (u *UsersV4Service) PublicUpdateUserV4(input *users_v4.PublicUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicUpdateUserEmailAddressV4Short instead
func (u *UsersV4Service) PublicUpdateUserEmailAddressV4(input *users_v4.PublicUpdateUserEmailAddressV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserEmailAddressV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicUpgradeHeadlessAccountWithVerificationCodeV4Short instead
func (u *UsersV4Service) PublicUpgradeHeadlessAccountWithVerificationCodeV4(input *users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicUpgradeHeadlessAccountV4Short instead
func (u *UsersV4Service) PublicUpgradeHeadlessAccountV4(input *users_v4.PublicUpgradeHeadlessAccountV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicDisableMyAuthenticatorV4Short instead
func (u *UsersV4Service) PublicDisableMyAuthenticatorV4(input *users_v4.PublicDisableMyAuthenticatorV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDisableMyAuthenticatorV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicEnableMyAuthenticatorV4Short instead
func (u *UsersV4Service) PublicEnableMyAuthenticatorV4(input *users_v4.PublicEnableMyAuthenticatorV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicEnableMyAuthenticatorV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGenerateMyAuthenticatorKeyV4Short instead
func (u *UsersV4Service) PublicGenerateMyAuthenticatorKeyV4(input *users_v4.PublicGenerateMyAuthenticatorKeyV4Params) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGenerateMyAuthenticatorKeyV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetMyBackupCodesV4Short instead
func (u *UsersV4Service) PublicGetMyBackupCodesV4(input *users_v4.PublicGetMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGetMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGenerateMyBackupCodesV4Short instead
func (u *UsersV4Service) PublicGenerateMyBackupCodesV4(input *users_v4.PublicGenerateMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGenerateMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicDisableMyBackupCodesV4Short instead
func (u *UsersV4Service) PublicDisableMyBackupCodesV4(input *users_v4.PublicDisableMyBackupCodesV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDisableMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicDownloadMyBackupCodesV4Short instead
func (u *UsersV4Service) PublicDownloadMyBackupCodesV4(input *users_v4.PublicDownloadMyBackupCodesV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDownloadMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicEnableMyBackupCodesV4Short instead
func (u *UsersV4Service) PublicEnableMyBackupCodesV4(input *users_v4.PublicEnableMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicEnableMyBackupCodesV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicRemoveTrustedDeviceV4Short instead
func (u *UsersV4Service) PublicRemoveTrustedDeviceV4(input *users_v4.PublicRemoveTrustedDeviceV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicRemoveTrustedDeviceV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetMyEnabledFactorsV4Short instead
func (u *UsersV4Service) PublicGetMyEnabledFactorsV4(input *users_v4.PublicGetMyEnabledFactorsV4Params) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGetMyEnabledFactorsV4(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicMakeFactorMyDefaultV4Short instead
func (u *UsersV4Service) PublicMakeFactorMyDefaultV4(input *users_v4.PublicMakeFactorMyDefaultV4Params) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicMakeFactorMyDefaultV4(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER [READ]'], 'authorization': []}]
func (u *UsersV4Service) AdminBulkCheckValidUserIDV4Short(input *users_v4.AdminBulkCheckValidUserIDV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListValidUserIDResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminBulkCheckValidUserIDV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'], 'authorization': []}]
func (u *UsersV4Service) AdminUpdateUserV4Short(input *users_v4.AdminUpdateUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminUpdateUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'], 'authorization': []}]
func (u *UsersV4Service) AdminUpdateUserEmailAddressV4Short(input *users_v4.AdminUpdateUserEmailAddressV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminUpdateUserEmailAddressV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]'], 'authorization': []}]
func (u *UsersV4Service) AdminDisableUserMFAV4Short(input *users_v4.AdminDisableUserMFAV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminDisableUserMFAV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ]'], 'authorization': []}]
func (u *UsersV4Service) AdminListUserRolesV4Short(input *users_v4.AdminListUserRolesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminListUserRolesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]'], 'authorization': []}]
func (u *UsersV4Service) AdminUpdateUserRoleV4Short(input *users_v4.AdminUpdateUserRoleV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminUpdateUserRoleV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]'], 'authorization': []}]
func (u *UsersV4Service) AdminAddUserRoleV4Short(input *users_v4.AdminAddUserRoleV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminAddUserRoleV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete]'], 'authorization': []}]
func (u *UsersV4Service) AdminRemoveUserRoleV4Short(input *users_v4.AdminRemoveUserRoleV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminRemoveUserRoleV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminUpdateMyUserV4Short(input *users_v4.AdminUpdateMyUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminUpdateMyUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminDisableMyAuthenticatorV4Short(input *users_v4.AdminDisableMyAuthenticatorV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminDisableMyAuthenticatorV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminEnableMyAuthenticatorV4Short(input *users_v4.AdminEnableMyAuthenticatorV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminEnableMyAuthenticatorV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminGenerateMyAuthenticatorKeyV4Short(input *users_v4.AdminGenerateMyAuthenticatorKeyV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminGenerateMyAuthenticatorKeyV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminGetMyBackupCodesV4Short(input *users_v4.AdminGetMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminGetMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminGenerateMyBackupCodesV4Short(input *users_v4.AdminGenerateMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminGenerateMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminDisableMyBackupCodesV4Short(input *users_v4.AdminDisableMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminDisableMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminDownloadMyBackupCodesV4Short(input *users_v4.AdminDownloadMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminDownloadMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminEnableMyBackupCodesV4Short(input *users_v4.AdminEnableMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminEnableMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminGetMyEnabledFactorsV4Short(input *users_v4.AdminGetMyEnabledFactorsV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.AdminGetMyEnabledFactorsV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) AdminMakeFactorMyDefaultV4Short(input *users_v4.AdminMakeFactorMyDefaultV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.AdminMakeFactorMyDefaultV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:USER:INVITE [CREATE]'], 'authorization': []}]
func (u *UsersV4Service) AdminInviteUserV4Short(input *users_v4.AdminInviteUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	created, err := u.Client.UsersV4.AdminInviteUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicCreateTestUserV4Short(input *users_v4.PublicCreateTestUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	created, err := u.Client.UsersV4.PublicCreateTestUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicCreateUserV4Short(input *users_v4.PublicCreateUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	created, err := u.Client.UsersV4.PublicCreateUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) CreateUserFromInvitationV4Short(input *users_v4.CreateUserFromInvitationV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	created, err := u.Client.UsersV4.CreateUserFromInvitationV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicUpdateUserV4Short(input *users_v4.PublicUpdateUserV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelUserResponseV3, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicUpdateUserV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicUpdateUserEmailAddressV4Short(input *users_v4.PublicUpdateUserEmailAddressV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicUpdateUserEmailAddressV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input *users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountUserResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicUpgradeHeadlessAccountV4Short(input *users_v4.PublicUpgradeHeadlessAccountV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.AccountUserResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicDisableMyAuthenticatorV4Short(input *users_v4.PublicDisableMyAuthenticatorV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicDisableMyAuthenticatorV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicEnableMyAuthenticatorV4Short(input *users_v4.PublicEnableMyAuthenticatorV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicEnableMyAuthenticatorV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicGenerateMyAuthenticatorKeyV4Short(input *users_v4.PublicGenerateMyAuthenticatorKeyV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicGenerateMyAuthenticatorKeyV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicGetMyBackupCodesV4Short(input *users_v4.PublicGetMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicGetMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicGenerateMyBackupCodesV4Short(input *users_v4.PublicGenerateMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicGenerateMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicDisableMyBackupCodesV4Short(input *users_v4.PublicDisableMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicDisableMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicDownloadMyBackupCodesV4Short(input *users_v4.PublicDownloadMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicDownloadMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicEnableMyBackupCodesV4Short(input *users_v4.PublicEnableMyBackupCodesV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicEnableMyBackupCodesV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicRemoveTrustedDeviceV4Short(input *users_v4.PublicRemoveTrustedDeviceV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicRemoveTrustedDeviceV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicGetMyEnabledFactorsV4Short(input *users_v4.PublicGetMyEnabledFactorsV4Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UsersV4.PublicGetMyEnabledFactorsV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (u *UsersV4Service) PublicMakeFactorMyDefaultV4Short(input *users_v4.PublicMakeFactorMyDefaultV4Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UsersV4.PublicMakeFactorMyDefaultV4Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
