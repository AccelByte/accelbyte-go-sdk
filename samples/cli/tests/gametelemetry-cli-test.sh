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
    --endTime 'whDWsizLnUGtPbfw' \
    --eventId 'eKkrc5ATCvErAeZv' \
    --eventName '3dBaiqpqzSqsPQxQ' \
    --eventPayload 'tkmLmePE7OtmGbOC' \
    --limit '4' \
    --offset '53' \
    --startTime '5wZEwUoryGmKFlDY' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1980-12-16T00:00:00Z", "EventId": "Et7czGndOwuwBG4d", "EventName": "kjOPtc4mA9xs7ytT", "EventNamespace": "OrT8OdmhweJCfiMC", "EventTimestamp": "1980-04-21T00:00:00Z", "Payload": {"CDeqXcjneDVfXWki": {}, "Ju0DJNfeJpdbh5LN": {}, "fQixMbUfqDqNyysN": {}}}, {"ClientTimestamp": "1972-11-05T00:00:00Z", "EventId": "h0UMZRaYLfpuWtZD", "EventName": "iPXz9RdezyXRdAGL", "EventNamespace": "fJIVp4naPKW9YgHW", "EventTimestamp": "1994-08-02T00:00:00Z", "Payload": {"vME6blArV7F0zQvA": {}, "RBHbPbiHT0QD1sQI": {}, "xuJ6eSUN2eQGHzac": {}}}, {"ClientTimestamp": "1991-04-18T00:00:00Z", "EventId": "fZyUPdaoTb37YHkm", "EventName": "alylVoftahfzcOtj", "EventNamespace": "WNst3pVsgBS6EQ3D", "EventTimestamp": "1990-12-17T00:00:00Z", "Payload": {"QYCCOKLnoKSMFVMT": {}, "Fac9eh15FspRWJ0o": {}, "B6qBu3nzzKv7eEBO": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '8xnp0cHD4bAX5QGX' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Ez2rVt9Usigts41w' \
    --steamId 'N7rEHPwE2gBlQaLU' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE