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
echo "1..46"

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
    --body '{"name": "IymrONrpvi9Ti9uS"}' \
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
    --body '{"token": "fwBwl93N9muP7z0y"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'Gzx9uOvj3vdKGCB1' \
    --count '151' \
    --endDate 'vGCKNvj6w3fMqZXV' \
    --fleetID 'Puk2WoKVkzMQYs7w' \
    --imageID 'ZQzPcp1Z6jqWJ1yG' \
    --maxSize '4' \
    --minSize '33' \
    --offset '48' \
    --region 'a9nxviuxI59axN19' \
    --serverId 'GgS59ntsZ62bF4In' \
    --sortBy 'fEIQhAkC7JFzVphL' \
    --sortDirection 'asc' \
    --startDate 'gDewetFv8YiCdjHX' \
    --status 'yj8HqnM9pU41NpiG' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'j4kozmWtd5sXD2Mg' \
    --fleetId 'h5jr4fjUiN9NctiT' \
    --uploadedBefore '1996-09-17' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'My8i6oEdStD5WayV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '45msPFvWG7VTIOKt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '256' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "l0k8LiJsRVilx2q3", "expiresAt": "1996-10-08T00:00:00Z", "imageId": "Ka7XBxl8Vps0wEMI", "name": "yLwtsejV1yj8s56A"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'xNNrPhdj4dGaJr62' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'c6l2wZD92NPPVb1F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --name 'EMeCPZwvGSu980sB' \
    --region 'Stv0pLIMygi75zha' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["hlGTdx1MriT24xsh", "GYzE4r6pk2lu1xvr", "zTMGmuEAExiY7U79"], "dsHostConfiguration": {"instanceId": "yDU5YrbWLsLQizQC", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "G5cWLIhjluteqGJG", "imageId": "bb9ThJmY1L853dT0", "portConfigurations": [{"name": "71IB4Zy3U3396v2M", "protocol": "zbEAXv956epa2fAX"}, {"name": "h6ukwMyMQ5phx2gv", "protocol": "uOCxSkfrfekZ4r9I"}, {"name": "39TF0wkTVlYj2yeB", "protocol": "QOOwORMncBphmkvU"}], "timeout": {"claim": 79, "creation": 27, "drain": 62, "session": 36, "unresponsive": 77}}, "name": "ybpiEY7VD938bupC", "onDemand": true, "regions": [{"bufferSize": 65, "dynamicBuffer": true, "maxServerCount": 28, "minServerCount": 67, "region": "ZOLkvbADDTEROH1w"}, {"bufferSize": 99, "dynamicBuffer": false, "maxServerCount": 9, "minServerCount": 74, "region": "YGE5pujnsn1JWiq5"}, {"bufferSize": 18, "dynamicBuffer": true, "maxServerCount": 38, "minServerCount": 3, "region": "RHbEL9DKJ8bCRVTo"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 80}}, "logs": {"crashed": {"collect": false, "percentage": 25}, "success": {"collect": true, "percentage": 41}, "unclaimed": {"collect": false, "percentage": 81}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'gI68lEWNf2ntqHSm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '8pAFaAf8nkUMxT8p' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["BbrrZ1q3wnOufUrw", "BJ6232bArOJpTw6z", "x5uvGTAfyPSIfi2Z"], "dsHostConfiguration": {"instanceId": "qU1vIoM2sExx7do1", "serversPerVm": 72}, "imageDeploymentProfile": {"commandLine": "75VrKF8n8aYn8bmf", "imageId": "qjlX2yFZyqoLc59U", "portConfigurations": [{"name": "l9ktHEttovEydOZn", "protocol": "FqVWXJxeSKKRQUdO"}, {"name": "iin96U9QQO8fBEzg", "protocol": "qRDsQL2dXMTKQ0FA"}, {"name": "Bx6MO1vLaWeD8XG8", "protocol": "q2xhQe6gNGGcL9WB"}], "timeout": {"claim": 43, "creation": 32, "drain": 14, "session": 71, "unresponsive": 99}}, "name": "Qv2x672FGGoBrWq9", "onDemand": true, "regions": [{"bufferSize": 35, "dynamicBuffer": true, "maxServerCount": 65, "minServerCount": 87, "region": "QeT0vEN9nVA12Y2q"}, {"bufferSize": 26, "dynamicBuffer": true, "maxServerCount": 19, "minServerCount": 60, "region": "K4Yx6wM2eLnUajuJ"}, {"bufferSize": 55, "dynamicBuffer": true, "maxServerCount": 55, "minServerCount": 54, "region": "i6jIFpcn64KckxHe"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 57}}, "logs": {"crashed": {"collect": false, "percentage": 0}, "success": {"collect": false, "percentage": 27}, "unclaimed": {"collect": false, "percentage": 60}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'XexicjVmbV5J7cf5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'dpZcO5x52UwlzYjR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'MuB4KTXGG8DmYEdA' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 13}}, "logs": {"crashed": {"collect": true, "percentage": 13}, "success": {"collect": false, "percentage": 76}, "unclaimed": {"collect": false, "percentage": 11}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'jcEE6IYnZN0c4g6z' \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '7' \
    --region 'aGVL5msDFVFdwiyA' \
    --serverId 'urOrb5RbdNw35Rxf' \
    --sortBy 'vagqXyHHjWBUI1dV' \
    --sortDirection 'desc' \
    --status 'claiming' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'CBLdXti2CyUsZlgT' \
    --namespace $AB_NAMESPACE \
    --count '79' \
    --offset '94' \
    --reason 'DyWPmHNbeDeyX6uW' \
    --region 'ZYm6F01K3qT3BPp0' \
    --serverId '1nLg5jRdhLLBK5oH' \
    --sortDirection 'f0GIv9khGSukk11a' \
    --status 'jd9DCChMCIZY74Ux' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --inUse 'i6O9n2tmKIDhfjkW' \
    --isProtected 'true' \
    --name 'nc715uHwhT4YCWSg' \
    --offset '43' \
    --sortBy 'GEYjDSrS18OFcJkG' \
    --sortDirection '496C3W9Ej4DX463P' \
    --status 'PbcWfWJn7HzIgyIV' \
    --tag '0CkP3LXXn3yE44V4' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'YFLk4cF02z06tQJX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'dN2PHZkQRwg9zx35' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'IrY0KCxj0y1X5SLW' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["27tDbOsF9jFgOQcQ", "kJ6jwf5j3lzPbtyb", "n5sIGpqwuvEcp1RQ"], "isProtected": true, "name": "tAnrfHPCjEVJjCGN", "removedTags": ["tCjFDmPwN1cWlEu8", "9xqAT0xC9uVNqBKO", "NbSRmhVEX6CYPfRu"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'WQUEjmIPH2ZMqlRV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'FaIg9LiYN5FBsvW5' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'ODe115OACzc8TMVA' \
    --body '{"status": "v61XktJjxAry8yAv"}' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsUpdate' test.out

#- 34 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoRegions' test.out

#- 35 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'wQcrXszuhqmgUn76' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'LYxnUQaofpymZ6lc' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'OHREisr6fpA0pJZi' \
    > test.out 2>&1
eval_tap $? 37 'ServerHistory' test.out

#- 38 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'InfoSupportedInstances' test.out

#- 39 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AccountGet' test.out

#- 40 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'cz02NDu9XPsfv4o6' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "udwjbkj2IOhrLm65", "sessionId": "OzKW19pyGYQkPzgg"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'rVuaIYkMaCOCOaSI' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["75lazl9qogZJ0cdx", "bto7kW57CmhlmFZt", "eC4ej356MHB4O2Hg"], "regions": ["xpDxGeouAODkjFym", "LOOtvCEql27ojbop", "70t8xZycl3NdqMmd"], "sessionId": "rKPxdZkHGHslD38C"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'xHYimUz3WI2yiPdL' \
    > test.out 2>&1
eval_tap $? 43 'WatchdogConnect' test.out

#- 44 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 44 'UploadURLGet' test.out

#- 45 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 45 'Func1' test.out

#- 46 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 46 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE