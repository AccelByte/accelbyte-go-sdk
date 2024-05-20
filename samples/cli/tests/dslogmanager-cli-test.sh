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
echo "1..8"

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

#- 2 GetServerLogs
samples/cli/sample-apps Dslogmanager getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bRgUkTFctXgo6EVM' \
    --logType 'fjtiPPFmuK7JIQj8' \
    --offset '28' \
    --origin 'pxAMy5bz5oLarI0S' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'HklJOLlt4QnhVqNY' \
    --endDate '1phHXmPiQN0oX9GM' \
    --gameMode '9s3BCGgDHISkMA3o' \
    --limit '26' \
    --next '4ZRS1x9vJQ3zLuOz' \
    --partyId 'twl84lH3MF0hZedt' \
    --podName 'yZqjGeMKp0LD0bIB' \
    --previous 'byLTnp0hdUxqlR8a' \
    --provider 'UrcYKhB2p7lBx3YG' \
    --region 'Y0dOCJZaV7iQIL7w' \
    --sessionId 'wq94XgIP2g7cza7h' \
    --source 'PvrCmTBvsvDNXGWt' \
    --startDate 'L0QfQ2tW0c8ZTeMw' \
    --status 'j7wggkDPnfjGeXd0' \
    --userId 'EsSsDeOtYnAcfngV' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'p8icbVDMEamRucDc' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'hnKTrPG2zDKmFspX' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "RQJxVJaHMK1b67dI", "namespace": "f8hiKm9mpRwEECqu", "pod_name": "rY6HCHdCgSmfuSkm"}, {"alloc_id": "PKe5L1t6sle9dil7", "namespace": "hO7ykF9nANlUCAHA", "pod_name": "MOKaObruQw59Zbso"}, {"alloc_id": "B0QPtVoQzOlHAaHX", "namespace": "KNnqyF5rGh4aBSbl", "pod_name": "46xiVXixZB20yARr"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '2ugXaeaiTJpl19St' \
    --endDate 'V0Nscdc8V2nEXygW' \
    --gameMode 'tyzQTeM6qRenvId3' \
    --limit '4' \
    --namespace 'hFkcpaG3fenbRe9x' \
    --next 'MtAbraIpT9i8NPVP' \
    --partyId 'fW2l0EMqLsaI6oeI' \
    --podName 'rqjGcmkyZv5xUbCT' \
    --previous 'C2BS7qqVspn6o9CG' \
    --provider 'PcuA6K59oTEKYrd2' \
    --region 'w0M96QYYIHHXuGjr' \
    --sessionId 'FxG9xOVRCTpmI9mK' \
    --startDate 'ZngFX2Lwea09D9su' \
    --status 'ufO6H0vwnkOWTu7Z' \
    --userId '7a2VoS8p0MiPxDkc' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE