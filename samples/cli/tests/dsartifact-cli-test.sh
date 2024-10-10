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
    --limit '92' \
    --next 'M9a8lMAG1EK3JoPK' \
    --nodeIP 'n1I77x1pQUlyCmwr' \
    --previous 'QR58211cMiYO8P7U' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'jv5kmDyVr2okXEYS' \
    --podName 'BfFlEks2gRRaZ8Mb' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '69' \
    --next 'KrqcfqG8tl2dQeyR' \
    --previous '3MQjea789UddEEOy' \
    --nodeIP 'niaBIIE0dFu8JUcq' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'Wzs5rRp5Daq3Nc8t' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'Du1oewT6i5tj0Nfw' \
    --podName 'AmVsvqKBBp8465Zr' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'onKYS941FcB6ScwD' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'GCUpTCBfyst5yI0z' \
    --podName 'HpNMCyHlcAFoOtZ9' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'P2SCJyidFgndENxi' \
    --podName 'dnRTjXxhe7r7lRw6' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --next 'jSSMQqmtpDFwB4cB' \
    --nodeIP 'fi7pBK2hY1esexWa' \
    --podName 'ymUwyp8mFjrjhFax' \
    --previous 'iJ8OeVcY8QcUj5iI' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '45' \
    --next 'V4tQm2P5UH9A94IN' \
    --nodeIP 'OsFsBjrJOWTvnGyi' \
    --order 'fUviJF2lTUie6BRG' \
    --podName 'YKyFmzt09L01BbBC' \
    --previous 'gluGIs5SWqtBuWki' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'Bq5NQqOdwt2iRBPI' \
    --gameMode 'lnt28QmXUUCsiIUz' \
    --limit '76' \
    --next '33Fqi4VMMpwZJr1R' \
    --partyId 'NEtOPIKqkp8EcfDG' \
    --podName 'AKoWqHV0GJPpiOyA' \
    --previous 'iJcl6xUcQOUs75GF' \
    --provider 'uSG5J8VErc7YarNv' \
    --region 'xBw31wORYlAL67Sp' \
    --sessionId 'ZtiyHhcHd94cgcbY' \
    --userId 'sLmehz6xUAJBLX0Z' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'wNIxEPFXfJechgcK' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'k8UO7QuDi9Du3SWj' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment '3QVT8cxsfXoSSDgP' \
    --gameMode 'N4TMVgjlI8XbV74l' \
    --limit '37' \
    --next 'XL4YsLlTgI8hp44i' \
    --partyId 'VbHewVV33sP9EHgn' \
    --podName 'FtbYs3MSjKDaAmbf' \
    --previous 'NBfNO85YQ7uqqLTD' \
    --provider 'pXJsw6Yxetq3UmAw' \
    --region 'sjTxIvWhqxadhW4N' \
    --sessionId 'UZJMfx0FHWnl5Gmv' \
    --userId 'XbCXmCVNfyMToPlF' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE