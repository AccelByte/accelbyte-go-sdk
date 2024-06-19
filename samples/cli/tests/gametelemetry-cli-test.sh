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
    --endTime 'IuYPLiyoksm1gnCy' \
    --eventId '1C3usrRR1TwF7NTm' \
    --eventName '5SvtQ37U55CI6Kw2' \
    --eventPayload 'axqtmHwqGABI61LX' \
    --flightId 'D3uJnDeYKoAzwd65' \
    --limit '34' \
    --offset '87' \
    --startTime 'VeWFnhYAmTUGmhfU' \
    --userId '2Z0aNZxiRtRJjDdl' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1987-06-19T00:00:00Z", "EventId": "uQmURAMvLLZZEr7S", "EventName": "4lOTUYX3LrpOFXgN", "EventNamespace": "uFA8SDMIseJFVMoy", "EventTimestamp": "1997-08-29T00:00:00Z", "Payload": {"hZalinOGx7YwGF8w": {}, "J0NGZ69zsJQfgdzh": {}, "ZYuvyQULdLwSCkwx": {}}}, {"ClientTimestamp": "1981-09-21T00:00:00Z", "EventId": "grolm72UTXiqPyN9", "EventName": "WEo2TnbHywg0h2jX", "EventNamespace": "9MiJlTP01qJwcF8W", "EventTimestamp": "1979-05-17T00:00:00Z", "Payload": {"41bJMcgG0ZBpkS0N": {}, "XMJtU1jeVG1LUwem": {}, "T6Q0i2yehkRnrD1s": {}}}, {"ClientTimestamp": "1991-08-07T00:00:00Z", "EventId": "9vOfdskRn9Ix6Tft", "EventName": "BqZlAiFcXrTfbd6w", "EventNamespace": "Rgi1DVX7nYgI8919", "EventTimestamp": "1975-10-17T00:00:00Z", "Payload": {"XBMy7aoYpCnc6Re9": {}, "4wu6yIqfILnJ45Ys": {}, "4T6mew1xFOPYZFbo": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'Z7OvU359ynmY3Phr' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'xUPSSqSAdb1spvrV' \
    --steamId '7PTWm2R53YBdiHaW' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE