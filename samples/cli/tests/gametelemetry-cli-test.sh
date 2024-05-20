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
    --endTime 'FlJc4PHs90UWeCc4' \
    --eventId 'z6JHz0JqMcg3th4E' \
    --eventName 'ArGLL5fNT6RhVAZi' \
    --eventPayload 'URAVooVszdXRqf7d' \
    --flightId 'AKsSbpTiHXAN1lLg' \
    --limit '22' \
    --offset '48' \
    --startTime 'BHfLnLdBEw4bBZ0F' \
    --userId 'JEF51AeOFXYV0N5b' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1987-04-15T00:00:00Z", "EventId": "WggMNwa1V8spg7Fu", "EventName": "wm499lm8wmnRnfmb", "EventNamespace": "O2cnWYdvM6ec5Hic", "EventTimestamp": "1995-10-03T00:00:00Z", "Payload": {"DfBMHkOOJTtOWeEO": {}, "KiONkPQLcuQjwx8d": {}, "XbkIdIbngTygn9Lt": {}}}, {"ClientTimestamp": "1984-04-15T00:00:00Z", "EventId": "133Jml36wJULwrTT", "EventName": "GQvevScM9m65MSJf", "EventNamespace": "vgr66D8WlyfeuvyK", "EventTimestamp": "1972-04-08T00:00:00Z", "Payload": {"3F83Ao2c6786dGzs": {}, "vJM1iHyWhcbAClX3": {}, "W9MAY8LQDAzgOPG1": {}}}, {"ClientTimestamp": "1984-09-30T00:00:00Z", "EventId": "pLhFKETLa3fWAXpt", "EventName": "LMwsFPOJSgjFp6Ei", "EventNamespace": "QH0g2Pw6mmsSJXB4", "EventTimestamp": "1990-12-25T00:00:00Z", "Payload": {"Jxcy198Cy9AWo2Ou": {}, "mh7ujxe5OhJyDQDJ": {}, "J1tkO80is5hjJVLO": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'ushz7PSHHjvTm2uc' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'h1MubIs35UZo2LYO' \
    --steamId '3r2ertUsrGf8PnRH' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE