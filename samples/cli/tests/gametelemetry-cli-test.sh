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
    --deviceType '0v2CNYrMY7DMVSCQ' \
    --endTime 'BFadp3hW6HNGXgMV' \
    --eventId 'UTxHN3CEgPHX53AF' \
    --eventName 'HD4s12TSLnLwVqMW' \
    --eventPayload 'FtYKDxTZHrr8bfnR' \
    --flightId 'QjktTz5o0fPh4nPp' \
    --limit '92' \
    --offset '90' \
    --startTime '9GyCeV0eAgLf9mFr' \
    --userId 'MjIC6rNDqzAPyLOu' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1989-01-25T00:00:00Z", "DeviceType": "oOXusGArUxPAgDMl", "EventId": "Qy8mDyugujtej7Pw", "EventName": "GCINGsicus08ZxHh", "EventNamespace": "0rMIeojUh95RAgdd", "EventTimestamp": "1972-06-19T00:00:00Z", "Payload": {"j2Ap9LvKWeHqkZPD": {}, "aXjwJaxzURmIOIKz": {}, "627WgEghmfr0jKDx": {}}}, {"ClientTimestamp": "1999-06-04T00:00:00Z", "DeviceType": "lbH0dxAwMDixVqBV", "EventId": "0hNjEA3WuUZVxrhF", "EventName": "j1tFyDzUmEIgJ0Lr", "EventNamespace": "6L7Inj1a7cYmcIg9", "EventTimestamp": "1976-07-17T00:00:00Z", "Payload": {"gHOBiuaoxvafe2WJ": {}, "DReeOQ98LtAtF3t2": {}, "zMVG8osFfQxgnDVs": {}}}, {"ClientTimestamp": "1972-07-03T00:00:00Z", "DeviceType": "x46ZzjsLahSAdAAU", "EventId": "8H4KuSchoplNNk7a", "EventName": "aU0hO7EMsbqo4TFf", "EventNamespace": "Z77KMj3g97ujbAJB", "EventTimestamp": "1980-01-09T00:00:00Z", "Payload": {"jvGSlPmGZo7F8UXx": {}, "K0KC6cuU8QaoCm4u": {}, "HXAXInyKiLX4Q0l4": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'W1BrOPm6onR4jnNg' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Qci1N19hDdiRwGXA' \
    --steamId 'glEHBSzT6bV4Y1RG' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE