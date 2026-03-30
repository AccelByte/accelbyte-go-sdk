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
    --deviceType 'MwHIfQPRKwMOsDv0' \
    --endTime 'vd0hLQ2oQ2R2RbP5' \
    --eventId 'obayTnwbNpTjuzTY' \
    --eventName 'WUL3UJeyXGoQKEWC' \
    --eventPayload 'rA6aceSz5LMeLYga' \
    --flightId 'NJf7ohsZdbySVVCD' \
    --limit '48' \
    --offset '60' \
    --startTime 'P5v6rznDwpDUDwkk' \
    --userId 'Y6qhB5MoJGshmWKp' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1977-06-17T00:00:00Z", "DeviceType": "0OdGphZMX2sx4Mbg", "EventId": "e8i93cKmPNH6PTvD", "EventName": "u7AS47VwSycqHc2w", "EventNamespace": "uuN01U2mj3GAdArH", "EventTimestamp": "1994-09-25T00:00:00Z", "Payload": {"fbrQ4PKtiEMOVnVU": {}, "RjvETawdTyXZrr4D": {}, "ALAlaxSpFq66ayip": {}}}, {"ClientTimestamp": "1992-05-28T00:00:00Z", "DeviceType": "67qY2IPF7hcz4tw3", "EventId": "4RcP9kj5YQIArrZI", "EventName": "y5zLbfartRTrJ4A8", "EventNamespace": "E0AiEOdAaPVu4K0W", "EventTimestamp": "1988-07-12T00:00:00Z", "Payload": {"ULWkWh2MqrlM7aQi": {}, "ZqTpUNEYMupQLJhG": {}, "yBokt7wyhenIh6iI": {}}}, {"ClientTimestamp": "1998-02-13T00:00:00Z", "DeviceType": "BGg0Z8eCdR0KZX8p", "EventId": "LCA7AFBV6GM7sS5d", "EventName": "isQ1j7xfAZdeong4", "EventNamespace": "EuKjmS3TlSYGmgU5", "EventTimestamp": "1994-09-26T00:00:00Z", "Payload": {"dyHOXYfytBNYGyEk": {}, "yCnMqtZHLJrcTVHk": {}, "1ePR6Ai5RXdjRCF9": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'xCfF08ySt9lRRV8J' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'G199dqzvaEjuC4As' \
    --steamId 'C1bePW6ci9CZujDF' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE