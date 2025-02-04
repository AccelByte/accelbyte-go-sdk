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
    --limit '39' \
    --next 'QPLm62cprKUZQr2t' \
    --nodeIP '5XI9o8QetN0KuBtF' \
    --previous 'kQ7tETdSe8Ov60A1' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'k5w9Nrh0b4lV5vtJ' \
    --podName 'gBNqjWnBZawOOHfb' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '27' \
    --next 'lMikqZ9vDvKFhiG8' \
    --previous 'v70mux1RugndnZiq' \
    --nodeIP 'zQy6T43cXTJsCKQM' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP '7a2BBug8kSmDmgkn' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'VsowUzlbHwj5K0mX' \
    --podName 'hlZf9OC7SnIBdV2T' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'Gl81M2pZ6Tdo2Cob' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'CoKxvrOHcXk0ZKHX' \
    --podName '1SUEbQiXtHF6d1JS' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'YLWHmaUWoTEeMQtU' \
    --podName 'hfVHSKz8NIXtKz0Q' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --next '4BY35V8MLDznozbO' \
    --nodeIP 'M8Lf1fJPM0ggrcBx' \
    --podName 'idNAxMZd4ZamfS7l' \
    --previous 'TGPHQAxFcRpppDF0' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '70' \
    --next 'yvcMIXImGZYmgDyd' \
    --nodeIP 'nKqPQ7lq9Tr32C9b' \
    --order 'MzDHzIGgcpBqRft3' \
    --podName 'OZ6rFiG1EnvNJ4iY' \
    --previous 'xPITgfviRDSHyJUR' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment '18hotOAFyy55SF58' \
    --gameMode 'F7A1UJUlS0hiWd8M' \
    --limit '83' \
    --next 'RdkGejTR4WVwlW4N' \
    --partyId 'FIp2dD6cY4Wzg3HO' \
    --podName '0wY93GcJYrnnmYZF' \
    --previous 'jvzqrMqX8LS1AyO1' \
    --provider 'WMmBv7wUGnXSpQK7' \
    --region 'dZxq6aMnYNhGkm0N' \
    --sessionId '4TESJSpLe0YZyqUe' \
    --userId 'h5zuQ3pihKZv8PGP' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'CBLVwTiqMPbhk8mu' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'xVSvcxlLxCFmlh2V' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'jcvIA2eub0mB0Exa' \
    --gameMode 'TKm59yLAJZY6Mji5' \
    --limit '40' \
    --next 'fllxYwO1itdu9Qsj' \
    --partyId '6B7q9ezcIfvxMOeY' \
    --podName '4UCaVcnwQRvdZFQz' \
    --previous 'jSNlbyF4mSAuKfPx' \
    --provider 'RHzZEyNVoK0aDnIL' \
    --region 'aBxusMigNjNBZJBE' \
    --sessionId 'SppC6RyeO17GgOJm' \
    --userId 'AzyUt6vWrRIECccD' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE