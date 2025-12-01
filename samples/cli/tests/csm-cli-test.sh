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
echo "1..74"

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
    --app 'tCLgWYdjnw74EBGO' \
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
    --limit '1' \
    --offset '25' \
    --body '{"appNames": ["J7U8rxRqBnReciWn", "qqHX3gWyNHRhGiWk", "8OINHnH6RgAbmA4o"], "appStatuses": ["rvGyuCYkTYWcda6W", "bsvdKmR8bZF1qzUG", "OJZNFlyhTXUNEWfD"], "fuzzyAppName": "PSHa2WAygL4JAQ3B", "scenario": "DdOX5RXv7uRZJFqa"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'bOheNjQDf5SbWlL2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'ApKUZYgrc6WX2J0t' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 3}, "cpu": {"requestCPU": 63}, "description": "s4Nvdtz5d9PFNqNi", "memory": {"requestMemory": 71}, "replica": {"maxReplica": 15, "minReplica": 44}, "scenario": "Cvbr9kNMlevg9yUq", "vmSharingConfiguration": "ca6G4kWQ2RekaDFp"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'idEBc8El6qPHXZ5z' \
    --namespace $AB_NAMESPACE \
    --forced 'BwcdLpxkGKoG9zBw' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'cANnnZiZonN3PH9M' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tGDi2zRJbYkslFYZ"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'm4fetFbMWmmjJaMi' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["wNUgWyhcOq7ZdKXd", "QBJ3uD2km52S9Oz9", "aGMZMGE092nmzolh"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'letH3We0hU8L0p5P' \
    --namespace $AB_NAMESPACE \
    --topicName 'DglEDAJynSZZ0WDL' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'A5R1cuq2DsUgQrFK' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "cSlFUOgVNGhTY95w"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app '4F37wNiYVjrzCu5o' \
    --namespace $AB_NAMESPACE \
    --cached 'iRmUUDf0YvJF7Z00' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app '8ftCBrpWAzIixUXZ' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["wkc1sHH7FMQqmLQb", "rLpGeJk7j1ilLUQo", "WKMbkx2h6DsykHC2"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'AFy04XWmP3m3dDSo' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "qFqUZ8oGC4rP9sMi", "username": "BOBcF8LDoboSJFyo"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'MDP3hu3ud9rbrrFG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'VZKpxsfgJH51fmq5' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "426qm5ebDsqU23t1", "password": "WPjSjHHW3HQxRR86", "username": "8R4CLZT72fFbiIzZ"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'OtpHjNHvXlcScqZA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'BByBRwnUVuQvuGav' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 20}, "cpu": {"requestCPU": 88}, "memory": {"requestMemory": 21}, "replica": {"maxReplica": 4, "minReplica": 29}, "vmSharingConfiguration": "WNvtSPa4t3cieNd5"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'pSpRd9WJTLJI7yS0' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "iU0R10jCLsU7WLhD", "preferredLimitReplica": 96, "requestReason": "nSwF2QJd24aqHZw9"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'FbsehkpQl5THwDoZ' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app '8P8CtYlEkgFC49E5' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "d4SIjW2b1NuTIsfm", "description": "1OldxUWVvxCf71MV", "source": "SiXOEoMwqRg6lJYo", "value": "TnQRzkwv2jCtLSBg"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'rDp4TZuiltjXXDnI' \
    --configId 'vcoqKcxjGnbfUPFS' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UotxyY5ys2KN4vTr", "value": "rW04OoPBj6fm22Uj"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'a8Ut5XBjDapirFy6' \
    --configId 'hEUsxdRrmierDwiN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'cxSrx4YblKpcnWti' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'ET1x22uqvtKGJRTH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'd3HaY2fkdVEiuCR8' \
    --namespace $AB_NAMESPACE \
    --notificationType 'bsijMLyUk2Ji9vt2' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'VMf999BxjR4y765L' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "TQHUJyZEQVbGNBW8", "notificationType": {"aJRdIf6zTGzqEajp": false, "4T15xV6HzbpZzmq1": true, "lGJn3altYaoN4gn3": true}, "userId": "8SjpGc8bo2dTZHE2"}, {"emailAddress": "nJJvMbyFl38YPeDo", "notificationType": {"vkJBDbV1vw8FEJ1d": true, "zVkfDk1UPanb0c4l": true, "Q9R6PV9m2AjVc3JJ": false}, "userId": "8zPrEvQyGnPBvVsa"}, {"emailAddress": "aIhXpeJUXHpT981n", "notificationType": {"7ZiP1fuLHDwa3Dg4": true, "nfIr6QHJ5Pa2I6dV": false, "SYD8Szvx8wNywQL4": true}, "userId": "UkbQ9lAV7yS6wrkQ"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'VtDrcC93vvoo4qHx' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "LdtKKh0H1EG9CxNx", "subscribers": [{"emailAddress": "p9G12c7aHTZQFDT6", "userId": "KwgYKibVjXnfyPQD"}, {"emailAddress": "H0exZIZTIa4QYlg6", "userId": "cv0SplqTwuzcYkjI"}, {"emailAddress": "fHpWHuJSuLQhsLTu", "userId": "WjyfIn2KLZjapOSu"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'RZjwuIf4dD1b5iR5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'ZXPv5519uQfw4k3H' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "Fmt55dq6snf9O5HB"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'gWkAcbTmM7Hh58b8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'm5PpxOnI5Q16jjnA' \
    --namespace $AB_NAMESPACE \
    --userId 'b0C0m7i4ytxF1aFU' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'gTav29SVqzU6R5oj' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'IbktHvIRvFj0ndgM' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "YUy76W1nVCEioDhe", "description": "cQFehVCUXzmRkSl5", "source": "2a5M7uU7kBooFSoM", "value": "hTNDfBE9zktgXUm0"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'NHACbRvTBk2zWNn5' \
    --configId 'AjjPC3kRdn8aKCRI' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "AZficb6E4sQKKU6l", "value": "2kUOnKb4bmkWQ4gv"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'pcF6z7BUGdae2j6M' \
    --configId 'Twje5CJ9hTIj9SAj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'Y8k6Ie4RXbw57k6h' \
    --isSubscribedByAppName 'SJfWO3GREPqKEv3i' \
    --isUnsubscribedByAppName 'cE6bnEIJr6Y7cOkp' \
    --limit '30' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rxUYAV6EOSEkSHC2", "topicName": "LyC4vTxkoQu5kJIe"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName '2JHlcyxKOjywc0wA' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '47' \
    --body '{"appIds": ["5ceBUPAstM79KnOe", "xPySoEcF3FMRbw8l", "mAzaDpdjm3fy3342"], "deploymentIds": ["TjFjqWBpK1Il7nyp", "UG9XJaaAc28U3oXQ", "gk6eXg7WXgW6TaoU"], "statuses": ["wiFiya98t1sSABJ1", "uazplO0s45DMEVRs", "GWEHjOaG91hXZQxA"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'asfOAslyBCssnOBt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'ZGUUXUfp32NnQqQc' \
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
    --body '{"maxDCU": 0.3588560633396608, "minDCU": 0.7106363486423874, "profileName": "EMwCH2anAeySzEXu"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.95801597703774, "minDCU": 0.8744468685179193, "profileName": "XIm4pSk25Vs7mLdo"}' \
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

#- 73 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app '4x6aJ2RtqwXST45a' \
    --namespace $AB_NAMESPACE \
    --notificationType 'l8gbNpoCn4ggnlbs' \
    > test.out 2>&1
eval_tap $? 73 'GetNotificationSubscriberListV3' test.out

#- 74 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'UTdcOi1vdp9Vjwk4' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'GEnZ0ezrDS03aYmQ' \
    --userId 'yTdpaEB7MriVJUZj' \
    > test.out 2>&1
eval_tap $? 74 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE