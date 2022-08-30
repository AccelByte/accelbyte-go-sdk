# Achievement Service Index

&nbsp;

## Operations

### achievements Wrapper:  [Achievements](../services-api/pkg/service/achievement/achievements.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | GET | AdminListAchievementsShort | [AdminListAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminListAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [AdminListAchievementsShort](../samples/cli/cmd/achievement/achievements/adminListAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements` | POST | AdminCreateNewAchievementShort | [AdminCreateNewAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminCreateNewAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminCreateNewAchievementShort](../samples/cli/cmd/achievement/achievements/adminCreateNewAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/export` | GET | ExportAchievementsShort | [ExportAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ExportAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [ExportAchievementsShort](../samples/cli/cmd/achievement/achievements/exportAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/import` | POST | ImportAchievementsShort | [ImportAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [ImportAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [ImportAchievementsShort](../samples/cli/cmd/achievement/achievements/importAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | GET | AdminGetAchievementShort | [AdminGetAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminGetAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminGetAchievementShort](../samples/cli/cmd/achievement/achievements/adminGetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PUT | AdminUpdateAchievementShort | [AdminUpdateAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminUpdateAchievementShort](../samples/cli/cmd/achievement/achievements/adminUpdateAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | DELETE | AdminDeleteAchievementShort | [AdminDeleteAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminDeleteAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminDeleteAchievementShort](../samples/cli/cmd/achievement/achievements/adminDeleteAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}` | PATCH | AdminUpdateAchievementListOrderShort | [AdminUpdateAchievementListOrderShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUpdateAchievementListOrderShort](../services-api/pkg/service/achievement/achievements.go) | [AdminUpdateAchievementListOrderShort](../samples/cli/cmd/achievement/achievements/adminUpdateAchievementListOrder.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements` | GET | AdminListUserAchievementsShort | [AdminListUserAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminListUserAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [AdminListUserAchievementsShort](../samples/cli/cmd/achievement/achievements/adminListUserAchievements.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset` | DELETE | AdminResetAchievementShort | [AdminResetAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminResetAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminResetAchievementShort](../samples/cli/cmd/achievement/achievements/adminResetAchievement.go) |
| `/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | AdminUnlockAchievementShort | [AdminUnlockAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [AdminUnlockAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [AdminUnlockAchievementShort](../samples/cli/cmd/achievement/achievements/adminUnlockAchievement.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements` | GET | PublicListAchievementsShort | [PublicListAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicListAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [PublicListAchievementsShort](../samples/cli/cmd/achievement/achievements/publicListAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}` | GET | PublicGetAchievementShort | [PublicGetAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicGetAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [PublicGetAchievementShort](../samples/cli/cmd/achievement/achievements/publicGetAchievement.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements` | GET | PublicListUserAchievementsShort | [PublicListUserAchievementsShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicListUserAchievementsShort](../services-api/pkg/service/achievement/achievements.go) | [PublicListUserAchievementsShort](../samples/cli/cmd/achievement/achievements/publicListUserAchievements.go) |
| `/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock` | PUT | PublicUnlockAchievementShort | [PublicUnlockAchievementShort](../achievement-sdk/pkg/achievementclient/achievements/achievements_client.go) | [PublicUnlockAchievementShort](../services-api/pkg/service/achievement/achievements.go) | [PublicUnlockAchievementShort](../samples/cli/cmd/achievement/achievements/publicUnlockAchievement.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.Achievement` | [ModelsAchievement ](../achievement-sdk/pkg/achievementclientmodels/models_achievement.go) |
| `models.AchievementOrderUpdateRequest` | [ModelsAchievementOrderUpdateRequest ](../achievement-sdk/pkg/achievementclientmodels/models_achievement_order_update_request.go) |
| `models.AchievementRequest` | [ModelsAchievementRequest ](../achievement-sdk/pkg/achievementclientmodels/models_achievement_request.go) |
| `models.AchievementResponse` | [ModelsAchievementResponse ](../achievement-sdk/pkg/achievementclientmodels/models_achievement_response.go) |
| `models.AchievementUpdateRequest` | [ModelsAchievementUpdateRequest ](../achievement-sdk/pkg/achievementclientmodels/models_achievement_update_request.go) |
| `models.AdditionalInfo` | [ModelsAdditionalInfo ](../achievement-sdk/pkg/achievementclientmodels/models_additional_info.go) |
| `models.Icon` | [ModelsIcon ](../achievement-sdk/pkg/achievementclientmodels/models_icon.go) |
| `models.PaginatedAchievementResponse` | [ModelsPaginatedAchievementResponse ](../achievement-sdk/pkg/achievementclientmodels/models_paginated_achievement_response.go) |
| `models.PaginatedUserAchievementResponse` | [ModelsPaginatedUserAchievementResponse ](../achievement-sdk/pkg/achievementclientmodels/models_paginated_user_achievement_response.go) |
| `models.Pagination` | [ModelsPagination ](../achievement-sdk/pkg/achievementclientmodels/models_pagination.go) |
| `models.PublicAchievementResponse` | [ModelsPublicAchievementResponse ](../achievement-sdk/pkg/achievementclientmodels/models_public_achievement_response.go) |
| `models.PublicAchievementsResponse` | [ModelsPublicAchievementsResponse ](../achievement-sdk/pkg/achievementclientmodels/models_public_achievements_response.go) |
| `models.UserAchievementResponse` | [ModelsUserAchievementResponse ](../achievement-sdk/pkg/achievementclientmodels/models_user_achievement_response.go) |
| `response.Error` | [ResponseError ](../achievement-sdk/pkg/achievementclientmodels/response_error.go) |
| `service.ImportConfigResponse` | [ServiceImportConfigResponse ](../achievement-sdk/pkg/achievementclientmodels/service_import_config_response.go) |
