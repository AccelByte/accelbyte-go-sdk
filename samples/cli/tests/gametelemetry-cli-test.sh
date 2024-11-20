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
    --deviceType 'OcC9ZLiCQ9VQSMwu' \
    --endTime 'WV65jniipAueAtNm' \
    --eventId 'PtCrnOdHyAwZ3UQS' \
    --eventName 'SFeSYFg9Y2qOa32K' \
    --eventPayload '8Lpi3nVg25Whw9XK' \
    --flightId 'CHiEbzRMRfR3mcy6' \
    --limit '91' \
    --offset '95' \
    --startTime 'K91ZrEPQfFADrsQP' \
    --userId 'V29okqJFTmjrBZTx' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1972-10-09T00:00:00Z", "DeviceType": "tBbS46ncru3u8vJh", "EventId": "8y79uN92CryPQMdd", "EventName": "lI3IkYyZjaWG0W78", "EventNamespace": "0ewh5ffbQaGgQuxl", "EventTimestamp": "1995-03-17T00:00:00Z", "Payload": {"v31b8lDNF9AGQeTy": {}, "Zac4FHI5L8QMqtoG": {}, "11dTQypJEBcvzBy1": {}}}, {"ClientTimestamp": "1972-08-09T00:00:00Z", "DeviceType": "as6feFM7Th7bpBQp", "EventId": "LPu9w8aCZCEnbIwW", "EventName": "cpg0x3egaCqz6pJM", "EventNamespace": "LQqs1Z1TC9f2BmZ3", "EventTimestamp": "1978-12-31T00:00:00Z", "Payload": {"CJpfzSCVB83R1gz5": {}, "3JiLyRcvimjNWju2": {}, "Z0BshmMd8AHTK2GJ": {}}}, {"ClientTimestamp": "1982-07-20T00:00:00Z", "DeviceType": "Cts7s9dBE8uMdybi", "EventId": "4q9aJ7N71mEGmZhK", "EventName": "8bJlWoH2tgTkHUav", "EventNamespace": "P4rlcV2dRGZpYyu0", "EventTimestamp": "1987-02-05T00:00:00Z", "Payload": {"sLfBRfIDEcaxMwwu": {}, "WvimkqXWU3KDN4T0": {}, "2y9zCHOLH04ilbFB": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '9v1dXRQl7UW3hRWg' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '0YAGA0ibcjO8zaVl' \
    --steamId 'V5rvpJGqDzaNHt02' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE