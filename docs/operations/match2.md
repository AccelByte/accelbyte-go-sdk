# Match2 Service Index

&nbsp;

## Operations

### Operations Wrapper:  [Operations](../../services-api/pkg/service/match2/operations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/healthz` | GET | GetHealthcheckInfoShort | [GetHealthcheckInfoShort](../../match2-sdk/pkg/match2client/operations/operations_client.go) | [GetHealthcheckInfoShort](../../services-api/pkg/service/match2/operations.go) | [GetHealthcheckInfoShort](../../samples/cli/cmd/match2/operations/getHealthcheckInfo.go) |
| `/match2/healthz` | GET | GetHealthcheckInfoV1Short | [GetHealthcheckInfoV1Short](../../match2-sdk/pkg/match2client/operations/operations_client.go) | [GetHealthcheckInfoV1Short](../../services-api/pkg/service/match2/operations.go) | [GetHealthcheckInfoV1Short](../../samples/cli/cmd/match2/operations/getHealthcheckInfoV1.go) |
| `/match2/version` | GET | VersionCheckHandlerShort | [VersionCheckHandlerShort](../../match2-sdk/pkg/match2client/operations/operations_client.go) | [VersionCheckHandlerShort](../../services-api/pkg/service/match2/operations.go) | [VersionCheckHandlerShort](../../samples/cli/cmd/match2/operations/versionCheckHandler.go) |

### Environment-Variables Wrapper:  [EnvironmentVariables](../../services-api/pkg/service/match2/environmentVariables.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/environment-variables` | GET | EnvironmentVariableListShort | [EnvironmentVariableListShort](../../match2-sdk/pkg/match2client/environment_variables/environment_variables_client.go) | [EnvironmentVariableListShort](../../services-api/pkg/service/match2/environmentVariables.go) | [EnvironmentVariableListShort](../../samples/cli/cmd/match2/environmentVariables/environmentVariableList.go) |

### Backfill Wrapper:  [Backfill](../../services-api/pkg/service/match2/backfill.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/namespaces/{namespace}/backfill` | POST | CreateBackfillShort | [CreateBackfillShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [CreateBackfillShort](../../services-api/pkg/service/match2/backfill.go) | [CreateBackfillShort](../../samples/cli/cmd/match2/backfill/createBackfill.go) |
| `/match2/v1/namespaces/{namespace}/backfill/proposal` | GET | GetBackfillProposalShort | [GetBackfillProposalShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [GetBackfillProposalShort](../../services-api/pkg/service/match2/backfill.go) | [GetBackfillProposalShort](../../samples/cli/cmd/match2/backfill/getBackfillProposal.go) |
| `/match2/v1/namespaces/{namespace}/backfill/{backfillID}` | GET | GetBackfillShort | [GetBackfillShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [GetBackfillShort](../../services-api/pkg/service/match2/backfill.go) | [GetBackfillShort](../../samples/cli/cmd/match2/backfill/getBackfill.go) |
| `/match2/v1/namespaces/{namespace}/backfill/{backfillID}` | DELETE | DeleteBackfillShort | [DeleteBackfillShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [DeleteBackfillShort](../../services-api/pkg/service/match2/backfill.go) | [DeleteBackfillShort](../../samples/cli/cmd/match2/backfill/deleteBackfill.go) |
| `/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept` | PUT | AcceptBackfillShort | [AcceptBackfillShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [AcceptBackfillShort](../../services-api/pkg/service/match2/backfill.go) | [AcceptBackfillShort](../../samples/cli/cmd/match2/backfill/acceptBackfill.go) |
| `/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject` | PUT | RejectBackfillShort | [RejectBackfillShort](../../match2-sdk/pkg/match2client/backfill/backfill_client.go) | [RejectBackfillShort](../../services-api/pkg/service/match2/backfill.go) | [RejectBackfillShort](../../samples/cli/cmd/match2/backfill/rejectBackfill.go) |

### Match-Functions Wrapper:  [MatchFunctions](../../services-api/pkg/service/match2/matchFunctions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/namespaces/{namespace}/match-functions` | GET | MatchFunctionListShort | [MatchFunctionListShort](../../match2-sdk/pkg/match2client/match_functions/match_functions_client.go) | [MatchFunctionListShort](../../services-api/pkg/service/match2/matchFunctions.go) | [MatchFunctionListShort](../../samples/cli/cmd/match2/matchFunctions/matchFunctionList.go) |
| `/match2/v1/namespaces/{namespace}/match-functions` | POST | CreateMatchFunctionShort | [CreateMatchFunctionShort](../../match2-sdk/pkg/match2client/match_functions/match_functions_client.go) | [CreateMatchFunctionShort](../../services-api/pkg/service/match2/matchFunctions.go) | [CreateMatchFunctionShort](../../samples/cli/cmd/match2/matchFunctions/createMatchFunction.go) |
| `/match2/v1/namespaces/{namespace}/match-functions/{name}` | PUT | UpdateMatchFunctionShort | [UpdateMatchFunctionShort](../../match2-sdk/pkg/match2client/match_functions/match_functions_client.go) | [UpdateMatchFunctionShort](../../services-api/pkg/service/match2/matchFunctions.go) | [UpdateMatchFunctionShort](../../samples/cli/cmd/match2/matchFunctions/updateMatchFunction.go) |
| `/match2/v1/namespaces/{namespace}/match-functions/{name}` | DELETE | DeleteMatchFunctionShort | [DeleteMatchFunctionShort](../../match2-sdk/pkg/match2client/match_functions/match_functions_client.go) | [DeleteMatchFunctionShort](../../services-api/pkg/service/match2/matchFunctions.go) | [DeleteMatchFunctionShort](../../samples/cli/cmd/match2/matchFunctions/deleteMatchFunction.go) |

### Match-Pools Wrapper:  [MatchPools](../../services-api/pkg/service/match2/matchPools.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/namespaces/{namespace}/match-pools` | GET | MatchPoolListShort | [MatchPoolListShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [MatchPoolListShort](../../services-api/pkg/service/match2/matchPools.go) | [MatchPoolListShort](../../samples/cli/cmd/match2/matchPools/matchPoolList.go) |
| `/match2/v1/namespaces/{namespace}/match-pools` | POST | CreateMatchPoolShort | [CreateMatchPoolShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [CreateMatchPoolShort](../../services-api/pkg/service/match2/matchPools.go) | [CreateMatchPoolShort](../../samples/cli/cmd/match2/matchPools/createMatchPool.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}` | GET | MatchPoolDetailsShort | [MatchPoolDetailsShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [MatchPoolDetailsShort](../../services-api/pkg/service/match2/matchPools.go) | [MatchPoolDetailsShort](../../samples/cli/cmd/match2/matchPools/matchPoolDetails.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}` | PUT | UpdateMatchPoolShort | [UpdateMatchPoolShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [UpdateMatchPoolShort](../../services-api/pkg/service/match2/matchPools.go) | [UpdateMatchPoolShort](../../samples/cli/cmd/match2/matchPools/updateMatchPool.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}` | DELETE | DeleteMatchPoolShort | [DeleteMatchPoolShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [DeleteMatchPoolShort](../../services-api/pkg/service/match2/matchPools.go) | [DeleteMatchPoolShort](../../samples/cli/cmd/match2/matchPools/deleteMatchPool.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics` | GET | MatchPoolMetricShort | [MatchPoolMetricShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [MatchPoolMetricShort](../../services-api/pkg/service/match2/matchPools.go) | [MatchPoolMetricShort](../../samples/cli/cmd/match2/matchPools/matchPoolMetric.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player` | GET | GetPlayerMetricShort | [GetPlayerMetricShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [GetPlayerMetricShort](../../services-api/pkg/service/match2/matchPools.go) | [GetPlayerMetricShort](../../samples/cli/cmd/match2/matchPools/getPlayerMetric.go) |
| `/match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets` | GET | AdminGetMatchPoolTicketsShort | [AdminGetMatchPoolTicketsShort](../../match2-sdk/pkg/match2client/match_pools/match_pools_client.go) | [AdminGetMatchPoolTicketsShort](../../services-api/pkg/service/match2/matchPools.go) | [AdminGetMatchPoolTicketsShort](../../samples/cli/cmd/match2/matchPools/adminGetMatchPoolTickets.go) |

### Match-Tickets Wrapper:  [MatchTickets](../../services-api/pkg/service/match2/matchTickets.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/namespaces/{namespace}/match-tickets` | POST | CreateMatchTicketShort | [CreateMatchTicketShort](../../match2-sdk/pkg/match2client/match_tickets/match_tickets_client.go) | [CreateMatchTicketShort](../../services-api/pkg/service/match2/matchTickets.go) | [CreateMatchTicketShort](../../samples/cli/cmd/match2/matchTickets/createMatchTicket.go) |
| `/match2/v1/namespaces/{namespace}/match-tickets/me` | GET | GetMyMatchTicketsShort | [GetMyMatchTicketsShort](../../match2-sdk/pkg/match2client/match_tickets/match_tickets_client.go) | [GetMyMatchTicketsShort](../../services-api/pkg/service/match2/matchTickets.go) | [GetMyMatchTicketsShort](../../samples/cli/cmd/match2/matchTickets/getMyMatchTickets.go) |
| `/match2/v1/namespaces/{namespace}/match-tickets/{ticketid}` | GET | MatchTicketDetailsShort | [MatchTicketDetailsShort](../../match2-sdk/pkg/match2client/match_tickets/match_tickets_client.go) | [MatchTicketDetailsShort](../../services-api/pkg/service/match2/matchTickets.go) | [MatchTicketDetailsShort](../../samples/cli/cmd/match2/matchTickets/matchTicketDetails.go) |
| `/match2/v1/namespaces/{namespace}/match-tickets/{ticketid}` | DELETE | DeleteMatchTicketShort | [DeleteMatchTicketShort](../../match2-sdk/pkg/match2client/match_tickets/match_tickets_client.go) | [DeleteMatchTicketShort](../../services-api/pkg/service/match2/matchTickets.go) | [DeleteMatchTicketShort](../../samples/cli/cmd/match2/matchTickets/deleteMatchTicket.go) |

### Rule-Sets Wrapper:  [RuleSets](../../services-api/pkg/service/match2/ruleSets.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/match2/v1/namespaces/{namespace}/rulesets` | GET | RuleSetListShort | [RuleSetListShort](../../match2-sdk/pkg/match2client/rule_sets/rule_sets_client.go) | [RuleSetListShort](../../services-api/pkg/service/match2/ruleSets.go) | [RuleSetListShort](../../samples/cli/cmd/match2/ruleSets/ruleSetList.go) |
| `/match2/v1/namespaces/{namespace}/rulesets` | POST | CreateRuleSetShort | [CreateRuleSetShort](../../match2-sdk/pkg/match2client/rule_sets/rule_sets_client.go) | [CreateRuleSetShort](../../services-api/pkg/service/match2/ruleSets.go) | [CreateRuleSetShort](../../samples/cli/cmd/match2/ruleSets/createRuleSet.go) |
| `/match2/v1/namespaces/{namespace}/rulesets/{ruleset}` | GET | RuleSetDetailsShort | [RuleSetDetailsShort](../../match2-sdk/pkg/match2client/rule_sets/rule_sets_client.go) | [RuleSetDetailsShort](../../services-api/pkg/service/match2/ruleSets.go) | [RuleSetDetailsShort](../../samples/cli/cmd/match2/ruleSets/ruleSetDetails.go) |
| `/match2/v1/namespaces/{namespace}/rulesets/{ruleset}` | PUT | UpdateRuleSetShort | [UpdateRuleSetShort](../../match2-sdk/pkg/match2client/rule_sets/rule_sets_client.go) | [UpdateRuleSetShort](../../services-api/pkg/service/match2/ruleSets.go) | [UpdateRuleSetShort](../../samples/cli/cmd/match2/ruleSets/updateRuleSet.go) |
| `/match2/v1/namespaces/{namespace}/rulesets/{ruleset}` | DELETE | DeleteRuleSetShort | [DeleteRuleSetShort](../../match2-sdk/pkg/match2client/rule_sets/rule_sets_client.go) | [DeleteRuleSetShort](../../services-api/pkg/service/match2/ruleSets.go) | [DeleteRuleSetShort](../../samples/cli/cmd/match2/ruleSets/deleteRuleSet.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `api.BackFillAcceptRequest` | [ApiBackFillAcceptRequest ](../../match2-sdk/pkg/match2clientmodels/api_back_fill_accept_request.go) |
| `api.BackFillCreateRequest` | [ApiBackFillCreateRequest ](../../match2-sdk/pkg/match2clientmodels/api_back_fill_create_request.go) |
| `api.BackfillCreateResponse` | [ApiBackfillCreateResponse ](../../match2-sdk/pkg/match2clientmodels/api_backfill_create_response.go) |
| `api.BackfillGetResponse` | [ApiBackfillGetResponse ](../../match2-sdk/pkg/match2clientmodels/api_backfill_get_response.go) |
| `api.BackfillProposalResponse` | [ApiBackfillProposalResponse ](../../match2-sdk/pkg/match2clientmodels/api_backfill_proposal_response.go) |
| `api.ListEnvironmentVariablesResponse` | [ApiListEnvironmentVariablesResponse ](../../match2-sdk/pkg/match2clientmodels/api_list_environment_variables_response.go) |
| `api.ListMatchFunctionsResponse` | [ApiListMatchFunctionsResponse ](../../match2-sdk/pkg/match2clientmodels/api_list_match_functions_response.go) |
| `api.ListMatchPoolTicketsResponse` | [ApiListMatchPoolTicketsResponse ](../../match2-sdk/pkg/match2clientmodels/api_list_match_pool_tickets_response.go) |
| `api.ListMatchPoolsResponse` | [ApiListMatchPoolsResponse ](../../match2-sdk/pkg/match2clientmodels/api_list_match_pools_response.go) |
| `api.ListRuleSetsResponse` | [ApiListRuleSetsResponse ](../../match2-sdk/pkg/match2clientmodels/api_list_rule_sets_response.go) |
| `api.Match` | [ApiMatch ](../../match2-sdk/pkg/match2clientmodels/api_match.go) |
| `api.MatchFunctionConfig` | [ApiMatchFunctionConfig ](../../match2-sdk/pkg/match2clientmodels/api_match_function_config.go) |
| `api.MatchFunctionOverride` | [ApiMatchFunctionOverride ](../../match2-sdk/pkg/match2clientmodels/api_match_function_override.go) |
| `api.MatchFunctionRequest` | [ApiMatchFunctionRequest ](../../match2-sdk/pkg/match2clientmodels/api_match_function_request.go) |
| `api.MatchPool` | [ApiMatchPool ](../../match2-sdk/pkg/match2clientmodels/api_match_pool.go) |
| `api.MatchPoolConfig` | [ApiMatchPoolConfig ](../../match2-sdk/pkg/match2clientmodels/api_match_pool_config.go) |
| `api.MatchRuleSetNameData` | [ApiMatchRuleSetNameData ](../../match2-sdk/pkg/match2clientmodels/api_match_rule_set_name_data.go) |
| `api.MatchTicketRequest` | [ApiMatchTicketRequest ](../../match2-sdk/pkg/match2clientmodels/api_match_ticket_request.go) |
| `api.MatchTicketResponse` | [ApiMatchTicketResponse ](../../match2-sdk/pkg/match2clientmodels/api_match_ticket_response.go) |
| `api.MatchTicketStatus` | [ApiMatchTicketStatus ](../../match2-sdk/pkg/match2clientmodels/api_match_ticket_status.go) |
| `api.MatchTicketStatuses` | [ApiMatchTicketStatuses ](../../match2-sdk/pkg/match2clientmodels/api_match_ticket_statuses.go) |
| `api.Party` | [ApiParty ](../../match2-sdk/pkg/match2clientmodels/api_party.go) |
| `api.PlayerData` | [ApiPlayerData ](../../match2-sdk/pkg/match2clientmodels/api_player_data.go) |
| `api.PlayerMetricRecord` | [ApiPlayerMetricRecord ](../../match2-sdk/pkg/match2clientmodels/api_player_metric_record.go) |
| `api.ProposedProposal` | [ApiProposedProposal ](../../match2-sdk/pkg/match2clientmodels/api_proposed_proposal.go) |
| `api.RuleSetPayload` | [ApiRuleSetPayload ](../../match2-sdk/pkg/match2clientmodels/api_rule_set_payload.go) |
| `api.Team` | [ApiTeam ](../../match2-sdk/pkg/match2clientmodels/api_team.go) |
| `api.Ticket` | [ApiTicket ](../../match2-sdk/pkg/match2clientmodels/api_ticket.go) |
| `api.TicketMetricResultRecord` | [ApiTicketMetricResultRecord ](../../match2-sdk/pkg/match2clientmodels/api_ticket_metric_result_record.go) |
| `api.backFillRejectRequest` | [ApiBackFillRejectRequest ](../../match2-sdk/pkg/match2clientmodels/api_back_fill_reject_request.go) |
| `config.EnvironmentVariable` | [ConfigEnvironmentVariable ](../../match2-sdk/pkg/match2clientmodels/config_environment_variable.go) |
| `matchmaker.MatchTicketRecord` | [MatchmakerMatchTicketRecord ](../../match2-sdk/pkg/match2clientmodels/matchmaker_match_ticket_record.go) |
| `matchmaker.Party` | [MatchmakerParty ](../../match2-sdk/pkg/match2clientmodels/matchmaker_party.go) |
| `matchmaker.ProposedProposal` | [MatchmakerProposedProposal ](../../match2-sdk/pkg/match2clientmodels/matchmaker_proposed_proposal.go) |
| `matchmaker.Team` | [MatchmakerTeam ](../../match2-sdk/pkg/match2clientmodels/matchmaker_team.go) |
| `matchmaker.Ticket` | [MatchmakerTicket ](../../match2-sdk/pkg/match2clientmodels/matchmaker_ticket.go) |
| `models.Configuration` | [ModelsConfiguration ](../../match2-sdk/pkg/match2clientmodels/models_configuration.go) |
| `models.DSInformation` | [ModelsDSInformation ](../../match2-sdk/pkg/match2clientmodels/models_d_s_information.go) |
| `models.GameSession` | [ModelsGameSession ](../../match2-sdk/pkg/match2clientmodels/models_game_session.go) |
| `models.Pagination` | [ModelsPagination ](../../match2-sdk/pkg/match2clientmodels/models_pagination.go) |
| `models.Server` | [ModelsServer ](../../match2-sdk/pkg/match2clientmodels/models_server.go) |
| `models.User` | [ModelsUser ](../../match2-sdk/pkg/match2clientmodels/models_user.go) |
| `player.PlayerData` | [PlayerPlayerData ](../../match2-sdk/pkg/match2clientmodels/player_player_data.go) |
| `response.Error` | [ResponseError ](../../match2-sdk/pkg/match2clientmodels/response_error.go) |
