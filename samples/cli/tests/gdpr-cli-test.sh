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
echo "1..39"

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
    --after 'Vuv2tMkKbBo88Gta' \
    --before 'Cf2eEgbVKRX8RQ2n' \
    --limit '75' \
    --offset '81' \
    --requestDate 'mAMpQ3asBMcHv6yS' \
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
    --body '["EPUbpkpk1YNomf9F", "aPuIheeVvIuajgCW", "4PFMmq5c4NP8agdY"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["XZ3udCVWrCNVhPLZ", "6NV8wCdcAkS5GtKv", "g7OtnUJwgGYRm2Xh"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["n4hCTyLykrdwKBCI", "IjivnFoZSxPfru0n", "sH1QVdH87BLsCUUM"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'XSN1SLJY2DDwFDxV' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClient' test.out

#- 8 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'SqkwaXiB6K5Sfwpa' \
    --body '{"clientId": "96PQTc4GmKpib5mW", "secret": "iRg9kzHAlVqcycil"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdatePlatformAccountClosureClient' test.out

#- 9 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'hTxZcro3uD8j5yf3' \
    > test.out 2>&1
eval_tap $? 9 'AdminDeletePlatformAccountClosureClient' test.out

#- 10 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '57' \
    --requestDate 'BWreEaRnbBulQHNv' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetListPersonalDataRequest' test.out

#- 11 AdminGetServicesConfiguration
samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetServicesConfiguration' test.out

#- 12 AdminUpdateServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "zceelXe4PzmtGje9", "namespace": "nHGNJA2DvOx7ZH17"}, "id": "xhUchIY0MPMxqJRG", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "3bBBGzLUmuzZmxig"}, "type": "EXTEND"}, {"extendConfig": {"appName": "PRLhTbUSEvdVrZ9x", "namespace": "rSgGAw4mrKtACBvA"}, "id": "rzaaOK7rc4Sze1h0", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "5SHxzNmIE0SJ9VnL"}, "type": "SERVICE"}, {"extendConfig": {"appName": "5BCdlkKYgcYWmQAY", "namespace": "J7xVIFl8Y32Cgwj1"}, "id": "TJHct7f5FIy9QlPy", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "jBtozeDY0i9jwSgw"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateServicesConfiguration' test.out

#- 13 AdminResetServicesConfiguration
samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminResetServicesConfiguration' test.out

#- 14 AdminGetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 15 AdminUpdatePlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "1Cvw3MIqwdQCdMej", "namespace": "ev6FdEKEXWT1ryQB"}, "id": "LiGebubUMf5FOzbT", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "S2Wmdtxla2XZtupp"}, "type": "SERVICE"}, {"extendConfig": {"appName": "tkGfRYFqwjPr8LdH", "namespace": "GI1NRvCFtgEvrXJx"}, "id": "3hDZ9gKque9VTrr9", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "wrSOuoi85tS25fJp"}, "type": "EXTEND"}, {"extendConfig": {"appName": "Pc8OB7T26udtdvPA", "namespace": "Eff8w8VVU90tPwE3"}, "id": "o8FP4lPFlnFORw59", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "UBKFwdE6byr99SlT"}, "type": "EXTEND"}]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 16 AdminResetPlatformAccountClosureServicesConfiguration
samples/cli/sample-apps Gdpr adminResetPlatformAccountClosureServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 17 AdminGetUserPlatformAccountClosureHistories
samples/cli/sample-apps Gdpr adminGetUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '51' \
    --platform '78tQwGzWwEbm1nrQ' \
    --userId '2mrRmvkfMsZMy72R' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 18 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'w5kM3TlKzoJ3qrKE' \
    > test.out 2>&1
eval_tap $? 18 'AdminGetUserAccountDeletionRequest' test.out

#- 19 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'ZxBXMOe8aIv045xL' \
    > test.out 2>&1
eval_tap $? 19 'AdminSubmitUserAccountDeletionRequest' test.out

#- 20 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'T1n50VkdnjUU705r' \
    > test.out 2>&1
eval_tap $? 20 'AdminCancelUserAccountDeletionRequest' test.out

#- 21 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'mWJbtKCpail4s9MF' \
    --limit '25' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserPersonalDataRequests' test.out

#- 22 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'DRq6D42nWU9aJghr' \
    --password 'SPi92QjpKAEse4VP' \
    > test.out 2>&1
eval_tap $? 22 'AdminRequestDataRetrieval' test.out

#- 23 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'ypr04CZx7QGH2bOt' \
    --userId 'pLMVmt8FHmiCiyPl' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserPersonalDataRequest' test.out

#- 24 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'KTmARhkIgjGwv3ao' \
    --userId 'whOemdml6fzEyEII' \
    --password 'JsRfc4AjFUFgQyMS' \
    > test.out 2>&1
eval_tap $? 24 'AdminGeneratePersonalDataURL' test.out

#- 25 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '2Qakk2YCYm1qJYMI' \
    --languageTag '7JrHERuntV7O7TO2' \
    --password 'UOxZIJKpK0jNPnTd' \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitUserAccountDeletionRequest' test.out

#- 26 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '0IAS7bcIpDe0ukR7' \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelUserAccountDeletionRequest' test.out

#- 27 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'MLAGiEeIlwQW90sV' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetUserAccountDeletionStatus' test.out

#- 28 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId '5lIG5WHOAAYUpdRA' \
    --limit '55' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserPersonalDataRequests' test.out

#- 29 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId '4TmLhhfBRN9aCa1k' \
    --languageTag 'SstYwQ1xR0xKLEqx' \
    --password 'hHtImVD6Nus8YcVk' \
    > test.out 2>&1
eval_tap $? 29 'PublicRequestDataRetrieval' test.out

#- 30 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'KwAF62yOBYrP5QIY' \
    --userId 'V5A1lQy9gLvGOECC' \
    > test.out 2>&1
eval_tap $? 30 'PublicCancelUserPersonalDataRequest' test.out

#- 31 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'EiBp4P2fbTgSUFsc' \
    --userId 'DTEBH1oX0jSt79SB' \
    --password 'htAHr4YNUtqZRjNo' \
    > test.out 2>&1
eval_tap $? 31 'PublicGeneratePersonalDataURL' test.out

#- 32 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'GwBsops74jrdvCCR' \
    --platformToken 'JxNaJAm2fbAsIXnp' \
    > test.out 2>&1
eval_tap $? 32 'PublicSubmitMyAccountDeletionRequest' test.out

#- 33 PublicCancelMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelMyAccountDeletionRequest' test.out

#- 34 PublicGetMyAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > test.out 2>&1
eval_tap $? 34 'PublicGetMyAccountDeletionStatus' test.out

#- 35 S2SGetListFinishedAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --end '45yopR4NbILNd0Yr' \
    --start 'Hlss0TXeS8wvXUak' \
    > test.out 2>&1
eval_tap $? 35 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 36 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'S2g7TKhgbTlLBqf9' \
    --start 'kTrm0MhBpSFhg83k' \
    > test.out 2>&1
eval_tap $? 36 'S2SGetListFinishedPersonalDataRequest' test.out

#- 37 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'zTHP5muNQswSnCJ0' \
    > test.out 2>&1
eval_tap $? 37 'S2SSubmitUserAccountDeletionRequest' test.out

#- 38 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'tB1hq0VOjMO9ydmM' \
    > test.out 2>&1
eval_tap $? 38 'S2SRequestDataRetrieval' test.out

#- 39 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'FCjxlueDQUP2BZHF' \
    --userId 'YaevNmbMSLqm2nzb' \
    > test.out 2>&1
eval_tap $? 39 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE