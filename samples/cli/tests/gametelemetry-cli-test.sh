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
    --endTime 'Gs6DUBIZ' \
    --eventId '6O2TSAZ2' \
    --eventName 'HQzC8Bsv' \
    --eventPayload 'DWmQeXn4' \
    --limit '18' \
    --offset '93' \
    --startTime '4ASsB42Z' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "5AKtVPFU", "EventName": "VpPRnv0D", "EventNamespace": "lsvjr0l3", "EventTimestamp": "1989-02-01T00:00:00Z", "Payload": {"ZDzIkFkR": {}, "5j6ZPnYs": {}, "sQ6RaDPc": {}}}, {"EventId": "mWvNXDXO", "EventName": "AeB6s20E", "EventNamespace": "KQDmq4uH", "EventTimestamp": "1990-12-14T00:00:00Z", "Payload": {"lrbUv5yp": {}, "xO5rGPSp": {}, "rVCW7kgb": {}}}, {"EventId": "EfJHzNCN", "EventName": "zWx6wIty", "EventNamespace": "FiYUPygp", "EventTimestamp": "1972-05-07T00:00:00Z", "Payload": {"XkSNhwfc": {}, "xeW5yRCN": {}, "UANKU8QM": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5zj1nxVU' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'wkMgNmoV' \
    --steamId 'KvH3iOQz' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE