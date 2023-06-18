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
    --body '{"name": "4HHVABguCmXfOmCW"}' \
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
    --body '{"token": "w3zD1ms3dd1IUv86"}' \
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
    --body '{"active": false, "claimKeys": ["tQznlKTM4c4ZCXQw", "YyrAlVTIjK5AbPeY", "MV2HeDYI6grI6lHn"], "dsHostConfiguration": {"instanceId": "pogoFRHa5TjN2I5G", "instanceType": "EJgUo0iwbDTy85LS", "serversPerVm": 53}, "imageDeploymentProfile": {"commandLine": "SkmDRXm3DaaxEwv6", "imageId": "qdruYLt5OJ52Y1ec", "portConfigurations": [{"name": "vfxXvGY2IUX5ISrx", "protocol": "BTY2GPnJWQ9JmT0Z"}, {"name": "2CPeyXzyWF45gzA4", "protocol": "kM6to35fkxaVyxD5"}, {"name": "wG7AaaBQ6OjMQ4rO", "protocol": "3p8sMQxUY0wzjwmW"}], "timeout": {"creation": 62, "drain": 24, "session": 55, "unresponsive": 21}}, "name": "z4tuJdBf8hBZiZV2", "regions": [{"bufferSize": 49, "maxServerCount": 58, "minServerCount": 18, "region": "mRe0MRqcbG0SLfev"}, {"bufferSize": 80, "maxServerCount": 13, "minServerCount": 21, "region": "UHbDQTje8JDBQQGu"}, {"bufferSize": 39, "maxServerCount": 73, "minServerCount": 65, "region": "eYtRGlyaRqkruKF9"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '8RvGqDuvI5vrFASE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'Sy3G9Naf9QpBmUzp' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["a7H3nHUKPMkkLTl5", "kctd87O22ufrc1PC", "V4xdhsj0dc6yu7ED"], "dsHostConfiguration": {"instanceId": "dCE2JWtiYuDP87cJ", "instanceType": "sfLCl8OYncmmKH3J", "serversPerVm": 34}, "imageDeploymentProfile": {"commandLine": "dKvDqWIYpqSIfCtK", "imageId": "rDlUvalALGr5E8cU", "portConfigurations": [{"name": "XMz7aE0Lyxp7yZmb", "protocol": "dXRFnTLwvrsyEOJx"}, {"name": "8m8vp5LM608S73eh", "protocol": "lPzFkStqFIYeiOIA"}, {"name": "k7BkHVqBQWZde69P", "protocol": "QNhqR3tsyc2PhkDu"}], "timeout": {"creation": 11, "drain": 100, "session": 17, "unresponsive": 33}}, "name": "DswgBKHJBBK3BCV3", "regions": [{"bufferSize": 47, "maxServerCount": 73, "minServerCount": 38, "region": "oIfqSXXUEmbtKUBl"}, {"bufferSize": 1, "maxServerCount": 71, "minServerCount": 96, "region": "3r3SFDhprJ12ZFax"}, {"bufferSize": 31, "maxServerCount": 88, "minServerCount": 99, "region": "5P6I07cIAn32e2Nr"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'vXBKulsdUWpd00Gm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'Jov5fddiIP7Iwipb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'zsXhdOQpiqV9YDjO' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'RKtTDYf5NnT7EuAC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'XHgxvvWyyVXPZxu2' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["mgrskDpEH04LJbEb", "WjA9p3kKFvTmVjzS", "mIXYxqsuvaO1oM1N"], "isProtected": true, "name": "3ilXNOWKkZvKxLPV", "removedTags": ["d8OVYcNkJvIhGvEq", "Hzgd7hD6wqO71ZEU", "rQjwj4ZXBbFdjg9h"]}' \
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
    --serverID 'C0W96NacmSugI8KL' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '8LevCcHEDS9ITPL2' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'SyQjfBpmWbAMntgr' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "N2v89vdlkgleljM8"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["SWANq5hpSXo36UbG", "kXqDTsw01pR6VlQS", "FVvHt3A8Xj7G0yAH"], "regions": ["XE8U3BSxXBMhJ7CV", "K28V4SUmNBB28eyN", "Dl4sefx3bHrP6Wkd"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'UbYYEISP3NXdamfU' \
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