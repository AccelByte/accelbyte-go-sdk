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
    --body '{"name": "AztDqwbO9bqsxyIx"}' \
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
    --body '{"token": "32sSjoppraLsg6zZ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'tcaqjZPSUeL8xZ5A' \
    --count '104' \
    --endDate 'wHi4O2CD9xOOoGDI' \
    --fleetID 'Te5XWOiUPGX5pXIu' \
    --imageID 'xWjAFUygUqkf9YwN' \
    --maxSize '24' \
    --minSize '70' \
    --offset '79' \
    --region 'e539dTNfjEeDLIek' \
    --serverId 'atnG7iJFODVHGIG7' \
    --startDate '0IOa7fPxMstEnOev' \
    --status 'Z7xI2rFr18i0R4tw' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'KUOpTiB0BxqPfxm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'hT7lyBNVLk9bvjFK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLine": "5gUKvgWe5uRUFoJ4", "imageId": "Ay4J6ggVUDFNZX59", "name": "Ui8uI0QASW1lsCkv"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'vCNzWWe84GG7f2KT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'eVYbymUzetK8NZ50' \
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
    --body '{"active": false, "claimKeys": ["B8jeRaDlELJc4pMp", "XetBq8RkmYQRFVyv", "OsArL3apf3s8ReOD"], "dsHostConfiguration": {"instanceId": "SFeqC7SGpZ9UfwMy", "instanceType": "03hv3JpS6ZMkVtAO", "serversPerVm": 83}, "imageDeploymentProfile": {"commandLine": "Nc5CSZ1qjRkNXqGM", "imageId": "yHIpuchMrP6KbUxn", "portConfigurations": [{"name": "NzKOEPqTbqpoUE3L", "protocol": "OAkJEfm7TUYPdX5C"}, {"name": "B7Cc0l1kHSbaWoWN", "protocol": "rjBPPQIws9KEuocC"}, {"name": "P88Svc0ScRl55f4A", "protocol": "HGxIpZW0lUF4OyUp"}], "timeout": {"creation": 100, "drain": 57, "session": 97, "unresponsive": 74}}, "name": "gaM5j0W3YaPif0rh", "regions": [{"bufferSize": 83, "maxServerCount": 18, "minServerCount": 61, "region": "ALoRX6kh30k3tTdQ"}, {"bufferSize": 77, "maxServerCount": 86, "minServerCount": 85, "region": "6OFWVDFPorS7DRP4"}, {"bufferSize": 50, "maxServerCount": 30, "minServerCount": 78, "region": "LOBFpzdF2Fb5XaUp"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 67}, "success": {"collect": false, "percentage": 3}}, "logs": {"crashed": {"collect": false, "percentage": 36}, "success": {"collect": false, "percentage": 93}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'xyWcDu2W0OoLiH9H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'ezROZeRYPREry5Pp' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["r3Da5iD59tDNIulN", "eLWj1TEnxiNFXlUO", "wP6Bh8bkex7RjT8J"], "dsHostConfiguration": {"instanceId": "eEPHCaKU17bVWq09", "instanceType": "9OEApxDOK3bwzoJF", "serversPerVm": 38}, "imageDeploymentProfile": {"commandLine": "Zb4M5bRe7YZl0rZc", "imageId": "GOBFNNIOfgyAfmHZ", "portConfigurations": [{"name": "r7Q3wCgxGdRXdmC6", "protocol": "oDzrQNCmvHbnwJzf"}, {"name": "NvQdtryslvsvpnHm", "protocol": "ntpBkIsNS2W1swrT"}, {"name": "fz7a0mUkIbFlskuE", "protocol": "jS3bEfY6uXaW5IpN"}], "timeout": {"creation": 30, "drain": 94, "session": 47, "unresponsive": 82}}, "name": "cNHk25pGDH1elKuC", "regions": [{"bufferSize": 18, "maxServerCount": 7, "minServerCount": 30, "region": "4yQb1FrVZjSyMrkd"}, {"bufferSize": 77, "maxServerCount": 25, "minServerCount": 35, "region": "h3vO9xuf7NW4B8DU"}, {"bufferSize": 7, "maxServerCount": 31, "minServerCount": 21, "region": "s3dROlDSriQuz1EY"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 12}, "success": {"collect": false, "percentage": 28}}, "logs": {"crashed": {"collect": true, "percentage": 73}, "success": {"collect": false, "percentage": 51}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'uRvlxt2NNSYTsXq1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'aKxXsA5vvoxA8TuY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '9xKTiOwSAIRG5eok' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 44}, "success": {"collect": true, "percentage": 95}}, "logs": {"crashed": {"collect": false, "percentage": 84}, "success": {"collect": false, "percentage": 33}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'XKtCv0Glwk0qENio' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'uDPXShk92PYHfCnx' \
    --namespace $AB_NAMESPACE \
    --count '65' \
    --offset '29' \
    --reason 'PcugH3Dt158wa0Uc' \
    --region 'gpkD9e5B3QoDzYPG' \
    --serverId 'zE1DVrx8TEtzPIQs' \
    --sortDirection 'ymE9uG4xCRN7EAis' \
    --status '53yJOP4rqgCTKAhL' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '5RsyKCJDMSPmxyxN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'eW7v8E7tKDpWTaCo' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["DLRyFbA2WuaCXjmS", "u5I8JlMQmcBF2EG7", "HgxpPlI6ZUa6zJQv"], "isProtected": false, "name": "1FkTGdnc1GoatmVH", "removedTags": ["elVxdTkp21aG8Pzk", "UHjb3OtifVksSMBq", "I6tRno1WQgYEyNta"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'luQejC32t6kjoeXi' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'yEsVaukVnYYEbihx' \
    --body '{"status": "dDkvbCfhI6x75RXa"}' \
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
    --serverID '3dtvFI0RZGm1EKMQ' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'FygkyFYNjIv6yK6J' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'nbS6WkOdphFx9K7N' \
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
    --fleetID 'o7jbbHKZ4xSLPGYB' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "TeBViJcXAjLWLktw", "sessionId": "oTRrnIlZx8LK8ITb"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'gmpLTaL2Avf2Y1By' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["Z7WQ8LOaHFx2oRzG", "DBWxW88nILdtHmCH", "jF1xpRhQV5nuKxMo"], "regions": ["XBCy9MZWV75JNHMm", "c1YeCPh88atEtKMT", "MBHmFLFsaGW5zKHp"], "sessionId": "iU97twgr4BSavRlW"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'FlVG9OFGIarvyMIY' \
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