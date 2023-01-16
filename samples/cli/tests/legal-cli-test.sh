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
    --userId '6ikQAYaM' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Hhq5hsbf", "policyId": "LXUzIko6", "policyVersionId": "l0edtcAo"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ygAEMYIO", "policyId": "YoxDpq0K", "policyVersionId": "fFj5O8lx"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "obIBJ5TH", "policyId": "rSAMzSZN", "policyVersionId": "gDW7wgvD"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'egAAIEdy' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'COzH8tOr' \
    --limit '30' \
    --offset '3' \
    --policyVersionId 'i5mIOJoC' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["b4m1Gx0V", "trr031MY", "oSv3OpFd"], "affectedCountries": ["QIz8fKfb", "2WtEVaCP", "RB008mjs"], "basePolicyName": "i1xuhgnS", "description": "eVNBeTZe", "namespace": "iAyPFDnc", "tags": ["nA5Yo9GQ", "92XDiQYm", "6ByKeXgH"], "typeId": "NeuIbqHa"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'cdltAeDO' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'fGLACRRZ' \
    --body '{"affectedClientIds": ["iEhF0Djc", "mpVOuIHV", "DdjHtsiB"], "affectedCountries": ["TRMkV2oN", "R92G3rqK", "kSU4QsDU"], "basePolicyName": "XOBvIEto", "description": "xS7OL5YV", "namespace": "gXUCbaxs", "tags": ["0soawhY6", "CDs4EewK", "WznXwlxu"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'SFtMrEMD' \
    --countryCode 'YkPzrvAZ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'Q1o3Csbh' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'gLa2PlMX' \
    --body '{"contentType": "ZoAYeNAL", "description": "62fuxm7Y", "localeCode": "BGZAM47s"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'ZLH2Ijbq' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'VtAn7CDh' \
    --body '{"attachmentChecksum": "Ofd25UjM", "attachmentLocation": "f2bWSqRx", "attachmentVersionIdentifier": "htnDUD7K", "contentType": "2j78UBKg", "description": "4yvhQQRh"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'petf39Iy' \
    --body '{"contentMD5": "PKcy20B1", "contentType": "s5Xnj1Wh"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'boOT87Z9' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '20fjqX7g' \
    --publisherUserId 's0krmTNt' \
    --clientId '5YydN0j7' \
    --countryCode 'OTfRLLfk' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3s6Llkj3", "policyId": "oNoIBeG3", "policyVersionId": "25Xb9DxB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ffz1rT7H", "policyId": "OPwgfYTL", "policyVersionId": "qpIgoQVD"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "jmBDFGkz", "policyId": "oniHNopZ", "policyVersionId": "xVVXYi1J"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'UO06Ut0W' \
    --publisherUserId '3T86FmKB' \
    --clientId 'Rx3QpYWt' \
    --countryCode 'tA8e4psF' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'l5nXAsZZ' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'fQE06LWW' \
    --body '{"description": "EMe8Xth0", "displayVersion": "k0E9CH0x", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'CvC2ve19' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'yXvRx30h' \
    --body '{"description": "wKAvt0Sa", "isDefaultOpted": false, "isMandatory": true, "policyName": "4vFhRDfc", "readableId": "CGkdcfyM", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'JjpFDUJD' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'pi8ZA1T5' \
    --versionId '2ocFqX0W' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'ZKsx8P92' \
    --body '{"description": "0Owuiepy", "displayVersion": "OhsCg73p", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '32' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '5RSB1HT8' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'aMpKjfg5' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'XEQ9y1B3' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'DMdsrJaf' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qQa3wE38", "policyId": "0f4fCVSj", "policyVersionId": "mKb2TzjR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "AzgA9K5B", "policyId": "O9TolcFK", "policyVersionId": "1IJ6rhqX"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MA4iL5mF", "policyId": "D6BKUvgz", "policyVersionId": "6HL261dQ"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '1cX38lwz' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "r0jxdEtn", "policyId": "nuSgKLyn", "policyVersionId": "BlFFF8bf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3SyRv4jm", "policyId": "eamT7Eag", "policyVersionId": "8XSeB6rK"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FuJ5Ge99", "policyId": "JnRNRsQw", "policyVersionId": "jhFRnPyN"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'sTEIxH1l' \
    --countryCode 'hFuWusOT' \
    --namespace $AB_NAMESPACE \
    --userId 'OKAV2gaq' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3wlgLFwF", "policyId": "ViA1vFYO", "policyVersionId": "JYLr9k7f"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "N7gdvFCO", "policyId": "IwM1HZPE", "policyVersionId": "rp3KeB0c"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hzx4R5M0", "policyId": "zN23fIJd", "policyVersionId": "NaoSWzFR"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'j9lnPXcH' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TPoGt9tI", "policyId": "fcvLG2i5", "policyVersionId": "0EXlUADA"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qhWwWE6t", "policyId": "vw0sVWlF", "policyVersionId": "B6qWPzQ9"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "r3wMAr65", "policyId": "2PMppTSh", "policyVersionId": "bs2xvYdJ"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'oJyC15mq' \
    --countryCode 'OCvju1hA' \
    --namespace $AB_NAMESPACE \
    --userId 'PCGk0PSg' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '8lKHybnO' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode '4VTsFeMN' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'e1HB0rM1' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '7aronHQb' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'mAoRx9k9' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'wurtNdmt' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE