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
    --endTime 'BWl6S3j7IxKrcj0V' \
    --eventId 'lANVvTVpVateFUAU' \
    --eventName 'l7jEqnv0mDNAnZaP' \
    --eventPayload 'Y7zOf4WGxiZGYPD2' \
    --limit '70' \
    --offset '72' \
    --startTime 'Jjojv38FQBHZAAqk' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1978-05-30T00:00:00Z", "EventId": "k38f2sAA1vDRyhdU", "EventName": "P27Rjz08GaM1cRzq", "EventNamespace": "5iiEVd3WKnad9NiO", "EventTimestamp": "1978-02-20T00:00:00Z", "Payload": {"gp1zANPtIxO8wZnH": {}, "XIo9qwJFWkVdnNOo": {}, "u0OWWFsC4zhs7Vvs": {}}}, {"ClientTimestamp": "1991-08-04T00:00:00Z", "EventId": "KtiJJQtArgQI7uh2", "EventName": "S3Fypr7Ol9MqBGgN", "EventNamespace": "46Yuydx3HYJQQi7q", "EventTimestamp": "1983-06-10T00:00:00Z", "Payload": {"0Q28vtMs068wbeK1": {}, "1bmzWd3IeIT2ATCX": {}, "q6pgadVFFl9X40nM": {}}}, {"ClientTimestamp": "1982-03-03T00:00:00Z", "EventId": "Tzfkag8AIUyUgIma", "EventName": "G5ibQIueRVR2HrYA", "EventNamespace": "vRmjdQQqfTXCJMKL", "EventTimestamp": "1987-09-01T00:00:00Z", "Payload": {"wiW658gEzQ7Gfe9F": {}, "of3zHM3LmiWk65NJ": {}, "uwf6Pm38VIxqEPt0": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'HshsSrUpLxTEWOyE' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'UIrW3eY3eDMFwyiK' \
    --steamId 'tUPXmjzfaZE1UteP' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE