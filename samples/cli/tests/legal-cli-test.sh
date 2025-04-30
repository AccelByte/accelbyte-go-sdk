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
    --userId 'w2htgEFduekZV3Jk' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wgvD0iTx7CjXzBZH", "policyId": "WuE5gxPxzdLs10t1", "policyVersionId": "heppE0DX8fD6vanX"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hAOZYIQaoTRpVRZN", "policyId": "cNNVroe3oqWZMClQ", "policyVersionId": "COzRQk5i227VnQCZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UOgzgP0IRp6ZvJu0", "policyId": "avW1Di2yrdlXRTIw", "policyVersionId": "3WK4DSDXE8oBho8G"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'VInMxvK61xHqY6nA' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '2xavCBzcmN5BJjlI' \
    --limit '41' \
    --offset '9' \
    --policyVersionId 'XD7GmMOImi1yMxmv' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["Vhz5YYBhQfEWIIeJ", "ITwQHzsJCgc7WvbY", "HBeNGMzdfFjv0QOz"], "affectedCountries": ["0zkdWqCqP3aMpbS5", "L1XTgllBX57yqFZb", "cHVaeCrD6YQ2KI7r"], "basePolicyName": "sDcPqUuK6oV1TPzu", "countryGroupName": "wRn01iME0v9FTpT8", "countryType": "COUNTRY", "description": "KA1Usm58eUZOUrF4", "isHidden": true, "isHiddenPublic": true, "namespace": "L0GTPDFMvHQjGSqr", "tags": ["DXYHGgGSHxcagQrT", "jVb4hTq0tyzBuOmg", "VzRdLcFRXal6Zxzp"], "typeId": "VHsOoly4YlqqQgwx"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'vS1ZNBp2zK1GCHOH' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'jOj53cs2hIdtIoWh' \
    --body '{"affectedClientIds": ["OvcpY3legT6mjWCo", "0eKYP3dLSyDjc0zw", "B0Wn6oHz2ORZubrX"], "affectedCountries": ["jrDd56j1Nvt34kYm", "B4ye3eny5c2mP0eP", "Cfw4Ket2PB8XSx5H"], "basePolicyName": "PTQBOguBHGInUaeS", "countryGroupName": "N6eip3oIDIQfVYdW", "countryType": "COUNTRY", "description": "ekOJ2FRwJPCd2iE5", "isHidden": true, "isHiddenPublic": false, "namespace": "8NavDAeiIdEgFYQi", "tags": ["z3ClsISlblnbLfER", "iWdNI3uw8LnV4Geo", "aDjC2kvjAMuGvvFG"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'JKXdLfILTM4Daqlj' \
    --countryCode 'C2oHvkeOtZgBfUgk' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '3AE2wIbZLXOjFgoB' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'qLHeAnJrJsQVb74V' \
    --body '{"contentType": "L1RuNmtHNWlOREch", "description": "ISViQCJpl54BhX0W", "localeCode": "uCgLTgv8p6dmHVCz"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'SidLb6V0gjhFzqhP' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'zhKPsKmfCFu0yOJO' \
    --body '{"attachmentChecksum": "1vXCOqddAWR8eeeQ", "attachmentLocation": "1I2t3fzGA8cU00Li", "attachmentVersionIdentifier": "f9mkgC7LHLGldQzG", "contentType": "gjxFc97pZ813tH1c", "description": "qYm6c4DkW2HmIlMl"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'TItB6aG0E1ZIBMst' \
    --body '{"contentMD5": "aBATRXOFMh3oT2a4", "contentType": "pfqzaajeXfEloq83"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'R5wtNZzY5pGNmCex' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["37xOnNYZkrZpQY59", "u6MrlKNai1mY5bSW", "DLruuVlhf5uZInRm"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'XRfZjVLjnayjTicV' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'WZAcs5isqiPrQw7w' \
    --limit '88' \
    --offset '25' \
    --policyVersionId 'LJIwsn1LyppF4efW' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'AJ3pKLrjR51i4IDq' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '9vdwpuCBeogqrQpb' \
    --policyVersionId '0IQqDjF5mG9S18wp' \
    --start 'cRUts0Nmm22QrqmJ' \
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
    --body '{"affectedClientIds": ["7tU0ctdeJdNFh4JM", "xtR0YksZP8H9mtXQ", "SP6Ap0LIZfJRavJP"], "affectedCountries": ["vr1rndQ8g5d7lThL", "NVgnbxFn25WLz03U", "SoALz1nrjwZAliM2"], "basePolicyName": "KliFGVy1kaJuPnzb", "countryGroupName": "Hd13SWEZrCs0Cm4F", "countryType": "COUNTRY_GROUP", "description": "pbWpcLLOs9j39QuI", "isHidden": false, "isHiddenPublic": false, "tags": ["GWBLVvf9d2NNT2Yl", "VCanlITHNOHqtbyo", "envd9h90w1lEiKzp"], "typeId": "e2SgovS3idbVqM53"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'UkeqkHRI9F3myYwy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'zlsCWTE8azgP6G80' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'jADqQpPWQyb4uUsr' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["d2GdAUXKP7H3lXbN", "G7aapEX6YQ83ZEMw", "zEm40n3PILSIRETm"], "affectedCountries": ["E1ri8QDGoUOxFg3g", "yGJxE5HxdJbGomA3", "Y9UDunHY8UZZGv9c"], "basePolicyName": "CU5KvULdzesUmwKk", "countryGroupName": "Tm1Gz9ualqarOJev", "countryType": "COUNTRY", "description": "d2lz3beVnoDhAHPt", "isHidden": true, "isHiddenPublic": false, "tags": ["j5YAClxyUCweWUHm", "jRgnWdzSEmNYZiPQ", "Qyq1lwbF7Mvm4qij"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'HWwnVd22z6FjrMW5' \
    --countryCode '59cSdYYzv6KjIb2f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId '5Um4LtPh9zG5MlJJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'QKpkxa73JAdN3iu3' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["UBa8WkZyHdE436iF", "nNCKGEKA4pIuldjI", "mnO8oScgUFwTLiGQ"], "countryCode": "QUjmasc4H7KIg8jc", "countryGroupName": "q3AM583ux19KFaGO", "countryType": "COUNTRY", "description": "shGgN23PqXa7S7et", "isDefaultSelection": true, "isMandatory": true, "policyName": "idR37X5d8qKTTgSJ", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'Yl3xHa1IKAFPAWDE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lT1GvRC9rZSgMLjn' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'AyGeBW0ftktOZQ0n' \
    --body '{"contentType": "ahRyygiLQA05Qkxa", "description": "ewiInu1x0c3ec7cR", "localeCode": "tj86ShpzKXOp3n6N"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'xJ8YzZ8rwUUOUHPa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'wjxHb3Sqkmso9XiL' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "QayseV0d9taiPZj6", "attachmentLocation": "93CexHtqshzI85km", "attachmentVersionIdentifier": "AjRDhaBfFAa97QQb", "contentType": "cdCO9M4l4bnJPz3p", "description": "C8gIpGZ78Jqb1glU"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'sEvuHgEPEog6K8b0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "soJOX2vntjI2ogZd", "contentType": "h45hmBeQxdASlQcJ"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'NsBGjNX8K5laL07B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '12sJtiwAPKbWn3xQ' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ipIK1gBr3AJ2vRSu' \
    --body '{"description": "nosjIiRkPIeocQmy", "displayVersion": "1zk7eaIwFNA053BU", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ahtRgI1VPvN0FLoN' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '03SHkL8vuOM9bX14' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'UKf7g4iabClNQusP' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '2O5NO6uUHkMx3inL' \
    --body '{"countries": ["MIYbUMxvGtdlDVug", "GWMyUBc5bpioAGLt", "CNVNeplvp8PDpwe2"], "countryGroupName": "dFx2dHhTpQ4xO86Z", "description": "j8d7JbYE3Cb4k4MY", "isDefaultOpted": true, "isMandatory": true, "policyName": "xXgI9nY3DjxDkfv4", "readableId": "2g1PHWujBcVcTpF1", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'FtG8tfaGLcv0zMuq' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'cE2tchTDxNDm1et5' \
    --versionId 'XGK4nXlDN90MWBGw' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '8jylWpQ1sl6qv2Ok' \
    --body '{"description": "oISLvFmxI8ZIMd3h", "displayVersion": "tmOC1Ho3uNaXUkqC", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '69' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '4Obie2FFLcdgaaTd' \
    --publisherUserId 'LeVQTHjG8qI7YY1Z' \
    --clientId 'gIVx9oFruR0vNYBx' \
    --countryCode 'G2YWSgwJiSWDDzae' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OESR3s7lUPDRM0Ol", "policyId": "j6LrrDwxdyw2Xl6V", "policyVersionId": "pWHKvj8cu3uuBvxl"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xiiE6A11DTyVvSIW", "policyId": "3DHursWJyaSJ2SRM", "policyVersionId": "ygEGjSX64yeVHTLT"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qZ47g9fObhBLHEp6", "policyId": "Pq7otzDFxMbFamK0", "policyVersionId": "InKl5IOzdVcYSuUC"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'pM5B765QgdcB4mR3' \
    --publisherUserId 'RcL8KVibWPZLV3C3' \
    --clientId 'm7fhP965qZX6YVJf' \
    --countryCode 'VzZ3DF0tPkQE8NNo' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'FWm4bgtK7O9d6xC1' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'quW3ER2oOzk8GF7u' \
    --body '{"description": "8PGcBnxPudVPbaDb", "displayVersion": "g1E1xjAWqOKSBbO9", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'bhiPLSMSMenNlJvx' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'jS46oJsT2fo5nmRv' \
    --body '{"countries": ["o2oIwhWnyo6neMyj", "nPjhWLTPUZAYrhHS", "Iuu8QAdAsjTkfoTI"], "countryGroupName": "ttN303uxfFpbsyWf", "description": "O4HN7Kq6ejPDp3ku", "isDefaultOpted": false, "isMandatory": false, "policyName": "alB11fTeTfUPF2Ed", "readableId": "0Oge13aY0lgkCvxH", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'L2lFMTe0ffuzgFLI' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'f8HqFlf1ngySkju9' \
    --versionId 'cosrM88lEZTabI1z' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'w2cKfidxnWKc4E4S' \
    --body '{"description": "MawNdn8qujIDQvkY", "displayVersion": "yKSxUDgumtZoPLQ0", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '93' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'VI7RtTeciJkJk5Th' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'c1wZyTQeGSsOQs86' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3X95ixvCWcIukeBB", "policyId": "Gdj0ETn6TtM2OOPZ", "policyVersionId": "eY33FdBePuPJjLqh"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qB4ibn0GXrUO2r7b", "policyId": "36VziR2IyCOM8Ihh", "policyVersionId": "ZgbaH4AKoE0aIqTU"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CbNDPYQ6JSQnNMHS", "policyId": "K3O7rA5lEJHHYxB1", "policyVersionId": "g6tsLfMPTEQpkDbs"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '19UmwJDZ2W2Y6yO2' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "nnVwBCyAL6ajhBHE", "policyId": "wcuZ8qsSICratP6x", "policyVersionId": "FTnp19dyHu3KfumU"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RolkPfTYrDsZx6qq", "policyId": "vc6isbGW1whodjKm", "policyVersionId": "Z4iZbyRONDUZUM7j"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Cbj1ovJeuGmxDGVO", "policyId": "hLVzHTlDihJha9Bj", "policyVersionId": "TfRPleRPkOp6u2gP"}]' \
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
    --clientId '1S6K35nIGctIjCfW' \
    --countryCode 'MK0nAIqssCWPWnz0' \
    --namespace $AB_NAMESPACE \
    --userId 'O4PXQD4dd49XzaEy' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'h2KQZmF6aMRcT3IG' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '2we0wMp9Q1eej9X7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'esnFwGdyjYJulpZB' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'lJrp8JJX3mP1ZYZz' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'V8rOjDA60m9QRcrY' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'Geme5MVMBrPR3VRV' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '6ai6FJhcwDfHZASC' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'T8Ocu4Tg6EC1BZzU' \
    --namespace $AB_NAMESPACE \
    --clientId '9pQllRERFPPJ2GhN' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE