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
    --userId '6DGVLwskTeFETcRu' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tEBlLbTsoGS8jMvT", "policyId": "7hY5B9nwd58f33Oc", "policyVersionId": "do7mTPtGRHhhOn0G"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Wa3eBRaVZmzksHi7", "policyId": "1Yi0S7M8VGFP04EV", "policyVersionId": "UVC24WCto4q2Hz1N"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6LQQzzbxOJPXLZto", "policyId": "b0BK3IyTDx44Rmwx", "policyVersionId": "k4VGTqT5mONZCKJh"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'm7BKskyp51aBIbxW' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'luRLN0wxcRVS1tXZ' \
    --limit '82' \
    --offset '98' \
    --policyVersionId 'EaAYKuNBLJM1uZ5o' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["zfGqhyaTF1R2xD5Q", "KGuuRuCcIzxHiMiP", "Bzh8ATCfrA8H631p"], "affectedCountries": ["1EguoV7Q3WCQhVs3", "BFY9MJZrkI4THtGQ", "Qenia5E5o43fk9W8"], "basePolicyName": "EWuvPrmDcqN99Doj", "description": "T87WK4n6z32aEmGr", "namespace": "zsCCwy2o49K2rIyZ", "tags": ["V2mshVXfoWWP6Lpw", "87eRMxQmQvWJOcy6", "vdNGb9dE6Ecb7A2d"], "typeId": "ESeZYGndMyjG1u2l"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Gehoq3wlS9lxyKoZ' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'FYbfxZ5CS6kEDz9f' \
    --body '{"affectedClientIds": ["rIL7TtbOKXxfrYFe", "5TIdYZy7x0hQMoLX", "2x0cF69G88Oz4qSQ"], "affectedCountries": ["zO7NZdPT7l1m4YDL", "iQWJZDNYiraEHVkg", "IK3dhj1CbLtzlsgw"], "basePolicyName": "bCn9rBLwsnXTVO2z", "description": "GrEywdiNfw2ip4Ij", "namespace": "IhBCvIhsCsoudmwg", "tags": ["eKwyJF8JpfA55sjR", "plPNCm6gLOdbsFrs", "hPCI1Sjg4aEwbeDC"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'X7r84oE01YAJbvfy' \
    --countryCode 'Mf5jqKkz9F3yu7Wo' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'hA7ejnzn5bjMmIpR' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'cyvjd6IPt4jNlvwp' \
    --body '{"contentType": "nOy3r9rGpSW0N7XN", "description": "DTRAL7zEmcwHFMe4", "localeCode": "wwUaYN9i6IbuKRC5"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 's3XY8BFSjYs3IKUm' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'e3h4Kux5tI4EDGEh' \
    --body '{"attachmentChecksum": "nsDfxNZvVPVnUQVJ", "attachmentLocation": "77krUMWQ9jfN5MAu", "attachmentVersionIdentifier": "b7SQmIbOi9pV2ilk", "contentType": "NVDDeYOnoUI4hsYR", "description": "tt53hIx6aWdjCgKt"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '0z5QMTONMUjFGijd' \
    --body '{"contentMD5": "Qcl0UX027uJenbhh", "contentType": "XvMPrk7z0yV83qul"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'Z4bpNBFAJwogvvjo' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["do1u5YTBW4yLxjzP", "R8LUgzXGxxZiKUfy", "7ghJLGdjKIQUTr0a"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'JFhxarvk9MohvWnQ' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'GDPwmPKCxN3Z2uWo' \
    --limit '78' \
    --offset '31' \
    --policyVersionId 'hFZY53Q8lKrqEmas' \
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
    --body '{"affectedClientIds": ["JgWiApFwVu8OAS7d", "1SvwM8vA4QxD6WzO", "RQ7to2Fh3D53wPuU"], "affectedCountries": ["X21eCZL50yJLhrHd", "gLXvcWrs2NmU1I5p", "jvRc9Sx54oobKukK"], "basePolicyName": "pzGS6SaXeFcKSeZy", "description": "qVjz4PUhXTL87GCz", "tags": ["rP22zILvmKHlMVdY", "ffKnmtpVKnKGwzpb", "s5CDhDedfdB062AM"], "typeId": "u8gFQP0lcmnnLQv5"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'FINwje4t1YEt3y4H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'XcpgmcdKyNORuCQo' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["Y1QsAVWZ1MJmzZD7", "aGRkqzIsPYdUKEJU", "0jL41w6NfLhUyvEc"], "affectedCountries": ["Y1XgYyVUp8dXQo5R", "s70vfRXebpZvuhzV", "oAdcMGmNdiHXYB83"], "basePolicyName": "sIWmkvZF1XQ7vWTT", "description": "wVZlQd9vn6FOjRMN", "tags": ["aRotzbf1W08xm5SQ", "R2wZfw2o2YtqFK3i", "kaofgVYN13eF22KQ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'VP00AGreID226w8K' \
    --countryCode 'Y8K419I6c9GtR0g1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'USuX2W5aGeCnytYL' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'b4yhR1SeP6X5be2c' \
    --body '{"contentType": "lEHbwTDG3d1VhE9G", "description": "5qcWSfV8mZnEZubF", "localeCode": "wOjZCQkomZaW56bB"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'p4dCyMeWb2LeAwmZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'eJGwFNm3ieGzt5ms' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "0tf5no4PZBJdkXox", "attachmentLocation": "AqVNdrPD4KnXqSyW", "attachmentVersionIdentifier": "xwfHTj15W44SfIAZ", "contentType": "rJFXiyppHUjEmenY", "description": "lO1sfIBNvIYFuR9w"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'FNMuHE2d9BstyBIM' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "xULwhtCrV5lVI6wc", "contentType": "GVukc9aPVIBPz6rS"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'OlmUouJEAJiL1Vde' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zr4LSiT7QdiCKAGb' \
    --body '{"description": "nZHp0sWpnuJcWPY1", "displayVersion": "SgCkIlhPmlyKBvNl", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'XZw1T7JGxBggfGC3' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'hDca5und5mPA9beg' \
    --body '{"description": "HlKxG3KyHb20w2gH", "isDefaultOpted": false, "isMandatory": false, "policyName": "ctjMFqv3ab6W36Qm", "readableId": "3fBfnjbLHB4TgxUq", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '0hDMEDLDFVHEBlfY' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'x1zUwSHA6Y1OMwzi' \
    --versionId 'w4vHkVlG3nNWrPkR' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'BoHin0t4RBto79us' \
    --body '{"description": "tgmjVGftD00tvzsX", "displayVersion": "kQRJ1an8NrFneEAG", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '39' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'hKeP00UFzUQDgDgK' \
    --publisherUserId 'hdDDUi3gWSA0i1av' \
    --clientId 'U4A9y3YkEsom1r1m' \
    --countryCode 'tzh8UC1klxnuPGw3' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mzjy0lwefhZTm2bc", "policyId": "XwSyfRMOUreFrUjt", "policyVersionId": "zNP9PAOydwrDk4gZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cAqFOiqVDaHAhcyd", "policyId": "EmARxykGnEwljDvS", "policyVersionId": "LTHcrsLGw3wsYbLz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Jh8ZuZBXAjNhbZ2X", "policyId": "2kMWvILMeQGokQLO", "policyVersionId": "Cfwy8u3qPV7S8Drs"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'F3ZTKZvJAk0aQyWK' \
    --publisherUserId 'xY74asvHJxhL0kYQ' \
    --clientId 'YXkTLD3SlP9cmuIL' \
    --countryCode 'xRx9UJ4xG5i6X0kS' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '5X6FuqBPPCkkH6CU' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '6sULT79XX2AQfW2H' \
    --body '{"description": "yz2dJ9qy8e2xiXGv", "displayVersion": "9DTQEliVDbsdvExF", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'Xy8STSwAyK8yq67N' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'tHkHYbV9tmSDmt99' \
    --body '{"description": "PK0c2983k0AELbCU", "isDefaultOpted": false, "isMandatory": true, "policyName": "QFHeUxqs7ChE9sxJ", "readableId": "N0wKg9JHUBTtYXCK", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'VM2sGvZ5O1FEo6Dk' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'Rf26cXbyrQRVmeVh' \
    --versionId 'y9r32566FkuR8Dw1' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'tSOHsXJF2GjVhPvD' \
    --body '{"description": "JQZ5wmjmHwb4gvpq", "displayVersion": "Gxma8XjBThLzApUM", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '50' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'do3ROXvaRN6kS0Q2' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'b46ASPuCc27WP7uo' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace '1JQ25zWAhoARUynV' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'FIe1dh3cZKakWcO6' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7jV4fCxdCCW5VS8f", "policyId": "Z0OyfZn8fNrDL3wo", "policyVersionId": "LNbRiXn2J7oKeqkb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3RMQdRiLN8NxUmQK", "policyId": "EFiAtg83aINZyZI1", "policyVersionId": "w0wnqtOVQNmrUMP5"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "423jyUq4jhozHGzM", "policyId": "ozCDmF9Ur3rYUQG9", "policyVersionId": "XhEhvgM0Hd1cZ8Gq"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'jvOT0Shc2Abu2joJ' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QL8XUp99M8L76bzd", "policyId": "lGvqSt3SN9xMhNhg", "policyVersionId": "rZ6a814EGOZUBnkl"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ecvAkQEBMWIN7Pe8", "policyId": "0OeHWXyPJ9ooU9dM", "policyVersionId": "lA4EMJbYt2V9T53t"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "m2VyrZjagBHrUEiS", "policyId": "UVMtGCivUOUpPI3o", "policyVersionId": "3jnDIlMdUEXjPJjq"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'ZnLazAJtmmzfkPo8' \
    --countryCode 'ukyXY7LJDn0hDbuE' \
    --namespace $AB_NAMESPACE \
    --userId 'JjTT66nCnjKy3X6z' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "70axCkxIu25NXd5s", "policyId": "IDMRDgPRmlwCiA4W", "policyVersionId": "wKvX9IMF20YNc4Tc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "i3YkzmWrz3sI3bNA", "policyId": "2AdLhu4JiDCWPHDV", "policyVersionId": "2rlm678lv3nS6Y6O"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wW1agyPufIZDTbxo", "policyId": "i6xCMsixX2d6wPlL", "policyVersionId": "IjPyUbHW2KqsANTI"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'LkEuuJEWP5AhObBA' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OIISEI5x8jEDT3Mt", "policyId": "ieLB1lmYTR2ScWXq", "policyVersionId": "77TZwtFGFGLxGzjB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MydfeRZcwmTeeAxF", "policyId": "qWrnjnJQBZZu2zn9", "policyVersionId": "CPiuP9jNVabSuJ06"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2QaBo59ZeSXAMpmz", "policyId": "vpYXKMX5Ho7qksUz", "policyVersionId": "XYeZtNsauStTI64K"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'N8IlrRERD08M5fNl' \
    --countryCode 'T9R1PmAW1vjBGtmF' \
    --namespace $AB_NAMESPACE \
    --userId 'TmUAdUi37KHD08nx' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'TsERbRCjHyx1J2mo' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '3eSNy3IV2abQC9Zu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'HRASQSPwPrf2mWaz' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'ngv62SYXphacBh5I' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '2TguvweBOJgv4d6h' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'X7UtfnRG4J5fvvaV' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '5VNnnGxLdNP5fa2g' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE