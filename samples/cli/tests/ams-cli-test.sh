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
    --body '{"name": "R3FrZyNy1Drhkpmv"}' \
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
    --body '{"token": "MlSfGtBb5yHrvSl8"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'XY88hyznLm2KwSJJ' \
    --count '150' \
    --endDate '68dFIgLn7tGu966a' \
    --fleetID 'Ba1S4H8qOiGUuo1T' \
    --imageID 'jJA3Bh3fMh2l3YX5' \
    --maxSize '88' \
    --minSize '83' \
    --offset '43' \
    --region '5ZCjwMqxwBg1VkX4' \
    --serverId 'vAxljyHzwogI62zP' \
    --sortBy '7dXz1fzDH86oC95c' \
    --sortDirection 'asc' \
    --startDate 'nb0YlR7k3pskjPB6' \
    --status 'ljnUyF13sft9Gx1B' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'dbUYkpuGulxSLLWl' \
    --fleetId '7z4yuo5SwkMmDV6f' \
    --uploadedBefore '1996-02-08' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'q9AHop0uxrnwOlDo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'vCjaydsDWormcnbT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "gNoBZKAbbDRzf0Od", "expiresAt": "1996-06-21T00:00:00Z", "imageId": "i0NQVPYdp4nboEcx", "name": "GAXZR1yAgQ3LyS7v"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'MUcqjZ3YpoxbnXu0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'AtrZJx66cxSRUtVv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '27' \
    --name 'SmXUERpEhTKbN8DO' \
    --offset '13' \
    --region 'LsYYFUBNBJ9wtjep' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["WFlWI1MKNIM2UTMw", "ydTYLhP3Njo4gJ33", "kDrOwbyQ2Hv6Qecj"], "dsHostConfiguration": {"instanceId": "r5UJGeD0hMcrWpid", "serversPerVm": 20}, "fallbackFleet": "7OUuI0GD8iAsjBib", "imageDeploymentProfile": {"commandLine": "dbonxjGozZgrNwVh", "imageId": "dbVKkM4BrAhlKzOv", "portConfigurations": [{"name": "1td5xRKUpAdcceRH", "protocol": "zL89YjP34fXNtTMM"}, {"name": "JarS5517MZSlXzow", "protocol": "Nt3tTu1ZaumBigiM"}, {"name": "1atwCxT7hpIObwNX", "protocol": "aPbtxzRbtoA3U3DI"}], "timeout": {"claim": 54, "creation": 46, "drain": 57, "session": 97, "unresponsive": 15}}, "name": "K73aXcgBynKl1t83", "onDemand": false, "regions": [{"bufferSize": 84, "dynamicBuffer": false, "maxServerCount": 80, "minServerCount": 28, "region": "eVWq2671qRt7o5yu"}, {"bufferSize": 52, "dynamicBuffer": false, "maxServerCount": 27, "minServerCount": 97, "region": "cutat56OiUIFe8Km"}, {"bufferSize": 83, "dynamicBuffer": false, "maxServerCount": 88, "minServerCount": 11, "region": "GGuG5NjQsxsdK83C"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 26}}, "logs": {"crashed": {"collect": false, "percentage": 33}, "success": {"collect": false, "percentage": 73}, "unclaimed": {"collect": false, "percentage": 55}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'SenlhOALPd1qW8gn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'F3zhO1QTXJLavk9J' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["SuLLO9rY1E9H3a8r", "K4lOUZnNP89kgrki", "7oFbcsDmuAUwqMUj"], "dsHostConfiguration": {"instanceId": "KBNQxczAQ02xQ93y", "serversPerVm": 27}, "fallbackFleet": "MO3GkXq7sJMngrN9", "imageDeploymentProfile": {"commandLine": "VqTtZDcFZoedT7Kt", "imageId": "nk0qj8jWJZ2NBktK", "portConfigurations": [{"name": "6frdEBXUDaFC3J06", "protocol": "bbrHkVJsjjTiOwAC"}, {"name": "47Cj7CqnFczqJzjC", "protocol": "0mSwkIsRjiwooqan"}, {"name": "TF6CF1srOAj2YaIP", "protocol": "htzmP8WZ6yj2l9Jk"}], "timeout": {"claim": 55, "creation": 72, "drain": 46, "session": 98, "unresponsive": 68}}, "name": "F4JQ2VVrSHFFMghI", "onDemand": true, "regions": [{"bufferSize": 4, "dynamicBuffer": true, "maxServerCount": 80, "minServerCount": 11, "region": "bvYRIB08UkpfGLpI"}, {"bufferSize": 94, "dynamicBuffer": true, "maxServerCount": 16, "minServerCount": 35, "region": "RToiovVTaRaF1FbP"}, {"bufferSize": 16, "dynamicBuffer": false, "maxServerCount": 62, "minServerCount": 57, "region": "eEWcAtYOAfAFFqzj"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": true, "percentage": 30}, "success": {"collect": false, "percentage": 56}, "unclaimed": {"collect": true, "percentage": 73}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'FwWIrZlbwWSQuuDd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'Qpf66jOsY9C5L45p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'fO8effNQ5TZwWL9O' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": true, "percentage": 32}, "success": {"collect": true, "percentage": 83}, "unclaimed": {"collect": true, "percentage": 94}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'YaiAh7vXsShalxZG' \
    --namespace $AB_NAMESPACE \
    --count '32' \
    --offset '25' \
    --region '2OiBqoFIsvYbXS3Z' \
    --serverId 'qxD3CULwoEoWeQ6W' \
    --sortBy 'EPj1N9NQ7pZBfINa' \
    --sortDirection 'asc' \
    --status 'ready' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'tg908bfrEYBPYqQe' \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '14' \
    --reason 'YwgwMtx6kOrazm1c' \
    --region 'IQb5R9NzZO28eHsr' \
    --serverId 'lw8S6hczDSl1mMU8' \
    --sortDirection 'F72LBsar1iVECcGw' \
    --status 'sCRX1usB6REdwfiv' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '35' \
    --inUse 'zkqk4EFtR2wDuG74' \
    --isProtected 'false' \
    --name 'kyEvbPwrmft8Qxwe' \
    --offset '88' \
    --sortBy 'wzFP183iGJYeRuvM' \
    --sortDirection 'C5HXkR9SY4DkqEYT' \
    --status 'zJpC0ZrUd4MQenB9' \
    --tag 'qcREBpql5OicBiff' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'pL8MOSeCSJi9i3V1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'xguCYbfIWCppyGNI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'E5jtrKvN0p9UAu0E' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["iZ6dIOBxZnGZhP7k", "Ny2pe9oSAxr8iwRh", "LTjmDZRGd30XKrtL"], "isProtected": true, "name": "po3wLaTqm6ciXw2l", "removedTags": ["CFC1xzfsz0Cy5uCI", "qwbhAD8bV08aO9KL", "OjzNS5qeCOMnLbgg"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'PAychUaV07cVnDyT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'MeAv8KdsjpWzzZnc' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'AxtYeUsy6J7t8EoE' \
    --body '{"status": "mTrDk3EDDNmHT3FC"}' \
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
    --serverID 'DQfwtcKkZA2WnsK2' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'OGSCCWBrBTE8yAEo' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'gsjEP9jgBAkfbexa' \
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
    --fleetID 'uRAXfopQtb1mXj3U' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "v66jApPxnuAIIUTf", "sessionId": "cjCAx5LfDjPjiw7x"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'BGFkIsjz55J2GSc9' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["oVqNLnPrEzKFC2bN", "PsLVCKT81MoHOcRU", "cI4BZa9QIjTsYq4U"], "regions": ["SRVtPAIm7tR5MGYM", "JFRtLwlehuJiPK2y", "qXZ1HuBosYYIEjhq"], "sessionId": "4GYOyIbOmb6saiau"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'PWiGS3U4tsV7VOLJ' \
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