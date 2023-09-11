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
    --endTime 'HOyZ2ZdL0m4I3YSh' \
    --eventId '01oo8U0oHS4WiOox' \
    --eventName '5QKQwQwEfuXzSzK8' \
    --eventPayload 'jF1LU6EeYU95gdDS' \
    --limit '18' \
    --offset '91' \
    --startTime 'I6M69OMbYoK3TCfZ' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1974-12-21T00:00:00Z", "EventId": "YpCc5kWgIGbuzqfa", "EventName": "NM5yUe9uBGPXeqEl", "EventNamespace": "Jf2SUEE3AnGPEhIx", "EventTimestamp": "1996-06-19T00:00:00Z", "Payload": {"048rtIF9mGywzcgK": {}, "sxsJAAq6xMvdTrOz": {}, "rwrn1sETzBQBP042": {}}}, {"ClientTimestamp": "1996-04-19T00:00:00Z", "EventId": "AXOa8hqw4M7cAa9C", "EventName": "nwIe2QcRWyJZ5dSG", "EventNamespace": "aKcfb4q9SplS5B7k", "EventTimestamp": "1997-10-21T00:00:00Z", "Payload": {"Vgbggs6z4BRFbyV1": {}, "xxrc1l0P1M9046xp": {}, "akOMUAFhUYmYfC55": {}}}, {"ClientTimestamp": "1972-07-12T00:00:00Z", "EventId": "w3vMyfbpdyutFCxi", "EventName": "xuySj8RX9wSo8Szr", "EventNamespace": "Y6PoL99DRPeGcTLB", "EventTimestamp": "1981-12-10T00:00:00Z", "Payload": {"yBVa4S3PhEIbb4xi": {}, "yQWwrUx40ZIHynet": {}, "TFoPuf5e61PsVf7T": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5Pdy0lWl9DseetVp' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'zLt5P1lTfOEm279H' \
    --steamId 'D4yLRpdTO2nFJmKB' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE