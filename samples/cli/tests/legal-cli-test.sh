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
echo "1..64"

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
    --userId 'JnEvx40C3gpu4bxr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CUOqHi3Ub3yL0YvE", "policyId": "gU3RdeJmhPFkwqiW", "policyVersionId": "0VKdVHCTcFSuWDeu"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YS6u2DcHPG9UdVcL", "policyId": "PuvjL5lg9C91obeE", "policyVersionId": "CjxvnGuBD2S4yCks"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "syiD2y4dScyFutSY", "policyId": "wpbW0GqApfEIkrWP", "policyVersionId": "5VhI1q1dR1zjy3MR"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'IZdkaXKyq8sAQQUu' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '2kio8kR9kVmS3ygZ' \
    --limit '79' \
    --offset '5' \
    --policyVersionId 'Ldo7Ad7LwPfEyVgZ' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["bpsoinT4b7eNQaO0", "cbPcHQFC4SDwolmp", "3WTC2WHCpO4JCKPc"], "affectedCountries": ["IlIHp6Z0WHFxp8xE", "XIVQ96zfgkjWh10a", "GcDntu2AeR1giKsS"], "basePolicyName": "hvVryHE2pCBtdJNF", "description": "JrPys6LtcMXSpWFD", "namespace": "f8pZC8u4AeJ5gllJ", "tags": ["wVpQj1gaCpETMr7t", "Vs3yYbXVxxCfJGJJ", "gVCCbHor5uDF0dPq"], "typeId": "7iFFWPXOlWGgnqWu"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'ccP2AL1n3AP6wN5l' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'U3vOhkXrvQwE7U6R' \
    --body '{"affectedClientIds": ["FATJb987UsQlKQxT", "Em4ohh3iju94r1RS", "VRVowOBcORnLSkz1"], "affectedCountries": ["z3dPqriYqUfwA32S", "eDBAs4cWhfaXtLYI", "Wqv9nk4NWSyVT1pr"], "basePolicyName": "q8jHYmp69F1aPozZ", "description": "4YmTaFPR019w4zrR", "namespace": "qTjrYvSDoSGx22aj", "tags": ["esVVGsVXpWBYSdBG", "aOFt2e14PWuPV0x1", "5qLB3KJP0Xi94kPS"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'iJi7jzyxXVWxKG12' \
    --countryCode '94fksGG0OgLcai7O' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'brEIUvaCLeDGaIFr' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'YJEQY5k4i9q3N8bM' \
    --body '{"contentType": "Uw439uo1IgsVYhFb", "description": "MkJ99qOjE3LGb6in", "localeCode": "HZDs0w30kvKLYZkg"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'cwwOeavKsNFvAbru' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'lRfNI1St9xlSbjW3' \
    --body '{"attachmentChecksum": "30m3LB7YBxAqwpFc", "attachmentLocation": "YjWTLsaneStJNbY3", "attachmentVersionIdentifier": "LDeS8l3Ow2cRm7O4", "contentType": "sAuUGb7YoNFJyEGD", "description": "qEtk9CAiMRrBd5QK"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'GC21agFyaw8UKKkg' \
    --body '{"contentMD5": "CbSkBnpcfNRK8yG8", "contentType": "DULe3FEBhPMRuinw"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'gqIHWE2a4oAsEEzP' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["ieaLIYqNbCqBr4ai", "MArvCf97vbwMC9rK", "ROv6m5hbyCe5GsQB"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'sGfBfxSvPrCgyzjZ' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'tn81luNIwqx4g4lR' \
    --limit '7' \
    --offset '86' \
    --policyVersionId 'i6FytYXEy8BEVYF1' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 20 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["z7ZSmqKGN7Ogs18D", "XIcd1TU2PXZ507yk", "rpMm8NLNtJTeJJr1"], "affectedCountries": ["CeVhO4WcYpqoOOON", "ewNdhEpLQKidZnMO", "ZNiO4DtiL2BJqkE1"], "basePolicyName": "MlZBoDoCfgyOvHW8", "description": "Vt5ZnMOxlk2kk6lZ", "tags": ["yT2oUtpZtyjrpk7t", "27VtSFdePvEq2fK3", "XgJ65OlWLgm1Ejgw"], "typeId": "K3ybaL4oFfRMbUVz"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'XFjNx2I4zq9cOGXF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'tuLnsi9yoSiiDT37' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["k8cjnlzyX151P0hp", "QrmLJqor7vENxBBE", "Bi6ce3EvjHj1Q4Ll"], "affectedCountries": ["9dDK0HyKTQhYnIfk", "m7X1PbHvpcTXTToK", "7gu5SvRzXTKWmW8i"], "basePolicyName": "gah0ArMO8e2yRXvc", "description": "sC5scAcv228rBnIj", "tags": ["ijsyQHIgWajZEgkW", "A3FnIDL9OFr8HzmL", "tT4aer3uhGM4bAHF"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'DUnoJ4Vx0M12gYAJ' \
    --countryCode 'WPavAzHVM7KIpGUv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZEkMus3PbgNDSHkt' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'kQPdB7kHME7c4GxM' \
    --body '{"contentType": "bKoT4g1snDQTW1FW", "description": "3vfNyz9ggVB58kfC", "localeCode": "3WlfXIoFXOFuTEHt"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'dJdpJLOCFJlZ5W2J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'SZn0Yq4p9R0pgAmc' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "6EYBJA7j9i52iVKU", "attachmentLocation": "SPxX399d9KEURCEV", "attachmentVersionIdentifier": "YRh8A9kpuku1lAZz", "contentType": "N2UqcOvkKaW1VYQB", "description": "axWFDXne5cU1yPFz"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'j826IsG9dzWHVBTM' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "hB54DO3owW5jOJJs", "contentType": "9RmMqp0qH3o25o1x"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'D2aEwSdtKDbiDH9X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'noMA4KQBL2sABQHb' \
    --body '{"description": "PE30COjNGZ6mvbNa", "displayVersion": "GUwcPOhSBkDIznsp", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '1DK4eo3z1MnY7Nps' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'l46Jqe2UFy55x137' \
    --body '{"description": "DcDnIZqyhCe7IHlP", "isDefaultOpted": true, "isMandatory": true, "policyName": "4AvvUvN16tuY16Cg", "readableId": "KfmoO6gVzaYblE2m", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'ck5duqS8kBPRxP02' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HMMMachG9W5GxtUq' \
    --versionId 'r1FskCG0JpcOPk7P' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'yLfAdfm8tGrCTc3a' \
    --body '{"description": "WyIHAMCtWbWHkYmO", "displayVersion": "c3DfzdxuvElwvLIE", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '16' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'cgeBWtDi3FzVwunG' \
    --publisherUserId 'LZNW2T5QxNkvAQaU' \
    --clientId 'kLsVN5wlHibYmtAW' \
    --countryCode 'fMKjUg2qBTxXl6rY' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "98BQv2CbvipwfgQj", "policyId": "C29wdmIGMzNUM3xe", "policyVersionId": "F8H1ofMIqTk2ZhA9"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Zx7NlVS9rZsFbxnx", "policyId": "0TzZqVfiFXBLWW7g", "policyVersionId": "Mr73YAVRqc9U8MAQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tfxjyKmuYTd3vpee", "policyId": "1ca0tpWY5rSymuyF", "policyVersionId": "PrTPA6BPHoyptnlB"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'I6GaB4YniCJ90bMU' \
    --publisherUserId 'tlJoyvBr4TSMorrm' \
    --clientId 'jb6V5k8JmaJxdL9m' \
    --countryCode 'MduRZrKEpIrbY91i' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'a0MVyoISW4XREApU' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '9kxS2ucODg0KzDSc' \
    --body '{"description": "o59P3EsqAOf1eAcE", "displayVersion": "6Py0VINDC6xlrW8b", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'wa1K6N53H74kA4Sg' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'DBfhEig1K3nfOcsW' \
    --body '{"description": "LOkbCOnF5nfE1TBF", "isDefaultOpted": false, "isMandatory": false, "policyName": "enkfYYsC2ic7SRxu", "readableId": "IVeevZ4tgG4k5wG7", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'C6rdRekBQrdKrPtg' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'wfMo8L4SxMd5w8Ow' \
    --versionId 'Oa18ZZz8OzI2BvF4' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'oXVetsv3RXKW5sET' \
    --body '{"description": "QyyQu1VV3916TCFU", "displayVersion": "kPWpC6p1uYNBrVpP", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '65' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'Gew5TQFR3Iqz6VrL' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'PdNF7oj5QgPaorSB' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'fo6yAfAYrQmh4cVD' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'ljacDkRaHYQPdy86' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FDm4bMandsgHG2Nh", "policyId": "irlL4V76ylZM59yU", "policyVersionId": "3uxASrNYUgWOeyNi"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NlVcN1zhzKVQE5sl", "policyId": "3SCN0lFso98DZRMZ", "policyVersionId": "XbgDspfIflyisxyK"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8PzJuAsmYoqADKDX", "policyId": "AHciAiHqvmZ4yNCY", "policyVersionId": "wr1ag8f10rmDVKX7"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'KqSo3nIgtX2zqSlS' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TR2wynTskDmU7xTY", "policyId": "g8pC4OkyvJDCkftj", "policyVersionId": "a7d4p7eUOFSai19v"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZQTpNQzBEpAAWmJK", "policyId": "fAQ4w4ckJDQa5lvg", "policyVersionId": "DwTFCzal5p4110Bq"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "trvUU936jdiEudzK", "policyId": "4hyo126i0oQBVCvY", "policyVersionId": "JE4DJgvciIPBEoGI"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'xsa94wGAIGp9iXE8' \
    --countryCode 'jXocPtO4zxfv16wa' \
    --namespace $AB_NAMESPACE \
    --userId 'dLQEhmN4JuXI7oIE' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1cVOWybEj9eLZnaj", "policyId": "DiUcdEvY4pDpgeWy", "policyVersionId": "nQd8hNZNqhNyfo9o"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wUvw9JkaoX8NfiKy", "policyId": "Z4ktJLwnSxOocXku", "policyVersionId": "mr7SMXQ63LNsIXkr"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "j76XoRj6CZidIID8", "policyId": "HUwVF4A2dp6DOspt", "policyVersionId": "FIGhD5jtH9QxCvCk"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'yW6FEmHRXnsk22Gs' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "jnAwM9i43f1V8knF", "policyId": "Xhpp2UELKuIywfv8", "policyVersionId": "RSWDjMeRmIY3Zhln"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "60qCJKqckK8kbzQr", "policyId": "mposFpFGxpP0idVf", "policyVersionId": "XPvdvg7Dbj8DqJrA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cDEd9DnZhX57xMNF", "policyId": "nHZeLJuxumYja8Fo", "policyVersionId": "7ApbgzBgHJl98vs7"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'vYVFdKHSHbmbKcTa' \
    --countryCode 'EhmaIBhQQmXkAYuZ' \
    --namespace $AB_NAMESPACE \
    --userId 'RkFRiBHjRCCnATdZ' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'l93EofZFrmMFHhCg' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'rUFh1JB9dxaWnMuH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'xXZgxwT2y1JMfb4F' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'nexfnz7AhIHfohkf' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'xTyPhlExhcPhmRsz' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 's9BimIeviTztM4AV' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'g5VVu43jpqy4E49f' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE