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
    --body '{"name": "4TxBzvxXXWya3k6o"}' \
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
    --body '{"token": "MR7pG1YrHxQttGij"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '1HHzWtomsDYpuY65' \
    --count '263' \
    --endDate 'oHfe2Uswzy3B23j9' \
    --fleetID '8hj8ADxOiRn5NE8J' \
    --imageID 'oW6wxfWsN5AwqQ61' \
    --maxSize '1' \
    --minSize '21' \
    --offset '53' \
    --region 'tbffNTug4ObegPvc' \
    --serverId 'xMDlTR0SZOCnl06h' \
    --startDate 'xq8qjGHPOUcY6Jgg' \
    --status 'kRZQrm3LE90vg2l4' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'qvXg9HtXk2wwPk4a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'dfijognrcqQxTEnG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '108' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "mAqckSBhaHrw8BzS", "imageId": "KrrZOoDhMpxa0saO", "name": "iPo9dsNJqzGghzn2"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'jjpNmKBuPu2wCLsH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'hjLctDH8yZWOwTmN' \
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
    --body '{"active": true, "claimKeys": ["gTPHgwHDVWmE1N2i", "bQySVcLyJRVrHm3r", "UM9zG1cRYleI7mhf"], "dsHostConfiguration": {"instanceId": "KuQqPvCVkjNpKPJt", "instanceType": "fQgfKBGyFDGqnzeG", "serversPerVm": 9}, "imageDeploymentProfile": {"commandLine": "idJZvyH4kv5U8meD", "imageId": "5208lilqapkfKSM5", "portConfigurations": [{"name": "kco8hzy0yB80bZcP", "protocol": "MYuSTj4N8bDpKhBT"}, {"name": "714f7EIxEkYUoCcg", "protocol": "zCOOUdCAhCKIjJ7k"}, {"name": "sh72uWV61DgcPLTS", "protocol": "5SEBKbtudxn9727i"}], "timeout": {"creation": 7, "drain": 87, "session": 12, "unresponsive": 5}}, "name": "DTv4k14VMSDMUNNL", "onDemand": true, "regions": [{"bufferSize": 29, "maxServerCount": 50, "minServerCount": 21, "region": "600Hips0Qq6KOkRh"}, {"bufferSize": 10, "maxServerCount": 18, "minServerCount": 61, "region": "EnlA63W9zKkDZIJ0"}, {"bufferSize": 23, "maxServerCount": 28, "minServerCount": 62, "region": "Kac4gjOGw4mg8nV3"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 89}, "success": {"collect": true, "percentage": 0}}, "logs": {"crashed": {"collect": false, "percentage": 60}, "success": {"collect": true, "percentage": 24}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'x8i8zRSrqDk4zYyy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '1rzJAaZILPaLqU7c' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["BlCtQrVzl4FU14Sl", "gmXupKnTWb12uemc", "7ldCu9obkqTXEB2M"], "dsHostConfiguration": {"instanceId": "Vkni6aPtQlJpJfsg", "instanceType": "kTBjd58YjuLJAPSq", "serversPerVm": 63}, "imageDeploymentProfile": {"commandLine": "O0MhUVbRxqca3lZ6", "imageId": "x3H6kYATYCk602wp", "portConfigurations": [{"name": "RDwnAso2Cq0jUFQj", "protocol": "KZuFGtaAzpALLCxc"}, {"name": "a7mvVFDCZYMf9SLD", "protocol": "1Ljmox0K4vxL3EyM"}, {"name": "O1ZhGoppu7jkgF9Z", "protocol": "qXEeHhcxem1hQqAy"}], "timeout": {"creation": 30, "drain": 57, "session": 47, "unresponsive": 49}}, "name": "wbUfnh8sIbb3Mvgt", "onDemand": false, "regions": [{"bufferSize": 34, "maxServerCount": 79, "minServerCount": 26, "region": "jZGfIvAMHH5Stscy"}, {"bufferSize": 16, "maxServerCount": 70, "minServerCount": 70, "region": "VL29JCsbC2te6aMs"}, {"bufferSize": 76, "maxServerCount": 32, "minServerCount": 14, "region": "ZfuDnxnAAJM0PVCk"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 3}, "success": {"collect": false, "percentage": 48}}, "logs": {"crashed": {"collect": true, "percentage": 52}, "success": {"collect": true, "percentage": 72}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'a64AQPDgVXjUyKry' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'z1wY4ny6efqXSBPH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'GuvUvkBFIU7zx3fo' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 90}, "success": {"collect": false, "percentage": 11}}, "logs": {"crashed": {"collect": false, "percentage": 87}, "success": {"collect": true, "percentage": 30}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'W06LXhOOUhfHcoYR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'fyKNcV9yP2wAnC3Y' \
    --namespace $AB_NAMESPACE \
    --count '53' \
    --offset '84' \
    --reason 'JrwWSZyWIA3BF28Z' \
    --region 'FduPGjI7vIMLNhCU' \
    --serverId 'KKFUrSYOWWPwTwF4' \
    --sortDirection 'uBvrqq6DWtn7Jhxe' \
    --status 'zSbqOx6B9JVxO6wA' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'CPITRCeQ7lp1hdc0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'juGz7vj7MoVBorr9' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["7nLGFPKwWKSivKj8", "syHl7VYJfOUsukQa", "AfmpVEcT49Ts83BA"], "isProtected": false, "name": "wCKjHfsAUUWrjBKv", "removedTags": ["CC7t0Et5xEGY0fae", "ED8qA6ViUuBzZwMJ", "g0K4NSEzAofKNrcc"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'A9ByDDjcNdkHYhaF' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'WOwQmka9jrJhrOIN' \
    --body '{"status": "EdImLBDABYmBEj4E"}' \
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
    --serverID 'PCbmTniAuzWUCTfI' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'SdB1ZEmad7Idwx92' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Te0uuLKoNQZmy8Gb' \
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
    --fleetID 'UaqznJcRnbfnhB53' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "nc6VCSDlTr2DUaNW", "sessionId": "5wHP4xnUGwxedbGk"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '82DBI4XNkMpTMKII' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["3yVZaq75ZGPNgpLq", "n0KnN1bieH1N65TI", "VP9NVKf0bc5PGEOH"], "regions": ["zRLPgtAPVTgc4WFj", "zfiXTrfFcB2KkUq4", "qbDVah4tFCbKtQl3"], "sessionId": "DYVvnSmbhjlzxIUQ"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'ZFXCBk95i3Nupx3G' \
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