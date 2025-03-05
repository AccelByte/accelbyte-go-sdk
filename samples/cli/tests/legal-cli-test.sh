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
    --userId 'LaeUOocAZsrdsPpW' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "28mhbM9qmW9rPz4i", "policyId": "MTPpkGc9pTLsYg9U", "policyVersionId": "S8xbenWAsdYbvJEA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bvf2yBPyLjTfD3cZ", "policyId": "Hv10ioputwqEXMTW", "policyVersionId": "uy91K6JPASsjGWNd"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lFup8gWQhkEFekut", "policyId": "TOBSjaYPRGwyJHPS", "policyVersionId": "zFE82Vvf67SaXPBf"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'vi9uEnRRHPaHsBx1' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'y9pRwiIpQ64LXKob' \
    --limit '23' \
    --offset '11' \
    --policyVersionId '92vpcY5SLcsDFBs5' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["dlGx3zVnDG1fMacU", "XrBQVyQlIzkaFsn7", "wxpyVlXNzSLlEvLf"], "affectedCountries": ["bC6Cv20AfOxzkiRN", "vRL2I7JtRHNXYxWb", "HVEAVot2pPizro4b"], "basePolicyName": "YXACJVJeOk2tntNd", "countryGroupName": "0omo3UZQ4exjcXWR", "countryType": "COUNTRY_GROUP", "description": "XUt4u51kDz0yed4W", "isHidden": false, "isHiddenPublic": true, "namespace": "cgci1izNlRexAj2H", "tags": ["PiWN9J7mwBJMPGPI", "jfucQH21Ryy9X2FW", "RuqyFwqeOsO0InQt"], "typeId": "9tUwSuiacOBmkK8t"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'm9cnY4ygVhFjN8nS' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '6hl2AAP6hR2Wh5xZ' \
    --body '{"affectedClientIds": ["VxvjBfiK3rJmxyOI", "8ualaEzTz76377Fc", "R3xaKItqGMlPGa4p"], "affectedCountries": ["PDlz69rSyN1J2gZp", "K695ReNpOWHeTyKx", "6bBwSh1gnedLX6Mf"], "basePolicyName": "4yp8i74l9ge9GAwY", "countryGroupName": "51uI1nWB1rQBOz50", "countryType": "COUNTRY_GROUP", "description": "7g6ovnV2a3AyLoD4", "isHidden": true, "isHiddenPublic": false, "namespace": "hvkGOO1SY6eQodME", "tags": ["WgGkuUycSKwbbHyy", "vzkJNKbc1E2ZlQiy", "1Jz3162WyzwcIVM0"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ZpWfz1wa4AfQYVub' \
    --countryCode 'EdqXxkCkIXF4LW3d' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'B7TrVEd5JZeS6maD' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'UflNqBmSMvelvR5Q' \
    --body '{"contentType": "NjrcmFbcsb3qk60t", "description": "6Is7Pu3cVbXRH1JD", "localeCode": "T2kC2KFrsePj3yVp"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '7A2YALvLbR7UlUaQ' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '77emFwEO53ghVoyi' \
    --body '{"attachmentChecksum": "KCPtndSAMHoKV1E8", "attachmentLocation": "oc8Kte73PZa0zzRn", "attachmentVersionIdentifier": "ePeQvyAG8we5lxih", "contentType": "VoNezj0by2rzuGrt", "description": "BGpMwnE86rI9gMIg"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'x9Hr8J5Tyyed3LFT' \
    --body '{"contentMD5": "RhHHAvENtx4sJmrE", "contentType": "WWgH69IcdkhZyA7V"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'qKCI1zsPYtUY1MaR' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["KyHwmxYGrl8LogiL", "N9yDdvrxYasyA7UK", "Y3uScdthhcj7O1Th"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ce4f1vcCoGpBYPBQ' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'yfCI0MEpJ1jWJ8RV' \
    --limit '93' \
    --offset '53' \
    --policyVersionId 'eLrjeh14rqv2FeRn' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'UHO51WDQCHx4N2Nv' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'IVXdGEX7bdkZYwRn' \
    --policyVersionId '1LdcqbRi6dEBVgMr' \
    --start 'BMGu0kuje0Foxznf' \
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
    --body '{"affectedClientIds": ["zunJhok4psSxEwQA", "nxuyGlRvPR6ohkVm", "9rGD80Y0KRSekQDq"], "affectedCountries": ["YFhli1rvpCAa8pAB", "U6QLIvDu1uCBkcDz", "4kVpy2fB8d4KcgRw"], "basePolicyName": "2bAZxTNhFoBRHbu5", "countryGroupName": "k0NStKQh7CA98TSG", "countryType": "COUNTRY", "description": "XmG2uvgrLMzIiU4J", "isHidden": true, "isHiddenPublic": true, "tags": ["fxYuvufQNTqE75Yt", "WZUZlKTuOYoiyeJO", "iyBjcRB8CKBfmsWo"], "typeId": "2XEjq0qLqHj8wglx"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'xO73lTHAwaCGXdiR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'GEGWAM7BruI8kG3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'p3PX4ikYVaXNHmli' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["F0s4R7sVjiuVQrQJ", "z8XmhquEDpU38AUL", "5SY1rPK1NroHvvGk"], "affectedCountries": ["epdJld6WZay1Fz4A", "bpcd3Loemr4sS0VD", "6NVidkvDgQi6277Z"], "basePolicyName": "EiyShpAT4meY5UvW", "countryGroupName": "K22gEJlay4682oXO", "countryType": "COUNTRY", "description": "FD08KQP7dK1ov8BR", "isHidden": true, "isHiddenPublic": false, "tags": ["QdEvxVWoLCuoICQE", "iKoNxJBPFoXmwOxt", "DPCoF7VwG6DeKZmO"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'ATRHfXKwyGptrogc' \
    --countryCode 'vyzZK8U1rnBnUzFN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'NwBcIVOSmixPqR1O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'HYApfBU39Tmnc6Ky' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["jvIlObXYCW1mQQ0H", "f3K9Ukn6Y6FQH7mv", "ymMGfedzaZcLpzQn"], "countryCode": "tkteF2AsQHhd54DT", "countryGroupName": "NglPJrkVnIfVMWJq", "countryType": "COUNTRY", "description": "aL03GcMBsMnzSaa6", "isDefaultSelection": true, "isMandatory": false, "policyName": "yu8Ky8DzyUm1xyWJ", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'prNDIvpv0yhQzQqU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'u1YQaD9SJ9u68d94' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '2d4ljwfiwPtC5qd3' \
    --body '{"contentType": "4TKpJwFqOjrrhyT8", "description": "AqcEJ3F9kymKcHzk", "localeCode": "b8yeLRM9UOToYhbR"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'FYHXzmoy5eeoqiLV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '11LlXyiZH2PrBZlo' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "AgCKIbS4zjKA5vF6", "attachmentLocation": "5PRWG6eSOWMbwIx0", "attachmentVersionIdentifier": "sv33O223d4MIInFR", "contentType": "vcKVx4qxq2KtNgu2", "description": "hBXvQFzqR10dqRO3"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '9t9VtuI99x0jwn1x' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "lTpu69rvLT0l7gqH", "contentType": "HJTfTe9uM3JpYfZn"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'JabWvrNvrMYzvw07' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'wjfGiMmpSTgIZDbW' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'muM7votoKFO3cx8n' \
    --body '{"description": "TFh8CcqSQPG8qZH4", "displayVersion": "rZaqWw679jkYsqxx", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'P1UV3cHIoP6WiPV0' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'f8DK6d6vZkM5KEGe' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'Ft3t5EvWHXNl6xZK' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'n4kF8W6cqIoQD4Ov' \
    --body '{"countries": ["Hut2oCqHm0Fseq9H", "5M9gLYGvG7RPZAxP", "BoJRjNen05C3nmoG"], "countryGroupName": "yoxveMzj8nPQ4saI", "description": "RqDG80dm9O1qv9tN", "isDefaultOpted": true, "isMandatory": false, "policyName": "Quhlk2ncfqKGiFy2", "readableId": "8CBY8Si4r8qEMw12", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'Mit8EyEdXh9Yqnk7' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '6FfcYLvbz21PjWm3' \
    --versionId 'sTi8Bjb41NfQrOSL' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '6jn4LWmtM8VS2cHj' \
    --body '{"description": "yRBOYFabsmtsn1ji", "displayVersion": "oK149T052Cf9nuhd", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '28' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'ot7Pg22Lq3JM73L4' \
    --publisherUserId '4etDRb4epES5Qun8' \
    --clientId 'QgcjCcTcxAxf5EFG' \
    --countryCode '2BzDYX1KmMqOkqP0' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "v2FOTJXNwMu13hST", "policyId": "4inODAzQFLMaacfQ", "policyVersionId": "aeSm9KcBNg0n2bYJ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fUZDIG256UTMneAm", "policyId": "jkQNADzTL0QOSUX8", "policyVersionId": "7jBoLLhO9AX2YIXU"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7ypsv9eGNOXvPnHb", "policyId": "1c4IWgE1pB8JYKy5", "policyVersionId": "QyON5FsXzs2noUQc"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'iy17XiJGh8V7aKYP' \
    --publisherUserId 'KWz7ivZuHEFtcmUv' \
    --clientId 'SU2mo4BLKRFcerxZ' \
    --countryCode 'mNYO0DhaVvsVSuC1' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'E7I8hwSgwailk7Mw' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'utJr3qwrI1HD6Zm5' \
    --body '{"description": "kAADtFvS4Lk3VBEb", "displayVersion": "hsOjkXsASQOczJLj", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'UOVsD0aONDI6Miw0' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'nLlWSmmjs07lVMlL' \
    --body '{"countries": ["nAw4BkSNQ9CaDgoq", "hahfTnRkW0xq1IdK", "Enf20Mvj2aBNKS0v"], "countryGroupName": "7bPW9lTf2KpQaS54", "description": "8sLXgqGwKCpzUh57", "isDefaultOpted": true, "isMandatory": false, "policyName": "Qb1ELPpVRbsDPKcG", "readableId": "2SJZ72ekKAVfHR2v", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'eGA2oB1zn3awerOS' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'j0XLdf3lUGFL0lAT' \
    --versionId 'bbhVr2ThxuNEydsY' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'OehhRKnEq2nUU471' \
    --body '{"description": "LWKSjqk3M51MVbWp", "displayVersion": "muwoaoITGbpxNSoj", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '22' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'SHfiv2vqCHmyPLuP' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'u1YoUbYEPLf4gfFe' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lDeH6tZ6wlvzahB0", "policyId": "yuykr2AbIOXwqSQd", "policyVersionId": "ZZIBgi6J2K4smPg8"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Je4YFYl7OJpnmtKa", "policyId": "qs0dkUTjuKd807Xs", "policyVersionId": "Jo71w5g80NdOLhNw"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dQzbw99hUe5SI5w7", "policyId": "P6iZEUpJQBHAE4o3", "policyVersionId": "XsyFxB3iD4uabgOH"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 's3IpfEDyxlZlRiOk' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FbaESquezUohhRNC", "policyId": "h1KipHPfpWFdquO1", "policyVersionId": "z05OoK8YbBN13EPZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QoiR06nVrIv6VW0W", "policyId": "wkss7fac9OZkgG6c", "policyVersionId": "G44q5eEjRZMvVQ2B"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3btYtZm2e57nlPD0", "policyId": "xZ1szBVIpLUKEwkb", "policyVersionId": "9rD1msfQNo4Lzrtj"}]' \
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
    --clientId 'L7VLgrLACVbFsE3G' \
    --countryCode 'Q41zt0Xzr5K5dr4X' \
    --namespace $AB_NAMESPACE \
    --userId 'GvOwOyHRS0F2gH1D' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'FLkGTyWKR6A0ah29' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'oYXH4I1OImuUKTDL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode '6eXiA2nvbvrPpbQ6' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'otmay6XPtH0ddL92' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'rH4olhxjAy1e8w9d' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'v4qA3wxo3lzVpeGX' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'VuJzV1Wf9TpnGOWB' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'BAXjXkTtTNUB9fYl' \
    --namespace $AB_NAMESPACE \
    --clientId 'Mv75Tyow9uFKBL4W' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE