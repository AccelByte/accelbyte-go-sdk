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
    --limit '8' \
    --next 'RPBotYurvFqqbtOR' \
    --nodeIP '25P2y9a9Prk1xKIn' \
    --previous 'vJMCdTgvcxMXtH2b' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'VtNtOvKj8QPlfdtk' \
    --podName 'n1R9tcVOg3t8m8hx' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '86' \
    --next 'o31hWbBMH8x7pSdR' \
    --previous 'yR08n4OVYRahFRdO' \
    --nodeIP 'reXoXBYLHS5chUvB' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'EC8Fgacb3e591ibA' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'JwGY4mWIDXoJc9yP' \
    --podName 'TM5ViUS49vcMDduZ' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'wP5KUb9BsNRgIZqH' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'r8t7QmIEt9smUz5t' \
    --podName 'LgIfIjpN2DYiuvZy' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'jnEWs2XF18qZCWAd' \
    --podName 'ZgTtjL6oM3Ct242c' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --next 'aPgZlSFJpg654faX' \
    --nodeIP 't30152lc2ChDdWEK' \
    --podName 'p10lcS3gs6tjDzWX' \
    --previous 'y8Kx7Cy0GC5GsNBD' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '12' \
    --next 'xAAAXlaAHkQ5d9Lr' \
    --nodeIP 'YqyGAOxdhHHTSnE5' \
    --order 'u7Vh3SUTPXWOTUWt' \
    --podName 'ESpaf2lbDgDrfCpW' \
    --previous '9m3yFZvB3M9zL7rX' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'tMpGWM6VGZjdfP7I' \
    --gameMode 'qlwCWx2jtkN5dNCB' \
    --limit '21' \
    --next 'nZZ4coiyEQCDXkY9' \
    --partyId 'ougTnK7kMm20RjuH' \
    --podName 'goEqWQgYn6yhGslL' \
    --previous 'UbJm8r2sr39I1UAD' \
    --provider 'x9EEvbEXS2XY5hIs' \
    --region 'ZYSDr8yiO3uYvn5A' \
    --sessionId 'HI9Y0bDhYydbIvKS' \
    --userId 'TNBwP8p45GUKQ4Fe' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'e1DTA8G0vKFrp5AR' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'RJ2IYoz1hugySxjW' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'KgLbLPURyI9XNItt' \
    --gameMode 'E6ZJdc1xlVf28shr' \
    --limit '50' \
    --next 'o9jw35wdmXKJiEnd' \
    --partyId 'VhzYUeIb003YAaKk' \
    --podName 'DqRPKgYswa3v0ztb' \
    --previous 'iJgFLCOtRWgMa8uF' \
    --provider 'W7w71aC6G8gnzVm9' \
    --region 'Ij77Kbf5FIrZ95r3' \
    --sessionId 'g6MmUJDxZ3oxsUId' \
    --userId 'K5hpXxISkyVl9T3r' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE