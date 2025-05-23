# Achievement Service Index

&nbsp;

## Operations

### Achievements Wrapper:  [Achievements](../../services-api/pkg/service/achievement/achievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | GET | AdminListAchievementsShort | [AdminListAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminListAchievementsShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminListAchievementsShort](../../samples/cli/cmd/achievement/achievements/adminListAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | POST | AdminCreateNewAchievementShort | [AdminCreateNewAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminCreateNewAchievementShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminCreateNewAchievementShort](../../samples/cli/cmd/achievement/achievements/adminCreateNewAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/export` | GET | ExportAchievementsShort | [ExportAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ExportAchievementsShort](../../services-api/pkg/service/achievement/achievements.go) | [ExportAchievementsShort](../../samples/cli/cmd/achievement/achievements/exportAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/import` | POST | ImportAchievementsShort | [ImportAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ImportAchievementsShort](../../services-api/pkg/service/achievement/achievements.go) | [ImportAchievementsShort](../../samples/cli/cmd/achievement/achievements/importAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | GET | AdminGetAchievementShort | [AdminGetAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminGetAchievementShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminGetAchievementShort](../../samples/cli/cmd/achievement/achievements/adminGetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PUT | AdminUpdateAchievementShort | [AdminUpdateAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminUpdateAchievementShort](../../samples/cli/cmd/achievement/achievements/adminUpdateAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | DELETE | AdminDeleteAchievementShort | [AdminDeleteAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminDeleteAchievementShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminDeleteAchievementShort](../../samples/cli/cmd/achievement/achievements/adminDeleteAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PATCH | AdminUpdateAchievementListOrderShort | [AdminUpdateAchievementListOrderShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementListOrderShort](../../services-api/pkg/service/achievement/achievements.go) | [AdminUpdateAchievementListOrderShort](../../samples/cli/cmd/achievement/achievements/adminUpdateAchievementListOrder.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements` | GET | PublicListAchievementsShort | [PublicListAchievementsShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicListAchievementsShort](../../services-api/pkg/service/achievement/achievements.go) | [PublicListAchievementsShort](../../samples/cli/cmd/achievement/achievements/publicListAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}` | GET | PublicGetAchievementShort | [PublicGetAchievementShort](../../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicGetAchievementShort](../../services-api/pkg/service/achievement/achievements.go) | [PublicGetAchievementShort](../../samples/cli/cmd/achievement/achievements/publicGetAchievement.go) |

### Global Achievements Wrapper:  [GlobalAchievements](../../services-api/pkg/service/achievement/globalAchievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements` | GET | AdminListGlobalAchievementsShort | [AdminListGlobalAchievementsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListGlobalAchievementsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [AdminListGlobalAchievementsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListGlobalAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors` | GET | AdminListGlobalAchievementContributorsShort | [AdminListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListGlobalAchievementContributorsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [AdminListGlobalAchievementContributorsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListGlobalAchievementContributors.go) |
| `/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset` | DELETE | ResetGlobalAchievementShort | [ResetGlobalAchievementShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ResetGlobalAchievementShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [ResetGlobalAchievementShort](../../samples/cli/cmd/achievement/globalAchievements/resetGlobalAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements` | GET | AdminListUserContributionsShort | [AdminListUserContributionsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [AdminListUserContributionsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [AdminListUserContributionsShort](../../samples/cli/cmd/achievement/globalAchievements/adminListUserContributions.go) |
| `/achievement/v1/public/namespaces/{namespace}/global/achievements` | GET | PublicListGlobalAchievementsShort | [PublicListGlobalAchievementsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [PublicListGlobalAchievementsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [PublicListGlobalAchievementsShort](../../samples/cli/cmd/achievement/globalAchievements/publicListGlobalAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors` | GET | ListGlobalAchievementContributorsShort | [ListGlobalAchievementContributorsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ListGlobalAchievementContributorsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [ListGlobalAchievementContributorsShort](../../samples/cli/cmd/achievement/globalAchievements/listGlobalAchievementContributors.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements` | GET | ListUserContributionsShort | [ListUserContributionsShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ListUserContributionsShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [ListUserContributionsShort](../../samples/cli/cmd/achievement/globalAchievements/listUserContributions.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim` | POST | ClaimGlobalAchievementRewardShort | [ClaimGlobalAchievementRewardShort](../../achievement-sdk/pkg/achievementclient/global_achievements/global_achievements_client.go) | [ClaimGlobalAchievementRewardShort](../../services-api/pkg/service/achievement/globalAchievements.go) | [ClaimGlobalAchievementRewardShort](../../samples/cli/cmd/achievement/globalAchievements/claimGlobalAchievementReward.go) |

### Platform Achievement Wrapper:  [PlatformAchievement](../../services-api/pkg/service/achievement/platformAchievement.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk` | POST | BulkCreatePSNEventShort | [BulkCreatePSNEventShort](../../achievement-sdk/pkg/achievementclient/platform_achievement/platform_achievement_client.go) | [BulkCreatePSNEventShort](../../services-api/pkg/service/achievement/platformAchievement.go) | [BulkCreatePSNEventShort](../../samples/cli/cmd/achievement/platformAchievement/bulkCreatePSNEvent.go) |

### Tags Wrapper:  [Tags](../../services-api/pkg/service/achievement/tags.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/tags` | GET | AdminListTagsShort | [AdminListTagsShort](../../achievement-sdk/pkg/achievementclient/tags/tags_client.go) | [AdminListTagsShort](../../services-api/pkg/service/achievement/tags.go) | [AdminListTagsShort](../../samples/cli/cmd/achievement/tags/adminListTags.go) |
| `/achievement/v1/public/namespaces/{namespace}/tags` | GET | PublicListTagsShort | [PublicListTagsShort](../../achievement-sdk/pkg/achievementclient/tags/tags_client.go) | [PublicListTagsShort](../../services-api/pkg/service/achievement/tags.go) | [PublicListTagsShort](../../samples/cli/cmd/achievement/tags/publicListTags.go) |

### User Achievements Wrapper:  [UserAchievements](../../services-api/pkg/service/achievement/userAchievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements` | GET | AdminListUserAchievementsShort | [AdminListUserAchievementsShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminListUserAchievementsShort](../../services-api/pkg/service/achievement/userAchievements.go) | [AdminListUserAchievementsShort](../../samples/cli/cmd/achievement/userAchievements/adminListUserAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock` | PUT | AdminBulkUnlockAchievementShort | [AdminBulkUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminBulkUnlockAchievementShort](../../services-api/pkg/service/achievement/userAchievements.go) | [AdminBulkUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/adminBulkUnlockAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset` | DELETE | AdminResetAchievementShort | [AdminResetAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminResetAchievementShort](../../services-api/pkg/service/achievement/userAchievements.go) | [AdminResetAchievementShort](../../samples/cli/cmd/achievement/userAchievements/adminResetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | AdminUnlockAchievementShort | [AdminUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [AdminUnlockAchievementShort](../../services-api/pkg/service/achievement/userAchievements.go) | [AdminUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/adminUnlockAchievement.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements` | GET | PublicListUserAchievementsShort | [PublicListUserAchievementsShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [PublicListUserAchievementsShort](../../services-api/pkg/service/achievement/userAchievements.go) | [PublicListUserAchievementsShort](../../samples/cli/cmd/achievement/userAchievements/publicListUserAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock` | PUT | PublicBulkUnlockAchievementShort | [PublicBulkUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [PublicBulkUnlockAchievementShort](../../services-api/pkg/service/achievement/userAchievements.go) | [PublicBulkUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/publicBulkUnlockAchievement.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | PublicUnlockAchievementShort | [PublicUnlockAchievementShort](../../achievement-sdk/pkg/achievementclient/user_achievements/user_achievements_client.go) | [PublicUnlockAchievementShort](../../services-api/pkg/service/achievement/userAchievements.go) | [PublicUnlockAchievementShort](../../samples/cli/cmd/achievement/userAchievements/publicUnlockAchievement.go) |

### Anonymization Wrapper:  [Anonymization](../../services-api/pkg/service/achievement/anonymization.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements` | DELETE | AdminAnonymizeUserAchievementShort | [AdminAnonymizeUserAchievementShort](../../achievement-sdk/pkg/achievementclient/anonymization/anonymization_client.go) | [AdminAnonymizeUserAchievementShort](../../services-api/pkg/service/achievement/anonymization.go) | [AdminAnonymizeUserAchievementShort](../../samples/cli/cmd/achievement/anonymization/adminAnonymizeUserAchievement.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AchievementOrderUpdateRequest` | [ModelsAchievementOrderUpdateRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_order_update_request.go) |
| `models.AchievementRequest` | [ModelsAchievementRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_request.go) |
| `models.AchievementResponse` | [ModelsAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_response.go) |
| `models.AchievementUpdateRequest` | [ModelsAchievementUpdateRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_achievement_update_request.go) |
| `models.AdditionalInfo` | [ModelsAdditionalInfo ](../../achievement-sdk/pkg/achievementclientmodels/models_additional_info.go) |
| `models.BulkCreatePSNEventResponse` | [ModelsBulkCreatePSNEventResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_bulk_create_p_s_n_event_response.go) |
| `models.BulkCreatePSNEvents` | [ModelsBulkCreatePSNEvents ](../../achievement-sdk/pkg/achievementclientmodels/models_bulk_create_p_s_n_events.go) |
| `models.BulkUnlockAchievementRequest` | [ModelsBulkUnlockAchievementRequest ](../../achievement-sdk/pkg/achievementclientmodels/models_bulk_unlock_achievement_request.go) |
| `models.BulkUnlockAchievementResponse` | [ModelsBulkUnlockAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_bulk_unlock_achievement_response.go) |
| `models.ContributorResponse` | [ModelsContributorResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_contributor_response.go) |
| `models.CreatePSNEvent` | [ModelsCreatePSNEvent ](../../achievement-sdk/pkg/achievementclientmodels/models_create_p_s_n_event.go) |
| `models.ErrorDetails` | [ModelsErrorDetails ](../../achievement-sdk/pkg/achievementclientmodels/models_error_details.go) |
| `models.GlobalAchievementResponse` | [ModelsGlobalAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_global_achievement_response.go) |
| `models.Icon` | [ModelsIcon ](../../achievement-sdk/pkg/achievementclientmodels/models_icon.go) |
| `models.PSNEvent` | [ModelsPSNEvent ](../../achievement-sdk/pkg/achievementclientmodels/models_p_s_n_event.go) |
| `models.PSNEventData` | [ModelsPSNEventData ](../../achievement-sdk/pkg/achievementclientmodels/models_p_s_n_event_data.go) |
| `models.PSNEventResult` | [ModelsPSNEventResult ](../../achievement-sdk/pkg/achievementclientmodels/models_p_s_n_event_result.go) |
| `models.PaginatedAchievementResponse` | [ModelsPaginatedAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_achievement_response.go) |
| `models.PaginatedContributorResponse` | [ModelsPaginatedContributorResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_contributor_response.go) |
| `models.PaginatedGlobalAchievementResponse` | [ModelsPaginatedGlobalAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_global_achievement_response.go) |
| `models.PaginatedTagResponse` | [ModelsPaginatedTagResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_tag_response.go) |
| `models.PaginatedUserAchievementResponse` | [ModelsPaginatedUserAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_user_achievement_response.go) |
| `models.PaginatedUserContributionResponse` | [ModelsPaginatedUserContributionResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_paginated_user_contribution_response.go) |
| `models.Pagination` | [ModelsPagination ](../../achievement-sdk/pkg/achievementclientmodels/models_pagination.go) |
| `models.PublicAchievementResponse` | [ModelsPublicAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_public_achievement_response.go) |
| `models.PublicAchievementsResponse` | [ModelsPublicAchievementsResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_public_achievements_response.go) |
| `models.TagResponse` | [ModelsTagResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_tag_response.go) |
| `models.UserAchievementResponse` | [ModelsUserAchievementResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_user_achievement_response.go) |
| `models.UserContributionResponse` | [ModelsUserContributionResponse ](../../achievement-sdk/pkg/achievementclientmodels/models_user_contribution_response.go) |
| `response.Error` | [ResponseError ](../../achievement-sdk/pkg/achievementclientmodels/response_error.go) |
| `service.ImportConfigResponse` | [ServiceImportConfigResponse ](../../achievement-sdk/pkg/achievementclientmodels/service_import_config_response.go) |
