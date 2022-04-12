# Cloudsave Service Index

&nbsp;

## Operations

### AdminConcurrentRecord Wrapper:  [AdminConcurrentRecord](../services-api/pkg/service/cloudsave/adminConcurrentRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}` | PUT | AdminPutGameRecordConcurrentHandlerV1Short | [AdminPutGameRecordConcurrentHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record/admin_concurrent_record_client.go) | [AdminPutGameRecordConcurrentHandlerV1Short](../services-api/pkg/service/cloudsave/adminConcurrentRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public` | PUT | AdminPutPlayerPublicRecordConcurrentHandlerV1Short | [AdminPutPlayerPublicRecordConcurrentHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record/admin_concurrent_record_client.go) | [AdminPutPlayerPublicRecordConcurrentHandlerV1Short](../services-api/pkg/service/cloudsave/adminConcurrentRecord.go) |

### AdminGameRecord Wrapper:  [AdminGameRecord](../services-api/pkg/service/cloudsave/adminGameRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/admin/namespaces/{namespace}/records` | GET | ListGameRecordsHandlerV1Short | [ListGameRecordsHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_game_record/admin_game_record_client.go) | [ListGameRecordsHandlerV1Short](../services-api/pkg/service/cloudsave/adminGameRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/records/{key}` | GET | AdminGetGameRecordHandlerV1Short | [AdminGetGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_game_record/admin_game_record_client.go) | [AdminGetGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminGameRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/records/{key}` | PUT | AdminPutGameRecordHandlerV1Short | [AdminPutGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_game_record/admin_game_record_client.go) | [AdminPutGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminGameRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/records/{key}` | POST | AdminPostGameRecordHandlerV1Short | [AdminPostGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_game_record/admin_game_record_client.go) | [AdminPostGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminGameRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/records/{key}` | DELETE | AdminDeleteGameRecordHandlerV1Short | [AdminDeleteGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_game_record/admin_game_record_client.go) | [AdminDeleteGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminGameRecord.go) |

### AdminPlayerRecord Wrapper:  [AdminPlayerRecord](../services-api/pkg/service/cloudsave/adminPlayerRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/admin/namespaces/{namespace}/users/records` | GET | ListPlayerRecordHandlerV1Short | [ListPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [ListPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records` | GET | AdminRetrievePlayerRecordsShort | [AdminRetrievePlayerRecordsShort](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminRetrievePlayerRecordsShort](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}` | GET | AdminGetPlayerRecordHandlerV1Short | [AdminGetPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminGetPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}` | PUT | AdminPutPlayerRecordHandlerV1Short | [AdminPutPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminPutPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}` | POST | AdminPostPlayerRecordHandlerV1Short | [AdminPostPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminPostPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}` | DELETE | AdminDeletePlayerRecordHandlerV1Short | [AdminDeletePlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminDeletePlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public` | GET | AdminGetPlayerPublicRecordHandlerV1Short | [AdminGetPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminGetPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public` | PUT | AdminPutPlayerPublicRecordHandlerV1Short | [AdminPutPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminPutPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public` | POST | AdminPostPlayerPublicRecordHandlerV1Short | [AdminPostPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminPostPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |
| `/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public` | DELETE | AdminDeletePlayerPublicRecordHandlerV1Short | [AdminDeletePlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/admin_player_record/admin_player_record_client.go) | [AdminDeletePlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/adminPlayerRecord.go) |

### ConcurrentRecord Wrapper:  [ConcurrentRecord](../services-api/pkg/service/cloudsave/concurrentRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}` | PUT | PutGameRecordConcurrentHandlerV1Short | [PutGameRecordConcurrentHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/concurrent_record/concurrent_record_client.go) | [PutGameRecordConcurrentHandlerV1Short](../services-api/pkg/service/cloudsave/concurrentRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public` | PUT | PutPlayerPublicRecordConcurrentHandlerV1Short | [PutPlayerPublicRecordConcurrentHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/concurrent_record/concurrent_record_client.go) | [PutPlayerPublicRecordConcurrentHandlerV1Short](../services-api/pkg/service/cloudsave/concurrentRecord.go) |

### PublicGameRecord Wrapper:  [PublicGameRecord](../services-api/pkg/service/cloudsave/publicGameRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/namespaces/{namespace}/records/{key}` | GET | GetGameRecordHandlerV1Short | [GetGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_game_record/public_game_record_client.go) | [GetGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicGameRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/records/{key}` | PUT | PutGameRecordHandlerV1Short | [PutGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_game_record/public_game_record_client.go) | [PutGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicGameRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/records/{key}` | POST | PostGameRecordHandlerV1Short | [PostGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_game_record/public_game_record_client.go) | [PostGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicGameRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/records/{key}` | DELETE | DeleteGameRecordHandlerV1Short | [DeleteGameRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_game_record/public_game_record_client.go) | [DeleteGameRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicGameRecord.go) |

### PublicPlayerRecord Wrapper:  [PublicPlayerRecord](../services-api/pkg/service/cloudsave/publicPlayerRecord.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public` | POST | BulkGetPlayerPublicRecordHandlerV1Short | [BulkGetPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [BulkGetPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public` | DELETE | PublicDeletePlayerPublicRecordHandlerV1Short | [PublicDeletePlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [PublicDeletePlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}` | GET | GetPlayerRecordHandlerV1Short | [GetPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [GetPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}` | PUT | PutPlayerRecordHandlerV1Short | [PutPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [PutPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}` | POST | PostPlayerRecordHandlerV1Short | [PostPlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [PostPlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}` | DELETE | DeletePlayerRecordHandlerV1Short | [DeletePlayerRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [DeletePlayerRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public` | GET | GetPlayerPublicRecordHandlerV1Short | [GetPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [GetPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public` | PUT | PutPlayerPublicRecordHandlerV1Short | [PutPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [PutPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |
| `/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public` | POST | PostPlayerPublicRecordHandlerV1Short | [PostPlayerPublicRecordHandlerV1Short](../cloudsave-sdk/pkg/cloudsaveclient/public_player_record/public_player_record_client.go) | [PostPlayerPublicRecordHandlerV1Short](../services-api/pkg/service/cloudsave/publicPlayerRecord.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AdminConcurrentRecordRequest` | [ModelsAdminConcurrentRecordRequest ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_admin_concurrent_record_request.go) |
| `models.BulkGetPlayerRecordResponse` | [ModelsBulkGetPlayerRecordResponse ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_bulk_get_player_record_response.go) |
| `models.BulkUserIDsRequest` | [ModelsBulkUserIDsRequest ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_bulk_user_i_ds_request.go) |
| `models.ConcurrentRecordRequest` | [ModelsConcurrentRecordRequest ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_concurrent_record_request.go) |
| `models.GameRecordRequest` | [ModelsGameRecordRequest ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_game_record_request.go) |
| `models.GameRecordResponse` | [ModelsGameRecordResponse ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_game_record_response.go) |
| `models.ListGameRecordKeysResponse` | [ModelsListGameRecordKeysResponse ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_list_game_record_keys_response.go) |
| `models.ListPlayerRecordKeysResponse` | [ModelsListPlayerRecordKeysResponse ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_list_player_record_keys_response.go) |
| `models.Pagination` | [ModelsPagination ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_pagination.go) |
| `models.PlayerRecordKeyInfo` | [ModelsPlayerRecordKeyInfo ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_player_record_key_info.go) |
| `models.PlayerRecordRequest` | [ModelsPlayerRecordRequest ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_player_record_request.go) |
| `models.PlayerRecordResponse` | [ModelsPlayerRecordResponse ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_player_record_response.go) |
| `models.ResponseError` | [ModelsResponseError ](../cloudsave-sdk/pkg/cloudsaveclientmodels/models_response_error.go) |
