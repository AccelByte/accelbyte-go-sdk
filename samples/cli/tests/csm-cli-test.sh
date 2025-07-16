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
    --app 'Yo9Py0oXjFpw2clG' \
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
    --offset '54' \
    --body '{"appNames": ["Q9LEqBIG9Pzx8hkz", "Ne5Shyg25XmUPruQ", "9YgemXwmdJXgFPzp"], "appStatuses": ["rhcWsKY68D1dbVkz", "a6mEO0vY4YPIpqXy", "d49FavTFVxT8kEw5"], "fuzzyAppName": "vpKe5RUiFHuvq87W", "scenario": "rwZJHRPYiDHDrUNh"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'Io0rdxwegoPutbgL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'hZDeATXByCCnsynZ' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 38}, "cpu": {"requestCPU": 64}, "description": "EyOHmE7n8T9hctPp", "memory": {"requestMemory": 74}, "replica": {"maxReplica": 28, "minReplica": 11}, "scenario": "yylSeXk8dsMyJ5TV", "vmSharingConfiguration": "4FyapmAu7jBvPC4r"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'poIpmVZvfQDYhA9M' \
    --namespace $AB_NAMESPACE \
    --forced 'C3esuci1nFlNZA7J' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '1cU49rAFlV5DxdF8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bta6xeHgEJ2TcM8P"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'Dqlfw8ZqP5RhrPKA' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "ljvKMJ3iqdsfn3cw"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'rM609MK2sDMuBLx3' \
    --namespace $AB_NAMESPACE \
    --cached 'Hh2EfAd4S1U2utzF' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'XJcAOPeaY3rLm8nc' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["Cw19QEgmfr4JuiFJ", "ClEkj6PZkVzCJX7a", "ZsDZ3ADDslw7cbS4"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'lZGZ0WqRdDqnkBrc' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 81}, "cpu": {"requestCPU": 67}, "memory": {"requestMemory": 25}, "replica": {"maxReplica": 71, "minReplica": 80}, "vmSharingConfiguration": "g21FTZKLXU6hrHws"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'BnrIXLVQiLWJVwGD' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "doSpKeq8wgEmNMB2", "preferredLimitReplica": 95, "requestReason": "5ft3UC85e6QFnrFZ"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app '3JsErVMyCnR8YQUa' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'PcbE06PN8GUo2b2R' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "kkJ3zncYu4SCOeWp", "description": "XzMtmjOmuuKtg82z", "source": "ZpI8MAzKmhxqBKG4", "value": "v5FixFioT3lu38MQ"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'dDlbjjMZvszkH8bh' \
    --configId '0BvfBfxxNO8d9nAY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Wo44ijgRbQFrCvJw", "value": "GGl1JhMqnNFBKhgc"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'Dfdw8p1Izk3v2otN' \
    --configId 'D7oWjg3CQ83iDON8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'k2CUxHNvrnXgojmC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'pniLe8pxRkgHuykj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'AgNBjNvhbLPiXsiv' \
    --namespace $AB_NAMESPACE \
    --notificationType 'Yc83JxZCuq4JXv8Y' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'q1pi4BAdjBQyi2GV' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "9KLTwJiPe6qcioWA", "notificationType": {"joHo0KuNJGuY2TLB": false, "ejNMF5OtObboxSr0": false, "R3fysdsxbKW47y5j": false}, "userId": "jRfbAJPicAUY431O"}, {"emailAddress": "DlaQPjqKMATTE7fp", "notificationType": {"ncc5qIwLE7hgkjeL": true, "gHlwh95qtTz2tT9J": true, "CcEtltrJZwuB56ij": true}, "userId": "PBTdf0FGWDs0a9Hy"}, {"emailAddress": "ATFe1oINVtAs6qkW", "notificationType": {"mdJZTZAhWtWBHUbY": false, "ZB4uS1WUvKEoZiwj": false, "iPOLSu1PKE0lVV4j": false}, "userId": "PouALwl3zBMh70kc"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app '2bd6wjWYVovyZBOT' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "Vd5kwoaeCydi32Rq", "subscribers": [{"emailAddress": "ybZKVfoelltv1CGO", "userId": "qn9SVgNFXtLTGfv1"}, {"emailAddress": "NSvSCpi3VLyTIZls", "userId": "04NXFxKn1Bxurpcu"}, {"emailAddress": "Ap7stQtwY65eE6pu", "userId": "A3IHgRmeaLxghpDj"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'XbCjDDjrdDcetU7s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'QiuqTfJWlh0K1czg' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "6HPex8q01bzaa3rR"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'IHtBAzBeKGjGHlSR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app '2o9lCHEjoyrJx2rK' \
    --namespace $AB_NAMESPACE \
    --userId '860gH0hqKZXxidZV' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'XC9bL56nrZm7BApE' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'lIcqo83Jbp5O8gtg' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "0WeVq3MNCSbL5vrk", "description": "URKBjQnAdVKq0rAj", "source": "EnPv4IGeOdxlScQA", "value": "ZfuFOZeAQsgybv4a"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'lelho4AFlmENIXt3' \
    --configId 'sr2RD4tubChnxUtR' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "hZxLh7q2xoUh0coq", "value": "bVBhRkLE5PsZ5AiJ"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'a4xDys3XuZTd4z0A' \
    --configId 'c2MkWRP8gRUgR3bL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '50' \
    --body '{"appIds": ["Iitub7HbLIQARbM9", "smcbYrLZSPovrFNA", "4bkNbsKsOK3uK4nU"], "deploymentIds": ["1L86Gl6O0CWDyAAP", "KS3oowXgjwEiRRz1", "Coamcwr5sWy50B0E"], "statuses": ["uzR0vkIPIGhyenxt", "no5Ul7jtmkhHIpJf", "kYoY6XC1dbHwFTj5"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'OXakXOuAqolGdQKq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'cKFLO9XbCQZGKMal' \
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
    --app 'mYJoCstUuqll70Yd' \
    --namespace $AB_NAMESPACE \
    --notificationType 'RjFgJx3V8FRCfsFU' \
    > test.out 2>&1
eval_tap $? 57 'GetNotificationSubscriberListV3' test.out

#- 58 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'HtklwqMzlhnJsapM' \
    --namespace $AB_NAMESPACE \
    --emailAddress '9ub9AlwoK0tSy4cS' \
    --userId 'Q8WwwicwR1lTYFYN' \
    > test.out 2>&1
eval_tap $? 58 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE