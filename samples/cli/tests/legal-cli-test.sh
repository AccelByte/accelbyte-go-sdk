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
    --userId 'Q9hXl2N3V1XaFpWN' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fhe87qYVhbbN7bh2", "policyId": "CZchv974ZfTTvcw9", "policyVersionId": "LzAzYZoIwqoryUgl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Z9b6o94wCObgksXC", "policyId": "GVhhUMmOeS9BWWe6", "policyVersionId": "c9yGUmZ2P6ePGxtw"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "XrYG1KoQulnQdkya", "policyId": "DHe1sRPbGAzbuKxn", "policyVersionId": "0XUUoTypno7FW5QO"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'NcaNan6VyroBtE0l' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'FfWQIIW22OPumEB4' \
    --limit '17' \
    --offset '62' \
    --policyVersionId 'MaWZpXoZ9xxfhigm' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["SPnVqVJU8rAS7LpE", "Hntda04MQewVB3XX", "6tTjnMZWG122CGwx"], "affectedCountries": ["icnWe28VFGITrayg", "38735n2yZFXMN1kl", "ntHNmAcFW5qdSrWH"], "basePolicyName": "O2Gr6xjpKefpXrVt", "countryGroupName": "FJONkf3DdZ5U454J", "countryType": "COUNTRY_GROUP", "description": "j7ABtsE7zzCiEen2", "isHidden": true, "isHiddenPublic": true, "namespace": "NAq1QPhxaAaRx0Eq", "tags": ["g89Wn0V3XiU09gB5", "rxhwmdGwBykBYArJ", "BrV46PnLf97sAVNO"], "typeId": "Q38SxVICyrzSpiWl"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'lxnFOuRfWXupxBQc' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'lCeeB5hpuXArvM3h' \
    --body '{"affectedClientIds": ["T1V2rARef9Du0s8Y", "Afd29obuRo4h9gj2", "RVTvZWSVOZpY9HXF"], "affectedCountries": ["c6k2alLFSpf1ILbZ", "EYiTADF3p4SHoV0u", "6X27lQMMrkByrQHE"], "basePolicyName": "nHfibIz3r4kKn4L9", "countryGroupName": "jGnWvLMUgS3QHyWd", "countryType": "COUNTRY", "description": "O3OqwftkVEBIxoyP", "isHidden": false, "isHiddenPublic": true, "namespace": "BARn0Fo9LVoG40R1", "tags": ["bC7bSjDahLbZL0Bg", "glxf5e6RkOvtamJm", "LH1GbPuASbxhEnlB"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'fFp63r74dVKZXC9o' \
    --countryCode 'SOEdhDRmBM6UPqLZ' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'OfVEPvSytDH6cKnu' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'k74kRnbM0yib0VgV' \
    --body '{"contentType": "8vHY9Ubu5ythtYCS", "description": "T6tRCVyFau74PeOL", "localeCode": "7oHANosvwpmKdfb3"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'PLHYN1gzlQvRm6nc' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId '5NlEGl8fxCtXRHkC' \
    --body '{"attachmentChecksum": "0UbU4ooKxD1TItCy", "attachmentLocation": "ocWVmigv6mTWGRHK", "attachmentVersionIdentifier": "uMmy3YC0CqjCc9RX", "contentType": "DtQ81HUaeFK4bXxT", "description": "3BhbwaCjnUR7j93g"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'u1veaOeDCog3mZrp' \
    --body '{"contentMD5": "wgmvh9c0Lb3lKagz", "contentType": "fJX0KKTskpvEc5Jk"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId '8oa4sSwWJMzUMXE4' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["wl6FC1KXtMZoVPEn", "fa6GNLE1X5XVJdsF", "Upz7Im5QuhVHj0Vn"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'QWuofR2MGbzwuTR1' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'SfXlY8UaOK1vbR64' \
    --limit '69' \
    --offset '85' \
    --policyVersionId 'EakHLLrwxsm6hbyI' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'knhOhKCFa9xcm3pb' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'Hbxo6qrKP9zEfMXE' \
    --policyVersionId 'dhPLeQHOXti4JOEi' \
    --start 'FguQ4mCL0hStGD1Q' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '8' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["WvtRQqmlqAhtYp2t", "KduTAnriSyMMVSHX", "YaATmybwpdBKMOe5"], "affectedCountries": ["HzTBnCfxKTxCTO9p", "EPlS9Iar1UthWreQ", "C0xvJNEH8H8edMyM"], "basePolicyName": "IxKMmWzmnQzbpIea", "countryGroupName": "Yt3PHvCLHxrYOSrs", "countryType": "COUNTRY_GROUP", "description": "Yzkhbs6t2juRKKBh", "isHidden": false, "isHiddenPublic": true, "tags": ["PkJA3ZnOGv7qpdRp", "vN9jwOkFvuQ5ce9T", "2t8Bu7sYst4XbHqh"], "typeId": "ZpRmzFb2Ge4desig"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'B2R6kqlOXupe0Ozo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'fNsMXLpp86Qn1G2l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'Uq5bawdM7gvaZjid' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["HptWOsXxFV524Yuw", "zlxj9QGmIAumc5WH", "UurZiFXCjrdFeUqn"], "affectedCountries": ["DMNNbsUHRqNFgNdW", "0Vg3Naf0wsQuISLx", "CVopV5HSDWhg8e6m"], "basePolicyName": "NMWY6ZathKqDiIk3", "countryGroupName": "X94UPZbEIi3eXrKm", "countryType": "COUNTRY", "description": "WkACPdnxLVYIpESy", "isHidden": true, "isHiddenPublic": false, "tags": ["S6lQkRlTaccYnAGe", "EUs0WMNKVP2KnZ1K", "lcV5j72UfT7fob3Y"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '9c2m7ZyRnPxUm8El' \
    --countryCode 'KA9RbHM8udTtYEaZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'jKat6MxF5GtScqUZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'ERUNFEfFlKlmuJOV' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["AWthszj1NLLkzepd", "bSrVFapsuGNZuLwF", "NJTDFAYasUQMmSnf"], "countryCode": "feygt22Ottz7dzra", "countryGroupName": "EOy3fgkEcOiLRWV4", "countryType": "COUNTRY_GROUP", "description": "onUcy8UcDoCJPNNq", "isDefaultSelection": true, "isMandatory": true, "policyName": "1Rr64TB6Tm0dkNQH", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId '0f1ZoS3dwFXIdYHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lhg7KTfECxquKB7j' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId '5EBaxSKAH61Go4G3' \
    --body '{"contentType": "X4Nq66cts55VtOYU", "description": "Jsoo2rEiNT8cBsj7", "localeCode": "EwM7QvEuAkK3O2gp"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'XuRhDD9rNa3c1htf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NevFmkEaHivwcqR9' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "iT2SfgFK2MP44XD4", "attachmentLocation": "5wdYkNlznv9RRi7D", "attachmentVersionIdentifier": "o503tJtGU8dTotXX", "contentType": "PsKOA7TUePKkRCPc", "description": "nw78Zlwvmby78EpY"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '0yg1T0QPcsOybphZ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "3hbvuXWsn60DbCGG", "contentType": "3OoLMNFEnZqpVX6H"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'PuNd4je7YgIy274R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZU8Deb7vSBvmRoLF' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ju1xAYkcHSOmh5jc' \
    --body '{"description": "7k1uGwSOEEwXRgQM", "displayVersion": "0Rqlsd0r9lbJgHRD", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'tOZrJYWQ4MAQuQcP' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'yMEgkkgh4fWo2C4u' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'XRPNnB3E8vHMLbWf' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'ACOSfLemCabkv9Xf' \
    --body '{"countries": ["SIcpyCjkNPprENPb", "sw9gWYdnrNBiN2uw", "l247tunal1izKnDD"], "countryGroupName": "ESxMyN8SxLzYFdLB", "description": "lDhkICD7p1WgdDyy", "isDefaultOpted": false, "isMandatory": false, "policyName": "S7sNDah2hyZpIVEW", "readableId": "XrKBxCVDTLXtiMlj", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'O5DUufwJoCE2N0zi' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'f2k4JhJzlbnIoheb' \
    --versionId 'UUCtDIayXfiUV02O' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'HxkzgUbAvW0RTiZc' \
    --body '{"description": "O53Nbb1Eo85qcVXL", "displayVersion": "lqo0FY0Ph4PjbfDS", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '48' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'jssG9vD23TyPt6SO' \
    --publisherUserId 'oWNcDezS1n0Qlhj6' \
    --clientId 'Uv2dwYQW0RmM6VnS' \
    --countryCode 'A68lhTWxn9rxaz4C' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "r7vCNjyKG9FsEkoq", "policyId": "hHVxndEPaMQGm1K3", "policyVersionId": "dfOrh7h5Yas1Ilt0"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lQYBxLYoerTD5mbk", "policyId": "x8s6IQxXRdio1ZVb", "policyVersionId": "B3MKiI02KBKfuJaO"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "X95S57pGWCtucuZ5", "policyId": "KLEFQkmqioDGQa1e", "policyVersionId": "XIyvMnN6cmXxHHf9"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'HuU3j3ocNY2Ipemh' \
    --publisherUserId 'w2WWMG7wFvj8XsQW' \
    --clientId 'dja4H0pTCbXJgoaV' \
    --countryCode 'c8WUQZrOjJDMUdKV' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'oitMrubdWHAUlErO' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId '7wErQDE0KyUYkxiD' \
    --body '{"description": "pzUhJafGmzWkfgFy", "displayVersion": "wx2IBQFJqu75lMzg", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'inDDo3SQ3tuj26xb' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'I9aSOrJ4JdLM3pvI' \
    --body '{"countries": ["o3bjcaY1pSpMjkxT", "npR41R7enWUJtLwc", "USZccsgGsvKIy48j"], "countryGroupName": "ALKUAlTrZGgCakoq", "description": "szqNVRXdUIN2rE2z", "isDefaultOpted": true, "isMandatory": true, "policyName": "UyNlAws4m0bd95B6", "readableId": "ZjOxEpuiWxvHDE2S", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'paJmS1HHUIGOdLvN' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId '7Gq7ff4zgxfpJi6s' \
    --versionId 'a53kFHXEaTPdPRTm' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'nISLp1q67tFbAwNt' \
    --body '{"description": "ykVJbzofgc11I8wk", "displayVersion": "hST7MFrHeatVPXOQ", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '22' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'SDKSHEB9B2oiYXHn' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'ce0lgHuLnoq0kKyY' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "atrVAtykYktoHI2r", "policyId": "PNVzThIHDuFtMmiQ", "policyVersionId": "crqs0TVKFOkEE0Uy"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Nw49yoLpzmI5Ucen", "policyId": "yCvh5RN4UFdV1QPX", "policyVersionId": "KdnEKIDhNSCXhvyl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7imE80HvaApoB6VI", "policyId": "2TkzaZUInD76GTWs", "policyVersionId": "LmO83H0hScKsABGQ"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'JCqcCQSgr2Y61fHw' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FO81euVjALRJCVnN", "policyId": "gZDvXGWYL6o4VrwQ", "policyVersionId": "Kw9PpD2qnW0GG5Pk"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "54KCho3aV5gCIVXt", "policyId": "ezChNf7BiN75oPWJ", "policyVersionId": "w2dwhiEF3ivOg8Gd"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CfO54pc05YRls7II", "policyId": "Y9Jjzp4M7Uvj0T7x", "policyVersionId": "eFDeoY0EGejipDVt"}]' \
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
    --clientId 'UJAXnCid6nVNKEiU' \
    --countryCode 'JeL6GsPXnb7b3ZUt' \
    --namespace $AB_NAMESPACE \
    --userId '8Rzz6gxGvt7CRx59' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'dtinuYp7rdaBHtyY' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'u7LzJlRiX4iurRZy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'dmSafqESpl3xybj2' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'mutcNWagBLCIaVrR' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'RL2KVV2FMS7HXGoH' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '0h4wVZbRfMY5aG3S' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'k3FHoK3Q3I635lI5' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'JgaYOHcAc6a8W8G9' \
    --namespace $AB_NAMESPACE \
    --clientId 'Y2z8LqFPWEtr95L0' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE