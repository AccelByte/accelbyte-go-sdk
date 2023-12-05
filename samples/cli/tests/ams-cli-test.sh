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
    --body '{"name": "wGyUhRdr4Sm8G6Lw"}' \
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
    --body '{"token": "45itQOrd66ZnnZmx"}' \
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
    --body '{"active": false, "claimKeys": ["Jcte6hhlaQJYzQE7", "dNLOzYiGmEYm8UYA", "So1DH7cfhBon3oyk"], "dsHostConfiguration": {"instanceId": "IgOAVczUTdKOjH4X", "instanceType": "1e2n4iK5Rp1xJGm1", "serversPerVm": 42}, "imageDeploymentProfile": {"commandLine": "DSn8ERXTewW9CB9p", "imageId": "XQCo8UcXOovDp44W", "portConfigurations": [{"name": "NnR3KwMKKM95r7PV", "protocol": "Q7LgyYKBuL1MCvEU"}, {"name": "fFEkqtHHgjEgKCjv", "protocol": "TTm4Vddjigrr1EIJ"}, {"name": "e571wyIc2Z7djUv8", "protocol": "COwsCyGJO3WA2bMz"}], "timeout": {"creation": 3, "drain": 7, "session": 58, "unresponsive": 93}}, "name": "Tytxt7tNIFtS86Vf", "regions": [{"bufferSize": 23, "maxServerCount": 60, "minServerCount": 7, "region": "uqBxvZxuAk4gKuoi"}, {"bufferSize": 30, "maxServerCount": 21, "minServerCount": 46, "region": "NgqYptLkbSLlQDbk"}, {"bufferSize": 38, "maxServerCount": 100, "minServerCount": 22, "region": "2GXzyZC0qsMwrBTR"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'ey78TFdecGIQRYaA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'Er3BIWVbyASBLsTv' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["yv4eXddgDvCSdRNv", "BaB4OPmeMixIIaXh", "vYldzvQEUMVJMuyZ"], "dsHostConfiguration": {"instanceId": "da0C1T8BKb2XBr03", "instanceType": "gjmQaAuJZtFfrRgu", "serversPerVm": 91}, "imageDeploymentProfile": {"commandLine": "MF66is7JPuXMQulg", "imageId": "zMwnIDA1zsnyIuNp", "portConfigurations": [{"name": "ZmgYb4ZC9PGh4Xc4", "protocol": "TeTK6UaXawUxgbrY"}, {"name": "6DTXLsvbyUjvqqWJ", "protocol": "DSzDDhoEgWwmpSVo"}, {"name": "nPO16sGnepE63FXS", "protocol": "yl80jO9a9tuLD2F6"}], "timeout": {"creation": 1, "drain": 61, "session": 39, "unresponsive": 7}}, "name": "TK1zv7jbLC253K09", "regions": [{"bufferSize": 51, "maxServerCount": 90, "minServerCount": 64, "region": "ZXuzkr7G8OZOHzSU"}, {"bufferSize": 62, "maxServerCount": 56, "minServerCount": 57, "region": "UjsoMH3pJzDeRMMU"}, {"bufferSize": 17, "maxServerCount": 60, "minServerCount": 5, "region": "ucMfsFnW93hbH4zt"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'ZiHbBamWEl4QMkiE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'nI0JiCM7CVarg2md' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'bHbwdLnsD5kAD9xC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'rxW36LinksEGqg29' \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '79' \
    --reason 'g8oV25mgZROlX5ec' \
    --region 'HZfPXl24AjGSRipe' \
    --serverId 'HaD0UpLE5ZBLK8J8' \
    --sortDirection 'ExvERHXGxUcSgESn' \
    --status 'jQ6obdmgKVmwOA1A' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'qwQjUQsGWG2Q1Zjt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'EXzNtukpcyg3mQbO' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["RRGwWGMIwsJd5upl", "UDoE9cMchTPyQ81c", "UiFAHpEHs1xseoRX"], "isProtected": false, "name": "5izLZXkHV2W42Vph", "removedTags": ["UbotRYQ6uu1qaXTq", "7ddUmYlWXksTzlhN", "2NfHAOl9q9pVaDf3"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '2tjQim6ROCkXnNtf' \
    --body '{"status": "brIptP2YwiORoy3R"}' \
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
    --serverID 'IzgTISUGuJXe6OL0' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'EoixC3BnoMSDfJFq' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'fhiIAg2Q0zllRNT0' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "NBdCb32XdCufoDO9"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Zdtnux2wFLm3u0oU' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'NXBFVIU7Zhecb0sT' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["otSB3CsRrWZlGZjd", "eZfFvHLNt48iaphk", "B9DuUL4Qd1cWDeSt"], "regions": ["X5dm1mvrFB55Ep7W", "kVg9ZOsZevDsRMLe", "KtIygMAsHvqlBbGM"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'zN1eGiXWGOV6jCQh' \
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