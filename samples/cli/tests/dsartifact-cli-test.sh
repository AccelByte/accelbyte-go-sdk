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
    --limit '19' \
    --next '4mpzNRzMSC7owQam' \
    --nodeIP 'x2qdmKDAldFkFBQJ' \
    --previous 'jZauQPdZt4pbhgrB' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'HiPbyDpeob11Xsiv' \
    --podName 'A5ELegaXmYJIs9Yp' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '41' \
    --next '90HVd2ehyPPboSYu' \
    --previous 'cvfvs6xA7Ilyamh0' \
    --nodeIP 'kv7t5EF6qBVatW7G' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'b6wSjOzZ5Kd52cm9' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'tKD8cecOd605e8fh' \
    --podName 'TPUckRgjFOYRxLnE' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'QGlGqdSnsxmFPliv' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'Ylk9ZCNi86IC5sey' \
    --podName 'VDcVsEHa8D7c3GUY' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP '6wL6s2ZD5c6m8xDB' \
    --podName '1cvfR8J4SzvCJoa1' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --next 'xIwFFe2Q8m26jySX' \
    --nodeIP 'PoIyvtOXqJO0UhKH' \
    --podName 'wSqjQ8P72qMFqawn' \
    --previous 'kY7GtHJCHwMdmhl5' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '93' \
    --next 'ryUSg8tEvH8LCMVN' \
    --nodeIP 'qi7JbjqfTisYdls2' \
    --order 'T98UjyMXzEvL0BQn' \
    --podName '6M0QzSLs0enQwGL2' \
    --previous 'xfbnKML8J7wWO7a4' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment '2fN8UMvOkm2MY4xD' \
    --gameMode 'HhlgASgsR9UyjGJK' \
    --limit '28' \
    --next 'JfW4yuuOtfNkRyGr' \
    --partyId 'T38gtstLNqFsIhFt' \
    --podName 'OQZhNjFjlXlXNQ8L' \
    --previous 'XaFOFgwIrwOlkYgv' \
    --provider '5aM0lGswLEz6ZYVi' \
    --region 'P1yJ0Z5WtEVlYlA7' \
    --sessionId 'enDBiXCPSvtpiXjH' \
    --userId '1rU3WPxnA3MtyUDF' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'LdYXrXMvGjSI4DbH' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'fyK48Fq5SjpUT0JJ' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'dhUOdW1J5gHUW2T8' \
    --gameMode 'fCAGxZk8H49b1bO6' \
    --limit '7' \
    --next 'IGZcijIaaljUyrxb' \
    --partyId 'iq7x2WZCSCFK375r' \
    --podName 'y1d9Xt9oR565yuMl' \
    --previous 'bJu62yHvBm6UPNRr' \
    --provider '6m8aUFjtqpXsk6RY' \
    --region 'jNpmu0u2cdHcxDmQ' \
    --sessionId 'JxboJK6jE3q6VDQy' \
    --userId 'cYQykKE3eoep6Gub' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE