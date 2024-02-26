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
    --limit '90' \
    --next '8waZy66TZFVyBUVb' \
    --nodeIP 'BBKjgOUnJAlHTvbK' \
    --previous 'hxPSUs8ycb7KrWbC' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'NjVHgIwjSTCpGjl3' \
    --podName '8n5UlMYGHNSnZncF' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '61' \
    --next 'el4pJkoAfy3sMPjq' \
    --previous 'qIJ3RaLK8Ib3g8iw' \
    --nodeIP 'IPr8WzyHLS2pjd5b' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'SqOTmcj9OTe68rgI' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'GTJA6UVaOIGKvZFd' \
    --podName '691IClcfH6MU1IlF' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'xhhEFpb4LbNrXtIZ' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'skmrwDpihfqLzku8' \
    --podName 'M0WRS87zgYLp31Vy' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'XYWB89KEdyfRPumu' \
    --podName 'ka3TXb8HQNU0pc8H' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --next 'hxxWFghKYuciNsha' \
    --nodeIP 'F4gvXH9OXBMoj17P' \
    --podName 'L9d6yXtUHVRZXop5' \
    --previous '3L1xMjEyPpUFB1nc' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '76' \
    --next 'JzMeQK6rgDw7DEKC' \
    --nodeIP '12s7qn3sJrEptrJ2' \
    --order 'Q4kPm99q9zyANHhX' \
    --podName 'NZyTf2mdN7mMLPF5' \
    --previous 'fbwlr0O3yV8IEELa' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'YK9uSjRL0ujRfpU8' \
    --gameMode 'FbzherKBAgN56XHB' \
    --limit '98' \
    --next 'OjEBRICB6pfyZTTE' \
    --partyId '5BGvL0ylQsePrlp9' \
    --podName 'qCbVst8YraRRuAyP' \
    --previous 'ajmP57pJ45ekMU1V' \
    --provider 'kWsZZD7g4y40tKXy' \
    --region 'jCYk14Jpn4NmLMsj' \
    --sessionId 'dVhzpXYCStS8iPJE' \
    --userId 'n5wwJ121Yd4lbtIb' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'jQL9E55N1FCoxlcr' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'j1OPeNsTs4Eh2ssg' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'TsTkf5mOwLRpw7vo' \
    --gameMode '86vdaFpYF7pFZKr9' \
    --limit '12' \
    --next 'ygqMyyiRwJdc30Y3' \
    --partyId 'x3uIOEjWSzc9NcJP' \
    --podName 'el7IBIEebRoNR0Yx' \
    --previous 'lJ8V5b1dW04BXGoV' \
    --provider 'masduJinmFM90ouu' \
    --region 'FpTdgtkiN82tPB7l' \
    --sessionId '5UCIcg1RR3uL40Ma' \
    --userId 'q766oYlMPJ77iNFw' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE