# Qosm Service Index

&nbsp;

## Operations

### Admin Wrapper:  [Admin](../../services-api/pkg/service/qosm/admin.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/qosm/admin/namespaces/{namespace}/servers/{region}` | PATCH | UpdateServerConfigShort | [UpdateServerConfigShort](../../qosm-sdk/pkg/qosmclient/admin/admin_client.go) | [UpdateServerConfigShort](../../services-api/pkg/service/qosm/admin.go) | [UpdateServerConfigShort](../../samples/cli/cmd/qosm/admin/updateServerConfig.go) |
| `/qosm/admin/servers/{region}` | DELETE | DeleteServerShort | [DeleteServerShort](../../qosm-sdk/pkg/qosmclient/admin/admin_client.go) | [DeleteServerShort](../../services-api/pkg/service/qosm/admin.go) | [DeleteServerShort](../../samples/cli/cmd/qosm/admin/deleteServer.go) |
| `/qosm/admin/servers/{region}/alias` | POST | SetServerAliasShort | [SetServerAliasShort](../../qosm-sdk/pkg/qosmclient/admin/admin_client.go) | [SetServerAliasShort](../../services-api/pkg/service/qosm/admin.go) | [SetServerAliasShort](../../samples/cli/cmd/qosm/admin/setServerAlias.go) |

### Public Wrapper:  [Public](../../services-api/pkg/service/qosm/public.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/qosm/public/namespaces/{namespace}/qos` | GET | ListServerPerNamespaceShort | [ListServerPerNamespaceShort](../../qosm-sdk/pkg/qosmclient/public/public_client.go) | [ListServerPerNamespaceShort](../../services-api/pkg/service/qosm/public.go) | [ListServerPerNamespaceShort](../../samples/cli/cmd/qosm/public/listServerPerNamespace.go) |
| `/qosm/public/qos` | GET | ListServerShort | [ListServerShort](../../qosm-sdk/pkg/qosmclient/public/public_client.go) | [ListServerShort](../../services-api/pkg/service/qosm/public.go) | [ListServerShort](../../samples/cli/cmd/qosm/public/listServer.go) |

### Server Wrapper:  [Server](../../services-api/pkg/service/qosm/server.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/qosm/servers/heartbeat` | POST | HeartbeatShort | [HeartbeatShort](../../qosm-sdk/pkg/qosmclient/server/server_client.go) | [HeartbeatShort](../../services-api/pkg/service/qosm/server.go) | [HeartbeatShort](../../samples/cli/cmd/qosm/server/heartbeat.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.HeartbeatRequest` | [ModelsHeartbeatRequest ](../../qosm-sdk/pkg/qosmclientmodels/models_heartbeat_request.go) |
| `models.ListServerResponse` | [ModelsListServerResponse ](../../qosm-sdk/pkg/qosmclientmodels/models_list_server_response.go) |
| `models.Server` | [ModelsServer ](../../qosm-sdk/pkg/qosmclientmodels/models_server.go) |
| `models.SetAliasRequest` | [ModelsSetAliasRequest ](../../qosm-sdk/pkg/qosmclientmodels/models_set_alias_request.go) |
| `models.UpdateServerRequest` | [ModelsUpdateServerRequest ](../../qosm-sdk/pkg/qosmclientmodels/models_update_server_request.go) |
| `response.Error` | [ResponseError ](../../qosm-sdk/pkg/qosmclientmodels/response_error.go) |
