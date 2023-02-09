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
echo "1..42"

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
    --userId 'ets9AavP' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Jj24FT6T", "policyId": "jogsgG3D", "policyVersionId": "evGejzty"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dXFbDAsx", "policyId": "gwYSdJEX", "policyVersionId": "6tMn28oV"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BdpJrk0z", "policyId": "bzZRGqVQ", "policyVersionId": "NHPrzHae"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'OGLqToef' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'cUZtAXOK' \
    --limit '8' \
    --offset '22' \
    --policyVersionId '7nTJAqLm' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["WbitteFN", "g31piE52", "fB6FzTwJ"], "affectedCountries": ["t8rPa79E", "kkLEomWL", "8v0VMqeU"], "basePolicyName": "HLf8ud0U", "description": "1u9kNsQc", "namespace": "fms1wjUw", "tags": ["rqtE2o6S", "tFFqcFCb", "XpxHloOU"], "typeId": "uuzIuknO"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'X6ZCxF3a' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'hRnsG27g' \
    --body '{"affectedClientIds": ["zdLG6Gnv", "ssApYaiX", "WmIdFox7"], "affectedCountries": ["dOx1Mpo1", "1ehGRZg7", "CZ8k62Ca"], "basePolicyName": "ajATWotK", "description": "0D78u4Wf", "namespace": "BNSrU3MD", "tags": ["F436CxNt", "NBywtGPI", "lUaWBh89"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'sqdT3gCb' \
    --countryCode '5h598QdQ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '4qjTUAuh' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'jhRIEYCN' \
    --body '{"contentType": "jxkhrRWC", "description": "F8YKhtkB", "localeCode": "J6QEsfat"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'zeUilc3y' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Do3stU0m' \
    --body '{"attachmentChecksum": "nzv8ndtL", "attachmentLocation": "NZyPmFfb", "attachmentVersionIdentifier": "VLSazk83", "contentType": "a1qWvFw5", "description": "e8Dk07CT"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'Ce5zTrYM' \
    --body '{"contentMD5": "DN8NB3zV", "contentType": "xfFoCQ0N"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'MilqwIkk' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '4idi836p' \
    --publisherUserId 'qaP9AImH' \
    --clientId 'rFI5eXFs' \
    --countryCode 'mEzsM17D' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3rIFXb46", "policyId": "eJgnnHuK", "policyVersionId": "Ry7Ar4pl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9sexXOx4", "policyId": "pT2Y1mwP", "policyVersionId": "GDYQeBvd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "a5zCy64m", "policyId": "N1RWjtXz", "policyVersionId": "fyssLPDB"}]' \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'hJZWNUMz' \
    --publisherUserId 'cZZBiYOx' \
    --clientId 'Nv376CB0' \
    --countryCode '4PK7SxtO' \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'VBywrsz1' \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '1IWEWIfb' \
    --body '{"description": "FSypEqXk", "displayVersion": "gViN7yCa", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'KpxTdl29' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'TypGflyb' \
    --body '{"description": "xcyleKiM", "isDefaultOpted": false, "isMandatory": true, "policyName": "VF8GaHHS", "readableId": "5t1Chb2b", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'iW4Uh4vM' \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'sWDRGODo' \
    --versionId 'JjC4RJub' \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'lgDYfhVy' \
    --body '{"description": "PHZZZCPe", "displayVersion": "VL7L9AvT", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '57' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'GMnkytSD' \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'lXj1u8eo' \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'njRJTWLl' \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'TAJ0HNrr' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6Ghu44Ff", "policyId": "w0TQTXDf", "policyVersionId": "O4oVg3lY"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qdCXjQMa", "policyId": "QVSaOt6N", "policyVersionId": "MlAq1Qqw"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Z2HTrMxp", "policyId": "CTfQaqRp", "policyVersionId": "NAElm6TE"}]' \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'bZb9Oy6A' \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "h2rbhDT8", "policyId": "mHBHnNdc", "policyVersionId": "MWSoKzgA"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kqkRIl0s", "policyId": "4LbSUaxX", "policyVersionId": "oT0PYFBZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rRfPEkhn", "policyId": "Z8z90zLL", "policyVersionId": "iPAHC6XH"}]' \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'CbOIDa9M' \
    --countryCode 'GlbYLC7R' \
    --namespace $AB_NAMESPACE \
    --userId 'm3caJECd' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tTfGyv1x", "policyId": "HoL1MJHt", "policyVersionId": "qzWzKiF3"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3rceLteF", "policyId": "Kxf05Ea0", "policyVersionId": "648b8mpx"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "o0fEqVwW", "policyId": "wIBj2SX4", "policyVersionId": "gwqKuCyw"}]' \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'BZbeSOyH' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MQEYQAFq", "policyId": "NirPKaIO", "policyVersionId": "6RIeA4qm"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "yjntHrxr", "policyId": "NjR0HkTe", "policyVersionId": "wv21Eax7"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VjmjD9d4", "policyId": "rBr0G8sB", "policyVersionId": "JkdyFssd"}]' \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'HVzZ54iK' \
    --countryCode 'zAS5ivsa' \
    --namespace $AB_NAMESPACE \
    --userId 'WdsbslcW' \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nXVVGrLS' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Idd2PJwP' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'ohYqPtRh' \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'oZei5aIf' \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'y4CFuqID' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 't5OaMsCx' \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE