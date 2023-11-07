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
echo "1..30"

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
    --body '{"name": "uSdqV61d1ACtcfEW"}' \
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
    --body '{"token": "3QE53aQNRNkpF8Cz"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetList' test.out

#- 9 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["Pt9NQWq5q9KIqBo5", "5Oe0c8VyGLbP5Ear", "CTn3e5EHCDDHTvlo"], "dsHostConfiguration": {"instanceId": "Z4onNVfkajNNTlJi", "instanceType": "tNMjw3c63tswW7kA", "serversPerVm": 93}, "imageDeploymentProfile": {"commandLine": "CnjYweRZIqMV61F7", "imageId": "HxSiqBDmBbj88BHm", "portConfigurations": [{"name": "VGypewjSp0yZ3xAU", "protocol": "jYVO9QnF1KOTT8UQ"}, {"name": "ksJfVUHxH2r5d5CR", "protocol": "fD49wtJkogR9B6mN"}, {"name": "PO3fwT9MPyNCTN3G", "protocol": "HxSohxdV5AUrO2IX"}], "timeout": {"creation": 100, "drain": 9, "session": 57, "unresponsive": 26}}, "name": "H06dOiV0aQTbDsZw", "regions": [{"bufferSize": 58, "maxServerCount": 78, "minServerCount": 33, "region": "lNypJPhcEJd4Ldu4"}, {"bufferSize": 48, "maxServerCount": 42, "minServerCount": 7, "region": "kmZhp9GJkEDxnGII"}, {"bufferSize": 80, "maxServerCount": 62, "minServerCount": 89, "region": "hYtGY8bwKY05keHT"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'e9OHSK0Px45t9jG0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '0WDDHFerBQGQ2WoO' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["7QeP4XxzfXCDWhCE", "ktVnHlRDYAUqPTPB", "vV6bejhnUZDNaThw"], "dsHostConfiguration": {"instanceId": "ivlT6xSsPii3IWyP", "instanceType": "EIf5nKJyfO84ZmiQ", "serversPerVm": 73}, "imageDeploymentProfile": {"commandLine": "TyvPf8RoE5mp2tYI", "imageId": "X1dHYLgKFudyFz9b", "portConfigurations": [{"name": "X54UwZvrxcdwUzgM", "protocol": "WjiLsu2eZDD1vfYJ"}, {"name": "Hm1Xay023TCrgy0B", "protocol": "3IIp6T1evpc7tunr"}, {"name": "3a5ltoIAHfPuzixx", "protocol": "swFyPeJEzw9cGuz2"}], "timeout": {"creation": 87, "drain": 62, "session": 10, "unresponsive": 33}}, "name": "f11ggG0GTHx5OEv8", "regions": [{"bufferSize": 68, "maxServerCount": 21, "minServerCount": 100, "region": "MOqacUccTTconbBR"}, {"bufferSize": 0, "maxServerCount": 82, "minServerCount": 7, "region": "lbY24lk7RCzco2mD"}, {"bufferSize": 37, "maxServerCount": 29, "minServerCount": 85, "region": "DyvG0qgfvKKWzbau"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'cgpKeO64SMW2Ry6Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'qaKb1v6bWb2gMUux' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'q1RT1zg6d8H46Ylo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'ETcTlf9GtwLUx2ei' \
    --namespace $AB_NAMESPACE \
    --count '78' \
    --offset '4' \
    --reason 'gMd6mxWIq8URlEkl' \
    --region 'tVbWWw5VKBZWsP7K' \
    --serverId 'iNhHpQEGv5z8SXVK' \
    --sortDirection 'GtVDhiGjjGNfN4e1' \
    --status 'nMbQZZTv2eoAnR2k' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Ksp2MXcHdVqlG9RD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'KJPPH5Hm9a8nDO1S' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["xEFVt10I3GyR59gR", "QnOORNWFIk7FfjFI", "cdREILtbOkUl74Nq"], "isProtected": true, "name": "yYov5qEMbUVU8URe", "removedTags": ["9xDoIlJr01fJcqjd", "Tqy7tnW3FHG5BGR9", "ShoVPAtxdNEmwhh0"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'zJP6wID3IztGevDz' \
    --body '{"status": "dfxfONgZRK9DgshI"}' \
    > test.out 2>&1
eval_tap $? 19 'QoSRegionsUpdate' test.out

#- 20 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'InfoRegions' test.out

#- 21 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'mFhLwJjQ4Y8BwiYX' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'EaZueyEg4pfjtRvB' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'HVN7oW2CWcwBgyQd' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "JzFBKKEsUsrPf13d"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'JbVZnZcmT2UVAWts' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'mM8TfF64NgnV5Kxm' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["rnPAJAyrB5JE8teE", "zw5wFqe8IPKPvxJ9", "LHtCex62ezWboPaw"], "regions": ["Y4RmdCIDBbGpcwWT", "nWFYcfwncPf1sdFS", "54hKWaYYFfuItSyk"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'f6D38393dNhOrpPY' \
    > test.out 2>&1
eval_tap $? 28 'WatchdogConnect' test.out

#- 29 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 29 'Func1' test.out

#- 30 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 30 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE