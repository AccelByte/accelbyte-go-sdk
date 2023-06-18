// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package users

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new users API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for users API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateUser(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, *CreateUserBadRequest, *CreateUserUnauthorized, *CreateUserForbidden, *CreateUserConflict, error)
	CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, error)
	GetAdminUsersByRoleID(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, *GetAdminUsersByRoleIDBadRequest, *GetAdminUsersByRoleIDUnauthorized, *GetAdminUsersByRoleIDForbidden, *GetAdminUsersByRoleIDNotFound, *GetAdminUsersByRoleIDInternalServerError, error)
	GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, error)
	GetUserByLoginID(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, *GetUserByLoginIDBadRequest, *GetUserByLoginIDNotFound, *GetUserByLoginIDInternalServerError, error)
	GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, error)
	GetUserByPlatformUserID(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, *GetUserByPlatformUserIDBadRequest, *GetUserByPlatformUserIDUnauthorized, *GetUserByPlatformUserIDForbidden, *GetUserByPlatformUserIDNotFound, error)
	GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, error)
	ForgotPassword(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, *ForgotPasswordBadRequest, *ForgotPasswordUnauthorized, *ForgotPasswordForbidden, *ForgotPasswordNotFound, error)
	ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, error)
	GetUsersByLoginIds(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, *GetUsersByLoginIdsBadRequest, *GetUsersByLoginIdsUnauthorized, *GetUsersByLoginIdsForbidden, error)
	GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, error)
	ResetPassword(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, *ResetPasswordBadRequest, *ResetPasswordForbidden, *ResetPasswordNotFound, *ResetPasswordInternalServerError, error)
	ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, error)
	SearchUser(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, *SearchUserBadRequest, *SearchUserUnauthorized, *SearchUserForbidden, error)
	SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, error)
	GetUserByUserID(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, *GetUserByUserIDNotFound, *GetUserByUserIDInternalServerError, error)
	GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, error)
	UpdateUser(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, *UpdateUserBadRequest, *UpdateUserUnauthorized, *UpdateUserNotFound, *UpdateUserConflict, *UpdateUserInternalServerError, error)
	UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, error)
	DeleteUser(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, *DeleteUserUnauthorized, *DeleteUserForbidden, *DeleteUserNotFound, error)
	DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, error)
	BanUser(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, *BanUserBadRequest, *BanUserUnauthorized, *BanUserForbidden, *BanUserNotFound, *BanUserInternalServerError, error)
	BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, error)
	GetUserBanHistory(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, *GetUserBanHistoryUnauthorized, *GetUserBanHistoryForbidden, *GetUserBanHistoryNotFound, error)
	GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, error)
	DisableUserBan(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, *DisableUserBanUnauthorized, *DisableUserBanForbidden, *DisableUserBanNotFound, *DisableUserBanInternalServerError, error)
	DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, error)
	EnableUserBan(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, *EnableUserBanUnauthorized, *EnableUserBanForbidden, *EnableUserBanNotFound, *EnableUserBanInternalServerError, error)
	EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, error)
	ListCrossNamespaceAccountLink(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, *ListCrossNamespaceAccountLinkBadRequest, *ListCrossNamespaceAccountLinkUnauthorized, *ListCrossNamespaceAccountLinkForbidden, *ListCrossNamespaceAccountLinkNotFound, error)
	ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, error)
	DisableUser(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, *DisableUserBadRequest, *DisableUserUnauthorized, *DisableUserForbidden, *DisableUserNotFound, *DisableUserInternalServerError, error)
	DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, error)
	EnableUser(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, *EnableUserUnauthorized, *EnableUserForbidden, *EnableUserNotFound, *EnableUserInternalServerError, error)
	EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, error)
	GetUserInformation(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, *GetUserInformationUnauthorized, *GetUserInformationForbidden, *GetUserInformationNotFound, error)
	GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, error)
	DeleteUserInformation(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, *DeleteUserInformationUnauthorized, *DeleteUserInformationForbidden, *DeleteUserInformationNotFound, error)
	DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, error)
	GetUserLoginHistories(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, *GetUserLoginHistoriesUnauthorized, *GetUserLoginHistoriesForbidden, *GetUserLoginHistoriesNotFound, error)
	GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, error)
	UpdatePassword(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, *UpdatePasswordBadRequest, *UpdatePasswordUnauthorized, *UpdatePasswordForbidden, *UpdatePasswordNotFound, *UpdatePasswordInternalServerError, error)
	UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, error)
	SaveUserPermission(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, *SaveUserPermissionBadRequest, *SaveUserPermissionUnauthorized, *SaveUserPermissionForbidden, *SaveUserPermissionNotFound, error)
	SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, error)
	AddUserPermission(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, *AddUserPermissionBadRequest, *AddUserPermissionUnauthorized, *AddUserPermissionForbidden, *AddUserPermissionNotFound, error)
	AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, error)
	DeleteUserPermission(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, *DeleteUserPermissionBadRequest, *DeleteUserPermissionUnauthorized, *DeleteUserPermissionForbidden, *DeleteUserPermissionNotFound, error)
	DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, error)
	GetUserPlatformAccounts(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, *GetUserPlatformAccountsBadRequest, *GetUserPlatformAccountsUnauthorized, *GetUserPlatformAccountsForbidden, error)
	GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, error)
	GetUserMapping(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, *GetUserMappingBadRequest, *GetUserMappingUnauthorized, *GetUserMappingForbidden, *GetUserMappingNotFound, error)
	GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, error)
	GetUserJusticePlatformAccount(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, *GetUserJusticePlatformAccountBadRequest, *GetUserJusticePlatformAccountUnauthorized, *GetUserJusticePlatformAccountForbidden, error)
	GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, error)
	PlatformLink(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, *PlatformLinkBadRequest, *PlatformLinkUnauthorized, *PlatformLinkForbidden, *PlatformLinkNotFound, *PlatformLinkConflict, *PlatformLinkInternalServerError, error)
	PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, error)
	PlatformUnlink(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, *PlatformUnlinkBadRequest, *PlatformUnlinkUnauthorized, *PlatformUnlinkForbidden, *PlatformUnlinkNotFound, *PlatformUnlinkInternalServerError, error)
	PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, error)
	GetPublisherUser(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, *GetPublisherUserBadRequest, *GetPublisherUserUnauthorized, *GetPublisherUserForbidden, *GetPublisherUserNotFound, error)
	GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, error)
	SaveUserRoles(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, *SaveUserRolesBadRequest, *SaveUserRolesUnauthorized, *SaveUserRolesForbidden, *SaveUserRolesNotFound, *SaveUserRolesConflict, error)
	SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, error)
	AddUserRole(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, *AddUserRoleUnauthorized, *AddUserRoleForbidden, *AddUserRoleNotFound, *AddUserRoleConflict, *AddUserRoleInternalServerError, error)
	AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, error)
	DeleteUserRole(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, *DeleteUserRoleUnauthorized, *DeleteUserRoleForbidden, *DeleteUserRoleNotFound, *DeleteUserRoleInternalServerError, error)
	DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, error)
	UpgradeHeadlessAccount(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, *UpgradeHeadlessAccountUnauthorized, *UpgradeHeadlessAccountForbidden, *UpgradeHeadlessAccountConflict, error)
	UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, error)
	UpgradeHeadlessAccountWithVerificationCode(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, *UpgradeHeadlessAccountWithVerificationCodeBadRequest, *UpgradeHeadlessAccountWithVerificationCodeUnauthorized, *UpgradeHeadlessAccountWithVerificationCodeForbidden, *UpgradeHeadlessAccountWithVerificationCodeConflict, error)
	UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, error)
	UserVerification(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, *UserVerificationBadRequest, *UserVerificationUnauthorized, *UserVerificationForbidden, *UserVerificationNotFound, *UserVerificationInternalServerError, error)
	UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, error)
	SendVerificationCode(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, *SendVerificationCodeBadRequest, *SendVerificationCodeUnauthorized, *SendVerificationCodeForbidden, *SendVerificationCodeNotFound, *SendVerificationCodeConflict, *SendVerificationCodeTooManyRequests, *SendVerificationCodeInternalServerError, error)
	SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, error)
	AdminGetAgeRestrictionStatusV2(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, *AdminGetAgeRestrictionStatusV2Unauthorized, *AdminGetAgeRestrictionStatusV2Forbidden, *AdminGetAgeRestrictionStatusV2NotFound, error)
	AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, error)
	AdminUpdateAgeRestrictionConfigV2(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, *AdminUpdateAgeRestrictionConfigV2BadRequest, *AdminUpdateAgeRestrictionConfigV2Unauthorized, *AdminUpdateAgeRestrictionConfigV2Forbidden, *AdminUpdateAgeRestrictionConfigV2NotFound, error)
	AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, error)
	GetListCountryAgeRestriction(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, *GetListCountryAgeRestrictionUnauthorized, *GetListCountryAgeRestrictionForbidden, *GetListCountryAgeRestrictionNotFound, error)
	GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, error)
	UpdateCountryAgeRestriction(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, *UpdateCountryAgeRestrictionBadRequest, *UpdateCountryAgeRestrictionUnauthorized, *UpdateCountryAgeRestrictionForbidden, *UpdateCountryAgeRestrictionNotFound, error)
	UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, error)
	AdminSearchUsersV2(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, *AdminSearchUsersV2BadRequest, *AdminSearchUsersV2Unauthorized, *AdminSearchUsersV2Forbidden, error)
	AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, error)
	AdminGetUserByUserIDV2(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, *AdminGetUserByUserIDV2NotFound, *AdminGetUserByUserIDV2InternalServerError, error)
	AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, error)
	AdminUpdateUserV2(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, *AdminUpdateUserV2BadRequest, *AdminUpdateUserV2Unauthorized, *AdminUpdateUserV2NotFound, *AdminUpdateUserV2Conflict, *AdminUpdateUserV2InternalServerError, error)
	AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, error)
	AdminBanUserV2(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, *AdminBanUserV2BadRequest, *AdminBanUserV2Unauthorized, *AdminBanUserV2Forbidden, *AdminBanUserV2NotFound, *AdminBanUserV2InternalServerError, error)
	AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, error)
	AdminGetUserBanV2(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, *AdminGetUserBanV2Unauthorized, *AdminGetUserBanV2Forbidden, *AdminGetUserBanV2NotFound, error)
	AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, error)
	AdminDisableUserV2(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, *AdminDisableUserV2BadRequest, *AdminDisableUserV2Unauthorized, *AdminDisableUserV2Forbidden, *AdminDisableUserV2NotFound, *AdminDisableUserV2InternalServerError, error)
	AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, error)
	AdminEnableUserV2(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, *AdminEnableUserV2Unauthorized, *AdminEnableUserV2Forbidden, *AdminEnableUserV2NotFound, *AdminEnableUserV2InternalServerError, error)
	AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, error)
	AdminResetPasswordV2(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, *AdminResetPasswordV2BadRequest, *AdminResetPasswordV2Unauthorized, *AdminResetPasswordV2Forbidden, *AdminResetPasswordV2NotFound, *AdminResetPasswordV2InternalServerError, error)
	AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, error)
	AdminDeletePlatformLinkV2(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, *AdminDeletePlatformLinkV2BadRequest, *AdminDeletePlatformLinkV2Unauthorized, *AdminDeletePlatformLinkV2Forbidden, *AdminDeletePlatformLinkV2NotFound, *AdminDeletePlatformLinkV2InternalServerError, error)
	AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, error)
	AdminPutUserRolesV2(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, *AdminPutUserRolesV2BadRequest, *AdminPutUserRolesV2Unauthorized, *AdminPutUserRolesV2Forbidden, *AdminPutUserRolesV2NotFound, error)
	AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, error)
	AdminCreateUserRolesV2(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, *AdminCreateUserRolesV2BadRequest, *AdminCreateUserRolesV2Unauthorized, *AdminCreateUserRolesV2Forbidden, *AdminCreateUserRolesV2NotFound, *AdminCreateUserRolesV2Conflict, error)
	AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, error)
	PublicGetCountryAgeRestriction(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, *PublicGetCountryAgeRestrictionUnauthorized, *PublicGetCountryAgeRestrictionNotFound, error)
	PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, error)
	PublicCreateUserV2(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, *PublicCreateUserV2BadRequest, *PublicCreateUserV2Unauthorized, *PublicCreateUserV2Forbidden, *PublicCreateUserV2Conflict, error)
	PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, error)
	PublicForgotPasswordV2(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, *PublicForgotPasswordV2BadRequest, *PublicForgotPasswordV2NotFound, *PublicForgotPasswordV2TooManyRequests, *PublicForgotPasswordV2InternalServerError, error)
	PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, error)
	PublicResetPasswordV2(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, *PublicResetPasswordV2BadRequest, *PublicResetPasswordV2Forbidden, *PublicResetPasswordV2NotFound, *PublicResetPasswordV2InternalServerError, error)
	PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, error)
	PublicGetUserByUserIDV2(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, *PublicGetUserByUserIDV2NotFound, *PublicGetUserByUserIDV2InternalServerError, error)
	PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, error)
	PublicUpdateUserV2(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, *PublicUpdateUserV2BadRequest, *PublicUpdateUserV2Unauthorized, *PublicUpdateUserV2NotFound, *PublicUpdateUserV2Conflict, *PublicUpdateUserV2InternalServerError, error)
	PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, error)
	PublicGetUserBan(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, *PublicGetUserBanUnauthorized, *PublicGetUserBanForbidden, *PublicGetUserBanNotFound, error)
	PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, error)
	PublicUpdatePasswordV2(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, *PublicUpdatePasswordV2BadRequest, *PublicUpdatePasswordV2Unauthorized, *PublicUpdatePasswordV2Forbidden, *PublicUpdatePasswordV2NotFound, *PublicUpdatePasswordV2InternalServerError, error)
	PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, error)
	GetListJusticePlatformAccounts(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, *GetListJusticePlatformAccountsBadRequest, *GetListJusticePlatformAccountsNotFound, error)
	GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, error)
	PublicPlatformLinkV2(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, *PublicPlatformLinkV2BadRequest, *PublicPlatformLinkV2Unauthorized, *PublicPlatformLinkV2Forbidden, *PublicPlatformLinkV2NotFound, *PublicPlatformLinkV2Conflict, *PublicPlatformLinkV2InternalServerError, error)
	PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, error)
	PublicDeletePlatformLinkV2(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, *PublicDeletePlatformLinkV2BadRequest, *PublicDeletePlatformLinkV2Unauthorized, *PublicDeletePlatformLinkV2Forbidden, *PublicDeletePlatformLinkV2NotFound, *PublicDeletePlatformLinkV2InternalServerError, error)
	PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, error)
	ListAdminsV3(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, *ListAdminsV3Unauthorized, *ListAdminsV3Forbidden, *ListAdminsV3InternalServerError, error)
	ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, error)
	AdminGetAgeRestrictionStatusV3(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, *AdminGetAgeRestrictionStatusV3BadRequest, *AdminGetAgeRestrictionStatusV3Unauthorized, *AdminGetAgeRestrictionStatusV3Forbidden, *AdminGetAgeRestrictionStatusV3NotFound, *AdminGetAgeRestrictionStatusV3InternalServerError, error)
	AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, error)
	AdminUpdateAgeRestrictionConfigV3(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, *AdminUpdateAgeRestrictionConfigV3BadRequest, *AdminUpdateAgeRestrictionConfigV3Unauthorized, *AdminUpdateAgeRestrictionConfigV3Forbidden, *AdminUpdateAgeRestrictionConfigV3InternalServerError, error)
	AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, error)
	AdminGetListCountryAgeRestrictionV3(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, *AdminGetListCountryAgeRestrictionV3BadRequest, *AdminGetListCountryAgeRestrictionV3Unauthorized, *AdminGetListCountryAgeRestrictionV3Forbidden, *AdminGetListCountryAgeRestrictionV3InternalServerError, error)
	AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, error)
	AdminUpdateCountryAgeRestrictionV3(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, *AdminUpdateCountryAgeRestrictionV3BadRequest, *AdminUpdateCountryAgeRestrictionV3Unauthorized, *AdminUpdateCountryAgeRestrictionV3Forbidden, *AdminUpdateCountryAgeRestrictionV3NotFound, *AdminUpdateCountryAgeRestrictionV3InternalServerError, error)
	AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, error)
	AdminGetUserByPlatformUserIDV3(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, *AdminGetUserByPlatformUserIDV3Unauthorized, *AdminGetUserByPlatformUserIDV3Forbidden, *AdminGetUserByPlatformUserIDV3NotFound, *AdminGetUserByPlatformUserIDV3InternalServerError, error)
	AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, error)
	GetAdminUsersByRoleIDV3(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, *GetAdminUsersByRoleIDV3BadRequest, *GetAdminUsersByRoleIDV3Unauthorized, *GetAdminUsersByRoleIDV3Forbidden, *GetAdminUsersByRoleIDV3NotFound, *GetAdminUsersByRoleIDV3InternalServerError, error)
	GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, error)
	AdminGetUserByEmailAddressV3(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, *AdminGetUserByEmailAddressV3BadRequest, *AdminGetUserByEmailAddressV3Unauthorized, *AdminGetUserByEmailAddressV3Forbidden, *AdminGetUserByEmailAddressV3NotFound, *AdminGetUserByEmailAddressV3InternalServerError, error)
	AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, error)
	AdminListUserIDByUserIDsV3(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, *AdminListUserIDByUserIDsV3BadRequest, *AdminListUserIDByUserIDsV3Unauthorized, *AdminListUserIDByUserIDsV3Forbidden, *AdminListUserIDByUserIDsV3InternalServerError, error)
	AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, error)
	AdminInviteUserV3(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, *AdminInviteUserV3BadRequest, *AdminInviteUserV3Unauthorized, *AdminInviteUserV3Forbidden, *AdminInviteUserV3NotFound, *AdminInviteUserV3Conflict, *AdminInviteUserV3UnprocessableEntity, *AdminInviteUserV3InternalServerError, error)
	AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, error)
	AdminQueryThirdPlatformLinkHistoryV3(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, *AdminQueryThirdPlatformLinkHistoryV3BadRequest, *AdminQueryThirdPlatformLinkHistoryV3Unauthorized, *AdminQueryThirdPlatformLinkHistoryV3Forbidden, *AdminQueryThirdPlatformLinkHistoryV3InternalServerError, error)
	AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, error)
	AdminListUsersV3(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, *AdminListUsersV3BadRequest, *AdminListUsersV3Unauthorized, *AdminListUsersV3Forbidden, *AdminListUsersV3InternalServerError, error)
	AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, error)
	AdminSearchUserV3(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, *AdminSearchUserV3BadRequest, *AdminSearchUserV3Unauthorized, *AdminSearchUserV3Forbidden, *AdminSearchUserV3InternalServerError, error)
	AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, error)
	AdminGetBulkUserByEmailAddressV3(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, *AdminGetBulkUserByEmailAddressV3BadRequest, *AdminGetBulkUserByEmailAddressV3Unauthorized, *AdminGetBulkUserByEmailAddressV3Forbidden, *AdminGetBulkUserByEmailAddressV3NotFound, *AdminGetBulkUserByEmailAddressV3InternalServerError, error)
	AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, error)
	AdminGetUserByUserIDV3(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, *AdminGetUserByUserIDV3BadRequest, *AdminGetUserByUserIDV3Unauthorized, *AdminGetUserByUserIDV3Forbidden, *AdminGetUserByUserIDV3NotFound, *AdminGetUserByUserIDV3InternalServerError, error)
	AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, error)
	AdminUpdateUserV3(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, *AdminUpdateUserV3BadRequest, *AdminUpdateUserV3Unauthorized, *AdminUpdateUserV3Forbidden, *AdminUpdateUserV3NotFound, *AdminUpdateUserV3Conflict, *AdminUpdateUserV3InternalServerError, error)
	AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, error)
	AdminGetUserBanV3(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, *AdminGetUserBanV3BadRequest, *AdminGetUserBanV3Unauthorized, *AdminGetUserBanV3Forbidden, *AdminGetUserBanV3NotFound, *AdminGetUserBanV3InternalServerError, error)
	AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, error)
	AdminBanUserV3(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, *AdminBanUserV3BadRequest, *AdminBanUserV3Unauthorized, *AdminBanUserV3Forbidden, *AdminBanUserV3NotFound, *AdminBanUserV3InternalServerError, error)
	AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, error)
	AdminUpdateUserBanV3(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, *AdminUpdateUserBanV3BadRequest, *AdminUpdateUserBanV3Unauthorized, *AdminUpdateUserBanV3Forbidden, *AdminUpdateUserBanV3NotFound, *AdminUpdateUserBanV3InternalServerError, error)
	AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, error)
	AdminSendVerificationCodeV3(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, *AdminSendVerificationCodeV3BadRequest, *AdminSendVerificationCodeV3Unauthorized, *AdminSendVerificationCodeV3Forbidden, *AdminSendVerificationCodeV3NotFound, *AdminSendVerificationCodeV3Conflict, *AdminSendVerificationCodeV3TooManyRequests, error)
	AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, error)
	AdminVerifyAccountV3(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, *AdminVerifyAccountV3BadRequest, *AdminVerifyAccountV3Unauthorized, *AdminVerifyAccountV3Forbidden, *AdminVerifyAccountV3NotFound, *AdminVerifyAccountV3InternalServerError, error)
	AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, error)
	GetUserVerificationCode(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, *GetUserVerificationCodeUnauthorized, *GetUserVerificationCodeForbidden, *GetUserVerificationCodeNotFound, *GetUserVerificationCodeInternalServerError, error)
	GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, error)
	AdminGetUserDeletionStatusV3(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, *AdminGetUserDeletionStatusV3Unauthorized, *AdminGetUserDeletionStatusV3Forbidden, *AdminGetUserDeletionStatusV3NotFound, *AdminGetUserDeletionStatusV3InternalServerError, error)
	AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, error)
	AdminUpdateUserDeletionStatusV3(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, *AdminUpdateUserDeletionStatusV3BadRequest, *AdminUpdateUserDeletionStatusV3Unauthorized, *AdminUpdateUserDeletionStatusV3Forbidden, *AdminUpdateUserDeletionStatusV3NotFound, *AdminUpdateUserDeletionStatusV3InternalServerError, error)
	AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, error)
	AdminUpgradeHeadlessAccountV3(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, *AdminUpgradeHeadlessAccountV3BadRequest, *AdminUpgradeHeadlessAccountV3Unauthorized, *AdminUpgradeHeadlessAccountV3Forbidden, *AdminUpgradeHeadlessAccountV3NotFound, *AdminUpgradeHeadlessAccountV3Conflict, *AdminUpgradeHeadlessAccountV3InternalServerError, error)
	AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, error)
	AdminDeleteUserInformationV3(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, *AdminDeleteUserInformationV3Unauthorized, *AdminDeleteUserInformationV3Forbidden, *AdminDeleteUserInformationV3NotFound, error)
	AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, error)
	AdminGetUserLoginHistoriesV3(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, *AdminGetUserLoginHistoriesV3Unauthorized, *AdminGetUserLoginHistoriesV3Forbidden, *AdminGetUserLoginHistoriesV3NotFound, error)
	AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, error)
	AdminResetPasswordV3(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, *AdminResetPasswordV3BadRequest, *AdminResetPasswordV3Unauthorized, *AdminResetPasswordV3Forbidden, *AdminResetPasswordV3NotFound, *AdminResetPasswordV3InternalServerError, error)
	AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, error)
	AdminUpdateUserPermissionV3(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, *AdminUpdateUserPermissionV3BadRequest, *AdminUpdateUserPermissionV3Unauthorized, *AdminUpdateUserPermissionV3Forbidden, *AdminUpdateUserPermissionV3NotFound, error)
	AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, error)
	AdminAddUserPermissionsV3(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, *AdminAddUserPermissionsV3BadRequest, *AdminAddUserPermissionsV3Unauthorized, *AdminAddUserPermissionsV3Forbidden, *AdminAddUserPermissionsV3NotFound, error)
	AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, error)
	AdminDeleteUserPermissionBulkV3(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, *AdminDeleteUserPermissionBulkV3BadRequest, *AdminDeleteUserPermissionBulkV3Unauthorized, *AdminDeleteUserPermissionBulkV3Forbidden, *AdminDeleteUserPermissionBulkV3NotFound, error)
	AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, error)
	AdminDeleteUserPermissionV3(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, *AdminDeleteUserPermissionV3BadRequest, *AdminDeleteUserPermissionV3Unauthorized, *AdminDeleteUserPermissionV3Forbidden, *AdminDeleteUserPermissionV3NotFound, error)
	AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, error)
	AdminGetUserPlatformAccountsV3(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, *AdminGetUserPlatformAccountsV3BadRequest, *AdminGetUserPlatformAccountsV3Unauthorized, *AdminGetUserPlatformAccountsV3Forbidden, *AdminGetUserPlatformAccountsV3NotFound, *AdminGetUserPlatformAccountsV3InternalServerError, error)
	AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, error)
	AdminGetListJusticePlatformAccounts(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, *AdminGetListJusticePlatformAccountsBadRequest, *AdminGetListJusticePlatformAccountsUnauthorized, *AdminGetListJusticePlatformAccountsForbidden, *AdminGetListJusticePlatformAccountsNotFound, *AdminGetListJusticePlatformAccountsInternalServerError, error)
	AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, error)
	AdminGetUserMapping(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, *AdminGetUserMappingBadRequest, *AdminGetUserMappingUnauthorized, *AdminGetUserMappingForbidden, *AdminGetUserMappingNotFound, error)
	AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, error)
	AdminCreateJusticeUser(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, *AdminCreateJusticeUserBadRequest, *AdminCreateJusticeUserUnauthorized, *AdminCreateJusticeUserForbidden, *AdminCreateJusticeUserNotFound, *AdminCreateJusticeUserInternalServerError, error)
	AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, error)
	AdminLinkPlatformAccount(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, *AdminLinkPlatformAccountBadRequest, *AdminLinkPlatformAccountUnauthorized, *AdminLinkPlatformAccountForbidden, *AdminLinkPlatformAccountInternalServerError, error)
	AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, error)
	AdminPlatformUnlinkV3(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, *AdminPlatformUnlinkV3BadRequest, *AdminPlatformUnlinkV3Unauthorized, *AdminPlatformUnlinkV3Forbidden, *AdminPlatformUnlinkV3NotFound, *AdminPlatformUnlinkV3InternalServerError, error)
	AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, error)
	AdminPlatformLinkV3(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, *AdminPlatformLinkV3BadRequest, *AdminPlatformLinkV3Unauthorized, *AdminPlatformLinkV3Forbidden, *AdminPlatformLinkV3NotFound, *AdminPlatformLinkV3Conflict, *AdminPlatformLinkV3InternalServerError, error)
	AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, error)
	AdminGetThirdPartyPlatformTokenLinkStatusV3(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest, *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized, *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden, *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound, *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError, error)
	AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, error)
	AdminDeleteUserRolesV3(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, *AdminDeleteUserRolesV3BadRequest, *AdminDeleteUserRolesV3Unauthorized, *AdminDeleteUserRolesV3Forbidden, *AdminDeleteUserRolesV3NotFound, error)
	AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, error)
	AdminSaveUserRoleV3(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, *AdminSaveUserRoleV3BadRequest, *AdminSaveUserRoleV3Unauthorized, *AdminSaveUserRoleV3Forbidden, *AdminSaveUserRoleV3NotFound, *AdminSaveUserRoleV3UnprocessableEntity, *AdminSaveUserRoleV3InternalServerError, error)
	AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, error)
	AdminAddUserRoleV3(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, *AdminAddUserRoleV3BadRequest, *AdminAddUserRoleV3Unauthorized, *AdminAddUserRoleV3Forbidden, *AdminAddUserRoleV3NotFound, *AdminAddUserRoleV3Conflict, *AdminAddUserRoleV3InternalServerError, error)
	AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, error)
	AdminDeleteUserRoleV3(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, *AdminDeleteUserRoleV3BadRequest, *AdminDeleteUserRoleV3Unauthorized, *AdminDeleteUserRoleV3Forbidden, *AdminDeleteUserRoleV3NotFound, *AdminDeleteUserRoleV3InternalServerError, error)
	AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, error)
	AdminUpdateUserStatusV3(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, *AdminUpdateUserStatusV3BadRequest, *AdminUpdateUserStatusV3Unauthorized, *AdminUpdateUserStatusV3Forbidden, *AdminUpdateUserStatusV3NotFound, *AdminUpdateUserStatusV3InternalServerError, error)
	AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, error)
	AdminVerifyUserWithoutVerificationCodeV3(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, *AdminVerifyUserWithoutVerificationCodeV3BadRequest, *AdminVerifyUserWithoutVerificationCodeV3Unauthorized, *AdminVerifyUserWithoutVerificationCodeV3Forbidden, *AdminVerifyUserWithoutVerificationCodeV3NotFound, *AdminVerifyUserWithoutVerificationCodeV3Conflict, *AdminVerifyUserWithoutVerificationCodeV3InternalServerError, error)
	AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, error)
	AdminGetMyUserV3(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, *AdminGetMyUserV3Unauthorized, *AdminGetMyUserV3InternalServerError, error)
	AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, error)
	PublicGetCountryAgeRestrictionV3(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, *PublicGetCountryAgeRestrictionV3Unauthorized, *PublicGetCountryAgeRestrictionV3NotFound, error)
	PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, error)
	PublicListUserIDByPlatformUserIDsV3(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, *PublicListUserIDByPlatformUserIDsV3BadRequest, *PublicListUserIDByPlatformUserIDsV3Unauthorized, *PublicListUserIDByPlatformUserIDsV3Forbidden, *PublicListUserIDByPlatformUserIDsV3InternalServerError, error)
	PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, error)
	PublicGetUserByPlatformUserIDV3(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, *PublicGetUserByPlatformUserIDV3Unauthorized, *PublicGetUserByPlatformUserIDV3Forbidden, *PublicGetUserByPlatformUserIDV3NotFound, *PublicGetUserByPlatformUserIDV3InternalServerError, error)
	PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, error)
	PublicGetAsyncStatus(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, *PublicGetAsyncStatusUnauthorized, *PublicGetAsyncStatusForbidden, *PublicGetAsyncStatusInternalServerError, error)
	PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, error)
	PublicSearchUserV3(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, *PublicSearchUserV3BadRequest, *PublicSearchUserV3Unauthorized, *PublicSearchUserV3NotFound, *PublicSearchUserV3InternalServerError, error)
	PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, error)
	PublicCreateUserV3(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, *PublicCreateUserV3BadRequest, *PublicCreateUserV3NotFound, *PublicCreateUserV3Conflict, *PublicCreateUserV3InternalServerError, error)
	PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, error)
	CheckUserAvailability(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, *CheckUserAvailabilityBadRequest, *CheckUserAvailabilityNotFound, *CheckUserAvailabilityUnprocessableEntity, error)
	CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, error)
	PublicBulkGetUsers(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, *PublicBulkGetUsersBadRequest, *PublicBulkGetUsersInternalServerError, error)
	PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, error)
	PublicSendRegistrationCode(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, *PublicSendRegistrationCodeBadRequest, *PublicSendRegistrationCodeConflict, error)
	PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, error)
	PublicVerifyRegistrationCode(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, *PublicVerifyRegistrationCodeBadRequest, error)
	PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, error)
	PublicForgotPasswordV3(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, *PublicForgotPasswordV3BadRequest, *PublicForgotPasswordV3NotFound, *PublicForgotPasswordV3TooManyRequests, error)
	PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, error)
	GetAdminInvitationV3(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, *GetAdminInvitationV3NotFound, *GetAdminInvitationV3InternalServerError, error)
	GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, error)
	CreateUserFromInvitationV3(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, *CreateUserFromInvitationV3BadRequest, *CreateUserFromInvitationV3NotFound, *CreateUserFromInvitationV3InternalServerError, error)
	CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, error)
	UpdateUserV3(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, *UpdateUserV3BadRequest, *UpdateUserV3Unauthorized, *UpdateUserV3Conflict, *UpdateUserV3InternalServerError, error)
	UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, error)
	PublicPartialUpdateUserV3(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, *PublicPartialUpdateUserV3BadRequest, *PublicPartialUpdateUserV3Unauthorized, *PublicPartialUpdateUserV3Conflict, *PublicPartialUpdateUserV3InternalServerError, error)
	PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, error)
	PublicSendVerificationCodeV3(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, *PublicSendVerificationCodeV3BadRequest, *PublicSendVerificationCodeV3Unauthorized, *PublicSendVerificationCodeV3NotFound, *PublicSendVerificationCodeV3Conflict, *PublicSendVerificationCodeV3TooManyRequests, error)
	PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, error)
	PublicUserVerificationV3(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, *PublicUserVerificationV3BadRequest, *PublicUserVerificationV3Unauthorized, *PublicUserVerificationV3Forbidden, *PublicUserVerificationV3Conflict, error)
	PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, error)
	PublicUpgradeHeadlessAccountV3(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, *PublicUpgradeHeadlessAccountV3BadRequest, *PublicUpgradeHeadlessAccountV3Unauthorized, *PublicUpgradeHeadlessAccountV3Forbidden, *PublicUpgradeHeadlessAccountV3NotFound, *PublicUpgradeHeadlessAccountV3Conflict, *PublicUpgradeHeadlessAccountV3InternalServerError, error)
	PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, error)
	PublicVerifyHeadlessAccountV3(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, *PublicVerifyHeadlessAccountV3BadRequest, *PublicVerifyHeadlessAccountV3Unauthorized, *PublicVerifyHeadlessAccountV3NotFound, *PublicVerifyHeadlessAccountV3Conflict, *PublicVerifyHeadlessAccountV3InternalServerError, error)
	PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, error)
	PublicUpdatePasswordV3(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, *PublicUpdatePasswordV3BadRequest, *PublicUpdatePasswordV3Unauthorized, *PublicUpdatePasswordV3InternalServerError, error)
	PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, error)
	PublicCreateJusticeUser(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, *PublicCreateJusticeUserBadRequest, *PublicCreateJusticeUserUnauthorized, *PublicCreateJusticeUserForbidden, *PublicCreateJusticeUserNotFound, *PublicCreateJusticeUserInternalServerError, error)
	PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, error)
	PublicPlatformLinkV3(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, *PublicPlatformLinkV3BadRequest, *PublicPlatformLinkV3Unauthorized, *PublicPlatformLinkV3NotFound, *PublicPlatformLinkV3Conflict, *PublicPlatformLinkV3InternalServerError, error)
	PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, error)
	PublicPlatformUnlinkV3(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, *PublicPlatformUnlinkV3BadRequest, *PublicPlatformUnlinkV3Unauthorized, *PublicPlatformUnlinkV3NotFound, *PublicPlatformUnlinkV3InternalServerError, error)
	PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, error)
	PublicPlatformUnlinkAllV3(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, *PublicPlatformUnlinkAllV3BadRequest, *PublicPlatformUnlinkAllV3Unauthorized, *PublicPlatformUnlinkAllV3NotFound, *PublicPlatformUnlinkAllV3InternalServerError, error)
	PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, error)
	PublicForcePlatformLinkV3(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, *PublicForcePlatformLinkV3BadRequest, *PublicForcePlatformLinkV3Unauthorized, *PublicForcePlatformLinkV3NotFound, *PublicForcePlatformLinkV3Conflict, *PublicForcePlatformLinkV3InternalServerError, error)
	PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, error)
	PublicWebLinkPlatform(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, *PublicWebLinkPlatformBadRequest, *PublicWebLinkPlatformUnauthorized, *PublicWebLinkPlatformNotFound, error)
	PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, error)
	PublicWebLinkPlatformEstablish(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error)
	PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error)
	ResetPasswordV3(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, *ResetPasswordV3BadRequest, *ResetPasswordV3Forbidden, *ResetPasswordV3NotFound, error)
	ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, error)
	PublicGetUserByUserIDV3(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, *PublicGetUserByUserIDV3BadRequest, *PublicGetUserByUserIDV3NotFound, *PublicGetUserByUserIDV3InternalServerError, error)
	PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, error)
	PublicGetUserBanHistoryV3(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, *PublicGetUserBanHistoryV3BadRequest, *PublicGetUserBanHistoryV3Unauthorized, *PublicGetUserBanHistoryV3Forbidden, *PublicGetUserBanHistoryV3NotFound, *PublicGetUserBanHistoryV3InternalServerError, error)
	PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, error)
	PublicListUserAllPlatformAccountsDistinctV3(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, *PublicListUserAllPlatformAccountsDistinctV3BadRequest, *PublicListUserAllPlatformAccountsDistinctV3Unauthorized, *PublicListUserAllPlatformAccountsDistinctV3Forbidden, *PublicListUserAllPlatformAccountsDistinctV3NotFound, *PublicListUserAllPlatformAccountsDistinctV3InternalServerError, error)
	PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, error)
	PublicGetUserInformationV3(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, *PublicGetUserInformationV3Unauthorized, *PublicGetUserInformationV3Forbidden, *PublicGetUserInformationV3NotFound, *PublicGetUserInformationV3InternalServerError, error)
	PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, error)
	PublicGetUserLoginHistoriesV3(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, *PublicGetUserLoginHistoriesV3Unauthorized, *PublicGetUserLoginHistoriesV3Forbidden, *PublicGetUserLoginHistoriesV3NotFound, error)
	PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, error)
	PublicGetUserPlatformAccountsV3(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, *PublicGetUserPlatformAccountsV3BadRequest, *PublicGetUserPlatformAccountsV3Unauthorized, *PublicGetUserPlatformAccountsV3Forbidden, *PublicGetUserPlatformAccountsV3NotFound, *PublicGetUserPlatformAccountsV3InternalServerError, error)
	PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, error)
	PublicListJusticePlatformAccountsV3(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, *PublicListJusticePlatformAccountsV3BadRequest, *PublicListJusticePlatformAccountsV3Unauthorized, *PublicListJusticePlatformAccountsV3Forbidden, *PublicListJusticePlatformAccountsV3NotFound, *PublicListJusticePlatformAccountsV3InternalServerError, error)
	PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, error)
	PublicLinkPlatformAccount(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, *PublicLinkPlatformAccountBadRequest, *PublicLinkPlatformAccountUnauthorized, *PublicLinkPlatformAccountForbidden, *PublicLinkPlatformAccountInternalServerError, error)
	PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, error)
	PublicForceLinkPlatformWithProgression(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, *PublicForceLinkPlatformWithProgressionBadRequest, *PublicForceLinkPlatformWithProgressionUnauthorized, *PublicForceLinkPlatformWithProgressionForbidden, *PublicForceLinkPlatformWithProgressionInternalServerError, error)
	PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, error)
	PublicGetPublisherUserV3(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, *PublicGetPublisherUserV3BadRequest, *PublicGetPublisherUserV3Unauthorized, *PublicGetPublisherUserV3Forbidden, *PublicGetPublisherUserV3NotFound, error)
	PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, error)
	PublicValidateUserByUserIDAndPasswordV3(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, *PublicValidateUserByUserIDAndPasswordV3BadRequest, *PublicValidateUserByUserIDAndPasswordV3Unauthorized, *PublicValidateUserByUserIDAndPasswordV3Forbidden, *PublicValidateUserByUserIDAndPasswordV3NotFound, *PublicValidateUserByUserIDAndPasswordV3InternalServerError, error)
	PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, error)
	PublicGetMyUserV3(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, *PublicGetMyUserV3Unauthorized, *PublicGetMyUserV3InternalServerError, error)
	PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, error)
	PublicGetLinkHeadlessAccountToMyAccountConflictV3(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest, *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized, *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden, *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError, error)
	PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, error)
	LinkHeadlessAccountToMyAccountV3(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, *LinkHeadlessAccountToMyAccountV3BadRequest, *LinkHeadlessAccountToMyAccountV3Unauthorized, *LinkHeadlessAccountToMyAccountV3Forbidden, *LinkHeadlessAccountToMyAccountV3InternalServerError, error)
	LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, error)
	PublicSendVerificationLinkV3(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, *PublicSendVerificationLinkV3BadRequest, *PublicSendVerificationLinkV3Unauthorized, *PublicSendVerificationLinkV3Conflict, *PublicSendVerificationLinkV3TooManyRequests, error)
	PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, error)
	PublicVerifyUserByLinkV3(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error)
	PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateUserShort instead.

CreateUser create user


## The endpoint is going to be deprecated


Endpoint migration guide




  *  Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [POST]

  *  Substitute endpoint: /iam/v4/public/namespaces/{namespace}/users [POST]



  *  Note:
     1. v3 & v4 introduce optional verification code

     2. format differenceï¼Pascal case => Camel case)








Required permission 'NAMESPACE:{namespace}:USER [CREATE]'.




Available Authentication Types:






  1.  EMAILPASSWD : an authentication type used for new user registration through email.


  2.  PHONEPASSWD : an authentication type used for new user registration through phone number.





Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) CreateUser(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, *CreateUserBadRequest, *CreateUserUnauthorized, *CreateUserForbidden, *CreateUserConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateUserBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateUserUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateUserForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateUserConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserShort create user


## The endpoint is going to be deprecated


Endpoint migration guide




  *  Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [POST]

  *  Substitute endpoint: /iam/v4/public/namespaces/{namespace}/users [POST]



  *  Note:
     1. v3 & v4 introduce optional verification code

     2. format differenceï¼Pascal case => Camel case)








Required permission 'NAMESPACE:{namespace}:USER [CREATE]'.




Available Authentication Types:






  1.  EMAILPASSWD : an authentication type used for new user registration through email.


  2.  PHONEPASSWD : an authentication type used for new user registration through phone number.





Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserCreated:
		return v, nil
	case *CreateUserBadRequest:
		return nil, v
	case *CreateUserUnauthorized:
		return nil, v
	case *CreateUserForbidden:
		return nil, v
	case *CreateUserConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAdminUsersByRoleIDShort instead.

GetAdminUsersByRoleID get admin users by roleid


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]



  * Note:
    difference in V3 response, format difference: Pascal case => Camel case







Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search admin users which have the roleId




Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status
*/
func (a *Client) GetAdminUsersByRoleID(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, *GetAdminUsersByRoleIDBadRequest, *GetAdminUsersByRoleIDUnauthorized, *GetAdminUsersByRoleIDForbidden, *GetAdminUsersByRoleIDNotFound, *GetAdminUsersByRoleIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAdminUsersByRoleIDNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAdminUsersByRoleIDInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminUsersByRoleIDShort get admin users by roleid


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]



  * Note:
    difference in V3 response, format difference: Pascal case => Camel case







Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search admin users which have the roleId




Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status
*/
func (a *Client) GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDOK:
		return v, nil
	case *GetAdminUsersByRoleIDBadRequest:
		return nil, v
	case *GetAdminUsersByRoleIDUnauthorized:
		return nil, v
	case *GetAdminUsersByRoleIDForbidden:
		return nil, v
	case *GetAdminUsersByRoleIDNotFound:
		return nil, v
	case *GetAdminUsersByRoleIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserByLoginIDShort instead.

GetUserByLoginID get user by login id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [GET]




Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUserByLoginID(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, *GetUserByLoginIDBadRequest, *GetUserByLoginIDNotFound, *GetUserByLoginIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByLoginIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByLoginID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byLoginId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByLoginIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserByLoginIDOK:
		return v, nil, nil, nil, nil

	case *GetUserByLoginIDBadRequest:
		return nil, v, nil, nil, nil

	case *GetUserByLoginIDNotFound:
		return nil, nil, v, nil, nil

	case *GetUserByLoginIDInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByLoginIDShort get user by login id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [GET]




Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByLoginIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByLoginID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byLoginId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByLoginIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByLoginIDOK:
		return v, nil
	case *GetUserByLoginIDBadRequest:
		return nil, v
	case *GetUserByLoginIDNotFound:
		return nil, v
	case *GetUserByLoginIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserByPlatformUserIDShort instead.

GetUserByPlatformUserID get user by platform user id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]

  * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]



  * Note:
    1. difference in V3 response, format difference: Pascal case => Camel case





Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUserByPlatformUserID(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, *GetUserByPlatformUserIDBadRequest, *GetUserByPlatformUserIDUnauthorized, *GetUserByPlatformUserIDForbidden, *GetUserByPlatformUserIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByPlatformUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByPlatformUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byPlatformUserID",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByPlatformUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserByPlatformUserIDOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserByPlatformUserIDBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetUserByPlatformUserIDUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetUserByPlatformUserIDForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetUserByPlatformUserIDNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByPlatformUserIDShort get user by platform user id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]

  * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]



  * Note:
    1. difference in V3 response, format difference: Pascal case => Camel case





Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByPlatformUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByPlatformUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byPlatformUserID",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByPlatformUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByPlatformUserIDOK:
		return v, nil
	case *GetUserByPlatformUserIDBadRequest:
		return nil, v
	case *GetUserByPlatformUserIDUnauthorized:
		return nil, v
	case *GetUserByPlatformUserIDForbidden:
		return nil, v
	case *GetUserByPlatformUserIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ForgotPasswordShort instead.

ForgotPassword request password reset code


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/forgot [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER [UPDATE]' or valid basic auth header"+
"

 Special note for publisher-game scenario: Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

"+
"

The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) ForgotPassword(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, *ForgotPasswordBadRequest, *ForgotPasswordUnauthorized, *ForgotPasswordForbidden, *ForgotPasswordNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewForgotPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ForgotPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ForgotPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ForgotPasswordNoContent:
		return v, nil, nil, nil, nil, nil

	case *ForgotPasswordBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ForgotPasswordUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ForgotPasswordForbidden:
		return nil, nil, nil, v, nil, nil

	case *ForgotPasswordNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ForgotPasswordShort request password reset code


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/forgot [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER [UPDATE]' or valid basic auth header"+
"

 Special note for publisher-game scenario: Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

"+
"

The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewForgotPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ForgotPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ForgotPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ForgotPasswordNoContent:
		return v, nil
	case *ForgotPasswordBadRequest:
		return nil, v
	case *ForgotPasswordUnauthorized:
		return nil, v
	case *ForgotPasswordForbidden:
		return nil, v
	case *ForgotPasswordNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUsersByLoginIdsShort instead.

GetUsersByLoginIds get a list of users by their login id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(query by email list): /iam/v3/public/namespaces/{namespace}/users/bulk/basic [POST]

  * Substitute endpoint(query by user id list): /iam/v3/admin/namespaces/{namespace}/users/search/bulk [POST]




Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUsersByLoginIds(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, *GetUsersByLoginIdsBadRequest, *GetUsersByLoginIdsUnauthorized, *GetUsersByLoginIdsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUsersByLoginIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUsersByLoginIds",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/listByLoginIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUsersByLoginIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUsersByLoginIdsOK:
		return v, nil, nil, nil, nil

	case *GetUsersByLoginIdsBadRequest:
		return nil, v, nil, nil, nil

	case *GetUsersByLoginIdsUnauthorized:
		return nil, nil, v, nil, nil

	case *GetUsersByLoginIdsForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUsersByLoginIdsShort get a list of users by their login id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(query by email list): /iam/v3/public/namespaces/{namespace}/users/bulk/basic [POST]

  * Substitute endpoint(query by user id list): /iam/v3/admin/namespaces/{namespace}/users/search/bulk [POST]




Required permission 'NAMESPACE:{namespace}:USER [READ]'
*/
func (a *Client) GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUsersByLoginIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUsersByLoginIds",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/listByLoginIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUsersByLoginIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUsersByLoginIdsOK:
		return v, nil
	case *GetUsersByLoginIdsBadRequest:
		return nil, v
	case *GetUsersByLoginIdsUnauthorized:
		return nil, v
	case *GetUsersByLoginIdsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetPasswordShort instead.

ResetPassword reset user password


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/reset [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER [UPDATE]' or valid basic auth header
*/
func (a *Client) ResetPassword(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, *ResetPasswordBadRequest, *ResetPasswordForbidden, *ResetPasswordNotFound, *ResetPasswordInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordNoContent:
		return v, nil, nil, nil, nil, nil

	case *ResetPasswordBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ResetPasswordForbidden:
		return nil, nil, v, nil, nil, nil

	case *ResetPasswordNotFound:
		return nil, nil, nil, v, nil, nil

	case *ResetPasswordInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPasswordShort reset user password


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/reset [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER [UPDATE]' or valid basic auth header
*/
func (a *Client) ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordNoContent:
		return v, nil
	case *ResetPasswordBadRequest:
		return nil, v
	case *ResetPasswordForbidden:
		return nil, v
	case *ResetPasswordNotFound:
		return nil, v
	case *ResetPasswordInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SearchUserShort instead.

SearchUser search users


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/search [GET]






Search all users that match the query on these fields: all login IDs (email address, phone number, and platform user id),
userID, display name, and on the specified namespace. If the query is not defined, then it searches all users on the specified namespace.
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:* [READ]'
*/
func (a *Client) SearchUser(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, *SearchUserBadRequest, *SearchUserUnauthorized, *SearchUserForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SearchUserOK:
		return v, nil, nil, nil, nil

	case *SearchUserBadRequest:
		return nil, v, nil, nil, nil

	case *SearchUserUnauthorized:
		return nil, nil, v, nil, nil

	case *SearchUserForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchUserShort search users


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/search [GET]






Search all users that match the query on these fields: all login IDs (email address, phone number, and platform user id),
userID, display name, and on the specified namespace. If the query is not defined, then it searches all users on the specified namespace.
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:* [READ]'
*/
func (a *Client) SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchUserOK:
		return v, nil
	case *SearchUserBadRequest:
		return nil, v
	case *SearchUserUnauthorized:
		return nil, v
	case *SearchUserForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserByUserIDShort instead.

GetUserByUserID get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/users/{userId} [GET]

  * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



  * Note:
    format difference in response: Pascal case => Camel case





Required permission 'NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) GetUserByUserID(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, *GetUserByUserIDNotFound, *GetUserByUserIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserByUserIDOK:
		return v, nil, nil, nil

	case *GetUserByUserIDNotFound:
		return nil, v, nil, nil

	case *GetUserByUserIDInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByUserIDShort get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/users/{userId} [GET]

  * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



  * Note:
    format difference in response: Pascal case => Camel case





Required permission 'NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByUserIDOK:
		return v, nil
	case *GetUserByUserIDNotFound:
		return nil, v
	case *GetUserByUserIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserShort instead.

UpdateUser update user


## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint([PUT]): /iam/v3/public/namespaces/{namespace}/users/me [PUT]

  * Substitute endpoint([PATCH]): /iam/v3/public/namespaces/{namespace}/users/me [PATCH]

  * Substitute endpoint([PATCH]): /iam/v4/public/namespaces/{namespace}/users/me [PATCH]



  * Note:
    1. Prefer [PATCH] if client support PATCH method

    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case







Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'

"+
"


This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"

Supported field {Country, DisplayName, LanguageTag}

"+
"

Country use ISO3166-1 alpha-2 two letter, e.g. US.

"+
"
 Several case of updating email address "+
"

  * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
"+
"
  * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
"+
"
  * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) UpdateUser(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, *UpdateUserBadRequest, *UpdateUserUnauthorized, *UpdateUserNotFound, *UpdateUserConflict, *UpdateUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateUserBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateUserUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateUserNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateUserConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateUserInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserShort update user


## The endpoint is going to be deprecated


Endpoint migration guide


    * Substitute endpoint([PUT]): /iam/v3/public/namespaces/{namespace}/users/me [PUT]

    * Substitute endpoint([PATCH]): /iam/v3/public/namespaces/{namespace}/users/me [PATCH]

    * Substitute endpoint([PATCH]): /iam/v4/public/namespaces/{namespace}/users/me [PATCH]



    * Note:
    1. Prefer [PATCH] if client support PATCH method

    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'

"+
"


This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"

Supported field {Country, DisplayName, LanguageTag}

"+
"

Country use ISO3166-1 alpha-2 two letter, e.g. US.

"+
"
 Several case of updating email address "+
"
    * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
"+
"
    * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
"+
"
    * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOK:
		return v, nil
	case *UpdateUserBadRequest:
		return nil, v
	case *UpdateUserUnauthorized:
		return nil, v
	case *UpdateUserNotFound:
		return nil, v
	case *UpdateUserConflict:
		return nil, v
	case *UpdateUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserShort instead.

DeleteUser delete user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUser(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, *DeleteUserUnauthorized, *DeleteUserForbidden, *DeleteUserNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUser",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserNoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserForbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserShort delete user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUser",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserNoContent:
		return v, nil
	case *DeleteUserUnauthorized:
		return nil, v
	case *DeleteUserForbidden:
		return nil, v
	case *DeleteUserNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BanUserShort instead.

BanUser ban a single user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.
*/
func (a *Client) BanUser(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, *BanUserBadRequest, *BanUserUnauthorized, *BanUserForbidden, *BanUserNotFound, *BanUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBanUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "BanUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BanUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BanUserCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *BanUserBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BanUserUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BanUserForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BanUserNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *BanUserInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BanUserShort ban a single user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.
*/
func (a *Client) BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBanUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "BanUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BanUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BanUserCreated:
		return v, nil
	case *BanUserBadRequest:
		return nil, v
	case *BanUserUnauthorized:
		return nil, v
	case *BanUserForbidden:
		return nil, v
	case *BanUserNotFound:
		return nil, v
	case *BanUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserBanHistoryShort instead.

GetUserBanHistory get user's bans history


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]




Required permissions 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'.
*/
func (a *Client) GetUserBanHistory(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, *GetUserBanHistoryUnauthorized, *GetUserBanHistoryForbidden, *GetUserBanHistoryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserBanHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserBanHistory",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserBanHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserBanHistoryOK:
		return v, nil, nil, nil, nil

	case *GetUserBanHistoryUnauthorized:
		return nil, v, nil, nil, nil

	case *GetUserBanHistoryForbidden:
		return nil, nil, v, nil, nil

	case *GetUserBanHistoryNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserBanHistoryShort get user's bans history


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]




Required permissions 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'.
*/
func (a *Client) GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserBanHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserBanHistory",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserBanHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserBanHistoryOK:
		return v, nil
	case *GetUserBanHistoryUnauthorized:
		return nil, v
	case *GetUserBanHistoryForbidden:
		return nil, v
	case *GetUserBanHistoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableUserBanShort instead.

DisableUserBan disable ban for a single user.


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.
"+
"
 Notes for using IAM in publisher - game studio scenarios
"+
"

The endpoint allows:

"+
"
      * The admin user in publisher namespace disables userâs ban in publisher namespace.
"+
"
      * The admin user in game namespace disables userâs ban in game namespace.
"+
"
      * The admin user in publisher namespace disables userâs ban in publisher namespace.
"+
"

Other scenarios are not supported and will return 403: Forbidden.
*/
func (a *Client) DisableUserBan(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, *DisableUserBanUnauthorized, *DisableUserBanForbidden, *DisableUserBanNotFound, *DisableUserBanInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DisableUserBanOK:
		return v, nil, nil, nil, nil, nil

	case *DisableUserBanUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DisableUserBanForbidden:
		return nil, nil, v, nil, nil, nil

	case *DisableUserBanNotFound:
		return nil, nil, nil, v, nil, nil

	case *DisableUserBanInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserBanShort disable ban for a single user.


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.
"+
"
 Notes for using IAM in publisher - game studio scenarios
"+
"

The endpoint allows:

"+
"
      * The admin user in publisher namespace disables userâs ban in publisher namespace.
"+
"
      * The admin user in game namespace disables userâs ban in game namespace.
"+
"
      * The admin user in publisher namespace disables userâs ban in publisher namespace.
"+
"

Other scenarios are not supported and will return 403: Forbidden.
*/
func (a *Client) DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserBanOK:
		return v, nil
	case *DisableUserBanUnauthorized:
		return nil, v
	case *DisableUserBanForbidden:
		return nil, v
	case *DisableUserBanNotFound:
		return nil, v
	case *DisableUserBanInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableUserBanShort instead.

EnableUserBan enable ban for a single user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]



Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.
*/
func (a *Client) EnableUserBan(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, *EnableUserBanUnauthorized, *EnableUserBanForbidden, *EnableUserBanNotFound, *EnableUserBanInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnableUserBanOK:
		return v, nil, nil, nil, nil, nil

	case *EnableUserBanUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *EnableUserBanForbidden:
		return nil, nil, v, nil, nil, nil

	case *EnableUserBanNotFound:
		return nil, nil, nil, v, nil, nil

	case *EnableUserBanInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserBanShort enable ban for a single user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]



Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.
*/
func (a *Client) EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserBanOK:
		return v, nil
	case *EnableUserBanUnauthorized:
		return nil, v
	case *EnableUserBanForbidden:
		return nil, v
	case *EnableUserBanNotFound:
		return nil, v
	case *EnableUserBanInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListCrossNamespaceAccountLinkShort instead.

ListCrossNamespaceAccountLink links existing account with another account in different namespace.


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
This means to protect account from second hand device usage.
*/
func (a *Client) ListCrossNamespaceAccountLink(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, *ListCrossNamespaceAccountLinkBadRequest, *ListCrossNamespaceAccountLinkUnauthorized, *ListCrossNamespaceAccountLinkForbidden, *ListCrossNamespaceAccountLinkNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCrossNamespaceAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListCrossNamespaceAccountLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/crosslink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCrossNamespaceAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListCrossNamespaceAccountLinkOK:
		return v, nil, nil, nil, nil, nil

	case *ListCrossNamespaceAccountLinkBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListCrossNamespaceAccountLinkUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListCrossNamespaceAccountLinkForbidden:
		return nil, nil, nil, v, nil, nil

	case *ListCrossNamespaceAccountLinkNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListCrossNamespaceAccountLinkShort links existing account with another account in different namespace.


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
This means to protect account from second hand device usage.
*/
func (a *Client) ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCrossNamespaceAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListCrossNamespaceAccountLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/crosslink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCrossNamespaceAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCrossNamespaceAccountLinkOK:
		return v, nil
	case *ListCrossNamespaceAccountLinkBadRequest:
		return nil, v
	case *ListCrossNamespaceAccountLinkUnauthorized:
		return nil, v
	case *ListCrossNamespaceAccountLinkForbidden:
		return nil, v
	case *ListCrossNamespaceAccountLinkNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableUserShort instead.

DisableUser disable a user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]





Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'




For Deletion Account purpose fill the reason with:




      * DeactivateAccount : if your deletion request comes from user


      * AdminDeactivateAccount : if your deletion request comes from admin
*/
func (a *Client) DisableUser(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, *DisableUserBadRequest, *DisableUserUnauthorized, *DisableUserForbidden, *DisableUserNotFound, *DisableUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DisableUserNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DisableUserBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DisableUserUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DisableUserForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DisableUserNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DisableUserInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserShort disable a user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]





Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'




For Deletion Account purpose fill the reason with:




      * DeactivateAccount : if your deletion request comes from user


      * AdminDeactivateAccount : if your deletion request comes from admin
*/
func (a *Client) DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserNoContent:
		return v, nil
	case *DisableUserBadRequest:
		return nil, v
	case *DisableUserUnauthorized:
		return nil, v
	case *DisableUserForbidden:
		return nil, v
	case *DisableUserNotFound:
		return nil, v
	case *DisableUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableUserShort instead.

EnableUser enable a user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]





Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'
*/
func (a *Client) EnableUser(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, *EnableUserUnauthorized, *EnableUserForbidden, *EnableUserNotFound, *EnableUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnableUserNoContent:
		return v, nil, nil, nil, nil, nil

	case *EnableUserUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *EnableUserForbidden:
		return nil, nil, v, nil, nil, nil

	case *EnableUserNotFound:
		return nil, nil, nil, v, nil, nil

	case *EnableUserInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserShort enable a user


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]





Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'
*/
func (a *Client) EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserNoContent:
		return v, nil
	case *EnableUserUnauthorized:
		return nil, v
	case *EnableUserForbidden:
		return nil, v
	case *EnableUserNotFound:
		return nil, v
	case *EnableUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserInformationShort instead.

GetUserInformation get user's information


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/information [GET]




Required permissions 'NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]'.
*/
func (a *Client) GetUserInformation(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, *GetUserInformationUnauthorized, *GetUserInformationForbidden, *GetUserInformationNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserInformation",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserInformationOK:
		return v, nil, nil, nil, nil

	case *GetUserInformationUnauthorized:
		return nil, v, nil, nil, nil

	case *GetUserInformationForbidden:
		return nil, nil, v, nil, nil

	case *GetUserInformationNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserInformationShort get user's information


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/information [GET]




Required permissions 'NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]'.
*/
func (a *Client) GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserInformation",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserInformationOK:
		return v, nil
	case *GetUserInformationUnauthorized:
		return nil, v
	case *GetUserInformationForbidden:
		return nil, v
	case *GetUserInformationNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserInformationShort instead.

DeleteUserInformation delete user's information


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]




Required permissions 'ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]'.
*/
func (a *Client) DeleteUserInformation(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, *DeleteUserInformationUnauthorized, *DeleteUserInformationForbidden, *DeleteUserInformationNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserInformation",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserInformationNoContent:
		return v, nil, nil, nil, nil

	case *DeleteUserInformationUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteUserInformationForbidden:
		return nil, nil, v, nil, nil

	case *DeleteUserInformationNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserInformationShort delete user's information


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]




Required permissions 'ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]'.
*/
func (a *Client) DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserInformation",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserInformationNoContent:
		return v, nil
	case *DeleteUserInformationUnauthorized:
		return nil, v
	case *DeleteUserInformationForbidden:
		return nil, v
	case *DeleteUserInformationNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserLoginHistoriesShort instead.

GetUserLoginHistories get user's login histories


## The endpoint is going to be deprecated


Endpoint migration guide


      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories [GET]

      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories [GET]




Required permission 'NAMESPACE:{namespace}:HISTORY:LOGIN:USER:{userId} [READ]'"+
"

Notes for this endpoint:

"+
"
      * This endpoint retrieve the first page of the data if 'after' and 'before' parameters is empty.
"+
"
      * The maximum value of the limit is 100 and the minimum value of the limit is 1.
"+
"
      * This endpoint retrieve the next page of the data if we provide 'after' parameters with valid Unix timestamp.
"+
"
      * This endpoint retrieve the previous page of the data if we provide 'before' parameter with valid data Unix timestamp.
*/
func (a *Client) GetUserLoginHistories(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, *GetUserLoginHistoriesUnauthorized, *GetUserLoginHistoriesForbidden, *GetUserLoginHistoriesNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLoginHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserLoginHistories",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLoginHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserLoginHistoriesOK:
		return v, nil, nil, nil, nil

	case *GetUserLoginHistoriesUnauthorized:
		return nil, v, nil, nil, nil

	case *GetUserLoginHistoriesForbidden:
		return nil, nil, v, nil, nil

	case *GetUserLoginHistoriesNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserLoginHistoriesShort get user's login histories


## The endpoint is going to be deprecated


Endpoint migration guide


          * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories [GET]

          * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories [GET]




Required permission 'NAMESPACE:{namespace}:HISTORY:LOGIN:USER:{userId} [READ]'"+
"

Notes for this endpoint:

"+
"
          * This endpoint retrieve the first page of the data if 'after' and 'before' parameters is empty.
"+
"
          * The maximum value of the limit is 100 and the minimum value of the limit is 1.
"+
"
          * This endpoint retrieve the next page of the data if we provide 'after' parameters with valid Unix timestamp.
"+
"
          * This endpoint retrieve the previous page of the data if we provide 'before' parameter with valid data Unix timestamp.
*/
func (a *Client) GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLoginHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserLoginHistories",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLoginHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserLoginHistoriesOK:
		return v, nil
	case *GetUserLoginHistoriesUnauthorized:
		return nil, v
	case *GetUserLoginHistoriesForbidden:
		return nil, v
	case *GetUserLoginHistoriesNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePasswordShort instead.

UpdatePassword update user password


## The endpoint is going to be deprecated


Endpoint migration guide


              * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/password [PUT]




Required permission 'NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) UpdatePassword(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, *UpdatePasswordBadRequest, *UpdatePasswordUnauthorized, *UpdatePasswordForbidden, *UpdatePasswordNotFound, *UpdatePasswordInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePassword",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePasswordNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdatePasswordBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdatePasswordUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdatePasswordForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdatePasswordNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdatePasswordInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePasswordShort update user password


## The endpoint is going to be deprecated


Endpoint migration guide


                * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/password [PUT]




Required permission 'NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePassword",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePasswordNoContent:
		return v, nil
	case *UpdatePasswordBadRequest:
		return nil, v
	case *UpdatePasswordUnauthorized:
		return nil, v
	case *UpdatePasswordForbidden:
		return nil, v
	case *UpdatePasswordNotFound:
		return nil, v
	case *UpdatePasswordInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveUserPermissionShort instead.

SaveUserPermission save user permissions


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]






Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will REPLACE user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                  1. Seconds: 0-59 * / , -


                  2. Minutes: 0-59 * / , -


                  3. Hours: 0-23 * / , -


                  4. Day of month: 1-31 * / , - L W


                  5. Month: 1-12 JAN-DEC * / , -


                  6. Day of week: 0-6 SUN-SAT * / , - L #


                  7. Year: 1970-2099 * / , -




Special characters:




                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) SaveUserPermission(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, *SaveUserPermissionBadRequest, *SaveUserPermissionUnauthorized, *SaveUserPermissionForbidden, *SaveUserPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveUserPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *SaveUserPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SaveUserPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SaveUserPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *SaveUserPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveUserPermissionShort save user permissions


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]






Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will REPLACE user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                  1. Seconds: 0-59 * / , -


                  2. Minutes: 0-59 * / , -


                  3. Hours: 0-23 * / , -


                  4. Day of month: 1-31 * / , - L W


                  5. Month: 1-12 JAN-DEC * / , -


                  6. Day of week: 0-6 SUN-SAT * / , - L #


                  7. Year: 1970-2099 * / , -




Special characters:




                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveUserPermissionNoContent:
		return v, nil
	case *SaveUserPermissionBadRequest:
		return nil, v
	case *SaveUserPermissionUnauthorized:
		return nil, v
	case *SaveUserPermissionForbidden:
		return nil, v
	case *SaveUserPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddUserPermissionShort instead.

AddUserPermission add user permission


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]






Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                  1. Seconds: 0-59 * / , -


                  2. Minutes: 0-59 * / , -


                  3. Hours: 0-23 * / , -


                  4. Day of month: 1-31 * / , - L W


                  5. Month: 1-12 JAN-DEC * / , -


                  6. Day of week: 0-6 SUN-SAT * / , - L #


                  7. Year: 1970-2099 * / , -




Special characters:




                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AddUserPermission(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, *AddUserPermissionBadRequest, *AddUserPermissionUnauthorized, *AddUserPermissionForbidden, *AddUserPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddUserPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *AddUserPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddUserPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddUserPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddUserPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserPermissionShort add user permission


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]






Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                  1. Seconds: 0-59 * / , -


                  2. Minutes: 0-59 * / , -


                  3. Hours: 0-23 * / , -


                  4. Day of month: 1-31 * / , - L W


                  5. Month: 1-12 JAN-DEC * / , -


                  6. Day of week: 0-6 SUN-SAT * / , - L #


                  7. Year: 1970-2099 * / , -




Special characters:




                  1. *: all values in the fields, e.g. * in seconds fields indicates every second


                  2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                  3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                  4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                  5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                  6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                  7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserPermissionNoContent:
		return v, nil
	case *AddUserPermissionBadRequest:
		return nil, v
	case *AddUserPermissionUnauthorized:
		return nil, v
	case *AddUserPermissionForbidden:
		return nil, v
	case *AddUserPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserPermissionShort instead.

DeleteUserPermission delete user permission


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} [DELETE]



Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUserPermission(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, *DeleteUserPermissionBadRequest, *DeleteUserPermissionUnauthorized, *DeleteUserPermissionForbidden, *DeleteUserPermissionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserPermissionNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserPermissionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserPermissionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserPermissionForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserPermissionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserPermissionShort delete user permission


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} [DELETE]



Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserPermissionNoContent:
		return v, nil
	case *DeleteUserPermissionBadRequest:
		return nil, v
	case *DeleteUserPermissionUnauthorized:
		return nil, v
	case *DeleteUserPermissionForbidden:
		return nil, v
	case *DeleteUserPermissionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserPlatformAccountsShort instead.

GetUserPlatformAccounts get platform accounts linked to the user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms [GET]

                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms [GET]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [READ]'.




## Justice Platform Account




The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.
*/
func (a *Client) GetUserPlatformAccounts(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, *GetUserPlatformAccountsBadRequest, *GetUserPlatformAccountsUnauthorized, *GetUserPlatformAccountsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserPlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserPlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserPlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserPlatformAccountsOK:
		return v, nil, nil, nil, nil

	case *GetUserPlatformAccountsBadRequest:
		return nil, v, nil, nil, nil

	case *GetUserPlatformAccountsUnauthorized:
		return nil, nil, v, nil, nil

	case *GetUserPlatformAccountsForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserPlatformAccountsShort get platform accounts linked to the user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms [GET]

                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms [GET]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [READ]'.




## Justice Platform Account




The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.
*/
func (a *Client) GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserPlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserPlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserPlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserPlatformAccountsOK:
		return v, nil
	case *GetUserPlatformAccountsBadRequest:
		return nil, v
	case *GetUserPlatformAccountsUnauthorized:
		return nil, v
	case *GetUserPlatformAccountsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserMappingShort instead.

GetUserMapping get user mapping


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]






This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ]'




This endpoint will support publisher access to game and game access to publisher




If targetNamespace filled with publisher namespace then this endpoint will return its game user id and game namespace




If targetNamespace filled with game namespace then this endpoint will return its publisher user id and publisher namespace
*/
func (a *Client) GetUserMapping(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, *GetUserMappingBadRequest, *GetUserMappingUnauthorized, *GetUserMappingForbidden, *GetUserMappingNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserMappingOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserMappingBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetUserMappingUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetUserMappingForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetUserMappingNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserMappingShort get user mapping


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]






This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ]'




This endpoint will support publisher access to game and game access to publisher




If targetNamespace filled with publisher namespace then this endpoint will return its game user id and game namespace




If targetNamespace filled with game namespace then this endpoint will return its publisher user id and publisher namespace
*/
func (a *Client) GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserMappingOK:
		return v, nil
	case *GetUserMappingBadRequest:
		return nil, v
	case *GetUserMappingUnauthorized:
		return nil, v
	case *GetUserMappingForbidden:
		return nil, v
	case *GetUserMappingNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserJusticePlatformAccountShort instead.

GetUserJusticePlatformAccount get the justice linked accounts on the designated namespace


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]




This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [UPDATE]'




The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going toÂ create and return the new Justice platform account.
The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update




### Read Justice Platform Account UserID




In order to read the Justice platform account UserID, it is required to have the permission: NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ] , otherwise the UserID is going to be censored and replaced with âRedactedâ text.
*/
func (a *Client) GetUserJusticePlatformAccount(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, *GetUserJusticePlatformAccountBadRequest, *GetUserJusticePlatformAccountUnauthorized, *GetUserJusticePlatformAccountForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserJusticePlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserJusticePlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserJusticePlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserJusticePlatformAccountOK:
		return v, nil, nil, nil, nil

	case *GetUserJusticePlatformAccountBadRequest:
		return nil, v, nil, nil, nil

	case *GetUserJusticePlatformAccountUnauthorized:
		return nil, nil, v, nil, nil

	case *GetUserJusticePlatformAccountForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserJusticePlatformAccountShort get the justice linked accounts on the designated namespace


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]




This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [UPDATE]'




The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going toÂ create and return the new Justice platform account.
The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update




### Read Justice Platform Account UserID




In order to read the Justice platform account UserID, it is required to have the permission: NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ] , otherwise the UserID is going to be censored and replaced with âRedactedâ text.
*/
func (a *Client) GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserJusticePlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserJusticePlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserJusticePlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserJusticePlatformAccountOK:
		return v, nil
	case *GetUserJusticePlatformAccountBadRequest:
		return nil, v
	case *GetUserJusticePlatformAccountUnauthorized:
		return nil, v
	case *GetUserJusticePlatformAccountForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformLinkShort instead.

PlatformLink link user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Prerequisite: Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                  * steam : The ticketâs value is the authentication code returned by Steam.


                  * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                  * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                  * google : The ticketâs value is the authorization code returned by Google OAuth


                  * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                  * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                  * android : The ticket's value is the Androidâs device ID


                  * ios : The ticket's value is the iOSâs device ID.


                  * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                  * device : Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                  * discord : The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PlatformLink(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, *PlatformLinkBadRequest, *PlatformLinkUnauthorized, *PlatformLinkForbidden, *PlatformLinkNotFound, *PlatformLinkConflict, *PlatformLinkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PlatformLinkNoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PlatformLinkBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PlatformLinkUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PlatformLinkForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PlatformLinkNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PlatformLinkConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PlatformLinkInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformLinkShort link user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Prerequisite: Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                  * steam : The ticketâs value is the authentication code returned by Steam.


                  * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                  * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                  * google : The ticketâs value is the authorization code returned by Google OAuth


                  * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                  * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                  * android : The ticket's value is the Androidâs device ID


                  * ios : The ticket's value is the iOSâs device ID.


                  * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                  * device : Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                  * discord : The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformLinkNoContent:
		return v, nil
	case *PlatformLinkBadRequest:
		return nil, v
	case *PlatformLinkUnauthorized:
		return nil, v
	case *PlatformLinkForbidden:
		return nil, v
	case *PlatformLinkNotFound:
		return nil, v
	case *PlatformLinkConflict:
		return nil, v
	case *PlatformLinkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PlatformUnlinkShort instead.

PlatformUnlink unlink user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]

                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]







Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.




## Supported platforms:




                  * steam


                  * steamopenid


                  * facebook


                  * google


                  * oculus


                  * twitch


                  * android


                  * ios


                  * device


                  * justice : A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.




Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Unlinking justice platform will enable password token grant and password update.
*/
func (a *Client) PlatformUnlink(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, *PlatformUnlinkBadRequest, *PlatformUnlinkUnauthorized, *PlatformUnlinkForbidden, *PlatformUnlinkNotFound, *PlatformUnlinkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformUnlinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformUnlink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformUnlinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PlatformUnlinkNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PlatformUnlinkBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PlatformUnlinkUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PlatformUnlinkForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PlatformUnlinkNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PlatformUnlinkInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformUnlinkShort unlink user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]

                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]







Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.




## Supported platforms:




                  * steam


                  * steamopenid


                  * facebook


                  * google


                  * oculus


                  * twitch


                  * android


                  * ios


                  * device


                  * justice : A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.




Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Unlinking justice platform will enable password token grant and password update.
*/
func (a *Client) PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformUnlinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformUnlink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformUnlinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformUnlinkNoContent:
		return v, nil
	case *PlatformUnlinkBadRequest:
		return nil, v
	case *PlatformUnlinkUnauthorized:
		return nil, v
	case *PlatformUnlinkForbidden:
		return nil, v
	case *PlatformUnlinkNotFound:
		return nil, v
	case *PlatformUnlinkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPublisherUserShort instead.

GetPublisherUser get publisher user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher [GET]





Required permissions 'NAMESPACE:{namespace}:PUBLISHER:USER:{userId} [READ].




Restriction:
Path Parameter namespace can be provided only with game namespace
*/
func (a *Client) GetPublisherUser(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, *GetPublisherUserBadRequest, *GetPublisherUserUnauthorized, *GetPublisherUserForbidden, *GetPublisherUserNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPublisherUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPublisherUserOK:
		return v, nil, nil, nil, nil, nil

	case *GetPublisherUserBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetPublisherUserUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetPublisherUserForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetPublisherUserNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublisherUserShort get publisher user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher [GET]





Required permissions 'NAMESPACE:{namespace}:PUBLISHER:USER:{userId} [READ].




Restriction:
Path Parameter namespace can be provided only with game namespace
*/
func (a *Client) GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPublisherUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublisherUserOK:
		return v, nil
	case *GetPublisherUserBadRequest:
		return nil, v
	case *GetPublisherUserUnauthorized:
		return nil, v
	case *GetPublisherUserForbidden:
		return nil, v
	case *GetPublisherUserNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveUserRolesShort instead.

SaveUserRoles save user roles


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]



Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) SaveUserRoles(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, *SaveUserRolesBadRequest, *SaveUserRolesUnauthorized, *SaveUserRolesForbidden, *SaveUserRolesNotFound, *SaveUserRolesConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserRolesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserRoles",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveUserRolesNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *SaveUserRolesBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *SaveUserRolesUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *SaveUserRolesForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *SaveUserRolesNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *SaveUserRolesConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveUserRolesShort save user roles


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]



Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserRolesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserRoles",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveUserRolesNoContent:
		return v, nil
	case *SaveUserRolesBadRequest:
		return nil, v
	case *SaveUserRolesUnauthorized:
		return nil, v
	case *SaveUserRolesForbidden:
		return nil, v
	case *SaveUserRolesNotFound:
		return nil, v
	case *SaveUserRolesConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddUserRoleShort instead.

AddUserRole add user role


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [POST]



Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AddUserRole(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, *AddUserRoleUnauthorized, *AddUserRoleForbidden, *AddUserRoleNotFound, *AddUserRoleConflict, *AddUserRoleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserRole",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddUserRoleNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AddUserRoleUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *AddUserRoleForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *AddUserRoleNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AddUserRoleConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AddUserRoleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserRoleShort add user role


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [POST]



Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserRole",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserRoleNoContent:
		return v, nil
	case *AddUserRoleUnauthorized:
		return nil, v
	case *AddUserRoleForbidden:
		return nil, v
	case *AddUserRoleNotFound:
		return nil, v
	case *AddUserRoleConflict:
		return nil, v
	case *AddUserRoleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteUserRoleShort instead.

DeleteUserRole delete user role


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [DELETE]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUserRole(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, *DeleteUserRoleUnauthorized, *DeleteUserRoleForbidden, *DeleteUserRoleNotFound, *DeleteUserRoleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserRole",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRoleNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteUserRoleUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteUserRoleForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteUserRoleNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteUserRoleInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRoleShort delete user role


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [DELETE]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]'
*/
func (a *Client) DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserRole",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRoleNoContent:
		return v, nil
	case *DeleteUserRoleUnauthorized:
		return nil, v
	case *DeleteUserRoleForbidden:
		return nil, v
	case *DeleteUserRoleNotFound:
		return nil, v
	case *DeleteUserRoleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpgradeHeadlessAccountShort instead.

UpgradeHeadlessAccount upgrade user account to full account (with email)


## The endpoint is going to be deprecated



Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/headless/verify [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'
*/
func (a *Client) UpgradeHeadlessAccount(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, *UpgradeHeadlessAccountUnauthorized, *UpgradeHeadlessAccountForbidden, *UpgradeHeadlessAccountConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "upgradeHeadlessAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountOK:
		return v, nil, nil, nil, nil

	case *UpgradeHeadlessAccountUnauthorized:
		return nil, v, nil, nil, nil

	case *UpgradeHeadlessAccountForbidden:
		return nil, nil, v, nil, nil

	case *UpgradeHeadlessAccountConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpgradeHeadlessAccountShort upgrade user account to full account (with email)


## The endpoint is going to be deprecated



Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/headless/verify [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'
*/
func (a *Client) UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "upgradeHeadlessAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountOK:
		return v, nil
	case *UpgradeHeadlessAccountUnauthorized:
		return nil, v
	case *UpgradeHeadlessAccountForbidden:
		return nil, v
	case *UpgradeHeadlessAccountConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpgradeHeadlessAccountWithVerificationCodeShort instead.

UpgradeHeadlessAccountWithVerificationCode upgrade headless account and automatically verified the email address if it is succeeded


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The endpoint upgrades a headless account by linking the headless account with the email address and the password. By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call. In order to get a verification code for the endpoint, please check the send verification code endpoint.
*/
func (a *Client) UpgradeHeadlessAccountWithVerificationCode(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, *UpgradeHeadlessAccountWithVerificationCodeBadRequest, *UpgradeHeadlessAccountWithVerificationCodeUnauthorized, *UpgradeHeadlessAccountWithVerificationCodeForbidden, *UpgradeHeadlessAccountWithVerificationCodeConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountWithVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpgradeHeadlessAccountWithVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountWithVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountWithVerificationCodeOK:
		return v, nil, nil, nil, nil, nil

	case *UpgradeHeadlessAccountWithVerificationCodeBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpgradeHeadlessAccountWithVerificationCodeUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpgradeHeadlessAccountWithVerificationCodeForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpgradeHeadlessAccountWithVerificationCodeConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpgradeHeadlessAccountWithVerificationCodeShort upgrade headless account and automatically verified the email address if it is succeeded


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The endpoint upgrades a headless account by linking the headless account with the email address and the password. By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call. In order to get a verification code for the endpoint, please check the send verification code endpoint.
*/
func (a *Client) UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountWithVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpgradeHeadlessAccountWithVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountWithVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountWithVerificationCodeOK:
		return v, nil
	case *UpgradeHeadlessAccountWithVerificationCodeBadRequest:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeUnauthorized:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeForbidden:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UserVerificationShort instead.

UserVerification redeem verification code sent to user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/code/verify [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Redeems a verification code sent to a user to verify the user's contact address is correct


Available ContactType : email or phone
*/
func (a *Client) UserVerification(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, *UserVerificationBadRequest, *UserVerificationUnauthorized, *UserVerificationForbidden, *UserVerificationNotFound, *UserVerificationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserVerificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UserVerification",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserVerificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UserVerificationNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UserVerificationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UserVerificationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UserVerificationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UserVerificationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UserVerificationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserVerificationShort redeem verification code sent to user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/code/verify [POST]






Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Redeems a verification code sent to a user to verify the user's contact address is correct


Available ContactType : email or phone
*/
func (a *Client) UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserVerificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UserVerification",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserVerificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserVerificationNoContent:
		return v, nil
	case *UserVerificationBadRequest:
		return nil, v
	case *UserVerificationUnauthorized:
		return nil, v
	case *UserVerificationForbidden:
		return nil, v
	case *UserVerificationNotFound:
		return nil, v
	case *UserVerificationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendVerificationCodeShort instead.

SendVerificationCode send verification code to user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The verification code is sent to either the phone number or email address. It depends on the LoginID's value.




Available contexts for use :




                  1. UserAccountRegistration

a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. It is the default context if the Context field is empty



                  2. UpdateEmailAddress

a context type used for verify user before updating email address.(Without email address verified checking)



                  3. upgradeHeadlessAccount

The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.
*/
func (a *Client) SendVerificationCode(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, *SendVerificationCodeBadRequest, *SendVerificationCodeUnauthorized, *SendVerificationCodeForbidden, *SendVerificationCodeNotFound, *SendVerificationCodeConflict, *SendVerificationCodeTooManyRequests, *SendVerificationCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SendVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verificationcode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendVerificationCodeNoContent:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *SendVerificationCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *SendVerificationCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *SendVerificationCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *SendVerificationCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *SendVerificationCodeConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *SendVerificationCodeTooManyRequests:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *SendVerificationCodeInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendVerificationCodeShort send verification code to user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]




Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The verification code is sent to either the phone number or email address. It depends on the LoginID's value.




Available contexts for use :




                  1. UserAccountRegistration

a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. It is the default context if the Context field is empty



                  2. UpdateEmailAddress

a context type used for verify user before updating email address.(Without email address verified checking)



                  3. upgradeHeadlessAccount

The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.
*/
func (a *Client) SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SendVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verificationcode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendVerificationCodeNoContent:
		return v, nil
	case *SendVerificationCodeBadRequest:
		return nil, v
	case *SendVerificationCodeUnauthorized:
		return nil, v
	case *SendVerificationCodeForbidden:
		return nil, v
	case *SendVerificationCodeNotFound:
		return nil, v
	case *SendVerificationCodeConflict:
		return nil, v
	case *SendVerificationCodeTooManyRequests:
		return nil, v
	case *SendVerificationCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAgeRestrictionStatusV2Short instead.

AdminGetAgeRestrictionStatusV2 get age restriction status


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions [GET]



                  * Note:
    difference in V3 response, format difference: Pascal case => Camel case





Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
*/
func (a *Client) AdminGetAgeRestrictionStatusV2(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, *AdminGetAgeRestrictionStatusV2Unauthorized, *AdminGetAgeRestrictionStatusV2Forbidden, *AdminGetAgeRestrictionStatusV2NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV2Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetAgeRestrictionStatusV2NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAgeRestrictionStatusV2Short get age restriction status


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions [GET]



                  * Note:
    difference in V3 response, format difference: Pascal case => Camel case





Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
*/
func (a *Client) AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV2OK:
		return v, nil
	case *AdminGetAgeRestrictionStatusV2Unauthorized:
		return nil, v
	case *AdminGetAgeRestrictionStatusV2Forbidden:
		return nil, v
	case *AdminGetAgeRestrictionStatusV2NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateAgeRestrictionConfigV2Short instead.

AdminUpdateAgeRestrictionConfigV2 update age restriction config value


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV2(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, *AdminUpdateAgeRestrictionConfigV2BadRequest, *AdminUpdateAgeRestrictionConfigV2Unauthorized, *AdminUpdateAgeRestrictionConfigV2Forbidden, *AdminUpdateAgeRestrictionConfigV2NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV2OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateAgeRestrictionConfigV2NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAgeRestrictionConfigV2Short update age restriction config value


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV2OK:
		return v, nil
	case *AdminUpdateAgeRestrictionConfigV2BadRequest:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2Unauthorized:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2Forbidden:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListCountryAgeRestrictionShort instead.

GetListCountryAgeRestriction get list country age restriction


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
*/
func (a *Client) GetListCountryAgeRestriction(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, *GetListCountryAgeRestrictionUnauthorized, *GetListCountryAgeRestrictionForbidden, *GetListCountryAgeRestrictionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListCountryAgeRestrictionOK:
		return v, nil, nil, nil, nil

	case *GetListCountryAgeRestrictionUnauthorized:
		return nil, v, nil, nil, nil

	case *GetListCountryAgeRestrictionForbidden:
		return nil, nil, v, nil, nil

	case *GetListCountryAgeRestrictionNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListCountryAgeRestrictionShort get list country age restriction


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
*/
func (a *Client) GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListCountryAgeRestrictionOK:
		return v, nil
	case *GetListCountryAgeRestrictionUnauthorized:
		return nil, v
	case *GetListCountryAgeRestrictionForbidden:
		return nil, v
	case *GetListCountryAgeRestrictionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCountryAgeRestrictionShort instead.

UpdateCountryAgeRestriction update country's age restriction


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
*/
func (a *Client) UpdateCountryAgeRestriction(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, *UpdateCountryAgeRestrictionBadRequest, *UpdateCountryAgeRestrictionUnauthorized, *UpdateCountryAgeRestrictionForbidden, *UpdateCountryAgeRestrictionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateCountryAgeRestriction",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryAgeRestrictionOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateCountryAgeRestrictionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateCountryAgeRestrictionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateCountryAgeRestrictionForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateCountryAgeRestrictionNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCountryAgeRestrictionShort update country's age restriction


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
*/
func (a *Client) UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateCountryAgeRestriction",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryAgeRestrictionOK:
		return v, nil
	case *UpdateCountryAgeRestrictionBadRequest:
		return nil, v
	case *UpdateCountryAgeRestrictionUnauthorized:
		return nil, v
	case *UpdateCountryAgeRestrictionForbidden:
		return nil, v
	case *UpdateCountryAgeRestrictionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSearchUsersV2Short instead.

AdminSearchUsersV2 search users


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/search [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'.
*/
func (a *Client) AdminSearchUsersV2(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, *AdminSearchUsersV2BadRequest, *AdminSearchUsersV2Unauthorized, *AdminSearchUsersV2Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUsersV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUsersV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUsersV2OK:
		return v, nil, nil, nil, nil

	case *AdminSearchUsersV2BadRequest:
		return nil, v, nil, nil, nil

	case *AdminSearchUsersV2Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminSearchUsersV2Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchUsersV2Short search users


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/search [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'.
*/
func (a *Client) AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUsersV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUsersV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUsersV2OK:
		return v, nil
	case *AdminSearchUsersV2BadRequest:
		return nil, v
	case *AdminSearchUsersV2Unauthorized:
		return nil, v
	case *AdminSearchUsersV2Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserByUserIDV2Short instead.

AdminGetUserByUserIDV2 get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) AdminGetUserByUserIDV2(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, *AdminGetUserByUserIDV2NotFound, *AdminGetUserByUserIDV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV2OK:
		return v, nil, nil, nil

	case *AdminGetUserByUserIDV2NotFound:
		return nil, v, nil, nil

	case *AdminGetUserByUserIDV2InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByUserIDV2Short get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV2OK:
		return v, nil
	case *AdminGetUserByUserIDV2NotFound:
		return nil, v
	case *AdminGetUserByUserIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserV2Short instead.

AdminUpdateUserV2 update user


## The endpoint is going to be deprecated


Endpoint migration guide


                  * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId} [PATCH]






Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'

"+
"


This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"

Supported field {Country, DisplayName, LanguageTag}

"+
"

Country use ISO3166-1 alpha-2 two letter, e.g. US.

"+
"
 Several case of updating email address "+
"
                  * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
"+
"
                  * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
"+
"
                  * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) AdminUpdateUserV2(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, *AdminUpdateUserV2BadRequest, *AdminUpdateUserV2Unauthorized, *AdminUpdateUserV2NotFound, *AdminUpdateUserV2Conflict, *AdminUpdateUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV2Short update user


## The endpoint is going to be deprecated


Endpoint migration guide


                    * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId} [PATCH]






Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'

"+
"


This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"

Supported field {Country, DisplayName, LanguageTag}

"+
"

Country use ISO3166-1 alpha-2 two letter, e.g. US.

"+
"
 Several case of updating email address "+
"
                    * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
"+
"
                    * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
"+
"
                    * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV2OK:
		return v, nil
	case *AdminUpdateUserV2BadRequest:
		return nil, v
	case *AdminUpdateUserV2Unauthorized:
		return nil, v
	case *AdminUpdateUserV2NotFound:
		return nil, v
	case *AdminUpdateUserV2Conflict:
		return nil, v
	case *AdminUpdateUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBanUserV2Short instead.

AdminBanUserV2 ban a single user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.
*/
func (a *Client) AdminBanUserV2(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, *AdminBanUserV2BadRequest, *AdminBanUserV2Unauthorized, *AdminBanUserV2Forbidden, *AdminBanUserV2NotFound, *AdminBanUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminBanUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminBanUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminBanUserV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminBanUserV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminBanUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserV2Short ban a single user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.
*/
func (a *Client) AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV2Created:
		return v, nil
	case *AdminBanUserV2BadRequest:
		return nil, v
	case *AdminBanUserV2Unauthorized:
		return nil, v
	case *AdminBanUserV2Forbidden:
		return nil, v
	case *AdminBanUserV2NotFound:
		return nil, v
	case *AdminBanUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserBanV2Short instead.

AdminGetUserBanV2 get user's bans


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'.
*/
func (a *Client) AdminGetUserBanV2(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, *AdminGetUserBanV2Unauthorized, *AdminGetUserBanV2Forbidden, *AdminGetUserBanV2NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV2OK:
		return v, nil, nil, nil, nil

	case *AdminGetUserBanV2Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetUserBanV2Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetUserBanV2NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanV2Short get user's bans


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]




Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'.
*/
func (a *Client) AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV2OK:
		return v, nil
	case *AdminGetUserBanV2Unauthorized:
		return nil, v
	case *AdminGetUserBanV2Forbidden:
		return nil, v
	case *AdminGetUserBanV2NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDisableUserV2Short instead.

AdminDisableUserV2 disable a user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]




Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'


For Deletion Account purpose fill the reason with:




                      * DeactivateAccount : if your deletion request comes from user


                      * AdminDeactivateAccount : if your deletion request comes from admin
*/
func (a *Client) AdminDisableUserV2(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, *AdminDisableUserV2BadRequest, *AdminDisableUserV2Unauthorized, *AdminDisableUserV2Forbidden, *AdminDisableUserV2NotFound, *AdminDisableUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDisableUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDisableUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDisableUserV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDisableUserV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDisableUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableUserV2Short disable a user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]




Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'


For Deletion Account purpose fill the reason with:




                      * DeactivateAccount : if your deletion request comes from user


                      * AdminDeactivateAccount : if your deletion request comes from admin
*/
func (a *Client) AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserV2NoContent:
		return v, nil
	case *AdminDisableUserV2BadRequest:
		return nil, v
	case *AdminDisableUserV2Unauthorized:
		return nil, v
	case *AdminDisableUserV2Forbidden:
		return nil, v
	case *AdminDisableUserV2NotFound:
		return nil, v
	case *AdminDisableUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminEnableUserV2Short instead.

AdminEnableUserV2 enable a user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]




Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminEnableUserV2(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, *AdminEnableUserV2Unauthorized, *AdminEnableUserV2Forbidden, *AdminEnableUserV2NotFound, *AdminEnableUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminEnableUserV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminEnableUserV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminEnableUserV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminEnableUserV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminEnableUserV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableUserV2Short enable a user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]




Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableUserV2NoContent:
		return v, nil
	case *AdminEnableUserV2Unauthorized:
		return nil, v
	case *AdminEnableUserV2Forbidden:
		return nil, v
	case *AdminEnableUserV2NotFound:
		return nil, v
	case *AdminEnableUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminResetPasswordV2Short instead.

AdminResetPasswordV2 update user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/password [PUT]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminResetPasswordV2(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, *AdminResetPasswordV2BadRequest, *AdminResetPasswordV2Unauthorized, *AdminResetPasswordV2Forbidden, *AdminResetPasswordV2NotFound, *AdminResetPasswordV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminResetPasswordV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminResetPasswordV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminResetPasswordV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminResetPasswordV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminResetPasswordV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPasswordV2Short update user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/password [PUT]




Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV2NoContent:
		return v, nil
	case *AdminResetPasswordV2BadRequest:
		return nil, v
	case *AdminResetPasswordV2Unauthorized:
		return nil, v
	case *AdminResetPasswordV2Forbidden:
		return nil, v
	case *AdminResetPasswordV2NotFound:
		return nil, v
	case *AdminResetPasswordV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlatformLinkV2Short instead.

AdminDeletePlatformLinkV2 delete the link of user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} [DELETE]






Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]'.




## Supported platforms:




                      * steam


                      * steamopenid


                      * facebook


                      * google


                      * oculus


                      * twitch


                      * android


                      * ios


                      * device


                      * discord




Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) AdminDeletePlatformLinkV2(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, *AdminDeletePlatformLinkV2BadRequest, *AdminDeletePlatformLinkV2Unauthorized, *AdminDeletePlatformLinkV2Forbidden, *AdminDeletePlatformLinkV2NotFound, *AdminDeletePlatformLinkV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformLinkV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeletePlatformLinkV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeletePlatformLinkV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeletePlatformLinkV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeletePlatformLinkV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeletePlatformLinkV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformLinkV2Short delete the link of user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} [DELETE]






Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]'.




## Supported platforms:




                      * steam


                      * steamopenid


                      * facebook


                      * google


                      * oculus


                      * twitch


                      * android


                      * ios


                      * device


                      * discord




Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformLinkV2NoContent:
		return v, nil
	case *AdminDeletePlatformLinkV2BadRequest:
		return nil, v
	case *AdminDeletePlatformLinkV2Unauthorized:
		return nil, v
	case *AdminDeletePlatformLinkV2Forbidden:
		return nil, v
	case *AdminDeletePlatformLinkV2NotFound:
		return nil, v
	case *AdminDeletePlatformLinkV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutUserRolesV2Short instead.

AdminPutUserRolesV2 update user roles, will replace all the existing roles


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminPutUserRolesV2(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, *AdminPutUserRolesV2BadRequest, *AdminPutUserRolesV2Unauthorized, *AdminPutUserRolesV2Forbidden, *AdminPutUserRolesV2NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPutUserRolesV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutUserRolesV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminPutUserRolesV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPutUserRolesV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPutUserRolesV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPutUserRolesV2NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutUserRolesV2Short update user roles, will replace all the existing roles


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPutUserRolesV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutUserRolesV2NoContent:
		return v, nil
	case *AdminPutUserRolesV2BadRequest:
		return nil, v
	case *AdminPutUserRolesV2Unauthorized:
		return nil, v
	case *AdminPutUserRolesV2Forbidden:
		return nil, v
	case *AdminPutUserRolesV2NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateUserRolesV2Short instead.

AdminCreateUserRolesV2 save user roles


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminCreateUserRolesV2(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, *AdminCreateUserRolesV2BadRequest, *AdminCreateUserRolesV2Unauthorized, *AdminCreateUserRolesV2Forbidden, *AdminCreateUserRolesV2NotFound, *AdminCreateUserRolesV2Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateUserRolesV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserRolesV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateUserRolesV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateUserRolesV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateUserRolesV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateUserRolesV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateUserRolesV2Conflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateUserRolesV2Short save user roles


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]




Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateUserRolesV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserRolesV2NoContent:
		return v, nil
	case *AdminCreateUserRolesV2BadRequest:
		return nil, v
	case *AdminCreateUserRolesV2Unauthorized:
		return nil, v
	case *AdminCreateUserRolesV2Forbidden:
		return nil, v
	case *AdminCreateUserRolesV2NotFound:
		return nil, v
	case *AdminCreateUserRolesV2Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCountryAgeRestrictionShort instead.

PublicGetCountryAgeRestriction public get age restriction by country code


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} [GET]
*/
func (a *Client) PublicGetCountryAgeRestriction(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, *PublicGetCountryAgeRestrictionUnauthorized, *PublicGetCountryAgeRestrictionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionOK:
		return v, nil, nil, nil

	case *PublicGetCountryAgeRestrictionUnauthorized:
		return nil, v, nil, nil

	case *PublicGetCountryAgeRestrictionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryAgeRestrictionShort public get age restriction by country code


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} [GET]
*/
func (a *Client) PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionOK:
		return v, nil
	case *PublicGetCountryAgeRestrictionUnauthorized:
		return nil, v
	case *PublicGetCountryAgeRestrictionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserV2Short instead.

PublicCreateUserV2 create user


## The endpoint is going to be deprecated


Endpoint migration guide


                      *  Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [POST]

                      *  Substitute endpoint: /iam/v4/public/namespaces/{namespace}/users [POST]



                      *  Note:
     1. v3 & v4 introduce optional verification code

     2. format differenceï¼Pascal case => Camel case)






Available Authentication Types:




                      1.  EMAILPASSWD : an authentication type used for new user registration through email.




Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) PublicCreateUserV2(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, *PublicCreateUserV2BadRequest, *PublicCreateUserV2Unauthorized, *PublicCreateUserV2Forbidden, *PublicCreateUserV2Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV2Created:
		return v, nil, nil, nil, nil, nil

	case *PublicCreateUserV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicCreateUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicCreateUserV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicCreateUserV2Conflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV2Short create user


## The endpoint is going to be deprecated


Endpoint migration guide


                      *  Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users [POST]

                      *  Substitute endpoint: /iam/v4/public/namespaces/{namespace}/users [POST]



                      *  Note:
     1. v3 & v4 introduce optional verification code

     2. format differenceï¼Pascal case => Camel case)






Available Authentication Types:




                      1.  EMAILPASSWD : an authentication type used for new user registration through email.




Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV2Created:
		return v, nil
	case *PublicCreateUserV2BadRequest:
		return nil, v
	case *PublicCreateUserV2Unauthorized:
		return nil, v
	case *PublicCreateUserV2Forbidden:
		return nil, v
	case *PublicCreateUserV2Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicForgotPasswordV2Short instead.

PublicForgotPasswordV2 request password reset code


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/forgot [POST]





Special note for publisher-game scenario: Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

"+
"

The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) PublicForgotPasswordV2(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, *PublicForgotPasswordV2BadRequest, *PublicForgotPasswordV2NotFound, *PublicForgotPasswordV2TooManyRequests, *PublicForgotPasswordV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicForgotPasswordV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicForgotPasswordV2NotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicForgotPasswordV2TooManyRequests:
		return nil, nil, nil, v, nil, nil

	case *PublicForgotPasswordV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForgotPasswordV2Short request password reset code


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/forgot [POST]





Special note for publisher-game scenario: Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

"+
"

The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV2NoContent:
		return v, nil
	case *PublicForgotPasswordV2BadRequest:
		return nil, v
	case *PublicForgotPasswordV2NotFound:
		return nil, v
	case *PublicForgotPasswordV2TooManyRequests:
		return nil, v
	case *PublicForgotPasswordV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicResetPasswordV2Short instead.

PublicResetPasswordV2 reset user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/reset [POST]
*/
func (a *Client) PublicResetPasswordV2(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, *PublicResetPasswordV2BadRequest, *PublicResetPasswordV2Forbidden, *PublicResetPasswordV2NotFound, *PublicResetPasswordV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicResetPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicResetPasswordV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicResetPasswordV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicResetPasswordV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicResetPasswordV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicResetPasswordV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicResetPasswordV2Short reset user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/reset [POST]
*/
func (a *Client) PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicResetPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicResetPasswordV2NoContent:
		return v, nil
	case *PublicResetPasswordV2BadRequest:
		return nil, v
	case *PublicResetPasswordV2Forbidden:
		return nil, v
	case *PublicResetPasswordV2NotFound:
		return nil, v
	case *PublicResetPasswordV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserByUserIDV2Short instead.

PublicGetUserByUserIDV2 get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/users/{userId} [GET]

                      * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



                      * Note:
    format difference in response: Pascal case => Camel case
*/
func (a *Client) PublicGetUserByUserIDV2(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, *PublicGetUserByUserIDV2NotFound, *PublicGetUserByUserIDV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIDV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV2OK:
		return v, nil, nil, nil

	case *PublicGetUserByUserIDV2NotFound:
		return nil, v, nil, nil

	case *PublicGetUserByUserIDV2InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByUserIDV2Short get user by user id


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint(Public): /iam/v3/public/namespaces/{namespace}/users/{userId} [GET]

                      * Substitute endpoint(Admin): /iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]



                      * Note:
    format difference in response: Pascal case => Camel case
*/
func (a *Client) PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIDV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV2OK:
		return v, nil
	case *PublicGetUserByUserIDV2NotFound:
		return nil, v
	case *PublicGetUserByUserIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdateUserV2Short instead.

PublicUpdateUserV2 update user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint([PUT]): /iam/v3/public/namespaces/{namespace}/users/me [PUT]

                      * Substitute endpoint([PATCH]): /iam/v3/public/namespaces/{namespace}/users/me [PATCH]

                      * Substitute endpoint([PATCH]): /iam/v4/public/namespaces/{namespace}/users/me [PATCH]



                      * Note:
    1. Prefer [PATCH] if client support PATCH method

    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case







This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"This endpoint require valid user access token to accessed.

Supported field {Country, DisplayName, LanguageTag}
*/
func (a *Client) PublicUpdateUserV2(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, *PublicUpdateUserV2BadRequest, *PublicUpdateUserV2Unauthorized, *PublicUpdateUserV2NotFound, *PublicUpdateUserV2Conflict, *PublicUpdateUserV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdateUserV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdateUserV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdateUserV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdateUserV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdateUserV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserV2Short update user


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint([PUT]): /iam/v3/public/namespaces/{namespace}/users/me [PUT]

                      * Substitute endpoint([PATCH]): /iam/v3/public/namespaces/{namespace}/users/me [PATCH]

                      * Substitute endpoint([PATCH]): /iam/v4/public/namespaces/{namespace}/users/me [PATCH]



                      * Note:
    1. Prefer [PATCH] if client support PATCH method

    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case







This Endpoint support update user based on given data. Single request can update single field or multi fields.

"+
"This endpoint require valid user access token to accessed.

Supported field {Country, DisplayName, LanguageTag}
*/
func (a *Client) PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV2OK:
		return v, nil
	case *PublicUpdateUserV2BadRequest:
		return nil, v
	case *PublicUpdateUserV2Unauthorized:
		return nil, v
	case *PublicUpdateUserV2NotFound:
		return nil, v
	case *PublicUpdateUserV2Conflict:
		return nil, v
	case *PublicUpdateUserV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserBanShort instead.

PublicGetUserBan get user's bans


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/bans [GET]
*/
func (a *Client) PublicGetUserBan(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, *PublicGetUserBanUnauthorized, *PublicGetUserBanForbidden, *PublicGetUserBanNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBan",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanOK:
		return v, nil, nil, nil, nil

	case *PublicGetUserBanUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetUserBanForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetUserBanNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserBanShort get user's bans


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/bans [GET]
*/
func (a *Client) PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBan",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanOK:
		return v, nil
	case *PublicGetUserBanUnauthorized:
		return nil, v
	case *PublicGetUserBanForbidden:
		return nil, v
	case *PublicGetUserBanNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdatePasswordV2Short instead.

PublicUpdatePasswordV2 update user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/password [PUT]




This endpoint need a valid user access token
*/
func (a *Client) PublicUpdatePasswordV2(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, *PublicUpdatePasswordV2BadRequest, *PublicUpdatePasswordV2Unauthorized, *PublicUpdatePasswordV2Forbidden, *PublicUpdatePasswordV2NotFound, *PublicUpdatePasswordV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdatePasswordV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdatePasswordV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdatePasswordV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdatePasswordV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdatePasswordV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePasswordV2Short update user password


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/password [PUT]




This endpoint need a valid user access token
*/
func (a *Client) PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV2NoContent:
		return v, nil
	case *PublicUpdatePasswordV2BadRequest:
		return nil, v
	case *PublicUpdatePasswordV2Unauthorized:
		return nil, v
	case *PublicUpdatePasswordV2Forbidden:
		return nil, v
	case *PublicUpdatePasswordV2NotFound:
		return nil, v
	case *PublicUpdatePasswordV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListJusticePlatformAccountsShort instead.

GetListJusticePlatformAccounts get user justice platform accounts


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice [GET]




This endpoint gets list justice platform account by providing publisher namespace and publisher userID.
*/
func (a *Client) GetListJusticePlatformAccounts(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, *GetListJusticePlatformAccountsBadRequest, *GetListJusticePlatformAccountsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListJusticePlatformAccountsOK:
		return v, nil, nil, nil

	case *GetListJusticePlatformAccountsBadRequest:
		return nil, v, nil, nil

	case *GetListJusticePlatformAccountsNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListJusticePlatformAccountsShort get user justice platform accounts


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice [GET]




This endpoint gets list justice platform account by providing publisher namespace and publisher userID.
*/
func (a *Client) GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListJusticePlatformAccountsOK:
		return v, nil
	case *GetListJusticePlatformAccountsBadRequest:
		return nil, v
	case *GetListJusticePlatformAccountsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPlatformLinkV2Short instead.

PublicPlatformLinkV2 link user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Prerequisite:
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                      * steam : The ticketâs value is the authentication code returned by Steam.


                      * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                      * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                      * google : The ticketâs value is the authorization code returned by Google OAuth


                      * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                      * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                      * android : The ticket's value is the Androidâs device ID


                      * ios : The ticket's value is the iOSâs device ID.


                      * device : Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                      * discord : The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PublicPlatformLinkV2(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, *PublicPlatformLinkV2BadRequest, *PublicPlatformLinkV2Unauthorized, *PublicPlatformLinkV2Forbidden, *PublicPlatformLinkV2NotFound, *PublicPlatformLinkV2Conflict, *PublicPlatformLinkV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV2NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicPlatformLinkV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicPlatformLinkV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicPlatformLinkV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicPlatformLinkV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicPlatformLinkV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicPlatformLinkV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformLinkV2Short link user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]






Prerequisite:
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                      * steam : The ticketâs value is the authentication code returned by Steam.


                      * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                      * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                      * google : The ticketâs value is the authorization code returned by Google OAuth


                      * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                      * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                      * android : The ticket's value is the Androidâs device ID


                      * ios : The ticket's value is the iOSâs device ID.


                      * device : Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                      * discord : The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV2NoContent:
		return v, nil
	case *PublicPlatformLinkV2BadRequest:
		return nil, v
	case *PublicPlatformLinkV2Unauthorized:
		return nil, v
	case *PublicPlatformLinkV2Forbidden:
		return nil, v
	case *PublicPlatformLinkV2NotFound:
		return nil, v
	case *PublicPlatformLinkV2Conflict:
		return nil, v
	case *PublicPlatformLinkV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeletePlatformLinkV2Short instead.

PublicDeletePlatformLinkV2 delete the link of user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]

                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]






## Supported platforms:




                      * steam


                      * steamopenid


                      * facebook


                      * google


                      * oculus


                      * twitch


                      * android


                      * ios


                      * device


                      * discord




Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) PublicDeletePlatformLinkV2(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, *PublicDeletePlatformLinkV2BadRequest, *PublicDeletePlatformLinkV2Unauthorized, *PublicDeletePlatformLinkV2Forbidden, *PublicDeletePlatformLinkV2NotFound, *PublicDeletePlatformLinkV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlatformLinkV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicDeletePlatformLinkV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicDeletePlatformLinkV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicDeletePlatformLinkV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicDeletePlatformLinkV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicDeletePlatformLinkV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlatformLinkV2Short delete the link of user's account with platform


## The endpoint is going to be deprecated


Endpoint migration guide


                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]

                      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]






## Supported platforms:




                      * steam


                      * steamopenid


                      * facebook


                      * google


                      * oculus


                      * twitch


                      * android


                      * ios


                      * device


                      * discord




Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlatformLinkV2NoContent:
		return v, nil
	case *PublicDeletePlatformLinkV2BadRequest:
		return nil, v
	case *PublicDeletePlatformLinkV2Unauthorized:
		return nil, v
	case *PublicDeletePlatformLinkV2Forbidden:
		return nil, v
	case *PublicDeletePlatformLinkV2NotFound:
		return nil, v
	case *PublicDeletePlatformLinkV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListAdminsV3Short instead.

ListAdminsV3 list user admins
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.

List all users that has admin role (role that has admin_role attribute set to true).

The endpoint will return all admin from all namespace when called from publisher namespace.
When not called from publisher namespace, the endpoint will return all admin from the path namespace.
*/
func (a *Client) ListAdminsV3(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, *ListAdminsV3Unauthorized, *ListAdminsV3Forbidden, *ListAdminsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAdminsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListAdminsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/admins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAdminsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListAdminsV3OK:
		return v, nil, nil, nil, nil

	case *ListAdminsV3Unauthorized:
		return nil, v, nil, nil, nil

	case *ListAdminsV3Forbidden:
		return nil, nil, v, nil, nil

	case *ListAdminsV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAdminsV3Short list user admins
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.

List all users that has admin role (role that has admin_role attribute set to true).

The endpoint will return all admin from all namespace when called from publisher namespace.
When not called from publisher namespace, the endpoint will return all admin from the path namespace.
*/
func (a *Client) ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAdminsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListAdminsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/admins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAdminsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAdminsV3OK:
		return v, nil
	case *ListAdminsV3Unauthorized:
		return nil, v
	case *ListAdminsV3Forbidden:
		return nil, v
	case *ListAdminsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAgeRestrictionStatusV3Short instead.

AdminGetAgeRestrictionStatusV3 get age restriction status
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
action code: 10138
*/
func (a *Client) AdminGetAgeRestrictionStatusV3(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, *AdminGetAgeRestrictionStatusV3BadRequest, *AdminGetAgeRestrictionStatusV3Unauthorized, *AdminGetAgeRestrictionStatusV3Forbidden, *AdminGetAgeRestrictionStatusV3NotFound, *AdminGetAgeRestrictionStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetAgeRestrictionStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetAgeRestrictionStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAgeRestrictionStatusV3Short get age restriction status
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]'
action code: 10138
*/
func (a *Client) AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV3OK:
		return v, nil
	case *AdminGetAgeRestrictionStatusV3BadRequest:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3Unauthorized:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3Forbidden:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3NotFound:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateAgeRestrictionConfigV3Short instead.

AdminUpdateAgeRestrictionConfigV3 update age restriction config value
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
action code: 10122
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV3(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, *AdminUpdateAgeRestrictionConfigV3BadRequest, *AdminUpdateAgeRestrictionConfigV3Unauthorized, *AdminUpdateAgeRestrictionConfigV3Forbidden, *AdminUpdateAgeRestrictionConfigV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateAgeRestrictionConfigV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateAgeRestrictionConfigV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAgeRestrictionConfigV3Short update age restriction config value
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
action code: 10122
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV3OK:
		return v, nil
	case *AdminUpdateAgeRestrictionConfigV3BadRequest:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3Unauthorized:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3Forbidden:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetListCountryAgeRestrictionV3Short instead.

AdminGetListCountryAgeRestrictionV3 get list country age restriction
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]
action code : 10139
*/
func (a *Client) AdminGetListCountryAgeRestrictionV3(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, *AdminGetListCountryAgeRestrictionV3BadRequest, *AdminGetListCountryAgeRestrictionV3Unauthorized, *AdminGetListCountryAgeRestrictionV3Forbidden, *AdminGetListCountryAgeRestrictionV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListCountryAgeRestrictionV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetListCountryAgeRestrictionV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetListCountryAgeRestrictionV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetListCountryAgeRestrictionV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetListCountryAgeRestrictionV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListCountryAgeRestrictionV3Short get list country age restriction
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [READ]
action code : 10139
*/
func (a *Client) AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListCountryAgeRestrictionV3OK:
		return v, nil
	case *AdminGetListCountryAgeRestrictionV3BadRequest:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3Forbidden:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateCountryAgeRestrictionV3Short instead.

AdminUpdateCountryAgeRestrictionV3 update country's age restriction
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
action code: 10123
*/
func (a *Client) AdminUpdateCountryAgeRestrictionV3(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, *AdminUpdateCountryAgeRestrictionV3BadRequest, *AdminUpdateCountryAgeRestrictionV3Unauthorized, *AdminUpdateCountryAgeRestrictionV3Forbidden, *AdminUpdateCountryAgeRestrictionV3NotFound, *AdminUpdateCountryAgeRestrictionV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateCountryAgeRestrictionV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateCountryAgeRestrictionV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateCountryAgeRestrictionV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateCountryAgeRestrictionV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateCountryAgeRestrictionV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateCountryAgeRestrictionV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateCountryAgeRestrictionV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateCountryAgeRestrictionV3Short update country's age restriction
Required permission 'ADMIN:NAMESPACE:{namespace}:AGERESTRICTION [UPDATE]'
action code: 10123
*/
func (a *Client) AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateCountryAgeRestrictionV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateCountryAgeRestrictionV3OK:
		return v, nil
	case *AdminUpdateCountryAgeRestrictionV3BadRequest:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3Forbidden:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3NotFound:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserByPlatformUserIDV3Short instead.

AdminGetUserByPlatformUserIDV3 admin get user by platform user id
Get User By Platform User ID

This endpoint return user information by given platform ID and platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) AdminGetUserByPlatformUserIDV3(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, *AdminGetUserByPlatformUserIDV3Unauthorized, *AdminGetUserByPlatformUserIDV3Forbidden, *AdminGetUserByPlatformUserIDV3NotFound, *AdminGetUserByPlatformUserIDV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByPlatformUserIDV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetUserByPlatformUserIDV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetUserByPlatformUserIDV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetUserByPlatformUserIDV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetUserByPlatformUserIDV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByPlatformUserIDV3Short admin get user by platform user id
Get User By Platform User ID

This endpoint return user information by given platform ID and platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByPlatformUserIDV3OK:
		return v, nil
	case *AdminGetUserByPlatformUserIDV3Unauthorized:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3Forbidden:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3NotFound:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAdminUsersByRoleIDV3Short instead.

GetAdminUsersByRoleIDV3 get admin users by roleid


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search admin users which have the roleId




Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status



action code : 10140
*/
func (a *Client) GetAdminUsersByRoleIDV3(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, *GetAdminUsersByRoleIDV3BadRequest, *GetAdminUsersByRoleIDV3Unauthorized, *GetAdminUsersByRoleIDV3Forbidden, *GetAdminUsersByRoleIDV3NotFound, *GetAdminUsersByRoleIDV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAdminUsersByRoleIDV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAdminUsersByRoleIDV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAdminUsersByRoleIDV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminUsersByRoleIDV3Short get admin users by roleid


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search admin users which have the roleId




Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status



action code : 10140
*/
func (a *Client) GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDV3OK:
		return v, nil
	case *GetAdminUsersByRoleIDV3BadRequest:
		return nil, v
	case *GetAdminUsersByRoleIDV3Unauthorized:
		return nil, v
	case *GetAdminUsersByRoleIDV3Forbidden:
		return nil, v
	case *GetAdminUsersByRoleIDV3NotFound:
		return nil, v
	case *GetAdminUsersByRoleIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserByEmailAddressV3Short instead.

AdminGetUserByEmailAddressV3 get user by email address


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search user who owns the given email address



action code : 10132
*/
func (a *Client) AdminGetUserByEmailAddressV3(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, *AdminGetUserByEmailAddressV3BadRequest, *AdminGetUserByEmailAddressV3Unauthorized, *AdminGetUserByEmailAddressV3Forbidden, *AdminGetUserByEmailAddressV3NotFound, *AdminGetUserByEmailAddressV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByEmailAddressV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByEmailAddressV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetUserByEmailAddressV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetUserByEmailAddressV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetUserByEmailAddressV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetUserByEmailAddressV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetUserByEmailAddressV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByEmailAddressV3Short get user by email address


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search user who owns the given email address



action code : 10132
*/
func (a *Client) AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByEmailAddressV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByEmailAddressV3OK:
		return v, nil
	case *AdminGetUserByEmailAddressV3BadRequest:
		return nil, v
	case *AdminGetUserByEmailAddressV3Unauthorized:
		return nil, v
	case *AdminGetUserByEmailAddressV3Forbidden:
		return nil, v
	case *AdminGetUserByEmailAddressV3NotFound:
		return nil, v
	case *AdminGetUserByEmailAddressV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListUserIDByUserIDsV3Short instead.

AdminListUserIDByUserIDsV3 list user by user id
List User By User ID
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.
This endpoint intended to list user information from the given list of userID and namespace
*/
func (a *Client) AdminListUserIDByUserIDsV3(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, *AdminListUserIDByUserIDsV3BadRequest, *AdminListUserIDByUserIDsV3Unauthorized, *AdminListUserIDByUserIDsV3Forbidden, *AdminListUserIDByUserIDsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserIDByUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserIDByUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserIDByUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListUserIDByUserIDsV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListUserIDByUserIDsV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListUserIDByUserIDsV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListUserIDByUserIDsV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListUserIDByUserIDsV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserIDByUserIDsV3Short list user by user id
List User By User ID
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.
This endpoint intended to list user information from the given list of userID and namespace
*/
func (a *Client) AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserIDByUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserIDByUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserIDByUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserIDByUserIDsV3OK:
		return v, nil
	case *AdminListUserIDByUserIDsV3BadRequest:
		return nil, v
	case *AdminListUserIDByUserIDsV3Unauthorized:
		return nil, v
	case *AdminListUserIDByUserIDsV3Forbidden:
		return nil, v
	case *AdminListUserIDByUserIDsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminInviteUserV3Short instead.

AdminInviteUserV3 invite user
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace.
Substitute the namespace in path parameter to desired role's namespace'. An admin user can only
assign role to namespaces that the admin user has the required permission.
Role is optional, if not specified then it will only assign User role

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserV3(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, *AdminInviteUserV3BadRequest, *AdminInviteUserV3Unauthorized, *AdminInviteUserV3Forbidden, *AdminInviteUserV3NotFound, *AdminInviteUserV3Conflict, *AdminInviteUserV3UnprocessableEntity, *AdminInviteUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV3Created:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *AdminInviteUserV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *AdminInviteUserV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *AdminInviteUserV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *AdminInviteUserV3UnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *AdminInviteUserV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserV3Short invite user
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:INVITE [CREATE]

Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace.
Substitute the namespace in path parameter to desired role's namespace'. An admin user can only
assign role to namespaces that the admin user has the required permission.
Role is optional, if not specified then it will only assign User role

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV3Created:
		return v, nil
	case *AdminInviteUserV3BadRequest:
		return nil, v
	case *AdminInviteUserV3Unauthorized:
		return nil, v
	case *AdminInviteUserV3Forbidden:
		return nil, v
	case *AdminInviteUserV3NotFound:
		return nil, v
	case *AdminInviteUserV3Conflict:
		return nil, v
	case *AdminInviteUserV3UnprocessableEntity:
		return nil, v
	case *AdminInviteUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminQueryThirdPlatformLinkHistoryV3Short instead.

AdminQueryThirdPlatformLinkHistoryV3 search linking history of the query platform with platform user id


Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]



                    * if limit is not defined, The default limit is 100
*/
func (a *Client) AdminQueryThirdPlatformLinkHistoryV3(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, *AdminQueryThirdPlatformLinkHistoryV3BadRequest, *AdminQueryThirdPlatformLinkHistoryV3Unauthorized, *AdminQueryThirdPlatformLinkHistoryV3Forbidden, *AdminQueryThirdPlatformLinkHistoryV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryThirdPlatformLinkHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminQueryThirdPlatformLinkHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/linkhistories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryThirdPlatformLinkHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryThirdPlatformLinkHistoryV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryThirdPlatformLinkHistoryV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryThirdPlatformLinkHistoryV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryThirdPlatformLinkHistoryV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryThirdPlatformLinkHistoryV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryThirdPlatformLinkHistoryV3Short search linking history of the query platform with platform user id


Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]



                  * if limit is not defined, The default limit is 100
*/
func (a *Client) AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryThirdPlatformLinkHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminQueryThirdPlatformLinkHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/linkhistories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryThirdPlatformLinkHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryThirdPlatformLinkHistoryV3OK:
		return v, nil
	case *AdminQueryThirdPlatformLinkHistoryV3BadRequest:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3Unauthorized:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3Forbidden:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListUsersV3Short instead.

AdminListUsersV3 admin list users v3
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.

Returns list of users ID and namespace with their Justice platform account, under a namespace. If user
doesn't have Justice platform account, the linkedPlatforms will be empty array.'
*/
func (a *Client) AdminListUsersV3(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, *AdminListUsersV3BadRequest, *AdminListUsersV3Unauthorized, *AdminListUsersV3Forbidden, *AdminListUsersV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListUsersV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListUsersV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListUsersV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListUsersV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUsersV3Short admin list users v3
This endpoint requires ADMIN:NAMESPACE:{namespace}:USER [READ] permission.

Returns list of users ID and namespace with their Justice platform account, under a namespace. If user
doesn't have Justice platform account, the linkedPlatforms will be empty array.'
*/
func (a *Client) AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersV3OK:
		return v, nil
	case *AdminListUsersV3BadRequest:
		return nil, v
	case *AdminListUsersV3Unauthorized:
		return nil, v
	case *AdminListUsersV3Forbidden:
		return nil, v
	case *AdminListUsersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSearchUserV3Short instead.

AdminSearchUserV3 search user


Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]




Endpoint behavior :

                  * by default this endpoint searches all users on the specified namespace


                  * if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query


                  * if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range


                  * if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range


                  * if startDate parameter is defined, endpoint will search users that created start from the defined date


                  * if endDate parameter is defined, endpoint will search users that created until the defined date


                  * if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to


                  * if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName


                  * if limit is not defined, The default limit is 100






In multi tenant mode :


                  * if super admin search in super admin namespace, the result will be all game admin user


                  * if super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace


                  * if super admin search in game namespace, the result will be all game admin users and players under the game namespace


                  * if game admin search in their game studio namespace, the result will be all game admin user in the studio namespace


                  * if game admin search in their game namespace, the result will be all player in the game namespace





action code : 10133
*/
func (a *Client) AdminSearchUserV3(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, *AdminSearchUserV3BadRequest, *AdminSearchUserV3Unauthorized, *AdminSearchUserV3Forbidden, *AdminSearchUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUserV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminSearchUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSearchUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSearchUserV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSearchUserV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchUserV3Short search user


Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]




Endpoint behavior :

                  * by default this endpoint searches all users on the specified namespace


                  * if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query


                  * if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range


                  * if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range


                  * if startDate parameter is defined, endpoint will search users that created start from the defined date


                  * if endDate parameter is defined, endpoint will search users that created until the defined date


                  * if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to


                  * if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName


                  * if limit is not defined, The default limit is 100






In multi tenant mode :


                  * if super admin search in super admin namespace, the result will be all game admin user


                  * if super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace


                  * if super admin search in game namespace, the result will be all game admin users and players under the game namespace


                  * if game admin search in their game studio namespace, the result will be all game admin user in the studio namespace


                  * if game admin search in their game namespace, the result will be all player in the game namespace





action code : 10133
*/
func (a *Client) AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUserV3OK:
		return v, nil
	case *AdminSearchUserV3BadRequest:
		return nil, v
	case *AdminSearchUserV3Unauthorized:
		return nil, v
	case *AdminSearchUserV3Forbidden:
		return nil, v
	case *AdminSearchUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetBulkUserByEmailAddressV3Short instead.

AdminGetBulkUserByEmailAddressV3 get bulk user by email address


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search user by the list of email addresses



action code : 10132
*/
func (a *Client) AdminGetBulkUserByEmailAddressV3(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, *AdminGetBulkUserByEmailAddressV3BadRequest, *AdminGetBulkUserByEmailAddressV3Unauthorized, *AdminGetBulkUserByEmailAddressV3Forbidden, *AdminGetBulkUserByEmailAddressV3NotFound, *AdminGetBulkUserByEmailAddressV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBulkUserByEmailAddressV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkUserByEmailAddressV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetBulkUserByEmailAddressV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetBulkUserByEmailAddressV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetBulkUserByEmailAddressV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetBulkUserByEmailAddressV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetBulkUserByEmailAddressV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkUserByEmailAddressV3Short get bulk user by email address


Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




This endpoint search user by the list of email addresses



action code : 10132
*/
func (a *Client) AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBulkUserByEmailAddressV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkUserByEmailAddressV3OK:
		return v, nil
	case *AdminGetBulkUserByEmailAddressV3BadRequest:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3Unauthorized:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3Forbidden:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3NotFound:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserByUserIDV3Short instead.

AdminGetUserByUserIDV3 admin get user by user id
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) AdminGetUserByUserIDV3(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, *AdminGetUserByUserIDV3BadRequest, *AdminGetUserByUserIDV3Unauthorized, *AdminGetUserByUserIDV3Forbidden, *AdminGetUserByUserIDV3NotFound, *AdminGetUserByUserIDV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetUserByUserIDV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetUserByUserIDV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetUserByUserIDV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetUserByUserIDV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetUserByUserIDV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByUserIDV3Short admin get user by user id
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'
*/
func (a *Client) AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV3OK:
		return v, nil
	case *AdminGetUserByUserIDV3BadRequest:
		return nil, v
	case *AdminGetUserByUserIDV3Unauthorized:
		return nil, v
	case *AdminGetUserByUserIDV3Forbidden:
		return nil, v
	case *AdminGetUserByUserIDV3NotFound:
		return nil, v
	case *AdminGetUserByUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserV3Short instead.

AdminUpdateUserV3 update user


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, emailAddress, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                  * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.


                  * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.


                  * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.



action code : 10103
*/
func (a *Client) AdminUpdateUserV3(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, *AdminUpdateUserV3BadRequest, *AdminUpdateUserV3Unauthorized, *AdminUpdateUserV3Forbidden, *AdminUpdateUserV3NotFound, *AdminUpdateUserV3Conflict, *AdminUpdateUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV3OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV3Short update user


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, emailAddress, languageTag, dateOfBirth}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                    * User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.


                    * User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.


                    * User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.



action code : 10103
*/
func (a *Client) AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV3OK:
		return v, nil
	case *AdminUpdateUserV3BadRequest:
		return nil, v
	case *AdminUpdateUserV3Unauthorized:
		return nil, v
	case *AdminUpdateUserV3Forbidden:
		return nil, v
	case *AdminUpdateUserV3NotFound:
		return nil, v
	case *AdminUpdateUserV3Conflict:
		return nil, v
	case *AdminUpdateUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserBanV3Short instead.

AdminGetUserBanV3 get user's bans


Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'




This endpoint retrieve the first page of the data if after and before parameters is empty




action code : 10126
*/
func (a *Client) AdminGetUserBanV3(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, *AdminGetUserBanV3BadRequest, *AdminGetUserBanV3Unauthorized, *AdminGetUserBanV3Forbidden, *AdminGetUserBanV3NotFound, *AdminGetUserBanV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetUserBanV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetUserBanV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetUserBanV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetUserBanV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetUserBanV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanV3Short get user's bans


Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'




This endpoint retrieve the first page of the data if after and before parameters is empty




action code : 10126
*/
func (a *Client) AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV3OK:
		return v, nil
	case *AdminGetUserBanV3BadRequest:
		return nil, v
	case *AdminGetUserBanV3Unauthorized:
		return nil, v
	case *AdminGetUserBanV3Forbidden:
		return nil, v
	case *AdminGetUserBanV3NotFound:
		return nil, v
	case *AdminGetUserBanV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBanUserV3Short instead.

AdminBanUserV3 ban a single user


Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.




Bans a user with specific type of ban. Ban types and reason can be queried.




action code : 10141
*/
func (a *Client) AdminBanUserV3(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, *AdminBanUserV3BadRequest, *AdminBanUserV3Unauthorized, *AdminBanUserV3Forbidden, *AdminBanUserV3NotFound, *AdminBanUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV3Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminBanUserV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminBanUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminBanUserV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminBanUserV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminBanUserV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserV3Short ban a single user


Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [CREATE]'.




Bans a user with specific type of ban. Ban types and reason can be queried.




action code : 10141
*/
func (a *Client) AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV3Created:
		return v, nil
	case *AdminBanUserV3BadRequest:
		return nil, v
	case *AdminBanUserV3Unauthorized:
		return nil, v
	case *AdminBanUserV3Forbidden:
		return nil, v
	case *AdminBanUserV3NotFound:
		return nil, v
	case *AdminBanUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserBanV3Short instead.

AdminUpdateUserBanV3 enable or disable ban for a single user
Required permission ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId}
[UPDATE]
Set ban status for a single user for a specific ban. Retrieve
user ban and choose the ban ID. Set the form parameter to true/false to enable
or disable the ban.
action code : 10142'
*/
func (a *Client) AdminUpdateUserBanV3(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, *AdminUpdateUserBanV3BadRequest, *AdminUpdateUserBanV3Unauthorized, *AdminUpdateUserBanV3Forbidden, *AdminUpdateUserBanV3NotFound, *AdminUpdateUserBanV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserBanV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserBanV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserBanV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserBanV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserBanV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserBanV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserBanV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserBanV3Short enable or disable ban for a single user
Required permission ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId}
[UPDATE]
Set ban status for a single user for a specific ban. Retrieve
user ban and choose the ban ID. Set the form parameter to true/false to enable
or disable the ban.
action code : 10142'
*/
func (a *Client) AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserBanV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserBanV3OK:
		return v, nil
	case *AdminUpdateUserBanV3BadRequest:
		return nil, v
	case *AdminUpdateUserBanV3Unauthorized:
		return nil, v
	case *AdminUpdateUserBanV3Forbidden:
		return nil, v
	case *AdminUpdateUserBanV3NotFound:
		return nil, v
	case *AdminUpdateUserBanV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSendVerificationCodeV3Short instead.

AdminSendVerificationCodeV3 send verification code to user
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The verification code is sent to email address.




Available contexts for use :




                      1. UserAccountRegistration


a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
It is the default context if the Context field is empty





                      2. UpdateEmailAddress


a context type used for verify user before updating email address.(Without email address verified checking)





                      3. upgradeHeadlessAccount


The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.







action code: 10116
*/
func (a *Client) AdminSendVerificationCodeV3(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, *AdminSendVerificationCodeV3BadRequest, *AdminSendVerificationCodeV3Unauthorized, *AdminSendVerificationCodeV3Forbidden, *AdminSendVerificationCodeV3NotFound, *AdminSendVerificationCodeV3Conflict, *AdminSendVerificationCodeV3TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSendVerificationCodeV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminSendVerificationCodeV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminSendVerificationCodeV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminSendVerificationCodeV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminSendVerificationCodeV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminSendVerificationCodeV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminSendVerificationCodeV3TooManyRequests:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendVerificationCodeV3Short send verification code to user
Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The verification code is sent to email address.




Available contexts for use :




                      1. UserAccountRegistration


a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
It is the default context if the Context field is empty





                      2. UpdateEmailAddress


a context type used for verify user before updating email address.(Without email address verified checking)





                      3. upgradeHeadlessAccount


The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.







action code: 10116
*/
func (a *Client) AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendVerificationCodeV3NoContent:
		return v, nil
	case *AdminSendVerificationCodeV3BadRequest:
		return nil, v
	case *AdminSendVerificationCodeV3Unauthorized:
		return nil, v
	case *AdminSendVerificationCodeV3Forbidden:
		return nil, v
	case *AdminSendVerificationCodeV3NotFound:
		return nil, v
	case *AdminSendVerificationCodeV3Conflict:
		return nil, v
	case *AdminSendVerificationCodeV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminVerifyAccountV3Short instead.

AdminVerifyAccountV3 verify or consume verification code sent to user


Will verify account and consume code if validateOnly is set false in request body




Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Redeems a verification code sent to a user to verify the user's contact address is correct


Available ContactType : email or phone
*/
func (a *Client) AdminVerifyAccountV3(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, *AdminVerifyAccountV3BadRequest, *AdminVerifyAccountV3Unauthorized, *AdminVerifyAccountV3Forbidden, *AdminVerifyAccountV3NotFound, *AdminVerifyAccountV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyAccountV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminVerifyAccountV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminVerifyAccountV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminVerifyAccountV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminVerifyAccountV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminVerifyAccountV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyAccountV3Short verify or consume verification code sent to user


Will verify account and consume code if validateOnly is set false in request body




Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Redeems a verification code sent to a user to verify the user's contact address is correct


Available ContactType : email or phone
*/
func (a *Client) AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyAccountV3NoContent:
		return v, nil
	case *AdminVerifyAccountV3BadRequest:
		return nil, v
	case *AdminVerifyAccountV3Unauthorized:
		return nil, v
	case *AdminVerifyAccountV3Forbidden:
		return nil, v
	case *AdminVerifyAccountV3NotFound:
		return nil, v
	case *AdminVerifyAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserVerificationCodeShort instead.

GetUserVerificationCode get verification code sent to user
[WARNING] This endpoint is only for testing purpose.
This endpoint get active user verification
code. There are 3 scenario of getting verification codes : after account registration, after reset password
request, and after headless account upgrade. All of them will be returned on this endpoint. Required permission
'ADMIN:NAMESPACE:{namespace}:USER:{userId}:CODE' [READ]
action code: 10146
*/
func (a *Client) GetUserVerificationCode(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, *GetUserVerificationCodeUnauthorized, *GetUserVerificationCodeForbidden, *GetUserVerificationCodeNotFound, *GetUserVerificationCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserVerificationCode",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/codes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserVerificationCodeOK:
		return v, nil, nil, nil, nil, nil

	case *GetUserVerificationCodeUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetUserVerificationCodeForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetUserVerificationCodeNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetUserVerificationCodeInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVerificationCodeShort get verification code sent to user
[WARNING] This endpoint is only for testing purpose.
This endpoint get active user verification
code. There are 3 scenario of getting verification codes : after account registration, after reset password
request, and after headless account upgrade. All of them will be returned on this endpoint. Required permission
'ADMIN:NAMESPACE:{namespace}:USER:{userId}:CODE' [READ]
action code: 10146
*/
func (a *Client) GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserVerificationCode",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/codes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVerificationCodeOK:
		return v, nil
	case *GetUserVerificationCodeUnauthorized:
		return nil, v
	case *GetUserVerificationCodeForbidden:
		return nil, v
	case *GetUserVerificationCodeNotFound:
		return nil, v
	case *GetUserVerificationCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserDeletionStatusV3Short instead.

AdminGetUserDeletionStatusV3 get user deletion status
Required permissions 'ADMIN:NAMESPACE:{namespace}:DELETIONSTATUS:USER:{userId} [READ]'
action code : 10145
*/
func (a *Client) AdminGetUserDeletionStatusV3(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, *AdminGetUserDeletionStatusV3Unauthorized, *AdminGetUserDeletionStatusV3Forbidden, *AdminGetUserDeletionStatusV3NotFound, *AdminGetUserDeletionStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserDeletionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserDeletionStatusV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetUserDeletionStatusV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetUserDeletionStatusV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetUserDeletionStatusV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetUserDeletionStatusV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserDeletionStatusV3Short get user deletion status
Required permissions 'ADMIN:NAMESPACE:{namespace}:DELETIONSTATUS:USER:{userId} [READ]'
action code : 10145
*/
func (a *Client) AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserDeletionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserDeletionStatusV3OK:
		return v, nil
	case *AdminGetUserDeletionStatusV3Unauthorized:
		return nil, v
	case *AdminGetUserDeletionStatusV3Forbidden:
		return nil, v
	case *AdminGetUserDeletionStatusV3NotFound:
		return nil, v
	case *AdminGetUserDeletionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserDeletionStatusV3Short instead.

AdminUpdateUserDeletionStatusV3 update user deletion status
Required permissions 'ADMIN:NAMESPACE:{namespace}:DELETIONSTATUS:USER:{userId} [UPDATE]'
action code : 10144
*/
func (a *Client) AdminUpdateUserDeletionStatusV3(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, *AdminUpdateUserDeletionStatusV3BadRequest, *AdminUpdateUserDeletionStatusV3Unauthorized, *AdminUpdateUserDeletionStatusV3Forbidden, *AdminUpdateUserDeletionStatusV3NotFound, *AdminUpdateUserDeletionStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserDeletionStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserDeletionStatusV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserDeletionStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserDeletionStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserDeletionStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserDeletionStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserDeletionStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserDeletionStatusV3Short update user deletion status
Required permissions 'ADMIN:NAMESPACE:{namespace}:DELETIONSTATUS:USER:{userId} [UPDATE]'
action code : 10144
*/
func (a *Client) AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserDeletionStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserDeletionStatusV3NoContent:
		return v, nil
	case *AdminUpdateUserDeletionStatusV3BadRequest:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3Unauthorized:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3Forbidden:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3NotFound:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpgradeHeadlessAccountV3Short instead.

AdminUpgradeHeadlessAccountV3 verify or consume verification code.


If validateOnly is set false, will upgrade headless account with verification code


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.




The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.




This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

Supported user data fields :


                      * displayName


                      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                      * country : format ISO3166-1 alpha-2 two letter, e.g. US



action code : 10124
*/
func (a *Client) AdminUpgradeHeadlessAccountV3(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, *AdminUpgradeHeadlessAccountV3BadRequest, *AdminUpgradeHeadlessAccountV3Unauthorized, *AdminUpgradeHeadlessAccountV3Forbidden, *AdminUpgradeHeadlessAccountV3NotFound, *AdminUpgradeHeadlessAccountV3Conflict, *AdminUpgradeHeadlessAccountV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpgradeHeadlessAccountV3OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpgradeHeadlessAccountV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpgradeHeadlessAccountV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpgradeHeadlessAccountV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpgradeHeadlessAccountV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpgradeHeadlessAccountV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpgradeHeadlessAccountV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpgradeHeadlessAccountV3Short verify or consume verification code.


If validateOnly is set false, will upgrade headless account with verification code


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.




The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.




This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

Supported user data fields :


                      * displayName


                      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                      * country : format ISO3166-1 alpha-2 two letter, e.g. US



action code : 10124
*/
func (a *Client) AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpgradeHeadlessAccountV3OK:
		return v, nil
	case *AdminUpgradeHeadlessAccountV3BadRequest:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Unauthorized:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Forbidden:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3NotFound:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Conflict:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserInformationV3Short instead.

AdminDeleteUserInformationV3 delete user's information
[WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow.Required permissions 'ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]'.
*/
func (a *Client) AdminDeleteUserInformationV3(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, *AdminDeleteUserInformationV3Unauthorized, *AdminDeleteUserInformationV3Forbidden, *AdminDeleteUserInformationV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserInformationV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserInformationV3NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteUserInformationV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeleteUserInformationV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminDeleteUserInformationV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserInformationV3Short delete user's information
[WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow.Required permissions 'ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]'.
*/
func (a *Client) AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserInformationV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserInformationV3NoContent:
		return v, nil
	case *AdminDeleteUserInformationV3Unauthorized:
		return nil, v
	case *AdminDeleteUserInformationV3Forbidden:
		return nil, v
	case *AdminDeleteUserInformationV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserLoginHistoriesV3Short instead.

AdminGetUserLoginHistoriesV3 get user's login histories
Required permission 'ADMIN:NAMESPACE:{namespace}:HISTORY:LOGIN:USER:{userId} [READ]'

Notes for this endpoint:

                      * This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
                      * The maximum value of the limit is 100 and the minimum value of the limit is 1.
                      * This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
                      * This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.
*/
func (a *Client) AdminGetUserLoginHistoriesV3(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, *AdminGetUserLoginHistoriesV3Unauthorized, *AdminGetUserLoginHistoriesV3Forbidden, *AdminGetUserLoginHistoriesV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserLoginHistoriesV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetUserLoginHistoriesV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetUserLoginHistoriesV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetUserLoginHistoriesV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserLoginHistoriesV3Short get user's login histories
Required permission 'ADMIN:NAMESPACE:{namespace}:HISTORY:LOGIN:USER:{userId} [READ]'

Notes for this endpoint:

                          * This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
                          * The maximum value of the limit is 100 and the minimum value of the limit is 1.
                          * This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
                          * This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.
*/
func (a *Client) AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserLoginHistoriesV3OK:
		return v, nil
	case *AdminGetUserLoginHistoriesV3Unauthorized:
		return nil, v
	case *AdminGetUserLoginHistoriesV3Forbidden:
		return nil, v
	case *AdminGetUserLoginHistoriesV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminResetPasswordV3Short instead.

AdminResetPasswordV3 update user password
Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminResetPasswordV3(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, *AdminResetPasswordV3BadRequest, *AdminResetPasswordV3Unauthorized, *AdminResetPasswordV3Forbidden, *AdminResetPasswordV3NotFound, *AdminResetPasswordV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminResetPasswordV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminResetPasswordV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminResetPasswordV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminResetPasswordV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminResetPasswordV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPasswordV3Short update user password
Required permission 'ADMIN:NAMESPACE:{namespace}:PASSWORD:USER:{userId} [UPDATE]'
*/
func (a *Client) AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV3NoContent:
		return v, nil
	case *AdminResetPasswordV3BadRequest:
		return nil, v
	case *AdminResetPasswordV3Unauthorized:
		return nil, v
	case *AdminResetPasswordV3Forbidden:
		return nil, v
	case *AdminResetPasswordV3NotFound:
		return nil, v
	case *AdminResetPasswordV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserPermissionV3Short instead.

AdminUpdateUserPermissionV3 update user permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will REPLACE user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                              1. Seconds: 0-59 * / , -


                              2. Minutes: 0-59 * / , -


                              3. Hours: 0-23 * / , -


                              4. Day of month: 1-31 * / , - L W


                              5. Month: 1-12 JAN-DEC * / , -


                              6. Day of week: 0-6 SUN-SAT * / , - L #


                              7. Year: 1970-2099 * / , -




Special characters:




                              1. *: all values in the fields, e.g. * in seconds fields indicates every second


                              2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                              3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                              4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                              5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                              6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                              7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateUserPermissionV3(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, *AdminUpdateUserPermissionV3BadRequest, *AdminUpdateUserPermissionV3Unauthorized, *AdminUpdateUserPermissionV3Forbidden, *AdminUpdateUserPermissionV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserPermissionV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateUserPermissionV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateUserPermissionV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateUserPermissionV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateUserPermissionV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserPermissionV3Short update user permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




This endpoint will REPLACE user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                              1. Seconds: 0-59 * / , -


                              2. Minutes: 0-59 * / , -


                              3. Hours: 0-23 * / , -


                              4. Day of month: 1-31 * / , - L W


                              5. Month: 1-12 JAN-DEC * / , -


                              6. Day of week: 0-6 SUN-SAT * / , - L #


                              7. Year: 1970-2099 * / , -




Special characters:




                              1. *: all values in the fields, e.g. * in seconds fields indicates every second


                              2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                              3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                              4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                              5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                              6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                              7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserPermissionV3NoContent:
		return v, nil
	case *AdminUpdateUserPermissionV3BadRequest:
		return nil, v
	case *AdminUpdateUserPermissionV3Unauthorized:
		return nil, v
	case *AdminUpdateUserPermissionV3Forbidden:
		return nil, v
	case *AdminUpdateUserPermissionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddUserPermissionsV3Short instead.

AdminAddUserPermissionsV3 add user permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [CREATE]'




This endpoint will APPEND user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                              1. Seconds: 0-59 * / , -


                              2. Minutes: 0-59 * / , -


                              3. Hours: 0-23 * / , -


                              4. Day of month: 1-31 * / , - L W


                              5. Month: 1-12 JAN-DEC * / , -


                              6. Day of week: 0-6 SUN-SAT * / , - L #


                              7. Year: 1970-2099 * / , -




Special characters:




                              1. *: all values in the fields, e.g. * in seconds fields indicates every second


                              2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                              3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                              4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                              5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                              6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                              7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddUserPermissionsV3(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, *AdminAddUserPermissionsV3BadRequest, *AdminAddUserPermissionsV3Unauthorized, *AdminAddUserPermissionsV3Forbidden, *AdminAddUserPermissionsV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserPermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserPermissionsV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminAddUserPermissionsV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminAddUserPermissionsV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminAddUserPermissionsV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminAddUserPermissionsV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserPermissionsV3Short add user permissions


Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [CREATE]'




This endpoint will APPEND user's permissions with the ones defined in body




Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




In ranged schedule, first element will be start date, and second one will be end date




If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




Syntax reference




Fields:




                              1. Seconds: 0-59 * / , -


                              2. Minutes: 0-59 * / , -


                              3. Hours: 0-23 * / , -


                              4. Day of month: 1-31 * / , - L W


                              5. Month: 1-12 JAN-DEC * / , -


                              6. Day of week: 0-6 SUN-SAT * / , - L #


                              7. Year: 1970-2099 * / , -




Special characters:




                              1. *: all values in the fields, e.g. * in seconds fields indicates every second


                              2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


                              3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


                              4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


                              5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


                              6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


                              7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserPermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserPermissionsV3NoContent:
		return v, nil
	case *AdminAddUserPermissionsV3BadRequest:
		return nil, v
	case *AdminAddUserPermissionsV3Unauthorized:
		return nil, v
	case *AdminAddUserPermissionsV3Forbidden:
		return nil, v
	case *AdminAddUserPermissionsV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserPermissionBulkV3Short instead.

AdminDeleteUserPermissionBulkV3 delete user permission
Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserPermissionBulkV3(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, *AdminDeleteUserPermissionBulkV3BadRequest, *AdminDeleteUserPermissionBulkV3Unauthorized, *AdminDeleteUserPermissionBulkV3Forbidden, *AdminDeleteUserPermissionBulkV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionBulkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionBulkV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteUserPermissionBulkV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteUserPermissionBulkV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteUserPermissionBulkV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteUserPermissionBulkV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionBulkV3Short delete user permission
Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionBulkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionBulkV3NoContent:
		return v, nil
	case *AdminDeleteUserPermissionBulkV3BadRequest:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3Unauthorized:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3Forbidden:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserPermissionV3Short instead.

AdminDeleteUserPermissionV3 delete user permission
Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserPermissionV3(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, *AdminDeleteUserPermissionV3BadRequest, *AdminDeleteUserPermissionV3Unauthorized, *AdminDeleteUserPermissionV3Forbidden, *AdminDeleteUserPermissionV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteUserPermissionV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteUserPermissionV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteUserPermissionV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteUserPermissionV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionV3Short delete user permission
Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionV3NoContent:
		return v, nil
	case *AdminDeleteUserPermissionV3BadRequest:
		return nil, v
	case *AdminDeleteUserPermissionV3Unauthorized:
		return nil, v
	case *AdminDeleteUserPermissionV3Forbidden:
		return nil, v
	case *AdminDeleteUserPermissionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserPlatformAccountsV3Short instead.

AdminGetUserPlatformAccountsV3 get platform accounts linked to the user


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'.




## Justice Platform Account




The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ]
is required in order to read the UserID who linked with the user.



Gets platform accounts that are already linked with user account

action code : 10128
*/
func (a *Client) AdminGetUserPlatformAccountsV3(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, *AdminGetUserPlatformAccountsV3BadRequest, *AdminGetUserPlatformAccountsV3Unauthorized, *AdminGetUserPlatformAccountsV3Forbidden, *AdminGetUserPlatformAccountsV3NotFound, *AdminGetUserPlatformAccountsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountsV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetUserPlatformAccountsV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetUserPlatformAccountsV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetUserPlatformAccountsV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetUserPlatformAccountsV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetUserPlatformAccountsV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPlatformAccountsV3Short get platform accounts linked to the user


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]'.




## Justice Platform Account




The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ]
is required in order to read the UserID who linked with the user.



Gets platform accounts that are already linked with user account

action code : 10128
*/
func (a *Client) AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountsV3OK:
		return v, nil
	case *AdminGetUserPlatformAccountsV3BadRequest:
		return nil, v
	case *AdminGetUserPlatformAccountsV3Unauthorized:
		return nil, v
	case *AdminGetUserPlatformAccountsV3Forbidden:
		return nil, v
	case *AdminGetUserPlatformAccountsV3NotFound:
		return nil, v
	case *AdminGetUserPlatformAccountsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetListJusticePlatformAccountsShort instead.

AdminGetListJusticePlatformAccounts get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID.
*/
func (a *Client) AdminGetListJusticePlatformAccounts(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, *AdminGetListJusticePlatformAccountsBadRequest, *AdminGetListJusticePlatformAccountsUnauthorized, *AdminGetListJusticePlatformAccountsForbidden, *AdminGetListJusticePlatformAccountsNotFound, *AdminGetListJusticePlatformAccountsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListJusticePlatformAccountsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetListJusticePlatformAccountsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetListJusticePlatformAccountsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetListJusticePlatformAccountsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetListJusticePlatformAccountsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetListJusticePlatformAccountsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListJusticePlatformAccountsShort get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID.
*/
func (a *Client) AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListJusticePlatformAccountsOK:
		return v, nil
	case *AdminGetListJusticePlatformAccountsBadRequest:
		return nil, v
	case *AdminGetListJusticePlatformAccountsUnauthorized:
		return nil, v
	case *AdminGetListJusticePlatformAccountsForbidden:
		return nil, v
	case *AdminGetListJusticePlatformAccountsNotFound:
		return nil, v
	case *AdminGetListJusticePlatformAccountsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserMappingShort instead.

AdminGetUserMapping get user mapping


This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ]'




This endpoint will support publisher access to game and game access to publisher




If targetNamespace filled with publisher namespace then this endpoint will return its game user id and game namespace




If targetNamespace filled with game namespace then this endpoint will return its publisher user id and publisher namespace
*/
func (a *Client) AdminGetUserMapping(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, *AdminGetUserMappingBadRequest, *AdminGetUserMappingUnauthorized, *AdminGetUserMappingForbidden, *AdminGetUserMappingNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserMappingOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetUserMappingBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetUserMappingUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetUserMappingForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetUserMappingNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserMappingShort get user mapping


This endpoint requires the client access token as the bearer token. Required permission 'ADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId} [READ]'




This endpoint will support publisher access to game and game access to publisher




If targetNamespace filled with publisher namespace then this endpoint will return its game user id and game namespace




If targetNamespace filled with game namespace then this endpoint will return its publisher user id and publisher namespace
*/
func (a *Client) AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserMappingOK:
		return v, nil
	case *AdminGetUserMappingBadRequest:
		return nil, v
	case *AdminGetUserMappingUnauthorized:
		return nil, v
	case *AdminGetUserMappingForbidden:
		return nil, v
	case *AdminGetUserMappingNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateJusticeUserShort instead.

AdminCreateJusticeUser create justice user from publisher user
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [CREATE]

Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) AdminCreateJusticeUser(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, *AdminCreateJusticeUserBadRequest, *AdminCreateJusticeUserUnauthorized, *AdminCreateJusticeUserForbidden, *AdminCreateJusticeUserNotFound, *AdminCreateJusticeUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateJusticeUserCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateJusticeUserBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateJusticeUserUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateJusticeUserForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateJusticeUserNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateJusticeUserInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateJusticeUserShort create justice user from publisher user
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [CREATE]

Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateJusticeUserCreated:
		return v, nil
	case *AdminCreateJusticeUserBadRequest:
		return nil, v
	case *AdminCreateJusticeUserUnauthorized:
		return nil, v
	case *AdminCreateJusticeUserForbidden:
		return nil, v
	case *AdminCreateJusticeUserNotFound:
		return nil, v
	case *AdminCreateJusticeUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminLinkPlatformAccountShort instead.

AdminLinkPlatformAccount link a platform user account to user account


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Force linking platform account to user User Account. This endpoint intended for admin to forcefully link account to user.
*/
func (a *Client) AdminLinkPlatformAccount(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, *AdminLinkPlatformAccountBadRequest, *AdminLinkPlatformAccountUnauthorized, *AdminLinkPlatformAccountForbidden, *AdminLinkPlatformAccountInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminLinkPlatformAccountNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminLinkPlatformAccountBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminLinkPlatformAccountUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminLinkPlatformAccountForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminLinkPlatformAccountInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminLinkPlatformAccountShort link a platform user account to user account


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


Force linking platform account to user User Account. This endpoint intended for admin to forcefully link account to user.
*/
func (a *Client) AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminLinkPlatformAccountNoContent:
		return v, nil
	case *AdminLinkPlatformAccountBadRequest:
		return nil, v
	case *AdminLinkPlatformAccountUnauthorized:
		return nil, v
	case *AdminLinkPlatformAccountForbidden:
		return nil, v
	case *AdminLinkPlatformAccountInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPlatformUnlinkV3Short instead.

AdminPlatformUnlinkV3 unlink user's account from specific platform


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]'.


## Supported platforms:




                              * steam


                              * steamopenid


                              * facebook


                              * google


                              * oculus


                              * twitch


                              * android


                              * ios


                              * apple


                              * device


                              * discord


                              * awscognito


                              * epicgames


                              * nintendo


                              * snapchat




Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.

platformNamespace need to be specified when the platform ID is 'justice'.



Unlink user's account from justice platform will enable password token grant and password update.



If you want to unlink user's account in a game namespace, you have to specify platformNamespace to that game namespace.



action code : 10121
*/
func (a *Client) AdminPlatformUnlinkV3(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, *AdminPlatformUnlinkV3BadRequest, *AdminPlatformUnlinkV3Unauthorized, *AdminPlatformUnlinkV3Forbidden, *AdminPlatformUnlinkV3NotFound, *AdminPlatformUnlinkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformUnlinkV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminPlatformUnlinkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminPlatformUnlinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminPlatformUnlinkV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminPlatformUnlinkV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminPlatformUnlinkV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPlatformUnlinkV3Short unlink user's account from specific platform


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]'.


## Supported platforms:




                              * steam


                              * steamopenid


                              * facebook


                              * google


                              * oculus


                              * twitch


                              * android


                              * ios


                              * apple


                              * device


                              * discord


                              * awscognito


                              * epicgames


                              * nintendo


                              * snapchat




Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.

platformNamespace need to be specified when the platform ID is 'justice'.



Unlink user's account from justice platform will enable password token grant and password update.



If you want to unlink user's account in a game namespace, you have to specify platformNamespace to that game namespace.



action code : 10121
*/
func (a *Client) AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformUnlinkV3NoContent:
		return v, nil
	case *AdminPlatformUnlinkV3BadRequest:
		return nil, v
	case *AdminPlatformUnlinkV3Unauthorized:
		return nil, v
	case *AdminPlatformUnlinkV3Forbidden:
		return nil, v
	case *AdminPlatformUnlinkV3NotFound:
		return nil, v
	case *AdminPlatformUnlinkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPlatformLinkV3Short instead.

AdminPlatformLinkV3 link user's account with platform


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Prerequisite: Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                              * steam : The ticketâs value is the authentication code returned by Steam.


                              * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                              * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                              * google : The ticketâs value is the authorization code returned by Google OAuth


                              * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                              * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                              * android : The ticket's value is the Androidâs device ID


                              * ios : The ticket's value is the iOSâs device ID.


                              * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                              * device : Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                              * discord : The ticketâs value is the authorization code returned by Discord OAuth.


                              * awscognito : The ticketâs value is the aws cognito access token (JWT).


                              * epicgames : The ticketâs value is an access-token obtained from Epicgames EOS Account Service.


                              * nintendo : The ticketâs value is the authorization code(id_token) returned by Nintendo OAuth.
*/
func (a *Client) AdminPlatformLinkV3(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, *AdminPlatformLinkV3BadRequest, *AdminPlatformLinkV3Unauthorized, *AdminPlatformLinkV3Forbidden, *AdminPlatformLinkV3NotFound, *AdminPlatformLinkV3Conflict, *AdminPlatformLinkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformLinkV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminPlatformLinkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminPlatformLinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminPlatformLinkV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminPlatformLinkV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminPlatformLinkV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminPlatformLinkV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPlatformLinkV3Short link user's account with platform


Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





Prerequisite: Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                              * steam : The ticketâs value is the authentication code returned by Steam.


                              * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                              * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                              * google : The ticketâs value is the authorization code returned by Google OAuth


                              * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                              * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                              * android : The ticket's value is the Androidâs device ID


                              * ios : The ticket's value is the iOSâs device ID.


                              * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                              * device : Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                              * discord : The ticketâs value is the authorization code returned by Discord OAuth.


                              * awscognito : The ticketâs value is the aws cognito access token (JWT).


                              * epicgames : The ticketâs value is an access-token obtained from Epicgames EOS Account Service.


                              * nintendo : The ticketâs value is the authorization code(id_token) returned by Nintendo OAuth.
*/
func (a *Client) AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformLinkV3NoContent:
		return v, nil
	case *AdminPlatformLinkV3BadRequest:
		return nil, v
	case *AdminPlatformLinkV3Unauthorized:
		return nil, v
	case *AdminPlatformLinkV3Forbidden:
		return nil, v
	case *AdminPlatformLinkV3NotFound:
		return nil, v
	case *AdminPlatformLinkV3Conflict:
		return nil, v
	case *AdminPlatformLinkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetThirdPartyPlatformTokenLinkStatusV3Short instead.

AdminGetThirdPartyPlatformTokenLinkStatusV3 admin get the link status of the third party platform token with user id.
Admin get the link status of the third party platform token with user id.




This endpoint is used for checking whether the third party user represented by third party token is
linked with the corresponding user id.





Notes:




                              * Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]




## Supported platforms:




                              * steam : The platform_tokenâs value is the authentication code returned by Steam.


                              * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


                              * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


                              * google : The platform_tokenâs value is the authorization code returned by Google OAuth


                              * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                              * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


                              * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


                              * android : The device_id is the Androidâs device ID


                              * ios : The device_id is the iOSâs device ID.


                              * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


                              * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


                              * justice : The platform_tokenâs value is the designated userâs access token.


                              * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


                              * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                              * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                              * nintendo : The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.


                              * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


                              * live : The platform_tokenâs value is xbox XSTS token


                              * xblweb : The platform_tokenâs value is code returned by xbox after login


                              * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


                              * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
*/
func (a *Client) AdminGetThirdPartyPlatformTokenLinkStatusV3(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest, *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized, *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden, *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound, *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyPlatformTokenLinkStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetThirdPartyPlatformTokenLinkStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyPlatformTokenLinkStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetThirdPartyPlatformTokenLinkStatusV3Short admin get the link status of the third party platform token with user id.
Admin get the link status of the third party platform token with user id.




This endpoint is used for checking whether the third party user represented by third party token is
linked with the corresponding user id.





Notes:




                              * Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]




## Supported platforms:




                              * steam : The platform_tokenâs value is the authentication code returned by Steam.


                              * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


                              * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


                              * google : The platform_tokenâs value is the authorization code returned by Google OAuth


                              * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                              * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


                              * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


                              * android : The device_id is the Androidâs device ID


                              * ios : The device_id is the iOSâs device ID.


                              * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


                              * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


                              * justice : The platform_tokenâs value is the designated userâs access token.


                              * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


                              * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                              * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                              * nintendo : The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.


                              * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


                              * live : The platform_tokenâs value is xbox XSTS token


                              * xblweb : The platform_tokenâs value is code returned by xbox after login


                              * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


                              * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
*/
func (a *Client) AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyPlatformTokenLinkStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetThirdPartyPlatformTokenLinkStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyPlatformTokenLinkStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3OK:
		return v, nil
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserRolesV3Short instead.

AdminDeleteUserRolesV3 delete user roles
Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserRolesV3(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, *AdminDeleteUserRolesV3BadRequest, *AdminDeleteUserRolesV3Unauthorized, *AdminDeleteUserRolesV3Forbidden, *AdminDeleteUserRolesV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRolesV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRolesV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteUserRolesV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteUserRolesV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteUserRolesV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteUserRolesV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRolesV3Short delete user roles
Required permission 'ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]'
*/
func (a *Client) AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRolesV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRolesV3NoContent:
		return v, nil
	case *AdminDeleteUserRolesV3BadRequest:
		return nil, v
	case *AdminDeleteUserRolesV3Unauthorized:
		return nil, v
	case *AdminDeleteUserRolesV3Forbidden:
		return nil, v
	case *AdminDeleteUserRolesV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSaveUserRoleV3Short instead.

AdminSaveUserRoleV3 admin save user role v3
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE] permission.

User's roles will be updated with given roles (replacing current user's role). Request body need to specify allowed namespace for given role to support new role restriction.
Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.
*/
func (a *Client) AdminSaveUserRoleV3(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, *AdminSaveUserRoleV3BadRequest, *AdminSaveUserRoleV3Unauthorized, *AdminSaveUserRoleV3Forbidden, *AdminSaveUserRoleV3NotFound, *AdminSaveUserRoleV3UnprocessableEntity, *AdminSaveUserRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSaveUserRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSaveUserRoleV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminSaveUserRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminSaveUserRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminSaveUserRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminSaveUserRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminSaveUserRoleV3UnprocessableEntity:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminSaveUserRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveUserRoleV3Short admin save user role v3
This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE] permission.

User's roles will be updated with given roles (replacing current user's role). Request body need to specify allowed namespace for given role to support new role restriction.
Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.
*/
func (a *Client) AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSaveUserRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveUserRoleV3NoContent:
		return v, nil
	case *AdminSaveUserRoleV3BadRequest:
		return nil, v
	case *AdminSaveUserRoleV3Unauthorized:
		return nil, v
	case *AdminSaveUserRoleV3Forbidden:
		return nil, v
	case *AdminSaveUserRoleV3NotFound:
		return nil, v
	case *AdminSaveUserRoleV3UnprocessableEntity:
		return nil, v
	case *AdminSaveUserRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddUserRoleV3Short instead.

AdminAddUserRoleV3 add user role


This endpoint adds role to user. Required permission ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]




action code: 10109
*/
func (a *Client) AdminAddUserRoleV3(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, *AdminAddUserRoleV3BadRequest, *AdminAddUserRoleV3Unauthorized, *AdminAddUserRoleV3Forbidden, *AdminAddUserRoleV3NotFound, *AdminAddUserRoleV3Conflict, *AdminAddUserRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminAddUserRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminAddUserRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminAddUserRoleV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminAddUserRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserRoleV3Short add user role


This endpoint adds role to user. Required permission ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [UPDATE]




action code: 10109
*/
func (a *Client) AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV3NoContent:
		return v, nil
	case *AdminAddUserRoleV3BadRequest:
		return nil, v
	case *AdminAddUserRoleV3Unauthorized:
		return nil, v
	case *AdminAddUserRoleV3Forbidden:
		return nil, v
	case *AdminAddUserRoleV3NotFound:
		return nil, v
	case *AdminAddUserRoleV3Conflict:
		return nil, v
	case *AdminAddUserRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteUserRoleV3Short instead.

AdminDeleteUserRoleV3 delete user role


This endpoint removes role from user. Required permission ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]




action code: 10110
*/
func (a *Client) AdminDeleteUserRoleV3(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, *AdminDeleteUserRoleV3BadRequest, *AdminDeleteUserRoleV3Unauthorized, *AdminDeleteUserRoleV3Forbidden, *AdminDeleteUserRoleV3NotFound, *AdminDeleteUserRoleV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRoleV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteUserRoleV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteUserRoleV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteUserRoleV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteUserRoleV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteUserRoleV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRoleV3Short delete user role


This endpoint removes role from user. Required permission ADMIN:NAMESPACE:{namespace}:ROLE:USER:{userId} [DELETE]




action code: 10110
*/
func (a *Client) AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRoleV3NoContent:
		return v, nil
	case *AdminDeleteUserRoleV3BadRequest:
		return nil, v
	case *AdminDeleteUserRoleV3Unauthorized:
		return nil, v
	case *AdminDeleteUserRoleV3Forbidden:
		return nil, v
	case *AdminDeleteUserRoleV3NotFound:
		return nil, v
	case *AdminDeleteUserRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateUserStatusV3Short instead.

AdminUpdateUserStatusV3 update user status
Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'


This endpoint disable or enable user account. Set the enable status on the request body to true to enable user account or set to false to disable it.




Disable user for Account Disable purpose fill the reason with:




                              * AdminDeactivateAccount : if your disable account request comes from admin




Enable user ignore field 'reason' in the request body.



action code : 10143
*/
func (a *Client) AdminUpdateUserStatusV3(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, *AdminUpdateUserStatusV3BadRequest, *AdminUpdateUserStatusV3Unauthorized, *AdminUpdateUserStatusV3Forbidden, *AdminUpdateUserStatusV3NotFound, *AdminUpdateUserStatusV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserStatusV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateUserStatusV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateUserStatusV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateUserStatusV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateUserStatusV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateUserStatusV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserStatusV3Short update user status
Required permissions 'ADMIN:NAMESPACE:{namespace}:USERSTATUS:USER:{userId} [UPDATE]'


This endpoint disable or enable user account. Set the enable status on the request body to true to enable user account or set to false to disable it.




Disable user for Account Disable purpose fill the reason with:




                              * AdminDeactivateAccount : if your disable account request comes from admin




Enable user ignore field 'reason' in the request body.



action code : 10143
*/
func (a *Client) AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserStatusV3NoContent:
		return v, nil
	case *AdminUpdateUserStatusV3BadRequest:
		return nil, v
	case *AdminUpdateUserStatusV3Unauthorized:
		return nil, v
	case *AdminUpdateUserStatusV3Forbidden:
		return nil, v
	case *AdminUpdateUserStatusV3NotFound:
		return nil, v
	case *AdminUpdateUserStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminVerifyUserWithoutVerificationCodeV3Short instead.

AdminVerifyUserWithoutVerificationCodeV3 verify user without verification code


This endpoint force verify user. Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]




action code: 10118
*/
func (a *Client) AdminVerifyUserWithoutVerificationCodeV3(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, *AdminVerifyUserWithoutVerificationCodeV3BadRequest, *AdminVerifyUserWithoutVerificationCodeV3Unauthorized, *AdminVerifyUserWithoutVerificationCodeV3Forbidden, *AdminVerifyUserWithoutVerificationCodeV3NotFound, *AdminVerifyUserWithoutVerificationCodeV3Conflict, *AdminVerifyUserWithoutVerificationCodeV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyUserWithoutVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyUserWithoutVerificationCodeV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyUserWithoutVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyUserWithoutVerificationCodeV3NoContent:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminVerifyUserWithoutVerificationCodeV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyUserWithoutVerificationCodeV3Short verify user without verification code


This endpoint force verify user. Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]




action code: 10118
*/
func (a *Client) AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyUserWithoutVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyUserWithoutVerificationCodeV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyUserWithoutVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyUserWithoutVerificationCodeV3NoContent:
		return v, nil
	case *AdminVerifyUserWithoutVerificationCodeV3BadRequest:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Unauthorized:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Forbidden:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3NotFound:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Conflict:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetMyUserV3Short instead.

AdminGetMyUserV3 get my user


Require valid user authorization
Get my user data
action code : 10147
*/
func (a *Client) AdminGetMyUserV3(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, *AdminGetMyUserV3Unauthorized, *AdminGetMyUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyUserV3OK:
		return v, nil, nil, nil

	case *AdminGetMyUserV3Unauthorized:
		return nil, v, nil, nil

	case *AdminGetMyUserV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyUserV3Short get my user


Require valid user authorization
Get my user data
action code : 10147
*/
func (a *Client) AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyUserV3OK:
		return v, nil
	case *AdminGetMyUserV3Unauthorized:
		return nil, v
	case *AdminGetMyUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCountryAgeRestrictionV3Short instead.

PublicGetCountryAgeRestrictionV3 public get age restriction by country code
Get age restriction by country code. It will always get by publisher namespace
*/
func (a *Client) PublicGetCountryAgeRestrictionV3(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, *PublicGetCountryAgeRestrictionV3Unauthorized, *PublicGetCountryAgeRestrictionV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionV3OK:
		return v, nil, nil, nil

	case *PublicGetCountryAgeRestrictionV3Unauthorized:
		return nil, v, nil, nil

	case *PublicGetCountryAgeRestrictionV3NotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryAgeRestrictionV3Short public get age restriction by country code
Get age restriction by country code. It will always get by publisher namespace
*/
func (a *Client) PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionV3OK:
		return v, nil
	case *PublicGetCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *PublicGetCountryAgeRestrictionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListUserIDByPlatformUserIDsV3Short instead.

PublicListUserIDByPlatformUserIDsV3 list user id by platform user id
List User ID By Platform User ID
This endpoint intended to list game user ID from the given namespace
This endpoint return list of user ID by given platform ID and list of platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) PublicListUserIDByPlatformUserIDsV3(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, *PublicListUserIDByPlatformUserIDsV3BadRequest, *PublicListUserIDByPlatformUserIDsV3Unauthorized, *PublicListUserIDByPlatformUserIDsV3Forbidden, *PublicListUserIDByPlatformUserIDsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserIDByPlatformUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserIDByPlatformUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserIDByPlatformUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListUserIDByPlatformUserIDsV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicListUserIDByPlatformUserIDsV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicListUserIDByPlatformUserIDsV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicListUserIDByPlatformUserIDsV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicListUserIDByPlatformUserIDsV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserIDByPlatformUserIDsV3Short list user id by platform user id
List User ID By Platform User ID
This endpoint intended to list game user ID from the given namespace
This endpoint return list of user ID by given platform ID and list of platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserIDByPlatformUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserIDByPlatformUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserIDByPlatformUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserIDByPlatformUserIDsV3OK:
		return v, nil
	case *PublicListUserIDByPlatformUserIDsV3BadRequest:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3Unauthorized:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3Forbidden:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserByPlatformUserIDV3Short instead.

PublicGetUserByPlatformUserIDV3 get user by platform user id
Get User By Platform User ID

This endpoint return user information by given platform ID and platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) PublicGetUserByPlatformUserIDV3(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, *PublicGetUserByPlatformUserIDV3Unauthorized, *PublicGetUserByPlatformUserIDV3Forbidden, *PublicGetUserByPlatformUserIDV3NotFound, *PublicGetUserByPlatformUserIDV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByPlatformUserIDV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetUserByPlatformUserIDV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetUserByPlatformUserIDV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetUserByPlatformUserIDV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetUserByPlatformUserIDV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByPlatformUserIDV3Short get user by platform user id
Get User By Platform User ID

This endpoint return user information by given platform ID and platform user ID

nintendo platform user ID : NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByPlatformUserIDV3OK:
		return v, nil
	case *PublicGetUserByPlatformUserIDV3Unauthorized:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3Forbidden:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3NotFound:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetAsyncStatusShort instead.

PublicGetAsyncStatus get linking progress status

This endpoint is used to get linking status.
This API need logged user and user can only request its own linking status.'
*/
func (a *Client) PublicGetAsyncStatus(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, *PublicGetAsyncStatusUnauthorized, *PublicGetAsyncStatusForbidden, *PublicGetAsyncStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAsyncStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetAsyncStatus",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAsyncStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetAsyncStatusOK:
		return v, nil, nil, nil, nil

	case *PublicGetAsyncStatusUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetAsyncStatusForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetAsyncStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAsyncStatusShort get linking progress status

This endpoint is used to get linking status.
This API need logged user and user can only request its own linking status.'
*/
func (a *Client) PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAsyncStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetAsyncStatus",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAsyncStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAsyncStatusOK:
		return v, nil
	case *PublicGetAsyncStatusUnauthorized:
		return nil, v
	case *PublicGetAsyncStatusForbidden:
		return nil, v
	case *PublicGetAsyncStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSearchUserV3Short instead.

PublicSearchUserV3 search user


Requires valid user access token




This endpoint search all users on the specified namespace that match the query on these fields: display name, and username.
The query length should greater than 1ï¼otherwise will not query the database. The default limit value is 100



action code : 10132
*/
func (a *Client) PublicSearchUserV3(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, *PublicSearchUserV3BadRequest, *PublicSearchUserV3Unauthorized, *PublicSearchUserV3NotFound, *PublicSearchUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSearchUserV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicSearchUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicSearchUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicSearchUserV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicSearchUserV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchUserV3Short search user


Requires valid user access token




This endpoint search all users on the specified namespace that match the query on these fields: display name, and username.
The query length should greater than 1ï¼otherwise will not query the database. The default limit value is 100



action code : 10132
*/
func (a *Client) PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchUserV3OK:
		return v, nil
	case *PublicSearchUserV3BadRequest:
		return nil, v
	case *PublicSearchUserV3Unauthorized:
		return nil, v
	case *PublicSearchUserV3NotFound:
		return nil, v
	case *PublicSearchUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateUserV3Short instead.

PublicCreateUserV3 create user



Available Authentication Types:




                              1. EMAILPASSWD : an authentication type used for new user registration through email.




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV3(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, *PublicCreateUserV3BadRequest, *PublicCreateUserV3NotFound, *PublicCreateUserV3Conflict, *PublicCreateUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV3Created:
		return v, nil, nil, nil, nil, nil

	case *PublicCreateUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicCreateUserV3NotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicCreateUserV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicCreateUserV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV3Short create user



Available Authentication Types:




                              1. EMAILPASSWD : an authentication type used for new user registration through email.




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV3Created:
		return v, nil
	case *PublicCreateUserV3BadRequest:
		return nil, v
	case *PublicCreateUserV3NotFound:
		return nil, v
	case *PublicCreateUserV3Conflict:
		return nil, v
	case *PublicCreateUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CheckUserAvailabilityShort instead.

CheckUserAvailability check user's account availability
Check user's account availability.
Available field :
- displayName

If request include access token with user ID data, that user ID will be excluded from availability check.
For example, in case user update his emailAddress, he can use his own emailAddress to update his account.

Response Code :
- Account Available : 404 (not found)
- Account Not Available : 204 (no content)
*/
func (a *Client) CheckUserAvailability(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, *CheckUserAvailabilityBadRequest, *CheckUserAvailabilityNotFound, *CheckUserAvailabilityUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckUserAvailabilityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CheckUserAvailability",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckUserAvailabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CheckUserAvailabilityNoContent:
		return v, nil, nil, nil, nil

	case *CheckUserAvailabilityBadRequest:
		return nil, v, nil, nil, nil

	case *CheckUserAvailabilityNotFound:
		return nil, nil, v, nil, nil

	case *CheckUserAvailabilityUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckUserAvailabilityShort check user's account availability
Check user's account availability.
Available field :
- displayName

If request include access token with user ID data, that user ID will be excluded from availability check.
For example, in case user update his emailAddress, he can use his own emailAddress to update his account.

Response Code :
- Account Available : 404 (not found)
- Account Not Available : 204 (no content)
*/
func (a *Client) CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckUserAvailabilityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CheckUserAvailability",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckUserAvailabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckUserAvailabilityNoContent:
		return v, nil
	case *CheckUserAvailabilityBadRequest:
		return nil, v
	case *CheckUserAvailabilityNotFound:
		return nil, v
	case *CheckUserAvailabilityUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkGetUsersShort instead.

PublicBulkGetUsers bulk get users' basic info by user id


Notes:




                              * This endpoint bulk get users' basic info by userId, max allowed 100 at a time


                              * If namespace is game, will search by game user Id, other wise will search by publisher namespace


                              * Result will include displayName(if it exists)
*/
func (a *Client) PublicBulkGetUsers(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, *PublicBulkGetUsersBadRequest, *PublicBulkGetUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicBulkGetUsers",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/bulk/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetUsersOK:
		return v, nil, nil, nil

	case *PublicBulkGetUsersBadRequest:
		return nil, v, nil, nil

	case *PublicBulkGetUsersInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetUsersShort bulk get users' basic info by user id


Notes:




                              * This endpoint bulk get users' basic info by userId, max allowed 100 at a time


                              * If namespace is game, will search by game user Id, other wise will search by publisher namespace


                              * Result will include displayName(if it exists)
*/
func (a *Client) PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicBulkGetUsers",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/bulk/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetUsersOK:
		return v, nil
	case *PublicBulkGetUsersBadRequest:
		return nil, v
	case *PublicBulkGetUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSendRegistrationCodeShort instead.

PublicSendRegistrationCode send verification code to new unregistered account's email address
This endpoint will validate the request's email address.

If it already been used, will response 409.

If it is available, we will send a verification code to this email address.
This code can be verified by this endpoint.
*/
func (a *Client) PublicSendRegistrationCode(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, *PublicSendRegistrationCodeBadRequest, *PublicSendRegistrationCodeConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSendRegistrationCodeNoContent:
		return v, nil, nil, nil

	case *PublicSendRegistrationCodeBadRequest:
		return nil, v, nil, nil

	case *PublicSendRegistrationCodeConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendRegistrationCodeShort send verification code to new unregistered account's email address
This endpoint will validate the request's email address.

If it already been used, will response 409.

If it is available, we will send a verification code to this email address.
This code can be verified by this endpoint.
*/
func (a *Client) PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendRegistrationCodeNoContent:
		return v, nil
	case *PublicSendRegistrationCodeBadRequest:
		return nil, v
	case *PublicSendRegistrationCodeConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicVerifyRegistrationCodeShort instead.

PublicVerifyRegistrationCode verify the registration code


Verify the registration code
*/
func (a *Client) PublicVerifyRegistrationCode(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, *PublicVerifyRegistrationCodeBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyRegistrationCodeNoContent:
		return v, nil, nil

	case *PublicVerifyRegistrationCodeBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyRegistrationCodeShort verify the registration code


Verify the registration code
*/
func (a *Client) PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyRegistrationCodeNoContent:
		return v, nil
	case *PublicVerifyRegistrationCodeBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicForgotPasswordV3Short instead.

PublicForgotPasswordV3 request password reset code


 Special note for publisher-game scenario:
Game Client should provide game namespace path parameter and Publisher
Client should provide publisher namespace path parameter.




The password reset code will be sent to the publisher account's email address.




action code : 10104
*/
func (a *Client) PublicForgotPasswordV3(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, *PublicForgotPasswordV3BadRequest, *PublicForgotPasswordV3NotFound, *PublicForgotPasswordV3TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/forgot",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV3NoContent:
		return v, nil, nil, nil, nil

	case *PublicForgotPasswordV3BadRequest:
		return nil, v, nil, nil, nil

	case *PublicForgotPasswordV3NotFound:
		return nil, nil, v, nil, nil

	case *PublicForgotPasswordV3TooManyRequests:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForgotPasswordV3Short request password reset code


Special note for publisher-game scenario:
Game Client should provide game namespace path parameter and Publisher
Client should provide publisher namespace path parameter.




The password reset code will be sent to the publisher account's email address.




action code : 10104
*/
func (a *Client) PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/forgot",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV3NoContent:
		return v, nil
	case *PublicForgotPasswordV3BadRequest:
		return nil, v
	case *PublicForgotPasswordV3NotFound:
		return nil, v
	case *PublicForgotPasswordV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAdminInvitationV3Short instead.

GetAdminInvitationV3 get user invitation
Endpoint to validate user invitation. When not found, it could also means the invitation has expired.
*/
func (a *Client) GetAdminInvitationV3(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, *GetAdminInvitationV3NotFound, *GetAdminInvitationV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminInvitationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAdminInvitationV3OK:
		return v, nil, nil, nil

	case *GetAdminInvitationV3NotFound:
		return nil, v, nil, nil

	case *GetAdminInvitationV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminInvitationV3Short get user invitation
Endpoint to validate user invitation. When not found, it could also means the invitation has expired.
*/
func (a *Client) GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminInvitationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminInvitationV3OK:
		return v, nil
	case *GetAdminInvitationV3NotFound:
		return nil, v
	case *GetAdminInvitationV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateUserFromInvitationV3Short instead.

CreateUserFromInvitationV3 create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:

EMAILPASSWD: an authentication type used for new user registration through email.

Country use ISO3166-1 alpha-2 two letter, e.g. US.

Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
*/
func (a *Client) CreateUserFromInvitationV3(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, *CreateUserFromInvitationV3BadRequest, *CreateUserFromInvitationV3NotFound, *CreateUserFromInvitationV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUserFromInvitationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV3Created:
		return v, nil, nil, nil, nil

	case *CreateUserFromInvitationV3BadRequest:
		return nil, v, nil, nil, nil

	case *CreateUserFromInvitationV3NotFound:
		return nil, nil, v, nil, nil

	case *CreateUserFromInvitationV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserFromInvitationV3Short create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:

EMAILPASSWD: an authentication type used for new user registration through email.

Country use ISO3166-1 alpha-2 two letter, e.g. US.

Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
*/
func (a *Client) CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUserFromInvitationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV3Created:
		return v, nil
	case *CreateUserFromInvitationV3BadRequest:
		return nil, v
	case *CreateUserFromInvitationV3NotFound:
		return nil, v
	case *CreateUserFromInvitationV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateUserV3Short instead.

UpdateUserV3 update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                              * User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.


                              * User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.


                              * User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.


Important notes:



This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.

If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead





action code : 10103
*/
func (a *Client) UpdateUserV3(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, *UpdateUserV3BadRequest, *UpdateUserV3Unauthorized, *UpdateUserV3Conflict, *UpdateUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUserV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateUserV3OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateUserV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateUserV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserV3Short update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                                * User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.


                                * User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.


                                * User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.


Important notes:



This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.

If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead





action code : 10103
*/
func (a *Client) UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUserV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserV3OK:
		return v, nil
	case *UpdateUserV3BadRequest:
		return nil, v
	case *UpdateUserV3Unauthorized:
		return nil, v
	case *UpdateUserV3Conflict:
		return nil, v
	case *UpdateUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartialUpdateUserV3Short instead.

PublicPartialUpdateUserV3 update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                                  * User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.


                                  * User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.


                                  * User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.



action code : 10103
*/
func (a *Client) PublicPartialUpdateUserV3(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, *PublicPartialUpdateUserV3BadRequest, *PublicPartialUpdateUserV3Unauthorized, *PublicPartialUpdateUserV3Conflict, *PublicPartialUpdateUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartialUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPartialUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartialUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartialUpdateUserV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicPartialUpdateUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicPartialUpdateUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicPartialUpdateUserV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicPartialUpdateUserV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartialUpdateUserV3Short update user


Requires valid user access token





This Endpoint support update user based on given data. Single request can update single field or multi fields.




Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl}




Country use ISO3166-1 alpha-2 two letter, e.g. US.




Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



 Several case of updating email address

                                    * User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.


                                    * User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.


                                    * User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.



action code : 10103
*/
func (a *Client) PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartialUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPartialUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartialUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartialUpdateUserV3OK:
		return v, nil
	case *PublicPartialUpdateUserV3BadRequest:
		return nil, v
	case *PublicPartialUpdateUserV3Unauthorized:
		return nil, v
	case *PublicPartialUpdateUserV3Conflict:
		return nil, v
	case *PublicPartialUpdateUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSendVerificationCodeV3Short instead.

PublicSendVerificationCodeV3 send verification code to user
Required valid user authorization


The verification code is sent to email address




Available contexts for use :




                                      1.
UserAccountRegistration


a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
It is the default context if the Context field is empty





                                      2.
UpdateEmailAddress


a context type used for verify user before updating email address.(Without email address verified checking)





                                      3. upgradeHeadlessAccount


The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.







action code: 10116
*/
func (a *Client) PublicSendVerificationCodeV3(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, *PublicSendVerificationCodeV3BadRequest, *PublicSendVerificationCodeV3Unauthorized, *PublicSendVerificationCodeV3NotFound, *PublicSendVerificationCodeV3Conflict, *PublicSendVerificationCodeV3TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationCodeV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicSendVerificationCodeV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicSendVerificationCodeV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicSendVerificationCodeV3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicSendVerificationCodeV3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicSendVerificationCodeV3TooManyRequests:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendVerificationCodeV3Short send verification code to user
Required valid user authorization


The verification code is sent to email address




Available contexts for use :




                                      1.
UserAccountRegistration


a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
It is the default context if the Context field is empty





                                      2.
UpdateEmailAddress


a context type used for verify user before updating email address.(Without email address verified checking)





                                      3. upgradeHeadlessAccount


The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.







action code: 10116
*/
func (a *Client) PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationCodeV3NoContent:
		return v, nil
	case *PublicSendVerificationCodeV3BadRequest:
		return nil, v
	case *PublicSendVerificationCodeV3Unauthorized:
		return nil, v
	case *PublicSendVerificationCodeV3NotFound:
		return nil, v
	case *PublicSendVerificationCodeV3Conflict:
		return nil, v
	case *PublicSendVerificationCodeV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUserVerificationV3Short instead.

PublicUserVerificationV3 validate or consume verification code sent to user


Will consume code if validateOnly is set false




Required valid user authorization




Redeems a verification code sent to a user to verify the user's contact address is correct




Available ContactType : email




action code: 10107
*/
func (a *Client) PublicUserVerificationV3(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, *PublicUserVerificationV3BadRequest, *PublicUserVerificationV3Unauthorized, *PublicUserVerificationV3Forbidden, *PublicUserVerificationV3Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserVerificationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUserVerificationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserVerificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUserVerificationV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicUserVerificationV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicUserVerificationV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicUserVerificationV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicUserVerificationV3Conflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUserVerificationV3Short validate or consume verification code sent to user


Will consume code if validateOnly is set false




Required valid user authorization




Redeems a verification code sent to a user to verify the user's contact address is correct




Available ContactType : email




action code: 10107
*/
func (a *Client) PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserVerificationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUserVerificationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserVerificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUserVerificationV3NoContent:
		return v, nil
	case *PublicUserVerificationV3BadRequest:
		return nil, v
	case *PublicUserVerificationV3Unauthorized:
		return nil, v
	case *PublicUserVerificationV3Forbidden:
		return nil, v
	case *PublicUserVerificationV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpgradeHeadlessAccountV3Short instead.

PublicUpgradeHeadlessAccountV3 verify or consume verification code.


If validateOnly is set false, consume code and upgrade headless account and automatically verified the email address if it is succeeded


Require valid user access token.


The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.




The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.




This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

Supported user data fields :


                                      * displayName


                                      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                                      * country : format ISO3166-1 alpha-2 two letter, e.g. US



action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV3(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, *PublicUpgradeHeadlessAccountV3BadRequest, *PublicUpgradeHeadlessAccountV3Unauthorized, *PublicUpgradeHeadlessAccountV3Forbidden, *PublicUpgradeHeadlessAccountV3NotFound, *PublicUpgradeHeadlessAccountV3Conflict, *PublicUpgradeHeadlessAccountV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV3OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV3NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicUpgradeHeadlessAccountV3Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicUpgradeHeadlessAccountV3InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountV3Short verify or consume verification code.


If validateOnly is set false, consume code and upgrade headless account and automatically verified the email address if it is succeeded


Require valid user access token.


The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.




The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.




This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

Supported user data fields :


                                      * displayName


                                      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


                                      * country : format ISO3166-1 alpha-2 two letter, e.g. US



action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV3OK:
		return v, nil
	case *PublicUpgradeHeadlessAccountV3BadRequest:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Unauthorized:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Forbidden:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3NotFound:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Conflict:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicVerifyHeadlessAccountV3Short instead.

PublicVerifyHeadlessAccountV3 upgrade user account to full account (with email)


Require valid user authorization
action code : 10124




if set NeedVerificationCode = true, IAM will send verification code into email




user can use that verification code to verify user through /iam/v3/public/namespaces/{namespace}/users/me/code/verify
*/
func (a *Client) PublicVerifyHeadlessAccountV3(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, *PublicVerifyHeadlessAccountV3BadRequest, *PublicVerifyHeadlessAccountV3Unauthorized, *PublicVerifyHeadlessAccountV3NotFound, *PublicVerifyHeadlessAccountV3Conflict, *PublicVerifyHeadlessAccountV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyHeadlessAccountV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicVerifyHeadlessAccountV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicVerifyHeadlessAccountV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicVerifyHeadlessAccountV3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicVerifyHeadlessAccountV3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicVerifyHeadlessAccountV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyHeadlessAccountV3Short upgrade user account to full account (with email)


Require valid user authorization
action code : 10124




if set NeedVerificationCode = true, IAM will send verification code into email




user can use that verification code to verify user through /iam/v3/public/namespaces/{namespace}/users/me/code/verify
*/
func (a *Client) PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyHeadlessAccountV3OK:
		return v, nil
	case *PublicVerifyHeadlessAccountV3BadRequest:
		return nil, v
	case *PublicVerifyHeadlessAccountV3Unauthorized:
		return nil, v
	case *PublicVerifyHeadlessAccountV3NotFound:
		return nil, v
	case *PublicVerifyHeadlessAccountV3Conflict:
		return nil, v
	case *PublicVerifyHeadlessAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdatePasswordV3Short instead.

PublicUpdatePasswordV3 update user password
Required valid user authorization.
action code: 10107
*/
func (a *Client) PublicUpdatePasswordV3(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, *PublicUpdatePasswordV3BadRequest, *PublicUpdatePasswordV3Unauthorized, *PublicUpdatePasswordV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV3NoContent:
		return v, nil, nil, nil, nil

	case *PublicUpdatePasswordV3BadRequest:
		return nil, v, nil, nil, nil

	case *PublicUpdatePasswordV3Unauthorized:
		return nil, nil, v, nil, nil

	case *PublicUpdatePasswordV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePasswordV3Short update user password
Required valid user authorization.
action code: 10107
*/
func (a *Client) PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV3NoContent:
		return v, nil
	case *PublicUpdatePasswordV3BadRequest:
		return nil, v
	case *PublicUpdatePasswordV3Unauthorized:
		return nil, v
	case *PublicUpdatePasswordV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreateJusticeUserShort instead.

PublicCreateJusticeUser create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) PublicCreateJusticeUser(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, *PublicCreateJusticeUserBadRequest, *PublicCreateJusticeUserUnauthorized, *PublicCreateJusticeUserForbidden, *PublicCreateJusticeUserNotFound, *PublicCreateJusticeUserInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateJusticeUserCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicCreateJusticeUserBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicCreateJusticeUserUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicCreateJusticeUserForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicCreateJusticeUserNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicCreateJusticeUserInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateJusticeUserShort create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateJusticeUserCreated:
		return v, nil
	case *PublicCreateJusticeUserBadRequest:
		return nil, v
	case *PublicCreateJusticeUserUnauthorized:
		return nil, v
	case *PublicCreateJusticeUserForbidden:
		return nil, v
	case *PublicCreateJusticeUserNotFound:
		return nil, v
	case *PublicCreateJusticeUserInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPlatformLinkV3Short instead.

PublicPlatformLinkV3 link user's account with platform
Required valid user authorization.



Prerequisite:
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                                      * steam : The ticketâs value is the binary ticket returned by Steam.


                                      * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                                      * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                                      * google : The ticketâs value is the authorization code returned by Google OAuth


                                      * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                                      * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                                      * android : The ticket's value is the Androidâs device ID


                                      * ios : The ticket's value is the iOSâs device ID.


                                      * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                                      * device : Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                                      * discord : The ticketâs value is the authorization code returned by Discord OAuth.


                                      * ps4web : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * ps4 : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * ps5 : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * xblweb : The ticketâs value is the authorization code returned by XBox Live OAuth.


                                      * live : The ticketâs value is the XSTS token.


                                      * awscognito : The ticketâs value is the aws cognito access token (JWT).


                                      * epicgames : The ticketâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.


                                      * nintendo : The ticketâs value is the id_token returned by Nintendo OAuth.


                                      * netflix : The ticketâs value is GAT (Gamer Access Token) returned by Netflix backend.


                                      * snapchat : The ticketâs value is authorization code returned by Snapchat OAuth.


                                      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.



action code : 10144
*/
func (a *Client) PublicPlatformLinkV3(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, *PublicPlatformLinkV3BadRequest, *PublicPlatformLinkV3Unauthorized, *PublicPlatformLinkV3NotFound, *PublicPlatformLinkV3Conflict, *PublicPlatformLinkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPlatformLinkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPlatformLinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPlatformLinkV3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPlatformLinkV3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPlatformLinkV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformLinkV3Short link user's account with platform
Required valid user authorization.



Prerequisite:
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).


## Supported platforms:




                                      * steam : The ticketâs value is the binary ticket returned by Steam.


                                      * steamopenid : Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication


                                      * facebook : The ticketâs value is the authorization code returned by Facebook OAuth


                                      * google : The ticketâs value is the authorization code returned by Google OAuth


                                      * oculus : The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                                      * twitch : The ticketâs value is the authorization code returned by Twitch OAuth.


                                      * android : The ticket's value is the Androidâs device ID


                                      * ios : The ticket's value is the iOSâs device ID.


                                      * apple : The ticketâs value is the authorization code returned by Apple OAuth.


                                      * device : Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.


                                      * discord : The ticketâs value is the authorization code returned by Discord OAuth.


                                      * ps4web : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * ps4 : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * ps5 : The ticketâs value is the authorization code returned by PSN OAuth.


                                      * xblweb : The ticketâs value is the authorization code returned by XBox Live OAuth.


                                      * live : The ticketâs value is the XSTS token.


                                      * awscognito : The ticketâs value is the aws cognito access token (JWT).


                                      * epicgames : The ticketâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.


                                      * nintendo : The ticketâs value is the id_token returned by Nintendo OAuth.


                                      * netflix : The ticketâs value is GAT (Gamer Access Token) returned by Netflix backend.


                                      * snapchat : The ticketâs value is authorization code returned by Snapchat OAuth.


                                      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.



action code : 10144
*/
func (a *Client) PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV3NoContent:
		return v, nil
	case *PublicPlatformLinkV3BadRequest:
		return nil, v
	case *PublicPlatformLinkV3Unauthorized:
		return nil, v
	case *PublicPlatformLinkV3NotFound:
		return nil, v
	case *PublicPlatformLinkV3Conflict:
		return nil, v
	case *PublicPlatformLinkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPlatformUnlinkV3Short instead.

PublicPlatformUnlinkV3 unlink user's account from specific platform
Required valid user authorization.


## Supported platforms:




                                      * steam


                                      * steamopenid


                                      * facebook


                                      * google


                                      * oculus


                                      * twitch


                                      * android


                                      * ios


                                      * apple


                                      * device


                                      * discord


                                      * awscognito


                                      * epicgames


                                      * nintendo




Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.

platformNamespace need to be specified when the platform ID is 'justice'.



Unlink user's account from justice platform will enable password token grant and password update.



If you want to unlink user's account in a game namespace, you have to specify platformNamespace to that game namespace.



action code : 10121
*/
func (a *Client) PublicPlatformUnlinkV3(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, *PublicPlatformUnlinkV3BadRequest, *PublicPlatformUnlinkV3Unauthorized, *PublicPlatformUnlinkV3NotFound, *PublicPlatformUnlinkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicPlatformUnlinkV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicPlatformUnlinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicPlatformUnlinkV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicPlatformUnlinkV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformUnlinkV3Short unlink user's account from specific platform
Required valid user authorization.


## Supported platforms:




                                      * steam


                                      * steamopenid


                                      * facebook


                                      * google


                                      * oculus


                                      * twitch


                                      * android


                                      * ios


                                      * apple


                                      * device


                                      * discord


                                      * awscognito


                                      * epicgames


                                      * nintendo




Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.

platformNamespace need to be specified when the platform ID is 'justice'.



Unlink user's account from justice platform will enable password token grant and password update.



If you want to unlink user's account in a game namespace, you have to specify platformNamespace to that game namespace.



action code : 10121
*/
func (a *Client) PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkV3NoContent:
		return v, nil
	case *PublicPlatformUnlinkV3BadRequest:
		return nil, v
	case *PublicPlatformUnlinkV3Unauthorized:
		return nil, v
	case *PublicPlatformUnlinkV3NotFound:
		return nil, v
	case *PublicPlatformUnlinkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPlatformUnlinkAllV3Short instead.

PublicPlatformUnlinkAllV3 unlink user's account from specific platform
Required valid user authorization.


Unlink user's account from for all third platforms.
*/
func (a *Client) PublicPlatformUnlinkAllV3(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, *PublicPlatformUnlinkAllV3BadRequest, *PublicPlatformUnlinkAllV3Unauthorized, *PublicPlatformUnlinkAllV3NotFound, *PublicPlatformUnlinkAllV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkAllV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkAllV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkAllV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkAllV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicPlatformUnlinkAllV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicPlatformUnlinkAllV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicPlatformUnlinkAllV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicPlatformUnlinkAllV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformUnlinkAllV3Short unlink user's account from specific platform
Required valid user authorization.


Unlink user's account from for all third platforms.
*/
func (a *Client) PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkAllV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkAllV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkAllV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkAllV3NoContent:
		return v, nil
	case *PublicPlatformUnlinkAllV3BadRequest:
		return nil, v
	case *PublicPlatformUnlinkAllV3Unauthorized:
		return nil, v
	case *PublicPlatformUnlinkAllV3NotFound:
		return nil, v
	case *PublicPlatformUnlinkAllV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicForcePlatformLinkV3Short instead.

PublicForcePlatformLinkV3 force linking user's account with platform
Force linking user account with platform.

If this platform account was already linked to another user account, this endpoint will perform force linking and remove platform from that conflict user, not only from the current request namespace but also include all the enrolled namespaces.

If current user have linked to this platform with another platform account (include once linked but it is unlinked now), it will not allow user to perform linking.


## Supported platforms:




                                      * steam : The platform_tokenâs value is the binary ticket returned by Steam.


                                      * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


                                      * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


                                      * google : The platform_tokenâs value is the authorization code returned by Google OAuth


                                      * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                                      * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


                                      * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


                                      * android : The device_id is the Androidâs device ID


                                      * ios : The device_id is the iOSâs device ID.


                                      * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


                                      * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


                                      * justice : The platform_tokenâs value is the designated userâs access token.


                                      * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


                                      * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                                      * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                                      * nintendo : The platform_tokenâs value is the id_token returned by Nintendo OAuth.


                                      * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


                                      * live : The platform_tokenâs value is xbox XSTS token


                                      * xblweb : The platform_tokenâs value is code returned by xbox after login


                                      * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


                                      * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.


                                      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
*/
func (a *Client) PublicForcePlatformLinkV3(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, *PublicForcePlatformLinkV3BadRequest, *PublicForcePlatformLinkV3Unauthorized, *PublicForcePlatformLinkV3NotFound, *PublicForcePlatformLinkV3Conflict, *PublicForcePlatformLinkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForcePlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForcePlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForcePlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicForcePlatformLinkV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicForcePlatformLinkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicForcePlatformLinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicForcePlatformLinkV3NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicForcePlatformLinkV3Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicForcePlatformLinkV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForcePlatformLinkV3Short force linking user's account with platform
Force linking user account with platform.

If this platform account was already linked to another user account, this endpoint will perform force linking and remove platform from that conflict user, not only from the current request namespace but also include all the enrolled namespaces.

If current user have linked to this platform with another platform account (include once linked but it is unlinked now), it will not allow user to perform linking.


## Supported platforms:




                                      * steam : The platform_tokenâs value is the binary ticket returned by Steam.


                                      * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


                                      * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


                                      * google : The platform_tokenâs value is the authorization code returned by Google OAuth


                                      * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


                                      * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


                                      * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


                                      * android : The device_id is the Androidâs device ID


                                      * ios : The device_id is the iOSâs device ID.


                                      * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


                                      * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


                                      * justice : The platform_tokenâs value is the designated userâs access token.


                                      * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


                                      * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                                      * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


                                      * nintendo : The platform_tokenâs value is the id_token returned by Nintendo OAuth.


                                      * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


                                      * live : The platform_tokenâs value is xbox XSTS token


                                      * xblweb : The platform_tokenâs value is code returned by xbox after login


                                      * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


                                      * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.


                                      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
*/
func (a *Client) PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForcePlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForcePlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForcePlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForcePlatformLinkV3NoContent:
		return v, nil
	case *PublicForcePlatformLinkV3BadRequest:
		return nil, v
	case *PublicForcePlatformLinkV3Unauthorized:
		return nil, v
	case *PublicForcePlatformLinkV3NotFound:
		return nil, v
	case *PublicForcePlatformLinkV3Conflict:
		return nil, v
	case *PublicForcePlatformLinkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicWebLinkPlatformShort instead.

PublicWebLinkPlatform create public web linking
This endpoint is used to generate third party login page which will redirected to establish endpoint.
*/
func (a *Client) PublicWebLinkPlatform(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, *PublicWebLinkPlatformBadRequest, *PublicWebLinkPlatformUnauthorized, *PublicWebLinkPlatformNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatform",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformOK:
		return v, nil, nil, nil, nil

	case *PublicWebLinkPlatformBadRequest:
		return nil, v, nil, nil, nil

	case *PublicWebLinkPlatformUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicWebLinkPlatformNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicWebLinkPlatformShort create public web linking
This endpoint is used to generate third party login page which will redirected to establish endpoint.
*/
func (a *Client) PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatform",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformOK:
		return v, nil
	case *PublicWebLinkPlatformBadRequest:
		return nil, v
	case *PublicWebLinkPlatformUnauthorized:
		return nil, v
	case *PublicWebLinkPlatformNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicWebLinkPlatformEstablishShort instead.

PublicWebLinkPlatformEstablish establish link progress
This endpoint is used by third party to redirect the code for the purpose of linking the account third party to IAM account.
*/
func (a *Client) PublicWebLinkPlatformEstablish(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformEstablishParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatformEstablish",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformEstablishReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformEstablishFound:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicWebLinkPlatformEstablishShort establish link progress
This endpoint is used by third party to redirect the code for the purpose of linking the account third party to IAM account.
*/
func (a *Client) PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformEstablishParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatformEstablish",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformEstablishReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformEstablishFound:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ResetPasswordV3Short instead.

ResetPasswordV3 reset user password


action code: 10105
*/
func (a *Client) ResetPasswordV3(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, *ResetPasswordV3BadRequest, *ResetPasswordV3Forbidden, *ResetPasswordV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordV3NoContent:
		return v, nil, nil, nil, nil

	case *ResetPasswordV3BadRequest:
		return nil, v, nil, nil, nil

	case *ResetPasswordV3Forbidden:
		return nil, nil, v, nil, nil

	case *ResetPasswordV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPasswordV3Short reset user password


action code: 10105
*/
func (a *Client) ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordV3NoContent:
		return v, nil
	case *ResetPasswordV3BadRequest:
		return nil, v
	case *ResetPasswordV3Forbidden:
		return nil, v
	case *ResetPasswordV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserByUserIDV3Short instead.

PublicGetUserByUserIDV3 get user by user id


This endpoint retrieve user attributes. action code: 10129
*/
func (a *Client) PublicGetUserByUserIDV3(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, *PublicGetUserByUserIDV3BadRequest, *PublicGetUserByUserIDV3NotFound, *PublicGetUserByUserIDV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV3OK:
		return v, nil, nil, nil, nil

	case *PublicGetUserByUserIDV3BadRequest:
		return nil, v, nil, nil, nil

	case *PublicGetUserByUserIDV3NotFound:
		return nil, nil, v, nil, nil

	case *PublicGetUserByUserIDV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByUserIDV3Short get user by user id


This endpoint retrieve user attributes. action code: 10129
*/
func (a *Client) PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV3OK:
		return v, nil
	case *PublicGetUserByUserIDV3BadRequest:
		return nil, v
	case *PublicGetUserByUserIDV3NotFound:
		return nil, v
	case *PublicGetUserByUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserBanHistoryV3Short instead.

PublicGetUserBanHistoryV3 get user's bans
Required valid user authorization.


Notes:




                                      * This endpoint retrieve the first page of the data if after and before parameters is empty


                                      * The pagination is not working yet
*/
func (a *Client) PublicGetUserBanHistoryV3(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, *PublicGetUserBanHistoryV3BadRequest, *PublicGetUserBanHistoryV3Unauthorized, *PublicGetUserBanHistoryV3Forbidden, *PublicGetUserBanHistoryV3NotFound, *PublicGetUserBanHistoryV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBanHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanHistoryV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetUserBanHistoryV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetUserBanHistoryV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetUserBanHistoryV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetUserBanHistoryV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetUserBanHistoryV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserBanHistoryV3Short get user's bans
Required valid user authorization.


Notes:




                                      * This endpoint retrieve the first page of the data if after and before parameters is empty


                                      * The pagination is not working yet
*/
func (a *Client) PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBanHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanHistoryV3OK:
		return v, nil
	case *PublicGetUserBanHistoryV3BadRequest:
		return nil, v
	case *PublicGetUserBanHistoryV3Unauthorized:
		return nil, v
	case *PublicGetUserBanHistoryV3Forbidden:
		return nil, v
	case *PublicGetUserBanHistoryV3NotFound:
		return nil, v
	case *PublicGetUserBanHistoryV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListUserAllPlatformAccountsDistinctV3Short instead.

PublicListUserAllPlatformAccountsDistinctV3 get distinct platform accounts linked to the user


This endpoint retrieves platform accounts linked to user.

It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.

Required valid user authorization.
*/
func (a *Client) PublicListUserAllPlatformAccountsDistinctV3(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, *PublicListUserAllPlatformAccountsDistinctV3BadRequest, *PublicListUserAllPlatformAccountsDistinctV3Unauthorized, *PublicListUserAllPlatformAccountsDistinctV3Forbidden, *PublicListUserAllPlatformAccountsDistinctV3NotFound, *PublicListUserAllPlatformAccountsDistinctV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserAllPlatformAccountsDistinctV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserAllPlatformAccountsDistinctV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserAllPlatformAccountsDistinctV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListUserAllPlatformAccountsDistinctV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicListUserAllPlatformAccountsDistinctV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicListUserAllPlatformAccountsDistinctV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicListUserAllPlatformAccountsDistinctV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicListUserAllPlatformAccountsDistinctV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicListUserAllPlatformAccountsDistinctV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserAllPlatformAccountsDistinctV3Short get distinct platform accounts linked to the user


This endpoint retrieves platform accounts linked to user.

It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.

Required valid user authorization.
*/
func (a *Client) PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserAllPlatformAccountsDistinctV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserAllPlatformAccountsDistinctV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserAllPlatformAccountsDistinctV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserAllPlatformAccountsDistinctV3OK:
		return v, nil
	case *PublicListUserAllPlatformAccountsDistinctV3BadRequest:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3Unauthorized:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3Forbidden:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3NotFound:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserInformationV3Short instead.

PublicGetUserInformationV3 get user's information v3


This endpoint retrieves user info and linked platform accounts.
Required permissions 'NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]'
*/
func (a *Client) PublicGetUserInformationV3(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, *PublicGetUserInformationV3Unauthorized, *PublicGetUserInformationV3Forbidden, *PublicGetUserInformationV3NotFound, *PublicGetUserInformationV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserInformationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserInformationV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetUserInformationV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicGetUserInformationV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicGetUserInformationV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetUserInformationV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserInformationV3Short get user's information v3


This endpoint retrieves user info and linked platform accounts.
Required permissions 'NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]'
*/
func (a *Client) PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserInformationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserInformationV3OK:
		return v, nil
	case *PublicGetUserInformationV3Unauthorized:
		return nil, v
	case *PublicGetUserInformationV3Forbidden:
		return nil, v
	case *PublicGetUserInformationV3NotFound:
		return nil, v
	case *PublicGetUserInformationV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserLoginHistoriesV3Short instead.

PublicGetUserLoginHistoriesV3 get user's login histories
Required valid user authorization.

Notes for this endpoint:

                                      * This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
                                      * The maximum value of the limit is 100 and the minimum value of the limit is 1.
                                      * This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
                                      * This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.
*/
func (a *Client) PublicGetUserLoginHistoriesV3(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, *PublicGetUserLoginHistoriesV3Unauthorized, *PublicGetUserLoginHistoriesV3Forbidden, *PublicGetUserLoginHistoriesV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserLoginHistoriesV3OK:
		return v, nil, nil, nil, nil

	case *PublicGetUserLoginHistoriesV3Unauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetUserLoginHistoriesV3Forbidden:
		return nil, nil, v, nil, nil

	case *PublicGetUserLoginHistoriesV3NotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserLoginHistoriesV3Short get user's login histories
Required valid user authorization.

Notes for this endpoint:

                                          * This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
                                          * The maximum value of the limit is 100 and the minimum value of the limit is 1.
                                          * This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
                                          * This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.
*/
func (a *Client) PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserLoginHistoriesV3OK:
		return v, nil
	case *PublicGetUserLoginHistoriesV3Unauthorized:
		return nil, v
	case *PublicGetUserLoginHistoriesV3Forbidden:
		return nil, v
	case *PublicGetUserLoginHistoriesV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserPlatformAccountsV3Short instead.

PublicGetUserPlatformAccountsV3 get platform accounts linked to the user


This endpoint retrieves platform accounts linked to user. Required valid user authorization.

action code: 10128
*/
func (a *Client) PublicGetUserPlatformAccountsV3(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, *PublicGetUserPlatformAccountsV3BadRequest, *PublicGetUserPlatformAccountsV3Unauthorized, *PublicGetUserPlatformAccountsV3Forbidden, *PublicGetUserPlatformAccountsV3NotFound, *PublicGetUserPlatformAccountsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPlatformAccountsV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGetUserPlatformAccountsV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGetUserPlatformAccountsV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGetUserPlatformAccountsV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGetUserPlatformAccountsV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGetUserPlatformAccountsV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPlatformAccountsV3Short get platform accounts linked to the user


This endpoint retrieves platform accounts linked to user. Required valid user authorization.

action code: 10128
*/
func (a *Client) PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPlatformAccountsV3OK:
		return v, nil
	case *PublicGetUserPlatformAccountsV3BadRequest:
		return nil, v
	case *PublicGetUserPlatformAccountsV3Unauthorized:
		return nil, v
	case *PublicGetUserPlatformAccountsV3Forbidden:
		return nil, v
	case *PublicGetUserPlatformAccountsV3NotFound:
		return nil, v
	case *PublicGetUserPlatformAccountsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListJusticePlatformAccountsV3Short instead.

PublicListJusticePlatformAccountsV3 get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID


Requires valid user access token
*/
func (a *Client) PublicListJusticePlatformAccountsV3(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, *PublicListJusticePlatformAccountsV3BadRequest, *PublicListJusticePlatformAccountsV3Unauthorized, *PublicListJusticePlatformAccountsV3Forbidden, *PublicListJusticePlatformAccountsV3NotFound, *PublicListJusticePlatformAccountsV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListJusticePlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListJusticePlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListJusticePlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListJusticePlatformAccountsV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicListJusticePlatformAccountsV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicListJusticePlatformAccountsV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicListJusticePlatformAccountsV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicListJusticePlatformAccountsV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicListJusticePlatformAccountsV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListJusticePlatformAccountsV3Short get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID


Requires valid user access token
*/
func (a *Client) PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListJusticePlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListJusticePlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListJusticePlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListJusticePlatformAccountsV3OK:
		return v, nil
	case *PublicListJusticePlatformAccountsV3BadRequest:
		return nil, v
	case *PublicListJusticePlatformAccountsV3Unauthorized:
		return nil, v
	case *PublicListJusticePlatformAccountsV3Forbidden:
		return nil, v
	case *PublicListJusticePlatformAccountsV3NotFound:
		return nil, v
	case *PublicListJusticePlatformAccountsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicLinkPlatformAccountShort instead.

PublicLinkPlatformAccount link a platform user account to user account
It is going to be DEPRECATED.
Update Platform Account relation to current User Account.
Note: Game progression data (statistics, reward, etc) associated with previous User Account will not be
transferred. If the data is tight to game user ID, the user will have the game progression data.
*/
func (a *Client) PublicLinkPlatformAccount(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, *PublicLinkPlatformAccountBadRequest, *PublicLinkPlatformAccountUnauthorized, *PublicLinkPlatformAccountForbidden, *PublicLinkPlatformAccountInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicLinkPlatformAccountNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicLinkPlatformAccountBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicLinkPlatformAccountUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicLinkPlatformAccountForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicLinkPlatformAccountInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicLinkPlatformAccountShort link a platform user account to user account
It is going to be DEPRECATED.
Update Platform Account relation to current User Account.
Note: Game progression data (statistics, reward, etc) associated with previous User Account will not be
transferred. If the data is tight to game user ID, the user will have the game progression data.
*/
func (a *Client) PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicLinkPlatformAccountNoContent:
		return v, nil
	case *PublicLinkPlatformAccountBadRequest:
		return nil, v
	case *PublicLinkPlatformAccountUnauthorized:
		return nil, v
	case *PublicLinkPlatformAccountForbidden:
		return nil, v
	case *PublicLinkPlatformAccountInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicForceLinkPlatformWithProgressionShort instead.

PublicForceLinkPlatformWithProgression force link 3rd platform account and transfer progression
Force update other account's Platform Account relation to current User Account.

This endpoint can transfer progression from 3rd platform binding account's to current account.
This endpoint need the same requestID which also used in Get link status.
*/
func (a *Client) PublicForceLinkPlatformWithProgression(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, *PublicForceLinkPlatformWithProgressionBadRequest, *PublicForceLinkPlatformWithProgressionUnauthorized, *PublicForceLinkPlatformWithProgressionForbidden, *PublicForceLinkPlatformWithProgressionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForceLinkPlatformWithProgressionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForceLinkPlatformWithProgression",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForceLinkPlatformWithProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicForceLinkPlatformWithProgressionNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicForceLinkPlatformWithProgressionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicForceLinkPlatformWithProgressionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicForceLinkPlatformWithProgressionForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicForceLinkPlatformWithProgressionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForceLinkPlatformWithProgressionShort force link 3rd platform account and transfer progression
Force update other account's Platform Account relation to current User Account.

This endpoint can transfer progression from 3rd platform binding account's to current account.
This endpoint need the same requestID which also used in Get link status.
*/
func (a *Client) PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForceLinkPlatformWithProgressionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForceLinkPlatformWithProgression",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForceLinkPlatformWithProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForceLinkPlatformWithProgressionNoContent:
		return v, nil
	case *PublicForceLinkPlatformWithProgressionBadRequest:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionUnauthorized:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionForbidden:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPublisherUserV3Short instead.

PublicGetPublisherUserV3 get publisher user


Required permissions 'NAMESPACE:{namespace}:USER:{userId}:PUBLISHER [READ].




Restriction:
Path Parameter namespace can be provided only with game namespace
*/
func (a *Client) PublicGetPublisherUserV3(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, *PublicGetPublisherUserV3BadRequest, *PublicGetPublisherUserV3Unauthorized, *PublicGetPublisherUserV3Forbidden, *PublicGetPublisherUserV3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPublisherUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetPublisherUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPublisherUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPublisherUserV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetPublisherUserV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetPublisherUserV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetPublisherUserV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetPublisherUserV3NotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPublisherUserV3Short get publisher user


Required permissions 'NAMESPACE:{namespace}:USER:{userId}:PUBLISHER [READ].




Restriction:
Path Parameter namespace can be provided only with game namespace
*/
func (a *Client) PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPublisherUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetPublisherUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPublisherUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPublisherUserV3OK:
		return v, nil
	case *PublicGetPublisherUserV3BadRequest:
		return nil, v
	case *PublicGetPublisherUserV3Unauthorized:
		return nil, v
	case *PublicGetPublisherUserV3Forbidden:
		return nil, v
	case *PublicGetPublisherUserV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicValidateUserByUserIDAndPasswordV3Short instead.

PublicValidateUserByUserIDAndPasswordV3 validate user password by user id and password
This endpoint is used to validate the user password. Required valid user authorization and valid user ID.


Notes:




                                              * This endpoint validate the user password by specifying the userId and password
*/
func (a *Client) PublicValidateUserByUserIDAndPasswordV3(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, *PublicValidateUserByUserIDAndPasswordV3BadRequest, *PublicValidateUserByUserIDAndPasswordV3Unauthorized, *PublicValidateUserByUserIDAndPasswordV3Forbidden, *PublicValidateUserByUserIDAndPasswordV3NotFound, *PublicValidateUserByUserIDAndPasswordV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateUserByUserIDAndPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicValidateUserByUserIDAndPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateUserByUserIDAndPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicValidateUserByUserIDAndPasswordV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicValidateUserByUserIDAndPasswordV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicValidateUserByUserIDAndPasswordV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicValidateUserByUserIDAndPasswordV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicValidateUserByUserIDAndPasswordV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicValidateUserByUserIDAndPasswordV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicValidateUserByUserIDAndPasswordV3Short validate user password by user id and password
This endpoint is used to validate the user password. Required valid user authorization and valid user ID.


Notes:




                                              * This endpoint validate the user password by specifying the userId and password
*/
func (a *Client) PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateUserByUserIDAndPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicValidateUserByUserIDAndPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateUserByUserIDAndPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicValidateUserByUserIDAndPasswordV3NoContent:
		return v, nil
	case *PublicValidateUserByUserIDAndPasswordV3BadRequest:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3Unauthorized:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3Forbidden:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3NotFound:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyUserV3Short instead.

PublicGetMyUserV3 get my user


Require valid user authorization
Get my user data
action code : 10147
*/
func (a *Client) PublicGetMyUserV3(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, *PublicGetMyUserV3Unauthorized, *PublicGetMyUserV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyUserV3OK:
		return v, nil, nil, nil

	case *PublicGetMyUserV3Unauthorized:
		return nil, v, nil, nil

	case *PublicGetMyUserV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyUserV3Short get my user


Require valid user authorization
Get my user data
action code : 10147
*/
func (a *Client) PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyUserV3OK:
		return v, nil
	case *PublicGetMyUserV3Unauthorized:
		return nil, v
	case *PublicGetMyUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetLinkHeadlessAccountToMyAccountConflictV3Short instead.

PublicGetLinkHeadlessAccountToMyAccountConflictV3 get conflict result when link headless account to current full account by one time code
Note:

1. My account should be full account
2. My account not linked to request headless account's third platform.

After client resolving the conflict, it will call endpoint /iam/v3/public/users/me/headless/linkWithProgression [POST]
*/
func (a *Client) PublicGetLinkHeadlessAccountToMyAccountConflictV3(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest, *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized, *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden, *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetLinkHeadlessAccountToMyAccountConflictV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me/headless/link/conflict",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetLinkHeadlessAccountToMyAccountConflictV3Short get conflict result when link headless account to current full account by one time code
Note:

1. My account should be full account
2. My account not linked to request headless account's third platform.

After client resolving the conflict, it will call endpoint /iam/v3/public/users/me/headless/linkWithProgression [POST]
*/
func (a *Client) PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetLinkHeadlessAccountToMyAccountConflictV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me/headless/link/conflict",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK:
		return v, nil
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use LinkHeadlessAccountToMyAccountV3Short instead.

LinkHeadlessAccountToMyAccountV3 link headless account to current full account
Note:

1. My account should be full account
2. My account not linked to headless account's third platform.
*/
func (a *Client) LinkHeadlessAccountToMyAccountV3(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, *LinkHeadlessAccountToMyAccountV3BadRequest, *LinkHeadlessAccountToMyAccountV3Unauthorized, *LinkHeadlessAccountToMyAccountV3Forbidden, *LinkHeadlessAccountToMyAccountV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLinkHeadlessAccountToMyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "LinkHeadlessAccountToMyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/headless/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LinkHeadlessAccountToMyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *LinkHeadlessAccountToMyAccountV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *LinkHeadlessAccountToMyAccountV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *LinkHeadlessAccountToMyAccountV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *LinkHeadlessAccountToMyAccountV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *LinkHeadlessAccountToMyAccountV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LinkHeadlessAccountToMyAccountV3Short link headless account to current full account
Note:

1. My account should be full account
2. My account not linked to headless account's third platform.
*/
func (a *Client) LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLinkHeadlessAccountToMyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "LinkHeadlessAccountToMyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/headless/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LinkHeadlessAccountToMyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LinkHeadlessAccountToMyAccountV3NoContent:
		return v, nil
	case *LinkHeadlessAccountToMyAccountV3BadRequest:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3Unauthorized:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3Forbidden:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSendVerificationLinkV3Short instead.

PublicSendVerificationLinkV3 send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
Required valid user authorization


The verification link is sent to email address




It will not send request if user email is already verified
*/
func (a *Client) PublicSendVerificationLinkV3(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, *PublicSendVerificationLinkV3BadRequest, *PublicSendVerificationLinkV3Unauthorized, *PublicSendVerificationLinkV3Conflict, *PublicSendVerificationLinkV3TooManyRequests, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/verify_link/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationLinkV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicSendVerificationLinkV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicSendVerificationLinkV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicSendVerificationLinkV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *PublicSendVerificationLinkV3TooManyRequests:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendVerificationLinkV3Short send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
Required valid user authorization


The verification link is sent to email address




It will not send request if user email is already verified
*/
func (a *Client) PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/verify_link/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationLinkV3NoContent:
		return v, nil
	case *PublicSendVerificationLinkV3BadRequest:
		return nil, v
	case *PublicSendVerificationLinkV3Unauthorized:
		return nil, v
	case *PublicSendVerificationLinkV3Conflict:
		return nil, v
	case *PublicSendVerificationLinkV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicVerifyUserByLinkV3Short instead.

PublicVerifyUserByLinkV3 verify user email by the verification link code
*/
func (a *Client) PublicVerifyUserByLinkV3(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyUserByLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyUserByLinkV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/verify_link/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyUserByLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyUserByLinkV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyUserByLinkV3Short verify user email by the verification link code
*/
func (a *Client) PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyUserByLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyUserByLinkV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/verify_link/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyUserByLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyUserByLinkV3Found:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
