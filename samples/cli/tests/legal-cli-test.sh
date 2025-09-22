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
    --userId 'MMdva2D4M8k89Vkd' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6iHLV6jeppAlrSRg", "policyId": "pVKVH38M3wXZPAYn", "policyVersionId": "DtrzJ7axDKVYfG4f"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5RP2BjhoeRE5PBnO", "policyId": "ZNzLqF9mRjF5sEgv", "policyVersionId": "TIE3v25uRLRCrGOm"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iDEchzb1sbHXlghr", "policyId": "MBjPIAbOjLaKxYJG", "policyVersionId": "8lja7naQsOd3muq0"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'daE5eb426GRC6UA5' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'YrwqDWuiOnMgPmdN' \
    --limit '15' \
    --offset '66' \
    --policyVersionId 'NGD15Jds2gPmwS20' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["DR0wwiVHE5RXjqAK", "yrTlslw8do8kpEoJ", "gADlovmk5hTZAfa5"], "affectedCountries": ["CDXz3lpoebevGW9c", "UZ1rHeTN5c8Vxr0o", "6dwP9l5zJO8inC0w"], "basePolicyName": "BbmZICchSndtP9ML", "countryGroupName": "NCeGRL8GyZYssJ9L", "countryType": "COUNTRY_GROUP", "description": "7zeULIzsDAdQQjfN", "isHidden": false, "isHiddenPublic": true, "namespace": "TMxrgNc5le6C8uwD", "tags": ["JtFBIx2roxjflots", "EaCzXvLuIlBsmdzc", "gscQp1HZvrQnX1xf"], "typeId": "gv1MsA07Q9kcE75K"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Bm1KUkLtcDrU9VqF' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'dOLDkkUKoS7lOJJv' \
    --body '{"affectedClientIds": ["fnn7fVsE2o9KshxX", "pdusOeW7nUidPmMj", "z3wZ0MrGuNDcnux7"], "affectedCountries": ["6zvqb7gB0BT3o0ML", "t2zNbw4bRUSUWvpC", "0QwqoVjMVFRoNuq5"], "basePolicyName": "9U7eOmjv3EDjnIh3", "countryGroupName": "kvLassWy7ICf5IeJ", "countryType": "COUNTRY_GROUP", "description": "PTb2zcEdFfFvZCvb", "isHidden": true, "isHiddenPublic": false, "namespace": "OqQBLUQWBWeH6fm2", "tags": ["GXu3tpubw5M9ieNQ", "a8nHETK6r5fbGSGN", "Ej6Ea0Y9pv5A7uFi"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'cKEMy46rhuaJUfJp' \
    --countryCode '3aOMvwvvwADn1CaJ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'na18ikxUqLv3RjJS' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '2EX1pyypoVEGBvRY' \
    --body '{"contentType": "NZ5owTfJkIE8FuJz", "description": "drA1j4Ip2UMWmvkG", "localeCode": "ZP2GmxAglbUoOOr2"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '4PckiJTblvPO9TSj' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'cnycBb6SDeIvDnHd' \
    --body '{"attachmentChecksum": "kezlFkSBG4Bb0K6t", "attachmentLocation": "30txomuJAVBdEj7Y", "attachmentVersionIdentifier": "l27TKn3wRPjIXxn0", "contentType": "odMNZddRnDJBTuxQ", "description": "VUnXp9RJ8QRTkmff"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'j8YOp6BLB7QkmDCH' \
    --body '{"contentMD5": "mArxDeUaZGAckIb6", "contentType": "RZZCISlXn080aeVX"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'vM7jfHTPL5tfgMUK' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["qkNasXZNFqQErcMi", "TbFgT8yqLZp5BLHV", "eOzjPGvcYoNwH8MJ"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '8wyVYdxMLTiNixXB' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'ENSp4GJMtqiVoc0J' \
    --limit '21' \
    --offset '61' \
    --policyVersionId '9blGuDMxThddimRi' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'nMwrKLohKXguebOQ' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'mYMcALDOeeMI1lGY' \
    --policyVersionId 'ArIPUULThoR3loq8' \
    --start '6bmQainbRfXLTyGG' \
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
    --body '{"affectedClientIds": ["nxoXrZewnj26JLTX", "aOlEJ0YGLFtr9PEg", "YTTW2uIjDyN6WUK5"], "affectedCountries": ["0FTaAJ9bvheUCjEO", "aPC7TreIf79ZlruM", "NrvUAvmsEbaw77vo"], "basePolicyName": "Hl7QsNNnf003TkxG", "countryGroupName": "Aq1FuQcKaHf4pQxF", "countryType": "COUNTRY", "description": "0vcOnTdNGnO1SVy3", "isHidden": true, "isHiddenPublic": true, "tags": ["tHCIwm3KPv6yU1eI", "s5pwkC0zcHUcYI5s", "7IHQHDAvhlACJfIw"], "typeId": "oSSmDrbr1w0ENFGE"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'x7y9MH4gadV2nyQk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'HcNNL0g8qUCLAxph' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'DjWmdnI42NIVUB4E' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["0mTbLBI7u8jGQAz9", "FlQURe398kpVQiDk", "3N22WJloiNuEGYtF"], "affectedCountries": ["HvRVX0VIhYLCiun4", "uvgxxIEEo8lmqHra", "Ufd0XGjntmyhA93s"], "basePolicyName": "Z8vxnrXihBMuin2S", "countryGroupName": "sBYHMHnCrHh6cW3N", "countryType": "COUNTRY_GROUP", "description": "q0PZuJmW5kJkBny9", "isHidden": false, "isHiddenPublic": true, "tags": ["4uJGxtMJ1pqxXW4v", "hlKn471DAnbMrJ1t", "G7SzU5TLjefY8PkJ"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'xI4Vzk1JU3tYQ3ic' \
    --countryCode 'AcHBk3A3ZBeiXPGH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'ujMWzItqSXgXR0kV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'mTe1sY00hoS7C9g0' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["g2ND7Rq77QIMqMkf", "gPKaTiLzTFyldbkJ", "egetvD2d0dx4aIru"], "countryCode": "pzqphS62SstJdari", "countryGroupName": "CMxPv6xZtvaGSZ1p", "countryType": "COUNTRY", "description": "y4NGGroc8aVCI5wo", "isDefaultSelection": true, "isMandatory": true, "policyName": "j6BpWjntS6GSmhxu", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'TkggzTx0FWowPmwi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'StyhJncX7bBGcNJZ' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'DJ9mnlSUur5MjEXX' \
    --body '{"contentType": "hgXDLjGDWxyEosun", "description": "q4WeFTAinlM9smH8", "localeCode": "tX5VY9pfJFtolynU"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'OoIzuXbvptcB5e58' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '1KWtj8PNoMSCFq00' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "G21yJylCmx1wUgLP", "attachmentLocation": "3gcLXicrRL3OLB2o", "attachmentVersionIdentifier": "I6b3x4zFC4gT0yNp", "contentType": "GSdrFenanJ9rYJx3", "description": "to6EsFrPfXGQalop"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'vZJ0252bOzom7pmc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "ZIXCvoxVZbfIKtbh", "contentType": "XBQXkIrfHLCpeHgg"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'KoY5TnPOpA0sNiG7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TAkFHxGkTaYT3eBm' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Y5Pjkeg1Ou3S6xnF' \
    --body '{"description": "Y8zLHQOkOycLn0hE", "displayVersion": "UaNte0r7bscIqzkq", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'VHpWFE1A8NARqA1n' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'VKzgxNAVxIqtyC6s' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'fiDGl8zD4tEbsKnF' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'BgN4ssi4Y3dLxP70' \
    --body '{"countries": ["Oo9YO3hbRqnDPBmm", "eTHBRt4PwqXRVHfS", "A1herf3vMGUfdGZv"], "countryGroupName": "rst7im8B1RJfSGZU", "description": "oq3pHWJXBgcRd6Wa", "isDefaultOpted": false, "isMandatory": true, "policyName": "XHUCSCgOLFLTBeIj", "readableId": "GRGz5qkzJPlat8zq", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'UbMXxwN9M4VcVPi0' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '2WzLgciW6FNDImgG' \
    --versionId '3wcrSvGkU2NdlefV' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '7nfdZRdUCs9kyiZv' \
    --body '{"description": "ydUVqeZuvi4Dl3js", "displayVersion": "gLYJUdAAfBZTQotV", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '28' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'bXCpbTeJskm3CFsA' \
    --publisherUserId '5BSBCRlTE3QIAxWn' \
    --clientId 'SBRo2aPX1EbcpQzC' \
    --countryCode 'TnMTGe4ctxqOxT8F' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "X1KiZvp2XKw4nSmN", "policyId": "0RgalInlaDxvIgz6", "policyVersionId": "zhNAoNhXm3ybxXRl"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pqwz4h7iNDHhYSrd", "policyId": "LxVVZ5K19B9O4wsK", "policyVersionId": "QuEXhVBR5nzbfHQc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2e6LXINh4P5h3wfG", "policyId": "XJlDyDX39Dg1Zlsm", "policyVersionId": "5YipzAKIjMppePsS"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'EKlLfbOBELJzyHWM' \
    --publisherUserId 'dlK6Uw9XZzj4u3zv' \
    --clientId 'R4Bn071Kgjd7gtrA' \
    --countryCode 'xLvWzFHwD8oz6uZN' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '1cc6uzpMvRv1oOdp' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'FKe7B96rDUfMvvF0' \
    --body '{"description": "4VWEhTlud1F3rsLo", "displayVersion": "iIcSrT4x5ssAeIAy", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'hrA8oB4yETHUOQ4E' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'RM3Cm82jywTSDRTj' \
    --body '{"countries": ["Hl809sesCU1oQjgD", "xwzbOriNmP6kWhWs", "9zPEunkSssXToVxv"], "countryGroupName": "DNRP1gjthB7LqxEY", "description": "RmvqpxYIXoK9kqRB", "isDefaultOpted": true, "isMandatory": true, "policyName": "0i6WzU7xUCOCuxLA", "readableId": "DCO0Hd8CZiTKaOKg", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'jOz6y702S9GjU5di' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'b1pvs7WZk0ZRydSl' \
    --versionId 'mQUTEacYqU5ZvDR9' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'Fi6EBcG0LsL6Vbpr' \
    --body '{"description": "OEYP0aJbL7wVJ0WJ", "displayVersion": "K1mjKmr8CaperHxE", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '58' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '16OQtkjzmFCJq8Yq' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'fI8Tj1S55iIL1nam' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UtGUIt2Ge2RBSuSt", "policyId": "me9HaIzVtFra4O3K", "policyVersionId": "woy9AjTPhGIItXiz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lBSDohMcpFAa356J", "policyId": "LwO1Wt3Pz8yYTJJ2", "policyVersionId": "2HO1flGhEdO1DOwO"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "S0fvAmv95bmi9uGr", "policyId": "WKTwA2j2CigWgYYD", "policyVersionId": "DEp1nXkw246Gzzgd"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'x9sfHGCu17ZqxKdx' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ECjTMnn69NQKbGjp", "policyId": "VA16LAritunmaRpW", "policyVersionId": "r8t1a7FHBKsOILHh"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IINUrmoknq7qVxWb", "policyId": "yXkZwXnfMA1PNiW6", "policyVersionId": "BQQBRnMW34cVRQ2U"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EDmXobNEACrKB8Xx", "policyId": "11aEh4mo29SXnNyd", "policyVersionId": "VgUfkWorJU4ql0XA"}]' \
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
    --clientId 'Eu0vBLKc9jttThVJ' \
    --countryCode 'gFIEkJuJcrvkmj2r' \
    --namespace $AB_NAMESPACE \
    --userId 'Dq6cjKhSX3prOPN5' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '0sfSg4vQXHbcjSNW' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '6xo0F8C2P9ipO5XO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'QWgjUsx77xyixiTF' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'XDCh7hCs9662ztCV' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'iPD0mzoAii9EJmYl' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '7SQ7IDLdB2FZd5Wa' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '3P80fy2ptbtNQNoh' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'uTpYOgso6wFBGkFe' \
    --namespace $AB_NAMESPACE \
    --clientId 'KJBrggU7yjvIbIm3' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE