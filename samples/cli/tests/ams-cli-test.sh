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
    --body '{"name": "ypkHBri2LlKtUzQz"}' \
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
    --body '{"token": "ayoQTGy29h0U0jBT"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'uiCTknxsHUgs6g8x' \
    --count '112' \
    --endDate 'ykKbvKzhnrOrvIYy' \
    --fleetID '5M8gfxSrMXkRTkMF' \
    --imageID 'FdTe1B9ZsqG84Izr' \
    --maxSize '25' \
    --minSize '12' \
    --offset '81' \
    --region '0CRNOQRz3g0xHPKW' \
    --serverId 'Esq75glF9o8gLAAm' \
    --startDate 'oGtHlJog9ITtF2R2' \
    --status 'dSyxhdznp2q73XYi' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'ae5CKfI5FTOzZ8p9' \
    --fleetId 'ElGGGuQc3CjNYfdq' \
    --uploadedBefore '1995-07-10' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'EAJngFRdqBRm5LIi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'mi206OuSVeLBWJrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '348' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "TiZPMq4JaoVLn7P1", "imageId": "YZOI2oTj17me7Q9e", "name": "PDxgd9vJrNDiyy5T"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'KVGj35UJkLWbH7tz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID '0D4ybU6JzkXUKmWH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["LZC7FIBrnrzfcoXG", "NPKOfnM61N9NKV8a", "PPMdDry7ztd9t2QK"], "dsHostConfiguration": {"instanceId": "pFK7aRqNqJ2l8pnJ", "instanceType": "OH4I2eoO9gznEqR6", "serversPerVm": 35}, "imageDeploymentProfile": {"commandLine": "HLrFdCPxSe4vM2Kt", "imageId": "WniZ6yp7LmSrjOA5", "portConfigurations": [{"name": "tYL7SDqQXbVXrk4e", "protocol": "Kv4kvWfNVaQgU6rK"}, {"name": "zpDCn5OLfz02iXTi", "protocol": "KHGvNkZRYJ9o0iXf"}, {"name": "EtuZWWl3hLU1DPpa", "protocol": "UvXBJfBcQazY3Heb"}], "timeout": {"creation": 97, "drain": 39, "session": 53, "unresponsive": 83}}, "name": "cnriyjBcjbAfZ7vd", "onDemand": false, "regions": [{"bufferSize": 21, "dynamicBuffer": true, "maxServerCount": 64, "minServerCount": 36, "region": "IKyp7qpgHvxpn6ou"}, {"bufferSize": 21, "dynamicBuffer": true, "maxServerCount": 72, "minServerCount": 31, "region": "5gveTWMxev2jA5n0"}, {"bufferSize": 77, "dynamicBuffer": true, "maxServerCount": 77, "minServerCount": 92, "region": "BuTip0iU6M4NMX6m"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 72}, "success": {"collect": false, "percentage": 57}}, "logs": {"crashed": {"collect": false, "percentage": 43}, "success": {"collect": false, "percentage": 8}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'AzUZjNxOutjZAIVU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'kcftxtGchjc93Sj6' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["x8jLfIuqXg2aX116", "4ywSHsIhYLb4Quwt", "XN27FGX4mtKTJQYh"], "dsHostConfiguration": {"instanceId": "vUDYxgX7HFH9gRRD", "instanceType": "ZYqKjLaIREq8A5uD", "serversPerVm": 51}, "imageDeploymentProfile": {"commandLine": "Xh83qwlgh0eaxWsl", "imageId": "RApIeRzns7Ilgka3", "portConfigurations": [{"name": "6M9sgcNInQa1vtvI", "protocol": "1BjKItw29ocBVlTJ"}, {"name": "B3B6n0CrYQ731PDy", "protocol": "phwtrhdP3AR5LRg1"}, {"name": "oEYzH38vWHlY3K6i", "protocol": "NtbxTf8cd5GqWozX"}], "timeout": {"creation": 67, "drain": 83, "session": 48, "unresponsive": 54}}, "name": "gd8by3ddupo6xLGD", "onDemand": true, "regions": [{"bufferSize": 45, "dynamicBuffer": true, "maxServerCount": 69, "minServerCount": 57, "region": "ePu2LicdXHwAkVxW"}, {"bufferSize": 53, "dynamicBuffer": true, "maxServerCount": 80, "minServerCount": 62, "region": "phsrqwjz7csTbQFp"}, {"bufferSize": 39, "dynamicBuffer": true, "maxServerCount": 16, "minServerCount": 1, "region": "NxbZAb6wdMZYUbtL"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 40}, "success": {"collect": true, "percentage": 20}}, "logs": {"crashed": {"collect": true, "percentage": 32}, "success": {"collect": true, "percentage": 13}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'HQ2XOzWE3GLsJeh4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'ShoQXR04VV8qrOqB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'apXMlLW6Gu3NIEfb' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 11}, "success": {"collect": true, "percentage": 67}}, "logs": {"crashed": {"collect": true, "percentage": 77}, "success": {"collect": true, "percentage": 13}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'DYg4gJDfFbXVBgk5' \
    --namespace $AB_NAMESPACE \
    --count '6GYjeS9IGy4PAjyB' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'ZcW4jIBhQxDUwW5v' \
    --namespace $AB_NAMESPACE \
    --count '31' \
    --offset '18' \
    --reason 'LieHmuh3d6rJeDIK' \
    --region 'mxF9oJaPnUtLzCVW' \
    --serverId 'xMgeDWb4cK3iRPM5' \
    --sortDirection 'rveq9hjMGz2q9Jm2' \
    --status 'hLpu5zkiTz8CTosN' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'xAH9h99NEdQewwe2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'RvzqDWi9aY58K98r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'e1RKBcBBWkCD7YsY' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["vYnmgMK2xZdDaW5M", "KRClIGXtBt7SE4JJ", "uHkD3YvkOqq9OAad"], "isProtected": false, "name": "CIm83DETOh4K4Z75", "removedTags": ["3H3Rn5Imam17AL0Z", "H7uPgxIcxkLIT2fm", "kAksUkvtCyiEAM0W"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'r6FjekpOdURCiqoK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '6oUBwtRgwtWyx2sh' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'iXFbpuielxdrhHk2' \
    --body '{"status": "ZGWhpvAetO64GuuJ"}' \
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
    --serverID '7PKG9ayhEBXeqNQR' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'hD7KBnmhqXX9oCIr' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '2B79T4NPBj2n1pk6' \
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
    --fleetID 'O0YMfB3gzqxOAsgV' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "ggOAsU48A58sHWxr", "sessionId": "gdTyhgn1gRf8QIIo"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'OIKHMCCQwPwrLYe1' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["1JS7DaGdCHAXA6Cb", "LrSceVtkYhc3ybMK", "DKjewFI4v1jY87En"], "regions": ["C3i3XFMXLLFmCgRx", "e0C9xWGL3th46eur", "mIHfpdmNa60kawDU"], "sessionId": "fgyZY97OSAppU1d0"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '9qRWsPaPvVvMoRny' \
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