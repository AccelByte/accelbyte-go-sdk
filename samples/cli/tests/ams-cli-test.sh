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
echo "1..27"

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
    --body '{"name": "IoZlwPBSgn31JW03"}' \
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
    --body '{"token": "MIkdwOMuZJAMzdOV"}' \
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
    --body '{"active": false, "claimKeys": ["MkQKZF2lZ03UTjVM", "8IJczhVgiMdgBYNN", "ePvelVN9dOUUfGBn"], "dsHostConfiguration": {"instanceId": "XJR3G5lWBnaWnitf", "instanceType": "tKgp9NJOx8Dycdjq", "serversPerVm": 18}, "imageDeploymentProfile": {"commandLine": "bcWahzlreCjOnEbc", "imageId": "qyPC2i74MsDM9r2L", "portConfigurations": [{"name": "nBFviPZS6oco6Ef0", "protocol": "cEJIQV17WdStXIGq"}, {"name": "TLtpDgJzMiAiCrNM", "protocol": "5dFEFvLopATkrL5r"}, {"name": "3Vz4Bu6RWW7kId50", "protocol": "4sACygpAz8unBHhm"}], "timeout": {"creation": 70, "drain": 56, "session": 4, "unresponsive": 97}}, "name": "PVjTfGbLTOYh7yTQ", "regions": [{"bufferSize": 86, "maxServerCount": 28, "minServerCount": 6, "region": "acq62r3N5socbZ6Q"}, {"bufferSize": 0, "maxServerCount": 85, "minServerCount": 54, "region": "69oc0FzRRQWi8qdB"}, {"bufferSize": 37, "maxServerCount": 44, "minServerCount": 44, "region": "HWeHaCiNKDQv11qb"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'QkqivuZ9x2lQ25ET' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'rXN31q5MiUBAeSsg' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["GDZrhmMLKpzamoDQ", "4bln73j8kPpLP0zn", "AlkSvEuBlYkAVpMD"], "dsHostConfiguration": {"instanceId": "4RBazADPOziMFnsX", "instanceType": "9vOJ0QahDdR94XOd", "serversPerVm": 94}, "imageDeploymentProfile": {"commandLine": "thH2djPRB0kFiePv", "imageId": "PKBKfIUUVvymTCL6", "portConfigurations": [{"name": "WdzmsKkL3d41pWgy", "protocol": "0OLD3BJLJPzL09Xg"}, {"name": "VuryeCWonLwdfJpG", "protocol": "Swt80ELOYvQxcPhH"}, {"name": "dPHNl5QPFIYFipOC", "protocol": "qOaTKxQ2AMjQnw3f"}], "timeout": {"creation": 82, "drain": 70, "session": 11, "unresponsive": 11}}, "name": "6fa7O9XpRhc8U6OK", "regions": [{"bufferSize": 57, "maxServerCount": 49, "minServerCount": 11, "region": "H0ipLKPRpwJe4eoy"}, {"bufferSize": 38, "maxServerCount": 1, "minServerCount": 65, "region": "S34Pif74epqiUB7Q"}, {"bufferSize": 21, "maxServerCount": 88, "minServerCount": 86, "region": "sflXXKRRHGjkgEJk"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'cRm55TEsqUptibBu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'ODDOiluDQ8TOspak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 's3721bVxQ7E5RZle' \
    --namespace $AB_NAMESPACE \
    --count '12' \
    --offset '73' \
    --reason 'fVdX4du5PkCd2wrC' \
    --region 'GTYPP1JUyKBkAEJx' \
    --serverId 'OoYUWbCw4FPsH0s6' \
    --sortDirection '3DzWAnWtjKYVPxFa' \
    --status 'GCdx0o72C9RoOc45' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'XFUSuNBF8wZvm8gc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'gIB4i3InU1VzGKx5' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["AdsLDvHrzXFnT9tJ", "Pa9Zaf4LUi5f2Jea", "DObckyJLEJAWAKnA"], "isProtected": true, "name": "ioE55nX91NZhj28A", "removedTags": ["HpBwYIu8K83R8H6V", "5ftTGSmtfxo1Eiya", "FH7oB0rcLmpmpBNJ"]}' \
    > test.out 2>&1
eval_tap $? 17 'ImagePatch' test.out

#- 18 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'InfoRegions' test.out

#- 19 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'tk4nsizc0fHM1Nir' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'dN0TbccWVhOMujjE' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'QXTKTBaByXt3iQvN' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "acfUaEICwIi8qvr5"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'rjSI3XSWprd3IEW2' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["8k7pu4OnopBCH84m", "ZtRlFMdICcd1eNIC", "VbUYx4LbJ4wf9eL3"], "regions": ["yxhL5tVhdv7YRcNX", "frvPqKlUeHCKs1lo", "UawU01QDyWMZYP8n"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'jCJLGC8Es0l6ysON' \
    > test.out 2>&1
eval_tap $? 25 'WatchdogConnect' test.out

#- 26 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 26 'Func1' test.out

#- 27 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 27 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE