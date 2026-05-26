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
    --deviceType 'f48SzkjzDSXxgPaU' \
    --endTime 'oyPfCZzLMewzRMVR' \
    --eventId 'ld908jTolpq6Gkjg' \
    --eventName 'h2403gaw9IkJoHIG' \
    --eventPayload 'Jr3BfvUN2QhBOgJw' \
    --flightId 'e3zPKp7ofhifRDfp' \
    --limit '15' \
    --offset '31' \
    --startTime 'nvZEklGwE4wMXsir' \
    --userId 'K4f7dZUvyodGKD1L' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1983-12-10T00:00:00Z", "DeviceType": "zm9WHCwoCOqqt5JW", "EventId": "v945BHryaQdMbEzs", "EventName": "7fokhsd5Jv4XPgtG", "EventNamespace": "N28BdHwLIXE1tybR", "EventTimestamp": "1992-04-03T00:00:00Z", "Payload": {"xwEHbPFfe4GAs1t1": {}, "OxtsmgFXKEhnhrbP": {}, "TeCaraLyj1871JRJ": {}}}, {"ClientTimestamp": "1972-02-17T00:00:00Z", "DeviceType": "YQZpnw133nhK7Tyh", "EventId": "AgP2FEZ81on3gE8C", "EventName": "I8ti5qZ2R5MwJZvw", "EventNamespace": "KhqdWH38BDMnXVgY", "EventTimestamp": "1997-11-27T00:00:00Z", "Payload": {"kLsOFs9RODWzo4LQ": {}, "lHbK3XsgtAj8ut6J": {}, "Ix4VwLws7tlWODxH": {}}}, {"ClientTimestamp": "1990-06-23T00:00:00Z", "DeviceType": "mXYkmuOJcCOPUei0", "EventId": "Pay6L905EDzARCmT", "EventName": "mhaUCFBtEZ3mW6BJ", "EventNamespace": "p8D4McKO9yHrCnRk", "EventTimestamp": "1999-01-19T00:00:00Z", "Payload": {"bVDle8VhsdtfImzI": {}, "IzD4hRe33VufZPtV": {}, "bbtulacs8Kb0jxey": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'RS3YByXaiOpCNy29' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'WQgk1jAK2YvsaLqw' \
    --steamId 'E58hE75uEGA9cLI0' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE