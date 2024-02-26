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
echo "1..37"

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

#- 4 AdminAccountGet
samples/cli/sample-apps Ams adminAccountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
samples/cli/sample-apps Ams adminAccountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Qu34sMkjT6XNV9Pf"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
samples/cli/sample-apps Ams adminAccountLinkTokenPost \
    --namespace $AB_NAMESPACE \
    --body '{"token": "vpxr9Vx8vJ9Fbfup"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'savVT51rVGvMZxVf' \
    --count '244' \
    --endDate '1OkHROaltUgSI8xU' \
    --fleetID '7vNheAsYHtWljt6i' \
    --imageID 'inCkFNnLIIxada4C' \
    --maxSize '70' \
    --minSize '24' \
    --offset '63' \
    --region 'TR5EjvMBpT61WD1l' \
    --serverId 'knnkwQ5cy8zzlAb3' \
    --startDate 'K5yEDk121OM3SG7M' \
    --status 'eXkvQvInEECGHcGh' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'YckTcgOaB0NoEva2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'KzVMm0gXQ9c05FTx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["56OXbvFz2I5fdP9D", "SM0Yksj0BvG2LpVj", "NhDDBrPixkXRPoxa"], "dsHostConfiguration": {"instanceId": "X3pKn4Cx7xwtGmg0", "instanceType": "5dXaseFRW2TwPxOz", "serversPerVm": 52}, "imageDeploymentProfile": {"commandLine": "3vbJhKR3wemL8GRm", "imageId": "7nSDi8IIZ9xieSJs", "portConfigurations": [{"name": "8jVw9suc7yw3vvTY", "protocol": "98N0esCyD9wtEyea"}, {"name": "osOVIz5RU9B6uc0m", "protocol": "TZaNT2MOXJGfxtWG"}, {"name": "M9fJq6sJsABK58l3", "protocol": "JB64jDgeQgGivMw1"}], "timeout": {"creation": 28, "drain": 96, "session": 14, "unresponsive": 5}}, "name": "QkwoVkqVnLEU9A3K", "regions": [{"bufferSize": 11, "maxServerCount": 24, "minServerCount": 84, "region": "WNFr8bfN6iYcguex"}, {"bufferSize": 35, "maxServerCount": 80, "minServerCount": 43, "region": "auxgwUPf2TQemALy"}, {"bufferSize": 35, "maxServerCount": 50, "minServerCount": 56, "region": "4bJeCwb2sV39t1V2"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 38}, "success": {"collect": false, "percentage": 35}}, "logs": {"crashed": {"collect": true, "percentage": 91}, "success": {"collect": false, "percentage": 95}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'qA9F4bZqM6IIdQId' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'YuQS99zo0rj71Ey5' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["x0sZzKMMTLKbQuiH", "BPhU3e8IR7SfAzr0", "PXOqwvQjL6uaYBUy"], "dsHostConfiguration": {"instanceId": "jUMkccCbwv84BglE", "instanceType": "WZsy78L75o9mqLyu", "serversPerVm": 51}, "imageDeploymentProfile": {"commandLine": "y7jkR9esV1hCHMgu", "imageId": "B1b7TfcsXue6LpJh", "portConfigurations": [{"name": "f2laRveGXkpmmmhm", "protocol": "XQFkxEMKq1cqKzWu"}, {"name": "si8GSfhQgbAnUDY0", "protocol": "T4hXXo9Tt2Zl31GO"}, {"name": "2IGqSA819mJCGipu", "protocol": "PpWg8R90BKaYa9E9"}], "timeout": {"creation": 59, "drain": 22, "session": 6, "unresponsive": 29}}, "name": "coHofh4M2CA80LwX", "regions": [{"bufferSize": 13, "maxServerCount": 63, "minServerCount": 27, "region": "SntVqekuVRLJqD1Q"}, {"bufferSize": 4, "maxServerCount": 23, "minServerCount": 26, "region": "cnrxYQLDSTdRuiqE"}, {"bufferSize": 39, "maxServerCount": 41, "minServerCount": 3, "region": "0sdchPhFj4UWGpvE"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 63}, "success": {"collect": true, "percentage": 62}}, "logs": {"crashed": {"collect": true, "percentage": 20}, "success": {"collect": true, "percentage": 66}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '81AX7vP9rlgx5Nk0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'SxpQgGZB1EE91NAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'qNf1wNlRvVBfBy7M' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 12}, "success": {"collect": true, "percentage": 39}}, "logs": {"crashed": {"collect": true, "percentage": 51}, "success": {"collect": true, "percentage": 32}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'arNGLzMvW7jKsvzy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'pznq9QaEVcrowPkO' \
    --namespace $AB_NAMESPACE \
    --count '53' \
    --offset '80' \
    --reason 'U7Wj3UdlbXJkzTjt' \
    --region 'UOyumIXPWb4AtaYf' \
    --serverId 'IyUs9vYUxzu6NCns' \
    --sortDirection 'LW5K9ZKG6qxapKbL' \
    --status 'EnqjPnk7VxTRbiCK' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Hr0m1Exjrhl5jE7L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '4ICewsFDlAjtzcwR' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["Z3SFb34poqmHz2nt", "MHRpSiWdDATB9ujq", "vxk6XEM2un1WRjyM"], "isProtected": false, "name": "QAYQWXCTx0h1YqsS", "removedTags": ["RiYT2y0waYXQ8Wue", "SLhagfLvKKYc0H4X", "GneoUbqDxsyBtk0p"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '9h67aUL2Snctlw0q' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'q67JKOE0RngzSnFF' \
    --body '{"status": "Orr8qvbUW8lCF78J"}' \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'KE46I8fSZRicUx9Y' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'C4YS4O2DyKTvJt9U' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AccountGet' test.out

#- 31 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'NUbOl4k7PuzanZQp' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "roYiAOwLJd6bWJDD", "sessionId": "bZY0LGfGIMfpV541"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Ou5AVpFDJXJ92fUs' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["K7yTiFYMNaF8zE6H", "fYR93UluJPy5MCtZ", "1z4IDL3MQlwzr4kR"], "regions": ["zwZlYnQFE5FOPOYK", "FXuUAaznVuQjbA2W", "SCZowAxAOk93WY4f"], "sessionId": "iIDPb2IFL4YW0uWi"}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'yTEuDSj22mOY5DuO' \
    > test.out 2>&1
eval_tap $? 34 'WatchdogConnect' test.out

#- 35 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 35 'UploadURLGet' test.out

#- 36 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 36 'Func1' test.out

#- 37 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 37 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE