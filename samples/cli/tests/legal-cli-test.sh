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
echo "1..67"

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
    --userId 'qdNYpE4zQFTNJvR7' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xrxI7BRcQDRxkC1d", "policyId": "fRn7KBr5LMODcHTV", "policyVersionId": "v530uMQRqMuf3d5s"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "72fasmdVIpMQ3vTD", "policyId": "yVbIktenwCLZKNSZ", "policyVersionId": "MHTV4uzhwJsaePvq"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JxyHkhOa4sM9lgXL", "policyId": "J4JbsfTvWpcl4gUW", "policyVersionId": "j65FERyS8CsRY8cC"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'g9kPGJXC1eCxqyZF' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'TWYp68kZSAlW9nEV' \
    --limit '54' \
    --offset '59' \
    --policyVersionId 'lrwxdJzRRnt2ZUMt' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["Wn3uTsUxsylfeiLq", "C801dMJwVSAac6cV", "8BMaqKhozOfassnG"], "affectedCountries": ["Gds682m2CMObMSOA", "15LREiXv3hIFXIDp", "cKvXVb3ndafW9USU"], "basePolicyName": "FhrCbDgZ5Q8pLv3g", "description": "lUxQWiEO45DARdnZ", "isHidden": false, "namespace": "xpf6C4vhc5G1vCne", "tags": ["Ej6FgBpfl9X5SpeL", "3tpJNar5LLiDzTQ2", "sd24W8z0BJ5STJxU"], "typeId": "a3olHHwMMeeDO8tt"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'UYNyTlXr0hIiJab4' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'nPfQLJiQZyqmuTjh' \
    --body '{"affectedClientIds": ["mQevW3ojTT4yaeVp", "3gS2VtewIHJABbLb", "8M9ZaS0oK4Ya7BsF"], "affectedCountries": ["mekYeEaDrOvOE5zr", "tmVTvYNOUBOO638T", "0uOsCCtvrG4Msvuf"], "basePolicyName": "xj2wXFKHiUJ75Ocp", "description": "DdVTzEmmTwPVmhdL", "isHidden": false, "namespace": "SEmiOtbW9mRmUbkq", "tags": ["EWkVuxVLYjer9YWs", "6mS0K7rlVXbHIddR", "6dJerUm5KzYzUUji"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'Cclar5IW7dqBFHJ9' \
    --countryCode '9pElumeEYQSJKeVa' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'og9kh2ywkUoNuJEB' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'T1oOLeIfnLUxEhdy' \
    --body '{"contentType": "U2rubl3gw8v9ajoH", "description": "1M04P5VULraiObMl", "localeCode": "EpZ9ugiEzRsurNfh"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'HSHOygMfovhASpuP' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'tOGhpsPeFq8FnnJo' \
    --body '{"attachmentChecksum": "XCfcoguIhLstYUsp", "attachmentLocation": "nYt2N793OgEqVEXJ", "attachmentVersionIdentifier": "eHFrh9BQfH7dIa0P", "contentType": "t0vKezf2dGDK2YOy", "description": "TlRAeHAcdknUl6Hm"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'MzeulmKQ5Xg3Gtfy' \
    --body '{"contentMD5": "9l3gGBG2uOKMaAOa", "contentType": "CL4Pgxt513sMgV8h"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'psBFdBNXwOsN3ooJ' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["fxsWojcnjs5P1ZEu", "JcOll5kg9nGRg5zj", "9UC9GgK2XzeTAFMj"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '7QHM1qw9rg7sitLM' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'tdEDTbTOmUiXEcrY' \
    --limit '69' \
    --offset '33' \
    --policyVersionId '5uLcGKLglLnlveyr' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId '4bzX8GXFFqpBgXK1' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'AQvoZ6aSpFiklXV4' \
    --policyVersionId 'WFbUChesN40zDtAL' \
    --start 'tVRKdD6Z8dCB6dff' \
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
    --body '{"affectedClientIds": ["50DT8jSP6GUSdVJH", "MP26UgrfCAq02rYR", "dfeV6eqJ2RKysEMQ"], "affectedCountries": ["KgISxjJ25ldcw7kX", "1ihd4I4k1X1LRahq", "wyahK4kVNCPucWnr"], "basePolicyName": "oqcC4ptlWJAi1TWA", "description": "sGDg1M3Ansrjdc2U", "isHidden": true, "tags": ["uvODVc0iRXn1e0uO", "tOHovv37XWVJfsJe", "8ZLZLnhGIh9yBHCb"], "typeId": "bdYt1dsuUSsdX6Wh"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'sRDiWUp90uqYPeTC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'fkVEA56sm2Zsk2pW' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["xjFfX1yUZBdp3Nmk", "5WO92C5onzRSsHE8", "MEF9iy7MWXyjtVlM"], "affectedCountries": ["eAc9VkjxTuAMp2u1", "7HTZky0xqmlJDHuS", "wyk4h8Y38bVCzOXp"], "basePolicyName": "qlQ1EhGPwfrqL2vq", "description": "Zm3qGuaJtlz3PdBS", "isHidden": false, "tags": ["oKvUpAFk5vUEhfSi", "QFFLM6PMMuwWftWu", "nQiFByVCAF0ryujO"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'YEa0DN4U80lJhDJg' \
    --countryCode 'u1347tDmPDp18isL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'xnbJuAxj5yq46tEV' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'I1WuI5pDWy8X0Uun' \
    --body '{"contentType": "NiDf9J7kkY5duwQe", "description": "HsMr8I0kwQdOelT1", "localeCode": "4g62SCka8M2KkLtO"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'uv0bMmHk0zVmHdY9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '73MBmjrf5APQzUxS' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "Cyf7w7tn7qs3lbwH", "attachmentLocation": "20NgwEjWH3X6uy9G", "attachmentVersionIdentifier": "X73rD9mZr833JvAO", "contentType": "FYmpIWhy1FgmgLVh", "description": "5IKuzEUinG1dUAqV"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'qU3LXps1TpDwWXa7' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "BsQzmieYhZIhnLrm", "contentType": "zN1cWvdp0dH5XNuD"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '83HTDhsukO6qx6TJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'KoVObmiqxsvNdICo' \
    --body '{"description": "wbAUivaADw5c9BpG", "displayVersion": "A3zZZp22eFZx4j8p", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '2XRO9OXNbiAvmOfN' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'iHl0tzKlOyWRPspW' \
    --body '{"description": "4xQHoelSTzpy6dAp", "isDefaultOpted": false, "isMandatory": false, "policyName": "NtizJqdWBrfwrKL0", "readableId": "PFjC2FAjyekGbBEB", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'axOgUEG1MaQilhQm' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '6TRexQ5THMJSgr5O' \
    --versionId 'xT3wAVpztxjILGjb' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Me3npO6PjDsSO3ow' \
    --body '{"description": "LAbv2LkRyKTcHXE0", "displayVersion": "EZMkrkWfrwu7rDH6", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '31' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 't5KhK9NBwjTnLGw7' \
    --publisherUserId 'Rh7QpcRDrGBZDYYG' \
    --clientId 'nXrg1CGgoQZ4suWo' \
    --countryCode 'ZXynb0jrOFMbV5K9' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "T0TxFSf9ft5AnkOk", "policyId": "CLmzVqrpHakl6ATt", "policyVersionId": "F74DzMTws1pMlJP0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9SIs0cuopqjoKMVx", "policyId": "4bPWwa1didLH2BWY", "policyVersionId": "E0fdGCdxz2H0IzbZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZfP1Dij0bT5kgpNh", "policyId": "bP6ojGP3uHC4hLoY", "policyVersionId": "BDSRxL25rEtcehny"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'TepFQSrneQASfpqH' \
    --publisherUserId '8S3qn8WWX2UnlW3w' \
    --clientId 'fWXhf9I3U3WvXJDw' \
    --countryCode 'hbIORRL2y847XJA9' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '2F7DSk9i1H4Oo7N6' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'bBFhvvUHj43TGRJd' \
    --body '{"description": "qS3BidHNyirTzNuH", "displayVersion": "zvj2fJMYB4ErzRDH", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'Vh1II7rjqDs56nKV' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'wHGDwshxmBVjyy75' \
    --body '{"description": "dgKeUl2jTjyWOsF7", "isDefaultOpted": true, "isMandatory": true, "policyName": "eJ39EcY4YK7Bk5f0", "readableId": "ejcQi1gzRyoKJ7gv", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'HUzCE8XSnUf0rKVQ' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'MeaexJATbIdTD18C' \
    --versionId 'Kua2tKn9WDfZqx0W' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'Sk18J4esRuCbtmwR' \
    --body '{"description": "Tsx1evr49S65ketq", "displayVersion": "0F0vBoGXKIVxkAdu", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '67' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'sF6dKhbc7FkvHMMU' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'ui76HIdt9wEEjP84' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "U7uu2yNnYYWWNz0a", "policyId": "1mUfmwTBu1IRG2W3", "policyVersionId": "j1E89gcv31VQehZe"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4U6IIyehOCPAwfxK", "policyId": "iIfaLZL49cbeiLIe", "policyVersionId": "v3OgOR2MogG6ufuf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kVY8l38yB67VBobu", "policyId": "cMBsGEwUdpnHEJXk", "policyVersionId": "PlB1zGy87pMkVUzc"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'hL0yR9hjG8wajHGx' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "19JrQQgrVuecslYU", "policyId": "dapzf3fksybbXh6t", "policyVersionId": "TMs5WwAWqQ9uHArh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pBzUHaaEO0t7GIPa", "policyId": "iiF8eKzwbzcl6B12", "policyVersionId": "6lFjT8wIHYYTHBde"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LtyndlMhIDwgbs0J", "policyId": "qF1yLxuqlcOMH3pf", "policyVersionId": "UylNxE2RE2vCcuZE"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkAcceptVersionedPolicy' test.out

#- 57 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 57 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 58 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 58 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 59 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'RetrieveEligibilitiesPublic' test.out

#- 60 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '5MBPiRiLFhOJV1mc' \
    --countryCode 'icMib4D4U4zrvaec' \
    --namespace $AB_NAMESPACE \
    --userId 'oodndaAFiRsGT4xs' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'QAP2z4TLOuXoRHSg' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '7yvoRNiuS6L17cPw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Lolsen6OJNSPuMvW' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'fWDt7MEfvpSseBTG' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'xHpKR67i8FLxKx3k' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'pribmbhqZ1l0ERyI' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'USmtocDSzdTC7G2R' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE