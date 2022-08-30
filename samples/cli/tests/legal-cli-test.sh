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
    --userId 'ag1WjKTe' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wHFpyTDd", "policyId": "NkyN0zjj", "policyVersionId": "P9GvlMxb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Sqz27nkt", "policyId": "x2xjEZBk", "policyVersionId": "NTclLXRE"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cmAjmQUg", "policyId": "IPSdc5pE", "policyVersionId": "QFElWMJQ"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'qt2KGe9i' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '5Dl3uRu5' \
    --limit '92' \
    --offset '5' \
    --policyVersionId 'ssqlj6AI' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["KJlvNhg6", "KUHmyOux", "xAqxP78n"], "affectedCountries": ["Dms5lXfB", "nocGoW1P", "A31wqkOh"], "basePolicyName": "ngklcxyX", "description": "rM8gpicz", "namespace": "fqhQCkcy", "tags": ["tJ1hgPhJ", "c0glDwD4", "NTu2Sxuk"], "typeId": "L2sU9fym"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Uhch0RL8' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'AMEm350R' \
    --body '{"affectedClientIds": ["ZzjUSU10", "WfiUpjsb", "OgtvSst5"], "affectedCountries": ["aEAndKwj", "t94SmrM7", "N5Rjlmbn"], "basePolicyName": "xk7dYks7", "description": "Vs2SIoHf", "namespace": "LFYB50Xc", "tags": ["EcQw8z0C", "MOVa9Onv", "B5bCn0uN"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '0l56pDDr' \
    --countryCode 'HlQiY3JQ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'nJ5DiIJT' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'TcZPiMoU' \
    --body '{"contentType": "JofHvpvn", "description": "R6EPX7Rk", "localeCode": "akbzdPPs"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'pOjjqa4t' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'OSw5BG2q' \
    --body '{"attachmentChecksum": "cxX6p8Gp", "attachmentLocation": "uQZrsE5k", "attachmentVersionIdentifier": "6HZCp8pN", "contentType": "fOAmugXH", "description": "L2bM4Amz"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'hzHvlYnJ' \
    --body '{"contentMD5": "gRheWRuJ", "contentType": "hiLti1ce"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'yhrvFbf3' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'aWaXqCUH' \
    --publisherUserId 'hkO2zgnM' \
    --clientId 'viey0oMM' \
    --countryCode 'bd0HMJXy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iEbvLnwv", "policyId": "fJBYcXbE", "policyVersionId": "aD4tfmZd"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wLIOyu2I", "policyId": "d4Xikv3K", "policyVersionId": "t6nNMaR8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gnsfsgVb", "policyId": "YmafnzrE", "policyVersionId": "QzgJWabl"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId '0bxJ7vSu' \
    --publisherUserId 'X2rA4kGg' \
    --clientId 'knxquyNF' \
    --countryCode 'eLInV4kn' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'hqRjMc5c' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'qG3Epa1q' \
    --body '{"description": "vInaoclp", "displayVersion": "zplSwTmg", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'JnYzBuXi' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'lxktvxuX' \
    --body '{"description": "hK7xDh0e", "isDefaultOpted": true, "isMandatory": false, "policyName": "hyIVNQK4", "readableId": "Bt1XEB3f", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'Xnm6nlPf' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'T39osjTC' \
    --versionId 'AwscbLIq' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'KzjpCrCo' \
    --body '{"description": "9pVsmqPH", "displayVersion": "lYz95GWH", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '73' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'nFp9Fi13' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'cRfxkXoN' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'TTRv8pQp' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'mXQOX0J9' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ffUIWo4t", "policyId": "LUn0Otre", "policyVersionId": "pfxnuX1o"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Bg9E7Rz6", "policyId": "wUnj9upO", "policyVersionId": "TYw5nzIB"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "w0SISCcr", "policyId": "JmVVbKwf", "policyVersionId": "r4o2vb1n"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'slaiFpWy' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vbzB2bWt", "policyId": "BEbpH2hj", "policyVersionId": "QA6MTDhh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oNApGgjm", "policyId": "95WLKnWs", "policyVersionId": "XQ1lH8XZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "u90Rw8Zl", "policyId": "IIOGBYRp", "policyVersionId": "4dcIRnHn"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'ihfbEorH' \
    --countryCode 'cQB8eckT' \
    --namespace $AB_NAMESPACE \
    --userId 'mSt4POGN' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MZCuMCjW", "policyId": "qq01fxZp", "policyVersionId": "YuQBoRoa"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iMn1Bhng", "policyId": "zjefWpy4", "policyVersionId": "uGcqpSWq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KkLHrpQz", "policyId": "o6dJqHoP", "policyVersionId": "VSntDfDH"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'rrC8uRVL' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DTP2PL2s", "policyId": "ODVMdyLA", "policyVersionId": "Bil42o0L"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1u0eZJmx", "policyId": "x3g3vVho", "policyVersionId": "Cg0DBeeX"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZGDZAO6z", "policyId": "wUma1Xng", "policyVersionId": "ts8aXmHW"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'gtBglUZg' \
    --countryCode 'POwV0Zn5' \
    --namespace $AB_NAMESPACE \
    --userId 'LLOyYdUv' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'TDA4yco5' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'ElXE8HH3' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'zdApifjS' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'eKVbd8Bv' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'QxLmWDTc' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'sSOog8Jj' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE