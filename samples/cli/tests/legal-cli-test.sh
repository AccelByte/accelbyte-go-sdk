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
    --userId 'cCIdmaOF' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d5zII2Ng", "policyId": "ll6VJlbP", "policyVersionId": "RRFIOlZM"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "jk2XNr4E", "policyId": "k8Oi4az5", "policyVersionId": "VEEz0wUd"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kHLFfLkq", "policyId": "eBQFqTxX", "policyVersionId": "FvG5y5Bs"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'C6ZYMCB4' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'gJ19s8yw' \
    --limit '88' \
    --offset '47' \
    --policyVersionId 'NeIUrjLu' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["pqPHZFQE", "egeGcQUT", "kWM2HUqy"], "affectedCountries": ["xQYX3VrW", "HjSkyqGC", "FjevsVtD"], "basePolicyName": "IDaVPbOy", "description": "72dfGbzF", "namespace": "jKJqlpSc", "tags": ["cRhMcHnR", "rUbfz1ej", "KM9djAUc"], "typeId": "DsOxSIuV"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 's6PzHY2I' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'Y4WpkOES' \
    --body '{"affectedClientIds": ["ExjsVFkw", "IIYPEybc", "dR5fIL1R"], "affectedCountries": ["FOcIxA5D", "Y5uMSuhh", "3SK1i6A2"], "basePolicyName": "ZkEuvjQM", "description": "WpkkOyYI", "namespace": "pcPkxl7J", "tags": ["PJg4HLVV", "7BV1OJO8", "h7JMEWgK"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'TKNrqtYY' \
    --countryCode 'kN6WrWQQ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '91UXVFNA' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'pfDOQEPs' \
    --body '{"contentType": "MCwR9o2t", "description": "s9pfQ0oY", "localeCode": "j6BuP6bf"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'WH30861V' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'kpx1D7rk' \
    --body '{"attachmentChecksum": "mRbPmT2g", "attachmentLocation": "xs4L5Otw", "attachmentVersionIdentifier": "sZ92ObeA", "contentType": "e0NNKctP", "description": "ZuJvNaUF"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '6GYBxAbs' \
    --body '{"contentMD5": "lluKHUFS", "contentType": "idXtxFUZ"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'q772dfMT' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'cXhW1C0N' \
    --publisherUserId 'EW7kz1sH' \
    --clientId '4xgif6Ao' \
    --countryCode 'NEHj2wQZ' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "g3ItEzvy", "policyId": "fE2iNk9K", "policyVersionId": "4SXB0IsA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HcZEMdeZ", "policyId": "wqbtUoYR", "policyVersionId": "4vS5bzVX"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sN042uAw", "policyId": "HLg480kG", "policyVersionId": "q3QiEXpF"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'SDzniQo9' \
    --publisherUserId 'e6Cws4JX' \
    --clientId 'A9nGiniU' \
    --countryCode 'AsG2Trc4' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'XzgukfNb' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'sFSlKtYm' \
    --body '{"description": "u4FKriEU", "displayVersion": "Uaq8NvYu", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '8YPzbnZM' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '4NPjv3o8' \
    --body '{"description": "mAqBzj9l", "isDefaultOpted": true, "isMandatory": true, "policyName": "VSSoWiWC", "readableId": "fnBuPoT3", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'XW3HCjjn' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'M8cc75Bv' \
    --versionId 'hVp1rwAm' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'OgxtWFgM' \
    --body '{"description": "r0XAaIj2", "displayVersion": "ySlhi5OW", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '18' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'nZVUoiKB' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'cg3GENR2' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'oErqqrLQ' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '81K96KtY' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bqxs7t5e", "policyId": "IIekPJFb", "policyVersionId": "D20VLfjQ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "naAUHoJz", "policyId": "CFbvtfg9", "policyVersionId": "BF5yqGgI"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UrFUAJqz", "policyId": "Pi1pZUyM", "policyVersionId": "eb0T3QyL"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'GZ2Ta6Tr' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "H5dMPvlX", "policyId": "kaL8iaC1", "policyVersionId": "bLASJnPe"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qb3CLDRd", "policyId": "wkVxpRKY", "policyVersionId": "TrZLyFuN"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KwsdyHH8", "policyId": "qWXXmDRI", "policyVersionId": "NMI8QWyb"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId '7xvY0MlW' \
    --countryCode 'gDP3w2Fb' \
    --namespace $AB_NAMESPACE \
    --userId 'l82HCTU7' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oEOqsOLZ", "policyId": "zzElvtHb", "policyVersionId": "rNR69L4Z"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "mLDzLbrg", "policyId": "YKJyyGv5", "policyVersionId": "rRXvuqFD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9F8hYyq9", "policyId": "EqqRU5mN", "policyVersionId": "NUJbExGW"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'rdHgka1H' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9jUDAGDP", "policyId": "8qbN70is", "policyVersionId": "nsrmdO3m"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YhNgKM9Q", "policyId": "fDvPvNly", "policyVersionId": "BfMbBboa"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iHXeaMJI", "policyId": "6150c6VZ", "policyVersionId": "jMQGD9uQ"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '80k0zwLB' \
    --countryCode 'PzfE2CEA' \
    --namespace $AB_NAMESPACE \
    --userId 'ofWUV0eJ' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'IbMBDlu6' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'ufKcJIUW' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'VrLtNrOX' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'TmwUdhaJ' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '4tubUEV0' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'cfA4RPTU' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE