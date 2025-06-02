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
    --app 'grMbHqdvDwRRi9Sm' \
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
    --limit '4' \
    --offset '13' \
    --body '{"appNames": ["E0EpnKSplgpErvlW", "86uTKfK0KgIhhWCo", "C7hE7muM4qKBxLm1"], "appStatuses": ["9xIHKQnclEtK4QIf", "x47jt3sri7ZHLErH", "pahzbeXOMfLcQD8H"], "fuzzyAppName": "34NLJRT0bquDSOt6", "scenario": "twtNPMNxhPJEy6Ww"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app '5MMRxpsr5gSHH6gE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'NBQpsTr4KjRnuqv1' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 78}, "cpu": {"requestCPU": 15}, "description": "GJXVWm9XfEwLqTtT", "memory": {"requestMemory": 39}, "replica": {"maxReplica": 9, "minReplica": 32}, "scenario": "sfNh2rZwDjyNRL4t", "vmSharingConfiguration": "eoriCYkkk0ujPzCs"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'Fd8MRD4lfLZDafRL' \
    --namespace $AB_NAMESPACE \
    --forced '04jXRPDbmByY8rJS' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'sabKp8VCrUwl6Xlq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BhU8mL4IxIZ5SZJm"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'VhUfxVK8sgTfyOYo' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "HUwDmW9CNXNV7JdB"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'pVl4SjEUrNHFqqqJ' \
    --namespace $AB_NAMESPACE \
    --cached 'pikHrQXOb63l4Eju' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'gUu0odDCp1iBY93o' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["vhYqpdN4IBZnlvmp", "N41lFcM0I3X0t5TB", "PjuWtVI9E21CYxFo"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '2zN3Ba8FGuAfjGuB' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 60}, "cpu": {"requestCPU": 6}, "memory": {"requestMemory": 53}, "replica": {"maxReplica": 49, "minReplica": 12}, "vmSharingConfiguration": "1urAucRSZZzsfMnJ"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'UYPLBoaOO7985ayL' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "jbtsUilxBT8msuPT", "preferredLimitReplica": 41, "requestReason": "hJqsUJ5PtYZRHC8z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'Oyt0Pd0oNdpKNc7O' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'KsBsHTfbT1ZqqkPW' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "jL0SJY8RJ448nOHb", "description": "ZvHWxYX8n3W7h4Yy", "source": "raI6WqK0LA67P0Pl", "value": "Mc0WR0SqrQTxCDFD"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'jhe7nWLGd5s1dbCm' \
    --configId 'gDv1LWYmxWpQZgkt' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2OFBLASwpmv7qy4I", "value": "lfGas2IlmgQ91Gg8"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'EYYfRgIG6q3wbB4P' \
    --configId 'M24zonMuGBD6xWNP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'cXOh68pVMlD33KYP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'RkhUJ0x9fGiO59Ai' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app '9E36okZLomnkqwM0' \
    --namespace $AB_NAMESPACE \
    --notificationType 'iBeVlPGLMVf8gmRS' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'NCFaNsGRovmo9Tif' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"1Ztxd4ZuVyGmuqYt": false, "XFoVSlBs6YxrMfH1": false, "PVCib24SYwcHxgO5": false}, "userId": "9EuCKQjv0HBouxGc"}, {"notificationType": {"z3OTI2vezIBOsbvP": false, "BeQQRjZMbEM4PYW1": false, "1WrqV41gIbsSRC9p": false}, "userId": "AcoIr8ibGy3m0RpL"}, {"notificationType": {"VGvKLXWqWbbGGzYW": false, "4m4AjEPl5ekPCBUC": false, "T2llyrPjlT9DOQ8V": true}, "userId": "aaMMija6f4Fzc1Oz"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app '0uv2eO2hgcBsOakR' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "s8XfGj8f9GWUpbci", "subscribers": [{"userId": "reEZ8yI0m94x28CF"}, {"userId": "Im9zfqPP7gTXKjUU"}, {"userId": "XOKCZEIuIJa5iAvu"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'QH7KqAGGvSznRQ21' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app '32g4VWoHjN2IkV6K' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "1QnoYzaCL2dh0Spp"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app '5MxaQMEw2HWUncBK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app '0MAXUiczSFAUeBiE' \
    --namespace $AB_NAMESPACE \
    --userId 'EUyCefkHwG4fLa4Y' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'W1QSTM35zsnPcQ6d' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'LDBOrYKISJe3YZBC' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "6jBg6d8G3tHi3HOd", "description": "xgK7KTJbYU19xV2D", "source": "Xx0MITLCStEx6ATj", "value": "MyTGKlr1KNZR8PkK"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '0RIL781vr1aU4nov' \
    --configId 'Dcv064wwQg5caOYQ' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "m0VQjpuJuOc9zVTF", "value": "NLq7zYthFbTpa7f4"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'o3RgmR4VAUtb6MgQ' \
    --configId '4tmR2ge2EoHmxZqh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '16' \
    --body '{"appIds": ["8EO3HJl2LmTm4HOd", "u4ncTxLpHZb73ja8", "jMuq7dMl1qsgw7D5"], "deploymentIds": ["e4OPtPgbsb4NXUGk", "wWAjRqJgdHIGOW6v", "RToLDtK2VG4kOhK0"], "statuses": ["sYnQKmeZuTZwT13w", "0DR1NDmj6YmfwqbX", "p9RSbIa5oD5Kq7VL"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'dhI9k0bI4KDPOW67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'u98rxSq2OEbpvNTD' \
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