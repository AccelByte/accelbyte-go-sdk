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
    --userId 'GGRxjZ2CzAKlhNTz' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gGdKAbbgsdce20pX", "policyId": "TJpefZB94dLFbNtn", "policyVersionId": "kSptbfDPunmPTS3H"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GTE1wFhPoP5Abehn", "policyId": "OLXuUzJYj95oPfyu", "policyVersionId": "w8fq6eCXeWDoMhlC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FhXp1szLjZjTDLVK", "policyId": "K2BUH5NvuNRrUgHC", "policyVersionId": "tEy7Kkf6SFYX2k1P"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'ckWvaCmflwKxwTww' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'IYSEdJtavnOgp1Nq' \
    --limit '1' \
    --offset '17' \
    --policyVersionId 'PueJnZbbQfpgETbO' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["lzbVIZOGALn9AkkE", "Gs4S1OBvVMnYDz7a", "sQInvNAS4hNtM6qt"], "affectedCountries": ["S5Lu2FvKsINwYlZ5", "WKmZ3aXHiEQYe1Aq", "CM7U9ByAzHtRi2Sj"], "basePolicyName": "NwH9VRHhE5aD5YP4", "description": "a7GFIM0ICIMMlDRg", "namespace": "qmdyURH4pPcObLLE", "tags": ["iFe6VIS08Yx3jkeO", "pPgtwCEhq0ytx0gc", "BXRIMUzeovAjysEz"], "typeId": "Ll954jE5dGpV7HEl"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'lzof6bPTRrHWwYCp' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'j1iEuwA0Kti2Xe4f' \
    --body '{"affectedClientIds": ["05za96ELQ4AJB4ya", "pCdZVObSedJDXxTy", "kx2yfiZT2RQldlNU"], "affectedCountries": ["T7xIcXXhUyeJyuPR", "nlDxahhjVUDjXa6c", "8HDXDvGUD4MDJIAn"], "basePolicyName": "1N75SdFb1NOJzYJr", "description": "3tbR8l3api3xAowa", "namespace": "LIjBP95nzOnE82Sq", "tags": ["TRxWLIT86jl8mdrp", "pa6WKIDxOjczCaG0", "qVgXdVQNRLdB8aNw"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'FALrLbuFWYJ2L5Jk' \
    --countryCode 'kn6YUznsQD8TAGCK' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'qWLhQ8ymmNkI7cfM' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'Iwa2v25xVBSeBfps' \
    --body '{"contentType": "6hJ6KMNGDOx6zfjo", "description": "IxGow0r7x269MSAq", "localeCode": "zqCsr1g3xXa6kTRE"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'djSxRDG7eORrKJnD' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'tYkjyJN1YrZuKBGv' \
    --body '{"attachmentChecksum": "3SyXq7qPyXHGhdF5", "attachmentLocation": "pFlbAyoSX10JSBJ8", "attachmentVersionIdentifier": "1ahFJS1asfHDLZy7", "contentType": "C3crhEK8zvsD0E3c", "description": "rloLY6KNKWUn8b2C"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'S5N7MMsloLShCFry' \
    --body '{"contentMD5": "zl90PR6rlIiDobfN", "contentType": "nEEfYa23a7Ou07Um"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'HtQCctXrgDoAsqc2' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["SPZiDrh0P5tWfDwP", "p4X60xF4s7GK4dw1", "xdPnCuW49VgMWgHc"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'xLsj2dOCYUQavVLj' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'PrX48vdqAqc8ropx' \
    --limit '0' \
    --offset '6' \
    --policyVersionId 'fdXC96rirSqU1nRm' \
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
    --body '{"affectedClientIds": ["7KynR9NzN9HcP8x3", "TeQIokSfCF8Hry7w", "5h1Xvg3jVTlX3nDx"], "affectedCountries": ["opqdFUUJ9Szfap6f", "mXnR86ua9Mvf9U9Q", "jhXJlq4fsSpqAURT"], "basePolicyName": "dx23kiTSKPJ2hVi4", "description": "i2CFGqAk2L0dLrkT", "tags": ["B3xXMhc132l94Cee", "1dXuCZFft8RLndDr", "YpiOXhSuev5tqY47"], "typeId": "9D7dGCaUbheLzLpV"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '9jHFONvccRLQdKJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '8Rlt3Ne11F3pmXyD' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["6VmdaLKzldYZqXTQ", "V0lEOM1UktHAD7mJ", "oEZ1Tk5Zw5bxXeoR"], "affectedCountries": ["i2SPexbzQai7uh8O", "Tn5BocZ4xoS5FLS7", "id58ffHpZf4v3p94"], "basePolicyName": "sFSHCV0TOUqdxzN5", "description": "pIbOzfPIS4Ega3Jn", "tags": ["vGWKJbTXzEaKK2bX", "TCQx9BDQev1jYao4", "tftbFQ0mZnSLpwiz"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'iDqjEqQ546VLMuom' \
    --countryCode 'UVeM1Kv9m2TnSdFk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'K9oIod2BBUMBO3I0' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'HNh9rAAIMjTIMNkq' \
    --body '{"contentType": "hUKCNYFlgHKUxTCE", "description": "me1QKUfXCYmczjNU", "localeCode": "cLJiUQqkBYSdyzKy"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '6eMlmKeyUDmMDVjp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'aNrQ2K3PjJ2EFsYG' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "hBREPQ2XL9KpkF4t", "attachmentLocation": "QMJiBXRp6ZXJnrLo", "attachmentVersionIdentifier": "ngcR4MNLNcxfpxj2", "contentType": "uI4MVVKFGIFy7Ufp", "description": "05hBGnsprz1ppgC5"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'ie05uqkNcfiyxulV' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "PTjPIeQdgJz6hnaz", "contentType": "LZ92lS7pxeOXor5g"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'aJYuxaU07Yrkd0nG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'vCLj1cjDHUk4TPh3' \
    --body '{"description": "p03RuyukkuuQEbuS", "displayVersion": "7pnbWNQP9kPzHrQa", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'TcuWvS4PGuBtzF5a' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'KOA2Ph6T9A9OFqWj' \
    --body '{"description": "LTbEwxNZzZPaz8fU", "isDefaultOpted": false, "isMandatory": true, "policyName": "oJhhMwlZocHR5Gq2", "readableId": "4nr8NRgFByVUBo9j", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'OMieon84DLLI8gyW' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'A9Wmex3Z9ar1AjfN' \
    --versionId 'CxMMIpuVjqIQxfS4' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Wxhgz8mcETmrTkRe' \
    --body '{"description": "95917Q2prjFPZ0HK", "displayVersion": "UKLmvlj2Xr4O1ROF", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '0' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'KFtFVlMGtvAZ7kou' \
    --publisherUserId 'vhM3oYwwIPg1Y8G1' \
    --clientId 'Y1CsDS8XU6MteTpr' \
    --countryCode 'vLklQzeFp2Zx21vv' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hCGcTFFdpRj2ULAu", "policyId": "FxsTLcYrCK89YFxq", "policyVersionId": "vYMB6EcDTJLKu2Vj"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tDmLs58sBI7gFnlR", "policyId": "aVhGCXUwnZDFPP4R", "policyVersionId": "XzDwNt2e4xniXZZq"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WaCyTADxcrxUDmGg", "policyId": "x8qd1cybKg0c5Lep", "policyVersionId": "1NfH7imndrRmxHlU"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'sZZkgh3JGWQAedfQ' \
    --publisherUserId 'cvyA8rf55PcItMpq' \
    --clientId 'M5NNndvlcL9JMHyD' \
    --countryCode 'va1UzAA25kxkkmw8' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'qEPfNZ2piynqngl2' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '6Yp0hKx9hlKYyMuz' \
    --body '{"description": "9sGyMfjDZH1DSTiM", "displayVersion": "GR2LB3wzlkINreMU", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'O1zuUk0bHKyWMCkf' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'tYXfTcEYu8HvYdWT' \
    --body '{"description": "McsYZLrhqiVMySey", "isDefaultOpted": false, "isMandatory": true, "policyName": "ND4ISUad1hlHjNiQ", "readableId": "FigGC3YEmtEHh7q1", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'wPK2oD92uoeZLLrh' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'N0Tbd5zD3PNF0sOH' \
    --versionId 'gVCp2Hvt3xCu3dY7' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'lgd5O3lOzXgVcriV' \
    --body '{"description": "aZ2g5lpsgQtyoMEU", "displayVersion": "nGcCKBHTDlPtNT1h", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '16' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'xFGRbknUWGqNm5Tb' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'hQTCP54xgkZZMJAv' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hZhSYOPzwLUTmFEA", "policyId": "jciv5FhQOFqgbCvk", "policyVersionId": "Bk5o8jwVrHW2jYnD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qt3TySN70smH194B", "policyId": "o2oCC3zM2iWnO0kb", "policyVersionId": "oVxsNsudlBjlSBKy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uxAVhfarYE0XLjPz", "policyId": "urwE8s6ZuyVhvopH", "policyVersionId": "9d78WWNjpE36p3GZ"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'bUcGdHoXpzt2iw4A' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZsZPICgVNyEWOJul", "policyId": "aOBKCQmKg6HQLjNj", "policyVersionId": "HhTgcLIjyP6ZQVZq"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "X0PTsVO7SHYfMQ91", "policyId": "oCPjpLZRW4lGvQCd", "policyVersionId": "Hxw6jRS4YwhGYrPY"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KJlZ5la25zod4Wz8", "policyId": "Me9W94WXBQMNTAK9", "policyVersionId": "Pfd6DUPUcX1ngqcZ"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'tviIzA9n4EuMf0Jv' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "j4OzDociVGowvhTs", "policyId": "vd3OKhGTOQ2UCBUj", "policyVersionId": "L7nOnI7ItD4xGmcG"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "O08iTgHILq3Eqy8c", "policyId": "XVN0S0wMG6gbOpEq", "policyVersionId": "TdF4E4keyuesmgPD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xvU0A82tE57B5TVx", "policyId": "IDiCACikazHrdAIK", "policyVersionId": "iqvuukwUfQy3ueE2"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'igeU93fM1jV1QLol' \
    --countryCode '9ReFsp1DaIy2bphT' \
    --namespace $AB_NAMESPACE \
    --userId 'LEoelEQa2ZGNZy0F' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'FGC2dmh4NvgjwRxp' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'kIj72kmwOZJ2OHBm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'xZsL4nGJfM0lzq09' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Eb7tYyJDqQncneyh' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'wxCm0aDMzRmIrNXu' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'o3JwCeibTXY84LDu' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'WyFl0AZF7ODItt80' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE