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
echo "1..48"

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
    --body '{"name": "lDUvmQnfrrVkNJl7"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLink
samples/cli/sample-apps Ams adminAccountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "eUiK8HCCPrZjyf4f"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'UDoQLlLOq9YWHDoS' \
    --count '366' \
    --endDate 'rRUD6Cie0CffSDlc' \
    --fleetID 'UywT2a6NHoNXPyT4' \
    --imageID 'Aj3MvB1cTmkCMr4j' \
    --maxSize '36' \
    --minSize '48' \
    --offset '93' \
    --region 'UoX9CcUz997ZiYm6' \
    --serverId 'N9RmJvux8jptikyd' \
    --sortBy 'jRwsUiKsgn3gL6nf' \
    --sortDirection 'asc' \
    --startDate 'S9mJFHfUKTHDKQzD' \
    --status 'sCyp6oOC95iVvVjq' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'k2ERJyfiDhA6QvIA' \
    --fleetId '9eUCgn5XxWVUEAbT' \
    --uploadedBefore '1990-12-30' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'uswnWD6yfDtw7PMr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'niDtZmTwfkAXisMd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '70' \
    --imageId 'R1zWRmf9D3mvkIZz' \
    --name 'aMfXQ6p7i9vVkSnS' \
    --offset '26' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "WxBpbNSeACkwNt37", "expiresAt": "1992-08-19T00:00:00Z", "imageId": "Lp13mJa4iGLfrc78", "name": "7eVZHR5TqREqa3yX"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 's8NlzjOZBTz2dHM2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID '2zFpDt3DisVEnnRm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'GoHjiG3szqYKwczo' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "OdUd8f2DuBik0fQq", "expiresAt": "1978-11-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '27' \
    --name 'wh8QcKW9TxkQY2lb' \
    --offset '24' \
    --region 'rPuk0wGQqrv54Njz' \
    --sortBy 'active' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["yeOFpxkbKnseP8xi", "sOGVwyojDIlVSaVH", "2T5LmElsSAmxGdNZ"], "dsHostConfiguration": {"instanceId": "CiofjlvWqgHd0tG1", "serversPerVm": 43}, "fallbackFleet": "5yXp7Qo0EiYXbgML", "hibernateAfterPeriod": "ckXPnVhssUKF3b5v", "imageDeploymentProfile": {"commandLine": "sm4xNVYUcEQItxCF", "imageId": "ypP9FDTsvUW8gcYM", "portConfigurations": [{"name": "UEfVYb0yIXrvudZs", "protocol": "17OPYeyazYBZpyLY"}, {"name": "Z8AObgOn6sViW0KN", "protocol": "tw4dJntSVqJQnc6N"}, {"name": "jvG8JsMB1YLgDgfq", "protocol": "CvM3AJ7d8I2GNlSM"}], "timeout": {"claim": 94, "creation": 13, "drain": 33, "session": 47, "unresponsive": 35}}, "name": "cWWdnOvbA8WSxaJZ", "onDemand": false, "regions": [{"bufferSize": 42, "dynamicBuffer": false, "maxServerCount": 48, "minServerCount": 37, "region": "L9sjvE1UlGkgCRY7"}, {"bufferSize": 16, "dynamicBuffer": true, "maxServerCount": 58, "minServerCount": 98, "region": "7wxR9NyuwJJpwmcy"}, {"bufferSize": 51, "dynamicBuffer": true, "maxServerCount": 22, "minServerCount": 26, "region": "PywKWdGnMZknQRJV"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 100}}, "logs": {"crashed": {"collect": false, "percentage": 76}, "success": {"collect": true, "percentage": 90}, "unclaimed": {"collect": true, "percentage": 83}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["SP3uEIL5ZKGDmGiL", "IQfsffPCRFvZyEGe", "6obXCKEsh7f4OFWv"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'AkC20EK6NOMdA7kM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'Gp1Oa3yILFvFll4X' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["pyK6L0bf1rWRKtXS", "SiyIQWWTSaRdk9JD", "pU8gO2ZOIwqfDvQZ"], "dsHostConfiguration": {"instanceId": "TqiJaQd2RdP1DAtz", "serversPerVm": 79}, "fallbackFleet": "RIOQR0WI5lMOS5yL", "hibernateAfterPeriod": "YjrUBe2R3EOQEOMx", "imageDeploymentProfile": {"commandLine": "vpD6UnAEeocSLsfY", "imageId": "C9Ifcv2DV1chtoZR", "portConfigurations": [{"name": "IPpm0uQYTIjeOyZq", "protocol": "Wo3GjjvxHFdlyFDj"}, {"name": "67iAn9GxCJ6OUomW", "protocol": "2IArnvBgRZZwmLiI"}, {"name": "0OOu4EgnIRwlbMxV", "protocol": "Rt6pdzMlmPOMq7rm"}], "timeout": {"claim": 20, "creation": 8, "drain": 41, "session": 2, "unresponsive": 14}}, "name": "MxyKRezhUWQep4wX", "onDemand": true, "regions": [{"bufferSize": 72, "dynamicBuffer": true, "maxServerCount": 54, "minServerCount": 51, "region": "4GTqvwCM7oqwVzYX"}, {"bufferSize": 35, "dynamicBuffer": false, "maxServerCount": 28, "minServerCount": 97, "region": "bAj1xw2KICIC1ncV"}, {"bufferSize": 23, "dynamicBuffer": true, "maxServerCount": 29, "minServerCount": 68, "region": "32jn5MSW3NapZNL6"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 46}}, "logs": {"crashed": {"collect": true, "percentage": 71}, "success": {"collect": false, "percentage": 66}, "unclaimed": {"collect": true, "percentage": 57}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'NRenv0yzw8GER9si' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'SwKuZWB5nKCX4oqj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'Ufuj0rlR3osFopeJ' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 38}}, "logs": {"crashed": {"collect": true, "percentage": 6}, "success": {"collect": false, "percentage": 59}, "unclaimed": {"collect": false, "percentage": 16}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'uvWCXfow2RT3YhMT' \
    --namespace $AB_NAMESPACE \
    --count '78' \
    --offset '94' \
    --region 'uDSRNUqBPsvegFCz' \
    --serverId '0dRcYg5ugviFiVQv' \
    --sortBy 'kmdt8RC6nqaohcz0' \
    --sortDirection 'asc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'lrBlKKp3vWAaulmk' \
    --namespace $AB_NAMESPACE \
    --count '80' \
    --offset '20' \
    --reason 'YUmic4zgMpyeQZwH' \
    --region '7vBX26HVZiC9EUWO' \
    --serverId 'XRcfc7waFMXFeZ1s' \
    --sortDirection 'QIRr1hid51DeGlm4' \
    --status 'pQZGdMvkMrf5IpZP' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '71' \
    --inUse 'zXBV0pnXrImnyYKY' \
    --isProtected 'false' \
    --name 'LJ4tmU9j2X4meprk' \
    --offset '27' \
    --sortBy 'ybieNLLohqcPWAfy' \
    --sortDirection 'JTYGfD5mA3n2T5iX' \
    --status 'BuEKESrKWoVMBf22' \
    --tag 'c2RQ4Z26ZIkmuBbl' \
    --targetArchitecture 'UcSr36PViqRnslbh' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'bkre1tNhknh4dfRY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'EAYRArDF4jdsOl4I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'PvGM27ynEKAAHeyx' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["tNMj6QyZYX73l4Fa", "gqwA4vYY0hOf0W0z", "T6Im5QXujPwOMpix"], "isProtected": true, "name": "K8R7ik3eh48VvMhp", "removedTags": ["vJ7dnIyA7JX9FYcI", "818dx4mJpTsGzNcD", "FSu3sQ81Le2jiZM2"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'i6Rg6E3CXMtBPjIP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'fUEIhcxPlZz65MeX' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'zr0bYkT5VytQP9xH' \
    --body '{"status": "7REZDECV12xzRWOU"}' \
    > test.out 2>&1
eval_tap $? 35 'QoSRegionsUpdate' test.out

#- 36 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'InfoRegions' test.out

#- 37 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID '6TjZBbo4NarkLEnc' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'ndJAgtrYsQB6o0eK' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '5aCFoTdi2oTfIm5T' \
    > test.out 2>&1
eval_tap $? 39 'ServerHistory' test.out

#- 40 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'InfoSupportedInstances' test.out

#- 41 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AccountGet' test.out

#- 42 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'UGkRVILzvqoTY3xl' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "4oHqs5SvVIpMqg8r", "sessionId": "mPF2MlD5hWZiIkE4"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'g25M98peJ5zHl9EW' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["8eLuCFLpbm5yjB8j", "EVxZVIz8xdR1r0RV", "MI6pt2n6kSapNAcp"], "regions": ["AvHrbwiZIqjaRGue", "0hQtGjXtzPJBwn0p", "05NWdNm6FmV5l45J"], "sessionId": "0NOZyuq4he3ifFLe"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'TtBSj7SLXuCPOwPN' \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 47 'Func1' test.out

#- 48 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE