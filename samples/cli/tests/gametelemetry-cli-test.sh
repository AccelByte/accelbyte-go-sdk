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
    --endTime 'X4JyMGmERU7tPwU1' \
    --eventId 'TdHQnATTwYhRZ6Bd' \
    --eventName 'p7ejky9L3IoraRnA' \
    --eventPayload '5XlfSY6RrkDSHKde' \
    --flightId 'PBmxmWLs0b0dS1d0' \
    --limit '69' \
    --offset '29' \
    --startTime 'UB7SzrtGcMRlW9OK' \
    --userId 'ZDF1Z16KRKmxaoXx' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1990-04-16T00:00:00Z", "EventId": "GWIdfRTJS8irazw2", "EventName": "WUGKK9ZmjXC8R3dm", "EventNamespace": "2589fEBylDoU05lp", "EventTimestamp": "1984-06-15T00:00:00Z", "Payload": {"AysL94gJrh1Sdp3o": {}, "NQRFh2An9h8XWoOZ": {}, "cOc1Ahc0JE0mtomA": {}}}, {"ClientTimestamp": "1979-01-11T00:00:00Z", "EventId": "IeO6xS237LEJ8e5Q", "EventName": "g5b44mLvLG1NGnfJ", "EventNamespace": "5unn5XjJviQZVUQR", "EventTimestamp": "1990-04-21T00:00:00Z", "Payload": {"k7x1t5oHj5n2wxMj": {}, "hsRgwx3Wfb90XSu8": {}, "hwE9BYrujpgWrz0i": {}}}, {"ClientTimestamp": "1987-12-25T00:00:00Z", "EventId": "WVvXW0WMZS2gfBQH", "EventName": "2QpPzJvbGfyAE19A", "EventNamespace": "3P9lWt6H7zOCxTnS", "EventTimestamp": "1980-11-29T00:00:00Z", "Payload": {"a8pYksUbeW2gxBaC": {}, "BSY7twHcPWDaQ7DH": {}, "ldZK7VMLc23cLBO5": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'DzdTfISX9Z2MutMQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'memCLRanRo4TpLKS' \
    --steamId 'coSphL6SKXl7Z8SW' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE