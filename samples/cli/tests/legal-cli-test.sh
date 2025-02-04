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
    --userId 'SlV8mBLaDmEjv84b' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xsFPGgUSUIa4SAbC", "policyId": "NwzSey1e1byJ8t9l", "policyVersionId": "Lhw2vvCHT08vkpDf"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QzyQ54EVj7H3s24Z", "policyId": "a4a22R1gi1pzvd8Y", "policyVersionId": "XXw7oNLXFhF7nceX"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zS8t29RoDoYuDFza", "policyId": "NV9ZTYVrlO2f7EjV", "policyVersionId": "m8cRIoLE8QKdMqZB"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'V9AvvS2FJqvOhu4M' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '8xH4hGhShOSCYBYM' \
    --limit '61' \
    --offset '67' \
    --policyVersionId 'uwhhT5qo6VLwEPsz' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["Wz0wBFI6x5RCavKS", "hfUt1gYeapR8fnKp", "orsdbrPBY9iF6mpV"], "affectedCountries": ["H349fjcuOYXun132", "Hjfu4cfzRJBWdBPL", "FDKtIPQHfRQbdbG1"], "basePolicyName": "8NcD156D14QM7R5k", "countryGroupName": "tvb91fwNQux1h2NP", "countryType": "COUNTRY", "description": "LTAXUb4sUmcGDCiq", "isHidden": true, "isHiddenPublic": true, "namespace": "YpgCTlmVDjhnueRC", "tags": ["m7dw0a8QxjBYt7tR", "zQaQZ0eLKanHQmRa", "VhkxzO3Y6OMmpiPy"], "typeId": "Nps93r6xI7BpEyLG"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'PE4lzrUF0jsnbrTm' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '9gLXdAg2CpoeMKKL' \
    --body '{"affectedClientIds": ["NJHfdSS4wRs6HMKG", "bSuYxjRqLRVbMp6N", "XF3yKRtz5K45WeOE"], "affectedCountries": ["RR7cPNvUrA18Hpoc", "WWKDc8FqoHq1bVdJ", "wuyv6S2qs7Gvv0ES"], "basePolicyName": "2UfaTDZ0tN8qAPyu", "countryGroupName": "3WkdmKROudzge3ib", "countryType": "COUNTRY_GROUP", "description": "1KF3S4lJeFTGbPg5", "isHidden": false, "isHiddenPublic": true, "namespace": "62oPcQafpTSJjVlt", "tags": ["LgOLJDpwKVr7bKrv", "2JcEVuzqPKu6IQse", "m7pU2UmUVxAmXpsZ"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ugmQzGGiRbrKgMg2' \
    --countryCode 'ze8mosFEOzpKxHpG' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '9Pczz6qNXSGbKP9e' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'c2jjvp59EyN7nvyg' \
    --body '{"contentType": "782khmiGdsbzYKh2", "description": "bH2LoXc3kxg59oqG", "localeCode": "0K5YYXnJu20pQ0o0"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NyHHoBO0IURpJ2yN' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NpPrtP7znHqapvUi' \
    --body '{"attachmentChecksum": "UNqBkHPMEZwItHIS", "attachmentLocation": "oQeA25hyvYPwzYlb", "attachmentVersionIdentifier": "JtNBa6SlZBOChXgE", "contentType": "laP4y5t4aOTvOfnT", "description": "gma2yt9u5AoSdwYk"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'kdy28vTBpIclgRRO' \
    --body '{"contentMD5": "bsGTVLjw5FIOJU6D", "contentType": "IrwWx6M5lgoQ7kbS"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'TVhJwaMpykFYnDsB' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["mkW2lsl2vkWBRj2K", "w7Zgnsxeaiu3TnJp", "2YeF0PMtTHFvF9cf"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '8444S3mWbf4nbgiJ' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'ZFF3XH6FMTumE2qa' \
    --limit '8' \
    --offset '22' \
    --policyVersionId '4QpCxhRmZnFKXORv' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'sgJyWWkHLERNGAh9' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'avtFMeAnsU6mGXIy' \
    --policyVersionId 'zaaMSQNURXLpmSuy' \
    --start '8nA4HSFvF5dsdzjy' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["bV5RZC9jxg1BsRWV", "im5XTEm96N7iZVte", "mwEXANJu1PgvvdWg"], "affectedCountries": ["EQFepjm3qcW28oPZ", "kXtTvNhD8WVj53tB", "JaXz3UVGeI7YjNil"], "basePolicyName": "fCoPZi1dXieHcWhq", "countryGroupName": "wqmfW95rGeIEu0SB", "countryType": "COUNTRY_GROUP", "description": "aBz6deps6JcOfOBO", "isHidden": false, "isHiddenPublic": true, "tags": ["dFfQ9YeNy5WiDHMO", "pnvKyNw4SLwtThqs", "OE5yO8leNthhUSfB"], "typeId": "aE2ZNzqSuQzSOdLs"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '4lS9Xzpu7b3bnMpT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'gCx1ExLEuRaVb8ka' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'hk5oHrjO8SWgcs0z' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["NcG5p4EC1OD76RTq", "stHWEfRBIjJzxjJp", "8bcIiGwfrMIcwn6c"], "affectedCountries": ["SLYTwhZpqXmhsQIl", "elC7jTJZbXGDb56m", "P9jqTKEmrLiqgUHe"], "basePolicyName": "3clSYpgTXAmW6z3M", "countryGroupName": "pULfugiwFeiAstdH", "countryType": "COUNTRY_GROUP", "description": "2clyhCGA30o1wjl5", "isHidden": false, "isHiddenPublic": false, "tags": ["pcp0xJKgYV82Xfz0", "JEMzybAf1uUwjO9F", "KtvXC85Rw9huhyNF"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'J9NeZ7VwyhJ9QNGv' \
    --countryCode 'q99MGE4FG7hqTn4N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'zngeWFFwO1F2LPNC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId '94ogyeFnVLZHP8VT' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["AHSOI2iouHmmmAWI", "ERYSSvbxoacZLzpw", "Q3upqOdZk2nUQRF9"], "countryCode": "CBGlpKerIninNvW1", "countryGroupName": "y4IW85jvmwX1g9f8", "countryType": "COUNTRY_GROUP", "description": "d7LSCP6SZGf8zAbn", "isDefaultSelection": false, "isMandatory": true, "policyName": "kjA5og06Qs1ep2L1", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'IQJdJztJjfJENKBm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'cpRmGcVF9WwSQvzj' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'PhIojN7wqi8FBU2w' \
    --body '{"contentType": "cpVooDvljKMgqNvv", "description": "8ehHRBVsI9XLjcrP", "localeCode": "CIg4E86Q5IpR2JGX"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'Qy20kPhOV9FRIgIO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'beDcWyXu3jj0CyDw' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "wcMBcnB9ftJdYKIa", "attachmentLocation": "aNZE9BzucLynsBKv", "attachmentVersionIdentifier": "PahiHX3lu3dftMYb", "contentType": "ABBKp2ofDs5A8ykq", "description": "KtWXCmesemNDdJo7"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'mGXNMIZ2WvLSCwXh' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "3cbabPKNg6j68Y6Y", "contentType": "5xLvCfZqd1oDjF8F"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'TK84J48uVCby6hsg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '9ABPjyQsWu9mrj9M' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'QNxIFDAjGR3VaEEN' \
    --body '{"description": "wLOikrUtbpNaB2Rs", "displayVersion": "Zo1I0S72rTF0RU0q", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '6eqtcy6Ei5ynqWGB' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'F1Pq7yoDQc3tRq2L' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'rKJqnBnqWQ2x6E7v' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '8vdymMhu69Vp2gWB' \
    --body '{"countries": ["91P1xClxUQAdkiMp", "0atDAMg7PFgreu7K", "Zv5Lr48uN1IPKkqM"], "countryGroupName": "Vl4NjOtmMezvLfzF", "description": "1o9Yja4JaejXCteo", "isDefaultOpted": true, "isMandatory": true, "policyName": "GTYQvaCaUeh8ek7k", "readableId": "SH6EM3cTmahyxvWF", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '2gSmXwFLzbRf5coS' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HmUIYLS0jZ8UAsA5' \
    --versionId '5whaUdGK5e605Mhn' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'JOFTkWLhTYArOC0b' \
    --body '{"description": "O0n1IBBkjpoJsCNP", "displayVersion": "XB0MoCfd9WBpCNgt", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '78' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'NwbBJUCJYsiX3j3Y' \
    --publisherUserId '6Azmp7LzzweDx1md' \
    --clientId 'ijFAgrLO2Aqo6wHW' \
    --countryCode 'vh0dLlwnCNe9OXe0' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EFNJ9l6nLJcJ3L9Y", "policyId": "uCzGOqLeMrSPHi5d", "policyVersionId": "6tjAIrwlpexomrGW"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Vxet5t9DSoUfJeIE", "policyId": "GyeUOKV5ZEmIkpdT", "policyVersionId": "ASUoliyqp3BYfH57"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lx4ZxjlCRPghswPE", "policyId": "uCWHrh3XuQDNFMbU", "policyVersionId": "UbOMfmvvu3ypNYiT"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'u2WTN45vJ90ZcnH8' \
    --publisherUserId 'AhmVuKQ4Z9Gtpqzw' \
    --clientId 'mTY7gDcWlUXfFKyv' \
    --countryCode 'by3PmJsy16Ano88n' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'TqQoh4t9YmNDt3Pq' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'yP0tBpWPUtyAIVjf' \
    --body '{"description": "gj0Aixm68pq4BXWc", "displayVersion": "6geAuf28s7qN6wL8", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'hdDUOW0gfzJPVa6X' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'HgEx8VUlpAC7IoLP' \
    --body '{"countries": ["nnL3ltuSsKwKU2Kt", "3Iljt2iHYvM7gWnl", "uKABHLAXWbguUffL"], "countryGroupName": "3w1h8eab6DvY1bYt", "description": "uyTJ9lyj9r9e7T7W", "isDefaultOpted": true, "isMandatory": false, "policyName": "ApknPuiSUuDFAs7n", "readableId": "rqth3sOBqR0dQpIH", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'p8mLU9ktQ70BoDTO' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'uGVJmNRF9DYioFaU' \
    --versionId 'iyZHGJ9DuSkTZNTv' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '9Rlq8RRfpx6NckO9' \
    --body '{"description": "rraW0TxJKQtqslBk", "displayVersion": "EEQsTvL6yb20AHhB", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '47' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'vXk08omSE131YHou' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'Vdi64rjI7Bx1AvfU' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ND7h7ANUnPo3CTta", "policyId": "Ys05Zbzf9sqPGP2w", "policyVersionId": "U990pjSBJztPkpFE"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fDGkztn5RTlfkcEx", "policyId": "JynP5xzgjXPIeLvL", "policyVersionId": "4x0sX5k1sHdrWUga"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dMaATy1H2IZXyivB", "policyId": "txDPSAFKOWmZSLAU", "policyVersionId": "gepjYPDI9hPByKUo"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'BwEItdv0OxqVjLqD' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "M9kpH0sWNCIF3aF9", "policyId": "ELL9eRUIvTu6Pc4L", "policyVersionId": "H6Q1q5F4fA9eHo7R"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CwUMt9MVF2JeNYiC", "policyId": "WcAbrLG8FqGTSnZV", "policyVersionId": "fBQQQA7PkMxqkqIR"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "sGRTvhW6pZKtAtWl", "policyId": "CXhIGfqWZWsfs7b0", "policyVersionId": "5OhmT6Yk2hYgkPRE"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 65 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'kdOsblHuVg0reFKu' \
    --countryCode 'VQ8G7ARZGIw1rZi8' \
    --namespace $AB_NAMESPACE \
    --userId 'uAsHLPL3gtDRBm5p' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'mZGoOkJvDslKrr51' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'IsWA4h9jajHLoQ3E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'SNEDaueeYfy4d24l' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'fi3XNXCpRfv7eCtf' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'UgxcvZgtIgM7G9j7' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'V9XJ5nCpsBzHsfMN' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'JDONHXYWl0LkZSny' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'OsKjYnvIbofhZLR7' \
    --namespace $AB_NAMESPACE \
    --clientId 'QKLfGYyNU5zdt6ST' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE