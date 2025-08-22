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
    --userId 'E6RM8j7S5VqKMLQr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VfRirq1CDsyvj1qg", "policyId": "4F76whMpradqLkSN", "policyVersionId": "NPwOnBEaP0XScTYb"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NpRSZDiLBxIXiCOU", "policyId": "WbaHRq8eheudITjd", "policyVersionId": "GwO8FnG6aZfJeybt"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OcP0lyHBlE0VSWdB", "policyId": "HWj0NJX89WEjb2bx", "policyVersionId": "XcIU8Yq5jk2Op5WC"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'sAsMOHFWWoBi5EKo' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'MdxjqJ8iS3y8qyKd' \
    --limit '57' \
    --offset '73' \
    --policyVersionId 'HDbwOuFzyvOoXJNa' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["aBAtcRXse2vzeKR8", "nO1HgqBZzYM4POPS", "NLwzlSldKtjZ4e1s"], "affectedCountries": ["dsL94XyjPmWIwE7Z", "AiQgZjCYTDAFySKp", "QqUpFZQd6LPBacUX"], "basePolicyName": "RbpOMuiriT0I6W4v", "countryGroupName": "mDLko2OR8er0k8Js", "countryType": "COUNTRY_GROUP", "description": "jh4bIrfEeByMNyzD", "isHidden": true, "isHiddenPublic": false, "namespace": "gdihJsQgL48VD4vA", "tags": ["h8maKS07AN6OqWfj", "edbjdp2lVFZeqXJj", "WtTDrWcRbh18eMpT"], "typeId": "jjDxQctmjZUGj1sZ"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'mnJvgwGc44csOcZB' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'QzjZGV5E4tTPnIzT' \
    --body '{"affectedClientIds": ["d2FmOZHSQFUhOZfU", "UXnJlwF1cAtXRccy", "3ZPlmBhtleD25Crs"], "affectedCountries": ["chOxKMHZ6WzryOqJ", "tjDjFxXnmPEOTOS2", "1v2ZrUyG1uebpTds"], "basePolicyName": "I95gMPnkpomLBUot", "countryGroupName": "CdV3OOiTsvXJNZGy", "countryType": "COUNTRY", "description": "CmFfmgEH78mcPij9", "isHidden": true, "isHiddenPublic": false, "namespace": "PNSheNrSt1zxkvQR", "tags": ["BLX9sbrIXgFdmCjs", "qr1GChsixHHINWdB", "xZXbU3lK10zCyTCQ"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'JTtTxlCLT5xXOugc' \
    --countryCode 'QDaAFHAEphZt0w2i' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'z0Wz9zT9drxKVxoE' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'JkEU1y5xhfkuH3Tt' \
    --body '{"contentType": "wyjgcKz529D3iMT1", "description": "UJTPqJ4UN2QBLwBc", "localeCode": "EIrJTGQmkn5HEch2"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'tKBbmj39oZwXUuRu' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'CgMC0tTqakXN6AeP' \
    --body '{"attachmentChecksum": "Om7nsbJUp6VRCy5S", "attachmentLocation": "yGdgD6R4bbqjmQyW", "attachmentVersionIdentifier": "Pwf4sK1zPTlBwsHS", "contentType": "YeWORf8RxpBh8dPh", "description": "Uq6Yi4pbpptu5OoB"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'XkmWlCpEBEjWWCzi' \
    --body '{"contentMD5": "3CHtYozNQopcVOiQ", "contentType": "PgGohCnGq6MHUHdM"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'wx7k7lMOFw7hUkCw' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["91Et0zmgzOwq5KyJ", "1dCHTo16QHZTXWb9", "8S8HgXJqGLdxCAJq"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'bsFDvrifsE0CyVlc' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'jQ6P5StlDlRR4sA2' \
    --limit '92' \
    --offset '90' \
    --policyVersionId 'pyiCvnBEIRvFuf2H' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId '6jp32OWBqhGKZ9LS' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'MFa6U8rWxVwjuJKZ' \
    --policyVersionId 'a0gWcmeLwFMqpp4R' \
    --start 'wL53Jn05gfOzw9ad' \
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
    --body '{"affectedClientIds": ["0UPQGlNlwmi68tdl", "PD8L5PCjnitrmXIM", "JFL2PrHax0GKEcPn"], "affectedCountries": ["9UdrWBcPICDiOdLb", "T5Kxf4YpqoB9w2vp", "1BcNZDQM8AOLyDzA"], "basePolicyName": "1kmumPTVa6WO703z", "countryGroupName": "7loyt74qw9otZeAP", "countryType": "COUNTRY", "description": "cqlzFW9G9HyVFpdD", "isHidden": false, "isHiddenPublic": true, "tags": ["9UkTBddDnn6z42dn", "EYwzl5ZhstTPNqF0", "wXMtTG6C0ApXhwIY"], "typeId": "NXfp2EySSrXzG75J"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'SOIfgpTl31tgvofi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'cVX9kCi21R3Nnxlw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '7FhH6jGHiSveizi4' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["w5ekxnd1qKtUb535", "AeSpwhL6BAT7KvYJ", "elnDdYcZLdQmsq0L"], "affectedCountries": ["9xk5SKKb7RQsI5mv", "GFqPk07FlqxYDnnZ", "W6SnnAAIwceHjTzB"], "basePolicyName": "6TY8FtYcFYYB4Bq4", "countryGroupName": "6gPlCu0FbQuChqyo", "countryType": "COUNTRY", "description": "JzgC9xaznruAQHet", "isHidden": false, "isHiddenPublic": false, "tags": ["5f9yWvngGug0yIRy", "mYBy9Xad8fG1dZ5h", "FBgWRSNLSwuYQvAf"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'Vcjqh3pFyuv6OkUO' \
    --countryCode 'e8mo49F7ViXsaubs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'mkynPnxpLgyuqD6o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'hULrSB1d13MZJlqN' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["icC9jZ2LtogwPq3w", "PebEyNCwFoJZWlqd", "vqnbpm6EyqYyZiWx"], "countryCode": "Cq6wZPfMk4aZH6Dy", "countryGroupName": "HxllvtwVY00E1LtL", "countryType": "COUNTRY_GROUP", "description": "FEC7sNbbquRZDQR3", "isDefaultSelection": false, "isMandatory": false, "policyName": "lPmY9k2zIvaRuiIL", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'rUuIvETtJkgd9wv5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'BGEh7HWlzvhtlAhH' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'v45ytL0ze5hWYk0U' \
    --body '{"contentType": "FUjvkjLEs5OTwBXS", "description": "jp293gNJZOUjixo4", "localeCode": "d5ldByFns40sWRjH"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '7haQucp6ZrBj9JtB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'mPhp5WtPUVpuh22o' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "m0GKEzZoME9GQTPW", "attachmentLocation": "bYpLxyJVzjp9c8Js", "attachmentVersionIdentifier": "m2oI8sbG3EqqXszd", "contentType": "w5Ofcm6eCvJE1IVy", "description": "UbwD3xBJO5S71MN9"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'mkPVmDAVNS38MzUX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "wbz74cUrhEdE8mIh", "contentType": "MkdXyrqcR4vaGPv6"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'ym5ttZJc7AQNDS2j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '4gvsd18lSQpyoYTR' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'PPbhoJq6GvHoe8fR' \
    --body '{"description": "I7devzkvlvTxbdoS", "displayVersion": "Al2gWNCHkEQb9auY", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'DQ8BCX2qn0CPDZvH' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'CjJWYfYqt0XdoHAq' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'm2qujKb3zGNYd541' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'wRtGamASoASDobkN' \
    --body '{"countries": ["dB048GLhhHwDzzvy", "YHNOc6rYFWOWrfII", "JlUFrKgx1cp5enAt"], "countryGroupName": "oard2FWSrhFbciUg", "description": "84JqDjpQhMBmbLoa", "isDefaultOpted": false, "isMandatory": false, "policyName": "XmF3nAHYwUhMXMjT", "readableId": "awA9uk0EbZaW62UE", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'D35r6ZcBgc2zYwNs' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'eegdOGKNgQ4KRrdD' \
    --versionId 'ToWYEjxqTlpYZOfn' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'hmTLAp28S43wGw7M' \
    --body '{"description": "nmmQ6wGLPdjnz95r", "displayVersion": "3t8BkibCqxGgMdtF", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '55' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'HHFcofLhPH8w65pf' \
    --publisherUserId 'f9S460Vuend6XfxU' \
    --clientId 'ncuOlum3ZCVsJVWr' \
    --countryCode '8nWCWFcMdkVghFKf' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uEaZZVrPuKYpeVhG", "policyId": "VsPAUQe51zRui8pL", "policyVersionId": "CwFd2Wo6Ns4RRCSK"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4O9v2T7YhZRWqSD0", "policyId": "2VX1PsnO45Xe3WTC", "policyVersionId": "p6yngKscPvPKg2Ip"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ha7WDLGumMGXmq4p", "policyId": "p9D3KZSoRstaXCNG", "policyVersionId": "F62t2mZw2BFcsYLs"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'h5hvk1yOEW66bZ6m' \
    --publisherUserId 'KKsrUOOAFJ5h94WD' \
    --clientId 'tIcKmgXhMxICzSzC' \
    --countryCode 'gfaI5xgzp4i9FK3J' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'Zu56rJiJxhFCmrCI' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'J2XiCHA97C3Yh9XH' \
    --body '{"description": "QNQmiebpOtIMzozz", "displayVersion": "H0fyxBmp45NZztFe", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '5Ap0E3lljGjV1JAq' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'HuB8k6UIlwcvib9R' \
    --body '{"countries": ["QFkqULerUHGFd9DW", "TVMBNMjKabFBpV2e", "w9cAw8pWotgDkEB2"], "countryGroupName": "q0Ctj9bSVlwxVp2n", "description": "xbmGxJgqMtaftTAD", "isDefaultOpted": true, "isMandatory": false, "policyName": "R0YdZ1Y1OnyvR9J5", "readableId": "c0OLqhkdSBYDf0cd", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'XwpcXaVImT53xvli' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'c9MWGa8PCd4aRZjW' \
    --versionId 'BWBSgKT1yyrUVhw7' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'NZDYwnS6Vs2TZO2N' \
    --body '{"description": "6em75Mg4LB8KUmWm", "displayVersion": "5bjAYHwtcPbsGPk8", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '70' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '8zZePAXPkm0D8xlD' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'WgbRgeTNcIuwbELD' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BxTV5nLAbOsQOdfk", "policyId": "bOZouk4We6trNfaS", "policyVersionId": "RZYuXmf8SQ9jJZ6u"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Wv6XMemggcYTtuBB", "policyId": "hpylGDTpgMGuvZoU", "policyVersionId": "oqLW5utFcUE88ovx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "U1eatS81AFgLwR0J", "policyId": "RgrgvF3b111Lp1W7", "policyVersionId": "lU8tRf5GA1D1avPL"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'P72lXCTwRkJJN85T' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WcOLV9OgGaWu81K8", "policyId": "YTh3QA65bjV26wmQ", "policyVersionId": "zxaow3gwq0sc7b1X"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JKy0F7vofMvVVdTj", "policyId": "Nz2jsTwYEmGYhobB", "policyVersionId": "GsjXruN6daAfEjxk"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qNTCIf0bm6exojO6", "policyId": "qnKYA0Z8dwJhflGv", "policyVersionId": "O3YpWqKiJaNxO3H6"}]' \
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
    --clientId 'M14nZgMiFsxDV7tM' \
    --countryCode 'qLpkBA1PkrVo0t0j' \
    --namespace $AB_NAMESPACE \
    --userId 'iLQaP7LngWVJZ1dN' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '6rMTtHCxukvxrXZ3' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'PJqDXxmSyOAe4Otg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'EzXxI62ElXOJr5AV' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'AxP2NIAsvICZ3ecS' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'R9mLIkBmL6DiBE5W' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '16GD5TxciS5mNmtl' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Pky0VyzBh2LPjXpY' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'l1VWSFJPl0W3fMqc' \
    --namespace $AB_NAMESPACE \
    --clientId 'Y5utruhVZRwBfoxh' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE