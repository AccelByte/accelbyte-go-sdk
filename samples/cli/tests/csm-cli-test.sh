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
echo "1..67"

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

#- 2 GetAppListV1
eval_tap 0 2 'GetAppListV1 # SKIP deprecated' test.out

#- 3 GetAppV1
eval_tap 0 3 'GetAppV1 # SKIP deprecated' test.out

#- 4 CreateAppV1
eval_tap 0 4 'CreateAppV1 # SKIP deprecated' test.out

#- 5 DeleteAppV1
eval_tap 0 5 'DeleteAppV1 # SKIP deprecated' test.out

#- 6 UpdateAppV1
eval_tap 0 6 'UpdateAppV1 # SKIP deprecated' test.out

#- 7 CreateDeploymentV1
eval_tap 0 7 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 8 GetAppImageListV1
eval_tap 0 8 'GetAppImageListV1 # SKIP deprecated' test.out

#- 9 DeleteAppImagesV1
eval_tap 0 9 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 10 GetAppReleaseV1
samples/cli/sample-apps Csm getAppReleaseV1 \
    --app 'lPjla3jOYZcYo7MW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetAppReleaseV1' test.out

#- 11 GetListOfSecretsV1
eval_tap 0 11 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 12 SaveSecretV1
eval_tap 0 12 'SaveSecretV1 # SKIP deprecated' test.out

#- 13 UpdateSecretV1
eval_tap 0 13 'UpdateSecretV1 # SKIP deprecated' test.out

#- 14 DeleteSecretV1
eval_tap 0 14 'DeleteSecretV1 # SKIP deprecated' test.out

#- 15 StartAppV1
eval_tap 0 15 'StartAppV1 # SKIP deprecated' test.out

#- 16 StopAppV1
eval_tap 0 16 'StopAppV1 # SKIP deprecated' test.out

#- 17 GetListOfVariablesV1
eval_tap 0 17 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 18 SaveVariableV1
eval_tap 0 18 'SaveVariableV1 # SKIP deprecated' test.out

#- 19 UpdateVariableV1
eval_tap 0 19 'UpdateVariableV1 # SKIP deprecated' test.out

#- 20 DeleteVariableV1
eval_tap 0 20 'DeleteVariableV1 # SKIP deprecated' test.out

#- 21 GetListOfDeploymentV1
eval_tap 0 21 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 22 GetDeploymentV1
eval_tap 0 22 'GetDeploymentV1 # SKIP deprecated' test.out

#- 23 DeleteDeploymentV1
eval_tap 0 23 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 24 PublicGetMessages
samples/cli/sample-apps Csm publicGetMessages \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMessages' test.out

#- 25 GetAppListV2
samples/cli/sample-apps Csm getAppListV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '77' \
    --body '{"appNames": ["d0ezDsA3zFhOx8L9", "stIcGJgUeop1gjxi", "LW9mV7WHFfkePADJ"], "appStatuses": ["CNSmtMCfcBVmZSM1", "4r2unLtHMNDenDMe", "fnEiTZYyxOaumZNa"], "fuzzyAppName": "7CF1iiUgWtQHubWt", "scenario": "Ng7Sn4BouDlOc1pT"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'RcpC7Z7vjv4ncyFF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app '7XBbM8OYKTBuvWID' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 63}, "cpu": {"requestCPU": 43}, "description": "Eoiv7iNIGE3jvj9r", "memory": {"requestMemory": 65}, "replica": {"maxReplica": 31, "minReplica": 25}, "scenario": "aABOpCiaBYBwB8oC", "vmSharingConfiguration": "GnlT8NdDFA7OILfr"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'uRXOuRhRrv6QG60m' \
    --namespace $AB_NAMESPACE \
    --forced 'RUF9ovw3A4w0QuyV' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'r0xPUA4H057LX8hK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TIO3y2qYfXBJgJWv"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'mlIKiDDfXjFq7v6P' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "mZygtCSAebQujzDc"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'C3ACS19HhedepL2r' \
    --namespace $AB_NAMESPACE \
    --cached 'rTlROMIvWQu8mraH' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app '9dykWgt9ZpGI3f5Z' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["YJRTvuE0nOVdXt4v", "v6kdLaI3AdrYjCec", "ufCD3RAZwqJdGYAm"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'T8xAn6PWxRkZdI3E' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "qMfVDYcMNuWZBgf3", "username": "x278I63iFDccggwF"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateNoSQLDatabaseCredentialV2' test.out

#- 34 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'MHPDSFiT2pkH28Pz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetNoSQLDatabaseV2' test.out

#- 35 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'KytVmv3uU3ZwWfKu' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "t06auiWzfKI5APCY", "password": "gvmQcYoxmCfHW87E", "username": "j1r4F7yVOJFWFMVF"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseV2' test.out

#- 36 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app '0UsCidgRdLuYpAxd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'DeleteNoSQLDatabaseV2' test.out

#- 37 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'aq5AsKFaJArBxhdY' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 97}, "cpu": {"requestCPU": 94}, "memory": {"requestMemory": 87}, "replica": {"maxReplica": 45, "minReplica": 14}, "vmSharingConfiguration": "tM2hTh7tZ0nf6plt"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateAppResourcesV2' test.out

#- 38 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'x6rwfKFY5kuYTtTk' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "XWAsYiwmkYoXrTsK", "preferredLimitReplica": 100, "requestReason": "DYnTA84bo8y6ZOve"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 39 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'WYIW0nt10nTEKHWP' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 39 'GetListOfSecretsV2' test.out

#- 40 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'RHvvMRC1R5Kup5Nz' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "hKeFYD9xuohacrfw", "description": "9SPeyTWGcElh5f2S", "source": "0G7FLkSKqMVwJyLl", "value": "buS6HMlbISAtxebW"}' \
    > test.out 2>&1
eval_tap $? 40 'SaveSecretV2' test.out

#- 41 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'L1fTyMlAFf4FpWrT' \
    --configId '47UEApxn8ACrh8ju' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "th3nLsGw7JEOWEyT", "value": "RN1H8Bgh5MUR5Aoa"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateSecretV2' test.out

#- 42 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'M3cs8bHns6mAGlhO' \
    --configId 'CJWUMfbo6NtzzjWL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteSecretV2' test.out

#- 43 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'ffQkWWJWkoPGnmm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'StartAppV2' test.out

#- 44 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'a2ObQm3SZGEEb2PD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'StopAppV2' test.out

#- 45 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'mylKHLfo6QaGmBT8' \
    --namespace $AB_NAMESPACE \
    --notificationType '4Lh1KBVh9a0CoOCc' \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationSubscriberListV2' test.out

#- 46 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'FqHvCxqBBdrHek1i' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "9Stn8U54umEhWuw1", "notificationType": {"WgbUE1hQBr1gsj2l": true, "oo7mY3avT2ghbqrA": true, "0N7Amh0KHA5g5ARS": true}, "userId": "66nh771ApoSusBCV"}, {"emailAddress": "zWRcdRpP3lQtUF7e", "notificationType": {"7EgPQsRJOY1qfCpO": false, "5lwDPMnNlUQjfEiF": false, "6hCQthUZGCWcrneM": true}, "userId": "kGuvlZAcrc7GJp74"}, {"emailAddress": "MneRo5G3PAkh0M8R", "notificationType": {"SF2w2HImrGEGnvL1": false, "wt5hZoiQNfE3fTXw": false, "zg7VT8yQgXKJ6Tu6": true}, "userId": "ppFlCzzZ2ShEYZmC"}]}' \
    > test.out 2>&1
eval_tap $? 46 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 47 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'C13ejGgeE93i4Aop' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "gupN6uGO1CMA0ZB4", "subscribers": [{"emailAddress": "dVeBb0bnxdbz3yjF", "userId": "1e2H00tDJpgSw0Xe"}, {"emailAddress": "YiTLsD8KqmGOch3Y", "userId": "scRLp7kpWbYaDm8T"}, {"emailAddress": "el8yhkwKGRkul5y3", "userId": "m1RmqNk7vug8X5od"}]}' \
    > test.out 2>&1
eval_tap $? 47 'SubscribeAppNotificationV2' test.out

#- 48 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'qWiY3Amrin3bg9PK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetSubscriptionV2Handler' test.out

#- 49 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'cJieBHAZRHls4zSh' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "ID2jDnsH71gL9yQo"}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeV2Handler' test.out

#- 50 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'TwNUzzMeiGdBKRXP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'UnsubscribeV2Handler' test.out

#- 51 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app '7zdwsb86189NmWLi' \
    --namespace $AB_NAMESPACE \
    --userId 'BYW4qMmSySqbiLym' \
    > test.out 2>&1
eval_tap $? 51 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 52 DeleteSubscriptionAppNotificationV2
eval_tap 0 52 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 53 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'en5lrvbWDkTGGGqp' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfVariablesV2' test.out

#- 54 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app '67a7NGzWPX83y0ww' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "LebLOHdw1CyBSJPc", "description": "ouCp4rn6fVnsEyus", "source": "hAcQE56abuREUekj", "value": "qFwtISTFmc5Ndmxp"}' \
    > test.out 2>&1
eval_tap $? 54 'SaveVariableV2' test.out

#- 55 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'kUvA0lCO61LdHHK4' \
    --configId '4vymIt16XsIckAXi' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "2Rx5O8bJ44HIuWEo", "value": "54MId3BR0cZ2NnnD"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateVariableV2' test.out

#- 56 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app '0GtkxLAavarzZHnk' \
    --configId '5mznBuJoFkBJpb5L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteVariableV2' test.out

#- 57 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '48' \
    --body '{"appIds": ["VBCMokIrVCCAyo1C", "AONYcHQ5TRfKv27z", "ZiqAhHcqrrPl1Vz3"], "deploymentIds": ["5YCbjY1kGWCsSfOp", "VScNmOr7pDgYho0T", "w0UZySgDmG41VFIM"], "statuses": ["vzhLt5fEvRuCJ57L", "5z3iREcGgtcdKtow", "I13JtaGg2mDHywY3"]}' \
    > test.out 2>&1
eval_tap $? 57 'GetListOfDeploymentV2' test.out

#- 58 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'tRYJQC9J3HwMSjHG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetDeploymentV2' test.out

#- 59 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'rr1tUexjhIdibKJe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteDeploymentV2' test.out

#- 60 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetNoSQLClusterV2' test.out

#- 61 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.7678932188223608, "minDCU": 0.1651441516575597, "profileName": "SxKsbmBxShNf6qyF"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateNoSQLClusterV2' test.out

#- 62 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.3466025903633334, "minDCU": 0.7861026905062823, "profileName": "xddXUHshlK4VmNcg"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateNoSQLClusterV2' test.out

#- 63 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteNoSQLClusterV2' test.out

#- 64 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetNoSQLAccessTunnelV2' test.out

#- 65 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetResourcesLimits' test.out

#- 66 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'CB6t7kqDRiKaj21n' \
    --namespace $AB_NAMESPACE \
    --notificationType '7vE1TXcscP8LbAwu' \
    > test.out 2>&1
eval_tap $? 66 'GetNotificationSubscriberListV3' test.out

#- 67 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app '9HlLZAJuwWRFq2Bk' \
    --namespace $AB_NAMESPACE \
    --emailAddress '9oV0jhkkB3DUS0M7' \
    --userId 'xjYyWsLryL23xpVV' \
    > test.out 2>&1
eval_tap $? 67 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE