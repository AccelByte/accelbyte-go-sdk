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
    --body '{"name": "RAtOAI19yvmq74rC"}' \
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
    --body '{"token": "Aqz61gl8dUJjHa5i"}' \
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
    --body '{"active": false, "claimKeys": ["S4uDn0Ss4n8siu0m", "JpSvxIo1qvKbyhy6", "x0csbxTpYm06Gwv2"], "dsHostConfiguration": {"instanceId": "A4htRU3jUoNqv7yv", "instanceType": "CehEoxY67dalzRmc", "serversPerVm": 74}, "imageDeploymentProfile": {"commandLine": "SU87o3JANZas68cT", "imageId": "uLgXPzZhmeIEhZBv", "portConfigurations": [{"name": "zGzD6Kt3IZBZcFYh", "protocol": "iMkz2DE1Vwfj9Ozx"}, {"name": "6MpZTUK97ttu4kXe", "protocol": "tDeFhGi4VGVDZeU2"}, {"name": "TKkGUQDTb7ueTBTo", "protocol": "Tvx51oXC8WwZ5y57"}], "timeout": {"creation": 23, "drain": 17, "session": 5, "unresponsive": 74}}, "name": "JDgmeAGrsscGMF5Q", "regions": [{"bufferSize": 81, "maxServerCount": 10, "minServerCount": 97, "region": "XXmvzglFXyvIYuqp"}, {"bufferSize": 81, "maxServerCount": 82, "minServerCount": 21, "region": "rIF6hdQt6GZjq863"}, {"bufferSize": 74, "maxServerCount": 99, "minServerCount": 19, "region": "D8sKbV8IFExvfZMF"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Ses0vU4GvmL1Pf9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'a3R5db2Yw1SQjKzM' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["yGj4BT9BhODon5I6", "N5F5WDPJFvNTmbny", "i7qqS0alnrRiaChI"], "dsHostConfiguration": {"instanceId": "zNHQKKcmeOGrAMHr", "instanceType": "nIuF7RlHJsFCeHtK", "serversPerVm": 19}, "imageDeploymentProfile": {"commandLine": "8uagy58GV3fpLL8J", "imageId": "TJ8mPnDxbdWPRSOl", "portConfigurations": [{"name": "awHW1anSiRDYR8Fu", "protocol": "sU0VUE9fBKPQLyaM"}, {"name": "9SheH42Y8rwluoKu", "protocol": "mGafGmF6YUh6MJnT"}, {"name": "9hy0QVwzHKpIzicB", "protocol": "G6JFKZnlnxgs9ym1"}], "timeout": {"creation": 64, "drain": 50, "session": 31, "unresponsive": 0}}, "name": "OZZnoBhGUDHcH79B", "regions": [{"bufferSize": 30, "maxServerCount": 88, "minServerCount": 58, "region": "K4114twgd0xUeAoz"}, {"bufferSize": 36, "maxServerCount": 37, "minServerCount": 39, "region": "HLG0vXIqOLTRwdCK"}, {"bufferSize": 67, "maxServerCount": 17, "minServerCount": 49, "region": "nxh4CdAlMXAVaiE9"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'VHPYa6HGkawoVTyp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'kcC5IWQCbLkUu6zF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Yh2mCdFhbsXaDHZk' \
    --namespace $AB_NAMESPACE \
    --count '77' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'uYJhfUi7wnnBelPu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'kst2Fm1Hdy2HnEWf' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["nLW8bnFq959MBfBD", "wnStvOXTmfyN2RiP", "MvOIpWYRqL0ruxcm"], "isProtected": true, "name": "y4kRUljVAKxkbXsl", "removedTags": ["E6omg63cbkTdpx35", "xFLu3Av7xqV4XYyn", "7bV4cIGCRdCbZ5M0"]}' \
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
    --serverID 'JKHbRONx5RIWo1UK' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'V1AEuV5vjYpIDImM' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'P7mJvxohP1x17Fu9' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "cXiyREE5jxizlVhq"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["DikRG7729wNFj4im", "x9zWK9HgYOh2YRAI", "Wxj0Db0rAXdgSPYC"], "regions": ["8DJFIDAUbme4qCdM", "tdqCgfK5bENE9Dco", "mREEGX5uLNZtJvcN"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'uTQPDMegISPdcNmG' \
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