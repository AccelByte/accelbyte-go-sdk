# Sessionbrowser Service Index

&nbsp;

## Operations

### Session Wrapper:  [Session](../services-api/pkg/service/sessionbrowser/session.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count` | GET | GetTotalActiveSessionShort | [GetTotalActiveSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetTotalActiveSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetTotalActiveSessionShort](../samples/cli/cmd/sessionbrowser/session/getTotalActiveSession.go) |
| `/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game` | GET | GetActiveCustomGameSessionsShort | [GetActiveCustomGameSessionsShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetActiveCustomGameSessionsShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetActiveCustomGameSessionsShort](../samples/cli/cmd/sessionbrowser/session/getActiveCustomGameSessions.go) |
| `/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game` | GET | GetActiveMatchmakingGameSessionsShort | [GetActiveMatchmakingGameSessionsShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetActiveMatchmakingGameSessionsShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetActiveMatchmakingGameSessionsShort](../samples/cli/cmd/sessionbrowser/session/getActiveMatchmakingGameSessions.go) |
| `/sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}` | GET | AdminGetSessionShort | [AdminGetSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [AdminGetSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [AdminGetSessionShort](../samples/cli/cmd/sessionbrowser/session/adminGetSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession` | GET | QuerySessionShort | [QuerySessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [QuerySessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [QuerySessionShort](../samples/cli/cmd/sessionbrowser/session/querySession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession` | POST | CreateSessionShort | [CreateSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [CreateSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [CreateSessionShort](../samples/cli/cmd/sessionbrowser/session/createSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/bulk` | GET | GetSessionByUserIDsShort | [GetSessionByUserIDsShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetSessionByUserIDsShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetSessionByUserIDsShort](../samples/cli/cmd/sessionbrowser/session/getSessionByUserIDs.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}` | GET | GetSessionShort | [GetSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetSessionShort](../samples/cli/cmd/sessionbrowser/session/getSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}` | PUT | UpdateSessionShort | [UpdateSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [UpdateSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [UpdateSessionShort](../samples/cli/cmd/sessionbrowser/session/updateSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}` | DELETE | DeleteSessionShort | [DeleteSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [DeleteSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [DeleteSessionShort](../samples/cli/cmd/sessionbrowser/session/deleteSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join` | POST | JoinSessionShort | [JoinSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [JoinSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [JoinSessionShort](../samples/cli/cmd/sessionbrowser/session/joinSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds` | DELETE | DeleteSessionLocalDSShort | [DeleteSessionLocalDSShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [DeleteSessionLocalDSShort](../services-api/pkg/service/sessionbrowser/session.go) | [DeleteSessionLocalDSShort](../samples/cli/cmd/sessionbrowser/session/deleteSessionLocalDS.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player` | POST | AddPlayerToSessionShort | [AddPlayerToSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [AddPlayerToSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [AddPlayerToSessionShort](../samples/cli/cmd/sessionbrowser/session/addPlayerToSession.go) |
| `/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}` | DELETE | RemovePlayerFromSessionShort | [RemovePlayerFromSessionShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [RemovePlayerFromSessionShort](../services-api/pkg/service/sessionbrowser/session.go) | [RemovePlayerFromSessionShort](../samples/cli/cmd/sessionbrowser/session/removePlayerFromSession.go) |
| `/sessionbrowser/namespaces/{namespace}/recentplayer/{userID}` | GET | GetRecentPlayerShort | [GetRecentPlayerShort](../sessionbrowser-sdk/pkg/sessionbrowserclient/session/session_client.go) | [GetRecentPlayerShort](../services-api/pkg/service/sessionbrowser/session.go) | [GetRecentPlayerShort](../samples/cli/cmd/sessionbrowser/session/getRecentPlayer.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.ActiveCustomGameResponse` | [ModelsActiveCustomGameResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_active_custom_game_response.go) |
| `models.ActiveMatchmakingGameResponse` | [ModelsActiveMatchmakingGameResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_active_matchmaking_game_response.go) |
| `models.AddPlayerRequest` | [ModelsAddPlayerRequest ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_add_player_request.go) |
| `models.AddPlayerResponse` | [ModelsAddPlayerResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_add_player_response.go) |
| `models.AdminSessionResponse` | [ModelsAdminSessionResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_admin_session_response.go) |
| `models.CountActiveSessionResponse` | [ModelsCountActiveSessionResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_count_active_session_response.go) |
| `models.CreateSessionRequest` | [ModelsCreateSessionRequest ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_create_session_request.go) |
| `models.CustomGameResponse` | [ModelsCustomGameResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_custom_game_response.go) |
| `models.GameSession` | [ModelsGameSession ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_game_session.go) |
| `models.GameSessionSetting` | [ModelsGameSessionSetting ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_game_session_setting.go) |
| `models.JoinGameSessionRequest` | [ModelsJoinGameSessionRequest ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_join_game_session_request.go) |
| `models.MatchMaking` | [ModelsMatchMaking ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_match_making.go) |
| `models.MatchingAlly` | [ModelsMatchingAlly ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_matching_ally.go) |
| `models.MatchingParty` | [ModelsMatchingParty ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_matching_party.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_paging_cursor.go) |
| `models.PartyMember` | [ModelsPartyMember ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_party_member.go) |
| `models.RecentPlayerHistory` | [ModelsRecentPlayerHistory ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_recent_player_history.go) |
| `models.RecentPlayerQueryResponse` | [ModelsRecentPlayerQueryResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_recent_player_query_response.go) |
| `models.Server` | [ModelsServer ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_server.go) |
| `models.SessionByUserIDsResponse` | [ModelsSessionByUserIDsResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_session_by_user_i_ds_response.go) |
| `models.SessionQueryResponse` | [ModelsSessionQueryResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_session_query_response.go) |
| `models.SessionResponse` | [ModelsSessionResponse ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_session_response.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_status_history.go) |
| `models.UpdateSessionRequest` | [ModelsUpdateSessionRequest ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/models_update_session_request.go) |
| `response.Error` | [ResponseError ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/response_error.go) |
| `restapi.ErrorResponseV2` | [RestapiErrorResponseV2 ](../sessionbrowser-sdk/pkg/sessionbrowserclientmodels/restapi_error_response_v2.go) |
