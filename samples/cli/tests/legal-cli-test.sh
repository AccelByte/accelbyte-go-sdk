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
    --userId 'jHMnmvDI7SLyKwxt' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6W4B5YXd51bGYfoe", "policyId": "PSCRSkMY4NrOHl8H", "policyVersionId": "HUv7coNo2joxRzLD"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D4EfzqPs7rols8wr", "policyId": "48PonFxETraBkR1I", "policyVersionId": "FqN5H3VMHPTzcjm0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Y0zHnK1sIs9VepTC", "policyId": "lyaO84GA4WFOMOqG", "policyVersionId": "pQ5dP7QbPhyQMFdp"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId '8hOXZuS3bcfJPE4j' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'VzVSOlzpQTd69gcM' \
    --limit '11' \
    --offset '34' \
    --policyVersionId 'YuaIubmAqtPZfcl2' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["4ha1RCwnTA7If6vu", "g2VTmhmOmULxn9uz", "8XvaTHUVS4UHeSLO"], "affectedCountries": ["Q4h2lMB0zwAswLov", "ptf2EBqA0wT06bGr", "uDzFOd2T7D1rVBTw"], "basePolicyName": "L2dLubYUPqU4LZSa", "description": "qz25QiDDRwlhWBGH", "namespace": "EBPQVAMvOatOXjve", "tags": ["aAACI9tjfDx4M4YO", "oJyxh2a7zoDXIB6u", "RXVdEtdycEsmIJwo"], "typeId": "JXaC4mK4x585dgvM"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId '76m1nD1bE034rVYp' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'czcBJyRY9uPjlF8v' \
    --body '{"affectedClientIds": ["fyyovCxeGyonuTV6", "FWbM6ePHQc1aWE3A", "7wwtcaWSrE4mRiep"], "affectedCountries": ["g5VESycckpu8j3Z1", "b1GqfjYHp2QvPT6p", "e6vtctVaWJOYL2Pi"], "basePolicyName": "AUYw76dQrzDOxJHa", "description": "k0z0t3vqXF0YfNjP", "namespace": "K9crdO8iDjjVXhwF", "tags": ["NyGvz8beaSjgJ9gh", "nFrS04sFFH2XLoDK", "tUUd4X6jzrxoBuEe"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'vdFLw5lOVT8VSGTC' \
    --countryCode 'K7GnEuRiPRQVeQmm' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '1n1iijXnHgdWUN5a' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'Gcg8IpDNizpBG2mj' \
    --body '{"contentType": "sMfhJHTypyh981Zr", "description": "jInXaVJz60NVh4GG", "localeCode": "69EtapIr7oJNcTrL"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'zHpS8soyjyt50x33' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'iaJdijPdQZxm4QF0' \
    --body '{"attachmentChecksum": "hPP0NQP7jULo6GIx", "attachmentLocation": "nXyqKeUXlrfFHnec", "attachmentVersionIdentifier": "MDM56E5Jlf7x4xTM", "contentType": "pKl8njWchRh7a5vE", "description": "6qiASkaiPC7g7Vvx"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'ed5kY0vGIxDy5VRA' \
    --body '{"contentMD5": "XHGjp5rx3zlMk4cc", "contentType": "hKKtMbDHtILya40B"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'MXcNmeXHqdodkDk3' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["vl1El9gk44mmQGZI", "xv84Dmo2TTLPGHa0", "IFBpEMiTvxFX9R3V"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'CKGgwEz88wT0mRh5' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'zIaBk3OYXsi81SWn' \
    --limit '87' \
    --offset '67' \
    --policyVersionId 'RMAwqQvZdzvgo5SQ' \
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
    --body '{"affectedClientIds": ["f9FSqbyAY4BU5pcA", "IiYw1yuEfPWKP2ir", "UJBDiUf261Ayc2tk"], "affectedCountries": ["BeRjoQUSvsxV7w2G", "ENy6WCo5ILoA0xyM", "gVJGLEE6EOpV2nZ6"], "basePolicyName": "E4yRR06Wwb0XtF8A", "description": "m6ndsY7au2Jnpc27", "tags": ["bKabXsHT1iponyK9", "qD9vtCQ7bS21xh7V", "tVhuEMTUhyGD2ZOI"], "typeId": "1EjBvwryboqGsRtO"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '4OeR0ltvjcVENCky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'I1GbnI3p2Xm9u1eb' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["jsOGCRfd8jZ0SmbD", "YeJzB3HP2pkBN41w", "aYuxXfSMMr9g4CUP"], "affectedCountries": ["Rqw2Xrf4aNxxUcF7", "I6IZ1v0XzoEA3p7W", "wiwxmz5h7W0aA8T7"], "basePolicyName": "hfMMxWZKF088dBXk", "description": "eogX0DmQPgop8GBK", "tags": ["GIxfDih8Fkvu7ewq", "SzX6361DU6LSfASO", "HuoZtXR38GhIQqnc"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'iEfYHu1kL7mHdqzc' \
    --countryCode 'ZWnSsNglfceckMEF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '2h3cFy897cCdG0xa' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Ugv5I6mHSR8nKNWE' \
    --body '{"contentType": "wa2BamS27DxVeYse", "description": "wAmAosjC0JzgrUDF", "localeCode": "61Ct4aRvXA7zRUT6"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'FAc5lmZSEw7ftpkh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'MspCEVG5Sf8SGtDM' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "PArZJ9eCPmjRaCRb", "attachmentLocation": "LyoQpzym5UvdMMKR", "attachmentVersionIdentifier": "rPpPHviBkDqRPm2i", "contentType": "LP6xVuiMSNU3ld6x", "description": "ptZLNuuiPFBsyKWS"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'VZxw3fKmePxcKaLw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "J13a0PpnR9YZTfBK", "contentType": "s8ouHpulsNHh9dlw"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'puc8w2nYCf7DjC0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '47GODWX1ZPrkytmC' \
    --body '{"description": "iaxYW3S0zEtJSP0v", "displayVersion": "wG50PknZqSR1K4Ae", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'c4kImat4FWJLV2gL' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'y6xfzn3klMRCH66e' \
    --body '{"description": "P2WjxUSCoiqgmaph", "isDefaultOpted": true, "isMandatory": true, "policyName": "6LZw0KJOtTxeyXyl", "readableId": "ecO0Or1i903z5vWL", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'DzOBq4f16yo40ikB' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'NQF0DmJ121fYZ1Wj' \
    --versionId 'gjqNE991ZntEeceI' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '5zGl9WWX8UQFawcV' \
    --body '{"description": "1rpOJ8lfVy1B9yjy", "displayVersion": "BvQ5trMpiUKWacg9", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '65' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'aVZIVy7cVN6dodGZ' \
    --publisherUserId 'dln32VGUW3o2uteo' \
    --clientId 'pgx5tSxJc0GWf32c' \
    --countryCode 'Tl8wqUcGqhyuGlvg' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "E9UCO3YhIwr8JaoV", "policyId": "sjdXwnfplK5fDxKZ", "policyVersionId": "20Uk4axXrmW46Ynr"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2r8ZQpJWxnZwJXCi", "policyId": "tSogkSVdeIZOdtcV", "policyVersionId": "CwKEKuASvQKpwyCA"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZWIlKvow0wcVmp6u", "policyId": "ZhfgdLl8ytEheAdg", "policyVersionId": "abHDIFGyyGHO4xqP"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'o8HqOYg7odc69yVz' \
    --publisherUserId 'IzsrzllAMt1tPz49' \
    --clientId 'lUD7qTW6JqxPjOYq' \
    --countryCode 'AVOiCfB9R1fGg209' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'TpM8TTZVaJ1drgnr' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'TnUcB7I5VTU1iKRA' \
    --body '{"description": "wCqJ9YnqndkvLzVk", "displayVersion": "H91HIvozzXI2epFD", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'eWS1dG6jK29J37pL' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'l3q0dyQgoFAAWkN1' \
    --body '{"description": "t2qOgzVcFJflPJRc", "isDefaultOpted": true, "isMandatory": false, "policyName": "Ko8QRf4NjUBjGhPz", "readableId": "v4VqKVsUzDpmaPuV", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'MFnAFhhTADhz9Kzr' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'fzDmW2YCZUUXrfWA' \
    --versionId 'iDtonBPmTmhLSEUN' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'IhkZ4V49JGGWN3CS' \
    --body '{"description": "GmnMR7JBgsLuZWif", "displayVersion": "wBF2NA5gTELnnDZh", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '40' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'sV8ME75gGH0NvzWD' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'TMtv21rU7J4lrqOQ' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NPY0tRgRxOjppK84", "policyId": "AJmP5AesR1ZAjeXB", "policyVersionId": "RDu2TTAh2bhUEsH5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tsWxuLAfdpkw1PV6", "policyId": "JRt7cbDxWTRRcqmi", "policyVersionId": "ps1FNrsSXpP577yq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "d3z6hdeuFcYjlPlJ", "policyId": "2NydCGabCaKoin4s", "policyVersionId": "rU1ZO2pDCwlyO1HH"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'spQXyZelBx36llPV' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "D4HITEcwWSjd2FGN", "policyId": "1dGoqlwyxYNObmXr", "policyVersionId": "Xzkc2vlbX0eNkXx1"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aFnagJgrCwyJSzIH", "policyId": "2mEjgzkfOdqRGkx0", "policyVersionId": "JkVRJ4vuCx4mEmrw"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4t0BMSHHyU8PxAo4", "policyId": "KXyXCXOSN6zqxrHQ", "policyVersionId": "aQxF3GpDlavDYSrC"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'lGT8VDmb2YXlUXHp' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qavssV2ZjHxf5H4X", "policyId": "SDzaMuSvTYSi2ofX", "policyVersionId": "XHEz6bu0h9uXzxmg"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sTV1aXH47SOaG0PB", "policyId": "Cms8PwaLGeGYTAx6", "policyVersionId": "oyy9qLBTduVpHF3k"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ra4hkbz4HDJI8yhM", "policyId": "I9pbtFX7ZGLvvI40", "policyVersionId": "VPT6Ej6vxbzp3mfx"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'Rqakwv0dF1bk2dcS' \
    --countryCode 'Zzf2s2yhLmMtqSaQ' \
    --namespace $AB_NAMESPACE \
    --userId 'JLjyt5exRFNiYYPF' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'Lv9fCrYjTUNmPOr3' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'WpRwGsQkE1JOmK9Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'nFl7UAQ5d0y1IpVK' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Ee8EDqbbUIHATVus' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'YFaIOGXXQBbvbO2G' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'dmut3sKMT2q1GpMT' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 't4G1lKYm1yokxAei' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE