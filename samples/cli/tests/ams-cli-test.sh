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
    --body '{"name": "YZ6I874XQCn8wDlf"}' \
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
    --body '{"token": "fkbliNVQGRac5EY0"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'WkOD1UzTkJnvoSeM' \
    --count '428' \
    --endDate 'bjmPWrw3Yj5f5Suk' \
    --fleetID 'GDdtDOswoATwy5dT' \
    --imageID 'pu1lTFBVxqIjwodo' \
    --maxSize '45' \
    --minSize '35' \
    --offset '18' \
    --region 'OD8isjJlypSguy0v' \
    --serverId 'N9QZByb2ELEdwe6H' \
    --sortBy 'xiqFaiLetaSJQ4k4' \
    --sortDirection 'asc' \
    --startDate 'Zte1VbEh3H1VuwPv' \
    --status 'iElmail5XUNp0S6n' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'Nro5AS88CvtNqkDH' \
    --fleetId 'j5F0RacidpJEG7t2' \
    --uploadedBefore '1983-05-30' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'ZYO1GF7B0irssZqk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'rL6iEQJ0HxZV6LZl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '478' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "ksc1HIh3oOBfvJip", "expiresAt": "1993-03-04T00:00:00Z", "imageId": "VqJcBngS7T3PfsRi", "name": "veR6jiwutCg6Enam"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'n8Y8VRVd3GrAo7Kq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'Kt3KRIPXMnxmttVV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '18' \
    --desc 'asc' \
    --name 'LCnPjkXonqCQkR9r' \
    --offset '21' \
    --region 'FNtPLGFwka8ZzhGq' \
    --sortBy 'active' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["lDXec01uXeqpJ3Op", "eae1EMwzQ5MYaow3", "ZG2Nwtrt3CDNL9UL"], "dsHostConfiguration": {"instanceId": "7cf6xoABXjqlZXMB", "serversPerVm": 22}, "imageDeploymentProfile": {"commandLine": "MJZvGKtwyksxzaPj", "imageId": "pNAc5cRao1i0r941", "portConfigurations": [{"name": "VGVwjsRg1KDjgee7", "protocol": "SSmu5i3shVm8AJEN"}, {"name": "hsfDvHC9yDL4j5jA", "protocol": "5GbohOSPo9lnvcvA"}, {"name": "vlA0VtQ4eQekgw1G", "protocol": "ohNjIQq5ce9L74x4"}], "timeout": {"claim": 39, "creation": 34, "drain": 31, "session": 33, "unresponsive": 38}}, "name": "mR47F6sKkDCKRmgv", "onDemand": false, "regions": [{"bufferSize": 48, "dynamicBuffer": true, "maxServerCount": 29, "minServerCount": 38, "region": "XV3G7IiNXSjY0gnE"}, {"bufferSize": 59, "dynamicBuffer": true, "maxServerCount": 20, "minServerCount": 78, "region": "842dZ3x4pNvqJRij"}, {"bufferSize": 24, "dynamicBuffer": false, "maxServerCount": 98, "minServerCount": 58, "region": "D54LjvQUbqzsyXPU"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 20}}, "logs": {"crashed": {"collect": true, "percentage": 49}, "success": {"collect": true, "percentage": 52}, "unclaimed": {"collect": true, "percentage": 55}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'AZPzYL5rcmLFwIv6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'eoXkJVwxvAiv5EHX' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["sJ9ZVBear2UNtZuc", "j4qrUfx1fFaQnBEp", "bQrkpUieCx3pJvaR"], "dsHostConfiguration": {"instanceId": "L4IV3OpMTSySf5nG", "serversPerVm": 97}, "imageDeploymentProfile": {"commandLine": "yMnPejkuDZzjsLwL", "imageId": "rqF07H2WTK70LoC4", "portConfigurations": [{"name": "K0nJeqpNrEsr0A1e", "protocol": "hzHkK4idoguRgIDN"}, {"name": "HSdweCA6eLZ5KUsR", "protocol": "ISNR9JKM4djx7BE5"}, {"name": "bPJS7YNE1Y1TpKbb", "protocol": "vHiOObVe6pZWU3Ce"}], "timeout": {"claim": 95, "creation": 30, "drain": 73, "session": 14, "unresponsive": 5}}, "name": "FLpWgedmMyv5lIKL", "onDemand": true, "regions": [{"bufferSize": 11, "dynamicBuffer": false, "maxServerCount": 31, "minServerCount": 9, "region": "zGEaMGN1Ofhr258z"}, {"bufferSize": 14, "dynamicBuffer": true, "maxServerCount": 7, "minServerCount": 15, "region": "xGk3WHuS06Ke8xM7"}, {"bufferSize": 55, "dynamicBuffer": false, "maxServerCount": 50, "minServerCount": 86, "region": "VRbYmULprhzL9nT3"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 97}}, "logs": {"crashed": {"collect": true, "percentage": 37}, "success": {"collect": false, "percentage": 47}, "unclaimed": {"collect": false, "percentage": 57}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'kp2eM7hvqSdKrwVj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'CMAeqNNjQRwLu9gY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'LX9BG3RwEia6hq8S' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 52}}, "logs": {"crashed": {"collect": false, "percentage": 80}, "success": {"collect": false, "percentage": 86}, "unclaimed": {"collect": false, "percentage": 19}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'GRi8XWfu24NgkR0p' \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '34' \
    --region 'TWnBZ4KJzAkpJ2g0' \
    --serverId 'JKRQOF8SF5IEbQPH' \
    --sortBy 'eC6qGgTMVgRtvOnU' \
    --sortDirection 'desc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'JnBYoEa6t9MGKkn3' \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '15' \
    --reason 'Mn1nxKE7Rl4TNIsK' \
    --region 'zvKQUgVTFmFCf6yO' \
    --serverId 'QV7KxZ4RrqGrGmnD' \
    --sortDirection 'LVksiict59M3PJ7d' \
    --status '5t1fz4evc033NmQL' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --inUse '2WwDrpT0RaZYPf5B' \
    --isProtected 'false' \
    --name 'xbkkcV0zEmPG8qk4' \
    --offset '88' \
    --sortBy 'K3nA5a7sR16ks43g' \
    --sortDirection 'XjrKKntYUJdgCAMW' \
    --status '5DU35wMg6nQxz5Vr' \
    --tag 'O9ulLoEVWQzS1wNO' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'RpeiZ2zUKQ4Je4EL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'IzXX4iPSkupE7rix' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'lx4FuB3MIQjE6LYU' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["G1GT3qloHj5YDFas", "64nAuKCvokQgcPNf", "R6Qc2pltmHm5mKKF"], "isProtected": false, "name": "wyTxd71cZoheHLrA", "removedTags": ["IowChLzpdSLxWU0b", "4SYZHEf9BbFEIjOb", "Ys559gjiX57kAPG9"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 't2xX10bfcANK9d1p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'Eunq8w07sim2kB0a' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'AlLc3L0WCMOQhRZh' \
    --body '{"status": "N9tL0YP3DJCRtonP"}' \
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
    --serverID 'MO5jCBTGCXvE1XWc' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID '8p88KZUx7w3z2Zsw' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'wjRQewpQ6M8tLGRi' \
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
    --fleetID 'oQW0uOoo20gioLhS' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "6ADn14kvs4Qe2soZ", "sessionId": "jDtZ6Gvzf3gziurB"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'DBw6oGixSv2TZ3Ni' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["1WukXC3aQupc6d0J", "PfZ95fpZZVYXEV5U", "WGy0j1vzzB5OIHYH"], "regions": ["9dRqdlcaaCprsidd", "Q9jTTdVgPhUcL8wh", "RpfkKJcdTMjwV7nv"], "sessionId": "iEn5pKud4EfmymGs"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'nZjGmBg64hsG1WBN' \
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