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
echo "1..74"

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
    --userId 'R35obQx45jYVA5QA' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ftm1GOWtzN2km789", "policyId": "goD3gH11HjYmjXH7", "policyVersionId": "MQdl1mCvd4rrInQI"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zDJ3vICh9iSiPWmb", "policyId": "1K95cLSTnJCLKbAk", "policyVersionId": "SKTHRoaLz4ON8ZYV"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "icTzAxTR7BPmNCqn", "policyId": "zX8ypjf7dUAwO5S6", "policyVersionId": "qp8S8c4YFd9INeoZ"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'jMGIczsbfxyk35dp' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'kxtSwfGYBSZpN3tM' \
    --limit '94' \
    --offset '25' \
    --policyVersionId 'TPaI12MHMgNwaQcY' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["tesEzaqNhNFTapjq", "6YRinqYU853UT73R", "nqdOZo7QeJ1R18Ip"], "affectedCountries": ["WV630DWEy6BphWZ8", "HYjDF4Swss3WBNNZ", "y7kGFE1vRUryRioV"], "basePolicyName": "QiNxSi7Akz7ZpfKZ", "countryGroupName": "a5Yj3ZMnsja38IMv", "countryType": "COUNTRY", "description": "JO0tt8RQOMksyq3f", "isHidden": false, "isHiddenPublic": true, "namespace": "kIYVSnVXeRvN4Qob", "tags": ["K2en0GIV29nqHKDm", "UqTSsaEIzS6TaBr2", "sp7krTkN5wSfYFYw"], "typeId": "IgOQFK6IJQ6qCJo5"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'BwitEZfHZVO5WLT0' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'sXZO683grl7i655l' \
    --body '{"affectedClientIds": ["QW1DkQpWIAu6GqYy", "4kr0gufkuGokClTK", "P7RpHMU1m8km6XWG"], "affectedCountries": ["oP3sz6Fx1Bn3oq0y", "YykgUtO6ekBg9iKx", "dLnaqIJeKN50meNb"], "basePolicyName": "J1IPmWxk7IUIQuvN", "countryGroupName": "idhOgrMhS8AWuP7Y", "countryType": "COUNTRY", "description": "5YLXCtzar3ED5FdK", "isHidden": false, "isHiddenPublic": true, "namespace": "8f1RQAEiFXniMp13", "tags": ["ySLaPfp96jKsJ9eK", "BX8eh18oOMVJlMTl", "WHxkr7pL0mcOJLCW"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'pkcE0fyRNCWx4gOG' \
    --countryCode 'HvHN9kDIgCZQLDuU' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'tQ8zQgafVhueMP7f' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId '1ldfzv3yA92EePTf' \
    --body '{"contentType": "jFyEVSpMiv0zT0oF", "description": "Qt8EOoh5SqBgG38n", "localeCode": "oXCe6pDRBeJOMUDi"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'lPP41X846qUcDgpV' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'HepxSuqwIMRdD9Jz' \
    --body '{"attachmentChecksum": "maTshrvFKwJOTs71", "attachmentLocation": "P7hHpXuRjsiOQHl2", "attachmentVersionIdentifier": "SrXedHjLhwWDMHFH", "contentType": "ICQBIKjkvtY6GfpV", "description": "31NUAtaRkE54Psd5"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'uQDy16Cy6pxeoZZT' \
    --body '{"contentMD5": "iL7f3HSciXVLyJBd", "contentType": "3HS3wr5vBYiuvgmq"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'AcRBKDabJw9mN7VV' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["SjoH0yxX6vp8OFOY", "cnJUXjMTjEm5BvnK", "ZLu1FsorWqmQXsRv"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId '3BOQqsWS5eK02SW3' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'NActN3TKOVryHwOc' \
    --limit '38' \
    --offset '92' \
    --policyVersionId '3pkvNl5K8SiSEaXx' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'bdXd9rF0wVluUlef' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'Hz41nffR5SOAcxz3' \
    --policyVersionId 'qfqHZPQ9vLfGXUUn' \
    --start 'OfF2y5o4zwJDQdfO' \
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
    --body '{"affectedClientIds": ["PD1nY8xpVXf8vFxO", "aC8ijkR4G1aJeS2p", "eVi4SxX2wbXQgXR4"], "affectedCountries": ["UYAJCld1RrOAn9B4", "maoY35bgMxzTx8If", "Hqcv7SJQHfvugu5g"], "basePolicyName": "CNcFwa7jEsvpnAXi", "countryGroupName": "JAM9gdfVsbzlhqsi", "countryType": "COUNTRY_GROUP", "description": "Ykipdkj1Voo2UuMR", "isHidden": false, "isHiddenPublic": false, "tags": ["AofRwEpH2hD7Bk2L", "daLVbkNZTGg2jx6l", "e8HSg4if64h3X9L8"], "typeId": "ZmuOuhWcqeLfhNfC"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'GZUCU2AAK6eGesBc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId '7OhBwtFqhBBCMrjc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'Ki3ZcYbknGg0JQw2' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["ahbk5b8qV5l33w06", "VTVKO716dHfkOmDA", "AmdSIe2HVfGAZk8U"], "affectedCountries": ["V8KOnOOM6b7Gsscs", "j6IL346ZxlMijS7G", "dLPYQ7mvikyqyu5B"], "basePolicyName": "XIEq9sRbLdvxizfz", "countryGroupName": "Tr1kEJU8CSipjccg", "countryType": "COUNTRY", "description": "qERQcJz7eBWGxerU", "isHidden": false, "isHiddenPublic": false, "tags": ["BiNDFBWgMjj9O1i0", "W5Yidp11hbDNTOcA", "vZYcZSeHvRvh36RX"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'hLOUhNZ0MUPHVQRV' \
    --countryCode 'jXTAdKaPUiVFnQ5B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'eioXGNJo0zX3DXWE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'YJbvQfzb9PqBY33X' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["RXPTIJ1DeNhhxxoL", "moK3zqnEK5yepjmV", "CjnIHmrJD5IVh9ww"], "countryCode": "X5JUMt1zyoc2kcyX", "countryGroupName": "onfiNLgnLPhLjRNe", "countryType": "COUNTRY_GROUP", "description": "1oyKrrYm0mWaoOU3", "isDefaultSelection": true, "isMandatory": true, "policyName": "tLn7paGZAnKMMq3X", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'HXvhPJ4Xep9EvgeA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'rlhfwG3QeDKQgcJl' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'O71N9ylD63KbJO7P' \
    --body '{"contentType": "PCQY7500oH5YCYNl", "description": "tEBAz63hz0cVlW7y", "localeCode": "8f6f1A3DXUJ6Oibe"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'rWEfjgT99IBn7icz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'nDIpfMFsqWrrAiDx' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "q1j0GbjMbKWY7rKZ", "attachmentLocation": "xcmAgGBCJQx45ewM", "attachmentVersionIdentifier": "otD1SYLegRafKXmj", "contentType": "eqAQNpUj7C2bJWuT", "description": "8CiTH6iRoxQZSnJ2"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId '1Ac7UR77C6Uy4VYg' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "pgcuEqIY3EWks0Mn", "contentType": "H4ICZ3sQp9fYLpNL"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'bUVLoQ03f3OlXiIN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'iUIIajpc5O8mOx5I' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ZVw76PImxndRTcJI' \
    --body '{"description": "I7zUf76pMt3ZGwcj", "displayVersion": "lZ0MXV4oRpo0UCCa", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'J5GLjUL0MURurRJZ' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'LB8of83sTqlKhNAw' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId '4qmNuwbGXArzGby6' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'u1qM3Tc7RAtYHjFO' \
    --body '{"countries": ["bATUIozr4DP8n8FY", "UzifsSTsHPh5qFO0", "qdY8AgKaJjbLqHi2"], "countryGroupName": "VFW1euK6PRoo1R7k", "description": "8Woqma94BK94w3Ms", "isDefaultOpted": true, "isMandatory": true, "policyName": "dXPKgaIFpDUOzzKl", "readableId": "y8pYTAimwt4GvPlf", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'LwvbhcusiWQojPch' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'yEWL3kc6m8jWEX0J' \
    --versionId 'halTBjPBVKU9BDbb' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId '2oh8Ea2N3gShFMmO' \
    --body '{"description": "dLQEiBNXuiCjSoVR", "displayVersion": "vu3lLVhrjDct0u4n", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '41' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'YqMP9R3CFYmIq0dO' \
    --publisherUserId '1vTZjtla6rJqLxs0' \
    --clientId 'FnLdV5JeUQPz94pF' \
    --countryCode 'VzXNcwnwHK9BLCro' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QJqWSEXX4lM5qdNO", "policyId": "hMxKcCk4AVaGxlzw", "policyVersionId": "1W5vW5AhMBHCcRFb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CZKp9PTdeKfynLnG", "policyId": "oN4v6qdOLWk8G2iA", "policyVersionId": "CH9sInHlO9cYl0OZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OEGJ0kicXOr4qBj4", "policyId": "vjvUC3yZMKjVRxUt", "policyVersionId": "aMo3RtXx1ddPRz92"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'jah6Vf9GTCEIXWgr' \
    --publisherUserId 'Bpf9jWBXe8HiRqD6' \
    --clientId 'NL30xsiKLYOwxBkG' \
    --countryCode 'xUyOkqur3r9gzJxq' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'F3GyV36XEKCL0C7y' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId '8d6CczLpjWvez3Rg' \
    --body '{"description": "AQZU4Ku64dwEzu6N", "displayVersion": "zGd6pJagnm6CFeB7", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'v1HmC9AIZ0sMSaUJ' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'mnvA8ywW71Ea6vc2' \
    --body '{"countries": ["93kMOSV6ugQWXZmO", "xs2tRCipKLRidZpW", "m0mSclqejLvg8HFy"], "countryGroupName": "DRBH1HjjD28pBAvu", "description": "d1vLa2opum9KmsB3", "isDefaultOpted": false, "isMandatory": true, "policyName": "IyWkUHhOSiFzxXCN", "readableId": "XI6JvlR2vc9jxB4l", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'Z3ub437ytb0l0ut6' \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 't8QKtyjfj6WdDFpH' \
    --versionId 'oiZW6C6rHOZQlzjA' \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'ifNA9TOeQb5e3PJo' \
    --body '{"description": "R9nL3XHOqhb8kSvQ", "displayVersion": "MBgZCg3jtg29LfOg", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '40' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'dX8RQHkE4dEtdky4' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '81V0qXrK6a6IM8gp' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dds9Y1ORXxEG4XKz", "policyId": "ynJv0EuLBp2Vwg51", "policyVersionId": "w6i0H26ORQQGwTnE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EL2DwlqSBZSNhFAe", "policyId": "wc69eMQSQwMzkOVg", "policyVersionId": "3vbwZAq7wq7hHFXn"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3mPi8ShlOQLc5lSF", "policyId": "A9cAQgeDVAsngyod", "policyVersionId": "kY61nmbr34eQTo9Y"}]' \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'Rc4C0Bug43kA2JGk' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xyx8XopEq8kkaHpG", "policyId": "fkNssBW2hqyvsx8Q", "policyVersionId": "fVjQouXxKITX7Zig"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DyZW6j6oSljvdKjD", "policyId": "horo3Q9ldbCW1FHt", "policyVersionId": "6A5NPLVYDnJSsxEp"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qqIuvRomNf4QaJcp", "policyId": "KwHrKwTI47zy14bm", "policyVersionId": "5BRZu5iXRj46n2Ep"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 65 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'WDmNiraGLsrB4qGc' \
    --countryCode 'dBIfhzrJDZWPMeZ3' \
    --namespace $AB_NAMESPACE \
    --userId 'FN4OHEiEHtDblMxm' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId '7ODZmqwekPzCOAds' \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'aL4OrKHBXgYO1F6V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'MB8yhzDaRZ40ie2f' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'sYhVnnGmkWcfCLoB' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'gP2vByoNyfRB4gaO' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'd6VGchwNpt6GQkv3' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Ag84x9IF0itUChlG' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE