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
    --app '0gpXBJhsqXq4xtvC' \
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
    --limit '48' \
    --offset '74' \
    --body '{"appNames": ["5Y4HOL0omYQdX2iY", "rB8GOqJCWMTYUJiT", "hMh5z6obxdZl5F1C"], "appStatuses": ["2AnFB41FX91towgz", "CkZtRkL0LAlXdj9I", "ynH7cii5OLSkKc5G"], "fuzzyAppName": "wByalUrqoTRk4F4e", "scenario": "BWOgwhClmI6MnPxy"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'F0TadZFxTVaef2WS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'BNZCJVSWyzSDys71' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 51}, "cpu": {"requestCPU": 67}, "description": "HYR4Cno1SFtdXweE", "memory": {"requestMemory": 32}, "replica": {"maxReplica": 41, "minReplica": 38}, "scenario": "6BejikY99JNPzT42", "vmSharingConfiguration": "PKPSagT3PdLjRnfi"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'St2WXRQEQNDn25NJ' \
    --namespace $AB_NAMESPACE \
    --forced '6UiLdefQ2pJdO9uK' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'KQUSfnoSwu0Ky7TK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "n8dp1TnaednDPIX4"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app '6ePxmig4857n1KND' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "0ueLeD8gXegjpo8R"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'QNI94Idbgc71BRSH' \
    --namespace $AB_NAMESPACE \
    --cached '9GhFj8p2RoCGQmzf' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'rzsXJD03MOoGQCZv' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["AETItoMOIKKNsU55", "PxqJLYXSPMxlYNCW", "LGuDsuSqFAlwVixZ"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'hfZ3VDnqgWIZXvAK' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 6}, "cpu": {"requestCPU": 48}, "memory": {"requestMemory": 29}, "replica": {"maxReplica": 18, "minReplica": 61}, "vmSharingConfiguration": "Qan5llwljpNqjvBM"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'EilEtr93lJrPbDcG' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "IQhRiqbEaI5s1vuf", "preferredLimitReplica": 0, "requestReason": "khPQgYSyMWkGZNcT"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app '9wU4cfDP5YyJpA7v' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app '62SUCcnSaVOJVc5M' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "pOLRFtTSuR0wlDAX", "description": "gZOL1orHqizrNbwG", "source": "xNQsHJce574GYpw7", "value": "nVcUOZRPAzVyL9XT"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'fQwEciV1oJwd1Zx1' \
    --configId 'BpGzKAV7TWO6ubR8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RCIdPGPrfuzpdc9y", "value": "1FNfuGySzet5txcL"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'SMbMM0DzMnu4tOKO' \
    --configId 'YOyq2SyZqqUntdZz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'W3vXE1F3Yzyw3FNS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'KECwiwco7OwGuwXJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'C9cm2uXGhy6qbJGK' \
    --namespace $AB_NAMESPACE \
    --notificationType 'ACizD5KEtD80vOwz' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'CitrfBDmK5H9xj0t' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"qLnvdqqBZdVq09lM": false, "od1YpURgUTRUa7Df": true, "DTg7f9mljlRikbGk": false}, "userId": "4BLxIy579WhRBk0r"}, {"notificationType": {"LELmmAw86bBLK6aG": true, "wgbMZNK2dBQDuFAY": true, "sblCSeOU23fN4pzO": false}, "userId": "40zp5Jso07imcgWj"}, {"notificationType": {"eorPXrpwsOlTIkJq": true, "uE8WTF40BnfCOGrs": true, "sfbWnHFltrSlfxQ7": true}, "userId": "YVJJxfDakjbE8GcD"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'Jp9dxQd0ico32UWk' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "Jp6S36rsRJW75VEC", "subscribers": [{"userId": "EDaQdhejzw7keFUP"}, {"userId": "FkQd2L00u2wMWZow"}, {"userId": "7BxvYkZTRuDgGv8w"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 's8NH3ShLCzeVsC0W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'q0TksGWtW3gG0qng' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "spTwLmyyHxtYKs5g"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'Mqjc9xmza1Mtanbj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'uFZGZ2h1WFxnOLPu' \
    --namespace $AB_NAMESPACE \
    --userId 'SClyJIJIlKD71krK' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'QHZyQAp3SMRP6DWC' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'LxaLLOkKZnC7TYJP' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "ohusuBOFE60XCi70", "description": "C1jHkmfHGhZfRjyN", "source": "mWfQSYqfaoQ2HnBY", "value": "CkNe0mwdjH1iqs9K"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'NS1hTZF7AgnYpGi9' \
    --configId 'heqmlElj2cd8XsXl' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "sSr6RhCPmxhtRWed", "value": "ogWktd80DcX00lqc"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 's1Y0uoGY3kT67RKR' \
    --configId 'HErtf44uQ8voUKAF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '85' \
    --body '{"appIds": ["IkPMJgezls2r99tI", "HYn1JKR6WS0O2ksW", "YtO3V1U953LXNCAt"], "deploymentIds": ["QxIex8oXcB0XU3Rc", "7NcKZxr3riW7sF7x", "RSlHH6OA2yLePTw9"], "statuses": ["8xHlLFg1dDKv72DV", "gjO7V5tiQOxMbmHY", "4o1O1SgWWBw2I8qI"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId '0510xWQJOR2URaJz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId '3r3Ag0huRZzIbtIx' \
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