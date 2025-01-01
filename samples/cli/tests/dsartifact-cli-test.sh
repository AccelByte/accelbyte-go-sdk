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
    --limit '88' \
    --next 'KXo0eU2V0XOz5dB7' \
    --nodeIP 'Gv3GwEP4NU7XvhaG' \
    --previous '1PdOVwzdX7zfzUYt' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'YFzvZTAZ0Aesnz7h' \
    --podName 'fh8q47EDIsfjWmzl' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '11' \
    --next 'PFwin7tc3RDKBL5G' \
    --previous 'cAdxZ2reLF3EJFeN' \
    --nodeIP 'Ikt23WLH2dknC14v' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'i1dfQtLAGHl2p22a' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'ZJdq32nomsOGo2nn' \
    --podName 'AeIVOnxa0CGAfrWx' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP '689QXFnkpIsTFvCf' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP '1tk2jVdP8k1V5ZGb' \
    --podName 'M4WhF67uw0eCkem2' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'ErAjpordd787N1WR' \
    --podName 'lStXIw9XBPEphgkM' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --next 'sla1hJ95ikiA4PMK' \
    --nodeIP 'dDoOhZiSIzp8x6gy' \
    --podName 'OH4J0oeOEiiSleaz' \
    --previous '9u92nHwndp7OURKE' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '24' \
    --next 'JwzKuCBQkdOTcgHs' \
    --nodeIP 'eTdkdKuRqxRiyuXQ' \
    --order 'b9Zprx4pL5L6Fek0' \
    --podName 'ySdPNu5GpXu4krbL' \
    --previous 'ewfURtTRO8AbbuWn' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'iUq5yiBCs71gSI7s' \
    --gameMode 'vOJQl82iYQeQNFML' \
    --limit '31' \
    --next 'vnVN2iInxd5BqYKC' \
    --partyId 'aM5Ao900IO8ebK1Z' \
    --podName 'H6iNhsBhtYD7lWO4' \
    --previous 'S24QsmcrZQ5SotNg' \
    --provider 'NKAcG5HnNaNe4TLA' \
    --region 'PgC3CaMPMn0BE9Sk' \
    --sessionId 'nQ1rRywQcdWgAXes' \
    --userId 'EJH8btLUie18LJlP' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'ANu6wHNnG1Wi3FhI' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'teUBHOYfzKr0ELFG' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'szI0e4yKYEjk3ynn' \
    --gameMode 'VCbzkzTDz5Hmvu8H' \
    --limit '59' \
    --next 'Dlmfnuj6md34rLIl' \
    --partyId '6p8NTTz95VOJ0wxK' \
    --podName 'qqQBHq1PU2ypE5wz' \
    --previous 'DFQtfMXE6Dp84q2l' \
    --provider 'GUxNCPPCFf4oPX5e' \
    --region 'fR35eQpkfgY2NYKC' \
    --sessionId '3JfoB7JgiY8d5wzC' \
    --userId 'M94Ni9Ol2lxtD3G1' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE