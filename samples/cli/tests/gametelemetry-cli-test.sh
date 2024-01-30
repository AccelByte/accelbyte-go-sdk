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
    --endTime '6UZ8IAbBBTzopQRg' \
    --eventId '3B5lDNqc6ZhvB4cF' \
    --eventName 'Bi5gSjy7KmsDSzPy' \
    --eventPayload 'AdPehhB6RqDl5uep' \
    --flightId 'lTjlo5wZZiOzR50x' \
    --limit '13' \
    --offset '35' \
    --startTime 'q2mSrb38eSTAowjV' \
    --userId 'FL01CnBX6q90lMqL' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1980-07-10T00:00:00Z", "EventId": "cI1HHSAkB3YNHad7", "EventName": "pf6VcXN3KvFuYiJv", "EventNamespace": "Rz2Oz8ifpSYYbgA9", "EventTimestamp": "1991-02-03T00:00:00Z", "Payload": {"pv4i437MqRV2fV5q": {}, "fAxwwcdD4aBFwmCM": {}, "THVKGgvvPq7pR9kz": {}}}, {"ClientTimestamp": "1971-03-01T00:00:00Z", "EventId": "ZTGgyJaEwbkkIOOx", "EventName": "tUDtll8kOIFOSL75", "EventNamespace": "qTCovyAbflyZ4WjS", "EventTimestamp": "1972-04-19T00:00:00Z", "Payload": {"8p4X8nCTtXSh2AFC": {}, "Pctvqe9DweWc15gY": {}, "5Tb57qs8qep2T6Nc": {}}}, {"ClientTimestamp": "1998-08-29T00:00:00Z", "EventId": "MzFic2QnRgEj18hW", "EventName": "M2YXsKIohxnkZS1U", "EventNamespace": "BFlLQSioBoBtNsEm", "EventTimestamp": "1992-06-10T00:00:00Z", "Payload": {"MhuNx79EtUgVZUf3": {}, "4M2KJJ2wuI98b9IM": {}, "qwOdCUscB2v52GKb": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '0uN29USPapvfjeCj' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Pfp6NGkkPoV3hmdc' \
    --steamId '1TZagWYVmcAmOdKu' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE