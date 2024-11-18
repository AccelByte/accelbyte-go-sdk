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
    --app 'b8uDhkgJgBQYMiFy' \
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
    --limit '94' \
    --offset '62' \
    --body '{"appNames": ["mrgkr3bn2vairOSU", "1CeHzMKjNi4NjxVE", "oJm7pzijD1ijNgqN"], "appStatuses": ["sMhIKezhB14rOeMq", "dw2pCzBsnKVv1U9l", "jRC0SDi9XUKBgIYT"], "fuzzyAppName": "Zshm4YFKuK0S64oW", "scenario": "BDpsN6Zz0hwtzvlV"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'QmnzyVP2CoFRxxrN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'aKmPbGyqzH3wtiqJ' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 42}, "cpu": {"requestCPU": 29}, "description": "p31Dbg3HYC7R1OfI", "memory": {"requestMemory": 62}, "replica": {"maxReplica": 79, "minReplica": 0}, "scenario": "mdZ8ip3tuDq6IQXN"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'H0PcjU1K5nTBz4Xk' \
    --namespace $AB_NAMESPACE \
    --forced 'uQQZYVfllXJIxB0d' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '8Ajx184g633tBLYy' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WjcJc5MkSkbehXVM"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'xPUHGgYq3c7qLdv8' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "p1RBfmmVFT8xvwKV"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'VocJTNOGrIi41Bvg' \
    --namespace $AB_NAMESPACE \
    --cached 'dI6tgnU90J0pnbcP' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'Vnc8SUzK3pNAjGJg' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["1kGBU8I9wxlIpKZH", "5gBtI3CmWgshZ1dz", "IKiJLPEeFXZUjJyu"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'ukXFQqyUxgxZoUC4' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 83}, "cpu": {"requestCPU": 19}, "memory": {"requestMemory": 41}, "replica": {"maxReplica": 24, "minReplica": 55}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'xse2z5gVAu0DL0a1' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "p3feZUuhPZoIyYBO", "preferredLimitReplica": 96, "requestReason": "ny60hqTa02EdnAO2"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'h6YBMFVtG0LbUTcZ' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'AwlHkcufTeRNZGzs' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "LmuWEAPh1BYiXTB3", "description": "7TiC9nICHmhgZR7Q", "source": "88FJDeCYfG0YRcoB", "value": "dr7KZb0sbxExHSWg"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app '0BSQPF2dbPOtW1c6' \
    --configId 'IQ86Tf3tI2nsTdo7' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "IyaBzgRXsbIi10Yt", "value": "xLlUyeMhY4463EoD"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app '6JMFjDz0Iec84vHB' \
    --configId 'Xir0445Ykd1f0glQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'TCPxfousXl1niqCS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'ZF5nrOdp5GpyrdNR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'qoZ82nq7QSI8F9et' \
    --namespace $AB_NAMESPACE \
    --notificationType 'AQ1H0XiovKsfbkZV' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'CkvkVKUzn3G9ECcz' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"plnn9zyRZQVtRrCg": true, "2ZFocIXMBoLzBUVR": true, "FORpcmguFeWkb6zW": false}, "userId": "KUEEjLkxr6whpd8G"}, {"notificationType": {"t6ksuOOnkH1otMVT": true, "DuufvCz67uA6N1cF": false, "qPSILdi1cjK7411r": true}, "userId": "JRTyPDwjQfejryJb"}, {"notificationType": {"iKG15qFxSh3YgBi9": true, "99K6Qfiv66B8SXiQ": false, "SvXGC2Ds6SOU4By1": true}, "userId": "Z2Wz8QpseiIKIof6"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app '6GQFdaT8kMNLVL7C' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "pyNqBVHvjMMmDmLU", "subscribers": [{"userId": "UjDwbELGBT0rKqRM"}, {"userId": "vdtb551CPtHdKGWH"}, {"userId": "lZJZ92gxEUv570sL"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'qJF2QhL5uvAFR36X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'LYY3LUZAEzfJAGnL' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "zISzmmMAyCRZS0pP"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'Di4iaX39P1913LqF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'ycybgVzIIQAncq3L' \
    --namespace $AB_NAMESPACE \
    --userId 'jQF8K0z8pbeovaTG' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'fQu4ra7wDEBnGsiM' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'NGQADPiNTL6IK5Nw' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "UYbR3S33ca0fi7C0", "description": "0FLiLMXEu94dasey", "source": "LlSICOet7ABQEprv", "value": "2aOEkqVjVFkkmdAC"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'i3yEncVUvuK4VbdE' \
    --configId 'xwCvXiOpeDVIXzFZ' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "s7ffSHkMBxmOAnFD", "value": "ycjfefegKnPGYkDO"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'SMu5ZQQHDAGnWnYb' \
    --configId 'EwyDSJcOpEbiMaED' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '71' \
    --body '{"appIds": ["cDyELmzn84XsgSTT", "pgm0ZLdq15weUOBZ", "p6jKBnJeMmToC3R6"], "deploymentIds": ["QKbgrYsmDfPiU7dq", "2RuCXIPv7CxY5N8i", "tB08HKZ2So1oPo9O"], "statuses": ["YSdrmGBdVcr0PTgS", "MHukGDWbLk36onY2", "6E2jsvLA5cYqQRhJ"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'diMbKLGeCujHtHra' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'gvSPa65vLbhEpB5A' \
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