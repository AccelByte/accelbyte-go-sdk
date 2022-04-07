# Social Service Index

&nbsp;

## Operations

### SlotConfig Wrapper:  [SlotConfig](../services-api/pkg/service/social/slotConfig.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/admin/namespaces/{namespace}/config` | GET | GetNamespaceSlotConfigShort | [GetNamespaceSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [GetNamespaceSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |
| `/social/admin/namespaces/{namespace}/config` | PUT | UpdateNamespaceSlotConfigShort | [UpdateNamespaceSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [UpdateNamespaceSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |
| `/social/admin/namespaces/{namespace}/config` | DELETE | DeleteNamespaceSlotConfigShort | [DeleteNamespaceSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [DeleteNamespaceSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |
| `/social/admin/namespaces/{namespace}/users/{userId}/config` | GET | GetUserSlotConfigShort | [GetUserSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [GetUserSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |
| `/social/admin/namespaces/{namespace}/users/{userId}/config` | PUT | UpdateUserSlotConfigShort | [UpdateUserSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [UpdateUserSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |
| `/social/admin/namespaces/{namespace}/users/{userId}/config` | DELETE | DeleteUserSlotConfigShort | [DeleteUserSlotConfigShort](../social-sdk/pkg/socialclient/slot_config/slot_config_client.go) | [DeleteUserSlotConfigShort](../services-api/pkg/service/social/slotConfig.go) |

### GameProfile Wrapper:  [GameProfile](../services-api/pkg/service/social/gameProfile.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/admin/namespaces/{namespace}/users/{userId}/profiles` | GET | GetUserProfilesShort | [GetUserProfilesShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [GetUserProfilesShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}` | GET | GetProfileShort | [GetProfileShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [GetProfileShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/profiles` | GET | PublicGetUserGameProfilesShort | [PublicGetUserGameProfilesShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicGetUserGameProfilesShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles` | GET | PublicGetUserProfilesShort | [PublicGetUserProfilesShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicGetUserProfilesShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles` | POST | PublicCreateProfileShort | [PublicCreateProfileShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicCreateProfileShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}` | GET | PublicGetProfileShort | [PublicGetProfileShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicGetProfileShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}` | PUT | PublicUpdateProfileShort | [PublicUpdateProfileShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicUpdateProfileShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}` | DELETE | PublicDeleteProfileShort | [PublicDeleteProfileShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicDeleteProfileShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}` | GET | PublicGetProfileAttributeShort | [PublicGetProfileAttributeShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicGetProfileAttributeShort](../services-api/pkg/service/social/gameProfile.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}` | PUT | PublicUpdateAttributeShort | [PublicUpdateAttributeShort](../social-sdk/pkg/socialclient/game_profile/game_profile_client.go) | [PublicUpdateAttributeShort](../services-api/pkg/service/social/gameProfile.go) |

### Slot Wrapper:  [Slot](../services-api/pkg/service/social/slot.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/admin/namespaces/{namespace}/users/{userId}/slots` | GET | GetUserNamespaceSlotsShort | [GetUserNamespaceSlotsShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [GetUserNamespaceSlotsShort](../services-api/pkg/service/social/slot.go) |
| `/social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}` | GET | GetSlotDataShort | [GetSlotDataShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [GetSlotDataShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots` | GET | PublicGetUserNamespaceSlotsShort | [PublicGetUserNamespaceSlotsShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicGetUserNamespaceSlotsShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots` | POST | PublicCreateUserNamespaceSlotShort | [PublicCreateUserNamespaceSlotShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicCreateUserNamespaceSlotShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}` | GET | PublicGetSlotDataShort | [PublicGetSlotDataShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicGetSlotDataShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}` | PUT | PublicUpdateUserNamespaceSlotShort | [PublicUpdateUserNamespaceSlotShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicUpdateUserNamespaceSlotShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}` | DELETE | PublicDeleteUserNamespaceSlotShort | [PublicDeleteUserNamespaceSlotShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicDeleteUserNamespaceSlotShort](../services-api/pkg/service/social/slot.go) |
| `/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata` | PUT | PublicUpdateUserNamespaceSlotMetadataShort | [PublicUpdateUserNamespaceSlotMetadataShort](../social-sdk/pkg/socialclient/slot/slot_client.go) | [PublicUpdateUserNamespaceSlotMetadataShort](../services-api/pkg/service/social/slot.go) |

### GlobalStatistic Wrapper:  [GlobalStatistic](../services-api/pkg/service/social/globalStatistic.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/v1/admin/namespaces/{namespace}/globalstatitems` | GET | GetGlobalStatItemsShort | [GetGlobalStatItemsShort](../social-sdk/pkg/socialclient/global_statistic/global_statistic_client.go) | [GetGlobalStatItemsShort](../services-api/pkg/service/social/globalStatistic.go) |

### UserStatistic Wrapper:  [UserStatistic](../services-api/pkg/service/social/userStatistic.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/v1/admin/namespaces/{namespace}/statitems/bulk` | GET | BulkFetchStatItemsShort | [BulkFetchStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkFetchStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/statitems/value/bulk` | PUT | BulkIncUserStatItemShort | [BulkIncUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkIncUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/statitems/value/bulk` | PATCH | BulkIncUserStatItemValueShort | [BulkIncUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkIncUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk` | PUT | BulkResetUserStatItemShort | [BulkResetUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkResetUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems` | GET | GetUserStatItemsShort | [GetUserStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [GetUserStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk` | POST | BulkCreateUserStatItemsShort | [BulkCreateUserStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkCreateUserStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PUT | BulkIncUserStatItem1Short | [BulkIncUserStatItem1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkIncUserStatItem1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PATCH | BulkIncUserStatItemValue1Short | [BulkIncUserStatItemValue1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkIncUserStatItemValue1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk` | PUT | BulkResetUserStatItem1Short | [BulkResetUserStatItem1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkResetUserStatItem1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems` | POST | CreateUserStatItemShort | [CreateUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [CreateUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems` | DELETE | DeleteUserStatItemsShort | [DeleteUserStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [DeleteUserStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value` | PATCH | IncUserStatItemValueShort | [IncUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [IncUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset` | PUT | ResetUserStatItemValueShort | [ResetUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [ResetUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/statitems/bulk` | GET | BulkFetchStatItems1Short | [BulkFetchStatItems1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkFetchStatItems1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/statitems/value/bulk` | PUT | PublicBulkIncUserStatItemShort | [PublicBulkIncUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicBulkIncUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/statitems/value/bulk` | PATCH | PublicBulkIncUserStatItemValueShort | [PublicBulkIncUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicBulkIncUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk` | PUT | BulkResetUserStatItem2Short | [BulkResetUserStatItem2Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkResetUserStatItem2Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/statitems` | GET | PublicQueryUserStatItemsShort | [PublicQueryUserStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicQueryUserStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk` | POST | PublicBulkCreateUserStatItemsShort | [PublicBulkCreateUserStatItemsShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicBulkCreateUserStatItemsShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PUT | PublicBulkIncUserStatItem1Short | [PublicBulkIncUserStatItem1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicBulkIncUserStatItem1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PATCH | BulkIncUserStatItemValue2Short | [BulkIncUserStatItemValue2Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkIncUserStatItemValue2Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk` | PUT | BulkResetUserStatItem3Short | [BulkResetUserStatItem3Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkResetUserStatItem3Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems` | POST | PublicCreateUserStatItemShort | [PublicCreateUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicCreateUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems` | DELETE | DeleteUserStatItems1Short | [DeleteUserStatItems1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [DeleteUserStatItems1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value` | PUT | PublicIncUserStatItemShort | [PublicIncUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicIncUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value` | PATCH | PublicIncUserStatItemValueShort | [PublicIncUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [PublicIncUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset` | PUT | ResetUserStatItemValue1Short | [ResetUserStatItemValue1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [ResetUserStatItemValue1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/admin/namespaces/{namespace}/statitems/value/bulk` | PUT | BulkUpdateUserStatItemV2Short | [BulkUpdateUserStatItemV2Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkUpdateUserStatItemV2Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PUT | BulkUpdateUserStatItemShort | [BulkUpdateUserStatItemShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkUpdateUserStatItemShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk` | PUT | BulkResetUserStatItemValuesShort | [BulkResetUserStatItemValuesShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkResetUserStatItemValuesShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems` | DELETE | DeleteUserStatItems2Short | [DeleteUserStatItems2Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [DeleteUserStatItems2Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value` | PUT | UpdateUserStatItemValueShort | [UpdateUserStatItemValueShort](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [UpdateUserStatItemValueShort](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/public/namespaces/{namespace}/statitems/value/bulk` | PUT | BulkUpdateUserStatItem1Short | [BulkUpdateUserStatItem1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkUpdateUserStatItem1Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk` | PUT | BulkUpdateUserStatItem2Short | [BulkUpdateUserStatItem2Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [BulkUpdateUserStatItem2Short](../services-api/pkg/service/social/userStatistic.go) |
| `/social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value` | PUT | UpdateUserStatItemValue1Short | [UpdateUserStatItemValue1Short](../social-sdk/pkg/socialclient/user_statistic/user_statistic_client.go) | [UpdateUserStatItemValue1Short](../services-api/pkg/service/social/userStatistic.go) |

### StatConfiguration Wrapper:  [StatConfiguration](../services-api/pkg/service/social/statConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/social/v1/admin/namespaces/{namespace}/stats` | GET | GetStatsShort | [GetStatsShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [GetStatsShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats` | POST | CreateStatShort | [CreateStatShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [CreateStatShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/export` | GET | ExportStatsShort | [ExportStatsShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [ExportStatsShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/import` | POST | ImportStatsShort | [ImportStatsShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [ImportStatsShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/search` | GET | QueryStatsShort | [QueryStatsShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [QueryStatsShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/{statCode}` | GET | GetStatShort | [GetStatShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [GetStatShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/{statCode}` | DELETE | DeleteStatShort | [DeleteStatShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [DeleteStatShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/admin/namespaces/{namespace}/stats/{statCode}` | PATCH | UpdateStatShort | [UpdateStatShort](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [UpdateStatShort](../services-api/pkg/service/social/statConfiguration.go) |
| `/social/v1/public/namespaces/{namespace}/stats` | POST | CreateStat1Short | [CreateStat1Short](../social-sdk/pkg/socialclient/stat_configuration/stat_configuration_client.go) | [CreateStat1Short](../services-api/pkg/service/social/statConfiguration.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `A DTO object for resetting user stat items` | [ADTOObjectForResettingUserStatItems ](../social-sdk/pkg/socialclientmodels/a_dto_object_for_resetting_user_stat_items.go) |
| `Attribute` | [Attribute ](../social-sdk/pkg/socialclientmodels/attribute.go) |
| `BulkStatItemCreate` | [BulkStatItemCreate ](../social-sdk/pkg/socialclientmodels/bulk_stat_item_create.go) |
| `BulkStatItemInc` | [BulkStatItemInc ](../social-sdk/pkg/socialclientmodels/bulk_stat_item_inc.go) |
| `BulkStatItemOperationResult` | [BulkStatItemOperationResult ](../social-sdk/pkg/socialclientmodels/bulk_stat_item_operation_result.go) |
| `BulkStatItemReset` | [BulkStatItemReset ](../social-sdk/pkg/socialclientmodels/bulk_stat_item_reset.go) |
| `BulkStatItemUpdate` | [BulkStatItemUpdate ](../social-sdk/pkg/socialclientmodels/bulk_stat_item_update.go) |
| `BulkUserStatItemInc` | [BulkUserStatItemInc ](../social-sdk/pkg/socialclientmodels/bulk_user_stat_item_inc.go) |
| `BulkUserStatItemReset` | [BulkUserStatItemReset ](../social-sdk/pkg/socialclientmodels/bulk_user_stat_item_reset.go) |
| `BulkUserStatItemUpdate` | [BulkUserStatItemUpdate ](../social-sdk/pkg/socialclientmodels/bulk_user_stat_item_update.go) |
| `ErrorEntity` | [ErrorEntity ](../social-sdk/pkg/socialclientmodels/error_entity.go) |
| `FieldValidationError` | [FieldValidationError ](../social-sdk/pkg/socialclientmodels/field_validation_error.go) |
| `GameProfileHeader` | [GameProfileHeader ](../social-sdk/pkg/socialclientmodels/game_profile_header.go) |
| `GameProfileInfo` | [GameProfileInfo ](../social-sdk/pkg/socialclientmodels/game_profile_info.go) |
| `GameProfilePublicInfo` | [GameProfilePublicInfo ](../social-sdk/pkg/socialclientmodels/game_profile_public_info.go) |
| `GameProfileRequest` | [GameProfileRequest ](../social-sdk/pkg/socialclientmodels/game_profile_request.go) |
| `GlobalStatItemInfo` | [GlobalStatItemInfo ](../social-sdk/pkg/socialclientmodels/global_stat_item_info.go) |
| `GlobalStatItemPagingSlicedResult` | [GlobalStatItemPagingSlicedResult ](../social-sdk/pkg/socialclientmodels/global_stat_item_paging_sliced_result.go) |
| `NamespaceSlotConfigInfo` | [NamespaceSlotConfigInfo ](../social-sdk/pkg/socialclientmodels/namespace_slot_config_info.go) |
| `Paging` | [Paging ](../social-sdk/pkg/socialclientmodels/paging.go) |
| `SlotConfigUpdate` | [SlotConfigUpdate ](../social-sdk/pkg/socialclientmodels/slot_config_update.go) |
| `SlotInfo` | [SlotInfo ](../social-sdk/pkg/socialclientmodels/slot_info.go) |
| `SlotMetadataUpdate` | [SlotMetadataUpdate ](../social-sdk/pkg/socialclientmodels/slot_metadata_update.go) |
| `StatCreate` | [StatCreate ](../social-sdk/pkg/socialclientmodels/stat_create.go) |
| `StatImportInfo` | [StatImportInfo ](../social-sdk/pkg/socialclientmodels/stat_import_info.go) |
| `StatInfo` | [StatInfo ](../social-sdk/pkg/socialclientmodels/stat_info.go) |
| `StatItemInc` | [StatItemInc ](../social-sdk/pkg/socialclientmodels/stat_item_inc.go) |
| `StatItemIncResult` | [StatItemIncResult ](../social-sdk/pkg/socialclientmodels/stat_item_inc_result.go) |
| `StatItemUpdate` | [StatItemUpdate ](../social-sdk/pkg/socialclientmodels/stat_item_update.go) |
| `StatPagingSlicedResult` | [StatPagingSlicedResult ](../social-sdk/pkg/socialclientmodels/stat_paging_sliced_result.go) |
| `StatResetInfo` | [StatResetInfo ](../social-sdk/pkg/socialclientmodels/stat_reset_info.go) |
| `StatUpdate` | [StatUpdate ](../social-sdk/pkg/socialclientmodels/stat_update.go) |
| `UserGameProfiles` | [UserGameProfiles ](../social-sdk/pkg/socialclientmodels/user_game_profiles.go) |
| `UserSlotConfigInfo` | [UserSlotConfigInfo ](../social-sdk/pkg/socialclientmodels/user_slot_config_info.go) |
| `UserStatItemInfo` | [UserStatItemInfo ](../social-sdk/pkg/socialclientmodels/user_stat_item_info.go) |
| `UserStatItemPagingSlicedResult` | [UserStatItemPagingSlicedResult ](../social-sdk/pkg/socialclientmodels/user_stat_item_paging_sliced_result.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../social-sdk/pkg/socialclientmodels/validation_error_entity.go) |
