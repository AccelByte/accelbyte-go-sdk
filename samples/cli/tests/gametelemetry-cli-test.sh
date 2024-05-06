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
    --endTime '8ev2owht2ulwrX9T' \
    --eventId 'Vt8HbikT5KO98bjU' \
    --eventName 'cx96d4kncqb8sZo1' \
    --eventPayload 'Voqiv9loMX77zPVS' \
    --flightId 'Ixkm7XZtwXoToGm8' \
    --limit '23' \
    --offset '97' \
    --startTime 'FLt82MdmdOsWPC6y' \
    --userId 'O55snx1pP7YLSi8S' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1985-09-06T00:00:00Z", "EventId": "GOlLelCl1SlSRDlA", "EventName": "7SSbT73IP6TvWDTR", "EventNamespace": "qfA1SGXQkJYO53QH", "EventTimestamp": "1999-05-30T00:00:00Z", "Payload": {"lMCjCgJUgyuA54gM": {}, "wAh8U1OcUKs1twS2": {}, "pU6NJv5Rp6EiwIVv": {}}}, {"ClientTimestamp": "1990-07-20T00:00:00Z", "EventId": "s0BeSLSFnL6SRyD4", "EventName": "AusrRMAnsI0lJkrV", "EventNamespace": "HgYeSI7w6mhj7QN0", "EventTimestamp": "1999-08-10T00:00:00Z", "Payload": {"CIYyVmjDB7KCrHj1": {}, "3WN1t1Xzp2g5j3NI": {}, "HXIKQOz1d15K51yH": {}}}, {"ClientTimestamp": "1976-01-22T00:00:00Z", "EventId": "J1orpmIEVGgvgd8a", "EventName": "C2A4kDvZNikMtDEm", "EventNamespace": "pFXR7wLVJRxoZKtD", "EventTimestamp": "1974-04-04T00:00:00Z", "Payload": {"VaX6vr4oOZY5cuFT": {}, "5SsNQj6O3uGBI0Hu": {}, "wbIp7G5En1PMg7wH": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5QgSeELBBPr1sYOY' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'dRUNNBvViHm4Vg4t' \
    --steamId 'vLBt8PfaielYicV0' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE