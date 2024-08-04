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
    --body '{"name": "OlS2GoRQXieg0onx"}' \
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
    --body '{"token": "qe7UxkjkMCzoGBbh"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '4fUjwXWZj4XklQq1' \
    --count '246' \
    --endDate '7WPCVUga5WAjJdpO' \
    --fleetID 'LHgIKzboWTrzXmmo' \
    --imageID 'VdIECVu6X9lECS6O' \
    --maxSize '2' \
    --minSize '85' \
    --offset '91' \
    --region 'jO8GFvcW6Njpt23w' \
    --serverId 'eD24uXk9cN7oEtvw' \
    --startDate 'QkZKkiV9z0F5a2La' \
    --status 'wdkmo0TsSEsdNGB4' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'UPU5WUxLko907Ug4' \
    --fleetId 'wLHalGBFVGcyBP8k' \
    --uploadedBefore '1978-12-17' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'EoqrKMvQcFZPU2VN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '5eNZGbhLUgTXIAOb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '36' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "3kgwnZPgCXcZzPwy", "imageId": "Cg3UuAAuGLL7Td5g", "name": "srCOePMjdE5F3OFq"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'xPAjxhhyK5mSNHuh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'KMhn0C9MpoQ3wAoY' \
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
    --body '{"active": false, "claimKeys": ["UFmK2NgYA3q05JcZ", "TzP19Dn8vTj5YrAe", "61f8aursR01kZxjZ"], "dsHostConfiguration": {"instanceId": "yuuhQ2GV1uIFZH8r", "instanceType": "3CKR9EcZGfYfr0kz", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "w1PEE3ZxDyKQhEj1", "imageId": "y5Arv03AWmBsIZZl", "portConfigurations": [{"name": "OLBsJ7K2lHoPqs63", "protocol": "2lf8qoo1iVs5m5fV"}, {"name": "wf58YtnIKJ7vRBHr", "protocol": "sV5HZV8qeyZwq7do"}, {"name": "WRTVBfjtnUoWdt5v", "protocol": "gRuHOVEmdtejZjdX"}], "timeout": {"creation": 14, "drain": 71, "session": 14, "unresponsive": 99}}, "name": "v8ebFSOIiVpPe4Gk", "onDemand": false, "regions": [{"bufferSize": 44, "dynamicBuffer": false, "maxServerCount": 75, "minServerCount": 40, "region": "S7H5KHKc3CVCmUeg"}, {"bufferSize": 59, "dynamicBuffer": false, "maxServerCount": 10, "minServerCount": 95, "region": "j8eY6xXgCqy7eMkV"}, {"bufferSize": 17, "dynamicBuffer": false, "maxServerCount": 94, "minServerCount": 99, "region": "kOnYoKctwXxoPybe"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 86}, "success": {"collect": false, "percentage": 9}}, "logs": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": false, "percentage": 34}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'sIgf8xn1juM7GuyG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '23VVyiP4tvMhyni2' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["J7QOpRzEyIl8f0ih", "UZ55gNFlCMIdXGQt", "DFSauY9kyS88jzFQ"], "dsHostConfiguration": {"instanceId": "JpbIZ1Qcoo8tPQA1", "instanceType": "Y0bGj6o9MogWs5bI", "serversPerVm": 8}, "imageDeploymentProfile": {"commandLine": "E4fEIk100kW29KBq", "imageId": "e30na7RFaAaQqIhX", "portConfigurations": [{"name": "ZwuEggI9Xwxxpckl", "protocol": "Wkoaw2HWBPWBe6Kd"}, {"name": "mdJp7ioegt8vtWsB", "protocol": "LnVNFzuk7YCYwveJ"}, {"name": "bdvdeOkWW1SeZWkO", "protocol": "S6QmGMi1kLsKBWoT"}], "timeout": {"creation": 81, "drain": 20, "session": 72, "unresponsive": 64}}, "name": "216FoUpujTq0IBLM", "onDemand": false, "regions": [{"bufferSize": 41, "dynamicBuffer": true, "maxServerCount": 10, "minServerCount": 43, "region": "xWgascR4A3qdPVQH"}, {"bufferSize": 20, "dynamicBuffer": false, "maxServerCount": 57, "minServerCount": 20, "region": "CZkb6nbt2hUVvMik"}, {"bufferSize": 12, "dynamicBuffer": true, "maxServerCount": 78, "minServerCount": 15, "region": "P03EB1weRdXBVyoR"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 38}, "success": {"collect": false, "percentage": 31}}, "logs": {"crashed": {"collect": true, "percentage": 27}, "success": {"collect": false, "percentage": 85}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '908ZNMRaL3JkuxwR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'upbCwg71Zh4M0srY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'sE0vmcnIPKfCAmFy' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 9}, "success": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": false, "percentage": 62}, "success": {"collect": false, "percentage": 100}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'ekognDdzo7ndTTZa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'vm4UfoOja7DmGRxB' \
    --namespace $AB_NAMESPACE \
    --count '89' \
    --offset '58' \
    --reason 'vVMSncwbS5opJQZW' \
    --region 'Afwpb0gJtjDdaGvx' \
    --serverId 'gp20UuyEhcch96lw' \
    --sortDirection 'mPHE1mSCYZGYa0cT' \
    --status 'IHI88UbaraXNYFcd' \
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
    --imageID 'V3WBP8QFSnFz0ecf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'IBadGJDJEt9oknKD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'D2hbw4OseKPCCJIH' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["fets0lFoxRAE9NPm", "ZuX16tsSfdARDaYJ", "46VU9lzJxeqpDW8f"], "isProtected": false, "name": "JOrWE7VHWMjFQKMw", "removedTags": ["wSnI8GQgs8rrb5FM", "mF5JFn5xNy1ooDyM", "D1LpP38hJXW2rAHl"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'OK7Msg2djYFdjqNq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'VKqvW0mJ9TusqD4b' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'x9jJFCUdOZfCyFRT' \
    --body '{"status": "ApU7oKOq7x4hGey7"}' \
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
    --serverID 'F2ICn8ioFJam87jo' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'fMmfpqPLpHkUfBIB' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '1SoA8ST51A251jpw' \
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
    --fleetID 'EahxBj0EKsOmQRKL' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "0CqpXnr32ISE139c", "sessionId": "exJXAQele8G7Xeus"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'HT6fEwZjvKfcT3Yp' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["oT5YuoNlv3kNHRTx", "Hrnh8lRtQmx0GvEF", "brR5EbQFl2hI7K5C"], "regions": ["Wa8PAT0aXSsE1dPK", "vQm7ADobsCJYgi8o", "KSrAdAlTrKYi77j3"], "sessionId": "PpVtRrCstYY8LAKU"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Xzw6OqUGVPH8uqBt' \
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