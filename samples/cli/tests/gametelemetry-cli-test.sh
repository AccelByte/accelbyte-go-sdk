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
    --endTime 'YzkjQ7XogzEUiSGF' \
    --eventId 'qzp0iBbQykbPzaGp' \
    --eventName 'Om6KG4vWpu9nh9iF' \
    --eventPayload '1Li5Rkmf4IfEfueI' \
    --limit '81' \
    --offset '9' \
    --startTime 'ESKIwwxGMByfR8W1' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1997-01-05T00:00:00Z", "EventId": "xewZAuzX26t5BNEe", "EventName": "Ax3zzPdsfR3USQ5S", "EventNamespace": "seBwQAyZArLDhBcJ", "EventTimestamp": "1997-07-26T00:00:00Z", "Payload": {"IbHAuVs6QaAsW66l": {}, "ssedoM8NUuhp3tzI": {}, "BZjVeicu704FOahm": {}}}, {"ClientTimestamp": "1976-11-24T00:00:00Z", "EventId": "w3kM38NEF8bJ7WoB", "EventName": "Hd2u2FJGCJD5Phiz", "EventNamespace": "W1WFZlZ9skVxe4iW", "EventTimestamp": "1974-03-02T00:00:00Z", "Payload": {"I6MOM5XWLGoXfZIl": {}, "ZCCq8GwvpS1QlpFP": {}, "G5GCgcHqjEzPvQ5G": {}}}, {"ClientTimestamp": "1990-05-12T00:00:00Z", "EventId": "gJg4KvRDTeD4WfR3", "EventName": "DrMIJfRLJVF6MWer", "EventNamespace": "PyIDzPlFCuyL55OQ", "EventTimestamp": "1991-05-30T00:00:00Z", "Payload": {"FFnqAVPUnhq0wcWm": {}, "s3fE2XraewV4vIoP": {}, "c49rewPuBrvntujH": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5EhjnIcUlPqtwvYL' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'XZNFMSihHW0rS4xF' \
    --steamId 'CwgN9R1SU0znv5Uh' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE