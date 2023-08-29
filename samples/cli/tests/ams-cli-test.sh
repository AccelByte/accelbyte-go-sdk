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
echo "1..26"

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
    --body '{"name": "89eJkTB6FqDNv1QM"}' \
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
    --body '{"token": "3cy790gyuegV2Er1"}' \
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
    --body '{"active": false, "claimKeys": ["doSkD4HEcXePfRik", "fxu2DTLDnhYwStnf", "PySgAAhNu0AzwmMo"], "dsHostConfiguration": {"instanceId": "2k4npb8By7H8GyiI", "instanceType": "y60oGzLYOI4snFpk", "serversPerVm": 39}, "imageDeploymentProfile": {"commandLine": "Yr0iJddjUFWcStQa", "imageId": "DEWbXi01UuXv6vIQ", "portConfigurations": [{"name": "rCgiJO9qe7crW5GK", "protocol": "WlTh7B2nlhzf2wMy"}, {"name": "QNUN28LrHAaZybSC", "protocol": "icm5Jh4333Mqq3Iy"}, {"name": "W397ZsUSzzqURChN", "protocol": "9kefPMi8asUZiYbV"}], "timeout": {"creation": 64, "drain": 75, "session": 60, "unresponsive": 37}}, "name": "EEmHLtN2apXPqlMV", "regions": [{"bufferSize": 33, "maxServerCount": 8, "minServerCount": 65, "region": "dMGdiCJZ2Caqw4N8"}, {"bufferSize": 30, "maxServerCount": 47, "minServerCount": 29, "region": "PftGniVqoWLmZ1EH"}, {"bufferSize": 25, "maxServerCount": 52, "minServerCount": 36, "region": "z5THj32wjsdze5WO"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Eet78q98zNxl3Hg5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'vsQunNNiyolGvHiC' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["DuSyLLz2sQdjD6CL", "yURBcnmeEHMrDLpk", "VydIigdfxInqWEHj"], "dsHostConfiguration": {"instanceId": "mNOSHtOq168trwpj", "instanceType": "MYhz8XCdCHHnQulD", "serversPerVm": 53}, "imageDeploymentProfile": {"commandLine": "l0LjsWU2aMLCxaZP", "imageId": "ftgU0gqxDmYP2rOo", "portConfigurations": [{"name": "Bu5a3jpHECZMOZ9T", "protocol": "sWCJkJxYGnfsTrKn"}, {"name": "KqqAbQmUq13x327N", "protocol": "eGi5rBYYuVx6CZkp"}, {"name": "ctuiMLkqR0h5HJLX", "protocol": "sMiJYgP3LXOjd9wN"}], "timeout": {"creation": 66, "drain": 7, "session": 60, "unresponsive": 89}}, "name": "Klc2uVzZVZSGqDkM", "regions": [{"bufferSize": 48, "maxServerCount": 96, "minServerCount": 77, "region": "1vMFfhUm8lNpxocV"}, {"bufferSize": 87, "maxServerCount": 19, "minServerCount": 26, "region": "Tae2aAnJ2VbciRSN"}, {"bufferSize": 99, "maxServerCount": 57, "minServerCount": 26, "region": "Vrpu6U4LI2iMGUzs"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'giqLFyqwuTNvNfP7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'z9M78dHyQrO1Lf0t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'axPrPQ8MxggiM8kD' \
    --namespace $AB_NAMESPACE \
    --count '64' \
    --offset '65' \
    --reason 'aE8tOFZP1EkJt7yl' \
    --region 'TmKzWKMrcHrwSwsv' \
    --serverId 'KNTHpd1EMNJWgshG' \
    --sortDirection 'LI4tiyRhT2xsuM9T' \
    --status 'KYV9j3Pv0nTuYPkc' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '0HShPUQaB9eOO0sf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'p7oNFRxLDBmt0dej' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["5Av2dFqRxTZOjo2Y", "Zh6WiJFbMJAuNqO4", "lF4sbP9wmLK6rNwz"], "isProtected": true, "name": "YURaRi18jCRdyYnl", "removedTags": ["AzqtHEIIZQxzGX7H", "TGS47FvCa8C2V9tA", "7iLAIEadKDWRcdLi"]}' \
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
    --serverID 'qcdVkx6WnJJDz8wk' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Omp3ZJlRov3Tcwuo' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'EOmqqfwdmadXiJOZ' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "EKqBCXYkk8RPWioa"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["jtGpNJgcTF75up3e", "3zN3C7CX1doLs71b", "yJv3S6AWJfHkIi8R"], "regions": ["1KajiuM1pI9d0oBd", "Rxvvue8uiGyLoZtN", "1pr8NQQek6lRFSeU"]}' \
    > test.out 2>&1
eval_tap $? 23 'FleetClaimByKeys' test.out

#- 24 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'x0Kbj3l5Nz851VVu' \
    > test.out 2>&1
eval_tap $? 24 'WatchdogConnect' test.out

#- 25 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 25 'Func1' test.out

#- 26 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 26 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE