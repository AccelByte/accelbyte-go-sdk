## Go Extend SDK CLI Sample App Operation Index for Gametelemetry service.

### Operation `get_namespaces_game_telemetry_v1_admin_namespaces_get`
```sh
$ samples/cli/sample-apps Gametelemetry getNamespacesGameTelemetryV1AdminNamespacesGet \
    > result.txt
```

### Operation `get_events_game_telemetry_v1_admin_namespaces_namespace_events_get`
```sh
$ samples/cli/sample-apps Gametelemetry getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet \
    --namespace 'string' \
    --deviceType 'string' \
    --endTime 'string' \
    --eventId 'string' \
    --eventName 'string' \
    --eventPayload 'string' \
    --flightId 'string' \
    --limit 1 \
    --offset 1 \
    --startTime 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `protected_save_events_game_telemetry_v1_protected_events_post`
```sh
$ samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'string' \
    --cookie 'access_token=string' \
    --body '[{"ClientTimestamp": "2000-01-01T12:34:56Z", "DeviceType": "string", "EventId": "string", "EventName": "string", "EventNamespace": "string", "EventTimestamp": "2000-01-01T12:34:56Z", "Payload": {"string": {}}}]' \
    > result.txt
```

### Operation `protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get`
```sh
$ samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --cookie 'string' \
    --steamId 'string' \
    --cookie 'access_token=string' \
    > result.txt
```

### Operation `protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put`
```sh
$ samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --cookie 'string' \
    --playtime 'string' \
    --steamId 'string' \
    --cookie 'access_token=string' \
    > result.txt
```

