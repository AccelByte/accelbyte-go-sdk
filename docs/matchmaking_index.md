# Matchmaking Service Index

&nbsp;

## Operations

### Operations Wrapper:  [Operations](../services-api/pkg/service/matchmaking/operations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/healthz` | GET | GetHealthcheckInfoShort | [GetHealthcheckInfoShort](../matchmaking-sdk/pkg/matchmakingclient/operations/operations_client.go) | [GetHealthcheckInfoShort](../services-api/pkg/service/matchmaking/operations.go) |
| `/matchmaking/healthz` | GET | HandlerV3HealthzShort | [HandlerV3HealthzShort](../matchmaking-sdk/pkg/matchmakingclient/operations/operations_client.go) | [HandlerV3HealthzShort](../services-api/pkg/service/matchmaking/operations.go) |
| `/matchmaking/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../matchmaking-sdk/pkg/matchmakingclient/operations/operations_client.go) | [PublicGetMessagesShort](../services-api/pkg/service/matchmaking/operations.go) |
| `/matchmaking/version` | GET | VersionCheckHandlerShort | [VersionCheckHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/operations/operations_client.go) | [VersionCheckHandlerShort](../services-api/pkg/service/matchmaking/operations.go) |

### Matchmaking Wrapper:  [Matchmaking](../services-api/pkg/service/matchmaking/matchmaking.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/matchmaking/namespaces/{namespace}/channels` | GET | GetAllChannelsHandlerShort | [GetAllChannelsHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetAllChannelsHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/channels` | POST | CreateChannelHandlerShort | [CreateChannelHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [CreateChannelHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/channels/{channel}` | DELETE | DeleteChannelHandlerShort | [DeleteChannelHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [DeleteChannelHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/matchresult` | POST | StoreMatchResultsShort | [StoreMatchResultsShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [StoreMatchResultsShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/sessions` | POST | QueueSessionHandlerShort | [QueueSessionHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [QueueSessionHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/sessions/dequeue` | POST | DequeueSessionHandlerShort | [DequeueSessionHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [DequeueSessionHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/namespaces/{namespace}/sessions/{matchID}/status` | GET | QuerySessionHandlerShort | [QuerySessionHandlerShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [QuerySessionHandlerShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties` | GET | GetAllPartyInAllChannelShort | [GetAllPartyInAllChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetAllPartyInAllChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk` | GET | BulkGetSessionsShort | [BulkGetSessionsShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [BulkGetSessionsShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/export` | GET | ExportChannelsShort | [ExportChannelsShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [ExportChannelsShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/import` | POST | ImportChannelsShort | [ImportChannelsShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [ImportChannelsShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}` | GET | GetSingleMatchmakingChannelShort | [GetSingleMatchmakingChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetSingleMatchmakingChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}` | PATCH | UpdateMatchmakingChannelShort | [UpdateMatchmakingChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [UpdateMatchmakingChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties` | GET | GetAllPartyInChannelShort | [GetAllPartyInChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetAllPartyInChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions` | GET | GetAllSessionsInChannelShort | [GetAllSessionsInChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetAllSessionsInChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}` | POST | AddUserIntoSessionInChannelShort | [AddUserIntoSessionInChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [AddUserIntoSessionInChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}` | DELETE | DeleteSessionInChannelShort | [DeleteSessionInChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [DeleteSessionInChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}` | DELETE | DeleteUserFromSessionInChannelShort | [DeleteUserFromSessionInChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [DeleteUserFromSessionInChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search` | GET | SearchSessionsShort | [SearchSessionsShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [SearchSessionsShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed` | GET | GetSessionHistoryDetailedShort | [GetSessionHistoryDetailedShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [GetSessionHistoryDetailedShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/public/namespaces/{namespace}/channels` | GET | PublicGetAllMatchmakingChannelShort | [PublicGetAllMatchmakingChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [PublicGetAllMatchmakingChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}` | GET | PublicGetSingleMatchmakingChannelShort | [PublicGetSingleMatchmakingChannelShort](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [PublicGetSingleMatchmakingChannelShort](../services-api/pkg/service/matchmaking/matchmaking.go) |
| `/matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search` | GET | SearchSessionsV2Short | [SearchSessionsV2Short](../matchmaking-sdk/pkg/matchmakingclient/matchmaking/matchmaking_client.go) | [SearchSessionsV2Short](../services-api/pkg/service/matchmaking/matchmaking.go) |

### Social Matchmaking Wrapper:  [SocialMatchmaking](../services-api/pkg/service/matchmaking/socialMatchmaking.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/matchmaking/social/playtime/namespaces/{namespace}/weight` | PATCH | UpdatePlayTimeWeightShort | [UpdatePlayTimeWeightShort](../matchmaking-sdk/pkg/matchmakingclient/social_matchmaking/social_matchmaking_client.go) | [UpdatePlayTimeWeightShort](../services-api/pkg/service/matchmaking/socialMatchmaking.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../matchmaking-sdk/pkg/matchmakingclientmodels/log_app_message_declaration.go) |
| `models.AllianceFlexingRule` | [ModelsAllianceFlexingRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_alliance_flexing_rule.go) |
| `models.AllianceRule` | [ModelsAllianceRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_alliance_rule.go) |
| `models.AllianceRuleV1` | [ModelsAllianceRuleV1 ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_alliance_rule_v1.go) |
| `models.Channel` | [ModelsChannel ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_channel.go) |
| `models.ChannelRequest` | [ModelsChannelRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_channel_request.go) |
| `models.ChannelV1` | [ModelsChannelV1 ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_channel_v1.go) |
| `models.CreateChannelResponse` | [ModelsCreateChannelResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_create_channel_response.go) |
| `models.DequeueRequest` | [ModelsDequeueRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_dequeue_request.go) |
| `models.FlexingRule` | [ModelsFlexingRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_flexing_rule.go) |
| `models.GetChannelsResponse` | [ModelsGetChannelsResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_get_channels_response.go) |
| `models.ImportConfigResponse` | [ModelsImportConfigResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_import_config_response.go) |
| `models.MatchAddUserIntoSessionRequest` | [ModelsMatchAddUserIntoSessionRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_match_add_user_into_session_request.go) |
| `models.MatchOption` | [ModelsMatchOption ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_match_option.go) |
| `models.MatchOptionRule` | [ModelsMatchOptionRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_match_option_rule.go) |
| `models.MatchResultRequest` | [ModelsMatchResultRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_match_result_request.go) |
| `models.MatchResultResponse` | [ModelsMatchResultResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_match_result_response.go) |
| `models.MatchingAlly` | [ModelsMatchingAlly ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_matching_ally.go) |
| `models.MatchingParty` | [ModelsMatchingParty ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_matching_party.go) |
| `models.MatchingRule` | [ModelsMatchingRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_matching_rule.go) |
| `models.MatchmakingResult` | [ModelsMatchmakingResult ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_matchmaking_result.go) |
| `models.Pagination` | [ModelsPagination ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_pagination.go) |
| `models.PartyMember` | [ModelsPartyMember ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_party_member.go) |
| `models.PlayerResultRequest` | [ModelsPlayerResultRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_player_result_request.go) |
| `models.PlayerResultResponse` | [ModelsPlayerResultResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_player_result_response.go) |
| `models.ResultAttributeRequest` | [ModelsResultAttributeRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_result_attribute_request.go) |
| `models.ResultAttributeResponse` | [ModelsResultAttributeResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_result_attribute_response.go) |
| `models.RuleSet` | [ModelsRuleSet ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_rule_set.go) |
| `models.RuleSetV1` | [ModelsRuleSetV1 ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_rule_set_v1.go) |
| `models.SubGameMode` | [ModelsSubGameMode ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_sub_game_mode.go) |
| `models.UpdateAllianceRule` | [ModelsUpdateAllianceRule ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_alliance_rule.go) |
| `models.UpdateChannelRequest` | [ModelsUpdateChannelRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_channel_request.go) |
| `models.UpdatePlayTimeWeightRequest` | [ModelsUpdatePlayTimeWeightRequest ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_play_time_weight_request.go) |
| `models.UpdatePlayerPlaytimeWeightResponse` | [ModelsUpdatePlayerPlaytimeWeightResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_player_playtime_weight_response.go) |
| `models.UpdateRuleset` | [ModelsUpdateRuleset ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_ruleset.go) |
| `models.UpdateRuleset.sub_game_modes` | [ModelsUpdateRulesetSubGameModes ](../matchmaking-sdk/pkg/matchmakingclientmodels/models_update_ruleset_sub_game_modes.go) |
| `response.Error` | [ResponseError ](../matchmaking-sdk/pkg/matchmakingclientmodels/response_error.go) |
| `response.ErrorV1` | [ResponseErrorV1 ](../matchmaking-sdk/pkg/matchmakingclientmodels/response_error_v1.go) |
| `service.GetSessionHistoryDetailedResponseItem` | [ServiceGetSessionHistoryDetailedResponseItem ](../matchmaking-sdk/pkg/matchmakingclientmodels/service_get_session_history_detailed_response_item.go) |
| `service.GetSessionHistorySearchResponse` | [ServiceGetSessionHistorySearchResponse ](../matchmaking-sdk/pkg/matchmakingclientmodels/service_get_session_history_search_response.go) |
| `service.GetSessionHistorySearchResponseItem` | [ServiceGetSessionHistorySearchResponseItem ](../matchmaking-sdk/pkg/matchmakingclientmodels/service_get_session_history_search_response_item.go) |
| `service.GetSessionHistorySearchResponseItemV2` | [ServiceGetSessionHistorySearchResponseItemV2 ](../matchmaking-sdk/pkg/matchmakingclientmodels/service_get_session_history_search_response_item_v2.go) |
| `service.GetSessionHistorySearchResponseV2` | [ServiceGetSessionHistorySearchResponseV2 ](../matchmaking-sdk/pkg/matchmakingclientmodels/service_get_session_history_search_response_v2.go) |
