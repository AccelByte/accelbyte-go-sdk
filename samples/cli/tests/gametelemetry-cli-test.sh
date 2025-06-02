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
    --deviceType 'mcRBoMDJI3VOhq1e' \
    --endTime 'XA9YbhYsuY0OCR6d' \
    --eventId 'Ph0HtnYysB55RSPi' \
    --eventName 'bsiCF4qELAhraUWP' \
    --eventPayload 'LhbgG8sKwdtSts0h' \
    --flightId 'H75eFYYbao0EIVdc' \
    --limit '46' \
    --offset '25' \
    --startTime 'bJwIvIx3xjZZ9l0o' \
    --userId 'GaKx2d6jbdIXbX1z' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1990-02-16T00:00:00Z", "DeviceType": "jqdh82jrkBmdUqhj", "EventId": "tlympn97Lzt1jzp7", "EventName": "2TvfNSL4s1fZj9r9", "EventNamespace": "LqprDfAG9i2baJFk", "EventTimestamp": "1973-12-21T00:00:00Z", "Payload": {"OfTaEjzbmMscuMsH": {}, "tev3UaUfjbbi5Xo4": {}, "9WnTY78WvO9tMaLI": {}}}, {"ClientTimestamp": "1976-04-16T00:00:00Z", "DeviceType": "Y4xALEfxTGO1Nw4y", "EventId": "uXX4s1xZnm2fC80q", "EventName": "dord5T2v63HB4yJ4", "EventNamespace": "75u0hQ1P9H7UM1bK", "EventTimestamp": "1996-01-09T00:00:00Z", "Payload": {"H4DiAMgTtjAgjOuJ": {}, "3VVHwfjhOdZmgjt5": {}, "ArEulDZVEVHWA7QK": {}}}, {"ClientTimestamp": "1979-09-20T00:00:00Z", "DeviceType": "WSWYiYk3EiqGB2wF", "EventId": "NPBmf1E3z8tUWGD6", "EventName": "4M1vTup6nFoFyyqF", "EventNamespace": "6nr9Z3hHnkS9DzVS", "EventTimestamp": "1999-12-25T00:00:00Z", "Payload": {"AENzUFhjz8GLfFjb": {}, "UpHMywHHSvZ5elSc": {}, "EhIMmyfQddru3rwd": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'BSMGQWSo3PDRqTKc' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'k43DSzKRj8IL9N0K' \
    --steamId 'Tyw8ynyh6tjIbZ28' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE