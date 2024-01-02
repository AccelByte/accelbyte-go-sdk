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
echo "1..35"

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

#- 4 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "V0F3hzGS1BD9hO63"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "s5qbIKPeAzuwFcE9"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '5jZ2PGnid0ESQK5M' \
    --endDate 'tMU6owvfYR0cq3rp' \
    --fleetID '1un7m8rZn5ryBhLa' \
    --imageID 'R9AoArlmzJtIdQi5' \
    --maxSize '60' \
    --minSize '19' \
    --region 'IOOZcMbE0SJ6EbAK' \
    --startDate '5yP4c9cCZggSNwpv' \
    --status 'YvYu66kE39XZv9GM' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'fie9saXhzVAnPz7J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'SWdbripRj6lpAqsr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["UwRxyG0MvQc8G2S4", "Hx0jGbQUUaPOonIu", "yXJ6yP0ppXKptQby"], "dsHostConfiguration": {"instanceId": "DLf8h0G5IRuQxgxr", "instanceType": "BjBL5JODf0DALcXY", "serversPerVm": 84}, "imageDeploymentProfile": {"commandLine": "23YBhaKTN621fT3N", "imageId": "YJgi5IurhchkDq3q", "portConfigurations": [{"name": "YyjRaiZGLo9AjX1O", "protocol": "9HZuyqlxB0OWToyo"}, {"name": "vB87yMCaLJNF8e7D", "protocol": "9cuhVqLSJiIXRYw3"}, {"name": "HeodJDQb6P2wfElv", "protocol": "LUJI2yCqvEAOQVKj"}], "timeout": {"creation": 55, "drain": 71, "session": 14, "unresponsive": 91}}, "name": "9m4iKFYRlcllwZBY", "regions": [{"bufferSize": 80, "maxServerCount": 48, "minServerCount": 26, "region": "bek0miKZZmSlsWVa"}, {"bufferSize": 16, "maxServerCount": 42, "minServerCount": 50, "region": "6E9Pa7XUtImvlEnA"}, {"bufferSize": 91, "maxServerCount": 2, "minServerCount": 22, "region": "VSWGyujJOUk3wsNj"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 93}, "success": {"collect": true, "percentage": 85}}, "logs": {"crashed": {"collect": true, "percentage": 55}, "success": {"collect": false, "percentage": 75}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'lV6ZXIhiitVtpQ1U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'hlCaP32dVlcGNqLs' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["gPn8zUb1tPqdAsDk", "l5Fsvd7ELcO68Jlf", "41FH15uyXSWLgWOQ"], "dsHostConfiguration": {"instanceId": "FuC8KqNnShTeH6Ln", "instanceType": "lV5utotzaFQMNT96", "serversPerVm": 24}, "imageDeploymentProfile": {"commandLine": "EN4PGjZE6Cmoa2z4", "imageId": "a4AzibGAzeQXDiGj", "portConfigurations": [{"name": "YMkJcvUscptOzyat", "protocol": "HUgBos8fvUPEoFzO"}, {"name": "zGBMEl2bGDZ9pq2z", "protocol": "rKuS7FIKOD8V7Hpa"}, {"name": "zeeYRCJgmpXQ70pn", "protocol": "iLbwSL6dZCNy9gxF"}], "timeout": {"creation": 27, "drain": 96, "session": 47, "unresponsive": 62}}, "name": "M3BQDpQ8At5LALL7", "regions": [{"bufferSize": 81, "maxServerCount": 27, "minServerCount": 4, "region": "fT7MVxjztuEU9eo3"}, {"bufferSize": 42, "maxServerCount": 55, "minServerCount": 19, "region": "0Yix28D8Ouis6POv"}, {"bufferSize": 53, "maxServerCount": 43, "minServerCount": 89, "region": "RdlUGTqj7xGpgC63"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 84}, "success": {"collect": false, "percentage": 20}}, "logs": {"crashed": {"collect": false, "percentage": 36}, "success": {"collect": false, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'YR5xu58x22VshclB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '7Vd2ul358UtF2AO7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'UmQwmSHxl2AoaIjs' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 67}, "success": {"collect": false, "percentage": 35}}, "logs": {"crashed": {"collect": false, "percentage": 65}, "success": {"collect": true, "percentage": 74}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'sODibEaxZ2Kbl4lT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'HKVS93m6B2s7mKXW' \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '91' \
    --reason 'MjwDvEMlDzsg7uH6' \
    --region 'wQrO4uH1pKROO4iQ' \
    --serverId 'IPEmQPWV0mzySuqK' \
    --sortDirection 'bTCubUaIuUy03lbt' \
    --status 'ToeUhGMci5qCvpdq' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'RBLDp0ao1zDJHJdf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'EXHzJQMOImDYKavO' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["v8o8uUJMdYng22os", "kvd2SC3GTvN5rICt", "Vx269tbgiL0C080a"], "isProtected": true, "name": "0nfD3n5C9WPYNUn9", "removedTags": ["08XVpxbvPN2anEwv", "xJRx2PZVEYOH5XN7", "fN7nRbma2Rfxxnk8"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'MrmrTr9GRcT0jJXG' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '6f22X76GC6VocLuO' \
    --body '{"status": "gOlvamFu2ePQlre2"}' \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'YHfNtVeiWI3lEuVf' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'UakGAD3wXcKGu01L' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'uhAyZx8NULMpkRoz' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "9ZmPYztdBmxiiMk7"}' \
    > test.out 2>&1
eval_tap $? 30 'FleetClaimByID' test.out

#- 31 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '2S1kX1ptrm99XBxD' \
    > test.out 2>&1
eval_tap $? 31 'LocalWatchdogConnect' test.out

#- 32 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["ikEiueOYoYbeRDq4", "6XKWI5X6Fj5ia6k1", "0KtVSkfCs42rme4f"], "regions": ["SMtRn8ERiJenPOkU", "MjUMB1xOdkfsmJGG", "rB1sjBB0dsZfPqF8"]}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByKeys' test.out

#- 33 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'eaVKbhTA3LXKZ3Q1' \
    > test.out 2>&1
eval_tap $? 33 'WatchdogConnect' test.out

#- 34 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 34 'Func1' test.out

#- 35 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 35 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE