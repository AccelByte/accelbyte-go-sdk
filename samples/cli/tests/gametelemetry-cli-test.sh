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
    --deviceType 'fx28Q4Cv6dafriHx' \
    --endTime 'ZFJia961TqHjhAPY' \
    --eventId 'ehdQ5CERQjCscTOb' \
    --eventName 'wpR606wZNWjR5Icx' \
    --eventPayload 'eCzlucEube5iKSj1' \
    --flightId 'GmD13LGZB7zI7IvD' \
    --limit '35' \
    --offset '87' \
    --startTime 'V7u126VlQLGrDFH6' \
    --userId 'p2nUzy2cCNEufxj3' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1997-11-10T00:00:00Z", "DeviceType": "93bq02sNdyQFIPgP", "EventId": "Fk8x33xeuRLiqUr6", "EventName": "Dy8lFHJa3e9RE7B3", "EventNamespace": "56jhdhkVVBOiuarl", "EventTimestamp": "1991-01-20T00:00:00Z", "Payload": {"JDeEVnUX31OtUIdv": {}, "vuUpK5Xov8di2RDt": {}, "jabHbt9nVYK5ulTH": {}}}, {"ClientTimestamp": "1973-09-03T00:00:00Z", "DeviceType": "wkL7nzy9Qoghmldc", "EventId": "6AwrhI7kJSnAbcmM", "EventName": "wJAD0eFN7TWXHZd1", "EventNamespace": "hBkPi0vZMIVpwgPH", "EventTimestamp": "1992-11-02T00:00:00Z", "Payload": {"9enZnhzlvR71Nfqf": {}, "DhUBR5IbA3GqbxGD": {}, "dgI3UYUr0PCczpd2": {}}}, {"ClientTimestamp": "1974-01-12T00:00:00Z", "DeviceType": "0CKXjmXthBmWRbnX", "EventId": "jiiuQQydEHWhdgiR", "EventName": "ozxgtUHjgsMTJSGW", "EventNamespace": "DcUbQ4i66KuRxAX0", "EventTimestamp": "1998-12-12T00:00:00Z", "Payload": {"WEUMmNLoDCuEhb8e": {}, "dIgH23eV6SScMaD2": {}, "gPDNEAlqwW85oJ2j": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'cqs3HMijSC9XsETi' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'AAZ4PIHYAM6iQfsq' \
    --steamId 'Fp6PIsZgy10Ks2D4' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE