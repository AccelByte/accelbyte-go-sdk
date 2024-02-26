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
    --podName 'TQmwX6VXnDvwaoAk' \
    --logType 'maHNPyefVB8IPYtk' \
    --offset '19' \
    --origin 'np7tVUxAfaT8x5jq' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '4ZiICcKtaKn744Fv' \
    --endDate 'lZMoMxNHw7PropIV' \
    --gameMode 'vEITOVx8UyGjg5JX' \
    --limit '46' \
    --next 'hKEzkjjJomepa3qP' \
    --partyId '4sEAsPcnRAMD5RmK' \
    --podName 'I7O6LiNOTJObnnE3' \
    --previous 'WOHDEDwGIQatKCCs' \
    --provider '7qwRfzal1iywx0KE' \
    --region 'ExsovFTLzIufRFCM' \
    --sessionId 'SkD4rtAnUiOrPl6m' \
    --source '0xiVRbPdWASn1sFa' \
    --startDate 'nmKahgU2ECadMz6O' \
    --status 'tUCsklJHVCl4xC6w' \
    --userId 'XLZDVXnC4gK9BTqv' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 's0EzA0hiqLKuiPsX' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'CKFUti1L0LHBJQHu' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "CGGSLd16Uev2hYi7", "namespace": "K25yfvLgGPNglV0E", "pod_name": "nqsqODAInClqkByx"}, {"alloc_id": "V5Gf3Ud72P6DitkI", "namespace": "huUYwsJ7g66hgzgJ", "pod_name": "7sRRGri9IcSnilf8"}, {"alloc_id": "paATDPn1F9vt42Hp", "namespace": "dKvC0MmcE4bYiadn", "pod_name": "4EVL2kDJ5VYMLvDt"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '03BtJI3P6IVsbpjs' \
    --endDate 'gY5Bd6GZAjFS7Olh' \
    --gameMode 'unWaioyLlhGQXzOG' \
    --limit '78' \
    --namespace 'WJolqhrghJFAVASu' \
    --next '5dPn6Bzz55rPc6Vv' \
    --partyId 'Poecn94SFK2pyfMT' \
    --podName 'uy4UiLjJr9UiZDO7' \
    --previous 'IBOIq7vyCemWMtIc' \
    --provider 'jP4uRI35GdUErOFc' \
    --region '613NRGQOFDP3ZaHE' \
    --sessionId '8w4CkA3iqnmxamD5' \
    --startDate 'XNGoruqAGVQuZKG3' \
    --status 'xHZVyrIq3irilFc2' \
    --userId 'OFK5jHsE7SX5SoKW' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE