#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..6"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetNamespacesGameTelemetryV1AdminNamespacesGet
samples/cli/sample-apps Gametelemetry getNamespacesGameTelemetryV1AdminNamespacesGet \
    > test.out 2>&1
eval_tap $? 2 'GetNamespacesGameTelemetryV1AdminNamespacesGet' test.out

#- 3 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
samples/cli/sample-apps Gametelemetry getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet \
    --namespace $AB_NAMESPACE \
    --deviceType 'zbM2teAPNohTCQDq' \
    --endTime '0u1brxcBJNzGew65' \
    --eventId 't88K8wi32MvMMksQ' \
    --eventName 'CcUAKHzZb0NdN0eS' \
    --eventPayload 'mhauGpnOmst8hoBv' \
    --flightId 'cvrSPc8BCYEoGgLO' \
    --limit '3' \
    --offset '6' \
    --startTime 'FaQIDNx9skXnNJC9' \
    --userId 'CuZv4meFGW6ZqgZD' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1990-12-29T00:00:00Z", "DeviceType": "eH3DDSuhuwhzgjj0", "EventId": "Ku7gmw0xkAX96Tp4", "EventName": "uU2TirAGaldj2XIy", "EventNamespace": "9ThNj2c2zjSNrMCL", "EventTimestamp": "1973-11-16T00:00:00Z", "Payload": {"VOTyRp4FsNvFXsgk": {}, "ZxuKNFRPcUlwCQno": {}, "R52mGNWY5PwRdpLo": {}}}, {"ClientTimestamp": "1984-09-16T00:00:00Z", "DeviceType": "tKhgYs5huLE7ZWUP", "EventId": "VtblGtN7b4hDhxqm", "EventName": "JV6OXmjdshMgUZlm", "EventNamespace": "RAULQbIzexYs4iwu", "EventTimestamp": "1996-12-25T00:00:00Z", "Payload": {"AxrGKCgVpjUPoQ6z": {}, "fJqK0rL1Nd1fem6F": {}, "Qjcwye4DX6Y4Fktj": {}}}, {"ClientTimestamp": "1992-11-18T00:00:00Z", "DeviceType": "hC6FM5lQJwxGGQqZ", "EventId": "kbiuwD6AxHoGjy0s", "EventName": "5naLC3wvRod8t1BK", "EventNamespace": "x9TcaTVPNHJzv8vc", "EventTimestamp": "1978-11-22T00:00:00Z", "Payload": {"PcYXf45uQyZjsf4l": {}, "nahkJwN0XkJsD17k": {}, "DfEBKo6w63Ay26nD": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'SaOi7QJ06FLejDb8' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'yTD448jm8GtZ3XQQ' \
    --steamId 'lc9kHlrnA3GSLCMX' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE