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
    --userId 'cguo0sRJhz5ndI5s' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gIocKYssBVKF6Rol", "policyId": "4hFtxiV3fjRfCz1B", "policyVersionId": "iLwbF2uUtkgaIoQV"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kIlogzn3lP7fx6x8", "policyId": "TXlIC8yCUzWEeXjI", "policyVersionId": "ahn9oWIYQoq7aZj2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "axC2D4PgY5JRnS7U", "policyId": "8TwyPsdCPHoN4DOy", "policyVersionId": "R9enE2ZXB5ADeDtB"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'vcRgSwWJSwvBKoiO' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'wmdoQ4E0AdY0l3W6' \
    --limit '93' \
    --offset '11' \
    --policyVersionId 'XPHtoZFDQ4BpKnlt' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["OFsxthhLuo2CYhlJ", "2NOIgAnUmLgUHBU8", "CmG6aFiYbg7vRxYu"], "affectedCountries": ["TKG28pKu0z4brk2I", "o5UNcQxgNLw7q59W", "xjerrcx963WB8Epw"], "basePolicyName": "PX6vgm6TFolWLeJL", "description": "kdPeKDPryQKJ9juA", "namespace": "IY6Gz2eVPCelhJhf", "tags": ["tV29NhNMWQ2Vu6yf", "QB5oOgGAej6L8AMD", "OISCXbKEn37pVExC"], "typeId": "lIWEEB1Q8jNEdYQb"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'dY7lB09wTrGqcMbj' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'cwcFKWIiSRkHNx5V' \
    --body '{"affectedClientIds": ["kNbcWHno5GfQ2aBm", "KCJyHrQb3XE4eJcy", "2SrwFktq9EQzuljK"], "affectedCountries": ["ZBfOmYwPVYKmRPvu", "NQPareuvWCc3OHxK", "7H74wWPYwMSL9csZ"], "basePolicyName": "NAWRjqBIGaJT24of", "description": "MjdVaHsmak2RR9QX", "namespace": "JCaDqJcEqxjdO25O", "tags": ["oFoyp3J8h2rGj2XQ", "ShHCGkBI4kI9xojJ", "pdoB0Y7FWKbAms4Y"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '6GAlb62eK8PfPVdU' \
    --countryCode 'NGCzGDO1W6UlhPzg' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'ievcIlMZOrwGsfK0' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '17xb2vncEMGCRLa3' \
    --body '{"contentType": "uwSQwQdByDqdzTzq", "description": "NfTjbIs7hZTFRkBm", "localeCode": "xMFdGVgznpKrsj5T"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'r8hm5x3yoUgMNp4a' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'PEbRcUzFwYOhDyH0' \
    --body '{"attachmentChecksum": "wuI6hjxAYO9FalSo", "attachmentLocation": "xusGsGwSdYGxSbPO", "attachmentVersionIdentifier": "UNyfOTsv2zDi4zD8", "contentType": "YFWuTTNhajcVb0mv", "description": "C1Houl4lJYsfUP2H"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'gh5xtLLKLGcHz7z0' \
    --body '{"contentMD5": "i1Y52oRQIpnMCcF8", "contentType": "RGhMWJK58c8f7iU3"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'HQeVjQqDZ9TQVH1B' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["A3LDGL23tgOiETSZ", "yzab5M38gqWm5b8k", "CUKDOLFDIvuQeYoW"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'tSAgP074zYz0vYQC' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'ndgifpirZQNHcNZk' \
    --limit '26' \
    --offset '6' \
    --policyVersionId 'WYFARdua6RHshHRN' \
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
    --body '{"affectedClientIds": ["2YDOhmzliF1K5ARy", "LVl6DfBBS9gUZW2G", "bFxq5arSAtGT4fu5"], "affectedCountries": ["G5ogaMi4y1XQiSnd", "FOwilpGTMklvSdzV", "lBKUAqSkYMIWCg30"], "basePolicyName": "OHNl2T6eyGEdWbf5", "description": "4OoGKnDNU1LSD7XE", "tags": ["3BZTmDsBzoSI21FA", "GowzEYuRNYe1KqrM", "D0m0RLTiXiGiImlV"], "typeId": "0ytssC8JXwLOrlzR"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'TJJUN0wBDJuLgVNQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'LSnpLTi6D1j5rdNU' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["hPbEx5kgFKdnZRK7", "DJ9nOexWAyg5XhBC", "8YFraqFgb6Cioe7P"], "affectedCountries": ["gSzKga5JvFLSP540", "OhSJrvOMyeIRc11r", "OdOIjHdGTtKS3vwn"], "basePolicyName": "nfssmgifif7qclYF", "description": "CYOBW3rNCMCwewfw", "tags": ["WYgM1aCkg96H7J7Z", "UcbztMdlrMX4X46s", "mg7Xf0bmhXW6xHji"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'AIxaJVXXwJW5n3OX' \
    --countryCode 'IUebyWU5sJQXMuTo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'gSjy86VVmVXBPcHl' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TJAZrkCTA9gsJNbc' \
    --body '{"contentType": "weOo5ZPtcZNy6duj", "description": "l9Uj5ujRVHm8L6jt", "localeCode": "k2oV9HUWzAq0kxFQ"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'gLiaMb3Qb8MzzXAX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 's0tmPZPWD0Reio9O' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "LtamN7wKCqo3oLi4", "attachmentLocation": "FY3XU3yLeMj4ZrpI", "attachmentVersionIdentifier": "qUGnX4LsUFRgG7p1", "contentType": "IyVdSbWavRBgJ6HQ", "description": "JRhS5ps2mSlVZy5Y"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'VfSSBhRbwJefk5aN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "cRqQdpkv0AmrJR81", "contentType": "NoIfrBAfF7Z59CF8"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'i7XGSV0cqedFMovW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SbehU5OGtCpn6Mm6' \
    --body '{"description": "BCJAbpQpiIIvqI50", "displayVersion": "w9mFQijw7iR5aguO", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'kZQqScHbayDA2Q1E' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Vxx5PNpV7nVHThUR' \
    --body '{"description": "XeVcUeqozlzxU9QD", "isDefaultOpted": false, "isMandatory": true, "policyName": "KsnD3N5EhcotSpKf", "readableId": "SJmEJsRNkh0u8z21", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 's3jshgvotjt59YFv' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'L7m3IsJWufcsYm7a' \
    --versionId 'ts3uMTaFlkCVheZa' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '4vK7mJbVlLZuJ17C' \
    --body '{"description": "BwkeW9TrKOJw77JO", "displayVersion": "54HPFgqps07Wqrbm", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '80' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'd0rUdjM5zeGIW29p' \
    --publisherUserId 'Rc9YpM9X9qKyMfzK' \
    --clientId '3vGblFo8xpQGau1u' \
    --countryCode 'hwtklCPLdvlcN7nY' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d1tOPyDNkB4oVh8m", "policyId": "KZ3D605UHn5mppPA", "policyVersionId": "TGUjSvwTYnWOuA9e"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QzIwLqzEpB9wPD0W", "policyId": "iO7Yp9r9MotVD2Kz", "policyVersionId": "5D9eOfQm8mQgT5yx"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rpYFSOM08PzmY8gV", "policyId": "lktc3UsVRM5k4vaJ", "policyVersionId": "6hNnBlS6gJjsOsMU"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId '4OAa9RyligX7IwTb' \
    --publisherUserId 'fwaI6DPPWMUemXbz' \
    --clientId '9CKzAgHtfZWIbyCV' \
    --countryCode '2SHUSQtntAJTqPoe' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'ESLj4Byf7CojehUr' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Dm6oPMwJTyoRiJWg' \
    --body '{"description": "eEe4lKZ1MoiATATz", "displayVersion": "Ep4peefs8S1QG0il", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'lsIC8QUplUCQmtOQ' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'kTaH58meQGkuPO5c' \
    --body '{"description": "kF6FJvRSDE31YB8Q", "isDefaultOpted": true, "isMandatory": false, "policyName": "UCiT39FAaCl2FXu2", "readableId": "dStNf6wF473jmeEa", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'V4Alek9TuaJKdDKL' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'LC2vv3yoKCSSTx5Z' \
    --versionId '9UpAuNRmPd73zSVf' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '1t3EttpyA5lnuABY' \
    --body '{"description": "Zp65XYyDGMQirlVL", "displayVersion": "wLbJvlETIoQS0tTw", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '28' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '5Vl1PLE4LmRjSzw8' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'zCuTSASm7chcuNLJ' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8StW2X28nkdgeUyd", "policyId": "FX9DohI2ScDZoASE", "policyVersionId": "4oMm2PZPHbXKF2sv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d62DS03it2dVYBuP", "policyId": "Qf87bGx4lyBQ66BL", "policyVersionId": "yF59To2T2UOhq5yF"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WYyNrkm5bmDzs7jg", "policyId": "IgMt7ixK7iP6xsCz", "policyVersionId": "D0dBRRZDNoDLIRpc"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'RxmBxZ9VmxEnk90d' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bzprMG8Kj2q7fK7h", "policyId": "ZXdpngyt6kmsqBVI", "policyVersionId": "FnFw5lQEnIMOec1I"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yL8LMEW6q6b936gp", "policyId": "4MGC6mu5HJobnHf8", "policyVersionId": "HiO5ZsLQ2vuGmKig"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OTeXqlg7MIWdzZkB", "policyId": "XGjrbUbWtwr7zth9", "policyVersionId": "xwFCV3cIE25HwcHW"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'R7aHR0FTo1zNhSSi' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "enRlCEPx80ejpe2I", "policyId": "GOhQZwFn5GLI9Mwv", "policyVersionId": "M5wFcFDXdyCozViv"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "te4ysPQtOBOyXceC", "policyId": "7wZap0Sy1W4d1c1A", "policyVersionId": "WKVLeYZ4357krUTS"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lNZOsKWCRqCK1Pra", "policyId": "KNGzrNGqeDRetDXk", "policyVersionId": "UMth3s07VjvWWzhL"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'K0zQQ8aTS4BUUiOO' \
    --countryCode 'Kv0kV08h9NUjgd6m' \
    --namespace $AB_NAMESPACE \
    --userId 'Apzlp0YA3G3BUus9' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'K66fMwswjQOJGmFp' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'rCEZz0QS9GiwGAHP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'z3eq6ac0V0unrodF' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'Idi2RVTqEwSaUmOY' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'sDdBjjYBq5gQ9kNS' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'BcC1drnqL5APqsvO' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'TjD5KbeAv9Go8ECl' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE