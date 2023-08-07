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
    --body '{"name": "zbp2VwDjKfRtw86l"}' \
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
    --body '{"token": "kt1Pdq1uUIYlmgtA"}' \
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
    --body '{"active": false, "claimKeys": ["ds1OZ7phwrkEszi2", "sRsM7KrDQNZD8v9J", "qHkt9Ov16HuzrVZ8"], "dsHostConfiguration": {"instanceId": "gaX51yXQW0wO6o5e", "instanceType": "VWfi9EDxA1Qw0OU9", "serversPerVm": 99}, "imageDeploymentProfile": {"commandLine": "t7T83va95KtbJsQI", "imageId": "vETlRyLsoZlr86cM", "portConfigurations": [{"name": "70ppivqTJnB74Zob", "protocol": "EkSXpZ6wHQtsV9Qw"}, {"name": "ONWowDLLsErXsqI8", "protocol": "BeH8F81M7Ve0gQZg"}, {"name": "KkLrwQnvG6noGiss", "protocol": "aOWFFVUj6XrAtvYr"}], "timeout": {"creation": 79, "drain": 56, "session": 93, "unresponsive": 32}}, "name": "RBmEMZepbbfKquJb", "regions": [{"bufferSize": 99, "maxServerCount": 2, "minServerCount": 77, "region": "IzeZwDT0oQ6Zc9ck"}, {"bufferSize": 30, "maxServerCount": 91, "minServerCount": 20, "region": "10vStRfxviMu13zU"}, {"bufferSize": 61, "maxServerCount": 31, "minServerCount": 62, "region": "405MjDGbUOZP54Y9"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'vecydRfAHWBIiR2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'HYRvGataGjX4xd8h' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["iDCy3aoliqtzz22g", "Y3HrV64worAj2yM3", "KG7Mt1GRoj6B44Q0"], "dsHostConfiguration": {"instanceId": "fcY0smAzFrNlRur8", "instanceType": "YgZg3cVJI7u2Rwls", "serversPerVm": 93}, "imageDeploymentProfile": {"commandLine": "DXNsk5J2nx0YPc1e", "imageId": "wP44QHvM9ZQ9my5g", "portConfigurations": [{"name": "vgxsYbgK7cqoyydA", "protocol": "gqL7vLW6Mw9cLp3D"}, {"name": "ga3RfxFUXnUWEGHe", "protocol": "CH17vBl0TVlctjM1"}, {"name": "2szX45OUHL6LtFUE", "protocol": "aABZ5Y1GtLvgCOOD"}], "timeout": {"creation": 44, "drain": 61, "session": 52, "unresponsive": 58}}, "name": "TIzlEWnsRamEbvwQ", "regions": [{"bufferSize": 78, "maxServerCount": 80, "minServerCount": 1, "region": "tW4PWoWxhRZvWqez"}, {"bufferSize": 27, "maxServerCount": 72, "minServerCount": 14, "region": "tSw7sEiEboRTI2CR"}, {"bufferSize": 28, "maxServerCount": 60, "minServerCount": 37, "region": "slfUVuUK5ptlEgFP"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'pM3YGQzTZOP2JTwE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'X9SGM1MzSox6LYIU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'IOKAhx4iIPaq5CMx' \
    --namespace $AB_NAMESPACE \
    --count '47' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'SL5PwURVKifpQUMn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '0C7pyTXB1BnvaEMV' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["NHibpWFvVYDRb5sh", "59fY5kkGz2yB4gVA", "jlZRco0a86DEbu2f"], "isProtected": true, "name": "Nk3WtFdAat0hzEG7", "removedTags": ["V2xOJMl99ef0ryJJ", "z7fhXuFQvuZmVMPw", "rk1JZ7S1SlfALNaA"]}' \
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
    --serverID 'uiPLIW90Li8xcKzh' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'o4FS46u91sq2IgjN' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '3NcSUreQ3hY6Qf7e' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "NN25dsLGKNonh9rD"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["UDi2zPlfS8I6Q0tk", "gXPinmQbcMNIgQYr", "0tSDDbpdz5Z9c4js"], "regions": ["J6ZlzFEEruOyj2R7", "eSx7mCnrvsn4RTkr", "eqdCpvQm0mYOCNsh"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '25KH5KsOBXi0apIQ' \
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