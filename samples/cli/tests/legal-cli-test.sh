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
    --userId 'nbzhCRb4DF2LRoog' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ej3Op1WKu2XCqXB8", "policyId": "WNSeZ7XHw0g8qF6z", "policyVersionId": "gIPvIvuVD4aXygA3"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "eMrjaSbqtVBvyF1r", "policyId": "qJsj58jrSokIGHAX", "policyVersionId": "CbyeSVG0PsK9czJj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BmNWMNsvnKvce9cG", "policyId": "ipbzt4AShUJQdE3g", "policyVersionId": "lxkf6MCChNXX8eou"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'C5oBhsrRjHEfXvEF' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'mWedpXZS4qpqUv3Y' \
    --limit '87' \
    --offset '64' \
    --policyVersionId '3Q9NeqPtv1m5nyn7' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["8rFjhA8f6ffXONvO", "Sfvb7Xn79PC4KIlq", "wKPr75zeOok5T9hW"], "affectedCountries": ["3AcOQ6siOn6PhHfe", "TNclzMXVlYHzqQbN", "nYJ6A3LPWoZ6M8yR"], "basePolicyName": "3ZuhacoPQckumtyL", "description": "aFQneW7kvfyDSMd1", "namespace": "9lZFE0qDd3tUu7ui", "tags": ["NQmu3LBGk8iV49y8", "WRZd8MfJd9QESAMn", "a9UGz4jJUmGnwIwr"], "typeId": "MjcNTw9YoPzFpNu0"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'Zx0Hm1LkhjFVq7K3' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'jD3lsIok13JvpNIl' \
    --body '{"affectedClientIds": ["drnN3sEdpc8an8YV", "yJfCvFtSTRx9BUy4", "s4OuW56SFstWDLdZ"], "affectedCountries": ["A5Kf8hvekzHsov6v", "WBF5trkZf4KcaO94", "NaARx8zYtOE0OTyI"], "basePolicyName": "UbzJAwU6qaXUHucZ", "description": "txKtngbacHX1ROke", "namespace": "v2sDxMe4DqwrQOz9", "tags": ["NHofwGS0o4OTt7xv", "aCKo0pGZuLu0psy2", "MSfxa8Z06XxSBcH1"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'UBlkL8GQOiZt607O' \
    --countryCode 'zpeknGfjWFGlEsd8' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'Jp0Qgjd4MHVVrDbf' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'gBJS8A7FkCH8QsTf' \
    --body '{"contentType": "FQDxXdsreJnxtWlm", "description": "KJ5StqI0vYn387He", "localeCode": "jYhWErctvBJhE1Ey"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'h66lbTkP0kgHz5wg' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '3P2qfxwt9OFtnREu' \
    --body '{"attachmentChecksum": "vkN7awKUeH51Q65n", "attachmentLocation": "pLhVxizsiK7FlL1P", "attachmentVersionIdentifier": "IjVsTPuTq3BMuBt6", "contentType": "TfwwMJEs0MFsJlM4", "description": "Xpc5gEkLror1a5pe"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'NwiOB4AFhG2zNwh2' \
    --body '{"contentMD5": "fBlfxjtXTww0k7SK", "contentType": "nkFUfjra4eXuJY0v"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'Gg9dqMxZn00zew32' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["5rilNm7qXNrxHZxJ", "3s1GcE3tuu0rGfP8", "VSW36Z5fBunNoKvv"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'ouTpFisXGSHZ0o7t' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'az0vCjVNjLdEjXGU' \
    --limit '36' \
    --offset '14' \
    --policyVersionId 'zgDJg9uegETsK9RH' \
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
    --body '{"affectedClientIds": ["jAttnGgib2Ek0Rxb", "o80PkN9qCc5DGGoQ", "raMd2OPYD4TpbCYM"], "affectedCountries": ["R6Tj8pHNCjUdQz5n", "kX7tVhsYSyRm0W23", "B0ldJsBYjK4bUSd8"], "basePolicyName": "NwuSFrVo83KVuGfx", "description": "Kbc6pWgZS2sJb7c5", "tags": ["7VyXFlX9wXh6Y6Ul", "TccITniZwdIw3VGR", "PNaVNIA2U25d3eLo"], "typeId": "7qVyFyEq7coSkAOi"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId '03MQBYInLJU2DEWN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'FsEB6WINmsno4zYj' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["6qFbgOCG6EpKkICX", "AxuyjzLUlerR1XgH", "KCVVvG7V58bSCPwa"], "affectedCountries": ["DNQkOIrcihLzXTUd", "faQmnnE0NrxX51Lg", "HHYGUEUcMTXRjtEj"], "basePolicyName": "oEd31L8aV8VNsRXI", "description": "bpbsqLNKFecWxMTy", "tags": ["urxo5Cch7I9wNIN9", "2Bha7aNBOQEWpwKE", "C2hYZBcUFD76Cyjm"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'zSJdBkjzUf0guyou' \
    --countryCode 'I2WQG7uxOiQZ9Z7V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ujEuMXhZfkHTG3YB' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'YBrdb33b7Wv3phTB' \
    --body '{"contentType": "zLd8FH9PUzW1SCYd", "description": "BalCIgGDxg8fM73R", "localeCode": "DqTipTVYV6r6vgRi"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'ugMIZ0DNg5uBROnA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'wCGnGx3jJnmtTK0M' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "xS1xpkgntVsw6GGd", "attachmentLocation": "dkWAsrqJB2MfsIfK", "attachmentVersionIdentifier": "6nfPciuWYOKWOprn", "contentType": "060QXEkF4CCt9N9O", "description": "pogQ93rrIYDDwXNY"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '2qdcCEMsrJmoZnko' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "neKqg1puXJ8sKWnQ", "contentType": "tHeuRnGjPVQ9x4gM"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'iIDQJLHQ5HFy3EIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'x8Zf03yQS9l7yQQW' \
    --body '{"description": "0FUGguqXAANfHnVO", "displayVersion": "8CANTTf1ttQZ9bMn", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'WlJQZopXcN518xcB' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Htoskd9AfcJEGrsn' \
    --body '{"description": "VJrCRbaSuLFBP4Ba", "isDefaultOpted": false, "isMandatory": false, "policyName": "zUXmlUQX8JWX9j8c", "readableId": "EIxjXYJrvB4KFIzk", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'SOzHfg4zRCYKVxrB' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'ohbedaL6jO26Bou9' \
    --versionId 'BPicOMmr9Y1C7Q7O' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'FnOqLPNtESwOSMG3' \
    --body '{"description": "O0gXY2PvrcxZErfi", "displayVersion": "mmcNvqAL0v3D0YJu", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '87' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'NN2ukGQJXccLQprv' \
    --publisherUserId 'VoPh8zSbUPKymbfC' \
    --clientId 'zztWbTP6YQmqPNww' \
    --countryCode 'ALlGnwvF95ED8aHe' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bxMU9Wtc19jVKMKS", "policyId": "vnOYHMT6LHikPf2h", "policyVersionId": "ppVGDJv7MZozP92q"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "laie66IVmYRqqcaq", "policyId": "EZorAG3K3e5lLMiG", "policyVersionId": "JNGACBqKfHCHz6Ck"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5losdt87PthfW65e", "policyId": "cGR4V5YB3Q2ZWrK0", "policyVersionId": "iOWA2jXjHjAhFYke"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'uin8GQB09b0HswEl' \
    --publisherUserId '5ND4JtrTUUzsBfzP' \
    --clientId 'HuiPnOSXRckYGCs5' \
    --countryCode 'bBUPAeTCSKQJgouo' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'vtTpAIyfT5ibZtoQ' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'tm7KQWn64G67YljO' \
    --body '{"description": "MiheyBaGw3up080f", "displayVersion": "J1MNXuMk1tsVb92u", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'Nez6mLe6mxRzEgTV' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'Mrrf4XshxxIeLk0C' \
    --body '{"description": "vNcDOku6SnEFJEKI", "isDefaultOpted": false, "isMandatory": false, "policyName": "ssST9OXP14Vfxjih", "readableId": "vtTdl5cOPGlwEaBZ", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'U61k1L5WYTkLz8ui' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'tjc1Ju6R6EE6qbky' \
    --versionId '9a9ELnOK9mO6yc0Y' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'uPjjewoLVyCzXOv0' \
    --body '{"description": "8f8y8KRHNENuAiYW", "displayVersion": "Lp7TnStsDw0TzHBI", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '86' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'tgfCUKQaSDLrM3ke' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '7gaI23ebFJ8Wkfn7' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "L2aEg11ONR3Qv0wB", "policyId": "xKX4PKZmZx2FeSZf", "policyVersionId": "xmtvYQD5px3yysQf"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gnE4BLfL5PAim7Jr", "policyId": "yHLORAmnzeVEh5hT", "policyVersionId": "N6Nf83SyGxN7mruz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WDJrnX1jJSNaPLU3", "policyId": "b0l0lNCPcxM68KqK", "policyVersionId": "nMkOmavNf29gfyM5"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'OAgNJ6lMnVfJzAEB' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xWaKc6y4s6SMUnyI", "policyId": "GYb2YAvyDRJ7LzPO", "policyVersionId": "IRqCoe4unyXMRbxj"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fDjaJrRZQGYM7fKS", "policyId": "mwrWSrpecBiEdhv1", "policyVersionId": "959QiCxVPcHeWRuR"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "goVd13LZczNEAjZZ", "policyId": "54i85wjzHkT6olS9", "policyVersionId": "x4HkDTxjEa2ZDpis"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 56 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId '9Hpgpc6j1wCPgxrV' \
    --countryCode '4MwwwuYYx8POk4Z2' \
    --namespace $AB_NAMESPACE \
    --userId 'DuYQpe42MaK0SIeW' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'ntuaXPbcIOJS6Tto' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'JGwUfXAve9KuTw9S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'GcWYHZxHuUEuJXOO' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'js3xTCkeRssvXY4W' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'bWAtURaIuSSu5Ois' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'mMj4jojGPnFhn0Zw' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Cz5PCLbRyvEcbYNa' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE