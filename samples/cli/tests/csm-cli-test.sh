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
echo "1..108"

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
    --limit '42' \
    --name 'xjvWclmh4tMiGofu' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 2 'ListAppUI' test.out

#- 3 CreateAppUI
samples/cli/sample-apps Csm createAppUI \
    --namespace $AB_NAMESPACE \
    --body '{"name": "brOZ8cD6mtlF1a0m"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
samples/cli/sample-apps Csm deleteAppUI \
    --appUiName 'o8mcHV7OtVixQoIX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
samples/cli/sample-apps Csm uploadAppUIFile \
    --appUiName 'OHQyPY7aLqkRgcHi' \
    --namespace $AB_NAMESPACE \
    --version 'YUoMjJr9GRrCJGRr' \
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
    --app 'kEDYJSDyv7ca54ko' \
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
    --filePath '2o4mBdw95waxU8TS' \
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
    --limit '73' \
    --offset '18' \
    --body '{"appNames": ["9IDIWgIOEHQjuV1Y", "4ehIXiW6PkZF5rw1", "V9D3f8JB6Ls7KyWT"], "appStatuses": ["0qAhb7ypsN6egxF6", "5VsmnAEjUjBPHL0T", "2km8Sj2Mj5rjfmMw"], "fuzzyAppName": "jcD3qq5wFboyaDx5", "scenario": "ILhsPMnmPLVGMBLH"}' \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'bXDGydpMY0a8pigT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
eval_tap 0 32 'CreateAppV2 # SKIP deprecated' test.out

#- 33 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'BfixMFCBxeUvmmLp' \
    --namespace $AB_NAMESPACE \
    --forced 'WjI2ge1VsZ4WSabh' \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'tVICfbtt6T0MGkui' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "X13tvYnGOY6IVmLd", "enableDebugMode": true}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
samples/cli/sample-apps Csm applyAppConfigV2 \
    --app 'LMniz21cxPKgOjVG' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 94}, "cpu": {"requestCPU": 83}, "description": "brcazDVEtlEOiXVd", "memory": {"requestMemory": 75}, "permissions": [{"action": 55, "resource": "JMqVLrWf6Vcc4M8R"}, {"action": 88, "resource": "2GCQkTTEiwdyIuKA"}, {"action": 69, "resource": "hR6nAzy59UHTF1OJ"}], "replica": {"maxReplica": 41, "minReplica": 53}, "scenario": "yfyimYdkjBBnWbo8", "secrets": [{"name": "T1VUGVGhAe0uQqEd", "value": "mNxsRbOIC7PUn2CT"}, {"name": "CrvhC1wiKZTGySO9", "value": "1CdUlAXxQXlLje8P"}, {"name": "KyuWAmz1JPMpizGY", "value": "D8AyyO5ZGvKsqO30"}], "variables": [{"name": "HgtFpevTvjK4Vqep", "value": "Dn8go2IXCosyfhOx"}, {"name": "1iAxruP2Yab1tIog", "value": "3kkp37xFQeS1xMQ0"}, {"name": "RhVGPSDkJRlFk1Vf", "value": "OEm4kfcIXJ4IYLZi"}], "vmSharingConfiguration": "Zr2tfLuUP17Y8WCS"}' \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'ptNANs6EdjyCiRfw' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["a5kIkUrZCGBHaHPu", "eZQ4aY4cZXyJchvf", "89cvnmOkyFh1v3Yz"]}' \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'nbDSiNKTZgpOxFM2' \
    --namespace $AB_NAMESPACE \
    --topicName 'A5nYidHyn8n0VAj9' \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'A6HxiSIBGfLkIzIW' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "UCRklv8CdcpizH3F"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'P9WbYZkakBqtDytc' \
    --namespace $AB_NAMESPACE \
    --cached '5WKrFo8Wqfbb9bXd' \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'UlU2o3sM63COAO01' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["wP79ntib0dfx4R5A", "0ItAVh7HnhUICgUr", "YPah5XOyqVYyeBe1"]}' \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
samples/cli/sample-apps Csm createKeyValueCredentialV2 \
    --app 'UEHL94zpxExzo4vK' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "LzF5CcnzAfUxkvZV", "username": "xN3hRT7xFwPMDp0c"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm getIntegrationAppKeyValueClusterV2 \
    --app 'sSSxUEttHviNmaSh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
samples/cli/sample-apps Csm integrateAppKeyValueClusterV2 \
    --app '8UP1vSVmlxwC7idC' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": true}, "password": "T2SOE8TB9TZt5b1p", "resourceId": "4IcTWnXvDCFKQKez", "username": "JEhScS38QntQMDt6"}' \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm removeIntegrationAppKeyValueClusterV2 \
    --app 'xjBQpHWGjziZ6GoF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNewNoSQLDatabaseCredentialV2 \
    --app '46IgIQoGSJu9Lozc' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "password": "RkU1UR791NAOt0m8", "username": "V86OzeYpcdzknXcW"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'uGLpl6gMFI0MCiss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'w1omVjsU8I0fsEFT' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "dbName": "IlQIx1M0jrye1oIl", "password": "Yr6e1YhDIutsqO7F", "username": "u8OTL7LdnvIpElNa"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'qg4gK2hwxEfMLcck' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'V064ELmzagNOvkq4' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 33}, "cpu": {"requestCPU": 25}, "memory": {"requestMemory": 55}, "replica": {"maxReplica": 57, "minReplica": 80}, "vmSharingConfiguration": "KTJuQYE64rqBsg4a"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app '7SlIlpB8F5rvHnkH' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "zGyXkAkQq58bdxFt", "preferredLimitReplica": 18, "requestReason": "0nA0FE2MuvAzfJET"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'aQFZdfIY4bdPd3sC' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'I83MlUFdZMCJcXYm' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "8CAsF78PYmhTfRPK", "description": "loFoRhaV22LokaIl", "source": "Ddse1LmUZUZ9C9uj", "value": "8by3kUojCM4EJcsg"}' \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'wbZnaU8KNsoXYSJE' \
    --configId 'MEfzenD7WCZBOXFL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oxGaxmVUoTQoSPMo", "value": "tELYRuU4vLnpbepd"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'xCOJ68mpH60izyNd' \
    --configId 'o5mkGtmFkNuDOuWb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createSQLDatabaseCredentialV2 \
    --app 'cc6TDpUCUxYQCAaH' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "AJnIn6FbPZw8l11N", "username": "LYH552HQvKxu2j5p"}' \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
samples/cli/sample-apps Csm getSQLDatabaseV2 \
    --app '6C7rrPXo0D6jPSQK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
samples/cli/sample-apps Csm createSQLDatabaseV2 \
    --app '3yRf6TTGQYBifbMB' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptSQLSecureCredentialHandling": false}, "dbName": "nBG1Ou5BfbbiX1g3", "password": "KBYyZzT9ZAwFTxC3", "username": "CNKm11jAHxwsUfu3"}' \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
samples/cli/sample-apps Csm deleteSQLDatabaseV2 \
    --app '9VCmg5qE770RIjTj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'ol2orJFGsc4PfsUR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'W8TheZD5ISWuUBa2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app '9qyIxs1QMTbA1Ved' \
    --namespace $AB_NAMESPACE \
    --notificationType 'lYYrLeasfOPS2msP' \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'DkV52RRgsZmdVGBN' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "CL0dc1R7vjf94HVD", "notificationType": {"KRXT6cYQAuBsa4mq": false, "N8FQtavo6IaqY3QM": true, "V5rEaN8eiPbdhroU": true}, "userId": "ehyeQm6bG0lazl1a"}, {"emailAddress": "2OMuRzUakEan4Fjw", "notificationType": {"ChTRgANMTS4CbDQc": true, "IbesSSMeiMm65IOk": true, "f5AI5Q7xtAC0Igny": true}, "userId": "lttsPT7ufioQKvrq"}, {"emailAddress": "Ebca3NUS7ozqfZ0s", "notificationType": {"47XNWEtLPANw5Xoy": false, "2Wh6bxIdB7nR6eWB": true, "975vTOVQUh90Wlia": true}, "userId": "u9YyQwuFGT6HCxKN"}]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'alOeQ3ypU1QKTUGS' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "SG7NwR9IsC0OZ1JP", "subscribers": [{"emailAddress": "6sFSZOQQzzczRHtr", "userId": "2wRgAdEqyVN7GzQ7"}, {"emailAddress": "qmLQ8j7w3JxnuDtC", "userId": "sg5r3FzJwOczmlvp"}, {"emailAddress": "colz41jo330vQP3r", "userId": "Mu2o9Zd0jTQZB2Vo"}]}' \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'jXGhBglLy4sYsxUu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'SqWJC5pjpuZFR2vX' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "MnNK1AVdNeGv7tIk"}' \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'JG0mMLDQsf9vy6vd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'nfluk5Gte038Xqou' \
    --namespace $AB_NAMESPACE \
    --userId 'oRhtTtfZK3pUYObT' \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'iNMmozWGktxrUwQG' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'yxlKQUZIBlIvCRWR' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "3kC3Uh4OPnLhK3FX", "description": "dQOxsDtIsgSoeO2O", "source": "bMeBFmAuO3uy4M8p", "value": "VGaDVaE5faieV50O"}' \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '7v6pWmtiGDIQ7dzn' \
    --configId 'TIWDybXQYg5wYTPk' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "n3t3H1gpzLxRqWat", "value": "csnnbv1RiFKn9Ty9"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'bWDoKAHhJCNrbyFE' \
    --configId 'Sq1cFNwVwcX0RiEd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteVariableV2' test.out

#- 74 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'bWs8sUnActffqvU5' \
    --isSubscribedByAppName 'nmVO4lGzZcUvksjh' \
    --isUnsubscribedByAppName 'XT6umicuyziGe4rF' \
    --limit '91' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 74 'ListTopicsHandler' test.out

#- 75 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AScWAUAExvDmKeu2", "topicName": "uT5TigYo0GhK22tj"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'G5OOG6ikPuA6PrPQ' \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '71' \
    --body '{"appIds": ["XAvBSBoTDYWkG6EO", "tyj1wDX0LJHtpNU2", "kVzKsmwQK2dmdaZY"], "deploymentIds": ["qVoSvGMxLM5erFVH", "Min90QmJ6lcpOsTt", "aDgHTw1eszXKKCzr"], "statuses": ["wuhOfwKtohcjyWgL", "bf16S1U15kZX0Q4E", "DVrpIbVju2Nsajfm"]}' \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'eeDsyPc528joOT5A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'lzdwu9yeRbnRHSyy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
samples/cli/sample-apps Csm getKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'oGNhXkhE5zCYq33I' \
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
    --body '{"clusterName": "bC7QzASl2uQ6ZWlH", "maxDataStorageGB": 16, "maxECPUPerSecond": 74, "profileName": "rEkX8BMpVl3Hnevz"}' \
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
    --resourceId 'T5z4ckEi5yW8wznW' \
    --body '{"maxDataStorageGB": 52, "maxECPUPerSecond": 24, "profileName": "cqJ0kp9HA2RimP2A"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
samples/cli/sample-apps Csm deleteKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId '7JaLryx8t9rpNsZ0' \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
samples/cli/sample-apps Csm getListIntegratedAppKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'TRlsbGZbjPNedYvk' \
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
    --body '{"maxDCU": 0.5666724003009016, "minDCU": 0.9636404155789527, "profileName": "YME3udiVDuLsKo9Z"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.09183313415671401, "minDCU": 0.02449219213780085, "profileName": "91PHw9WCnr1osI4d"}' \
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
    --body '{"maxACU": 0.7295092760295101, "minACU": 0.2994152281716854, "multiAZ": false, "profileName": "lI13rk0ulRXRusXT"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
samples/cli/sample-apps Csm createSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.7831076537601726, "minACU": 0.7005006314876197, "multiAZ": true, "profileName": "kUKlKhXMGvugvi1e"}' \
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
    --resourceId '2kUnTQZa4ESvMyxj' \
    --appName 'w0JOieYFqnHMK3Hl' \
    --gameNamespace 'K21bkuxB9UnUlQcW' \
    --limit '33' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId '5gAiGPOpS8S2Smd7' \
    --studioName 'Y1Ow71qOCkZAC0lN' \
    --appName 'nG1raBzWWzkJhmDU' \
    --gameNamespace 'oWuKTYe3Ecsr2vzG' \
    --limit '0' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'GSoEXaBUHtZm4IEV' \
    --namespace $AB_NAMESPACE \
    --notificationType 'B8ftJev30r5wRqQi' \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'fY5u8tJ7XDBy8MBW' \
    --namespace $AB_NAMESPACE \
    --emailAddress '7OV7Dtr5B7XdIpuz' \
    --userId 'ebY854XODkZXn4yA' \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out

#- 105 GetAppDebugInfoV4
samples/cli/sample-apps Csm getAppDebugInfoV4 \
    --app 'BsVLMBEvM4t3BYrE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 105 'GetAppDebugInfoV4' test.out

#- 106 UpdateAppDebugModeV4
samples/cli/sample-apps Csm updateAppDebugModeV4 \
    --app 'qZqAbhQzIkW4EVyy' \
    --namespace $AB_NAMESPACE \
    --body '{"enableDebugMode": false}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateAppDebugModeV4' test.out

#- 107 GetAppStatusProgressV4
samples/cli/sample-apps Csm getAppStatusProgressV4 \
    --app 'Fh9hvUHLwhhQljSE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetAppStatusProgressV4' test.out

#- 108 CreateAppV5
samples/cli/sample-apps Csm createAppV5 \
    --app 'PxmHLGMkfYS9dATE' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 24}, "cpu": {"requestCPU": 8}, "description": "AW1rl3BrZksFCHHZ", "memory": {"requestMemory": 15}, "preferred_k8s_namespace": "SNdFO1fvIEAocsVp", "replica": {"maxReplica": 45, "minReplica": 69}, "scenario": "X7R2GUa9yOjF3S6g", "vmSharingConfiguration": "65IszhNreBy4U2n9"}' \
    > test.out 2>&1
eval_tap $? 108 'CreateAppV5' test.out


rm -f "tmp.dat"

exit $EXIT_CODE