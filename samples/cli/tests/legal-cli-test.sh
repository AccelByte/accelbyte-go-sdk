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
    --userId 'UjZe3xCKnILI8RB2' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wfggeIeiBHOF1Qfl", "policyId": "1muSfqHarRpwINOZ", "policyVersionId": "cHEXeEa0KAjmyhAp"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "f9s375hogZfEkpQZ", "policyId": "vZubiszG5jgov3hU", "policyVersionId": "uYXhQlJ73b6HuxCa"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "64Y0PLgAU1eFpaTx", "policyId": "VhHkXzP8Qk5Ac4a8", "policyVersionId": "B8Z5Ylk9uxCnjgKp"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'YWtAK4sqsimNFYvT' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'yhomOrsbavuOGekd' \
    --limit '40' \
    --offset '17' \
    --policyVersionId 'G4j17mKjQoAPl6Mt' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["Zg52kave4Ch1j7UI", "C56p1WmLLtQNDJco", "WHWyC5HtLfhoV6b1"], "affectedCountries": ["fcgGJvxsL88fyT8Z", "9dbqazU2UaU9tIjY", "TMFFu8sP0aJY1gms"], "basePolicyName": "XXSKc0Em2PQ6BGIu", "description": "msbkVJCm2HuFZZpi", "namespace": "Zj3fy3vY7VdsPmz1", "tags": ["ZtnkxmVPFG7ZdXp9", "XZoVzpMeljMTeWiX", "gGUok1tofLygO7Kr"], "typeId": "ErHw1V1XQnD7qCY3"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'pgzpFYyrdOgybKHe' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'hxCJBKHvpBKVwjGK' \
    --body '{"affectedClientIds": ["JVM7HniefNzEPWAE", "LnHTHNbiVK3VDZMk", "gOIXLs3d2GIK8fDL"], "affectedCountries": ["EvHneQAK2XBC1qUO", "we4PnubxqN1MCT7K", "4OMt4rdVp8WD51vu"], "basePolicyName": "LaIWmf2pAvMr2zeJ", "description": "YQBqb5DN64wM6vlw", "namespace": "THztaqEqdBRkKHWj", "tags": ["QWArwZZhSA23YE90", "LD5TYAlCQaZVPEUL", "UCRpqaPUOrIpFYne"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'bcrLMtFKHaLdSblR' \
    --countryCode '5871bWPHnnuamDzC' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'B81ZRC4rJp2568w8' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'xQbEm7JcBFHu8lh9' \
    --body '{"contentType": "tWsdT1RibF5Nagec", "description": "NE3mb1GTvOOf0pas", "localeCode": "O3RRrcfPbN120br3"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'CrPoKY1oPxLUpumy' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'V1kisnEfti53Uoqr' \
    --body '{"attachmentChecksum": "WOv98z91pTiiJGWL", "attachmentLocation": "YJ53lawYKhV53qXQ", "attachmentVersionIdentifier": "y37ku3cBFSMtohg3", "contentType": "m7u01GQTAyuiu4A3", "description": "xfUfGeFx6HNA1x0h"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'aozNNvHmiQY2ob2P' \
    --body '{"contentMD5": "Oz37k1XBwhhvKnQt", "contentType": "P67AcaGZTiZMIeJf"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'E6sT8jzmwwX46pcc' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["IEDGKEB7Uo6Mnwoh", "HQQbBVSSvtIZ2p6U", "xW8Wrteq4KHVmM9F"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '6e3D0HrA74lABRsz' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword '6mP33M8WMfRbCYaj' \
    --limit '59' \
    --offset '27' \
    --policyVersionId 'aCIg8SCcG5cP0STI' \
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
    --body '{"affectedClientIds": ["hS6BCwp6w25vspIG", "Jrc0DKfol0SWeOIc", "3tshAGxGzgcAczGj"], "affectedCountries": ["1bCEickdiU5QbjOi", "lxaUXPzbUcVGPgNm", "FwLT9tRFSxAw4MRV"], "basePolicyName": "46aykXGuejgJM5SR", "description": "EPzbcJpzZw9glM2a", "tags": ["EENgrcD7TTJM6Cjs", "4k1URYiBbH3mjfUB", "koEFSHP4RB17zJx8"], "typeId": "fTRjUuMJvjOeWMhA"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'NZ6eamPbQSqkX6LB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'Qruu5LZTWUvG0vq7' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["AY8J2XfuAFoTs8BA", "z9v738JacSz4mJ5q", "08obU6qguRXoeBCp"], "affectedCountries": ["Jp9H6f2Z7P4cNwwJ", "CgfTnKzcwejdf98R", "6n45g02HUQ6atLCb"], "basePolicyName": "1x4EqXZhg4xjk0lG", "description": "gYtVg5VMIv6UFV9N", "tags": ["KmInciqr8s6vpJLs", "CtCweQSellUzUO2y", "mxtwETlJoVezIaXP"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'tJB9A6EbshWa0CJz' \
    --countryCode 'tS9RehVrPxmWONIO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'O3d2U78IilPfqWnS' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'IknZR8SyCUTveoiD' \
    --body '{"contentType": "tshFfUlNoV6yeKuq", "description": "FS3ykyx95L6vA92e", "localeCode": "HcYRYswkCkk9j1Xa"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'TnBviRjxdtuFWe49' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'KbgkKVlNcY21cQxn' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "hs8fkOBWXBckYvOz", "attachmentLocation": "V81i509mToPmTkT3", "attachmentVersionIdentifier": "qULedx14wm1Yndte", "contentType": "pPppomAPbSBFl6cJ", "description": "ORqdbdiYXa2fCQ1V"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'JLAyybraHID8zkd4' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "3CV28Aee7nIf4W0h", "contentType": "iHAjUe5WYch3h5D7"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'vGt6ZQ0nHqg1tUxN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'RgNymt8UTv8jnF1x' \
    --body '{"description": "f1iSgaenJKKY3Szp", "displayVersion": "WxZO2MHZLF7mXBOO", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'uz4EdqhGXQCU2hKC' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '8Ypb7xxHTJwoK41I' \
    --body '{"description": "yT7UMTPtqCXtqOti", "isDefaultOpted": false, "isMandatory": true, "policyName": "KPwDEmp7NGoOYtE1", "readableId": "7DWgqR4O1j8Gik5P", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'aOGpVkLlW6hWMqrW' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'jR7Qft1HeQckwsmx' \
    --versionId 'ILoMcx6PacYGE1ji' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'OFOjOzMMECYsxulN' \
    --body '{"description": "DqOVF0mgKUXeekNl", "displayVersion": "PqQfj43RB8vCnn6x", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '60' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'ScNVjE4Zd3LBS5bZ' \
    --publisherUserId 'oH7riXffetNidg0O' \
    --clientId 'GyrLm2Vnfrw7bi0g' \
    --countryCode 'MmAfFQStwquqiBbT' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nUV1fvtWYhZzTj4s", "policyId": "86eWgQIdvwykRAZw", "policyVersionId": "ZArTUPS1h6rwkSpX"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9Ei7Th7AgBCG2DAZ", "policyId": "NT3GZF9XGZgS5ymX", "policyVersionId": "ZzVyS5wtnhmofXbd"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ycemgjcg0OyoZKGT", "policyId": "Vt5R8JsLrEM1eWQw", "policyVersionId": "xvUDrkHUyqLC287W"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId '7MAiftkj6UPL7O8k' \
    --publisherUserId 'EVbeBUnjj3ayjiWC' \
    --clientId '7sZlzPX3srPwG6xn' \
    --countryCode 'UcV04BUjuLBBmWRz' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'HIK43evkZdwhYEZp' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'TRGpzpUGZb8CaYGt' \
    --body '{"description": "dLmPNLSOzniO9VVy", "displayVersion": "3IpDTUCwr5W0m9ZA", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'WJuPQeDQST4fYap3' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'rPLLXEtgyVXMIcVV' \
    --body '{"description": "YvsLQSOyGv0sL29z", "isDefaultOpted": true, "isMandatory": true, "policyName": "7ulcWWICFfpViEm4", "readableId": "AxYOz5x8kPpKYbpH", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'XVfLx0xs53hXv1B2' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'KUifCGXAb9tsi1u6' \
    --versionId 'BXRqfiMahMhShF4H' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'COSpl7ltGTeaH76Z' \
    --body '{"description": "A9qpzre1ELLoV0cB", "displayVersion": "bJWipxErMPgp3moZ", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '77' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'VUJKqFMZaVNO6Tta' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'sNy7jn5vBXF1jy62' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XvKd36PaDuvSW8iW", "policyId": "bALl74EEe5m0uWvD", "policyVersionId": "D6B5wMXzTDawMoB2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LQXGjNSFMw3kDDx0", "policyId": "3tA6nlMuQsoQ79C4", "policyVersionId": "5ClGKYwXVtefkmge"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "weLHPlTmB5awKPWK", "policyId": "HUGrxhbu93irYVDM", "policyVersionId": "yaDyrBvAEZhasu3I"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '523TnAi1eDECuXtS' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WUTd7FfuHIiSJZpz", "policyId": "XbektHsBCxe76AUt", "policyVersionId": "oBHPFOWMoXCKiO98"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zFm4uwD0tFtk4AAv", "policyId": "LmZs8oFj6DzHbJm5", "policyVersionId": "hgiVyE0qxrJh29SQ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zd3KrU9HPZripKWJ", "policyId": "njgHelDDDynOFLtP", "policyVersionId": "Sx46uLFnbfaTTlF7"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '0yd3W1mranBP9Xv4' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "n4VPqdw5goXzHmtK", "policyId": "9FJZZ5XYj6TctMc0", "policyVersionId": "dcVfHHzoWovYBoDw"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JPJsPQKnWON0zWY6", "policyId": "doY4XVj3YwY3wGmf", "policyVersionId": "pqV5MKwVG3NFmO4U"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nf2Ou16dSK5HRBAu", "policyId": "54tY8NPgYe4MkZRM", "policyVersionId": "LKT7vEJfcjN63hkc"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'DjtQVIbU4Sar9qQE' \
    --countryCode 'SdVAaKnLDv3CkJYO' \
    --namespace $AB_NAMESPACE \
    --userId 'W8Md3qHlltEdWotf' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '3ZCpGfbzCo59zGgC' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'YFf5CsQmnGI00P8s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode '1w6AF02WDeedACSa' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'MQKTSU6P6q4QHbVk' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '13YTV0UrqXxh1E52' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'Ei9Fr2y6Cx0zzBBi' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'oMybmbZIJA83Bh68' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE