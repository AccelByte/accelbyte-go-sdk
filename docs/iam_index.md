# Iam Service Index

&nbsp;

## Operations

### Bans Wrapper:  [Bans](../services-api/pkg/service/iam/bans.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/bans` | GET | GetBansTypeShort | [GetBansTypeShort](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [GetBansTypeShort](../services-api/pkg/service/iam/bans.go) |
| `/iam/bans/reasons` | GET | GetListBanReasonShort | [GetListBanReasonShort](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [GetListBanReasonShort](../services-api/pkg/service/iam/bans.go) |
| `/iam/v3/admin/bans` | GET | AdminGetBansTypeV3Short | [AdminGetBansTypeV3Short](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [AdminGetBansTypeV3Short](../services-api/pkg/service/iam/bans.go) |
| `/iam/v3/admin/bans/reasons` | GET | AdminGetListBanReasonV3Short | [AdminGetListBanReasonV3Short](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [AdminGetListBanReasonV3Short](../services-api/pkg/service/iam/bans.go) |
| `/iam/v3/admin/namespaces/{namespace}/bans/users` | GET | AdminGetBannedUsersV3Short | [AdminGetBannedUsersV3Short](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [AdminGetBannedUsersV3Short](../services-api/pkg/service/iam/bans.go) |
| `/iam/v3/admin/namespaces/{namespace}/bantypes` | GET | AdminGetBansTypeWithNamespaceV3Short | [AdminGetBansTypeWithNamespaceV3Short](../iam-sdk/pkg/iamclient/bans/bans_client.go) | [AdminGetBansTypeWithNamespaceV3Short](../services-api/pkg/service/iam/bans.go) |

### Clients Wrapper:  [Clients](../services-api/pkg/service/iam/clients.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/clients` | GET | GetClientsShort | [GetClientsShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [GetClientsShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients` | POST | CreateClientShort | [CreateClientShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [CreateClientShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}` | GET | GetClientShort | [GetClientShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [GetClientShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}` | PUT | UpdateClientShort | [UpdateClientShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [UpdateClientShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}` | DELETE | DeleteClientShort | [DeleteClientShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [DeleteClientShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}/clientpermissions` | POST | UpdateClientPermissionShort | [UpdateClientPermissionShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [UpdateClientPermissionShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}/clientpermissions/{resource}/{action}` | POST | AddClientPermissionShort | [AddClientPermissionShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AddClientPermissionShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}/clientpermissions/{resource}/{action}` | DELETE | DeleteClientPermissionShort | [DeleteClientPermissionShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [DeleteClientPermissionShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/clients/{clientId}/secret` | PUT | UpdateClientSecretShort | [UpdateClientSecretShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [UpdateClientSecretShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/namespaces/{namespace}/clients` | GET | GetClientsbyNamespaceShort | [GetClientsbyNamespaceShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [GetClientsbyNamespaceShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/namespaces/{namespace}/clients` | POST | CreateClientByNamespaceShort | [CreateClientByNamespaceShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [CreateClientByNamespaceShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/namespaces/{namespace}/clients/{clientId}` | DELETE | DeleteClientByNamespaceShort | [DeleteClientByNamespaceShort](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [DeleteClientByNamespaceShort](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients` | GET | AdminGetClientsByNamespaceV3Short | [AdminGetClientsByNamespaceV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminGetClientsByNamespaceV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients` | POST | AdminCreateClientV3Short | [AdminCreateClientV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminCreateClientV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}` | GET | AdminGetClientsbyNamespacebyIDV3Short | [AdminGetClientsbyNamespacebyIDV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminGetClientsbyNamespacebyIDV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}` | DELETE | AdminDeleteClientV3Short | [AdminDeleteClientV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminDeleteClientV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}` | PATCH | AdminUpdateClientV3Short | [AdminUpdateClientV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminUpdateClientV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions` | PUT | AdminUpdateClientPermissionV3Short | [AdminUpdateClientPermissionV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminUpdateClientPermissionV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions` | POST | AdminAddClientPermissionsV3Short | [AdminAddClientPermissionsV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminAddClientPermissionsV3Short](../services-api/pkg/service/iam/clients.go) |
| `/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}` | DELETE | AdminDeleteClientPermissionV3Short | [AdminDeleteClientPermissionV3Short](../iam-sdk/pkg/iamclient/clients/clients_client.go) | [AdminDeleteClientPermissionV3Short](../services-api/pkg/service/iam/clients.go) |

### Users Wrapper:  [Users](../services-api/pkg/service/iam/users.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/namespaces/{namespace}/users` | POST | CreateUserShort | [CreateUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [CreateUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/admin` | GET | GetAdminUsersByRoleIDShort | [GetAdminUsersByRoleIDShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetAdminUsersByRoleIDShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/byLoginId` | GET | GetUserByLoginIDShort | [GetUserByLoginIDShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserByLoginIDShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/byPlatformUserID` | GET | GetUserByPlatformUserIDShort | [GetUserByPlatformUserIDShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserByPlatformUserIDShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/forgotPassword` | POST | ForgotPasswordShort | [ForgotPasswordShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [ForgotPasswordShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/listByLoginIds` | GET | GetUsersByLoginIdsShort | [GetUsersByLoginIdsShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUsersByLoginIdsShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/resetPassword` | POST | ResetPasswordShort | [ResetPasswordShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [ResetPasswordShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/search` | GET | SearchUserShort | [SearchUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [SearchUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}` | GET | GetUserByUserIDShort | [GetUserByUserIDShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserByUserIDShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}` | PUT | UpdateUserShort | [UpdateUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpdateUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}` | DELETE | DeleteUserShort | [DeleteUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DeleteUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/ban` | POST | BanUserShort | [BanUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [BanUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/bans` | GET | GetUserBanHistoryShort | [GetUserBanHistoryShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserBanHistoryShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable` | PUT | DisableUserBanShort | [DisableUserBanShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DisableUserBanShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable` | PUT | EnableUserBanShort | [EnableUserBanShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [EnableUserBanShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/crosslink` | POST | ListCrossNamespaceAccountLinkShort | [ListCrossNamespaceAccountLinkShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [ListCrossNamespaceAccountLinkShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/disable` | PUT | DisableUserShort | [DisableUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DisableUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/enable` | PUT | EnableUserShort | [EnableUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [EnableUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/information` | GET | GetUserInformationShort | [GetUserInformationShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserInformationShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/information` | DELETE | DeleteUserInformationShort | [DeleteUserInformationShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DeleteUserInformationShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/logins/histories` | GET | GetUserLoginHistoriesShort | [GetUserLoginHistoriesShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserLoginHistoriesShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/password` | PUT | UpdatePasswordShort | [UpdatePasswordShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpdatePasswordShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/permissions` | POST | SaveUserPermissionShort | [SaveUserPermissionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [SaveUserPermissionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}` | POST | AddUserPermissionShort | [AddUserPermissionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [AddUserPermissionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}` | DELETE | DeleteUserPermissionShort | [DeleteUserPermissionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DeleteUserPermissionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/platforms` | GET | GetUserPlatformAccountsShort | [GetUserPlatformAccountsShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserPlatformAccountsShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}` | GET | GetUserMappingShort | [GetUserMappingShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserMappingShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}` | POST | GetUserJusticePlatformAccountShort | [GetUserJusticePlatformAccountShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserJusticePlatformAccountShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link` | POST | PlatformLinkShort | [PlatformLinkShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PlatformLinkShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink` | POST | PlatformUnlinkShort | [PlatformUnlinkShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PlatformUnlinkShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/publisher` | GET | GetPublisherUserShort | [GetPublisherUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetPublisherUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/roles` | POST | SaveUserRolesShort | [SaveUserRolesShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [SaveUserRolesShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}` | POST | AddUserRoleShort | [AddUserRoleShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [AddUserRoleShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}` | DELETE | DeleteUserRoleShort | [DeleteUserRoleShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [DeleteUserRoleShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount` | POST | UpgradeHeadlessAccountShort | [UpgradeHeadlessAccountShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpgradeHeadlessAccountShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode` | POST | UpgradeHeadlessAccountWithVerificationCodeShort | [UpgradeHeadlessAccountWithVerificationCodeShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpgradeHeadlessAccountWithVerificationCodeShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/verification` | POST | UserVerificationShort | [UserVerificationShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UserVerificationShort](../services-api/pkg/service/iam/users.go) |
| `/iam/namespaces/{namespace}/users/{userId}/verificationcode` | POST | SendVerificationCodeShort | [SendVerificationCodeShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [SendVerificationCodeShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/agerestrictions` | GET | AdminGetAgeRestrictionStatusV2Short | [AdminGetAgeRestrictionStatusV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetAgeRestrictionStatusV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/agerestrictions` | PATCH | AdminUpdateAgeRestrictionConfigV2Short | [AdminUpdateAgeRestrictionConfigV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateAgeRestrictionConfigV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/countries/agerestrictions` | GET | GetListCountryAgeRestrictionShort | [GetListCountryAgeRestrictionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetListCountryAgeRestrictionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/countries/{countryCode}` | PATCH | UpdateCountryAgeRestrictionShort | [UpdateCountryAgeRestrictionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpdateCountryAgeRestrictionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users` | GET | AdminSearchUsersV2Short | [AdminSearchUsersV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminSearchUsersV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}` | GET | AdminGetUserByUserIdV2Short | [AdminGetUserByUserIdV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserByUserIdV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}` | PATCH | AdminUpdateUserV2Short | [AdminUpdateUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/ban` | POST | AdminBanUserV2Short | [AdminBanUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminBanUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/bans` | GET | AdminGetUserBanV2Short | [AdminGetUserBanV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserBanV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/disable` | PUT | AdminDisableUserV2Short | [AdminDisableUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDisableUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/enable` | PUT | AdminEnableUserV2Short | [AdminEnableUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminEnableUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/password` | PUT | AdminResetPasswordV2Short | [AdminResetPasswordV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminResetPasswordV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link` | DELETE | AdminDeletePlatformLinkV2Short | [AdminDeletePlatformLinkV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeletePlatformLinkV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles` | PUT | AdminPutUserRolesV2Short | [AdminPutUserRolesV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminPutUserRolesV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles` | POST | AdminCreateUserRolesV2Short | [AdminCreateUserRolesV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminCreateUserRolesV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions` | GET | PublicGetCountryAgeRestrictionShort | [PublicGetCountryAgeRestrictionShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetCountryAgeRestrictionShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users` | POST | PublicCreateUserV2Short | [PublicCreateUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicCreateUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/forgotPassword` | POST | PublicForgotPasswordV2Short | [PublicForgotPasswordV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicForgotPasswordV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/resetPassword` | POST | PublicResetPasswordV2Short | [PublicResetPasswordV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicResetPasswordV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}` | GET | PublicGetUserByUserIDV2Short | [PublicGetUserByUserIDV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserByUserIDV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}` | PATCH | PublicUpdateUserV2Short | [PublicUpdateUserV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUpdateUserV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}/bans` | GET | PublicGetUserBanShort | [PublicGetUserBanShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserBanShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}/password` | PUT | PublicUpdatePasswordV2Short | [PublicUpdatePasswordV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUpdatePasswordV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice` | GET | GetListJusticePlatformAccountsShort | [GetListJusticePlatformAccountsShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetListJusticePlatformAccountsShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link` | POST | PublicPlatformLinkV2Short | [PublicPlatformLinkV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicPlatformLinkV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link` | DELETE | PublicDeletePlatformLinkV2Short | [PublicDeletePlatformLinkV2Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicDeletePlatformLinkV2Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/admins` | GET | ListAdminsV3Short | [ListAdminsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [ListAdminsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/agerestrictions` | GET | AdminGetAgeRestrictionStatusV3Short | [AdminGetAgeRestrictionStatusV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetAgeRestrictionStatusV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/agerestrictions` | PATCH | AdminUpdateAgeRestrictionConfigV3Short | [AdminUpdateAgeRestrictionConfigV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateAgeRestrictionConfigV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries` | GET | AdminGetListCountryAgeRestrictionV3Short | [AdminGetListCountryAgeRestrictionV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetListCountryAgeRestrictionV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}` | PATCH | AdminUpdateCountryAgeRestrictionV3Short | [AdminUpdateCountryAgeRestrictionV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateCountryAgeRestrictionV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}` | GET | AdminGetUserByPlatformUserIDV3Short | [AdminGetUserByPlatformUserIDV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserByPlatformUserIDV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users` | GET | GetAdminUsersByRoleIdV3Short | [GetAdminUsersByRoleIdV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetAdminUsersByRoleIdV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users` | GET | AdminGetUserByEmailAddressV3Short | [AdminGetUserByEmailAddressV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserByEmailAddressV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/bulk` | POST | AdminListUserIDByUserIDsV3Short | [AdminListUserIDByUserIDsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminListUserIDByUserIDsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/invite` | POST | AdminInviteUserV3Short | [AdminInviteUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminInviteUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/platforms/justice` | GET | AdminListUsersV3Short | [AdminListUsersV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminListUsersV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/search` | GET | AdminSearchUserV3Short | [AdminSearchUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminSearchUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/search/bulk` | POST | AdminGetBulkUserByEmailAddressV3Short | [AdminGetBulkUserByEmailAddressV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetBulkUserByEmailAddressV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}` | GET | AdminGetUserByUserIdV3Short | [AdminGetUserByUserIdV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserByUserIdV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}` | PATCH | AdminUpdateUserV3Short | [AdminUpdateUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans` | GET | AdminGetUserBanV3Short | [AdminGetUserBanV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserBanV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans` | POST | AdminBanUserV3Short | [AdminBanUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminBanUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}` | PATCH | AdminUpdateUserBanV3Short | [AdminUpdateUserBanV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserBanV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request` | POST | AdminSendVerificationCodeV3Short | [AdminSendVerificationCodeV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminSendVerificationCodeV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify` | POST | AdminVerifyAccountV3Short | [AdminVerifyAccountV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminVerifyAccountV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/codes` | GET | GetUserVerificationCodeShort | [GetUserVerificationCodeShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetUserVerificationCodeShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status` | GET | AdminGetUserDeletionStatusV3Short | [AdminGetUserDeletionStatusV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserDeletionStatusV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status` | PATCH | AdminUpdateUserDeletionStatusV3Short | [AdminUpdateUserDeletionStatusV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserDeletionStatusV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify` | POST | AdminUpgradeHeadlessAccountV3Short | [AdminUpgradeHeadlessAccountV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpgradeHeadlessAccountV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/information` | DELETE | AdminDeleteUserInformationV3Short | [AdminDeleteUserInformationV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeleteUserInformationV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories` | GET | AdminGetUserLoginHistoriesV3Short | [AdminGetUserLoginHistoriesV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserLoginHistoriesV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions` | PUT | AdminUpdateUserPermissionV3Short | [AdminUpdateUserPermissionV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserPermissionV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions` | POST | AdminAddUserPermissionsV3Short | [AdminAddUserPermissionsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminAddUserPermissionsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions` | DELETE | AdminDeleteUserPermissionBulkV3Short | [AdminDeleteUserPermissionBulkV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeleteUserPermissionBulkV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}` | DELETE | AdminDeleteUserPermissionV3Short | [AdminDeleteUserPermissionV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeleteUserPermissionV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms` | GET | AdminGetUserPlatformAccountsV3Short | [AdminGetUserPlatformAccountsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetUserPlatformAccountsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice` | GET | AdminGetListJusticePlatformAccountsShort | [AdminGetListJusticePlatformAccountsShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetListJusticePlatformAccountsShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}` | POST | AdminCreateJusticeUserShort | [AdminCreateJusticeUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminCreateJusticeUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link` | POST | AdminLinkPlatformAccountShort | [AdminLinkPlatformAccountShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminLinkPlatformAccountShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}` | DELETE | AdminPlatformUnlinkV3Short | [AdminPlatformUnlinkV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminPlatformUnlinkV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link` | POST | AdminPlatformLinkV3Short | [AdminPlatformLinkV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminPlatformLinkV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles` | DELETE | AdminDeleteUserRolesV3Short | [AdminDeleteUserRolesV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeleteUserRolesV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles` | PATCH | AdminSaveUserRoleV3Short | [AdminSaveUserRoleV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminSaveUserRoleV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}` | POST | AdminAddUserRoleV3Short | [AdminAddUserRoleV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminAddUserRoleV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}` | DELETE | AdminDeleteUserRoleV3Short | [AdminDeleteUserRoleV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminDeleteUserRoleV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/status` | PATCH | AdminUpdateUserStatusV3Short | [AdminUpdateUserStatusV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminUpdateUserStatusV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/namespaces/{namespace}/users/{userId}/verify` | PUT | AdminVerifyUserWithoutVerificationCodeV3Short | [AdminVerifyUserWithoutVerificationCodeV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminVerifyUserWithoutVerificationCodeV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/admin/users/me` | GET | AdminGetMyUserV3Short | [AdminGetMyUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [AdminGetMyUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users` | POST | PublicListUserIDByPlatformUserIDsV3Short | [PublicListUserIDByPlatformUserIDsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicListUserIDByPlatformUserIDsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}` | GET | PublicGetUserByPlatformUserIDV3Short | [PublicGetUserByPlatformUserIDV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserByPlatformUserIDV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status` | GET | PublicGetAsyncStatusShort | [PublicGetAsyncStatusShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetAsyncStatusShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users` | GET | PublicSearchUserV3Short | [PublicSearchUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicSearchUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users` | POST | PublicCreateUserV3Short | [PublicCreateUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicCreateUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/availability` | GET | CheckUserAvailabilityShort | [CheckUserAvailabilityShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [CheckUserAvailabilityShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/bulk/basic` | POST | PublicBulkGetUsersShort | [PublicBulkGetUsersShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicBulkGetUsersShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/code/request` | POST | PublicSendRegistrationCodeShort | [PublicSendRegistrationCodeShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicSendRegistrationCodeShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/code/verify` | POST | PublicVerifyRegistrationCodeShort | [PublicVerifyRegistrationCodeShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicVerifyRegistrationCodeShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/forgot` | POST | PublicForgotPasswordV3Short | [PublicForgotPasswordV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicForgotPasswordV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}` | GET | GetAdminInvitationV3Short | [GetAdminInvitationV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [GetAdminInvitationV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}` | POST | CreateUserFromInvitationV3Short | [CreateUserFromInvitationV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [CreateUserFromInvitationV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me` | PUT | UpdateUserV3Short | [UpdateUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [UpdateUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me` | PATCH | PublicUpdateUserV3Short | [PublicUpdateUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUpdateUserV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/code/request` | POST | PublicSendVerificationCodeV3Short | [PublicSendVerificationCodeV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicSendVerificationCodeV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/code/verify` | POST | PublicUserVerificationV3Short | [PublicUserVerificationV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUserVerificationV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify` | POST | PublicUpgradeHeadlessAccountV3Short | [PublicUpgradeHeadlessAccountV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUpgradeHeadlessAccountV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/headless/verify` | POST | PublicVerifyHeadlessAccountV3Short | [PublicVerifyHeadlessAccountV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicVerifyHeadlessAccountV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/password` | PUT | PublicUpdatePasswordV3Short | [PublicUpdatePasswordV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicUpdatePasswordV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}` | POST | PublicCreateJusticeUserShort | [PublicCreateJusticeUserShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicCreateJusticeUserShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}` | POST | PublicPlatformLinkV3Short | [PublicPlatformLinkV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicPlatformLinkV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}` | DELETE | PublicPlatformUnlinkV3Short | [PublicPlatformUnlinkV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicPlatformUnlinkV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link` | GET | PublicWebLinkPlatformShort | [PublicWebLinkPlatformShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicWebLinkPlatformShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish` | GET | PublicWebLinkPlatformEstablishShort | [PublicWebLinkPlatformEstablishShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicWebLinkPlatformEstablishShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/reset` | POST | ResetPasswordV3Short | [ResetPasswordV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [ResetPasswordV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}` | GET | PublicGetUserByUserIdV3Short | [PublicGetUserByUserIdV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserByUserIdV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}/bans` | GET | PublicGetUserBanHistoryV3Short | [PublicGetUserBanHistoryV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserBanHistoryV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories` | GET | PublicGetUserLoginHistoriesV3Short | [PublicGetUserLoginHistoriesV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserLoginHistoriesV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms` | GET | PublicGetUserPlatformAccountsV3Short | [PublicGetUserPlatformAccountsV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetUserPlatformAccountsV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link` | POST | PublicLinkPlatformAccountShort | [PublicLinkPlatformAccountShort](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicLinkPlatformAccountShort](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/namespaces/{namespace}/users/{userId}/validate` | POST | PublicValidateUserByUserIDAndPasswordV3Short | [PublicValidateUserByUserIDAndPasswordV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicValidateUserByUserIDAndPasswordV3Short](../services-api/pkg/service/iam/users.go) |
| `/iam/v3/public/users/me` | GET | PublicGetMyUserV3Short | [PublicGetMyUserV3Short](../iam-sdk/pkg/iamclient/users/users_client.go) | [PublicGetMyUserV3Short](../services-api/pkg/service/iam/users.go) |

### OAuth Wrapper:  [OAuth](../services-api/pkg/service/iam/oAuth.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/oauth/authorize` | POST | AuthorizationShort | [AuthorizationShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [AuthorizationShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/jwks` | GET | GetJWKSShort | [GetJWKSShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [GetJWKSShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/namespaces/{namespace}/platforms/{platformId}/token` | POST | PlatformTokenRequestHandlerShort | [PlatformTokenRequestHandlerShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [PlatformTokenRequestHandlerShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/namespaces/{namespace}/users/{userId}/revoke` | POST | RevokeUserShort | [RevokeUserShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [RevokeUserShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/revocationlist` | GET | GetRevocationListShort | [GetRevocationListShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [GetRevocationListShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/revoke/token` | POST | RevokeTokenShort | [RevokeTokenShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [RevokeTokenShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/revoke/user` | POST | RevokeAUserShort | [RevokeAUserShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [RevokeAUserShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/token` | POST | TokenGrantShort | [TokenGrantShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [TokenGrantShort](../services-api/pkg/service/iam/oAuth.go) |
| `/iam/oauth/verify` | POST | VerifyTokenShort | [VerifyTokenShort](../iam-sdk/pkg/iamclient/o_auth/o_auth_client.go) | [VerifyTokenShort](../services-api/pkg/service/iam/oAuth.go) |

### Roles Wrapper:  [Roles](../services-api/pkg/service/iam/roles.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/roles` | GET | GetRolesShort | [GetRolesShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [GetRolesShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles` | POST | CreateRoleShort | [CreateRoleShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [CreateRoleShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}` | GET | GetRoleShort | [GetRoleShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [GetRoleShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}` | PUT | UpdateRoleShort | [UpdateRoleShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [UpdateRoleShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}` | DELETE | DeleteRoleShort | [DeleteRoleShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [DeleteRoleShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/admin` | GET | GetRoleAdminStatusShort | [GetRoleAdminStatusShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [GetRoleAdminStatusShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/admin` | POST | SetRoleAsAdminShort | [SetRoleAsAdminShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [SetRoleAsAdminShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/admin` | DELETE | RemoveRoleAdminShort | [RemoveRoleAdminShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [RemoveRoleAdminShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/managers` | GET | GetRoleManagersShort | [GetRoleManagersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [GetRoleManagersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/managers` | POST | AddRoleManagersShort | [AddRoleManagersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AddRoleManagersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/managers` | DELETE | RemoveRoleManagersShort | [RemoveRoleManagersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [RemoveRoleManagersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/members` | GET | GetRoleMembersShort | [GetRoleMembersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [GetRoleMembersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/members` | POST | AddRoleMembersShort | [AddRoleMembersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AddRoleMembersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/members` | DELETE | RemoveRoleMembersShort | [RemoveRoleMembersShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [RemoveRoleMembersShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/permissions` | POST | UpdateRolePermissionsShort | [UpdateRolePermissionsShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [UpdateRolePermissionsShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/permissions/{resource}/{action}` | POST | AddRolePermissionShort | [AddRolePermissionShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AddRolePermissionShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/roles/{roleId}/permissions/{resource}/{action}` | DELETE | DeleteRolePermissionShort | [DeleteRolePermissionShort](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [DeleteRolePermissionShort](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles` | GET | AdminGetRolesV3Short | [AdminGetRolesV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRolesV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles` | POST | AdminCreateRoleV3Short | [AdminCreateRoleV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminCreateRoleV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}` | GET | AdminGetRoleV3Short | [AdminGetRoleV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRoleV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}` | DELETE | AdminDeleteRoleV3Short | [AdminDeleteRoleV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminDeleteRoleV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}` | PATCH | AdminUpdateRoleV3Short | [AdminUpdateRoleV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminUpdateRoleV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/admin` | GET | AdminGetRoleAdminStatusV3Short | [AdminGetRoleAdminStatusV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRoleAdminStatusV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/admin` | POST | AdminUpdateAdminRoleStatusV3Short | [AdminUpdateAdminRoleStatusV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminUpdateAdminRoleStatusV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/admin` | DELETE | AdminRemoveRoleAdminV3Short | [AdminRemoveRoleAdminV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminRemoveRoleAdminV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/managers` | GET | AdminGetRoleManagersV3Short | [AdminGetRoleManagersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRoleManagersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/managers` | POST | AdminAddRoleManagersV3Short | [AdminAddRoleManagersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminAddRoleManagersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/managers` | DELETE | AdminRemoveRoleManagersV3Short | [AdminRemoveRoleManagersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminRemoveRoleManagersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/members` | GET | AdminGetRoleMembersV3Short | [AdminGetRoleMembersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRoleMembersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/members` | POST | AdminAddRoleMembersV3Short | [AdminAddRoleMembersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminAddRoleMembersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/members` | DELETE | AdminRemoveRoleMembersV3Short | [AdminRemoveRoleMembersV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminRemoveRoleMembersV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/permissions` | PUT | AdminUpdateRolePermissionsV3Short | [AdminUpdateRolePermissionsV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminUpdateRolePermissionsV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/permissions` | POST | AdminAddRolePermissionsV3Short | [AdminAddRolePermissionsV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminAddRolePermissionsV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/permissions` | DELETE | AdminDeleteRolePermissionsV3Short | [AdminDeleteRolePermissionsV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminDeleteRolePermissionsV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}` | DELETE | AdminDeleteRolePermissionV3Short | [AdminDeleteRolePermissionV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminDeleteRolePermissionV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/public/roles` | GET | PublicGetRolesV3Short | [PublicGetRolesV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [PublicGetRolesV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v3/public/roles/{roleId}` | GET | PublicGetRoleV3Short | [PublicGetRoleV3Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [PublicGetRoleV3Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles` | GET | AdminGetRolesV4Short | [AdminGetRolesV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRolesV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles` | POST | AdminCreateRoleV4Short | [AdminCreateRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminCreateRoleV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}` | GET | AdminGetRoleV4Short | [AdminGetRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminGetRoleV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}` | DELETE | AdminDeleteRoleV4Short | [AdminDeleteRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminDeleteRoleV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}` | PATCH | AdminUpdateRoleV4Short | [AdminUpdateRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminUpdateRoleV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/permissions` | PUT | AdminUpdateRolePermissionsV4Short | [AdminUpdateRolePermissionsV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminUpdateRolePermissionsV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/permissions` | POST | AdminAddRolePermissionsV4Short | [AdminAddRolePermissionsV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminAddRolePermissionsV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/permissions` | DELETE | AdminDeleteRolePermissionsV4Short | [AdminDeleteRolePermissionsV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminDeleteRolePermissionsV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/users` | GET | AdminListAssignedUsersV4Short | [AdminListAssignedUsersV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminListAssignedUsersV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/users` | POST | AdminAssignUserToRoleV4Short | [AdminAssignUserToRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminAssignUserToRoleV4Short](../services-api/pkg/service/iam/roles.go) |
| `/iam/v4/admin/roles/{roleId}/users` | DELETE | AdminRevokeUserFromRoleV4Short | [AdminRevokeUserFromRoleV4Short](../iam-sdk/pkg/iamclient/roles/roles_client.go) | [AdminRevokeUserFromRoleV4Short](../services-api/pkg/service/iam/roles.go) |

### InputValidations Wrapper:  [InputValidations](../services-api/pkg/service/iam/inputValidations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/admin/inputValidations` | GET | AdminGetInputValidationsShort | [AdminGetInputValidationsShort](../iam-sdk/pkg/iamclient/input_validations/input_validations_client.go) | [AdminGetInputValidationsShort](../services-api/pkg/service/iam/inputValidations.go) |
| `/iam/v3/admin/inputValidations` | PUT | AdminUpdateInputValidationsShort | [AdminUpdateInputValidationsShort](../iam-sdk/pkg/iamclient/input_validations/input_validations_client.go) | [AdminUpdateInputValidationsShort](../services-api/pkg/service/iam/inputValidations.go) |
| `/iam/v3/admin/inputValidations/{field}` | DELETE | AdminResetInputValidationsShort | [AdminResetInputValidationsShort](../iam-sdk/pkg/iamclient/input_validations/input_validations_client.go) | [AdminResetInputValidationsShort](../services-api/pkg/service/iam/inputValidations.go) |
| `/iam/v3/public/inputValidations` | GET | PublicGetInputValidationsShort | [PublicGetInputValidationsShort](../iam-sdk/pkg/iamclient/input_validations/input_validations_client.go) | [PublicGetInputValidationsShort](../services-api/pkg/service/iam/inputValidations.go) |

### Third Party Credential Wrapper:  [ThirdPartyCredential](../services-api/pkg/service/iam/thirdPartyCredential.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/admin/namespaces/{namespace}/platforms/all/clients` | GET | RetrieveAllThirdPartyLoginPlatformCredentialV3Short | [RetrieveAllThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [RetrieveAllThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active` | GET | RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short | [RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients` | GET | RetrieveThirdPartyLoginPlatformCredentialV3Short | [RetrieveThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [RetrieveThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients` | POST | AddThirdPartyLoginPlatformCredentialV3Short | [AddThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [AddThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients` | DELETE | DeleteThirdPartyLoginPlatformCredentialV3Short | [DeleteThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [DeleteThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients` | PATCH | UpdateThirdPartyLoginPlatformCredentialV3Short | [UpdateThirdPartyLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [UpdateThirdPartyLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain` | PUT | UpdateThirdPartyLoginPlatformDomainV3Short | [UpdateThirdPartyLoginPlatformDomainV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [UpdateThirdPartyLoginPlatformDomainV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain` | DELETE | DeleteThirdPartyLoginPlatformDomainV3Short | [DeleteThirdPartyLoginPlatformDomainV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [DeleteThirdPartyLoginPlatformDomainV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |
| `/iam/v3/public/namespaces/{namespace}/platforms/clients/active` | GET | RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short | [RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short](../iam-sdk/pkg/iamclient/third_party_credential/third_party_credential_client.go) | [RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short](../services-api/pkg/service/iam/thirdPartyCredential.go) |

### SSO Credential Wrapper:  [SSOCredential](../services-api/pkg/service/iam/ssoCredential.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/admin/namespaces/{namespace}/platforms/sso` | GET | RetrieveAllSSOLoginPlatformCredentialV3Short | [RetrieveAllSSOLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/sso_credential/sso_credential_client.go) | [RetrieveAllSSOLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/ssoCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso` | GET | RetrieveSSOLoginPlatformCredentialShort | [RetrieveSSOLoginPlatformCredentialShort](../iam-sdk/pkg/iamclient/sso_credential/sso_credential_client.go) | [RetrieveSSOLoginPlatformCredentialShort](../services-api/pkg/service/iam/ssoCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso` | POST | AddSSOLoginPlatformCredentialShort | [AddSSOLoginPlatformCredentialShort](../iam-sdk/pkg/iamclient/sso_credential/sso_credential_client.go) | [AddSSOLoginPlatformCredentialShort](../services-api/pkg/service/iam/ssoCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso` | DELETE | DeleteSSOLoginPlatformCredentialV3Short | [DeleteSSOLoginPlatformCredentialV3Short](../iam-sdk/pkg/iamclient/sso_credential/sso_credential_client.go) | [DeleteSSOLoginPlatformCredentialV3Short](../services-api/pkg/service/iam/ssoCredential.go) |
| `/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso` | PATCH | UpdateSSOPlatformCredentialShort | [UpdateSSOPlatformCredentialShort](../iam-sdk/pkg/iamclient/sso_credential/sso_credential_client.go) | [UpdateSSOPlatformCredentialShort](../services-api/pkg/service/iam/ssoCredential.go) |

### OAuth2.0 - Extension Wrapper:  [OAuth20Extension](../services-api/pkg/service/iam/oAuth20Extension.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/authenticate` | POST | UserAuthenticationV3Short | [UserAuthenticationV3Short](../iam-sdk/pkg/iamclient/o_auth2_0_extension/o_auth2_0_extension_client.go) | [UserAuthenticationV3Short](../services-api/pkg/service/iam/oAuth20Extension.go) |
| `/iam/v3/location/country` | GET | GetCountryLocationV3Short | [GetCountryLocationV3Short](../iam-sdk/pkg/iamclient/o_auth2_0_extension/o_auth2_0_extension_client.go) | [GetCountryLocationV3Short](../services-api/pkg/service/iam/oAuth20Extension.go) |
| `/iam/v3/logout` | POST | LogoutShort | [LogoutShort](../iam-sdk/pkg/iamclient/o_auth2_0_extension/o_auth2_0_extension_client.go) | [LogoutShort](../services-api/pkg/service/iam/oAuth20Extension.go) |
| `/iam/v3/platforms/{platformId}/authenticate` | GET | PlatformAuthenticationV3Short | [PlatformAuthenticationV3Short](../iam-sdk/pkg/iamclient/o_auth2_0_extension/o_auth2_0_extension_client.go) | [PlatformAuthenticationV3Short](../services-api/pkg/service/iam/oAuth20Extension.go) |

### OAuth2.0 Wrapper:  [OAuth20](../services-api/pkg/service/iam/oAuth20.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken` | GET | AdminRetrieveUserThirdPartyPlatformTokenV3Short | [AdminRetrieveUserThirdPartyPlatformTokenV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [AdminRetrieveUserThirdPartyPlatformTokenV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke` | POST | RevokeUserV3Short | [RevokeUserV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [RevokeUserV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/authorize` | GET | AuthorizeV3Short | [AuthorizeV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [AuthorizeV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/introspect` | POST | TokenIntrospectionV3Short | [TokenIntrospectionV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [TokenIntrospectionV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/jwks` | GET | GetJWKSV3Short | [GetJWKSV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [GetJWKSV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/mfa/factor/change` | POST | Change2faMethodShort | [Change2faMethodShort](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [Change2faMethodShort](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/mfa/verify` | POST | Verify2faCodeShort | [Verify2faCodeShort](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [Verify2faCodeShort](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken` | GET | RetrieveUserThirdPartyPlatformTokenV3Short | [RetrieveUserThirdPartyPlatformTokenV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [RetrieveUserThirdPartyPlatformTokenV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/platforms/{platformId}/authorize` | GET | AuthCodeRequestV3Short | [AuthCodeRequestV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [AuthCodeRequestV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/platforms/{platformId}/token` | POST | PlatformTokenGrantV3Short | [PlatformTokenGrantV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [PlatformTokenGrantV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/revocationlist` | GET | GetRevocationListV3Short | [GetRevocationListV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [GetRevocationListV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/revoke` | POST | TokenRevocationV3Short | [TokenRevocationV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [TokenRevocationV3Short](../services-api/pkg/service/iam/oAuth20.go) |
| `/iam/v3/oauth/token` | POST | TokenGrantV3Short | [TokenGrantV3Short](../iam-sdk/pkg/iamclient/o_auth2_0/o_auth2_0_client.go) | [TokenGrantV3Short](../services-api/pkg/service/iam/oAuth20.go) |

### SSO SAML 2.0 Wrapper:  [SSOSAML20](../services-api/pkg/service/iam/ssoSAML20.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/sso/saml/platforms/{platformId}/authenticate` | POST | PlatformAuthenticateSAMLV3HandlerShort | [PlatformAuthenticateSAMLV3HandlerShort](../iam-sdk/pkg/iamclient/sso_saml_2_0/sso_saml_2_0_client.go) | [PlatformAuthenticateSAMLV3HandlerShort](../services-api/pkg/service/iam/ssoSAML20.go) |

### SSO Wrapper:  [SSO](../services-api/pkg/service/iam/sso.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v3/sso/{platformId}` | GET | LoginSSOClientShort | [LoginSSOClientShort](../iam-sdk/pkg/iamclient/sso/sso_client.go) | [LoginSSOClientShort](../services-api/pkg/service/iam/sso.go) |
| `/iam/v3/sso/{platformId}/logout` | POST | LogoutSSOClientShort | [LogoutSSOClientShort](../iam-sdk/pkg/iamclient/sso/sso_client.go) | [LogoutSSOClientShort](../services-api/pkg/service/iam/sso.go) |

### Users V4 Wrapper:  [UsersV4](../services-api/pkg/service/iam/usersV4.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/iam/v4/admin/namespaces/{namespace}/users/bulk/validate` | POST | AdminBulkCheckValidUserIDV4Short | [AdminBulkCheckValidUserIDV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminBulkCheckValidUserIDV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}` | PUT | AdminUpdateUserV4Short | [AdminUpdateUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminUpdateUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}/email` | PUT | AdminUpdateUserEmailAddressV4Short | [AdminUpdateUserEmailAddressV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminUpdateUserEmailAddressV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles` | GET | AdminListUserRolesV4Short | [AdminListUserRolesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminListUserRolesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles` | PUT | AdminUpdateUserRoleV4Short | [AdminUpdateUserRoleV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminUpdateUserRoleV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles` | POST | AdminAddUserRoleV4Short | [AdminAddUserRoleV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminAddUserRoleV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles` | DELETE | AdminRemoveUserRoleV4Short | [AdminRemoveUserRoleV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminRemoveUserRoleV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me` | PATCH | AdminUpdateMyUserV4Short | [AdminUpdateMyUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminUpdateMyUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/authenticator/disable` | DELETE | AdminDisableMyAuthenticatorV4Short | [AdminDisableMyAuthenticatorV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminDisableMyAuthenticatorV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/authenticator/enable` | POST | AdminEnableMyAuthenticatorV4Short | [AdminEnableMyAuthenticatorV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminEnableMyAuthenticatorV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/authenticator/key` | POST | AdminGenerateMyAuthenticatorKeyV4Short | [AdminGenerateMyAuthenticatorKeyV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminGenerateMyAuthenticatorKeyV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/backupCode` | GET | AdminGetMyBackupCodesV4Short | [AdminGetMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminGetMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/backupCode` | POST | AdminGenerateMyBackupCodesV4Short | [AdminGenerateMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminGenerateMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/backupCode/disable` | DELETE | AdminDisableMyBackupCodesV4Short | [AdminDisableMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminDisableMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/backupCode/download` | GET | AdminDownloadMyBackupCodesV4Short | [AdminDownloadMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminDownloadMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/backupCode/enable` | POST | AdminEnableMyBackupCodesV4Short | [AdminEnableMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminEnableMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/factor` | GET | AdminGetMyEnabledFactorsV4Short | [AdminGetMyEnabledFactorsV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminGetMyEnabledFactorsV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/me/mfa/factor` | POST | AdminMakeFactorMyDefaultV4Short | [AdminMakeFactorMyDefaultV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminMakeFactorMyDefaultV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/admin/users/users/invite` | POST | AdminInviteUserV4Short | [AdminInviteUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [AdminInviteUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/test_users` | POST | PublicCreateTestUserV4Short | [PublicCreateTestUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicCreateTestUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users` | POST | PublicCreateUserV4Short | [PublicCreateUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicCreateUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}` | POST | CreateUserFromInvitationV4Short | [CreateUserFromInvitationV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [CreateUserFromInvitationV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me` | PATCH | PublicUpdateUserV4Short | [PublicUpdateUserV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicUpdateUserV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/email` | PUT | PublicUpdateUserEmailAddressV4Short | [PublicUpdateUserEmailAddressV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicUpdateUserEmailAddressV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify` | POST | PublicUpgradeHeadlessAccountWithVerificationCodeV4Short | [PublicUpgradeHeadlessAccountWithVerificationCodeV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicUpgradeHeadlessAccountWithVerificationCodeV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/headless/verify` | POST | PublicUpgradeHeadlessAccountV4Short | [PublicUpgradeHeadlessAccountV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicUpgradeHeadlessAccountV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable` | DELETE | PublicDisableMyAuthenticatorV4Short | [PublicDisableMyAuthenticatorV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicDisableMyAuthenticatorV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable` | POST | PublicEnableMyAuthenticatorV4Short | [PublicEnableMyAuthenticatorV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicEnableMyAuthenticatorV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key` | POST | PublicGenerateMyAuthenticatorKeyV4Short | [PublicGenerateMyAuthenticatorKeyV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicGenerateMyAuthenticatorKeyV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode` | GET | PublicGetMyBackupCodesV4Short | [PublicGetMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicGetMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode` | POST | PublicGenerateMyBackupCodesV4Short | [PublicGenerateMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicGenerateMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable` | DELETE | PublicDisableMyBackupCodesV4Short | [PublicDisableMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicDisableMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download` | GET | PublicDownloadMyBackupCodesV4Short | [PublicDownloadMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicDownloadMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable` | POST | PublicEnableMyBackupCodesV4Short | [PublicEnableMyBackupCodesV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicEnableMyBackupCodesV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor` | GET | PublicGetMyEnabledFactorsV4Short | [PublicGetMyEnabledFactorsV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicGetMyEnabledFactorsV4Short](../services-api/pkg/service/iam/usersV4.go) |
| `/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor` | POST | PublicMakeFactorMyDefaultV4Short | [PublicMakeFactorMyDefaultV4Short](../iam-sdk/pkg/iamclient/users_v4/users_v4_client.go) | [PublicMakeFactorMyDefaultV4Short](../services-api/pkg/service/iam/usersV4.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `.BannedBy` | [BannedBy ](../iam-sdk/pkg/iamclientmodels/banned_by.go) |
| `.validation` | [Validation ](../iam-sdk/pkg/iamclientmodels/validation.go) |
| `.validation.description` | [ValidationDescription ](../iam-sdk/pkg/iamclientmodels/validation_description.go) |
| `account.UserActiveBanResponseV4` | [AccountUserActiveBanResponseV4 ](../iam-sdk/pkg/iamclientmodels/account_user_active_ban_response_v4.go) |
| `account.UserPermissionsResponseV4` | [AccountUserPermissionsResponseV4 ](../iam-sdk/pkg/iamclientmodels/account_user_permissions_response_v4.go) |
| `account.UserResponseV4` | [AccountUserResponseV4 ](../iam-sdk/pkg/iamclientmodels/account_user_response_v4.go) |
| `account.createTestUserRequestV4` | [AccountCreateTestUserRequestV4 ](../iam-sdk/pkg/iamclientmodels/account_create_test_user_request_v4.go) |
| `account.createUserRequestV4` | [AccountCreateUserRequestV4 ](../iam-sdk/pkg/iamclientmodels/account_create_user_request_v4.go) |
| `account.createUserResponseV4` | [AccountCreateUserResponseV4 ](../iam-sdk/pkg/iamclientmodels/account_create_user_response_v4.go) |
| `account.upgradeHeadlessAccountRequestV4` | [AccountUpgradeHeadlessAccountRequestV4 ](../iam-sdk/pkg/iamclientmodels/account_upgrade_headless_account_request_v4.go) |
| `account.upgradeHeadlessAccountWithVerificationCodeRequestV4` | [AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4 ](../iam-sdk/pkg/iamclientmodels/account_upgrade_headless_account_with_verification_code_request_v4.go) |
| `accountcommon.Ban` | [AccountcommonBan ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban.go) |
| `accountcommon.BanReason` | [AccountcommonBanReason ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban_reason.go) |
| `accountcommon.BanReasonV3` | [AccountcommonBanReasonV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban_reason_v3.go) |
| `accountcommon.BanReasons` | [AccountcommonBanReasons ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban_reasons.go) |
| `accountcommon.BanReasonsV3` | [AccountcommonBanReasonsV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban_reasons_v3.go) |
| `accountcommon.BanV3` | [AccountcommonBanV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_ban_v3.go) |
| `accountcommon.BannedByV3` | [AccountcommonBannedByV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_banned_by_v3.go) |
| `accountcommon.Bans` | [AccountcommonBans ](../iam-sdk/pkg/iamclientmodels/accountcommon_bans.go) |
| `accountcommon.BansV3` | [AccountcommonBansV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_bans_v3.go) |
| `accountcommon.ClientPermission` | [AccountcommonClientPermission ](../iam-sdk/pkg/iamclientmodels/accountcommon_client_permission.go) |
| `accountcommon.ClientPermissionV3` | [AccountcommonClientPermissionV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_client_permission_v3.go) |
| `accountcommon.ClientPermissions` | [AccountcommonClientPermissions ](../iam-sdk/pkg/iamclientmodels/accountcommon_client_permissions.go) |
| `accountcommon.ClientPermissionsV3` | [AccountcommonClientPermissionsV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_client_permissions_v3.go) |
| `accountcommon.ConflictedUserPlatformAccounts` | [AccountcommonConflictedUserPlatformAccounts ](../iam-sdk/pkg/iamclientmodels/accountcommon_conflicted_user_platform_accounts.go) |
| `accountcommon.CountryAgeRestriction` | [AccountcommonCountryAgeRestriction ](../iam-sdk/pkg/iamclientmodels/accountcommon_country_age_restriction.go) |
| `accountcommon.Description` | [AccountcommonDescription ](../iam-sdk/pkg/iamclientmodels/accountcommon_description.go) |
| `accountcommon.InputValidationDescription` | [AccountcommonInputValidationDescription ](../iam-sdk/pkg/iamclientmodels/accountcommon_input_validation_description.go) |
| `accountcommon.JWTBanV3` | [AccountcommonJWTBanV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_jwt_ban_v3.go) |
| `accountcommon.ListUsersWithPlatformAccountsResponse` | [AccountcommonListUsersWithPlatformAccountsResponse ](../iam-sdk/pkg/iamclientmodels/accountcommon_list_users_with_platform_accounts_response.go) |
| `accountcommon.NamespaceRole` | [AccountcommonNamespaceRole ](../iam-sdk/pkg/iamclientmodels/accountcommon_namespace_role.go) |
| `accountcommon.Pagination` | [AccountcommonPagination ](../iam-sdk/pkg/iamclientmodels/accountcommon_pagination.go) |
| `accountcommon.PaginationV3` | [AccountcommonPaginationV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_pagination_v3.go) |
| `accountcommon.Permission` | [AccountcommonPermission ](../iam-sdk/pkg/iamclientmodels/accountcommon_permission.go) |
| `accountcommon.PermissionV3` | [AccountcommonPermissionV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_permission_v3.go) |
| `accountcommon.Permissions` | [AccountcommonPermissions ](../iam-sdk/pkg/iamclientmodels/accountcommon_permissions.go) |
| `accountcommon.PermissionsV3` | [AccountcommonPermissionsV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_permissions_v3.go) |
| `accountcommon.PlatformAccount` | [AccountcommonPlatformAccount ](../iam-sdk/pkg/iamclientmodels/accountcommon_platform_account.go) |
| `accountcommon.RegisteredDomain` | [AccountcommonRegisteredDomain ](../iam-sdk/pkg/iamclientmodels/accountcommon_registered_domain.go) |
| `accountcommon.Role` | [AccountcommonRole ](../iam-sdk/pkg/iamclientmodels/accountcommon_role.go) |
| `accountcommon.RoleManager` | [AccountcommonRoleManager ](../iam-sdk/pkg/iamclientmodels/accountcommon_role_manager.go) |
| `accountcommon.RoleManagerV3` | [AccountcommonRoleManagerV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_role_manager_v3.go) |
| `accountcommon.RoleMember` | [AccountcommonRoleMember ](../iam-sdk/pkg/iamclientmodels/accountcommon_role_member.go) |
| `accountcommon.RoleMemberV3` | [AccountcommonRoleMemberV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_role_member_v3.go) |
| `accountcommon.RoleV3` | [AccountcommonRoleV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_role_v3.go) |
| `accountcommon.UserLinkedPlatform` | [AccountcommonUserLinkedPlatform ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_linked_platform.go) |
| `accountcommon.UserLinkedPlatformV3` | [AccountcommonUserLinkedPlatformV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_linked_platform_v3.go) |
| `accountcommon.UserLinkedPlatformsResponseV3` | [AccountcommonUserLinkedPlatformsResponseV3 ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_linked_platforms_response_v3.go) |
| `accountcommon.UserPlatformInfo` | [AccountcommonUserPlatformInfo ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_platform_info.go) |
| `accountcommon.UserPlatforms` | [AccountcommonUserPlatforms ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_platforms.go) |
| `accountcommon.UserSearchByPlatformIDResult` | [AccountcommonUserSearchByPlatformIDResult ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_search_by_platform_id_result.go) |
| `accountcommon.UserSearchResult` | [AccountcommonUserSearchResult ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_search_result.go) |
| `accountcommon.UserWithLinkedPlatformAccounts` | [AccountcommonUserWithLinkedPlatformAccounts ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_with_linked_platform_accounts.go) |
| `accountcommon.UserWithPlatformAccounts` | [AccountcommonUserWithPlatformAccounts ](../iam-sdk/pkg/iamclientmodels/accountcommon_user_with_platform_accounts.go) |
| `bloom.FilterJSON` | [BloomFilterJSON ](../iam-sdk/pkg/iamclientmodels/bloom_filter_json.go) |
| `clientmodel.ClientCreateRequest` | [ClientmodelClientCreateRequest ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_create_request.go) |
| `clientmodel.ClientCreationResponse` | [ClientmodelClientCreationResponse ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_creation_response.go) |
| `clientmodel.ClientCreationV3Request` | [ClientmodelClientCreationV3Request ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_creation_v3_request.go) |
| `clientmodel.ClientResponse` | [ClientmodelClientResponse ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_response.go) |
| `clientmodel.ClientUpdateRequest` | [ClientmodelClientUpdateRequest ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_update_request.go) |
| `clientmodel.ClientUpdateSecretRequest` | [ClientmodelClientUpdateSecretRequest ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_update_secret_request.go) |
| `clientmodel.ClientUpdateV3Request` | [ClientmodelClientUpdateV3Request ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_update_v3_request.go) |
| `clientmodel.ClientV3Response` | [ClientmodelClientV3Response ](../iam-sdk/pkg/iamclientmodels/clientmodel_client_v3_response.go) |
| `clientmodel.ClientsV3Response` | [ClientmodelClientsV3Response ](../iam-sdk/pkg/iamclientmodels/clientmodel_clients_v3_response.go) |
| `legal.AcceptedPoliciesRequest` | [LegalAcceptedPoliciesRequest ](../iam-sdk/pkg/iamclientmodels/legal_accepted_policies_request.go) |
| `model.AddUserRoleV4Request` | [ModelAddUserRoleV4Request ](../iam-sdk/pkg/iamclientmodels/model_add_user_role_v4_request.go) |
| `model.AgeRestrictionRequest` | [ModelAgeRestrictionRequest ](../iam-sdk/pkg/iamclientmodels/model_age_restriction_request.go) |
| `model.AgeRestrictionRequestV3` | [ModelAgeRestrictionRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_age_restriction_request_v3.go) |
| `model.AgeRestrictionResponse` | [ModelAgeRestrictionResponse ](../iam-sdk/pkg/iamclientmodels/model_age_restriction_response.go) |
| `model.AgeRestrictionResponseV3` | [ModelAgeRestrictionResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_age_restriction_response_v3.go) |
| `model.AssignUserV4Request` | [ModelAssignUserV4Request ](../iam-sdk/pkg/iamclientmodels/model_assign_user_v4_request.go) |
| `model.AssignedUserV4Response` | [ModelAssignedUserV4Response ](../iam-sdk/pkg/iamclientmodels/model_assigned_user_v4_response.go) |
| `model.AuthenticatorKeyResponseV4` | [ModelAuthenticatorKeyResponseV4 ](../iam-sdk/pkg/iamclientmodels/model_authenticator_key_response_v4.go) |
| `model.BackupCodesResponseV4` | [ModelBackupCodesResponseV4 ](../iam-sdk/pkg/iamclientmodels/model_backup_codes_response_v4.go) |
| `model.BanCreateRequest` | [ModelBanCreateRequest ](../iam-sdk/pkg/iamclientmodels/model_ban_create_request.go) |
| `model.BanUpdateRequest` | [ModelBanUpdateRequest ](../iam-sdk/pkg/iamclientmodels/model_ban_update_request.go) |
| `model.CheckValidUserIDRequestV4` | [ModelCheckValidUserIDRequestV4 ](../iam-sdk/pkg/iamclientmodels/model_check_valid_user_id_request_v4.go) |
| `model.Country` | [ModelCountry ](../iam-sdk/pkg/iamclientmodels/model_country.go) |
| `model.CountryAgeRestrictionRequest` | [ModelCountryAgeRestrictionRequest ](../iam-sdk/pkg/iamclientmodels/model_country_age_restriction_request.go) |
| `model.CountryAgeRestrictionV3Request` | [ModelCountryAgeRestrictionV3Request ](../iam-sdk/pkg/iamclientmodels/model_country_age_restriction_v3_request.go) |
| `model.CountryV3Response` | [ModelCountryV3Response ](../iam-sdk/pkg/iamclientmodels/model_country_v3_response.go) |
| `model.CreateJusticeUserResponse` | [ModelCreateJusticeUserResponse ](../iam-sdk/pkg/iamclientmodels/model_create_justice_user_response.go) |
| `model.DisableUserRequest` | [ModelDisableUserRequest ](../iam-sdk/pkg/iamclientmodels/model_disable_user_request.go) |
| `model.EmailUpdateRequestV4` | [ModelEmailUpdateRequestV4 ](../iam-sdk/pkg/iamclientmodels/model_email_update_request_v4.go) |
| `model.EnabledFactorsResponseV4` | [ModelEnabledFactorsResponseV4 ](../iam-sdk/pkg/iamclientmodels/model_enabled_factors_response_v4.go) |
| `model.ForgotPasswordRequestV3` | [ModelForgotPasswordRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_forgot_password_request_v3.go) |
| `model.GetAdminUsersResponse` | [ModelGetAdminUsersResponse ](../iam-sdk/pkg/iamclientmodels/model_get_admin_users_response.go) |
| `model.GetPublisherUserResponse` | [ModelGetPublisherUserResponse ](../iam-sdk/pkg/iamclientmodels/model_get_publisher_user_response.go) |
| `model.GetUserBanV3Response` | [ModelGetUserBanV3Response ](../iam-sdk/pkg/iamclientmodels/model_get_user_ban_v3_response.go) |
| `model.GetUserJusticePlatformAccountResponse` | [ModelGetUserJusticePlatformAccountResponse ](../iam-sdk/pkg/iamclientmodels/model_get_user_justice_platform_account_response.go) |
| `model.GetUserMapping` | [ModelGetUserMapping ](../iam-sdk/pkg/iamclientmodels/model_get_user_mapping.go) |
| `model.GetUsersResponseWithPaginationV3` | [ModelGetUsersResponseWithPaginationV3 ](../iam-sdk/pkg/iamclientmodels/model_get_users_response_with_pagination_v3.go) |
| `model.InputValidationData` | [ModelInputValidationData ](../iam-sdk/pkg/iamclientmodels/model_input_validation_data.go) |
| `model.InputValidationDataPublic` | [ModelInputValidationDataPublic ](../iam-sdk/pkg/iamclientmodels/model_input_validation_data_public.go) |
| `model.InputValidationUpdatePayload` | [ModelInputValidationUpdatePayload ](../iam-sdk/pkg/iamclientmodels/model_input_validation_update_payload.go) |
| `model.InputValidationsPublicResponse` | [ModelInputValidationsPublicResponse ](../iam-sdk/pkg/iamclientmodels/model_input_validations_public_response.go) |
| `model.InputValidationsResponse` | [ModelInputValidationsResponse ](../iam-sdk/pkg/iamclientmodels/model_input_validations_response.go) |
| `model.InviteUserRequestV3` | [ModelInviteUserRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_invite_user_request_v3.go) |
| `model.InviteUserRequestV4` | [ModelInviteUserRequestV4 ](../iam-sdk/pkg/iamclientmodels/model_invite_user_request_v4.go) |
| `model.InviteUserResponseV3` | [ModelInviteUserResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_invite_user_response_v3.go) |
| `model.LinkPlatformAccountRequest` | [ModelLinkPlatformAccountRequest ](../iam-sdk/pkg/iamclientmodels/model_link_platform_account_request.go) |
| `model.LinkRequest` | [ModelLinkRequest ](../iam-sdk/pkg/iamclientmodels/model_link_request.go) |
| `model.ListAssignedUsersV4Response` | [ModelListAssignedUsersV4Response ](../iam-sdk/pkg/iamclientmodels/model_list_assigned_users_v4_response.go) |
| `model.ListBulkUserResponse` | [ModelListBulkUserResponse ](../iam-sdk/pkg/iamclientmodels/model_list_bulk_user_response.go) |
| `model.ListEmailAddressRequest` | [ModelListEmailAddressRequest ](../iam-sdk/pkg/iamclientmodels/model_list_email_address_request.go) |
| `model.ListRoleV4Response` | [ModelListRoleV4Response ](../iam-sdk/pkg/iamclientmodels/model_list_role_v4_response.go) |
| `model.ListUserInformationResult` | [ModelListUserInformationResult ](../iam-sdk/pkg/iamclientmodels/model_list_user_information_result.go) |
| `model.ListUserResponseV3` | [ModelListUserResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_list_user_response_v3.go) |
| `model.ListUserRolesV4Response` | [ModelListUserRolesV4Response ](../iam-sdk/pkg/iamclientmodels/model_list_user_roles_v4_response.go) |
| `model.ListValidUserIDResponseV4` | [ModelListValidUserIDResponseV4 ](../iam-sdk/pkg/iamclientmodels/model_list_valid_user_id_response_v4.go) |
| `model.LoginHistoriesResponse` | [ModelLoginHistoriesResponse ](../iam-sdk/pkg/iamclientmodels/model_login_histories_response.go) |
| `model.NamespaceRoleRequest` | [ModelNamespaceRoleRequest ](../iam-sdk/pkg/iamclientmodels/model_namespace_role_request.go) |
| `model.PermissionDeleteRequest` | [ModelPermissionDeleteRequest ](../iam-sdk/pkg/iamclientmodels/model_permission_delete_request.go) |
| `model.PlatformDomainDeleteRequest` | [ModelPlatformDomainDeleteRequest ](../iam-sdk/pkg/iamclientmodels/model_platform_domain_delete_request.go) |
| `model.PlatformDomainResponse` | [ModelPlatformDomainResponse ](../iam-sdk/pkg/iamclientmodels/model_platform_domain_response.go) |
| `model.PlatformDomainUpdateRequest` | [ModelPlatformDomainUpdateRequest ](../iam-sdk/pkg/iamclientmodels/model_platform_domain_update_request.go) |
| `model.PlatformUserIDRequest` | [ModelPlatformUserIDRequest ](../iam-sdk/pkg/iamclientmodels/model_platform_user_id_request.go) |
| `model.PlatformUserInformation` | [ModelPlatformUserInformation ](../iam-sdk/pkg/iamclientmodels/model_platform_user_information.go) |
| `model.PublicThirdPartyPlatformInfo` | [ModelPublicThirdPartyPlatformInfo ](../iam-sdk/pkg/iamclientmodels/model_public_third_party_platform_info.go) |
| `model.PublicUserInformationResponseV3` | [ModelPublicUserInformationResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_public_user_information_response_v3.go) |
| `model.PublicUserInformationV3` | [ModelPublicUserInformationV3 ](../iam-sdk/pkg/iamclientmodels/model_public_user_information_v3.go) |
| `model.PublicUserResponse` | [ModelPublicUserResponse ](../iam-sdk/pkg/iamclientmodels/model_public_user_response.go) |
| `model.PublicUserResponseV3` | [ModelPublicUserResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_public_user_response_v3.go) |
| `model.PublicUsersResponse` | [ModelPublicUsersResponse ](../iam-sdk/pkg/iamclientmodels/model_public_users_response.go) |
| `model.RemoveUserRoleV4Request` | [ModelRemoveUserRoleV4Request ](../iam-sdk/pkg/iamclientmodels/model_remove_user_role_v4_request.go) |
| `model.ResetPasswordRequest` | [ModelResetPasswordRequest ](../iam-sdk/pkg/iamclientmodels/model_reset_password_request.go) |
| `model.ResetPasswordRequestV3` | [ModelResetPasswordRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_reset_password_request_v3.go) |
| `model.RevokeUserV4Request` | [ModelRevokeUserV4Request ](../iam-sdk/pkg/iamclientmodels/model_revoke_user_v4_request.go) |
| `model.RoleAdminStatusResponse` | [ModelRoleAdminStatusResponse ](../iam-sdk/pkg/iamclientmodels/model_role_admin_status_response.go) |
| `model.RoleAdminStatusResponseV3` | [ModelRoleAdminStatusResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_role_admin_status_response_v3.go) |
| `model.RoleCreateRequest` | [ModelRoleCreateRequest ](../iam-sdk/pkg/iamclientmodels/model_role_create_request.go) |
| `model.RoleCreateV3Request` | [ModelRoleCreateV3Request ](../iam-sdk/pkg/iamclientmodels/model_role_create_v3_request.go) |
| `model.RoleManagersRequest` | [ModelRoleManagersRequest ](../iam-sdk/pkg/iamclientmodels/model_role_managers_request.go) |
| `model.RoleManagersRequestV3` | [ModelRoleManagersRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_role_managers_request_v3.go) |
| `model.RoleManagersResponse` | [ModelRoleManagersResponse ](../iam-sdk/pkg/iamclientmodels/model_role_managers_response.go) |
| `model.RoleManagersResponsesV3` | [ModelRoleManagersResponsesV3 ](../iam-sdk/pkg/iamclientmodels/model_role_managers_responses_v3.go) |
| `model.RoleMembersRequest` | [ModelRoleMembersRequest ](../iam-sdk/pkg/iamclientmodels/model_role_members_request.go) |
| `model.RoleMembersRequestV3` | [ModelRoleMembersRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_role_members_request_v3.go) |
| `model.RoleMembersResponse` | [ModelRoleMembersResponse ](../iam-sdk/pkg/iamclientmodels/model_role_members_response.go) |
| `model.RoleMembersResponseV3` | [ModelRoleMembersResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_role_members_response_v3.go) |
| `model.RoleNamesResponseV3` | [ModelRoleNamesResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_role_names_response_v3.go) |
| `model.RoleResponse` | [ModelRoleResponse ](../iam-sdk/pkg/iamclientmodels/model_role_response.go) |
| `model.RoleResponseV3` | [ModelRoleResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_role_response_v3.go) |
| `model.RoleResponseWithManagers` | [ModelRoleResponseWithManagers ](../iam-sdk/pkg/iamclientmodels/model_role_response_with_managers.go) |
| `model.RoleResponseWithManagersAndPaginationV3` | [ModelRoleResponseWithManagersAndPaginationV3 ](../iam-sdk/pkg/iamclientmodels/model_role_response_with_managers_and_pagination_v3.go) |
| `model.RoleResponseWithManagersV3` | [ModelRoleResponseWithManagersV3 ](../iam-sdk/pkg/iamclientmodels/model_role_response_with_managers_v3.go) |
| `model.RoleUpdateRequest` | [ModelRoleUpdateRequest ](../iam-sdk/pkg/iamclientmodels/model_role_update_request.go) |
| `model.RoleUpdateRequestV3` | [ModelRoleUpdateRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_role_update_request_v3.go) |
| `model.RoleV4Request` | [ModelRoleV4Request ](../iam-sdk/pkg/iamclientmodels/model_role_v4_request.go) |
| `model.RoleV4Response` | [ModelRoleV4Response ](../iam-sdk/pkg/iamclientmodels/model_role_v4_response.go) |
| `model.SSOPlatformCredentialRequest` | [ModelSSOPlatformCredentialRequest ](../iam-sdk/pkg/iamclientmodels/model_sso_platform_credential_request.go) |
| `model.SSOPlatformCredentialResponse` | [ModelSSOPlatformCredentialResponse ](../iam-sdk/pkg/iamclientmodels/model_sso_platform_credential_response.go) |
| `model.SearchUsersByPlatformIDResponse` | [ModelSearchUsersByPlatformIDResponse ](../iam-sdk/pkg/iamclientmodels/model_search_users_by_platform_id_response.go) |
| `model.SearchUsersResponse` | [ModelSearchUsersResponse ](../iam-sdk/pkg/iamclientmodels/model_search_users_response.go) |
| `model.SearchUsersResponseWithPaginationV3` | [ModelSearchUsersResponseWithPaginationV3 ](../iam-sdk/pkg/iamclientmodels/model_search_users_response_with_pagination_v3.go) |
| `model.SendRegisterVerificationCodeRequest` | [ModelSendRegisterVerificationCodeRequest ](../iam-sdk/pkg/iamclientmodels/model_send_register_verification_code_request.go) |
| `model.SendVerificationCodeRequest` | [ModelSendVerificationCodeRequest ](../iam-sdk/pkg/iamclientmodels/model_send_verification_code_request.go) |
| `model.SendVerificationCodeRequestV3` | [ModelSendVerificationCodeRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_send_verification_code_request_v3.go) |
| `model.ThirdPartyLoginPlatformCredentialRequest` | [ModelThirdPartyLoginPlatformCredentialRequest ](../iam-sdk/pkg/iamclientmodels/model_third_party_login_platform_credential_request.go) |
| `model.ThirdPartyLoginPlatformCredentialResponse` | [ModelThirdPartyLoginPlatformCredentialResponse ](../iam-sdk/pkg/iamclientmodels/model_third_party_login_platform_credential_response.go) |
| `model.UnlinkUserPlatformRequest` | [ModelUnlinkUserPlatformRequest ](../iam-sdk/pkg/iamclientmodels/model_unlink_user_platform_request.go) |
| `model.UpdatePermissionScheduleRequest` | [ModelUpdatePermissionScheduleRequest ](../iam-sdk/pkg/iamclientmodels/model_update_permission_schedule_request.go) |
| `model.UpdateUserDeletionStatusRequest` | [ModelUpdateUserDeletionStatusRequest ](../iam-sdk/pkg/iamclientmodels/model_update_user_deletion_status_request.go) |
| `model.UpdateUserStatusRequest` | [ModelUpdateUserStatusRequest ](../iam-sdk/pkg/iamclientmodels/model_update_user_status_request.go) |
| `model.UpgradeHeadlessAccountRequest` | [ModelUpgradeHeadlessAccountRequest ](../iam-sdk/pkg/iamclientmodels/model_upgrade_headless_account_request.go) |
| `model.UpgradeHeadlessAccountV3Request` | [ModelUpgradeHeadlessAccountV3Request ](../iam-sdk/pkg/iamclientmodels/model_upgrade_headless_account_v3_request.go) |
| `model.UpgradeHeadlessAccountWithVerificationCodeRequest` | [ModelUpgradeHeadlessAccountWithVerificationCodeRequest ](../iam-sdk/pkg/iamclientmodels/model_upgrade_headless_account_with_verification_code_request.go) |
| `model.UpgradeHeadlessAccountWithVerificationCodeRequestV3` | [ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_upgrade_headless_account_with_verification_code_request_v3.go) |
| `model.UserActiveBanResponse` | [ModelUserActiveBanResponse ](../iam-sdk/pkg/iamclientmodels/model_user_active_ban_response.go) |
| `model.UserActiveBanResponseV3` | [ModelUserActiveBanResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_user_active_ban_response_v3.go) |
| `model.UserBanResponse` | [ModelUserBanResponse ](../iam-sdk/pkg/iamclientmodels/model_user_ban_response.go) |
| `model.UserBanResponseV3` | [ModelUserBanResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_user_ban_response_v3.go) |
| `model.UserBaseInfo` | [ModelUserBaseInfo ](../iam-sdk/pkg/iamclientmodels/model_user_base_info.go) |
| `model.UserCreateFromInvitationRequestV3` | [ModelUserCreateFromInvitationRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_user_create_from_invitation_request_v3.go) |
| `model.UserCreateFromInvitationRequestV4` | [ModelUserCreateFromInvitationRequestV4 ](../iam-sdk/pkg/iamclientmodels/model_user_create_from_invitation_request_v4.go) |
| `model.UserCreateRequest` | [ModelUserCreateRequest ](../iam-sdk/pkg/iamclientmodels/model_user_create_request.go) |
| `model.UserCreateRequestV3` | [ModelUserCreateRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_user_create_request_v3.go) |
| `model.UserCreateResponse` | [ModelUserCreateResponse ](../iam-sdk/pkg/iamclientmodels/model_user_create_response.go) |
| `model.UserCreateResponseV3` | [ModelUserCreateResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_user_create_response_v3.go) |
| `model.UserDeletionStatusResponse` | [ModelUserDeletionStatusResponse ](../iam-sdk/pkg/iamclientmodels/model_user_deletion_status_response.go) |
| `model.UserIDsRequest` | [ModelUserIDsRequest ](../iam-sdk/pkg/iamclientmodels/model_user_i_ds_request.go) |
| `model.UserInfoResponse` | [ModelUserInfoResponse ](../iam-sdk/pkg/iamclientmodels/model_user_info_response.go) |
| `model.UserInformation` | [ModelUserInformation ](../iam-sdk/pkg/iamclientmodels/model_user_information.go) |
| `model.UserInvitationV3` | [ModelUserInvitationV3 ](../iam-sdk/pkg/iamclientmodels/model_user_invitation_v3.go) |
| `model.UserLoginHistoryResponse` | [ModelUserLoginHistoryResponse ](../iam-sdk/pkg/iamclientmodels/model_user_login_history_response.go) |
| `model.UserPasswordUpdateRequest` | [ModelUserPasswordUpdateRequest ](../iam-sdk/pkg/iamclientmodels/model_user_password_update_request.go) |
| `model.UserPasswordUpdateV3Request` | [ModelUserPasswordUpdateV3Request ](../iam-sdk/pkg/iamclientmodels/model_user_password_update_v3_request.go) |
| `model.UserPermissionsResponseV3` | [ModelUserPermissionsResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_user_permissions_response_v3.go) |
| `model.UserResponse` | [ModelUserResponse ](../iam-sdk/pkg/iamclientmodels/model_user_response.go) |
| `model.UserResponseV3` | [ModelUserResponseV3 ](../iam-sdk/pkg/iamclientmodels/model_user_response_v3.go) |
| `model.UserRolesV4Response` | [ModelUserRolesV4Response ](../iam-sdk/pkg/iamclientmodels/model_user_roles_v4_response.go) |
| `model.UserUpdateRequest` | [ModelUserUpdateRequest ](../iam-sdk/pkg/iamclientmodels/model_user_update_request.go) |
| `model.UserUpdateRequestV3` | [ModelUserUpdateRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_user_update_request_v3.go) |
| `model.UserVerificationRequest` | [ModelUserVerificationRequest ](../iam-sdk/pkg/iamclientmodels/model_user_verification_request.go) |
| `model.UserVerificationRequestV3` | [ModelUserVerificationRequestV3 ](../iam-sdk/pkg/iamclientmodels/model_user_verification_request_v3.go) |
| `model.ValidUserIDResponseV4` | [ModelValidUserIDResponseV4 ](../iam-sdk/pkg/iamclientmodels/model_valid_user_id_response_v4.go) |
| `model.ValidationDetail` | [ModelValidationDetail ](../iam-sdk/pkg/iamclientmodels/model_validation_detail.go) |
| `model.ValidationDetailPublic` | [ModelValidationDetailPublic ](../iam-sdk/pkg/iamclientmodels/model_validation_detail_public.go) |
| `model.VerificationCodeResponse` | [ModelVerificationCodeResponse ](../iam-sdk/pkg/iamclientmodels/model_verification_code_response.go) |
| `model.VerifyRegistrationCode` | [ModelVerifyRegistrationCode ](../iam-sdk/pkg/iamclientmodels/model_verify_registration_code.go) |
| `model.WebLinkingResponse` | [ModelWebLinkingResponse ](../iam-sdk/pkg/iamclientmodels/model_web_linking_response.go) |
| `oauthapi.RevocationList` | [OauthapiRevocationList ](../iam-sdk/pkg/iamclientmodels/oauthapi_revocation_list.go) |
| `oauthcommon.JWKKey` | [OauthcommonJWKKey ](../iam-sdk/pkg/iamclientmodels/oauthcommon_jwk_key.go) |
| `oauthcommon.JWKSet` | [OauthcommonJWKSet ](../iam-sdk/pkg/iamclientmodels/oauthcommon_jwk_set.go) |
| `oauthcommon.UserRevocationListRecord` | [OauthcommonUserRevocationListRecord ](../iam-sdk/pkg/iamclientmodels/oauthcommon_user_revocation_list_record.go) |
| `oauthmodel.CountryLocationResponse` | [OauthmodelCountryLocationResponse ](../iam-sdk/pkg/iamclientmodels/oauthmodel_country_location_response.go) |
| `oauthmodel.ErrorResponse` | [OauthmodelErrorResponse ](../iam-sdk/pkg/iamclientmodels/oauthmodel_error_response.go) |
| `oauthmodel.TokenIntrospectResponse` | [OauthmodelTokenIntrospectResponse ](../iam-sdk/pkg/iamclientmodels/oauthmodel_token_introspect_response.go) |
| `oauthmodel.TokenResponse` | [OauthmodelTokenResponse ](../iam-sdk/pkg/iamclientmodels/oauthmodel_token_response.go) |
| `oauthmodel.TokenResponseV3` | [OauthmodelTokenResponseV3 ](../iam-sdk/pkg/iamclientmodels/oauthmodel_token_response_v3.go) |
| `oauthmodel.TokenThirdPartyResponse` | [OauthmodelTokenThirdPartyResponse ](../iam-sdk/pkg/iamclientmodels/oauthmodel_token_third_party_response.go) |
| `rest.ErrorResponse` | [RestErrorResponse ](../iam-sdk/pkg/iamclientmodels/rest_error_response.go) |
| `restapi.ErrorResponse` | [RestapiErrorResponse ](../iam-sdk/pkg/iamclientmodels/restapi_error_response.go) |
