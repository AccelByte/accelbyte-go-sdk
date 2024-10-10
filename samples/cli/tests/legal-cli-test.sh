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
    --userId 'k4WLzN7BJHTKimWJ' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wl8ShsPqoYgPgpmI", "policyId": "nQsW7MJsIvTAImxy", "policyVersionId": "8dpCbAHHv39rRng7"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cnnAKRI1BFJS05Mu", "policyId": "UabzHEu9hS6SF76P", "policyVersionId": "1jO6qwtHTzNdyByt"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LkDwXRamz8mkpm9L", "policyId": "62zEhrpTi08s0TQO", "policyVersionId": "doNX6BFh8nUjbAQg"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'UzytUGhnna8IAql7' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'OcdifWHiicWgSmos' \
    --limit '7' \
    --offset '39' \
    --policyVersionId 'sHaSeSKMyxvKxc5P' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["tHZFtoRUD0ZZSny6", "iqlX0a6Nrh8687Ip", "1BN4E1eF6ZDA77Pi"], "affectedCountries": ["XkBQi1TUhOKJ5Mox", "O7TcMTMGmQsL4G46", "fWdsBKkZEVs6mlEk"], "basePolicyName": "MMzWHYOWmOTmxC57", "description": "4Fof5XbP2F479KVY", "isHidden": false, "isHiddenPublic": true, "namespace": "As5EtI3LDmB5An7c", "tags": ["Vtpv1xAwh6smJY6j", "E2cbG1FgYZWspsdn", "4iumAU4scFV8BmhV"], "typeId": "ukQc6TWgZuav0vAD"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'XPXC3UUxvTys56dQ' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId '7AKGkb6oxrWgKsQO' \
    --body '{"affectedClientIds": ["QMiLlFcNnHecTj3d", "PZOp68eHBpwDQfZX", "X1akFZmqEc6cip1U"], "affectedCountries": ["CGBauqWjtSIJ27HM", "emBQCmJyUwdpQ0XI", "2MKsmQF2TbTYWPHU"], "basePolicyName": "5Ys7RoNMCqQmKOsc", "description": "YE8QSiQV2N4uryiU", "isHidden": false, "isHiddenPublic": false, "namespace": "zHCHBoHvIRBwcjLg", "tags": ["kGEnIhmAhRMF6ZdY", "PA1rLFF6lGU9345K", "EMyHHraQeiEfjBQL"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'JgJQRP1D0dsefyr0' \
    --countryCode 'zRWswgxZ980IW5jZ' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'w1QUvkSOpTywOAPx' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'Sm6vTn2AE6fMeezP' \
    --body '{"contentType": "if4j2pmyAwHHWFUd", "description": "4k2UaFSzaSupawn9", "localeCode": "wBXhONOi8YDgjDgE"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'r4QSVHx1WigiMhLd' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '5BeTGWPHDNjbOQM2' \
    --body '{"attachmentChecksum": "T8vK7i3izftZ6Sph", "attachmentLocation": "O1efXddp6eJWKzky", "attachmentVersionIdentifier": "Nee6eEJza72tkQJi", "contentType": "kQNto7wTgQ7PjvDP", "description": "fvgs9IAdeFvSS1YX"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'vEmyPdQziTc11Sv7' \
    --body '{"contentMD5": "p4DFgCrhNsdaMZUe", "contentType": "QwMDgGf2VNvH7jEp"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'uEatXcJdpOKsCQfh' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["i8v4dUvVQCTwxNZN", "S5elRLESmkb9ursg", "1TCJv3hxnilpAMDD"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'M5Jw0Z2FJbfXQYmQ' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'aBwwR1RbGmibdINS' \
    --limit '52' \
    --offset '29' \
    --policyVersionId 'zBbiW30Ofdj81us8' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'tuLINGWjJ9tPQLAM' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end 'bAvSR2YL2nhvrFTE' \
    --policyVersionId 'WXsOCxvv4uYxnVTj' \
    --start '0Z3aQErt3OEMBUre' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
samples/cli/sample-apps Legal createPolicy1 \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["mr1VQCYPEZhgTASU", "ZprgFGRWbuy2koKe", "n24hTmiN8S0GC9ya"], "affectedCountries": ["2iXoXULj44LHTCOq", "qdvLIEUmuTIZcEPW", "10TkaJNE12Fw4lRS"], "basePolicyName": "Pw72AYL8hlYJcqAR", "description": "xDoaz5GqKa9sFiFw", "isHidden": true, "isHiddenPublic": false, "tags": ["kwRuRbtfqkl0uaVt", "wWTLw0ePn183nQlC", "XsI1eyY0SEKtn4fC"], "typeId": "XOe4gvyeW3ELTwIG"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'IQAqRpKHaU3RCNeM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId '8S5rWTbzkwWnjxWI' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["Ie60OfYl6s2DjKc3", "RfI6qfMrbYZKe8yn", "tdRJFcxzdYaKM4Sk"], "affectedCountries": ["ZsHsPnJ8lPeaWvIX", "071Mc9syw1Qsq9wd", "VKHLbIlXkovEIIYn"], "basePolicyName": "cW5gzabvoqRJd2Mb", "description": "8Wv2BjZ12QoGxEkb", "isHidden": true, "isHiddenPublic": false, "tags": ["NfALSrRWgXV9RWVo", "bSt7VGIB5uH5fUbh", "F8PUulHomURX4iLq"]}' \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId 'm4jnxxlZ3YViCDS2' \
    --countryCode '5AY8kQf7DIcgmEvQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'SyjJjf59c4XgFX8Z' \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'iO8ayuDKs3ZH4Bgk' \
    --body '{"contentType": "VF4FWvtz8gO9OQUT", "description": "2dTRsbAGAUnYZT8G", "localeCode": "kdwxITKX3mZb0DSv"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'sYJXLO6pLDmXTify' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'm00mbgDMyrzwiXlD' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "MNUYeLMQPwwcZbcy", "attachmentLocation": "22rvjViRCJtPSvLz", "attachmentVersionIdentifier": "b2fLTSYY6UJYKNiz", "contentType": "0yfpccncHZcJPFgN", "description": "VJQ4KUCCIpB5Herm"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'NvanikIAaVPc7vFc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "WACAJwvMFucHzKfW", "contentType": "gda1ncs7Q5pYpAhm"}' \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'QKnsQMC5WtAplP7e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'vdou2B5tPCm2aA6J' \
    --body '{"description": "x5iFilvZwfze3xHg", "displayVersion": "R9p23VVCrcF3VToP", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'S6G2k3mAAsKUbtIa' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'AJvkMlAiWYWiMbVx' \
    --body '{"description": "JJz5ZhiNuwbPvZ6h", "isDefaultOpted": true, "isMandatory": true, "policyName": "zO4Gz7XE1TeF1zca", "readableId": "EuCk7wGw89yJny6i", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId 'unpRJFvHFzICtKzw' \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'kJFds6Ku49pOHOxf' \
    --versionId 'sp3upEGBjbPe9zWT' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'ZEuMjFzaTCQSSdKt' \
    --body '{"description": "lMk0ndI4HAhf2xoz", "displayVersion": "dF6gcKOTdQBL1kuT", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '53' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'udxSG5GKSVLrwXjK' \
    --publisherUserId 'KHnz1i7cZZqFJvCE' \
    --clientId 'j9AGey08gmQZr1X0' \
    --countryCode 'mu2X9gJqFVF2kL97' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "88P5KG5EDbvausaK", "policyId": "LFex6fHPt64EkpdG", "policyVersionId": "dk9OPGCBM4CB4hWO"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "V8VDYrq0nHaCqnjD", "policyId": "HZW5W8YPkMmRuP6C", "policyVersionId": "7mNNqO2k05wD7BgC"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jzcE25lE2cXOFvkR", "policyId": "uc1OsQRreFF3OO5C", "policyVersionId": "XSchzwSQ1yIuflwP"}]' \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'clfsv0uVdiAIPA9F' \
    --publisherUserId 'WO8I8P2AThGtH8ZK' \
    --clientId 'oSrJJ0sbxYc0AczS' \
    --countryCode 'DqUPnlSd5JVduP1T' \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'xX8z1Z738J1PCvvl' \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'UNzKpXWlMmydeJlc' \
    --body '{"description": "ubnceYADg0Esme1C", "displayVersion": "W1tBvINtePswMja7", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '6vFY5lRxweiOShoE' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId 'aF6IaT1ZMN8fVVSO' \
    --body '{"description": "fYQv693tHhRlcbAf", "isDefaultOpted": true, "isMandatory": false, "policyName": "jzmIb5QS3txlg8eP", "readableId": "4UXBKwBLlVBNO1Yj", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId '40NaPKrG7HzGbdk4' \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'kQBGXQQVb0hhaib8' \
    --versionId 'bYxEyFvzYin4uYAN' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'AW3oRwXU9YXGY9LG' \
    --body '{"description": "9FlC7Ah2V4tXAJsJ", "displayVersion": "h5apvOsAGaOx6KIq", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '0' \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '0MGq4Qlquc1lVmYf' \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'FK2Fwrr2TBPnOLPF' \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GxoDEo2Ny3sTcIAB", "policyId": "rFVYw1UudOWQH8oT", "policyVersionId": "0tnQ5gAQZnDQjDdo"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NNy5B9CoVcN3XGaI", "policyId": "xqsvBEJXTASOUCs1", "policyVersionId": "egh7djDpH3jjg69k"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "s6Ypxrs2HBj3Sb1I", "policyId": "m95VoHf3LcbSxGkB", "policyVersionId": "3L7C1Qs7k0QxYlDh"}]' \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'sGWVurqguGL2guy0' \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6XGvF32412yLv0mo", "policyId": "WDybFbjFAWIXKN1I", "policyVersionId": "ruem2HTDLpzQgiIC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "b6a3J6k5HbeKHNau", "policyId": "KTaqXicBWIUvSe08", "policyVersionId": "1AAkXpUZ0zX3V6tE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "385VPYNzNfkDyPoH", "policyId": "3D82KVcMrq7boyJn", "policyVersionId": "eVXXTFlBqBaxmQCm"}]' \
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
    --clientId 'yoQfzxVwtthCz2bT' \
    --countryCode 'SagMaDhuRFipKsIZ' \
    --namespace $AB_NAMESPACE \
    --userId 'tG7Gps5daoWx1z8M' \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'czAg4R0h6Y8ZMxpN' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'K2pF4i7SDgJofyWd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'FwJTX3l0JJ187vw4' \
    --defaultOnEmpty 'false' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'gqW96L9zZXOFXH8N' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'pmt7RXNlVRivLiqk' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'Q67YQGoJWPAyrYFK' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'Cc1rfJv9Tt1ANpAj' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE