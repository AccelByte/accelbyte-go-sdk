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
    --namespace '2XPBKw9Y' \
    --endTime 'Rb3yrWD1' \
    --eventId 'xCtvqhf0' \
    --eventName '2BwNUWGY' \
    --eventPayload 'tVjlrFzf' \
    --limit '70' \
    --offset '27' \
    --startTime '0fQWVe0H' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --body '[{"EventId": "q06GV5pK", "EventName": "Gm0wW2ep", "EventNamespace": "irEfJeDT", "EventTimestamp": "1976-07-03T00:00:00Z", "Payload": {"19rc7XZJ": {}, "RH7Ek1sn": {}, "5LpkDotG": {}}}, {"EventId": "jScMzkCb", "EventName": "Wgv7EzLA", "EventNamespace": "qqQDQSUK", "EventTimestamp": "1991-11-11T00:00:00Z", "Payload": {"hEnMKZ1q": {}, "LEHybZF2": {}, "ELsBYu0o": {}}}, {"EventId": "pC0qMIlU", "EventName": "XvVKSZ0T", "EventNamespace": "orgX2ADc", "EventTimestamp": "1985-03-19T00:00:00Z", "Payload": {"DiRL2v29": {}, "3uFtyCwz": {}, "a9kDPk7W": {}}}]' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --cookie 'access_token=foo' \
    --steamId 'MmYQw25w' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --cookie 'access_token=foo' \
    --playtime 'DcpmBGff' \
    --steamId 'YmcGMYAL' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE