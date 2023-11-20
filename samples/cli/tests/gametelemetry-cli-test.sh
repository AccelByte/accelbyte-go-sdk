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
    --endTime 'i2XcSRzI1dfFTbel' \
    --eventId 'KXneooOWcdWB8g39' \
    --eventName '943wJS8i4EDdPzLc' \
    --eventPayload 'M8rePXb0GTUAUEj8' \
    --flightId 'SwW7AcmsAWuZBm2w' \
    --limit '81' \
    --offset '45' \
    --startTime 'PwSx50HFckw7rgff' \
    --userId '0PLqHsZuxfLJRmK7' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1971-05-01T00:00:00Z", "EventId": "StC51rH7oWDVtTfk", "EventName": "wozDA7vsydtr3spK", "EventNamespace": "g7inZsR7DjmqRGQL", "EventTimestamp": "1994-08-23T00:00:00Z", "Payload": {"4aOiF4Vwl1Eazbvu": {}, "QkkzqbVzhFJcTniP": {}, "6W1F5eBwCJgLDTvD": {}}}, {"ClientTimestamp": "1979-12-31T00:00:00Z", "EventId": "ZYcAhcby38FUHDAu", "EventName": "g04yTk9NWAtv147T", "EventNamespace": "IVweqaxtDa7YxAPI", "EventTimestamp": "1991-01-18T00:00:00Z", "Payload": {"trq64f7ZcwptAQCw": {}, "w8vfoAmVGo4n33Od": {}, "Nvtjdulrpr0SWotf": {}}}, {"ClientTimestamp": "1997-09-06T00:00:00Z", "EventId": "wOVHMMt0YqxN0Tl6", "EventName": "dWp2PZ5I46oRg4DE", "EventNamespace": "z272yeSOfXgV08Y2", "EventTimestamp": "1978-07-05T00:00:00Z", "Payload": {"H0tt0u7HRyILsdI8": {}, "dLgluE3ZzGHSFR62": {}, "oOT6LUrrG31Rzc5E": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'lvbW2WPL71whn0UQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'OU6kRLMNqiHeTghh' \
    --steamId 'Eiygam78N0KLXu50' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE