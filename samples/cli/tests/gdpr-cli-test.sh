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
echo "1..43"

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

#- 2 AdminGetListDeletionDataRequest
samples/cli/sample-apps Gdpr adminGetListDeletionDataRequest \
    --namespace $AB_NAMESPACE \
    --after 'nR0blqOCj3J9jCyj' \
    --before 'WdZpolRi6RsyGzFq' \
    --limit '7' \
    --offset '100' \
    --requestDate 'IAEcF5lmP24aI8XK' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetListDeletionDataRequest' test.out

#- 3 GetAdminEmailConfiguration
samples/cli/sample-apps Gdpr getAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 3 'GetAdminEmailConfiguration' test.out

#- 4 UpdateAdminEmailConfiguration
samples/cli/sample-apps Gdpr updateAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["3DECMUfzamRTCZVC", "Hu6wTTjU8RQNAvtb", "Jzq5St0wIgpK6tBU"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["UkrPuYz9iH9bTMbo", "A7yFDslW1gMnyYQS", "kAeaya21U84oS8sI"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["Npa0giRhTMfZWJLn", "hBsXBkDGTm9Z2oJp", "jnDYUalFQSKNNAJp"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClients
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClients \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClients' test.out

#- 8 AdminValidateXboxBPCertFile
samples/cli/sample-apps Gdpr adminValidateXboxBPCertFile \
    --namespace $AB_NAMESPACE \
    --body '{"bpCert": "M2Nal5TmAxkFjm4c", "password": "04S5xMtXw6zsfYiC"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'jPldjn6SPxfPOzpG' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'KIW2e31VBjELvF3a' \
    --body '{"bpCert": "JVVIqvbBIFZTVNrV", "bpCertFileName": "ZEUOAa1PTE6WpaL7", "clientId": "kKAGvYpor409nHPR", "password": "7gJF08D4BXQYbVVf", "publisherKey": "NyAdsumnD4M3hcJo", "sandboxId": "EibTBz3p5L086B9n", "secret": "sv6nI1FvQzNTnDzR"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'Jj64tSo2QlSpLnve' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
samples/cli/sample-apps Gdpr adminMockPlatformAccountClosureData \
    --namespace $AB_NAMESPACE \
    --platform 'F9VwA6cydVPPkC43' \
    --body '{"platformUserId": "qwwblFxd7S8R4Npr", "sandbox": "5LxiaDrBZN4bp9Nx", "startImmediately": true}' \
    > test.out 2>&1
eval_tap $? 12 'AdminMockPlatformAccountClosureData' test.out

#- 13 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '28' \
    --requestDate 'en3Gp7Mv3DbR6853' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetListPersonalDataRequest' test.out

#- 14 AdminGetServicesConfiguration
samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetServicesConfiguration' test.out

#- 15 AdminUpdateServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "4heFnu7WAXRMsX4d", "namespace": "NZJF4IsjUCrIq7iq"}, "id": "ptCWjQm41Nm4llLB", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "Us2jq9RJYUTtKhyN"}, "type": "EXTEND"}, {"extendConfig": {"appName": "JoV7kQ5R9z1uyDUw", "namespace": "axnme7kRniokYdoZ"}, "id": "DZsOeTXzn2VfYRF8", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "HNRJCFSrnK4jBy8Y"}, "type": "EXTEND"}, {"extendConfig": {"appName": "WCtPlvl4uYvgSm3Y", "namespace": "WfO8em3q5TJDLbow"}, "id": "cFs6QW5e9wVZ8W7O", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "bHOVSEKoqq0o9p9X"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdateServicesConfiguration' test.out

#- 16 AdminResetServicesConfiguration
samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminResetServicesConfiguration' test.out

#- 17 AdminGetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 18 AdminUpdatePlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "1q7sepXmTgbWv1xx", "namespace": "epBraGxWcNu4WrCZ"}, "id": "k9Q2BzkkgvbAs0jV", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "7rBasDS7RSHOHw0S"}, "type": "EXTEND"}, {"extendConfig": {"appName": "LOM4pyY2ALVmPQWS", "namespace": "4tiT4KxUbyCX2Sm8"}, "id": "dag1cTb02Q9ozABE", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "I9TJAYHTop16JbJw"}, "type": "EXTEND"}, {"extendConfig": {"appName": "1pSW6lZPAbPEdmlJ", "namespace": "etps05zeNlVotkfR"}, "id": "GdQbUpDJtkU8R3ox", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "uYJhyK5ZwhhcwGkR"}, "type": "SERVICE"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 19 AdminResetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminResetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 20 AdminGetUserPlatformAccountClosureHistories
samples/cli/sample-apps Gdpr adminGetUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '51' \
    --platform 'vECsxfMJ7kPFJWOk' \
    --userId 'JOyNUf8sQ29LnTlk' \
    > test.out 2>&1
eval_tap $? 20 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 21 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'nFxaK3QVnVQT1enn' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'TseW1Q61S2GILNlU' \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'VDz7bKJnpxzxsnV7' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'ANyfhhJp9XgkORyi' \
    --limit '98' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'l9hK3xnVtdhuMPcl' \
    --password 'Zt3fmlcWuUicTley' \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'HDrkOa4pYMEqhjTH' \
    --userId 'IcGXXel725EP2ZHn' \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'NY5QuukWHKW0FWFc' \
    --userId 'rBCqKdjr4M6iz648' \
    --password '5Ay0urmcHFIfIjAT' \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'NqewMLhYojCs2mB2' \
    --languageTag 'E0i6tLCvNrpq9nz2' \
    --password 'OqVWF01Rhg56VKQn' \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'JABGOLAvOiABppq0' \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VVlIE8JvJ55qoSrQ' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'DyUpnH5wHjdUKycd' \
    --limit '16' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'uClYCvnhHG6JwVh7' \
    --languageTag '0YpOSgryZVw9XgLe' \
    --password 'JuxJPuoqKP4UJHOh' \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate '68emtwbtNrWOPJwA' \
    --userId 'mOzWQjS9ViH9ZELZ' \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate '98SI5wVQ2XQyxErr' \
    --userId '1R8l9ZotVSC1Pbaw' \
    --password 'o21rz4N2VHyanLMp' \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'kO9K7HzzLElFJ6Wd' \
    --platformToken 'nwPJfXAQBInY7be5' \
    > test.out 2>&1
eval_tap $? 35 'PublicSubmitMyAccountDeletionRequest' test.out

#- 36 PublicCancelMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > test.out 2>&1
eval_tap $? 36 'PublicCancelMyAccountDeletionRequest' test.out

#- 37 PublicGetMyAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > test.out 2>&1
eval_tap $? 37 'PublicGetMyAccountDeletionStatus' test.out

#- 38 S2SGetListFinishedAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --end 'lZxzivI4MPGEdEiR' \
    --start '92uSDCZ1SsvpsdHY' \
    > test.out 2>&1
eval_tap $? 38 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 39 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'RfbaaiDOrvPRvb7B' \
    --start 'eUsCK9qhKVvDgBGZ' \
    > test.out 2>&1
eval_tap $? 39 'S2SGetListFinishedPersonalDataRequest' test.out

#- 40 S2SGetDataRequestByRequestID
samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace $AB_NAMESPACE \
    --requestId 'cqjh1GDqJBo1f3hA' \
    > test.out 2>&1
eval_tap $? 40 'S2SGetDataRequestByRequestID' test.out

#- 41 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'CRxC6q7LU6FPShYU' \
    > test.out 2>&1
eval_tap $? 41 'S2SSubmitUserAccountDeletionRequest' test.out

#- 42 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'HUnoA5IFolL9Si1K' \
    > test.out 2>&1
eval_tap $? 42 'S2SRequestDataRetrieval' test.out

#- 43 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'IjwU9h6sYQHrbz1V' \
    --userId 'rO5FxhbPThTwl4r2' \
    > test.out 2>&1
eval_tap $? 43 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE