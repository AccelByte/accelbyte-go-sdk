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
    --userId 'Bs1gcWFi' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "23fcbS5E", "policyId": "87yePka8", "policyVersionId": "SPH6C9XT"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QSrWXBJx", "policyId": "IT6CAnfZ", "policyVersionId": "EzsFkedC"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Hjk3J6Nh", "policyId": "hRsx7CIk", "policyVersionId": "RCcELw1Y"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'qdZkn32l' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'Lx9V4IjE' \
    --limit '57' \
    --offset '89' \
    --policyVersionId '801AFcka' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["5w1OVIod", "GBiNcoFl", "FZWiIeTv"], "affectedCountries": ["o14QBvpj", "ATidf3Tg", "HICQ3z5O"], "basePolicyName": "7r2YNwLF", "description": "wj7NVtSW", "namespace": "X1jFP7WN", "tags": ["YwugvMrz", "m0qQcYFb", "nCfnmBHg"], "typeId": "lwNuUvrK"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '4Cdl0QjY' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '18kQIMZ8' \
    --body '{"affectedClientIds": ["q8EDh5KX", "5ALjMqFd", "zsQqihac"], "affectedCountries": ["BvPI6atm", "gCKF2sRa", "I7f8gGgT"], "basePolicyName": "eNvkHioG", "description": "5ysQ9DzP", "namespace": "IfDrotVj", "tags": ["QXgtQvHQ", "vEqoefQP", "ABtQCk2u"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'dP36BUzt' \
    --countryCode 'dZS406cV' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'LwO3WMrs' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'dPLgT65X' \
    --body '{"contentType": "XMn8t9di", "description": "dEcKWYAH", "localeCode": "ZnyuMccp"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'OSZZsmzk' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'sAgerZpD' \
    --body '{"attachmentChecksum": "U8HrSmGZ", "attachmentLocation": "8MmELNEv", "attachmentVersionIdentifier": "mbc1JJUr", "contentType": "YXIv9jzv", "description": "vu76me4N"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '765nHi3P' \
    --body '{"contentMD5": "4YjD4frN", "contentType": "pbXjhcsg"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'Rul39s29' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '2qj8HK5p' \
    --publisherUserId '2NsrhUl9' \
    --clientId 'R8FSCtY1' \
    --countryCode 'iuZBUvWu' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "sk0UroLR", "policyId": "RdGkV2u8", "policyVersionId": "dnW4631n"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SAXQoqBQ", "policyId": "Eof4kMOE", "policyVersionId": "JGyVQVB6"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QocTHFb5", "policyId": "1n5q0XIp", "policyVersionId": "7QbV8nOR"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'jN5vV4SQ' \
    --publisherUserId 'xoTGrfaS' \
    --clientId 'BokFtev9' \
    --countryCode 'O7p2Pimc' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'vz87tIBR' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'WIzYcWQQ' \
    --body '{"description": "U2uSWgPN", "displayVersion": "3wuFqpq6", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'b9NAJTBR' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'EMdrG65r' \
    --body '{"description": "Jzo67STT", "isDefaultOpted": false, "isMandatory": true, "policyName": "hV8hwwwz", "readableId": "wQAqL6Fr", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'ud5Vtur4' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'KSkXuS5r' \
    --versionId 'SBRUbQ2i' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'ZYFjaDc8' \
    --body '{"description": "vKKz32N8", "displayVersion": "nIxOsHFs", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '65' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'YzTrBpTJ' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'tBTeBEpq' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace '5oWUHEMG' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '54FyzEYY' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3n28nyty", "policyId": "iHcceEek", "policyVersionId": "Qeg7PCca"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GCTgPELQ", "policyId": "sLdk0MXU", "policyVersionId": "z2OlAxgQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fNniGxiQ", "policyId": "gqIKrbqG", "policyVersionId": "EGInN55Y"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'J4nQ3EME' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lP9ZTNXY", "policyId": "ddtNH0T6", "policyVersionId": "lapJVt5F"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0cBjZzLs", "policyId": "XfNR6raP", "policyVersionId": "LmXMYqRf"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1VlyZzqU", "policyId": "xPGrHSUC", "policyVersionId": "QB8JLjx1"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'TYWXS69N' \
    --countryCode 'PulSrAan' \
    --namespace $AB_NAMESPACE \
    --userId 'hGpVi65m' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NQJ5OoQX", "policyId": "6ZoFAkTY", "policyVersionId": "WcFiDKOD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1eRqZ208", "policyId": "kspOeYwE", "policyVersionId": "PY0cv6Y0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "u4t5xJD7", "policyId": "B5Aphxra", "policyVersionId": "ggacPlRC"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '5PPAnIY8' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sMCd7JWA", "policyId": "Em5sYEUD", "policyVersionId": "5CcOmBGa"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TujGLiYd", "policyId": "l5iefrN8", "policyVersionId": "k64vnwAd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZhGli0Fc", "policyId": "bqVu0yrQ", "policyVersionId": "7tqy818c"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '2r65NtWO' \
    --countryCode 'Q2XISt6a' \
    --namespace $AB_NAMESPACE \
    --userId '4zsxeIWA' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nBhNnPFg' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'tWtLiXMP' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '0W3suEWr' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'BWLZ1ouk' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '0ZgdkEDR' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'ULfPMzh5' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE