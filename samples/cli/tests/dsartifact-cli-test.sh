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
    --limit '43' \
    --next 'QyyTrjsJRulWSlzV' \
    --nodeIP '1Uv5AEcQw4lApHmj' \
    --previous 'EYEryilTZSspDWTn' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'r9itFRJLzFV8Nsxm' \
    --podName 'NJINskzCqe1F6CzM' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '0' \
    --next '67ogUryiIeAebjCD' \
    --previous '9ioC8V9zac1wZvkO' \
    --nodeIP '68n4g0mWLiydoblb' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'm5J3WzStGh7NfqDc' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'ZSOREP3HkfMTUjls' \
    --podName 'OpYD5KDO9XOB0f3w' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'chA6dMdAJbWyXPny' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'nOTfayONq7QOuIJH' \
    --podName 'p7jNpSxJdaeSZYpT' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'uEc6E5DisKKnkltQ' \
    --podName 't8B9u8lzjGGSi0Wu' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --next '1qdffrIYbsYREmxT' \
    --nodeIP 'HuJEXO5VPP3c1QAw' \
    --podName 'XkeZgYaRHIYJACvb' \
    --previous 'WWwTipxbDeZGsddc' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '58' \
    --next 'sgBsny8kiT75E0e9' \
    --nodeIP 'SMx81dag9mTuOxFx' \
    --order 'VGJ3Ay02HId2GQUd' \
    --podName 'pvhh5yCmMb0zEX7n' \
    --previous 'cPThetPxj162QHXR' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'Jhvj6rgWnu4GX4Gt' \
    --gameMode 'w8u35ccpeM2yhR6b' \
    --limit '99' \
    --next 'uXtaAJk43guB00lt' \
    --partyId 'PA4tbHHn2qadayvr' \
    --podName 'yu62A8J8IeInsJae' \
    --previous 'qkYJMeS1lDqmFkty' \
    --provider 'E8jmjHTzp6KP6gqj' \
    --region 'iclAjUKpqIlbbcuh' \
    --sessionId 'tUg7eJeIRd90Rfod' \
    --userId 'xcaCSbEzgICNs6IB' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'ka77iTCwqbseWgHl' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'Z0ZQx4z1E2KAwVp7' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'w3HduvvjRv24sBxF' \
    --gameMode '4SpLsjCet45JbeMu' \
    --limit '96' \
    --next 'ipoXpqCcNIOeGgBj' \
    --partyId 'IogYLke7pkxPwzk7' \
    --podName 'NBnGXZdwIddQ7MuY' \
    --previous '30bvJFd0S6Lu2qfv' \
    --provider 'LYAMyL2hdmLYonpa' \
    --region 'WXp0TT2OIg15qGsG' \
    --sessionId 'kamjbTQ48sX0gxm7' \
    --userId 'uPSX4uX9cJJgpe5x' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE