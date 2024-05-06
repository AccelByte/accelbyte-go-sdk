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
    --limit '59' \
    --next 'NcEOqkf9Xyv0gzbl' \
    --nodeIP 'IjFt4v58lHlLlpvl' \
    --previous 'pGrBwcGha8DMNPnG' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'oEDAfLh3uzfl4ZsA' \
    --podName 'b4iegoouaSJV4gF3' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '69' \
    --next 'wqCDFY5MKj9BNIUP' \
    --previous 'l4grDyTWsRsSkbsc' \
    --nodeIP 'h0tUgrmHWX79YvaZ' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'etaVdHp8tbY32bjz' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'dCeYvByb7X8S4AYH' \
    --podName 'lo5RjAqxSGoqVDWV' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'QLHzbhARde63F9uT' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP '9m0Eb48VwjgfN01o' \
    --podName 'xW3pmvd1otMxi8Ns' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'i2QYcgUMg1S2rs4E' \
    --podName 'vbcc53BNnLeQp1d2' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --next 'EwuK6hzzFdq8dKTD' \
    --nodeIP 'p6hIGtdSLeUdY4jJ' \
    --podName 'br0hliRw5yodgsbs' \
    --previous 'NeqjEVOirnE1NjaF' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '39' \
    --next 'ugeHw6q1ywsLbzAT' \
    --nodeIP 'QdbiRy4njofFofAb' \
    --order 'VMaYacrezqfveRYc' \
    --podName '4nQrbgJr91YsUEXT' \
    --previous 'vBXDv77nlj5vMVvT' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'xCjfPOl25NrT47dw' \
    --gameMode '0opnBxCgKm5FrrYF' \
    --limit '46' \
    --next 'PIUSQCiS5X68tDSt' \
    --partyId 'nHITiBRD0xViDXCz' \
    --podName 'ngIWLpHvYO5GI0JU' \
    --previous 'PR2znNyElWkcEeUZ' \
    --provider 'MeRQnn5jI01a2uf6' \
    --region 'vocSBCdK4JshbSME' \
    --sessionId 'FKHsaj1OmUNEH3OO' \
    --userId 'texunVO6OdB6Rs4p' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName '0v8arEqOIROEyBb5' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'DJTb9lvZNTVKb4Ug' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'plJ6ZY02jk9MyqT9' \
    --gameMode 'DfTU6PXtiswPf7FB' \
    --limit '60' \
    --next 'lX2ycPgJrXukgaMy' \
    --partyId 'xAJU6nuw1xvysq6i' \
    --podName 'OZQNaX8oOdmdTVA7' \
    --previous '24lPBjFv1PCn1sQz' \
    --provider 'Ul26sJvaynri1LZ7' \
    --region 'CC1YY7zIVbyUgo7D' \
    --sessionId 'ryFj91WYb1g2jVRC' \
    --userId 'L1zpOGZfenS5DGi5' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE