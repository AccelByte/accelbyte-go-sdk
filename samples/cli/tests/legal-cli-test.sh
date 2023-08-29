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
    --userId 'CKme5plISw19Pb21' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "URnyExgxHTNh81Pt", "policyId": "FUtAzdjiW2uxFgnW", "policyVersionId": "M1EzZqxhZAP4TE2f"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uWaCwFU7lCBAjMKJ", "policyId": "jYjp4Tk2DDlXM2lz", "policyVersionId": "oGxYu23vJp7PNFEW"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GOlsmk1VnJIVvxvv", "policyId": "lvR7JNXyZqUIWksx", "policyVersionId": "HPD3dTZMOYp4z4QO"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'zGjL2ld0hym37hso' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'UAjJQUNkaegOsUmA' \
    --limit '73' \
    --offset '50' \
    --policyVersionId '65ZcAHvXSxbNG6OG' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["MXEfayTQcANIF5fJ", "n4aEUxdGN3Mc6DxX", "YEHNgGlPBvB4goNU"], "affectedCountries": ["KGUh0Qg4DzOjxBqx", "6z39PbGTmigSaNSU", "q4glW5b0uCAkcThQ"], "basePolicyName": "wWbO6foEiTwkiHy2", "description": "P6gYT3AKDeHP8wZb", "namespace": "fudbtG34uee3fB3V", "tags": ["X0ImzDnMUEpbuhwv", "4hnEFzOTtP4xEr0A", "DID6kGTLMKZam161"], "typeId": "0V27gRWeqo7nZcw6"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'CevPvuC78jJyvunM' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'sNSO7UI9kP5fjehs' \
    --body '{"affectedClientIds": ["RfxtbqkEOpwiCzGA", "zNTLS4NFcUCKoQDe", "gYkyWm6thdEu1Arn"], "affectedCountries": ["WSUDwV4eLKaqmPBF", "7QC6MvelPvQElMtm", "lVewbmVAEFgqvbgE"], "basePolicyName": "r4qvaMJvVBipxOHE", "description": "fCWoyaDCLBHlZqUB", "namespace": "i6w5l5zpAo3HRYdc", "tags": ["276gD3BaUW9rbHWD", "BuQgfobsWLXMVqdb", "pQ5ipZkhZNuBNKNm"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'TYgzo59BYqhpJsRN' \
    --countryCode 'ImPgpqUaGfMtLfNE' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '622W4lQOWnv8oMMK' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'pZnWYZW5ydYQ2CDC' \
    --body '{"contentType": "GjBiorWEUUYwvjoq", "description": "I7a7lcnW1aFNnSSZ", "localeCode": "4sqOFco3HVa6pOsg"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'fO7yDkrRdeecTAE4' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'lAPgQwpNiKhL76MO' \
    --body '{"attachmentChecksum": "ULbQen8IpvdnHh2H", "attachmentLocation": "Q2S9Aot4mJKfTdEW", "attachmentVersionIdentifier": "As4M5I5VUzEPTn27", "contentType": "CJgs5lZFwjfhqWrR", "description": "eWy8RbPBQdLJ5CkC"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'xY44Vj6ob18oeobF' \
    --body '{"contentMD5": "Kj5c3qpFdQ00WRPV", "contentType": "Dh0lqC0o75gKyTUN"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'Cizj0GNA0bZ0zu3V' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["7jaUwf4AhKJWvDoC", "Zy4Vm0UQFNm3i8d7", "hb45oynt1e4C7RBn"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'Imesws7TdTGsWH9d' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'Gvba4PxDG1BApx0l' \
    --limit '25' \
    --offset '66' \
    --policyVersionId 'MhZEnG2r6ZZutaWo' \
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
    --body '{"affectedClientIds": ["O7xGogBhcCsgViXH", "lUEtktOiKiBpOpWG", "nLeKGe0Fdk7L0HMW"], "affectedCountries": ["fONQMjArNWInVygL", "Q7GQjh55WHYGbpHX", "bHpIFg56myfN6wkO"], "basePolicyName": "iRteIJ7pyLkB3WkY", "description": "cVDWh2o3DV9UnAMd", "tags": ["4sGVcrCVcjJbYErk", "12u5xZOq8GvhN9bL", "YCWU6I88i6KWb6UP"], "typeId": "00HmLSNbjd7iE7oT"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'IZGJjXL2DLNzDsuY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'wJzmk7KgBlxo5tjD' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["DsFQwhNh7Yl7BKmF", "ZDaTZVLbNnlpFGqG", "0bucdK05BFxjmXSs"], "affectedCountries": ["fiDgA7k2Q86AGocg", "BQbssd45igAtC6xX", "pmMayl9ZbUoM4Vk3"], "basePolicyName": "Ti3C9RHooUcXC9dn", "description": "MkIhU0FzeSPobcwO", "tags": ["rFveUseUUCJHDoLh", "amuV7lzbo8mR7NKA", "wYotwtVDnHSG7NdK"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'AWgBFbaWRhhQQYEd' \
    --countryCode 'SEBuLMQYtTHzUuLZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'yOHVobmey7Uy5Xjf' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'YJ11bDE6Smwdwxhq' \
    --body '{"contentType": "ZAcJYgucFKKNwm3V", "description": "b3nlUmXqv9oHmoVu", "localeCode": "RR01RXGp03sCcG1T"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'XZJHNQBlSD8rlWg4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'yivW3wuc9ijVpD3b' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "rgcpIs2CKL1f9D7p", "attachmentLocation": "XKmQEMJ5JX1ytKjG", "attachmentVersionIdentifier": "Tub1EEYjEx3eG18M", "contentType": "mDaZr78NdlTJzyqu", "description": "GbLSvBAIV496VCt0"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'XiKX3PXcirDR4gOj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "dWLoHYm1XHisrwNL", "contentType": "1046yPJrW77tWi63"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'LATeyfQePZl9OAO3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Cr8nXzmUr8guzzfY' \
    --body '{"description": "AfSliRxSsHNCO4wf", "displayVersion": "gl1kqKpQbePXtwtk", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '5YSMmvQkkcaHPNW7' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'hr4VrpXghfDspcAS' \
    --body '{"description": "Ulfezwb6BVe5dCzd", "isDefaultOpted": true, "isMandatory": true, "policyName": "2HPQpGrb1DNujG5H", "readableId": "mYhNTr56vZOkFlES", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'YkdhoLx8w3S8h7Fe' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'qqFuyXglwqpCqdna' \
    --versionId 'OhRtgGyfAAfIGyYP' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'R2UjqcH3ZzS1PKNX' \
    --body '{"description": "MDsszGYbyzAS3vqU", "displayVersion": "iTTNmdAtAHOLpGqY", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '20' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'jzfnsTMG1KASBp5k' \
    --publisherUserId 'obc40vp15paw3Wni' \
    --clientId 'oSh1OffwlDl4ACm0' \
    --countryCode 'RTImoNlHXFrEyJe3' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tnnJZdBI7KxpSQkC", "policyId": "hSWt2YEkDFpgGfgM", "policyVersionId": "JSTmkUcQlF4pAqKK"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LJYAHfxCJ8yJs6TF", "policyId": "sks6mW5zH5WeuTRH", "policyVersionId": "2Hnb8oipX6QsbnBY"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pBU1je72dSl4hZEK", "policyId": "wdLhEoTUa4gPzGxh", "policyVersionId": "XQN2BvodC5F6ccz6"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'V1Z3xfn6xVFLf8HS' \
    --publisherUserId 'iUK8bP7737NrTXGr' \
    --clientId 'KZZUbYRJZdVSyWCz' \
    --countryCode 'ZkmiHuGsmOscXXPi' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'fmrl2B35Ts8tlncR' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'JC13w8eLJ63cx3gV' \
    --body '{"description": "aAIj8yRbHah4Qobs", "displayVersion": "8L9aoYsSZCFzPH4K", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'hb97oypCtbCr8d8r' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'aD2qd6McRTeH5CX8' \
    --body '{"description": "ZIYJ26FWgII6tyxq", "isDefaultOpted": true, "isMandatory": false, "policyName": "VBZ3jzHxDnZgDlGe", "readableId": "bO0Z9CocYBLfcDay", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'uOTFf51x4NDJ0UHF' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'HGZ6kZ6LEjbbfb4V' \
    --versionId 'EBIuhwfD8xf8gpJm' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'G34qhtLQPIzgQHeX' \
    --body '{"description": "1G4CBb8icgKy80jC", "displayVersion": "9Hb6Z4nqYBvPZa1V", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '68' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'RUoOfi1nxFEpSuGa' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '7YRwpYdTph11vWp0' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "23zQjeJI34V5yoIG", "policyId": "LdQ0Ic6fCQqmkXDc", "policyVersionId": "H7Yby3won7D6RQug"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cBSw4nkRQgJ7Frnj", "policyId": "VYYhAGiPipUzwAN4", "policyVersionId": "rzhaGuslEPUMS5WN"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "my8osRtJ3Y0qvCrd", "policyId": "IQ7y313bGmlLkfQ8", "policyVersionId": "3ijZDacdOaHNnvAi"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '6lhGp3WdmlbuKUWL' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kn7gtsPLO9oLMJg5", "policyId": "QeklKo6jPLEaBzaa", "policyVersionId": "xPbekoqL4VGZAUTW"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9s9Pg5WlD0Osd7hc", "policyId": "wqobDPqufJv9jbmO", "policyVersionId": "3N5xareWSrDijscL"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ImoHutjUfcZW7shH", "policyId": "SqmZvXwoqmntz0Gu", "policyVersionId": "jlkmWQZ6YPIqBC6m"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'pSSJBi64ivXmNPhC' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cfcDu1TlR4e9pOb5", "policyId": "2iKBpKKQmEGqTpQB", "policyVersionId": "q5LoAwwDe5JzwdD1"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SFRBDcbpEdO51Mai", "policyId": "JRuKqjB2Pc3X4v1c", "policyVersionId": "8DQMekAEtNT0K0sV"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1v7IWG2kj7zqe0qs", "policyId": "1Ng06GVjWOGIGYLt", "policyVersionId": "ozKho3zLlDVNPiKO"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'PSHwe0HUddkvOOCR' \
    --countryCode 'AFAuM43gSiGKD8Fb' \
    --namespace $AB_NAMESPACE \
    --userId 'Ecb6A5f22FkViKf8' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'EEjxHDAW0qtg209l' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'f1ItSO1Ef0n3Q7fM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Xqa9KeGQOeO58yJ3' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'Q4cAf7ff9LaKaSfA' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'B7NXdpyEKX0A1lws' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'ucOG0iNoFZmgq20p' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '25tLTxCKIMStiFoW' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE