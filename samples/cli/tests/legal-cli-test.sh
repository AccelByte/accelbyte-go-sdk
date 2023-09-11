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
    --userId 'Q9Y9R8uGSmcTuAdF' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GW8mL8LhwkmSTgVi", "policyId": "iEarSUoxhJW9BF9a", "policyVersionId": "7kuPz1zctOCTseV7"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qvd7ZFF4KiN4J3Ux", "policyId": "EbWPjhFsSTdCrKef", "policyVersionId": "fnwUKAWsCpwbt6ru"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uMwBFy5Qmo3jTRPO", "policyId": "XzsO72GbaetCO3cW", "policyVersionId": "PburglhXj1vEVgOR"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'DpxHuC6GnwPOugj5' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '0bVfcKiIX1kNrNUo' \
    --limit '28' \
    --offset '13' \
    --policyVersionId 'KT8DhP09gBLD3OwU' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["QmbgMGQb0YGSKgJT", "Websvp9MRvcax1Yr", "HJ2h6Edb8cQcvJUH"], "affectedCountries": ["NoLYsL7BOCAgWo0v", "p99e00Ioys2FSGPX", "uZdsUz8GNJMFwcld"], "basePolicyName": "h6TRGQ62tGK9Wxe7", "description": "6KdInQ50Q3Fq6EX6", "namespace": "AxlNAjESKAlTEQrR", "tags": ["Af6RqfmjV0H9FZNB", "j3dOM7O7vZc06mxO", "gxWBMS3OK9pY6y2n"], "typeId": "vATijndoLI8HiIzM"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'xLLY6qh5AsRO4MUr' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'qIB9MsOQ47CgQpSP' \
    --body '{"affectedClientIds": ["42HsFLhszAE6pqn2", "1cX6evMr0LGKukvL", "ssHZtRusNE7JWpEI"], "affectedCountries": ["rOcYnbShD0U1hnoe", "Fzcd4NrxNfFAmaDs", "a5K9XJZ57xPVegXy"], "basePolicyName": "8EsSZ2zdltMr1O6y", "description": "4rEoos9HTU2TdmQ1", "namespace": "WbV5lOI4AXML5DKB", "tags": ["KoCw7J0GFmkYTOXo", "bvoSzxwg7XdGwssr", "fT9ksjdXaBGX7TSi"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'DWYcIQArbKvG1FCH' \
    --countryCode 'uqQhrPVpq05iApBF' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'oRRdbkCRHFdrrJTp' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'HH0jgWHGoaSI7yrr' \
    --body '{"contentType": "buLW3kKQ0CGMc0N1", "description": "Yv2EAIn9QkFbhbeu", "localeCode": "sOYM3qaMLYcmzwDE"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'FDU0Yhkkb9jEDuXq' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NcGrnRRmn1XTBDX8' \
    --body '{"attachmentChecksum": "lb4Yy4VhRYR7rsMV", "attachmentLocation": "vlHoT2IxPXvsKVrg", "attachmentVersionIdentifier": "zQ02SsmZB6x6lkob", "contentType": "Bg4ZLjnF3nw1JfXi", "description": "UkF2ej25xw81G3ck"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '07hf63GXd2BRF0PB' \
    --body '{"contentMD5": "UO6dYItfHt0VISZ5", "contentType": "SQ70AQq3bp0Huyrp"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'Q6034IquBBOaVQzH' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["u9mVOVxBdIMvno6Y", "dc3ueqPXuGXfp7vr", "1atwuKHhLRmfNEBU"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'SvFDiGmsWtlDrt9c' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'WxnXRnTJNV7TRxUz' \
    --limit '15' \
    --offset '11' \
    --policyVersionId 'IcDr6Q3krVodnq0O' \
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
    --body '{"affectedClientIds": ["4tJ6HD4BUbfBPLSf", "NNtNH5J2w3CGNQJP", "KFVz4kWxi1obxs9B"], "affectedCountries": ["Mm5l79Qml40ixGYr", "pOqjSglLRmqIZAEa", "HwWGwmZbAJjrkEmn"], "basePolicyName": "LFEAyAtuRCaqE50y", "description": "duod7aGttSroTUGe", "tags": ["jXhWrzswUqFB0bti", "U5tyuLFKMQVo33s2", "6DyNXitVW79WTg5m"], "typeId": "mAI91UmzO10hH2oh"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'ANX8RVjEOLC2xota' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'm5rCw1pMn8nGsA6w' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["C8AJttkZP5jlf7Nf", "OUlJvXjYka9GKeIC", "HEzgNCS0TVdCJJmZ"], "affectedCountries": ["aANxKrCzndTxPdEb", "cLYsr2MfwGRNqdiq", "Ek0h6TFZ8pquSbJ0"], "basePolicyName": "X5MgstOIZrQG3Xy3", "description": "ar86wOd1SfJTyCaR", "tags": ["wUABXf2ER0BMCaHI", "Pxxsq0zvKk96n80B", "IOAMQOxo1VoqAgHV"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'cDDAr3ufZR6jX4v4' \
    --countryCode 'iK7rnRTi60vSPCeT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'KgwKM4UfkRo7YtWr' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'HX6ObuQWypqkmwE7' \
    --body '{"contentType": "EI41uPPLVpVA0XQi", "description": "xBu0lXaO8pOmjakg", "localeCode": "4TdQzTesB4m8CF10"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'gArbZxb5O9djAuhD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nIumXAexdlDfUH6V' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "jdIaWwDxtHkmrig4", "attachmentLocation": "8FN6S6du7nQmHH6O", "attachmentVersionIdentifier": "bMdqtLlvx2NVICZr", "contentType": "HhrJy5ZJSnU9H3N0", "description": "mttGGrE7WHp4CSb1"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'Gp6aF0bN4NIHHoZg' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "WMcBAjFgvGarxwGi", "contentType": "qPSCcgOPianBdCtC"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'hRqnbyRnRyX0YiHd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'pnejVpsWvDQvnGxQ' \
    --body '{"description": "f8989vqkJAa5zNCM", "displayVersion": "gZ35lgTxosdPiUFD", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Jl7KCiIJCZ6fP3tG' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'PHgkJzVYGtBWsvgP' \
    --body '{"description": "eJNeveZ6QRtQrJsr", "isDefaultOpted": true, "isMandatory": true, "policyName": "1xkBRzFwmmqRbjkC", "readableId": "dUL2DnBAvdJGkCh2", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'ehfdJ7t7FtMvJX0Y' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'ULE467twr9owRLBD' \
    --versionId 'vpkC9KjEnXKKsp9D' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'hQGc74tqUh746LUC' \
    --body '{"description": "WR6koBQV41py1C71", "displayVersion": "PWIClz5I1jWaNNmV", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '87' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'qkkUaGhKxqrwQUZq' \
    --publisherUserId 'TpTtduyGAFXlPrq4' \
    --clientId '2Rk5d4b3jrlTXUHn' \
    --countryCode 'l9KfNsFcl343tcsh' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5JehchD79qqqq65K", "policyId": "ZyYHbrOGk2EpRckM", "policyVersionId": "LApLQcqLLE41aVIj"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hQd80z1ePpVLVhPx", "policyId": "a7j1YvwUau1kamLV", "policyVersionId": "Hf2PHxRijsn42MMh"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DS5p7vjCMpFi9eX0", "policyId": "vrYkjtw2vhH9Eqyr", "policyVersionId": "pNy1RZ65436trOsz"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'fDp0SamJNgFlivU4' \
    --publisherUserId 'b1rfkHUQzVUCIIqm' \
    --clientId 'qkE8R7JHdo31TnEg' \
    --countryCode 'i4OIySPeboamrT1e' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'w3mNt3fwxJ66HZHj' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'cM2POBKKWqxBLwcl' \
    --body '{"description": "dCZY65u15K1WHjiZ", "displayVersion": "mCjpMIjsG2YiF31I", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'e9tVXfwLWRkznQHH' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '2xUOeMj6bF3cN2Ye' \
    --body '{"description": "GmfzxnHC7XQX5h3W", "isDefaultOpted": true, "isMandatory": false, "policyName": "Yd0WPeI44vJaycrd", "readableId": "F51Yqoj6JqpaWiDG", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'a1uSVDrTuJcoJm4p' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'JYGfTYTUyc755zVd' \
    --versionId '67wW5MoevXaDB0e6' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'lJo6pA3MnI3zF3CR' \
    --body '{"description": "adxQoN4q6tPeBnJl", "displayVersion": "nB5jviKgsULyStY8", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '7' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '2Fsk8lfDXjwPjwGn' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'c5iEP7xCtsfNq9oa' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "l80BqNT1LAUtmVGw", "policyId": "0U3anQaO0pejSUFx", "policyVersionId": "HEmYTBtbUJjw9FEA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HlqLGW6e4Cbt7MUL", "policyId": "cgoA3GdJVplWsBRM", "policyVersionId": "WKVpzVOz01cmWmx5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8Ef7Nzvir3oyImuV", "policyId": "6UkiwAYfWiX4b0Jq", "policyVersionId": "9sfx6CLiHrFIE3Mg"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'cWjHDFdM59XVwj3K' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4cnsYULiwcw9iDYL", "policyId": "z5laTavPl8D3ni9l", "policyVersionId": "MnSsCc4o82FcM8vN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Pm7jdVRjzTS38Phf", "policyId": "FKUqNtS1BIXR3jMI", "policyVersionId": "yoW3O2PEoWblQMQl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "O5EmryVKVmNtOjzV", "policyId": "R3zxcUOts0vN4wra", "policyVersionId": "Nt4mcjaA3VgfG30s"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '9vVp0MFonxikwd6k' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ucvM9FXxZhOkSzQi", "policyId": "vmaPSj7eEXYIUTNS", "policyVersionId": "IGiJixUIizhVWHmh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Qo2IVKk3NA4oHs5K", "policyId": "HNarv1ByUMu1IMNS", "policyVersionId": "S6v2Z8VmWDA3KsG7"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8KD3oVGLmpVFKPsy", "policyId": "xKGSy1Ug1q9BSIJr", "policyVersionId": "bjZsZWvUcJXN5DYX"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '0wWDqXCB4xKolUCD' \
    --countryCode 'gvMmXjCVBOhszE2e' \
    --namespace $AB_NAMESPACE \
    --userId '5wOhb6H8t10slHG5' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'cTvlmbjykZNPnf9F' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'BCOdpz4ims1yWEU9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'mR314axry5ojF1ht' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'R8q3utUmv4InuKjk' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'NdG3ubnggRgWbphd' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'D5bupGjF3Buwtjt4' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'B15fMyWrN79z3tpb' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE