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
echo "1..5"

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

#- 2 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
samples/cli/sample-apps Gametelemetry getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet \
    --namespace $AB_NAMESPACE \
    --endTime 'rsqmpN3Lmue7n2cr' \
    --eventId 'xvuSkJaFx3ZmuvXl' \
    --eventName 'k0ekB8eqrqB0JRHJ' \
    --eventPayload '5elFjEHZYrUTzsfL' \
    --limit '67' \
    --offset '52' \
    --startTime 'COAWMlNv0xB65IsR' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "kArsx2nzLI8E1Csh", "EventName": "7F2zLAm2zXCaScPB", "EventNamespace": "ydtekcvjhVzPhA1e", "EventTimestamp": "1971-04-09T00:00:00Z", "Payload": {"8kY540s9r4XZkNRx": {}, "AzfrWI0yNlewr3j1": {}, "gZuhCOmlyYDQqObW": {}}}, {"EventId": "taOwYw3miluwx63K", "EventName": "JxxCcxxZVGxdTrgw", "EventNamespace": "haZjO2QfexRUH9k2", "EventTimestamp": "1978-09-05T00:00:00Z", "Payload": {"Tij83xMBMPAwujqT": {}, "a0dlAIWnKY7gElMJ": {}, "qsYrf2fSaVDk7izr": {}}}, {"EventId": "lp5r3hL4sXlft5P4", "EventName": "XHv04HHdnQ1Oqs6B", "EventNamespace": "tJMjzd49WvH1XRCk", "EventTimestamp": "1998-07-14T00:00:00Z", "Payload": {"AuyRw2RAvNLT3jIm": {}, "0TaXL224iV1379gF": {}, "ZM4egUcntkalOc3X": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'YrKc4hhfSW2pzRFg' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'aM2cC21ovGhR7ntF' \
    --steamId 'gM3XeIkf93gd3zyo' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE