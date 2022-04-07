# Dslogmanager Service Index

&nbsp;

## Operations

### Terminated Servers Wrapper:  [TerminatedServers](../services-api/pkg/service/dslogmanager/terminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dslogmanager/namespaces/{namespace}/servers/search` | GET | ListTerminatedServersShort | [ListTerminatedServersShort](../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [ListTerminatedServersShort](../services-api/pkg/service/dslogmanager/terminatedServers.go) |
| `/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download` | GET | DownloadServerLogsShort | [DownloadServerLogsShort](../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [DownloadServerLogsShort](../services-api/pkg/service/dslogmanager/terminatedServers.go) |
| `/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists` | GET | CheckServerLogsShort | [CheckServerLogsShort](../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [CheckServerLogsShort](../services-api/pkg/service/dslogmanager/terminatedServers.go) |

### All Terminated Servers Wrapper:  [AllTerminatedServers](../services-api/pkg/service/dslogmanager/allTerminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dslogmanager/servers/logs/download` | POST | BatchDownloadServerLogsShort | [BatchDownloadServerLogsShort](../dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers/all_terminated_servers_client.go) | [BatchDownloadServerLogsShort](../services-api/pkg/service/dslogmanager/allTerminatedServers.go) |
| `/dslogmanager/servers/search` | GET | ListAllTerminatedServersShort | [ListAllTerminatedServersShort](../dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers/all_terminated_servers_client.go) | [ListAllTerminatedServersShort](../services-api/pkg/service/dslogmanager/allTerminatedServers.go) |

### Operations Wrapper:  [Operations](../services-api/pkg/service/dslogmanager/operations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dslogmanager/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../dslogmanager-sdk/pkg/dslogmanagerclient/operations/operations_client.go) | [PublicGetMessagesShort](../services-api/pkg/service/dslogmanager/operations.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/log_app_message_declaration.go) |
| `models.BatchDownloadLogsRequest` | [ModelsBatchDownloadLogsRequest ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_batch_download_logs_request.go) |
| `models.DownloadLogsRequest` | [ModelsDownloadLogsRequest ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_download_logs_request.go) |
| `models.ListTerminatedServersResponse` | [ModelsListTerminatedServersResponse ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_list_terminated_servers_response.go) |
| `models.LogFileStatus` | [ModelsLogFileStatus ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_log_file_status.go) |
| `models.MatchResult` | [ModelsMatchResult ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_match_result.go) |
| `models.NotifPayloadServerStatusChange` | [ModelsNotifPayloadServerStatusChange ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_notif_payload_server_status_change.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_paging_cursor.go) |
| `models.RequestMatchMember` | [ModelsRequestMatchMember ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_match_member.go) |
| `models.RequestMatchParty` | [ModelsRequestMatchParty ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_match_party.go) |
| `models.RequestMatchingAlly` | [ModelsRequestMatchingAlly ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_matching_ally.go) |
| `models.Server` | [ModelsServer ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_server.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_status_history.go) |
| `response.Error` | [ResponseError ](../dslogmanager-sdk/pkg/dslogmanagerclientmodels/response_error.go) |
