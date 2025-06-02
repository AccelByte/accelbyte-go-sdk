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
    --limit '64' \
    --next 'NSNsbD0R1oEADFmS' \
    --nodeIP '9nU4EdNd7eKjy6by' \
    --previous 'IHT43XX1ZOtQXHBN' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'dDjmMCfvaU3lMV7H' \
    --podName '1LSGdzeHMH4ca4BB' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '58' \
    --next 'YsXwR3xfMKWD74v3' \
    --previous 'BZUyeH1WSdQPr4C5' \
    --nodeIP 'STkhugjMVC9xiXKn' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'p6rzlIA4r4a9IR6J' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'GKwtzhhsUxMMp1f6' \
    --podName 'hLboqHkNLkZV4reo' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'ZSSoSj51Joqb8kVD' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP '5cghIlkpNU9WjCAb' \
    --podName 'B8XchMpNS8Zqo2QI' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'OpoH3PV7ZY8rALPW' \
    --podName 'QQ35a0o1tg28Aoxr' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --next 'cdZc7YkH9e1q6OTd' \
    --nodeIP 'HPnA5C86otCpFzcQ' \
    --podName 'cJeVjttxxJDsOpt0' \
    --previous 'NXDNgGCEYgsiGXET' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '50' \
    --next 'BQhFUdliQDPFxBaO' \
    --nodeIP 'NWugfokvcgilxqwG' \
    --order '9S2BAGXCqN0qFDLN' \
    --podName 'r7IVX9BI3LhetEdf' \
    --previous '2pVfxr0251OF4hbo' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'tFSHapXTWzwqTGv1' \
    --gameMode 'LSTSNK1Ge5jzcWsC' \
    --limit '15' \
    --next '12rxY8OS89hTWLsw' \
    --partyId 'mQIyZ5jKPrjSOIC2' \
    --podName 'CZuunIq9ZB1HJdtI' \
    --previous '64zAnOs1dAlHtHFE' \
    --provider 'ff4YfvOiZZaTTcwU' \
    --region 'u7lmFfvcRdk9Jt2O' \
    --sessionId 'ez0lB8V5unDSioiK' \
    --userId '5gt6TFMurMP2ajZo' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName '7yjHAHaNCo4mk4XS' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'yRJIezGur6jOhT5C' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment '7mjO3i0GHm759zlg' \
    --gameMode 'Y7YXqM0EApzYF8Gi' \
    --limit '2' \
    --next 'sw9z9pue1x0Vyyui' \
    --partyId 'ClAX6TBJTSkKnMX3' \
    --podName '1PAsvMXsIUy6oRmY' \
    --previous '4v2ADYZA6PNLnlHf' \
    --provider '5GQIMLMoHCvSXkrR' \
    --region 'v8bCjlATQu026L9E' \
    --sessionId 'L3OpXbPwQFBJpHbo' \
    --userId 'VZRP9201oDKCDEIU' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE