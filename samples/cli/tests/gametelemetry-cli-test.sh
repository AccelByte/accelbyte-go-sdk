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
    --endTime 'vWb29p5bzmqMag0t' \
    --eventId 'ZqQL6D3rBkcj7QAU' \
    --eventName 'wcs5tW8cqmcp93bA' \
    --eventPayload 'KF7RZ90hdwGNb3ls' \
    --limit '21' \
    --offset '39' \
    --startTime 'SlyHLUUWWFFE56cB' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1981-10-10T00:00:00Z", "EventId": "iNYrR2lg8lfcSI3E", "EventName": "bXQ02FZE4VPk0cvu", "EventNamespace": "jjnQzgrpHB9xrjTW", "EventTimestamp": "1991-02-02T00:00:00Z", "Payload": {"xqPjOzHkFFpLX46M": {}, "PvCRSLwy0G9phnMu": {}, "JlEytlKWEJhz916V": {}}}, {"ClientTimestamp": "1989-01-21T00:00:00Z", "EventId": "cadHjMKuvhc8fQcf", "EventName": "uzESLyvE3Lecsm9p", "EventNamespace": "NvV2GUCIGzSPq03Z", "EventTimestamp": "1979-11-21T00:00:00Z", "Payload": {"qzOCCJdb1rYOGftx": {}, "aH8KsZqgCthFypsM": {}, "tpZAQGGfC7NR2ARp": {}}}, {"ClientTimestamp": "1977-04-05T00:00:00Z", "EventId": "kTJUqHmtYx1qlav1", "EventName": "vtng7TzD7mRSHg9h", "EventNamespace": "8qb6Dtr0J9gzKxc7", "EventTimestamp": "1992-07-01T00:00:00Z", "Payload": {"muIyERcCHn2MpGeY": {}, "HHEJal9NhobqT74q": {}, "MV6L86RFb3yYveHr": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'C6XzJmEYuhkc2DXR' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'EiMJLyU7sRWFzx2H' \
    --steamId 'HVbaI3rv4fBXpg97' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE