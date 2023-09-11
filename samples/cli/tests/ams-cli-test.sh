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
echo "1..26"

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
    --body '{"name": "ZbEuvbsC08rimVYm"}' \
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
    --body '{"token": "3Iq6ClfdFbRA3IeD"}' \
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
    --body '{"active": false, "claimKeys": ["HPT23voOdCf9IE5U", "BL5FVNZw1e6kHPFf", "gHujmq2GBn1TJwIg"], "dsHostConfiguration": {"instanceId": "zbOGjN39Z0gu9LS4", "instanceType": "pgUZECOXUPnnV9p7", "serversPerVm": 59}, "imageDeploymentProfile": {"commandLine": "RAJNp3ZSpM6INAew", "imageId": "9X5OSQ0BQlbQvsrH", "portConfigurations": [{"name": "OTuqTVMPkloN1460", "protocol": "j6z6RV9wK1Z1Zzhz"}, {"name": "P4BUHcPqoCUzNBsx", "protocol": "PeyuAWOfStgl2bpF"}, {"name": "OUwsKcBdgMJteM6P", "protocol": "6ayo6zpR4B7Om7op"}], "timeout": {"creation": 16, "drain": 28, "session": 61, "unresponsive": 23}}, "name": "db97x4KmRj0deYXe", "regions": [{"bufferSize": 0, "maxServerCount": 13, "minServerCount": 23, "region": "3kEuSzq35qQr3kW0"}, {"bufferSize": 2, "maxServerCount": 78, "minServerCount": 69, "region": "GWR4E8rf1KAWq4sn"}, {"bufferSize": 45, "maxServerCount": 12, "minServerCount": 42, "region": "oqyYJ3LoDGuhtX8h"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '3eRpDpeNTUpE2TO2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '4OogBGBUR3TXZVrm' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["LhYwshmhm6W92AKO", "1yf9L7MnwOkjFm11", "AmA2YNWAix3smG19"], "dsHostConfiguration": {"instanceId": "jchTWT8OZptfko6M", "instanceType": "XNv5Alz2sgXNkROw", "serversPerVm": 52}, "imageDeploymentProfile": {"commandLine": "bysjcxP7yPkCWmuC", "imageId": "Ya4gQw3r0pjoyKnp", "portConfigurations": [{"name": "YTshAgAdoCMWWb7C", "protocol": "ygWQoP3TZgbhEw6o"}, {"name": "tBw5IETMCnMwnQ36", "protocol": "tns0IOHkAEufS9ZX"}, {"name": "BY2Jm2d808S3pUMz", "protocol": "ht2bU7y7bDQkEDIZ"}], "timeout": {"creation": 32, "drain": 11, "session": 28, "unresponsive": 86}}, "name": "fVEOrxp8ZC97YhN6", "regions": [{"bufferSize": 43, "maxServerCount": 92, "minServerCount": 74, "region": "9uNpmOjaONo5vvPc"}, {"bufferSize": 98, "maxServerCount": 35, "minServerCount": 86, "region": "Rjf8uwislxpp2SLB"}, {"bufferSize": 21, "maxServerCount": 17, "minServerCount": 20, "region": "EFPdo7IznzAFydW0"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'M8sMDg5kgwJROUNu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'AD2qQCGE1u0OVjQ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'mtLmsL4wRSBsHhiH' \
    --namespace $AB_NAMESPACE \
    --count '21' \
    --offset '70' \
    --reason 'bNgcfoCp9lvwbPU3' \
    --region '0CBD2W2CMu386phb' \
    --serverId 'Qg4IV4AbVdIKviNv' \
    --sortDirection 'QRiTKqvzvNSQKOXR' \
    --status 'DnAX9wp30fnmXqgf' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'SccBNLZOmIbr6C0B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '3ofYdJI5U5TD3YlU' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["6r1xhi9n3CbAmq1U", "TnbrRdPMUPH6yS0d", "0Qi79iNDUgZGjNb7"], "isProtected": true, "name": "h40BqH0bV9eJ0EJS", "removedTags": ["JZesolhHyQzU6oln", "VE9XzZSuFeDFYKiX", "DghFiNCMGg4Qjqwk"]}' \
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
    --serverID '9aKazkz3KP977ema' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '78knyGLyaj55bboB' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '27RkCxVpPIQBsaxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "6ok40eL581eK3Nbi"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["Ty8kx1OIgk6nJfHW", "bF1WyWYtDPrdns7o", "YDWf0zgSfGCRbZo8"], "regions": ["qyb2MTccZGxoH1Wn", "FcljUw2IoDJU8sfD", "bfMxisaz1y1SME2y"]}' \
    > test.out 2>&1
eval_tap $? 23 'FleetClaimByKeys' test.out

#- 24 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '6GrL9nPqu9eTXkBZ' \
    > test.out 2>&1
eval_tap $? 24 'WatchdogConnect' test.out

#- 25 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 25 'Func1' test.out

#- 26 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 26 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE