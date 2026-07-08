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
    --deviceType '3IdynGva886PPPnj' \
    --endTime 'yGS89AiL7RHVVXzy' \
    --eventId '1iqp4ywZtBWo6BLD' \
    --eventName 'xzE5eJg0ktsYmpku' \
    --eventPayload 'y99yg7w8UaReMAfW' \
    --flightId 'zSLosiItcn0jcssj' \
    --limit '38' \
    --offset '3' \
    --startTime 'KUjyNEoNgcedc8Mq' \
    --userId 'Z7cTvvFfgTHpyshW' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1994-12-01T00:00:00Z", "DeviceType": "fL4qEOboszrzylRo", "EventId": "b9ytlZkPDRLZUnwd", "EventName": "b2vIfOlUkgBmCt02", "EventNamespace": "hJiiAqOjls73JUJN", "EventTimestamp": "1994-01-18T00:00:00Z", "Payload": {"rem6qW1CfYg2y1nI": {}, "3yyi5lNiRyMvsnvz": {}, "YRuGwKhKHX5id8Gf": {}}}, {"ClientTimestamp": "1989-12-08T00:00:00Z", "DeviceType": "y2iAUEqndPrxsX29", "EventId": "a8L7Ewx6FH3EUUkP", "EventName": "PfeA99odws1qJ4c0", "EventNamespace": "SC7d52IArZnoj1Sn", "EventTimestamp": "1977-02-09T00:00:00Z", "Payload": {"EF5lFD0CWr1SDLjg": {}, "eS2Z9fm0X2TP5q6e": {}, "fjaWRp6lDAvkpFe8": {}}}, {"ClientTimestamp": "1985-05-05T00:00:00Z", "DeviceType": "7dXZHq9AdYeUNPNM", "EventId": "GuWiUAgAEUdFd0fE", "EventName": "1QZTiwITHNYeq2FQ", "EventNamespace": "MLZjpgBjR3xN8pz2", "EventTimestamp": "1973-10-20T00:00:00Z", "Payload": {"H5G2DZ8yClZmss0e": {}, "8a8rOtC27CJ923gr": {}, "a3OiGd8AkkMUdjik": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '5jXxAUWLrgHIsAq5' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'LMa6uyEfX7TAwFY7' \
    --steamId 'MUKJmdROEygIWIgi' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE