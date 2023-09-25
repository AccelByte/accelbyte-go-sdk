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
    --userId 'BmeKiIL0igBq7sFr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8kCfHF86tpsi4r7c", "policyId": "DDkSCpsMl7V0xWQZ", "policyVersionId": "IY86iCDrrpRtI7uy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2D1znml39gxKUzAi", "policyId": "9ISZlsO8V2loMb5N", "policyVersionId": "ySz21DzPrtJnFpIY"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bMVztvAA1LqD0u8m", "policyId": "TcU4L8IZ3UommWY6", "policyVersionId": "wfoqi8qe2RWKLX9Y"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'CgyOZ63Wh2d3o6f6' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'IUj9FJZVvCdrKZGD' \
    --limit '5' \
    --offset '71' \
    --policyVersionId '0rlYyMUoF88M8tIg' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["ryyMcYs89xNNuNCb", "vNeX4CDqXb0xZ2is", "58k2em4tGHOQcCs4"], "affectedCountries": ["r1pX4oTmqYHrXAQk", "NgtqQDueRJI95NKx", "7gkcCkRAyf5TWczp"], "basePolicyName": "FXf3RArexhCmu8TM", "description": "V64rwRZANGNuNWwP", "namespace": "Y06uRFiQFIbIl5KX", "tags": ["B83l2F85NxUaRShT", "jhU7PwS0QYU7Sphv", "RcdNDpGfS69pyt65"], "typeId": "8YUKvyZQlWcHHkxr"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'DVXlKM7PJVaj840t' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'UXIlNaxvPRhuHtt0' \
    --body '{"affectedClientIds": ["LrmAJzVtj440Mo80", "YO11jpJjWVb3uxK1", "YCo2u4IHFGpkxToe"], "affectedCountries": ["zU25XhdzaFUQUaQw", "875uO1LtlsRzMgyz", "DBGB11VJdTaSAcYF"], "basePolicyName": "Hie7xJ5oohqQPAdH", "description": "XyEyRhGI1cC5L2mv", "namespace": "FO38UXI3zolWNbWA", "tags": ["ujvfuyvqTZ0hmHXR", "lxNzmYphwhDYQ4qa", "RgydOKLkA4BeFmCu"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'onmcTMiDz0RvWtCW' \
    --countryCode 'SnkjNsBDshGWWDqE' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'KqYG3XXiBkoNUId2' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'jTwYwTWB8tmRInUF' \
    --body '{"contentType": "mNuiBpTuAVLBtKsb", "description": "2K6FNgcv2g4sG7X4", "localeCode": "ZNdC4DCGMagHCshv"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'FnYOeZdWcCzG2hjq' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'PypSay1eyG4aFVeJ' \
    --body '{"attachmentChecksum": "uKwH4eoH4W9bty6G", "attachmentLocation": "Kv30vRATY4rk2pqg", "attachmentVersionIdentifier": "3uDqxuWTn0yBSHdo", "contentType": "meQ1ioIenIgtVWWi", "description": "Hgi58dzsRlCQnFwz"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'PYexiOzSfQizNZ1b' \
    --body '{"contentMD5": "JZBzNmp3YiJehokd", "contentType": "JQp6Z7NG0SynLBFJ"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'iXVpjO9OzvE6J7nM' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["mmCYuylkmSmt3sM8", "fq87hhPZgJ6VcZXC", "USbRbEbzoy6PZOLH"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZuwyinTmbauQrwv7' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'MfsIhAFTN7Vnap2B' \
    --limit '78' \
    --offset '78' \
    --policyVersionId 'zfbE4b4UIUcdvDCn' \
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
    --body '{"affectedClientIds": ["FnpgjNvr56VmhwFJ", "tAwrMz2aeQyXJgxL", "Dyop9ZWTgVTmaVVB"], "affectedCountries": ["B8dqvWd2zOFwcamE", "7L0PzG9B31Iziwxc", "Fm41LDyIu4bviwvz"], "basePolicyName": "LA6iDQbmw1clp6zT", "description": "k1vvAYEnvJBXAGOg", "tags": ["BTFn1NVBLBKZTSoJ", "DIZKvgSVPi9tpVEZ", "LDTyJIXJqfG4SuWT"], "typeId": "BQcr0P5gcow2CNMt"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '4ovuASlD2QlPQIia' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '3ibAfrfqVKyBIlud' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["PX13hIUS29gp56b0", "RcSDiIb0VNgoFqT2", "78gthw8sIS3i9zOI"], "affectedCountries": ["HdU10TTtZHDSVN9f", "6fowZ52tG3agowmv", "2fEvolDMSyWS0eGZ"], "basePolicyName": "i6TRlQQqPEm5czYd", "description": "rle3jwimGtmtiywV", "tags": ["DmFziouJGcBxxGc9", "UsljqJFMvtmpz4lg", "7m7uBkuBeQSdS5EL"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'JUngJbRNv3tqD2AI' \
    --countryCode 'vCUBJM4ed9Z7mHDs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'Dh9UHdLs1czafPqW' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId '0dZb9bK8E3BbG48l' \
    --body '{"contentType": "mGD7MUwms08cjxyz", "description": "XHSyCEwSUheeYH6l", "localeCode": "FKwnFiKjf3c4nh4w"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'x7D3wz5P4kW0tXb4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'ZcNIzoosJUVEdwbh' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "L3gyzVs3QvXr3hsu", "attachmentLocation": "i2PciKqXHzdlhjBv", "attachmentVersionIdentifier": "5uWawwTM8qyhoB3v", "contentType": "ZIGpI8CD0k2zMzea", "description": "WduEbzNjuj0cXwvF"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '6HmqtBQ29EEuGtoU' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "N1KFhECvxtsn3qIn", "contentType": "xwPD5NmZ3x3WCX1f"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'pO1Di6C54Bq7PDVk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'QQxiDi3GgW1lB8L2' \
    --body '{"description": "B8kcPAA0ax0l38CT", "displayVersion": "vi43UrIk08V7tlYo", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'gA9QYKrdnWuw83JJ' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'sZOLk6f8HPMa0GQ1' \
    --body '{"description": "94a3sKRAgFb2itO1", "isDefaultOpted": false, "isMandatory": false, "policyName": "uU3wv2NcRaCmSSaO", "readableId": "VbL22ooIdhzEltHS", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'Y3yGbkIlPjTsWQ1T' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'TP5R6L3MTZzDFdhr' \
    --versionId 'QRECPAbIcMvgufp1' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'TNk5vqF99Dju6N23' \
    --body '{"description": "ri5GmmpE9dRlvvby", "displayVersion": "kEk49i2Bij2qODEt", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '47' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'k3ESnoCFkJXpNrFW' \
    --publisherUserId 'A3y3lUjHQRNZW6bN' \
    --clientId 'OVUIJiLsIoMnaG05' \
    --countryCode '1Cp9sq7SzsTklCpl' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Rc0zC8KXr8M5pmCS", "policyId": "Cn0WkF5EC3cbjSQo", "policyVersionId": "SXjSvdP3AfbMFQYY"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DBMrUeTezkvS2I2G", "policyId": "gL20PxapNmmvZXww", "policyVersionId": "vIbYJFxu6eVgLsMJ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "U3h16x6Yh0SzUcM7", "policyId": "4OnfQaHsF1nwXOh6", "policyVersionId": "3hQ83I29hcKTlvdX"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'bXfa0VX5BPfMtkNJ' \
    --publisherUserId 'Wxe7PSJfnaQGia4t' \
    --clientId '9fnIlHsFgVOYTHPp' \
    --countryCode 'ayfXEpRdtUCPxtAe' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'ozP9YqR3yiuGd6W7' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '4sDBIWsTb99LhXti' \
    --body '{"description": "2PHGnUoeEf94Kis6", "displayVersion": "fVtqYCz4iUVDTqVS", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'Nydo1rldSZ359WXU' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'YuYjEyOPBSw0VrzY' \
    --body '{"description": "QlYIGNCF4dRbAL3V", "isDefaultOpted": true, "isMandatory": false, "policyName": "1cMfkXJ19hqjVjXh", "readableId": "kkIt7YTHs8vaklRN", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'TuarAY4ZSb8PbG6v' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'ZCtyEjbt82pB8Rlq' \
    --versionId 'b4UQgxMfGzcgNQun' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '3IdHTLnzHzXbHUQI' \
    --body '{"description": "1Bs34rvkCpCLrkcY", "displayVersion": "ye8jDE6RP6EX9jog", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '48' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'wPD2VJTxYqqI0Bw4' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'QZUJzzeUDCFRNFfw' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CdWM1UGg9NvMHrYI", "policyId": "dLNo0wvyCACnO3Ag", "policyVersionId": "JrFLUaEej8HGFqXc"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PZMTed8jeN7ejqlY", "policyId": "lfRBeaOOrXRbMxD4", "policyVersionId": "8HyoxG17U9SyvRl4"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JlffgYtTlkKXg0lC", "policyId": "8eESX1a9RxShrOLF", "policyVersionId": "33czQReuzZKNPr5O"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'Um0jVpsFGvykZRoc' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "krbUoYxX4O7DPNTX", "policyId": "o6kk2kVDCb2tWsZc", "policyVersionId": "PKirzbN2Slo18wUL"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jb3OLvRUwxdrmHQ0", "policyId": "PRGwLSAPbcwf3DNB", "policyVersionId": "nOB4NGLIhCxREgKV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Qf3yR2QKt4qoqpuW", "policyId": "TSdUvPVXKfPlGSzf", "policyVersionId": "dEmoiZe3FvNxqFPr"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'Fs3vTqHJnlBVu4Kk' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dW8rCQGlTyy3NG67", "policyId": "GUkS2cX4AqnFeTm8", "policyVersionId": "omZwijg9lIXSwc8I"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aurSty3L36kI8ZA4", "policyId": "5bWNBXttt5gS0w3C", "policyVersionId": "bLIszFMBXpHxv5bP"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FbQfFJajWpV9Ij4e", "policyId": "osZbECsP5GaQ2P86", "policyVersionId": "p2ZInbHpbfwC5tjp"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '7GfvDVKL94xe5Chs' \
    --countryCode '3qJXV9ZjeXbhgDK3' \
    --namespace $AB_NAMESPACE \
    --userId 'GDfVc4JOWRwtYrVo' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'C8hecfjUGUmCBq97' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'wwSPrwE5pqkoh5av' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'p4zldKylGEhLHAdC' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'vVOyuDI99w3PVdmj' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'CiFXAdTzF0qngBvl' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'fHsqqQuhRLzWg8KY' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '1C14FviPDfsit8U7' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE