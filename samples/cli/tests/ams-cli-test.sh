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
echo "1..42"

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
    --body '{"name": "K4oe15nOdZ8MqCRK"}' \
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
    --body '{"token": "7d50ypurxoRUKbYi"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'lY1hEb0TcE2HhXAt' \
    --count '116' \
    --endDate 'Frn5FzUVnv0W3JkS' \
    --fleetID 'i8AgiIwSqCHM9smx' \
    --imageID '273jxr5nRhesRdMc' \
    --maxSize '16' \
    --minSize '31' \
    --offset '56' \
    --region 'F803Tdbm3EX47Jon' \
    --serverId 'gfHVKAvwMRO9mRXT' \
    --startDate 'e7EuaSdjK0tIbCuk' \
    --status 'EEUZdGPKYSVGHYWi' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'itb3fMUSri9bHKsu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'n8jlT8DTXvNRe3B8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '447' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "LpEFGCCS0L4e39TB", "imageId": "0IbGplyqFuebRflI", "name": "eySaxrPWzYBzWCLr"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'G4z6zKv7vi8ch9Vu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'fGrzuXPA24u8vX54' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationDelete' test.out

#- 16 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetList' test.out

#- 17 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["TuUwmHS2diElfW7j", "OYweqPTPZWtMZEoe", "ATf1CLx96y95rs25"], "dsHostConfiguration": {"instanceId": "7YElffObUeSJIYEu", "instanceType": "ba6gPsvlRKdklPsn", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "SFqv4zX1SZoHUu7a", "imageId": "4ofw1BgZuAMH4Lby", "portConfigurations": [{"name": "JzlFVOsS6N5ezREz", "protocol": "6oerrqorPlAc97Y8"}, {"name": "hh3oBBncns6f3D6b", "protocol": "TTtRlfmDEw3QY0ca"}, {"name": "1fxjsYzpsb60buXa", "protocol": "yWtaw6EXViAEmUh8"}], "timeout": {"creation": 56, "drain": 70, "session": 13, "unresponsive": 80}}, "name": "bs7h0L0BoSBiqDMR", "onDemand": true, "regions": [{"bufferSize": 91, "maxServerCount": 83, "minServerCount": 60, "region": "cn86WKlGcoZljqUA"}, {"bufferSize": 59, "maxServerCount": 33, "minServerCount": 13, "region": "dzWl3G08QTCbI32f"}, {"bufferSize": 42, "maxServerCount": 54, "minServerCount": 57, "region": "UWANY2B49DRfzU32"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 74}, "success": {"collect": true, "percentage": 72}}, "logs": {"crashed": {"collect": true, "percentage": 95}, "success": {"collect": false, "percentage": 35}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'FGsWg4t9TM90bJM7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '7KFGVgncCqO4r9zB' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["CBaKhc2yp1QcU18r", "0AIcpzBcX3sFXaGF", "b5dK2ZpQ4RLfa9tt"], "dsHostConfiguration": {"instanceId": "sTzM4nc6ULk2TU2w", "instanceType": "k5P2bsXnqdDsvQ8L", "serversPerVm": 73}, "imageDeploymentProfile": {"commandLine": "iEiEmdtltbwJRG31", "imageId": "zCevIH9rvf5FgMGK", "portConfigurations": [{"name": "TEASocU3UyuLQTyV", "protocol": "91NtpWMfMfBXTLSJ"}, {"name": "nrPcVWdrlJEtgrOy", "protocol": "imOgGJXa1QMO4cb0"}, {"name": "O8YlvVzMroOwShQj", "protocol": "HXt8Ypjq7tzTA7e7"}], "timeout": {"creation": 38, "drain": 32, "session": 80, "unresponsive": 51}}, "name": "vvACBk4chulOoEL6", "onDemand": false, "regions": [{"bufferSize": 75, "maxServerCount": 70, "minServerCount": 13, "region": "nXG1XE6zB8cawXb6"}, {"bufferSize": 69, "maxServerCount": 49, "minServerCount": 13, "region": "6gYKlO8B04xZBLs1"}, {"bufferSize": 15, "maxServerCount": 5, "minServerCount": 80, "region": "yYHCzY3Vdz3jNBjI"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 61}, "success": {"collect": false, "percentage": 87}}, "logs": {"crashed": {"collect": false, "percentage": 5}, "success": {"collect": false, "percentage": 88}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'DHLCsLmMqpslJcsv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'NiSfKHIJrTxM6410' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'ruq81uyN66smzbGo' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 2}, "success": {"collect": false, "percentage": 32}}, "logs": {"crashed": {"collect": true, "percentage": 11}, "success": {"collect": false, "percentage": 5}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'KbxR6tFlc5m2nyxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'hUTutCubLm7iyW3K' \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '50' \
    --reason 'uZ740vl3nppWpwoj' \
    --region '6VEq3QUHVlgVaav7' \
    --serverId '1g2MIAiat8epF6Ps' \
    --sortDirection '7DaLc1EFWJ1hHDn4' \
    --status 'R9wUAKOrdrL5xjwD' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'fJbRJ1z83aoNZlmm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'zaDOtjK9WJU56k55' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["iXrxSDEcj1V1YVLU", "E5LpEKKN9RY3WP0b", "9sxzYXzHS5V6o8GV"], "isProtected": true, "name": "65obKG6D003fVBCP", "removedTags": ["kNC8M52cUtHfxbpl", "fKXuYHv6TGt3M6Fs", "XW56DuSPt7TRSIjN"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'uMXYp1qgPNyFrV7V' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'hOCRYOltfxURfyL2' \
    --body '{"status": "WMFcP4Ks4voZwFQu"}' \
    > test.out 2>&1
eval_tap $? 29 'QoSRegionsUpdate' test.out

#- 30 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'InfoRegions' test.out

#- 31 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'kJFKSgAphREe1Iax' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'gKUk2ZMvyuSLanZf' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'cH8qKDEwz3WeC3gE' \
    > test.out 2>&1
eval_tap $? 33 'ServerHistory' test.out

#- 34 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoSupportedInstances' test.out

#- 35 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AccountGet' test.out

#- 36 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'UiEhcnvO51zzqFPI' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Q0FN49rKajZPZ0Sm", "sessionId": "pkx7wOhXvQJamuTJ"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'FS44iiVZi9z5s3nb' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["ZU75GD5LWirTPJNb", "WcBOKjyq4R080fUh", "WDXw9Wia9scqWNA3"], "regions": ["aEOnEaLCcgAyoaTJ", "UzmEX82LFtlbeiFX", "vrCCQh7VZBTKkm4a"], "sessionId": "yYeDSqzg1yUGwkhz"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '5hFQtw0ZXHLx7uiX' \
    > test.out 2>&1
eval_tap $? 39 'WatchdogConnect' test.out

#- 40 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 40 'UploadURLGet' test.out

#- 41 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 41 'Func1' test.out

#- 42 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 42 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE