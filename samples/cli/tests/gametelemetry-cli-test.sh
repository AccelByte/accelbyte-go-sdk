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
    --endTime '4Glvi0e18YVQNWS1' \
    --eventId 'a9z0JFnWW3ahHjHH' \
    --eventName 'o6bhxd2MihAP6LHn' \
    --eventPayload 'kQ9Syds1DLy2Af9q' \
    --flightId 'WbdPcgW0rdPQ1i9m' \
    --limit '41' \
    --offset '48' \
    --startTime 'cxbFeyASq6d1SW9t' \
    --userId 'tzk7SkX1x4CXiTrA' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1983-07-18T00:00:00Z", "EventId": "HS47GoJ4ScUdPkmv", "EventName": "hRKEnyMVBdfkPOH5", "EventNamespace": "iedD0lOtn7FbUwqX", "EventTimestamp": "1986-02-20T00:00:00Z", "Payload": {"EvShu2ofXk54lJ27": {}, "9JXP0rPIpmAHj7A4": {}, "B4LkQa2vF0SO4NI2": {}}}, {"ClientTimestamp": "1995-06-25T00:00:00Z", "EventId": "S4gsyuJxfwtegg3R", "EventName": "dmhCcDr7XXepWtX5", "EventNamespace": "EvRNMDC3OvI2NIly", "EventTimestamp": "1994-06-24T00:00:00Z", "Payload": {"vSxcmobXoq2nmEpB": {}, "CWxdo6OOGsEzjLkL": {}, "mWrhhnExNzkXQnGD": {}}}, {"ClientTimestamp": "1984-11-23T00:00:00Z", "EventId": "zNG2FBPUwyKXUrW1", "EventName": "x1y3VKyNUggEbzHy", "EventNamespace": "SbXhEcy2Hu80q86R", "EventTimestamp": "1982-10-12T00:00:00Z", "Payload": {"ccvj8A1SIIccXjKw": {}, "LMQAjwLiZmqUMqyO": {}, "UdMseDaUWO5FsfI2": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'FHcnXLKKYRr915kt' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'N6Re8CjiDRqDNtrA' \
    --steamId 'rXVjS1s0PhTS1Z4z' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE