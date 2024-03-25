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
    --endTime 'whfFOvV518jKWnAp' \
    --eventId 'xMGJKYSJI4V8hEMJ' \
    --eventName 'E4C0scmVw4PQVgBh' \
    --eventPayload 'Fk3eQwI4tCOgVQIp' \
    --flightId 'GKH1w8wZ9HV3aIPC' \
    --limit '18' \
    --offset '93' \
    --startTime 'brqzUvG4KeWvIiri' \
    --userId 'VhKt7F6gc87SS3TF' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1993-09-30T00:00:00Z", "EventId": "JgfXCyazT68wcQr6", "EventName": "9mLNF1xLCUGFIlLS", "EventNamespace": "FlnhUnOnKIGyBwDc", "EventTimestamp": "1978-11-11T00:00:00Z", "Payload": {"EzYGjVTUBUCnxudp": {}, "LeGW94lXWB4Yyarx": {}, "LL4QwrNyzF1BEpUa": {}}}, {"ClientTimestamp": "1988-04-18T00:00:00Z", "EventId": "we7gEuazLcOjMzvU", "EventName": "U6c2opA5NbNmAAp9", "EventNamespace": "vNwkKULqiKHQ0fZY", "EventTimestamp": "1971-01-25T00:00:00Z", "Payload": {"QWd9moGcgoLgkHEA": {}, "qT6i52CGU0PQeU0V": {}, "oOKlXlC32KfWC7ss": {}}}, {"ClientTimestamp": "1979-01-25T00:00:00Z", "EventId": "m6ZuPhcu12Z3nwHj", "EventName": "ccrrINHILu4dw70x", "EventNamespace": "33BwE0g42sePoyP4", "EventTimestamp": "1983-05-01T00:00:00Z", "Payload": {"m9dFKaMAoZJYla5i": {}, "4xLy4IaaIV6kIrei": {}, "RTYE8mJhhosaNbkZ": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '9qh91uNFzvvyYq4w' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Cg9wnm9gZdgIj1XA' \
    --steamId 'eixhF0munZkyiss9' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE