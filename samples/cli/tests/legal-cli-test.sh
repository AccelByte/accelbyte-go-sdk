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
    --userId 'qPGF76T5FrHogHqJ' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "o0ZcqAkOIAltniHn", "policyId": "xLcY913uzYJwjyD5", "policyVersionId": "s9iMZspNtbBrpUZH"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "74UoKXFwP3JgvYYj", "policyId": "J5cMbSljapT60RYV", "policyVersionId": "6M3dQqnVaca9syd8"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3L3xEIrilSozbrzh", "policyId": "1754RYtWFUE06k5S", "policyVersionId": "0C8RglYOPZA0lDud"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'o9JjrjlQVYeu7Dii' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'fIR4FqbrYJJy5ig0' \
    --limit '60' \
    --offset '21' \
    --policyVersionId 'ywFjIJeeGFqfMHfR' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["xleAkipPEujljZT5", "ebH4gos5DBJ1QaLC", "508SnjlO7BzYjMuZ"], "affectedCountries": ["9SbKX4O8NclcAXwn", "vh9cyugeIkaIzyHm", "llfbv5nZltXdiSYl"], "basePolicyName": "vXzRyPciE8BR8FJb", "description": "0Q8gQNVrjd9iD0Z6", "namespace": "Cov46pOcDnXqn5r7", "tags": ["6PlwZTsOKpys3iRF", "eAkBWmomeTU7Z4rM", "3cjcrwnAPmuzdUNa"], "typeId": "xPfr5yjQ96Zff5Qv"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'FvB7a51X2csJDkPV' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '7AphWRrwRes5BCea' \
    --body '{"affectedClientIds": ["VTmkuLLW7WQroy25", "YFZBLZId4lrTjUxf", "tnnwiJc5I4PEBk4J"], "affectedCountries": ["AwOhWMGe8iEhU0Vp", "oI6Ucnr6sOYxOQok", "O90YKEkiVRQLPtgK"], "basePolicyName": "W5ZNM1nj53hzYLta", "description": "rmkszlt4HXml8n3A", "namespace": "06V7z303E52lLuIo", "tags": ["HMDEAMEsGc5YSGEk", "ZF5b9bKcOMC2tyHi", "P0vIkfcfBbIt13va"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'u07C6jd02BbvIemp' \
    --countryCode 'SgoVGBK9alPTImQT' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'u2J7L2LjuYjlvsWc' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'StFji0u2ECm8pdzi' \
    --body '{"contentType": "xoKJ5BLIMiz4EvsO", "description": "LqG9grXWuIzvJ3SY", "localeCode": "h5qBY3QNOePnSPwA"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'L3VUoTNUjHMGm6Yb' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'hZ2pt9wKWT9JU6P3' \
    --body '{"attachmentChecksum": "X9nQYjc6bqJtQol3", "attachmentLocation": "hjmkqz8A1XYe4K8x", "attachmentVersionIdentifier": "RATwV5UB0Pp6HWKX", "contentType": "w2mYxHohWRVSnOtU", "description": "tJ8BvluE7J5XZnGi"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'IbBeMnV6fcp5Fgi3' \
    --body '{"contentMD5": "0rYmYJkbrYBD0NCQ", "contentType": "MQzcgAii2hA5oHxH"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'iUuuEh1DmH1J1wH9' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["Wntlvd1qmbHpeaLg", "EWrneuS8vOtifsw2", "DIMPwttdlyczBrRL"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'fFfQ3SLjqVmf1E67' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'V8juuCBrKHRg6nQV' \
    --limit '98' \
    --offset '24' \
    --policyVersionId 'pWQhsj8r2t168h7O' \
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
    --body '{"affectedClientIds": ["sAsMfZKcVHFuVGLI", "SLBsfpZgOQwKuqma", "EhifKrm2eOAVpFTb"], "affectedCountries": ["vZKXDZNRZKPqFHBn", "1y1lfV0F7WjkGmYi", "5Q5BM66xg4UcdGip"], "basePolicyName": "Yw0aDJQq4ToG2i0D", "description": "U2ItOZtF1h77ORGk", "tags": ["RcTvcuR53UHFKdcc", "Bzkv68rVnZCzNTaq", "7SR1B7oaAiTdyUBt"], "typeId": "pBvcFZzWaltlnYFt"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '3ospdgVnbJDqxxqv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'VsT7CIIAQZMWcclp' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["3CILiUhLXX80BXMR", "xKBImTLXotn7U3GK", "DtBMpXj7QJbK6k8A"], "affectedCountries": ["CEZ7FhIag4tKtWYN", "lsHxah5VCOreJYvd", "ZNh6hICNuiSehQxF"], "basePolicyName": "Titkgn9qwMrknHo6", "description": "J8v0wURB5qo56y7D", "tags": ["Fvng2WYVTXYmlv3V", "QMfNljlTUJlptwxo", "nXi0z874jW69IUsM"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'kDoC3uHgGlNTsvHv' \
    --countryCode '8h6r15Xxa87Hlj3J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '0DVZ3OZqaUyJMjkq' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'trGejomj70jA4GmM' \
    --body '{"contentType": "STwWnM8PZGVOp6Q8", "description": "oI6UZMZHbUO0Wyey", "localeCode": "d5yxopPVtvPss7t1"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'mTtH9qDRxpySyZ97' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'Tg07PcjYVJ4S2zJF' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "IMGHbixdI1hW0YKV", "attachmentLocation": "prb4rpgXvipO0Ekp", "attachmentVersionIdentifier": "igrHK6fYslW9jrwb", "contentType": "nLhVwiVpKBxhyUpi", "description": "LPDjMixNoJuzkmL2"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'mU8hGbikU1zafmYe' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "ddn3QIgbT07ZsyEp", "contentType": "rs4bWJ4fxQnYM8Sn"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'CclhS5nCv4EKlPJH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'feaPtotXZvgEiMKg' \
    --body '{"description": "n4sI4UiLrGFTZwcL", "displayVersion": "SRICjAVJjL5QrwUf", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rfTtaEQtrNm0scbA' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'fCtIUAn1SLoVtAtQ' \
    --body '{"description": "RY0dMRQempxJ52DB", "isDefaultOpted": true, "isMandatory": true, "policyName": "AGJApzvfdMqkuY4z", "readableId": "Rzr39dsuAK4KJ4Gj", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'OPdRYzXMy7hrUzX8' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'POUcEbozAQ3l015U' \
    --versionId 'vAOWcKxuu4MBf9vW' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'zmVhEnMCMp7qBrXf' \
    --body '{"description": "MyOk8tK9hYHZGu8y", "displayVersion": "RTPToW9uNXOOZGf3", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '4' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'ezXZr3C3ib98A6ox' \
    --publisherUserId 'h56k0IBCJXBJilNd' \
    --clientId 'KSoIWRiQMbjVReNg' \
    --countryCode 'h8jPPyY4AqukShhu' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WIHgklJPFkS6fa4S", "policyId": "wM0fHBaigDHv8w7u", "policyVersionId": "jlNfU85nNsiCchtM"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "izq7Xni1fTq4ke6I", "policyId": "gRQNW18WkZCh3JxY", "policyVersionId": "jZxnUoevryBkuV9I"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BF7EbIofaqYRAYmo", "policyId": "dyjwaVVVqPpPnzw4", "policyVersionId": "iMq46mlpuRtHqX5k"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'KGa5Q3cQzhyaRIP8' \
    --publisherUserId 'AqzW1oCeyoHE0IIq' \
    --clientId 'luuWq3l75OI7CJRr' \
    --countryCode 'edCurmAlqWd9TfBK' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'GhcRa08TpAtTynUK' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '66JLJ28qaqKrAGMc' \
    --body '{"description": "9dLKwEAoi5MBfAYE", "displayVersion": "ziLtLGgczXBZQHtO", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'GjmACspj0MLTEiJq' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'DAzcs1sNwULBk5hf' \
    --body '{"description": "ChWAGUpFwHR3ofWT", "isDefaultOpted": false, "isMandatory": true, "policyName": "8pUAxIOiKSpMSamm", "readableId": "Fe5AiUo2g2ieZd1S", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'DA7USHsEfkRr1zLH' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'EtNiPGzvxuDyFGrz' \
    --versionId 'TpZ8UgeCbyHvCGKg' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '2wpjWpBoc2K0tC5X' \
    --body '{"description": "8Y39ygIcWx8O7mFX", "displayVersion": "musjh0IEKUiogaf1", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '49' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'bn3o61Vs8BX9b83p' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'tCzpcb9CPZt1O0Ea' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1oC0XpYZd95NIhQ4", "policyId": "Bo2bbaIJxpD4fXWd", "policyVersionId": "nsxocTb5zEbe18en"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hD9Wluh0LicvkEXq", "policyId": "ey8IFma8R4u8Qnms", "policyVersionId": "uN4iEgxbJpnWJvEg"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "boemRe94EF1L6GYn", "policyId": "PqtCNxMe0ebwzw7U", "policyVersionId": "ZVawe8d83XBYvWw1"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'r6yxnCxZoOvZRbrL' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "twxnntC7qiwaws78", "policyId": "x5Ad0ASi70c1EBjr", "policyVersionId": "3hzUZXTn4XfaMfQ4"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MiZzNf0whb0TFhuH", "policyId": "wZoelUzRXIozEtJx", "policyVersionId": "aM8oNc46eXt8UdiH"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7joJVHiIMLdIlyJh", "policyId": "oASnG9arLcZRrUvS", "policyVersionId": "MAc7mPiUlAcPSwtX"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'E7NZ6def5vjaoil1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LMadBXCEGtst6Ehx", "policyId": "kNt14ELBr6K73FuB", "policyVersionId": "dphKSxyfDFvptT4E"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "u9RcgwLDpfdQAWQT", "policyId": "2R6pKj7Wm0Gt1jQF", "policyVersionId": "m3Un9Xy3pRNNdsuC"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7le1y4QSRncfb3me", "policyId": "jhInIr3VRyvqvwfs", "policyVersionId": "X99KpqW1kjwqw0SQ"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'eTykNmqevZWe3DZO' \
    --countryCode 'SnrB3U29gvLo8dZD' \
    --namespace $AB_NAMESPACE \
    --userId 'vueYXOWjaXINXyf1' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'q21KRdvUPIqdTmIm' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'rATYioM1RHFtFv1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'kVUsM1bu27TLG7U8' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'OrBCMg9vQ85R6WUY' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'QNJfWDTi4PcpL5A0' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'L4ECBQ9W3Mx4PBYU' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'bbNL06Njl6Gy4juY' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE