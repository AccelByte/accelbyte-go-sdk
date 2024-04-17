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
echo "1..42"

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
    --body '{"name": "gf4Iigyg8mXIpWcy"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
samples/cli/sample-apps Ams adminAccountLinkTokenPost \
    --namespace $AB_NAMESPACE \
    --body '{"token": "DyAjbmmN0guuySAI"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'JO3HIoFCXcuOtztc' \
    --count '91' \
    --endDate 'bR8Yd08Agb9yx8nJ' \
    --fleetID 'z3uIa1kx6HPPUdZK' \
    --imageID 'Zh09RNE6LBnZWlff' \
    --maxSize '18' \
    --minSize '53' \
    --offset '66' \
    --region '5aVJyLvgE6EntDJk' \
    --serverId 'SVRZUYTOCa5zN7gA' \
    --startDate 'QxIsfBZh6Wffi7I6' \
    --status 'VRQLZ9X6pKR2BNVm' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'fuMu7fOu1TkTQVnj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '8Xg8e3ebI3fVNagE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '432' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "Aw2byu6IOww7cZOv", "imageId": "coewgdwyKI4SN1kP", "name": "2pft3rfJcbXsBEI5"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'U54LQ9zVyInyUtCX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'iJoHcLwW7KiV3L7a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationDelete' test.out

#- 16 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetList' test.out

#- 17 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["dUYEiIHW6snyYyLK", "syVIJFrOOCcWxCOR", "0uC2Qfwy1LS62bV1"], "dsHostConfiguration": {"instanceId": "ruNayxUbONuKdiOx", "instanceType": "k28VtJA89rxba4Np", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "Hu3ucsWyQIuZl1g9", "imageId": "NnqPy1uh599BQxYR", "portConfigurations": [{"name": "QMvG80aDSh1r7qM0", "protocol": "MuAIKkAZ4trT6Hum"}, {"name": "rrLfbdfTPBAjyHK6", "protocol": "0bGpU2iX95y9kdxz"}, {"name": "Dvqvc722cTtUJKYN", "protocol": "QZG8Qw0IuaoGW4bT"}], "timeout": {"creation": 25, "drain": 90, "session": 22, "unresponsive": 90}}, "name": "EPPYX2VpJRhxUyJF", "onDemand": true, "regions": [{"bufferSize": 53, "maxServerCount": 34, "minServerCount": 34, "region": "k6h9wZOT4EWVvm7t"}, {"bufferSize": 62, "maxServerCount": 92, "minServerCount": 60, "region": "JgjAGBcZfZ6ZfCe4"}, {"bufferSize": 62, "maxServerCount": 95, "minServerCount": 80, "region": "F54g20RYF5teahxz"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 90}, "success": {"collect": true, "percentage": 59}}, "logs": {"crashed": {"collect": true, "percentage": 92}, "success": {"collect": true, "percentage": 38}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'dEnolF4YXBGHx35M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'APHtvzixvDhd2nhG' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["mCbFsx9WqVNUOfnJ", "2ZgRSxZ0ihwcJwAH", "RoGvBI1399HKT57c"], "dsHostConfiguration": {"instanceId": "0IOx3bCJ9hC4facC", "instanceType": "3aTWWxgQpajPzfrl", "serversPerVm": 79}, "imageDeploymentProfile": {"commandLine": "uC4a8GUaOlh2pE5t", "imageId": "OTv5OyS2N5Nfjkkp", "portConfigurations": [{"name": "qofpWRlTrS3AgBeS", "protocol": "m82hi2LQQFA2G7zu"}, {"name": "jGYLha36p5absv1x", "protocol": "IbYEF1MdffgrxSXH"}, {"name": "yYTWR4Rp5hgI6oxA", "protocol": "Tyn22aQE5CmW37AH"}], "timeout": {"creation": 9, "drain": 24, "session": 26, "unresponsive": 21}}, "name": "fBxk494ZddXrpSuw", "onDemand": true, "regions": [{"bufferSize": 48, "maxServerCount": 47, "minServerCount": 56, "region": "wunxPt5yQMjlnXSR"}, {"bufferSize": 16, "maxServerCount": 46, "minServerCount": 26, "region": "KcmL6df5ad9DZeFv"}, {"bufferSize": 58, "maxServerCount": 19, "minServerCount": 46, "region": "rN8DNGG7MyxtNjqh"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 25}, "success": {"collect": true, "percentage": 33}}, "logs": {"crashed": {"collect": true, "percentage": 98}, "success": {"collect": false, "percentage": 66}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'TMC5ZYsgERx6oBgT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'ZQ2bQrDk81n0MGJA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'xDxhNsTaXFRrah18' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 76}, "success": {"collect": true, "percentage": 94}}, "logs": {"crashed": {"collect": true, "percentage": 1}, "success": {"collect": false, "percentage": 89}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'ogQMes59eCi4iOQF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'SVzfBVqavStYyDxN' \
    --namespace $AB_NAMESPACE \
    --count '45' \
    --offset '49' \
    --reason 'z8JV0ycTb8S6iIWl' \
    --region 's9THWNEAa56eOsnP' \
    --serverId 'i7uv1UfgxMzSsvaU' \
    --sortDirection 'POzR5iia6WBRiRDL' \
    --status 'lvJhw31DMOIv44K8' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '3fqqgv67f2PLPhSh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'RIBNVRvhtVC3f0BF' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["3cWTNAyUw9xuNtDT", "R0ekjCxiPJZ1Suxx", "x7Vt6PliGCDqtZJI"], "isProtected": false, "name": "f66EuQxhZe6BDrCV", "removedTags": ["06Cq4L3m7Gw4W59j", "o7YHcRUFvkllkDNY", "YZtJQTElLxXnOnyA"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'lyxXCdnNQL8OzYNH' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'j6gdGl81T76PMKlp' \
    --body '{"status": "Gb41zGgaAJf49V6O"}' \
    > test.out 2>&1
eval_tap $? 29 'QoSRegionsUpdate' test.out

#- 30 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'InfoRegions' test.out

#- 31 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'lSUv1cfo8h3bgI6S' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'pOPR0VR5GHtI6j2S' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'OuAK1uJqkFXLNw2B' \
    > test.out 2>&1
eval_tap $? 33 'ServerHistory' test.out

#- 34 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoSupportedInstances' test.out

#- 35 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AccountGet' test.out

#- 36 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'f9zPMEWHAJWK7rh9' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "8VxWvZMO3vq0u3vM", "sessionId": "kQ40DjPakFtG7FeE"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'eSTAUZ0DRMHusLKJ' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["yMy08XstUW0EPf6E", "KOSNGdAiJHKhibZ2", "F4dsIUh9yMXCgdcv"], "regions": ["oxDETSdR8xhbK1ep", "kN6KpjWfi7JwWhPq", "IHCORr6QTukC0Rkl"], "sessionId": "l58lwRMO6awvlKcn"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'bVjUiIBiLS6OIfJa' \
    > test.out 2>&1
eval_tap $? 39 'WatchdogConnect' test.out

#- 40 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 40 'UploadURLGet' test.out

#- 41 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 41 'Func1' test.out

#- 42 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 42 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE