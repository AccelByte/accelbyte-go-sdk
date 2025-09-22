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
    --body '{"name": "8S0aPPZBTgbO7v9s"}' \
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
    --body '{"token": "InX5otGY8DGBy0xo"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 've0CgIjTNgTHlx1a' \
    --count '348' \
    --endDate 'OyWYJImSYPz21LqJ' \
    --fleetID 'UraUZ8ejvyx5qncJ' \
    --imageID 'Yp9pZ9hIAh4yhYFf' \
    --maxSize '78' \
    --minSize '54' \
    --offset '69' \
    --region 'fjdJH2YnmKJ8evdz' \
    --serverId 'E2BmKmDmPCJOjRbv' \
    --sortBy '6K2qb5gSiu1YnWXE' \
    --sortDirection 'asc' \
    --startDate 'IBkoYATkhSMEAGid' \
    --status 'KL25o4ZdrMW4Whc1' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'XmM5gbqwU3pFjbH7' \
    --fleetId 'YFvTZcRNlvaMKhxa' \
    --uploadedBefore '1998-04-25' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'ZvOAxzlohSTJgfUk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'xGVOUzxETUvJsU4h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '308' \
    --imageId 'FnYUtCZsGLaT0Vat' \
    --name 'HtTKS8jmhO0Ix8g2' \
    --offset '31' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "UnNHixzRkH1tmf4f", "expiresAt": "1981-03-23T00:00:00Z", "imageId": "MRAzSah9UG3uktxg", "name": "dwA8b4yGXGg6jwx5"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'y9QqEdK2TxQsMm0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'z3U2Y3oLXKRJyL2v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'sgwoHuWJlc9wlLMX' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "X9TnDX9VSgqSm62G", "expiresAt": "1983-04-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '78' \
    --name 'UhUJm7jh217BjdVH' \
    --offset '61' \
    --region 'AqSRDZZTzc08H2X8' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["kb7PZQnbbaNAwI4U", "Ov8VaTmsfq6MV1Jm", "OHsdMFA587QI0dqk"], "dsHostConfiguration": {"instanceId": "SYxePFMGw14y4XAe", "serversPerVm": 97}, "fallbackFleet": "xeM9jlxrauSPAtnA", "hibernateAfterPeriod": "RzP0LWAKMZPG05Yp", "imageDeploymentProfile": {"commandLine": "6TIoLaRMnBWcNDtN", "imageId": "LKqCPJfkc5ZmfV7l", "portConfigurations": [{"name": "QGeCuTv0wg0qNcps", "protocol": "66JnqNP8cblFys1g"}, {"name": "UhJmUiyXyqefEkAQ", "protocol": "uszIaSPH1TB7q6Lh"}, {"name": "ITM0rUfEfLJmeyEx", "protocol": "AoKeLYNEHIRaP1ji"}], "timeout": {"claim": 55, "creation": 20, "drain": 39, "session": 39, "unresponsive": 62}}, "name": "WcnqLbnUsJTFUrWy", "onDemand": false, "regions": [{"bufferSize": 60, "dynamicBuffer": true, "maxServerCount": 41, "minServerCount": 97, "region": "h83jlgmXJe8AFN6g"}, {"bufferSize": 59, "dynamicBuffer": false, "maxServerCount": 0, "minServerCount": 96, "region": "RwNKb30mKK80XKBD"}, {"bufferSize": 4, "dynamicBuffer": true, "maxServerCount": 87, "minServerCount": 60, "region": "XMpX7tkoGb9Q4zZs"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 28}}, "logs": {"crashed": {"collect": true, "percentage": 3}, "success": {"collect": true, "percentage": 33}, "unclaimed": {"collect": false, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Qz3Majyx1XEGV3TD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '2sxAbqKejpLAnNra' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["gAkBpdWogrhUYjGo", "q8Kn9UMXkLjb3jP1", "lsBNC4Y25HEW5zIi"], "dsHostConfiguration": {"instanceId": "lt7eWKzFBu6KXMA1", "serversPerVm": 31}, "fallbackFleet": "m0c2c2CWrNk86F3O", "hibernateAfterPeriod": "L9FRZaYoDh765Lg7", "imageDeploymentProfile": {"commandLine": "nbeP5oX9JX0Wog1P", "imageId": "FZ8u6HGu4CScxdgm", "portConfigurations": [{"name": "g4QyJqdx4TGrRL7F", "protocol": "w72MexJbb3EIJkNP"}, {"name": "t6xpnCSlcyYDVPcf", "protocol": "5R6S9ZualEVjkBZY"}, {"name": "aJLLSfWZRIcJslbg", "protocol": "EzEwh1mJvnG7z9rx"}], "timeout": {"claim": 0, "creation": 29, "drain": 90, "session": 81, "unresponsive": 97}}, "name": "Zij7oKPDxlTmNIhH", "onDemand": true, "regions": [{"bufferSize": 26, "dynamicBuffer": false, "maxServerCount": 14, "minServerCount": 28, "region": "f6lps230Gpj0BFbh"}, {"bufferSize": 57, "dynamicBuffer": true, "maxServerCount": 86, "minServerCount": 17, "region": "bX23Xuh2IW4Jut26"}, {"bufferSize": 31, "dynamicBuffer": true, "maxServerCount": 27, "minServerCount": 39, "region": "alyunphjgrijU9sI"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 96}}, "logs": {"crashed": {"collect": false, "percentage": 72}, "success": {"collect": false, "percentage": 42}, "unclaimed": {"collect": false, "percentage": 67}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'yvaRZYpCmalNVBvX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'l5zeJUGQbCEnUAyd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'BChu9XuT4LQ8BgVA' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 85}}, "logs": {"crashed": {"collect": false, "percentage": 50}, "success": {"collect": true, "percentage": 31}, "unclaimed": {"collect": false, "percentage": 54}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'SH42dxlUaDLjGmNL' \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '58' \
    --region 'CaQHj5FlnPKqOE2d' \
    --serverId 'm0ol6IEnmNGZAEKa' \
    --sortBy 'XmkayxF5iDtAHxTk' \
    --sortDirection 'desc' \
    --status 'ready' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'be4is4HJNnetWoao' \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '60' \
    --reason 'BVbb2pC35IzUeyJ0' \
    --region 'NbouM5eZw41pgnyY' \
    --serverId 'RzneyLD6hRZFVxWd' \
    --sortDirection 'sQ9cNLfRhepFqtSn' \
    --status 'Pohb5CtU66glhWJK' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '81' \
    --inUse '4cPISRDYppm70yN6' \
    --isProtected 'true' \
    --name 'AgaDOd44DwnZr541' \
    --offset '86' \
    --sortBy 'KGeDXzLIKDGg737X' \
    --sortDirection 'ymJJqtSzPAny2582' \
    --status 'bj1CnquzNHj4z5X6' \
    --tag 'DIu3bdFptOkobvqa' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Gh0dicXeRz1xA50M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'vaovzEI1fwHD4UK7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '68EiYpLLUTSsnnGJ' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["r97yGvfMhjcjw5UF", "CAYki1wirtG5sTmK", "qHOiZOlXq2NeT3Tf"], "isProtected": false, "name": "t0uQ7QEgBAr8kfKK", "removedTags": ["rpMmLVaQvD5ZIlkd", "vEzLywZwcbEDmzGX", "BNGUgIvuLbQBiwef"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'OoKwVYyaNUGUGwUA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '2ktFBxqcc9Eju3OM' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'k3jmAZcV5gc5Rz7S' \
    --body '{"status": "gHxmPlRygFS3iYQz"}' \
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
    --serverID 'cDpCCYgo8NuIoqrp' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'sa93EeM5J02ehkCB' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'EC4LK3ycBuNrqh8f' \
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
    --fleetID 'uA3CFvPaB3XyqIE1' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "VIXT1vlnEVBko2mY", "sessionId": "NxBSuJM98hNIlHwo"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '1OIO0rU5ZPjbKtk8' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["twkagpuPhs2GhDsE", "GBKe4WF5ZNufsi4m", "GUMrM7BjR09F9Z5j"], "regions": ["bBjOD90unVkLbEOE", "O8v2N8ROSUbMir7L", "yBWrNM4GwQP3MFZ9"], "sessionId": "M73LrgnHYwroLEqp"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '1oq0PBbfyi5VvNAM' \
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