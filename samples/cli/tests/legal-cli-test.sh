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
    --userId 'WrexNlRQSVRPvEwi' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4TeCeWaLeYxBhBZK", "policyId": "KRPvgVpj95ZC0nHb", "policyVersionId": "ehJSgwY3XBzMhGkf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FY54g8TDLEgxluwz", "policyId": "Zr6y0yiYC2D5OXPT", "policyVersionId": "mD6ixEJHhO5ZNip8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HkAmwpf5YWgA8bb4", "policyId": "UW1MuRSMLPMw5IOS", "policyVersionId": "TLjQGFKWBYpB0cMn"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'lvYZt2tPgDPEHw1V' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '5QNlecG3rwhCImwR' \
    --limit '90' \
    --offset '85' \
    --policyVersionId 'IIDwJuDwVukc9n7c' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["eWQjC9Cl8WADjL0h", "Jyn9Ekk2WRPbWHNJ", "VsuvZysdrb3G6yIE"], "affectedCountries": ["N22Ow26IApiELepQ", "NS3NmohbCgQtuEPu", "i29kMIpDF9xiUJDa"], "basePolicyName": "Kkcr8630iNe8mANs", "countryGroupName": "XzwOnUglQbC8whra", "countryType": "COUNTRY_GROUP", "description": "qCkvedfEKsd7MU17", "isHidden": false, "isHiddenPublic": false, "namespace": "6SxzAQPanfDEwP0R", "tags": ["GnUJ0HTxv6XIx3p3", "X4Xx51cCwvIYGSe4", "gSDacYfz0skh5Elp"], "typeId": "t2JjfIS9dLMdA5rQ"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'k36RQiMMRg7V0Xs7' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'FHFajfXMBXQ7YAZT' \
    --body '{"affectedClientIds": ["SwZodehSndXfo7g4", "5GL4CDFt866tV81u", "YQnx8sydnLO9WuBZ"], "affectedCountries": ["uyuxsss59T42qq4S", "MfYQUVbzvezQEgzh", "XRsWB3zEUsGda4Qv"], "basePolicyName": "zgBZRxxYlLcXtg29", "countryGroupName": "5aGPFxtFaOKfmXBL", "countryType": "COUNTRY", "description": "72E7JJd0UUfl3Tin", "isHidden": true, "isHiddenPublic": false, "namespace": "PkAsJDDCbpCJ93VI", "tags": ["8tSrdOf3M02wWOAr", "Mcy5QG9KApErT0K2", "zpvghBJ2iSn3X78k"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '9XiWZk4zfOUzCnA7' \
    --countryCode 'hjUkiCrFxuYOvbNh' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '0ung7cDroeuo6Fbx' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'IOktlT9XlxNXC1e7' \
    --body '{"contentType": "KgJo2TKlJfvftm7D", "description": "99VMsDMSA0xIZPuq", "localeCode": "ahjCsqyh4iuH7Htn"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '2hR0qLEzT8XtihDy' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '8G0yuXrnM6r4AMkq' \
    --body '{"attachmentChecksum": "jnhMMeRPef9iDNIU", "attachmentLocation": "nNWMifpJnXovSKUx", "attachmentVersionIdentifier": "CGouu3HmJGU0grht", "contentType": "eNq2f32PYzefGhiu", "description": "MTeo0uNZHNrCUdKf"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'gsZwJjR6d2l6bku1' \
    --body '{"contentMD5": "TABU6vRougLMhc8B", "contentType": "lfpqDvUZJIH6Cm8R"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'sttS0YMzmA5WgGqF' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["DoIYelnAokl9TwGW", "BBkJ3YlPq03TpbXx", "3Fp3hQD5YieKGkDL"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'Dl4XGP6Y5zW8CHDp' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword '9UHqcO7csS73dPGQ' \
    --limit '99' \
    --offset '83' \
    --policyVersionId 'bl2rFajtmSHueMP0' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId '2WHbwD2bKGLkYTuv' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'wHJxhgZycnuEHweN' \
    --policyVersionId 'BvBE9A9JnExxu0jV' \
    --start 'gxRBBKFf2LT1I4lQ' \
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
    --body '{"affectedClientIds": ["pu3k6CfJUbgAIyBV", "yG6zJNRoa0aaoilH", "TGddCJh1YQaMI6ID"], "affectedCountries": ["9Iu2IbG8SiMAyEye", "etYrQsMzylbd7t0i", "jPUvmu5HwX2UEUZs"], "basePolicyName": "UJ0ER3ma51MwAQ2l", "countryGroupName": "whHq7jDg3k1lf32a", "countryType": "COUNTRY_GROUP", "description": "1AQAmZZJCGj19ao7", "isHidden": true, "isHiddenPublic": true, "tags": ["axPamSWYpJUrlBWx", "uGjiqEowO5GQl2Ib", "dYyWXRoOenp8XBhH"], "typeId": "XUxGf9p8AsoVgsIq"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '0wAop8acfiVIVGWo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'CLLUGt45PgXPrpM0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'TutVe7d3AeA8LzK5' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["knigdeMnLhVKquTn", "pfQw93MG4vYZWUPb", "haSpGRwnzZlPCKlX"], "affectedCountries": ["DqR2c2wtriSIgtUt", "vLW3YxzSBW8vOwNS", "Tqa3ZyRBzE56W6rb"], "basePolicyName": "jevG7PQNWvUMNZJj", "countryGroupName": "yq6d1lAfETjvCh3G", "countryType": "COUNTRY", "description": "I6tla13dJMfAdRnM", "isHidden": false, "isHiddenPublic": false, "tags": ["5g3K1d8KTFrvOcIN", "n79iXh0b9YJpNzYT", "Q547a1b6BmArbknt"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '3NJ4Eun3tqtadbsY' \
    --countryCode 'QD7mKk2nWQGa2lDy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'JsUhIJsozIDFGyrS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId '3rmnY6ZzIhqKNPEp' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["liwi9wYnYQUYvx4N", "GgvXahH3RGbZNAtt", "vAW70mMwMA2YsyuF"], "countryCode": "uJRU7hpGrgPvWYse", "countryGroupName": "UeeFiAgvJgoqMwk7", "countryType": "COUNTRY_GROUP", "description": "DbGEHvBlp4r7PBZN", "isDefaultSelection": true, "isMandatory": true, "policyName": "F2uZ4wVDUanBZ1bH", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'w2Hykrv6Pp4sAjSF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '29UoCHKmGalDsZUS' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'KCRFBSYRU4PGiKeu' \
    --body '{"contentType": "dJneqpr6wJ9cU2xU", "description": "VTsVMwSaCr99ohOf", "localeCode": "bgpnPFRS9XCF26yZ"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'H67O4y0DnNMFCynr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'FeTWU1Q42KMB4gHV' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "qqRSrRH58Yf40l3w", "attachmentLocation": "ZvTlfcUlmM5qHNI9", "attachmentVersionIdentifier": "keJFPzoZjhrcKGw5", "contentType": "I73gysXYtdFv92dr", "description": "DZIlwumWM0ES3RLC"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'qAtyGTjHM9eF5k9B' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "zhsrkPgreB6929YC", "contentType": "CdBVwhKAzHpvpKkS"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'xlTk6fKTyn0rmggJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'R737rz28SSjhGRYX' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Mx3R2QbhRSyJc1sn' \
    --body '{"description": "yxzXtPzle7DisgGk", "displayVersion": "ajEUhSagVa7jsLAc", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'LA01lOGD2dX9AJBR' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Trx3Ar5vm0f0bxhW' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'hoAHizwU8cGCxZX7' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '4Axc8ix5A7DCUgRr' \
    --body '{"countries": ["AprYin033PPOecVc", "97aRU1hfXVcNqvQJ", "qOHCPaTMzIHAvgNP"], "countryGroupName": "DDDBT6uItsDaPQxd", "description": "W4w0IOUP1pULd9c5", "isDefaultOpted": true, "isMandatory": false, "policyName": "GRTzVsXGCwTNI6e7", "readableId": "KyYhx7YtZKTS86cS", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'JbG6GWxSXarY6Te5' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'DMKcUZ7eNjeAz6We' \
    --versionId 'f52A45GPgafSOyon' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'eXF0TRa4WPvhYa8H' \
    --body '{"description": "PzCxeBNkQRf8xijF", "displayVersion": "NzgHhdt9FM6ApEJn", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '21' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'sCsk7ENYCOw7jXrI' \
    --publisherUserId 'hAcdAugZZYevCqm2' \
    --clientId 'nYfSQ4HKHDT94kmF' \
    --countryCode 'JRCMleaY0AvYncWf' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vhF3Z1MBi9b7q9DO", "policyId": "A5vpuQJ8JhtHxCk0", "policyVersionId": "HDJA8EPU9jCkjdvM"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CafZ47Bs8WLU3w3q", "policyId": "HTVPZWDZJoX5RaTs", "policyVersionId": "BxjgxptvF0S9KwKL"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HNuBLEgLe9Qwnmnj", "policyId": "LMMH1Kh6wSRY0acv", "policyVersionId": "gYSbuwGiXqoSwWcX"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'gq85o8m4DLGS1srm' \
    --publisherUserId '4ciKqrRSVsUpkgvY' \
    --clientId 'ZhCPns1ZCd7JeDXn' \
    --countryCode '8b6PTES6gFGDXrkv' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'vIYiJTdKagPXCoEr' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'ccTaZXuhbVa8HtCG' \
    --body '{"description": "7DpPbMXFzg17E7rZ", "displayVersion": "SrYZN7DlDeMsvCaH", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '0jVP5KDnFIBPwikY' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '8hY6iMOhckRJ2Vqv' \
    --body '{"countries": ["pL4cFS47SU4boKu0", "u891ibEdYfrHNybz", "eBblkUzBlV83uyE0"], "countryGroupName": "WiN4qTlzDyRrsR7c", "description": "f34sPtX6lYQh9hJX", "isDefaultOpted": true, "isMandatory": false, "policyName": "T2xRhgmJiXbkaOoo", "readableId": "Ka86nQXODAmDmSLM", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '91XjMQgyeQamzoSd' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'LqNB3uu1z8Jzb0zi' \
    --versionId '1giS5dqYlOw9580m' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'h564HrRI8EEK7HtQ' \
    --body '{"description": "lZS6KaumxBXOIQAJ", "displayVersion": "bYDMM3jZNr2hBz2V", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '50' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'DvaJ5LgEDSc8u2au' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'VMola75oVZIkY4k7' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "om1kJWzg6aF32QAN", "policyId": "kDpxb11khv7SSa5s", "policyVersionId": "zzW8bSOF3RbMnR7i"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "S3pmofJSJaTEc8Jb", "policyId": "Yeglj8doXdDuvWrS", "policyVersionId": "5ZoOGqR9DtoAZa2R"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "E9BpXBnpYakcI2nu", "policyId": "7KbA3d62Ddu53ax5", "policyVersionId": "x24R2ruil7QELvcG"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'HgnikMNNVUZCuImc' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DGdpzZVdPBQvXcQi", "policyId": "GBXEU6QmZQQZv2jd", "policyVersionId": "1nu79VqCzdfHUWxQ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fyUAurw42biU1mTn", "policyId": "nVyOQ7USp9UX6h4l", "policyVersionId": "HxLgObZ52JTZQEbt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YHTgOqjmCiS9dkPq", "policyId": "FP5GTcUcB1DWQMr5", "policyVersionId": "maAe00FE2Jrhn3De"}]' \
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
    --clientId 'WjLKtT9mbixf5fpw' \
    --countryCode 'oRpanzRWYcNC1Nm5' \
    --namespace $AB_NAMESPACE \
    --userId 'm0xlaxYPmrlAsgp2' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '5KKoCVjAa6GrxCys' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'wilw78wxobIET3TK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'nf6ozuYnnH9TCEQl' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'X63B4D02CMTl8jiY' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '3ubykIgoM8I1wjVe' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'PrJhyFpJ1B6bI2Ki' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'aIx4rGKB6z7Lj7wj' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'Nz8EaKnXatdovSB5' \
    --namespace $AB_NAMESPACE \
    --clientId '5TzmskAJt0gNbxsE' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE