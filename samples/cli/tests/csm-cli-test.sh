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
    --app 'xxwYDuuo7tKXefjO' \
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
    --limit '56' \
    --offset '80' \
    --body '{"appNames": ["F1hs6TLiPv8Vdmhb", "ajZxTpPxWTsQaY8H", "IqDUzoMCBqomsEBD"], "appStatuses": ["PLT6LRhqRKg1bXcc", "TKuPTxlqBwp8Vp4A", "6vei0JIQ1dtLl970"], "fuzzyAppName": "AMufdDTPKf5uOeFb", "scenario": "S6Z3Ch6k2AcCCK6N"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'SNwMSmVtYxFP4Bld' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'zYSkOwywepnARepM' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 40}, "cpu": {"requestCPU": 100}, "description": "qeIdUgNK2X6Qe9xu", "memory": {"requestMemory": 85}, "replica": {"maxReplica": 17, "minReplica": 60}, "scenario": "YT44vxaKXQy2vZJ4"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'klusAljwtZ5VaCFv' \
    --namespace $AB_NAMESPACE \
    --forced 'smVkIaUTSZJYPxxf' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'HCsSqeMCSrSpH70n' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TX6qqeVwamWPtBDI"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'Yd9p9qptDvaqEIsW' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "YLKUcH3lGPCrZyZH"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'DWsmbQCU1GhbEGZ8' \
    --namespace $AB_NAMESPACE \
    --cached 'TsbKV05S7RXZc8ZI' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'OS0c2mhtSdjZrCmu' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["0I2R6SqMn0TPP3U8", "lx9q1hhVHdQjEeNT", "aihDCveL8eO717A5"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'pdEDQOfB6vlqYuwR' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 9}, "cpu": {"requestCPU": 42}, "memory": {"requestMemory": 18}, "replica": {"maxReplica": 46, "minReplica": 79}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'OIMacNkuVPtoWnBr' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "tYzEzLgyRQagXgvC", "preferredLimitReplica": 23, "requestReason": "pv913AAxL7U6gL2D"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'GPj9IyiO5dheIoSS' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'k4CCBWjgxdmF2hue' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "4Oy4FxS13qEvncvp", "description": "SwnXIgjiyv1RWjnP", "source": "gBCQ2wYbONrHSaK8", "value": "hS0D9nzzoLKrPwB5"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'bpieqBCDjZAGI7s1' \
    --configId 'AE7a8zLef12q2MWS' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "iix2hrLmMqsU4egv", "value": "474JgOpEe1faehNI"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'SRGip8rh8802ujt1' \
    --configId '2J4QqbJ7Z5sEGREL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'H0LYElrYzD460HVD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'P5Fr9DWJ9JhaN5AG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'eYMAEefmgASLucud' \
    --namespace $AB_NAMESPACE \
    --notificationType '3WfNhv9nlhP5EYkm' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'BG2qMjnllgbf38PG' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"6fL8o7vsszYXvtwl": false, "jgkI1RnKxJAfJUcy": false, "0xsmXloD56qxYMi9": true}, "userId": "Gy9RnfZnwA2GMK5F"}, {"notificationType": {"vqxqkKBR5o6qlth7": false, "Mg3JpSSIG6L8cTUL": true, "ycWUVfC4cHHnYP1g": false}, "userId": "e7IEtyAui4tLveuD"}, {"notificationType": {"mu3wtEmXispurGH0": true, "MUlkb8iwXI1hG3Dn": false, "qWZGzQxFYEYkTW3c": false}, "userId": "cmBu0wnCJY77TE05"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'lzb3ZlOMRtlbPfO1' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "7lQFL1yIwhzVzm5A", "subscribers": [{"userId": "oWWRK8HZYtm5OchX"}, {"userId": "zV1Ibh3DX1l8n9Ff"}, {"userId": "Mirf1aenUwbFjAwU"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app '7lWCtn72zu9KASVr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'HuHsiAMK48ETquxF' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "p1kjShoAk76Tqyey"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'IkP4bYHoanIaTFUd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'nGyV5ON94YjJtaC3' \
    --namespace $AB_NAMESPACE \
    --userId 'kECDewOMX7THAeKp' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'suZyUiAh1SAHOFMK' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'Nl1ON8cNOyUkd1Zc' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "hPhouqDR7QmoPOb1", "description": "SPLxfzRs6Sz4o4BN", "source": "GBqPByGjWjLRQ4mD", "value": "8vBqChxmtWzmjwbP"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'VatPHtsnXfyeeXnP' \
    --configId 'i2Z7AMJrDOv6K9a4' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "STkU6n2WekSyZCTN", "value": "F49mDw000SlR9fcT"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'hjVulXQeGIT3N0Kg' \
    --configId 'QjShiSwWIkgUBewI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '95' \
    --body '{"appIds": ["0WDNAt1bvdHFFwR5", "DxfNS7Rlkt3jtiAE", "yoOcf5lOcaZLvdhL"], "deploymentIds": ["LzMEGWYA85slZJ7e", "5KopINYnzmCqqVw6", "DQOy1b9R0EqEfd44"], "statuses": ["BaYGcVkBcUAtxbFY", "JLtyeDjK6Lp6kjX2", "1Ksdrb2urbytJxjM"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId '7Ij9KTSBznmC4fbZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'N0GC4EOZMBo7tkIc' \
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