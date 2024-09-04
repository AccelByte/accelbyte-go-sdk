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
    --limit '6' \
    --next 'MpLYMLe7pzCjkpzo' \
    --nodeIP 'WHZulvSHAOIlN3Iy' \
    --previous 'H0xDDSIZqu4FDnyc' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'pH0FxDYUaIzkAGFz' \
    --podName 'yJ90U3NUtoKDGArA' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '9' \
    --next 'U2h9hoOLMsAmMt38' \
    --previous 'iczsvZhfI8dar1n6' \
    --nodeIP 'R6AlceSGG2Zp5rFM' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'dkxAlUqlEmNmFiHU' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP '5eurFtcdD7YfEPlJ' \
    --podName 's5xH4a3sdapA9Qsj' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'bn23aFEpPa4Gionk' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'ifjUJRtw1VcLTlA1' \
    --podName '770mJr0pD7A0WRbq' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'B3vok4k4NTo86mch' \
    --podName 'pyEr2xM6r8aKM34Y' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --next 'SKllXP0wWK5zxsBC' \
    --nodeIP 's9qS5bhcbunKU1aH' \
    --podName '4RkZ5EkuCJeMi45q' \
    --previous 'M5uO5qEYOfZBvZmB' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '20' \
    --next 'aQftIZPQZ7mkYU4s' \
    --nodeIP '1uS3fyqLgYUhwdqB' \
    --order 'Ly7or3sfttZ7x7Pv' \
    --podName 'Ab4SACJQ93JEG4xm' \
    --previous 'egVDJUnGf2jJ3Vue' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'hW4LT6OtpH4Mczhu' \
    --gameMode 'EftRVL0EfO9mtuh4' \
    --limit '76' \
    --next 'IyHCnhTvU5CMhXfn' \
    --partyId 'eB4fPgAjmAr5PN3i' \
    --podName '8wQu8ROCPgsJrSHm' \
    --previous 'SaXIkjc7YJOub2Hh' \
    --provider 'dUNrwNQ0aEZMKhaE' \
    --region '2E0QzwhM8mxkZUEj' \
    --sessionId '0p4cVOy8LLm2OcQ7' \
    --userId 'KkcQDcfBijJqYzGw' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'IcrMzvAbnn2KTgn3' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'y1nFl3YXRc9ZsZs7' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'ErviSfCtkfeRHFnn' \
    --gameMode 'zW08wYgxJ5vzvYnX' \
    --limit '4' \
    --next '6CAknQhRk1pStTZH' \
    --partyId 'dhIfZ4Q5AXSo13hD' \
    --podName '9LxRDRY2ujZkwLgD' \
    --previous '3AqrF1JlqOFyLTIq' \
    --provider 'Plj8QJvsgrDNC1Kw' \
    --region 'IyNNOiBkbl1bBWYT' \
    --sessionId 'QkEZ8Pqhz2JQuttM' \
    --userId 'xNJz8Qzm53KtTIv4' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE