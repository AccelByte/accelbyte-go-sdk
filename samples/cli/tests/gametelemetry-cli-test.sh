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
    --endTime 'aocZtn4ElhO8BT7S' \
    --eventId 'b1H76h89LG6ElocE' \
    --eventName 'szh3nObMUaPnEHpY' \
    --eventPayload '6z1GD8TXIFaEsOmZ' \
    --flightId 'jWg9Hze5oYRnEoxR' \
    --limit '95' \
    --offset '93' \
    --startTime 'bC1EpXmVgZZQTYPI' \
    --userId 'gJ79cMTGjIkdvpU8' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1976-07-11T00:00:00Z", "EventId": "xElP5jH1OCIk95LB", "EventName": "pMoo6pzUCgVKy99n", "EventNamespace": "UUjhyjyl4mnFMESy", "EventTimestamp": "1980-02-18T00:00:00Z", "Payload": {"vv4YMpgQWxkrW78Y": {}, "YkKYSflCrcXs3zMx": {}, "aSdXc9TBpwUreCOZ": {}}}, {"ClientTimestamp": "1996-12-31T00:00:00Z", "EventId": "nDGoOep1DZFYvgK2", "EventName": "rWVxX10o1GLm3Nar", "EventNamespace": "gob7SHNKX18CIA31", "EventTimestamp": "1980-11-25T00:00:00Z", "Payload": {"qw3CHNzBtQBgD2th": {}, "iUSoYbOKRO2C0UYa": {}, "g2uYcTeWcLfWpwd8": {}}}, {"ClientTimestamp": "1992-03-02T00:00:00Z", "EventId": "FNNq6qigiplMMxOb", "EventName": "obpL9ivBKw83h9fb", "EventNamespace": "tcxO6PS8Mumna0aE", "EventTimestamp": "1983-04-27T00:00:00Z", "Payload": {"gLgVLS6ZLoraBRIS": {}, "SN83CgH2plb61lSw": {}, "qCRuFS0QHcnrB7H2": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'DR6ZtpycisjU8TTr' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '3M693dK9A8Q68dRE' \
    --steamId 'xV401cU1EtMJ6eC7' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE