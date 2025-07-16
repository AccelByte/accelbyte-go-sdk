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
    --deviceType 'sPdLIHwQW1Ckd4m3' \
    --endTime 'VLy6G7fj005ZMgX9' \
    --eventId 'aP83YVpBYhb0Rzbs' \
    --eventName 'O4pkPHJJLoqDQMLA' \
    --eventPayload '8hQGIX3azjxPOeiY' \
    --flightId 'teL9kzHHX9opOekN' \
    --limit '68' \
    --offset '79' \
    --startTime 'vaPJONjXhPIbFn7I' \
    --userId 'AJYZHDInOen23Mrb' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1975-06-04T00:00:00Z", "DeviceType": "PBFux4pFcz7TNB6J", "EventId": "BCXXK9U1HsAs1DvP", "EventName": "5Y71Pp9GnRX2Yf6Q", "EventNamespace": "EYxwO6uxulcIqcP7", "EventTimestamp": "1991-12-20T00:00:00Z", "Payload": {"eo5rv6xCV4iIZeMp": {}, "LIwFooCiTkN5KBEc": {}, "J4BV9SKhudwP8PMv": {}}}, {"ClientTimestamp": "1984-03-26T00:00:00Z", "DeviceType": "Ix0UBsCjY9ZAKtzQ", "EventId": "FnyduNjfePkbFdzB", "EventName": "hrCEYk75UyKoNfYi", "EventNamespace": "HeoAbHwfIFedNvkq", "EventTimestamp": "1993-04-18T00:00:00Z", "Payload": {"d3aCpm5wpGCFxoOE": {}, "Abi8c4O3JwVVbUW9": {}, "cDfSMZuLWl5Lpi6a": {}}}, {"ClientTimestamp": "1978-01-10T00:00:00Z", "DeviceType": "tthu0Wwc3aGUjc8h", "EventId": "VNqu7d3Qs2oqtUbQ", "EventName": "l21ALnRC508wUueX", "EventNamespace": "R2GO3xQ012iPNgfH", "EventTimestamp": "1999-06-20T00:00:00Z", "Payload": {"QBpTdYLQjJQGtJcV": {}, "AiWo5ANkXysFVVZ9": {}, "JUPV5iGea9idP7IG": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'YOFMWbXMjMvpmzd2' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'el9quQdo1fNKK4Ov' \
    --steamId '5VTEz5jt6SMGfXzN' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE