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
    --body '{"name": "0NFUCFRKkACenfX7"}' \
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
    --body '{"token": "4kS5SbEHx7NCtl9l"}' \
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
    --body '{"active": true, "claimKeys": ["Zp3wkKLf48yhbhzJ", "4xB8oOwLzYILCmLx", "bt6W1VJjZYXQEQoC"], "dsHostConfiguration": {"instanceId": "JVWtln9Vc7kgR3Qc", "instanceType": "yeCwaFljMofENKlx", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "5t7szwqviKyv3C9a", "imageId": "Go79Ebf2P1AtyZsQ", "portConfigurations": [{"name": "GbIHAIICqBsh0nfV", "protocol": "nQRnl3zCvKhfEc2m"}, {"name": "Y2o9i7JjOSTdk5HI", "protocol": "lhygOHyfbllE7c5w"}, {"name": "y6dVrwPnWOz2jh1b", "protocol": "z8waP9YVLaX5H9JY"}], "timeout": {"creation": 39, "drain": 4, "session": 63, "unresponsive": 78}}, "name": "dhRchXMKlem72OfY", "regions": [{"bufferSize": 68, "maxServerCount": 44, "minServerCount": 14, "region": "DElXl2jdryj6ug7L"}, {"bufferSize": 10, "maxServerCount": 48, "minServerCount": 28, "region": "RH8uFQU1kG5wWwRF"}, {"bufferSize": 21, "maxServerCount": 35, "minServerCount": 4, "region": "HPsOV8q0uvmp04xv"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'l6lGDvr1BAiZvRtj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'eczXdRTvfuIclwEP' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["nrDtsiJAvnR0R7k4", "MkOppxDcIgFslJ4N", "m15kbwSA3g0Q5HH7"], "dsHostConfiguration": {"instanceId": "8gpkU4vsykKUgRGC", "instanceType": "F5dvQZ4mvqWlI7Y7", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "kkrOkAluun6CChVh", "imageId": "Ho5yTJhBxkDbCFen", "portConfigurations": [{"name": "4AJR4rPsheoIUSq7", "protocol": "XHK587chCxctqKDN"}, {"name": "jKPZhJzHQmOOG3me", "protocol": "ULxpE8WaUUswlew9"}, {"name": "CfVFAAYPY1CPy3w9", "protocol": "BWVWmok8npvKIc1P"}], "timeout": {"creation": 61, "drain": 86, "session": 80, "unresponsive": 41}}, "name": "RJAvoIDo1fv6Epb1", "regions": [{"bufferSize": 8, "maxServerCount": 30, "minServerCount": 45, "region": "qobZ7UhENi9TSBGU"}, {"bufferSize": 19, "maxServerCount": 76, "minServerCount": 62, "region": "7ps1AaDL9vw7G6rc"}, {"bufferSize": 32, "maxServerCount": 5, "minServerCount": 36, "region": "55mqTetE5j066Ame"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '0AptOEVujm3OBQN4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'C3mZJyrVR1MXOvM8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'z03E9FlzQM9Bbvvj' \
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
    --imageID '7ocztXLeTu88oYj0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'nhmc890lFkjTmyGK' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["bH7lw5w49TKky8rJ", "QzzQAIM5YvogsoP8", "pg7QtYxL3VpTZHuY"], "isProtected": false, "name": "CO44zBHFlfNxobuf", "removedTags": ["KGwaKsvy8VPUreJ5", "oc76wIcBjrDRZfaW", "KjRIxBOlG2yKwFRq"]}' \
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
    --serverID 'Eifkj7tDRynqv5IZ' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '2GbSZNkiqAg1cp2P' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '3ate5kDWOGp09tE0' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "kxVmsol5WPd8NSXb"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"region": "i42r9FtWtaW8avlf"}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'U8rRvYsGtgTddooa' \
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