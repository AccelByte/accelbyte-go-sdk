// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package users_v4

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new users v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for users v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateTestUsersV4(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Created, *AdminCreateTestUsersV4BadRequest, *AdminCreateTestUsersV4InternalServerError, *AdminCreateTestUsersV4NotImplemented, error)
	AdminCreateTestUsersV4Short(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Created, error)
	AdminBulkCheckValidUserIDV4(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4OK, *AdminBulkCheckValidUserIDV4BadRequest, *AdminBulkCheckValidUserIDV4Unauthorized, *AdminBulkCheckValidUserIDV4Forbidden, *AdminBulkCheckValidUserIDV4InternalServerError, error)
	AdminBulkCheckValidUserIDV4Short(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4OK, error)
	AdminUpdateUserV4(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4OK, *AdminUpdateUserV4BadRequest, *AdminUpdateUserV4Unauthorized, *AdminUpdateUserV4Forbidden, *AdminUpdateUserV4NotFound, *AdminUpdateUserV4Conflict, *AdminUpdateUserV4InternalServerError, error)
	AdminUpdateUserV4Short(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4OK, error)
	AdminUpdateUserEmailAddressV4(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4NoContent, *AdminUpdateUserEmailAddressV4BadRequest, *AdminUpdateUserEmailAddressV4Unauthorized, *AdminUpdateUserEmailAddressV4NotFound, *AdminUpdateUserEmailAddressV4Conflict, *AdminUpdateUserEmailAddressV4InternalServerError, error)
	AdminUpdateUserEmailAddressV4Short(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4NoContent, error)
	AdminDisableUserMFAV4(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4NoContent, *AdminDisableUserMFAV4BadRequest, *AdminDisableUserMFAV4Unauthorized, *AdminDisableUserMFAV4Forbidden, *AdminDisableUserMFAV4NotFound, *AdminDisableUserMFAV4InternalServerError, error)
	AdminDisableUserMFAV4Short(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4NoContent, error)
	AdminListUserRolesV4(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4OK, *AdminListUserRolesV4Unauthorized, *AdminListUserRolesV4Forbidden, *AdminListUserRolesV4NotFound, *AdminListUserRolesV4InternalServerError, error)
	AdminListUserRolesV4Short(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4OK, error)
	AdminUpdateUserRoleV4(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4OK, *AdminUpdateUserRoleV4BadRequest, *AdminUpdateUserRoleV4Unauthorized, *AdminUpdateUserRoleV4Forbidden, *AdminUpdateUserRoleV4NotFound, *AdminUpdateUserRoleV4UnprocessableEntity, *AdminUpdateUserRoleV4InternalServerError, error)
	AdminUpdateUserRoleV4Short(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4OK, error)
	AdminAddUserRoleV4(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4OK, *AdminAddUserRoleV4BadRequest, *AdminAddUserRoleV4Unauthorized, *AdminAddUserRoleV4Forbidden, *AdminAddUserRoleV4NotFound, *AdminAddUserRoleV4UnprocessableEntity, *AdminAddUserRoleV4InternalServerError, error)
	AdminAddUserRoleV4Short(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4OK, error)
	AdminRemoveUserRoleV4(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4NoContent, *AdminRemoveUserRoleV4BadRequest, *AdminRemoveUserRoleV4Unauthorized, *AdminRemoveUserRoleV4Forbidden, *AdminRemoveUserRoleV4NotFound, *AdminRemoveUserRoleV4UnprocessableEntity, *AdminRemoveUserRoleV4InternalServerError, error)
	AdminRemoveUserRoleV4Short(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4NoContent, error)
	AdminInviteUserNewV4(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Created, *AdminInviteUserNewV4BadRequest, *AdminInviteUserNewV4Unauthorized, *AdminInviteUserNewV4Forbidden, *AdminInviteUserNewV4NotFound, *AdminInviteUserNewV4Conflict, *AdminInviteUserNewV4UnprocessableEntity, *AdminInviteUserNewV4InternalServerError, error)
	AdminInviteUserNewV4Short(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Created, error)
	AdminUpdateMyUserV4(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4OK, *AdminUpdateMyUserV4BadRequest, *AdminUpdateMyUserV4Unauthorized, *AdminUpdateMyUserV4Conflict, *AdminUpdateMyUserV4InternalServerError, error)
	AdminUpdateMyUserV4Short(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4OK, error)
	AdminDisableMyAuthenticatorV4(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4NoContent, *AdminDisableMyAuthenticatorV4BadRequest, *AdminDisableMyAuthenticatorV4Unauthorized, *AdminDisableMyAuthenticatorV4Forbidden, *AdminDisableMyAuthenticatorV4NotFound, *AdminDisableMyAuthenticatorV4InternalServerError, error)
	AdminDisableMyAuthenticatorV4Short(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4NoContent, error)
	AdminEnableMyAuthenticatorV4(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4NoContent, *AdminEnableMyAuthenticatorV4BadRequest, *AdminEnableMyAuthenticatorV4Unauthorized, *AdminEnableMyAuthenticatorV4Forbidden, *AdminEnableMyAuthenticatorV4NotFound, *AdminEnableMyAuthenticatorV4Conflict, *AdminEnableMyAuthenticatorV4InternalServerError, error)
	AdminEnableMyAuthenticatorV4Short(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4NoContent, error)
	AdminGenerateMyAuthenticatorKeyV4(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4OK, *AdminGenerateMyAuthenticatorKeyV4BadRequest, *AdminGenerateMyAuthenticatorKeyV4Unauthorized, *AdminGenerateMyAuthenticatorKeyV4Forbidden, *AdminGenerateMyAuthenticatorKeyV4NotFound, *AdminGenerateMyAuthenticatorKeyV4InternalServerError, error)
	AdminGenerateMyAuthenticatorKeyV4Short(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4OK, error)
	AdminGetMyBackupCodesV4(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4OK, *AdminGetMyBackupCodesV4BadRequest, *AdminGetMyBackupCodesV4Unauthorized, *AdminGetMyBackupCodesV4Forbidden, *AdminGetMyBackupCodesV4NotFound, *AdminGetMyBackupCodesV4InternalServerError, error)
	AdminGetMyBackupCodesV4Short(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4OK, error)
	AdminGenerateMyBackupCodesV4(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4OK, *AdminGenerateMyBackupCodesV4BadRequest, *AdminGenerateMyBackupCodesV4Unauthorized, *AdminGenerateMyBackupCodesV4Forbidden, *AdminGenerateMyBackupCodesV4NotFound, *AdminGenerateMyBackupCodesV4InternalServerError, error)
	AdminGenerateMyBackupCodesV4Short(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4OK, error)
	AdminDisableMyBackupCodesV4(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4NoContent, *AdminDisableMyBackupCodesV4BadRequest, *AdminDisableMyBackupCodesV4Unauthorized, *AdminDisableMyBackupCodesV4Forbidden, *AdminDisableMyBackupCodesV4NotFound, *AdminDisableMyBackupCodesV4InternalServerError, error)
	AdminDisableMyBackupCodesV4Short(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4NoContent, error)
	AdminDownloadMyBackupCodesV4(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4OK, *AdminDownloadMyBackupCodesV4BadRequest, *AdminDownloadMyBackupCodesV4Unauthorized, *AdminDownloadMyBackupCodesV4Forbidden, *AdminDownloadMyBackupCodesV4NotFound, *AdminDownloadMyBackupCodesV4InternalServerError, error)
	AdminDownloadMyBackupCodesV4Short(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4OK, error)
	AdminEnableMyBackupCodesV4(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4OK, *AdminEnableMyBackupCodesV4BadRequest, *AdminEnableMyBackupCodesV4Unauthorized, *AdminEnableMyBackupCodesV4Forbidden, *AdminEnableMyBackupCodesV4NotFound, *AdminEnableMyBackupCodesV4Conflict, *AdminEnableMyBackupCodesV4InternalServerError, error)
	AdminEnableMyBackupCodesV4Short(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4OK, error)
	AdminSendMyMFAEmailCodeV4(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4NoContent, *AdminSendMyMFAEmailCodeV4BadRequest, *AdminSendMyMFAEmailCodeV4Unauthorized, *AdminSendMyMFAEmailCodeV4Forbidden, *AdminSendMyMFAEmailCodeV4NotFound, *AdminSendMyMFAEmailCodeV4TooManyRequests, *AdminSendMyMFAEmailCodeV4InternalServerError, error)
	AdminSendMyMFAEmailCodeV4Short(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4NoContent, error)
	AdminDisableMyEmailV4(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4NoContent, *AdminDisableMyEmailV4BadRequest, *AdminDisableMyEmailV4Unauthorized, *AdminDisableMyEmailV4Forbidden, *AdminDisableMyEmailV4NotFound, *AdminDisableMyEmailV4InternalServerError, error)
	AdminDisableMyEmailV4Short(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4NoContent, error)
	AdminEnableMyEmailV4(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4NoContent, *AdminEnableMyEmailV4BadRequest, *AdminEnableMyEmailV4Unauthorized, *AdminEnableMyEmailV4Forbidden, *AdminEnableMyEmailV4NotFound, *AdminEnableMyEmailV4Conflict, *AdminEnableMyEmailV4InternalServerError, error)
	AdminEnableMyEmailV4Short(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4NoContent, error)
	AdminGetMyEnabledFactorsV4(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4OK, *AdminGetMyEnabledFactorsV4BadRequest, *AdminGetMyEnabledFactorsV4Unauthorized, *AdminGetMyEnabledFactorsV4Forbidden, *AdminGetMyEnabledFactorsV4NotFound, *AdminGetMyEnabledFactorsV4InternalServerError, error)
	AdminGetMyEnabledFactorsV4Short(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4OK, error)
	AdminMakeFactorMyDefaultV4(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4NoContent, *AdminMakeFactorMyDefaultV4BadRequest, *AdminMakeFactorMyDefaultV4Unauthorized, *AdminMakeFactorMyDefaultV4Forbidden, *AdminMakeFactorMyDefaultV4NotFound, *AdminMakeFactorMyDefaultV4InternalServerError, error)
	AdminMakeFactorMyDefaultV4Short(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4NoContent, error)
	AdminInviteUserV4(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Created, *AdminInviteUserV4BadRequest, *AdminInviteUserV4Unauthorized, *AdminInviteUserV4Forbidden, *AdminInviteUserV4NotFound, *AdminInviteUserV4Conflict, *AdminInviteUserV4UnprocessableEntity, *AdminInviteUserV4InternalServerError, error)
	AdminInviteUserV4Short(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Created, error)
	PublicCreateTestUserV4(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Created, *PublicCreateTestUserV4BadRequest, *PublicCreateTestUserV4NotFound, *PublicCreateTestUserV4Conflict, *PublicCreateTestUserV4InternalServerError, error)
	PublicCreateTestUserV4Short(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Created, error)
	PublicCreateUserV4(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Created, *PublicCreateUserV4BadRequest, *PublicCreateUserV4NotFound, *PublicCreateUserV4Conflict, *PublicCreateUserV4InternalServerError, error)
	PublicCreateUserV4Short(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Created, error)
	CreateUserFromInvitationV4(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Created, *CreateUserFromInvitationV4BadRequest, *CreateUserFromInvitationV4NotFound, *CreateUserFromInvitationV4InternalServerError, error)
	CreateUserFromInvitationV4Short(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Created, error)
	PublicUpdateUserV4(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4OK, *PublicUpdateUserV4BadRequest, *PublicUpdateUserV4Unauthorized, *PublicUpdateUserV4Conflict, *PublicUpdateUserV4InternalServerError, error)
	PublicUpdateUserV4Short(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4OK, error)
	PublicUpdateUserEmailAddressV4(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4NoContent, *PublicUpdateUserEmailAddressV4BadRequest, *PublicUpdateUserEmailAddressV4Unauthorized, *PublicUpdateUserEmailAddressV4NotFound, *PublicUpdateUserEmailAddressV4Conflict, *PublicUpdateUserEmailAddressV4InternalServerError, error)
	PublicUpdateUserEmailAddressV4Short(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4NoContent, error)
	PublicUpgradeHeadlessAccountWithVerificationCodeV4(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4OK, *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden, *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict, *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError, error)
	PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4OK, error)
	PublicUpgradeHeadlessAccountV4(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4OK, *PublicUpgradeHeadlessAccountV4BadRequest, *PublicUpgradeHeadlessAccountV4Unauthorized, *PublicUpgradeHeadlessAccountV4NotFound, *PublicUpgradeHeadlessAccountV4Conflict, *PublicUpgradeHeadlessAccountV4InternalServerError, error)
	PublicUpgradeHeadlessAccountV4Short(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4OK, error)
	PublicDisableMyAuthenticatorV4(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4NoContent, *PublicDisableMyAuthenticatorV4BadRequest, *PublicDisableMyAuthenticatorV4Unauthorized, *PublicDisableMyAuthenticatorV4Forbidden, *PublicDisableMyAuthenticatorV4NotFound, *PublicDisableMyAuthenticatorV4InternalServerError, error)
	PublicDisableMyAuthenticatorV4Short(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4NoContent, error)
	PublicEnableMyAuthenticatorV4(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4NoContent, *PublicEnableMyAuthenticatorV4BadRequest, *PublicEnableMyAuthenticatorV4Unauthorized, *PublicEnableMyAuthenticatorV4Forbidden, *PublicEnableMyAuthenticatorV4NotFound, *PublicEnableMyAuthenticatorV4Conflict, *PublicEnableMyAuthenticatorV4InternalServerError, error)
	PublicEnableMyAuthenticatorV4Short(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4NoContent, error)
	PublicGenerateMyAuthenticatorKeyV4(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4OK, *PublicGenerateMyAuthenticatorKeyV4BadRequest, *PublicGenerateMyAuthenticatorKeyV4Unauthorized, *PublicGenerateMyAuthenticatorKeyV4Forbidden, *PublicGenerateMyAuthenticatorKeyV4NotFound, *PublicGenerateMyAuthenticatorKeyV4InternalServerError, error)
	PublicGenerateMyAuthenticatorKeyV4Short(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4OK, error)
	PublicGetMyBackupCodesV4(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4OK, *PublicGetMyBackupCodesV4BadRequest, *PublicGetMyBackupCodesV4Unauthorized, *PublicGetMyBackupCodesV4Forbidden, *PublicGetMyBackupCodesV4NotFound, *PublicGetMyBackupCodesV4InternalServerError, error)
	PublicGetMyBackupCodesV4Short(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4OK, error)
	PublicGenerateMyBackupCodesV4(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4OK, *PublicGenerateMyBackupCodesV4BadRequest, *PublicGenerateMyBackupCodesV4Unauthorized, *PublicGenerateMyBackupCodesV4Forbidden, *PublicGenerateMyBackupCodesV4NotFound, *PublicGenerateMyBackupCodesV4InternalServerError, error)
	PublicGenerateMyBackupCodesV4Short(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4OK, error)
	PublicDisableMyBackupCodesV4(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4NoContent, *PublicDisableMyBackupCodesV4BadRequest, *PublicDisableMyBackupCodesV4Unauthorized, *PublicDisableMyBackupCodesV4Forbidden, *PublicDisableMyBackupCodesV4NotFound, *PublicDisableMyBackupCodesV4InternalServerError, error)
	PublicDisableMyBackupCodesV4Short(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4NoContent, error)
	PublicDownloadMyBackupCodesV4(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4OK, *PublicDownloadMyBackupCodesV4BadRequest, *PublicDownloadMyBackupCodesV4Unauthorized, *PublicDownloadMyBackupCodesV4Forbidden, *PublicDownloadMyBackupCodesV4NotFound, *PublicDownloadMyBackupCodesV4InternalServerError, error)
	PublicDownloadMyBackupCodesV4Short(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4OK, error)
	PublicEnableMyBackupCodesV4(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4OK, *PublicEnableMyBackupCodesV4BadRequest, *PublicEnableMyBackupCodesV4Unauthorized, *PublicEnableMyBackupCodesV4Forbidden, *PublicEnableMyBackupCodesV4NotFound, *PublicEnableMyBackupCodesV4Conflict, *PublicEnableMyBackupCodesV4InternalServerError, error)
	PublicEnableMyBackupCodesV4Short(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4OK, error)
	PublicRemoveTrustedDeviceV4(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4NoContent, *PublicRemoveTrustedDeviceV4BadRequest, *PublicRemoveTrustedDeviceV4Unauthorized, *PublicRemoveTrustedDeviceV4Forbidden, *PublicRemoveTrustedDeviceV4NotFound, *PublicRemoveTrustedDeviceV4InternalServerError, error)
	PublicRemoveTrustedDeviceV4Short(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4NoContent, error)
	PublicSendMyMFAEmailCodeV4(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4NoContent, *PublicSendMyMFAEmailCodeV4BadRequest, *PublicSendMyMFAEmailCodeV4Unauthorized, *PublicSendMyMFAEmailCodeV4Forbidden, *PublicSendMyMFAEmailCodeV4NotFound, *PublicSendMyMFAEmailCodeV4TooManyRequests, *PublicSendMyMFAEmailCodeV4InternalServerError, error)
	PublicSendMyMFAEmailCodeV4Short(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4NoContent, error)
	PublicDisableMyEmailV4(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4NoContent, *PublicDisableMyEmailV4BadRequest, *PublicDisableMyEmailV4Unauthorized, *PublicDisableMyEmailV4Forbidden, *PublicDisableMyEmailV4NotFound, *PublicDisableMyEmailV4InternalServerError, error)
	PublicDisableMyEmailV4Short(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4NoContent, error)
	PublicEnableMyEmailV4(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4NoContent, *PublicEnableMyEmailV4BadRequest, *PublicEnableMyEmailV4Unauthorized, *PublicEnableMyEmailV4Forbidden, *PublicEnableMyEmailV4NotFound, *PublicEnableMyEmailV4Conflict, *PublicEnableMyEmailV4InternalServerError, error)
	PublicEnableMyEmailV4Short(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4NoContent, error)
	PublicGetMyEnabledFactorsV4(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4OK, *PublicGetMyEnabledFactorsV4BadRequest, *PublicGetMyEnabledFactorsV4Unauthorized, *PublicGetMyEnabledFactorsV4Forbidden, *PublicGetMyEnabledFactorsV4NotFound, *PublicGetMyEnabledFactorsV4InternalServerError, error)
	PublicGetMyEnabledFactorsV4Short(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4OK, error)
	PublicMakeFactorMyDefaultV4(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4NoContent, *PublicMakeFactorMyDefaultV4BadRequest, *PublicMakeFactorMyDefaultV4Unauthorized, *PublicMakeFactorMyDefaultV4Forbidden, *PublicMakeFactorMyDefaultV4NotFound, *PublicMakeFactorMyDefaultV4InternalServerError, error)
	PublicMakeFactorMyDefaultV4Short(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4NoContent, error)
	PublicGetUserPublicInfoByUserIDV4(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4OK, *PublicGetUserPublicInfoByUserIDV4BadRequest, *PublicGetUserPublicInfoByUserIDV4NotFound, *PublicGetUserPublicInfoByUserIDV4InternalServerError, error)
	PublicGetUserPublicInfoByUserIDV4Short(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4OK, error)
	PublicInviteUserV4(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Created, *PublicInviteUserV4BadRequest, *PublicInviteUserV4Conflict, *PublicInviteUserV4UnprocessableEntity, *PublicInviteUserV4InternalServerError, error)
	PublicInviteUserV4Short(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminCreateTestUsersV4Short instead.

AdminCreateTestUsersV4 [test facility only]create test users
Create test users and not send verification code email.


Required Permission: ADMIN:NAMESPACE:{namespace}:USER
*/
func (a *Client) AdminCreateTestUsersV4(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Created, *AdminCreateTestUsersV4BadRequest, *AdminCreateTestUsersV4InternalServerError, *AdminCreateTestUsersV4NotImplemented, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTestUsersV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateTestUsersV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTestUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTestUsersV4Created:
		return v, nil, nil, nil, nil

	case *AdminCreateTestUsersV4BadRequest:
		return nil, v, nil, nil, nil

	case *AdminCreateTestUsersV4InternalServerError:
		return nil, nil, v, nil, nil

	case *AdminCreateTestUsersV4NotImplemented:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTestUsersV4Short [test facility only]create test users
Create test users and not send verification code email.


Required Permission: ADMIN:NAMESPACE:{namespace}:USER
*/
func (a *Client) AdminCreateTestUsersV4Short(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTestUsersV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateTestUsersV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTestUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTestUsersV4Created:
		return v, nil
	case *AdminCreateTestUsersV4BadRequest:
		return nil, v
	case *AdminCreateTestUsersV4InternalServerError:
		return nil, v
	case *AdminCreateTestUsersV4NotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBulkCheckValidUserIDV4Short instead.

AdminBulkCheckValidUserIDV4 admin check valid user id
Use this endpoint to check if userID exists or not

Required permission ' ADMIN:NAMESPACE:{namespace}:USER [READ]'

Maximum number of userID to be checked is 50
*/
func (a *Client) AdminBulkCheckValidUserIDV4(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4OK, *AdminBulkCheckValidUserIDV4BadRequest, *AdminBulkCheckValidUserIDV4Unauthorized, *AdminBulkCheckValidUserIDV4Forbidden, *AdminBulkCheckValidUserIDV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkCheckValidUserIDV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBulkCheckValidUserIDV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/bulk/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkCheckValidUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBulkCheckValidUserIDV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminBulkCheckValidUserIDV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminBulkCheckValidUserIDV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminBulkCheckValidUserIDV4Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminBulkCheckValidUserIDV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkCheckValidUserIDV4Short admin check valid user id
Use this endpoint to check if userID exists or not

Required permission ' ADMIN:NAMESPACE:{namespace}:USER [READ]'

Maximum number of userID to be checked is 50
*/
func (a *Client) AdminBulkCheckValidUserIDV4Short(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkCheckValidUserIDV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBulkCheckValidUserIDV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/bulk/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkCheckValidUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkCheckValidUserIDV4OK:
		return v, nil
	case *AdminBulkCheckValidUserIDV4BadRequest:
		return nil, v
	case *AdminBulkCheckValidUserIDV4Unauthorized:
		return nil, v
	case *AdminBulkCheckValidUserIDV4Forbidden:
		return nil, v
	case *AdminBulkCheckValidUserIDV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserV4Short instead.

AdminUpdateUserV4 update user


This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE] permission





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address


action code : 10103
*/
func (a *Client) AdminUpdateUserV4(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4OK, *AdminUpdateUserV4BadRequest, *AdminUpdateUserV4Unauthorized, *AdminUpdateUserV4Forbidden, *AdminUpdateUserV4NotFound, *AdminUpdateUserV4Conflict, *AdminUpdateUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV4Short update user


This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE] permission





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address


action code : 10103
*/
func (a *Client) AdminUpdateUserV4Short(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV4OK:
		return v, nil
	case *AdminUpdateUserV4BadRequest:
		return nil, v
	case *AdminUpdateUserV4Unauthorized:
		return nil, v
	case *AdminUpdateUserV4Forbidden:
		return nil, v
	case *AdminUpdateUserV4NotFound:
		return nil, v
	case *AdminUpdateUserV4Conflict:
		return nil, v
	case *AdminUpdateUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserEmailAddressV4Short instead.

AdminUpdateUserEmailAddressV4 update a user email address


Required permission

                                                                                                                                                                                                'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'






This is the endpoint for an admin to update a user email address.
This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.
*/
func (a *Client) AdminUpdateUserEmailAddressV4(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4NoContent, *AdminUpdateUserEmailAddressV4BadRequest, *AdminUpdateUserEmailAddressV4Unauthorized, *AdminUpdateUserEmailAddressV4NotFound, *AdminUpdateUserEmailAddressV4Conflict, *AdminUpdateUserEmailAddressV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserEmailAddressV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserEmailAddressV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserEmailAddressV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserEmailAddressV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserEmailAddressV4NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserEmailAddressV4Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserEmailAddressV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserEmailAddressV4Short update a user email address


Required permission

                                                                                                                                                                                                'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'






This is the endpoint for an admin to update a user email address.
This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.
*/
func (a *Client) AdminUpdateUserEmailAddressV4Short(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserEmailAddressV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserEmailAddressV4NoContent:
		return v, nil
	case *AdminUpdateUserEmailAddressV4BadRequest:
		return nil, v
	case *AdminUpdateUserEmailAddressV4Unauthorized:
		return nil, v
	case *AdminUpdateUserEmailAddressV4NotFound:
		return nil, v
	case *AdminUpdateUserEmailAddressV4Conflict:
		return nil, v
	case *AdminUpdateUserEmailAddressV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDisableUserMFAV4Short instead.

AdminDisableUserMFAV4 disable user 2fa


This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE] permission





This endpoint is used to disable user 2FA.
*/
func (a *Client) AdminDisableUserMFAV4(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4NoContent, *AdminDisableUserMFAV4BadRequest, *AdminDisableUserMFAV4Unauthorized, *AdminDisableUserMFAV4Forbidden, *AdminDisableUserMFAV4NotFound, *AdminDisableUserMFAV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserMFAV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableUserMFAV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserMFAV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserMFAV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDisableUserMFAV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDisableUserMFAV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDisableUserMFAV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDisableUserMFAV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDisableUserMFAV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableUserMFAV4Short disable user 2fa


This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE] permission





This endpoint is used to disable user 2FA.
*/
func (a *Client) AdminDisableUserMFAV4Short(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserMFAV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableUserMFAV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserMFAV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserMFAV4NoContent:
		return v, nil
	case *AdminDisableUserMFAV4BadRequest:
		return nil, v
	case *AdminDisableUserMFAV4Unauthorized:
		return nil, v
	case *AdminDisableUserMFAV4Forbidden:
		return nil, v
	case *AdminDisableUserMFAV4NotFound:
		return nil, v
	case *AdminDisableUserMFAV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListUserRolesV4Short instead.

AdminListUserRolesV4 admin list user's roles v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ] permission.

List roles assigned to a user
*/
func (a *Client) AdminListUserRolesV4(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4OK, *AdminListUserRolesV4Unauthorized, *AdminListUserRolesV4Forbidden, *AdminListUserRolesV4NotFound, *AdminListUserRolesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserRolesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListUserRolesV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListUserRolesV4Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminListUserRolesV4Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminListUserRolesV4NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminListUserRolesV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserRolesV4Short admin list user's roles v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ] permission.

List roles assigned to a user
*/
func (a *Client) AdminListUserRolesV4Short(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserRolesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserRolesV4OK:
		return v, nil
	case *AdminListUserRolesV4Unauthorized:
		return nil, v
	case *AdminListUserRolesV4Forbidden:
		return nil, v
	case *AdminListUserRolesV4NotFound:
		return nil, v
	case *AdminListUserRolesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserRoleV4Short instead.

AdminUpdateUserRoleV4 admin update user's role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

User's roles will be replaced with roles from request body.
*/
func (a *Client) AdminUpdateUserRoleV4(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4OK, *AdminUpdateUserRoleV4BadRequest, *AdminUpdateUserRoleV4Unauthorized, *AdminUpdateUserRoleV4Forbidden, *AdminUpdateUserRoleV4NotFound, *AdminUpdateUserRoleV4UnprocessableEntity, *AdminUpdateUserRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserRoleV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserRoleV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserRoleV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserRoleV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserRoleV4Short admin update user's role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

User's roles will be replaced with roles from request body.
*/
func (a *Client) AdminUpdateUserRoleV4Short(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserRoleV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserRoleV4OK:
		return v, nil
	case *AdminUpdateUserRoleV4BadRequest:
		return nil, v
	case *AdminUpdateUserRoleV4Unauthorized:
		return nil, v
	case *AdminUpdateUserRoleV4Forbidden:
		return nil, v
	case *AdminUpdateUserRoleV4NotFound:
		return nil, v
	case *AdminUpdateUserRoleV4UnprocessableEntity:
		return nil, v
	case *AdminUpdateUserRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddUserRoleV4Short instead.

AdminAddUserRoleV4 admin add user's role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

New role will be appended to user's current roles. Request body need to specify allowed namespace for given role to support new role restriction.
Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.
*/
func (a *Client) AdminAddUserRoleV4(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4OK, *AdminAddUserRoleV4BadRequest, *AdminAddUserRoleV4Unauthorized, *AdminAddUserRoleV4Forbidden, *AdminAddUserRoleV4NotFound, *AdminAddUserRoleV4UnprocessableEntity, *AdminAddUserRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminAddUserRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminAddUserRoleV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminAddUserRoleV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserRoleV4Short admin add user's role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

New role will be appended to user's current roles. Request body need to specify allowed namespace for given role to support new role restriction.
Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.
*/
func (a *Client) AdminAddUserRoleV4Short(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV4OK:
		return v, nil
	case *AdminAddUserRoleV4BadRequest:
		return nil, v
	case *AdminAddUserRoleV4Unauthorized:
		return nil, v
	case *AdminAddUserRoleV4Forbidden:
		return nil, v
	case *AdminAddUserRoleV4NotFound:
		return nil, v
	case *AdminAddUserRoleV4UnprocessableEntity:
		return nil, v
	case *AdminAddUserRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRemoveUserRoleV4Short instead.

AdminRemoveUserRoleV4 admin remove user role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete] permission.

Remove a role from user's roles.
*/
func (a *Client) AdminRemoveUserRoleV4(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4NoContent, *AdminRemoveUserRoleV4BadRequest, *AdminRemoveUserRoleV4Unauthorized, *AdminRemoveUserRoleV4Forbidden, *AdminRemoveUserRoleV4NotFound, *AdminRemoveUserRoleV4UnprocessableEntity, *AdminRemoveUserRoleV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveUserRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveUserRoleV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminRemoveUserRoleV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminRemoveUserRoleV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminRemoveUserRoleV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminRemoveUserRoleV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminRemoveUserRoleV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminRemoveUserRoleV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveUserRoleV4Short admin remove user role v4
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete] permission.

Remove a role from user's roles.
*/
func (a *Client) AdminRemoveUserRoleV4Short(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveUserRoleV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRemoveUserRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveUserRoleV4NoContent:
		return v, nil
	case *AdminRemoveUserRoleV4BadRequest:
		return nil, v
	case *AdminRemoveUserRoleV4Unauthorized:
		return nil, v
	case *AdminRemoveUserRoleV4Forbidden:
		return nil, v
	case *AdminRemoveUserRoleV4NotFound:
		return nil, v
	case *AdminRemoveUserRoleV4UnprocessableEntity:
		return nil, v
	case *AdminRemoveUserRoleV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminInviteUserNewV4Short instead.

AdminInviteUserNewV4 admin invite user v4
Required permission 'ADMIN:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- Email Address is required, List of email addresses that will be invited
- isAdmin is required, true if user is admin, false if user is not admin
- Namespace is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- Role is optional, if not specified then it will only assign User role.
- Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserNewV4(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Created, *AdminInviteUserNewV4BadRequest, *AdminInviteUserNewV4Unauthorized, *AdminInviteUserNewV4Forbidden, *AdminInviteUserNewV4NotFound, *AdminInviteUserNewV4Conflict, *AdminInviteUserNewV4UnprocessableEntity, *AdminInviteUserNewV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserNewV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserNewV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserNewV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserNewV4Created:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserNewV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserNewV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserNewV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *AdminInviteUserNewV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *AdminInviteUserNewV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *AdminInviteUserNewV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *AdminInviteUserNewV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserNewV4Short admin invite user v4
Required permission 'ADMIN:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- Email Address is required, List of email addresses that will be invited
- isAdmin is required, true if user is admin, false if user is not admin
- Namespace is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- Role is optional, if not specified then it will only assign User role.
- Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserNewV4Short(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserNewV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserNewV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserNewV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserNewV4Created:
		return v, nil
	case *AdminInviteUserNewV4BadRequest:
		return nil, v
	case *AdminInviteUserNewV4Unauthorized:
		return nil, v
	case *AdminInviteUserNewV4Forbidden:
		return nil, v
	case *AdminInviteUserNewV4NotFound:
		return nil, v
	case *AdminInviteUserNewV4Conflict:
		return nil, v
	case *AdminInviteUserNewV4UnprocessableEntity:
		return nil, v
	case *AdminInviteUserNewV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateMyUserV4Short instead.

AdminUpdateMyUserV4 admin update my user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, userName}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




action code : 10103
*/
func (a *Client) AdminUpdateMyUserV4(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4OK, *AdminUpdateMyUserV4BadRequest, *AdminUpdateMyUserV4Unauthorized, *AdminUpdateMyUserV4Conflict, *AdminUpdateMyUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateMyUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateMyUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateMyUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateMyUserV4OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateMyUserV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateMyUserV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateMyUserV4Conflict:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateMyUserV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateMyUserV4Short admin update my user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, userName}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




action code : 10103
*/
func (a *Client) AdminUpdateMyUserV4Short(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateMyUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateMyUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateMyUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateMyUserV4OK:
		return v, nil
	case *AdminUpdateMyUserV4BadRequest:
		return nil, v
	case *AdminUpdateMyUserV4Unauthorized:
		return nil, v
	case *AdminUpdateMyUserV4Conflict:
		return nil, v
	case *AdminUpdateMyUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDisableMyAuthenticatorV4Short instead.

AdminDisableMyAuthenticatorV4 disable 2fa authenticator


This endpoint is used to disable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyAuthenticatorV4(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4NoContent, *AdminDisableMyAuthenticatorV4BadRequest, *AdminDisableMyAuthenticatorV4Unauthorized, *AdminDisableMyAuthenticatorV4Forbidden, *AdminDisableMyAuthenticatorV4NotFound, *AdminDisableMyAuthenticatorV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyAuthenticatorV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDisableMyAuthenticatorV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDisableMyAuthenticatorV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDisableMyAuthenticatorV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDisableMyAuthenticatorV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDisableMyAuthenticatorV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyAuthenticatorV4Short disable 2fa authenticator


This endpoint is used to disable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyAuthenticatorV4Short(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyAuthenticatorV4NoContent:
		return v, nil
	case *AdminDisableMyAuthenticatorV4BadRequest:
		return nil, v
	case *AdminDisableMyAuthenticatorV4Unauthorized:
		return nil, v
	case *AdminDisableMyAuthenticatorV4Forbidden:
		return nil, v
	case *AdminDisableMyAuthenticatorV4NotFound:
		return nil, v
	case *AdminDisableMyAuthenticatorV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminEnableMyAuthenticatorV4Short instead.

AdminEnableMyAuthenticatorV4 enable 2fa authenticator


This endpoint is used to enable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyAuthenticatorV4(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4NoContent, *AdminEnableMyAuthenticatorV4BadRequest, *AdminEnableMyAuthenticatorV4Unauthorized, *AdminEnableMyAuthenticatorV4Forbidden, *AdminEnableMyAuthenticatorV4NotFound, *AdminEnableMyAuthenticatorV4Conflict, *AdminEnableMyAuthenticatorV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyAuthenticatorV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyAuthenticatorV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyAuthenticatorV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminEnableMyAuthenticatorV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminEnableMyAuthenticatorV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminEnableMyAuthenticatorV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminEnableMyAuthenticatorV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyAuthenticatorV4Short enable 2fa authenticator


This endpoint is used to enable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyAuthenticatorV4Short(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyAuthenticatorV4NoContent:
		return v, nil
	case *AdminEnableMyAuthenticatorV4BadRequest:
		return nil, v
	case *AdminEnableMyAuthenticatorV4Unauthorized:
		return nil, v
	case *AdminEnableMyAuthenticatorV4Forbidden:
		return nil, v
	case *AdminEnableMyAuthenticatorV4NotFound:
		return nil, v
	case *AdminEnableMyAuthenticatorV4Conflict:
		return nil, v
	case *AdminEnableMyAuthenticatorV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGenerateMyAuthenticatorKeyV4Short instead.

AdminGenerateMyAuthenticatorKeyV4 generate secret key for 3rd-party authenticate app


This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGenerateMyAuthenticatorKeyV4(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4OK, *AdminGenerateMyAuthenticatorKeyV4BadRequest, *AdminGenerateMyAuthenticatorKeyV4Unauthorized, *AdminGenerateMyAuthenticatorKeyV4Forbidden, *AdminGenerateMyAuthenticatorKeyV4NotFound, *AdminGenerateMyAuthenticatorKeyV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyAuthenticatorKeyV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyAuthenticatorKeyV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGenerateMyAuthenticatorKeyV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGenerateMyAuthenticatorKeyV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGenerateMyAuthenticatorKeyV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGenerateMyAuthenticatorKeyV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGenerateMyAuthenticatorKeyV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateMyAuthenticatorKeyV4Short generate secret key for 3rd-party authenticate app


This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGenerateMyAuthenticatorKeyV4Short(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyAuthenticatorKeyV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyAuthenticatorKeyV4OK:
		return v, nil
	case *AdminGenerateMyAuthenticatorKeyV4BadRequest:
		return nil, v
	case *AdminGenerateMyAuthenticatorKeyV4Unauthorized:
		return nil, v
	case *AdminGenerateMyAuthenticatorKeyV4Forbidden:
		return nil, v
	case *AdminGenerateMyAuthenticatorKeyV4NotFound:
		return nil, v
	case *AdminGenerateMyAuthenticatorKeyV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetMyBackupCodesV4Short instead.

AdminGetMyBackupCodesV4 get backup codes


This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGetMyBackupCodesV4(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4OK, *AdminGetMyBackupCodesV4BadRequest, *AdminGetMyBackupCodesV4Unauthorized, *AdminGetMyBackupCodesV4Forbidden, *AdminGetMyBackupCodesV4NotFound, *AdminGetMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyBackupCodesV4Short get backup codes


This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGetMyBackupCodesV4Short(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyBackupCodesV4OK:
		return v, nil
	case *AdminGetMyBackupCodesV4BadRequest:
		return nil, v
	case *AdminGetMyBackupCodesV4Unauthorized:
		return nil, v
	case *AdminGetMyBackupCodesV4Forbidden:
		return nil, v
	case *AdminGetMyBackupCodesV4NotFound:
		return nil, v
	case *AdminGetMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGenerateMyBackupCodesV4Short instead.

AdminGenerateMyBackupCodesV4 generate backup codes


This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGenerateMyBackupCodesV4(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4OK, *AdminGenerateMyBackupCodesV4BadRequest, *AdminGenerateMyBackupCodesV4Unauthorized, *AdminGenerateMyBackupCodesV4Forbidden, *AdminGenerateMyBackupCodesV4NotFound, *AdminGenerateMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGenerateMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGenerateMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGenerateMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGenerateMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGenerateMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateMyBackupCodesV4Short generate backup codes


This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGenerateMyBackupCodesV4Short(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyBackupCodesV4OK:
		return v, nil
	case *AdminGenerateMyBackupCodesV4BadRequest:
		return nil, v
	case *AdminGenerateMyBackupCodesV4Unauthorized:
		return nil, v
	case *AdminGenerateMyBackupCodesV4Forbidden:
		return nil, v
	case *AdminGenerateMyBackupCodesV4NotFound:
		return nil, v
	case *AdminGenerateMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDisableMyBackupCodesV4Short instead.

AdminDisableMyBackupCodesV4 disable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyBackupCodesV4(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4NoContent, *AdminDisableMyBackupCodesV4BadRequest, *AdminDisableMyBackupCodesV4Unauthorized, *AdminDisableMyBackupCodesV4Forbidden, *AdminDisableMyBackupCodesV4NotFound, *AdminDisableMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyBackupCodesV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDisableMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDisableMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDisableMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDisableMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDisableMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyBackupCodesV4Short disable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyBackupCodesV4Short(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyBackupCodesV4NoContent:
		return v, nil
	case *AdminDisableMyBackupCodesV4BadRequest:
		return nil, v
	case *AdminDisableMyBackupCodesV4Unauthorized:
		return nil, v
	case *AdminDisableMyBackupCodesV4Forbidden:
		return nil, v
	case *AdminDisableMyBackupCodesV4NotFound:
		return nil, v
	case *AdminDisableMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDownloadMyBackupCodesV4Short instead.

AdminDownloadMyBackupCodesV4 download user backup codes


This endpoint is used to download backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDownloadMyBackupCodesV4(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4OK, *AdminDownloadMyBackupCodesV4BadRequest, *AdminDownloadMyBackupCodesV4Unauthorized, *AdminDownloadMyBackupCodesV4Forbidden, *AdminDownloadMyBackupCodesV4NotFound, *AdminDownloadMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDownloadMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDownloadMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDownloadMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDownloadMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDownloadMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDownloadMyBackupCodesV4Short download user backup codes


This endpoint is used to download backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDownloadMyBackupCodesV4Short(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadMyBackupCodesV4OK:
		return v, nil
	case *AdminDownloadMyBackupCodesV4BadRequest:
		return nil, v
	case *AdminDownloadMyBackupCodesV4Unauthorized:
		return nil, v
	case *AdminDownloadMyBackupCodesV4Forbidden:
		return nil, v
	case *AdminDownloadMyBackupCodesV4NotFound:
		return nil, v
	case *AdminDownloadMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminEnableMyBackupCodesV4Short instead.

AdminEnableMyBackupCodesV4 enable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyBackupCodesV4(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4OK, *AdminEnableMyBackupCodesV4BadRequest, *AdminEnableMyBackupCodesV4Unauthorized, *AdminEnableMyBackupCodesV4Forbidden, *AdminEnableMyBackupCodesV4NotFound, *AdminEnableMyBackupCodesV4Conflict, *AdminEnableMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminEnableMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminEnableMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminEnableMyBackupCodesV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminEnableMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyBackupCodesV4Short enable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyBackupCodesV4Short(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyBackupCodesV4OK:
		return v, nil
	case *AdminEnableMyBackupCodesV4BadRequest:
		return nil, v
	case *AdminEnableMyBackupCodesV4Unauthorized:
		return nil, v
	case *AdminEnableMyBackupCodesV4Forbidden:
		return nil, v
	case *AdminEnableMyBackupCodesV4NotFound:
		return nil, v
	case *AdminEnableMyBackupCodesV4Conflict:
		return nil, v
	case *AdminEnableMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSendMyMFAEmailCodeV4Short instead.

AdminSendMyMFAEmailCodeV4 send code for enabling email


This endpoint is used to send email code.




This endpoint Requires valid user access token
*/
func (a *Client) AdminSendMyMFAEmailCodeV4(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4NoContent, *AdminSendMyMFAEmailCodeV4BadRequest, *AdminSendMyMFAEmailCodeV4Unauthorized, *AdminSendMyMFAEmailCodeV4Forbidden, *AdminSendMyMFAEmailCodeV4NotFound, *AdminSendMyMFAEmailCodeV4TooManyRequests, *AdminSendMyMFAEmailCodeV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendMyMFAEmailCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSendMyMFAEmailCodeV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminSendMyMFAEmailCodeV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminSendMyMFAEmailCodeV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminSendMyMFAEmailCodeV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminSendMyMFAEmailCodeV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminSendMyMFAEmailCodeV4TooManyRequests:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminSendMyMFAEmailCodeV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendMyMFAEmailCodeV4Short send code for enabling email


This endpoint is used to send email code.




This endpoint Requires valid user access token
*/
func (a *Client) AdminSendMyMFAEmailCodeV4Short(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendMyMFAEmailCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendMyMFAEmailCodeV4NoContent:
		return v, nil
	case *AdminSendMyMFAEmailCodeV4BadRequest:
		return nil, v
	case *AdminSendMyMFAEmailCodeV4Unauthorized:
		return nil, v
	case *AdminSendMyMFAEmailCodeV4Forbidden:
		return nil, v
	case *AdminSendMyMFAEmailCodeV4NotFound:
		return nil, v
	case *AdminSendMyMFAEmailCodeV4TooManyRequests:
		return nil, v
	case *AdminSendMyMFAEmailCodeV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDisableMyEmailV4Short instead.

AdminDisableMyEmailV4 disable 2fa email


This endpoint is used to disable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyEmailV4(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4NoContent, *AdminDisableMyEmailV4BadRequest, *AdminDisableMyEmailV4Unauthorized, *AdminDisableMyEmailV4Forbidden, *AdminDisableMyEmailV4NotFound, *AdminDisableMyEmailV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyEmailV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDisableMyEmailV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDisableMyEmailV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDisableMyEmailV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDisableMyEmailV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDisableMyEmailV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyEmailV4Short disable 2fa email


This endpoint is used to disable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) AdminDisableMyEmailV4Short(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyEmailV4NoContent:
		return v, nil
	case *AdminDisableMyEmailV4BadRequest:
		return nil, v
	case *AdminDisableMyEmailV4Unauthorized:
		return nil, v
	case *AdminDisableMyEmailV4Forbidden:
		return nil, v
	case *AdminDisableMyEmailV4NotFound:
		return nil, v
	case *AdminDisableMyEmailV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminEnableMyEmailV4Short instead.

AdminEnableMyEmailV4 enable 2fa email


This endpoint is used to enable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyEmailV4(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4NoContent, *AdminEnableMyEmailV4BadRequest, *AdminEnableMyEmailV4Unauthorized, *AdminEnableMyEmailV4Forbidden, *AdminEnableMyEmailV4NotFound, *AdminEnableMyEmailV4Conflict, *AdminEnableMyEmailV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyEmailV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyEmailV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminEnableMyEmailV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminEnableMyEmailV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminEnableMyEmailV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminEnableMyEmailV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminEnableMyEmailV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyEmailV4Short enable 2fa email


This endpoint is used to enable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) AdminEnableMyEmailV4Short(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyEmailV4NoContent:
		return v, nil
	case *AdminEnableMyEmailV4BadRequest:
		return nil, v
	case *AdminEnableMyEmailV4Unauthorized:
		return nil, v
	case *AdminEnableMyEmailV4Forbidden:
		return nil, v
	case *AdminEnableMyEmailV4NotFound:
		return nil, v
	case *AdminEnableMyEmailV4Conflict:
		return nil, v
	case *AdminEnableMyEmailV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetMyEnabledFactorsV4Short instead.

AdminGetMyEnabledFactorsV4 get user enabled factors


This endpoint is used to get user enabled factors.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGetMyEnabledFactorsV4(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4OK, *AdminGetMyEnabledFactorsV4BadRequest, *AdminGetMyEnabledFactorsV4Unauthorized, *AdminGetMyEnabledFactorsV4Forbidden, *AdminGetMyEnabledFactorsV4NotFound, *AdminGetMyEnabledFactorsV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyEnabledFactorsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyEnabledFactorsV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetMyEnabledFactorsV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetMyEnabledFactorsV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetMyEnabledFactorsV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetMyEnabledFactorsV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetMyEnabledFactorsV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyEnabledFactorsV4Short get user enabled factors


This endpoint is used to get user enabled factors.




This endpoint Requires valid user access token
*/
func (a *Client) AdminGetMyEnabledFactorsV4Short(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyEnabledFactorsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyEnabledFactorsV4OK:
		return v, nil
	case *AdminGetMyEnabledFactorsV4BadRequest:
		return nil, v
	case *AdminGetMyEnabledFactorsV4Unauthorized:
		return nil, v
	case *AdminGetMyEnabledFactorsV4Forbidden:
		return nil, v
	case *AdminGetMyEnabledFactorsV4NotFound:
		return nil, v
	case *AdminGetMyEnabledFactorsV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminMakeFactorMyDefaultV4Short instead.

AdminMakeFactorMyDefaultV4 make 2fa factor default


This endpoint is used to make 2FA factor default.




This endpoint Requires valid user access token
*/
func (a *Client) AdminMakeFactorMyDefaultV4(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4NoContent, *AdminMakeFactorMyDefaultV4BadRequest, *AdminMakeFactorMyDefaultV4Unauthorized, *AdminMakeFactorMyDefaultV4Forbidden, *AdminMakeFactorMyDefaultV4NotFound, *AdminMakeFactorMyDefaultV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminMakeFactorMyDefaultV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminMakeFactorMyDefaultV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminMakeFactorMyDefaultV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminMakeFactorMyDefaultV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminMakeFactorMyDefaultV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminMakeFactorMyDefaultV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminMakeFactorMyDefaultV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminMakeFactorMyDefaultV4Short make 2fa factor default


This endpoint is used to make 2FA factor default.




This endpoint Requires valid user access token
*/
func (a *Client) AdminMakeFactorMyDefaultV4Short(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminMakeFactorMyDefaultV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminMakeFactorMyDefaultV4NoContent:
		return v, nil
	case *AdminMakeFactorMyDefaultV4BadRequest:
		return nil, v
	case *AdminMakeFactorMyDefaultV4Unauthorized:
		return nil, v
	case *AdminMakeFactorMyDefaultV4Forbidden:
		return nil, v
	case *AdminMakeFactorMyDefaultV4NotFound:
		return nil, v
	case *AdminMakeFactorMyDefaultV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminInviteUserV4Short instead.

AdminInviteUserV4 admin invite user v4
Required permission 'ADMIN:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- Email Address is required, List of email addresses that will be invited
- isAdmin is required, true if user is admin, false if user is not admin
- Namespace is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- Role is optional, if not specified then it will only assign User role.
- Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.

Substitute endpoint: /iam/v4/admin/users/invite
*/
func (a *Client) AdminInviteUserV4(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Created, *AdminInviteUserV4BadRequest, *AdminInviteUserV4Unauthorized, *AdminInviteUserV4Forbidden, *AdminInviteUserV4NotFound, *AdminInviteUserV4Conflict, *AdminInviteUserV4UnprocessableEntity, *AdminInviteUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV4Created:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *AdminInviteUserV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *AdminInviteUserV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *AdminInviteUserV4UnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *AdminInviteUserV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserV4Short admin invite user v4
Required permission 'ADMIN:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- Email Address is required, List of email addresses that will be invited
- isAdmin is required, true if user is admin, false if user is not admin
- Namespace is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- Role is optional, if not specified then it will only assign User role.
- Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.

Substitute endpoint: /iam/v4/admin/users/invite
*/
func (a *Client) AdminInviteUserV4Short(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV4Created:
		return v, nil
	case *AdminInviteUserV4BadRequest:
		return nil, v
	case *AdminInviteUserV4Unauthorized:
		return nil, v
	case *AdminInviteUserV4Forbidden:
		return nil, v
	case *AdminInviteUserV4NotFound:
		return nil, v
	case *AdminInviteUserV4Conflict:
		return nil, v
	case *AdminInviteUserV4UnprocessableEntity:
		return nil, v
	case *AdminInviteUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateTestUserV4Short instead.

PublicCreateTestUserV4 [test facility only]create test user
Create a test user and not send verification code email



Required attributes:
- verified: this new user is verified or not
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


Not required attributes:
- displayName: Please refer to the rule from /v3/public/inputValidations API.





This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateTestUserV4(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Created, *PublicCreateTestUserV4BadRequest, *PublicCreateTestUserV4NotFound, *PublicCreateTestUserV4Conflict, *PublicCreateTestUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateTestUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateTestUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateTestUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateTestUserV4Created:
		return v, nil, nil, nil, nil, nil

	case *PublicCreateTestUserV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicCreateTestUserV4NotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicCreateTestUserV4Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicCreateTestUserV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateTestUserV4Short [test facility only]create test user
Create a test user and not send verification code email



Required attributes:
- verified: this new user is verified or not
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


Not required attributes:
- displayName: Please refer to the rule from /v3/public/inputValidations API.





This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateTestUserV4Short(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateTestUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateTestUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateTestUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateTestUserV4Created:
		return v, nil
	case *PublicCreateTestUserV4BadRequest:
		return nil, v
	case *PublicCreateTestUserV4NotFound:
		return nil, v
	case *PublicCreateTestUserV4Conflict:
		return nil, v
	case *PublicCreateTestUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserV4Short instead.

PublicCreateUserV4 create user
Create a new user with unique email address and username.



Required attributes:
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


Not required attributes:
- displayName: Please refer to the rule from /v3/public/inputValidations API.





This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV4(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Created, *PublicCreateUserV4BadRequest, *PublicCreateUserV4NotFound, *PublicCreateUserV4Conflict, *PublicCreateUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV4Created:
		return v, nil, nil, nil, nil, nil

	case *PublicCreateUserV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicCreateUserV4NotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicCreateUserV4Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicCreateUserV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV4Short create user
Create a new user with unique email address and username.



Required attributes:
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


Not required attributes:
- displayName: Please refer to the rule from /v3/public/inputValidations API.





This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV4Short(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV4Created:
		return v, nil
	case *PublicCreateUserV4BadRequest:
		return nil, v
	case *PublicCreateUserV4NotFound:
		return nil, v
	case *PublicCreateUserV4Conflict:
		return nil, v
	case *PublicCreateUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateUserFromInvitationV4Short instead.

CreateUserFromInvitationV4 create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:

EMAILPASSWD: an authentication type used for new user registration through email.

Country use ISO3166-1 alpha-2 two letter, e.g. US.

Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

Required attributes:
- authType: possible value is EMAILPASSWD (see above)
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
- displayName: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
*/
func (a *Client) CreateUserFromInvitationV4(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Created, *CreateUserFromInvitationV4BadRequest, *CreateUserFromInvitationV4NotFound, *CreateUserFromInvitationV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUserFromInvitationV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV4Created:
		return v, nil, nil, nil, nil

	case *CreateUserFromInvitationV4BadRequest:
		return nil, v, nil, nil, nil

	case *CreateUserFromInvitationV4NotFound:
		return nil, nil, v, nil, nil

	case *CreateUserFromInvitationV4InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserFromInvitationV4Short create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:

EMAILPASSWD: an authentication type used for new user registration through email.

Country use ISO3166-1 alpha-2 two letter, e.g. US.

Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

Required attributes:
- authType: possible value is EMAILPASSWD (see above)
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
- displayName: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
*/
func (a *Client) CreateUserFromInvitationV4Short(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUserFromInvitationV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV4Created:
		return v, nil
	case *CreateUserFromInvitationV4BadRequest:
		return nil, v
	case *CreateUserFromInvitationV4NotFound:
		return nil, v
	case *CreateUserFromInvitationV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateUserV4Short instead.

PublicUpdateUserV4 update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address


action code : 10103
*/
func (a *Client) PublicUpdateUserV4(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4OK, *PublicUpdateUserV4BadRequest, *PublicUpdateUserV4Unauthorized, *PublicUpdateUserV4Conflict, *PublicUpdateUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV4OK:
		return v, nil, nil, nil, nil, nil

	case *PublicUpdateUserV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUpdateUserV4Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUpdateUserV4Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicUpdateUserV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserV4Short update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address


action code : 10103
*/
func (a *Client) PublicUpdateUserV4Short(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV4OK:
		return v, nil
	case *PublicUpdateUserV4BadRequest:
		return nil, v
	case *PublicUpdateUserV4Unauthorized:
		return nil, v
	case *PublicUpdateUserV4Conflict:
		return nil, v
	case *PublicUpdateUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateUserEmailAddressV4Short instead.

PublicUpdateUserEmailAddressV4 update my email address


The endpoint to update my email address.




It requires a verification code from

                                                                                                                                                                                                /users/me/code/request

with UpdateEmailAddress context.
*/
func (a *Client) PublicUpdateUserEmailAddressV4(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4NoContent, *PublicUpdateUserEmailAddressV4BadRequest, *PublicUpdateUserEmailAddressV4Unauthorized, *PublicUpdateUserEmailAddressV4NotFound, *PublicUpdateUserEmailAddressV4Conflict, *PublicUpdateUserEmailAddressV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserEmailAddressV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserEmailAddressV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateUserEmailAddressV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateUserEmailAddressV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateUserEmailAddressV4NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateUserEmailAddressV4Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateUserEmailAddressV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserEmailAddressV4Short update my email address


The endpoint to update my email address.




It requires a verification code from

                                                                                                                                                                                                /users/me/code/request

with UpdateEmailAddress context.
*/
func (a *Client) PublicUpdateUserEmailAddressV4Short(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserEmailAddressV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserEmailAddressV4NoContent:
		return v, nil
	case *PublicUpdateUserEmailAddressV4BadRequest:
		return nil, v
	case *PublicUpdateUserEmailAddressV4Unauthorized:
		return nil, v
	case *PublicUpdateUserEmailAddressV4NotFound:
		return nil, v
	case *PublicUpdateUserEmailAddressV4Conflict:
		return nil, v
	case *PublicUpdateUserEmailAddressV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpgradeHeadlessAccountWithVerificationCodeV4Short instead.

PublicUpgradeHeadlessAccountWithVerificationCodeV4 upgrade headless account and automatically verified the email address if it is succeeded
Require valid user access token.
The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.


The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.


This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
Supported user data fields:


                                                  * displayName


                                                  * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                                                  * country : format ISO3166-1 alpha-2 two letter, e.g. US


action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountWithVerificationCodeV4(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4OK, *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden, *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound, *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict, *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountWithVerificationCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountWithVerificationCodeV4Short upgrade headless account and automatically verified the email address if it is succeeded
Require valid user access token.
The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.


The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.


This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
Supported user data fields:


                                                  * displayName


                                                  * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                                                  * country : format ISO3166-1 alpha-2 two letter, e.g. US


action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountWithVerificationCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK:
		return v, nil
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest:
		return nil, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized:
		return nil, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden:
		return nil, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound:
		return nil, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict:
		return nil, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpgradeHeadlessAccountV4Short instead.

PublicUpgradeHeadlessAccountV4 upgrade user account to full account
Require valid user authorization
Upgrade headless account to full account without verifying email address. Client does not need to provide verification code which sent to email address.

action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV4(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4OK, *PublicUpgradeHeadlessAccountV4BadRequest, *PublicUpgradeHeadlessAccountV4Unauthorized, *PublicUpgradeHeadlessAccountV4NotFound, *PublicUpgradeHeadlessAccountV4Conflict, *PublicUpgradeHeadlessAccountV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV4NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV4Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpgradeHeadlessAccountV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountV4Short upgrade user account to full account
Require valid user authorization
Upgrade headless account to full account without verifying email address. Client does not need to provide verification code which sent to email address.

action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV4Short(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV4OK:
		return v, nil
	case *PublicUpgradeHeadlessAccountV4BadRequest:
		return nil, v
	case *PublicUpgradeHeadlessAccountV4Unauthorized:
		return nil, v
	case *PublicUpgradeHeadlessAccountV4NotFound:
		return nil, v
	case *PublicUpgradeHeadlessAccountV4Conflict:
		return nil, v
	case *PublicUpgradeHeadlessAccountV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDisableMyAuthenticatorV4Short instead.

PublicDisableMyAuthenticatorV4 disable 2fa authenticator


This endpoint is used to disable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyAuthenticatorV4(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4NoContent, *PublicDisableMyAuthenticatorV4BadRequest, *PublicDisableMyAuthenticatorV4Unauthorized, *PublicDisableMyAuthenticatorV4Forbidden, *PublicDisableMyAuthenticatorV4NotFound, *PublicDisableMyAuthenticatorV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyAuthenticatorV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicDisableMyAuthenticatorV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicDisableMyAuthenticatorV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicDisableMyAuthenticatorV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicDisableMyAuthenticatorV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicDisableMyAuthenticatorV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyAuthenticatorV4Short disable 2fa authenticator


This endpoint is used to disable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyAuthenticatorV4Short(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyAuthenticatorV4NoContent:
		return v, nil
	case *PublicDisableMyAuthenticatorV4BadRequest:
		return nil, v
	case *PublicDisableMyAuthenticatorV4Unauthorized:
		return nil, v
	case *PublicDisableMyAuthenticatorV4Forbidden:
		return nil, v
	case *PublicDisableMyAuthenticatorV4NotFound:
		return nil, v
	case *PublicDisableMyAuthenticatorV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicEnableMyAuthenticatorV4Short instead.

PublicEnableMyAuthenticatorV4 enable 2fa authenticator


This endpoint is used to enable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyAuthenticatorV4(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4NoContent, *PublicEnableMyAuthenticatorV4BadRequest, *PublicEnableMyAuthenticatorV4Unauthorized, *PublicEnableMyAuthenticatorV4Forbidden, *PublicEnableMyAuthenticatorV4NotFound, *PublicEnableMyAuthenticatorV4Conflict, *PublicEnableMyAuthenticatorV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyAuthenticatorV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyAuthenticatorV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyAuthenticatorV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicEnableMyAuthenticatorV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicEnableMyAuthenticatorV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicEnableMyAuthenticatorV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicEnableMyAuthenticatorV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyAuthenticatorV4Short enable 2fa authenticator


This endpoint is used to enable 2FA authenticator.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyAuthenticatorV4Short(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyAuthenticatorV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyAuthenticatorV4NoContent:
		return v, nil
	case *PublicEnableMyAuthenticatorV4BadRequest:
		return nil, v
	case *PublicEnableMyAuthenticatorV4Unauthorized:
		return nil, v
	case *PublicEnableMyAuthenticatorV4Forbidden:
		return nil, v
	case *PublicEnableMyAuthenticatorV4NotFound:
		return nil, v
	case *PublicEnableMyAuthenticatorV4Conflict:
		return nil, v
	case *PublicEnableMyAuthenticatorV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGenerateMyAuthenticatorKeyV4Short instead.

PublicGenerateMyAuthenticatorKeyV4 generate secret key for 3rd-party authenticate app


This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGenerateMyAuthenticatorKeyV4(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4OK, *PublicGenerateMyAuthenticatorKeyV4BadRequest, *PublicGenerateMyAuthenticatorKeyV4Unauthorized, *PublicGenerateMyAuthenticatorKeyV4Forbidden, *PublicGenerateMyAuthenticatorKeyV4NotFound, *PublicGenerateMyAuthenticatorKeyV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyAuthenticatorKeyV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyAuthenticatorKeyV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGenerateMyAuthenticatorKeyV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGenerateMyAuthenticatorKeyV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGenerateMyAuthenticatorKeyV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGenerateMyAuthenticatorKeyV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGenerateMyAuthenticatorKeyV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyAuthenticatorKeyV4Short generate secret key for 3rd-party authenticate app


This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGenerateMyAuthenticatorKeyV4Short(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyAuthenticatorKeyV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyAuthenticatorKeyV4OK:
		return v, nil
	case *PublicGenerateMyAuthenticatorKeyV4BadRequest:
		return nil, v
	case *PublicGenerateMyAuthenticatorKeyV4Unauthorized:
		return nil, v
	case *PublicGenerateMyAuthenticatorKeyV4Forbidden:
		return nil, v
	case *PublicGenerateMyAuthenticatorKeyV4NotFound:
		return nil, v
	case *PublicGenerateMyAuthenticatorKeyV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyBackupCodesV4Short instead.

PublicGetMyBackupCodesV4 get backup codes


This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGetMyBackupCodesV4(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4OK, *PublicGetMyBackupCodesV4BadRequest, *PublicGetMyBackupCodesV4Unauthorized, *PublicGetMyBackupCodesV4Forbidden, *PublicGetMyBackupCodesV4NotFound, *PublicGetMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyBackupCodesV4Short get backup codes


This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGetMyBackupCodesV4Short(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyBackupCodesV4OK:
		return v, nil
	case *PublicGetMyBackupCodesV4BadRequest:
		return nil, v
	case *PublicGetMyBackupCodesV4Unauthorized:
		return nil, v
	case *PublicGetMyBackupCodesV4Forbidden:
		return nil, v
	case *PublicGetMyBackupCodesV4NotFound:
		return nil, v
	case *PublicGetMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGenerateMyBackupCodesV4Short instead.

PublicGenerateMyBackupCodesV4 generate backup codes


This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGenerateMyBackupCodesV4(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4OK, *PublicGenerateMyBackupCodesV4BadRequest, *PublicGenerateMyBackupCodesV4Unauthorized, *PublicGenerateMyBackupCodesV4Forbidden, *PublicGenerateMyBackupCodesV4NotFound, *PublicGenerateMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGenerateMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGenerateMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGenerateMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGenerateMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGenerateMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyBackupCodesV4Short generate backup codes


This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGenerateMyBackupCodesV4Short(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyBackupCodesV4OK:
		return v, nil
	case *PublicGenerateMyBackupCodesV4BadRequest:
		return nil, v
	case *PublicGenerateMyBackupCodesV4Unauthorized:
		return nil, v
	case *PublicGenerateMyBackupCodesV4Forbidden:
		return nil, v
	case *PublicGenerateMyBackupCodesV4NotFound:
		return nil, v
	case *PublicGenerateMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDisableMyBackupCodesV4Short instead.

PublicDisableMyBackupCodesV4 disable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyBackupCodesV4(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4NoContent, *PublicDisableMyBackupCodesV4BadRequest, *PublicDisableMyBackupCodesV4Unauthorized, *PublicDisableMyBackupCodesV4Forbidden, *PublicDisableMyBackupCodesV4NotFound, *PublicDisableMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyBackupCodesV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicDisableMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicDisableMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicDisableMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicDisableMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicDisableMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyBackupCodesV4Short disable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyBackupCodesV4Short(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyBackupCodesV4NoContent:
		return v, nil
	case *PublicDisableMyBackupCodesV4BadRequest:
		return nil, v
	case *PublicDisableMyBackupCodesV4Unauthorized:
		return nil, v
	case *PublicDisableMyBackupCodesV4Forbidden:
		return nil, v
	case *PublicDisableMyBackupCodesV4NotFound:
		return nil, v
	case *PublicDisableMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDownloadMyBackupCodesV4Short instead.

PublicDownloadMyBackupCodesV4 download user backup codes


This endpoint is used to download backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDownloadMyBackupCodesV4(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4OK, *PublicDownloadMyBackupCodesV4BadRequest, *PublicDownloadMyBackupCodesV4Unauthorized, *PublicDownloadMyBackupCodesV4Forbidden, *PublicDownloadMyBackupCodesV4NotFound, *PublicDownloadMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicDownloadMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicDownloadMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicDownloadMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicDownloadMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicDownloadMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadMyBackupCodesV4Short download user backup codes


This endpoint is used to download backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDownloadMyBackupCodesV4Short(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadMyBackupCodesV4OK:
		return v, nil
	case *PublicDownloadMyBackupCodesV4BadRequest:
		return nil, v
	case *PublicDownloadMyBackupCodesV4Unauthorized:
		return nil, v
	case *PublicDownloadMyBackupCodesV4Forbidden:
		return nil, v
	case *PublicDownloadMyBackupCodesV4NotFound:
		return nil, v
	case *PublicDownloadMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicEnableMyBackupCodesV4Short instead.

PublicEnableMyBackupCodesV4 enable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyBackupCodesV4(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4OK, *PublicEnableMyBackupCodesV4BadRequest, *PublicEnableMyBackupCodesV4Unauthorized, *PublicEnableMyBackupCodesV4Forbidden, *PublicEnableMyBackupCodesV4NotFound, *PublicEnableMyBackupCodesV4Conflict, *PublicEnableMyBackupCodesV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyBackupCodesV4OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyBackupCodesV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyBackupCodesV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicEnableMyBackupCodesV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicEnableMyBackupCodesV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicEnableMyBackupCodesV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicEnableMyBackupCodesV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyBackupCodesV4Short enable 2fa backup codes


This endpoint is used to enable 2FA backup codes.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyBackupCodesV4Short(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyBackupCodesV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyBackupCodesV4OK:
		return v, nil
	case *PublicEnableMyBackupCodesV4BadRequest:
		return nil, v
	case *PublicEnableMyBackupCodesV4Unauthorized:
		return nil, v
	case *PublicEnableMyBackupCodesV4Forbidden:
		return nil, v
	case *PublicEnableMyBackupCodesV4NotFound:
		return nil, v
	case *PublicEnableMyBackupCodesV4Conflict:
		return nil, v
	case *PublicEnableMyBackupCodesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRemoveTrustedDeviceV4Short instead.

PublicRemoveTrustedDeviceV4 remove trusted device


(Only for test)This endpoint is used to remove trusted device.




This endpoint Requires valid user access token





This endpoint Requires device_token in cookie
*/
func (a *Client) PublicRemoveTrustedDeviceV4(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4NoContent, *PublicRemoveTrustedDeviceV4BadRequest, *PublicRemoveTrustedDeviceV4Unauthorized, *PublicRemoveTrustedDeviceV4Forbidden, *PublicRemoveTrustedDeviceV4NotFound, *PublicRemoveTrustedDeviceV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRemoveTrustedDeviceV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicRemoveTrustedDeviceV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/device",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRemoveTrustedDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRemoveTrustedDeviceV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicRemoveTrustedDeviceV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicRemoveTrustedDeviceV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicRemoveTrustedDeviceV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicRemoveTrustedDeviceV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicRemoveTrustedDeviceV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRemoveTrustedDeviceV4Short remove trusted device


(Only for test)This endpoint is used to remove trusted device.




This endpoint Requires valid user access token





This endpoint Requires device_token in cookie
*/
func (a *Client) PublicRemoveTrustedDeviceV4Short(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRemoveTrustedDeviceV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicRemoveTrustedDeviceV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/device",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRemoveTrustedDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRemoveTrustedDeviceV4NoContent:
		return v, nil
	case *PublicRemoveTrustedDeviceV4BadRequest:
		return nil, v
	case *PublicRemoveTrustedDeviceV4Unauthorized:
		return nil, v
	case *PublicRemoveTrustedDeviceV4Forbidden:
		return nil, v
	case *PublicRemoveTrustedDeviceV4NotFound:
		return nil, v
	case *PublicRemoveTrustedDeviceV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSendMyMFAEmailCodeV4Short instead.

PublicSendMyMFAEmailCodeV4 send code for enabling email


This endpoint is used to send email code.




This endpoint Requires valid user access token
*/
func (a *Client) PublicSendMyMFAEmailCodeV4(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4NoContent, *PublicSendMyMFAEmailCodeV4BadRequest, *PublicSendMyMFAEmailCodeV4Unauthorized, *PublicSendMyMFAEmailCodeV4Forbidden, *PublicSendMyMFAEmailCodeV4NotFound, *PublicSendMyMFAEmailCodeV4TooManyRequests, *PublicSendMyMFAEmailCodeV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendMyMFAEmailCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSendMyMFAEmailCodeV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicSendMyMFAEmailCodeV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicSendMyMFAEmailCodeV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicSendMyMFAEmailCodeV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicSendMyMFAEmailCodeV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicSendMyMFAEmailCodeV4TooManyRequests:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicSendMyMFAEmailCodeV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendMyMFAEmailCodeV4Short send code for enabling email


This endpoint is used to send email code.




This endpoint Requires valid user access token
*/
func (a *Client) PublicSendMyMFAEmailCodeV4Short(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendMyMFAEmailCodeV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendMyMFAEmailCodeV4NoContent:
		return v, nil
	case *PublicSendMyMFAEmailCodeV4BadRequest:
		return nil, v
	case *PublicSendMyMFAEmailCodeV4Unauthorized:
		return nil, v
	case *PublicSendMyMFAEmailCodeV4Forbidden:
		return nil, v
	case *PublicSendMyMFAEmailCodeV4NotFound:
		return nil, v
	case *PublicSendMyMFAEmailCodeV4TooManyRequests:
		return nil, v
	case *PublicSendMyMFAEmailCodeV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDisableMyEmailV4Short instead.

PublicDisableMyEmailV4 disable 2fa email


This endpoint is used to disable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyEmailV4(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4NoContent, *PublicDisableMyEmailV4BadRequest, *PublicDisableMyEmailV4Unauthorized, *PublicDisableMyEmailV4Forbidden, *PublicDisableMyEmailV4NotFound, *PublicDisableMyEmailV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyEmailV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicDisableMyEmailV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicDisableMyEmailV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicDisableMyEmailV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicDisableMyEmailV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicDisableMyEmailV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyEmailV4Short disable 2fa email


This endpoint is used to disable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) PublicDisableMyEmailV4Short(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyEmailV4NoContent:
		return v, nil
	case *PublicDisableMyEmailV4BadRequest:
		return nil, v
	case *PublicDisableMyEmailV4Unauthorized:
		return nil, v
	case *PublicDisableMyEmailV4Forbidden:
		return nil, v
	case *PublicDisableMyEmailV4NotFound:
		return nil, v
	case *PublicDisableMyEmailV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicEnableMyEmailV4Short instead.

PublicEnableMyEmailV4 enable 2fa email


This endpoint is used to enable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyEmailV4(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4NoContent, *PublicEnableMyEmailV4BadRequest, *PublicEnableMyEmailV4Unauthorized, *PublicEnableMyEmailV4Forbidden, *PublicEnableMyEmailV4NotFound, *PublicEnableMyEmailV4Conflict, *PublicEnableMyEmailV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyEmailV4NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyEmailV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicEnableMyEmailV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicEnableMyEmailV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicEnableMyEmailV4NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicEnableMyEmailV4Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicEnableMyEmailV4InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyEmailV4Short enable 2fa email


This endpoint is used to enable 2FA email.




This endpoint Requires valid user access token
*/
func (a *Client) PublicEnableMyEmailV4Short(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyEmailV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyEmailV4NoContent:
		return v, nil
	case *PublicEnableMyEmailV4BadRequest:
		return nil, v
	case *PublicEnableMyEmailV4Unauthorized:
		return nil, v
	case *PublicEnableMyEmailV4Forbidden:
		return nil, v
	case *PublicEnableMyEmailV4NotFound:
		return nil, v
	case *PublicEnableMyEmailV4Conflict:
		return nil, v
	case *PublicEnableMyEmailV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyEnabledFactorsV4Short instead.

PublicGetMyEnabledFactorsV4 get user enabled factors


This endpoint is used to get user enabled factors.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGetMyEnabledFactorsV4(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4OK, *PublicGetMyEnabledFactorsV4BadRequest, *PublicGetMyEnabledFactorsV4Unauthorized, *PublicGetMyEnabledFactorsV4Forbidden, *PublicGetMyEnabledFactorsV4NotFound, *PublicGetMyEnabledFactorsV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEnabledFactorsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEnabledFactorsV4OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetMyEnabledFactorsV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetMyEnabledFactorsV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetMyEnabledFactorsV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetMyEnabledFactorsV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetMyEnabledFactorsV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEnabledFactorsV4Short get user enabled factors


This endpoint is used to get user enabled factors.




This endpoint Requires valid user access token
*/
func (a *Client) PublicGetMyEnabledFactorsV4Short(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEnabledFactorsV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEnabledFactorsV4OK:
		return v, nil
	case *PublicGetMyEnabledFactorsV4BadRequest:
		return nil, v
	case *PublicGetMyEnabledFactorsV4Unauthorized:
		return nil, v
	case *PublicGetMyEnabledFactorsV4Forbidden:
		return nil, v
	case *PublicGetMyEnabledFactorsV4NotFound:
		return nil, v
	case *PublicGetMyEnabledFactorsV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicMakeFactorMyDefaultV4Short instead.

PublicMakeFactorMyDefaultV4 make 2fa factor default


This endpoint is used to make 2FA factor default.




This endpoint Requires valid user access token
*/
func (a *Client) PublicMakeFactorMyDefaultV4(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4NoContent, *PublicMakeFactorMyDefaultV4BadRequest, *PublicMakeFactorMyDefaultV4Unauthorized, *PublicMakeFactorMyDefaultV4Forbidden, *PublicMakeFactorMyDefaultV4NotFound, *PublicMakeFactorMyDefaultV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMakeFactorMyDefaultV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicMakeFactorMyDefaultV4NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicMakeFactorMyDefaultV4BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicMakeFactorMyDefaultV4Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicMakeFactorMyDefaultV4Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicMakeFactorMyDefaultV4NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicMakeFactorMyDefaultV4InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMakeFactorMyDefaultV4Short make 2fa factor default


This endpoint is used to make 2FA factor default.




This endpoint Requires valid user access token
*/
func (a *Client) PublicMakeFactorMyDefaultV4Short(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMakeFactorMyDefaultV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicMakeFactorMyDefaultV4NoContent:
		return v, nil
	case *PublicMakeFactorMyDefaultV4BadRequest:
		return nil, v
	case *PublicMakeFactorMyDefaultV4Unauthorized:
		return nil, v
	case *PublicMakeFactorMyDefaultV4Forbidden:
		return nil, v
	case *PublicMakeFactorMyDefaultV4NotFound:
		return nil, v
	case *PublicMakeFactorMyDefaultV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserPublicInfoByUserIDV4Short instead.

PublicGetUserPublicInfoByUserIDV4 get user public info by user id


This endpoint requires a valid user token and only returns user's public information.

action code: 10129
*/
func (a *Client) PublicGetUserPublicInfoByUserIDV4(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4OK, *PublicGetUserPublicInfoByUserIDV4BadRequest, *PublicGetUserPublicInfoByUserIDV4NotFound, *PublicGetUserPublicInfoByUserIDV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPublicInfoByUserIDV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPublicInfoByUserIdV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPublicInfoByUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPublicInfoByUserIDV4OK:
		return v, nil, nil, nil, nil

	case *PublicGetUserPublicInfoByUserIDV4BadRequest:
		return nil, v, nil, nil, nil

	case *PublicGetUserPublicInfoByUserIDV4NotFound:
		return nil, nil, v, nil, nil

	case *PublicGetUserPublicInfoByUserIDV4InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPublicInfoByUserIDV4Short get user public info by user id


This endpoint requires a valid user token and only returns user's public information.

action code: 10129
*/
func (a *Client) PublicGetUserPublicInfoByUserIDV4Short(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPublicInfoByUserIDV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPublicInfoByUserIdV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPublicInfoByUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPublicInfoByUserIDV4OK:
		return v, nil
	case *PublicGetUserPublicInfoByUserIDV4BadRequest:
		return nil, v
	case *PublicGetUserPublicInfoByUserIDV4NotFound:
		return nil, v
	case *PublicGetUserPublicInfoByUserIDV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicInviteUserV4Short instead.

PublicInviteUserV4 public invite admin user v4
This endpoint is used to invite a game studio admin user with new namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.

Request body details:
- emailAddress: email address of the user to be invited
- namespace: new namespace of the user to be created
- namespaceDisplayName: display name of the new namespace

The invited users will also be assigned with "User" role by default.
*/
func (a *Client) PublicInviteUserV4(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Created, *PublicInviteUserV4BadRequest, *PublicInviteUserV4Conflict, *PublicInviteUserV4UnprocessableEntity, *PublicInviteUserV4InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicInviteUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicInviteUserV4Created:
		return v, nil, nil, nil, nil, nil

	case *PublicInviteUserV4BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicInviteUserV4Conflict:
		return nil, nil, v, nil, nil, nil

	case *PublicInviteUserV4UnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *PublicInviteUserV4InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicInviteUserV4Short public invite admin user v4
This endpoint is used to invite a game studio admin user with new namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.

Request body details:
- emailAddress: email address of the user to be invited
- namespace: new namespace of the user to be created
- namespaceDisplayName: display name of the new namespace

The invited users will also be assigned with "User" role by default.
*/
func (a *Client) PublicInviteUserV4Short(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicInviteUserV4Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicInviteUserV4Created:
		return v, nil
	case *PublicInviteUserV4BadRequest:
		return nil, v
	case *PublicInviteUserV4Conflict:
		return nil, v
	case *PublicInviteUserV4UnprocessableEntity:
		return nil, v
	case *PublicInviteUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
