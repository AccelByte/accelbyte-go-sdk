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
    --userId 'KRojmCjRFfsPFBVa' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b8tTi81MD0JRDdwV", "policyId": "upHB37waxEN5U9GB", "policyVersionId": "KxUXZNnnb9DibdqO"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FjRsM8JfM07zeSrA", "policyId": "cMbo55YspvwKrR1J", "policyVersionId": "j4CRAnKUaugEZq5B"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TKlNxLDsEQuuWEp9", "policyId": "IatEDY0BWVGB91Vh", "policyVersionId": "DrQIwWppZQeJE2M4"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'N7wHDWj3TTrD3bLZ' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'bVQGFJ6weL4Vx6Ct' \
    --limit '36' \
    --offset '72' \
    --policyVersionId 'DEQ1w2I1UQaseDYI' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["z1SThWhYQMADnzJO", "HRyqzoD8KnjdelGP", "ClrEzCcttdPYS5FD"], "affectedCountries": ["XxbFCmvZ16Ijbv8C", "4HRxHdUKMTYZ6OUj", "uQiIwuBAQia0cDhr"], "basePolicyName": "yCadhyaPjupqHpuE", "description": "1ZaQcZdTOlmOIisQ", "namespace": "adpdDIbM35vS72l8", "tags": ["4qRPkW4GetD7aFxO", "HkOqjnKSzu2tnJ74", "OajV1zbrgX8a6cCS"], "typeId": "QENgK3irqX64FO1K"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'LTmDKTDFOw5khvUu' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'A2YLnRJ1BdZ9RdPv' \
    --body '{"affectedClientIds": ["ShqTvp6JsTUmTvkI", "RJeKF2nzyZi7FjBK", "qZCREYTnsz86SaSY"], "affectedCountries": ["IJcggiu5J1qH87TM", "Uo0HdSXiLIfSYx3I", "Ia26yMIDwuKYWzJg"], "basePolicyName": "rXVyECya9DdE0hZb", "description": "56ZKcMKTuAEgTmBE", "namespace": "lcTuAJHdddY6Wmw5", "tags": ["tjpyrgv5RzPF0JJD", "NqHR6OsX6kkzmgXO", "4t9tBXxZJCcqh2p5"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '4Lb7sbtGhyVDzc4i' \
    --countryCode 'CxOEUSOF8Xrf3V6l' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'qsxfM4VNn3mpf1aS' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'qWfHU23wSybGo57t' \
    --body '{"contentType": "uuV9f7zttkal3Uf3", "description": "E4ScTQ6rQ9jXgfvI", "localeCode": "jH7hgQer5R5cALzB"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'VGO9vLmums5tq4jx' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'NN2g4IXALO1yje5a' \
    --body '{"attachmentChecksum": "wYla2F6hbieneH1y", "attachmentLocation": "Rtixmg8eqTMS0kL5", "attachmentVersionIdentifier": "XlzGVAheHVD3pbh6", "contentType": "08CC5GFhboZelWdd", "description": "HDNwiGPsdmR4o9aI"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'Tgrjp8oE7X2roXll' \
    --body '{"contentMD5": "Qpd2ADcBxjfEUNZH", "contentType": "6oSTaIr8tCbjc4Io"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'PiZNXDwIiBGJbG3H' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["FSNpGrMdkhboiVmC", "4mzG2IxxDl4ozT06", "Ye7j3ZCA0kDEPJHg"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'hnTeKA0cdy8ksEVq' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'mnIrEjvrlVVWMjAX' \
    --limit '0' \
    --offset '57' \
    --policyVersionId 'syqwIEzhF0YbtuDS' \
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
    --body '{"affectedClientIds": ["zq4X3aLCEjk4sRUZ", "S72UfETSb3dEEKJr", "ufz7Qr2csj6rbX0i"], "affectedCountries": ["FXWyeb2O5vpgb1ag", "jecSpVUFG6zBI9Na", "bsuEMby0vlUDnxj3"], "basePolicyName": "dtw5AyS3fAoioWh5", "description": "v6BqOCb728ZgtrI1", "tags": ["5b5ZoupvFbOUXAEt", "i6rFenDplAt4SnR5", "Yz7W1CqxU82q4Si7"], "typeId": "BdB9w6HDhlfCNX5y"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'spIIQKyrlfjCBYCN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '8UUBL3zShA50xDCT' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["k9VMlaaAp2fBooEv", "qlyo8dla01wC39s4", "7ft2iC9QhGZwo7bq"], "affectedCountries": ["VNODXn8AkNGWZKDw", "CI87GJt3Ddyxv8sc", "p3cwqrrdUuYMkafw"], "basePolicyName": "ZQnheBXKqn5rOBHz", "description": "uPIuaR378o6exnWA", "tags": ["XerKT6TwhInhVDIE", "Q0vOCrd6bdnq46Qd", "oMqWipJxtbAuzevf"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'YM6pR14qtxRYX1Zp' \
    --countryCode 'eCQ5TdlnK8ngW4ef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'cXLjZcwdi5e3t2yi' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'zIUXf5ZLR3LwCW5E' \
    --body '{"contentType": "CdP8nTn3rFNaonad", "description": "Cf3DBl0WsU62yjrG", "localeCode": "ISEXIrOB3gXCq3Z4"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId '19Z75I2qaec91PRg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'THjEu91aORLSWAJQ' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "8rD6mtA1vroyGf4v", "attachmentLocation": "pT7H1QXd4r20adWi", "attachmentVersionIdentifier": "iw1yJMbS9AQpynTW", "contentType": "ik8CPu2Io6927Xe5", "description": "W0xjFpl2V6YqNn0I"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'E4azN7KWCf9BbNy2' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "nyOabW4pERpuwEKU", "contentType": "grFg3hHeJvZ1xIvg"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'sKlaCuVj7wZ1NZs2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'QxAnHuUD7h9OsZfW' \
    --body '{"description": "UdUZG2uAdlpIDjUn", "displayVersion": "i7TVHDbbRnjAoT2Y", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'vdnQOrPWCUd8nTUp' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId '0k730remrzVSHGi8' \
    --body '{"description": "jOxixrox95hFiJhQ", "isDefaultOpted": false, "isMandatory": false, "policyName": "QMJGXMeopRsudxF5", "readableId": "KiD0dhVnVHZWyEBY", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '019U0Os6TkWhIXlv' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'wqQl2FPYaQWXcwme' \
    --versionId 'IW2lUzUDOfZ127AD' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'jYcy3fHAZxTUBF9w' \
    --body '{"description": "3MGDxYJDGYnGBMOq", "displayVersion": "2nrgANOMTCGQZ9BI", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '69' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'hJnkZxv88nsMbGif' \
    --publisherUserId 'EnMzAs7HNiqx5VCA' \
    --clientId '75blRvCeKnNgl0jm' \
    --countryCode 'xB6amaTbXV1sclYP' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VS3xk0unARvvlz3O", "policyId": "eQM0oDf5zfeaWSlF", "policyVersionId": "edYmBvoWQidJ0w1g"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BvqGF2cXEXoNEVTp", "policyId": "FBhkXKN8wJKOrTPq", "policyVersionId": "S4oHg3Fc1MKy8GaA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "73KHAmTRVynXsuRZ", "policyId": "HuvE2zOhf4te0YcK", "policyVersionId": "F9jFE7oK55XFsYVI"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'Hc1pWTwj57KKfTz7' \
    --publisherUserId 'bx06cqTdqFBDuoOA' \
    --clientId 'ukalZEilLjAhml12' \
    --countryCode 'Rqw9n6UWxAtWpZvv' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'EucaXhaoTkQqhY6L' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'MZU9gMF440jY58pQ' \
    --body '{"description": "HvCikoMcNwQfENop", "displayVersion": "1FrD6V8zF4ApkSHE", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '7rrYDEmnFtbNEg6L' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'hgLUyyUZ1LHn6wfD' \
    --body '{"description": "mSIKA7rsjlPbDOI4", "isDefaultOpted": true, "isMandatory": false, "policyName": "IHSvp0nzWEyi4W6B", "readableId": "TcPa4NrvgBF0xnnz", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'gLb7573DsWIsR44y' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId '9pp9FFglcArpOa0C' \
    --versionId 'iSxD1qySrHspZddc' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'F6Hv2HSsUgm77tC8' \
    --body '{"description": "zNmoOHK56AX69sQV", "displayVersion": "NDydrdERVWuqMt0Y", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '12' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '87oTXe4QKs8hayxL' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'c22edgrA6v0NOVlb' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bzeudRNPrD6S1YPA", "policyId": "WFrehbHgci09EeLW", "policyVersionId": "uj7adAkJTaPvNA97"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7AAzPVKqPLixwhwK", "policyId": "OLXjVkAwziHThMRw", "policyVersionId": "qKRAkOJr3m46TP8N"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JMnwxRSJOlU29EEO", "policyId": "cKSw0uF7qncgaw0F", "policyVersionId": "0vTM6SYONtswGuyN"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'tPzTrGnm5nVG7W7A' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "v8OQW0rcs8Onpt4d", "policyId": "zt7JOwSkNQDBdbYC", "policyVersionId": "6tm64mEZtRqAWQyE"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JkBnvlQMZCuXgJ76", "policyId": "79rs3rY4I0TwGES6", "policyVersionId": "Pxr8fe3v0tM6nK8U"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1uiXsIqD325jRckH", "policyId": "wiyaY9yVRFumQyKn", "policyVersionId": "nJFDO4lZbDGu1Ww5"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'hUsQLxuYT85BeQVQ' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tfS0Kso0vo3d4Ehq", "policyId": "cSoKs7MO9rQr3SEK", "policyVersionId": "lDTLVg0dVfzlY7Cu"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rQbdcBlrTVEAUqR1", "policyId": "P2WlzVPtzrvDnhnk", "policyVersionId": "2W08Fkh69Ngb8hKS"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cT1SQyYIvsw1M6oD", "policyId": "UNrwVDynkuqfHHpi", "policyVersionId": "qwoeh8ySRH0d5EAF"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'zOSGNNRn2UJ0ROC2' \
    --countryCode 'dzr6F5gsNVq6bALZ' \
    --namespace $AB_NAMESPACE \
    --userId 'USXbeubKoJhd0HNq' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'MWAiM6xtMlR3OWJ5' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'FsuInMiigRK6gLi3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'xPpsonZr1msXMHrb' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'pBAHXAzP6mPICNzP' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'G0pMGChPeRqoRW4s' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'nlaZA8zaSVfdowSC' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '8rgX7UmyhpRh6gKy' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE