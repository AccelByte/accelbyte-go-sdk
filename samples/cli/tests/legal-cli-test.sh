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
    --userId 'OTpxvw1b' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UBM0lGC5", "policyId": "bwTAiQme", "policyVersionId": "1UW4a2FG"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "B601UQA4", "policyId": "9T8bcbKm", "policyVersionId": "7N78FqMx"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "w8w2E4QD", "policyId": "6Fu2aXDB", "policyVersionId": "D6CuboWR"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'dTe1JxPm' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '4flZ9uQA' \
    --limit '98' \
    --offset '8' \
    --policyVersionId 'xwCPCOHx' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["oyyzvV24", "4UX6yGKG", "e5TSNnQP"], "affectedCountries": ["D8lSWvds", "CZoDhcqk", "vue3rOZs"], "basePolicyName": "aGWcXYKH", "description": "DtNEipRh", "namespace": "QoaCAIDs", "tags": ["8rO7Mj3Q", "7XMrbUXt", "LTbg1SHK"], "typeId": "6MbaDgZi"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Pw358B2S' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'idU0Lpsx' \
    --body '{"affectedClientIds": ["4nbcgZvg", "h9hhPkaB", "vfxvrS09"], "affectedCountries": ["zgY4jZSI", "cvsnzu1i", "txL9RGbM"], "basePolicyName": "S0twj0w9", "description": "e6VoSDOD", "namespace": "2URnqep9", "tags": ["rvePRiCv", "j8x5FztT", "NaSoqj2V"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'HtFQfiwM' \
    --countryCode 'W6prBkgL' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'sxrY0uq6' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'sqBewnK9' \
    --body '{"contentType": "YPmNe9sH", "description": "MUgBJTxc", "localeCode": "eAxo41Vx"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'UtMbNsdU' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'smh2WJ7h' \
    --body '{"attachmentChecksum": "IK0zv7vg", "attachmentLocation": "8EGFb5P5", "attachmentVersionIdentifier": "iWF5mb5o", "contentType": "auGMiAHz", "description": "9gf0MeWY"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'fzWoXDQW' \
    --body '{"contentMD5": "0BsmEYl5", "contentType": "dePK9vsK"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'UfiyNJhV' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["il3ebynU", "BcovS5aB", "J874YxUG"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'we7H1PfC' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'E6cMiSGl' \
    --limit '1' \
    --offset '62' \
    --policyVersionId 'b4ZZFD5o' \
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
    --body '{"affectedClientIds": ["VFuRWGgT", "NsGON9U0", "6OvKt475"], "affectedCountries": ["bD2WyhFR", "v7uFlCiN", "wnP7cdiN"], "basePolicyName": "fXGhwoUl", "description": "pDPdrT4i", "tags": ["Fh0bTTmP", "a3iMbvES", "POejvthL"], "typeId": "HgT9poEv"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '4l74kWdq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '5vhag11z' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["Tp4k3jNS", "TJZaTS2q", "0V65vvoe"], "affectedCountries": ["c9r96j8y", "s5gCRVgE", "Spd1rMGI"], "basePolicyName": "aXGQEFlQ", "description": "TyG91rD2", "tags": ["wowAAyFq", "94vXJXeU", "eQ0jZpFn"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'tmqqKwxy' \
    --countryCode 'IhVgt84O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'L6vREwMK' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'iEgDBFww' \
    --body '{"contentType": "HexO89io", "description": "o70H9qjg", "localeCode": "pcOlUQoa"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'Ak0mb3Wr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nEpLFxez' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "kgkarZ3O", "attachmentLocation": "d3M2IsfO", "attachmentVersionIdentifier": "GWdzIuQZ", "contentType": "5JNAL04V", "description": "HtrsCYNs"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '560ybRrT' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "Ouzs6dLk", "contentType": "AHMPDNVA"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'B6qHEg87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '6OgK2lwX' \
    --body '{"description": "wwxqT4j6", "displayVersion": "n7Y88eb1", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZNKuTnk0' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '43TMK3qz' \
    --body '{"description": "nAPdIews", "isDefaultOpted": false, "isMandatory": false, "policyName": "pg2t5j8I", "readableId": "LbdHZU22", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'lU1Xladk' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'gP4bT6fT' \
    --versionId '64lSJKIH' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'xNwgSZjQ' \
    --body '{"description": "DbkF6mpB", "displayVersion": "ZKDU0g9T", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '45' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'kzxz63TL' \
    --publisherUserId 'WsuFd1lc' \
    --clientId 'PLh0YdkQ' \
    --countryCode 'DoB1xyMM' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SxqaKgvF", "policyId": "ef5WY9G9", "policyVersionId": "YX5vCYhS"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JZoCtRzc", "policyId": "BSaubnvL", "policyVersionId": "7ns3cTGe"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nYbIvJCq", "policyId": "M6SyW9W2", "policyVersionId": "xdp5lWcY"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'pQs2BgLj' \
    --publisherUserId '5LNxja5e' \
    --clientId 'lxRE5jdi' \
    --countryCode '96v7kha7' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'dt18dfGT' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'w9ZTQH4U' \
    --body '{"description": "rVRpOa3c", "displayVersion": "R5KgsMy7", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'kMSAL1fi' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'AmAew55P' \
    --body '{"description": "Csd7z3Z2", "isDefaultOpted": true, "isMandatory": true, "policyName": "iOzmI5Ia", "readableId": "nT4X1fN8", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'gfZVwMJr' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'asoLr38k' \
    --versionId 'fAawX1R9' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'xTnHpnWK' \
    --body '{"description": "FI50jivQ", "displayVersion": "DGWgr1H3", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '95' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'zOhtF9gN' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'Uoe8JP0U' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'N7Hwcr1X' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'I6EPVsaY' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Schak8IF", "policyId": "v7OfzZpT", "policyVersionId": "9DZuZmvQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aXD5Ocvq", "policyId": "fAGp9iWS", "policyVersionId": "6NhlWksv"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1HENnQsq", "policyId": "p9v441GB", "policyVersionId": "szGsHFdF"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'PMKEo7KP' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zCuqHVQF", "policyId": "V7W1bK0h", "policyVersionId": "rmSNuU0t"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QK4OgzER", "policyId": "Uo1Rhkqy", "policyVersionId": "QCc3mX8q"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6lPgsnJu", "policyId": "nKDD6pzG", "policyVersionId": "LJtDU2Y8"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'DFJBahVe' \
    --countryCode 'Ix7arZV1' \
    --namespace $AB_NAMESPACE \
    --userId 'UJKgrrnL' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XnoNQPWL", "policyId": "U6IfvwEj", "policyVersionId": "8O94E2sp"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HumsmHfq", "policyId": "aMlAuGUA", "policyVersionId": "XUNt8JZg"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XD6mqGo1", "policyId": "LMxl6TvU", "policyVersionId": "YwHwmz5T"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'rGabRi03' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JsoA66VB", "policyId": "6P2EJEma", "policyVersionId": "bXrwpaA2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LH5Ahnvc", "policyId": "46zz94GH", "policyVersionId": "thJEREDZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zHLYtSCO", "policyId": "CGlTgPgv", "policyVersionId": "esvTNBb8"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'Jbg69LXe' \
    --countryCode 'SYmF6pP2' \
    --namespace $AB_NAMESPACE \
    --userId 'GvdWLbkJ' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'ET2PHYb2' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'uC9w7slS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'bUPsPGa2' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'u6NEWyIw' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'aApljhfL' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '0XcUxGSB' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '8xxckQUm' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE