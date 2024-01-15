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
    --body '{"name": "2UfGazkCfoMbasei"}' \
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
    --body '{"token": "8frzQUX63s0sUxYf"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'hkznF63JLZSruEce' \
    --count '325' \
    --endDate 'zsU3gHfEX32isZou' \
    --fleetID 'O3QrpIPHrVd3SBGq' \
    --imageID 'x1KrsHghK6rIznBk' \
    --maxSize '69' \
    --minSize '99' \
    --offset '14' \
    --region 'SsMUgucZTQNyC5IU' \
    --serverId 'lrvjfnEZNJgvDX4y' \
    --startDate 'QyXLMAEBv19ggDKi' \
    --status 'tzORDCkKym0Zvtw8' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'ULMONT4jVL2DyqPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'BgQWZb1EKvtEQd0X' \
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
    --body '{"active": false, "claimKeys": ["NZlQEYfKJJrBdTCQ", "WRSPKR0B9Ab6daSF", "PVmDLa8hbrH9H9yr"], "dsHostConfiguration": {"instanceId": "0tQJ1uY2jARrUB5p", "instanceType": "vF6RMx5W0Izu2y7R", "serversPerVm": 11}, "imageDeploymentProfile": {"commandLine": "Nxp8gnW3iOAk4qbl", "imageId": "wve5U5IdGk7fofqe", "portConfigurations": [{"name": "t5sb2b2MqkKOsLtV", "protocol": "7492soZXFfK5FhzN"}, {"name": "sz5ZVVxYGwh4i7kd", "protocol": "ve5xwyICwlIhJuln"}, {"name": "fcOnnI2MMXyB4Mab", "protocol": "3In3AyyV4pJ5KEGy"}], "timeout": {"creation": 37, "drain": 67, "session": 74, "unresponsive": 45}}, "name": "sjCG4YxrDuvuMyJX", "regions": [{"bufferSize": 45, "maxServerCount": 17, "minServerCount": 14, "region": "ltsPFcNpOdMIBkj7"}, {"bufferSize": 45, "maxServerCount": 67, "minServerCount": 49, "region": "ZleI7yZOmtacBNN0"}, {"bufferSize": 39, "maxServerCount": 84, "minServerCount": 6, "region": "RFmqGtfot5sHvGr6"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 51}, "success": {"collect": false, "percentage": 21}}, "logs": {"crashed": {"collect": false, "percentage": 69}, "success": {"collect": false, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'eGioU50dJklXcGz8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'bQcwZBOLxySTQHch' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["n9cNtH0emCcPu4cT", "DTBehJHB7hGIKJXE", "KlYr3Bji6FLYQ7gY"], "dsHostConfiguration": {"instanceId": "13h7EAXPep2E1eRh", "instanceType": "eQNFInrW5GwHE91j", "serversPerVm": 77}, "imageDeploymentProfile": {"commandLine": "4rhuvNtwWDfCWVNZ", "imageId": "Pj44jGOBckTpci81", "portConfigurations": [{"name": "rDdShitlu2IfnkTY", "protocol": "XUlmJhyilkODY4xc"}, {"name": "4XkmRvJjp8QXHAL8", "protocol": "I02lSgYbZfEoNhFr"}, {"name": "BhBBkW9NT17s6k2D", "protocol": "UcWfMd1cZCIUCjn0"}], "timeout": {"creation": 9, "drain": 18, "session": 91, "unresponsive": 70}}, "name": "h1SIHzQf26P9uGDF", "regions": [{"bufferSize": 82, "maxServerCount": 40, "minServerCount": 31, "region": "ngXMC6qAfHryUvNd"}, {"bufferSize": 96, "maxServerCount": 2, "minServerCount": 86, "region": "PH4yga2ZvPTR3tAN"}, {"bufferSize": 63, "maxServerCount": 67, "minServerCount": 39, "region": "0E29nLrWNpgi4TQU"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 39}, "success": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": true, "percentage": 5}, "success": {"collect": true, "percentage": 83}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'HIVwwF4PAD0KxL1D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '300FCezL0cmnBlNh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'onGiQmmDhEXvLDwS' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 60}, "success": {"collect": false, "percentage": 52}}, "logs": {"crashed": {"collect": true, "percentage": 29}, "success": {"collect": true, "percentage": 52}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'BZt66jodexLX2rOB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Yjt5KAnLghaKEGpv' \
    --namespace $AB_NAMESPACE \
    --count '96' \
    --offset '95' \
    --reason 'anu5hOXYyD2W2iSn' \
    --region 'KxyOl9m6k4CMfAH1' \
    --serverId 'oYqLGk0HeGbmluNU' \
    --sortDirection '5xD3RBcfIX2wVVTX' \
    --status '5dPjCM4azU6LYyi8' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'CoGVm2E9QQQ6I4xC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '4LHJbU870CEK8oEv' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["DnsxvMivNUe09cd8", "nC83GcIJCS3Z82Ff", "zr7g9JxeG3L7MuPu"], "isProtected": true, "name": "JKhQu75dciBTBeJA", "removedTags": ["4jWeYenpsWTdUiHf", "309R9T1u2OlDnhfY", "eCgIUi2Hb5rMKvK1"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'ydI8bE3b9Cd071Fz' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'weXtguM7qGhuSOcV' \
    --body '{"status": "DiObirM0mpm0Jyop"}' \
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
    --serverID 'BHBRB48NsV6ViPUw' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'xmbnvj1Y0SdrOMfv' \
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
    --fleetID 'iWi7Ivy4f4kg3QFe' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "J0wk2yZIyLKRCjL1"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '5lRFX7FYVbwbpmjY' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["P6iXlxdfn812r6tP", "KYJf2qwjI8JFgqiO", "RFiWRgALTw7PWD7J"], "regions": ["WUEFd5lCxzslJN1h", "nhg46Z93jbQoDZmE", "B0Q1WXwU5kdfICSX"]}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'KRa0JgTpxIveULTs' \
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