# Gametelemetry Service Index

&nbsp;

## Operations

### Operations Wrapper:  [Operations](../services-api/pkg/service/gametelemetry/operations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/game-telemetry/v1/admin/events` | GET | AdminGetEventsGameTelemetryV1AdminEventsGetShort | [AdminGetEventsGameTelemetryV1AdminEventsGetShort](../gametelemetry-sdk/pkg/gametelemetryclient/operations/operations_client.go) | [AdminGetEventsGameTelemetryV1AdminEventsGetShort](../services-api/pkg/service/gametelemetry/operations.go) |
| `/game-telemetry/v1/admin/telemetrynamespace` | GET | AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort | [AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort](../gametelemetry-sdk/pkg/gametelemetryclient/operations/operations_client.go) | [AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGetShort](../services-api/pkg/service/gametelemetry/operations.go) |

### Gametelemetry Operations Wrapper:  [GametelemetryOperations](../services-api/pkg/service/gametelemetry/gametelemetryOperations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/game-telemetry/v1/protected/events` | POST | ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime` | GET | ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}` | PUT | ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `HTTPValidationError` | [HTTPValidationError ](../gametelemetry-sdk/pkg/gametelemetryclientmodels/http_validation_error.go) |
| `TelemetryBody` | [TelemetryBody ](../gametelemetry-sdk/pkg/gametelemetryclientmodels/telemetry_body.go) |
| `ValidationError` | [ValidationError ](../gametelemetry-sdk/pkg/gametelemetryclientmodels/validation_error.go) |
