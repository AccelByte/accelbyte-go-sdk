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
    --userId 'yDdNwsskPwNQrZdb' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NDsyPGwCqczjQsCf", "policyId": "qaSAFkMPSLwZS0XC", "policyVersionId": "OZJzxuw6h8btADYf"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8ZWKoNBWMJMaOh4d", "policyId": "eREpepMsRsLpf5Zz", "policyVersionId": "t6e3Z6S6WZNFtX06"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aZ6y1BMr4qyywmaw", "policyId": "efHVz6uDrWL4y6HX", "policyVersionId": "ulkIBr6bwrbDkgFx"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'vy5Corw1bUXqd5DG' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '7u6JvU3usHTbfPQw' \
    --limit '2' \
    --offset '24' \
    --policyVersionId 'NFtQWhYz54Gjp7jE' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["3jbmFlPnx13am1es", "q8x3zwizM3fhy562", "6X829xHpocsO1BaC"], "affectedCountries": ["Hc2OrQjHfygEJj6l", "CbnWlErcDxdankGc", "28d5hhbO3rr8jOfG"], "basePolicyName": "KUfdIuv4bjnnQ2V1", "description": "iAzSapyKdVPKZMLi", "namespace": "BWX0rBYTbimBB19F", "tags": ["WSe2xDoIiSZdm6b9", "fbaAO6N0Nc7MoxZX", "zyiMVoKSjbhVoPec"], "typeId": "DO5KYluAtmJzQmke"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'BsqtD5hn7ZVQYDUf' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'PsaqKuAFk7FCS4sd' \
    --body '{"affectedClientIds": ["jvnonsOW68YJIbdY", "ThPLitz8PfMLbj6V", "g9KFo9Ene8vNt0Jm"], "affectedCountries": ["6rJDDcDXbLEdIGfl", "rm2s0b1Jy27hZY2R", "ztxMvTuZ1OtrC8FX"], "basePolicyName": "zM8zbUFnCueeiQ9s", "description": "Xm4Mr3dj3bcpQfuZ", "namespace": "pac9KMXMkOH7n3Yj", "tags": ["hC2ySF7j05QoHGy6", "dws8efTDCnQikf9O", "nhuk2mztXoqatNqK"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '5vW4Y16sv0N9PwDB' \
    --countryCode 'cXgrBplcvC5F6irC' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'W4XRooCYPOUkXYBv' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'yA7LsYDdTtiLTmJw' \
    --body '{"contentType": "bi4UosvoTh9Q25Zl", "description": "SSaP9YjCFlmtIcm2", "localeCode": "wBIhX92RTQDbKUFI"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'hV44AzUew3GJyPi2' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'H9MtZcYnqp6aUYgJ' \
    --body '{"attachmentChecksum": "ZORmpvrcnjXPkeUF", "attachmentLocation": "5WR4epZwYiFWcfDV", "attachmentVersionIdentifier": "s7Fhb0sz93p8cqF2", "contentType": "v4thcUARE0Gb4C9r", "description": "cJR7wLVrlwx1B0pp"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'gsD3xOQwbTJQofzV' \
    --body '{"contentMD5": "02hasG1hOLkt1Vnp", "contentType": "NbPFvKN88hc3mGeK"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '5WRvvGARNEwIWA0W' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["rGItVMVDnkBtofDi", "2JDaHfGs9JqwaxAh", "4cciQuEri1mtLtfu"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'tuCMHqNKi25OXzkz' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'btEhUUchhBwBqM2v' \
    --limit '53' \
    --offset '8' \
    --policyVersionId 'lwjeCUBfOSZrhBB4' \
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
    --body '{"affectedClientIds": ["ShF0j1EO0HYXFtI0", "u0HZAMSHzcu5uBHP", "HCL4M9PwMLMSVbdg"], "affectedCountries": ["t5ccGIdUh6XWQzEV", "7VC5hyhCSaEgXCSr", "krwKfFgXeiabGc2y"], "basePolicyName": "IEtjU0NOgcP2D9S8", "description": "9lLZhvyYw4XFtHgf", "tags": ["XEatqhJc0FAUMAd1", "auHACitYzs1Y7Vho", "0zEwFUx2yxoznSui"], "typeId": "dO4PCDJPBRQfccsU"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'v8qoIyyyYP1NcfSP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'FET1pAV1zMKQkQXM' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["nqEhnN0seTncaSbd", "YHGsgStP258gz82v", "1g2iVbXDC198HD80"], "affectedCountries": ["Jhouzza7TU6Avtct", "8sS0fs6ZrGAliV11", "NfSSXAggyO72YZtT"], "basePolicyName": "ZEp6vOyYBlOzKmfS", "description": "tn4bhkoPqc0EAoHu", "tags": ["CR5SLQ0ikdFDix3d", "1uqtOYADVqD1kVI6", "7ps8eFjoE0wM4FOT"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'VbxzsiTEfNBAcTgq' \
    --countryCode '0162EAIJx3vtQffi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '5EWxjbRaNdEP6taF' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Uum9OEFjwLOB8amT' \
    --body '{"contentType": "240UuRTNl6wJIbLr", "description": "SYJh4drxqiVXIBo7", "localeCode": "xKQdd3oGxa3pckea"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'NJO9ZEYZYm4DtTIJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'FPg8dAGv1vnSF145' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "wnkm9Q6HTeLHpmCX", "attachmentLocation": "k86hYS1Vn8YU1WVj", "attachmentVersionIdentifier": "kabFjLEe45FbTVn9", "contentType": "1j1rkYbWzynqEiVr", "description": "5Wk2ZNGKrgDJyDXj"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'F4kVh3hajsCv03DR' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "1gSQ61lQjUyjRPor", "contentType": "PxymfX3pViSButzV"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'fNbmtUSFbdgCJmZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'c1s0TnjPK62bPWYn' \
    --body '{"description": "QU8YRIEZAIaVQNIg", "displayVersion": "9sy3pUBMgniLpch2", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'b7vWPAYTo2653qnL' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'M5FqZzMuaCrkfKTA' \
    --body '{"description": "7vcQVzXjcsf7NawA", "isDefaultOpted": false, "isMandatory": false, "policyName": "bpCTUSBpEqSG8gvS", "readableId": "D482sC0w5v9aqb7t", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'SigcawT2cxGurwhI' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'NLsUvkwGOBYdKJv7' \
    --versionId 'OKmuppFvp9aXklXY' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'yeZ1rTMcEDIYBoMd' \
    --body '{"description": "eHuldiF0RNLLWxwO", "displayVersion": "m00qiXRo8jeMfPn1", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '14' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'OJEcQ6quEtCEKePk' \
    --publisherUserId 'PPyN3Z2BvWn2ieA7' \
    --clientId 'ilIYV0zutL3Tm48G' \
    --countryCode 'hqqvoH0yMIe6hJ8A' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sECfKuJAiTTLi3LD", "policyId": "NvVYw86YikPWEfsR", "policyVersionId": "WGsfWROqCzXWrpJg"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JQaw7AvtHA9E6E8V", "policyId": "e9zvgcmSQxoRrNhy", "policyVersionId": "DfRV1HhLL8hsQczu"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Oy059uJMRRSU95fs", "policyId": "l1gx7y0nAGM96riC", "policyVersionId": "bVOVs3mNjKxw10ki"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'r47HLiif98vflShC' \
    --publisherUserId 'TvLJjqbTSnhKtXDb' \
    --clientId '9H36fHmLpl6vQIDb' \
    --countryCode 'v8pYkjqpJotQVUPZ' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'kPbaYuk7A6x9L2ri' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'FBtThCYKHSJyZCN4' \
    --body '{"description": "CCyS1jfD40ilWETD", "displayVersion": "ucv45wus4mvbMuUk", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'ZmMJZ3jzBzMQxDFu' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'c7nEN8QK3LDn1nQW' \
    --body '{"description": "AQ1JvD3sPAL6tugW", "isDefaultOpted": false, "isMandatory": true, "policyName": "a3xkBFYGRd9QkTuT", "readableId": "vCWILCuwADJOJFHt", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'tqdA3sdeaf18qUgQ' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '3dnkchlHRk5ERM9E' \
    --versionId 'j17ksmsAVNZawt7v' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '1ZQuI4DwJ8fnJpS8' \
    --body '{"description": "tSB74xkYCkQ3FRvD", "displayVersion": "VME9sckBrXBes8zu", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '27' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'YIbQY0FlQt1GWpe4' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '7b9q2FRWqmEMXIdg' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4YXTVkQE32yWyb4b", "policyId": "sRpskId8cWcsfSpj", "policyVersionId": "18FXITfFtek94504"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XgQrepvZUczSdAlv", "policyId": "ykZ4fNVtTScc9dnR", "policyVersionId": "GdQIe6Hemw1wzBrM"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4JgHsEi7nKQj7gwx", "policyId": "66i6ATTS5lNoSee3", "policyVersionId": "09nYubb9b8DUl41X"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'dUoQzK0xe0Z0P6fV' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rPNsORcgn3gjiiqD", "policyId": "T35WwqJrGoPkxLSm", "policyVersionId": "WZLWZjRYMh7SKzz2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9UizhoDmj1BSozwp", "policyId": "n1P5z6mG0e4Zq4xF", "policyVersionId": "wtZ3W3RGCgL6JG8n"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wMmPynpeVRDtWsFZ", "policyId": "rF8jpj3kPlU057uw", "policyVersionId": "3rJ7UPhJ7OpbQHC0"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'lSWCUZrbxV6xebFJ' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "K1QhhIRP3BFWP6Da", "policyId": "os2uw4GIubkwM546", "policyVersionId": "Bc8iNBZtoMR6Ra3c"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gk2TmYMo6mxeXFao", "policyId": "s8BWuMwXD12Jhxq0", "policyVersionId": "K04nKLIvAf56ykoP"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0AdgvgFc6ZGncc3J", "policyId": "H4KaN2l3RU1JC4A1", "policyVersionId": "U8rXVp5o7U9cUYYw"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'U5KjjGIAZN3KXqES' \
    --countryCode '52hEZMF803MIT5CH' \
    --namespace $AB_NAMESPACE \
    --userId 'W2iSz3gkDmZtJvDo' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'JDOpPRAtLbhn2RO9' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'qZ9zuLeDAoBf5X9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'X0oLFi2nwQH5bU16' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'iaHQlycmEyncrOMa' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'p5hciyXTpGzDcKW9' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'j7hoHzqpzYReC5US' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '9ZsoVwyEUmcSo006' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE