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
    --body '{"name": "mHqyhs96nEXz2t3X"}' \
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
    --body '{"token": "dE7f72Ohkm7MalZX"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'q8n5020afwECFAKM' \
    --count '270' \
    --endDate 'YX8bqqCudfnPNc60' \
    --fleetID 'Dmh5vHSrfTajDgh4' \
    --imageID 'Q4lhpPFPfrRjg7ma' \
    --maxSize '3' \
    --minSize '22' \
    --offset '30' \
    --region 'w8DOTg8c3vOKKCcM' \
    --serverId 'S12fP6Mhb2Oaegw5' \
    --sortBy 'POezS3DH1byKoXtf' \
    --sortDirection 'asc' \
    --startDate 'hP45S7PrfnBLwsJZ' \
    --status 'uYaNrDAtrH95kn3s' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'FTp90YjZiBSMxcB7' \
    --fleetId '2FiJytcfqUa63OfB' \
    --uploadedBefore '1990-05-12' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'JHxaCjncJeZo60sk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 's2T04vnNgByRe8zj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '355' \
    --imageId 'FLMKCyRmLMlBkTqI' \
    --name 'Q9i3AF8za47S61Ah' \
    --offset '64' \
    --sortBy 'expires_at' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "RjsgkyBveQRVZuzB", "expiresAt": "1988-05-27T00:00:00Z", "imageId": "7Pyuzi3APjzcVkAz", "name": "EZYFbklXNdqHudxo"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'dK3DhPTq7c4X0qpa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID '1LHaQOUIWfIApaZQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'qJLHtU8u4wcuVw1F' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "RhxqancgfTvQI6De", "expiresAt": "1993-05-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '78' \
    --name 'Q983w9tjpCC4lBn8' \
    --offset '18' \
    --region 'qFzxQPTVQzrbzqFE' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["d5Sn9XoGuNzXfYxy", "LmJ8rpCNZgZQgPCg", "ggewrfnUeeFgbBBG"], "dsHostConfiguration": {"instanceId": "2E7SMCLshgWiMVpz", "serversPerVm": 68}, "fallbackFleet": "gblG8ZDqdgaEQKzX", "hibernateAfterPeriod": "dzhc4o67DCc9Z0YR", "imageDeploymentProfile": {"commandLine": "GNGKLonwnhyJzYIk", "imageId": "euZYFVsr000h3X2D", "portConfigurations": [{"name": "A9MvbyplxOhur7eQ", "protocol": "YJFpSzh1pyHGTM9x"}, {"name": "g4YWazhbPfUSTqF3", "protocol": "L1x644TfhWDPmPSq"}, {"name": "T6vvzC9VQo45Txwl", "protocol": "0LCgkyCOtbr7Ouhc"}], "timeout": {"claim": 85, "creation": 42, "drain": 83, "session": 57, "unresponsive": 9}}, "name": "y7qDNd3jtC6PYtrN", "onDemand": false, "regions": [{"bufferSize": 57, "dynamicBuffer": true, "maxServerCount": 84, "minServerCount": 16, "region": "qLWg6jGA8ODaFuCQ"}, {"bufferSize": 27, "dynamicBuffer": true, "maxServerCount": 95, "minServerCount": 60, "region": "JGr7GS6icjmQbS9y"}, {"bufferSize": 17, "dynamicBuffer": true, "maxServerCount": 51, "minServerCount": 57, "region": "Zzlx28OJtm7PGfpf"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 23}}, "logs": {"crashed": {"collect": false, "percentage": 36}, "success": {"collect": false, "percentage": 21}, "unclaimed": {"collect": true, "percentage": 24}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Ex2BJ6oDBalKwKqK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'd0L91div7TTVV57Y' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["gR9Bifm82LLJb47A", "LHCiGjRI95o8nKcP", "so62b6SevfurGr7R"], "dsHostConfiguration": {"instanceId": "KlmLLhtWykSpIluw", "serversPerVm": 14}, "fallbackFleet": "4QjVWn7h2EL0UgP5", "hibernateAfterPeriod": "FLN8cNEUw82Hz79v", "imageDeploymentProfile": {"commandLine": "kU2CpZDPxPZRF6Gm", "imageId": "MKE5mxKfluWtlw5p", "portConfigurations": [{"name": "q3sbcl9HZk8nQLy6", "protocol": "iUzxXHqN0nsL27BW"}, {"name": "FUfcJxHzlZcISXfB", "protocol": "CBUfETR34QIMKtKs"}, {"name": "NBmhphPxQbvPKqhT", "protocol": "oRiiO0AGJ7a2hb0h"}], "timeout": {"claim": 68, "creation": 49, "drain": 72, "session": 7, "unresponsive": 4}}, "name": "TXLUQC80vxm8XUTT", "onDemand": true, "regions": [{"bufferSize": 80, "dynamicBuffer": true, "maxServerCount": 55, "minServerCount": 68, "region": "HormqeWhrZ10dgks"}, {"bufferSize": 96, "dynamicBuffer": false, "maxServerCount": 100, "minServerCount": 18, "region": "B0L9duh8rPAYNEXy"}, {"bufferSize": 27, "dynamicBuffer": false, "maxServerCount": 91, "minServerCount": 83, "region": "f8nluVtHFwvMmebm"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 56}}, "logs": {"crashed": {"collect": false, "percentage": 22}, "success": {"collect": false, "percentage": 89}, "unclaimed": {"collect": false, "percentage": 35}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'k70jC1QrjG7Ry6Bx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'aGPEJHckWP6Fp0V4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'OYqnmOEoO9jSkcg1' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 36}}, "logs": {"crashed": {"collect": true, "percentage": 61}, "success": {"collect": true, "percentage": 56}, "unclaimed": {"collect": false, "percentage": 41}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'REaML7aCnoCFlxFa' \
    --namespace $AB_NAMESPACE \
    --count '51' \
    --offset '13' \
    --region '61gqQGuzA8YG4IZB' \
    --serverId 'PprZHqWcUBSJjGI3' \
    --sortBy 'Sxi0KksAv5cbuC5o' \
    --sortDirection 'asc' \
    --status 'creating' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'g2nUB38dkFeOWY5v' \
    --namespace $AB_NAMESPACE \
    --count '35' \
    --offset '22' \
    --reason 'vOZ1FFaLtgXDz4Bn' \
    --region 'fjB0iYywh4nmJfKX' \
    --serverId 'QRIOpsQE13M6XNCn' \
    --sortDirection 'tZcUSdzrH58Z6718' \
    --status 'rHZRE9Buxc28zrXL' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '32' \
    --inUse 'w5Zagv39pG9AQvd7' \
    --isProtected 'true' \
    --name 'Co06YvjXNUGWtfwk' \
    --offset '46' \
    --sortBy '7T4Lw6MSBXrgkRi3' \
    --sortDirection '9mM34fqCGO7VsV1P' \
    --status 'Ktlm0fHXXFv4FIto' \
    --tag 'JzJIZApkKKdAvFLv' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'eRB5Fh88Bk18IoBg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'S9dFQHToQxuL23Rx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '3Bn5aFQfrGcNHjwb' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["VdurRIKvDGXDYZ5H", "JAD9sKhAr9LZdFrF", "fY1x5KgEQovAyUlL"], "isProtected": true, "name": "GyoteEI5wJtpzwwo", "removedTags": ["i8EWjeVSaDpKRZyU", "J5yVYpgNCR0YmUxW", "9LcIZrMpbOyjj8jE"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'X84Toev8VzY3cLCF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'xII1b9ftXx07vwaX' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'AB6FseQ7oXHV6t64' \
    --body '{"status": "yUEb9DDG0mi6KxfS"}' \
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
    --serverID 'IKzlpIlwR8K32ycL' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'JzYb7FATLkZcHB1h' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'BZMULXfBeHScmu5O' \
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
    --fleetID 'DscNsnzTSbEPfjIQ' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "HP8n3VARMXgSFgqX", "sessionId": "lm7FOlMj9U6tigZl"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'QbwihOxDLh5GsRLU' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["4l41lMh7YuW5IxrY", "7Xce8DLJkArX61SY", "T8T8tTW4OIY1J49z"], "regions": ["yZ7n96kL9I03uJvB", "woLD9JtsH6GWgAyW", "p88Pq7v92nNqzEyu"], "sessionId": "vPkyQ1gBTNZ2oZW5"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'pZXdFig6xZR2HjtT' \
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