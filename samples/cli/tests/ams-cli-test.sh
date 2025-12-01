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
    --body '{"name": "5FYgdR9pPvEvBIWm"}' \
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
    --body '{"token": "IwzBz98IS8YNYBjV"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '0kPWLgQ5lUX4mvjh' \
    --count '61' \
    --endDate 'nHEb7eY5K9lGMK0M' \
    --fleetID 'UKj2VqGsiIMMTgx7' \
    --imageID 'uWzZ4blvQjeIMieb' \
    --maxSize '60' \
    --minSize '44' \
    --offset '88' \
    --region '6WTaRdyLbkXNryGI' \
    --serverId 'DHXD48c7gKk0dUe3' \
    --sortBy 'YlfxKv5aQdBlOCGV' \
    --sortDirection 'desc' \
    --startDate 'XaXAJtw9cNdYAwPH' \
    --status '1Euxjxi9vnE5qXEm' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'qWNTiCdETUw2Rlts' \
    --fleetId 'Qf2wxsJFMvrINMG9' \
    --uploadedBefore '1972-06-20' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'K0ybKEmvLKy1tP8a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'ZQidOuF1bAccRbQq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '265' \
    --imageId 'zgKn01mvVxnZIcir' \
    --name 'jiYYgrnuYd30YkQf' \
    --offset '41' \
    --sortBy 'created_at' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "e9pwnXr26YVKhjEN", "expiresAt": "1987-01-03T00:00:00Z", "imageId": "lPCwJ3rFJgHoHl8x", "name": "AYQ04WeyozGXq3Zt"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'bjnNXlZsXQm07ffp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'X1x4bbfTSEmKWCe0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'pnufxzhuYbB5z3HA' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "MwaNlGxSMwWbl7l6", "expiresAt": "1972-10-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '84' \
    --name 'G5dm4d1BOCfRGmBc' \
    --offset '84' \
    --region 'QiTFC0Zo38mBQQdQ' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["kvhMA4f6RO9KTlJg", "YzzWBbAtoO2ZlQxB", "CwWKPHLqgwZ4IOhC"], "dsHostConfiguration": {"instanceId": "GkEOQirjseEP6n7E", "serversPerVm": 25}, "fallbackFleet": "RvspfJEMIKYTQ8Ex", "hibernateAfterPeriod": "EikZtjvJAQN48YbT", "imageDeploymentProfile": {"commandLine": "8qGkr8l8yFg9uzLy", "imageId": "BFPJb66rU32Z2iJX", "portConfigurations": [{"name": "K6DjUT6PrK4XAJ56", "protocol": "n3cv89JVswnIRXIW"}, {"name": "pjDN8y8jyIWUCKX9", "protocol": "O1qMfnZ4tq5ZPaYJ"}, {"name": "ekAmQnOlHs0di2Jz", "protocol": "ChN3wCqmavhXOAd1"}], "timeout": {"claim": 41, "creation": 89, "drain": 59, "session": 41, "unresponsive": 86}}, "name": "Uc0qGI3C3bH03jq5", "onDemand": false, "regions": [{"bufferSize": 30, "dynamicBuffer": false, "maxServerCount": 8, "minServerCount": 82, "region": "PvnabFbbOoVwYRpb"}, {"bufferSize": 29, "dynamicBuffer": false, "maxServerCount": 10, "minServerCount": 52, "region": "nIuWxhbhkzFvl2VT"}, {"bufferSize": 19, "dynamicBuffer": false, "maxServerCount": 68, "minServerCount": 34, "region": "fhOH1qH5Yr0xYRmJ"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 53}}, "logs": {"crashed": {"collect": true, "percentage": 45}, "success": {"collect": true, "percentage": 56}, "unclaimed": {"collect": true, "percentage": 37}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["PZfAizLOTMcfamif", "MIMlb4T2rylA520n", "M6y0277F2gW4r5Pa"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'UloZUfkTpzhV13Kf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'wtxljQDSsvHp0VTj' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["DFsaAwTcMC51KFGh", "4KpgauxVU5tVnErP", "lr02LYb8YOaF6JUQ"], "dsHostConfiguration": {"instanceId": "5RhDWwWKP3AHax8w", "serversPerVm": 48}, "fallbackFleet": "C27d3S2I6rlnXdS0", "hibernateAfterPeriod": "yWtFOweY6rJGnKoq", "imageDeploymentProfile": {"commandLine": "e0V2rxKrs7SZec1h", "imageId": "ByZoyafYsTUXyH0t", "portConfigurations": [{"name": "yvRScn16fXmFDAqE", "protocol": "hqBwmYERj2S57PqI"}, {"name": "5qgL50EQhz3oXMrC", "protocol": "iHYPcQz95XmyhiJd"}, {"name": "x9FIg7ehVxtxzixj", "protocol": "S3QiOrxBdbALvGHB"}], "timeout": {"claim": 62, "creation": 64, "drain": 22, "session": 97, "unresponsive": 95}}, "name": "LLGhHVrzVifYcGGT", "onDemand": false, "regions": [{"bufferSize": 11, "dynamicBuffer": false, "maxServerCount": 34, "minServerCount": 88, "region": "hOptgzZhWO5RQdYu"}, {"bufferSize": 81, "dynamicBuffer": false, "maxServerCount": 46, "minServerCount": 67, "region": "8Z6LhZ4D7sUgjKKF"}, {"bufferSize": 95, "dynamicBuffer": true, "maxServerCount": 36, "minServerCount": 17, "region": "XVD72dkODoUj0HX1"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 67}}, "logs": {"crashed": {"collect": false, "percentage": 38}, "success": {"collect": false, "percentage": 74}, "unclaimed": {"collect": false, "percentage": 53}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'qFRvV1AjwaLfmOjc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'gqEDWqv9p9Qb7oil' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '6SijlHnNmpFc4P82' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 95}}, "logs": {"crashed": {"collect": true, "percentage": 35}, "success": {"collect": true, "percentage": 87}, "unclaimed": {"collect": true, "percentage": 61}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'vXqeXrrnunntABXn' \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '91' \
    --region 'KcQFxRXsWUR4rIax' \
    --serverId 'hxoQqOZMBbRi3K8B' \
    --sortBy 'TYD2TW12ClhUyCb1' \
    --sortDirection 'desc' \
    --status 'claimed' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '4J1rn4qgSka4VhKh' \
    --namespace $AB_NAMESPACE \
    --count '10' \
    --offset '10' \
    --reason 'dNS2c18YKU10tAsx' \
    --region 'L1P9EnseSRhipFMm' \
    --serverId 'UXiHPzI5bxDVbAyb' \
    --sortDirection 'Pim8FG5l1ZIC6zcx' \
    --status 'Yf7tyOFIMYXbL2xm' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '40' \
    --inUse 'UCTvOwiYsct0nkfB' \
    --isProtected 'true' \
    --name '7OC9p5bk9kFaNSJo' \
    --offset '67' \
    --sortBy 'RFxQuCegYHwJzMKq' \
    --sortDirection 'dcxapb762hBT1fTQ' \
    --status 'LVQXhtVAyOenXhSq' \
    --tag 'f6Hp29Y10JkP39lI' \
    --targetArchitecture 'YXonqwtSmBEOMRfg' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'V7f5mpAmEXtGZrx9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID '5nA0DNbBtV5z4vu0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'c51ALEBHBDoCSUmd' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["qNkCq55NAIhqwe7i", "2YP4DeaqepUuMI01", "D2uIF60reZcH6dAf"], "isProtected": true, "name": "sYr7dVYCZeVNcq7f", "removedTags": ["skJFDUSPfZ5hJEOA", "E3ju1i6wobJXsztU", "kIHx3kFVWUVe9NNK"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID '1q1757Od1xUzqgkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'i6YsHnJnHGAUmqHP' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'K35qG6Faja4ws4BO' \
    --body '{"status": "ollSK4wPvqerx5ea"}' \
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
    --serverID 'oU3Jy7Y7bVF1QljX' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'NyyvVF7DI7VbcSVu' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'rzQTtdfl1soWJkNn' \
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
    --fleetID 'pwqj9dxwcgXofZvM' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Be7oxFlkukvUSGos", "sessionId": "tN6BqzceHcQEpkxF"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'VlpLSzg9OcGDZTAg' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["0TlJS5sdW43yBs6i", "X8SdPp3vFeB9iQo0", "KCJw2c2R1Vp7piWc"], "regions": ["WZkZlL0BwTDFEW5j", "kaMOvZTS14qp6igk", "IZT1BFmDJNCqd4W0"], "sessionId": "o6tWyVNLfXDq8VtQ"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'gU6scR91TDM0Sn2k' \
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