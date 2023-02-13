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
echo "1..63"

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
    --userId 'PIBCFWOI' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kI8pQPOa", "policyId": "YaKjBE9a", "policyVersionId": "ReYaSnF0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QKVYtygc", "policyId": "n4MT4FNO", "policyVersionId": "lw4xmTW1"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "IV3KSYSZ", "policyId": "dIWdZKRj", "policyVersionId": "qucTHRDN"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'PWKK0cGL' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'M8BnPFDE' \
    --limit '42' \
    --offset '41' \
    --policyVersionId 'FduHCdHu' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kq2Qq72y", "aS4asNz4", "jb6yxvie"], "affectedCountries": ["Xj7T7Dw9", "J8oHYxrE", "1nrXIjjY"], "basePolicyName": "3VB03qNB", "description": "lQVIIltG", "namespace": "XbUqXcqF", "tags": ["jKybpjbu", "yBsJvD9E", "ZE62Owt5"], "typeId": "kNHBLXQY"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'fOi0fxAK' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'wMwgkpjV' \
    --body '{"affectedClientIds": ["K45f0P3B", "5YBI4Tlk", "lNWB81ls"], "affectedCountries": ["HGrBPjpt", "tKamwCmP", "SvL4N1B4"], "basePolicyName": "KLzr4Poc", "description": "KMu6EqOd", "namespace": "PGR1PvEn", "tags": ["Zzn5PBCT", "q4vB9xMO", "kpMNQiUG"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'TGjiuDwb' \
    --countryCode 'M8dI91gr' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '9ybz8Xwf' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'bFNfitIx' \
    --body '{"contentType": "bRU39xZK", "description": "VS8b3RwA", "localeCode": "L3Rtr05I"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'm19FQSIm' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'WOCmkPcp' \
    --body '{"attachmentChecksum": "4o6ygFGn", "attachmentLocation": "3NBQLprz", "attachmentVersionIdentifier": "THIYJ3tZ", "contentType": "jcN6Cptm", "description": "wQiZFrck"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId '1bhFx25J' \
    --body '{"contentMD5": "Vm8O8bkP", "contentType": "E9A0UGnM"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'bbjueAov' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'RLtVmXLa' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreements1' test.out

#- 17 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --keyword 'QVgNeQzp' \
    --limit '94' \
    --offset '28' \
    --policyVersionId 'pNAz2Il1' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAllUsersByPolicyVersion1' test.out

#- 18 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 19 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["H0zL22dd", "o23g9Qud", "c9tdLNgP"], "affectedCountries": ["oTKzWPpn", "vWI1kydm", "xJXyHHfv"], "basePolicyName": "VsPlSs2P", "description": "2wORiN50", "tags": ["7sIXFw6m", "ocT2dy5A", "aJ66BrtZ"], "typeId": "4AJGxDfp"}' \
    > test.out 2>&1
eval_tap $? 19 'CreatePolicy1' test.out

#- 20 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '2oSxMrTz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'RetrieveSinglePolicy1' test.out

#- 21 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'NpB6Qsgl' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["IFXlqOil", "5EsgmPUM", "MgukrlZr"], "affectedCountries": ["0nJh3B4G", "eXiTWP7U", "PI4omo1l"], "basePolicyName": "p5D2R46S", "description": "Vkw6682x", "tags": ["gesrLSF6", "itU0lDEI", "F9RfZhZ1"]}' \
    > test.out 2>&1
eval_tap $? 21 'PartialUpdatePolicy1' test.out

#- 22 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'xJAAytt1' \
    --countryCode '5FBsYThc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'RetrievePolicyCountry1' test.out

#- 23 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '0EqpUJTe' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveLocalizedPolicyVersions1' test.out

#- 24 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'yGFp0HYs' \
    --body '{"contentType": "ydeP0Ynh", "description": "0oG4u3sF", "localeCode": "UrHl8B2N"}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLocalizedPolicyVersion1' test.out

#- 25 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'tcrVLBpx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 26 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'smpnyyco' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "Ufkao7kk", "attachmentLocation": "aqWhJBnJ", "attachmentVersionIdentifier": "vCVztxI7", "contentType": "yw4jY2cZ", "description": "wQ0Tyuri"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateLocalizedPolicyVersion1' test.out

#- 27 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'WQtxF1Pm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "TQh1BF3z", "contentType": "1ZGdl5ns"}' \
    > test.out 2>&1
eval_tap $? 27 'RequestPresignedURL1' test.out

#- 28 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'gRUVlLDH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SetDefaultPolicy1' test.out

#- 29 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'lSpIx2SX' \
    --body '{"description": "aMyZFngT", "displayVersion": "Z6fJTnv5", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdatePolicyVersion1' test.out

#- 30 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'eG144gou' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 30 'PublishPolicyVersion1' test.out

#- 31 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'ZObBYqlv' \
    --body '{"description": "pXpTtnfT", "isDefaultOpted": true, "isMandatory": false, "policyName": "WVcidKyD", "readableId": "gPUVBRPg", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePolicy1' test.out

#- 32 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'M5euGas9' \
    > test.out 2>&1
eval_tap $? 32 'SetDefaultPolicy3' test.out

#- 33 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'kplkng0c' \
    --versionId 'WBDLvu2L' \
    > test.out 2>&1
eval_tap $? 33 'RetrieveSinglePolicyVersion1' test.out

#- 34 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'bcevlRLm' \
    --body '{"description": "LKZfE8OC", "displayVersion": "gvAwgkAg", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 34 'CreatePolicyVersion1' test.out

#- 35 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '94' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 35 'RetrieveAllPolicyTypes1' test.out

#- 36 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'tH4oHZAH' \
    --publisherUserId 'S6iGoqb6' \
    --clientId 'lN3TPtZp' \
    --countryCode 'i9pyOlR4' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rvXtGQY0", "policyId": "a7PCIObg", "policyVersionId": "XrUqqiks"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GmL9XVU8", "policyId": "KVlbq6EH", "policyVersionId": "wM9hRD5U"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zaBEnBEK", "policyId": "SfysuVz0", "policyVersionId": "c77tnFOH"}]' \
    > test.out 2>&1
eval_tap $? 36 'IndirectBulkAcceptVersionedPolicy' test.out

#- 37 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'qQel01GF' \
    --publisherUserId 'kahAWAKL' \
    --clientId 'g8tCkLgf' \
    --countryCode 'mwWi0xlI' \
    > test.out 2>&1
eval_tap $? 37 'AdminRetrieveEligibilities' test.out

#- 38 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'VD6Xjh9B' \
    > test.out 2>&1
eval_tap $? 38 'RetrievePolicies' test.out

#- 39 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'UgS4Hwo0' \
    --body '{"description": "YCZ5UdLt", "displayVersion": "XiC5UmIp", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 39 'UpdatePolicyVersion' test.out

#- 40 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'EmZk0uvS' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 40 'PublishPolicyVersion' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'qOCaaWKv' \
    --body '{"description": "FK6OR8cS", "isDefaultOpted": true, "isMandatory": false, "policyName": "NK11oLQ3", "readableId": "pGX8eIlh", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'IrxuBIrL' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy2' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '6lCjamhx' \
    --versionId 'lzengbv1' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'is7AAVrS' \
    --body '{"description": "syOBQ6yL", "displayVersion": "MpLqihdx", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '65' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '2MZA6UiJ' \
    > test.out 2>&1
eval_tap $? 46 'GetUserInfoStatus' test.out

#- 47 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace '381pyR62' \
    > test.out 2>&1
eval_tap $? 47 'SyncUserInfo' test.out

#- 48 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace '52UdOt2n' \
    > test.out 2>&1
eval_tap $? 48 'InvalidateUserInfoCache' test.out

#- 49 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'JgdGtGB5' \
    > test.out 2>&1
eval_tap $? 49 'AnonymizeUserAgreement' test.out

#- 50 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "IGmWfmZU", "policyId": "CbuZ2wnw", "policyVersionId": "LIwNfVeg"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FiICSSog", "policyId": "xUXc3G3X", "policyVersionId": "vuRS4oAl"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "soZ6K3oR", "policyId": "L8O2AFKU", "policyVersionId": "cVNz8eG2"}]' \
    > test.out 2>&1
eval_tap $? 50 'ChangePreferenceConsent1' test.out

#- 51 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'o72cmPQQ' \
    > test.out 2>&1
eval_tap $? 51 'AcceptVersionedPolicy' test.out

#- 52 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 52 'RetrieveAgreementsPublic' test.out

#- 53 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8MFX4GEe", "policyId": "s2juKRzW", "policyVersionId": "NWhQTGuT"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "njDtpORO", "policyId": "vOvsfoBK", "policyVersionId": "meike373"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "C11q2c6P", "policyId": "LJre9qlI", "policyVersionId": "83ZdLFUp"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkAcceptVersionedPolicy' test.out

#- 54 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'ePlAWxJC' \
    --countryCode 'UmTopLAF' \
    --namespace $AB_NAMESPACE \
    --userId 'YjbFZ4fW' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "sT03v7pK", "policyId": "sVF6H4xX", "policyVersionId": "CUden8dm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "skTltpia", "policyId": "tkbviN99", "policyVersionId": "4NbZXRji"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iXxjgTpq", "policyId": "yuGxUd90", "policyVersionId": "tt97QlVG"}]' \
    > test.out 2>&1
eval_tap $? 54 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 55 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId '1V3uOfZI' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XfDhbdeI", "policyId": "4q8IUvLw", "policyVersionId": "yR6W4v8z"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rzl5azhg", "policyId": "6HBgytmW", "policyVersionId": "aN9iMgo2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wWO6XmhF", "policyId": "wKTiovrb", "policyVersionId": "xFPWUYtw"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 56 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RetrieveEligibilitiesPublic' test.out

#- 57 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'uPNljy45' \
    --countryCode 'B8cWmpeI' \
    --namespace $AB_NAMESPACE \
    --userId 'oF2Y24L2' \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublicIndirect' test.out

#- 58 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'WsaemwKm' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '1x5Datgf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 60 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'UDEorqMF' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'TgMSwvbi' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveLatestPolicies' test.out

#- 61 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '3Loc0b78' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPoliciesPublic' test.out

#- 62 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'AR8GnpCD' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'mO43yJPm' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 63 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 63 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE