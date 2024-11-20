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
    --limit '3' \
    --next 's4BI9Rd7pfSQbft3' \
    --nodeIP '5mig5FOf6aciZjbM' \
    --previous 'niVm36UrsVCfyn3E' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'nUYPgN1CFiSeZAig' \
    --podName 'mM1yqduQrBqpGPPe' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '90' \
    --next 'ucxPAZjTiCSHhMgm' \
    --previous '6iLvPUhf1VSNoD85' \
    --nodeIP 'dKTQrltiZSgLj5KM' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'CKB79Hynd96XWgne' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'Wg8KGoHOhoEbOUHY' \
    --podName 'kek2LJtQLoJnTuek' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'd9RNp2mTLSlFKQFx' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP '4ySEpKHAGGIED1gu' \
    --podName 'NrUzazOkcXCryp8X' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'xK8SrsKrYnOIceH7' \
    --podName '4lTwQLd9Nntracsg' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --next 'GAMII9aTNIHXvZ2S' \
    --nodeIP 'kggvpZlWAPdu9uGX' \
    --podName '3qWAjljwYLLe7mjO' \
    --previous 'O5IZ1IYae0ahQW7f' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '9' \
    --next 'bmXKD0mo2nqeknJe' \
    --nodeIP 'zETrsiRkAIWFx9Gp' \
    --order 'gi5AUguDMLy5KxQD' \
    --podName 'KaJ4DmtlbDqzpC8v' \
    --previous '2Qnyjd5sJYnzJbTX' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'cQ7qLDIujaFAM9nK' \
    --gameMode 'q1izR0sEGh5cUaRA' \
    --limit '24' \
    --next 'gPjA0i7SRb7EBw7S' \
    --partyId 'YBrKhpw5GvOe8egy' \
    --podName 'mrLSZ9wb663DH7Zn' \
    --previous 'gQvcNgbimCUD5oV8' \
    --provider '41Qy3CN55BLPZsqW' \
    --region '33iTknPqGL2QeC99' \
    --sessionId '2SFzLG5A9NlL5Eym' \
    --userId 'yojphrqYRHJHCc5Q' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'mrAr73jfzHK102Lr' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'pkN4zti8xO76J44u' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'cX0VFj5ebdkTAMEU' \
    --gameMode 'yCyD9vHnndBcKsJJ' \
    --limit '70' \
    --next 'iPLWsOURm987jV4c' \
    --partyId 'ztrkbsQfeeEeXPPY' \
    --podName '1J2UXpJL9euCxYMK' \
    --previous 'DFgFsKPaauTb9oBY' \
    --provider 'CRzk4zUvzIciUFIm' \
    --region 'wrVg07lrd7eBWrgF' \
    --sessionId 'w0Fl4fOvFD1B1MVd' \
    --userId '31fesA8vTIrlOSSj' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE