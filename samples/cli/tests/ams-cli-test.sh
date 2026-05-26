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
    --body '{"name": "RfIvTusrNqWpRLCJ"}' \
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
    --body '{"token": "N9YhrLhLX0BULuyL"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'aaReLz0fhs99P5d5' \
    --count '438' \
    --endDate '6T9Beg5ic4xqXAAb' \
    --fleetID '6hDWQQ6cAuBUl3uI' \
    --imageID 'rW9lw8S5q2uAMBLs' \
    --maxSize '30' \
    --minSize '23' \
    --offset '29' \
    --region 'wma64ukd7P06qkgA' \
    --serverId 'c5y2kpPPhcGlbEdd' \
    --sortBy '6MBSFyTtGeRyUaL2' \
    --sortDirection 'desc' \
    --startDate 'iAQX8nMoJc3KAWpg' \
    --status '2FRu3jja3tYhHw7C' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'GIwskMRD9bCB7QnO' \
    --fleetId 'V4kUKWusvPcOVzFO' \
    --uploadedBefore '1975-01-26' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'Eu0oqTCOZjbfbNmB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'tdIwCgbyrZ4hblry' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '133' \
    --imageId 'GQeux5vWBk8HQcJh' \
    --name 'CbZJWmcIRNXv2EqT' \
    --offset '51' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "NO8P4gntPxAYXm4V", "expiresAt": "1974-10-27T00:00:00Z", "imageId": "1zVOQweIXYV6Fz2q", "name": "2wWAFAWcXYhTmOku"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'FyJV00xikzdGFaep' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'DP7iaLWLR8lQvQav' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID '8CNotp605j382JWm' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "BM21QpbFZVk80Okz", "expiresAt": "1986-04-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '74' \
    --name 'IQ6fQvhwf9HzzdXm' \
    --offset '72' \
    --region 'vensFKZ8LAm5kzsb' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["vxyjoVdCa3eHqovh", "dt9UayyYlCvudT0D", "9v41yYEwPE9N0b0S"], "dsHostConfiguration": {"instanceId": "51uycVo7ZSofG12a", "serversPerVm": 23}, "fallbackFleet": "gwk7dNmu1mPsRFst", "hibernateAfterPeriod": "gG4iOYQhxNQtReRH", "imageDeploymentProfile": {"commandLine": "xnlOSBFU37BV0xWV", "imageId": "7HQ19xwQqQr0hegs", "portConfigurations": [{"name": "VVjM31fi0a5tffGq", "protocol": "TByX91sY2l4ByPtS"}, {"name": "mWyNrsgjlnspd6xS", "protocol": "qhzuCtCwEJhATweC"}, {"name": "Vj5rtEV84iAm5lnk", "protocol": "Qz6Y5a7UEVO6oyvO"}], "timeout": {"claim": 16, "creation": 85, "drain": 24, "session": 26, "unresponsive": 66}}, "name": "k3doWgufqhQfC6FP", "onDemand": false, "regions": [{"bufferSize": 5, "dynamicBuffer": true, "maxServerCount": 0, "minServerCount": 67, "region": "HiXzpoKrxKxNDzqz"}, {"bufferSize": 94, "dynamicBuffer": true, "maxServerCount": 59, "minServerCount": 44, "region": "QqmjVGZB04F9t9Q1"}, {"bufferSize": 42, "dynamicBuffer": false, "maxServerCount": 15, "minServerCount": 39, "region": "FR60o0g2x2dng4zL"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 2}}, "logs": {"crashed": {"collect": true, "percentage": 78}, "success": {"collect": false, "percentage": 23}, "unclaimed": {"collect": true, "percentage": 65}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["HEo3hudmV3G7WO6s", "kbrYFrMlsZQ51qzq", "PRaahHCOhuCUWeeo"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'VHuPTujvTsPiltJx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'SznMQ7iYuzgd6Tn9' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["xAn8fRYMoalsmdJu", "tsKqnHLqKY51dmmo", "fLGL2nEsArwM2gR5"], "dsHostConfiguration": {"instanceId": "ItDFkLlJzhrGj8FB", "serversPerVm": 30}, "fallbackFleet": "eeNBXtiRhFr20wBW", "hibernateAfterPeriod": "3feBA7hPNaocB5QG", "imageDeploymentProfile": {"commandLine": "yj8WvPDU4mzvglL4", "imageId": "WPu6nOFU5Mp7kO0m", "portConfigurations": [{"name": "cDyUvlHY4D9zMsE6", "protocol": "AUzxdYmRnH8BYsq6"}, {"name": "WFg8qklCIDOfpb7j", "protocol": "pwOu9ebo33i35cpC"}, {"name": "RYWLed2Kr32g6m0r", "protocol": "OhVdXuF2hD7MIJtI"}], "timeout": {"claim": 60, "creation": 71, "drain": 99, "session": 40, "unresponsive": 39}}, "name": "pSOM5VdCxdRiczgC", "onDemand": false, "regions": [{"bufferSize": 66, "dynamicBuffer": false, "maxServerCount": 16, "minServerCount": 73, "region": "rosgJINIZtEmvQlv"}, {"bufferSize": 92, "dynamicBuffer": true, "maxServerCount": 82, "minServerCount": 76, "region": "yNo8euJkWAWpbiN9"}, {"bufferSize": 38, "dynamicBuffer": false, "maxServerCount": 39, "minServerCount": 41, "region": "HHWCOg4bItbLaMcG"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 16}}, "logs": {"crashed": {"collect": false, "percentage": 15}, "success": {"collect": false, "percentage": 72}, "unclaimed": {"collect": false, "percentage": 52}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'lsVK0wPCkAGEZgHB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '3XuF4kKup2NAtxWY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'idius1fzmDi4c9Tz' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 29}}, "logs": {"crashed": {"collect": true, "percentage": 35}, "success": {"collect": false, "percentage": 25}, "unclaimed": {"collect": true, "percentage": 29}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'OHl1qyd8ssWdb1XC' \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '73' \
    --region 'lLYXteaNeBDxSm82' \
    --serverId 'tu4whUPYpD3e8sPh' \
    --sortBy 'u5HE4aNyx9uN37ax' \
    --sortDirection 'desc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'RhbQJ1PrbrdoOaOu' \
    --namespace $AB_NAMESPACE \
    --count '17' \
    --offset '87' \
    --reason 'XFha4SS5d2Zge3Nj' \
    --region '9ONM6VoAKgQvbGnE' \
    --serverId 'tSGmBcS8LxbOvDaw' \
    --sortDirection 'E3WU7HQuNzuTxaON' \
    --status 'cIY3eT9yUnJfhkZ6' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '29' \
    --inUse 'z1gjZGocWBr35OqR' \
    --isProtected 'true' \
    --name 'JCRWivRgQVPXCT3J' \
    --offset '66' \
    --sortBy 'p96n5sSzZUkfweV2' \
    --sortDirection 'Bc9bg4y6eww7Yh4w' \
    --status 'U35PuK1HnjGoyd7i' \
    --tag 'hQnV3TpCkakXll3G' \
    --targetArchitecture 'Wbyw3DwzFSIpbBfc' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'asHM5HvbgTAJtDxz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'HgMUWYS4J01m4twg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'LOsWf0RboC1GlKgp' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["7iOlcb8YOQsHy2hU", "W2bvUIYwqGfCmBXa", "CfO5aPpeUh8dB2t1"], "isProtected": true, "name": "dKmmPaICOzeVixjX", "removedTags": ["6VVuXASfi3uxALfv", "BjhmPhT88VxlAIoS", "1hUaZsar52PEvAgs"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'OdGFnPhVCvrLhA9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'TuvzApvDN4WqRn2E' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'OGhHfVntURhm2vZX' \
    --body '{"status": "gukXYrQ4jMNN77n9"}' \
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
    --serverID 'Sy1j2JfaH91do1Au' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'BxzKUK19PKglm6Ln' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '3wcGzkZPh4LXSdks' \
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
    --fleetID 'ISR4uIQfrYvYHPuZ' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "DMA0UeiMc8Fw3wj2", "sessionId": "xr1osfEDelfnZq2N"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'fayTvwrR99fc5HRc' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["0MfhV1zRdp4SbMGx", "OdGuoUtFVtu90Uho", "YMGpZP714c3lIBUK"], "regions": ["0SyvqCDPb1E12XDd", "RGn4gnbNQsvj6RGp", "lwwfgFPHsdniL1Zj"], "sessionId": "sLlr8GHZ0IRqlLiF"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '0dovkd9eshjowVZ1' \
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