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
    --userId 'NlL1QEjz8DrCwf1v' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qYc5rSMaWpTHCNR0", "policyId": "2FdEh8n97HWKhJrL", "policyVersionId": "E90cMeDAwsiIVox4"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sw09onzx1iC6D9xd", "policyId": "5CKC9pFBNmZbCYnf", "policyVersionId": "930HaUjWqD42Ipac"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pLE684LluhLixtB9", "policyId": "2k65cMANKHmGQblS", "policyVersionId": "YgGGTdOde20mgqdc"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId '9TQygKDQttIMZmni' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'B45o6cfsFkMh44Jd' \
    --limit '17' \
    --offset '67' \
    --policyVersionId 'gx2HfcD4mZxbBy7h' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["awXydctJmWK28EEc", "LGmPSUX8baWI4L9S", "cl5n1EmnhMl10ax2"], "affectedCountries": ["M9gWbOI2mHNXMkC5", "IaopjDWZ87Vp2Z0W", "KtMqQVh9HxORF8bx"], "basePolicyName": "7u6HJRzNEbyOdxRZ", "description": "tiNLeXCTHMcmm5uz", "namespace": "4oLDzPXbCL9eeWr7", "tags": ["fqHWZe478u08bGOm", "lxkJm6xMZro1Mbge", "I8UMH0wH9zBvFa47"], "typeId": "4aPIsrl7eHlGlXbi"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'YYVLjCgvpE4L3OXj' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'JFket6tdGISENfZD' \
    --body '{"affectedClientIds": ["6zJENHi4VuvzHCJZ", "eqSr1CFSQFMyGxUJ", "p0efR27ocB8lLgwc"], "affectedCountries": ["pppMhtY6z7YlL1XM", "gGFzFFdCdvOVpj0x", "BYbYOeSnm9lrbYdN"], "basePolicyName": "B6m45vXG6GwsRUnr", "description": "4WOMjzP4WXvCa5Pg", "namespace": "5cYHmUPkXW24YcUs", "tags": ["GLKTUs5mmhaVDRYC", "IFP5b2jiCSXVPNzL", "pZvzLfTWEL0zJZOt"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'BelOrS1YNbu3airm' \
    --countryCode 'Atu0gVcXxtJSkN5r' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'hwksVv485EwKcm1B' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'cVum6IIjA6KlLWzI' \
    --body '{"contentType": "VRCE3KyRvr557bWP", "description": "snpuI3vTpuM8ddEB", "localeCode": "utW4THE4JMB5fxRF"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'FzYzYMpcGFZAsvzr' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'evc4swXy7cnvdx8i' \
    --body '{"attachmentChecksum": "31Ume4JPkcEfQgdn", "attachmentLocation": "1ajr0DhZpsTS35FP", "attachmentVersionIdentifier": "IgT7gJsByf7ssYja", "contentType": "4OVkb6Ving9D0fJs", "description": "W1w8iDHUcyAvhE6T"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'TuDZdDM5dIUuv7CA' \
    --body '{"contentMD5": "DGdBpFnoATODhaJ6", "contentType": "GXoUs5i1Tuev0OF6"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'WwL7fpiOXnrJWboo' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["uQy7wSVF7WQiowF5", "30kU5LBlIX9tUla4", "Uz0j8slUpBkxhazI"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'MTR1c36PtxWrETo1' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'XXvFiJa3O7YBjr1R' \
    --limit '24' \
    --offset '19' \
    --policyVersionId 'a3Aa7ZtCriZdq2RP' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'wGUsKkHI3OmpydCf' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'ziNomDTU21YNnHmn' \
    --policyVersionId '3dgvoP3KIVMmpiJB' \
    --start 'CKAodMVScuR4orhO' \
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
    --body '{"affectedClientIds": ["QQFVYrpgmakXucfF", "HYY2yOaa36gQfpPR", "CPWt1exF30geZ05W"], "affectedCountries": ["lVj1lfflAhxFjPmk", "pA7coemlm4oTYdLr", "jqmcOpExpjarqwYX"], "basePolicyName": "pGrHEuG27zM18xxW", "description": "LkkiC7GNhZ9GpWla", "tags": ["2hgdZpz1h8JBtekV", "PcCkdJDIkhuI9gBW", "uIicLpqg4XIJ461I"], "typeId": "di45TiwJLMntHHgK"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'BhBiXuOSayA5JN7Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'NCnNGd6Lx7gKqgaW' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["ncItWWK2PRwqOblO", "OtmIxvJn0GrdWinQ", "05UAci8onNR7hbyg"], "affectedCountries": ["XdPyacKEMdkzaDDq", "mFRaq8CcOXb9pdYk", "pc1v1PGO5rPmGhbP"], "basePolicyName": "766S9SvgX0TYfVxl", "description": "Tm6LvkJA6O5fPP3a", "tags": ["q1Mp2DvxraPDD5gb", "ejhTDIKtQJBQ1sAZ", "KUjt6Rv1ugAyE4nm"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'r7Dbmig5m9mTjehx' \
    --countryCode 'Dzelte8TdJoluEPP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'D81QCXicM3r8ImS3' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'x5Z0MUwMtfa698jq' \
    --body '{"contentType": "RHZpbQVIampDWRie", "description": "Rt3zAanrd68jSVW3", "localeCode": "Rnenol2Bf4eCNKlU"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'BqzaBGoIo8PxDcLp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'USiKfKc8q6XFU8VZ' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "76kXLttscHysRubr", "attachmentLocation": "ZDBqPnrkL1yqgIn0", "attachmentVersionIdentifier": "7F30DEQ6nf29YZjR", "contentType": "ZQjLU1LMcblNipF0", "description": "cmLSj14PsPPP13iu"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '3OlEZmSHRnEEMY3i' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "DU4B097I9vkhF4FU", "contentType": "i15ft5DF0fRKQ5OX"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'FYw7lXwcQ93QkzDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'aLInpKDob2MpiVKJ' \
    --body '{"description": "TeilUt3H7rpXfpuv", "displayVersion": "kzl1W41E2PQHQJ6C", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ORWLUJXAhLVScQNP' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'jxrNft1MRf74q2Pu' \
    --body '{"description": "WFoDl4qIKZKpvegG", "isDefaultOpted": true, "isMandatory": true, "policyName": "Wm2BfkBaZ4qficRT", "readableId": "x0446aQEV7vQfRxE", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'LJU8WTWh0JNWrPKs' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '8acKbFxU8ePxKAFw' \
    --versionId 'fVA8dOYzGdSPmT5q' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'OhMOfaymrh2TOr0p' \
    --body '{"description": "d143H09WTjY8ly6d", "displayVersion": "GokiSh5YCHrL3V7D", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '28' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '5fXJDslD329dlTZr' \
    --publisherUserId 'iRawpwEjMZ0Of25i' \
    --clientId 'YpGnpTtOvJmI8skt' \
    --countryCode 'YmxvJyiZOsSPuwF2' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cZiODgwvPbt4tnzw", "policyId": "ZiycFRJcfMNKkI6e", "policyVersionId": "eGwRLWJSMXnNxtFO"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fMTiv4TogtA8nIx0", "policyId": "RXDy4tWhGB5TZfwI", "policyVersionId": "u9Ey4G5zNQHnr0Na"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Q3Tky1y95Xr8fCUG", "policyId": "JXvPVxqLTj5INei1", "policyVersionId": "fXt3AL2vfQrlJsOU"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 't3XWZtCJZXHCpGUY' \
    --publisherUserId 'Kx7W3oD4DwtjWL0D' \
    --clientId 'dvdfh4c1khDztWYT' \
    --countryCode 'kR9Hk8kHWXYwxDY2' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'aUtrY8Cqf9xgMLfS' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Em40GykK0yJzFKXm' \
    --body '{"description": "7cCAFjuKTKxDcgaR", "displayVersion": "74S5WLYAj6pQzFgy", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'QnqAaWOCYPRbOJVT' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'p4jEWjfU8YALOnn4' \
    --body '{"description": "CR9Q2A948wEwjCao", "isDefaultOpted": false, "isMandatory": false, "policyName": "pNdL2ndSIhrqesBm", "readableId": "CqRs2aZzMDuugGO8", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'PrYdQKwcGaQd0S2e' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'gauLJgKOuihjUNdO' \
    --versionId '4Huor51FDTGV60yW' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'nv1WfKxMvpm7CACQ' \
    --body '{"description": "rGRThSHDuHMZ0soF", "displayVersion": "4WNx0W79Vz14yYnv", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '89' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'EPRdspRuyDRDrKaG' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'DETEKHnlW64e8sGF' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pRxEBOZelqpf39cW", "policyId": "epYPO4X5wgrp6ZUt", "policyVersionId": "KApnolt2SRJRWOF7"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4PZD8AzS6DWp4pNs", "policyId": "pqW9kWTEerfJKaBm", "policyVersionId": "rhKyQLu07VTuB9vL"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6dID0MkD6QxOYMPn", "policyId": "e8nIpTdvTgnuNwBX", "policyVersionId": "6WRZt0dr57hfj0uU"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'Q6IxBPMnHHF3ADOS' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LUhaouxkTHAlkXVM", "policyId": "eOYtLr5ALXl9RihB", "policyVersionId": "eDDmaxdZZBd6RoS1"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "k8NJhpb9beFYVRBa", "policyId": "otuNslrQmf6YDNnJ", "policyVersionId": "02HGUP9D0f9yCyKn"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qWZCga5EYPcAubGS", "policyId": "fZZ4XG9hvx1hFnRy", "policyVersionId": "RLjW69EybF2yckvf"}]' \
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
    --clientId '0Tj71DrlkgYQKPrp' \
    --countryCode 'CoHBOyMQaJAZH4fa' \
    --namespace $AB_NAMESPACE \
    --userId 'GLavrvouPawF5Wqg' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'rQO4Sqt2Ji4jsMUd' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'D884GBo8TPC1YpRU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'eaLERQ574sPZanIW' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '2yITdRKErZ8TMjpg' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '56dvyehutX9bar9s' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'EFiysPjJIpeKVwRc' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'lWxO0GhshZxx1Cwf' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE