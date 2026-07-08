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
    --body '{"name": "xwrwRxOC0I8CMI14"}' \
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
    --body '{"token": "RbWnwqxQLyHyvHCd"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'KZLp1eCJa4pYwUpO' \
    --count '28' \
    --endDate 'fodguBBOQNNMMwmS' \
    --fleetID 'EmSlSYayVR1Zy2a4' \
    --imageID 'aim6QAAC1UgezaTN' \
    --maxSize '67' \
    --minSize '93' \
    --offset '53' \
    --region 'IjQaesNbBLFQWrxO' \
    --serverId 'rOYIVUqDbllJ1IJG' \
    --sortBy 'aJJFhMgqfMuhlZCg' \
    --sortDirection 'asc' \
    --startDate 'Q6Z9h6yOqS6rsuZ8' \
    --status 'wccTuPFGN9voyMT6' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'oivBHH4IZMJrdMNg' \
    --fleetId 'VdCWL1hpw75NBxly' \
    --uploadedBefore '1993-07-20' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'uN1HNB4xAGTwbcWB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'naPjahbhQN7SWgnT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '306' \
    --imageId 'XqVAvEEqqnvB4ggt' \
    --name 'zbH7iDW1vXWKLQaL' \
    --offset '79' \
    --sortBy 'created_at' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "UbiUAd1YKnkCK2pN", "expiresAt": "1992-01-21T00:00:00Z", "imageId": "MkenIvwAwa6S4xum", "name": "PeMtA1kFjTvU5Zzg"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'F6ZTHG3aRAT26dpG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'YFo4X2dOCfuNcQee' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'b1gyKMOHCywpKe7x' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "55rjFwoSRDJAn07d", "expiresAt": "1979-01-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '76' \
    --includeInactiveRegions 'false' \
    --name 'H7vOeUyRa1fpk3cZ' \
    --offset '94' \
    --region '6BYYrFYjJhDx8jFs' \
    --sortBy 'active' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["fz001KnNBxoWJcPa", "IU6cWH2npELfPrqX", "XlTxKsY02N2N0hqZ"], "dsHostConfiguration": {"instanceId": "0vJljhXAQxOP8Wce", "serversPerVm": 8}, "fallbackFleet": "Uayj6upVNp77BJtD", "hibernateAfterPeriod": "K0L2nGuMrivfPqAA", "imageDeploymentProfile": {"commandLine": "ta5XWZPgAzuKhmaW", "imageId": "Q7kEWFrzcwhB0xdp", "portConfigurations": [{"name": "BOX3zFZXW2Hl7ukG", "protocol": "mNbcAoEcPb0JLhAY"}, {"name": "c1lUzfXU7zcKI9bx", "protocol": "hhUxj2bS8IijS1ba"}, {"name": "dujjgrVd2yMZK7CM", "protocol": "ol7dYyyHcXCi68Cd"}], "timeout": {"claim": 97, "creation": 33, "drain": 5, "session": 83, "unresponsive": 24}}, "name": "GygDSr60yzyB4GlG", "onDemand": false, "regions": [{"bufferSize": 8, "dynamicBuffer": false, "maxServerCount": 8, "minServerCount": 59, "region": "RcTX4Fw9tTrVHKVB", "state": "eLbYaW6ZTmW8MYIz"}, {"bufferSize": 93, "dynamicBuffer": true, "maxServerCount": 49, "minServerCount": 36, "region": "XXnheYSThT6rXExQ", "state": "jWKPlYt9uvHzgR84"}, {"bufferSize": 92, "dynamicBuffer": true, "maxServerCount": 38, "minServerCount": 2, "region": "bEb7N5g4ABnRvndo", "state": "wTbrLzqwqETFmZLH"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 94}}, "logs": {"crashed": {"collect": false, "percentage": 97}, "success": {"collect": true, "percentage": 86}, "unclaimed": {"collect": false, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["6vPuDlpIQifB74to", "Z4L2kmF2ieolB5au", "6I66WZ0MQYn0IiGr"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '9j74CVzO7oSKGdju' \
    --namespace $AB_NAMESPACE \
    --includeInactiveRegions 'true' \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '08nccistQrcA2Wa3' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["i8UNeFDUxmDmeyAN", "IhXOnNpS2ypAfyob", "IzLnkhW9V9XEuQPK"], "dsHostConfiguration": {"instanceId": "gmGuLJLUDrTL9ZND", "serversPerVm": 83}, "fallbackFleet": "ouBJsyUBiHTyuOLv", "hibernateAfterPeriod": "aYQ0cmLAyro5QCuG", "imageDeploymentProfile": {"commandLine": "0ngbCQG2Rw5zkFor", "imageId": "2KSwDWaJGfX9pnZj", "portConfigurations": [{"name": "MzvHP0IgAHYt9CQ6", "protocol": "8oOXNz5ONaWclIrM"}, {"name": "pxJueK0nlwNgbThK", "protocol": "3t8oy3NbvTFrEw0M"}, {"name": "hiNsKzUMv8HX1jCg", "protocol": "DxMxNooZo7G9c2fD"}], "timeout": {"claim": 95, "creation": 16, "drain": 76, "session": 16, "unresponsive": 57}}, "name": "IcfAMGlV3b3Uz5ES", "onDemand": false, "regions": [{"bufferSize": 89, "dynamicBuffer": false, "maxServerCount": 0, "minServerCount": 23, "region": "qW3LgBM5IMfdqK5r", "state": "aINqKqAnSKICu4ER"}, {"bufferSize": 92, "dynamicBuffer": false, "maxServerCount": 37, "minServerCount": 87, "region": "cSYzjA023QISNhaL", "state": "OxdZsIYa9cKD83C1"}, {"bufferSize": 8, "dynamicBuffer": true, "maxServerCount": 80, "minServerCount": 96, "region": "dURsAC5Eyt2vFpSZ", "state": "JkC8ZoC0i4WrAFvg"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 100}}, "logs": {"crashed": {"collect": false, "percentage": 34}, "success": {"collect": true, "percentage": 62}, "unclaimed": {"collect": true, "percentage": 93}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '8yryX7vQm3rqBKIe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'Jy7pSZhQi6P5FCpa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'CN7mXw2yAarM4VJz' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 67}}, "logs": {"crashed": {"collect": true, "percentage": 86}, "success": {"collect": true, "percentage": 50}, "unclaimed": {"collect": true, "percentage": 7}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'LmE2bxX6ZtXEvdq7' \
    --namespace $AB_NAMESPACE \
    --count '10' \
    --offset '98' \
    --region 'CfOcUEXvZgO29rZk' \
    --serverId 'sw5Nf4mXE7Nq5xLo' \
    --sortBy 'YQu6xJ7KX9MzaUKr' \
    --sortDirection 'asc' \
    --status 'crash backoff' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'In379CL8cnQFBrc4' \
    --namespace $AB_NAMESPACE \
    --count '82' \
    --offset '93' \
    --reason 'gXK9nCGnoFTaKdat' \
    --region 'j8li2EpDFDrhhA5s' \
    --serverId 'dItAfNIo3WJchEGV' \
    --sortDirection '8dqpxdA7tODMBWl9' \
    --status 'jpfWl7ZpyBHXJ5EO' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '52' \
    --inUse 'H1xFVwawei5IhyMf' \
    --isProtected 'false' \
    --name 'qSPPI6gRh5pHzow6' \
    --offset '100' \
    --sortBy '6A8RJkwP9uWM8nUw' \
    --sortDirection 'QHbZ01uoXMFtN6R6' \
    --status 'aV8NQ841keG2HdSG' \
    --tag 'SK2FdWbPoQeCnCVF' \
    --targetArchitecture 'GgeDz3oI44un1lsE' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'eQQPfUbo4cMUGwx8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'WmmB4iZHaUaEs5Zn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'UUSF3cp5MSi1o8NX' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["NKTGpgVT6w0DI6pH", "37BYJXT7V0tWQuNo", "3TAmvkbWpwnxgbxW"], "isProtected": true, "name": "dLW0DwemFxY9RnP2", "removedTags": ["hjgbopQZ3JlzLcjB", "mKyJydmYQtWUQE56", "HupqU19rMk7PoZ2C"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'lAG2vFXBxy0okmGZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'A3veyq9xOtEjEeNP' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 's3MmvWukWFAJYLwm' \
    --body '{"status": "1W9qCP8ZE3EAf5cb"}' \
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
    --serverID 'xiKDRr82RJs9Yngq' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'wWxWHdNgeiLLz2ND' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'an2C93wejcKlGSrx' \
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
    --fleetID 'OllExB1hHsZE0crl' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "o4SZyqEvfkFvi3OL", "sessionId": "FPxsV9bXgAwUzfTi"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '0FjMPK6w375dJHdg' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["x690iquyD01LS3Pi", "CZ1UkQrgbcVffbzo", "h07l8miRgj3Qkf53"], "regions": ["L8u4gcJfMh7Bx7pE", "1H7yQGbF9c8Paub3", "x8iZ8k3u478QUnaP"], "sessionId": "rydwakYvTjUlbHYv"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Vj1xRPRVlDA1Qzmk' \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 VersionInfo
samples/cli/sample-apps Ams versionInfo \
    > test.out 2>&1
eval_tap $? 47 'VersionInfo' test.out

#- 48 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE