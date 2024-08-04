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
    --endTime '8tIgeNR280ryQEnr' \
    --eventId 'Bdxgz45IdT5FY8u9' \
    --eventName 'e75Qh0lT3CS9BBK7' \
    --eventPayload 'Py2Mhv2gvRiUKqs1' \
    --flightId 'sK30epLtkrl6tvEn' \
    --limit '32' \
    --offset '78' \
    --startTime 'qUHKAZIvix5F054Z' \
    --userId 'RAVukkCDpibuR236' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1974-11-19T00:00:00Z", "EventId": "Q7ROpUsnSN7Av4FW", "EventName": "Jk4sjyhr2jTELffd", "EventNamespace": "RLj1Hdev9zJCDChO", "EventTimestamp": "1978-09-25T00:00:00Z", "Payload": {"CAr0tI8ShWq3XtoA": {}, "b4xDpe1DY3B8RUHC": {}, "ybNgvuJYWJDllv6t": {}}}, {"ClientTimestamp": "1980-01-01T00:00:00Z", "EventId": "2MoovyZ4xqyJJKfs", "EventName": "6RRSaoSOuAWnx4jM", "EventNamespace": "OBScaZ5Z038agV0p", "EventTimestamp": "1981-05-19T00:00:00Z", "Payload": {"p4DLCgnSDiEqn7hN": {}, "cG6whA2HwESw4O1O": {}, "hCKNYCG24KhOxGfV": {}}}, {"ClientTimestamp": "1996-02-03T00:00:00Z", "EventId": "2T2QFBpVGWDqXCMM", "EventName": "nGfe1lxHN4Aq7FDX", "EventNamespace": "8bNICBjXMetnKU5H", "EventTimestamp": "1983-12-04T00:00:00Z", "Payload": {"u5Bo02GwvcKy7aWT": {}, "qBcwIsAsjSl6YF8v": {}, "EHmadCEyNFlsJEjb": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '6kg0gWwj8Ry4chC0' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'OJiIJULkk2TiaXVk' \
    --steamId 'jNyDhawNDPUwfwwE' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE