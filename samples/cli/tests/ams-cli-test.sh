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
echo "1..24"

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

#- 2 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'AccountGet' test.out

#- 3 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ZkjIY1XeLJQ3fnuH"}' \
    > test.out 2>&1
eval_tap $? 3 'AccountCreate' test.out

#- 4 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountLinkTokenGet' test.out

#- 5 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "VIVi8dh3iTRV1DmU"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountLink' test.out

#- 6 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'FleetList' test.out

#- 7 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["zqnNnD477nAno89G", "nUCq2sT6doO6EUPE", "YmkSDW8nMo8julPO"], "dsHostConfiguration": {"instanceId": "atVpMkNp3wdNyFcd", "instanceType": "ac3uYYvhhc38epM6", "serversPerVm": 68}, "imageDeploymentProfile": {"commandLine": "aOjny8ghTulDzWAP", "imageId": "LPmlGORtj2bTBxy6", "portConfigurations": [{"name": "3ukOpD9YejQVt0fP", "protocol": "NCC2ZSaMPPeUj8cR"}, {"name": "4vxlpiFO4i594WM9", "protocol": "MSfRblr11kbbBjlZ"}, {"name": "StJEXDE2h3uqqmsK", "protocol": "4d7B0uPBCzkBfLD7"}], "timeout": {"creation": 98, "drain": 89, "session": 81, "unresponsive": 59}}, "name": "6e4LBeeJzKnsp9sQ", "regions": [{"bufferSize": 60, "maxServerCount": 15, "minServerCount": 24, "region": "hils79MDFUT9HLff"}, {"bufferSize": 18, "maxServerCount": 76, "minServerCount": 78, "region": "XMkUkObxyyyAmo2z"}, {"bufferSize": 100, "maxServerCount": 3, "minServerCount": 18, "region": "g1bZ6Emp8XbDB9Ai"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'JNTYR410lGVohYhY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'PXcX5NQaJD7ZQfU0' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["ZJrB7oTb3qVVmms2", "XPrORasHh55FOAud", "RZqI64pFwiuAxTp0"], "dsHostConfiguration": {"instanceId": "LAhcBuKnsuwIABtp", "instanceType": "PvTamLrfK0sDaFEh", "serversPerVm": 59}, "imageDeploymentProfile": {"commandLine": "QdmLNUoX7IhePOZM", "imageId": "hO8l3ukgOemFAtWo", "portConfigurations": [{"name": "DZVO1IsP3lDxc29q", "protocol": "KmnKJC8xl6b0fxoK"}, {"name": "YGrdkUW9rO3z4B6U", "protocol": "zLfc8no87rUBJ7Wh"}, {"name": "153hTDZWcGRcXdol", "protocol": "LkZstyQTSDPBSpw1"}], "timeout": {"creation": 32, "drain": 94, "session": 21, "unresponsive": 21}}, "name": "tNoRcQXNTZQFX0t5", "regions": [{"bufferSize": 70, "maxServerCount": 23, "minServerCount": 53, "region": "OGhEmwJ9AgO3OWb7"}, {"bufferSize": 70, "maxServerCount": 10, "minServerCount": 62, "region": "9aOYt9qWnOSu5Z9l"}, {"bufferSize": 22, "maxServerCount": 6, "minServerCount": 46, "region": "FJ5gvd82mh8TBvI0"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'aTJR0uVPqFMJCrBH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '3QjJpvrCv0pHGhWm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '6CN6S4vxR7UcTRVJ' \
    --namespace $AB_NAMESPACE \
    --count '46' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'MUJphPtLBCyagt6k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'zyfvsSFbtQo144tK' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["O6bJkVv8Gifb4fjG", "F2x3rFrK13G5sgcG", "BJF6oGwstGnXq0Q7"], "isProtected": false, "name": "3RLTymfYqrHakTMb", "removedTags": ["EVM3bukKFR8Jbilm", "HDuGLhrHvWYpSNme", "eUTHXuW9nJkPtFko"]}' \
    > test.out 2>&1
eval_tap $? 15 'ImagePatch' test.out

#- 16 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'InfoRegions' test.out

#- 17 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'Gu1HDvBEbvk7TUmn' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'LtLx2YZrR3Gsr3Ss' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'Du8q2UdOpxOgm1t8' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "DtJ9boH7cdqXEAGQ"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["uJUTFu9K829VfUm8", "UNmyAfsISPCNFpJG", "1WDWioBLAXd8zHms"], "regions": ["6NYD6LAJqW61Ve8u", "MDPhmX70sCWpJDyZ", "CXNW1cmRV2ghVgUb"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'pzGl0mJaaLzZnk4X' \
    > test.out 2>&1
eval_tap $? 22 'WatchdogConnect' test.out

#- 23 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 23 'Func1' test.out

#- 24 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 24 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE