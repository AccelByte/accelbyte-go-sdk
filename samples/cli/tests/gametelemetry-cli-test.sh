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
    --endTime 'eWAMn4iJengFnkbg' \
    --eventId 'gJoD0ObSyNROgeqo' \
    --eventName 'O1sreVeXNPXWFBY1' \
    --eventPayload 'lwZKiYDq5p7ZmBrV' \
    --flightId 'BGUoBa4u4XwUEYJG' \
    --limit '16' \
    --offset '74' \
    --startTime 'fHI19BhLxhSIKy9i' \
    --userId 'MOmfB5usDDuJ0CIE' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1981-09-17T00:00:00Z", "EventId": "6sN8k0Ef0naObtEY", "EventName": "WP8M3DZADpSuYQQY", "EventNamespace": "LuQR6ctJuQD1q3fE", "EventTimestamp": "1980-08-11T00:00:00Z", "Payload": {"jGKjmxGMRD2YZLtW": {}, "PTPH6xZYwVpiJpIi": {}, "FoZ18xmn1d9J9Iid": {}}}, {"ClientTimestamp": "1973-03-18T00:00:00Z", "EventId": "PvYduX79DxKuKfAz", "EventName": "d3x6tsRT1M9x1JrB", "EventNamespace": "arTkzpy4QoqHk6fb", "EventTimestamp": "1983-08-31T00:00:00Z", "Payload": {"TvHK7XuHmEgZS6wf": {}, "2WgJ3UzWgVPg5Yxf": {}, "gME4NtBIl6HC982h": {}}}, {"ClientTimestamp": "1984-03-24T00:00:00Z", "EventId": "80JNSrGHALn4jIZk", "EventName": "XwSoeih2vUAJjg5N", "EventNamespace": "mox1wlASzw5vuSnM", "EventTimestamp": "1973-09-11T00:00:00Z", "Payload": {"ljyQSoD3Acf5c3uk": {}, "f3xINrParXvIr58o": {}, "Uz9qW5t5yB4FgCDY": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'mgygQ9sfuLgKY1XU' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'AsDlncMvSvz6rW1N' \
    --steamId 'HV9N7xHAgFDOq2k2' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE