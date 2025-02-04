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
    --deviceType '8n4kFdMzWTXOiZiU' \
    --endTime 'jW7xllE83WTSOikT' \
    --eventId 'GgaJsUhiQdHwXqp3' \
    --eventName 'yAr1AFcEnJcvYjYw' \
    --eventPayload 'aS5qnUerWjR3DwpM' \
    --flightId 'DvibHi8GYgB8bpKy' \
    --limit '89' \
    --offset '85' \
    --startTime 'H9rtliAsE85hGgVX' \
    --userId 'or9qxbMFbUyIOrZW' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1989-04-04T00:00:00Z", "DeviceType": "c4XZEBv4bYts9Sui", "EventId": "NonMGalIjs7sNHtU", "EventName": "QouSiGfecyetMhg7", "EventNamespace": "D9J5uYSA4xJEL3Yz", "EventTimestamp": "1995-04-25T00:00:00Z", "Payload": {"fzWvEPWvZQNA2aGy": {}, "glld5Z1vLhE4kjLg": {}, "ALJ7Anwl3PHxUBEC": {}}}, {"ClientTimestamp": "1977-12-26T00:00:00Z", "DeviceType": "K6RkiclwfZJGcmD4", "EventId": "xBPOBSBY1tdzdXK4", "EventName": "wB9CB9r04V2m5WJY", "EventNamespace": "rCifKu51BLTKfZg0", "EventTimestamp": "1978-01-22T00:00:00Z", "Payload": {"ErY3keXflPymkjHM": {}, "Zq6mrziU1aM7qrui": {}, "rKEK6Ot31TUSnOSx": {}}}, {"ClientTimestamp": "1974-04-24T00:00:00Z", "DeviceType": "w4jdS6vCAgwCvle3", "EventId": "W4EzqZfhG7bAcu8R", "EventName": "5MudrQYTHy1TbZ3c", "EventNamespace": "3LdqthIKcDqxi1pC", "EventTimestamp": "1996-01-25T00:00:00Z", "Payload": {"169vcNO2ZBhiqHS9": {}, "kNsf4o4Jgsp0d8Hj": {}, "T62IHEVdI2cAn7iT": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'RO1sCIVuWp0ZkYCy' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'BgjRKogsCcRzUv37' \
    --steamId 'h7B3lIOb4rOGWnkS' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE