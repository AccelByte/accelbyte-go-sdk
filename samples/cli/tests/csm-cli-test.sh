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
echo "1..56"

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
    --app 'JxO6JEvrK1j3uvGj' \
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
    --limit '73' \
    --offset '15' \
    --body '{"appNames": ["7GlcFA1080ITfnEk", "fbaP7hq9cEn6QvOR", "q8la3zEfHVtsdVmS"], "appStatuses": ["tZBfdnWthrW8EF80", "ZUmDvpVH8AFWKijX", "UJJspxUN6MM5gBOn"], "fuzzyAppName": "g9UsGBLERqY04hpg", "scenario": "JPTRWtiKz3TMGRAN"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'KpVZQKfEmyhY3U1J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'xdCgC0tvWuu0TZ4V' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 5}, "cpu": {"requestCPU": 10}, "description": "h3ZO23SI0yAEDXdx", "memory": {"requestMemory": 73}, "replica": {"maxReplica": 54, "minReplica": 48}, "scenario": "m3fuxziN4qDrIrFT", "vmSharingConfiguration": "pQArsydTUj2ERo14"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'hkvIDVBxZk78htLC' \
    --namespace $AB_NAMESPACE \
    --forced 'OfCAbPqoYzKfOGnn' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '0biHFHaDZIaqfzEY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Nyt0ytSoBjviRRaw"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'sNAulzsY8USbHqGl' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "Zm60GDhlYo71R8ip"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'OtL3S2IPq4AG9Z7s' \
    --namespace $AB_NAMESPACE \
    --cached 'FHOiccicc1Gk7ihK' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'XOcN429t7XGisJ3l' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["PZVK6MfiXdRzA2iM", "gsvbr6jWjpChKKuE", "vvmeP90UV0TDwgdy"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '0FuafK6yUAB2loos' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 66}, "cpu": {"requestCPU": 13}, "memory": {"requestMemory": 60}, "replica": {"maxReplica": 82, "minReplica": 29}, "vmSharingConfiguration": "Qg6xluvlLH9cu5AB"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'Yyqc5Gc4E8F8TZv4' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "qpXP6JSFoLjLj3uL", "preferredLimitReplica": 83, "requestReason": "uMcn68T6S556XsaV"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app '5sK08xUwT0fjgrBj' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'gn1lsgTmghkq9099' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "gZFufnTfXlQeD0b3", "description": "cZoUy3DWciLmADgP", "source": "ZUDeZxIJ1DdwmtDH", "value": "LOjQLJnK6RaeVHxW"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'CITm7jRKPBNorWlk' \
    --configId 'QnlrJ0ZP4Bjs4oaY' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "0H3kzUDSv9SSGUA8", "value": "uikVB0bJZKt55ZGN"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'OWJXBwe59uqKzgwm' \
    --configId 'gnCNNcblZhuCYYMm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'bTqmYVzRfQFEHJh4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'XAZ9UmA0QpJE1PkS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'L6sAvxmzCsmjLAxu' \
    --namespace $AB_NAMESPACE \
    --notificationType 'eLr0rlyx0cYsPq0c' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'EOo5sw8CuUCzaYD5' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"811van1botfA4dnn": true, "gTkAkGmLePlOhgAw": true, "r2GSrkMX49iicF1K": false}, "userId": "jhwuH8qozYyi7Ixu"}, {"notificationType": {"zWQaBHupyykSAY69": false, "zBiBheZCK0E8ZoTx": false, "edaruR1VgwjmONwI": true}, "userId": "H4eSYKo5Nl8dPSU8"}, {"notificationType": {"rf73qnTXq3AcVxFL": false, "vy5FQYcViv2u9Xgf": false, "T7sKr6A1CoTCzvEL": true}, "userId": "YVw9Lm2pfli1a0W8"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'QdJsoV3rg72wwbu2' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "HgpJvqQ3qsHWVoH0", "subscribers": [{"userId": "GCG9gx7aGSahCrtK"}, {"userId": "jUPcc9CZOkRIFuZY"}, {"userId": "KMcGeA4PmnlxN8cN"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'Ro2tsfuvQwUg9BsN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'aGZdCP54EnuaolkX' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "ZH45BuEQ97Dsx2ft"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'r9GL7znnmReI4HbD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'oH6OwmdA2k8PfIik' \
    --namespace $AB_NAMESPACE \
    --userId 'rZcAYm3rhuIyCYzv' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'z9vUbSKvLuyAWfgD' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'i3Is6Fm4dYERhs6x' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "qMB3sd8fbWX8I3VB", "description": "Aek5gqqpltOxjdjz", "source": "zyVYADrpfEGDaL1Z", "value": "tEzQ9p4kkmu2buYH"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'ODM7HKzH4cYHcnEY' \
    --configId 'RmpMVtmOFW0zAQ3l' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "VAyvjqihaIQSfbcr", "value": "IEztHHOaxMeIrr1O"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'S0aHqK7m3hgQ06LI' \
    --configId 'Nhosf6zuEVDH2R6h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '59' \
    --body '{"appIds": ["A3FKXA3j7GWp617K", "UhB2FtwsRXIhvEEG", "GMH4k4JdLqGG1edl"], "deploymentIds": ["NkI4D5HnIxBuZd2D", "cQprgejR1ZTCwfHR", "qNreDTxXtCucVZqM"], "statuses": ["2Y1TELpcWXlxc7iu", "txOPoABVROemEOuO", "GEProlMWDPsrKL8h"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'WjwwfAvox9GZRw6n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'FNtgG12xqlqc1pDP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDeploymentV2' test.out

#- 56 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetResourcesLimits' test.out


rm -f "tmp.dat"

exit $EXIT_CODE