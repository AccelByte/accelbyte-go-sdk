# Gametelemetry Service Index

&nbsp;

## Operations

### telemetry Wrapper:  [Telemetry](../../services-api/pkg/service/gametelemetry/telemetry.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/game-telemetry/v1/admin/namespaces` | GET | GetNamespacesGameTelemetryV1AdminNamespacesGetShort | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/telemetry/telemetry_client.go) | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../services-api/pkg/service/gametelemetry/telemetry.go) | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../samples/cli/cmd/gametelemetry/telemetry/getNamespacesGameTelemetryV1AdminNamespacesGet.go) |
| `/game-telemetry/v1/admin/namespaces/{namespace}/events` | GET | GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/telemetry/telemetry_client.go) | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../services-api/pkg/service/gametelemetry/telemetry.go) | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../samples/cli/cmd/gametelemetry/telemetry/getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.go) |

### Gametelemetry Operations Wrapper:  [GametelemetryOperations](../../services-api/pkg/service/gametelemetry/gametelemetryOperations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/game-telemetry/v1/protected/events` | POST | ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedSaveEventsGameTelemetryV1ProtectedEventsPost.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime` | GET | ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}` | PUT | ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../services-api/pkg/service/gametelemetry/gametelemetryOperations.go) | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `HTTPValidationError` | [HTTPValidationError ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/http_validation_error.go) |
| `TelemetryBody` | [TelemetryBody ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/telemetry_body.go) |
| `ValidationError` | [ValidationError ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/validation_error.go) |
