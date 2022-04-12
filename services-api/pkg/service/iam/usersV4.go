// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UsersV4Service struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminBulkCheckValidUserIDV4Short instead
func (u *UsersV4Service) AdminBulkCheckValidUserIDV4(input *users_v4.AdminBulkCheckValidUserIDV4Params) (*iamclientmodels.ModelListValidUserIDResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := u.Client.UsersV4.AdminBulkCheckValidUserIDV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateUserEmailAddressV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableUserMFAV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminListUserRolesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminUpdateUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminAddUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminRemoveUserRoleV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.AdminUpdateMyUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableMyAuthenticatorV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminEnableMyAuthenticatorV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGenerateMyAuthenticatorKeyV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGetMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGenerateMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDisableMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminDownloadMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.AdminEnableMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminGetMyEnabledFactorsV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.AdminMakeFactorMyDefaultV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, internalServerError, err := u.Client.UsersV4.AdminInviteUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateTestUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicCreateUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, internalServerError, err := u.Client.UsersV4.CreateUserFromInvitationV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpdateUserEmailAddressV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDisableMyAuthenticatorV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicEnableMyAuthenticatorV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGenerateMyAuthenticatorKeyV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGetMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGenerateMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDisableMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicDownloadMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, internalServerError, err := u.Client.UsersV4.PublicEnableMyBackupCodesV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicRemoveTrustedDeviceV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicGetMyEnabledFactorsV4(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UsersV4.PublicMakeFactorMyDefaultV4(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UsersV4Service) AdminBulkCheckValidUserIDV4Short(input *users_v4.AdminBulkCheckValidUserIDV4Params) (*iamclientmodels.ModelListValidUserIDResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminBulkCheckValidUserIDV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserV4Short(input *users_v4.AdminUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminUpdateUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserEmailAddressV4Short(input *users_v4.AdminUpdateUserEmailAddressV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminUpdateUserEmailAddressV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminDisableUserMFAV4Short(input *users_v4.AdminDisableUserMFAV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminDisableUserMFAV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminListUserRolesV4Short(input *users_v4.AdminListUserRolesV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminListUserRolesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminUpdateUserRoleV4Short(input *users_v4.AdminUpdateUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminUpdateUserRoleV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminAddUserRoleV4Short(input *users_v4.AdminAddUserRoleV4Params) (*iamclientmodels.ModelListUserRolesV4Response, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminAddUserRoleV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminRemoveUserRoleV4Short(input *users_v4.AdminRemoveUserRoleV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminRemoveUserRoleV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminUpdateMyUserV4Short(input *users_v4.AdminUpdateMyUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminUpdateMyUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminDisableMyAuthenticatorV4Short(input *users_v4.AdminDisableMyAuthenticatorV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminDisableMyAuthenticatorV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminEnableMyAuthenticatorV4Short(input *users_v4.AdminEnableMyAuthenticatorV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminEnableMyAuthenticatorV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminGenerateMyAuthenticatorKeyV4Short(input *users_v4.AdminGenerateMyAuthenticatorKeyV4Params) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminGenerateMyAuthenticatorKeyV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminGetMyBackupCodesV4Short(input *users_v4.AdminGetMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminGetMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminGenerateMyBackupCodesV4Short(input *users_v4.AdminGenerateMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminGenerateMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminDisableMyBackupCodesV4Short(input *users_v4.AdminDisableMyBackupCodesV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminDisableMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminDownloadMyBackupCodesV4Short(input *users_v4.AdminDownloadMyBackupCodesV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminDownloadMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminEnableMyBackupCodesV4Short(input *users_v4.AdminEnableMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminEnableMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminGetMyEnabledFactorsV4Short(input *users_v4.AdminGetMyEnabledFactorsV4Params) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.AdminGetMyEnabledFactorsV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) AdminMakeFactorMyDefaultV4Short(input *users_v4.AdminMakeFactorMyDefaultV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.AdminMakeFactorMyDefaultV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) AdminInviteUserV4Short(input *users_v4.AdminInviteUserV4Params) (*iamclientmodels.ModelInviteUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := u.Client.UsersV4.AdminInviteUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateTestUserV4Short(input *users_v4.PublicCreateTestUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := u.Client.UsersV4.PublicCreateTestUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicCreateUserV4Short(input *users_v4.PublicCreateUserV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := u.Client.UsersV4.PublicCreateUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UsersV4Service) CreateUserFromInvitationV4Short(input *users_v4.CreateUserFromInvitationV4Params) (*iamclientmodels.AccountCreateUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := u.Client.UsersV4.CreateUserFromInvitationV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserV4Short(input *users_v4.PublicUpdateUserV4Params) (*iamclientmodels.ModelUserResponseV3, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicUpdateUserV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpdateUserEmailAddressV4Short(input *users_v4.PublicUpdateUserEmailAddressV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicUpdateUserEmailAddressV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input *users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicUpgradeHeadlessAccountV4Short(input *users_v4.PublicUpgradeHeadlessAccountV4Params) (*iamclientmodels.AccountUserResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicUpgradeHeadlessAccountV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicDisableMyAuthenticatorV4Short(input *users_v4.PublicDisableMyAuthenticatorV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicDisableMyAuthenticatorV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicEnableMyAuthenticatorV4Short(input *users_v4.PublicEnableMyAuthenticatorV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicEnableMyAuthenticatorV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicGenerateMyAuthenticatorKeyV4Short(input *users_v4.PublicGenerateMyAuthenticatorKeyV4Params) (*iamclientmodels.ModelAuthenticatorKeyResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicGenerateMyAuthenticatorKeyV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicGetMyBackupCodesV4Short(input *users_v4.PublicGetMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicGetMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicGenerateMyBackupCodesV4Short(input *users_v4.PublicGenerateMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicGenerateMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicDisableMyBackupCodesV4Short(input *users_v4.PublicDisableMyBackupCodesV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicDisableMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicDownloadMyBackupCodesV4Short(input *users_v4.PublicDownloadMyBackupCodesV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicDownloadMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicEnableMyBackupCodesV4Short(input *users_v4.PublicEnableMyBackupCodesV4Params) (*iamclientmodels.ModelBackupCodesResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicEnableMyBackupCodesV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicRemoveTrustedDeviceV4Short(input *users_v4.PublicRemoveTrustedDeviceV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicRemoveTrustedDeviceV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UsersV4Service) PublicGetMyEnabledFactorsV4Short(input *users_v4.PublicGetMyEnabledFactorsV4Params) (*iamclientmodels.ModelEnabledFactorsResponseV4, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UsersV4.PublicGetMyEnabledFactorsV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UsersV4Service) PublicMakeFactorMyDefaultV4Short(input *users_v4.PublicMakeFactorMyDefaultV4Params) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UsersV4.PublicMakeFactorMyDefaultV4Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
