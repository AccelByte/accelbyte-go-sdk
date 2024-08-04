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
    --limit '87' \
    --next '08y4wwywjJvbXtjd' \
    --nodeIP 'EYhVDElwD4x7JrTp' \
    --previous 'gT273U3DbCgjO0zF' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP '2kBN3HeuZ1R7L08i' \
    --podName 'SQrrcVVzjrRDbD1m' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '75' \
    --next 'nXdtGu160fdZqANX' \
    --previous 'RGHfDAyU19964zHJ' \
    --nodeIP 'BczVjm9PvgB5X7nF' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'RlG2Q1FYifO5U0AJ' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'Y6cDhOQdm6VBk0vt' \
    --podName 'IGjWT2AK8XLq9QdL' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP '12lyYyeXiXSpEqHe' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP '9EiQ9WrG8uYjpTUY' \
    --podName 'tqknH9FiKfEXJxrD' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP '1MRY77zWQm2fMA9X' \
    --podName 'YspXgF2WQorRO11y' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --next 'WhGKJasmAWu6mmSw' \
    --nodeIP 'K2zntFwg5eyDgJgz' \
    --podName 'afwRbAjmb3fAUGFT' \
    --previous 'dsCsw4RjgrDwbFbS' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '5' \
    --next '9QxwWvaMZVzySgDp' \
    --nodeIP 'AKWWbliXlymxFa2e' \
    --order 'UtQOSGOzDh0dJqEW' \
    --podName 'Mu4SlybNFKUWHHc1' \
    --previous 'etY4fWV9FJJeWDyu' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'ilD1zg7zomp06z26' \
    --gameMode 'N4fffPK4ZzYimdTQ' \
    --limit '61' \
    --next 'qt20BEHB6q0ZW73W' \
    --partyId 'Nds6Ja1rFDZLd5bu' \
    --podName 'meBmwe94iVHTeBGf' \
    --previous '3ZHQNDrDdj0gERN9' \
    --provider 'IMX661ulyZEQ6XpU' \
    --region 'J6nOVOxi58px33s9' \
    --sessionId 'yTqqG15Aix58WhgM' \
    --userId 'aBxGcT97E1ga51CJ' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'eewVXl7fUVveYy7F' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'tJbehbc1ZgvvbALj' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'ipi0kg7Joo3Gfbi3' \
    --gameMode 'qWB2QFEC1WeilK0r' \
    --limit '59' \
    --next 'CsmNxIiSZppcjT6T' \
    --partyId 'i96o394fePzCo9zC' \
    --podName 'vmUNe3GJuIVR6wEJ' \
    --previous '7AyKDYv3agqL8PdM' \
    --provider 'rTFHTgTslPmxqkXY' \
    --region 'O17scmZLWGKJLokn' \
    --sessionId 's4DO5p3GWOObDsof' \
    --userId 'p6MfWbxrg8TSowYz' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE