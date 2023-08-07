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
    --endTime 'lbXzEVqzR2T3TqaO' \
    --eventId 'qeSWi2fIAvdu0mQm' \
    --eventName 'AI3ULMXAMmCMrIsZ' \
    --eventPayload 'WO1m8RqCaOil0FOb' \
    --limit '55' \
    --offset '51' \
    --startTime 'wRbTwWEOWxFNibSn' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "N7z2rFPgjWBKuPRG", "EventName": "LwR2ffCIOdfImFZE", "EventNamespace": "ZzxCJeQWKeMugf8U", "EventTimestamp": "1975-03-22T00:00:00Z", "Payload": {"c8rVJpbIUJ7zuYmK": {}, "zHprfKuiE8BgLynV": {}, "CR8JfPWSRZOlTj3r": {}}}, {"EventId": "P8govDksMVe5BAYL", "EventName": "NvZrAavvRVLpsolf", "EventNamespace": "FBaIx8cnH4kv6tcl", "EventTimestamp": "1989-02-07T00:00:00Z", "Payload": {"wUh0IzXAAF9CZBiS": {}, "nWcbWhq1U6g29NAt": {}, "3pmZJw3z7wofyQQE": {}}}, {"EventId": "8jduRXVtosdu0Gjn", "EventName": "olsIzTnaSQwihEj7", "EventNamespace": "dzHuO3cDHmNMv8ZL", "EventTimestamp": "1994-04-28T00:00:00Z", "Payload": {"57qyMvByNAY2KwPc": {}, "R3ekiHlmhjs58yiP": {}, "nSRGX2woSlbinWJ0": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'LKosRaMoURDUHiqK' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'gRX7hW2cNVNSnf3e' \
    --steamId 'CESbEcgpYcQiDP9Q' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE