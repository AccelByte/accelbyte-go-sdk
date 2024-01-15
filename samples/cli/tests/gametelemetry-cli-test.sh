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
    --endTime 'JsrmD773xp5x6j7V' \
    --eventId '69PcxLTCe1BasgKo' \
    --eventName 'srMvDpP7GjyDoUdi' \
    --eventPayload 'jl21Kb8iePtPuz8I' \
    --flightId 'mbzx8EZDSG5EHBr1' \
    --limit '9' \
    --offset '50' \
    --startTime '3hnZMZHUAjsnjfq0' \
    --userId '2JY1CMMbIjcgiBZ7' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1982-03-29T00:00:00Z", "EventId": "6rBpypzr7ibsWCuT", "EventName": "X9d3lyGNUfb8d1F2", "EventNamespace": "13c3pCxrmkg98IYz", "EventTimestamp": "1996-08-14T00:00:00Z", "Payload": {"QxSphYP5EKgWI3qu": {}, "UZsfMM5EQmZN6cIZ": {}, "Q99uxfYc2IbPfrNd": {}}}, {"ClientTimestamp": "1989-02-08T00:00:00Z", "EventId": "gDlkXUjVrqrmdUgB", "EventName": "PQPDviDalBMI8ssD", "EventNamespace": "QFBKxkOAPJaKpvoy", "EventTimestamp": "1985-04-08T00:00:00Z", "Payload": {"cc3OdtFj4bDcAu8N": {}, "v5ACzz4MQDKunFJa": {}, "5GMI9fMbIXD9wImj": {}}}, {"ClientTimestamp": "1988-06-23T00:00:00Z", "EventId": "rUzcBVjItQ8NSGwp", "EventName": "c0N6yt331KnSpoaq", "EventNamespace": "5ni05ErF8lS0gEJ3", "EventTimestamp": "1983-01-16T00:00:00Z", "Payload": {"qrCWjUFPEQrJ7MnQ": {}, "UUfh4AKjSyuWmujT": {}, "BBHlgXFkqn3a7p3h": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '9pvwUwp2sty1fKmS' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Sy133hFUAf5rwln2' \
    --steamId 'XsEnDyK6w6TRMJ6N' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE