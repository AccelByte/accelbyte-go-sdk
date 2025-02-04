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
    --app '0fA2rrfzetaaWdLd' \
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
    --limit '31' \
    --offset '80' \
    --body '{"appNames": ["CzyXphwMmkICB2tx", "sGpdqQxoI5awAtIu", "WbLQ9u3J2cILaQkA"], "appStatuses": ["Qj7zpyIyglDAgLbG", "93w4MHgHvlHLKeAq", "JNNqliIFTHoTAk7s"], "fuzzyAppName": "xbVDzo3zBxUKY70P", "scenario": "uNCAv25Ydjb5dvHe"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'q4iCl0rupAg2y5dD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'b9Gi6NX6E7gYeMCi' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 87}, "cpu": {"requestCPU": 6}, "description": "HcRcNn9UljG3cHvZ", "memory": {"requestMemory": 35}, "replica": {"maxReplica": 72, "minReplica": 44}, "scenario": "m46w9BBdS8zKHgEb", "vmSharingConfiguration": "TMlrUhaeSImeOm5I"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'kXIQcDgSnEtWSqQl' \
    --namespace $AB_NAMESPACE \
    --forced 'EAMzoqqNogHcAp5S' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'Agskz2k8yWYaGeYA' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YIrAFCPAIM6mRqYP"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'Fh1KhMur2be9kIuB' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "htjR75ehM5HFX8AT"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'tzvuojx48oQcZDbe' \
    --namespace $AB_NAMESPACE \
    --cached 'bfHUhHdsmqBpEVI2' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'EKdSLEcE4mgJkT46' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["TCL82QXvtkfVyX2h", "nCG4q9oUzjPfJN16", "OtoErkdFXwPXW06d"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'EGwSq61uWRLySYkv' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 68}, "cpu": {"requestCPU": 79}, "memory": {"requestMemory": 96}, "replica": {"maxReplica": 72, "minReplica": 61}, "vmSharingConfiguration": "KOnMcXAzGzF2w2Rg"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'Nb1Y9SrgF6Udt5fa' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "FgjQypDTEL1N8hJQ", "preferredLimitReplica": 82, "requestReason": "Jjdqdg8jyTEOJFVv"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'V1Wt9w5noPHsuN0a' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'ysmJW2AOPalOxnfS' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "Je3kjXf1lclfAkm6", "description": "oq6VrQprZGAqyoGL", "source": "PnCTs2FziUBxIwVb", "value": "Hti12zPQMKLx7Hzx"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'H9JMwaI18BijAbaC' \
    --configId 'CEKGgFABCUbqoYdZ' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "WkCH8XiiXCRpISFg", "value": "KA13npRCsnUrSqSG"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'ocEkmp7w2xVU1tUr' \
    --configId 'wrjikq89UVUroi53' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'uCPcEvBKyo6BklOf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'xWlP9kRXyQjd1WUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'kntvQhtkg0oAzTPR' \
    --namespace $AB_NAMESPACE \
    --notificationType '4c0VvXORn9zzlVD1' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'Qthbw2bzhTCIeJgx' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"TA433fLUclPAVT1J": false, "ARxqXfyfrP7dnUkv": false, "xZpkiWURw6DOHSTx": false}, "userId": "rReRBJ1iXUAA6evE"}, {"notificationType": {"M9fjYCaTe3rMhWI4": true, "9bUAvKjF6ZgRkJKG": false, "NFFFSUSrIsydrAQn": false}, "userId": "WiuQg70k5cBEwxmw"}, {"notificationType": {"iiUr40av38IutNZD": true, "JSNgKwnf3iJzNAdx": false, "AIvhir6IxaOE1uSQ": true}, "userId": "E8VbRCGeuSeay41Y"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'AkcjCI4fqtigpeME' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "9SLUaENSEX6KMF4C", "subscribers": [{"userId": "3GHQP8t1jo9eHo9z"}, {"userId": "cSIJJ9BpSSTOcT0b"}, {"userId": "fWtXnsvyJ1rxeRgh"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'ZKICXxibOIEigbBR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app '0z93gBZuPoSqHx2H' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "zGMq4rXI4R6331Uu"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'nKAIyNVD7cUHyWjF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'NGQ6el07Sf9CoGJ2' \
    --namespace $AB_NAMESPACE \
    --userId '4Peoo72fadOXDDb6' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'F49Id4QTfzJqMlgi' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'aYvkBJlAQ9TAElzA' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "wNoMiWfGSP04cqio", "description": "TjmMkjNRikP7sL68", "source": "LUaZmSpwoVuZthnS", "value": "i4l2KOSzGOVax0bU"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'iQ9sc1Oxb9Rzcfbx' \
    --configId 'rjIxXkcZI2RC10gb' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "qWwffX7fzhbtI4jf", "value": "A8swcOCsnvxd4S52"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'fYoqxeaNZgcsQu6w' \
    --configId 'R28MKjGNJw8PaFeO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '67' \
    --body '{"appIds": ["hggZnZgJNYLmhLix", "BWyyCohVY75KREHs", "Xx3NaskNDGRSRx10"], "deploymentIds": ["6nObiwDbcYfc3MGO", "Pr5sRtAKulPU7Pb0", "KvLOHyVFsgWdwQrt"], "statuses": ["QNF1q9pBoNHKS2iD", "hvKAORoroQcpYa1F", "nbsPzplZLkgpB1Ab"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'yYq0VPlvaica7l21' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'KpxrCFOeoyIhmiAI' \
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