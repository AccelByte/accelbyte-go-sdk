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
    --deviceType 'jXGBcSaYzUgfjshG' \
    --endTime 'pjhxu4MBPi3waHtG' \
    --eventId 'wBWGg0LQvlFEmoIC' \
    --eventName 'ODeUWrC0uRfK0vU8' \
    --eventPayload 'tAlSkTOWB8xlBxlj' \
    --flightId 'oa4PZyCB0VmGizaZ' \
    --limit '12' \
    --offset '1' \
    --startTime 'Lmm9MBy81OHREyVg' \
    --userId 'E4XCyqq2K5bBR0dI' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1973-01-18T00:00:00Z", "DeviceType": "W6M15PKqGpDZbaYk", "EventId": "uCkTMc3dCcJzYKEA", "EventName": "aqC4CxRlISyVVIq2", "EventNamespace": "e6lrNEVWgVgQYFQY", "EventTimestamp": "1995-06-23T00:00:00Z", "Payload": {"FnmhOc1rU49i6vBV": {}, "vxn7GtIklmd5IfGw": {}, "dJ9EnL6MJnArfEwe": {}}}, {"ClientTimestamp": "1996-06-05T00:00:00Z", "DeviceType": "ctU5V0RursuLbtiQ", "EventId": "nQ2syGPQ40chJut3", "EventName": "AKzmD3bfaweozXaa", "EventNamespace": "tVX4uJlihbsRcMll", "EventTimestamp": "1992-02-12T00:00:00Z", "Payload": {"zKswWfil8SFIBrXx": {}, "fehFaWSb6hwha0gj": {}, "j3BDVTbRzsCyPlGM": {}}}, {"ClientTimestamp": "1999-08-27T00:00:00Z", "DeviceType": "zX3VzVlEn35U9I1z", "EventId": "j5bVyOtB41fweYTS", "EventName": "5ELKhkYU8Qlj4Ato", "EventNamespace": "feLco4h4qpQI4B2s", "EventTimestamp": "1984-02-16T00:00:00Z", "Payload": {"Xg7TeQOjDqielHGl": {}, "Q3nYvi7W5XxCHRpL": {}, "mLedmtTPv2XNji19": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'wsP3kstLvwXT0baP' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'y3sMykaagcgEnNlu' \
    --steamId 'S7R85KoA0pa66Mib' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE