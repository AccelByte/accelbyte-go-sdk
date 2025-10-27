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
    --deviceType 'IKCsZsXAS3Mowt0n' \
    --endTime 'cLzyFfGG8AmZq1o4' \
    --eventId '6NgDKoTqSFepEjTh' \
    --eventName 'DNZdnv7OtfklR3Z0' \
    --eventPayload 'P8qcWPJMaNZtTzs6' \
    --flightId 'snVcqvZXL4wC9TjI' \
    --limit '48' \
    --offset '47' \
    --startTime '9VYnh8KUpEPyw0s1' \
    --userId 'uJomsJtuBVrCNOuF' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1992-07-03T00:00:00Z", "DeviceType": "gPi3QFlawHYdJq60", "EventId": "pWGtAwybPLX6RtkL", "EventName": "vRkz7dpA2wFvS5LR", "EventNamespace": "pwmxXxdWLR8FXH96", "EventTimestamp": "1981-05-31T00:00:00Z", "Payload": {"9br58KrmW4WQW1vc": {}, "xFxHIp1opgBKswzd": {}, "lSx4DANslIXa064W": {}}}, {"ClientTimestamp": "1985-09-26T00:00:00Z", "DeviceType": "nntYnSlKu8aworwW", "EventId": "bLup90gx0vRk3bmx", "EventName": "n9NczIs3hXlVNW2o", "EventNamespace": "8uMd15f0LQneN8vo", "EventTimestamp": "1981-08-04T00:00:00Z", "Payload": {"7mrOrmUYdHEHfKBH": {}, "0qxeaqxjv8TLdwy3": {}, "eX5pyrHwAqL6d0AG": {}}}, {"ClientTimestamp": "1996-06-01T00:00:00Z", "DeviceType": "EG5do42j3sjl1ls8", "EventId": "MKlzM6wxs9rpWqpZ", "EventName": "vQfo0ni1EY7TtLeN", "EventNamespace": "i1QyB16NbVmDZYI4", "EventTimestamp": "1983-10-04T00:00:00Z", "Payload": {"b0MEq9lb0Rht3SvU": {}, "LcOFWbOOwCyfpvzf": {}, "WYPszFKf2jauX5V2": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '8aVMizzPn7STWz7t' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'vb41sSLbgao6obUw' \
    --steamId 'rpB1mN7kA1V2oQJ3' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE