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
    --body '{"name": "1L2WLB49Iifg4LeI"}' \
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
    --body '{"token": "6FS7vcwzlp20V4Zs"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '8ejHeePvIJpXJjv5' \
    --count '239' \
    --endDate '7pzc1gpur4HMow6m' \
    --fleetID 'MS7Nge60m8tJdW2p' \
    --imageID 'k3zOEy2RGdKf1DZV' \
    --maxSize '70' \
    --minSize '12' \
    --offset '82' \
    --region 'KmzqC8PBUj4CJIsM' \
    --serverId 'NwxrsPBoq5huXbb2' \
    --sortBy 'r4BXQMRzJO0m7L0O' \
    --sortDirection 'desc' \
    --startDate 'BdrncuK0q5sVorOv' \
    --status 'M1V5QZPPtF0MMOW1' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'r6VYPASiCPXeDoVa' \
    --fleetId 'Uxuyo27KjRLILQIz' \
    --uploadedBefore '1981-03-26' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'UESJm7ccLO6OcCr3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'wQRaXTi2NjS8Wl0R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '295' \
    --imageId 'JMfmWLOEEYN1t6fi' \
    --name '9LlrzATNlbvuiHsh' \
    --offset '27' \
    --sortBy 'created_at' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "MkxfD0K9Vw8Uu5RZ", "expiresAt": "1972-06-10T00:00:00Z", "imageId": "ve3DVe1zAMM7eXzP", "name": "5WldH8lcyYZJ9HWu"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'm7sxlDo1qjgYnckh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'P9Rim6JKE8wbRIXR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'Y6T6SmMF9eZgjYiA' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "LMgm0BHtLdSerzwU", "expiresAt": "1979-03-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '69' \
    --name 'pvwKCRvcN9o8Okmr' \
    --offset '74' \
    --region 'SHSbywjnxsrFc6ZP' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["AkCeG5pd1Q5Pq4zM", "r7M04r6ZaRghpfiz", "H77GCu0oN4joAQF4"], "dsHostConfiguration": {"instanceId": "jfWDISK5GWMEclGI", "serversPerVm": 86}, "fallbackFleet": "aKOnF8momdX83R0R", "hibernateAfterPeriod": "7WbaBSrUhixioIXP", "imageDeploymentProfile": {"commandLine": "TmFptayEGvWYNAR9", "imageId": "QGyaTlN0QgUcRpTD", "portConfigurations": [{"name": "3vaCND5kL5nsFJX6", "protocol": "RLn62Q2uWZKa2P9S"}, {"name": "RlLHwbx1wwGlLx2A", "protocol": "YO9Ro51rTTIM1IWg"}, {"name": "ZWCyyvnYq6JtcH2d", "protocol": "zvb3DylPKdDrnRR8"}], "timeout": {"claim": 19, "creation": 66, "drain": 0, "session": 41, "unresponsive": 26}}, "name": "wvGYZETTr5MzwtTI", "onDemand": true, "regions": [{"bufferSize": 45, "dynamicBuffer": true, "maxServerCount": 36, "minServerCount": 9, "region": "vxKkVdTJJqGzxgnh"}, {"bufferSize": 84, "dynamicBuffer": false, "maxServerCount": 48, "minServerCount": 81, "region": "TSidTs6d0Cklumll"}, {"bufferSize": 48, "dynamicBuffer": true, "maxServerCount": 74, "minServerCount": 93, "region": "YKoW3Zew53dBxSJl"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 46}}, "logs": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": true, "percentage": 38}, "unclaimed": {"collect": false, "percentage": 66}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["AOvVaXeeKoyYErw8", "YmF2IlvZZOrrBWzx", "qcOh1inYW3vs9ju3"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '9rzAL0ieEzqX7jeZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '7wfloidlPLsYusvD' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["zjWF6HI8Gy4ztR1t", "UTfl7WmtzVXn7FpU", "VFLjD2rMHznXenZq"], "dsHostConfiguration": {"instanceId": "l2Ug0BDzmjpE5NLd", "serversPerVm": 38}, "fallbackFleet": "xROouXvoiIBJfkkn", "hibernateAfterPeriod": "RdE83TVurWMbAp6r", "imageDeploymentProfile": {"commandLine": "lSoRlvH5ZMVh333L", "imageId": "ZohczSzHcTfp7Yys", "portConfigurations": [{"name": "DBwYvsLVygDZrmrC", "protocol": "nFxVKWpjk650Wc0H"}, {"name": "Kws6dW9OcCGLIhLQ", "protocol": "aDLESnwY02RWCcjp"}, {"name": "20yKXGtJYl9X5flh", "protocol": "mwtuznwIzbNygqk1"}], "timeout": {"claim": 54, "creation": 97, "drain": 79, "session": 66, "unresponsive": 40}}, "name": "5WW9iGloYwlFCrzW", "onDemand": false, "regions": [{"bufferSize": 86, "dynamicBuffer": true, "maxServerCount": 90, "minServerCount": 46, "region": "Zz2Ky2HkjzLwMzf1"}, {"bufferSize": 55, "dynamicBuffer": false, "maxServerCount": 44, "minServerCount": 9, "region": "OS4raeoqeYwkArgS"}, {"bufferSize": 71, "dynamicBuffer": false, "maxServerCount": 11, "minServerCount": 57, "region": "JC3bB8OgNk37OtW0"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 68}}, "logs": {"crashed": {"collect": false, "percentage": 49}, "success": {"collect": false, "percentage": 93}, "unclaimed": {"collect": true, "percentage": 92}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'nKG8V85claBos5cQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'cJjq2h0TecpZrkzX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'i6SeIFoOIlamPzRt' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 15}}, "logs": {"crashed": {"collect": true, "percentage": 13}, "success": {"collect": false, "percentage": 86}, "unclaimed": {"collect": true, "percentage": 11}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'jXwFgHAhgiyGfqGL' \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '71' \
    --region 'GAt8DzDUP0sXVVeZ' \
    --serverId 'jdLeVDB3iqTaGQOz' \
    --sortBy 'VaV7MbmpRRO7aLXV' \
    --sortDirection 'asc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'iOH0c21w1uYUSmI6' \
    --namespace $AB_NAMESPACE \
    --count '37' \
    --offset '32' \
    --reason 'CCSbXsMHCeL2AgN5' \
    --region '7SaAcN4r9quIcbSs' \
    --serverId 'Yqc9h3rmDrhFqYyf' \
    --sortDirection '8MQsXhuBUVLu2MC9' \
    --status 'f3QA475MbNbV5owW' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --inUse 'JQ6M82tZmCnu7GXQ' \
    --isProtected 'true' \
    --name 'RdQpCY1qMGVqb5yG' \
    --offset '92' \
    --sortBy 'VF9iUfaWFqxbRX82' \
    --sortDirection 'qIEXaRREa69uUI3a' \
    --status 'ANi0wLHvjcuI1YI2' \
    --tag 'Kh7gUvT8zQzsSBV5' \
    --targetArchitecture 'Kyesac1Pt5zvBjCO' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Dov1VfrpJTjJRP9s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'zSBdVdDuWzqHd7dw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'sVUpkTP6WuBEMj50' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["Ul4H0Eq8LqjIffHe", "SIKj5iRq97aR4203", "8SSaFoUf2TpwpTr3"], "isProtected": false, "name": "dJo5ssWynfwwRaEx", "removedTags": ["5HYY4VM4hUCV7SGs", "DBDH5J80PcArdnYP", "gImW5qfeCvUuIJO1"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'nXCy6iPfjyAr6qna' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'M9OhMZ4XnK79QVE2' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'VysHE12qLFiahHeE' \
    --body '{"status": "qDnIcaS9EPWNXF3i"}' \
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
    --serverID 'ZxZKdtYvfBm5Go2w' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'KY375NCQ9EKYMTpd' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'VsdUZ287vmR3uXfj' \
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
    --fleetID 'GtbZOFz8ECEN2NvC' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "MTXHtIYrFhK0ykwN", "sessionId": "QjyNObU8pMeni0O1"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'f45g6heaqCXrDkRF' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["bf66m6hTkohZrNs3", "bfMGwFhodXVwKpTl", "G202udLZaYAUqY6m"], "regions": ["J6oJHdPU3sD2lXhZ", "7U1ksNsE1nCAHJWr", "cOrXeBx5e51edD4z"], "sessionId": "2jxoXfbntlkAI1iD"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'QoiBkJPFybQUCXq3' \
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