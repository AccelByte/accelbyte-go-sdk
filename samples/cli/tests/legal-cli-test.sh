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
    --userId 'PVeSS4BVKPfJun9d' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "V4mWaE4Sh5IlKDCB", "policyId": "d9p40fM0lhWBNR5p", "policyVersionId": "ZnkX1rmAC9jIe4yN"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "i2LmvgCueC0udD56", "policyId": "d02UzDoNlrdybjZc", "policyVersionId": "bp2Yu45XcoG42kBs"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NS8udIgTKFyvSxNr", "policyId": "kgsGul1LaSHHi483", "policyVersionId": "fJIkydx9EGZPgHs6"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'WfGTJkd4LoicRcbE' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '3t4EJ6fw2fFv2xEF' \
    --limit '75' \
    --offset '35' \
    --policyVersionId 'zgVDeFywiIqmE6pf' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["oFT2qbdec8929Gba", "4UQGAXhUK0cdp0B6", "5jDjnB6SvsBAsMbH"], "affectedCountries": ["tPrrSbvQErArBS0M", "HwCLKVKIv2BFVXJG", "D32zNWojEvgx6zdz"], "basePolicyName": "rsi8phxEffhFlzgd", "description": "ynadGgPlgsgSQw6b", "namespace": "6VUPsMHUdfXLt3PR", "tags": ["Gm09JWgcLdtLJPff", "mpiTt9k6XpJ0mAqF", "wWTLLU6p736lLp8I"], "typeId": "Cw5I0YrKzsaXnM9C"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'iJ5FrtsSBgFCMfZ0' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'ti1CleQJOxVRlmIj' \
    --body '{"affectedClientIds": ["LkpPutdZGEfihKXt", "8Z0DlJ0ERXwNhzWW", "FeEA9eg9btKBfc3Y"], "affectedCountries": ["lOAWyOCpEzCsBoOW", "YppPiwk3bmBmcnkb", "RuJiZeAYSYVmu5ml"], "basePolicyName": "h21Xmb1MRkd3oojN", "description": "FcMQO454IGbR36zn", "namespace": "MIhl9ScP9OiW2GWp", "tags": ["knwPRWs9sIK2I5r3", "UJownogkd0dM8wkX", "VgkplpqhuUjB5NIs"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'cVSoHumEF0Wk1wWX' \
    --countryCode 'yQryyJODK3zgGpd4' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'YhGXZBQ2hAh5YMZY' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '1V6br6TyWtbD6FnU' \
    --body '{"contentType": "ODreP4txkPbTksgc", "description": "d9jVDjLx6Bhd4Nf3", "localeCode": "DF0I4mIOCWXthDwX"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'sSTtaTfmEQ2MxTt2' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'zl0RF7WqHgCZjJKL' \
    --body '{"attachmentChecksum": "9w8TYtuEXqMiyaMj", "attachmentLocation": "DL5oY4BqLi8hTyN7", "attachmentVersionIdentifier": "eys7aA8ehYuSYfjQ", "contentType": "tJH2LUAemMQPMXdE", "description": "GHfJTcUt3aS1pslL"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'K9ZoRmD0r9bFuc4R' \
    --body '{"contentMD5": "SRB1UR2vbITAq14K", "contentType": "OJGutapaLlNLlDPM"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'j7UKR2KaSCXLVw3t' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["OndIqnb01AA2IpPB", "7iGocdW3KXlnqtnA", "3xPfIM0NfTOg6sHZ"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'GKpG1gFE9UXbQa0S' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'J98mCnas62IeHf4l' \
    --limit '19' \
    --offset '32' \
    --policyVersionId 'mC6vcgrpke5kCMZF' \
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
    --body '{"affectedClientIds": ["ARmHsjAikOQu0Rwu", "cLkqxYay9LgAItFh", "JDXrmnDIXd3CgOg2"], "affectedCountries": ["uPHN2PJtUcVKfelF", "mfsNhXaYy0X6EH7M", "0d2bdWcQi3S3VJNd"], "basePolicyName": "ZIat78VZltoDirOq", "description": "nmrXmSQmrioFTTlP", "tags": ["EmVRNpnmPIAfi2Ll", "U0jIivTzSqMUiH82", "bYGUqtWtFwW9Jy7F"], "typeId": "QTO7Yf3yhxqU3jfn"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'yZduU6Ln8zEXIACR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'ORJsZ0G2WEpSR2AR' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["hwWKkqL5N9UEUl8W", "WaKj8ur8ctVW2oB9", "eNS5juWaipjJx927"], "affectedCountries": ["g1v8WGPeYlei9mhE", "sykDDLrxDtCU4hbH", "8C41dThKx46Pe8Av"], "basePolicyName": "JGBFnNSEqrrMojPR", "description": "w407yrJSWRhjiqe8", "tags": ["uOFjR5azNVlgsdOX", "iIkNZucYuPP99vZI", "puUZYc2db5mZi9OQ"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'DnkBuW9PXqe54rV8' \
    --countryCode '9DeoJyS3lwzUYLoI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'efmtdWm4pPhIXELR' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'BsswVHfxpAqLXT1i' \
    --body '{"contentType": "QoKV27mq1oxITkFt", "description": "z8Smi3PtVzvmry5z", "localeCode": "OD5Afk0nf73wiPct"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'Wze5r8h5AWRFzFup' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'M3hNoIHEK6h9DfMn' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "gPyEqUgezWQosQxw", "attachmentLocation": "9lAuqQ3s2i1clI4l", "attachmentVersionIdentifier": "K2JCDBz5RGbRIMzH", "contentType": "0LxaQNhWMyjMpGDI", "description": "iN8rK0i14NjsolPF"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'lUVoe3zpPlxJhiGh' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "xQohB2pFgjJmxZBX", "contentType": "fVm498C2j8JcMhh8"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId '9q79qBltXCvk8fdk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '3xJ5p9WgG4pQTK1b' \
    --body '{"description": "OnJROHP4TdZhUHvh", "displayVersion": "Hh5mo5xSj3SEpmw0", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'mCeUVx3HWTS2RsXa' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Nm3cZEqEFJxIsL7O' \
    --body '{"description": "deGKUSmIoLthmnwc", "isDefaultOpted": false, "isMandatory": true, "policyName": "iBFjRomFhu3wcp6b", "readableId": "ifNNVvZGYncf2ZQ0", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'wdSLkpMqE6cbnxrh' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'vl9frdrp0EEoeI3n' \
    --versionId 'BG2wp3qhqFtpEoJ9' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '9bXsFKG7LTuReFVr' \
    --body '{"description": "RuIW2gf4PyhXKEKU", "displayVersion": "iL3UHWgWrGA9gj1V", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '58' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'J0Bjhgs9Nnst5vvH' \
    --publisherUserId 'hOkG4uETvLMJdBYD' \
    --clientId '2BmR3MiEZpsgIFBS' \
    --countryCode 'Q6EelLGyVbiyGfK0' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2tg1UGubMNcuwIHN", "policyId": "DQfmp2R5pFgYaeNu", "policyVersionId": "jSh2ZMfoDFvWvH4l"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "J633527qufl38jXk", "policyId": "1A4KR72dbrH9JVgB", "policyVersionId": "7tpAdWPgDRV0hGWz"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GCAIJviIuUF3anX5", "policyId": "BiPE4ODYrAvXmvHK", "policyVersionId": "fmaCGl444BcCmyTZ"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'WC1DKtJR2WDDTfBA' \
    --publisherUserId 'GfINLcaAcY72kJm3' \
    --clientId 'wMoFl1AEnTXZ9LSY' \
    --countryCode 'x5jRHNHMV0lVzxGu' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'RyNPbA3fSHqyG3H9' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '72hnh1UIb9A102z3' \
    --body '{"description": "umFB5VbZerQSbnCq", "displayVersion": "mHSJTNuFQJ1QTy6N", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '5IunO1uXeGRrzgDH' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '28trInS8oQoKRWxq' \
    --body '{"description": "4l5jxUc2memda9Du", "isDefaultOpted": false, "isMandatory": true, "policyName": "2lOCTTjlQIYw54pJ", "readableId": "HankPOBNMvFJqXTr", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'ZhNYRJC1hs9BAVXk' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'TOnsoW6dafP65dbx' \
    --versionId '4nLCtlwDnS25y1Qd' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'zPrbHZsjNK7stzhH' \
    --body '{"description": "8jNFGOA4CpqUsqUT", "displayVersion": "W1mxuBRDKzqFu7Ej", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '17' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'GTLZRfv125IE4L86' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'k3vHuZM58yWnalM4' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KkFIpNQ2mtyBjWCB", "policyId": "pkFnPAQbXwD1JJal", "policyVersionId": "OexKBVaEsGquc94o"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wy0wJLGqESe0MrPJ", "policyId": "zz9UksVhtPEwzBp6", "policyVersionId": "TzVrvrrmc2ax6H3p"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UAdJaQo7oVTxdH6C", "policyId": "cGd4F1idnhBmWSzS", "policyVersionId": "VxqYpUlPXSjyveXl"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '1u4WN2pjntqMhfgL' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YU2rnIO2kYo7hgG0", "policyId": "46CqxENouV4og3dB", "policyVersionId": "g9SQgnPeMs5IoDkW"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3GaNf2M0MGLZ4KUG", "policyId": "GEZ9PqecPq2naIg7", "policyVersionId": "dpiEBzddE7hHMo8n"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hHsbkqrKMKVYhW7l", "policyId": "QGSgFZKPL9tcCi9U", "policyVersionId": "zNu52VXeOLwpMWt1"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'imwuMzH2g2wpJrxg' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kC4Q9Nq8ZDXmmjgP", "policyId": "8N6i3C6Qs7tYqXdH", "policyVersionId": "Rr9PHrphVIsdgADL"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cYm3lyqicx6QuDYN", "policyId": "E1Y8eXvw7toWU4CJ", "policyVersionId": "eMIqTiCargrbd4vp"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "V7odFVDfh7ezkWKN", "policyId": "UUzxmSb3sfriZ6aW", "policyVersionId": "gDW9MIlXt6sE6oeR"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'VsZEr5QNuTimODni' \
    --countryCode '3ib76964LFGAdroO' \
    --namespace $AB_NAMESPACE \
    --userId 'OV4QTuoRu3ryOvCA' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'NppsQhyZpz3l1BVQ' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'Vdss81m9IegT1x26' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'SZ9IkjtWd8xjOTQ0' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'An8paWZWTN1VQ6Q9' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'lOUF9NefV5VCsKCc' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'x3bSNBWutisdsI3B' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'CkEWKxYhqnUZjvni' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE