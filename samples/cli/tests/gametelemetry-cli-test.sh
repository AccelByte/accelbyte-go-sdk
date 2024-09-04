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
    --deviceType '2jEcOAFnwVaImgAk' \
    --endTime 'E3vXSHcdGt4cZXhl' \
    --eventId 'ifrAxoNQU0reB56Q' \
    --eventName '3jRlqTvlLbNNVj6z' \
    --eventPayload 'Bz5tUYNvCUlIvzZR' \
    --flightId '5AlLxPEZE7I96hC7' \
    --limit '2' \
    --offset '8' \
    --startTime 'zCpW5BL8JQ8IQJba' \
    --userId 'ED9L58Xhs5yB1fWm' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1999-04-28T00:00:00Z", "DeviceType": "AIuzxheuRuYjq2l7", "EventId": "UfbwoWMIbFhE3DvB", "EventName": "izYRtL3KEcNEs9FI", "EventNamespace": "Q57gwyNsJQhIcjbZ", "EventTimestamp": "1987-09-24T00:00:00Z", "Payload": {"Bf6pKgwbniBBpUzD": {}, "CLasspfo9TO694Ui": {}, "E2F2I3GipJScY3TU": {}}}, {"ClientTimestamp": "1994-01-24T00:00:00Z", "DeviceType": "Z7YE2paunjixxTeR", "EventId": "OZWorxmY8U1lyoR8", "EventName": "f7LhsmqvwWkcXiOK", "EventNamespace": "vZmE3bo4AXRPfcL0", "EventTimestamp": "1999-06-10T00:00:00Z", "Payload": {"CwQMxnxTvSaqkSKq": {}, "XBlTicCcxANgZz8m": {}, "4T8t3loauFnanxUW": {}}}, {"ClientTimestamp": "1995-07-15T00:00:00Z", "DeviceType": "JUGV3GPdNJqgVPts", "EventId": "ToQdwbuWsBB9joly", "EventName": "6abQJHIdvvunTja8", "EventNamespace": "fBUePYkVnSzjZN4C", "EventTimestamp": "1986-06-22T00:00:00Z", "Payload": {"4CTkpats5jAgNpRM": {}, "4NbBYdeudEn9e5TH": {}, "XKrcTCSrx20NB6G1": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'ohK9ErTsDHpB4KNN' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'grY48FZZoWJZ4w2X' \
    --steamId '21cPvB92Hm6EPvlC' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE