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
    --userId 'gzxpO7W2dXhaBQK1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TgOliJFKNKEgtbYM", "policyId": "VlDvBmbDSijz9EHY", "policyVersionId": "QAweNX9mQlQvlRRa"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hUMCrFZJAQ5BZ7IP", "policyId": "kLW4Wl982uWnIIKW", "policyVersionId": "xm6g26iParputnJB"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "AYVczFCnocx4AFll", "policyId": "yRiDxYmE5dqmhpzU", "policyVersionId": "Ob6r6ZTHpyr17Z0M"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'wAi721UUfQoXPGT1' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'EcRy6fpEEPXZ6zty' \
    --limit '17' \
    --offset '70' \
    --policyVersionId 'kdE5JbtW0dzr0nxV' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["0BXG3TaoNGXdNB2U", "YbBQIfkq0iiQf2xR", "DMt3o2ffpKAmG0gu"], "affectedCountries": ["OuNudiVT9DhYU6YP", "mOgds7SxssjvcFga", "6leE8mUILyFy7QB6"], "basePolicyName": "s91Zjlq5MtoC2bGJ", "description": "sNzRGKyeYaLHRoN3", "isHidden": false, "namespace": "mTlsZaiBlsAeUCWb", "tags": ["3P47rpSRILvwQP0J", "4sQ1dPO43ixl2I4P", "TqD3KHDfUBHw49VF"], "typeId": "rKwpsvnn9QUX82cV"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '5lCCsydH0weeUfOp' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'cxBljXH6cyrSFiYW' \
    --body '{"affectedClientIds": ["fWDfR7pMuoeb3ZLv", "tYOVgC2zCygfWt0o", "7MMqKCbD7CvjVfDh"], "affectedCountries": ["eOIpap2doLZ6fYRx", "IsziwAPusqNQghwu", "GSSocfcZlGzUxyfp"], "basePolicyName": "jSiVRvcILjwctyaK", "description": "BBISn4CFjq24eAl2", "isHidden": true, "namespace": "IOLfjneSu8l9a40D", "tags": ["mY4nuZguvLqPvkzu", "wWgETOSE6HODkdtH", "YvbzUL6ko4EgHME8"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '687AavczZd7dMyWl' \
    --countryCode '4EmU6IlaBaBsvPPb' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'sh7kVFAPWTHLUhmZ' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'cvC9yBEDjBuOyXel' \
    --body '{"contentType": "GDXooVcVj48uGVMg", "description": "oz3Ulainus7s0lYh", "localeCode": "wuMrQtx11jGFatma"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'sCb87PjZnj1i013v' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'JvgeukL3srUfpDQj' \
    --body '{"attachmentChecksum": "zabHMJCOUWPB2EDg", "attachmentLocation": "HYPOOw0jNBgRwH4s", "attachmentVersionIdentifier": "YdXH226N0KVMovKc", "contentType": "46oKemvAYh4oE4R4", "description": "COXJDaWOFVOWdG3l"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'XdghOtv2FPvBopno' \
    --body '{"contentMD5": "2iA4NJ6sZmKRKtwn", "contentType": "fgnOCPkG24u8JmVG"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '5qRobrqtG4gSdnXx' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["2WOHpB6RgAwZlKlj", "GgrkXoChOcJ9rUr9", "5k0xiebF4HvlnV3Q"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '0bVD3Lfol2xj5239' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'ZwZKMeMsXlGnnvFP' \
    --limit '7' \
    --offset '12' \
    --policyVersionId 'Qd3VgdnbeVMgcpzi' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'e6xtsoaFRyLxh6im' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'apgQhaZwwqaNGFus' \
    --policyVersionId 'vd2ldUI0YciPbiJm' \
    --start 'LLDYGG9AYr0Z5rCZ' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["KCg4Zm3fgtO3W1z7", "vwUvbrnrmQOXn96o", "7axL9jvkyOBDYPMI"], "affectedCountries": ["45VTX3d3sxIfV8Fv", "GeIDRDwTuzx2Bhqe", "nOz2LbZItXL90sTS"], "basePolicyName": "cNefysMmazCac2bc", "description": "lYkqa4Se16wHItq3", "isHidden": true, "tags": ["5NRlc3rwHR3tknup", "lvohZ7kEd055l5gF", "D0MBPHtVnUnubw2y"], "typeId": "UhU3KwbggqBlLf1t"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'kLBDUtmhS0SloPsk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'bBcHiM57u9AGF9Ok' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["6QvP1gWLvtoISN5S", "uBC42Jkh1sBUBnnG", "GH1ptbRL4EZKuFvB"], "affectedCountries": ["GzRDc4SNK4bpVEGt", "Z8QpgWmFiJ9wRBbb", "1aWxWgi07pXl2RP8"], "basePolicyName": "ABPs6Bs1R36zObY2", "description": "zs0ievUVIDFbCca7", "isHidden": true, "tags": ["7M0Jae7xdu1Qomu7", "WBgzYq7zP1JxOYQm", "gMNbvoMMrRrD4dbI"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'QIecOFuEi6eVD7Nl' \
    --countryCode 'X3GLl53F7Dbl79ko' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'uOZXf9lvKmVYFvmW' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zTsE6DqGvKwNMszI' \
    --body '{"contentType": "xShW33jeUlrExZfg", "description": "0QBYKY2rO7RgcEp6", "localeCode": "9ZlCdsFB5eK1Gavw"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'gX0zAO0nMg5pzaxF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'veJ3RGMvMkKZi8FV' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "2D8ix50HX9bVoc7F", "attachmentLocation": "cCRWk6beRro9w05O", "attachmentVersionIdentifier": "xkVJYfLVIuQeWwTM", "contentType": "s3McMOOLmwhMC71K", "description": "rXqm7hVq50TN5swf"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'eSitRlCHqaJGdOIu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "5lEtmYcO1wTueikC", "contentType": "mh7eI6DdGcESTx8Y"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'CPWLjUNV7ShQgDmZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '0E1BPOTnZymzN3se' \
    --body '{"description": "ubzGH2eZP4Wq7o92", "displayVersion": "49d31xXTWOj1rlqj", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'eHuJQcomUJ6ytvkO' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'F0MmiLoquyfA9OJg' \
    --body '{"description": "yYYc7EjMWUE0WeIQ", "isDefaultOpted": false, "isMandatory": true, "policyName": "4Tnb3G8jhClmmbpr", "readableId": "m16A7IMHiw4zLuLh", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'yFcqrRIkT1uDNXb2' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'uU1wHrdAQl2krnba' \
    --versionId '54wU0ToYRBZC5zyZ' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'uHOlTNEwaGJVUybN' \
    --body '{"description": "xZ6lVkx1TCjcQUhW", "displayVersion": "QseLlLiNxiFwc4xP", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '62' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'OIrMbIDQrZOSXXyf' \
    --publisherUserId 'bQz6b99hFbvzynWi' \
    --clientId '7WOExVfP2r42mv9l' \
    --countryCode '0ZaaP0dLba8rnizV' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "X0RPa6P8obkTCSy7", "policyId": "pZA7O3gJ0XDf6dZg", "policyVersionId": "40ceRO5WvxNWSOzx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zUdoeORWHACCtx1A", "policyId": "DhTpysSwumBt4RSz", "policyVersionId": "t2SXdAIxAMkOl5sW"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HMgAZWaRaVsUXPCf", "policyId": "UbrNqhrxn9zmFG9x", "policyVersionId": "pgxdD7kVH2JUMj6l"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'VBCNG52GdXoVQmOB' \
    --publisherUserId 'kAXDv79DtOKoB6mr' \
    --clientId 'kN66SwlHSKenxDBm' \
    --countryCode 'VnqUF9GIlHoXLeki' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'DDyATnQbAQenh1dQ' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'utmLizgaVUr0EImC' \
    --body '{"description": "Nuws0oT5yeKyMiV8", "displayVersion": "zNCBVf8NJ7Do6gMN", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'uwr8ZSUEWiiYnC7D' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'Xi0JQjw9DfqfCaFX' \
    --body '{"description": "U88lBDfArdqOrHTn", "isDefaultOpted": false, "isMandatory": true, "policyName": "s6UWRdGaoY4C7um8", "readableId": "d78EANm5vfZt6PYN", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'mfAbmOkYG4OBRQpD' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '0wZ2328z7TnRbySt' \
    --versionId '1giEswmzdDhDC8uX' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'pJI3TTayDKtr1Um3' \
    --body '{"description": "1hnxh6cBhTtTZDSg", "displayVersion": "fo2JXcb1VB8wSkm0", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '90' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '2fZdqAvmA5tS9MZc' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'meXzRKhM07UWMayf' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zaB37EGQkTsyyBXV", "policyId": "SQqdtd1ibMCYaF3n", "policyVersionId": "yUbwBMMplqMZsRg1"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZLt7yfJB2OtIuP56", "policyId": "b16grH1YF1hvIV8J", "policyVersionId": "otGy0lx6ewcH8zjc"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fmSGWX25BBI7URgk", "policyId": "m5sJ0bFM1QGkJ0z0", "policyVersionId": "LZRIy3pVAoLhGIYL"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'HzyoMUv96W1UdzeW' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rjXKdQIS3HRm4SXS", "policyId": "ss1ABZnq0ZJcbo4a", "policyVersionId": "26NdSV9mvq2D5sz5"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TxKo0lK4kfkOEH6x", "policyId": "NiDEgkUw0ETCGlae", "policyVersionId": "OoTU3X0g4CrqhC52"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zksD4TzDiWcNOPP9", "policyId": "Fh7BFexxZbNQFwU4", "policyVersionId": "Ez5GVSXNQdLDh8Rd"}]' \
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
    --clientId 'w7G7GtIFaq7UqC9y' \
    --countryCode 'AYezUJslpYlOocv7' \
    --namespace $AB_NAMESPACE \
    --userId 'iBLjFkVCFlls2XtH' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '85pbytcOdfvlr7VY' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'pLnS2ZQ0Gkmligr2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode '2fB1chzevvOr5kkC' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'TgVKfogtxY2mjKCP' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'x02L9lBBN8OTTobu' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'PW4PoGCRltAL196W' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'pUgcLo9yKCSjmEfj' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE