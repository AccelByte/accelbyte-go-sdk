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
echo "1..58"

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
    --app 'vb0bhvft1lpgleCe' \
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
    --limit '85' \
    --offset '31' \
    --body '{"appNames": ["EjLLeiYghKzqPN1x", "l2UnohhCcdwwmWia", "6DMyc0Oum4iNXXqh"], "appStatuses": ["B6I1AxI7eHXbo4UK", "3DXIu3FUdTYKpXxS", "IUD5PX3ORVxJegnY"], "fuzzyAppName": "Jw6rpnFphh2ptaDR", "scenario": "qqj9gOgbyNQ4idbp"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'gHKax0JxS9uvj9JT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'MITkXCuMXaH9q0b4' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 33}, "cpu": {"requestCPU": 86}, "description": "ycZhf4gSfTpkb2rG", "memory": {"requestMemory": 51}, "replica": {"maxReplica": 4, "minReplica": 67}, "scenario": "qT17cTZVoHTnzVuP", "vmSharingConfiguration": "5KJWIhrfkPBNj3s6"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'NF6NWVjBoJtx8Y1j' \
    --namespace $AB_NAMESPACE \
    --forced 'dkVY9wdkJZH8a6tu' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'rqsu16AkaSVfSIQF' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sBory0wdmYPnCfw4"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'aVQyDP0iRCwPElvQ' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "cyK38c32K67KglwD"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'thArprrQqmUzMSlY' \
    --namespace $AB_NAMESPACE \
    --cached 'U3yHh6KbUT7aadjx' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'xof2TjacZN1bA7Iu' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["jps1Mah0iv3FZEtt", "bJsPHbjBczXl1A4g", "GkGhcPbLxNPLgMkO"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'i7c1yDLfuCcPb1mX' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 73}, "cpu": {"requestCPU": 59}, "memory": {"requestMemory": 99}, "replica": {"maxReplica": 26, "minReplica": 98}, "vmSharingConfiguration": "ARsAFxv35HTSRjy2"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'mhbzETz2myjDZIIc' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "8MyqxYYoUjcJHTP7", "preferredLimitReplica": 71, "requestReason": "IdwzO7ZB8ZiLPg8w"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'BkrEP1ANAmcWyuTw' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 's7zSastlDUQfC2CC' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "psTtHGssEiDLqwSi", "description": "iNp27RuSGhcqCQK7", "source": "JaMVV0vcJbuuzqyG", "value": "HyP6RBDTCECAtoE8"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'oQfLrKdwXFoEII8M' \
    --configId 'sOX3y0QlKEdKV1IW' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nn77qcpRcIHReFaS", "value": "kezTHevg1klFeW1U"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'RL28amg9awJe93NT' \
    --configId 'OYYG0fYqs5Eo2gq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'GDZczoOd8bWt66sh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'lFyyluGvi3tkgStZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'hplCiPQkD7flxx47' \
    --namespace $AB_NAMESPACE \
    --notificationType 'ec6UKaqDKspRrdxI' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'oFR26DX7xEw0sDKC' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "xcZqQKyERctWmmq6", "notificationType": {"cRhSqS4xIC7qEznU": false, "0DF213UrkbNELazF": true, "0RD2Ple6xVZod3mK": false}, "userId": "HKEd3JPiF55hLiwU"}, {"emailAddress": "iH2kKMnocIanhhZE", "notificationType": {"uGMndL5oq1alHJtn": false, "d9xwiFIm2QzrKTA0": true, "JJQ5WyBPdWDFfKgb": false}, "userId": "tKd7yMrWFPsYEqfA"}, {"emailAddress": "up4WOMeU9YkPOlhF", "notificationType": {"m2mmCDADg2yj0p7D": true, "NkyIuL6cck2XeV0T": false, "a3DhE8uDTHPASRJo": true}, "userId": "GejRt0OcIfOvn23N"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'I7f7JhssPtssbfaj' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "eXQdVtOtC1ujFJOm", "subscribers": [{"emailAddress": "wS1IUsVN8yX83uS1", "userId": "bLKYqaA6NnPlaMp8"}, {"emailAddress": "xwxPDjGlyT29NKsB", "userId": "Va6TL0veYnAjc434"}, {"emailAddress": "4jY8knCDmyyvOjM9", "userId": "sn3P78ENQGFa5Mv8"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'OCUMaCz4pWHR1WEU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app '49qQuUe3PbZKjGUh' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "FIASdGQZZlGqLLBx"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'e6Hi5YxsuPPjiXcp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'JFjR6a6DMnNcz823' \
    --namespace $AB_NAMESPACE \
    --userId 'YeN1xi7DOTYI348z' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'HZNvrUDsxPJzI1K4' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app '3LOVyME9tAOM8Sqm' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "cbPkJtJqP5QME8J7", "description": "c3J0Kogk1UOwSigT", "source": "dt7psHxNa6Afr8sI", "value": "6wPUR4aBcYASyt2f"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'TQdmhfUgzOwuBgi1' \
    --configId '0VfWh4vGRJGRhBqJ' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "KGzg3A9D5juNHgy2", "value": "XmJwTQySlOGtJ3sC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'nCac2FzM11mvtfgl' \
    --configId 'vwCMY4QBMkA2TPqk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '41' \
    --body '{"appIds": ["JOU3hhWZx3ln1cM1", "pDTKokykMMS6bHn2", "Th0MBWUvV5HeL6Xs"], "deploymentIds": ["4772KrBujDxxJYL4", "zBfQIg86x5voPug9", "y9rizZABI8BsBk9z"], "statuses": ["DOzHPQgD1zI1zpof", "516fGkWxKNmeiRrc", "6JMHk2ehOHsyLXZU"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'b0kTnFnH6DQK3Rir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'Ki8zuOjvZvNcZneG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDeploymentV2' test.out

#- 56 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetResourcesLimits' test.out

#- 57 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'NynEBJVM1cHhkyKY' \
    --namespace $AB_NAMESPACE \
    --notificationType 'neZG6uPaJ2UDrqqm' \
    > test.out 2>&1
eval_tap $? 57 'GetNotificationSubscriberListV3' test.out

#- 58 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'itsuV8oFVNLJyHe7' \
    --namespace $AB_NAMESPACE \
    --emailAddress '3cASHyIF9B5Tm470' \
    --userId 'dcC937dz1clGugYj' \
    > test.out 2>&1
eval_tap $? 58 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE