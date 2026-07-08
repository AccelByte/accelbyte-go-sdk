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
echo "1..75"

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
    --userId 'pv9Ru23AFtIHvsKa' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aVJ1Jdk1SyW2trde", "policyId": "QxR5ozzfWg0h213N", "policyVersionId": "MMqYNHOnmLkQf706"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5HePF9hypKRPJfSN", "policyId": "OdsjjMRFApvzAxyG", "policyVersionId": "rUBhJqzvfNDm5yEs"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tvSrfOQYc1HDLiwF", "policyId": "AS6zDeZgeYswhxPg", "policyVersionId": "DWg6ST07y8ElTy75"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
eval_tap 0 3 'OldRetrieveAcceptedAgreements # SKIP deprecated' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
eval_tap 0 4 'OldRetrieveAllUsersByPolicyVersion # SKIP deprecated' test.out

#- 5 RetrieveAllLegalPolicies
eval_tap 0 5 'RetrieveAllLegalPolicies # SKIP deprecated' test.out

#- 6 OldCreatePolicy
eval_tap 0 6 'OldCreatePolicy # SKIP deprecated' test.out

#- 7 OldRetrieveSinglePolicy
eval_tap 0 7 'OldRetrieveSinglePolicy # SKIP deprecated' test.out

#- 8 OldPartialUpdatePolicy
eval_tap 0 8 'OldPartialUpdatePolicy # SKIP deprecated' test.out

#- 9 OldRetrievePolicyCountry
eval_tap 0 9 'OldRetrievePolicyCountry # SKIP deprecated' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
eval_tap 0 10 'OldRetrieveLocalizedPolicyVersions # SKIP deprecated' test.out

#- 11 OldCreateLocalizedPolicyVersion
eval_tap 0 11 'OldCreateLocalizedPolicyVersion # SKIP deprecated' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
eval_tap 0 12 'OldRetrieveSingleLocalizedPolicyVersion # SKIP deprecated' test.out

#- 13 OldUpdateLocalizedPolicyVersion
eval_tap 0 13 'OldUpdateLocalizedPolicyVersion # SKIP deprecated' test.out

#- 14 OldRequestPresignedURL
eval_tap 0 14 'OldRequestPresignedURL # SKIP deprecated' test.out

#- 15 OldSetDefaultLocalizedPolicy
eval_tap 0 15 'OldSetDefaultLocalizedPolicy # SKIP deprecated' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["DBNLlxGmlbEmzdEQ", "Z5v2Zyd0ea4FgMle", "CnZNCIjeMgcQ30aS"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'bqbrx1yJrQ3e6zXp' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'hs0V61Bdc7olmRsq' \
    --limit '77' \
    --offset '64' \
    --policyVersionId '9FiFII5lzFi6LEPt' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'DEiNPBkK6Gd4VSkn' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '5LS0s8vmWV8UAchw' \
    --policyVersionId 'QKCIZXQqwWzbdXOB' \
    --start 'C5SACqIKL4lwCufZ' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '35' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["th4GILoNE6xj4WQZ", "bdfWfflXDFIPs8vi", "Scv7mDywb39baynb"], "affectedCountries": ["dPIR3Ok5oCarOz5R", "aF9uwONSM4HuMdAO", "44WLs46ZJ6LELAte"], "basePolicyName": "SLfqANq9mwgLa9gv", "countryGroupName": "rA7mM42klctY7Ho5", "countryType": "COUNTRY", "description": "qqGjzwcU6QCGrDGu", "isHidden": true, "isHiddenPublic": true, "tags": ["Ax497wXyUwVdiIAY", "oagkDePQzyonFlrO", "5HEoYXNyn9xvqqUP"], "typeId": "VJD38SJcEGlTeNUV"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Eu33Dsn3HtERF8xO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'ZrrxalFIHJSAqgZF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '4gP1YBh9YRyrQySA' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["cZ8f5gTASBewoL3i", "AMZGnNhJmyp8Dmoz", "W1O5KuUhFq9ztVh6"], "affectedCountries": ["dGMSfaA1e8uihCfc", "LRZMGmdqkiQpsuwy", "gPStcUcauMFFqxrZ"], "basePolicyName": "e7EFF17fAtkTfsKW", "countryGroupName": "Cowv4spswK0invX0", "countryType": "COUNTRY", "description": "Uub2yWOX1UL5vZSs", "isHidden": true, "isHiddenPublic": false, "tags": ["QlmiRepLTci39Vao", "6HmcnfxMde2lW12K", "meAGhpOleCjdYhTf"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'nutsgN8MOCbCo9Wi' \
    --countryCode 'D8BX9O2qQNcfcL6F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'LrMyu5gbrFWgg71E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'ISbtsgTqfdbbU1tT' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["fBOWds9Mjxcgioed", "9LUKkPvBUYxsqLWn", "E5kJCCoJVOWWQwZb"], "countryCode": "xOSmRCTLNBCVg8xZ", "countryGroupName": "tVOJDJFkafKMvur3", "countryType": "COUNTRY_GROUP", "description": "FIXXZgwFvjaYaZe9", "isDefaultSelection": true, "isMandatory": true, "policyName": "vb0M0bp6ZDBYM4fD", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'R8NSkLYgw0LpZEou' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rVdoG9nYCHcEcE0g' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'RSCtKq3IIKIJTJsU' \
    --body '{"contentType": "kbX7d4MQ6xCjRlV7", "description": "EQsitzoJbmnsHCs9", "localeCode": "Osf3GdRwaKgqYqe2"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'vClcIZDPlgYslofC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'igsZO0oAMggS1IkC' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "x7GAX7yIhXHeGCCO", "attachmentLocation": "8H9UTOlj3bwtepuZ", "attachmentVersionIdentifier": "6O9d5EvK7NGtdSjr", "contentType": "PmNFSIKRJBd7R91W", "description": "baWABNfna4Zs5NH7"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'GfM7P3F9ssy2HPjB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "VtHawqkNZBKEHiro", "contentType": "crQzGljsjzDYsTt7"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'QPa8lgGPpw4BO8Y7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'nzFCWqd4BhaptpbV' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SmnmlkBRKXSs9e2h' \
    --body '{"description": "8fUUm3Xg1vgWMQfK", "displayVersion": "2AQzRSF1wMojpcvw", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8wyFS8njMIiJ8eGM' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8xyPkGCek3Ly6Wha' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'hW2BdnvuECT70cFc' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'MOjFiwVLcYD0YErF' \
    --body '{"countries": ["UtpI207gpAkvouBq", "BYtixaW8NzJ4CiHA", "YHaN7BV56Oe43SyU"], "countryGroupName": "quwpHdGSq3E6rzMO", "description": "yqVofZfv9FOLC1Qe", "isDefaultOpted": true, "isMandatory": false, "policyName": "70J3jTViQldmDjrk", "readableId": "ybc9enVsGOfhh5Em", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'RC3SVO1oJslZzq5i' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'tM0o5dFeip59eGsS' \
    --versionId 'KkN7Qcxs98oE7syK' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'XfOEKQNxEKmqHzbI' \
    --body '{"description": "ZRLg9P1Obs6Nwb9W", "displayVersion": "JqCtq84ErehILUsB", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '16' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'ukiH0a2XOr9cWKVR' \
    --publisherUserId 'TTRAPcdM8hC7rXCF' \
    --clientId 'FnY9EhOJXwnpLqkS' \
    --countryCode 'HNVeD1gOLlbEBV9J' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ifVYZIZb3tfDzzXG", "policyId": "OHip22OxFJ5Ytdo0", "policyVersionId": "4Pe6wD6r8A3S9Cl3"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qYnlcpMRPPS6diwj", "policyId": "dA2yevfzNoZ3jrPX", "policyVersionId": "8Ca2Ba3RHdXfSlOy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xeT77iMlluzZ0xoS", "policyId": "QBl0KQQuQOjQ2FUX", "policyVersionId": "qZ339KazKzAeAe2U"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'orCQhFb0YjjW2Yyo' \
    --publisherUserId '3KSbOV4V0Ci1FjMC' \
    --clientId 'DoLGiOFOZt9x4SbS' \
    --countryCode 'TFhwGmsGbtaos6Hb' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
eval_tap 0 48 'RetrievePolicies # SKIP deprecated' test.out

#- 49 OldUpdatePolicyVersion
eval_tap 0 49 'OldUpdatePolicyVersion # SKIP deprecated' test.out

#- 50 OldPublishPolicyVersion
eval_tap 0 50 'OldPublishPolicyVersion # SKIP deprecated' test.out

#- 51 OldUpdatePolicy
eval_tap 0 51 'OldUpdatePolicy # SKIP deprecated' test.out

#- 52 OldSetDefaultPolicy
eval_tap 0 52 'OldSetDefaultPolicy # SKIP deprecated' test.out

#- 53 OldRetrieveSinglePolicyVersion
eval_tap 0 53 'OldRetrieveSinglePolicyVersion # SKIP deprecated' test.out

#- 54 OldCreatePolicyVersion
eval_tap 0 54 'OldCreatePolicyVersion # SKIP deprecated' test.out

#- 55 OldRetrieveAllPolicyTypes
eval_tap 0 55 'OldRetrieveAllPolicyTypes # SKIP deprecated' test.out

#- 56 GetUserInfoStatus
eval_tap 0 56 'GetUserInfoStatus # SKIP deprecated' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'egkhJhnYk0vGOzgE' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PYFMqJThM2HGWmQW", "policyId": "Gp59c2aIYajojeLn", "policyVersionId": "bsnvarZ0lQX1c6pT"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ce4l18efhqrYkl3d", "policyId": "2WZVVwJk5khS4tS7", "policyVersionId": "534wxXvXW4zZ2MR7"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7QFOoIpResqbJtX0", "policyId": "x56slW9RcUGwECWr", "policyVersionId": "OYZjk9xmeIMCj5VW"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'XbDGCVKhicF16yem' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ekaa3yQXZGznB7pg", "policyId": "LJShHRxz3vR5h848", "policyVersionId": "QQNv4XStd7i2NpXh"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tUCUEJv5teeEsJM5", "policyId": "yCDjmFofmJaXaFOk", "policyVersionId": "BOe9bwKNadx2fhCf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sNb5xY8L3eC1k0pm", "policyId": "2CoySDAMsZN4tMCY", "policyVersionId": "lhL6BwBfRXRrElje"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 PublicIndirectBulkAcceptVersionedPolicy
eval_tap 0 65 'PublicIndirectBulkAcceptVersionedPolicy # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'NvRlkJ96YJ0066vN' \
    --countryCode 'fRa3wsxJJQaKP0UZ' \
    --namespace $AB_NAMESPACE \
    --userId 'zENyHSgePZmKuM1g' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '42ffdHAZ9BcktoHM' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '1Sox60pzn8WAkiak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'rZq7zmALfCX4jDaj' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'hqCtB2EYrMQ1qb3T' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '8bUZyaABRLwMtrdn' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '1zCLnnOwwQZ95eqK' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '9w3Bjqhh1v0g6O6y' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'zhYaNH8mkCPuR1b1' \
    --namespace $AB_NAMESPACE \
    --clientId 'E3asm6yz7hHfrgBk' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE