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
    --deviceType 'Z3SVrWAa713LDKG2' \
    --endTime 'TkbPVUAipSL8gYkQ' \
    --eventId 'vN5JKqYqT9yCFQHY' \
    --eventName 'DpLHiTzEQnxC3DUd' \
    --eventPayload 'giZ4itQWc1qrqNnR' \
    --flightId '70KBkemPNBEkh9cu' \
    --limit '61' \
    --offset '97' \
    --startTime 'eXSn03qFCQ6ZOBCp' \
    --userId 'a6Q5GLhqAxWvUvOm' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1980-05-14T00:00:00Z", "DeviceType": "g99SIdSRmjNcVDy8", "EventId": "TYqHPHLHPEZabuvm", "EventName": "1ITJTHYaXYWZxBuP", "EventNamespace": "RySHmOHMtVF0IGeO", "EventTimestamp": "1974-11-09T00:00:00Z", "Payload": {"vQyvghmnsMZy7rYc": {}, "U7ne6roEyKx5h3nr": {}, "q2BhrWrJvSysz5CX": {}}}, {"ClientTimestamp": "1983-02-12T00:00:00Z", "DeviceType": "NbAijNfYXWRd3UG6", "EventId": "U31XuVv5zt0n6rTB", "EventName": "4xhzSfS9z5divmwG", "EventNamespace": "9Od5AI1aHHaWGoNz", "EventTimestamp": "1987-02-02T00:00:00Z", "Payload": {"VTiOt878vvBTwblD": {}, "cATkTYIVxeQpoFE4": {}, "EIgStfphEpXQuJVf": {}}}, {"ClientTimestamp": "1996-11-02T00:00:00Z", "DeviceType": "NAXrolouEUHETjDD", "EventId": "BBl4Ziqq3PVfzEvK", "EventName": "JwSqFJaQm2E0n5K0", "EventNamespace": "F0DHRiLmwwX1Qd6L", "EventTimestamp": "1982-02-28T00:00:00Z", "Payload": {"PHcVzczUxv1VBwqR": {}, "wJBhzaRdEW1Bwt53": {}, "p12WSu0xU7fA16Uj": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '9ydAfRWM4HBQ5hah' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'CqrH6MtPxy0I5Kkm' \
    --steamId 'AjHI2tCLSzTLVCQe' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE