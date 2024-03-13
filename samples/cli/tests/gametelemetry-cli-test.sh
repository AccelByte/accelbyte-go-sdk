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
    --endTime 'BeqFgE1taDuuv0SL' \
    --eventId '8NPRFancHa9rDSNU' \
    --eventName 'Nz5Fq5cvZUoNfb0C' \
    --eventPayload 'M16Ixe5zl1DDu1B9' \
    --flightId 'ldEmm97SPWXKNB0d' \
    --limit '93' \
    --offset '80' \
    --startTime 'cEYxBOdFZPKNDufM' \
    --userId 'WqgkwmXPMj5USFYB' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1980-11-04T00:00:00Z", "EventId": "eKCMVJ5w29iwL7Oc", "EventName": "8mSX6T0VAf9DqrJn", "EventNamespace": "85fcXY7ZiP6ZQUlu", "EventTimestamp": "1986-08-06T00:00:00Z", "Payload": {"8s0etkNWdHwq9qBX": {}, "6laQFeLh2nxd1UwL": {}, "1oeh2m0XptVg8giS": {}}}, {"ClientTimestamp": "1975-08-05T00:00:00Z", "EventId": "JtdpqLSKlUdGU23E", "EventName": "y8FXbmLHZJAwaC4h", "EventNamespace": "7j0CL4DtOP8bLyv8", "EventTimestamp": "1979-12-24T00:00:00Z", "Payload": {"f7Jo29BGpd1hWNuG": {}, "mFWyVnZIV2h5MeYu": {}, "re49DvBJ9BH9gOFM": {}}}, {"ClientTimestamp": "1977-06-29T00:00:00Z", "EventId": "nBDjrERVZLcpstik", "EventName": "9RJdwDDUkkTo3lWT", "EventNamespace": "Afguk9k4BuqYy45v", "EventTimestamp": "1979-01-25T00:00:00Z", "Payload": {"QJuPDOWxnPmHdhfn": {}, "SzDCfpZ1r0krFZiy": {}, "INTfTUHNAvB7H6S0": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'CRLL5dds7apoG4dh' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'LR5MV0Ymj4qKwYZL' \
    --steamId 'MZkMTUBJaeHKeXuT' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE