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
    --endTime 'YNrp9mNvHiMW8BNf' \
    --eventId 'HPVfYwM0KZNhKukD' \
    --eventName 'MHKI9qPRRk5Z1Sph' \
    --eventPayload 'mvS6tRqxhI10ySAz' \
    --limit '40' \
    --offset '16' \
    --startTime 'WxgqGyjIly5VGaLO' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "UF0A3cEZnUTuqDpA", "EventName": "EBO7Y8g11Z6dYRsq", "EventNamespace": "6DPBl06YSZftpbuJ", "EventTimestamp": "1992-08-29T00:00:00Z", "Payload": {"AHP121IiciaFrkEX": {}, "ZOTTY4YCeyCvfHRJ": {}, "LZPp0TbzyXfJ82rZ": {}}}, {"EventId": "kS81lu2It9i9L1TD", "EventName": "DfHzGUyw8pkm6pIc", "EventNamespace": "6Pztghv95dlmg8yx", "EventTimestamp": "1981-11-13T00:00:00Z", "Payload": {"dHPq1e95y0RKwJMg": {}, "1GrsyuiWQbPVcHAE": {}, "Ed56FPkqWjfMR4ZV": {}}}, {"EventId": "Lj5HcmQQ29K7QxCz", "EventName": "kO6EvF8nTnnSuNc4", "EventNamespace": "gzInOgmfjuurtu1L", "EventTimestamp": "1998-08-03T00:00:00Z", "Payload": {"63xOXo6YKswpzhSP": {}, "qlqLYImTt6MUrxRh": {}, "ypICapt4UT8vTld4": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'W1S6Oy7Krpm2LDyK' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '133mwMRUVJ1SAPZo' \
    --steamId 'X541tJ2WLBU4u5aw' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE