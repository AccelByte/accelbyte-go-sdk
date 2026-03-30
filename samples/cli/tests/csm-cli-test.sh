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
    --app 'hTpqosQcKHucChPd' \
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
    --limit '98' \
    --offset '75' \
    --body '{"appNames": ["X8x2R1buCfUYv32x", "IWyhdHm8OkVb0aNj", "RpU1CErbIY2yznnZ"], "appStatuses": ["f26ndiSZD36TyBPC", "q4cbPMqMGcCbxAiY", "4JLdVproYEdkKHc9"], "fuzzyAppName": "UnsJtBKkcUqL9T5i", "scenario": "vzOtSR2ZRaFyL1iZ"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app '3AC2m0uI2A0IePsg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'lTBHGY4AcnDoHgOs' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 97}, "cpu": {"requestCPU": 24}, "description": "OsgwASMn967elIOx", "memory": {"requestMemory": 69}, "replica": {"maxReplica": 50, "minReplica": 58}, "scenario": "U1wJtndrEfHnhNyW", "vmSharingConfiguration": "dLsX0DjaNsZPsG3r"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'hY3oWGfkmPOJ0go1' \
    --namespace $AB_NAMESPACE \
    --forced '7dh2ajzXNL7GiFKj' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'pgwi7LrfcVtK6NoM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RushVw5kmHUGZheN"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'AWY83yxJOGdTyOXv' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["djIUwEZax5zwUnw8", "phfjqbnldB0PZ4BX", "jV5vXy9YJ5bt73t4"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'eWn20oQJRqDWhtBh' \
    --namespace $AB_NAMESPACE \
    --topicName 'v1qvNB5MfWZBBDL1' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app '8koWgK66lqjqUaHi' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "afixBBB6EQ2uXBfe"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'm4E1gigS3g9sbWSh' \
    --namespace $AB_NAMESPACE \
    --cached 'QCb39gAhE9LN0Fhj' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app '5DihvbTwZDVdvVIB' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["UWvMnxzjyUkyDpHX", "xeLyfXtL4uHnkU60", "l54xndlJhWOO21Kr"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'wxMRCKSmxxeZzCcS' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "saxzGgTJV95Oouj2", "username": "DrhQhcAVsg2Ksqtq"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'qNQsEH38W2pvrnlr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'zsubRLZQG4zp0UTc' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "vi3CXVwBWhcYC5YK", "password": "wiofRkS5iDYcpUKn", "username": "a1BPGOe7hhEgxAal"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'tuS9XnuCFN7JSrEc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'FnnSwr3Tr2f27Avi' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 70}, "cpu": {"requestCPU": 45}, "memory": {"requestMemory": 96}, "replica": {"maxReplica": 60, "minReplica": 30}, "vmSharingConfiguration": "1fOVNOSopB1gJDaL"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'wSefJEnvcIm0tDoo' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "Fs509mO7t6LUTnU4", "preferredLimitReplica": 97, "requestReason": "fl8E9sjSuq0mJD0r"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'FaRwf0ZvltkdBA5E' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'ysqlHF36MDNnfVSu' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "W5neu28xvdz89Wv6", "description": "wBXnu13mRmsVgIBl", "source": "80ucXeKZ6ZxcHX3A", "value": "nolRNuCFmg80qTAh"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'mfRezpxySNg2nAq5' \
    --configId '39mUiNOjjTui9DfG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pPwONlYpzoNFN17A", "value": "hIgNVJEOnkpPRtTK"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'NiF9xssfpm39sNCB' \
    --configId 'KVIbFOsHhDROuXsG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'VGVx9KN8mEd9FbHa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'pPKlJ5PUWYsgyOOC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'F3BHFyWrTpL4yk6H' \
    --namespace $AB_NAMESPACE \
    --notificationType 'bdI13gYWSpJvR6LS' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app '5e5lDSZUVIPLZOSH' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "HCEowEIl7hpK735j", "notificationType": {"qA4RvTskvSZ4Tz5Y": false, "VGXSOFfCm2bxooQB": true, "84gC4ppnn6MDESyy": false}, "userId": "d0f1rr2GS1XOqFzY"}, {"emailAddress": "w9x6LaBGV6zKuicw", "notificationType": {"jqkC6A6fsfEpbZoz": false, "rMSTJShqkYgMMNQi": false, "jenCDvCpI8VPYncS": false}, "userId": "D2YJJ0H0FtsQ3L2Y"}, {"emailAddress": "AoFDHRLvYXRzwySJ", "notificationType": {"enu4aYAHE0gsVb8j": true, "BtITGbvHGpBP6Yjl": true, "futEpUwNgMT1Sq4x": false}, "userId": "iQs3HT8sOk13hEN3"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'rEtq4UjPzHJvVw7e' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "xFqbD7pq2UuOhE8w", "subscribers": [{"emailAddress": "j0GdMbvTF3xUwU2v", "userId": "PNCwaFntUVuMSBdn"}, {"emailAddress": "kxqQ4pXwOKkjurYl", "userId": "N9zuvnzz7rgRGUWo"}, {"emailAddress": "XOE6ltQjou2yfmtW", "userId": "y84I50AWkYO2nyuy"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'D7FqMC9Z4dAIuODl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'yyljCWoKNalNjlDp' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "4GowlZ5aB6pkZO1H"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app '9m9IPE9rDnh0KOVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'fFsPIO5GFEoCACDr' \
    --namespace $AB_NAMESPACE \
    --userId 'Eyt5GlxlCElHmMz9' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'xHSj4Y2DuQ18ZlzT' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'pmkglHzHOr7I5WV1' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "aixDW8M6433N9IXr", "description": "vxRsZGTbQVY97JjT", "source": "Bjb6g4Kvvf1OHDW0", "value": "Pt86EFNxfjA65n86"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'VU88i4RuGF7STTdx' \
    --configId 'cyiuDsJzoLHFEEb7' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "v2D5M32KtkBUy65f", "value": "rN38295oA6jhGLms"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'gWZrfC6AesDqeSj7' \
    --configId '7WGZL3dRxA0KuUMW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'ZYd2YnlnQvtZgU0E' \
    --isSubscribedByAppName 'EJYT0reRNoE7vMEG' \
    --isUnsubscribedByAppName 'KQA6M1CxHcL7B2Dt' \
    --limit '37' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JAKE59gNZ1hYKb3f", "topicName": "Fqhe6f4H0aT0VHUK"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'QWCpM7v6sqwoagwt' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '53' \
    --body '{"appIds": ["Qj6qLRYBCyAQMCK0", "ocRnkEQmdJOsGTX8", "BhSD4GVYBUW9oQPY"], "deploymentIds": ["BaAJEOXw2x6NPFmI", "lzs6sMSN3AtRm1eZ", "7TlxzuqiIr7V9hwP"], "statuses": ["B0nMiijEwbPpvkFG", "7vWm6qFQgGLrgHlF", "O2mKVwdLmJwyG5s8"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'EsLcqprK5rl2lJP0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'LQ8DGkPf7JGFV6yT' \
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
    --body '{"maxDCU": 0.37891142402257405, "minDCU": 0.23989025172420042, "profileName": "yJibRUgfeU71I6mD"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.7582743411286038, "minDCU": 0.44923036404727124, "profileName": "JJ1I8wAxafosYRy6"}' \
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
    --resourceId 'panbrZ8G4DNB2QyA' \
    --studioName 'om0c6VNJwWS63dke' \
    --appName '2eWykHjrgAxYNVvD' \
    --limit '44' \
    --namespace 'SpG69eVQr5XSS9NR' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 73 'GetNoSQLAppListV2' test.out

#- 74 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'Ag9utl8eGQNzOUgV' \
    --namespace $AB_NAMESPACE \
    --notificationType 'jFAZB2m1FJlJnyed' \
    > test.out 2>&1
eval_tap $? 74 'GetNotificationSubscriberListV3' test.out

#- 75 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'Wrohcr8OPZShAp9Q' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'NOZggDmvKQWpu7zO' \
    --userId 'fazSFoY3CWpRx7c9' \
    > test.out 2>&1
eval_tap $? 75 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE