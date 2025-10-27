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
    --body '{"name": "Keq7xXVyhO3q6Mu8"}' \
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
    --body '{"token": "u2IyRERRmrf9UP44"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'WWzfkdShJ1Gl3aAN' \
    --count '446' \
    --endDate 'jImdRjAC0deILeng' \
    --fleetID 'yos48YsfMW5RQwCx' \
    --imageID '5OUxusaNvY8hTBHq' \
    --maxSize '28' \
    --minSize '60' \
    --offset '68' \
    --region '17LfrH9u4lrEoDtm' \
    --serverId 'EQoiNAshWwzs0FMp' \
    --sortBy 'HDelfcl8ROrH2l6X' \
    --sortDirection 'desc' \
    --startDate 'pNgPsmel5d64HKyV' \
    --status 'o0WI93cd0ZUlmkMN' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType '83fOHd1eNOBxCFrN' \
    --fleetId '9gi4yMfQtOVNNCLw' \
    --uploadedBefore '1984-04-03' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'TDq9Gn0Bo3SDyHwO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'uhGht3h9HOrcdQcO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '387' \
    --imageId 'uVfdTQjVwa2mIn6A' \
    --name 'EzSu6HnBRMyRBidm' \
    --offset '80' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "bpTsXUlyILvadnyu", "expiresAt": "1976-03-06T00:00:00Z", "imageId": "NTpMO8T8EWBMSn5h", "name": "NtNi8gsINtf6dkrI"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'MUibKKLo97VW8n6R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'FM3l8oIJkoIHM8s8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'w2VT6XVS0SgZK1yr' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "DzJduKTXFGJTUyIt", "expiresAt": "1975-09-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '30' \
    --name 'QxRGMcDnFpvFysTB' \
    --offset '47' \
    --region 'ebUHkF5DYfLVcpED' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["jP6AFbVGC6UH3GSX", "r9BO9Ax1GD1k6MwO", "oI13SYZrbgqLPewM"], "dsHostConfiguration": {"instanceId": "NaJufpwsRNtwk3D8", "serversPerVm": 29}, "fallbackFleet": "mF3s0tSNq6mXwFcO", "hibernateAfterPeriod": "4yWWgnsoRkPJXYDK", "imageDeploymentProfile": {"commandLine": "rQ7Tpdk7QxLWFtXy", "imageId": "OCBxkxq9LymJ7ACH", "portConfigurations": [{"name": "6A6ZZGf5Q6tnqDPJ", "protocol": "ejoMUliauKbdw6HH"}, {"name": "oKQDcjuQ9saHR9oI", "protocol": "jNZIjvSMXlQeWpdf"}, {"name": "TUpihs66PIxCwvB7", "protocol": "HHR7ftCu0QUUH58j"}], "timeout": {"claim": 79, "creation": 66, "drain": 54, "session": 90, "unresponsive": 48}}, "name": "UpFKKFokqQhByVEf", "onDemand": true, "regions": [{"bufferSize": 64, "dynamicBuffer": false, "maxServerCount": 33, "minServerCount": 6, "region": "Lc5GOIws3qwCjiok"}, {"bufferSize": 26, "dynamicBuffer": false, "maxServerCount": 70, "minServerCount": 79, "region": "hhgUcLBl9nQ0OivY"}, {"bufferSize": 45, "dynamicBuffer": false, "maxServerCount": 14, "minServerCount": 28, "region": "n20xhrNKkSWpcRqq"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 17}}, "logs": {"crashed": {"collect": false, "percentage": 57}, "success": {"collect": false, "percentage": 19}, "unclaimed": {"collect": false, "percentage": 72}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'sBIexjJR0JHjl20Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'a7GheIvUOqS3EUD7' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["UqfB8qqjSzvYUqj1", "4dvMMcdeMJa9NPtr", "MNdeq6gwctZxoZ0a"], "dsHostConfiguration": {"instanceId": "c5OhzTGFIxIsl6jE", "serversPerVm": 83}, "fallbackFleet": "gDFcISogBoC6YUXN", "hibernateAfterPeriod": "RhsRy8dyS175rmwX", "imageDeploymentProfile": {"commandLine": "VY9EUWvextq0TI6h", "imageId": "yO1ONqpw0VCgXwYR", "portConfigurations": [{"name": "MTjdmkssuXtIwzQG", "protocol": "6iXtWOUu2FrnHwrL"}, {"name": "5ugxOy2Vl2iciend", "protocol": "4wjOu0HyXTJu44r2"}, {"name": "YMOPlH1RIhKJBlsn", "protocol": "BppWsVbpsIBXFJJB"}], "timeout": {"claim": 40, "creation": 61, "drain": 58, "session": 4, "unresponsive": 68}}, "name": "iGvtfiFFIcy8aooW", "onDemand": false, "regions": [{"bufferSize": 8, "dynamicBuffer": false, "maxServerCount": 24, "minServerCount": 38, "region": "KPHdCjWTrTu63TVy"}, {"bufferSize": 76, "dynamicBuffer": true, "maxServerCount": 63, "minServerCount": 82, "region": "4FDinJ1BgAdKmk3E"}, {"bufferSize": 64, "dynamicBuffer": false, "maxServerCount": 87, "minServerCount": 50, "region": "q15AjTEyeun64VWq"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 67}}, "logs": {"crashed": {"collect": false, "percentage": 47}, "success": {"collect": true, "percentage": 44}, "unclaimed": {"collect": true, "percentage": 35}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'fD0VPPW2LOfwlsrk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'S6oYxjHOnzCmWLaV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'kTRcOCklSDD82DgE' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 5}}, "logs": {"crashed": {"collect": true, "percentage": 16}, "success": {"collect": false, "percentage": 49}, "unclaimed": {"collect": true, "percentage": 14}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'dTIYUewQKoij43iO' \
    --namespace $AB_NAMESPACE \
    --count '33' \
    --offset '7' \
    --region '2rWhM1lZebgtIk2D' \
    --serverId 'WPMjShd4zAsoAc05' \
    --sortBy 'Zx7J9PbesUhfoHC0' \
    --sortDirection 'asc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'euCleift6F3GPb8o' \
    --namespace $AB_NAMESPACE \
    --count '72' \
    --offset '74' \
    --reason 'tQG4wbafFxJaZySu' \
    --region 'Ny0jCKADw2yWtm0P' \
    --serverId 'BMYJ58uxACadDj1S' \
    --sortDirection 'o9zGHmbo3HEZFvEr' \
    --status '7aZzrzYUU7HAmcxx' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '52' \
    --inUse 'QmN88G2528M8gtlX' \
    --isProtected 'true' \
    --name 'igm1sx9yyDT9dzeQ' \
    --offset '100' \
    --sortBy 'Xf8AHV8ikOSs5cmG' \
    --sortDirection 'pG3ixaDz0r2tKZQW' \
    --status 'fQPd9gjL8RPVzBdO' \
    --tag 'jZb6dkjXfftS7VLN' \
    --targetArchitecture 'r6o2bwi8MpzF66G3' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'HqdIJbu4DHB4FovT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'vLGFeGDoYfqT5fWt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'FgeRRhQ3cdSvPS8I' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["f8t0SmL6tGR3qrWe", "b4EyJNksFPQSP9he", "ixEaaRCxusifT4DU"], "isProtected": true, "name": "4jXP7O1LblyeaMaD", "removedTags": ["e4ULGgdznBpWdP1e", "XtWjsagPXogIwLdL", "HtoE55qXjBoIFCMi"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'lOZHucFkWbSNdIMr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 't3O2uUddi5BOF73H' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'IX5EExUqlopUr9EP' \
    --body '{"status": "cKkupEZbCO09Ehu8"}' \
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
    --serverID '7YxvNv1qx5kjcmeB' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'E5DeXxLa0q2QO1u4' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'jwKrKAXXNXmTYsxr' \
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
    --fleetID '5TqPdEgZZ5Bl2gIO' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "35xnowYwwcCIIHZw", "sessionId": "tQM9U0krHZN4qR2o"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Tsip3VmCjTbJbhgY' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["ETMhOGDYTb8bhdlQ", "H4GM1TdKdftghgtr", "MxXg5r0RYRIO1whE"], "regions": ["Cf3ZnpUL6wdgiLzm", "w4suM2FW1BOAcZZ1", "Mp8a1KjwNv59OVUz"], "sessionId": "QTLqMJsBeJYwaWcC"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '9I3UU3VqtPRivMoq' \
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