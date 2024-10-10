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
    --podName 'cq6M8uyfRhpHv20w' \
    --logType 'xaM1k7fXQKYvE7R1' \
    --offset '53' \
    --origin 'OZiRsZoqAMkjI7Rm' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'IT2Hxhimek9p1U1b' \
    --endDate 'aJtn9XxTmsvbT9N4' \
    --gameMode 'HyXk9RYza8HwqN33' \
    --limit '41' \
    --next 'Q9pWg0ITgGBq6lpZ' \
    --partyId 'mN3SSBHWRfkGEGDG' \
    --podName 'yKoFCbVlms1meUAL' \
    --previous 'HVzq78rBKbeTIFk7' \
    --provider 'nSXjIAtv7ykfLb68' \
    --region 'RTQpKFTkzE5o8ENf' \
    --sessionId '5dIYzm4KOtHHhohW' \
    --source 'iXhqzoGZESYavR6w' \
    --startDate '2NPUujDmyIZOsT5p' \
    --status 'yexvtNwxMMtExEUM' \
    --userId 'mzSLmHqiMrtMV9lL' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'o7UqYkw45vpHrL3A' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'tkgY8GDLX8Jf6qKE' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "XknCijJX1KbdWjYj", "namespace": "XEBiQkrQhVjTpKW9", "pod_name": "h3A0IlefCVbthPXi"}, {"alloc_id": "vFkjpTg4GKtf4mJv", "namespace": "vsyBRNRgtYflQ7gt", "pod_name": "E5aBdILnA4Fgoxp2"}, {"alloc_id": "AbHiAGl2r2l6KImN", "namespace": "91rOyboTb5eh1dLc", "pod_name": "Ci0gtHdi7dE1QZQy"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["N0CeIaUHL83Sf19n", "rb5RreUButRfC3EL", "85JxV3RqjI3EbbbO"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'wvarE3uAa8xi2bVU' \
    --endDate '4vNNU2B8jTOyHSwx' \
    --gameMode '8OKSiCFZvIIcD2f0' \
    --limit '29' \
    --namespace 'q10hBEQZYc0HfUw5' \
    --next 'hOaspjKT2Csdx7ez' \
    --partyId 'IkJ9MKYvPAy6pWh3' \
    --podName 'uRagKFev5GEAEtun' \
    --previous 'LJ691M2XPQHDNdxU' \
    --provider 'HnpUjnF4tk4SsUwy' \
    --region 'kGT7B3Rj9Hgjyki8' \
    --sessionId 'RzqCV00uFZ7FvhmV' \
    --startDate 'C9qcDVhA5lZtMIje' \
    --status 'iFRPcF6bpsqpneDI' \
    --userId 'yBXv7036hOYiGB81' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE