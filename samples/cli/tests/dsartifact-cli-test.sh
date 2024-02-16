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
echo "1..16"

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

#- 2 ListNodesIPAddress
samples/cli/sample-apps Dsartifact listNodesIPAddress \
    --limit '79' \
    --next 'wYoTDvfB8BsXQIfW' \
    --nodeIP 'UMWBX2OmYN9aymWu' \
    --previous 'pdwf7UeGJ0RYki9Q' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'UR8rVt1jcGtEwhgD' \
    --podName '9wTObYuqTr3h0LLF' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '89' \
    --next 'EnMGOQUsWuNf9VuG' \
    --previous 'xZbgy3fIBvzIHkak' \
    --nodeIP 'K1gLJHzHY5wbOj28' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'P48YzAXpiRPCwbYH' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'CWGmssraCJ453Wyw' \
    --podName 'y5rMxZkq30ujhTgj' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'ROY16QKaRgpTkX5T' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'iDHW6ENJS57UUlnq' \
    --podName 'yNbFSbSeUNjemXKl' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'vAugtcf1o1vSdr4c' \
    --podName 'RYtn6QKdrzxX4zsE' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --next '95Hduf2cdqY4IKvo' \
    --nodeIP 'UgDyNAQm52LCwgYT' \
    --podName 'hzYdWOBXxW3Ml1fk' \
    --previous 'XfMVnroFIk4V1dlj' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '52' \
    --next 'abE7Ake6dqHXTvbg' \
    --nodeIP 'vNPDao9U1nUKqOZ6' \
    --order 'Iy15wJtL83T8n1CH' \
    --podName 'txz03FT7olu17G7Y' \
    --previous '9Hy60nUcIHlYGjJH' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'NFxBsdBmWvBHx39F' \
    --gameMode '5K1WhzAtDTr9gAgb' \
    --limit '96' \
    --next 'U3QpKd2ohpTwxGxL' \
    --partyId 'zsHXJYJAHt2ol1AO' \
    --podName 'bkEU1sXTeguNOZYj' \
    --previous '6JhORAUpgqZlxW5K' \
    --provider 'XFBMnNcd7CHdcIsV' \
    --region 'uAUDvzp3palQNg6M' \
    --sessionId 'EOO6BemOaRu2eweu' \
    --userId 'SZmlQ8r1lgcCQvaG' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName '73DdG4MY9QfYUYE2' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'CdyX1aMLofjWGZyN' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'XBn1eQGqJ1jQnqMu' \
    --gameMode 'cb5U4DEvRxNGGYzN' \
    --limit '41' \
    --next 'yinH1WLIqv3RqQP2' \
    --partyId 'ABwTUSuKWfdn17ni' \
    --podName 'jh7HNqU1sX7RwUVt' \
    --previous 'f0ZbFr1IcmeBe5fB' \
    --provider 'kmCAiVzYK2sSpz5u' \
    --region 'V3l2A0kLCSZ6ljLs' \
    --sessionId 'jaHqtuVQbfHV2gB5' \
    --userId '9G2Op18b3bODIhNI' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE