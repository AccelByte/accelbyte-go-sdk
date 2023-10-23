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
    --endTime 'WOeq62uoDDj2eAby' \
    --eventId 'Imu80iprlvS2sau4' \
    --eventName 'WxLngbQpanAvy1QQ' \
    --eventPayload 'bkTk6oosRjjJnee2' \
    --limit '2' \
    --offset '7' \
    --startTime 'ACM50RMupQMJobt4' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1984-09-01T00:00:00Z", "EventId": "n7ssclSlj35fAOUq", "EventName": "j3hcvmbPl3YrlWjt", "EventNamespace": "EfludakAGXSzUr9W", "EventTimestamp": "1975-12-03T00:00:00Z", "Payload": {"BsBTJ3eFYi1MXCcA": {}, "Z6nluVA0gPQVQzU0": {}, "RxaCYR6su7mD4Rqj": {}}}, {"ClientTimestamp": "1978-02-11T00:00:00Z", "EventId": "5leb8sbnT2dvAHvv", "EventName": "wqqA5OUg3YRrwJ1z", "EventNamespace": "zyraphhEcBH19DFy", "EventTimestamp": "1972-05-06T00:00:00Z", "Payload": {"vLWCVk9ypk07Tnm0": {}, "QWvfpwlwk195mxxh": {}, "TbjWUU0LhkMygCx6": {}}}, {"ClientTimestamp": "1978-01-06T00:00:00Z", "EventId": "bFzEurfEREyNusdy", "EventName": "ike3MH4V8nEUG3HS", "EventNamespace": "ZEOcij99cngmWNkG", "EventTimestamp": "1989-01-01T00:00:00Z", "Payload": {"uXJ2UIsBwmsoE43Q": {}, "XKA3OIecztIHBvds": {}, "CgpnOANvgaBycn6o": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'Xm5sIfJrpZTLoBOt' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'qXsfpbWRAMr0M5SO' \
    --steamId 'jqpWZRUy78CFzFq0' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE