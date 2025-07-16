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
    --body '{"name": "JW7jMdnI7iJ0VjUo"}' \
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
    --body '{"token": "EQzS8pe0y9lWgr3E"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'D8emAdAUA8zmpfrW' \
    --count '348' \
    --endDate 'p4cf0C2YGT9uYAT0' \
    --fleetID 'zeNzruoNHnlSqKIp' \
    --imageID 'D5z8kKw8rjPlgl6O' \
    --maxSize '89' \
    --minSize '82' \
    --offset '14' \
    --region 'OALM1g0AZs4Qw5kj' \
    --serverId 'F3B3AmEQRCLDpDbF' \
    --sortBy 'R8Jothu3srqksh3e' \
    --sortDirection 'asc' \
    --startDate 'GC329kLAvMo11wqT' \
    --status 'UxabAgvnhNMK0k6N' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'y0YssEuohmuWN3MP' \
    --fleetId 'b4CMpJopc2hnM4Fz' \
    --uploadedBefore '1987-06-11' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'tDIyFZWsFD6pQJcW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'zimKWvtpORg6ROmU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '43' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "Sbl1KeamuGPC24NM", "expiresAt": "1987-09-15T00:00:00Z", "imageId": "AyiBRmX7u5t1Ezgi", "name": "ZjxX96QVrj2smjV4"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'gL8gcOYDlyV7chEr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'UbjFYbjVM2IoMQfQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID '73hzxRo6Wb0Qbo5h' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "iyADJFG8VWZkzOFI", "expiresAt": "1997-09-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '38' \
    --name 'IFjdcXQd6hrKgrGp' \
    --offset '3' \
    --region 'QIRgZtofk5ITzCxR' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["tzDPAsbZCIEM2jxT", "nRf0ilsqC4POI2Zf", "UnqvYoxe1IwO3TLs"], "dsHostConfiguration": {"instanceId": "nfJRQzMRXsv5pfIs", "serversPerVm": 2}, "fallbackFleet": "38HXXaISJlVcx5pe", "hibernateAfterPeriod": "d2lEbXyRqnomJxVB", "imageDeploymentProfile": {"commandLine": "uX1lhrG0sB7egNvt", "imageId": "lFeJiTDvIE8Re4DK", "portConfigurations": [{"name": "uKYIXNJo5ocxllN4", "protocol": "n51Jhd6lBIbaImXC"}, {"name": "kboQyBOMMhRD9jqT", "protocol": "aZrhpylBIWg96jxH"}, {"name": "dWmTu9oi5zOQbcTH", "protocol": "dueCnqBSu7yJUppa"}], "timeout": {"claim": 55, "creation": 35, "drain": 27, "session": 18, "unresponsive": 65}}, "name": "6uLKDtX57aw07YOm", "onDemand": true, "regions": [{"bufferSize": 47, "dynamicBuffer": true, "maxServerCount": 53, "minServerCount": 73, "region": "YoKNUq2FehHVXv6f"}, {"bufferSize": 50, "dynamicBuffer": true, "maxServerCount": 29, "minServerCount": 41, "region": "QOSMzkeQHOYQaKH3"}, {"bufferSize": 12, "dynamicBuffer": true, "maxServerCount": 36, "minServerCount": 4, "region": "gXDDbE2vQnOxrXrc"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 94}}, "logs": {"crashed": {"collect": false, "percentage": 87}, "success": {"collect": true, "percentage": 81}, "unclaimed": {"collect": true, "percentage": 60}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'm8zZmpMmKYrbMOQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'UHn2ndugcX4NzJbx' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["stiO3l7HEcwjggKb", "BFTPx7Rhp9eBntEA", "kHs5qCVbbYPl1ThW"], "dsHostConfiguration": {"instanceId": "H86n5Z6AOtH4F3AD", "serversPerVm": 1}, "fallbackFleet": "iSedCBjdlVdvoYZv", "hibernateAfterPeriod": "hVRLKCzqyhE5vdKj", "imageDeploymentProfile": {"commandLine": "qZH3TE5tC1RQoRV3", "imageId": "E7Efe1sh8lcjArwE", "portConfigurations": [{"name": "aSpmQ4CmC7asGu8i", "protocol": "jL6EKREWEaUL9dRn"}, {"name": "reGBtZb32o8NbN4P", "protocol": "2Uoz5ifkfzDfOJ6L"}, {"name": "oHebdsIEXeUx80EP", "protocol": "P3Updy6HWbDURsPW"}], "timeout": {"claim": 52, "creation": 40, "drain": 78, "session": 40, "unresponsive": 93}}, "name": "y1dOqk2Oi05iXCjL", "onDemand": false, "regions": [{"bufferSize": 93, "dynamicBuffer": false, "maxServerCount": 52, "minServerCount": 20, "region": "RkfvMq7XHsynH2EV"}, {"bufferSize": 75, "dynamicBuffer": false, "maxServerCount": 97, "minServerCount": 82, "region": "XOuyb2AXaf3E5cu4"}, {"bufferSize": 47, "dynamicBuffer": false, "maxServerCount": 84, "minServerCount": 57, "region": "THk0pEU3SO9CWjhm"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 96}}, "logs": {"crashed": {"collect": false, "percentage": 43}, "success": {"collect": false, "percentage": 44}, "unclaimed": {"collect": true, "percentage": 51}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'es4OJmbiw6yCSPSL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '6q7cwYDBfVkGDScn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'y3spyjdeZsNEi3J5' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 28}}, "logs": {"crashed": {"collect": true, "percentage": 60}, "success": {"collect": true, "percentage": 98}, "unclaimed": {"collect": true, "percentage": 83}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '2ew9AJeuubzdxPrM' \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '47' \
    --region 'iCRWvR0ys45H5UOq' \
    --serverId '9xKpA7kvxHyCFQJA' \
    --sortBy 'V2d47QWpc3tG5Kin' \
    --sortDirection 'asc' \
    --status 'ready' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'oWNtxZNRNzBtF70i' \
    --namespace $AB_NAMESPACE \
    --count '62' \
    --offset '15' \
    --reason '0XycntSi4ttZxt3U' \
    --region 'DxtPElb0MettrUKW' \
    --serverId 'OX1p4W8mP1dH286T' \
    --sortDirection 'O3RbVw8QNOqj1oY5' \
    --status 'lhReV5jZPzq4GPv4' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '17' \
    --inUse 'G3TkyX3Tkpufh8vv' \
    --isProtected 'true' \
    --name 'F0I7vQsmJV18cn54' \
    --offset '84' \
    --sortBy '2DZOrGX9ZEMrzWBI' \
    --sortDirection 'CPQoU0Al6Kshsquo' \
    --status 'voO81bEg2odxs2Pb' \
    --tag 'mrrjGTQUdswq9PmI' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'zGjQxw4YapVjCeuT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'D33GyXRxSHQLX98I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'oUkXCxvqGDcnjYwF' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["YykElc5JB6G2oWgm", "cxgZFLTBwBHAPuMC", "UMBv0nWdCVnV7tni"], "isProtected": true, "name": "TbsOdB3ajzjsGw3I", "removedTags": ["CjArdH3lC2hv0LY3", "2B2XKtbNCdm4Bd9C", "VOIo0Cm0vaFklVB8"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'OhwF92MRxRBIy1tF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'I9SW5j89z07lf4wO' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'vvBgZ4BVL6yMPIVr' \
    --body '{"status": "ZRiVxLPi4pl5Viy1"}' \
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
    --serverID '2LEA3XkRiXU7LK10' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'B8wZj9cptiy9hMyE' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'mTGbkrdDRxRLWAhV' \
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
    --fleetID 'lbqc1jg0d7bkEvLC' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "ZqptGX9BpXH2WXsg", "sessionId": "XCd5gMchxydU82J2"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '00jtpEPfftWBCw71' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["jaW1M90ZdKu8jeAi", "1hYhe5PnT5ScM4Kd", "c0bbN56z0yYKJSML"], "regions": ["lZJfPOrY4rLoNSsc", "rIorr13BL5UIUOzp", "hE9VJOJpWaAEd7e3"], "sessionId": "AGwxT2JqhWWxc2sJ"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'd5epUp5Z09hKS65M' \
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