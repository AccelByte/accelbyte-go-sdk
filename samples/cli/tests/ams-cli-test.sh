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
echo "1..47"

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
    --body '{"name": "AHepsbweWffFzvyH"}' \
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
    --body '{"token": "YpJdT1VbomKK3VTo"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '1OfShKs7jBrtGL2b' \
    --count '434' \
    --endDate 'TJoeqUqBq3p6HOXh' \
    --fleetID 'ZSavNLcJC8qkMtTn' \
    --imageID 'CEsj9UanXGeW2gc8' \
    --maxSize '62' \
    --minSize '76' \
    --offset '95' \
    --region 'yMvRYIqosOV7JgvJ' \
    --serverId 's5PDIw9MBROZTiOZ' \
    --sortBy 'ONYGIZhH8h0aqBev' \
    --sortDirection 'asc' \
    --startDate '5zsYv0aC79Xj1kJG' \
    --status 'rOVyrspwTJS1vBx8' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'W6EGaNwBfi9ieVOB' \
    --fleetId 'FwhAJ7CVxGXFVl6d' \
    --uploadedBefore '1978-06-13' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'mI51lVGuZlDaLksB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'f2EDMHCuHm3bQ6tV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '60' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "l9ezz88z9y7GNT3T", "expiresAt": "1987-02-25T00:00:00Z", "imageId": "Ydg6lNcx2xwoMoZn", "name": "DjW3wyjroiQbpoyn"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'vHzI3ugyoPRZAKpC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'JoNkZPGLalnNBpxV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'glrhSlCiGxwqEItH' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "k9RBihIX1KZ36DMH", "expiresAt": "1982-12-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '23' \
    --name 'z0f4mKM2WCoB2PkK' \
    --offset '46' \
    --region 'wdcIMkxPcjpufqId' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["MaXDULDbqM9L0uJv", "0IHF4vgIV2UVQewJ", "FBWSAhvS3kjkOUNM"], "dsHostConfiguration": {"instanceId": "FVUyjSFRtBpZtgqb", "serversPerVm": 16}, "fallbackFleet": "cRE6mBbRz5Tol98l", "imageDeploymentProfile": {"commandLine": "6AcmFY4bJuOhVo4A", "imageId": "wgmSuTcJJltIatJS", "portConfigurations": [{"name": "9hSdVqCYrk1J1mgD", "protocol": "8vxpgc37ZNOMgblc"}, {"name": "hRAXZUM8JklplRX0", "protocol": "fKunQpCvOZQ8fJws"}, {"name": "6OfuJJ8M3UoJj1M0", "protocol": "UozyuKBg3GYzz5Ik"}], "timeout": {"claim": 8, "creation": 29, "drain": 31, "session": 70, "unresponsive": 59}}, "name": "AVOOsZMaR7wrb6V1", "onDemand": true, "regions": [{"bufferSize": 46, "dynamicBuffer": true, "maxServerCount": 93, "minServerCount": 64, "region": "knYrrrWdxQxdys38"}, {"bufferSize": 96, "dynamicBuffer": false, "maxServerCount": 100, "minServerCount": 25, "region": "LbmiupnGMrcfzuPr"}, {"bufferSize": 32, "dynamicBuffer": true, "maxServerCount": 53, "minServerCount": 40, "region": "mIyWIKkT82AIYC8Q"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 97}}, "logs": {"crashed": {"collect": false, "percentage": 61}, "success": {"collect": false, "percentage": 65}, "unclaimed": {"collect": true, "percentage": 29}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '2JACH6NmG6zeCwem' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'h8bintPwQ9gzYPvj' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["PSEdorwvz6flO9y7", "zkyncdBMVlN8Mjmw", "ISelrx7jUFw3SzZV"], "dsHostConfiguration": {"instanceId": "2SpowOMUG6p5Q12M", "serversPerVm": 68}, "fallbackFleet": "Cglgjqv9o0xtr0X6", "imageDeploymentProfile": {"commandLine": "UNBx9wasZ1JXNOLC", "imageId": "GJrTVR2ESOlgyRTL", "portConfigurations": [{"name": "qbgFswPAC4Z8ZEMz", "protocol": "Opb0gdl8971ckSR9"}, {"name": "MntJbMhLbrBg7dv7", "protocol": "V1RGMCD6FzPQFO9x"}, {"name": "eqDqhMRz5g4ct85f", "protocol": "4JYbqeEarnSbuGLW"}], "timeout": {"claim": 99, "creation": 20, "drain": 79, "session": 9, "unresponsive": 10}}, "name": "NPQQ66fpUdjR7Q7W", "onDemand": false, "regions": [{"bufferSize": 3, "dynamicBuffer": false, "maxServerCount": 64, "minServerCount": 36, "region": "iak2m2FcDjbuSvR7"}, {"bufferSize": 45, "dynamicBuffer": false, "maxServerCount": 3, "minServerCount": 64, "region": "Zl1QFmuKHrE0i7gP"}, {"bufferSize": 82, "dynamicBuffer": true, "maxServerCount": 67, "minServerCount": 21, "region": "2VH0czMJWffVhtim"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 42}}, "logs": {"crashed": {"collect": false, "percentage": 58}, "success": {"collect": false, "percentage": 5}, "unclaimed": {"collect": true, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'rMhiklawx9yWPhzw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '9xnxBrp5YTJPGEIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'J3wBSWApBzhKQE8Y' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 23}}, "logs": {"crashed": {"collect": false, "percentage": 67}, "success": {"collect": false, "percentage": 77}, "unclaimed": {"collect": true, "percentage": 32}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'SCshx7ErEd8F6mrX' \
    --namespace $AB_NAMESPACE \
    --count '98' \
    --offset '48' \
    --region 'XqRqMBsz0DvxcfPK' \
    --serverId 'Y5gx99fQZe2538qD' \
    --sortBy 'qEaWLv0dv7OJg2KF' \
    --sortDirection 'asc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'vHtyBZaw7TyhGdzG' \
    --namespace $AB_NAMESPACE \
    --count '17' \
    --offset '98' \
    --reason 'w5vFzatYLp6HjgFM' \
    --region 'a0LVRL83m4KCCIkp' \
    --serverId 'azVD1wZL1usCEU6W' \
    --sortDirection 'YXUKgCM9oH3rxFno' \
    --status 'vvebV4utpd4y8joD' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '81' \
    --inUse 'JlqGWzEmVpZLEfeZ' \
    --isProtected 'true' \
    --name 'K5pPUjfupIOA6Tk4' \
    --offset '67' \
    --sortBy 'zSYXmkF9kiou9Wm4' \
    --sortDirection 'Erh28riCdsBoP9NR' \
    --status 'D12qOB8Sv8tMBKxl' \
    --tag 'rZ7g8tku7f9YtnCX' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'a1wCWMbMoeW163mE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'z5zppHFHwGlfz43b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'FT6OgQcT6mdYEULh' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["7jpuoGfizqZqBe5L", "eT9a2r6qDeN0Bm2D", "9UJA7BZrnQ9ehnGm"], "isProtected": true, "name": "HcwD3gONxxjAt5nV", "removedTags": ["tDUEZRmw9tpEThWz", "demRVEcJ4GmVziN5", "kTIGMprTnSQ3ouCu"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID '0xTXj5RmQiLQQ23P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '7X3SaRDyQI0zTeim' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'luSixkRmUyg0ZtbY' \
    --body '{"status": "VGFWFwhCKFAY57Wr"}' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsUpdate' test.out

#- 35 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'InfoRegions' test.out

#- 36 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'WaxLPM3LYSYabf2u' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'hDSIDsoW8KOfAkao' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'eUL8NoMm7eFZ16IY' \
    > test.out 2>&1
eval_tap $? 38 'ServerHistory' test.out

#- 39 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'InfoSupportedInstances' test.out

#- 40 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AccountGet' test.out

#- 41 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'FCD2NVrj1UkRRShV' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "zzIfx8AuLXZRN7Gb", "sessionId": "uUa4B3hGrrMRUIq3"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'QgcJMbzljfAEQVBG' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["cNcuihbyDFB4SAqM", "XtKmQ0wmQPgsyBK1", "AvvwlUyAyxiAumZK"], "regions": ["5rFxptQeYLsrMr2c", "1j3LYtd3RlZoBPAM", "nbatbhbhlGUQwXco"], "sessionId": "Oc4bljrNWn6L7vU6"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'rDRcyxp7EfQO3gLc' \
    > test.out 2>&1
eval_tap $? 44 'WatchdogConnect' test.out

#- 45 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 45 'UploadURLGet' test.out

#- 46 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 46 'Func1' test.out

#- 47 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 47 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE