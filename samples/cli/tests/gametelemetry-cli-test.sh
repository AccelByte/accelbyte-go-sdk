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
    --endTime 'VKpwmg0tLl4s4rRb' \
    --eventId 'dACKZxIg7KaHwvRm' \
    --eventName 'XtvRZw3CylzTgFoJ' \
    --eventPayload 'PYtJ5Qqg32LbVgY4' \
    --limit '48' \
    --offset '67' \
    --startTime 'd6j7fo5JV9HzGQwc' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "qE61GOuasYHeEtwy", "EventName": "KNmsolIILT11FKhz", "EventNamespace": "pwD0eYTEPySdSrZ2", "EventTimestamp": "1972-03-05T00:00:00Z", "Payload": {"T58DnwiXsIwhvw45": {}, "4HPzvXDaF2QRnOtX": {}, "lNheaK6GqAvM2ECW": {}}}, {"EventId": "w32Kvb7bKtcGVqw4", "EventName": "HbxmroipY9Z77bYl", "EventNamespace": "ow6yQI7TrbW9A0GL", "EventTimestamp": "1986-12-05T00:00:00Z", "Payload": {"FamjTzMF4QHjZX0L": {}, "cfCD3pVTk7Mjsq7o": {}, "2hXa2ApRo1LmVl8z": {}}}, {"EventId": "Rw3y1pi1k7s7VQ61", "EventName": "jxAwxdyWHu6zg708", "EventNamespace": "CzdT5YWkZTkFzZJR", "EventTimestamp": "1988-08-04T00:00:00Z", "Payload": {"l0kV4pKuzqchyQjg": {}, "1RQzbFCb4TxsLTH7": {}, "97zxcg0ngqnVqsng": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5c041B6uE1S4CQEx' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'CxnKwNSsFzwcDrn3' \
    --steamId 'NSsM0xw8DEkQcmtZ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE