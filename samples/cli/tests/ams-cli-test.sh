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
    --body '{"name": "U5eVMJ46vmDoMkF0"}' \
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
    --body '{"token": "rpG7IKJZ2jc0GUOY"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'OsIqBeYUKdMIq0nG' \
    --count '205' \
    --endDate 'VakQsaeV2Go76PuI' \
    --fleetID 'lyet6ztW8EL4J2iW' \
    --imageID 'VG0L178A6SHLtNJh' \
    --maxSize '59' \
    --minSize '23' \
    --offset '21' \
    --region '7pA11zq73pvAiING' \
    --serverId 'jdzGypC26gNMKOkF' \
    --sortBy 'Fg5CxmGobNbLMxQa' \
    --sortDirection 'asc' \
    --startDate 'E94Lr7rE8xRJLTmH' \
    --status 'vtwWPdPJSaav6F87' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'J1zxcm8SGfNo6tE9' \
    --fleetId 'SUslEPf53zsCW0IZ' \
    --uploadedBefore '1984-05-23' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID '6ojdcc4MljYkBqPc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'HTb8QfoFR35Q2UXW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '111' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "Rt08bUPShaxR6WC3", "expiresAt": "1992-02-05T00:00:00Z", "imageId": "UBUqR2yqMqmclBG5", "name": "3vLYy75ORDNyCvTB"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'wL495XD5iToQcddl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'yBtz2aMHPCwL1Om0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '87' \
    --desc 'desc' \
    --name 'yQWHyMEjJYpQda0r' \
    --offset '75' \
    --region 'OmeKdUj1tIIk7DZX' \
    --sortBy 'active' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["5wL8H1uomj6ZIUhp", "dBHwjDuf95WqtUir", "6HLD1MAPWvScYoPa"], "dsHostConfiguration": {"instanceId": "qeJxZ9oaQLaQaRqu", "serversPerVm": 15}, "imageDeploymentProfile": {"commandLine": "w5UvQ1F8GzDjVpnL", "imageId": "Ulcq1qM0ax7PS3Pl", "portConfigurations": [{"name": "wW7XbiKwb5smZF1w", "protocol": "FSqt7BKAeDcjKkEY"}, {"name": "9iKHiK233ZbCoFwZ", "protocol": "IOknMiIkY66nt89f"}, {"name": "tsOS37ngRH3I1KnN", "protocol": "OfY3YemQ8MXe4YPK"}], "timeout": {"claim": 66, "creation": 26, "drain": 32, "session": 47, "unresponsive": 6}}, "name": "vqmToUNAyoTqJbzR", "onDemand": true, "regions": [{"bufferSize": 96, "dynamicBuffer": true, "maxServerCount": 57, "minServerCount": 51, "region": "ccRByyAYgG0GQju6"}, {"bufferSize": 47, "dynamicBuffer": false, "maxServerCount": 66, "minServerCount": 32, "region": "dccDqTPOhsV0D4Qm"}, {"bufferSize": 92, "dynamicBuffer": false, "maxServerCount": 88, "minServerCount": 87, "region": "GG6fmqj0MM75z5uW"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 100}}, "logs": {"crashed": {"collect": true, "percentage": 48}, "success": {"collect": false, "percentage": 58}, "unclaimed": {"collect": true, "percentage": 41}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'lDJEODHOochhADN8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'jnlvPhNHtRZbD4co' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["Q2C5hsZ1DTayxf8B", "cd8SuEq1xPumRDhr", "ECAE7UCaNYH68BEM"], "dsHostConfiguration": {"instanceId": "qKspnJUZ6db7Aj5P", "serversPerVm": 69}, "imageDeploymentProfile": {"commandLine": "GhxIMjaFLVPD2CdL", "imageId": "bdG9wKvI6c5q0LyU", "portConfigurations": [{"name": "FTeuGuNXcarUSCzS", "protocol": "BLm3ciMOM0NT5lp3"}, {"name": "BbPHDpSa0DHT9FxU", "protocol": "5XOcvAaQwHYjqt5s"}, {"name": "YiQ9J4hjp2uoRyTh", "protocol": "vKxk2x5rq45nWFQY"}], "timeout": {"claim": 32, "creation": 8, "drain": 25, "session": 10, "unresponsive": 14}}, "name": "5pClpBlm50VV65B2", "onDemand": true, "regions": [{"bufferSize": 60, "dynamicBuffer": true, "maxServerCount": 61, "minServerCount": 100, "region": "eKU2cJTiyrs8U3NC"}, {"bufferSize": 17, "dynamicBuffer": true, "maxServerCount": 65, "minServerCount": 78, "region": "EysJY47iBgZZwYdX"}, {"bufferSize": 12, "dynamicBuffer": true, "maxServerCount": 78, "minServerCount": 17, "region": "O8L6kEtBMk8dn3m7"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 87}}, "logs": {"crashed": {"collect": false, "percentage": 68}, "success": {"collect": false, "percentage": 4}, "unclaimed": {"collect": true, "percentage": 38}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '2ihq7Otun0l53d1k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '6UwKM9ItHSOidTQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '1gywU3LfKFcVhKrT' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 95}}, "logs": {"crashed": {"collect": false, "percentage": 36}, "success": {"collect": true, "percentage": 97}, "unclaimed": {"collect": false, "percentage": 64}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '3lfsGSbvK0SX30Ew' \
    --namespace $AB_NAMESPACE \
    --count '76' \
    --offset '5' \
    --region 'Q36nYJb5Vao9FDe2' \
    --serverId 'TGOullaw5mGSMrze' \
    --sortBy 'piy4x0TjB4luEKOa' \
    --sortDirection 'asc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '0jOwtvYauR2M5Hda' \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '77' \
    --reason 'UjerRT7i8xLA0sn5' \
    --region 'EgheZ1itQUfjtAHm' \
    --serverId 'SXVlDXLWVUtEDK0k' \
    --sortDirection 'X3j1vAepb8WzTFo2' \
    --status 'cMQUTI0bHGfo6riG' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '63' \
    --inUse 'odAI5qOGs02jb8pv' \
    --isProtected 'false' \
    --name 'v9wgG2zMjWcyWc2V' \
    --offset '85' \
    --sortBy '4sBR4d7XghzfScdj' \
    --sortDirection 'fu4qe2Siq2IhIeBN' \
    --status 'UySrB1QeXwToHYyA' \
    --tag 'Pc4xAhxwwXNPgj1b' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'JFK3ZhqhjjrxrBLP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'G6NEZcUMrUvR0ydJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'H0M1RuNCGW1qVF8e' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["vcZtEaoQlmVzbQhF", "8jHP62h7uUkG0yf2", "xLVZrUlIvElbMQuP"], "isProtected": true, "name": "VQdXDZLTM3mFrmXr", "removedTags": ["dohvnT9Y0hmHXd4e", "FRKsaQLEAKl1v5WZ", "907xk5jmWpXa29w8"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'f9lL1ZBBD0VAxOIQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'RJJy8K9WVP0fryju' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'g46f9wvPK86uenSO' \
    --body '{"status": "b9ageYujO2x6vFx1"}' \
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
    --serverID 'uBfBLTkUrf4o0gYh' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'aS16tOUfOD1csNdo' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'QtzcnCbuQ5fGVaHB' \
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
    --fleetID 'bVbS1YZ0KvmxRYoB' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "RRjPHMX8qgbEvRM3", "sessionId": "5QpRXUA6lrQeuvX7"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '6nKYP6e8xqknwkZW' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["hKfzmqy60txs5PtH", "JLqZkyqeGK2rRJIR", "XOEnW95TnQLC6VCy"], "regions": ["Rav6Y7fEBtYgUr8S", "eFT7OKVFAYMB2JXM", "fIi33nwDfV3Eg0Ct"], "sessionId": "dzFeJEd8Wt3zhOOr"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'x70qO52Mtw5W6Bae' \
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