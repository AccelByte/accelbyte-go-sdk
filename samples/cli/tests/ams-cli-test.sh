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
    --body '{"name": "6d6gPeoTVtn6ccQ7"}' \
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
    --body '{"token": "wUzluyPgES913crK"}' \
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
    --body '{"active": false, "claimKeys": ["f5xUV8ryua4pIIlb", "9Lzp7xJmBLPhpIPH", "c2MFroBgclSOdGqK"], "dsHostConfiguration": {"instanceId": "4m1ElLOnCnQ9pCfE", "instanceType": "w7mYHXwl9VQSgzmg", "serversPerVm": 32}, "imageDeploymentProfile": {"commandLine": "EpOeZ1EBxKdbiFYD", "imageId": "AYWH13Efim4Bdn1E", "portConfigurations": [{"name": "0q22cnsMtEuW9EcR", "protocol": "xewXzNNTBnr2gyt8"}, {"name": "QxN0XGRufrAaQ9Pi", "protocol": "n4FUP7oYfv2pobWa"}, {"name": "foYL9OKA8gEqslO9", "protocol": "j4c0GVjD0knEuMTd"}], "timeout": {"creation": 54, "drain": 98, "session": 69, "unresponsive": 81}}, "name": "vviIzPwOWwdaUO4c", "regions": [{"bufferSize": 14, "maxServerCount": 33, "minServerCount": 35, "region": "EGdxmGNWb2ZiYYl8"}, {"bufferSize": 1, "maxServerCount": 53, "minServerCount": 20, "region": "mfANGxLS21INTQDN"}, {"bufferSize": 10, "maxServerCount": 82, "minServerCount": 55, "region": "R11Qc3hngCLhPADj"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'VJ6e1ivGnr7nwTo3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'yATZYmQ0eCbdMYqe' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["s75WcpjQASASQJeE", "WIzPCaW0kOCiaNj3", "sT556YKQwjCvOyKa"], "dsHostConfiguration": {"instanceId": "13BBK3pGhNLstutU", "instanceType": "9p1rfnAH4Tk7pWvp", "serversPerVm": 6}, "imageDeploymentProfile": {"commandLine": "ANXgxOrU9mfXbVNt", "imageId": "buYqG0VQchEf5pcX", "portConfigurations": [{"name": "RMhGGxo2wwROQJjb", "protocol": "5mehWuzxz50kUH6v"}, {"name": "AJ1EnhcUE4p1YghG", "protocol": "P9vIxsAbvGJ7gzB9"}, {"name": "23ESTvl0d1mdlLzS", "protocol": "bH0JCZNdvQ5WnNJM"}], "timeout": {"creation": 16, "drain": 85, "session": 22, "unresponsive": 50}}, "name": "qcrmFEN9SbqUcABr", "regions": [{"bufferSize": 22, "maxServerCount": 15, "minServerCount": 23, "region": "O4luTEDYf5lrUvQ1"}, {"bufferSize": 55, "maxServerCount": 57, "minServerCount": 75, "region": "3ciGrJOWcCk5GPXJ"}, {"bufferSize": 58, "maxServerCount": 2, "minServerCount": 76, "region": "vYbd4Pwebdtr3wdd"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'DoPvJh3k3Xixy5Rf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'cppcB4SW5K0hvM5W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'KKnok4ISjkhYAXnL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'ZkmU1ZsxQWthRjtg' \
    --namespace $AB_NAMESPACE \
    --count '42' \
    --offset '30' \
    --reason 'I8HXtEVbWX5ISKK8' \
    --region 'cMATJkZ2tU1Z1XmF' \
    --serverId 'piDg7HUnE07ATHmK' \
    --sortDirection 'eYGHSvo2X4dsEMCQ' \
    --status 'xbpPHlElbArs6lMY' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'ozID1cojybk2LBKh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'qU45cQZtKIkFz4IT' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["YlIMp1T5pQRQEdUW", "UFEJUFieYzMNsMHX", "EpRb2EddQ9G8mO5F"], "isProtected": true, "name": "0D7pZZQjGTrx9bIJ", "removedTags": ["b2PpP7eodT6dSNCV", "oLjBQ41IWnCtcaLB", "LAM3CpECDwlzZ2bS"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'r0gr9yT9giocZmFa' \
    --body '{"status": "zgTpEDyVQTZyQfMS"}' \
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
    --serverID '3ngIrhBoVChILOJZ' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'xtALtbuSkyVKTT40' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'uq0YaKbN0Rn7W2Oz' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "CXjtX26WgxUFQkq5"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '5nPSU22OqCyjVHv1' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'VtUVIzJclrNXTEym' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["cKT7TZORwMx3Ie3A", "20YNJEMImgqUSXns", "QInsqGB2FcQEyj6X"], "regions": ["gLgWt9jPaV6muuyy", "Aas4INuDfJK8CY2V", "gb90IEzUygE6WGV3"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'PQOK81tI63TrRh26' \
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