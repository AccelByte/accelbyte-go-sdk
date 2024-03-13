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
echo "1..38"

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
    --body '{"name": "heqdTrBiawT8Egbg"}' \
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
    --body '{"token": "UCelT2Gks0qx27Os"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'NcLK6NghUD7RCiRj' \
    --count '165' \
    --endDate '490cWcA5q04CRYqL' \
    --fleetID 'SuDetwsQeTSwGehR' \
    --imageID 'mPtozPrQX68BofsC' \
    --maxSize '8' \
    --minSize '68' \
    --offset '10' \
    --region 'ZsEKEDL1PPrlInAA' \
    --serverId 'j9M3hli2BA2GlZqn' \
    --startDate 'Zca5xi6rN0y2FaLj' \
    --status 'OE2Nf2BRIJHDjSsM' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'RIa1YERESlcLxIQB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'iDxedka8bQKIsA1B' \
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
    --body '{"active": false, "claimKeys": ["9CXsPUwn7yzr6DSW", "azRmWGph4QoVc49Q", "eSyMXGLvfvIudv23"], "dsHostConfiguration": {"instanceId": "Bo3KVWEZOrRMpnwX", "instanceType": "c8AvnyHn8T7DZ7ac", "serversPerVm": 8}, "imageDeploymentProfile": {"commandLine": "TdAKAGuq7Af6aWTQ", "imageId": "rLFmHKkInKh7mRLl", "portConfigurations": [{"name": "T1NhY1Wyk382Gxhd", "protocol": "qSkRYeEMlSZ35KM7"}, {"name": "oZDTdIZhIrz1c5Q5", "protocol": "UlRRRDxQbKFlN430"}, {"name": "XICbvsNdz4HhjmUY", "protocol": "DS7Ttc0sYtGAMu1g"}], "timeout": {"creation": 39, "drain": 58, "session": 1, "unresponsive": 11}}, "name": "6sIbneYnXDJh3iaG", "regions": [{"bufferSize": 52, "maxServerCount": 52, "minServerCount": 62, "region": "e9PGRHie4U1qwGdi"}, {"bufferSize": 67, "maxServerCount": 78, "minServerCount": 45, "region": "dZpHm7qbz9IyoXax"}, {"bufferSize": 94, "maxServerCount": 0, "minServerCount": 49, "region": "GyekZuJPBeH9nC91"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 47}, "success": {"collect": true, "percentage": 44}}, "logs": {"crashed": {"collect": false, "percentage": 82}, "success": {"collect": false, "percentage": 66}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'PYjnilCNGwkBKBHo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '466pNqKUhTem0fva' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["vBEIcrjv51S9GgOM", "7KHG8wu2nRakvvMp", "2Nz1OJWAz42QGFM1"], "dsHostConfiguration": {"instanceId": "rTkkDt0DCQS9aj3Q", "instanceType": "BMzQLtcPaaWSq3hA", "serversPerVm": 69}, "imageDeploymentProfile": {"commandLine": "oQQAPqgrMpcP93Aj", "imageId": "DQdvDXj0Y35WQHNS", "portConfigurations": [{"name": "PPq5QprcF0loTGn1", "protocol": "5q2sV45zUJclJgES"}, {"name": "VUwhr4thiV9cnlhv", "protocol": "QgpdBiJxMDOxFNjQ"}, {"name": "ud4JohIuwBD07D3U", "protocol": "AwgDvhKC1fetC4dv"}], "timeout": {"creation": 84, "drain": 73, "session": 48, "unresponsive": 81}}, "name": "IrP2TTx1hHqVxeVu", "regions": [{"bufferSize": 8, "maxServerCount": 90, "minServerCount": 88, "region": "OdqAQSVjOouylbqY"}, {"bufferSize": 35, "maxServerCount": 24, "minServerCount": 29, "region": "FT91ih5I69xqpJYT"}, {"bufferSize": 79, "maxServerCount": 51, "minServerCount": 68, "region": "ktCA61G6ZZhmbvMg"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 50}, "success": {"collect": true, "percentage": 55}}, "logs": {"crashed": {"collect": false, "percentage": 41}, "success": {"collect": true, "percentage": 40}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'jHVvBD55mHcKoPi8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'vekwqKeB9e2TZsYD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'WjysBAmlKoaKJcwh' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 2}, "success": {"collect": true, "percentage": 7}}, "logs": {"crashed": {"collect": true, "percentage": 98}, "success": {"collect": false, "percentage": 99}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'Zn679cFe4JkVKULd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'MLVSpy6HSIX4I1yl' \
    --namespace $AB_NAMESPACE \
    --count '74' \
    --offset '85' \
    --reason 'Ppkk5u9iaY8gVPBD' \
    --region 'H2GTUo4azhUQ6tM8' \
    --serverId 'QjUYBtc9IibqBIBY' \
    --sortDirection 'uYJrJSxM2DSpFKem' \
    --status 'xSte6UMnRTN9rxyF' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'N77H5sueRjnWfINw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'dHXhmYYGrBra4k2r' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["N9AQm8dpjtssDh9L", "ukSw0dAusHR5DPaY", "oM89AcdWBzITgMDa"], "isProtected": true, "name": "kp3yCG6pIRdJYqW3", "removedTags": ["D11luNKhUjzpqXsC", "ictH5YhP62acuyIK", "6qmQlfrT2F7Asunu"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'CfG8Ukm7nLCuesC3' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '7847ENE3acyVcL3Q' \
    --body '{"status": "haU5R4hfoplOa9Fy"}' \
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
    --serverID 'iFLdEGLGPNkmmSlS' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'whqS0TOtBDk8FIyD' \
    > test.out 2>&1
eval_tap $? 28 'FleetServerConnectionInfo' test.out

#- 29 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'dgtSp4DHzRGUzfWY' \
    > test.out 2>&1
eval_tap $? 29 'ServerHistory' test.out

#- 30 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'InfoSupportedInstances' test.out

#- 31 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AccountGet' test.out

#- 32 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '8GhDfxGIiQPV59NU' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "TupFkibeEtFb0KSa", "sessionId": "hZaNZjPo5xX3DEgb"}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByID' test.out

#- 33 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '7IzuP3axntMg22Lc' \
    > test.out 2>&1
eval_tap $? 33 'LocalWatchdogConnect' test.out

#- 34 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["L0v9M1LIEWen1Qs4", "4rmQKp9YST1oNyeK", "02dfyLqDuhOurTI0"], "regions": ["8vDJ3C1rzGvCCPhf", "InVLJ6iOXsRrNXQb", "y6fHagiZqCFy1VAH"], "sessionId": "PqEyhtF0yoKUZzsW"}' \
    > test.out 2>&1
eval_tap $? 34 'FleetClaimByKeys' test.out

#- 35 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'bRZeTNrsazPj2816' \
    > test.out 2>&1
eval_tap $? 35 'WatchdogConnect' test.out

#- 36 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 36 'UploadURLGet' test.out

#- 37 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 37 'Func1' test.out

#- 38 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 38 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE