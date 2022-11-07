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
echo "1..42"

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
    --userId 'KT1owdwc' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VgDQoXpO", "policyId": "P5z4ydI7", "policyVersionId": "mNCnTzds"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ExQz5YiM", "policyId": "gJHToCxa", "policyVersionId": "kvmMIMey"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ddSQ2TtG", "policyId": "Vt6IA4Nq", "policyVersionId": "3YAKA0MB"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'faLnJhHg' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'xSwxAc20' \
    --limit '94' \
    --offset '86' \
    --policyVersionId 'Gu4x0R2i' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kmzTApIF", "vxow1EfO", "o6cqMs9b"], "affectedCountries": ["cbFuyNDh", "xCJeelQ7", "4OckCplf"], "basePolicyName": "WUEYjXZ7", "description": "rYM4Lqhw", "namespace": "eI9ykr5d", "tags": ["6BwoL55E", "oJyT8suX", "9RuqOiPC"], "typeId": "5v12ttSe"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'SybErfD1' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'mZemj2e0' \
    --body '{"affectedClientIds": ["ExyzkQ5L", "UWeIi6cb", "NXImNgbV"], "affectedCountries": ["URSYRqTE", "nINKWfAL", "yn0S90dI"], "basePolicyName": "JnFpbsig", "description": "SBgg2s0g", "namespace": "i5C6JkCO", "tags": ["mTJSt1L1", "C356rqa5", "o2Zz4oGE"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '1iyha0dW' \
    --countryCode 'TkjdWHgb' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'aJloSVSc' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'B2RK1NFi' \
    --body '{"contentType": "xFWRAFxn", "description": "d6dqrqFL", "localeCode": "6BNOh0Lw"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'XAp9x3rN' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'bEskEC1E' \
    --body '{"attachmentChecksum": "N64Waxaa", "attachmentLocation": "1JwDzoLx", "attachmentVersionIdentifier": "615t4ZQ1", "contentType": "v7CSUWc2", "description": "0XwaW06J"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'vQuA2TAy' \
    --body '{"contentMD5": "WSZYyaXk", "contentType": "3BrNBi1L"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'TU2JiNUA' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '62RkDgOw' \
    --publisherUserId 'LuYfVKco' \
    --clientId 'AjUlPEpu' \
    --countryCode '3KeE5T7S' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mw5z86XT", "policyId": "bR9nBGKj", "policyVersionId": "eZej1BVx"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ftcOFC6c", "policyId": "m76tgGTI", "policyVersionId": "rf1wmsht"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RoSZtO84", "policyId": "RK5GyY42", "policyVersionId": "6nEOXF3L"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'AlzEYJGA' \
    --publisherUserId 'PXtXC8ow' \
    --clientId 'YU0i3aL8' \
    --countryCode 'iIhR7lkC' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'nnKGM1Ju' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'ewfaT1ir' \
    --body '{"description": "FwhLLrqh", "displayVersion": "Y0bFZxZn", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '5KRGT0Sh' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'y5zomqWp' \
    --body '{"description": "Gkz1ZP7p", "isDefaultOpted": true, "isMandatory": false, "policyName": "VkHFpppR", "readableId": "C0VwTbJq", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'iPCUXZIz' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '1Kacvu7u' \
    --versionId 'tyxH7oz0' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'sRf8P8NR' \
    --body '{"description": "YhryBW0f", "displayVersion": "YcWCJf0I", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '12' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'pqNkaZqJ' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'PMjlWg1n' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'XdWUqV8R' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'B5ZlhNul' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VBU8SprK", "policyId": "RlvgmRmO", "policyVersionId": "icuJUFzv"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uKDpgjoZ", "policyId": "oQuiomWY", "policyVersionId": "6lxNobBH"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3N1bQUjb", "policyId": "NX7XevbI", "policyVersionId": "3eCKi2dt"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'K7NtxRne' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HxH50cPP", "policyId": "k0imSDK7", "policyVersionId": "7nOl511g"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d3ASzHfs", "policyId": "NJ5T1CET", "policyVersionId": "hukeyo1g"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "057rO2mH", "policyId": "2i2wdO4F", "policyVersionId": "UsZdPWGn"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId '8p6exI3y' \
    --countryCode 'WzrcRw5B' \
    --namespace $AB_NAMESPACE \
    --userId 'sB0N1iEc' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "yYLDtka2", "policyId": "kEdbgfFk", "policyVersionId": "HSx2YSEp"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "jXSLen4S", "policyId": "dzf2ynn7", "policyVersionId": "bNhTqKlw"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Nrusxw1H", "policyId": "2WO2GfrI", "policyVersionId": "kPJwWm4A"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'Hm8rZiYJ' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BkTTDz7H", "policyId": "Nkv46wAB", "policyVersionId": "KYRQS7Z9"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KFjBszi4", "policyId": "scGwv5nr", "policyVersionId": "YXGxFt6K"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6xHQ3gDr", "policyId": "K7wJYeS2", "policyVersionId": "lO6w0W78"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'e17bLDht' \
    --countryCode 'TG8FnjK5' \
    --namespace $AB_NAMESPACE \
    --userId '89g0mz5g' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'bZwiBX8C' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'GPkOpz0b' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'mqiekYt8' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '4N36FH7Y' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'geJT2WF5' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'SCC6Xza7' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE