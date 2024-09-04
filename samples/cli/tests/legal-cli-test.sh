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
    --userId 'Bo9X11y5bEieRlyX' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hcP9cpd6Anz9lmGu", "policyId": "LhLEittvQYdpoHT4", "policyVersionId": "Y1EWYYDpGjsA2t63"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9LmZRYOFlWQDK77U", "policyId": "2z6QW6EpkTUP9mxT", "policyVersionId": "HacBmrKseSygiLYV"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zezW048pPWpyXvw8", "policyId": "xddJR0zXtlVuWM0Y", "policyVersionId": "RAtOLY680l7Ghs6T"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId '8GRsVtp6mdeKCTG1' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '2uS7tbbFwdaCto09' \
    --limit '67' \
    --offset '79' \
    --policyVersionId 'IIFucPgtv1D6L0Ro' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["WRTxdOhMHd2uxFQ5", "xfrrfz7ZnHYCfYxL", "g7WjUBEvnBKaRHcN"], "affectedCountries": ["BpEOlwctAHJmvf0e", "bPF8yaM0LBfNy0ED", "lxF18JaTKIDpzjWn"], "basePolicyName": "dR5kptLxGh7yuOdx", "description": "gSjrwgqk1WAuycwv", "isHidden": true, "isHiddenPublic": false, "namespace": "2toNdWLOfzOJ6raB", "tags": ["pYKQL1il7pGef3VO", "LB94xFROGcPY1dkB", "94IEHrnkuY89TPZ7"], "typeId": "qHNwHKrmCsfjr29N"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '4eYihZzvnLHlJhK0' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'nfaTbJxIRr5ey2nH' \
    --body '{"affectedClientIds": ["gbuykAJC958e7OJO", "PidOZnXVy1TbSubP", "ynVkHoFykFrsDM8d"], "affectedCountries": ["5KkN7bCPg2gfXSG1", "bercYkt87dpPy7Je", "EOt6bYeBXtCUQrYa"], "basePolicyName": "05odu1VDjC7wcc0w", "description": "6AXRgPLPql8DZaQG", "isHidden": false, "isHiddenPublic": false, "namespace": "SwZDP1uHxVAe51Sh", "tags": ["LrVxl35227BGhVRG", "pF7KIQ1v9K0x5UY4", "mHMuqCebSHRRTnIH"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'N34SNqaYOmeFnJ6x' \
    --countryCode 'JJ1oULqbhzz2JOk4' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'dfI8UjBgpgIza5T6' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'ubDacZBx9apVoMOo' \
    --body '{"contentType": "SjiEsvT6suXYxEv0", "description": "6Rv1NcRFq39tvUJG", "localeCode": "QkivnKQFffF8Nnxj"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'qDFHtYFvy0bwv9dZ' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'dsFxwf0rMqDDCEtC' \
    --body '{"attachmentChecksum": "d0IPhT24BGJsELcp", "attachmentLocation": "j7NIADlGxkwke59a", "attachmentVersionIdentifier": "0e7bqBKyffL0nOKz", "contentType": "BXxE1hxZqurvQ2Gq", "description": "gadBpbhRuV9v2aha"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '6zPJWzRm28tvCY2p' \
    --body '{"contentMD5": "ksuRq3sg1J4ewpbH", "contentType": "r3OdkwHP5HYFwaGH"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'flsr2xiwHWxgTCYJ' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["7ErNcVT3chNtu0Xz", "RMOvUFWQKGwu8cCJ", "H7o4xHFST4EjZxlK"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'wNTxqUX0TeJaA583' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'KBDl69cGW3C7e4Qm' \
    --limit '62' \
    --offset '18' \
    --policyVersionId 'nW17upAw1lUap648' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'xAuF06FCFSeEQz73' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '5QZkMl5hxMNd6zsB' \
    --policyVersionId 'uytiFKJnup7FEdwj' \
    --start 'mxeBYzpPS6snY83R' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["v1IssJsvCzrUYUDO", "UI6JCMiEbIUcuZnl", "e6smLuS9BCW5wtFJ"], "affectedCountries": ["f6MRbN6ujPI0CKI5", "KRWE8gscsHTuSJN3", "n931Vh6MQL7O1tur"], "basePolicyName": "yDGbSwnn16dcXSxN", "description": "zh64ZZLJddIox3PG", "isHidden": true, "isHiddenPublic": true, "tags": ["9gZ9iMcQTEKVhbNn", "J3uXvGIL66P9AzCt", "S95jR6mJWIXOMk6A"], "typeId": "o19JqG7KhlAtiDvm"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '95fyjCNtYukMMddn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'cPZZNQA8iK7lBXM0' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["bx4wQaI5nM7QJpo9", "pqd0K8cbXqnWuk3t", "ugAODsQOavtXHmy0"], "affectedCountries": ["Gak0xStiHgHZCZ5v", "jinlvtRCG4DqVc9C", "SnEVNI8Y96djHE3C"], "basePolicyName": "CIA9a9CuwqTQaEGJ", "description": "1iYow7Httwc4l0Dr", "isHidden": false, "isHiddenPublic": false, "tags": ["dVi1lIrWoOELsJZD", "xeWpvJnbfitNHGXX", "BgMKNEIQ1V0vZzX3"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '0aDYqw7zqS1rMQsf' \
    --countryCode 'hljXLFpH38O1Msro' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'OeXnUJ2JZAmFCH1N' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'KO5C0GUWO6ag0uOr' \
    --body '{"contentType": "zrcvm3Yj7Iu5EtMM", "description": "rHME7ZcQaF69Ahro", "localeCode": "0NARgYQ9qqXtSIzy"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'fWDcJ8HQG3IDjmau' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'MiFUCxzVrMpwUPcV' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "Vl6GHygy8Cj2HZQf", "attachmentLocation": "YSFeoNPi10jNxEG8", "attachmentVersionIdentifier": "n3goDI51fMaCPjuy", "contentType": "dsV8IwSYj0fmIpjI", "description": "DbQGVAiNll58iZlY"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'gg4ceo4LrTIr2KI9' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "mchVnkdJVDQw1Kt5", "contentType": "x3AafXiGDHb5eaZk"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '4AIPG9cdq0s3WPdH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Oc0d1ippGugzk6aK' \
    --body '{"description": "1BqepHu9MLqUxQlx", "displayVersion": "ObGVHl6rF6AUXOHb", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'RpLKHbSKBH82Oz9m' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'qZGuarFJmwjS77EH' \
    --body '{"description": "CEwISc1oujbmGHub", "isDefaultOpted": true, "isMandatory": false, "policyName": "A5WLL5GCcUocMCTa", "readableId": "A8cCKDEmqWKc8TYT", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'nR4qYCvJhO9zL4yE' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'RyBshynRrO0nRwhN' \
    --versionId 'en7iZXvjBl4ko3jc' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'D7awTSEHLj0FN7pZ' \
    --body '{"description": "64V3fvkERkPsFLej", "displayVersion": "Y0fAtDTfY8iC1l9r", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '64' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'jGjLZEQtfewwC12U' \
    --publisherUserId 'dzXiFuyuAKh8r7YB' \
    --clientId 'NmPEqnhdp1DfNMFk' \
    --countryCode '3wpq694nCQzRf4lu' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Wkilyr6KpHJjdakz", "policyId": "5f4shAP9nfFOu939", "policyVersionId": "wnv8Ig6GQPZhjIhb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "f8FFIAdwidpGGaVI", "policyId": "kqlyxNkLMj3eCuqh", "policyVersionId": "rl0eykkVuCv4rJ0B"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "eeIPFt7aCSq7zMqZ", "policyId": "dFv2SOGb9dTsR01Q", "policyVersionId": "fhArmZdbO7x5HCAr"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'YcGhUyLdoM8Rtk5G' \
    --publisherUserId 'VlCynMj03gj9xSSs' \
    --clientId 'ZGz5Yg8Hvij8pVIf' \
    --countryCode '9gjGc5CthPBzuNH2' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'N6UJi3uR7Vrf9Vgh' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'JtCZ3k6cOwnrfmCz' \
    --body '{"description": "beCCjDeRWMiH1r7p", "displayVersion": "d7whdOJvMHHCnTHJ", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'uvQvySbgUN4BB4C6' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'su5gaIm6mXM6wuac' \
    --body '{"description": "pB3X8H7RFLG9bmz4", "isDefaultOpted": false, "isMandatory": true, "policyName": "moQQx5fN1kCFTrGU", "readableId": "UEnAQ6xKBpyx3Eu7", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'EKWHCsq7XpJnK0cz' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'BjCUx51OdxGt5RwQ' \
    --versionId 'pcjx74u64UCsYnGa' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'xSXeiXjmTYozcp3a' \
    --body '{"description": "u4JvoyppyW6oo8jx", "displayVersion": "ONFpTwOHRbgL8C7Y", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '89' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'hYqVzU8LA3yEc0mK' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'TbcxnuYIdjwp7Nap' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fQJS8Sg07NBwCxIR", "policyId": "NZOagk6LTDSq7GSB", "policyVersionId": "Cg5xSsUBrOP8psm1"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zv4XxoxPhMWKl23k", "policyId": "dqxRAAjkocmTxoFH", "policyVersionId": "GcrfNijjWjpGulQx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JxpS7DzKKYIxskKo", "policyId": "EsoMHAr0T18dWNRF", "policyVersionId": "xIiz4qPSfNcE8ky3"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'lBK7GihV45yOimMs' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WA1AYetTmFrRhD4k", "policyId": "dwF9q3Rlm03VAohN", "policyVersionId": "DoYyip1dhzvkqPKN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TzJdZYwjp16hzw2r", "policyId": "pz9cs32g3MP7GEny", "policyVersionId": "roM1SYrSGqh7Qfdv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "k0LNYJh1IAqUltoS", "policyId": "g3v5XP3uo7zyy3N9", "policyVersionId": "YMvSEctXTUZgmQSQ"}]' \
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
    --clientId 'w8O4XUAJurAYxC3O' \
    --countryCode 'dGOaNmRSHHzb1ZAp' \
    --namespace $AB_NAMESPACE \
    --userId '6FHcqJLzjsQG0AtO' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'LZYPIXOCzrGprjde' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '9FqiGaE04W3mBeie' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Kqm0HQ9hNy74yVr7' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'uwrVShJGW3YWoDLA' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'nIEqq0kyTTBIdck4' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'FJO2BYdnTiyt0bs1' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'fa6WQz3iiecdBrX7' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE