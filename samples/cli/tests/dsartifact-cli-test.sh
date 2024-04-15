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
    --limit '93' \
    --next 'egmsHHHkA0gAMfJm' \
    --nodeIP 'kL6zn4Gq0Zodbbst' \
    --previous 'DHwyYqmZc90anVV9' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP '3cHXD8aw11xd8Ap8' \
    --podName 'SFDNWSHTaXSXp41P' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '25' \
    --next 'w6ZfHj4zSvWsTp5Y' \
    --previous 'dfYhEl0qN9LE2Rra' \
    --nodeIP 'wwbUWOnzujceTxoN' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'uWrfXtfP3lgvkC4C' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'T9QRiPZ0n92duS5l' \
    --podName 'inOsSiJrn7troBaJ' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP '16FAYiEqa1weuZEh' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'QOqubkuN41PtMght' \
    --podName '7BEu4QEH8HdihRuU' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'VZJ7dUIGnvy79rkA' \
    --podName 'hpRD47ZrFDzsdoFa' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --next 'z4NK49Osvw48C0TG' \
    --nodeIP 'AIecjyEDdr7S8WIn' \
    --podName 'f4Uh7cAKE4TE3ffV' \
    --previous 'cxtDM1gck3fwoC2j' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '20' \
    --next 'ysVIFcjJWGvBopKX' \
    --nodeIP '6wOyqe1uWTPyZMM2' \
    --order 'XO2uXBiOhPcHtVbf' \
    --podName 'MCueLRMKv0UuRrZ4' \
    --previous '2nxaE7Cbw0ZqafWO' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'WxyPUBKgMPD6AFk4' \
    --gameMode '2oWr6U7yH3TwdBA5' \
    --limit '27' \
    --next '5UQlh25kPgkAFKNw' \
    --partyId 'PqSTcYuKkIJ9NViY' \
    --podName 'wjM6HPgFXqTprg1M' \
    --previous 'ZUvALKDG6BXrItFy' \
    --provider '8XESgxLI8RFHBXpi' \
    --region 'dEZcIyoWQevgacFK' \
    --sessionId 'FkK0gZVaMlCjCbbU' \
    --userId 'ZCMtUdrs5k49zYw8' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'xw8xIUCsqO8156Bm' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'zp2e1k027zUigA3s' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment '9OAvhmHTuJEySJPK' \
    --gameMode '9TqsCTmo2oowRzQg' \
    --limit '33' \
    --next '7XC04rr2FfzeDTCp' \
    --partyId 'k1LDQXs3ZAlMo5Yg' \
    --podName 'bFlfv9FG6bZJHjzQ' \
    --previous 'XjSLT2WsuPMOELMH' \
    --provider 'AFBWivo6RoCvqNok' \
    --region 'tBwiIRvr3lX4KhBy' \
    --sessionId 'yfdlZQKbtCA3nGK9' \
    --userId 'FgNFd9frwWtvqJpa' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE