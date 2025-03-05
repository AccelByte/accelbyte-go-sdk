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
    --deviceType 'zAKOK9XVaKehajKK' \
    --endTime 'FK2vWxidi0kMijd4' \
    --eventId '89OJIF2pPH2GDL2O' \
    --eventName 'elPuGXMlsjAvfeEq' \
    --eventPayload 'Eqyd3tMdWMBUY71P' \
    --flightId 'Bg5wrAddBtZm6wif' \
    --limit '14' \
    --offset '58' \
    --startTime 'lcFEoawYB0lz2fy4' \
    --userId '9o6VxGgPTleJEIDu' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1992-01-22T00:00:00Z", "DeviceType": "CTIoAGBRvqPxqHF9", "EventId": "Z5NpfXCmUGR0iRR7", "EventName": "Zp60jdp98bF3WBd1", "EventNamespace": "4nOCanfdQhfdZeDx", "EventTimestamp": "1995-12-02T00:00:00Z", "Payload": {"AISL4KWdOmO27c9b": {}, "2qsJrsl76TRkGNbw": {}, "Dy3sXKWobN3Uc3xq": {}}}, {"ClientTimestamp": "1994-01-23T00:00:00Z", "DeviceType": "z9u3Y6kqZLv2wgBd", "EventId": "rrdswJYDF2p05j6Q", "EventName": "uhVBWuJ6x5AOKyNj", "EventNamespace": "ycEREjFAbSLXBg7y", "EventTimestamp": "1986-06-24T00:00:00Z", "Payload": {"JvA2oYyPWqihzVGP": {}, "6AuogkleQWanp8r0": {}, "gPk1L67bGZtSxkeO": {}}}, {"ClientTimestamp": "1982-05-04T00:00:00Z", "DeviceType": "mY0HZrwGbxC0O0nl", "EventId": "V87XWSqhVNjUUyMR", "EventName": "yh7zwaImb8Z0kfjS", "EventNamespace": "U8SYwhrUbpOQr1td", "EventTimestamp": "1988-09-20T00:00:00Z", "Payload": {"2ZLNZimoR7F78qfz": {}, "2IIwFGpIaFOcVrz9": {}, "c5kMwsoTpwq7CjwH": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'sUCMC2FfwRyooRNg' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'YwLmMu2GvLH0To61' \
    --steamId 'HLot6iu60rNTs2V3' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE