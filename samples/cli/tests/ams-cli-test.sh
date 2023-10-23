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
echo "1..27"

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

#- 2 AuthCheck
samples/cli/sample-apps Ams authCheck \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
samples/cli/sample-apps Ams portalHealthCheck \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5SKemesaV3jPh2f6"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "44k6FSHEs2pDmy9J"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetList' test.out

#- 9 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["H8nYIU6cMWgd181O", "icY1B8X95Dvhfei7", "7rVF1IJmGP1Mv989"], "dsHostConfiguration": {"instanceId": "UmnzOAkzawf9zksy", "instanceType": "yAVgDMOoZjxIVov9", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "2nodvp4igsGd2IAk", "imageId": "JfEpTHG1BxRF72uF", "portConfigurations": [{"name": "DFt6F67FBavhr2LY", "protocol": "nAbPXUWa6qzZ4LeY"}, {"name": "SGWasUtrfJkedfnJ", "protocol": "e4BOrtt6BtztFMfP"}, {"name": "xc5AO6Pbj0cZd0TC", "protocol": "kjdkoaaHxSN1tfSP"}], "timeout": {"creation": 65, "drain": 46, "session": 60, "unresponsive": 24}}, "name": "dVdH4gYbDm68NtLg", "regions": [{"bufferSize": 22, "maxServerCount": 86, "minServerCount": 85, "region": "RQMDbuVg5hTAKeSR"}, {"bufferSize": 56, "maxServerCount": 8, "minServerCount": 13, "region": "fhTEShRFRtGuwi5B"}, {"bufferSize": 59, "maxServerCount": 54, "minServerCount": 21, "region": "zGAn3YNkRRpV8JZp"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'QIcmICRM6c9qKuhC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'yijLox03MjcqHW7I' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["KONGUUqJoByPzYOK", "r7PBMvbYzbxfnsCc", "VBKIaeu99VYV028I"], "dsHostConfiguration": {"instanceId": "E7hWC9VOj4ybotKG", "instanceType": "4axTVDNrqmajiIxn", "serversPerVm": 56}, "imageDeploymentProfile": {"commandLine": "bZ6bHcAPagmOLrT8", "imageId": "ezhRpvDy57kS0Ao7", "portConfigurations": [{"name": "ITONFyySXGZZapyN", "protocol": "s316i4LLsDwnQKgn"}, {"name": "o9C9B0lhy9JVyBPx", "protocol": "oHNntc7PYQLAgbP2"}, {"name": "5EryTLSC4TLWIIdR", "protocol": "2iTN0gs5clIx0JZT"}], "timeout": {"creation": 13, "drain": 84, "session": 36, "unresponsive": 8}}, "name": "4B7owUNM9US84t3V", "regions": [{"bufferSize": 77, "maxServerCount": 20, "minServerCount": 39, "region": "NeBJzRHujCfoXvEk"}, {"bufferSize": 91, "maxServerCount": 85, "minServerCount": 18, "region": "i02ItbCaFlD5Q00X"}, {"bufferSize": 81, "maxServerCount": 88, "minServerCount": 87, "region": "2Z40mdcrIFLYS1T9"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '2s020OmUEExsaFW8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'h09EEaguH3vggHbE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '8X8pjd2sCQMd8al1' \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '19' \
    --reason 'UoybcquG28ru3bIV' \
    --region 'IqRWz93dz5A9PP2E' \
    --serverId 'ShI1RMnB10ptChGN' \
    --sortDirection 'V8h5nNAELyTH6NlD' \
    --status 'e4HxeniJpCjF8zAP' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'ziIN1hTFHtJdkqFU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'qIFTDoD89YWqfm92' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["6x0nvbw6EijitTGx", "6ZQpmEscXpi7dKAx", "ZzkPf6L89XeiPjs5"], "isProtected": false, "name": "9ghYFOre73QV2F4A", "removedTags": ["EcYWBpMIwdGYEh1V", "bVtshYLxghpafSzx", "PCfeBaQOju2VgFAT"]}' \
    > test.out 2>&1
eval_tap $? 17 'ImagePatch' test.out

#- 18 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'InfoRegions' test.out

#- 19 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'DdGmOHizlC0JeiXc' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'XobxympiHVY7p9wq' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'S2B9ETrqzrPCJiNK' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "GF7CVM4UAi8UYugi"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'NEbIJSaHbfA7V81K' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["0oogOTOOaOcxqYN5", "JiLv3fGE1klycFL3", "hOjVjnkOETbtH9u4"], "regions": ["XvjBiA6RxL2vyU6g", "rF9GMwgIEEWYupJL", "qvfM9cw4PwdohBPv"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'TkA0H4PwKJyUEpnX' \
    > test.out 2>&1
eval_tap $? 25 'WatchdogConnect' test.out

#- 26 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 26 'Func1' test.out

#- 27 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 27 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE