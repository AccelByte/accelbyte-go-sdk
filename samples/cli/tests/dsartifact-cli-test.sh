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
    --limit '71' \
    --next 'Ifp9fzoeSwQkSFBD' \
    --nodeIP 'eU4MKOC48f3wjbHg' \
    --previous '37wuaAJYmcrGJxIs' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP '95KAiAtp3xvq99zE' \
    --podName 'nPKbzpxUvkADprRW' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '26' \
    --next 'Vg1pYa3X3t8Tm49o' \
    --previous '8QDHW4z5byUAjyLX' \
    --nodeIP 'bjRBBFQTAc5q8pSe' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'e2WVtBnVoP9SowIH' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP '3x3m4Q9HBXFv1Lyg' \
    --podName '9N8QuTVqgkMJFq9J' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'NGc20muTzApHlkf1' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'yX4KZJ2oj3ZEjwxg' \
    --podName '3yGy0X924iGSrowW' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'Jg5jUipmtr5cWHRe' \
    --podName 'KMqHivbuOibq3ee8' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --next 'Shycyag6NmWpOwOn' \
    --nodeIP 'O7nx1P7BNZV1DqGU' \
    --podName 'VRQOeCJz8tMtb1mU' \
    --previous 'NoNcidFxSYj5ES2H' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '96' \
    --next 'raVeAkeW7ASrosZb' \
    --nodeIP 'ffSfii1QugtGOr8r' \
    --order 'M2G0lBWycijpHo23' \
    --podName 'P82eHqM5jIWP0eHP' \
    --previous 'Vw9w8a5zaOefohaV' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'NwU54ON6lwcKb9xS' \
    --gameMode 'blHYJT8sK5GdeOBD' \
    --limit '28' \
    --next 'jKAB9bAchRx6Xzd2' \
    --partyId 'FxIyyxLwlvpPqNqU' \
    --podName 'jqfQf1wBb4SCJrzG' \
    --previous 'OQz0XNuDbDpkJyvf' \
    --provider 'pRTrIFI9NpWP7iw9' \
    --region 'Pxa0eUQ8rfrGVgyr' \
    --sessionId 'tG37l5l7TeOLLYaR' \
    --userId '8aDAX5SIxbitoEUX' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'LiX1JJIOl9tIxwXx' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'dENEkfqKJffPyxQa' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'eTFd7IfYgF0DdGIz' \
    --gameMode 'BcyI9gorwGdaTajJ' \
    --limit '4' \
    --next '8ppPkcAbeCwMaPnI' \
    --partyId '7jplhm4N4CLBA6DB' \
    --podName 'bTrHKeNJbMBUVHaM' \
    --previous 'D0y9yz8H1WnBaQWw' \
    --provider 'WNm49CnEIwmgtZeF' \
    --region '0PdcJJ4dYYpPPDCi' \
    --sessionId 'dk9bHMJwqrKziHc2' \
    --userId 'rVJjANdhmUZU5M3m' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE