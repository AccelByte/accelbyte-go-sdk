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
echo "1..9"

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
    --podName 'RtYmjH7SX79ZI1fe' \
    --logType 'dYhpsLnSXQJE985r' \
    --offset '80' \
    --origin 'MuHT7hyNu21Rpu9U' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '17RksOdZOYW18zXX' \
    --endDate 'aFSkrIkDmeGRVwQW' \
    --gameMode 'kqiiq5JUkOFVQzb8' \
    --limit '96' \
    --next 'oNYnD4AcFIIBwfGJ' \
    --partyId 'KjBxQBHudubu7aUI' \
    --podName '1BThd4ArGgPoCGDy' \
    --previous 'Gz5WQNSkuxWp6cEX' \
    --provider '8ysWRR9GLcT4XYl2' \
    --region 'XnLWAwYhTmYuY8Lr' \
    --sessionId 'J0jGGFToLErUL88N' \
    --source 'VieCrfdacr9DzLDg' \
    --startDate 'KUCSjmJrSVcXNgdT' \
    --status '9oJcJwqNMsgpqriz' \
    --userId 'avBZF1CYzygMXUP1' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '41lxCGehyg4rpavp' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '8cyAFJfZGyWlDCai' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "W88tyaq1s8QRYLaJ", "namespace": "ohQGsqHauFmq0i5m", "pod_name": "zNvJrpAhL1TMYEQE"}, {"alloc_id": "A69hUqKvlkOzeJYg", "namespace": "OfiyZ5zjMicj7hGF", "pod_name": "8OwL7AEA09GlA4Bm"}, {"alloc_id": "OUBFuKEpQXSdceyN", "namespace": "JKxTDYbtxXiMXzph", "pod_name": "llrsjxO6g8Hjfjw0"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["nElYGL9HA59c6i99", "4SB6rCGBCNdLFXWE", "tWQopRBiEZkzPl3b"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'RySzTKWWv6CjyVaO' \
    --endDate 'nuWXPIG90HVJMdrB' \
    --gameMode '4JEEUNQ7U2izZIB5' \
    --limit '20' \
    --namespace '8fTaBuFOT3ZjnP1Z' \
    --next '0ID9U4HiZe3uV3gi' \
    --partyId 'wXes0wqeRirebDWw' \
    --podName '9dDuw8EpujDnx1oa' \
    --previous 'aNPx2RLGaUnAxM27' \
    --provider 'hDicxKxypPThFUEj' \
    --region 'csmbhhDLVaBIiKmp' \
    --sessionId 'CcwyEJFTFbyhQbVE' \
    --startDate 'TirHddW6IW5wVyTs' \
    --status 'QZslObrYhdqRMmJS' \
    --userId 'L5KjRYzIxY04uui7' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE