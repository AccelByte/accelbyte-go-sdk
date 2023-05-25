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
    --body '{"name": "DUXPEci92rPgt3lH"}' \
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
    --body '{"token": "ula8FI8AzJC2HxTl"}' \
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
    --body '{"active": true, "claimKeys": ["SzmowhInpW5vWsNo", "Enuq9x1ywHQbXLx2", "hf9G4xqP25ryZ3wB"], "dsHostConfiguration": {"instanceId": "0oc8QuGXMT1XP8tV", "instanceType": "6Z0oUwYkN5uSRvX3", "serversPerVm": 73}, "imageDeploymentProfile": {"commandLine": "nBr6sBbHDTkW1US7", "imageId": "7tAio2rqiYES5aNM", "portConfigurations": [{"name": "wre19qJrEkieUs88", "protocol": "p9kK8wZSHQiQ499W"}, {"name": "hVAtDT24f7PvJoZt", "protocol": "3Tox4KbyHyKFbVA0"}, {"name": "A8KWV8SbVLGUFUhy", "protocol": "dUw1Gn7kfOyfDvDr"}], "timeout": {"creation": 48, "drain": 66, "session": 13, "unresponsive": 48}}, "name": "0E1rVULh4NnsdnNC", "regions": [{"bufferSize": 34, "maxServerCount": 46, "minServerCount": 11, "region": "OTTIxkDQMgZtJctu"}, {"bufferSize": 40, "maxServerCount": 49, "minServerCount": 21, "region": "yzDdfKaK5AYMdTBj"}, {"bufferSize": 80, "maxServerCount": 98, "minServerCount": 76, "region": "LAQJJYQ6G9XBH5l5"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '8WdFpxN4jgOhNfkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'tQ6ZPeRhfPWnKxcU' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["rwhsmeaflagsBVJL", "58BFrfDtuc9ouPxq", "HtkfQfgVDaTDyDIy"], "dsHostConfiguration": {"instanceId": "NkWD7yda6wThdASL", "instanceType": "hz7iv0p4A3D5s583", "serversPerVm": 53}, "imageDeploymentProfile": {"commandLine": "WikPPE0JiqXs2Faa", "imageId": "FAt3CiUgRKz1LQKz", "portConfigurations": [{"name": "nm3SlUI5CJ05FV8P", "protocol": "hEArQKVYFHAOI527"}, {"name": "Ec2IbZmOlevAqCan", "protocol": "LSv3RBjZ0foYGUf1"}, {"name": "zwq2JfLNM7wmLsPV", "protocol": "WUHAawsTFZ9reufn"}], "timeout": {"creation": 60, "drain": 60, "session": 38, "unresponsive": 0}}, "name": "AO2JnzFJZ3OxTEgF", "regions": [{"bufferSize": 48, "maxServerCount": 84, "minServerCount": 39, "region": "Pkc0CtL0VZUVPzzi"}, {"bufferSize": 74, "maxServerCount": 77, "minServerCount": 58, "region": "LjCPSbuFnYUdcijo"}, {"bufferSize": 12, "maxServerCount": 88, "minServerCount": 74, "region": "vhAyMsqFrYejmOMH"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '9bJPAEDbFjWh3xiE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'JbbH58Kcvd8JQxWX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'vWqxZPiypomq9CbU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'LAzRAqNvinvAK7bW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'F2xK3opcquCrjmzT' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["uxGDuM6DBTSp6QO6", "AU26J6KTic2iPmuU", "tGDYdbT0QVrrxSLc"], "isProtected": false, "name": "F5Te0V1ocJBbheXb", "removedTags": ["bAK9mSelIrLgRFKG", "bCgpyRfuVseTdPCO", "qyUMfyzugX9x5E3L"]}' \
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
    --serverID 'qJuhU23konlhselm' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'uOcp8pMEaRH3KRj7' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '0pIDDLGyTYZ7W5o2' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Qr8nDxLXns8zOfRT"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Kd2svsitFfDJz4HC"}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'VpxucIsCeVXs8ts5' \
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