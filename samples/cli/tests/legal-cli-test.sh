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
    --userId 'veHplveGFKjnjUmY' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lE4FZhdSip2N0nPY", "policyId": "ThtQvHSjjYL8EBUZ", "policyVersionId": "qntHwE2lz8n4NDkb"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NyL5pU2rlOK7muGk", "policyId": "tBTm43DgDyYxfnLZ", "policyVersionId": "4AJmVVkmQ12KduRQ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UZcgINoMlKDGcmCg", "policyId": "sMNRDPOrjFQPvtbQ", "policyVersionId": "zh16ANLLLQclOTEn"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'UYQZhpx0lcjMMLUo' \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'ZsBPnxjk8OjvLuzS' \
    --limit '38' \
    --offset '75' \
    --policyVersionId '7nEMuFFXGNxDhyDb' \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["HIWwepj96Ghgrrwp", "t7N7SpfO3VBsglL6", "sSK9dB5XUkAFLL4q"], "affectedCountries": ["NDD2kPyqR93IOrN5", "P5uC4v9ADXRB3RpJ", "iZt1uBuzJe1A5cVY"], "basePolicyName": "hxHMEv12rbLgim8v", "description": "BbaJvh7h3UzVdLVX", "namespace": "9ielxVI1W8dMNITX", "tags": ["3nBDfIEPw4tP6Yif", "gHL74dZto9uVx0ch", "IRlDSpsoze1Z1w2Z"], "typeId": "Nd2fmqthlAwNRIkP"}' \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'UI2AwV4Ux3dmNSAF' \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'E2dDYTKljZZQZ20j' \
    --body '{"affectedClientIds": ["DjPubiZo4J5UW1Tl", "r6mquKGisB3TlIsV", "d5svljJrAjFI6xPN"], "affectedCountries": ["TpMYCN4FXqm4nWdd", "7zRSRy9rulbkF2Ct", "Z532uJ6hnIFYx5wW"], "basePolicyName": "AEUwEnNGv0xGX2b9", "description": "WsxVLuc5BFvluiV2", "namespace": "6599boqSTfXW33Bh", "tags": ["3nN33frvnqpyVdDy", "NF8tHHexfhEjxSjK", "wGZpTVA578kmR0qm"]}' \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId '4tLjcTNBj2ApDPGE' \
    --countryCode 'DIQEaqoiuuw27j3a' \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'EDXv63dY8p7YplbM' \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --policyVersionId 'ZMH6i5XxtIOgqody' \
    --body '{"contentType": "ECiUFB5U7MX6vSfP", "description": "2aE0qjNxowoRcMgy", "localeCode": "QPpx7ei3fUhnBxoL"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Zh1HRKb8bzG77Iwf' \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'tHcgXhYpL2cavkAE' \
    --body '{"attachmentChecksum": "MgY2gbijHn8YxXde", "attachmentLocation": "pLLe5YTVXmRhX2ok", "attachmentVersionIdentifier": "CwBYfkgK89CuEzh6", "contentType": "E8DaPLDRtQAeMbXG", "description": "UYTNfNlwoezCTHfe"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'wssraiXSLglhlBnx' \
    --body '{"contentMD5": "Ba4JGJo9zUXRW6ib", "contentType": "aekkqwEHzs5ycAMx"}' \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId '1EjSnhyGQoYgMbLa' \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": true, "userIds": ["C7XeZneN03cTVhGg", "c0f7nyf1cXamr45g", "wH8MS9qhxuaPCDq6"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
samples/cli/sample-apps Legal retrieveAcceptedAgreements1 \
    --namespace $AB_NAMESPACE \
    --userId 'vG9wJO7YjXEFx5Yo' \
    --excludeOtherNamespacesPolicies 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'false' \
    --keyword 'dMRlqAh8jorL72Oz' \
    --limit '60' \
    --offset '99' \
    --policyVersionId 'XPAMLibgdyrPtpzD' \
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
    --body '{"affectedClientIds": ["jMl3Lsef4f5CiFGF", "MhJRhEuH4X9Jeild", "wgYGgLpbjrnSAcIN"], "affectedCountries": ["ipEZXAOEmVj1HOAz", "DesKAzCv95K3w2QS", "8UIX0bTJuonQzfBj"], "basePolicyName": "8SpVVVCt98ZCcxDY", "description": "b2uR5YCwZ6zHI1vo", "tags": ["TYck1iugqvIL8UHt", "rrDzXVrhkYi7gdPp", "vsBC9Ddg8HNV83G2"], "typeId": "4lbcMO4nC2cR7jiO"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
samples/cli/sample-apps Legal retrieveSinglePolicy1 \
    --basePolicyId 'w7YhL5Wa3Qc5euCR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
samples/cli/sample-apps Legal partialUpdatePolicy1 \
    --basePolicyId 'oDHFlcieNeuTC5ss' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["1GBeh88rJUR2DaXa", "H5IDmg7wryIjS61e", "ylCYFPBqYhpMi5gS"], "affectedCountries": ["KrywjenaBthVfyhM", "k0Epknp1yCqOFxJz", "WoAAqpHJS3TGokQC"], "basePolicyName": "uZ04COyRjSEzPFdA", "description": "F0A9VyQMgGmFCGnX", "tags": ["UiILujiNcea0jgAc", "x5lVAVW8cr2F7SDZ", "G0vQbvdbYOodFxsl"]}' \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
samples/cli/sample-apps Legal retrievePolicyCountry1 \
    --basePolicyId '56jODWsIn7OfF0Tq' \
    --countryCode 'LI8bv5rzfVbz8z6T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'd5Ay4idVBbnoSiZy' \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
samples/cli/sample-apps Legal createLocalizedPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ebooE3ItA2mc1oHq' \
    --body '{"contentType": "kCDVfx7sVM0WcYZb", "description": "vLCO0QzifXBnO1Pf", "localeCode": "byOwZD2wA1a2FSv9"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'TuzmTRjVXtSdl7bs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
samples/cli/sample-apps Legal updateLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'xRHG2dcAg8ctc2ab' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "Qmz4vs3HTbiGv1C4", "attachmentLocation": "ogflCx6jRHcu0CRG", "attachmentVersionIdentifier": "8GH5JO1ayKa0Vuol", "contentType": "6IIxEdajHRX8cexn", "description": "nutZFfaH39uIjacH"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
samples/cli/sample-apps Legal requestPresignedURL1 \
    --localizedPolicyVersionId 'VGPemB8Oo06c9Yes' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "Vuv3rIYKnAGQA5U6", "contentType": "I3ZIJnmPa8ZH8vCh"}' \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --localizedPolicyVersionId 'VRDGbtd41oISyp8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
samples/cli/sample-apps Legal updatePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'IUoAdD4Xjf1JaFor' \
    --body '{"description": "cOJusB5OBXRfgFPq", "displayVersion": "baQo9AQgn1eaEoDL", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
samples/cli/sample-apps Legal publishPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'fvIVMPdFRSDgp5eH' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
samples/cli/sample-apps Legal updatePolicy1 \
    --namespace $AB_NAMESPACE \
    --policyId 'e4mQ0nmqgp9ySIQh' \
    --body '{"description": "gAje7nKz85alMnUY", "isDefaultOpted": true, "isMandatory": true, "policyName": "knS7xql2jZTDvHjL", "readableId": "zwT9fzKLuHm0tg49", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
samples/cli/sample-apps Legal setDefaultPolicy3 \
    --namespace $AB_NAMESPACE \
    --policyId '2qZ7IG1IlIN04vKZ' \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
samples/cli/sample-apps Legal retrieveSinglePolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'Q8nxlzWQdoDt01uv' \
    --versionId 'GfuiIYC7B0t4XM4E' \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
samples/cli/sample-apps Legal createPolicyVersion1 \
    --namespace $AB_NAMESPACE \
    --policyId 'uMSJpeHhg52pO2Pt' \
    --body '{"description": "GxsuGVlj8OZxqMox", "displayVersion": "XcIkGeFHtWd89Qye", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
samples/cli/sample-apps Legal retrieveAllPolicyTypes1 \
    --namespace $AB_NAMESPACE \
    --offset '18' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'uxbaNMYhpJgZ1n75' \
    --publisherUserId '2vgO96iyrBIeemyr' \
    --clientId '8uJSRsov85xrOubg' \
    --countryCode 'uKws0c9IW7zlF9ap' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "of2Ery8iflyJePWk", "policyId": "UPePieNYGGwE4MFd", "policyVersionId": "gTAdnvgRVP5Dbpp7"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3w01vkF3clvRhuqc", "policyId": "d5Hg9sDdhE2kMGTl", "policyVersionId": "ZwzH9M7KukCl0G9Z"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HEMMsez1B4JbKFvY", "policyId": "t8ME1jJhWfRzjcH0", "policyVersionId": "UsgwLC7f4Sx4fiPk"}]' \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'b7PzCkoR8h2J5CFz' \
    --publisherUserId 'LaUThraLI6ipUoqb' \
    --clientId 'lhEypJi6CjTxIeqt' \
    --countryCode 'g6N8U2rDjsQhWmm9' \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode '6V1iFuXY5FsDofFS' \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --policyVersionId 'KsF2alhpEVtQWsJT' \
    --body '{"description": "0mC3rI59KoLuB16n", "displayVersion": "V0F5uqeOVrfAjMQs", "isCommitted": false}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId 'loxI0cQFFNcReGCQ' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --policyId '7KHhED13s8A3AIlz' \
    --body '{"description": "MqDrapt9HRK61vGQ", "isDefaultOpted": true, "isMandatory": false, "policyName": "FkSFyHbx0dZxbrab", "readableId": "XHSsW4ZkfsSH0f1J", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
samples/cli/sample-apps Legal setDefaultPolicy2 \
    --policyId 'RepGZLbBv7sahtGb' \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'FMmXSOr12tlC7PuE' \
    --versionId 'eTY3Zw8IvvOPSzmx' \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --policyId 'zn33wF98vhBWKPFt' \
    --body '{"description": "V8gpY4MOjId1g5ia", "displayVersion": "eKIyZY9TPEeOriU6", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '97' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'TvURdxlXDu2rgl7n' \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'zjBbt8X0E6meyBEB' \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "m1SIZx23ALIHA0mW", "policyId": "PSlZC4fiie9N9GMH", "policyVersionId": "JVkumMmkNkPoKXIb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HG1yw3DFEGNkTW1G", "policyId": "t4mpzozJLLvNqXCn", "policyVersionId": "ODMoRsY6MynXn4F3"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cqTi51fqdWy7JLXw", "policyId": "fSAShEh2TaRhfsme", "policyVersionId": "mUfSCtXlbCvV7MHK"}]' \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '5s6OkW9WOlzg9ro7' \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oRZVjF3lt2UXoTfZ", "policyId": "SQKpKQoor65g0oHX", "policyVersionId": "zLRb8hL1NCL6wRf2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Q89vZqGQ1v8lHbfA", "policyId": "s9nyokMbbHHnKFhZ", "policyVersionId": "L8EuvQQNPVur5RzD"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CdaLj5qe8nJFgx31", "policyId": "tPN7kRNcPtM3aiqE", "policyVersionId": "2iKZjw74fWXJfQLO"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --userId 'cOj10RLNYSxK4wGL' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8K1Rwl8MfWi0dMIG", "policyId": "eDCEjLsUyH0DHqJ5", "policyVersionId": "HvLE4Mkl1RSTMVNA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "v7vH1R2Cz6qXJsJT", "policyId": "mB1Ac7VCRNVgzCY1", "policyVersionId": "fK4Tat7FkBhFn04G"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kb7v21W95sABL77o", "policyId": "CsPYhRcTuL16T31S", "policyVersionId": "M737tNHgVvTtyVs9"}]' \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'ypEv0toamiaCbGHO' \
    --countryCode 'tH6CETG2Dzg0g6ko' \
    --namespace $AB_NAMESPACE \
    --userId 'OoZMK4cOGokDOCk1' \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion2 \
    --localizedPolicyVersionId 'OI0CX1IhkFeXJLFj' \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion3 \
    --localizedPolicyVersionId 'fw2pqvaxRkuDXppw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'Vgo0hgNfZUIVQljw' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '6AXqiqcajfKn2OuK' \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags '3MqItpcEwbSHVwjf' \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '58S5zQjHX0BUKaYK' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'KNyQwjtYcJynBOMR' \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE