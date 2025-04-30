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
    --deviceType '4ZiFiKNwpzhVu83L' \
    --endTime 'NM5MrksB3BqvpPoB' \
    --eventId 'lZ2h88QqWMOJ7m5z' \
    --eventName 'bTFIQSa2yzC5c16W' \
    --eventPayload 'a7furD1id89vmM4C' \
    --flightId 'pt37PhsXHMs4vnap' \
    --limit '68' \
    --offset '63' \
    --startTime 'G360WZMJEmNZna2g' \
    --userId 'AXl6NQiIwIjH5UZU' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1973-02-20T00:00:00Z", "DeviceType": "SdnKxuMlFHZIqqFa", "EventId": "nthCGBwTRPl6Lj14", "EventName": "5X5zrxsuhtIuOSbJ", "EventNamespace": "EgLB9dOezfvRQCdF", "EventTimestamp": "1986-10-17T00:00:00Z", "Payload": {"UUiJI9xB1GEaCW3M": {}, "8WwkxbNMYBd6RHi0": {}, "NB5UQF3km08tqpo6": {}}}, {"ClientTimestamp": "1984-08-09T00:00:00Z", "DeviceType": "CUZCmwDv7i7TD9bk", "EventId": "dWYGjjNzw1MH9xu6", "EventName": "gN9rzN7uAlIiXEcy", "EventNamespace": "gwny5A5UsVj0S15b", "EventTimestamp": "1992-06-06T00:00:00Z", "Payload": {"YuDvriMMBayhNtPQ": {}, "uq58V6WSi6eY1qCj": {}, "bKs2JguiHUZqV82Y": {}}}, {"ClientTimestamp": "1975-03-03T00:00:00Z", "DeviceType": "rXO1i9yHCYhrDYk2", "EventId": "of8H2ujscrjlTSUV", "EventName": "s2KLghhEt54PsMq6", "EventNamespace": "ukxHkyB2rMkxcZDd", "EventTimestamp": "1974-10-12T00:00:00Z", "Payload": {"BEjWlE1RcvSPLXb6": {}, "LrlY1o9tbp92PyR3": {}, "AwQLDNrr3NDJbOse": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'oC3lVevH7VhOhiXQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'woXsNu899VNIU7pk' \
    --steamId 'BXRiF2v2pAw9XY1j' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE