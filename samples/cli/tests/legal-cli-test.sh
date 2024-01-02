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
    --userId 'gExiuqx0H0H3rqAL' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "28IjBm3RSMGL9Tx6", "policyId": "aUbIS8cqowQDrUIC", "policyVersionId": "8w5Xxljpcf7kyckV"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0Ye8RIQ4wqAHpmQa", "policyId": "uBwp57KQGyk3R4cH", "policyVersionId": "4Qgj0GlPvkJJ2wxE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RWLvqbo4vilUjZMA", "policyId": "9rE114psFE9WId4o", "policyVersionId": "BgH65d98LhIXxlCL"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'l8TIEWy8f0JjZyy6' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'HFox6pZL07KmoK1s' \
    --limit '16' \
    --offset '60' \
    --policyVersionId 'tV8Pl1JJmFr9RkL2' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["UubPkaZJGnuELn1x", "aBJGyjQs58C4bbeO", "dRBmbPUzzLTWav2D"], "affectedCountries": ["dqxlEoX03v5lyBXp", "qTKpqY4PW0xAv3yS", "VD8c8prumWSzSW6A"], "basePolicyName": "Jqb9R9Z57fE0zdYe", "description": "yLa1XdeJEGLubkPL", "namespace": "dTuD1OYCzKYrFv90", "tags": ["etWi8RK2IDHSATFC", "DvWVDc7M8wb8CnIN", "Tbg6uGLX0H5DYxwj"], "typeId": "2eXrNq2q95w1kRvb"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'LlKXaQkUCbaVTfNt' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'XCs4GkqCrvRbVVYm' \
    --body '{"affectedClientIds": ["UXRGhKzzx0TBjVKQ", "yy9W2dhR5hclKDxo", "M0oxYwVurMy8UqUO"], "affectedCountries": ["gIJDKybotA2zKSpG", "SEOCl3SPe7dq6DqN", "jkwo3OSKkQJv0UyC"], "basePolicyName": "VgkXe2OjaJG556E0", "description": "PJergqZEEbvxHNBL", "namespace": "peiR2yMaSE3CvHax", "tags": ["49aLzmdIO71la8LZ", "UpZnpvz664drSvZz", "5vfL5NvJBKlojLyH"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '41dlsvp6vLREjzPl' \
    --countryCode '742bp1FzYfFFmbJF' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'KiBRQa3i7l5VJBkT' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'FR6zRu0vcXXDzX7T' \
    --body '{"contentType": "dTFnBi5vckJ8jned", "description": "xoqnTuWSkvOGzqqx", "localeCode": "YI1EsRtswupiVf6T"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'omJia0CoB0TifSiT' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'CPhhlLSsCrSRs5bc' \
    --body '{"attachmentChecksum": "UNWlKr4lWvH35tat", "attachmentLocation": "BI62Y6wF9tjjg0VC", "attachmentVersionIdentifier": "Zhfpqu88ZBE69liJ", "contentType": "zTyCdZ1WFt6ExveQ", "description": "8Wp0cNyzD5QSh6Nz"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'o1RbI0RKHU1AUUtE' \
    --body '{"contentMD5": "ZKmMl50HNyZrxGYR", "contentType": "13BaAiNgl6MVPvGN"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'HiqLIN4mcKPawDNH' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["ZPL8ESUpXu0rZoqR", "8PuqNBZvSkCA0lQu", "X3gJcsFmRUkNraSd"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'q0YZmhwQifY8911Q' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'FupwWk6IsrsoPabk' \
    --limit '76' \
    --offset '61' \
    --policyVersionId 'UMEgC22b6xGewN2o' \
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
    --body '{"affectedClientIds": ["XVwE7Wgkd53SwWmP", "XEEIYSSqsTUGrNbr", "tAtJNqjYxcNpqNE0"], "affectedCountries": ["jQbeGWJoChaqmZWA", "kEWgQipN0ffQoDPq", "zSlNcAD8KJvQn5Ly"], "basePolicyName": "sKsnGCvFCjd8cYR1", "description": "KoDjj8DfdilfxDfc", "tags": ["bn8kOafWPXmFreiQ", "FZBochhvAxFgBEBn", "DtTZcBo9oGdtyErI"], "typeId": "auccQysfHNmK87wy"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'OXQclSitrNFfCZA3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'QBMfeYxlWYXYILaU' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["UgWYUrsg7BIAE50T", "sr36rRbwtPsuNd0F", "omcndMk4mYhNMvO6"], "affectedCountries": ["B5cZ0a435G1Izgc1", "qxFyYrqXOWVjbKbX", "3hlr3ngqKEYPIvH0"], "basePolicyName": "6iaE8MPAZoNzVlzK", "description": "uOiHfYwn8jAfemkd", "tags": ["00oklu2RBURcDgdU", "6FZw36jLgKk4pyjW", "YbPSRimIdTWGPeA2"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'NtZUI0VNf7YFf7Mq' \
    --countryCode '9Ew1gFmYKuFuos6s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'CzbpYL6mLAf4TxS2' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'vp51vopMapU0vFgS' \
    --body '{"contentType": "s7CMS9WmiQzgeDj9", "description": "ztPBUtoBVegSJCVd", "localeCode": "vV3BD2b03fa50hRd"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'JKeeahJRS1s7TGPf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'cfJ4uk7SqLY1n2rk' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "GBOd7iWa9XiyKgUp", "attachmentLocation": "G2j9v2Zx0KfRj8Im", "attachmentVersionIdentifier": "rhRCCkRDqUkZ71EA", "contentType": "1H9NkJEw2xcKh4l5", "description": "T4gbNyabBRVieLjK"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'A7nHxOJKHlmvj8xY' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "LjJ7X1DzHhAxhBiE", "contentType": "5mtW7zv8OrqQRJMo"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '430OZzdK9DckdUba' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lXrUkoFf8ywm8yji' \
    --body '{"description": "22ABntTmnqyiVa7j", "displayVersion": "SsT1eaNnKo5NKx4N", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'MiBaxdc8mR26DO1z' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'on7ylLg2zfSH907x' \
    --body '{"description": "idU6b1rY3YnAQ5Ln", "isDefaultOpted": false, "isMandatory": false, "policyName": "WN068CUTfBdZVXij", "readableId": "vfpjNNjAnZ1KdUdB", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'yVsuLElM7b2j3kwa' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'fvfJC0zk7KKrBTYD' \
    --versionId 'QbkcmKIOVUTtLwRm' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Wl5v1s6OP8GP0OUn' \
    --body '{"description": "rXPRszs0tN2diVec", "displayVersion": "AQzTC7yFnrFbmVVX", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '74' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'u639WfQ3fI3r551I' \
    --publisherUserId 'Di8yvDrokJEV8Yis' \
    --clientId 's5uu0Gur6R6DIbPi' \
    --countryCode 'im2ysg2goIIp1rVl' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zRCKV5Vo8ikNT4ZW", "policyId": "kJAAZl4Ps7c2xMst", "policyVersionId": "G5THyw2tPlivchj5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1DfbZ8x7WF3itUM0", "policyId": "UfAun8QAf3xZyQIM", "policyVersionId": "yxihZrm8E50L3HTt"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Xi676yhQknD9imbc", "policyId": "3oVi2EhrjjFxpP3P", "policyVersionId": "Jw6UF6puL40GlvBG"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'w8PjmaQS69Iyxj8c' \
    --publisherUserId 'wV2Xb96LAFJiLjZC' \
    --clientId 'p3oKRHzSi6NP4J0I' \
    --countryCode 'AUUnLRUijO4dW19n' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'x7crhnnsiP4g5O8k' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'vYY712UtqmUynNVu' \
    --body '{"description": "KlHYI0oX7eDltnBh", "displayVersion": "cIsyDPB15agsKiha", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'khSA3UGudSQWfkV2' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'tDVd6o5LYwUe7wET' \
    --body '{"description": "wRmb2AmeOd0qVKo1", "isDefaultOpted": true, "isMandatory": false, "policyName": "Ilt0cDOIizBZU1mA", "readableId": "psW4AynHim6xnRTS", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'ILfohqfQBzcCUAUq' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'P4dnq6jMc8SVweel' \
    --versionId '0DiLSzwhIiyMNryc' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'NgeVycP8YG2XYMoe' \
    --body '{"description": "CpLAtyvhNoWQvATH", "displayVersion": "WJwdN8kc6lHTJfTN", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '72' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'S5E6xwnfDl5MI8al' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'uEomBpwZOfLRXgMC' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tlGo710j2Z2DSStN", "policyId": "UlPulydvQuEuOydm", "policyVersionId": "CUpFlLunyjyqHnlF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mvsX1ENAT4oZ9K0V", "policyId": "8pIt8IcB2uPDydB9", "policyVersionId": "8brTIWKkyzyBUiNq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "AhLQlVyYrgPD469k", "policyId": "cqxzJm5qnfwMpFtM", "policyVersionId": "Qt5dm3HGePlbb6sP"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '9THSUj8X94g346nv' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rJlVQ4YbYZlLomgq", "policyId": "U8Gh8niOtQI8lkA2", "policyVersionId": "XJxkkOAkb7Eo1z74"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "484bu2vjuQEkjJ8x", "policyId": "l6m6kEmiDOyBMkkB", "policyVersionId": "EiweHI5R0p35ghfj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xKIBcwIRyvCejvHG", "policyId": "5jmLTPWXRyojfC83", "policyVersionId": "cQvOIZnq6u8SvzPi"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'teZwioaTUaW6jkmF' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0MzmeASMM1fz0b8i", "policyId": "UfEe9SYiMMhl22JP", "policyVersionId": "2fBDgpBcQZOWFKm0"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7VMfgSMZK2lPLeOA", "policyId": "367SE7eVnLTJUTQc", "policyVersionId": "Sn67OfVCQlKnABr6"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5Fik9IyGo0Ya69qb", "policyId": "tAiycWd7fXxa5fYk", "policyVersionId": "0Qb3cm4L8w6Emhe9"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'eQotygHRjxdxAGVd' \
    --countryCode '0lwQO7Gl793vDqg3' \
    --namespace $AB_NAMESPACE \
    --userId 'bZ7TDvUaQ1sMwFyj' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'ZsJzI5WclIemYTL1' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'HMveDutKnApIzn35' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode '5f4v8RBnUXJ3TZUw' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'eSL1bOU6Ny858lIx' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'KhsAYPCwNOo87r4v' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'HvQPFmsKW6MqyTpq' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'fnWKLrVhZsjaKR26' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE