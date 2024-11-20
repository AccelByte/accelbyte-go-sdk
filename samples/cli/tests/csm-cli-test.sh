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
    --app 'AHkxBmvOjGtvRi1s' \
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
    --limit '38' \
    --offset '35' \
    --body '{"appNames": ["SnCIKDPJRmirvMxk", "jfEqOiUkxIL9FufJ", "pnka580ovKnxNerq"], "appStatuses": ["pWWaB3biHGui7JSu", "8hE8ZD00hrKhX7nD", "q7ZhNlMto8smZ5kh"], "fuzzyAppName": "fdFgsl6XKyMXEXbi", "scenario": "AOjp565xtX1KDoet"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'eQxMVmwXO0etYJuI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'ecxAtepViJs07ejz' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 82}, "cpu": {"requestCPU": 61}, "description": "zoCuadIZtTIwiACu", "memory": {"requestMemory": 51}, "replica": {"maxReplica": 36, "minReplica": 55}, "scenario": "96GbRR1l3DcEXCkR"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'of9XGQm1SEE3HjA5' \
    --namespace $AB_NAMESPACE \
    --forced '3ieMGCkthiUj2Qdv' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '4oHVtqLg6Dzj5niJ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ukXyfuBL5TOfdsXg"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'c6rCe6IAPlrT57rS' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "d9ChALsCEW8zGTCx"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'xi8dOLlCETZLarOe' \
    --namespace $AB_NAMESPACE \
    --cached 'a0vmDd1JTfjhB5IR' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'DqNq4NZ8OxoArv75' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["aBHlyhsET7lD6I9t", "ZeTO6AYZHdSQYRYx", "vwDP7C4XAMf8dTTa"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '1EB8lxLt3rDuW7XN' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 81}, "cpu": {"requestCPU": 25}, "memory": {"requestMemory": 12}, "replica": {"maxReplica": 84, "minReplica": 38}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app '3Roaq1xWt95YATMe' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "rV6I5a7LddXEdPT6", "preferredLimitReplica": 65, "requestReason": "PM8MQ5gM4Q4wGzsG"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'D70La4QEGv26XHLp' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app '241bDBWGvCHdXhf6' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "appnsmpboOlQZ7NJ", "description": "wZof3mLUIkj8gf19", "source": "9iA2mXueNguTuNeJ", "value": "oXOF7Wh6xTCHdiXk"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'jBgcKSsILap5i1Ju' \
    --configId 'xUOOnOxTtUsrAL62' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "etBMmCtEssxFXdLu", "value": "LYamypeN0ycOD2FS"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'EDEuFShmLFizsQKp' \
    --configId 'DpXtkOiGtqWNGBST' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'xlH9lXeSbaQlyoh8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'vjPXe907QJSxGzDO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'ZjViL5u8TctnxVBp' \
    --namespace $AB_NAMESPACE \
    --notificationType 'JbfXv7NH9Htk74JF' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'W2ySh58YEBEcogim' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"notificationType": {"Lda0RSOcds6Yy5GH": true, "E2wYhjS1PTiaZWnU": true, "AocVAxXTOsOdB5nm": true}, "userId": "NapUepUWsuEJYIZI"}, {"notificationType": {"NmMdT2DCcq9LAA1U": true, "fviUixkSuBvZV5Fa": false, "4AGzay29RtTl6D4T": true}, "userId": "4iGQsOIusAVcCexQ"}, {"notificationType": {"nIPtVnoO4dXtWp0C": false, "HfNSiYfuehVnYh7g": false, "Dw10c805x6Cm2f0D": false}, "userId": "kB7enM9UH94oCYzd"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'Rg2EVBl9poH9Uxu8' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "LSSoOL6PtD3jhF8m", "subscribers": [{"userId": "4pwpNFPKpegCvlof"}, {"userId": "wkaFq3WgJH1rMa2J"}, {"userId": "ufDNHbkKcdW4Tj5A"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'bO43nyzQle0biabV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'URSJUy879xQLuzBO' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "TzaRZ5qgckhf4gDH"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'NJUL0kBjguTOUdCm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'wLsnmHD2sTZivfrh' \
    --namespace $AB_NAMESPACE \
    --userId 'JzXr63W2DDdODlJG' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'ymgUqE9hefLkgp9t' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'HDuWRFpXTLGr8ofO' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "dL6myr3B54WcV3tL", "description": "14HyjChkuhgffBim", "source": "59vOECOCCj38cPtj", "value": "3wO2NfVbAWO0pW81"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '4sxE1iVd2ESxYs9E' \
    --configId '2OpNS8ufHTcTSPnu' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "jbzeFkpG1hoedIFH", "value": "j0bHP7pUhQ6RUFZe"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app '5SAtueeLxQtqVmaV' \
    --configId 'TXnQJFTdo2aUZgKk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '91' \
    --body '{"appIds": ["QO3OPOLVN7NhqPzE", "yUNmYZ6zQWjkjn7j", "1NtUYFmpAa9Fa4JL"], "deploymentIds": ["xUHn3sLgsw7npR6E", "dayK6OXtMFNoWoXy", "aVOf4ZIkJ1d1TIsc"], "statuses": ["SqAGJOfVZsIqBALW", "D1cN3Hd6PL8zhsZc", "FGpNWi0K8NmN5RAC"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'nZPU0eqGyALRFSUK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'P7G3kjmxLvLAwKnP' \
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