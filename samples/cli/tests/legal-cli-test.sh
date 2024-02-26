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
    --userId 'PTmyfxVhAqDxBKOA' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hr2yzN4d70Aj2im5", "policyId": "uPynSeaN6Jg8nmCM", "policyVersionId": "Tp1z4Np6HUjM1G0l"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yXqnnKghU1mIAeUE", "policyId": "DMR2cWO9bszRcw2C", "policyVersionId": "oH7ag43HdO8VT2Kp"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "c0ZJPQyZ8jxXRH7y", "policyId": "8It6K4Og0fysaKAP", "policyVersionId": "VpybJECprzbiBSKe"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'D8RjAefaTO0U9MOs' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'CV8KvKfkkh37Ism0' \
    --limit '4' \
    --offset '14' \
    --policyVersionId 'AiF2mlAc1hEmiKhS' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kjvqHiNX6a8LAeg7", "xPimcKsu2ZARgaT2", "whSvkwo2PjhZnOdM"], "affectedCountries": ["tuw7UocyojNzYF2R", "5TOeEHb51va6Ar63", "XNkuZOo382JVsDNA"], "basePolicyName": "2STVgCWlVPyeFMVu", "description": "vbcl1H6t3PC9wH0p", "namespace": "KZ0KpKwtSaopZOhW", "tags": ["tCSSK63js3qjWQg9", "aHIkovOCLmq0WtQf", "S2PYFxYmQBr1xR3H"], "typeId": "yWe0Zn7CiZRjQHG2"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'zEUE7oCXm6XAfLCW' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'IiyamhNeyMPh1Y1g' \
    --body '{"affectedClientIds": ["5HZImsXlrWl041W3", "W5iO9icP6FtWk7tx", "lCKbWCeLzn8kQNaK"], "affectedCountries": ["dz1kr41RJ42NFRqT", "9JAUJtk6pdbF012Z", "3Uk0fME9Mqi6lOZO"], "basePolicyName": "1rnlQWrOn7NPezC6", "description": "cAB24TXGP0v8G3Sh", "namespace": "rtdKXTZmApxKk8Ia", "tags": ["HRUOiTnjyOCZHJ9S", "TRuVlnquNrnWzLZ4", "ulPN4nN9HF7GsKJw"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'FT4fsr0cbboCZ6sR' \
    --countryCode 'e5eM32hXLVuotBke' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'GD3t6g28wQbUByhM' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'I2Mwus9oUmSxVhYp' \
    --body '{"contentType": "twKXEiewEcqZXA8c", "description": "btCH5roptb3m2edK", "localeCode": "EYFeEvpJ1VRV5lsF"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'L2K7h0HPAT1ZM69r' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '8kIHALVatkEHNWjF' \
    --body '{"attachmentChecksum": "KZIiP1X0YN0mbaUT", "attachmentLocation": "xNJO5E59h2rqGKj5", "attachmentVersionIdentifier": "sXj3F4XjhgfsnQG3", "contentType": "X9X0lW04EsN80oUT", "description": "qLHI5UTw5Rqeitzv"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'EoqyJ4sjfEQdPOCg' \
    --body '{"contentMD5": "uzdQW3xuqiicquWl", "contentType": "DsKgkoEQzpmQTA9G"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'f1EKM3b36MFRycFi' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["F3Mf0VMgZa084Vhh", "Y7gUgpNMn6MSuEE6", "ysOmaMfF50ffrQgV"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'igA4DEFix5GoJhkx' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'JgR3Kfluslp5G1nM' \
    --limit '66' \
    --offset '63' \
    --policyVersionId 'jd9oqN799MrlsI9I' \
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
    --body '{"affectedClientIds": ["V2xpziACsfj0Vyy6", "xdfPLuragxmLmOHy", "anBiSwUue5Dk3WvB"], "affectedCountries": ["p0qJESysfQxQrgwO", "ct3pZXZJE1hLSgMA", "k1jUDGGxeNIEBVDv"], "basePolicyName": "ockLUNFJx2UVNSlf", "description": "CBVV9KyIyoGHu3Fz", "tags": ["FhY5BJ4PP7PcOlFR", "WeDRJ7vcd3ZWJsHq", "yjkiwzzN64n2snrn"], "typeId": "QXFV7FeAtZJ40xL3"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'EBcRFTr9k4A4Y8KN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '850gaAq0lzN3Mqz7' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["GBjDjPr4oA7QQS0A", "JkbkIHXgcpnrTR2L", "gvkwiA4KgXxnS2VM"], "affectedCountries": ["1lL53QWddRfoyHGs", "xx4DVKj7caNED0Lv", "lmhZWQfmgNDGkwdj"], "basePolicyName": "PdNS6lCLwsgPkBgc", "description": "F9pCHyLCv9R0ancp", "tags": ["cY64u5ft5n7Vgsk5", "CReULmI9DsPuPhBD", "ybFg2SWqpxdzLycV"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '52HxaiZUkHBi36H0' \
    --countryCode 'TuznIgfUhYqHXfJK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '7v5xVBn7gSrfISXX' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rQczfnzr8BfSc3up' \
    --body '{"contentType": "OndEqgCasJ6l2xF6", "description": "Pshs1IAFLEsA5QhS", "localeCode": "RzIC8mhsM3H4V5SV"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'ZJYUJcnbJhdmTDap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'BBenAJTMG9rjwbbv' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "jE6H00demDi28Djz", "attachmentLocation": "18oQGOCws4sKYm1d", "attachmentVersionIdentifier": "NYnBllXgusFTYnl1", "contentType": "Vz3PUTQUTwtBrMgU", "description": "McUhVH8g4VfSn5jO"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'TDFisrWBfbJfCELj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "QC1at02hY3I75DLt", "contentType": "B2qkNRLKXC7k0dUx"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '5OMoHQzwUopvrPqH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'isdBFYQN7DXaEk3o' \
    --body '{"description": "Ny49GJ79VLUAS682", "displayVersion": "AvhmFQ5wRBfHV6kk", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8ZRhyxRk29fzNDS5' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'PQD5kWBV64qS0vBF' \
    --body '{"description": "JXwZRyJXNk4zXkct", "isDefaultOpted": true, "isMandatory": false, "policyName": "kGs2ZC7R0TyYW8sR", "readableId": "kwaQtw9b9pythHH3", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'nCTk2pW4hHcopbgN' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '7DNMiR9jQwv8ylMT' \
    --versionId 'zIlGva0WopntMNAW' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'jkLcJ6cpwpqroaLS' \
    --body '{"description": "dCDINx50ZwqA2MUg", "displayVersion": "YDoOm9jmAy0PI8qq", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '0' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'fsonNdvTPqb5nEYB' \
    --publisherUserId 'qO3aXF8efzScbDIG' \
    --clientId 'pGgZ5eOL1mrixfX4' \
    --countryCode 'HEVt9SU5jxiDqOPj' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PRlHcWyAnjU1AxvK", "policyId": "HswPUofFYWVbkufR", "policyVersionId": "JmeqjLpan9N7uvZd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tLEYhBlSRw87sEHn", "policyId": "q5wmQEp53PKN8CZm", "policyVersionId": "Uj4jiDIOTSyAjQEA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1bILLCJgOjF9Stbk", "policyId": "dVuRz0RnkCrLsXzm", "policyVersionId": "MtTCc8MbxgWzx2Sq"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'ooe83VjNBS6SpMbw' \
    --publisherUserId 'CURm6fMVoqSpVXN4' \
    --clientId 'x6hPx2KYamrd0N1R' \
    --countryCode 'utq7X36Qx9IOD6y1' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'BShNGgECTLIYlKlN' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'ym7I2cB7rZbWQSIS' \
    --body '{"description": "Br1ytoznQRIPcFWK", "displayVersion": "xp8KmtXzIKzj1fdT", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'jTeTvXNRKmm55wuU' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'Zmx80PbgpjzPTozD' \
    --body '{"description": "oFrbwIhFNCCJ2BXl", "isDefaultOpted": false, "isMandatory": false, "policyName": "UEjTwIIDe9hWv5Dr", "readableId": "SU1OdKse0xxSiPll", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'iYwMYujNhdO0l4nX' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'QsaxG15LJOxWQFnx' \
    --versionId 'AbLcMlqxCVKuJNNl' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'oTQonSCyv8GDjYvy' \
    --body '{"description": "k0cGetWMfOdTaGY3", "displayVersion": "JmfLEdx2iqSEMH7S", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '12' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'uRKOafh5VL3oeVUz' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'OAlAEF3zvc97NPJP' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wlbCYGj1uEEKaqPM", "policyId": "UaFRbX93DHDNmIUe", "policyVersionId": "pRn9hxH130EFJ3wk"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DGYFnno6DiQyA5uR", "policyId": "luQM0BQCMAhlWn7G", "policyVersionId": "siynWIqaAXFUXmH9"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1nwrLveT0dzj3PF4", "policyId": "g0K0MRnfxoUAGcSE", "policyVersionId": "WKSIqpeBNfgHsb6K"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'EWrbhJYvYrZRbUfB' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UUJ59EoEOheMUEFC", "policyId": "mp0iz9ag5Opdfz0W", "policyVersionId": "wjDVamrIbNY2NNax"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4dNEdhdfZqkuijWi", "policyId": "BiyXkxu4WRMdfmkH", "policyVersionId": "6Yomi5HMeJdU5vMM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "B7DAcOgBT4yyoClp", "policyId": "AgOps8KzFJRv02CD", "policyVersionId": "sj16GtSxztRKDptQ"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 56 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'FhE1lpkJ9cIhblwq' \
    --countryCode 'dRmj5uU5YglE9VSC' \
    --namespace $AB_NAMESPACE \
    --userId 'CPWlmAgOjz0PmLSU' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'mMZLOqCQS3Qvqxzv' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'qKkNkYjJ3ijdwLmX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'IEqrADSM3lyxzqMy' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'ybQ2yxHnzJkoFqcV' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'JtqwBCouLkj7lLZD' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'z4oCVgVr4p4q9iNm' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '1gOfkKN8Ifg42x4J' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE