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
    --userId 'glfZGOJ9jqkOmIIn' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HTsCcgYsQmdYZjlq", "policyId": "MSm5NBPyuzbYGm4g", "policyVersionId": "uIEVEdpWJp5Ms00L"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8mZViRQO5xE8svZa", "policyId": "uraaXZDifIDvVlgj", "policyVersionId": "IOJADhuubvSDqzvK"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HSH5toaRsan0rTNx", "policyId": "1nba2QFL11GAIaGg", "policyVersionId": "79NYeYiVln2aTh8S"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'edMK7iCQH09w9VTQ' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'k80GPy3NWJXW8unL' \
    --limit '28' \
    --offset '27' \
    --policyVersionId 'mzYKIBLGzcdMpPk0' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["gllZjzP3EpKvBGIj", "aDnphfuzx78XiLmB", "7VGwFFgce3doYXH8"], "affectedCountries": ["OmI0xLGlbQ7ROJn7", "16YP32pe7S10cGAU", "A6TinvbTfiPT8SMT"], "basePolicyName": "mtE1TemoTowvI272", "description": "ZJLMBW5K7nMo3BZs", "namespace": "DhOhSt3wj7kn2MON", "tags": ["0GDiS8venWcqGept", "sYmNdiOejhFqcfut", "Yh1YVvnPwWcp5VrM"], "typeId": "X6XB13RvmqwKshkp"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'PCALFdf3txb7syCq' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'jtYfVD1P152ms0q6' \
    --body '{"affectedClientIds": ["7SeZECNTDKcIqHRd", "TcQxkO9nLa9qGknP", "0IBLuRfm9bJ5IGh8"], "affectedCountries": ["DQwjD6hLaDpBm80p", "GOt9qYSaEJjzfY16", "XrtGFeJAmCfType0"], "basePolicyName": "nPdLVTfaIkomLDvD", "description": "OoplAWv24PrRBaKs", "namespace": "8YGh92L5uVN0JoNH", "tags": ["pm2dfVQBb0Ke9roc", "1M8KppOn3Pit5979", "O2BYZoIIpoFCKvK2"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'hBGgk3GuACcQyaN9' \
    --countryCode 'CHD1bRMxpBC8Z2I0' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'cqgIh3mF7GvJpJcd' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'lFRH0N4K4PK1lsEr' \
    --body '{"contentType": "3SRoHnCvdbOyBV9t", "description": "pJStRp3tVa9u3Ulf", "localeCode": "QEe30HcqpPcaMKNo"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'cAAYnXAcSg1yLMiL' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'rHTKt314S2VTiCRE' \
    --body '{"attachmentChecksum": "GZIpFz9yARqAs8in", "attachmentLocation": "UZdhp3OPc2JB7I0c", "attachmentVersionIdentifier": "duyvG0xJxQ3L0RO4", "contentType": "Rx1F1eU9qfKbmaSk", "description": "vv076xEx3g5fDiKk"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'Iiydhd77FPRDUa2X' \
    --body '{"contentMD5": "jxcFECaH75qunUWw", "contentType": "DlFCrcRXAaeZHX94"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'ssNInSVRz8wBt0ev' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["HCUdY21RZtcVgOfH", "uYyhFb3vwa804NdR", "1MRc9Aw8pXGFdNbq"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'Qz9dK6TUskztk9zN' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword '5pc2qie2hIXmcYvP' \
    --limit '24' \
    --offset '27' \
    --policyVersionId 'kM0h7DCVlFA3Jj5s' \
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
    --body '{"affectedClientIds": ["u1eKqVBIp7D6dhQP", "BfzszYwgc26HJrHg", "KESIa5VCnpy4JDUl"], "affectedCountries": ["cTqPrdl5bg7oluTN", "oSOVQw93LKh164wR", "7JvQOUYDCEI8tcyc"], "basePolicyName": "5M8XSeaKM5tS62AW", "description": "LhT7q5SZpIknOKgl", "tags": ["EEuFiasSmTRDJWqS", "2csWXdNT2Oc4LU6h", "OA8TxIiVbYm8NDV2"], "typeId": "2mfzmtDHoky9wmAg"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'sEfZAbsv6IRK0WLv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'KAkm1LPOYbpvVURf' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["YZtBVEfJOunGHEnv", "zdi2pvdmPlJhvpD8", "OvmWTWPcpnzxTu56"], "affectedCountries": ["mgXyI9fLGOEaMW2y", "7vAvUCgn6OCTnJ7k", "zMJVzzVU80vQoqF3"], "basePolicyName": "YUa2cBjhcbYqUeR9", "description": "FRcIxPIYyaOfC6jb", "tags": ["um34DLdBCSCW8enh", "jqy5KSqy0qTGztaD", "XxoFNqECIJb3PAGd"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '3aRLoazDhoha9Lpj' \
    --countryCode 'ByMc9We0iPijF0M6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'N6sYYYQB4rlFx0Tx' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'fDBxp8QJp2uLt3VH' \
    --body '{"contentType": "FY8UytvImqirY2DW", "description": "rXdYk7uNjJDTf2yQ", "localeCode": "MmIDjvsfhU4QD663"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'CXvHQWXx80CrI9HB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'LtBGkX9NYugrLUej' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "knvV4eiJfpIfYZKW", "attachmentLocation": "nRAJbQRGqgtU9zZ4", "attachmentVersionIdentifier": "M7gN3a4rDz8fOBJz", "contentType": "HsZjght4H2zHUdVy", "description": "8bMysOZp0eNgZjxe"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'M8vLPauz5O1XMNaR' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "rPvbintv8WXFiU0s", "contentType": "eXL9SBSkRXabaxjV"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'iTvjWHUctWPyzIU7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'XlUBvL9JMRmhV5en' \
    --body '{"description": "E9wUP14WsN6mtnZu", "displayVersion": "HQwGBwy6c9IWAZyM", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rbMFsTDdykoaQNaz' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'mBUNPxYOUNwyReSp' \
    --body '{"description": "hQINfjoTm2y9uEZf", "isDefaultOpted": true, "isMandatory": true, "policyName": "14EgKRLNzecAtYfB", "readableId": "9kTtUQPyf01TSx4f", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'filOnCvqdcEaWLmu' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'MRBCpDuGDb0IFoJ0' \
    --versionId 'GDowCIPbSiCLQSdr' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'OYGa11xvez7n03s4' \
    --body '{"description": "IWPwMItmqIYLWx0M", "displayVersion": "ZK6Pt5WtcP2qHP8h", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '40' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '3nZ6IDoWfCV8a94H' \
    --publisherUserId 'SiQ6XeQWnwfrwiR3' \
    --clientId 'fXkW9PadLHXXPz1T' \
    --countryCode '6ouA7Fn3Er2gUepT' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YXtwZoVU0vge96Us", "policyId": "gmUoRYQV9KM84Z6V", "policyVersionId": "DUNnjDGeYT2zK46V"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IBqCSLjWgq4k3RIi", "policyId": "ZZSilnZi9v1weR4x", "policyVersionId": "7CpqtlcglNtuPuie"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Vesw1ksfpAZix1ZF", "policyId": "4psbJaTMbBcWyLU6", "policyVersionId": "WX9AhsfiJYUWQkuT"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'NCiAeLxNicqb0ypc' \
    --publisherUserId 'kd2ykxazjlq4U3NL' \
    --clientId 'I5zg8ShnAsnQs56A' \
    --countryCode 'xlPnsTyAWeRVM7Fs' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '36lpzKxZqz5D8YDd' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'KyzjQQDkObItPZ4p' \
    --body '{"description": "UlV9quDGqPDQ9Ivd", "displayVersion": "6UjVmgAhCB6RizAW", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'FTuIaGY7UT6aGYN6' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'QtlIlnFR6NhxXset' \
    --body '{"description": "Qy4GY332sAoFyDzR", "isDefaultOpted": false, "isMandatory": false, "policyName": "jgUO5VmEZGR5ANJU", "readableId": "aVHxE6qnF4PrDUK6", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'J3tGc8Ikths0oJJ3' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '9tPrqeYHZIz8KCdI' \
    --versionId 'LjlJwkzlKUTp2cmW' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'ckKKnq3yANQx70e3' \
    --body '{"description": "XZMmmwAp630xT6mo", "displayVersion": "l5BaTnWuMJtMYzfz", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '16' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'WirdY7tXo6i8QICQ' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '7TCkRnorbqy7mpvb' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OMwQH9s4V36BiSnd", "policyId": "OcoYMjHb5i0t9I85", "policyVersionId": "zV0MZzmXEtyuMJIt"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iNTN8o1IAs3TbrH6", "policyId": "3HtwMzASObesWznI", "policyVersionId": "ggWPCCnUBW7W8jya"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "H6w8sQ0jYGFaiydS", "policyId": "Rman513zrqkng6yG", "policyVersionId": "1dJT2vNmTlQVekNQ"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'jzDpX9u5zaqsUhFR' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2Uns7VyPLWVLnKDc", "policyId": "KEK2KkZea0MPBSx8", "policyVersionId": "Z3EroFeBdkDvONCD"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CQU2c91a7hAs2R8b", "policyId": "M9knlYWTFDFnH7BC", "policyVersionId": "mhQYlGUniVMsYyk5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vAT7sUpL21xfJFDu", "policyId": "d7N6QSjqm6bLP7TN", "policyVersionId": "nkdZaHnUs0n6z5mK"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'q0IBqzXE4MXatVAl' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "z3BCnGYYbL7jVM6v", "policyId": "V0LMqRO4xtrb04Q5", "policyVersionId": "4U9aobSd7wD9p7rP"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1s1RCvvANiDfVFMi", "policyId": "PMwkj37Eu2xxExC6", "policyVersionId": "dBYpDDHQUElQW0pA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iH6eLANyL5VDsxib", "policyId": "FCwrW6NTUpTCQOzp", "policyVersionId": "RmbeLsH2KHK5HK1b"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'IVMnI87iEHWs9OPv' \
    --countryCode 'N9Ib6RaawYI1Sxck' \
    --namespace $AB_NAMESPACE \
    --userId 'qDTpwoyitdg0fUDY' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'VYCk3o6H7eGEo7yg' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'u8YsD0hflU02N2ng' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'knIBTkqvQ90GJfqv' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'erUG3KPjig4T7UeH' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '9h16mUXDZz5OTjQs' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'Qb1Y9J1fl3AZhVhI' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'M9qsnfRgSGX0bvcU' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE