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
    --userId 'pKZPjK3JDGlHsdNC' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3BoS1bgTaMd51jr7", "policyId": "mev1qku6pYM5WEon", "policyVersionId": "yvq4Wce6iEDXodlQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "AxrVm0nsFy45aCAy", "policyId": "YE7sCsmsOARFOabe", "policyVersionId": "oZ4oX9eGla7RO59W"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wdAdCQt9eTkJcHzR", "policyId": "1lXehm3jhREdF6Yj", "policyVersionId": "f3GmmI620czKyd1x"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'YmOdd3E5KDgA5iwD' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'HL3AaZ2IsUxsHBgN' \
    --limit '54' \
    --offset '25' \
    --policyVersionId 'd70EqD5qPzDMvmK0' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["HrAN4e0RQW3ZK5BH", "Rg7Puj5YHNmMoXju", "zbCvyQcRistfSLGy"], "affectedCountries": ["GgYyNe1ssDU59kIA", "7RmrxeZzayXsHiIL", "t96svPTTub07zjyg"], "basePolicyName": "PqiIg0YRezwSOAQl", "countryGroupName": "fXrE4fQ7MTBRT2tp", "countryType": "COUNTRY", "description": "oI3N7PvVvAN2WO1F", "isHidden": true, "isHiddenPublic": false, "namespace": "SR0aDfeLfEb3g482", "tags": ["ir58FzHT6mlN4YSM", "sgASYElIbQ7DMlpf", "ss6cI0hGAzvuatcV"], "typeId": "LnRJ9VyvU04A93CW"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'sVp6f8lH2j6ssbwT' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'Hj3Xnx39RgpkGB2o' \
    --body '{"affectedClientIds": ["QsJNJMPGA7RhHliy", "L1makHpa0MUpkl8i", "nfrwCzvFrHRafv22"], "affectedCountries": ["IPTv9JvFwDTpDyV7", "jSdBdJZQDbjDuLkW", "pFUL4GoHgg9fgKib"], "basePolicyName": "jXih6zGmftmH9vZm", "countryGroupName": "2lu4k08UsDmq73pk", "countryType": "COUNTRY", "description": "9WcaeSPxZs9aJmlb", "isHidden": true, "isHiddenPublic": true, "namespace": "0zDM0SaCgGQDdiPP", "tags": ["7hjScp0xPmaNTho1", "Owt3jzUfQMcpiFik", "wWdT5XfsPyPBBzwS"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'bcfZ3AgnZGZCXQJg' \
    --countryCode '0frlJqiXVNBPnkvq' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'IgbpWcGlbQvcw3I4' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'IqH8tRBnAinODJdB' \
    --body '{"contentType": "JVSofPYIRMjGwcVy", "description": "B726QpOEADjlLhb8", "localeCode": "z4mDtQznO4h5hQXV"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'e5LQzo6nRhWLWoEB' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'E2xL2W7okv2djk4M' \
    --body '{"attachmentChecksum": "NuCYI9iRgiTDus3B", "attachmentLocation": "Y6FqRdvmck6UOFcE", "attachmentVersionIdentifier": "Y2L2jkWKbPYZqUQ9", "contentType": "x12TqcRpRI9IZ1RA", "description": "HtfD9jP6z21yITHA"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'sDO9QwGKJAk9c7le' \
    --body '{"contentMD5": "zCGWGqm5KvNwkL3J", "contentType": "9BxM3cb4BOBzqOOL"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'IIg3pbTXr7PoowRs' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["EugFNmC1KUmGVCou", "YSbDadCSo2tnYIUD", "OveyOxDYOrjDNKwg"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'jIjCD4FLWbhfw9i1' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'uzpKbgw0bytyZtVE' \
    --limit '51' \
    --offset '46' \
    --policyVersionId '1M0V3CwqYq9Pc1Mg' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'bDcblt1ab3Nz6Fa2' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'gQYdE2KoTvsB0Fr6' \
    --policyVersionId '4wYVgtR7Dw8U6YqV' \
    --start 'cCQQV2BuSWmJnktu' \
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
    --body '{"affectedClientIds": ["6Y9Yhdji6jeNufPo", "WUxIjJ2v1snK8d0l", "rnXOleCepYeMAoRq"], "affectedCountries": ["ITNILM2A6quxOuzE", "dBxylaUpi7rclZX3", "Y5AwkJG9HATeD7wm"], "basePolicyName": "n2mwUyaG92uQYvKe", "countryGroupName": "Oioq0lZVbrjZvkst", "countryType": "COUNTRY_GROUP", "description": "bL7QciQEPQAr68Js", "isHidden": true, "isHiddenPublic": true, "tags": ["P4ANtxY9gdES87JY", "rk5QifB8I7JxRGrj", "ZTgQoPoF9mJp4poh"], "typeId": "NhbteVFhzX5S4tBz"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'MWgXjxaWacwudL0D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 's8LviFo4TCPetOD9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'imS6MLOn3Rd8HeXh' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["dxj45E7WKZqWVFYR", "5AvcdfEmNfdmgKmR", "b7vIooJJEgH3Ix5c"], "affectedCountries": ["9eZF1k6J1lGd3eBZ", "uWYDO7Y4wNIDaIC3", "QMNGTWpoIqz6MuKj"], "basePolicyName": "hNjgE45ran4gUGta", "countryGroupName": "hpgh5DwgwnwHVh5N", "countryType": "COUNTRY_GROUP", "description": "L1LEcet63PBlJEIP", "isHidden": true, "isHiddenPublic": false, "tags": ["FH6B3rqNKbDFWz2m", "w4RZSWrWXlUeq7Yt", "IJ5O4a6ljUGwldpV"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'RGfVdbOs1wFTzhA0' \
    --countryCode 'p1NRufCaShsHQzVH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'VrrsEzGTj65WVzLk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'pSgjMKh89RzG6Eo3' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["uTSxwvu8xJni770t", "d7sfdeaIHzZaGQpN", "lJqEp8LrYOKdYVte"], "countryCode": "biJ2d1m1ZqzYHMsj", "countryGroupName": "VhH1DJofNG4hfmkW", "countryType": "COUNTRY", "description": "wjTZzGtUOLKZOZWI", "isDefaultSelection": true, "isMandatory": true, "policyName": "uR5NI5zH18XScXyK", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'b7DmhR8ZKfnlzV6D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'QIuOvty0OE7gTc40' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '4YnazFf1HOefDUR1' \
    --body '{"contentType": "AbFkNf8UOSMzbpsC", "description": "kdyg4UVhiDj8nlkW", "localeCode": "sqbmwjgstwiFQ0vr"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'agYwyJc7xldJkyxH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'eaxLYXa28TRs6Abz' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "9FeaVDfSoqfGMAWs", "attachmentLocation": "qFR4Lxx2YpZEaRMW", "attachmentVersionIdentifier": "UdFRczPBLjGb60Op", "contentType": "el8l16MQnYk6CfPH", "description": "kpDRzlIICScjI63x"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'mkspQFsh4UBwnrGS' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "18eZixQJNG51uX3O", "contentType": "A7YGIxamS4dv2QNw"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'oHGQvCQorbvGeNk9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '3MzVKZseIQvSvA1d' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'm2bFnlZflcXvUFVz' \
    --body '{"description": "XiUfegSDFFAgak1W", "displayVersion": "NjFmIdBY1rUD0azi", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'dEUtL4R1wpRl3pCy' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'PrLGVQdGNpeHt2Ch' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'XlAj1HvFd9Mougvn' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'L4jVfLzFDvVUKgXx' \
    --body '{"countries": ["tkr1mm15IUh5g2Xq", "ieWoxxKaL8AcTL7P", "YjNTmL7ri4A8BhVx"], "countryGroupName": "KvWJfpxfjpqRBHjy", "description": "4Cl79berAVWloJhF", "isDefaultOpted": true, "isMandatory": false, "policyName": "rmwwDU5IPv37lDkD", "readableId": "D0PgBL9KvQ37R13J", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'fzVUbJumcENKgWDJ' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'qBGpwM8iajBZPX9E' \
    --versionId 'wjQaOviXCo4sE0Vd' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'oBrReegWyFrEX1rs' \
    --body '{"description": "gs1crvrdZiMYhJLg", "displayVersion": "Xm6SfEJF0Z4pFyDZ", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '80' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'hwwrrdWw6fLMy29s' \
    --publisherUserId 'AxrgxXDjP53pjDWX' \
    --clientId 'ckTYP1Y6RKCJMSSG' \
    --countryCode 'uxjaQeQEUWWdStkH' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hAraB4XjtqdvDPN4", "policyId": "n3QCRsIO0LSntLVi", "policyVersionId": "EbvJdlP76xSvUSIc"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lPYwAD3fx9JCHY8j", "policyId": "jnu2AJmQsSSrvlJm", "policyVersionId": "3zR2922oCO9vJVJw"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "b3SjfeTVMUapWbFt", "policyId": "nUZxuEs0wFuNsC3K", "policyVersionId": "Esei4r0hJn78jliL"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'xSXFgE8E2rAtQAmh' \
    --publisherUserId '5mX6yhQWH2rfljNn' \
    --clientId '1XOFOfihegYiZJ61' \
    --countryCode 'iVjjeUYpu23z8VwS' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'i7Vpjzp6z8fwljtc' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'OfWO95KYb3YHerFb' \
    --body '{"description": "AHnXAvGf2F3z6ils", "displayVersion": "tJKtTvzuIK15KuEL", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'u8X1On6isQ6TyMkV' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'CE1BBcbvgvIyE7PV' \
    --body '{"countries": ["C5OhJpbv7JFTkPx7", "lpM0amgSJKz0tfTT", "JTsokKiFhfQGIrU4"], "countryGroupName": "qOG1DAhn35kYwk3Y", "description": "a9e25Ep06Pqy4Vpb", "isDefaultOpted": true, "isMandatory": false, "policyName": "6wAbfygIzADBuo4r", "readableId": "8IKnLnlTE3XbF2qf", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'ddCzKbOeoJUEWalF' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '4AGcXYHA1SrdfQCl' \
    --versionId 'NZRxMKNvm1cTj7pb' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'UIYVKj8fUHab9qyU' \
    --body '{"description": "GjhIWeDAbflCsuuy", "displayVersion": "SamEmxRkqHuwslZh", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '10' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'cjRq8czWMEs8oR1F' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'gMx8YUhUAY31f07w' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cuw03tnuwEZaw4Cu", "policyId": "r6V62WrNBkiGzYWY", "policyVersionId": "GCD7zT74EAFs0laF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5xd55YCwYJQs209d", "policyId": "PXEfINU9io6hI82C", "policyVersionId": "vwOqMmSYecnHQx6F"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ANaurFeTPs0AnnvQ", "policyId": "CHpEs7hvYpqUL6vA", "policyVersionId": "MypK10IdY5XilJTW"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'qLXvCETslari0m0Y' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DqziDtYwEpXxyDKY", "policyId": "WvA8pza7RtdBFn5h", "policyVersionId": "5Lwnuh2T84ANhcCj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YCwBNnyxqIrwR0a3", "policyId": "QSpP50dEOE9BmFXb", "policyVersionId": "DfEYPb4YJqmUXmqg"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yey6v9pOM0n0DFFJ", "policyId": "uavKv6VviZcdN2uA", "policyVersionId": "HjVPrjPc8GHPURoY"}]' \
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
    --clientId 'fEfiAvG7jQmsYfem' \
    --countryCode 'RqTQ5AvNdMWxn41q' \
    --namespace $AB_NAMESPACE \
    --userId 'FBkxvvtKZqTmiYGO' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'lvkQQG3bDyU6ruYo' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'Om0IrWOx74ALYFps' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'QXQUPavLsSAYebKh' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '4eDevACXWWSFLpL7' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'uC3YIvRaaKDOGnZh' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'VrbIyX0zzFLrFjiq' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'zowR3Znc6uyA9nk5' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic1 \
    --countryCode 'bBBzbpoEyEt16imM' \
    --namespace $AB_NAMESPACE \
    --clientId 'nbXuLB0gWgflNlYI' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE