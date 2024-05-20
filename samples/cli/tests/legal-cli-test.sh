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
echo "1..67"

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

#- 2 ChangePreferenceConsent
samples/cli/sample-apps Legal changePreferenceConsent \
    --namespace $AB_NAMESPACE \
    --userId 'rOEWSlfYaJXQv9pk' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZFssAsRaYoI76F98", "policyId": "u2C1r9dER64XUqfT", "policyVersionId": "fHyXrEmQ18eLn1a1"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4fZ7FGowjihvVcOk", "policyId": "oUeU8AZI1m4DcR4T", "policyVersionId": "VsBXpWDat9SoBDDS"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YYrUrQHsX8dLP1Nn", "policyId": "3XGEnuuuLMPUMrcr", "policyVersionId": "DZRXKlzvjKLOu8FL"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'eYIl2Get0HC7RSBP' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '96Ez6WUUJ6XBvRqR' \
    --limit '91' \
    --offset '33' \
    --policyVersionId 'isIwyp6ljKh0NSYK' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["XlW6LGHnf8YThJgt", "IVpbINot35KPzDGR", "P596z1VchG5l9wh5"], "affectedCountries": ["5jrlSAllgh4IbthH", "BHXCXVWD6zSARFw5", "EaFmIH47lPjEPQjP"], "basePolicyName": "1VAWTbdQPj1Ni5fq", "description": "cXQYyR3DMa6R4Hc2", "isHidden": true, "namespace": "ewBO38xa8FSag5iD", "tags": ["Zl7eiIagZIWu35No", "E6guDRjRsgCr9ezu", "mad6cvsZM8PorbHF"], "typeId": "0Csf0AAMZxN9zF60"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '0yinMG95k8SlwX9w' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '9YlWuDyikJ1tAdaQ' \
    --body '{"affectedClientIds": ["2K8sYyIpzFUUVjKt", "BxIOKvRBtOism6eB", "1hgvsRqtXCxQObq6"], "affectedCountries": ["c9SIR2QqAlNv9hnT", "Fo46DlvJtjU16abi", "w2GQQOwBp5YMcRlD"], "basePolicyName": "WUoh2zSYsh8HD3IE", "description": "SBLwMvriLNXyXs8i", "isHidden": false, "namespace": "a0kzZWICeq1W6ShR", "tags": ["0yLeir3KGS2435qP", "ce09VBq5C7WE9BX1", "S7rz4xBJlOpfQhFf"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'zbR96iOWaPZEn6zG' \
    --countryCode 'IUw2NXoGvzNRkMOK' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'WXz0jPoCEqBWW2IQ' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'Qrg4WyzonqhaikKF' \
    --body '{"contentType": "Y9x1IAp4rbwyqWRA", "description": "orWBDZeR3vs9DGZI", "localeCode": "2aOGW6Ep7zKS5rDU"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'rIASNLjJYEY30hOr' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'TyTntyWAjh2K0ZSv' \
    --body '{"attachmentChecksum": "IsvTrFdlGAP8vFyu", "attachmentLocation": "dxpIamo4vSUkPyTb", "attachmentVersionIdentifier": "kyEuxdnqSFleuPBA", "contentType": "zyxnjPEUP7ZCRUpi", "description": "3EDNJBHF45wHeygQ"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'Z8kZYqQ6gKABFevO' \
    --body '{"contentMD5": "YmSXzmxKLXH5zEA8", "contentType": "cl2IBWfof9GKqVmT"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'spAbs1fvmgAhlKAv' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["o3pzxypPDMDOKjch", "Me3GVxdYbetZxj6z", "qgv0PJoaB1lvrxw7"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'JYKH8L7vQ1dWaOQk' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'wVQNTIsKkCTFn78g' \
    --limit '89' \
    --offset '60' \
    --policyVersionId 'gEmnTtr8cJSSFOxf' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'rjNJ6mdc0NLf0kF3' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'QHOi8PJ6OhM2Nnhl' \
    --policyVersionId 'LR6v1X54L9ammsJs' \
    --start 'jWDsABMqoCwMvBko' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["1qiUfiEIuJVj8rN7", "DBqKE2sRXcmz1fpq", "wtttp5SifZzQdVlS"], "affectedCountries": ["xEYoYXeJgyj0PSfP", "KWKlMkV3gmEWLuNz", "iUKgb3PgilO3I2tl"], "basePolicyName": "L5TSoAgqIE8mpKzH", "description": "ngQYJENZmNewKvaw", "isHidden": true, "tags": ["IHJBjyjAJNDRavwa", "XHgirvFUjazclXMX", "SG2nK8CSR8aZ2igB"], "typeId": "cFPs9KGk1QhIuCG0"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'VRqqDwe1oUwCykEZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'ZY0AcoW4gdREsjn6' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["GpUxKVDzm1nl483j", "AG1kabYYGw2iuYA3", "DerLGgXntSR9Uh0W"], "affectedCountries": ["27ICZcp7MGI64Hm9", "W0fLW4XUPRBedf8J", "Us1ANv4Jrleop4aL"], "basePolicyName": "Le2wHMC9oUCQyCnL", "description": "2xGbfixKMATOAGi2", "isHidden": false, "tags": ["lGdHAz9Uhp3dAHBS", "QDT86EXMXDZkXEWu", "iyj0vByza6s6Qmdt"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'CdAMYGURoU3gTFlB' \
    --countryCode 'E7T0MBmROYxd12No' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'wH21Qh5EQ70QpU0I' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'N45uJAgG6vEKgrzQ' \
    --body '{"contentType": "8o4ooOohWau2UhKp", "description": "DsL9kRPGLEDOWc0w", "localeCode": "jBJNWtYYxjk9jF2p"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'wNE9GsceFFadNQ18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'qrRyALRijXXNGvkZ' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "HmaKVBj4L1APlnzq", "attachmentLocation": "4HCDS9QGlVx1cvc2", "attachmentVersionIdentifier": "QMjXKutEVj3eqBUE", "contentType": "CKW1T86rMsrg5acX", "description": "Ilb9YfqWMSnXAMOV"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'y0ZpusCFhSptmp3f' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "hehervIOMPZi6s2q", "contentType": "mGPWfDUrticYP58b"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'leY38FLk82a4RF2T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '1SD4YMlijA6ZOjnU' \
    --body '{"description": "h27WFb6iFwuIC11a", "displayVersion": "7luGnRCWY1lJw6To", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'usq1cBmCBUOsd875' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'bX0LTD3z7I7Z5OUJ' \
    --body '{"description": "CQJq5YBzxbmJXFmo", "isDefaultOpted": false, "isMandatory": false, "policyName": "kvpkruayb1crhVmU", "readableId": "W3kkzJiR39qLCUDA", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'sZWoNAQWPsMVjOfr' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'DpjbHeTxUB8mRp0w' \
    --versionId 'uPFTuWpuwXo91UdZ' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HylGmkqXLYRWQEWg' \
    --body '{"description": "6RaqMXCWiFoojHur", "displayVersion": "wy0DQ0arbq39fFXS", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '10' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '7J12Hx1IVtlbq72G' \
    --publisherUserId 'B4vCgN2aP9EDXsdL' \
    --clientId '3latnLTjQlaYXgaQ' \
    --countryCode 'CWBrSjfGquc4fuCc' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qv7Bc4AiZ4Bx5UeP", "policyId": "MoCjTmTnkUEs0eDX", "policyVersionId": "ep00DsGWIeTmViaz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1LUDyl8fCc4cYXYT", "policyId": "EAnTGvSLJYFdPuba", "policyVersionId": "j7Y1wTW9d6d65fwB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jPPSQCZKt5dyMLl3", "policyId": "W1We4Ob6VsMc0KI5", "policyVersionId": "PUArCmX88RY4e3F0"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'SQuVKLQIIyCydDtZ' \
    --publisherUserId 'DDeiEdRlsmoF9vF7' \
    --clientId 'pLDUAF12JM72CVoS' \
    --countryCode 'fPwfhSUOsdY0aaKR' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'n4UbyMcCuLdUv3De' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'LxRJxB6hf8zLjkYW' \
    --body '{"description": "1lYptmZhc097kO2d", "displayVersion": "056pSXg1FFI2ARg0", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'GuEUPhz1MPK2FRE7' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'AJsahfH1k7qnOzxN' \
    --body '{"description": "UdKB0F3T9MvONjUV", "isDefaultOpted": true, "isMandatory": true, "policyName": "Djuym91NqQeII13Q", "readableId": "ayYnvqFhw137x6Ap", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '45gcXWh1Kyr8xl0R' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'orxdsndKnuiy0m8x' \
    --versionId 'TyKfkv5GPFvenxCh' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'Kz04wGnvlrmOLzrw' \
    --body '{"description": "WI33x6e9CyfzgNkq", "displayVersion": "DnA7IyuaBNAlldZd", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '62' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'NastFOiM4zxpiGTq' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'K4c9OaVpktXNhJl9' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uk9MjrDUxvYhIeTR", "policyId": "XyScOR9fFKldZfmE", "policyVersionId": "y95vWc6Bz5P7LpYm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D3p0ZSbzfh7Xnnoj", "policyId": "XjuFIEvWL7wYOpgC", "policyVersionId": "wEvveIKyuoCKnnvP"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PHHtlGNeuDBB2gIg", "policyId": "NA3DuZBuQlrlzaxc", "policyVersionId": "FncHcMMo7MF14hfJ"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'C6dxjxooWN5aR6eF' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dhl2RGgJflVqhSLf", "policyId": "3TJzjOe80owBG6Y1", "policyVersionId": "8WNmCvGt84ykSe4n"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bDwYYOSmXvBs2iye", "policyId": "g3M2vbwImlHxiM93", "policyVersionId": "LOSnTiSQmbac54DX"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "S4SAzWDUaGc7oGC7", "policyId": "4wBXYNlI3Ldk6PL3", "policyVersionId": "egS10lU1n2dCV0VA"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkAcceptVersionedPolicy' test.out

#- 57 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 57 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 58 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 58 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 59 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'RetrieveEligibilitiesPublic' test.out

#- 60 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'FRHSWnl7trSaD9Uo' \
    --countryCode 'yZHLbqlMlw5L6Xt8' \
    --namespace $AB_NAMESPACE \
    --userId 'X5ihkkRdenQiH8Fn' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'cgeo0j9DLQ9ctqvj' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'e6zafrIXufmsT6cy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'bWB9DkOWS0HL7apt' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'CmOHmh7wYLkV4uSD' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'fyZvxH0eKFpLRfuY' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'Vs70qSM0EvssK6tB' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'XlXxia87G9u2d4cZ' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE