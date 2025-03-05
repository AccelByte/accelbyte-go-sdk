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
    --body '{"name": "sW4xr33FbBgtrY9Y"}' \
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
    --body '{"token": "5kqLMNoFFwRuD83X"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'YWOZ0sPHZSRvTGAB' \
    --count '197' \
    --endDate '829vT1Sf2rEmNIXo' \
    --fleetID '3ZHsaOnhJvo8RODZ' \
    --imageID 'h4SKjeOFMoffuxQz' \
    --maxSize '5' \
    --minSize '84' \
    --offset '47' \
    --region 'W5TErvG02F0jZAiV' \
    --serverId '6V4HngjDDv5aYHOO' \
    --sortBy 'rriJOzeE4LNPxUz4' \
    --sortDirection 'desc' \
    --startDate 'FK9eKRLjY6wNvTee' \
    --status 'llNXiHbZ11XCb54f' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'BLLXmEqS7iN76nnL' \
    --fleetId 'Visb8Cyw5QDgOF1A' \
    --uploadedBefore '1992-03-04' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'TcABnDmux4ASVvRf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'L4Jn9xZWVhDGiIVe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '256' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "pwqHmT3Q2LUF0wGI", "expiresAt": "1996-05-31T00:00:00Z", "imageId": "meBTyAFk3lXoEg0D", "name": "hKLPd5h0WY2Rz4ar"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'f86XD6sOQe51JNEK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'PXF4q1phZEz3bWVF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '43' \
    --name 's4axlFjkfkqULnWc' \
    --offset '69' \
    --region 'NREl5IOqioUw9uhr' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["v4Sri4jJfh8Bh1dt", "WucGg17TksNUm1c3", "BJctFbsvCc084Lmr"], "dsHostConfiguration": {"instanceId": "wYwW4W93aaji6Mmr", "serversPerVm": 57}, "fallbackFleet": "Wg8JOvkJAxSrt2xr", "imageDeploymentProfile": {"commandLine": "PCXRzWor2hacnmCA", "imageId": "N66IUmLPbwtWmyzt", "portConfigurations": [{"name": "j8774jGZszgG1sZ2", "protocol": "6vKm3QvTeXpyEhn1"}, {"name": "6a71zCNOH9Rrwqly", "protocol": "xTKg492Y8DThLQyi"}, {"name": "cTqbk5j3Kf7mOkCk", "protocol": "N0yjnFHyWm3rY7yE"}], "timeout": {"claim": 31, "creation": 8, "drain": 76, "session": 89, "unresponsive": 87}}, "name": "ZLehYeTwuYiRDLaO", "onDemand": true, "regions": [{"bufferSize": 45, "dynamicBuffer": true, "maxServerCount": 68, "minServerCount": 36, "region": "TqGqOurj1kXOi8Ge"}, {"bufferSize": 76, "dynamicBuffer": true, "maxServerCount": 64, "minServerCount": 56, "region": "VjuLVIQFtxYCz6Qf"}, {"bufferSize": 26, "dynamicBuffer": false, "maxServerCount": 81, "minServerCount": 88, "region": "Jhibvo5kSF7RCepg"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 45}}, "logs": {"crashed": {"collect": true, "percentage": 53}, "success": {"collect": false, "percentage": 33}, "unclaimed": {"collect": true, "percentage": 97}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'cBhKdqLhr5uUMUW1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'LHxHVn5VQ7d4li9m' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["A6sVXjpgSgMk8DDB", "VOiNpkuPNMw3Ansn", "UK5y0j2X4Gc94M94"], "dsHostConfiguration": {"instanceId": "4nf7aAqdx1IA8ozm", "serversPerVm": 50}, "fallbackFleet": "RbFXsNeKejdHk8SB", "imageDeploymentProfile": {"commandLine": "ACfQc8NMaPtmPmLP", "imageId": "1lYyBmPMAR9GyV56", "portConfigurations": [{"name": "3CFdonodrk9HBVw8", "protocol": "ulVjLzVu5eBCHhnX"}, {"name": "9OXFrHhefbQHRHEf", "protocol": "YqNEWRT3yckR8BRo"}, {"name": "4wWz1sezjW2eoYjL", "protocol": "fzoPdl5bc2ASjpFg"}], "timeout": {"claim": 98, "creation": 31, "drain": 25, "session": 49, "unresponsive": 98}}, "name": "Ddf2d91K2b1QMXLN", "onDemand": true, "regions": [{"bufferSize": 77, "dynamicBuffer": true, "maxServerCount": 98, "minServerCount": 12, "region": "MTccLbCszAftix2E"}, {"bufferSize": 4, "dynamicBuffer": true, "maxServerCount": 17, "minServerCount": 17, "region": "eUtodwMRRjgRL8mF"}, {"bufferSize": 36, "dynamicBuffer": false, "maxServerCount": 79, "minServerCount": 93, "region": "Hts2FmPf1x7LijX5"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 5}}, "logs": {"crashed": {"collect": true, "percentage": 11}, "success": {"collect": true, "percentage": 69}, "unclaimed": {"collect": false, "percentage": 94}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'vZ7JZsrthp24oeW6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'RjfqDlELf1F6aqzG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'aH11EAVfpOpiQOBs' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 65}}, "logs": {"crashed": {"collect": true, "percentage": 72}, "success": {"collect": true, "percentage": 75}, "unclaimed": {"collect": false, "percentage": 99}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'p24Nspl3WQC439mf' \
    --namespace $AB_NAMESPACE \
    --count '90' \
    --offset '91' \
    --region 'aTaYOKNGVDN4hKZ9' \
    --serverId 'gbsbbENt7OV9vb17' \
    --sortBy 'ES9SJxio9ngg8hTa' \
    --sortDirection 'asc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'YV831dkuJav9bc3s' \
    --namespace $AB_NAMESPACE \
    --count '62' \
    --offset '28' \
    --reason 'UJM9t3hVwiXOf5kU' \
    --region '36UOA0iD4FGmPU2A' \
    --serverId '7sslm72vMx9kKJT6' \
    --sortDirection 'C6WtgONcq2EDXGsC' \
    --status 'TWLegyI0vlYLWsuE' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '96' \
    --inUse 'dQYTke1bGfD9qc32' \
    --isProtected 'true' \
    --name 'SbLE4XDmJqIvE7fk' \
    --offset '16' \
    --sortBy 'yb3TguwD0iIfdJ7s' \
    --sortDirection '8TrV39CU5iANlnDw' \
    --status 'l4o5ae7f4gdtJ8gb' \
    --tag 'dJXuXHOcVKLezBiJ' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'qduIlkj4TDo0P3Di' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'TLRR0wJBdHcnNbE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'SvKXf5q2i8RhSmVs' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["Ke0Y4HhALyA13L2T", "fffSmKGUwtKHehYG", "PzV4Wb8XwQnSPkvL"], "isProtected": true, "name": "pyLyNX9uFypAGs54", "removedTags": ["gy0k7wAmmZ59Et2n", "TVdpTMHbjxE5PRi8", "hvWSOhWpNu71tBFB"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'g0vbBfK4m5lK6wuj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'P68R5zRTPw5FCtIn' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'xb6fhKLYUpDE1phG' \
    --body '{"status": "cOZFzCCefo6fxSdZ"}' \
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
    --serverID 'iLeROMZeZ8gAS51a' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'bBkL8mBgFkvmAvgd' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'SP8NVO84rkP8lEd4' \
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
    --fleetID 'YjedaEDy9xl9t4Fl' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "5BMth5o2dAYehpzQ", "sessionId": "kxnfliGACR4cJIqw"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'S8wiLKGpN6lYnI7D' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["CI0sEMi8f6ZqwkEa", "gqlnVq3IUrSo3w3c", "Hld9MnrjSNjcE9Ye"], "regions": ["PKZNmYjKyml7gi6g", "fn5ssgC2ozoOTjB4", "O6DSmIfW1V0O2emO"], "sessionId": "wSLAdhCDt9uMdJzN"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'MtK6lEcXxsgC7MLr' \
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