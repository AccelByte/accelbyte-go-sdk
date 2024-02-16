# Dsartifact Service Index

&nbsp;

## Operations

### Artifact Upload Process Queue Wrapper:  [ArtifactUploadProcessQueue](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsartifact/artifacts/nodes/ipaddresses` | GET | ListNodesIPAddressShort | [ListNodesIPAddressShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [ListNodesIPAddressShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [ListNodesIPAddressShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/listNodesIPAddress.go) |
| `/dsartifact/artifacts/nodes/ipaddresses` | DELETE | DeleteNodeByIDShort | [DeleteNodeByIDShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [DeleteNodeByIDShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [DeleteNodeByIDShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/deleteNodeByID.go) |
| `/dsartifact/artifacts/queues` | GET | ListQueueShort | [ListQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [ListQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [ListQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/listQueue.go) |
| `/dsartifact/artifacts/queues/active` | GET | GetActiveQueueShort | [GetActiveQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [GetActiveQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [GetActiveQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/getActiveQueue.go) |
| `/dsartifact/artifacts/queues/active` | PUT | SetActiveQueueShort | [SetActiveQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [SetActiveQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [SetActiveQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/setActiveQueue.go) |
| `/dsartifact/artifacts/queues/active` | DELETE | DeleteActiveQueueShort | [DeleteActiveQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [DeleteActiveQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [DeleteActiveQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/deleteActiveQueue.go) |
| `/dsartifact/artifacts/queues/failed` | PUT | ReportFailedUploadShort | [ReportFailedUploadShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [ReportFailedUploadShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [ReportFailedUploadShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/reportFailedUpload.go) |
| `/dsartifact/namespaces/{namespace}/artifacts/queues` | DELETE | DeleteQueueShort | [DeleteQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [DeleteQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [DeleteQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/deleteQueue.go) |
| `/dsartifact/namespaces/{namespace}/artifacts/queues/active/all` | GET | ListAllActiveQueueShort | [ListAllActiveQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [ListAllActiveQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [ListAllActiveQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/listAllActiveQueue.go) |
| `/dsartifact/namespaces/{namespace}/artifacts/queues/all` | GET | ListAllQueueShort | [ListAllQueueShort](../../dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue/artifact_upload_process_queue_client.go) | [ListAllQueueShort](../../services-api/pkg/service/dsartifact/artifactUploadProcessQueue.go) | [ListAllQueueShort](../../samples/cli/cmd/dsartifact/artifactUploadProcessQueue/listAllQueue.go) |

### Terminated Servers Wrapper:  [TerminatedServers](../../services-api/pkg/service/dsartifact/terminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsartifact/namespaces/{namespace}/servers/search` | GET | ListTerminatedServersWithNamespaceShort | [ListTerminatedServersWithNamespaceShort](../../dsartifact-sdk/pkg/dsartifactclient/terminated_servers/terminated_servers_client.go) | [ListTerminatedServersWithNamespaceShort](../../services-api/pkg/service/dsartifact/terminatedServers.go) | [ListTerminatedServersWithNamespaceShort](../../samples/cli/cmd/dsartifact/terminatedServers/listTerminatedServersWithNamespace.go) |

### Download Server Artifact Wrapper:  [DownloadServerArtifact](../../services-api/pkg/service/dsartifact/downloadServerArtifact.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download` | GET | DownloadServerArtifactsShort | [DownloadServerArtifactsShort](../../dsartifact-sdk/pkg/dsartifactclient/download_server_artifact/download_server_artifact_client.go) | [DownloadServerArtifactsShort](../../services-api/pkg/service/dsartifact/downloadServerArtifact.go) | [DownloadServerArtifactsShort](../../samples/cli/cmd/dsartifact/downloadServerArtifact/downloadServerArtifacts.go) |
| `/dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists` | GET | CheckServerArtifactShort | [CheckServerArtifactShort](../../dsartifact-sdk/pkg/dsartifactclient/download_server_artifact/download_server_artifact_client.go) | [CheckServerArtifactShort](../../services-api/pkg/service/dsartifact/downloadServerArtifact.go) | [CheckServerArtifactShort](../../samples/cli/cmd/dsartifact/downloadServerArtifact/checkServerArtifact.go) |

### All Terminated Servers Wrapper:  [AllTerminatedServers](../../services-api/pkg/service/dsartifact/allTerminatedServers.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsartifact/servers/search` | GET | ListTerminatedServersShort | [ListTerminatedServersShort](../../dsartifact-sdk/pkg/dsartifactclient/all_terminated_servers/all_terminated_servers_client.go) | [ListTerminatedServersShort](../../services-api/pkg/service/dsartifact/allTerminatedServers.go) | [ListTerminatedServersShort](../../samples/cli/cmd/dsartifact/allTerminatedServers/listTerminatedServers.go) |

### Operations Wrapper:  [Operations](../../services-api/pkg/service/dsartifact/operations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsartifact/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../../dsartifact-sdk/pkg/dsartifactclient/operations/operations_client.go) | [PublicGetMessagesShort](../../services-api/pkg/service/dsartifact/operations.go) | [PublicGetMessagesShort](../../samples/cli/cmd/dsartifact/operations/publicGetMessages.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../../dsartifact-sdk/pkg/dsartifactclientmodels/log_app_message_declaration.go) |
| `models.AllQueueResult` | [ModelsAllQueueResult ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_all_queue_result.go) |
| `models.ArtifactFileStatus` | [ModelsArtifactFileStatus ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_artifact_file_status.go) |
| `models.ListAllQueueResponse` | [ModelsListAllQueueResponse ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_list_all_queue_response.go) |
| `models.ListNodesIPAddress` | [ModelsListNodesIPAddress ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_list_nodes_ip_address.go) |
| `models.ListQueueResponse` | [ModelsListQueueResponse ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_list_queue_response.go) |
| `models.ListTerminatedServersResponse` | [ModelsListTerminatedServersResponse ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_list_terminated_servers_response.go) |
| `models.MatchResult` | [ModelsMatchResult ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_match_result.go) |
| `models.NotifPayloadServerStatusChange` | [ModelsNotifPayloadServerStatusChange ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_notif_payload_server_status_change.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_paging_cursor.go) |
| `models.Queue` | [ModelsQueue ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_queue.go) |
| `models.QueueResult` | [ModelsQueueResult ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_queue_result.go) |
| `models.RequestMatchMember` | [ModelsRequestMatchMember ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_request_match_member.go) |
| `models.RequestMatchParty` | [ModelsRequestMatchParty ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_request_match_party.go) |
| `models.RequestMatchingAlly` | [ModelsRequestMatchingAlly ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_request_matching_ally.go) |
| `models.Server` | [ModelsServer ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_server.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../../dsartifact-sdk/pkg/dsartifactclientmodels/models_status_history.go) |
| `response.Error` | [ResponseError ](../../dsartifact-sdk/pkg/dsartifactclientmodels/response_error.go) |
