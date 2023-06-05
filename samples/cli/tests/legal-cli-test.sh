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
    --userId 'guz5cxiFHLoCT6PU' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wPTctpCyX7Wn9KGt", "policyId": "z96NSSDtknE5u7Cv", "policyVersionId": "h4mnjRNP5z9N7243"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ayCHyagoFnWzQebR", "policyId": "NxfgyCkn775BQ9xn", "policyVersionId": "YtnbeSVNRFLYbWMa"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "jr7boM0VIasp9to6", "policyId": "WheYlR1upABgNoh6", "policyVersionId": "RLbFtFQDE4iFz4ba"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'Wp1YVhrJuRkrTqUJ' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'Z9KGZRCvMBxz7nSn' \
    --limit '77' \
    --offset '4' \
    --policyVersionId 'lmM0HooTdSezebiP' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["odpz9AsrSHNWWocs", "ZkcyICysezxTdzBX", "QtBIbcSSLpb417q4"], "affectedCountries": ["F3W9a4enq1yWHqxQ", "9pWGbs2wecZCT59T", "ZYCEqUOUhL8JoBEo"], "basePolicyName": "eokQcKV9aNSefihP", "description": "t4TKvjav4pLcP5FI", "namespace": "DScFo3a4impWxgqR", "tags": ["KqsqRH0RugsDVmTh", "nZdzOQ4qN7t12Ct3", "zEvDCEF0teHjEeop"], "typeId": "ehwMwOH0oL7hpUmt"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'SP9ORi7WP6ma3LgG' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '7NHAlg6eDnNjyIyi' \
    --body '{"affectedClientIds": ["PSSGrw2Naqtw5ma1", "qT9BuCXXjG07A6w5", "4EGXlkweYyY64ytf"], "affectedCountries": ["IOEMcNmtSkSxIRUq", "LFACByjIaZF8M7LA", "PzXRIwJMaSkIpIPD"], "basePolicyName": "jYroNYSfNMk4TaZI", "description": "hazldgOCJk6mRaCp", "namespace": "JAaTyMRJiy2U3zhG", "tags": ["J8UCnxxTMiOHynEF", "U69KpsJtdUEwLpev", "gm79wqvTwxa0CqUe"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '0pcx4o1sfN6aO6tp' \
    --countryCode 'zfqG6JuDwgCTsZPj' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'XsR4YZHPWs6MCtAz' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'vVZ4zCy79rJF9mr4' \
    --body '{"contentType": "qBhBSwRYUKtjNzTW", "description": "ak1cthtNhujYRvvs", "localeCode": "fKfm2EeeNrccIXfI"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'ReZ1jocHgzt1oiYX' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '0Mf0u4eb8z6bBH4H' \
    --body '{"attachmentChecksum": "1AdGPhVTLQoouvS1", "attachmentLocation": "HPZS4kICDyHTQuFu", "attachmentVersionIdentifier": "4CwDYFk8sOW22ehf", "contentType": "POigz6teHG8JqVFD", "description": "beKT58hOCB16GHfH"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'NKbAygsqJqd1k2AQ' \
    --body '{"contentMD5": "iuioVhWjg7f5QcR7", "contentType": "mTFVtt1UJ1orQhFP"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'zJroHt6DQ2scvYF1' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["DlV4Np1BeSGA3G6z", "ctdfHI6yoqxwwNCu", "y2HlVbxBj6EHvrx4"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'EM516WOWVLMBjaJI' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'zPpE7kvwRKpWOKND' \
    --limit '34' \
    --offset '60' \
    --policyVersionId 'Dyy6pj5Iun3GLrr1' \
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
    --body '{"affectedClientIds": ["aA1yYwqo6NzHpTYb", "i7lgHB7KBLIrCxD3", "ZnOmdtVF0GB2MyZm"], "affectedCountries": ["B9BS2x8aHXfGssT6", "mfno06gRPWwF14Wd", "kkzwEy4WSNDUc5DO"], "basePolicyName": "Hihq4Jal5OU1DKNT", "description": "W9z1n10LPWTkcIXm", "tags": ["zuVfsUnsxidICFyg", "eOudtNG4ergHWAAk", "gSojDfEOJpu7qe0P"], "typeId": "fF0tzOgbUiZNq011"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'xcsuxZ2patcjn3lK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'IpO2WqvDQqq9Ide6' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["qbgstWg3k1WCINvK", "iYHmbDxWzWmkI1UN", "HhWjXcZBgazoJ8pc"], "affectedCountries": ["h9khb8ry6M5cegtv", "jNLm60Mm8yiyYS6X", "sv1s6M6MAKezhbcl"], "basePolicyName": "8XGzi2uGeW5chRga", "description": "VVdY4Jdl3BQpAWmE", "tags": ["0Ch4SlhggQsgbZd5", "7PAxMK4rtwRUGDOC", "lmxQPEi6lspPgVtw"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '1hGTpDI2WVi1JWy2' \
    --countryCode 'yaYwDjBl7oeQMpkA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'J5THydyq6suL8tqG' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ChJGBH5UMNKGGU3e' \
    --body '{"contentType": "SMmOKEQGAHftA0st", "description": "G2SpPPumyI0pz6GV", "localeCode": "C1sYVo7lKP1WZhej"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'VcwFTS5F9QsIfDZq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '7clxixjrZjkD3sPn' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "93jnbwR2aksifqmj", "attachmentLocation": "p5G931lh5SpYamMO", "attachmentVersionIdentifier": "WKU9Mf0eqaQzTj2M", "contentType": "bIwOT2GCC0oGF1l7", "description": "FwmJ2fwwSEAJlAN2"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'W3njFJfgjU6RPaGz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "VynOuIOW90qPlWVd", "contentType": "NqxgHoSZenZGaxke"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'e9KpRq1SFonF4OMW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'YXpCZIZu5bYxLBog' \
    --body '{"description": "V5R0HrpV75sZDFoV", "displayVersion": "lv8ylq2Slzb0lZSE", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'EfrrymHyfVzUq720' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'siyzeKjJQ9Bje7Up' \
    --body '{"description": "lsYaJlYZVlzMSbs7", "isDefaultOpted": false, "isMandatory": false, "policyName": "OqaPwM7qNKl7Wgut", "readableId": "GcCG39KO2wTyuGoQ", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'YJ7PLnsjIdKsqkQu' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 's79xLXSwZQpittWq' \
    --versionId 'N5PF56IVzfsMqmt4' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'omMklSJ7Z8paOIum' \
    --body '{"description": "4UcBh05UmOZD71dy", "displayVersion": "27Wv9Niqzt4muGGL", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '36' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId '9tDg92BRjLpncE7U' \
    --publisherUserId 'KqeEd6Eu6VpsohMT' \
    --clientId 'PdP1JMfXKkF55ZdJ' \
    --countryCode 'xG5MsKbcptm08epg' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2picwi6Ek2ZwRWsG", "policyId": "IyNORJ1MCjuMxVGT", "policyVersionId": "x26Tyz7973e0Pv9A"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SUfEHAxumbIHE9rI", "policyId": "NMVWnwO46xTcgkoa", "policyVersionId": "JgdBfW46fADGWw1u"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yWYto0TVy7rLhI2Q", "policyId": "UfNgBtv5pGy3LV5J", "policyVersionId": "nqFjRjjM0X4Iog0H"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'PkvV42V4SX0RS51v' \
    --publisherUserId 'KziS9grppkhpL9vY' \
    --clientId 'UVSzeaRs7rQE73gs' \
    --countryCode 'GQ72QW7ppEiQQXXc' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'vfgFshxi2UisLh5z' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'E8rM3V1U5cf76ZAH' \
    --body '{"description": "Coao1WtnZe35uB9q", "displayVersion": "YMJzS0w1AlucJVfe", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'j1MvYodTLSjODNqA' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'UdDRUd3trx0NlWmr' \
    --body '{"description": "PBNHlupyCqhTatZK", "isDefaultOpted": true, "isMandatory": false, "policyName": "sg1XqktsuMnQu1I8", "readableId": "22JOloLxSaeqpqm6", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'IJjFrmVbKAEVIRbi' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'dSCXDSNUAnkeKZI2' \
    --versionId 'nQscVF1rZWMgqNnG' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'iYem3G3kQBaXVa2r' \
    --body '{"description": "B3P5srM92le6QEjJ", "displayVersion": "9oEuS9grnDZjzcPB", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '38' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'ETF6l6MeQqYNRMK7' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'YrUtCp6Pzbzrriks' \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'X5IQ4g46vS454ZSt' \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'Qp6b4YCC5TaPmsvC' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yhz5axYh7ijZRzlW", "policyId": "8o0lyJ0YmRTbHvFO", "policyVersionId": "0EMsITsZLbyWF8FA"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IFa3EKy53AX4UH1h", "policyId": "217qBG9auc2nyma0", "policyVersionId": "RDHMEUW8OH1Lv533"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "POQ8tEEJR2V9S8Si", "policyId": "XdArLUYjXryVAYa2", "policyVersionId": "T6sLLxTCsBJo7huh"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '8zSmrU4bgqaNPegH' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sTvf3K160lT3ZAi7", "policyId": "EleBpbNSR7HAtmAg", "policyVersionId": "QhWwuT0rYThdVGTy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tFHC17ZWLXLVkvBm", "policyId": "bBxH8eBkJJDeMjR6", "policyVersionId": "tze7RIM44Vc5O2CM"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "W7lyulc7Knbf1ewq", "policyId": "vfHlgUymF4M9E2Xk", "policyVersionId": "MyzpIWF83kUzJ87k"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --clientId '7knq6SDxvFV9v5w4' \
    --countryCode 'mtN7Z2UIwI4i1dJe' \
    --namespace $AB_NAMESPACE \
    --userId 'dCqiXhLohLbl0unl' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OUwiJxHQi7kOXpca", "policyId": "9EumjGpHzc0ln43W", "policyVersionId": "mbWByc934ZzqrSFr"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MLbtIlBPN1zBpKum", "policyId": "4tOJW1m7g8KKE3nt", "policyVersionId": "xtltfQKM45WYRpwQ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hOHdc6NumLG3x5pz", "policyId": "InoHNVMvzpnSd2Bx", "policyVersionId": "8qCDoHlL3nEeOcpQ"}]' \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'HqiSZTQYEnVGbKd8' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hwMNOevAyY6RoGe3", "policyId": "vHRNyWO6ctmRzpxe", "policyVersionId": "lpmQm0GBqdRmyj6I"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Am4WwzyFtgkY5gtY", "policyId": "H5RMkB1G4CaYZgMc", "policyVersionId": "VP6Q3Hsodme0x7SC"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DwE4UapMdCgLnco0", "policyId": "AQokAGROr8XaX5s2", "policyVersionId": "lla0xBMGfMLRA2A8"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'jtj8vjfDx3mhcDfE' \
    --countryCode 'BvsipjOcd09E82eL' \
    --namespace $AB_NAMESPACE \
    --userId 'a8K6TTxy4jWpE8kP' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'QqXUj4K6MTARmB6A' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'uA2se7vTry3jQmAS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'yFoHv58DpK8tBgwn' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'GpkQRykP0xXyjwWQ' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'da1temKkMxSYX2wM' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'l4uFmNY1NkapOfOK' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'OycPi9qALgrvLWDs' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE