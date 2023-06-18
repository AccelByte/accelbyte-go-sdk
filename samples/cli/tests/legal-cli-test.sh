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
    --userId 'PuypNsgauHBJliBA' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VZLk7ThZNG3V6Niz", "policyId": "5Jl732VDntYYSGtm", "policyVersionId": "O0H7mzPlXaByeAto"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MaQp9gmdFdpGx9k5", "policyId": "R9PZnDvG0JMh2RU1", "policyVersionId": "QFGxKPwHTcX3XbDq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ciGEkMpON24bX3nK", "policyId": "3btJlipkU4Rz9AZu", "policyVersionId": "xi2RXvFPiiMa9W3M"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId '4hkK4ERQTxKsabwX' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'XO4i2BAc3WQ0crpV' \
    --limit '80' \
    --offset '39' \
    --policyVersionId 'fFGLHnFMX9hXf3hW' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["cjKtv70wGmYWUyk7", "oIMXaPbP5BonQeQl", "73Zlg2yQGIzCrhN0"], "affectedCountries": ["SZEGb0lebG3fxbSg", "QEUIICw3eN3i5s4r", "ZlPqCi2OGTJz2pOW"], "basePolicyName": "GYCVFmaIRDPEIORd", "description": "Ri7CdVWFqwYwPq9l", "namespace": "RXA3wzMGfiM6kj2Z", "tags": ["SR2WlmlTnB7SSIIS", "BRRW563VqVGwUy4u", "0KI0DJA3rioYxh6u"], "typeId": "Uc8doVnPMy4i5UEb"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '9BL6d2lvFUlPisDC' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'IcjaqAObJncCiWG3' \
    --body '{"affectedClientIds": ["NDTLlbNLNDUQsZRi", "gbiHLSjPeQ7DiRI3", "ZKTH8ivGP9YITp0h"], "affectedCountries": ["0riYuk8fJSzKMIJI", "w0MdL9MWpdw14Yt2", "qzqM4aK694llyfQt"], "basePolicyName": "bAA7Yqm0ZR6u5Nxi", "description": "6ztFhx0GoKA3zY1K", "namespace": "tGxlRGRj5RmIxJDq", "tags": ["tS9V4zerxsHxSP3s", "xvdWJ4vwVJPjviKn", "V1NHW6p8ULXif0YF"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'rs28CE7uqHltvP1w' \
    --countryCode 'S5c5aykHMmrnH4Yp' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'eRhIOrWmVItO3aOj' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'sPuqKuFz56HAo5Dt' \
    --body '{"contentType": "N0z8WuGQtISYvj8h", "description": "rBO638JcPbpfpHfu", "localeCode": "3I8HNrwRsYPwuMyD"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'ajnz8dLHSASbEJHS' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Jqz45tW243bTCmQC' \
    --body '{"attachmentChecksum": "qc4PJZhrYOeufdC5", "attachmentLocation": "odBAiAytJO6uJ0LM", "attachmentVersionIdentifier": "mTejfz10NeKiyJJg", "contentType": "2RrKfjjfVSXrvLE7", "description": "QU48RBdKd3P3ILW6"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'CBPX4vvz3jRfYehz' \
    --body '{"contentMD5": "Kbd8rKGGuAz7Hizj", "contentType": "DQMEmQhPzuNVTw2L"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'htXgVBp4YNk5L8oU' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["4PZ1hXH65WMYG9bT", "MXiHnow8UbTu6chZ", "U8VJwBb27x2PmiQu"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'fIPzJIMTmfryjoa2' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword '2ndnKTEW6GuzAztG' \
    --limit '93' \
    --offset '61' \
    --policyVersionId 'qeWLwWl6W8XuHXdU' \
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
    --body '{"affectedClientIds": ["4BdPHm4ycaIX7vQh", "qGZPNX3OhoQsxBjX", "YBP3vJNOpabiI8Lo"], "affectedCountries": ["3MKz6VdnVr9q9RAa", "uJc9kFVn2hsPm80x", "dWxy7AE3Neu477Qg"], "basePolicyName": "LeSP0zwp1z9t9moX", "description": "2yzRFMajvK19Ajyu", "tags": ["2fgIa4IoTMniVNuC", "78Y3QV5OKFn2YTcr", "vnnDC5zNn55nogEx"], "typeId": "kXX63M8oI0KNY2eh"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'qa2zc1xCgzVlbvKP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'hlcA3OAq0MAm23Jj' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["oa8lIwlXawF9GNQ9", "DWfkJwTI8aHrrSXV", "a7eQZUKuTEl1TRdA"], "affectedCountries": ["GRkqh4gUdtIutaA0", "nlCBQq1apbvX0nbq", "MuOlqsaj5CDxWUMH"], "basePolicyName": "tDFdTuyma8z4NMCe", "description": "S4YcyQq23mA3q9XO", "tags": ["wnEut9iXXpJ3pKPe", "HE9UYqhvFSLfnPwh", "CI2dyTXFYAa7XabU"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'a72nEFndkqYKsFNB' \
    --countryCode 'WtcmhSWj81aytiqY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Hn5ZlyiiapZHTHRs' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'EKEZjK2Q7J3560a6' \
    --body '{"contentType": "noiRGGcHMSNkYuNl", "description": "hOqKT5Cas1YPEBWs", "localeCode": "eVhXylTWLVOO4yLt"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'dRIcwApfZUfUQlrD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'qUM4yNZ3gTiHxIrd' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "orj6qRnimvrAntMt", "attachmentLocation": "pWTS86vlBtz2zh89", "attachmentVersionIdentifier": "g84l7OAIE96uH3b6", "contentType": "y4R9aiVg0bbipaTv", "description": "Rj5cb27wNWFvWuKW"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'YBZYbpIeN9HbvPQ0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "CdOGFUkQd1fAp0fs", "contentType": "zaJPPe5XTTx2smG3"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '3oCQDdcd5QpdoZRX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'sUoVqBdQqrkVRRY3' \
    --body '{"description": "bun9XkdFJg1LAxeW", "displayVersion": "ExSbVXjitkY0IBtD", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rA6AASQ8R5S6qSpv' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'wAsKeFJMZ7I2huoF' \
    --body '{"description": "dYtYFKTsgwgVXPk2", "isDefaultOpted": true, "isMandatory": false, "policyName": "oVugf6hHEGRncRbt", "readableId": "dyrZFR15Q5FtBRRy", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'Djb3iCjJ4L1QEjPg' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'JS547zUwAC3LnkH5' \
    --versionId 'wUBdP83VK2HREzVC' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'uCwbugcSEzLL3X9E' \
    --body '{"description": "FfcClOZYxdFstnBN", "displayVersion": "sXtsCBKtmOipLzd1", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '22' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '883B1tUzGNAHchyK' \
    --publisherUserId 'rOlJLsdt6cgeCFDh' \
    --clientId 'v24xkdLnJnDE7GTs' \
    --countryCode '7MVurscdd75MBUBi' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "i2JS9hmwiv85aliU", "policyId": "enp9HeIyW0kKHYNS", "policyVersionId": "SHt6l0LAEDFeunkk"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TR21LUfxX00mWfDU", "policyId": "Bcug6cerbxye5tuH", "policyVersionId": "agS787RSWJCUAU76"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9jcY8n6a1zcD5zwk", "policyId": "1aZtm3dh9WvFZshk", "policyVersionId": "lTxodYs1286cUevf"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'nBFx2TC7Y9l5QTjL' \
    --publisherUserId 'qUrU2NUpIPSZcLX0' \
    --clientId '4LV0LKeOFZQFplKQ' \
    --countryCode '7gUvf6Cg92IpGfq4' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'JgV0D5NELAHezDz5' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'JK1rXwv8vT99uY65' \
    --body '{"description": "TkR2MsDzYitcPQOX", "displayVersion": "IcgHn1emh1IHIMfG", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'NvolePtSVFwKoUGT' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'KJNjuzE5qWV257py' \
    --body '{"description": "m3irXVFbi1qMZgB8", "isDefaultOpted": false, "isMandatory": true, "policyName": "u5XCc7ro4C6MRxKi", "readableId": "6WzdJDnHoQrAHr7i", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'LxKrRMlXOME8cmWo' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'jKKVrIueJ5P1InIe' \
    --versionId 'vozGCvINDZGD6DPt' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'Dzdes3a4QsrU2oHW' \
    --body '{"description": "C4KFrhBZQ573I20D", "displayVersion": "1ABozTXfJi1R4rvw", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '91' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '1X0iENpodFLvsMAl' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace '3YWoVFP8GZ61dzdM' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'Cks3n9yinksakfCk' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'lW5UIwPwQZbGt8qY' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FgJhf9EQd8giZYoa", "policyId": "MEo2GFKpY4qigbo7", "policyVersionId": "NgPrzpZHw1nfjeq7"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jbgTyrMDpVsWO0gY", "policyId": "H4NmHZzCYrmtNOp0", "policyVersionId": "oTScyOHrabl8aiXl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ulOD5B9st6TTVjen", "policyId": "k1omRb5bWZZF38Y2", "policyVersionId": "nk5qOQMfW3DA7g2E"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'wlqzoHmOQin2ngxE' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "biwNZzxXzFhyWkKk", "policyId": "UEZb9Dz1GM45egfk", "policyVersionId": "x8P3WE11JjgFHmN6"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IJaq3LUgMljdlmeH", "policyId": "YXpkHgUWR4kbfDVF", "policyVersionId": "YBOvPyOwG0G6d2aZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "h6rlXpZ6vWf4yClO", "policyId": "r7oRHBY4ndDKyHhQ", "policyVersionId": "NWBOYdj1MLD06qkR"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'CUT0YqDy3o4llKkz' \
    --countryCode 'wmkozZzddxz7v8wD' \
    --namespace $AB_NAMESPACE \
    --userId 'ekInp2QoBm4WJ9gI' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "l3uzHllC95E7j3ly", "policyId": "yQB4q54wGHtcbdHo", "policyVersionId": "B35pThL0a9oIhlR8"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OueHaXB6DTyWtxwj", "policyId": "tSh2lSdr6qVk9LlH", "policyVersionId": "ypyCHfOxQSKaBsPA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qdDFiAtcXhs4SGOc", "policyId": "Zsa7YpkG8mqZfLlr", "policyVersionId": "xUv6LegMR0GhsdHg"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '9P32QeFMzu6ZU9k1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EUzLnTqAnrsZeYaP", "policyId": "YJtqg0VQdXDEM58k", "policyVersionId": "osRuT6dc5xkbzLZB"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "z3jiSk9pJLcOmjxu", "policyId": "Vie4ulRAct2nfQIr", "policyVersionId": "R7L7WICQHIB7YhpA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cVLLF0TfBrgyWWl3", "policyId": "liPh0T5EASaeBghg", "policyVersionId": "aMWkrZvxiMRs8xc4"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'km3cMJHtHgPmdFOx' \
    --countryCode 'mMzGUsDmGd34yG4k' \
    --namespace $AB_NAMESPACE \
    --userId '5AEHQpehSdSm8bRm' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'qTIRQmxqIjCbAamu' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'WeL1TmbZmoE1zTuZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'WhVkPakZ7f55vXhh' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'LTwOZZiKoWJ0u261' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'plNQ3eyNqgb4zVBq' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '3KcWsvGzk6Gc4iOM' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'Jn0FJpzos2eJuY3i' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE