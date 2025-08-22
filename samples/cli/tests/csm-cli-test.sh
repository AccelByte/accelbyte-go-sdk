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
    --app 'BBA6wQ3Bea3SBwm4' \
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
    --limit '19' \
    --offset '36' \
    --body '{"appNames": ["ApSmlBhTtFgrtIZ2", "HMwltwV8sXldCrVN", "bFbpjzoR2YVGYdUg"], "appStatuses": ["2CeeJTz1TMkSdK0E", "et9yfpENAz2dGK5m", "GEYzEQfpCVgfZXIb"], "fuzzyAppName": "4Zw5lPupV4BzSklu", "scenario": "3pnes06EA5WlGfWU"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'dEhhsUphj3x5lOEf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'spaNVIGeM0CDunpI' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 0}, "cpu": {"requestCPU": 67}, "description": "ILu46TmH5brkiFxS", "memory": {"requestMemory": 91}, "replica": {"maxReplica": 53, "minReplica": 88}, "scenario": "RGh0WyESx98mvE7N", "vmSharingConfiguration": "38AhPnHgEr22mLIm"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'mqC8ktB1OIYOlS3g' \
    --namespace $AB_NAMESPACE \
    --forced 'Vxj47QVN2z61T4Ju' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '5anLWRoFIkLJAEk1' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ztOla3S35z6lIN5Q"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'DMH8pjUaQuxRujoC' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "10eEx8KIeqe1EIVf"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'xhAJvWRQYGvhAN2L' \
    --namespace $AB_NAMESPACE \
    --cached 'KQAbUH6RJj0csllq' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'OLvyhYrS95Qi8Rs0' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["0kbWv7u62GLUhh3s", "0TFTFkDNj2EUZtp7", "7miy1nrDtnFQvhA1"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '9dFe80BAFPVoz5t1' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 44}, "cpu": {"requestCPU": 10}, "memory": {"requestMemory": 87}, "replica": {"maxReplica": 7, "minReplica": 1}, "vmSharingConfiguration": "mVsFhGmb0GLboEIR"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'HSL9aQqR7Xra8VLq' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "oZZ98sDjV3R7Mc9Y", "preferredLimitReplica": 14, "requestReason": "1WlIh8gzXP9ZVNHJ"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'vulQ4f80BeLIUn0i' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app '4lNGo2pMFK8jhqEX' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "cPFzrVqHaia0JzPf", "description": "YkqKFb9JCf74G5k2", "source": "9nbdAVPTwZOyg3FO", "value": "3Lz5aOz4LfmMEgim"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app '9EGdnMSOgnZ6K3qa' \
    --configId 'lmMeOER2HCRKGDB4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Hlredd3NuLrIM2Me", "value": "0Ptz4VoMIiJtdq6B"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'f8dgsqhJo628JG5y' \
    --configId 'fmtfQAJIvjLj7EgE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'fvogh24sbX0LCQvp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'KRs4AfuTdgBLmWxY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'aS3m1cxg0Mc5OuWQ' \
    --namespace $AB_NAMESPACE \
    --notificationType '6saDvMD1pm7OatU0' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'I3zLYIntGa58PACr' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "StiYTPLDrkhq8VMM", "notificationType": {"iaFwMVniQhrqU3RZ": false, "UzjQm2Xn2zXs95kD": false, "TY0pscAcgfz2SKM6": false}, "userId": "EYSUxUDyUZY7j0My"}, {"emailAddress": "YVUw307qiLie6YNq", "notificationType": {"xHts0Th8o8uoD1jY": true, "dZw7OctJrD85BIEC": false, "57e9cEhxSZBx59pQ": false}, "userId": "auEXtVB3z2Y4DYGK"}, {"emailAddress": "4MHWvWhLHPi9gRN2", "notificationType": {"mXje6JKikJyTT6ur": true, "dDOdCpwx1VQf3a9i": false, "Ll9LLA1WMAydpCjN": true}, "userId": "046eWOidRtxIMwg9"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app '4qvTUbWDKv4VSGl9' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "KxZgGXzNM0caEwFK", "subscribers": [{"emailAddress": "7eolv84WTV5aJ8YS", "userId": "TSBHTI3HF9P1gwYg"}, {"emailAddress": "Jit3fRQ4Z5hQ6kyb", "userId": "OWOqiqXSF5pm7n7F"}, {"emailAddress": "h5nSqc8QozpS1v0A", "userId": "sgXgHtwuU05iwS7P"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app '1CckfjtvKCva7Fyr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app '1ub3fAsSNSfP4sJw' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "FfwKqH58c7zBUWXl"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app '68SGs0IEBdOb6bdt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'IuaPM44hOuBnnuOI' \
    --namespace $AB_NAMESPACE \
    --userId 'PLYmfb7y9iofGWG6' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'yHSTUj8eQoBRZxTA' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'Ao55MNllsHCPul5Z' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "559FVyesIcrEsOeI", "description": "hOoAfMUYH50hGsUw", "source": "zl3GxDzfCLCcHQ6X", "value": "HUL5OZlCc6VJPL8a"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'BLTckbOXwe513J0X' \
    --configId 'soGSZh3uzAVuVJD2' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "YQqGm8mikPkZmD8f", "value": "0fb7YvdvWtJe239s"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'SjsOhtiUqSz2Bd5C' \
    --configId 'NrHZZBxZqCfwaq5i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '82' \
    --body '{"appIds": ["0xQEHdT4jhQ0iLlX", "6F38cUgQCkKJHpK3", "Ik3stBi6y04ZjqaA"], "deploymentIds": ["xvwzhJqApTl1nbwF", "Sl9O7ZZ8h77Bk0jJ", "P7elsgBvCxdBJkPV"], "statuses": ["zQ7TyXNcBflEkuvx", "yIQUxtJiPqfPCXTa", "Jp3SlQhmp3eJN6i5"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'lBOGEMHDogGf9dgX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'DJWwAWUUr8IrUoXS' \
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
    --app 'P7R3W2TowreuhYO2' \
    --namespace $AB_NAMESPACE \
    --notificationType 'YihkCgHBGO49TuFZ' \
    > test.out 2>&1
eval_tap $? 57 'GetNotificationSubscriberListV3' test.out

#- 58 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app '3tREuAQCUeKRfTWu' \
    --namespace $AB_NAMESPACE \
    --emailAddress '0G6vYACw0fcWkUgO' \
    --userId 'EHs2YszFLEeypMnk' \
    > test.out 2>&1
eval_tap $? 58 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE