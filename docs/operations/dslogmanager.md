# Dslogmanager Service Index

&nbsp;

## Operations

### Admin Wrapper:  [Admin](../../services-api/pkg/service/dslogmanager/admin.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs` | GET | GetServerLogsShort | [GetServerLogsShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/admin/admin_client.go) | [GetServerLogsShort](../../services-api/pkg/service/dslogmanager/admin.go) | [GetServerLogsShort](../../samples/cli/cmd/dslogmanager/admin/getServerLogs.go) |

### Terminated Servers Wrapper:  [TerminatedServers](../../services-api/pkg/service/dslogmanager/terminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dslogmanager/namespaces/{namespace}/servers/search` | GET | ListTerminatedServersShort | [ListTerminatedServersShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [ListTerminatedServersShort](../../services-api/pkg/service/dslogmanager/terminatedServers.go) | [ListTerminatedServersShort](../../samples/cli/cmd/dslogmanager/terminatedServers/listTerminatedServers.go) |
| `/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download` | GET | DownloadServerLogsShort | [DownloadServerLogsShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [DownloadServerLogsShort](../../services-api/pkg/service/dslogmanager/terminatedServers.go) | [DownloadServerLogsShort](../../samples/cli/cmd/dslogmanager/terminatedServers/downloadServerLogs.go) |
| `/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists` | GET | CheckServerLogsShort | [CheckServerLogsShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers/terminated_servers_client.go) | [CheckServerLogsShort](../../services-api/pkg/service/dslogmanager/terminatedServers.go) | [CheckServerLogsShort](../../samples/cli/cmd/dslogmanager/terminatedServers/checkServerLogs.go) |

### All Terminated Servers Wrapper:  [AllTerminatedServers](../../services-api/pkg/service/dslogmanager/allTerminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dslogmanager/servers/logs/download` | POST | BatchDownloadServerLogsShort | [BatchDownloadServerLogsShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers/all_terminated_servers_client.go) | [BatchDownloadServerLogsShort](../../services-api/pkg/service/dslogmanager/allTerminatedServers.go) | [BatchDownloadServerLogsShort](../../samples/cli/cmd/dslogmanager/allTerminatedServers/batchDownloadServerLogs.go) |
| `/dslogmanager/servers/metadata` | POST | ListMetadataServersShort | [ListMetadataServersShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers/all_terminated_servers_client.go) | [ListMetadataServersShort](../../services-api/pkg/service/dslogmanager/allTerminatedServers.go) | [ListMetadataServersShort](../../samples/cli/cmd/dslogmanager/allTerminatedServers/listMetadataServers.go) |
| `/dslogmanager/servers/search` | GET | ListAllTerminatedServersShort | [ListAllTerminatedServersShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers/all_terminated_servers_client.go) | [ListAllTerminatedServersShort](../../services-api/pkg/service/dslogmanager/allTerminatedServers.go) | [ListAllTerminatedServersShort](../../samples/cli/cmd/dslogmanager/allTerminatedServers/listAllTerminatedServers.go) |

### Dslogmanager Operations Wrapper:  [DslogmanagerOperations](../../services-api/pkg/service/dslogmanager/dslogmanagerOperations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dslogmanager/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../../dslogmanager-sdk/pkg/dslogmanagerclient/dslogmanager_operations/dslogmanager_operations_client.go) | [PublicGetMessagesShort](../../services-api/pkg/service/dslogmanager/dslogmanagerOperations.go) | [PublicGetMessagesShort](../../samples/cli/cmd/dslogmanager/dslogmanagerOperations/publicGetMessages.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/log_app_message_declaration.go) |
| `models.AllocationEvent` | [ModelsAllocationEvent ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_allocation_event.go) |
| `models.BatchDownloadLogsRequest` | [ModelsBatchDownloadLogsRequest ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_batch_download_logs_request.go) |
| `models.DownloadLogsRequest` | [ModelsDownloadLogsRequest ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_download_logs_request.go) |
| `models.ListTerminatedServersResponse` | [ModelsListTerminatedServersResponse ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_list_terminated_servers_response.go) |
| `models.LogFileStatus` | [ModelsLogFileStatus ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_log_file_status.go) |
| `models.MatchResult` | [ModelsMatchResult ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_match_result.go) |
| `models.MetadataServersRequest` | [ModelsMetadataServersRequest ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_metadata_servers_request.go) |
| `models.NotifPayloadServerStatusChangeResponse` | [ModelsNotifPayloadServerStatusChangeResponse ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_notif_payload_server_status_change_response.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_paging_cursor.go) |
| `models.RequestMatchMember` | [ModelsRequestMatchMember ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_match_member.go) |
| `models.RequestMatchParty` | [ModelsRequestMatchParty ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_match_party.go) |
| `models.RequestMatchingAlly` | [ModelsRequestMatchingAlly ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_request_matching_ally.go) |
| `models.ServerLogs` | [ModelsServerLogs ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_server_logs.go) |
| `models.ServerResponse` | [ModelsServerResponse ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_server_response.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/models_status_history.go) |
| `response.Error` | [ResponseError ](../../dslogmanager-sdk/pkg/dslogmanagerclientmodels/response_error.go) |
