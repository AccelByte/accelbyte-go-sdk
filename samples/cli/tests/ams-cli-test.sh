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
    --body '{"name": "gwoQcHk8qmJTAEj0"}' \
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
    --body '{"token": "e8LQcazyEXs0ERKa"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'sfMKC6jSkmLagYDK' \
    --count '275' \
    --endDate 'JTEV8tZpw71N8ExL' \
    --fleetID 'XdLGbl3TINt9X8Jy' \
    --imageID 'j3PawjCQMCd3dDwY' \
    --maxSize '100' \
    --minSize '88' \
    --offset '7' \
    --region 'Zj8DZK0kRCHOGMQ1' \
    --serverId 'tYN6SrGh5r8As6RX' \
    --startDate 'hE2ViPXRRw7vKK8d' \
    --status 'Wkcd75nieV1kYPDo' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'wYrH2LktqgKWvlNw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '5HWLn4IyHN95uvzQ' \
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
    --body '{"active": true, "claimKeys": ["l3JgorxjhD0gv3XK", "wRB6lvo7lsTlVSX0", "Z89yasg5MIp0BXnX"], "dsHostConfiguration": {"instanceId": "j67GvLO88NObvqgb", "instanceType": "lPESnLP2NURF1dNk", "serversPerVm": 89}, "imageDeploymentProfile": {"commandLine": "LAAMJGlaB7kvKgrf", "imageId": "uM1AKMbCyD5K4Ujy", "portConfigurations": [{"name": "RbJZ3pE3FMRiAp2G", "protocol": "6Cwo2DTAvtyeuuZH"}, {"name": "mrbqMMr8TpXfdNMC", "protocol": "3guDbAHlmzXSXECy"}, {"name": "j7NAtKAb6zR2io58", "protocol": "SVCGp1RG0IG5QhnV"}], "timeout": {"creation": 26, "drain": 89, "session": 16, "unresponsive": 63}}, "name": "DQMH0b48qGXgk4JH", "regions": [{"bufferSize": 18, "maxServerCount": 27, "minServerCount": 44, "region": "O5Ubtc4Ji9Vu1AYc"}, {"bufferSize": 53, "maxServerCount": 21, "minServerCount": 99, "region": "6G2I1z2fHUI9SxG7"}, {"bufferSize": 86, "maxServerCount": 23, "minServerCount": 83, "region": "cN45LRlxAUHtioqP"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 77}, "success": {"collect": false, "percentage": 67}}, "logs": {"crashed": {"collect": false, "percentage": 11}, "success": {"collect": true, "percentage": 100}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '7jlCANt0BZIAgfsS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'xvPgIsuSboKyeEVR' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["gDI2R0oGBn0OvcbD", "oGMp6aZNdLhdL2zr", "XYfRgc5EMyCtYU1K"], "dsHostConfiguration": {"instanceId": "kuUC5PcUfPFLeBzm", "instanceType": "JmncIUQwmb8Ca64E", "serversPerVm": 0}, "imageDeploymentProfile": {"commandLine": "tQ17CQNS6Gg61pMg", "imageId": "UCeHRLBZX72SePrN", "portConfigurations": [{"name": "vl7RG5DIwhbNsrWA", "protocol": "GlUTEcIgoT559NJo"}, {"name": "VXPi3x2YbnNK9ekk", "protocol": "B6mkqybrWy2EQEJb"}, {"name": "Im69rmvWhOfL1Wmq", "protocol": "IXXvIbpG3vjxkY8g"}], "timeout": {"creation": 14, "drain": 53, "session": 84, "unresponsive": 27}}, "name": "imx8RQL1Z3e6Xcn0", "regions": [{"bufferSize": 49, "maxServerCount": 43, "minServerCount": 55, "region": "9AlzVumPgrCkBzZ1"}, {"bufferSize": 39, "maxServerCount": 23, "minServerCount": 59, "region": "B37xsemtFPIFKW1Y"}, {"bufferSize": 13, "maxServerCount": 23, "minServerCount": 56, "region": "p0YPol7UgeawvRDT"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 70}, "success": {"collect": true, "percentage": 8}}, "logs": {"crashed": {"collect": true, "percentage": 83}, "success": {"collect": true, "percentage": 73}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '2nKRmc6ST7SQXdMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '8GVg9K9NLQV9j0nH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'iHYf7co8cMPFgxKH' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 26}, "success": {"collect": false, "percentage": 96}}, "logs": {"crashed": {"collect": true, "percentage": 39}, "success": {"collect": false, "percentage": 25}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'w2w97cZwMUMkS4LK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Ofq6Eq3gc33dYzA9' \
    --namespace $AB_NAMESPACE \
    --count '72' \
    --offset '31' \
    --reason '9pYtku85YgI0ASLw' \
    --region '2HIcSYoUsvwOtVdD' \
    --serverId 'YsOD3xuWp3xMPxzA' \
    --sortDirection 'CkcGFwHNerMgQqLg' \
    --status 'YvN0iWPuNXq2ekE6' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'MHGVY5N0GdQ68aeg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'RSY2C2Jxgarjrw5C' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["MxPFe3wZ8YCK7ztT", "kkBcChuhHUAdx5Qk", "Xlo7XXk2ZztpQUC1"], "isProtected": true, "name": "rLu6mH73SOMJcdVG", "removedTags": ["MOcWZvLdEBjSGBdc", "O2HQxWWmyQRzVRFs", "hskBND351SLkOLpP"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'cflKq1fB4wPZis3i' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'C5gdGPpb60INWT9p' \
    --body '{"status": "wxbxlLUXmWwc7OjJ"}' \
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
    --serverID 'e3P75lP3jlmsx7oq' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Y25apoL6FvBk70zB' \
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
    --fleetID 'RW88lEZ2u6i9bo7a' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "KiXrsnJwKQyiCgdF"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '4VZWX9NZhE8v0Wga' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["CKPRcNKR668APIht", "ra1bj46IlxDGM2ek", "gFmdEe8yjJUGQKlg"], "regions": ["HqIrwkut05JWu8qN", "SjPOlfDYaf307Nqh", "qLeE0lQRo1KHBTBP"]}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'ex9gwC24HrWSaAGl' \
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