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
    --endTime 'HXmMfZpCWH398bVE' \
    --eventId 'eEsr7Pkb7u74yHAM' \
    --eventName 'cZYuOqrWUjAZm034' \
    --eventPayload '8bFbFTUf4He4EMRj' \
    --flightId 'I5PXOxKLoNHYhn11' \
    --limit '100' \
    --offset '52' \
    --startTime 'XiVcEtEYB75VyYOm' \
    --userId 'UCLN0G4rZ8TLgRzl' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1999-11-09T00:00:00Z", "EventId": "DldA8LKZIeB3JDim", "EventName": "9dvsvu4fH3tZUBSg", "EventNamespace": "s7Osv868IcPL991k", "EventTimestamp": "1976-07-21T00:00:00Z", "Payload": {"Iivqbi6D9MFVDsqO": {}, "rYrZLzR5euq3fL1Z": {}, "IHmGRHQchuXoYE5Y": {}}}, {"ClientTimestamp": "1992-07-29T00:00:00Z", "EventId": "vMTgZOmtxAojVRcC", "EventName": "u6wzvJ8ENeyF3G4J", "EventNamespace": "eyM6ysr8p4hhnAQZ", "EventTimestamp": "1998-10-24T00:00:00Z", "Payload": {"mexTmTxoadypYthN": {}, "qxrD4ppdwjBLfsn9": {}, "DAt5ut2dMzZsupyS": {}}}, {"ClientTimestamp": "1990-06-29T00:00:00Z", "EventId": "ZNhPOrBxjm0ZFAtj", "EventName": "ru2qyY4LN3hLkmF4", "EventNamespace": "IKXYeWpnXD0XvM4U", "EventTimestamp": "1992-01-19T00:00:00Z", "Payload": {"jgCxVnuk9doD267x": {}, "f480rH10uyNcEUxo": {}, "QPnYTFIYCxOw18nY": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'D0jtEOTyrSDpJ46F' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'EHjgdqhMwzrC4wHG' \
    --steamId 'JL5zOCdZW9NzJq8m' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE