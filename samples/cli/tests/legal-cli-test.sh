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
echo "1..65"

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
    --userId 'YeZHPvbT0dIhqBA0' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "91hlR6dZ65911Wwa", "policyId": "WByCuA1CGQHLuUqU", "policyVersionId": "3zctuS0eVsYPxT29"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aRnNbEV0SkoYCErv", "policyId": "mhDubn63AqXxeqM5", "policyVersionId": "dMKR9E9Qn9urj18b"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OMhNwj847EZH9mfG", "policyId": "7mRNoXkb6AVeiLRz", "policyVersionId": "0hcqljoqKqiY8sid"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'G6dlWw0cjH7n07ht' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'j3eZSgS1zPOzEU7c' \
    --limit '54' \
    --offset '45' \
    --policyVersionId 'rOnQRbWtDdpAEIg4' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kfKQb8KHNkXtLrpT", "eDCmk36Ii06a0A3L", "FTfzpygBXz1LTJUr"], "affectedCountries": ["7NJ3hcmCpL5N2kM3", "UWp6ZU4Z62CUqzAn", "O2OoTeedrtxLl6md"], "basePolicyName": "dUNRCcEono0jQTrN", "description": "lmhmlMUPJpul5CpP", "namespace": "MUIhsylpOhmydJ10", "tags": ["2JqBuz6pmooRuLeS", "CrwoSYRmMtl4Rmgr", "fhbeYUFrbB69y5wE"], "typeId": "XviHKNUZ3wCGdjxj"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'wAWcHh9sN2L2mfGI' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'HDWr64Vf3MvhAT6w' \
    --body '{"affectedClientIds": ["g9UHUlTUDhXF2kEY", "ocS1AjNompcLuCpg", "7qokGMnkorzKom8T"], "affectedCountries": ["ubwqF7YauE19r8r2", "2wGtsbkvlWoKiLpM", "HacsFM5WMfuc5noc"], "basePolicyName": "oorM5dI05oBN3V1u", "description": "0isxgwyI9FIU7g10", "namespace": "xXcUQzZgSbQHvudf", "tags": ["nfxmOEfg3yzT0C0q", "pSqQ1Uhchp1NKD6t", "2bpOZCDYi9pTt2F8"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'j6d1jxrkTnUT1kGg' \
    --countryCode 'ueMJqbYC0fQxcH6L' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'UCMvcIaDMUX2hc0q' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'L0vv5Y1ETCFy3lt5' \
    --body '{"contentType": "eqv9JiULRlyAos47", "description": "v50xEWlPmUjmZ9NB", "localeCode": "RvGOdnEiiyXRbvZa"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'FSGZB6mi7MjM3UQx' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '7c767KIiOUTi8xbx' \
    --body '{"attachmentChecksum": "FGHJCZKa24xAIUzT", "attachmentLocation": "GQk26D014LHBgNyo", "attachmentVersionIdentifier": "l4j5KsIiJD29Eb0j", "contentType": "wp4v85ZwDkZGg8vE", "description": "kyUGjZWltLObQ6Qn"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'gp50KfaYXDbfaOcW' \
    --body '{"contentMD5": "82xATS6EDl9dxTp7", "contentType": "W4AOQ5AgG9saGznx"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'XAdn00ObrkWaJMS6' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["GTeb6PQY5mlEODgl", "ZcfNl6I4LMU3ruJW", "o2fXMz57tR6gHHql"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '3hpFyxyaYGwfhFy9' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'KajQ3Mz9nzPUbBiP' \
    --limit '6' \
    --offset '28' \
    --policyVersionId 'FAUgx3WJuOqg6auh' \
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
    --body '{"affectedClientIds": ["3ifqY56AvOMOANgm", "Rgfq7ZwOfW46n4Ca", "La5qzKetb0oK8faE"], "affectedCountries": ["gLmckfx3zE62om9v", "7cWWyPVIPuL2WvLx", "8G8cOA9dVoofZtXF"], "basePolicyName": "hwLecXeQAhymixeN", "description": "CAnkinFpoJuoekiJ", "tags": ["m6HRcwFCFSyXc1BN", "mWKirGw1gmgL9i05", "uEK8u3ZiMeRxWLbk"], "typeId": "dekepfLMHOSkv3MI"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'fvlshj534dUQQKkm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'MoMoT82nFkhhyJDh' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["zhc27l3OwP5IdSNv", "v7oiiyLz7fhSoiwS", "EACPrdxkheFXJT6L"], "affectedCountries": ["GAdb6FdYYkxAfSJn", "1qELFjEIdTJh0EUW", "D9pCbSdODniWTM3n"], "basePolicyName": "vd7t6kv5b0z1lvNr", "description": "FpRUhc6BZJI6rYH1", "tags": ["9AlJTEie3OZP5juj", "qYvpHvmO6M1c3Buo", "UEFOetHVsjnuKqZf"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'NaDWrVxhlMErsxrq' \
    --countryCode 'sqDS2wjnobSFJGiT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'gB1xtvGAKCR5iQAt' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'HhVMX94R18Ls0wu9' \
    --body '{"contentType": "LqUKCeEAqek5GYhT", "description": "giZ4X4QqmMffnglS", "localeCode": "K7hUrYik1p6VFsoC"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'AzOSx7ZfnSdMOO4B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'pKrhTwfDIIdM5VTo' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "mmFl98oJ3ylK0w7o", "attachmentLocation": "Ppqc8EIdJqpff0Ge", "attachmentVersionIdentifier": "SKerA0f5OjkZZ5uA", "contentType": "n9M26lbqspZ7gpIi", "description": "hMij74BWiMO3Nh3J"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'ODWkZM22xwH30Sbq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "fbibZCF4jZ4Mu2xO", "contentType": "5Yolv5bThJLM0dRX"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'hZhgbLTCUjCTh7gE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'qmZwYiwiKcm4HkiW' \
    --body '{"description": "OmVniV4YGoG3Q5lV", "displayVersion": "nXJGxcwQYWXJHVdk", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'CBuqL28JaNYlPT1e' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'DWMiqdEaKIZuHRrD' \
    --body '{"description": "1nE4fTa4cHNAB2p4", "isDefaultOpted": false, "isMandatory": true, "policyName": "jxBFvZQTxP9R6or5", "readableId": "frpNDqaApJPX76x2", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '5T7UJ8WBJnayAh7K' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'H8bNJuLB2Jme5oHT' \
    --versionId 'nUnnst7uDRhjR952' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'UD1ZZX7t7sryYy4V' \
    --body '{"description": "zRHRlDNEijH3YKBW", "displayVersion": "A9hzhlUEHHRf7MK4", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '56' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'NlR8RjZrzX3KGJBY' \
    --publisherUserId 'H70JmYi18Fezpmz4' \
    --clientId 'Usk9G7keajaRC3iS' \
    --countryCode 'sNsFO447QQizWHpi' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UomF6DA67sdQfPbq", "policyId": "KfXVwR8LgQbzBwI3", "policyVersionId": "t389xWNOgqYNP6it"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KxxGFylCCog3YkNE", "policyId": "ulEjfvgspSlrDrnl", "policyVersionId": "HJtaKRgFqGKdVOZd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aA4H6TAT8lUoEpJ2", "policyId": "f5BC8zb8K2CPR07s", "policyVersionId": "12L8MtyFrdmP2oOH"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'WApFiXtK1tBPoo79' \
    --publisherUserId '11C3zmW6nyCDCDM4' \
    --clientId 'd7fuAYPh8mCCaVGf' \
    --countryCode 'XyZ7AKrGOLgvOyOh' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'S51nPVgYxTEfhZGw' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Jgk80giDag2SCpZD' \
    --body '{"description": "T0MhTwVCWKdArtvo", "displayVersion": "rOCdd8baIxMnbfwF", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'Uwv2Uu9cgW4FQdgS' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'EsiSAjBSkLBCnpL8' \
    --body '{"description": "ipFLrs8iqHNJb0XS", "isDefaultOpted": true, "isMandatory": false, "policyName": "8Yzetabmnts6kjE2", "readableId": "UMCiLaEk74GlJ6BX", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'qNG44QWwtDHdN18o' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'iQaeKvc8Qsc6GCbW' \
    --versionId 'OwhJDvqFTZGu1Ea5' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'U2nyOdSwAcsHbhDS' \
    --body '{"description": "1s2b43mGKxoYh3mP", "displayVersion": "bAUDU1eFFgupLNls", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '72' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'My2G9fd55oYjbA3P' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'LvfWvfSNc9F7352j' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1OJnbBmPNETIfHgV", "policyId": "rsw4JgK8fPYjvgAR", "policyVersionId": "hBTIBvRMonnwhAWM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vtGJvWjfBhWTKeyP", "policyId": "kWqhIEwBiS7nSOhM", "policyVersionId": "PJv2I2N5CBuTZkAi"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PlZYW7RDqPQVxfgY", "policyId": "Z8Nz4FyQVY7knE1K", "policyVersionId": "GPR246WhMzx4MZ3D"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'rpw3No8XgQtWetmB' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VuRXGvlCaWDKq1cB", "policyId": "JMFEshqMw4b9CwKi", "policyVersionId": "LdR5NpPe1WtllyyV"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WfUkOd3yQzoQ8hYk", "policyId": "7bzQvVjBnOwjf0ZM", "policyVersionId": "nEuL4DVdvIIz6hca"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qi8EuQjtMZUSItKx", "policyId": "LIeAsfsuq4DF3Z0d", "policyVersionId": "tdPsHQHg5hyx2km0"}]' \
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
    --clientId 'z4q8Xb37n9tPm6Iy' \
    --countryCode '7EpWsUHK6udmnMPv' \
    --namespace $AB_NAMESPACE \
    --userId 'BsTWMZsGUigiL7GB' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'hhNWWBGb8z5woZ17' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'RWwShvisaIqYBO8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 61 'RetrieveCountryListWithPolicies' test.out

#- 62 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'RX2G9MqpNWqiSdgw' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '9rqE02Dz7ege6QC0' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPolicies' test.out

#- 63 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'engsNMnXV5TqNuXD' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesPublic' test.out

#- 64 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'A7cOzU3MPEtIzCD1' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '5GV95NHYqTvIYnwH' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 65 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 65 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE