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
    --userId 'yx2N0vLcdinTUFr2' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8lG2bXHs3b9QmoMq", "policyId": "PWS6aOzSRBhZgCRt", "policyVersionId": "PKXmwk4aDYIsQyZl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aYLyDwQcoYVnspUO", "policyId": "idwdo1evMPmlk56r", "policyVersionId": "i9TFBHnkiebxcmfl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tvfqzd3AQe5ePSF3", "policyId": "1tFU6PnnMUxYp8Aj", "policyVersionId": "RtN01v7mV8eQ0yzR"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'JUdqo9PHKGJE4MH8' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword '2ErUfFyGfUYmSxyz' \
    --limit '89' \
    --offset '45' \
    --policyVersionId 'TZrq0bcgCZbrTQTj' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["Bwwc5f2uF2IW5SJL", "o40jhHj58GaI1wTo", "EvJ8bimfTXMmAWN7"], "affectedCountries": ["HKuxbi1NkNfPAnWR", "yCxUu8ekpzTYd6DH", "G8DH2c7Jx33lskjp"], "basePolicyName": "5kdHajZCdy7XkDYV", "countryGroupName": "8GFYSaMlNntwDtQ9", "countryType": "COUNTRY", "description": "01ykmrjFd4gBER2O", "isHidden": true, "isHiddenPublic": false, "namespace": "2O7iRIywzfZJnNkN", "tags": ["1SIubyyKdy9VvAY7", "XDddFl6TDs3f3G38", "LWwrCkfYbL0OOOMI"], "typeId": "N2jQFbzc2POxqIIH"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'qdD4R7cQ6soy1iWS' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'QiVk9VwLGP1UM1U1' \
    --body '{"affectedClientIds": ["0ZhZTIrnSO4Yuzdz", "ItuU5KOTTroqIhWg", "ZVqvtPiquJKAK88q"], "affectedCountries": ["m4eQclFzBvHkL1bS", "aNwrdZK1Q1ejZiuB", "8tHyuT1xSoA5Tmnm"], "basePolicyName": "p6FcRbEzrfeM7pM8", "countryGroupName": "8a40I7dDvw4CRwws", "countryType": "COUNTRY_GROUP", "description": "2ruKTH25a37VWfr3", "isHidden": false, "isHiddenPublic": true, "namespace": "f8ZxXUrnyK8FGqox", "tags": ["721KNqjhgcQhgi0P", "hgFsWWGUyWiogzOG", "UhNLUXr4Nfal4iAc"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId '4av5pK9xACQK6yIH' \
    --countryCode 'y7TwDQJRbnTOs5eq' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId '7N8zaDmFVuXy6VfP' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'fL898copsS3BZCm9' \
    --body '{"contentType": "TOISzOl8YlPxzm0M", "description": "36rCRft0sFffvLQb", "localeCode": "peH8aM9lkkO6yx33"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'v9cqWBV5KdsRxHI7' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'wecpvBviJ0Su67bD' \
    --body '{"attachmentChecksum": "S4gp3HEySsLnHsyX", "attachmentLocation": "jN7VHSqbJjKBR5rs", "attachmentVersionIdentifier": "wfSQFYjAvBhZ8JhT", "contentType": "toO6CiD6Wa5NOeAe", "description": "s1rORpGXJIDhCblJ"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'R6Z6gYjTir71svRK' \
    --body '{"contentMD5": "h20xcdWASS0nteVE", "contentType": "DcFDM8rZqPLlWh9r"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'OZC0hLBMFwjP2hEX' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["Fw0AdwdM2xs44Km8", "Y846ggK841cJiRj0", "DZW7vum0xlJIevuG"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'Uh0sFKhjDJ9OkE6K' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'qtjR8icxTIALiibL' \
    --limit '74' \
    --offset '17' \
    --policyVersionId 'HYBgkGrepOFbO5zt' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'ewiLl9Z2Y6dTn2Sx' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'w6hQcV9Kg2c13AZX' \
    --policyVersionId 'dR8CluVEDWLDmeLJ' \
    --start 'usgK0keO0L0KwhEQ' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '25' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["aFSbIxBEw5Kdxr4v", "U2JaVtjAjgwYBc2w", "QvRYpHzrycC0WMkj"], "affectedCountries": ["2EqoXh9wsPNI6uXR", "bZHwkhWqmgHi414i", "CxhCthvglz3J4vIa"], "basePolicyName": "YxSjNDhZwWJSsEqT", "countryGroupName": "3NlfawTwA8GUCmvZ", "countryType": "COUNTRY_GROUP", "description": "VVS4cVSvQAXoocD4", "isHidden": true, "isHiddenPublic": false, "tags": ["6Nedngwf8TTrnNJO", "VusRBvGCq44h81gm", "9SfTHWrIVcJTIfiI"], "typeId": "juzDTodblHF1aC1q"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'lEiIqELaRwgZQnPV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'HAEsX6hkhRd2WtRa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '874ED3jSLr6OjMsd' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["zD9uGbylJ9WT8GVy", "OjiYW3qUCUcKzNxa", "JvpJFT6cjGFnA6Hf"], "affectedCountries": ["wOf94vSQNzfbSxky", "m7xWKDxbESZRYCPR", "8T4jzvUu03UItvYZ"], "basePolicyName": "9Y1KImYztvNSQg1x", "countryGroupName": "d3W9OYBJEYnsVkGm", "countryType": "COUNTRY_GROUP", "description": "8U5GMkhcXrJOyd5v", "isHidden": true, "isHiddenPublic": true, "tags": ["pgGZ0dlMZ0gWrFrp", "0Jptpg77Kh3deau9", "SlVzlSF6uSuvfKuQ"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'E8DcQ8iJOOJexu3L' \
    --countryCode '05hhEEtLYXwNSqqf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'i5EfR62m69CVhj5f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'zviSEvCaLKRHejyb' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["OMmUnVxoKhwTbTbK", "MPSHQxXqOvxHsJry", "SSzAqFy3YiwE1HRP"], "countryCode": "9eJmHnpNjlAsdTZk", "countryGroupName": "HTMX8oZZYKAQwSG9", "countryType": "COUNTRY", "description": "g2eCyxXhnQRE9BZ2", "isDefaultSelection": false, "isMandatory": false, "policyName": "rNrvhVeQS0r9GOfP", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'CuLXj233RKCnUmHA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'fWcUt2fMQNGm4xfL' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'UvG6yNxX08x4CKJY' \
    --body '{"contentType": "G2X1W0JqdSudKRaI", "description": "0ewLkguPiOmbVzom", "localeCode": "dIdQGUYP4W9e6DBM"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'CNLaY1Pbg2KoWh1S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'XWyvl9maPaTdinmX' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "57cxcXPa1VpS9rse", "attachmentLocation": "yKmBvIaSlMa2lOtb", "attachmentVersionIdentifier": "p1RnyuBNcNOowSS8", "contentType": "mcUg91aXCs67TQ4b", "description": "leRHLa9SHSyDoLOD"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'PEri0YnFX4qaZrt2' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "bx4VNr7pVA0uc8l2", "contentType": "mRBvPuA4yIsVJRZM"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'KzGVxZaljRytj3b8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'aYtfDFDrJi9HbQrM' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '9DwKYKnLTUNQjRBT' \
    --body '{"description": "W3oCKyVokaA6kXQo", "displayVersion": "f8EJLo6twEsLziaH", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ahPaskesxVomlpQ2' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'AGqEAKt1d0nnTZyd' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'W2GcmtsLP1Inc7xN' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'OWRWTCo6zMS2VOzs' \
    --body '{"countries": ["xC25U193k1yOjKo5", "WUR0CboeUwcccBYx", "DWpnXQw1lPCnuPW1"], "countryGroupName": "KlXDucW39hn8tAn4", "description": "WuYqjVqAmwtv6uUY", "isDefaultOpted": true, "isMandatory": true, "policyName": "SNsdggh3YIeqwYUi", "readableId": "PbFO07aduTh4VKNS", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'MQZPdDOMe0V1fhrz' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'WdoTUsJLDNTYpcma' \
    --versionId 'qTCcrLGYjQHGCjEl' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'sMEynackVXIicl9P' \
    --body '{"description": "KVGnePf4VZJqdK2Q", "displayVersion": "u4izJdEZwB214jfA", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '44' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'TyUUR5BqY2dhJlIG' \
    --publisherUserId 'hDQu0JdIGtK6dWXu' \
    --clientId 'S2fq3hYywzmht7xG' \
    --countryCode 'Qitj2lCAdAswMFpi' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZwmtPoDcgtS1DdwC", "policyId": "Hz0uDUUVf1f5QLry", "policyVersionId": "21Y3SYl1eGjpq1zV"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8i9iv86IGUfCvgbm", "policyId": "8zAlhD9BetgOEFDB", "policyVersionId": "JtSdTvxAUGPCzkzR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "clCtzH85d6kjuhUy", "policyId": "eu9BXx82Z0HwBXhp", "policyVersionId": "gQ4pFmxkpsvFdOJX"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'vwYrNtyYNTupgB49' \
    --publisherUserId 'Or0vXhfHF1tL1eyc' \
    --clientId '8Pmqd6iFVtrMZ762' \
    --countryCode 'VFIsVeDtIr6bdfRg' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'cyGL7fvD2usguiB2' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'OQzj2kFfCXnciFjf' \
    --body '{"description": "BLyQwvcoXidvC7mY", "displayVersion": "YuO3bHzbCIAPAzr7", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId '1tQ5CfHUkXZdw2Vg' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'b7xIfbhetQSQnxzh' \
    --body '{"countries": ["8UGiNaOMuD4KKbkD", "iHdzdMYE3G8ap9WX", "tNDnYYo4FeTTmNlF"], "countryGroupName": "eW9oIlOFN2Cnhakp", "description": "AslILYQ1L9eZbSDM", "isDefaultOpted": true, "isMandatory": true, "policyName": "V6WrdSsava88bLcf", "readableId": "XVhzi0ttNpFUIiCX", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'EabYpFwzd5vEqGf1' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId 'zuCbCFxpHyjBQT5M' \
    --versionId 'zhdSBkQKJmZHhYwv' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'Pf6Iwt6XKpj94VtV' \
    --body '{"description": "pUSxdU6fav2CD7jL", "displayVersion": "xKAeaz32x0efCRmc", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '69' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'XfCTDHpMz0asx1bP' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'Jc5dSVEPARHX6djt' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Iez4dQOqOT7QFSOi", "policyId": "x8m0amw80juvNO19", "policyVersionId": "jBiQZXhMLZUZ9d5x"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uIAWyvpvu0Vzjh5n", "policyId": "Kx48ztOcEYXIFVGU", "policyVersionId": "fTYvP7Nit346wpMA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vvqpe5GyWrfCpHfX", "policyId": "R1rjyZYJKhCwt6Le", "policyVersionId": "8hrXd5eDvQQITCOS"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'Aw2bomCX2Ze0PnZ1' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9WnX0TsTu4R1Wtql", "policyId": "rGWj4SlXdXaSv7UG", "policyVersionId": "VTbBdGhkFmiF7kOo"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Zdw2yby0zZhGO2vs", "policyId": "GjivmApN7AW80G1Z", "policyVersionId": "tcBQpF6zgcGPYWfr"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OVxVW0EfG7KKy390", "policyId": "kHJbFcXTgWtZ452e", "policyVersionId": "bcJuxbAVi6W3re0E"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 PublicIndirectBulkAcceptVersionedPolicy
eval_tap 0 65 'PublicIndirectBulkAcceptVersionedPolicy # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'p9K9bBfd43qq8nYK' \
    --countryCode 'TaotzAJoVMRqBYdY' \
    --namespace $AB_NAMESPACE \
    --userId 'tLgLDdrwoOnjdSBs' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NdaEupFw4NTlIOO1' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'GaAqD3VdmD4Xgxkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'SXlgPjwTRBi7MQtc' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'u6xz0sgYIyvfAXzh' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'nV6TJkD88cYw5eTu' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'mPVi63F6MGa7JGET' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'b8T0bMG1WoHN6lzA' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'pViPcDdAYN1Q4ECN' \
    --namespace $AB_NAMESPACE \
    --clientId '8mAhqfBE1SnDDEWa' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE