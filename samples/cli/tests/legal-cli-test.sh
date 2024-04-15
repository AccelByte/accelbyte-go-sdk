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
echo "1..67"

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
    --userId '0ZySUqUKM8DJ45Z1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "L3roE59EgjphO5Rm", "policyId": "nyKn8uhEhXFST5BK", "policyVersionId": "MjWvl6sXQgI9y6Z6"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JCMthIaY5nxQmvz7", "policyId": "sKOI76JtvJQeMvAl", "policyVersionId": "JZOxLDTuevMi2AxC"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "30Ra5ZRKHJiVIchh", "policyId": "74yQAkCo5XK2yCFG", "policyVersionId": "U2DcVtN0ujufrxyn"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'zXrdMhA5CkJfidV2' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '6zYEHkDKvHB1yb8e' \
    --limit '93' \
    --offset '46' \
    --policyVersionId 'fzhNOmeYnZxsxF2S' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["qrZa15lMan8RTKs5", "GFjx5tVStt8AYSl9", "OWS3tdxmIlxGDUys"], "affectedCountries": ["LKuvjSZOQdI9IRS1", "VfJDe0uf2LB6B0Vi", "ozAeL08cXfiDtEZb"], "basePolicyName": "zGiLTwvd4NwrydcP", "description": "UjPoHP8kmSIMzkhQ", "namespace": "3JZY8kiHQYTFlmDD", "tags": ["5IngYCJQM4mzTTgB", "RgAcHIDHxL7bcYwK", "1RQHy3pwWVntvCHl"], "typeId": "hhONfbjuIUEw2X1n"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'vDnGBcaVqPGrZCw3' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'YYKpjTBiF8etY7g6' \
    --body '{"affectedClientIds": ["nSvkDMylGDgMFyCL", "QiCC2YmWqFu6lKPw", "gUo3XCuYFLczsyXo"], "affectedCountries": ["tRqVi0h0inXi19sV", "G1Kkfb1k65z9T3dq", "Lcb25TxBAPdFJETR"], "basePolicyName": "sHfG9a6YBXqDm4gI", "description": "FMCDkUvodwsiKTA2", "namespace": "OCTnN3Jtuej6V7YY", "tags": ["i17blXpdhKm66TkA", "dFpyuKNwdGrkma3T", "6AvY7T011H9I5TEV"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ddq06aYI2PsMH6o6' \
    --countryCode 'W9Qj5GddZ0jwcV7k' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'zyyiyTDfdW4jhb2f' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'k2d6x8bWXECZCJao' \
    --body '{"contentType": "SUOsBLSK1WRsVJY9", "description": "O97ukK8cfH69YeuP", "localeCode": "p7EuuZdBgjzC0LMd"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Gv1qaXE72iTC8gdC' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'jF2RNdf7WAn41QjL' \
    --body '{"attachmentChecksum": "XWyYnRFnziWBLyEf", "attachmentLocation": "ohoWZXSQVwKQatDM", "attachmentVersionIdentifier": "19irJbqxjJWH0NTS", "contentType": "XrvBUgGS3i6FXl2E", "description": "WPVXyHciCGZ1eBHo"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'cMK6KfP5MFp6Nk4d' \
    --body '{"contentMD5": "27HZiiXKVnBxmmVQ", "contentType": "olKO3aZTFg5WUCZ6"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '1Eyf20DFBezC1bem' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["lElL2So5XeXkgEgY", "yEV0doEaWUFf377s", "ktj5M9Sx66F35esS"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'PYr3XdzJDld1uHz7' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'CversDBP7LYZr3uQ' \
    --limit '14' \
    --offset '14' \
    --policyVersionId 'hDet4Qf6ZTTw8teJ' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'GLpQq4safo6mt92F' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'NOX9akINbMMbRGTg' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["d1w8riKH8HeaONw6", "l1IQmsEKfsAJ2Wwu", "YOLcDGhPhqO3T5eQ"], "affectedCountries": ["6NBTIWjF5HkPf70U", "FXul5Ahi9sgntX4C", "hGvlhT1wNHMiLHfS"], "basePolicyName": "nT4nawzlAIitSjc2", "description": "JeLdtzRGEnQY5GDf", "tags": ["XWuQvrncLrNdxI3C", "TWHicxyDFJsuDDR1", "LuEbeGfA2SP6DGZg"], "typeId": "m3hAYxH9Hmo5jKWW"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'aB7rtewu9RRHvtKH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'c64rFnS5EJ6BzPWd' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["ii6LV842iYK0ADQ8", "jNXU1kgcb3kTO5mP", "niPVUvisQ8VfPfBJ"], "affectedCountries": ["P9owGDf6kvsgW4PH", "QfrnxIykXsojXDSw", "7MPdEx0WaSTRGrXY"], "basePolicyName": "OnFEwyHFRF0m1ybX", "description": "hzhVrHiisAn97Ayu", "tags": ["WA6Pk6BOPb8m30ND", "ohTi8XlFglZYHZS8", "XNl2LOQO9I5NVdDk"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'haVjhK3LFTrPsPxC' \
    --countryCode 'gGT31QJMYXgqhD1g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'UjA0AR4buvqsBZ4M' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '2CKM7w4bpF3Om7SN' \
    --body '{"contentType": "LUvPXpfMSYxYdvga", "description": "5DqbyOdHPymRvf0x", "localeCode": "3CdYGLZQqMob6P9t"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'OoWQhzWslFzocNUX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'BtWS0k3IBtSMQ8Nj' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "e0Aw4aB1kKC5TRQQ", "attachmentLocation": "GOKIyvnHsXWBrDgE", "attachmentVersionIdentifier": "38uaZccEKjiCgcSX", "contentType": "fjXi4QKLy70lv3P4", "description": "GV3FcxZmeAtybBhT"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'NwZ5KOV4j8INX9Yq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "7GYnWSHciOTZWfNd", "contentType": "lmxDO0Xih5LjHdHs"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'RrWH1lryOWPK9hGG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Pje4AJx9IwcxIWIz' \
    --body '{"description": "3T03havtEADI0jvj", "displayVersion": "kBAxNAkltnWVyUms", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '3tvLS1j4fqPW92hy' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'lgdlj2qD382A9fWA' \
    --body '{"description": "8XWKFplAGI0AUsx9", "isDefaultOpted": false, "isMandatory": true, "policyName": "m1AslRjmsUME2TfA", "readableId": "N1AgFhdeftkwzj6b", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'kaBLZZJtW4JkeCmd' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'RixvZyMI0qxWT8OF' \
    --versionId 'QZo0u0o0Sgni9Inp' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'iuNpg4KW5nX5KpoL' \
    --body '{"description": "0ZzJX6UoO4AG4j1l", "displayVersion": "2IG2kC8OZLw3ttMu", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '36' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'Ryra0uV6QTOWVppK' \
    --publisherUserId 'KwW7fm2GvXNzMvVI' \
    --clientId 'GwPpERjcESwrk9aU' \
    --countryCode 'OXnI8de9pKhSfA6Y' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iPnQa8UZj4xICcno", "policyId": "l2099Xj6GlqPYPD7", "policyVersionId": "AR9BUEEkCdEjxPO8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vrMr7bT0Qdfnbfxz", "policyId": "6Q83fQ2tRol9fN6f", "policyVersionId": "qQYF8EUR8DVRTFJN"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qRsxjUCOFW5XgABB", "policyId": "K8lkOqO3oB4VosxP", "policyVersionId": "Ul426N6bkJr5S4i8"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'iTL7CLyBn0JtVnul' \
    --publisherUserId 'Y4omfHvgY1yvGDr0' \
    --clientId 'WKlv2iqw1FCBO6gE' \
    --countryCode 'oCsVDRSi7vHxdPWl' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'AlTl9eLieqcYvBqQ' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '9WT7SBypOXLvzBXj' \
    --body '{"description": "1PrpIOEnIxZHcOnR", "displayVersion": "HusX4SYoBLQor8tx", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'afFznpl2r1uBUCLM' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '4LEdbCM7olgr7sTR' \
    --body '{"description": "pV0SpjmaQj2u9eiJ", "isDefaultOpted": true, "isMandatory": true, "policyName": "yVu0yrhn6QE7rnXu", "readableId": "ZF1oXOaqYmuYtKEZ", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'zQ2fwNPwJ85teN7K' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'kvd2W3jzopK1s9l8' \
    --versionId 'xIZoVwCxMQIartnP' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'gXnBhRrYRpzJJsLg' \
    --body '{"description": "AbsMKgvrZGJUD5Z0", "displayVersion": "DZj5NDgs4AvRAGk8", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '26' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'fMqq6DprRzLObHHU' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'rpo4LJQ3b3gPN8tL' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6oeHxhVI3qzA7mhh", "policyId": "582LJ5w7Foc5NesE", "policyVersionId": "DGcXdBaNL3PxIZ21"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "elGiUJAqxuyxlMp1", "policyId": "ZRhd9seTwiMqymJI", "policyVersionId": "wPmv72dUUudHCRMC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "t7UXOY67zkg1l2gK", "policyId": "aW9IJAghrvP4IPFE", "policyVersionId": "pAdnaLmO878VOYIL"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'dcpEQ5FIcf9m6vBK' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gMmn0IHisyRHnd9t", "policyId": "k8tX1pw2awl7J5fm", "policyVersionId": "dHwEwYrUw5jWyEs4"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OxDf1LPVF2NP3hP3", "policyId": "OXTgAY2hnU7XZ4wR", "policyVersionId": "txHG8lqVnI5wrAAt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zW2k0WYnAyXhwJna", "policyId": "0tNiZq6cV5d414fA", "policyVersionId": "UsT710PEVLZu7bUp"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkAcceptVersionedPolicy' test.out

#- 57 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 57 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 58 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 58 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 59 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'RetrieveEligibilitiesPublic' test.out

#- 60 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '9D9BjePxo1DqOUe2' \
    --countryCode 'F77eARbtfEKfZ38u' \
    --namespace $AB_NAMESPACE \
    --userId 'we3dAsge5lGspQY3' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'NtNO1QgegbEPF6U1' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'jwO7MOLK3dI0Jvmt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'rCk8rK0GdjGUE9VD' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'dI6Er991mu72oXok' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'YR1ezyPfWlqMhdCs' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'SBiFDO5xnyMDLVwC' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'clHbg2WioDSzBC6E' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE