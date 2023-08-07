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
    --userId 'u2aatsVtLFuCP3jg' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "mhp5ODy778IlNyjT", "policyId": "ZuGWrnTYGqKmMHnl", "policyVersionId": "PLIIVrmWUyvjxf03"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ox4dHAjhU0tCYZQD", "policyId": "A944x9Gj53lLjh71", "policyVersionId": "rZVEVi92aEDDfq38"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "01Lvlb2q0UjMKbv7", "policyId": "PM8aMG4wKLNpED00", "policyVersionId": "9gsVuclV8KhHlL1F"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'cUgdyESfaePpCE1P' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'RjG0caWnsfSOBAOI' \
    --limit '99' \
    --offset '74' \
    --policyVersionId 'yVdFySsXifvybwZf' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["fIMso2txTDcI5jx8", "5rwMbdqJyGdoGA9h", "qtxsA6sEdCsybg9q"], "affectedCountries": ["afOPWa8DIBPYzFMy", "UTOUlyKOLtCPtG2w", "PDMkrmQdsV8eK8lf"], "basePolicyName": "cHlnEdGmcj2CmPCb", "description": "8r6hiqIMCpi86CRj", "namespace": "GGAhbLjJMQsgfhRK", "tags": ["pCwf8CC2gCj7zGtW", "ATI6U7PfWKxJ8oQg", "xN7zQ2PODiDoCFR4"], "typeId": "HeqsmOUZ7vL7lYjY"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '2CkUYgEdhoz4PiLP' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'l3Q88srNf3U7QyaF' \
    --body '{"affectedClientIds": ["hbMVc5Z6rTpsJp9M", "MQ7oGCBCJ6xnxdJ8", "W1lPuaKRJ4r2FfQv"], "affectedCountries": ["kgqTR0TaCedS8oQS", "gVttAwDO9eLm4RKT", "BAkY5ZXaIkOR3D6O"], "basePolicyName": "T00McMs406vYb616", "description": "FGXj7oB8xb4RNXTh", "namespace": "OHIMypjUZRRp46PR", "tags": ["qyn2NoUFMl3zd9N9", "qZh9UOChd5l03ycW", "oQsH0y5HGDodcTZk"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'u3E7EI5hFcsaj6Nh' \
    --countryCode 't9AblyVSs4Vn9mu9' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '3do4rrX0SU2TYyP4' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'UjPQ6XZoVQVTvbyC' \
    --body '{"contentType": "QpqQP9T8YUMuAeMR", "description": "j1qO648c7HhYr1Ls", "localeCode": "8DIPrn7kfLNUfhjM"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'lV2Xoaac0REJDken' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'SYDQD39MojWT31dO' \
    --body '{"attachmentChecksum": "s71mhXp4OOT6EGQf", "attachmentLocation": "IZl0v13LllGcF1ma", "attachmentVersionIdentifier": "Jaz3C2RqOcCzFXiN", "contentType": "wfj1hNS7HrncI5DL", "description": "4qtSyWhhOVQkB165"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'FDa5LYBhCzV0tcOA' \
    --body '{"contentMD5": "yke0YqoZGxuHq6dV", "contentType": "rER2H3ZOjAYwZUHN"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'M6y9jEUFh6P0SzZu' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["RmVv90eEO88xZGsr", "wlwWZD99UnFrSgzE", "Mdblknzm9prf0m3k"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'JbqJrZ3gE5o9CoCT' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'ayeKklWR8f0hsGmH' \
    --limit '57' \
    --offset '51' \
    --policyVersionId 'zPBXRLlwXoN15F5A' \
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
    --body '{"affectedClientIds": ["RVbBL9AVnlLd7asY", "tArFYebtYDt5NII5", "DfZJMg4tZOVlIlIi"], "affectedCountries": ["qEAgo2oT6Be4X4Cb", "RUvhMTf8hIH2YTFx", "xeD7O9pMrD6V6WRX"], "basePolicyName": "P23oswCd9JKXEGNg", "description": "Y2wOtuYEjopAiArM", "tags": ["VPjZoTLVpyXQlJTO", "0AiIvzKZxtYMmNYd", "IZkxhK413ThBjBbT"], "typeId": "gVmNRt4XTEajnyD4"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'wnOiHEaLyvdoDbC4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'Z1oVfu1i1Sgq1aHa' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["4j3XPWWegV3paL7u", "v1QkvuUjxoheMKLI", "BVmCnM784Dd6uGPN"], "affectedCountries": ["j4E5ZRkrthQSj4oI", "uGmP0cBXk4k6ufw7", "nqjk5Ksq1eRbL1MS"], "basePolicyName": "cl4njqU1L1uoumvs", "description": "fqKHYSlbRycbUk3x", "tags": ["z5QYCHHmTxKLoa5D", "YLqN8mSV21hl8I9Q", "ZL4LxHiIBKg9A7Kc"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'qZ5tE3AO9Z6sbamu' \
    --countryCode 'm7xcrSoxXu9qRZQw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8MT24sRGcB5U8K2j' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'qpYWqVcNqWC8RHI2' \
    --body '{"contentType": "AEJeij4bC5yS1Yyc", "description": "ty8Te8I7my2FS8uH", "localeCode": "I2UjQwQa1zknHP4I"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '66f8TuEpgsTm2zNR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '0AfKThae0UrF7xqz' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "AicCHy2na49FjhGz", "attachmentLocation": "9QPLBZQpdUUdPDYx", "attachmentVersionIdentifier": "2VKLe6S11sMkygMW", "contentType": "o0Bv3Vl5z9ZaLr9M", "description": "MpZH4SF8M9t5C94j"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'StrSVk3ziAPZp17C' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "4M4F3Fqt1Tht39Tv", "contentType": "WBrrf9Cx4CifA5Nt"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'JhaZVoRapbTTqtw9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'yMWv6fAVRxZkZNqv' \
    --body '{"description": "PhKSyiwUuEBU3T52", "displayVersion": "qlvcPvTqeOP7p3Lw", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Kbitsd9mgVNGZqEF' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '1BvHYLNC2ni48G1q' \
    --body '{"description": "n8u7h0n4pXooZeaT", "isDefaultOpted": false, "isMandatory": false, "policyName": "IAHtmb22bFTQdw6Y", "readableId": "izWLDexsoD4dJOa3", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'k9mQjJTmaZ7kHOfb' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'vvZDwfkHOfLEn8zF' \
    --versionId 'lIP8UdXGKKKaKxFV' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '6pak9ctlm8aHEwRg' \
    --body '{"description": "5r6TAT7XHivOJBHB", "displayVersion": "X0jN0NecEUzmrcQH", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '82' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'y1E0QrNVySxzGx3I' \
    --publisherUserId 'AVjjWIUS06qp4n07' \
    --clientId 'dMF2tXexhcL1tKE9' \
    --countryCode 'HbnxiX2hcsn2W5fQ' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "a8QEpDY89GRhwVWE", "policyId": "lprqDqiH2FUw5ILX", "policyVersionId": "4LsY6Cqwt9Mqcm5Q"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uHKlBSWoEqXa4CD0", "policyId": "Gk7I8TdkpxesqvYi", "policyVersionId": "yJ1kN8UoaElaHW3t"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Uaxf81OnaEgkSVuX", "policyId": "XldpFd3EW3Atn7It", "policyVersionId": "t4sf5c9khbxNLO2J"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'oB8c1IctB4Q2gjN8' \
    --publisherUserId 'RjwRQDXHjGplSYpP' \
    --clientId 'Fn7WTjDwiIIyuDTn' \
    --countryCode 'bj7Gb6CU18FUQZpK' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'b5aniMzwSqQ58xpc' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'prRDKvofR94fdNAK' \
    --body '{"description": "1CWZXLM4U5bdPzAm", "displayVersion": "yFLz2uL9c6igtIDm", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'uIadYr7kHTbtefbc' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'eDhRvd41FgxxXfkC' \
    --body '{"description": "d2MxpXXGquowYGp4", "isDefaultOpted": false, "isMandatory": true, "policyName": "GP0UOGB5FXsUdOZ9", "readableId": "S27favoJ3exlEZTf", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'QuqXNTrE0c1xTwsT' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '4NkycHmfHwY46pol' \
    --versionId 'Eh2BJWreb5RODN0O' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'QvjOU04qV5CBXEzZ' \
    --body '{"description": "04eZhFU7qt9Et8x5", "displayVersion": "afgxgAoaAlwEQ5VO", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '90' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'Q8KVhFgCc29HqRxK' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'Oj9GrIrqMT3op6li' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'YYMN4mbtPhKPSZQK' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '2yIOuX2WHZzxwZJy' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PIz1V1TODi9PsJCR", "policyId": "iQkMqzBlrs8USkce", "policyVersionId": "98T3sUGgswVfpuff"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SAeNtaaSCTaEUpp5", "policyId": "h99K9Gpzk7wb7yNf", "policyVersionId": "m7whOfFKPgDDGF8o"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1Y7o0Iawoa06IRZw", "policyId": "J6Yv95vtE48hHMyk", "policyVersionId": "hUB8FLbBYowqeg86"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'nHD5gbITiW3vdtJX' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1pawSuOuTJcALq8j", "policyId": "0dQ2n8TbUZST48JU", "policyVersionId": "Pge1I7auX9YDzxVD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2kRM1UOZp9Hp01OL", "policyId": "5KH900RShAvj46uG", "policyVersionId": "Qa5Qtd4LWtE5w1WB"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dYtvQcF4xYMNam2C", "policyId": "SgCqxd9C3JTHH9r4", "policyVersionId": "95SWVHknQB8qOtR0"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'y01AjFaCEmj950Mi' \
    --countryCode 'eHDvYBQ0ENykvvht' \
    --namespace $AB_NAMESPACE \
    --userId 'fl1gDgmCAIf18Ust' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "X6BvCmczWZvgSqrd", "policyId": "P8WMXlstEeEVrve7", "policyVersionId": "uzEv4YftSCNS1hcy"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OjuYgHxWrIS9QwM1", "policyId": "djLNvCiQJxbWrpMI", "policyVersionId": "YdQNnDuAWHhUZZ0n"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "auJJUWTATpfjMYsl", "policyId": "vC9WzhmcqIascNjd", "policyVersionId": "p94YLlCUarc84H0Y"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '0LyE2kTXK78tyCxi' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SLtZ3AjN1WGJzpZM", "policyId": "Z2J1XI2CmEmtBcZc", "policyVersionId": "O5IZ5HVNrpVjVS3Y"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JXzKFamZCjxbZg6e", "policyId": "QKDz7eOlj6c1KUPo", "policyVersionId": "WnQTCU9xsDQRkRrw"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ARpZSsUWmbmQvy95", "policyId": "ee4UcP12Mu1WD4zG", "policyVersionId": "xxNatAdHGWM0ESxU"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'UIq74dMTxtmCR4ac' \
    --countryCode 'XUw4QPbkjyEt0wua' \
    --namespace $AB_NAMESPACE \
    --userId 'd8q9XI5KEoxUDhxU' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'sxScz0PowU2ODcWL' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'piwAhcxsmdGQmROL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'RQgN505PqaPrLX1i' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'uguduBExHBTEr758' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'ho6RzCF2CmPSnJjl' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'hEVHpcbqlokjnBZn' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'llnltcHXNgSvkmWw' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE