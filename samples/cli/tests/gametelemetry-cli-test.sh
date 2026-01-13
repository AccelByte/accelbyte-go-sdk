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
    --deviceType 'VCZC47Cnk2Cg1CCJ' \
    --endTime 'eiTYZBOU1aeZZmP7' \
    --eventId 'OVpAfLb2B2a52imY' \
    --eventName 'gbK53We7xTMBexNa' \
    --eventPayload 'aWN5rRSSKso5U93P' \
    --flightId 'OJl2Y7KaPCTgjTyu' \
    --limit '81' \
    --offset '87' \
    --startTime 'GkurDgfJVAaN5Odr' \
    --userId '1AAWyd1NrohRKmZz' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1987-11-12T00:00:00Z", "DeviceType": "QIZ2Ne7quHsTAZot", "EventId": "gm6UvxCboUdWa2lP", "EventName": "ArSmuu4VDR9u31Gt", "EventNamespace": "aHoxN415JDb0rGbA", "EventTimestamp": "1979-10-12T00:00:00Z", "Payload": {"BcQ5yMTsvcb7fgbK": {}, "Qw2MNvDLGoj0D6Gf": {}, "k4eCrTbJjCcoTDux": {}}}, {"ClientTimestamp": "1977-07-11T00:00:00Z", "DeviceType": "SpWa4o3J5Yzzc8F6", "EventId": "B5DDxKQjMafTWcl6", "EventName": "P5boDE8T1V2QMYw3", "EventNamespace": "dWo2LWDiJcGwLM10", "EventTimestamp": "1991-09-01T00:00:00Z", "Payload": {"14wicLa883rDFCa2": {}, "jEhoBupeY8c7Musc": {}, "7jmj832smEs3uw0D": {}}}, {"ClientTimestamp": "1972-07-03T00:00:00Z", "DeviceType": "TkGPjKx60vPVwQvT", "EventId": "A0njoJg1ZtLvaPyr", "EventName": "wnpvX0cjbE8Vgyz6", "EventNamespace": "3WVnHDRaK1h2Y6lp", "EventTimestamp": "1993-08-03T00:00:00Z", "Payload": {"9ebLfyzrAhly432V": {}, "9VmwWDg8K3SAm93Z": {}, "Iue5d3cyiBD059rx": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '4dgGmhXIUwK4FSee' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'qdR82StjtJ76y9pD' \
    --steamId 'UOb9YpRwvScOWlp8' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE