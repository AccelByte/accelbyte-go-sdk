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
    --userId 'lIkNtsuQLC71WHLm' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1gMhHyBiQcZbODTu", "policyId": "WXL8pdDzAwFRmkZX", "policyVersionId": "OlZmxhCukETsWwss"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qQMJAu8fEVeOMlcl", "policyId": "t3y8UJg7oFyqUlef", "policyVersionId": "AduLtVCfAF5Lx85u"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D28AS5pRJ3AAsEd8", "policyId": "j1mJO2UvYISZq2LN", "policyVersionId": "IoUzibfDvzawYRLj"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'hjkknuz5zsarlhDR' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'Wa6uEDnz2IqE2w8U' \
    --limit '50' \
    --offset '69' \
    --policyVersionId 'aUP3h8jzZIKWuMMj' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["DgcJr8dq2gLm0Xu1", "tL92bfyjo7HVP1w3", "ChjLlB4sSAiR0NpJ"], "affectedCountries": ["qWy2RcR09jrJQSvr", "JSFkvn7d07YnK21r", "U5bBx1BBvswSWzPx"], "basePolicyName": "rS4TK3Wcnl3870nt", "countryGroupName": "yeZrSvFG5D0VzAGG", "countryType": "COUNTRY", "description": "Py5UX54tZqAB9Ynj", "isHidden": false, "isHiddenPublic": false, "namespace": "C7vvWPrLJOEiHR0p", "tags": ["O1ps93cFZ9Iwyg2B", "ySbuNKG3eYySWDab", "GDdTNV6paP1cd8W8"], "typeId": "3nf6I1NXWlSuPkvK"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'GbbFLRK9dZz1k4mH' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'EuCeMuhvSmjDXEvY' \
    --body '{"affectedClientIds": ["OyV5huF6QcqKksUe", "U3kLLunpxgS6N0o6", "x9sGOlRZkTlQZR3O"], "affectedCountries": ["kwr0OqRyuD5VOIM7", "WMhHZ6nfzcaa9ehb", "hwquITLOPh6sIPib"], "basePolicyName": "JoOahCmST5PBCOvu", "countryGroupName": "3rXGT60o35J8zIln", "countryType": "COUNTRY", "description": "EXOIQyBBLUph3lnu", "isHidden": true, "isHiddenPublic": false, "namespace": "J4PGQ74ZaGCEoZBr", "tags": ["qbbK2Ejd6kgJnILh", "m4bOEBIbNVBaSq6m", "eski4yz87Ah6GxIw"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'KoVRGXy7CEWF5NIM' \
    --countryCode 'pcGPWT1taRzYno7s' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId '79gntMuRyFITAG37' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'tRSl32t3ilp0jovN' \
    --body '{"contentType": "aKSYjD7Y8wJzd1zj", "description": "BMdk0oTnfnE9dKRo", "localeCode": "xTpii8we13csW1cm"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'b4h8gDbdsT3vqpyA' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'mljZ9WC8OMfuYLyu' \
    --body '{"attachmentChecksum": "t3ZL2fZxw2uVxt4I", "attachmentLocation": "cBKqzDlMMbNHBsM7", "attachmentVersionIdentifier": "pJ09JoUQSY3CiM0f", "contentType": "L0C5tsWOZJ3S2IiD", "description": "fJDBCNLmmR7Qffcw"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'SvJgF8EcIDkIg9dd' \
    --body '{"contentMD5": "YbgpumqJRxlyCF1Y", "contentType": "1W2SnJuX04dY1F0V"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 's2KgrEB4tVsCI17H' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["Fl4ChDCxJKgd07AW", "mP5Im1cz3rWso2ZK", "VIrXqXmNpEVvkvKo"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'UUOj36OvFfnV29t8' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'CmXqVjrO7MueIypo' \
    --limit '96' \
    --offset '85' \
    --policyVersionId '9Zr7pqvfymAwquDa' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'pINdohSXDHK24gUa' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'Bo7pHp6aXUp7EZX9' \
    --policyVersionId 'ZvYOvPqIZNsB9Rra' \
    --start 'e7u5zTbwCNJROx1B' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["z1Hk5bFKKwusMLI9", "tFF4EkYnSvzRC5k7", "jy1T3b2mvIhLSpIt"], "affectedCountries": ["HeD4uOqrVRX8Cxr8", "ma0OVVDoyGE0PlKA", "xD30DySk5vCzd1C9"], "basePolicyName": "OpMKIsbgMiy0BAES", "countryGroupName": "5RfE7KGmllHVsXdr", "countryType": "COUNTRY", "description": "cuPdb0uU0Z1d3BdP", "isHidden": true, "isHiddenPublic": false, "tags": ["a8334fzILtX5f0Id", "4BUkMfVJf64fsnCE", "IRou45CxW6JciDul"], "typeId": "FEmLNYLRDtoky9FG"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '9KrYPU5lGdPZF1Dt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'zsooOLjKjtvzziXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'T6bH6IatIx9mK1Nw' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["ovi91XfvO5LKGCKF", "qzRDSTu9danq0k26", "rYHDJNzA2Fx7EuUp"], "affectedCountries": ["v3mvkaMker3VxVY5", "RLdn0E6DfpBctX58", "bpFhedtI5n4AEFOL"], "basePolicyName": "ijgGUheoX1nR9zZc", "countryGroupName": "znIOxAE6Qw79ED29", "countryType": "COUNTRY", "description": "WEU3twaN0ZT5s3hT", "isHidden": false, "isHiddenPublic": false, "tags": ["N4uRBzMhZcakE5tS", "iDy4fVeaqDFKBzxq", "B80MSbi3RMM3Hv5P"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '007onjjTEXYYFwJ2' \
    --countryCode 'zDzfK5dfS0VAu1VB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'pNGnmcUdGnoMvVV0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'JOFaAuY69m3PkxFW' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["OJEtvYhd6e6ZF8Kc", "tdGo8F0TxeRJgBVv", "9rPLXVBIT389ITe1"], "countryCode": "7ipojr4ZyQRpvI2N", "countryGroupName": "M7ms72Qb7etkT0Xe", "countryType": "COUNTRY_GROUP", "description": "6dtrt2XD1L91n5NK", "isDefaultSelection": true, "isMandatory": false, "policyName": "7pXDJq3YtUAX8sxr", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'vU09OKswPMdGe7Ut' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'kjmZeHr509I2NUWU' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'K2eeOIjBuODV3Jrk' \
    --body '{"contentType": "m4jhl5PFQqDXcCJR", "description": "1uj6a6GbqaWDPjGs", "localeCode": "5kga6jcVsaZcV6mu"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'gSpdKAzcLk53Sbfx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NE2Qyp4QMk8vcbDM' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "JGSPe4bI87B2NWJZ", "attachmentLocation": "RhbvzsV2F425XER7", "attachmentVersionIdentifier": "nR9tqX1EycpF2bo9", "contentType": "gSRGrewJnhwElJld", "description": "RJ0fSw5tZXFsTP9u"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'CSsBeabHenESjkgB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "izUDp6KchK02suET", "contentType": "uc1io3b1b2UF9U7k"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'U6mQB6yuhqYAtOfX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'XFWImkN6fTXuzKZa' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ieNN5YpGpWyfby9O' \
    --body '{"description": "BDl9GMQGVx9MtMkw", "displayVersion": "S4etJUtGE2q0hZfA", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Qc8ydhjBsqEaykZJ' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'AeMmUbp5LMLD0O6l' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'AhtmsFFCRLmp2ZMQ' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'MZTLG8Lg8nBubrqE' \
    --body '{"countries": ["RtEvzoIFbp73GcEM", "XUkALtwhLg3zbjMQ", "qlAlPo8hJIDqyp9L"], "countryGroupName": "nDhmYLsNCUwgD3Qz", "description": "XUGdnFMmetQWbzCX", "isDefaultOpted": true, "isMandatory": true, "policyName": "xnn0Ab0jLt59gLAk", "readableId": "WJ6vUw3Cf9KWFsk0", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'cUkdECSqT50KXaJD' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'P5AqS0tyuB2KM8pm' \
    --versionId 'fY4JTQUgrinItiAh' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'czi5crqwOzMn0L3n' \
    --body '{"description": "PAl1vxhu5LYlh0LJ", "displayVersion": "YND62d94okXjUbHB", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '56' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'yckwloA10WDBxnIz' \
    --publisherUserId 'Ic48iGhOGDnwd0DK' \
    --clientId 'txqUn5YKqRl1CYu3' \
    --countryCode '7V1Wjpjc9MnNESW0' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4gs0HG5eeFSh1tL6", "policyId": "QHJyJGe6tUUzgqcb", "policyVersionId": "xgItmPrzx8oo0lzd"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pGizFypG5xRdey94", "policyId": "s9kwqItfL9WoVT3B", "policyVersionId": "Vlr0Byh2x3lH62fc"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qv1U3dFzw4uhmKD1", "policyId": "91thkPiNrhmqvjXt", "policyVersionId": "dIOoO0Eug7IxIscZ"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'dcfOKDWyCfIE1O6H' \
    --publisherUserId 'BSKO5xfYtnIZKWhC' \
    --clientId 'iwiNYNoKOmkQD8rz' \
    --countryCode '5BCZleGQCRX5q4OB' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '0EuTyKhMtwMhzwvi' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'PM4cROTUTYpOF4CL' \
    --body '{"description": "HWc3wpYM8N4Bn49z", "displayVersion": "jkSSrVdgIRqFwfJo", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId '22FKJf1zSfFFH4xB' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'gkPX69W1NrbB03Ph' \
    --body '{"countries": ["17hDoODHDby2H2Wq", "iDSg4jCjZt18XgWA", "u8S2B1MIXbsRLplN"], "countryGroupName": "YWkejkK9DQQC6Hb4", "description": "cXMBoBindN0R9bvs", "isDefaultOpted": true, "isMandatory": true, "policyName": "1FYtZDvF5EN9Bh5c", "readableId": "aO0my2q38qvwhmZD", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'mHPwdEjN5562JPYD' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId 'PXHv3WRzGv6ecPcW' \
    --versionId 'MjhQgpiFHa4iRrVz' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'fydVAczMmxqndEjU' \
    --body '{"description": "OB7LF3uIY2FoNRV5", "displayVersion": "GtP4PyyoL96Lk3Es", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '11' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'wulBoslZX3tWA1xz' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'ZZCDWGGWq4qu755R' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZKe5WnO5t8seFjQI", "policyId": "lF40pys10yYAM1kG", "policyVersionId": "LPwJCIlsOzEayQ4H"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lOwg3CCGCTJlp0LY", "policyId": "ObWQC3eUpn0Jk0PD", "policyVersionId": "a8OubQLCwfWFDvOz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EbsRCl2ydfLl4LKX", "policyId": "SR4tlBmGMX8TQaSW", "policyVersionId": "RLW3NGbVlnwGGzO2"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'GygRZSK9bw5fQVXU' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pQu5JAas0vJ7UYQP", "policyId": "ayhVaUdXsmR5mJeC", "policyVersionId": "HJlkSFO5kMwRfiwy"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6V9J8lAcfg8sCKpn", "policyId": "BYTiclt5krIceCBG", "policyVersionId": "s70ouOXR2qgJcOq5"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "o5NxpuI4JwjEt0fD", "policyId": "BCxbzLGHnzZ55a4Q", "policyVersionId": "YpeSwdlnWlK3CmXC"}]' \
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
    --clientId 'UXyH35zNlKOI0sSB' \
    --countryCode 'BAlqhcaby2yVVRCD' \
    --namespace $AB_NAMESPACE \
    --userId 'X2ML6n45gxV9oi7q' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'mMxhUk1KW0IvPDNP' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Y1HrphSxbsJ78xwj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'OFeQHI9fa7gXnpF7' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'yJcN7Qmsic8yVFPf' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'HJAkgIjRuf8m9bgm' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '8YMvA72ticBU52x7' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'ku6QN9uoCL3ov3wx' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'hMIJqfHVyL2FRgS8' \
    --namespace $AB_NAMESPACE \
    --clientId 'CxbkfaCNDGFBm6Kw' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE