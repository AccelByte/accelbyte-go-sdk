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
    --endTime 'Ft94iBuP4cZQi4af' \
    --eventId 'spUmsTA6lDR87NrN' \
    --eventName 'LPRlDlUlcPr31VyC' \
    --eventPayload 'r21dwZPSqbRUTp9i' \
    --flightId 'FoXGgWNMlwzaxeji' \
    --limit '57' \
    --offset '50' \
    --startTime 'uaiM6HTUzQyMkplI' \
    --userId 'kO6STeBNPrIuQyXg' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1995-04-08T00:00:00Z", "EventId": "yACrF1MPAQX0ICn2", "EventName": "oiAmqKO5g5xT15da", "EventNamespace": "NadUqJbQAOOLrJUb", "EventTimestamp": "1973-01-30T00:00:00Z", "Payload": {"YlGxtUa9yHkkSdeu": {}, "FduNxXkvp4z7DEaF": {}, "51qpvHrxvFMLgHib": {}}}, {"ClientTimestamp": "1999-11-07T00:00:00Z", "EventId": "LGaGcm9m714tR1dJ", "EventName": "FiQP3YdLU4BGS390", "EventNamespace": "0yDJXQGUMA0qS5ZZ", "EventTimestamp": "1972-09-07T00:00:00Z", "Payload": {"7cLMlFc93Ne9EcWC": {}, "KV9MsTPYwIKPWgvd": {}, "n7vephrwig81Ne4z": {}}}, {"ClientTimestamp": "1998-04-24T00:00:00Z", "EventId": "SxD6Q1S0n2QMIDOr", "EventName": "ckKA0mUmOGcWTZ0Q", "EventNamespace": "aZFTUU2tczcP45gi", "EventTimestamp": "1979-01-05T00:00:00Z", "Payload": {"HaS3YnTneOH4X4N3": {}, "U0zy8UdokRyROZJW": {}, "DBT8uSNiLSu9aETg": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'boeTQznWEpG2Vml3' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'oPcOIKbyoWwBJt2c' \
    --steamId '4S2ypI3ZDEvnGIdi' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE