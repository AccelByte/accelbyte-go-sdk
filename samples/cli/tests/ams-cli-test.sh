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
    --body '{"name": "Rur3trjuhs3O50Cl"}' \
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
    --body '{"token": "q6Xxp8SbnNGMclQv"}' \
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
    --body '{"active": false, "claimKeys": ["QjVliqjUHQ7rV2tm", "CP58Xdfvb7hPRg4Y", "ZTeirT5RRr09JaQp"], "dsHostConfiguration": {"instanceId": "8I70rbxs1lVbDVPx", "instanceType": "m15H7B4wFdQ7F8Lz", "serversPerVm": 15}, "imageDeploymentProfile": {"commandLine": "lujg2AbJ6vW2urf7", "imageId": "ooGohqOouM4Kz0Bg", "portConfigurations": [{"name": "PqlITHnTSzYGskWt", "protocol": "3nUYVqyFbIw75mb1"}, {"name": "dDIAEDJbzyWLbfbY", "protocol": "G8824dOMwtkieS3b"}, {"name": "EyQvUmKGqT3BvkJU", "protocol": "p3BPbQXhekqKKCcR"}], "timeout": {"creation": 73, "drain": 40, "session": 7, "unresponsive": 79}}, "name": "OQA8gRaw3ttkPzGA", "regions": [{"bufferSize": 98, "maxServerCount": 68, "minServerCount": 94, "region": "lAQN5um8qRmW2Jp4"}, {"bufferSize": 22, "maxServerCount": 10, "minServerCount": 94, "region": "L4ZL2vqzipHdn7XM"}, {"bufferSize": 14, "maxServerCount": 3, "minServerCount": 73, "region": "FUOzciUwhVS2inL2"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '4TojNq5pIDXmGKPD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'X2H8LFWzyvJAixhH' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["teUst0aPXoyBSTll", "uMe6mHwlNA9eBX32", "DP426Y4Sq1vyW5kp"], "dsHostConfiguration": {"instanceId": "yWVUAuYlmlDhtnCw", "instanceType": "uMeFlpsea1HFXJfu", "serversPerVm": 38}, "imageDeploymentProfile": {"commandLine": "MiyOus0zyWpVNr3p", "imageId": "3SMHL1bjx3wFpj6H", "portConfigurations": [{"name": "QZyE53YB6f21fP6t", "protocol": "WCy5ZxzcMqQK78Wl"}, {"name": "3W92JzThqkfNdrIz", "protocol": "Jpv1KkPoUfq3C1HV"}, {"name": "33a72VgrddbL23g0", "protocol": "sANtjDUPGG3wWnwI"}], "timeout": {"creation": 72, "drain": 36, "session": 85, "unresponsive": 66}}, "name": "Tv92rZ6CD0pj8ajM", "regions": [{"bufferSize": 49, "maxServerCount": 65, "minServerCount": 98, "region": "1DViXEbtKfiGYgB3"}, {"bufferSize": 54, "maxServerCount": 71, "minServerCount": 87, "region": "9JXRLYlOgDcbzT4X"}, {"bufferSize": 96, "maxServerCount": 19, "minServerCount": 32, "region": "VOaksN4sUaS24krc"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'I33f5BMUrRsLbvGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'EfY9ndCBs61fjVV6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Ox9vcvOFnUXJWFGT' \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '80' \
    --reason 'cUjH6f7pdRjGneZA' \
    --region 'FD5dLOKHmuAvxqxm' \
    --serverId 'mrdvHEvDUprpOrOa' \
    --sortDirection 'KPlnmYuvzkHtc1IS' \
    --status 'spumlPNmZjWfvVUT' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'AefldK3dUPhUDsA9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'Eg7MS1FMeEoewTQC' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["wIVy4gvWRZcQkymI", "7ViqNZDCTnC40kt4", "DZAjdiNP3UvsS43S"], "isProtected": true, "name": "4WWKDzdsmMLNLmk5", "removedTags": ["fIQtssXoJmIukCrn", "52GMA0hojQMbMVRk", "NSIJWdcX2NM2Gg2A"]}' \
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
    --serverID '55Xw6z8AbR6Mkecq' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '0YKGpK5ctGI7VwAY' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '24POsMqTxLL0jJFp' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "RD4cOiqMrXzhpAaX"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'PF8cuxajR7vpVLNw' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["TUg55LI6qsZK0xPW", "KAVVf5o6H1mUrBSG", "AEsAKkJtiyWqjHrA"], "regions": ["H1N2y0QwBQgMjpyb", "JYffAi9zdtc4IKEI", "KdyRUdG3mTMdJaLc"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'gxYFjzrN79xXirUC' \
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