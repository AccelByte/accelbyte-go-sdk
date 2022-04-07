# Leaderboard Service Index

&nbsp;

## Operations

### LeaderboardConfiguration Wrapper:  [LeaderboardConfiguration](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards` | GET | GetLeaderboardConfigurationsAdminV1Short | [GetLeaderboardConfigurationsAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [GetLeaderboardConfigurationsAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards` | POST | CreateLeaderboardConfigurationAdminV1Short | [CreateLeaderboardConfigurationAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [CreateLeaderboardConfigurationAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete` | POST | DeleteBulkLeaderboardConfigurationAdminV1Short | [DeleteBulkLeaderboardConfigurationAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [DeleteBulkLeaderboardConfigurationAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}` | GET | GetLeaderboardConfigurationAdminV1Short | [GetLeaderboardConfigurationAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [GetLeaderboardConfigurationAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}` | PUT | UpdateLeaderboardConfigurationAdminV1Short | [UpdateLeaderboardConfigurationAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [UpdateLeaderboardConfigurationAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}` | DELETE | DeleteLeaderboardConfigurationAdminV1Short | [DeleteLeaderboardConfigurationAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [DeleteLeaderboardConfigurationAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards` | GET | GetLeaderboardConfigurationsPublicV1Short | [GetLeaderboardConfigurationsPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [GetLeaderboardConfigurationsPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards` | POST | CreateLeaderboardConfigurationPublicV1Short | [CreateLeaderboardConfigurationPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [CreateLeaderboardConfigurationPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |
| `/leaderboard/v2/public/namespaces/{namespace}/leaderboards` | GET | GetLeaderboardConfigurationsPublicV2Short | [GetLeaderboardConfigurationsPublicV2Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration/leaderboard_configuration_client.go) | [GetLeaderboardConfigurationsPublicV2Short](../services-api/pkg/service/leaderboard/leaderboardConfiguration.go) |

### LeaderboardData Wrapper:  [LeaderboardData](../services-api/pkg/service/leaderboard/leaderboardData.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived` | GET | AdminGetArchivedLeaderboardRankingDataV1HandlerShort | [AdminGetArchivedLeaderboardRankingDataV1HandlerShort](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [AdminGetArchivedLeaderboardRankingDataV1HandlerShort](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived` | POST | CreateArchivedLeaderboardRankingDataV1HandlerShort | [CreateArchivedLeaderboardRankingDataV1HandlerShort](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [CreateArchivedLeaderboardRankingDataV1HandlerShort](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime` | GET | GetAllTimeLeaderboardRankingAdminV1Short | [GetAllTimeLeaderboardRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetAllTimeLeaderboardRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month` | GET | GetCurrentMonthLeaderboardRankingAdminV1Short | [GetCurrentMonthLeaderboardRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentMonthLeaderboardRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season` | GET | GetCurrentSeasonLeaderboardRankingAdminV1Short | [GetCurrentSeasonLeaderboardRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentSeasonLeaderboardRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today` | GET | GetTodayLeaderboardRankingAdminV1Short | [GetTodayLeaderboardRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetTodayLeaderboardRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}` | GET | GetUserRankingAdminV1Short | [GetUserRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetUserRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}` | PUT | UpdateUserPointAdminV1Short | [UpdateUserPointAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [UpdateUserPointAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}` | DELETE | DeleteUserRankingAdminV1Short | [DeleteUserRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [DeleteUserRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week` | GET | GetCurrentWeekLeaderboardRankingAdminV1Short | [GetCurrentWeekLeaderboardRankingAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentWeekLeaderboardRankingAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}` | DELETE | DeleteUserRankingsAdminV1Short | [DeleteUserRankingsAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [DeleteUserRankingsAdminV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime` | GET | GetAllTimeLeaderboardRankingPublicV1Short | [GetAllTimeLeaderboardRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetAllTimeLeaderboardRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived` | GET | GetArchivedLeaderboardRankingDataV1HandlerShort | [GetArchivedLeaderboardRankingDataV1HandlerShort](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetArchivedLeaderboardRankingDataV1HandlerShort](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month` | GET | GetCurrentMonthLeaderboardRankingPublicV1Short | [GetCurrentMonthLeaderboardRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentMonthLeaderboardRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season` | GET | GetCurrentSeasonLeaderboardRankingPublicV1Short | [GetCurrentSeasonLeaderboardRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentSeasonLeaderboardRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today` | GET | GetTodayLeaderboardRankingPublicV1Short | [GetTodayLeaderboardRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetTodayLeaderboardRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}` | GET | GetUserRankingPublicV1Short | [GetUserRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetUserRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}` | DELETE | DeleteUserRankingPublicV1Short | [DeleteUserRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [DeleteUserRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week` | GET | GetCurrentWeekLeaderboardRankingPublicV1Short | [GetCurrentWeekLeaderboardRankingPublicV1Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetCurrentWeekLeaderboardRankingPublicV1Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |
| `/leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime` | GET | GetAllTimeLeaderboardRankingPublicV2Short | [GetAllTimeLeaderboardRankingPublicV2Short](../leaderboard-sdk/pkg/leaderboardclient/leaderboard_data/leaderboard_data_client.go) | [GetAllTimeLeaderboardRankingPublicV2Short](../services-api/pkg/service/leaderboard/leaderboardData.go) |

### UserData Wrapper:  [UserData](../services-api/pkg/service/leaderboard/userData.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards` | GET | GetUserLeaderboardRankingsAdminV1Short | [GetUserLeaderboardRankingsAdminV1Short](../leaderboard-sdk/pkg/leaderboardclient/user_data/user_data_client.go) | [GetUserLeaderboardRankingsAdminV1Short](../services-api/pkg/service/leaderboard/userData.go) |

### UserVisibility Wrapper:  [UserVisibility](../services-api/pkg/service/leaderboard/userVisibility.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden` | GET | GetHiddenUsersV2Short | [GetHiddenUsersV2Short](../leaderboard-sdk/pkg/leaderboardclient/user_visibility/user_visibility_client.go) | [GetHiddenUsersV2Short](../services-api/pkg/service/leaderboard/userVisibility.go) |
| `/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility` | GET | GetUserVisibilityStatusV2Short | [GetUserVisibilityStatusV2Short](../leaderboard-sdk/pkg/leaderboardclient/user_visibility/user_visibility_client.go) | [GetUserVisibilityStatusV2Short](../services-api/pkg/service/leaderboard/userVisibility.go) |
| `/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility` | PUT | SetUserLeaderboardVisibilityStatusV2Short | [SetUserLeaderboardVisibilityStatusV2Short](../leaderboard-sdk/pkg/leaderboardclient/user_visibility/user_visibility_client.go) | [SetUserLeaderboardVisibilityStatusV2Short](../services-api/pkg/service/leaderboard/userVisibility.go) |
| `/leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility` | PUT | SetUserVisibilityStatusV2Short | [SetUserVisibilityStatusV2Short](../leaderboard-sdk/pkg/leaderboardclient/user_visibility/user_visibility_client.go) | [SetUserVisibilityStatusV2Short](../services-api/pkg/service/leaderboard/userVisibility.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.ArchiveLeaderboardReq` | [ModelsArchiveLeaderboardReq ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_archive_leaderboard_req.go) |
| `models.ArchiveLeaderboardSignedURLResponse` | [ModelsArchiveLeaderboardSignedURLResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_archive_leaderboard_signed_url_response.go) |
| `models.DailyConfig` | [ModelsDailyConfig ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_daily_config.go) |
| `models.DeleteBulkLeaderboardFailedResp` | [ModelsDeleteBulkLeaderboardFailedResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_delete_bulk_leaderboard_failed_resp.go) |
| `models.DeleteBulkLeaderboardsReq` | [ModelsDeleteBulkLeaderboardsReq ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_delete_bulk_leaderboards_req.go) |
| `models.DeleteBulkLeaderboardsResp` | [ModelsDeleteBulkLeaderboardsResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_delete_bulk_leaderboards_resp.go) |
| `models.GetAllLeaderboardConfigsPublicResp` | [ModelsGetAllLeaderboardConfigsPublicResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_all_leaderboard_configs_public_resp.go) |
| `models.GetAllLeaderboardConfigsResp` | [ModelsGetAllLeaderboardConfigsResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_all_leaderboard_configs_resp.go) |
| `models.GetAllUserLeaderboardsResp` | [ModelsGetAllUserLeaderboardsResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_all_user_leaderboards_resp.go) |
| `models.GetHiddenUserResponse` | [ModelsGetHiddenUserResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_hidden_user_response.go) |
| `models.GetLeaderboardConfigPublicResp` | [ModelsGetLeaderboardConfigPublicResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_leaderboard_config_public_resp.go) |
| `models.GetLeaderboardConfigResp` | [ModelsGetLeaderboardConfigResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_leaderboard_config_resp.go) |
| `models.GetLeaderboardRankingResp` | [ModelsGetLeaderboardRankingResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_leaderboard_ranking_resp.go) |
| `models.GetUserVisibilityResponse` | [ModelsGetUserVisibilityResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_get_user_visibility_response.go) |
| `models.LeaderboardConfigReq` | [ModelsLeaderboardConfigReq ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_leaderboard_config_req.go) |
| `models.MonthlyConfig` | [ModelsMonthlyConfig ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_monthly_config.go) |
| `models.Pagination` | [ModelsPagination ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_pagination.go) |
| `models.SetUserVisibilityRequest` | [ModelsSetUserVisibilityRequest ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_set_user_visibility_request.go) |
| `models.UpdateLeaderboardConfigReq` | [ModelsUpdateLeaderboardConfigReq ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_update_leaderboard_config_req.go) |
| `models.UpdateUserPointAdminV1Request` | [ModelsUpdateUserPointAdminV1Request ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_update_user_point_admin_v1_request.go) |
| `models.UpdateUserPointAdminV1Response` | [ModelsUpdateUserPointAdminV1Response ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_update_user_point_admin_v1_response.go) |
| `models.UserLeaderboardRanking` | [ModelsUserLeaderboardRanking ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_user_leaderboard_ranking.go) |
| `models.UserPoint` | [ModelsUserPoint ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_user_point.go) |
| `models.UserRankingResponse` | [ModelsUserRankingResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_user_ranking_response.go) |
| `models.UserRankingResponseDetail` | [ModelsUserRankingResponseDetail ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_user_ranking_response_detail.go) |
| `models.WeeklyConfig` | [ModelsWeeklyConfig ](../leaderboard-sdk/pkg/leaderboardclientmodels/models_weekly_config.go) |
| `response.ErrorResponse` | [ResponseErrorResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/response_error_response.go) |
| `v2.Entry` | [V2Entry ](../leaderboard-sdk/pkg/leaderboardclientmodels/v2_entry.go) |
| `v2.GetAllLeaderboardConfigsPublicResp` | [V2GetAllLeaderboardConfigsPublicResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/v2_get_all_leaderboard_configs_public_resp.go) |
| `v2.GetLeaderboardConfigPublicResp` | [V2GetLeaderboardConfigPublicResp ](../leaderboard-sdk/pkg/leaderboardclientmodels/v2_get_leaderboard_config_public_resp.go) |
| `v2.GetPublicLeaderboardRankingResponse` | [V2GetPublicLeaderboardRankingResponse ](../leaderboard-sdk/pkg/leaderboardclientmodels/v2_get_public_leaderboard_ranking_response.go) |
| `v2.Pagination` | [V2Pagination ](../leaderboard-sdk/pkg/leaderboardclientmodels/v2_pagination.go) |
