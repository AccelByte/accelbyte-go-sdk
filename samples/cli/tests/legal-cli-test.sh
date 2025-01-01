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
echo "1..74"

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
    --userId 'FZbJ6oYc7xd6kNeA' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZGZvNHp8FcIHyrrR", "policyId": "4WPuK1y2AXIWJG42", "policyVersionId": "A3IF2jSKqOCSLaDU"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "01Edh6QBRuHvwdzh", "policyId": "eqgCRGjUPvbRlIpB", "policyVersionId": "F18v6ZC0nahvrbMI"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "mXiP5ixiyDvzNyDD", "policyId": "w7zfWr8KzSXnpICy", "policyVersionId": "ckjMg3QxiUe423LD"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'pIohezCevIgd6l8m' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '4cgDy0ugUq0qCAMY' \
    --limit '53' \
    --offset '73' \
    --policyVersionId 'CEO20Wld2MaEMd3R' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kqEwkSFclX2XYHyX", "r45VFJ0ZwIMIMIHZ", "9tYB3aEa6kyxI6hY"], "affectedCountries": ["zUgJoIqWTrJ3e0Iz", "MtrcyNZ3PaNHA8wB", "O9m2iklMhouj0x6C"], "basePolicyName": "A4kPUczN6zQN4InG", "countryGroupName": "ZdLx9iwSlGIIKZTq", "countryType": "COUNTRY", "description": "II9OQICiEXy3D8yR", "isHidden": false, "isHiddenPublic": false, "namespace": "W9nuVTNQsOstC9ND", "tags": ["ySzZ4qoeZOdKkbhM", "YSkXTnJY28KbKq2H", "QZ25F1Hf51UIlTni"], "typeId": "Tshj3ZMjVLwIZPX8"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'icKvhhM256mSx7dW' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'c9vyJM9fJDgkgjsh' \
    --body '{"affectedClientIds": ["xVSZv5TVlexTZJ19", "qw1RNgnWVe6yO7m8", "OeRVhzmz3gLOlAgQ"], "affectedCountries": ["typZTPY9zLpVm3Ax", "j3lhZsJxi8nZFOip", "zxZ9tgxsfPnGKZLK"], "basePolicyName": "Zp3o3b5Hir5cALja", "countryGroupName": "RrAehVX9s6wKnhMT", "countryType": "COUNTRY", "description": "EU86DNQhi6A3x6wK", "isHidden": false, "isHiddenPublic": false, "namespace": "L24drKE2ZaEkisPq", "tags": ["WCGtwkWtpWiFLvli", "DyK4B7oeoumv2omd", "2Hy7t5PaD3x8AhCE"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'qAa3NuiYBf7zsHVq' \
    --countryCode '0LKdhsxj1T5dNJR0' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'yOzpKlzBTq9Cvi2c' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'NoijmthNQAxO4IrL' \
    --body '{"contentType": "HTyf7WwIw09s4cYC", "description": "QfSnWhCX7popiuAF", "localeCode": "TzYatSmDVgdTACCA"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '636fq0hxl6CviS7S' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '5B5MMt42x3r5X1Uj' \
    --body '{"attachmentChecksum": "BWIASjcoxTCFVypC", "attachmentLocation": "9N0Wv2JIFXm3fw1V", "attachmentVersionIdentifier": "cr6bW7ppSIAKCYcJ", "contentType": "9q5yOaB67jxUliZG", "description": "cDsrVue8GDpKK8AM"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '6sZw3TRM4po7stjk' \
    --body '{"contentMD5": "lZ1kz3OnvlWUtH1v", "contentType": "VY5khxR5Ocio4BAf"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'nu2qLBacoSx8HHmU' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["lgx79ErHTrdb3O0q", "y76vKcuhbuv3dBfJ", "y7OM2ShSgEGXpTM6"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q6vmIhKiagaa9urG' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword '3WBQljwSbXQEdTPJ' \
    --limit '76' \
    --offset '65' \
    --policyVersionId 'iltEDhN8sXlxay0b' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'CIyLpu4q4oaZG2aD' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'h627Y9szK72syadZ' \
    --policyVersionId 'KMJlxhQYf9tlarIF' \
    --start 'OFkHPrTV4n6hNd1g' \
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
    --body '{"affectedClientIds": ["2qSzLMQqJzBqqNIB", "5SBHrXjAHeF8BshC", "gNdB7icOTiC3Ppyl"], "affectedCountries": ["SwO37jfp0eYvhReD", "SDAEUnWt6i2tVyKs", "m37F53wSJFbZvo3e"], "basePolicyName": "ptSZeuDhMQKh99i9", "countryGroupName": "wPqXU8HowovAd3Sv", "countryType": "COUNTRY_GROUP", "description": "PnMiAPxx4P4eRt3p", "isHidden": true, "isHiddenPublic": false, "tags": ["diuOJJiSVf1opJtt", "22YyGGMKa0nQ0IUR", "moOgbxFaJA12vbqA"], "typeId": "b2pIapmxwLofyIM1"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'QajqexWz50JNxbl1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'cXH58CJ92Nlpj6Lo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'Q22Nv81oLCVeQlTe' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["d51U1oSWy0suqvOV", "hvt5jjKgFJva6JGr", "vLE41LVeMGI2qu8g"], "affectedCountries": ["aVBxGzFYWYGrCHGw", "3sTeSal93bSKTibg", "Js0cjB2DKgHuWvf4"], "basePolicyName": "uPQTdF5x7X81TRz1", "countryGroupName": "vgalKcYnBc0UekGf", "countryType": "COUNTRY_GROUP", "description": "jegATRXbkdQUlrVP", "isHidden": false, "isHiddenPublic": false, "tags": ["lbqbdNmooxzyl9hv", "sz9NDNF52DYwTsr3", "GlSRikE8wIgrUBnD"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'qeiXl93a3Sh1SXv7' \
    --countryCode 'Em1hldWCa4EtyLQa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'h7Iabxe0vUN2EuON' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'bqUOjkY36Yfr5GMu' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["4Xl75CgpdDtZpZ10", "tC6qkJF8oNlRty7d", "XaShB54dLnbFOI51"], "countryCode": "ZTiZFUhA5eyv0uJX", "countryGroupName": "puybEhjJlGpUZqZE", "countryType": "COUNTRY", "description": "YioB4NMmi8ozcE1v", "isDefaultSelection": true, "isMandatory": false, "policyName": "yJ29NMwYdeZEw85m", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'm4DCpydmTuUar0zv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'M00evqSJdppU5Fz3' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'pu69HsRCdgEganV7' \
    --body '{"contentType": "uG0yqRJVPBuuGmSC", "description": "EAFywb3rHN1M6zDQ", "localeCode": "2rJSdO14WauvjHoE"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'MxfAXTdTAx1WAfZz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'lKPEqeZXjzksAHBh' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "WMJ43yF4weX9Rcl2", "attachmentLocation": "ZuQE1tpzRBrlCXTI", "attachmentVersionIdentifier": "rYD7ccyUNwXWw1Td", "contentType": "oJLY5TRip7LN24QN", "description": "Lprv4Vj5F3baMhZM"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'wDxbGfC9PYR09lBy' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "lgHbis5dlELC4PNZ", "contentType": "9CTcHwb2FSIf0QKF"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'yZqnYIEmzGJDkQGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ElQEMEYckdAYd4Pn' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '6ZJo3r9nmL0hycD6' \
    --body '{"description": "RXsEXBGH5APEesEo", "displayVersion": "9RgF4Odt2RvfWNaE", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'k6IeqnqQtOuiNHev' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'z5WmaKD7dG8oyGvz' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'f5g2jFpJAy6rNnqN' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '6E5YibZmkLebdqyp' \
    --body '{"countries": ["8y0m27H1uA5pb65r", "67UOBKMfgps6k8PF", "xhEYNz9aO44M2XKM"], "countryGroupName": "eSAm3dU5LD53XNeh", "description": "UEfTlacjPLFWcR4s", "isDefaultOpted": true, "isMandatory": false, "policyName": "ne8RsPXAF7Ugf2ks", "readableId": "AFObqIyaXHH34Gfd", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'oonRTnwEMYxTpNgr' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'pMxLg8pad0Go9Yg5' \
    --versionId 'UgqZUkJ6tTezY3FM' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'xBHHuRdYwcYpI97b' \
    --body '{"description": "N5AEdpa63ZchcTdm", "displayVersion": "GHMpYWbhcQFEASWu", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '95' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '82zRw5ndDIDQyglV' \
    --publisherUserId 'CFG6HYWkkqUr5qwD' \
    --clientId '2LCqThxPLeH6kpwx' \
    --countryCode 'VYw1CeAe2T8Y0kFZ' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4mfAoKKOXKVpzaOb", "policyId": "tFhqOQnxIzrqF7XC", "policyVersionId": "xLi2jPNyWP9aIT24"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9HBVLo2nOjT5y3I6", "policyId": "83pkz1r6Wg3Q5mFE", "policyVersionId": "P8Cw10EXcMNCC0sm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yZqUKMsizK4XgfNl", "policyId": "LdsCgZfSR4altxgQ", "policyVersionId": "IS1H5lvdAGEW6018"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'xMrjNd4NFOhnFvHa' \
    --publisherUserId 'fOXq0gwhcWnNMG0W' \
    --clientId 'kcjCFBcZbHLceeoK' \
    --countryCode 'SvoizIu0tZz1D4TC' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '3Dstcvi8lDTFDVYw' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'j16WNsW2DjSvRczH' \
    --body '{"description": "RFjAiqBhhvdlPas2", "displayVersion": "3GmrC3no8jQucK8m", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '59tMKCw8ieJqr72h' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'DJuQLCoHB7H35LWm' \
    --body '{"countries": ["Fq25dsPoTjsKqpiS", "vUAxOHRifMUxFI5v", "RgRCZqtyb7HzH7cO"], "countryGroupName": "I9eRE7kiteODDBFj", "description": "jhL38D6iEnFBx0hf", "isDefaultOpted": true, "isMandatory": true, "policyName": "0tYWG9qXOmrAmOp1", "readableId": "P8CSEAclqWpq7CsA", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '93xIZeeOZOb9wdqR' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'FMJGQimbanYNM7Ae' \
    --versionId 'F0E444irVKppEtBW' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'PjLXAJKaOQlbJhfs' \
    --body '{"description": "QW7av1kmP4YUNOpK", "displayVersion": "gi8h7Q96jKuMlH9Z", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '33' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '4HlVS5YcMYczUFqg' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'AvAUSHp4KtYekZNf' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ssEf9RyCy9BAtWMk", "policyId": "wyFFbHJbmYlranbz", "policyVersionId": "eE5HW0T8rdZKjSHM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YHIUqfqCoMzVYev0", "policyId": "xmKkCWMkPtvTq3uz", "policyVersionId": "tmmnweCVF59b4a0N"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LrcDh6FH0DmttsH4", "policyId": "DVGiOpbzGqwPi69S", "policyVersionId": "cBNrht2SeG6hs7fb"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'lgEvXoqWAhztNYHO' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "nrtA7uKjklNBZTi0", "policyId": "dpT7vC8pIl57b0Yu", "policyVersionId": "VqZlZLoPiyd8nvfk"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "w6BM6Xn1xv7YJ5FK", "policyId": "72TpKxrr566Roeav", "policyVersionId": "WdF4M7qx7wsZ16iW"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FBOtK9If399db9C2", "policyId": "ZuEcShC3ZYXPBgVr", "policyVersionId": "Iox09e1p6Qu4a6k8"}]' \
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
    --clientId 'HzmuW9e1QY4C1TQo' \
    --countryCode 'OuTea46z0htVYqH5' \
    --namespace $AB_NAMESPACE \
    --userId 'IFLLdYMxOs1HZRhu' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '5kl76XuelNI4H4py' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'uhYWWHp5aapy0Gtm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'XS162U906MYYYHou' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'Ev6BBGkZnkWz3sPy' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'teloQ3o5mdxQlvne' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'lHXzpf2yiWrSp6MU' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'iKUF2PVI1gi1t08R' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE