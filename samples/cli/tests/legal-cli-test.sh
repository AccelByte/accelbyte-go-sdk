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
    --userId 'uNOKkNHa1TkTSvzp' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qve4dELcOMLxUZ93", "policyId": "8qrlu7Uz6Sj9Y1XA", "policyVersionId": "51y4bl0WM2XkqXNt"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "a0lmPp3lZbqTXmnr", "policyId": "B4QStsO3leULt9GO", "policyVersionId": "2Z1PjObJfU2PauTi"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vzn0H2sPkUvnAZYm", "policyId": "cBEpolDobgliQLYp", "policyVersionId": "RyLOiAuxRtjz4hgN"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'NCbWgXjHVQakxm6M' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'pbCmPGmQg69IRxof' \
    --limit '69' \
    --offset '70' \
    --policyVersionId 'ZpSkVdU1VHDZyE6A' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["Yb2WgH3fZDMjWZ0W", "gMBhA0itlKOXuexW", "FKs9VBZOVqgtqvBT"], "affectedCountries": ["SCXDXXOkrmq0KlyZ", "mRuvu2fCk91t7h5R", "M7rn2QHrV8QJUiwj"], "basePolicyName": "vD2HQezfFUlWFEm7", "description": "cNCbusycHYvXCStr", "namespace": "fm9Mrsh1lAqPXSzP", "tags": ["eeGqjrmbEaKriB3k", "6u85JSNzGPtKxIUp", "symNySyNKvmozJoq"], "typeId": "EUNJdVXB0lO6eiiP"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'TCid7Pu46QuBHeC1' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '8SN38PFwTm6h4woq' \
    --body '{"affectedClientIds": ["gKFwUgWyur8tY4jl", "DSBqYfMNtzgTmfqr", "SXDeCaBoN77FHJsH"], "affectedCountries": ["42dvG6hvz54hZtHD", "LOvul63IsoTlYl29", "FwqiDEUJEwyURaYr"], "basePolicyName": "pHyIt0mtHpvb61J4", "description": "pMJoYzaq88lyo7Fl", "namespace": "kvXxe1rz9MihisWb", "tags": ["LmPvoncoaKkpXCDz", "YwAE1LlDdayeCygw", "fNWAIhbAHHXm0PQs"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'wUedh8k1kM7bGxuC' \
    --countryCode 'h2FEQWwDBXeP2NRd' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'LWjeXz6RMdTnLU9V' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'IzoRX251Bvz12q83' \
    --body '{"contentType": "6qqQzaGRB9P5NTTn", "description": "TkKtRyZOprOQkq3Z", "localeCode": "HkGsIYjFhpTiV4B9"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'dLIJR8DpR8pikeOb' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'olGbxbPi8JXi8xUz' \
    --body '{"attachmentChecksum": "qBre61HKK5LN3lHm", "attachmentLocation": "oVBcmZOEvG355Qh4", "attachmentVersionIdentifier": "Wc7wB0qHArJinHlx", "contentType": "r4haxAE16n9d7CXT", "description": "gEymlyxHfhU00Ms9"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'm3ZnjmTAACFKciS8' \
    --body '{"contentMD5": "mft6KwxjVJLmAOAZ", "contentType": "xZYLNSrNfWWsdQq8"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '5tyqLP3OYE0CuIvz' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["mAsCkWrD7BipzVDz", "azz7hni0oPDIIcFD", "kxOegY3Vh1MqajOu"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'gcS1KCmNguOpEB8d' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'NN79UDK7T1weIzj6' \
    --limit '22' \
    --offset '38' \
    --policyVersionId 'dsJkpz9aSwTSmuJN' \
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
    --body '{"affectedClientIds": ["v4ILzLmu08ynb7BQ", "x3GBHcg99ZQUNiOu", "Ze27QeOdwxm3dslt"], "affectedCountries": ["LDTo3f9YdDM073VC", "7HPKXFkmd4x9tVPa", "odhX5b10IwPpvUIG"], "basePolicyName": "TsO4nRf7MiAHhlMY", "description": "VPMsyie9sJp6nTmh", "tags": ["KbIsNfzpDKXJsKrU", "6yxXHUBACaGJObnO", "VCj3wXdl0SmVshPH"], "typeId": "ugz6JQ16VMmLBQnu"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'ck7iJIzVUQ2csWT9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'OmNqmdUdhe3nQ8B1' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["zz6mAuEnylNMOWk4", "xNeAKT9QxEcdE4Ov", "yh5Ootmdi2G6EiPc"], "affectedCountries": ["iDaFqtRx8u7F4o9s", "G6wIA99KeMkw2s5b", "a0ZfNlDh3MQIHue2"], "basePolicyName": "Srl42SVXglUBRc7l", "description": "ktk9sZ5h6I19x5fz", "tags": ["HfMIyVXPc1YKwgl9", "j2jpCEzK8AKWypTn", "wSNk9oW7hw0hZ9XQ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '5YMLy5hEIy4KYNTc' \
    --countryCode 'DTuPwKBlKRVB7dRP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Lv5918JKTCiJHntm' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'WhjHCajQ1Ezpu7AK' \
    --body '{"contentType": "TDRuSaiWma0Iy4Gf", "description": "v0ZcemmSZqDm4pzY", "localeCode": "RC6pMhq9JqoE9Qg1"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'GvcxHNH73HnXkIoT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'EUbYXOFkoUbmqAH8' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "dO4fBXUcN7YQjb7O", "attachmentLocation": "vmHpRdgCaH9Ayh7s", "attachmentVersionIdentifier": "12d2u3e7AYgMVI75", "contentType": "PPC8OstyUMDk7Tx3", "description": "vgiy0kMpJXv6KQhL"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'mHrGZNn02qJW2KCk' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "dP2vjNsn04l2g8bl", "contentType": "AJCd9wwHGikBEJ1H"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '06kwIoUX1r9PFtXV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'UgTLgaKLGcCRYZM8' \
    --body '{"description": "FiNKfctsuiHpRjcR", "displayVersion": "hDeY5KI0yegonrOx", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZZPOWTuR5ynY35AN' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '59RdORVgppAdeufc' \
    --body '{"description": "NkoigvgEU3bVPPUU", "isDefaultOpted": false, "isMandatory": false, "policyName": "WtmHKAhVisdoJbQT", "readableId": "iERhshj18dMK8njn", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '35MBUBKAvmei26s1' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'IEbRh8R9rHxThzib' \
    --versionId 'A4gza39kiMfj9zMb' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'f62k4utWlIwuV7sH' \
    --body '{"description": "pnbtA5H7fz2TSF1I", "displayVersion": "vIGSLrLjKBKBf3Y5", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '73' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'y8cU0u4C2hneIwdi' \
    --publisherUserId 'DtCxgqhTYx8CAebv' \
    --clientId 'GACZeCqqQgxA3Bk3' \
    --countryCode 'DHhoK6mVhbJBXVFa' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FWxUivyzoAYTWAIb", "policyId": "fDt14V7IMq3F3sf0", "policyVersionId": "4pVydGbEMtfJdbDc"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "the0hLMMqE3fpQbC", "policyId": "hOxYokxO0qGiIJkd", "policyVersionId": "FmhCYVAZkM3lwpKm"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hShIpEh4rYRSpCvl", "policyId": "XZRCGmDhGxEE2deD", "policyVersionId": "QiGnwFVLRmcN8Afe"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'FF112J0kUHTcl6Zh' \
    --publisherUserId 'ZFzVhSWBPPqLJC43' \
    --clientId 'GG24R3eApVp1tcJi' \
    --countryCode 'z6rlFTsyH4oSnXDB' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'mGX0wnZLmKjOVwsK' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'RN1oc7YM4UVHobj9' \
    --body '{"description": "Ps1h7RynMH27q7ZE", "displayVersion": "eCdK1pxqA63Mbz3T", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'eRKHGQzLQzSXcaht' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'zaCJrENLlpMsP6c0' \
    --body '{"description": "2iCsRItzNpXmxubs", "isDefaultOpted": true, "isMandatory": false, "policyName": "oMRRY6SWlvZ58jCu", "readableId": "s9FQJfL1eCBhQDD3", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '55dyOiPwrOuez9x8' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '1zA2J0GEISxTG0SP' \
    --versionId 'dMqZPmKUE9M8jlEg' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'GOs1hHjOrlpf9a7c' \
    --body '{"description": "ZldSepnjewjpqcNS", "displayVersion": "ihteJ7ODxIcsvWFo", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '24' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'gPBOLWawNlwBI7qc' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'MtC7A5BJlqw1FQO9' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'B00o2ueQEvCu7tgQ' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'h8bhYOmXLRPofHcO' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "z4yTyW0YUh770AnD", "policyId": "qZ8jqMKNQb13gfm7", "policyVersionId": "D6EAci8hG5B76L3X"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XekQQ4wHk232zEYL", "policyId": "ev2yPU8RHmOthyUQ", "policyVersionId": "aYC0l8ZA6ueqowzR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UBvyx8uLYOJ5N5Hy", "policyId": "iex9LSmk56rbrcc8", "policyVersionId": "Z3ccGHXISymlMh4s"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '3xCjbURp24VS4sf4' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zKkvlqJP5AgAhSMC", "policyId": "tzo7gX0Yrb3PvMHM", "policyVersionId": "iobImhkdNBTiTKPE"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YKlc4MPNU4Nm9j1A", "policyId": "LaMt39UMkh6gkBzQ", "policyVersionId": "jfcq5xx8Sx3ZuP2a"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3QSVkXDiHVkKBigV", "policyId": "A7gcaDCLCBUEGNaD", "policyVersionId": "M07OfMD5IOgemmz5"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId '7ztWBCtqAlqWjgXJ' \
    --countryCode 'FH78iEP1FKpMUR8e' \
    --namespace $AB_NAMESPACE \
    --userId 'j7EcpU2kViUgdNPa' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EprImqaReyDhvEDA", "policyId": "cEybmN7V6WtDwGzo", "policyVersionId": "YBCkPZiTCbk2ccrf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MP2KTfgZFFSw8Fdm", "policyId": "hwAwcayKGjEGAWX9", "policyVersionId": "P16iAOdQZjh3fzTY"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PabuoHDWFqdIgF2w", "policyId": "bS1xJ7QzVvuyAzrp", "policyVersionId": "5cEPa6l9d9lVcZK4"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'UerLlhnA4HXx1IRk' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5acWoaaN0HQqZzXb", "policyId": "iefbwZ8agB0xu4au", "policyVersionId": "emZm0ZUemc40ikoM"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qzGsmSnEsrwjrSSl", "policyId": "UaxTJr1LePUTKNsm", "policyVersionId": "RAGYXJXYNwFDF6zb"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iN0DOnmQJADyHuns", "policyId": "6NWaOH7T53XXvyv6", "policyVersionId": "YN1G80q4VNHLRCAA"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'XtoxLxRo0HMKvY6R' \
    --countryCode 'FCgO43Q4JsmsQUSh' \
    --namespace $AB_NAMESPACE \
    --userId 'FsYLUfLToY8kezJb' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'Lx9JVhJE9riQafF1' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'c3tOFNwAXfjlqWn5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'mvPAWnNYwcc4zTRo' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'mzD2pQfqPBUQwMeR' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'yx3togwkMvwjkeHI' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'xmB7MeGb6hvRh85k' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'wUCMTXNCCA1DH5By' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE