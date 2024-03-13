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
    --limit '61' \
    --next 'EObfEcfBImLakd3N' \
    --nodeIP 'n41qcIRPNxOQqIBI' \
    --previous 'amEvTdyaOkHDP5R8' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP '2E17AET4CijqSHyj' \
    --podName 'FEn4g2GmMa9xptSy' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '17' \
    --next 'XeMhNLrXyR1zN1jT' \
    --previous 'tdL0k46zCwRrXfgd' \
    --nodeIP '3WE0P0pyFsBfPuuF' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'KcPVU5NjofONWbY9' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'c4Fpf3JQa08ofdSP' \
    --podName '7Q8RqHYtRchAhO2W' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'VI0pNFK6mIOCTldu' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'MyFqaB0FCMKxfm8x' \
    --podName 'oJ0aggTApfwmnIEF' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'N9EnMfJiE6QcURkc' \
    --podName 'Y6KSBEDer6De6PsQ' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --next 'z85xN2ow0wFH1Wvj' \
    --nodeIP 'ux1OnH6Lmhsy1NBX' \
    --podName 'V0gY70R0Dhlz6f0E' \
    --previous 'kWMzxAMTEXgsCbao' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '93' \
    --next 'eP2RJCGg0PPULWse' \
    --nodeIP 'tGGdHbPJlyoeQk0a' \
    --order 'iO6i78aI3cNTYlCq' \
    --podName 'or3K3gQ0pTuRvkW1' \
    --previous '9giz0TzSDAQnYu1Q' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment '8bgJeO6XpQgA9nD0' \
    --gameMode 'WvbZ5PLmmfHGmu1q' \
    --limit '35' \
    --next 'of4RmWABzZSpSH0i' \
    --partyId '1OzyeZMhH55rMvju' \
    --podName 'PgFa1vv0qLwkxLoX' \
    --previous 'rNvpPmtRjCRtrB3R' \
    --provider 'RPLJ9j3DcDQ6e9oz' \
    --region 'GR1DsxtEtEywTCTw' \
    --sessionId 'ZzrVziqwbW7xWkMC' \
    --userId 'mE0udeddcB1yQaLI' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName '42PZ0VwAbYqUGUfm' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'cEhH3pYpshs5ya0X' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'IywJneRWzcv7cqHB' \
    --gameMode 'BiHoyMAPGYf96HNx' \
    --limit '15' \
    --next 'i7AV6pMK8egEMnma' \
    --partyId 'OvOOz7d06YqWwKEn' \
    --podName 'zcLWECe2VFeDGLIj' \
    --previous 'sk24uGya7tbDLuL7' \
    --provider 'yXTLBPC0FKF4Wzyr' \
    --region 'DnAcIReifsLBMy9W' \
    --sessionId 'JKvhISq3CsKrAmmH' \
    --userId '5Cz7SfSCtFKnrAmj' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE