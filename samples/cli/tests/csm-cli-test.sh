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
echo "1..75"

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
    --app 'fFmsE7eHerCSY04G' \
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
    --limit '29' \
    --offset '86' \
    --body '{"appNames": ["xtSV8AjcWYKqNZ9h", "xXvxYPy45DpwvxtT", "3BBdWNHJUm1QdaRf"], "appStatuses": ["Re3EOwFzoS8ktlah", "QWdWroPoNKMQpqWE", "g3NgpcaNVu9s6xte"], "fuzzyAppName": "2owwczpraNMMOkfu", "scenario": "7219fC4q5uKTjX3L"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'V8aENPpSP7JmLUtR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'AAbNrFO9FZ4nACHa' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 94}, "cpu": {"requestCPU": 20}, "description": "10ruSw4FpdGWApaa", "memory": {"requestMemory": 72}, "replica": {"maxReplica": 25, "minReplica": 72}, "scenario": "IjjP3d99nGca1kVj", "vmSharingConfiguration": "YHPJVRNLSMp2EZxm"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'IdKNBD4YsOsxaZVQ' \
    --namespace $AB_NAMESPACE \
    --forced 'sXU1195zT7qV6Q1i' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'iM5yzSCKhu1FzAXK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LlsPyC6WedwXKzmG"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'pnxWjFLVOU2xFefV' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["gNwWXQ7URhN1Sht3", "ovaaQIUJmjbsslPH", "YiBjojbdXi2MvbfS"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'BYQE9jZN99vxuo9o' \
    --namespace $AB_NAMESPACE \
    --topicName 'HJw2sJEi7w7YNMmP' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'g6xuNT6BUlmBNd28' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "WurqtiOxLCEJZ1vo"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'ogIU2mmcyosv9iCQ' \
    --namespace $AB_NAMESPACE \
    --cached 'Dr8Wl694Gm52PzWH' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'TLWFkYZlIxaG6PqB' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["bAm4Q7ohMJZkKvDL", "vBd3QdCtKzTfNBkw", "D4Zndk1e2HYOw1mO"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'rk8DImm6op7jyNzd' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "wbxaxH0P1q65hhlF", "username": "bDFDof59NJWA44Aq"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'ViYdT1sYmMusMUmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'mJrcX5EUXnitQytN' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "3Loz8xbr0lKJ9bgs", "password": "tFmFNGRmAJa1vlGG", "username": "xc4VoEd3UIMGCTgd"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'A1PyZsGCmncLXR0u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '1XaqG494rHIyZkru' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 91}, "cpu": {"requestCPU": 60}, "memory": {"requestMemory": 54}, "replica": {"maxReplica": 43, "minReplica": 64}, "vmSharingConfiguration": "mCs3IWVrXhkfzeGh"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app '0T6eHKaCVa5lhCHp' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "0WIA869FnIw1QarX", "preferredLimitReplica": 93, "requestReason": "bBkhuCdKaByCVJHY"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app '6t1jqUpuuUkPpxOC' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'Deq6x2cui5KS944a' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "uzMSJOIoOhC8BAP5", "description": "WCjS9T0453G595fP", "source": "YA7SDl8cXr5ChakN", "value": "v8VKq6puKP7jPY3c"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'mmLiPsDmv7oi82pG' \
    --configId 'IkJJYvamK9BZUki2' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YQ5mjs4AFJRy1hOo", "value": "3jugpXB3KT6B1ASz"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'v9bG23ZNJKVUGAnO' \
    --configId '4yOZgNVuZcC1891e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'ZcpFOi3CoZxnFci7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'Nsx0xF10IHKaanyM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'mY9LYmTy6wiM4e3E' \
    --namespace $AB_NAMESPACE \
    --notificationType 'UvvTcxVpbQC71gL8' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'oL9GaIymTF3XGtKq' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "QNJzZJtPCTCyCjsJ", "notificationType": {"9UNYa8P8VRPGfy3x": true, "Xlj52U85dEZd7tUy": false, "KHWr7dKQCGoMql1b": false}, "userId": "i1ACSRrPAqBZCsxm"}, {"emailAddress": "L6rPA6ev2xxiNjsh", "notificationType": {"BDyn3k5G273Pxpe2": false, "1NkeuS2Xr8SuZEYg": false, "aPnzqAycdJHGLmEn": false}, "userId": "yxZfkyKfPFxf96eS"}, {"emailAddress": "q84zpwoFu5riqQRr", "notificationType": {"n4y5KAGtzEJddtSZ": true, "asvjkzWrifzLUuI3": false, "LFASi8LiPPG3mnQz": true}, "userId": "OsBOkTbpdt27DCaM"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'qlhdGhMZVbh0F7Z3' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "krFWZUvWwH6dmYFr", "subscribers": [{"emailAddress": "4qtYhIurCsFqiLnm", "userId": "j6qY8dihIuwDhB6k"}, {"emailAddress": "RDFpXuhmbosfDdFx", "userId": "dB5Wz9h1f26VfaGS"}, {"emailAddress": "y8LxkDgbV9ptXKg4", "userId": "hVl4vhTTxjkb3Zi6"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'HNzGoREZdN7EtHTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'm2bD3josnZGLpfyy' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "IULzHL8sUPnfQgab"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'IPjwgOQxV0mMmAx6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'oyMeJ4nbceiLC2yF' \
    --namespace $AB_NAMESPACE \
    --userId 'eCnaC7r01GnDSkGO' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app '64FAanr42n7x2TB5' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app '6V36W5tNmQKSw0bn' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "HZFAfSg38g5zy01v", "description": "zUOvOpdhgeTnKrEu", "source": "nZhe50RlsVbiCfzS", "value": "KD7N12r4RWY6EYH2"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'Z0JB9pitUPq20hRa' \
    --configId 'zch97CVz3tKZSBlX' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "X3su3NKk3F2bXJfT", "value": "yY7gIvBGsE1Q2Y8J"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app '1IDGsYFmo1DYLoho' \
    --configId '0cYkLdaEKDTsOEYf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'jOKgXL9BrsGy4yle' \
    --isSubscribedByAppName 'YYFNLRkXGxJgdwL6' \
    --isUnsubscribedByAppName '3ljvISCYxhFVfmiN' \
    --limit '18' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BkDZn99RVNb1QgZ4", "topicName": "JIKCDbwIxbjE3K73"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName '4soFV3dK4IojLktG' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '98' \
    --body '{"appIds": ["uymNVAX7oeXum75N", "Mkihvk3vyQDnDqLN", "qrUzf4m6670JIJaE"], "deploymentIds": ["EbYpszSC6cIIUk81", "hr1E9nAEp39D8znO", "aS4cDRALDVv71Wzj"], "statuses": ["dhuNUCKhso8YwG20", "HngGhAo4TB7X83Es", "2Bh6Aks9esxzuSeT"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'xY9QiNqQ8uf62UFZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'D5vuHPvXm7uvvdQ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeleteDeploymentV2' test.out

#- 65 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetNoSQLClusterV2' test.out

#- 66 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.6257388033906403, "minDCU": 0.49204996274269175, "profileName": "Iuogb7gk40bKvxO9"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.7965016145245667, "minDCU": 0.6786113135450248, "profileName": "9CCRBqBEf6QaVlQN"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateNoSQLClusterV2' test.out

#- 68 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteNoSQLClusterV2' test.out

#- 69 StartNoSQLClusterV2
samples/cli/sample-apps Csm startNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'StartNoSQLClusterV2' test.out

#- 70 StopNoSQLClusterV2
samples/cli/sample-apps Csm stopNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'StopNoSQLClusterV2' test.out

#- 71 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetNoSQLAccessTunnelV2' test.out

#- 72 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetResourcesLimits' test.out

#- 73 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId 's3Ro5REVfcucmVWs' \
    --studioName '9A2pQj3k25QxGdA9' \
    --appName 'R2IBYjjoSpNaTKpY' \
    --limit '39' \
    --namespace 'DWiXW1p9oMV27QRO' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 73 'GetNoSQLAppListV2' test.out

#- 74 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'LSUX3BbGYp49K8Lv' \
    --namespace $AB_NAMESPACE \
    --notificationType '7mJF2hl1EWfdQepl' \
    > test.out 2>&1
eval_tap $? 74 'GetNotificationSubscriberListV3' test.out

#- 75 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'sqPAEFBlzv3TA9rP' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'g50iCjfqCNTvzAQ3' \
    --userId 'XrVfXe6xxOM49Wz7' \
    > test.out 2>&1
eval_tap $? 75 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE