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
    --limit '52' \
    --next 'qbk9fYWpBdTkQZum' \
    --nodeIP '1Nfgbr3UJdD4IaCS' \
    --previous 'cUx7zUBIj95ZZU97' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP '7i5OBxdygAOabBlS' \
    --podName 'gTNeNQEoFm8vQpX3' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '30' \
    --next 'pMGml90XhQc09CkJ' \
    --previous 'wsWfBmxeY5CJjROZ' \
    --nodeIP '59OK6JbqpJRopp3P' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'UxU8QYYNyVZ1LfCi' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'lrkvwXqAtdfD7X6s' \
    --podName 'gvnLEU593zdLEXYD' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'Ly4pDtvEYGfCgbL9' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'UnVDbQix5LAJZwuM' \
    --podName 'nCuNBf3QsBmZGVkA' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'Baq3RFs9v85tw7SW' \
    --podName 'Nclpiy1OBpy6ylOf' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --next 'dqqyNnJKfUp2LkaV' \
    --nodeIP 'uJvWxB1ao2KXvxD3' \
    --podName '38T6ZLPh9HAN8Efi' \
    --previous '3Kr4jJSRZVa9qy1y' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '49' \
    --next 'XMqzGXLEY019UsVz' \
    --nodeIP 'ip3Be2sN0pLGCphv' \
    --order 'BMELY7Tp639K9ic8' \
    --podName '5uZ9vuqquXLe88gT' \
    --previous 'joDnANUdb5pBo9kv' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'ELt4e1VZuywNwwCX' \
    --gameMode 'ktuAUHtq0H3TnvQj' \
    --limit '21' \
    --next '6TDjhy0voTeufEcc' \
    --partyId 'dzLGPo1ZvI7qoAqt' \
    --podName 'wstMT1FRUblwa7g0' \
    --previous 'fZXFcHbL6vNkzSkx' \
    --provider 'kx4xomt9awYH8IMj' \
    --region 'lyTofda3llkTxjcI' \
    --sessionId 'S7uSmOweb7o7cYZt' \
    --userId 'vKW2Y0R8JWxgI8rF' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'Lse3w02WOH9MSDer' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'y84SNxzhDjFcSypu' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'GpQaizXmvJaZSdp8' \
    --gameMode 'wFoDmBKC7ASbGAyG' \
    --limit '9' \
    --next 'CdfXdGRFrPi6MGoG' \
    --partyId 'Uiyl0tJsk8iKaBh0' \
    --podName 'RXFOuKqciQiQJUFg' \
    --previous 'YTjPpScNeIINoXd8' \
    --provider 'Cn9PDUfCBYhZMfpN' \
    --region 'SfaFrS0g3tT91X6J' \
    --sessionId 'fhAVLa8Efk9EKtno' \
    --userId '3Sik42KgZfXU3HKa' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE