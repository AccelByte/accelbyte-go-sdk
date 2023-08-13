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
echo "1..25"

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

#- 2 Func2
samples/cli/sample-apps Ams func2 \
    > test.out 2>&1
eval_tap $? 2 'Func2' test.out

#- 3 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 3 'AccountGet' test.out

#- 4 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "NXLzr7OdSZUVsAtQ"}' \
    > test.out 2>&1
eval_tap $? 4 'AccountCreate' test.out

#- 5 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AccountLinkTokenGet' test.out

#- 6 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "HT8ezaErMyxjerpl"}' \
    > test.out 2>&1
eval_tap $? 6 'AccountLink' test.out

#- 7 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'FleetList' test.out

#- 8 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["5VniePLkNHBvIVvY", "2IRLXqg5UPfWfbzK", "LBvZn0Ua79W9w7rz"], "dsHostConfiguration": {"instanceId": "984QzntccNp5MXpF", "instanceType": "axx5uNYZEdVKsVi1", "serversPerVm": 57}, "imageDeploymentProfile": {"commandLine": "6bFKhVmwuvV7yOeZ", "imageId": "tV3PME41FPlGbSEU", "portConfigurations": [{"name": "w8ynD8eVVP2Vx1gF", "protocol": "Wo3PQrBTaBedsQxo"}, {"name": "lT7I2CIuCnHhPZwy", "protocol": "tjlnRh0ukcRXCUvg"}, {"name": "j1gvwr58xwievdDa", "protocol": "YZVCX4AbmhMKLq47"}], "timeout": {"creation": 53, "drain": 12, "session": 4, "unresponsive": 4}}, "name": "cqBwSp41INn1TSjv", "regions": [{"bufferSize": 100, "maxServerCount": 66, "minServerCount": 15, "region": "anshAW4GK3nLb1wr"}, {"bufferSize": 27, "maxServerCount": 99, "minServerCount": 59, "region": "1hDloTQU32GshK84"}, {"bufferSize": 33, "maxServerCount": 68, "minServerCount": 95, "region": "TgBI1QW2UMGgqmHC"}]}' \
    > test.out 2>&1
eval_tap $? 8 'FleetCreate' test.out

#- 9 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'f3Wy3rMR9YaF8TR0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'FleetGet' test.out

#- 10 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '1eLVp6SvV2tyVaK5' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["NiN2lDXKSxNZN4B9", "6VqxiU58UIqypAMi", "Kpaot21gtguSXeFM"], "dsHostConfiguration": {"instanceId": "cRc12WkZikOZvBTQ", "instanceType": "ZNoKX3w8oom6OXzN", "serversPerVm": 11}, "imageDeploymentProfile": {"commandLine": "Z9EafPOicP66wWaN", "imageId": "Hk4KpFjGuhtquVxl", "portConfigurations": [{"name": "wMpeTR9htNTLeP7Y", "protocol": "jPFxBkyT9acK82Bw"}, {"name": "EWfIKWwsNHtEmhQK", "protocol": "3jZAvHB3mMML9oRT"}, {"name": "dEzDvKaHXjcelM2j", "protocol": "jYiA1xBhLYMIZfeu"}], "timeout": {"creation": 59, "drain": 53, "session": 79, "unresponsive": 24}}, "name": "dA7naeUmNOQtPIyq", "regions": [{"bufferSize": 11, "maxServerCount": 96, "minServerCount": 44, "region": "cNzKI3xKXYrXVqSI"}, {"bufferSize": 24, "maxServerCount": 58, "minServerCount": 20, "region": "jjmQCgHygwFpqI9o"}, {"bufferSize": 52, "maxServerCount": 21, "minServerCount": 82, "region": "d6HmSXULrn98PDnl"}]}' \
    > test.out 2>&1
eval_tap $? 10 'FleetUpdate' test.out

#- 11 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'Rm5OvP14PuWyoDAQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetDelete' test.out

#- 12 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'XA9SvuMPoMUz09Sz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetServers' test.out

#- 13 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'XZ2e1PeAA14sBj1K' \
    --namespace $AB_NAMESPACE \
    --count '61' \
    --offset '50' \
    --reason 'jGibFQRwZ5OGMQWk' \
    --region 'NbBT7In5aa0R01Jq' \
    --serverId 'STH7PLzRsmLmJDHy' \
    --sortDirection 'fVlFKoieJQzZ0gEY' \
    --status 'Apbk4lwPuHYwOopa' \
    > test.out 2>&1
eval_tap $? 13 'FleetServerHistory' test.out

#- 14 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageList' test.out

#- 15 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'IYMxSBL7WlQog4xR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageGet' test.out

#- 16 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'ny9RYlOCbPZZndZV' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["573g6RPC2HKqYatO", "tQfW90MPkOQpnbeL", "UThanDml52b5omb0"], "isProtected": false, "name": "99eRS17IQBenXC2Y", "removedTags": ["R9JWZUK03TfUXQlu", "GmoI5XoihH1dMU8l", "wOyRyHSFLmUljSPg"]}' \
    > test.out 2>&1
eval_tap $? 16 'ImagePatch' test.out

#- 17 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'InfoRegions' test.out

#- 18 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID '50NuFtD0zpixt9Ry' \
    > test.out 2>&1
eval_tap $? 18 'FleetServerInfo' test.out

#- 19 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'v6qwqgHxl2Pq8pVU' \
    > test.out 2>&1
eval_tap $? 19 'ServerHistory' test.out

#- 20 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'InfoSupportedInstances' test.out

#- 21 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '50mt0IV52ure4wSm' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "wUpKGiuXXrGiiFK1"}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByID' test.out

#- 22 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["IZbHmp2tTt97d3YY", "jc9pxfgBrqhOgK7L", "6LyF0LZZEEloh8He"], "regions": ["bA4xkASMxDG0apNS", "GMCIKvwDfJwoz0o0", "DPr00eYgjNJNHZql"]}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByKeys' test.out

#- 23 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '31PryWz4u66EFd1Y' \
    > test.out 2>&1
eval_tap $? 23 'WatchdogConnect' test.out

#- 24 Func3
samples/cli/sample-apps Ams func3 \
    > test.out 2>&1
eval_tap $? 24 'Func3' test.out

#- 25 PortalHealthCheck
samples/cli/sample-apps Ams portalHealthCheck \
    > test.out 2>&1
eval_tap $? 25 'PortalHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE