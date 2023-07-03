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
    --userId 'XRQbarqQmj04JkIw' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KVdYcpC8aWqFc4DO", "policyId": "RMQ6NKgnsPOsxnvW", "policyVersionId": "ZHnfSBaa72m9vEQ6"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SvrzmhGNkfQBMqGw", "policyId": "BtFA905tYLy2G34P", "policyVersionId": "gncc1MISoLQOs0KD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rlNy5FskFb84CFRF", "policyId": "Y40KiivtVUyaNGs0", "policyVersionId": "5fPLfJkgPuEA4V7O"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'nA9hFwt0DUmWN7n1' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword '86h3WSOAhZEMNzQq' \
    --limit '96' \
    --offset '11' \
    --policyVersionId 'aYK02Z7PM6NeOhY0' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["ySE3wDpbXYgqppQp", "xQ4RHq130aJiClg0", "nrY7kkxGLLVACMtW"], "affectedCountries": ["tnc5YEP6l8ZL4J89", "FqVUqTemJD8gWShN", "XqJy0NA7c9nJapX8"], "basePolicyName": "mmLW4ICpFFsw5mLT", "description": "KmAQEDy7hTk6fa1o", "namespace": "1QkSwvku9TcBuYCH", "tags": ["NhMqRusoTn5pPfUe", "Ouh2d9MwFVt72LNb", "paaDQ7BET27kLkku"], "typeId": "W9U0dTEGRv9Kw5Sw"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Vvu5Sa3ly45APHiO' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'ZsroexhbcLReEsN5' \
    --body '{"affectedClientIds": ["dAfeAeQd8IFzhaDK", "SeEANFj9RA4hxVm9", "QBhCxGts9a9AB6TZ"], "affectedCountries": ["paiKMYd48RwMYvIg", "JfQwmBzDPdniK75R", "sNlAzKoYHypvJIhG"], "basePolicyName": "jkY3U1IngmnOAGBw", "description": "bNOLEfibmcx63jUO", "namespace": "115i25uAOdYpRYR2", "tags": ["6LV6ghLC0uqAMKjM", "7Fu7b3v2a3dgEmhl", "5UxYl9ujVEHjviYu"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'De74ZH6EGTxGzM4E' \
    --countryCode 'eoBUxUhWNTXV7jUs' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'HFJzJJ5bW5BfWgQT' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'jIZRUqYTh0wlRfhl' \
    --body '{"contentType": "FYUAiIbSN3yItVyK", "description": "5GZuZJNqV1P8NCI7", "localeCode": "txoABrF3kywrMCxy"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '038otvBHDTkwtKxf' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'FXHPHQMMtg1PxmCW' \
    --body '{"attachmentChecksum": "RzyIOa8DIjZnzCL5", "attachmentLocation": "AEXDbdNarVmheYXO", "attachmentVersionIdentifier": "TdPiHHv9RS0OmOFB", "contentType": "0BeDsL2COrVflvPy", "description": "0ZPs9wy6wLb6tl7i"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'JBi6KpDtOTjxh8TW' \
    --body '{"contentMD5": "vpqz830skJUZR94G", "contentType": "axo4hbrFkxLO3C16"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'reB6O8pIJD6kTnvL' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["lDmV2jNurAVIcU9N", "o0bBdNj1JMmqKWw1", "xHZu4uFDyzZg2CHK"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'ooNbF4dVZe7rovgY' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'LzPM6da4fTif4mvY' \
    --limit '75' \
    --offset '30' \
    --policyVersionId 'tjt70OIuit4L3t1W' \
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
    --body '{"affectedClientIds": ["rulo6UBl17FLPrUm", "qT9wHLYjBnZLNl29", "aE4D7EFdvfvJezoF"], "affectedCountries": ["NnskfskBxcVOsFP7", "Hu6BHjvtYPAD27Qb", "N97BQh7SR2fQCJWy"], "basePolicyName": "2mHuhGnGC7E4eKpU", "description": "tZ3PPYT1U0EKjoDV", "tags": ["7JWIvNW9aJ0yvQ4N", "YXOayDcdEn4Lh6mk", "2LJnP6fMdDNvKZzc"], "typeId": "oVD4HeKpAeJyQUtL"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'ChIw40vZBRIv4Wm5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'grtM3oGwjG4J4p1d' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["nsGiLVp2ngKDw63E", "e4OpsKHrKqVmfxZv", "VoW45SEanQzEktAx"], "affectedCountries": ["KJsXGfZIJQhTiFsS", "rTorWM2w0EzAk7ei", "h7PF3X54tXS9VACz"], "basePolicyName": "vhAoIeWOPaUmJEEn", "description": "1sFymXHHpBXPvtkc", "tags": ["0mOFaW8aUWlYIRq8", "1mG5nUUid4eoBiAv", "0PAEH6S3RBGJs5jC"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '43ofkDmzWYarCKuo' \
    --countryCode 'HifvZ12Pw8z35zPr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'EPIBHbwI93ngdeAg' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'st5ew1HxsM9qbx4L' \
    --body '{"contentType": "LWcw81o8B23VITjN", "description": "bdKN3kdoQWN48l18", "localeCode": "WSbfcKnlwnpK9wxA"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'QtX90NVcl2FgZDI5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'tmEW1pJzUcX7kZ6r' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "pf5wItKXH0Now5z0", "attachmentLocation": "ORgpSeWUvJ3CFdyE", "attachmentVersionIdentifier": "oWlHyQwobcc6wNvZ", "contentType": "GykuxjcDH3dXVNn0", "description": "FMDj9r0T4bKCVqdX"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'K6xXMfNY2CctCyts' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "EO7SJ6kfdQyqHZfy", "contentType": "WwdC3CO22MJb2EvW"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'pvl1BNMQ8YE9ENBR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zrXtThDTht5IDC1A' \
    --body '{"description": "G87IPWjGXIFB03F6", "displayVersion": "FY0GuECB85luaZtP", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'WIRWoTlHgJSAKPNW' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'i6w8D30zeZsKLTej' \
    --body '{"description": "vKZ0XV2n7o18Lr56", "isDefaultOpted": false, "isMandatory": true, "policyName": "wV6kN8hJgn2IX7P8", "readableId": "RqUDCDFj53YVYQoQ", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'FKGNlT8SiYrdcOkq' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'JIJbcz010s2WZqt3' \
    --versionId '69zAS81psHdEFCBg' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '7gkQND4w7uwlXeHo' \
    --body '{"description": "9vIzRMR0UQKWGm07", "displayVersion": "3FmK5oAUIqL5r7TB", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '54' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'mxQwOMZ5nL114huE' \
    --publisherUserId 'ri0meeJ6NcDpyJod' \
    --clientId 'IDc1mcoa0VYICmbb' \
    --countryCode '69zhHT6dNx1EsQEY' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iqg0HNzYsuubcHlR", "policyId": "qVuWXOVTwEXtEyV4", "policyVersionId": "PJkC4OmKsdvUnuCR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "O63Bm8WmCNIYasWB", "policyId": "cXfjGjvzwJCGincq", "policyVersionId": "c5iebg3TuvRzoENV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lFQodQEkcND2DIfQ", "policyId": "55YmNUvECzXjQxYp", "policyVersionId": "E78BU5z8VUJpLrKz"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'YTzfx4c9yhAWL9ml' \
    --publisherUserId 'YXbTUjqBEkaHwND6' \
    --clientId 'tH6FbzTs0njlSBWo' \
    --countryCode 'UvS9XUUJMpl6NZ67' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'OkYLZfV3y5CggRqR' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'W2BNHOjGoFNkZ9BD' \
    --body '{"description": "TPcuGrI0mHFpQ7BP", "displayVersion": "9le1d7VRIvlvUdXc", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'O3m727vJzop14Fgx' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'ytEiUzARanWRvgTv' \
    --body '{"description": "73OHeu8XoZhIuOlA", "isDefaultOpted": true, "isMandatory": true, "policyName": "i3A3NOKsyZ4tufCX", "readableId": "LAW3n0xcpTrUOxI1", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '7aORcVbaHpAXiHFm' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'xmorV5gMLdstohJp' \
    --versionId 'i5AGKiiiUktCeE3o' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId '9GhwK5gCkGnaQ3JS' \
    --body '{"description": "6YXDTjRIczIDjic9", "displayVersion": "u0Uy4okLvpo2tHfV", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '20' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'FaWNvqdLmupAdxpN' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'UhY9SAgLocjW0HzB' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'muUHRPKoyRSHHnb2' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '5HK56yWKITAxTSDC' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0I3G5QMZHsUijFZ1", "policyId": "NgeHFtvVQeV4tIcT", "policyVersionId": "iodU35zaBujdBrKc"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xwpDqLQZdi70S5K4", "policyId": "x0WYQpotId0r4w8D", "policyVersionId": "Pbv4TtHcurwMnEdD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DJOx7j7jX7oXLPOF", "policyId": "80NkKi1iR7udWZHF", "policyVersionId": "sNwgSDKsTi2o7hdO"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'IHxfRVZDUXQsT0Nh' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "z4DfqVLmPhAJO95i", "policyId": "yEOKJiklJoZtFTaw", "policyVersionId": "XZdc7zPq936dsnWZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4uGRmpsYRmp9ntbK", "policyId": "jQdvi9t0YsnaT597", "policyVersionId": "r2i3njlHMSWf0TyK"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FCTapKN9ZfflipDC", "policyId": "OsExbcePwH7VU50q", "policyVersionId": "YqCPR3bFhfJx2fGX"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId 'yJIBzTu3WDaqzZCk' \
    --countryCode 'J575W0dXQ8sRaTlt' \
    --namespace $AB_NAMESPACE \
    --userId 'CVJwhQeQtPc6Ig0T' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VRTrlgNU5dxKIaDm", "policyId": "CTBNIdlE5nSXUYdX", "policyVersionId": "W2g5FtWlPOqKW8F9"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JPRFevTYnBk9k4QP", "policyId": "s5VeXuwMRxAGSQXv", "policyVersionId": "P9igh2KsmZS0COmD"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "U5787CwyxRWx0EFI", "policyId": "ZFeFiXG6GDKp1E9S", "policyVersionId": "I9P3ecc7dh17Mnz9"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'DqjURAASENGmKwDU' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "W0yYhbXC8NlVJl2u", "policyId": "iEdjrt4B5OT8tkBk", "policyVersionId": "yNgKbU9JVrWmZ2J4"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3GEoIZyN4PHJErt9", "policyId": "sx6rbClws0apC5UY", "policyVersionId": "IPZas9Bj6GCJ2K7n"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "beVS00XJZEYTwdas", "policyId": "WNN1wEjrjMW4b24v", "policyVersionId": "7ZNB4Eac49LAaNV5"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'JKGKps6WMr81dkYt' \
    --countryCode 'FCECsFoo6BgR051F' \
    --namespace $AB_NAMESPACE \
    --userId 'FTc5Rgs3V55CHfgj' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '5iA5YoDfOvWxFAbs' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId '7oHapQuSkVn21wEd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'ujBix50r38JYksKQ' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'yVczXztWIGjBdR8o' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'PPKA7UcIVFecyAGZ' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'iQGD4BjpELp37siy' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '0tBahUsPKFEfoDrz' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE