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
    --endTime 'SdwVSvLnW1vjsmh1' \
    --eventId 'G7EAue2cmUZQOJ0P' \
    --eventName '27mOUDMpGvTxY8WC' \
    --eventPayload 'cgV69QzwyxlWbTJf' \
    --limit '15' \
    --offset '26' \
    --startTime 'OBh8jb22lkhPlAuj' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "7nLl3q4fvKc4iBPg", "EventName": "U8oZv3XNL6EUXuiL", "EventNamespace": "wbAAeGdRifWDi2YE", "EventTimestamp": "1986-11-29T00:00:00Z", "Payload": {"3aJmFJ3soXBTPqae": {}, "735W0fYcdT4KbD2I": {}, "rLhuPx65dyh8X4bV": {}}}, {"EventId": "8fbCyQCvMHxQxCta", "EventName": "QeI4IYKZCj7r1EjH", "EventNamespace": "OTWzbuZUqdjivXEm", "EventTimestamp": "1982-02-23T00:00:00Z", "Payload": {"4XU6RfsEFtaZONSQ": {}, "b6Egj1UuKpj6yyVH": {}, "IRxTKtZ7tJDSt6Aj": {}}}, {"EventId": "1kGWNUWCl7ReFKs4", "EventName": "XQHt2ZcowbopHmaG", "EventNamespace": "YgpZct1JAqQMv7tz", "EventTimestamp": "1978-12-10T00:00:00Z", "Payload": {"GT8x9FhmYVZ4FPDO": {}, "lc74k5GbBMIB5jdl": {}, "HRtcl9WogAwwfr94": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'K1ojzmHYnpPtazYJ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'RRK85Dw9DnHwGGJs' \
    --steamId 'xR8dMDKAFxcZEmAd' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE