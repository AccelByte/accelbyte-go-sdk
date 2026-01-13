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
echo "1..75"

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
    --userId 'kGaBsyzGFvpzkuIs' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JAvvcVef0gC0uq00", "policyId": "AOg0BDZfSBmDJ1tA", "policyVersionId": "jtjXDZCqTs1NLb9z"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tLlXSxUuz16eGfK5", "policyId": "UTX3hKPqKtcxsfcE", "policyVersionId": "AytI4aweyXLcyFsX"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oVhlyZYRWFrxBg3C", "policyId": "Eznr27hdkwfC624O", "policyVersionId": "mb8WRvpuPF3IasqG"}]' \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'tylFW2AZKcycbw50' \
    > test.out 2>&1
eval_tap $? 3 'OldRetrieveAcceptedAgreements' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'ANzltAzRCdKMBEe7' \
    --limit '33' \
    --offset '52' \
    --policyVersionId 'Oj7Dy1YJBg1EbvhJ' \
    > test.out 2>&1
eval_tap $? 4 'OldRetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 OldCreatePolicy
samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["ik4F80ktldndGBmM", "RUVKpzLDjJaz3UBf", "nz4HqK5Nu4BeZSo4"], "affectedCountries": ["sKMgvl6hrlaSSlhK", "xEHFBlcC8VTXZj41", "KYPIeMeQ4QmphD7p"], "basePolicyName": "JeHh4Ple6yQbAbJA", "countryGroupName": "E7XCNdkQ0380SQLc", "countryType": "COUNTRY", "description": "Jenyn3dw9Oc9u8w5", "isHidden": false, "isHiddenPublic": false, "namespace": "ioyUzTXHv9jz4dOT", "tags": ["bPtrFSg8oDZI0URb", "w4qiFc1PMA1HKGKa", "Wkis4WISEXn1bOtL"], "typeId": "s6XUq1N5vnptYgUX"}' \
    > test.out 2>&1
eval_tap $? 6 'OldCreatePolicy' test.out

#- 7 OldRetrieveSinglePolicy
samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'qOe4ga3BUurBpfOA' \
    > test.out 2>&1
eval_tap $? 7 'OldRetrieveSinglePolicy' test.out

#- 8 OldPartialUpdatePolicy
samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'S6kxKKX7JGvASESL' \
    --body '{"affectedClientIds": ["jIdDnEJcWxEFO03x", "4QjBDjvMepzy1CxW", "yswDHqUSBWECdbaH"], "affectedCountries": ["070Z184pkNqe4AIL", "Wych8zJeKWM4jU9j", "2nDVyt5cmanrkiDj"], "basePolicyName": "jL5xnogvjnFJmtD7", "countryGroupName": "CW6lndwZ3yGK5xMF", "countryType": "COUNTRY", "description": "Nl0r4Wht7fL122pT", "isHidden": true, "isHiddenPublic": true, "namespace": "6twK1jPn7dtgdf0z", "tags": ["ZwVGNfSmwTRPeZ3d", "0Uf8DEAWTjw6AR8k", "r3R8wwiSPJsb2ym9"]}' \
    > test.out 2>&1
eval_tap $? 8 'OldPartialUpdatePolicy' test.out

#- 9 OldRetrievePolicyCountry
samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'MQzU2IiTm3DQS3tF' \
    --countryCode 'sjbblMkR5o8ykDn4' \
    > test.out 2>&1
eval_tap $? 9 'OldRetrievePolicyCountry' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'Z46S6Y5mkRbjhtzB' \
    > test.out 2>&1
eval_tap $? 10 'OldRetrieveLocalizedPolicyVersions' test.out

#- 11 OldCreateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'U94D7xnAzeLnqLb3' \
    --body '{"contentType": "z5nHHGyH7WZETqt3", "description": "vI4LuENn1VsBPSmE", "localeCode": "o41BGn50tAuPBrkp"}' \
    > test.out 2>&1
eval_tap $? 11 'OldCreateLocalizedPolicyVersion' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'dRtHzA1Xbamn32mF' \
    > test.out 2>&1
eval_tap $? 12 'OldRetrieveSingleLocalizedPolicyVersion' test.out

#- 13 OldUpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'lXOSFvkBiuaMUaO1' \
    --body '{"attachmentChecksum": "O348IHZz9c9bL3cx", "attachmentLocation": "I4LcpySlE4dtnlS3", "attachmentVersionIdentifier": "Gd2AnPo2RJH6O674", "contentType": "WEyZNTFfOx0IiCm7", "description": "RtVmhAlhIrfn6T4Z"}' \
    > test.out 2>&1
eval_tap $? 13 'OldUpdateLocalizedPolicyVersion' test.out

#- 14 OldRequestPresignedURL
samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'PYTarKmGA42nv47N' \
    --body '{"contentMD5": "KMqughsZticaLyDB", "contentType": "ffm1dbLx6ri11h6s"}' \
    > test.out 2>&1
eval_tap $? 14 'OldRequestPresignedURL' test.out

#- 15 OldSetDefaultLocalizedPolicy
samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'oUUt81r65UGUY4zF' \
    > test.out 2>&1
eval_tap $? 15 'OldSetDefaultLocalizedPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace $AB_NAMESPACE \
    --body '{"currentPublishedOnly": false, "userIds": ["eueKSl9Jbqjy1a5G", "eMW3W9QfRjGpwbLE", "1VdKm6VcLGu5PW7h"]}' \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace $AB_NAMESPACE \
    --userId 'a3t8naLuL110qXyr' \
    --excludeOtherNamespacesPolicies 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace $AB_NAMESPACE \
    --convertGameUserId 'true' \
    --keyword 'TmHN6cbkZ6RLzGV5' \
    --limit '66' \
    --offset '86' \
    --policyVersionId 'fx7NqUG72sPGqJZb' \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace $AB_NAMESPACE \
    --exportId 'GXYq589dCQDlzGU4' \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace $AB_NAMESPACE \
    --end '08KrAYF09qXoWFqs' \
    --policyVersionId 'hEdwpPuVCMkAtINu' \
    --start 'NaAYXi6snh9GHe8t' \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '75' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
samples/cli/sample-apps Legal createPolicy \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["8xOBsq1qRF44chMa", "WgHGrwHIKcml7GfF", "aE9o6zTOajK8fE80"], "affectedCountries": ["l0DIiKJF8gZ3BW35", "rOeLezN0sdjw1Usf", "KdfGKUQRVm6OucLA"], "basePolicyName": "SIdsbExM176lkUjz", "countryGroupName": "ope8Xda0fkjuFSu7", "countryType": "COUNTRY", "description": "5vqYDPcRz5KIY4Gf", "isHidden": false, "isHiddenPublic": true, "tags": ["aePr13ma0A9X62Pg", "8tGoap20LCTeC6dc", "lJ4YqK7zOxEsA2Zt"], "typeId": "YDfc84mDnikgjSBP"}' \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'nIsvTWwOz2HGh2oV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'BZOMqE4vURy5PElV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'F59naoRTphLeIdgs' \
    --namespace $AB_NAMESPACE \
    --body '{"affectedClientIds": ["npryVCnwxmgS0SLe", "aziJ8DhpzYlw1Qte", "MBFsnbruAnpSuBEr"], "affectedCountries": ["x2WXpMQaGkXNH5Jj", "jX4tH8mpkSSvV99F", "dFRMX4t75cDJ98BT"], "basePolicyName": "CecFhlVU4hYdjTGE", "countryGroupName": "veZ6kcBULoRzvaiZ", "countryType": "COUNTRY", "description": "0P370bFjpB3r37aG", "isHidden": true, "isHiddenPublic": false, "tags": ["8WLLunR1ijfIoDLY", "5yiyl3tgTSexdvTt", "NF9YhSg3Hgp4qK1E"]}' \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'ovT2PDjHEGN0oH1k' \
    --countryCode 'd698dYw4hLS6APJX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'ZUFjrOr3jGwzJh3i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId '8q8YnnTGPSs2FmHs' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": ["v3OSrj73dCRmtcoi", "wTASIim1LpXXv3oP", "Msfr4FeEtvnZUGPH"], "countryCode": "MFn9Q6VOYih5A39M", "countryGroupName": "dqZ3tLuH19eSOhpC", "countryType": "COUNTRY_GROUP", "description": "zdcdruWFRpnTQwcr", "isDefaultSelection": false, "isMandatory": false, "policyName": "Erax5mdY8wt9sgkL", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'kbDc5Dkwz4XMPxcz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'RC4OrTFwkhfrJZBa' \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'u7DvUSLNrKjNzr06' \
    --body '{"contentType": "QelB1401zh6K3At1", "description": "f5Bbf6bBo31LnGxT", "localeCode": "YKXMZiocIMlqmbxZ"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'wOk7f5mljNmjKiiX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId '0RJCAuF4mot6qm4F' \
    --namespace $AB_NAMESPACE \
    --body '{"attachmentChecksum": "Qa1nhqDunYAvXkiW", "attachmentLocation": "jSGdIx2qkFpmYY8e", "attachmentVersionIdentifier": "G7eUMlgQh4gIGyqa", "contentType": "iziPvU7TqUgI6hfn", "description": "S6ir4i6110rSzmwd"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'JzfGSyyJaSCZ3SfN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentMD5": "KB2viLcmAoNBMBFu", "contentType": "bBVHS22IC1zLQPOk"}' \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'UHbc2mnzpLZQsiJ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'eH0Ct8W7vRz99n8u' \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'igKWmS4htCM53oZe' \
    --body '{"description": "SbsF8ooliPaV1S7g", "displayVersion": "VDROI0HWGgFfsRdD", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'AlZrIlzMax8EMJRI' \
    --shouldNotify 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyVersionId 'ngfosOiTmpvnp0MF' \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
samples/cli/sample-apps Legal deletePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'oqWGr1IMtfbhAMcP' \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'nPyQgXfBDwG9yjNW' \
    --body '{"countries": ["G6Q3NRyuXSsJvqVO", "0mO3EAApQ02L79Ne", "KJB0NL9AHIq0SKT0"], "countryGroupName": "1BNQQHrRMCiNSUtr", "description": "YQXq4xDdkASVUKyi", "isDefaultOpted": false, "isMandatory": true, "policyName": "rTvxShbx4qdtTPjh", "readableId": "FTKwy8zCPzYIwyDO", "shouldNotifyOnUpdate": false}' \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace $AB_NAMESPACE \
    --policyId 'EGUyCgXeYObrzd2p' \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'xaXbJk1Yx2DO5DEe' \
    --versionId 'IdcA2tuOcVryCbVG' \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --namespace $AB_NAMESPACE \
    --policyId 'ez3Priv0Ql6UqISE' \
    --body '{"description": "9X1kRScmNMW9daAP", "displayVersion": "mH0aaKefxqAkFzu3", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace $AB_NAMESPACE \
    --offset '91' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace $AB_NAMESPACE \
    --userId 'jpSkG1xXmPmgEUOS' \
    --publisherUserId 'iFb8kfS5j9y3QTBg' \
    --clientId 'gYAHL6RDmvVJiNGk' \
    --countryCode 'iKP7kPNGmiLUmTVe' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mpe92FIbPWQbDsST", "policyId": "30OxKpTvgDaq6l0P", "policyVersionId": "NxhgleFgx8RKk7ay"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "voC6mXFW7XYRhF2p", "policyId": "zZMtyZJLliMaPvCY", "policyVersionId": "MHzXwGBAuVq02ZmL"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7wGyU9maQPzmeSIA", "policyId": "iX9pr2h5JNoSsZvz", "policyVersionId": "A1mNZ1POUI8JnFBp"}]' \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace $AB_NAMESPACE \
    --userId 'fzpaS5QjRnfFbkAr' \
    --publisherUserId 'Qv6v7wLeeIZAsNQy' \
    --clientId '849pW1gsEE11uj5u' \
    --countryCode 'uR8lMYHBdP96rzpA' \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'QyOu29b2odjGcFyj' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 OldUpdatePolicyVersion
samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'RmVsiSEHH38Ht0Ol' \
    --body '{"description": "UyIIojy9RucFM5ZD", "displayVersion": "eNXlLYdWd3Ag59uJ", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 49 'OldUpdatePolicyVersion' test.out

#- 50 OldPublishPolicyVersion
samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'dNw9nysApf4IUKpE' \
    --shouldNotify 'false' \
    > test.out 2>&1
eval_tap $? 50 'OldPublishPolicyVersion' test.out

#- 51 OldUpdatePolicy
samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId '2DcdNleyPmmzWxu9' \
    --body '{"countries": ["KFAThG9MsNPiCnO7", "2zLHtfj49vq0jkK6", "LOjyr61qRHiXAYnf"], "countryGroupName": "boD0L8aEDPTo4a84", "description": "mp1jLx7KOji0UEzD", "isDefaultOpted": false, "isMandatory": true, "policyName": "DcNds0PhNi7PGXad", "readableId": "2aH21ZF306187AGq", "shouldNotifyOnUpdate": true}' \
    > test.out 2>&1
eval_tap $? 51 'OldUpdatePolicy' test.out

#- 52 OldSetDefaultPolicy
samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'ZRb1a3c7oelNlZrg' \
    > test.out 2>&1
eval_tap $? 52 'OldSetDefaultPolicy' test.out

#- 53 OldRetrieveSinglePolicyVersion
samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId '5bPXjaSKuwPnSdfz' \
    --versionId 'aIDJgSTIOk4KjIrM' \
    > test.out 2>&1
eval_tap $? 53 'OldRetrieveSinglePolicyVersion' test.out

#- 54 OldCreatePolicyVersion
samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'VezmPXii1tZ4ZQnZ' \
    --body '{"description": "pa7rTQj9XVSSxy3u", "displayVersion": "0hfmRKNuOXRTbV2d", "isCommitted": true}' \
    > test.out 2>&1
eval_tap $? 54 'OldCreatePolicyVersion' test.out

#- 55 OldRetrieveAllPolicyTypes
samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset '100' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 55 'OldRetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'QzHWOHlHEDATtNfl' \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId '8nBq7MsdYJFteKoF' \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tV48WPm2zBTmNHrX", "policyId": "UgEuWJSrwqXGKKdS", "policyVersionId": "Jd7S0X5prhyCwbXq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "53fOEvdXvDRyj0Jv", "policyId": "nQdtPCpdzptQ0fef", "policyVersionId": "l4bZtjYmtPv79QPv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BHpQqQyKSrLIspwj", "policyId": "HByJcjsEhhoFgkCD", "policyVersionId": "9bohx4caIZ0iQI4B"}]' \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'vda0rKtFasfsxw3r' \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xwPVIoqfXJ50EZph", "policyId": "uhtVDik6nIL0A2Bd", "policyVersionId": "q2UTi9gJuh0hKp4U"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "A2lBHA6HhQumUG8h", "policyId": "Ftp73oBDkoZgffyX", "policyVersionId": "HpiQkPkBvQXCGuId"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QkT2ToQHegdeJcPt", "policyId": "mfjNKrQIPkfN3M7d", "policyVersionId": "IxPSHVmZbstn9vfE"}]' \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 PublicIndirectBulkAcceptVersionedPolicy
eval_tap 0 65 'PublicIndirectBulkAcceptVersionedPolicy # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'bixQGgtsJxf566uJ' \
    --countryCode 'n5DKFIPMrOnUhF6l' \
    --namespace $AB_NAMESPACE \
    --userId 'EJuZdSpzbuzHMsny' \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId '32rCU8WlEtqoOwt7' \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'qCoyPnlngSUNtdOr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'OF1QXvBPNF2ORMSO' \
    --defaultOnEmpty 'false' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'xwtZr7p6ZP3Zwfzv' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'false' \
    --defaultOnEmpty 'true' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'KA1CWOcDTqbx7HAF' \
    --visibleOnly 'true' \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'nb4svcoKhsVqSd5v' \
    --namespace $AB_NAMESPACE \
    --alwaysIncludeDefault 'true' \
    --defaultOnEmpty 'true' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags '3IOXwOunLPF5GHVA' \
    --visibleOnly 'false' \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
samples/cli/sample-apps Legal checkReadiness \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'lloCGEyK8vLp6Jcz' \
    --namespace $AB_NAMESPACE \
    --clientId 'eYuAJeDhZQbOdvtw' \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


rm -f "tmp.dat"

exit $EXIT_CODE