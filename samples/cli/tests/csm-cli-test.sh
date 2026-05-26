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
echo "1..104"

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

#- 2 ListAppUI
samples/cli/sample-apps Csm listAppUI \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --name 'CHAcfQxUPMTIKRQP' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 2 'ListAppUI' test.out

#- 3 CreateAppUI
samples/cli/sample-apps Csm createAppUI \
    --namespace $AB_NAMESPACE \
    --body '{"name": "zZYLRwX8C5g8Xda0"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
samples/cli/sample-apps Csm deleteAppUI \
    --appUiName 'JAvQOXjuaMr01gZ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
samples/cli/sample-apps Csm uploadAppUIFile \
    --appUiName 'fJjKn0YTVFmQsi1G' \
    --namespace $AB_NAMESPACE \
    --version 'mMLzJ1CMv7hnupVS' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 5 'UploadAppUIFile' test.out

#- 6 GetAppListV1
eval_tap 0 6 'GetAppListV1 # SKIP deprecated' test.out

#- 7 GetAppV1
eval_tap 0 7 'GetAppV1 # SKIP deprecated' test.out

#- 8 CreateAppV1
eval_tap 0 8 'CreateAppV1 # SKIP deprecated' test.out

#- 9 DeleteAppV1
eval_tap 0 9 'DeleteAppV1 # SKIP deprecated' test.out

#- 10 UpdateAppV1
eval_tap 0 10 'UpdateAppV1 # SKIP deprecated' test.out

#- 11 CreateDeploymentV1
eval_tap 0 11 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 12 GetAppImageListV1
eval_tap 0 12 'GetAppImageListV1 # SKIP deprecated' test.out

#- 13 DeleteAppImagesV1
eval_tap 0 13 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 14 GetAppReleaseV1
samples/cli/sample-apps Csm getAppReleaseV1 \
    --app 'aCyXv8VODzrn4vyD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetAppReleaseV1' test.out

#- 15 GetListOfSecretsV1
eval_tap 0 15 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 16 SaveSecretV1
eval_tap 0 16 'SaveSecretV1 # SKIP deprecated' test.out

#- 17 UpdateSecretV1
eval_tap 0 17 'UpdateSecretV1 # SKIP deprecated' test.out

#- 18 DeleteSecretV1
eval_tap 0 18 'DeleteSecretV1 # SKIP deprecated' test.out

#- 19 StartAppV1
eval_tap 0 19 'StartAppV1 # SKIP deprecated' test.out

#- 20 StopAppV1
eval_tap 0 20 'StopAppV1 # SKIP deprecated' test.out

#- 21 GetListOfVariablesV1
eval_tap 0 21 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 22 SaveVariableV1
eval_tap 0 22 'SaveVariableV1 # SKIP deprecated' test.out

#- 23 UpdateVariableV1
eval_tap 0 23 'UpdateVariableV1 # SKIP deprecated' test.out

#- 24 DeleteVariableV1
eval_tap 0 24 'DeleteVariableV1 # SKIP deprecated' test.out

#- 25 GetListOfDeploymentV1
eval_tap 0 25 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 26 GetDeploymentV1
eval_tap 0 26 'GetDeploymentV1 # SKIP deprecated' test.out

#- 27 DeleteDeploymentV1
eval_tap 0 27 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 28 GetExtendFile
samples/cli/sample-apps Csm getExtendFile \
    --filePath 'mZspS61wBqdjJNTL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetExtendFile' test.out

#- 29 PublicGetMessages
samples/cli/sample-apps Csm publicGetMessages \
    > test.out 2>&1
eval_tap $? 29 'PublicGetMessages' test.out

#- 30 GetAppListV2
samples/cli/sample-apps Csm getAppListV2 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '71' \
    --body '{"appNames": ["CkEtmGS5rGnzLLPM", "7MC3lIRNcASU7Hn1", "nk5eT7OCsk2q1cdX"], "appStatuses": ["ZJTfbUb5bvIkMBYU", "6NhzGIXasImobIDx", "G3s3MYn0uHGtREny"], "fuzzyAppName": "E8bH6XhO1jGJX7LM", "scenario": "B3rRCfyA3qeEA1pC"}' \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'SjsrEFbuwFlyDWla' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app '8J60Na18x2rwda7W' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 39}, "cpu": {"requestCPU": 86}, "description": "U8rWX6dPliYyMXuN", "memory": {"requestMemory": 63}, "replica": {"maxReplica": 47, "minReplica": 2}, "scenario": "cg7jwYaNc2gHrUsj", "vmSharingConfiguration": "1sJFAi94u11wz96i"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateAppV2' test.out

#- 33 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'ODsOTcee4PvuDn7H' \
    --namespace $AB_NAMESPACE \
    --forced 'CQC1cHLWCtUZIIv9' \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'cXakZdkR1oojMk7g' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fPdVCpi4uoih6DgY"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
samples/cli/sample-apps Csm applyAppConfigV2 \
    --app 'QphT48jcfxTQFsRL' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 39}, "cpu": {"requestCPU": 24}, "description": "ZnqDcm2SGuCgSCGR", "memory": {"requestMemory": 31}, "permissions": [{"action": 60, "resource": "eNgjc574QkQhIlfS"}, {"action": 40, "resource": "ytQlhSNFmCrmqC6W"}, {"action": 13, "resource": "bi3ZfDCHyzJRRlWF"}], "replica": {"maxReplica": 65, "minReplica": 46}, "scenario": "vO7kHcZY8nykjHqY", "secrets": [{"name": "hWj7OU1VTpVLv7oR", "value": "2dev3Wus7HDqqT3m"}, {"name": "tvM7oWcwoEoBQTbM", "value": "Qe32kuZJKqPnx59U"}, {"name": "nu2YK3pi2Epmitjx", "value": "CE10G4vt1QmJUFkN"}], "variables": [{"name": "d12OdV5MmEn2EW9J", "value": "ugqT8K9tW03DSbLZ"}, {"name": "Zm3fT9XBKRH9YUR6", "value": "ZmaDQRL7vQRTf8Jh"}, {"name": "G4dntdtKYDFSTZlc", "value": "VUOFLQ60QurzpTXf"}], "vmSharingConfiguration": "DUPvQPt8OF2jLsdN"}' \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'kcqD5UFkMsxrfrAk' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["tMoXjgpOCEhmSWbk", "p2KEshynTGk2Lg9n", "3zx9AV9p3TsuC6ZB"]}' \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'eK0bO7L1qicA2HJW' \
    --namespace $AB_NAMESPACE \
    --topicName 'n6GLZYD31ZgaYtZy' \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app '0kw4qt8cr9KyltiX' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "6FtNXzIaVIx2Ts1a"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'nVG1KEtoGcY0w5CS' \
    --namespace $AB_NAMESPACE \
    --cached 'z3TKr6PDqrhdHQ9E' \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'RRkgMIoZrzXTrUQi' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["O6kEB7MWSZdpMmBU", "v804jDzF8kuXF2ws", "WjYEqRpUWQ76Vlyc"]}' \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
samples/cli/sample-apps Csm createKeyValueCredentialV2 \
    --app 'OnUd74FyFkGnKGPk' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "8kLDKtEtIg1xyHpc", "username": "LhyeUxU6Nq7pgZli"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm getIntegrationAppKeyValueClusterV2 \
    --app 'xZEBlDQXTX8qfsqu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
samples/cli/sample-apps Csm integrateAppKeyValueClusterV2 \
    --app 'O1JO4r24ZLWvNfdR' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": true}, "password": "S2BfH8PDO4WPY1NY", "resourceId": "rpDndr5egJYZMAAq", "username": "lWxgpqSqMUVuAhPr"}' \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm removeIntegrationAppKeyValueClusterV2 \
    --app 'QP4UyFT2QUJIW6hc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNewNoSQLDatabaseCredentialV2 \
    --app 'xqRkJVCB0k7k0Y79' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "password": "4VRpSRg9f3VnCH1n", "username": "f8LXSSZkYtrhI2Zp"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'guETQsUvjiIEtRpN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app '5cC172TMxy9HvXIc' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "dbName": "k5gbcD9OyEYEph4T", "password": "oOd6R0BYEtDrdMt8", "username": "FQogWrJD2COwO5dT"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app '2VN6NRRUX8ifM6tU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'CjPTjiEDGPUBU4hY' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 61}, "cpu": {"requestCPU": 75}, "memory": {"requestMemory": 12}, "replica": {"maxReplica": 17, "minReplica": 9}, "vmSharingConfiguration": "JErwZuM7oCCBKW4h"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'VU8i90Le4BeTz5Fo' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "3IS0mJpzQpBLPp7I", "preferredLimitReplica": 20, "requestReason": "WFStJiYfKzJuCe0z"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'hRjpDRJYFcAp1Rmb' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'cN8rUQ1juzoNNWBr' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "GRWn7kV5cAopKnzO", "description": "UEXb6Njy209wl96S", "source": "YjfeomZXSX1utKXv", "value": "8q8Z7NZ0MX21Vuu0"}' \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'U6TLyXzNbmii4Bhh' \
    --configId 'QsZX9QWVQbf5gERA' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BY6w2XiMtfzfs1nf", "value": "KmLJnifWSzSDnRqW"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'pYR1Bf4blLhsujzr' \
    --configId 'Glz20c80KyP2x0vl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createSQLDatabaseCredentialV2 \
    --app 'Z5Cr6SPgrjIp3hsR' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "3fYCyqYcV3ydqBUU", "username": "TOewuivAG71mrwQ2"}' \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
samples/cli/sample-apps Csm getSQLDatabaseV2 \
    --app 'hgxJ2wPw7SXUAd0f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
samples/cli/sample-apps Csm createSQLDatabaseV2 \
    --app 'T0cjm87KDgVYErdO' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptSQLSecureCredentialHandling": true}, "dbName": "tuWXMTguW86Oky86", "password": "r3zrAqEExrRWPpLs", "username": "BC5iCeDqySKkClxE"}' \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
samples/cli/sample-apps Csm deleteSQLDatabaseV2 \
    --app 'RmpqSdr4oHM8Rmpa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'TCHtebsSq0XbUpec' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'zHMnixDk029ZirlO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app '0VtChNw4MVpxHC7O' \
    --namespace $AB_NAMESPACE \
    --notificationType 'xOuCinkivS62UBpC' \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app '3mgLGqW5BugUqKhI' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "OphzbAN9Xy8sK4X3", "notificationType": {"SAz4rwRYqLLRfs6s": false, "eRlHb03r3ir0AADo": true, "GcaQXNnAvl4lxutd": true}, "userId": "2RocOhu7nM9Tufcs"}, {"emailAddress": "oIMJiox2Jib2Sr8z", "notificationType": {"haOaL3IkGgkDidWI": true, "bvUwwAknRyFNPcn9": false, "ZHw7nOUbM0q0iWu5": true}, "userId": "cfPNe8kHGTBs159z"}, {"emailAddress": "Arw6CfBwECK9GfBB", "notificationType": {"N1I8tHmEWqd6ftPs": false, "jr6qsYlXAHULtkEE": false, "vSQmOkOb0VHvCeoh": true}, "userId": "YgBg8h1j6woSs5Zt"}]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'Rau1cayrOnEoH9vE' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "d688MyLkiavva2c3", "subscribers": [{"emailAddress": "et28GowMZXIGJCp6", "userId": "3Aw5QHLJgggUPrXJ"}, {"emailAddress": "mwNCRQV9v8s5BFIm", "userId": "fOJSm3EK83tXSb7x"}, {"emailAddress": "cAqmC2Nqlxn0WZfN", "userId": "ptzxeAbTWlcN0ZLu"}]}' \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'jcEbREM4uSO05R6K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app '6ryzqZlI0LK2XoKw' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "tsHB0kvpt0vP9yzC"}' \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'syKjhK2CoTWUp2wJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'CCYhuqLHGUGoofC6' \
    --namespace $AB_NAMESPACE \
    --userId '8tRCGDRUtSqa8AfG' \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'dwtj7RHxh20reSLw' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'lOEsjpUUlfzYZjQe' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "f8qc8qyLKAehD9Pg", "description": "IsAGkUV4oUjRj3uJ", "source": "0aAc1GrglbKvpEaA", "value": "5CpOMRzbJJGBEioV"}' \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'VpDheJag4hqYfI7u' \
    --configId 'P1fywNz4baJgcwOH' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "M5RjgkCds00ZGE0q", "value": "tQPjEdNL1Rn3oIb9"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'IecOcwMG2yhW8KaI' \
    --configId 'cYYrM4BZB1VZbmSC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteVariableV2' test.out

#- 74 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'qfgmVlr1ysRF2rAs' \
    --isSubscribedByAppName 'h1BKlELAVHXTzKMz' \
    --isUnsubscribedByAppName '0I8vbBouLkb0AR6x' \
    --limit '68' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 74 'ListTopicsHandler' test.out

#- 75 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "G4HUZumd5EWE0PgW", "topicName": "pBwK7ujCbiccD6y2"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName '2w8AuDZBsm2C29uG' \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '83' \
    --body '{"appIds": ["HxQUoqAz7pFCyww6", "FF6WanUeeFMJYI77", "0mhDcOqkhfGNWBhi"], "deploymentIds": ["rS77CL0z2GORwCam", "dh0LN9j0ihfUEl4U", "Rf1JpNRAp4dnWn9p"], "statuses": ["v5MeszErJdzYkoJ6", "09yfSEJYsjwovVAA", "PGth7appX0ON2Hdg"]}' \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'YHXfmpSQeaBlWtVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'SuDdwlnWOpaoUKxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
samples/cli/sample-apps Csm getKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId '2Y5rhrj8GLZqHbxp' \
    > test.out 2>&1
eval_tap $? 80 'GetKeyValueClusterV2' test.out

#- 81 ListKeyValueClusterV2
samples/cli/sample-apps Csm listKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --refresh 'true' \
    > test.out 2>&1
eval_tap $? 81 'ListKeyValueClusterV2' test.out

#- 82 CreateKeyValueClusterV2
samples/cli/sample-apps Csm createKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"clusterName": "oRm65xwBQH2qQoJP", "maxDataStorageGB": 19, "maxECPUPerSecond": 39, "profileName": "1DOyRNEoMLDBp9Py"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateKeyValueClusterV2' test.out

#- 83 GetKeyValueClusterLimitConfigV2
samples/cli/sample-apps Csm getKeyValueClusterLimitConfigV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetKeyValueClusterLimitConfigV2' test.out

#- 84 UpdateKeyValueClusterV2
samples/cli/sample-apps Csm updateKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'nmrAdqNc3EvQY3cZ' \
    --body '{"maxDataStorageGB": 8, "maxECPUPerSecond": 28, "profileName": "MsxTBryTLcy9dXA7"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
samples/cli/sample-apps Csm deleteKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId '3z032fIzpdbLHgne' \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
samples/cli/sample-apps Csm getListIntegratedAppKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'iNmaBnAkwR28nwRK' \
    > test.out 2>&1
eval_tap $? 86 'GetListIntegratedAppKeyValueClusterV2' test.out

#- 87 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetNoSQLClusterV2' test.out

#- 88 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.14261955868756626, "minDCU": 0.6238055513461165, "profileName": "jIDwwCmLqehzB9oT"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.4865800086943911, "minDCU": 0.9308522328691905, "profileName": "QuvCGICYvW6D6OGM"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateNoSQLClusterV2' test.out

#- 90 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteNoSQLClusterV2' test.out

#- 91 StartNoSQLClusterV2
samples/cli/sample-apps Csm startNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'StartNoSQLClusterV2' test.out

#- 92 StopNoSQLClusterV2
samples/cli/sample-apps Csm stopNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'StopNoSQLClusterV2' test.out

#- 93 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetNoSQLAccessTunnelV2' test.out

#- 94 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetResourcesLimits' test.out

#- 95 GetSQLClusterV2
samples/cli/sample-apps Csm getSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetSQLClusterV2' test.out

#- 96 UpdateSQLClusterV2
samples/cli/sample-apps Csm updateSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.9409527765085541, "minACU": 0.35673690551065607, "multiAZ": true, "profileName": "SF7SJcLlIRkzmcy3"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
samples/cli/sample-apps Csm createSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.5737880856220319, "minACU": 0.668610181278827, "multiAZ": true, "profileName": "fwvKlLkpcZyFJMCV"}' \
    > test.out 2>&1
eval_tap $? 97 'CreateSQLClusterV2' test.out

#- 98 DeleteSQLClusterV2
samples/cli/sample-apps Csm deleteSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteSQLClusterV2' test.out

#- 99 StartSQLClusterV2
samples/cli/sample-apps Csm startSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'StartSQLClusterV2' test.out

#- 100 StopSQLClusterV2
samples/cli/sample-apps Csm stopSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'StopSQLClusterV2' test.out

#- 101 GetSQLAppListV2
samples/cli/sample-apps Csm getSQLAppListV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'hnJIZyYB1P3LZ6Ef' \
    --appName 'YLK43obqpodnXoSW' \
    --gameNamespace 'saoyWk37ON2YkRHj' \
    --limit '38' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId 'md3EKuHQUQgawfzS' \
    --studioName 'EonijVPEhGHbKw2P' \
    --appName 'dmzI174ByYJ5NSDb' \
    --limit '40' \
    --namespace '7uhQaxpfIYLkGR8o' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'MRuVGBcoCmALKiMH' \
    --namespace $AB_NAMESPACE \
    --notificationType 'VEJPvDMnJdzFujqa' \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app '8yQVKIWpfeumoCSh' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'VzBvNOKBNsysjL13' \
    --userId 'AxYwczWtpDSapEym' \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE