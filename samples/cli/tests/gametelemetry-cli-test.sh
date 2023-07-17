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
    --endTime 'YWLNFIjYtBShtuwW' \
    --eventId 'Y3HFk8jcoAIapldQ' \
    --eventName 'LZqjKmsd05Lq6Ard' \
    --eventPayload 'zSY2V9F8yPZLcB8P' \
    --limit '64' \
    --offset '46' \
    --startTime '9D3Xgxq2m12DMU4k' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "icU887HVKsKVbDTe", "EventName": "PGSWyf4veu4Q3tt3", "EventNamespace": "OKSUrTuC8PR7lu4L", "EventTimestamp": "1971-07-15T00:00:00Z", "Payload": {"8GJxSeAgIehVZlQF": {}, "fg5qiROO3SmLKOLq": {}, "RkdIOt25eSpxr9eX": {}}}, {"EventId": "OlCFwWgeyMHpBJHJ", "EventName": "RWaXcNkYOTuuhU3i", "EventNamespace": "yfEGhmgWuILb0psX", "EventTimestamp": "1980-05-29T00:00:00Z", "Payload": {"TYQrcobo5G3ObXrk": {}, "ZZrO1p0wn1lSOxhv": {}, "sPt6a5KNf576FbpB": {}}}, {"EventId": "hXZgzuUNZhpiSL19", "EventName": "PaCppePKXD7GyBfu", "EventNamespace": "SBbZR3mAHyhImguK", "EventTimestamp": "1983-11-18T00:00:00Z", "Payload": {"fcB7pzv67b3ULPAy": {}, "hhsGlFFCevBnI1fs": {}, "yLlgcqNy8ROFKXQT": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'L0b6q0i4mk4X8Cwk' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'UuzNgp6oO4Bd1QBu' \
    --steamId 'woJTvlWOfN5x1C3z' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE