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
    --userId 'IM8g0I9uQXGJ34nn' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8sQBSxSzaJMskU8m", "policyId": "VTL2o6ZiyPrrpM3p", "policyVersionId": "fJCy5LZsxnxEX7tN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BGtZCS5JUIS1ZZz4", "policyId": "ual0Mki8Swf6tI8k", "policyVersionId": "JrjmuRUUHm4yyEi3"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "H78UAB7MKB5vAweh", "policyId": "4ehbuBFZLXlmxZia", "policyVersionId": "1zF5yQPBLKTNSvTL"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'm2mG2Eg62InAtYIN' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'rn1nt0v4z9chZMNr' \
    --limit '29' \
    --offset '85' \
    --policyVersionId 'qIXYyRz7Tk8yWc7T' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["3DWBbJ7ZEe6gETmn", "jJzmNKWP3Wr4PhJ0", "HNa1EAljnalyA8Yl"], "affectedCountries": ["dMPN2kuRfR0mpHBt", "HH42hl6Y3MerXZZ2", "eiab4cAM8SjKYqGh"], "basePolicyName": "nWJjXSvopQoN6iTF", "description": "h6XFbhLgYzje8f9I", "namespace": "b0swMOUohBaiSKQA", "tags": ["sFpIdxmSGnBom8eZ", "aknSZvpWuFNp0mzS", "3rdpMReb4Arr7fCW"], "typeId": "ElnCbq0cGk55PoN1"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'RGvsoOMl5ONDDTRv' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'RXEmkk9B3pH8Y3bc' \
    --body '{"affectedClientIds": ["fItBeKLWu7jRHFmw", "MEZd9y3gN5gsYjod", "Uh8BL7du7ZxrkEOJ"], "affectedCountries": ["ys4jpisQBvv35MWF", "es7yV4V1Kp87rvXN", "9EWcU2uRXLlKTlu9"], "basePolicyName": "csJ1ihSrPk2CxPqb", "description": "WGjAncP4H1dNcUt8", "namespace": "D9J4cwpUJ670jKMo", "tags": ["kDfN6hPNPYW2q2RE", "S36nt9UxD3ZxqRNH", "uhzomzQy8oeWPa3Q"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'IzzowpckwejYYiBq' \
    --countryCode 'dloElvxIuXjeyp39' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'frm0RizU9bxZS8vR' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'q4uiWtTiFdKVEEeb' \
    --body '{"contentType": "drkuv47jUvIoWe8v", "description": "0bNaVkLpBAUMf1iJ", "localeCode": "GD0so8bp4hOfRPdb"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'EmdEICTG0AbN3UiM' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'GY6ClOef2NeHjmbj' \
    --body '{"attachmentChecksum": "2FkteuQPMtXAGW0T", "attachmentLocation": "du0H32MaIU107PEQ", "attachmentVersionIdentifier": "xnlVrQv5HVeVJFQ3", "contentType": "7XKC0wTaoSVaVqlm", "description": "JBRE7PR8XOrj6Drq"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'tYiz8teJVHgGBACR' \
    --body '{"contentMD5": "0JJskNcKXkqwOe2O", "contentType": "Fle4oosPamWtf8SU"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '5JMl4gaxnwri3MRf' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["Ws15IjQ4e6Zdwi31", "KNej7WWoj7SGEccX", "hCE8lVgEgwR9PSxO"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'xsZncBp6oAQBM5sD' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'WQq9zrijRh9hKOBb' \
    --limit '20' \
    --offset '77' \
    --policyVersionId 'NZ2o6WAWb2twSSIn' \
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
    --body '{"affectedClientIds": ["3CpQGSWyRcC3eGA7", "pTHf5jHdcDgqP0mI", "GL1ymEDrI0DL70Nf"], "affectedCountries": ["0md9A5MaTGLBSuXm", "Sd8VAWYsFaaNnWSH", "5AF5stf4VMAlAGuW"], "basePolicyName": "cxVh7vNrXCTSzI2W", "description": "B5HkGUnFnLZdcCHw", "tags": ["iaSlZLLnIIXDwC5e", "Nr8HR7siF0cB4qt0", "UywoQFNMdDUWMNvG"], "typeId": "GlL5t5fgQbVBrIDO"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'OIotPG2ejF2I7cm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'BYlHOEUgYzZXxeXu' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["aAd0E5P4lOiJTzNW", "6yMulfjnBzJPQoz9", "30o1XNPt6xs95R6h"], "affectedCountries": ["o4YpTNwcv3xEARxQ", "E11EcdQCWpYxMIoD", "pyNvhSOTimqCkVdb"], "basePolicyName": "ayjCIf3FYyyuQES4", "description": "Pcm8xV7LBgxLTGOH", "tags": ["kW6TKNYpGYaJxwku", "o1FCkddVsynKLdYH", "0thDTVn3EP7sIAU6"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'wJj9YsvFHJnY3maG' \
    --countryCode 'X0Sk9XJNQyB0Efik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '8n9WKFLlxOz43Keu' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zkBzlmgKqjhucwlV' \
    --body '{"contentType": "2AVklonnRBC8sO4Z", "description": "o5pom5HdZAM8uvXw", "localeCode": "b2zFfvMqBzSLiv8r"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'I8VP41P1Lk5FnntP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'MWwslgwHpUeZeYQN' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "nFo974TktPuOjNSO", "attachmentLocation": "AZGA91U0lWm25UFZ", "attachmentVersionIdentifier": "GLc2HReIP3ynfq5i", "contentType": "X4N0lLMOqWzLwbyk", "description": "7ZynpJn7pNGlmifJ"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'iDkuKIMbOnsTAcE1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "rcSA5DaV3QjmrePo", "contentType": "wbSiRdFIbVp4kBVb"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'JGRpd7xHNImtrtST' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'QGEdevbhyVLtn9to' \
    --body '{"description": "L5z71UzfQZ3Bgh8s", "displayVersion": "soS5COgNxcWC7tBG", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'cNZrroRFMawJ2I4H' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'HnIfIs8UWjEEZTek' \
    --body '{"description": "EGoBDII7V4hMmCNj", "isDefaultOpted": false, "isMandatory": false, "policyName": "penXFxD0ic5TwBTW", "readableId": "V5UtFuzyFc8rACyi", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'jqqNI8ip9FpreYYP' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '8Olo6oqjAEMiGq0G' \
    --versionId 'kxDgYZaQQ1tQrAqw' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Uax1aMKUnmg8J9VT' \
    --body '{"description": "JMPqXIffC4eL4MM7", "displayVersion": "OlJpDM13bV963QYF", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '95' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '7lsAX0YWDIj9ffVq' \
    --publisherUserId 'IFhWgBqYvj8EqFVj' \
    --clientId '0fgXgjgJDV82iqXS' \
    --countryCode 'aCziVsJkw2ppdOxI' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LYN3QZmltN1kXu7M", "policyId": "SRc1Tvs1uZ0sHuSJ", "policyVersionId": "iNE76rstcYhWIXtE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "B1X1swwr88v00H5W", "policyId": "ufpBRK92VoWjQD6Y", "policyVersionId": "O4lX8O9RLrko1oSm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NeDzYBuv3pkAoOtm", "policyId": "HtnnXHbM9M8XwoU3", "policyVersionId": "W58w8sIfDovNVtlf"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'biIT3c2wynS2fwxa' \
    --publisherUserId 'WGL5DtienIrVIvPV' \
    --clientId 'cjXXgLWVHJJDUBZ7' \
    --countryCode 'owjFD93SnN8f5b6H' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '4PA05vsNTGe4nF5b' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'Vg6IQWKtjDxkSm36' \
    --body '{"description": "Unkyok4QusO6kBW5", "displayVersion": "vjoI8WYHBhIDeAdy", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'i9k23R4fB3UnoSP6' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'uQ4zp98DEu2SAHAK' \
    --body '{"description": "oiFlEcqHBNYVx4o4", "isDefaultOpted": true, "isMandatory": true, "policyName": "Ho3sE6hpsCs2amLI", "readableId": "1BxS9B6S6yHEGHpO", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'qCmsGWkXVZ76SXOM' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'JzBC7VFfKZoJwIag' \
    --versionId 'u6PfQqzo8XbZ7J1G' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'WvqmwwAfmzYM3Y65' \
    --body '{"description": "CcAtjGhvBQXw7NeO", "displayVersion": "wKhf4VWvEK0RV7EI", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '88' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '8sZ1ISa6qSvXYRBZ' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'Fjv98ASRk5l3Jw1x' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'qgmAlkxEwyaDolCx' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '3q5Go431Cmaffvup' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HohxSShRk9QICIwa", "policyId": "lq5mehq4YXAQRr54", "policyVersionId": "eKmOYGA9DKpob2X6"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oyJUJW12qPzF0YOM", "policyId": "lZFqtfkCGHaKjoml", "policyVersionId": "ByYzqQwRDLsTuuqL"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7PKDrT27izARkqtf", "policyId": "RCigQswU6XiHcin8", "policyVersionId": "T1olcldhOjmOqiF3"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'cKylS9kjghtfHq0c' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0E8vWE60HhJ5IJCd", "policyId": "vcr1s9Ytwyk88ToG", "policyVersionId": "lDVyuGjlB5dl0MuI"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aFD7tpGfJZf4KOa2", "policyId": "VgqcBgHmQytNACX3", "policyVersionId": "pIh8qCEqBf3vFNcP"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HV1G2H2V05s6MZM5", "policyId": "JkOrZIGcE3f3sY5r", "policyVersionId": "0iH83eXfNWq0b1YC"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'eOELk79oWtKWoCLG' \
    --countryCode 'IIUz0RwUch8kO2LL' \
    --namespace $AB_NAMESPACE \
    --userId 'pm9oLfjvukyQRBYv' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zPbVzBpSBCF3J0vt", "policyId": "C9gFl6PIhzk2dKup", "policyVersionId": "N1CdRzr1locOqeME"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "epNJNBF3bVGNasDu", "policyId": "rYkDWYIc96alPiNc", "policyVersionId": "boLYJnP5r9SBhxWN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zOMdr13j5CRqAeoq", "policyId": "Gp6zAEvuJcMFJnLY", "policyVersionId": "LoclJrypTuMl6EkG"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'rhRw8IsMaUIPBYWL' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZoKxgG0ak4q6Au8C", "policyId": "rYIdm36nmlZtpWCO", "policyVersionId": "IrWA8tqlrUNvb7nM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5bhgJwB6GA50vNof", "policyId": "6Z9CyzZMwBwF4Y1U", "policyVersionId": "aSQCmf8zIwQMhDVg"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "r59mURREjld7vlH1", "policyId": "hIo0Nlnd3Zqd4aqE", "policyVersionId": "b9IFKYHYZvMfF8OW"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'fOG8tyAiJLJ2XDgz' \
    --countryCode 'W4mnd1LQhKVKxT7P' \
    --namespace $AB_NAMESPACE \
    --userId 'fJ93CoyLT4RVBYjK' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'FVLZGOTKMh4tWmyT' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '6xNkFf8uqxwEpoG0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'SSN19ALPg4XwxxqY' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '3lQFiCGPQIpWApRq' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'kHKaqJfr8x2xwoEU' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'rwxPaqkDo4NAaHUh' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'qhFAvuo76TgZi5t5' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE