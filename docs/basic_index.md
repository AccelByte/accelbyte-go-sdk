# Basic Service Index

&nbsp;

## Operations

### Namespace Wrapper:  [Namespace](../services-api/pkg/service/basic/namespace.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces` | GET | GetNamespacesShort | [GetNamespacesShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespacesShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces` | POST | CreateNamespaceShort | [CreateNamespaceShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [CreateNamespaceShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces/{namespace}` | GET | GetNamespaceShort | [GetNamespaceShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespaceShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces/{namespace}` | DELETE | DeleteNamespaceShort | [DeleteNamespaceShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [DeleteNamespaceShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces/{namespace}/basic` | PATCH | UpdateNamespaceShort | [UpdateNamespaceShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [UpdateNamespaceShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces/{namespace}/publisher` | GET | GetNamespacePublisherShort | [GetNamespacePublisherShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [GetNamespacePublisherShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/admin/namespaces/{namespace}/status` | PATCH | ChangeNamespaceStatusShort | [ChangeNamespaceStatusShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [ChangeNamespaceStatusShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/public/namespaces` | GET | PublicGetNamespacesShort | [PublicGetNamespacesShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [PublicGetNamespacesShort](../services-api/pkg/service/basic/namespace.go) |
| `/basic/v1/public/namespaces/{namespace}/publisher` | GET | PublicGetNamespacePublisherShort | [PublicGetNamespacePublisherShort](../basic-sdk/pkg/basicclient/namespace/namespace_client.go) | [PublicGetNamespacePublisherShort](../services-api/pkg/service/basic/namespace.go) |

### UserAction Wrapper:  [UserAction](../services-api/pkg/service/basic/userAction.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/actions` | GET | GetActionsShort | [GetActionsShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetActionsShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/ban` | POST | BanUsersShort | [BanUsersShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [BanUsersShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/banned` | GET | GetBannedUsersShort | [GetBannedUsersShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetBannedUsersShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/report` | POST | ReportUserShort | [ReportUserShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [ReportUserShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/status` | GET | GetUserStatusShort | [GetUserStatusShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [GetUserStatusShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/admin/namespaces/{namespace}/actions/unban` | POST | UnBanUsersShort | [UnBanUsersShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [UnBanUsersShort](../services-api/pkg/service/basic/userAction.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report` | POST | PublicReportUserShort | [PublicReportUserShort](../basic-sdk/pkg/basicclient/user_action/user_action_client.go) | [PublicReportUserShort](../services-api/pkg/service/basic/userAction.go) |

### EQU8Config Wrapper:  [EQU8Config](../services-api/pkg/service/basic/equ8Config.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | GET | GetConfigShort | [GetConfigShort](../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [GetConfigShort](../services-api/pkg/service/basic/equ8Config.go) |
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | DELETE | DeleteConfigShort | [DeleteConfigShort](../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [DeleteConfigShort](../services-api/pkg/service/basic/equ8Config.go) |
| `/basic/v1/admin/namespaces/{namespace}/equ8/config` | PATCH | UpdateConfigShort | [UpdateConfigShort](../basic-sdk/pkg/basicclient/equ8_config/equ8_config_client.go) | [UpdateConfigShort](../services-api/pkg/service/basic/equ8Config.go) |

### FileUpload Wrapper:  [FileUpload](../services-api/pkg/service/basic/fileUpload.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/folders/{folder}/files` | POST | GeneratedUploadUrlShort | [GeneratedUploadUrlShort](../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [GeneratedUploadUrlShort](../services-api/pkg/service/basic/fileUpload.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/files` | POST | GeneratedUserUploadContentUrlShort | [GeneratedUserUploadContentUrlShort](../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [GeneratedUserUploadContentUrlShort](../services-api/pkg/service/basic/fileUpload.go) |
| `/basic/v1/public/namespaces/{namespace}/folders/{folder}/files` | POST | PublicGeneratedUploadUrlShort | [PublicGeneratedUploadUrlShort](../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [PublicGeneratedUploadUrlShort](../services-api/pkg/service/basic/fileUpload.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/files` | POST | PublicGeneratedUserUploadContentUrlShort | [PublicGeneratedUserUploadContentUrlShort](../basic-sdk/pkg/basicclient/file_upload/file_upload_client.go) | [PublicGeneratedUserUploadContentUrlShort](../services-api/pkg/service/basic/fileUpload.go) |

### Misc Wrapper:  [Misc](../services-api/pkg/service/basic/misc.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/misc/countries` | GET | GetCountriesShort | [GetCountriesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetCountriesShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups` | GET | GetCountryGroupsShort | [GetCountryGroupsShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetCountryGroupsShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups` | POST | AddCountryGroupShort | [AddCountryGroupShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [AddCountryGroupShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}` | PUT | UpdateCountryGroupShort | [UpdateCountryGroupShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [UpdateCountryGroupShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}` | DELETE | DeleteCountryGroupShort | [DeleteCountryGroupShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [DeleteCountryGroupShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/languages` | GET | GetLanguagesShort | [GetLanguagesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetLanguagesShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/admin/namespaces/{namespace}/misc/timezones` | GET | GetTimeZonesShort | [GetTimeZonesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [GetTimeZonesShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/public/misc/time` | GET | PublicGetTimeShort | [PublicGetTimeShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetTimeShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/public/namespaces/{namespace}/misc/countries` | GET | PublicGetCountriesShort | [PublicGetCountriesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetCountriesShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/public/namespaces/{namespace}/misc/languages` | GET | PublicGetLanguagesShort | [PublicGetLanguagesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetLanguagesShort](../services-api/pkg/service/basic/misc.go) |
| `/basic/v1/public/namespaces/{namespace}/misc/timezones` | GET | PublicGetTimeZonesShort | [PublicGetTimeZonesShort](../basic-sdk/pkg/basicclient/misc/misc_client.go) | [PublicGetTimeZonesShort](../services-api/pkg/service/basic/misc.go) |

### UserProfile Wrapper:  [UserProfile](../services-api/pkg/service/basic/userProfile.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/profiles/public` | POST | AdminGetUserProfilePublicInfoByIdsShort | [AdminGetUserProfilePublicInfoByIdsShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [AdminGetUserProfilePublicInfoByIdsShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | GET | GetUserProfileInfoShort | [GetUserProfileInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetUserProfileInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | PUT | UpdateUserProfileShort | [UpdateUserProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateUserProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles` | DELETE | DeleteUserProfileShort | [DeleteUserProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [DeleteUserProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | GET | GetCustomAttributesInfoShort | [GetCustomAttributesInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetCustomAttributesInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | PUT | UpdateCustomAttributesPartiallyShort | [UpdateCustomAttributesPartiallyShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateCustomAttributesPartiallyShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes` | GET | GetPrivateCustomAttributesInfoShort | [GetPrivateCustomAttributesInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetPrivateCustomAttributesInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes` | PUT | UpdatePrivateCustomAttributesPartiallyShort | [UpdatePrivateCustomAttributesPartiallyShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdatePrivateCustomAttributesPartiallyShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status` | PATCH | UpdateUserProfileStatusShort | [UpdateUserProfileStatusShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateUserProfileStatusShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/profiles/public` | GET | PublicGetUserProfilePublicInfoByIdsShort | [PublicGetUserProfilePublicInfoByIdsShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfilePublicInfoByIdsShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | GET | GetMyProfileInfoShort | [GetMyProfileInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetMyProfileInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | PUT | UpdateMyProfileShort | [UpdateMyProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateMyProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles` | POST | CreateMyProfileShort | [CreateMyProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [CreateMyProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode` | GET | GetMyZipCodeShort | [GetMyZipCodeShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [GetMyZipCodeShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode` | PATCH | UpdateMyZipCodeShort | [UpdateMyZipCodeShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [UpdateMyZipCodeShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | GET | PublicGetUserProfileInfoShort | [PublicGetUserProfileInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfileInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | PUT | PublicUpdateUserProfileShort | [PublicUpdateUserProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateUserProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles` | POST | PublicCreateUserProfileShort | [PublicCreateUserProfileShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicCreateUserProfileShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | GET | PublicGetCustomAttributesInfoShort | [PublicGetCustomAttributesInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetCustomAttributesInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes` | PUT | PublicUpdateCustomAttributesPartiallyShort | [PublicUpdateCustomAttributesPartiallyShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateCustomAttributesPartiallyShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public` | GET | PublicGetUserProfilePublicInfoShort | [PublicGetUserProfilePublicInfoShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicGetUserProfilePublicInfoShort](../services-api/pkg/service/basic/userProfile.go) |
| `/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status` | PATCH | PublicUpdateUserProfileStatusShort | [PublicUpdateUserProfileStatusShort](../basic-sdk/pkg/basicclient/user_profile/user_profile_client.go) | [PublicUpdateUserProfileStatusShort](../services-api/pkg/service/basic/userProfile.go) |

### Anonymization Wrapper:  [Anonymization](../services-api/pkg/service/basic/anonymization.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles` | DELETE | AnonymizeUserProfileShort | [AnonymizeUserProfileShort](../basic-sdk/pkg/basicclient/anonymization/anonymization_client.go) | [AnonymizeUserProfileShort](../services-api/pkg/service/basic/anonymization.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `A DTO for unban user API call.` | [ADTOForUnbanUserAPICall ](../basic-sdk/pkg/basicclientmodels/a_dto_for_unban_user_api_call.go) |
| `A DTO for update equ8 config API call.` | [ADTOForUpdateEqu8ConfigAPICall ](../basic-sdk/pkg/basicclientmodels/a_dto_for_update_equ8_config_api_call.go) |
| `A DTO object for equ8 user ban status` | [ADTOObjectForEqu8UserBanStatus ](../basic-sdk/pkg/basicclientmodels/a_dto_object_for_equ8_user_ban_status.go) |
| `A DTO object for equ8 user status` | [ADTOObjectForEqu8UserStatus ](../basic-sdk/pkg/basicclientmodels/a_dto_object_for_equ8_user_status.go) |
| `Action` | [Action ](../basic-sdk/pkg/basicclientmodels/action.go) |
| `AddCountryGroupRequest` | [AddCountryGroupRequest ](../basic-sdk/pkg/basicclientmodels/add_country_group_request.go) |
| `AddCountryGroupResponse` | [AddCountryGroupResponse ](../basic-sdk/pkg/basicclientmodels/add_country_group_response.go) |
| `CountryGroupObject` | [CountryGroupObject ](../basic-sdk/pkg/basicclientmodels/country_group_object.go) |
| `CountryObject` | [CountryObject ](../basic-sdk/pkg/basicclientmodels/country_object.go) |
| `Equ8Config` | [Equ8Config ](../basic-sdk/pkg/basicclientmodels/equ8_config.go) |
| `ErrorEntity` | [ErrorEntity ](../basic-sdk/pkg/basicclientmodels/error_entity.go) |
| `FieldValidationError` | [FieldValidationError ](../basic-sdk/pkg/basicclientmodels/field_validation_error.go) |
| `FileUploadUrlInfo` | [FileUploadUrlInfo ](../basic-sdk/pkg/basicclientmodels/file_upload_url_info.go) |
| `NamespaceCreate` | [NamespaceCreate ](../basic-sdk/pkg/basicclientmodels/namespace_create.go) |
| `NamespaceInfo` | [NamespaceInfo ](../basic-sdk/pkg/basicclientmodels/namespace_info.go) |
| `NamespacePublisherInfo` | [NamespacePublisherInfo ](../basic-sdk/pkg/basicclientmodels/namespace_publisher_info.go) |
| `NamespaceStatusUpdate` | [NamespaceStatusUpdate ](../basic-sdk/pkg/basicclientmodels/namespace_status_update.go) |
| `NamespaceUpdate` | [NamespaceUpdate ](../basic-sdk/pkg/basicclientmodels/namespace_update.go) |
| `RetrieveCountryGroupResponse` | [RetrieveCountryGroupResponse ](../basic-sdk/pkg/basicclientmodels/retrieve_country_group_response.go) |
| `RetrieveTimeResponse` | [RetrieveTimeResponse ](../basic-sdk/pkg/basicclientmodels/retrieve_time_response.go) |
| `UpdateCountryGroupRequest` | [UpdateCountryGroupRequest ](../basic-sdk/pkg/basicclientmodels/update_country_group_request.go) |
| `UserBanRequest` | [UserBanRequest ](../basic-sdk/pkg/basicclientmodels/user_ban_request.go) |
| `UserProfileAdmin` | [UserProfileAdmin ](../basic-sdk/pkg/basicclientmodels/user_profile_admin.go) |
| `UserProfileBulkRequest` | [UserProfileBulkRequest ](../basic-sdk/pkg/basicclientmodels/user_profile_bulk_request.go) |
| `UserProfileCreate` | [UserProfileCreate ](../basic-sdk/pkg/basicclientmodels/user_profile_create.go) |
| `UserProfileInfo` | [UserProfileInfo ](../basic-sdk/pkg/basicclientmodels/user_profile_info.go) |
| `UserProfilePrivateCreate` | [UserProfilePrivateCreate ](../basic-sdk/pkg/basicclientmodels/user_profile_private_create.go) |
| `UserProfilePrivateInfo` | [UserProfilePrivateInfo ](../basic-sdk/pkg/basicclientmodels/user_profile_private_info.go) |
| `UserProfilePrivateUpdate` | [UserProfilePrivateUpdate ](../basic-sdk/pkg/basicclientmodels/user_profile_private_update.go) |
| `UserProfilePublicInfo` | [UserProfilePublicInfo ](../basic-sdk/pkg/basicclientmodels/user_profile_public_info.go) |
| `UserProfileStatusUpdate` | [UserProfileStatusUpdate ](../basic-sdk/pkg/basicclientmodels/user_profile_status_update.go) |
| `UserProfileUpdate` | [UserProfileUpdate ](../basic-sdk/pkg/basicclientmodels/user_profile_update.go) |
| `UserReportRequest` | [UserReportRequest ](../basic-sdk/pkg/basicclientmodels/user_report_request.go) |
| `UserZipCode` | [UserZipCode ](../basic-sdk/pkg/basicclientmodels/user_zip_code.go) |
| `UserZipCodeUpdate` | [UserZipCodeUpdate ](../basic-sdk/pkg/basicclientmodels/user_zip_code_update.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../basic-sdk/pkg/basicclientmodels/validation_error_entity.go) |
