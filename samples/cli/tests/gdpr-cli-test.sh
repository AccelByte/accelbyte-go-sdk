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
echo "1..49"

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
    --after 'JAtzJf1yEwuyukOy' \
    --before 'JYn1BmTDPSaRRnji' \
    --limit '22' \
    --offset '71' \
    --requestDate '87hGhZ6dVZdbBeLA' \
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
    --body '["CnlK3UPqLLhqtmeQ", "QnWq0AMgfvS9RUEg", "BGTIfjcT3zKirxmx"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["wgpjqqMAhcdgwZw2", "KeQ3LCoGTTBMWSSV", "G0yuuMlIljBMS7m5"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["HdqiQr4qoLhWkhbV", "jz2dZmGyt7QtLRxg", "lG5gL1myPNX1WyGg"]' \
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
    --body '{"bpCert": "lrlGvOGtfxrC8ezL", "password": "U0lCiY88bKwMrnv9"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'jwmph92jAgowUPRR' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'EubyOoC0pByy6gWr' \
    --body '{"bpCert": "TAM9miMa74wBVbhP", "bpCertFileName": "rUgESob5wECH6ITs", "clientId": "8PxYV0K0a39R3Jnt", "password": "btxL9rcmdMQxmPhz", "publisherKey": "JfZr5UyaKuduXKyc", "sandboxId": "NdVCGgGnm38pgGF3", "secret": "f2laFoi7SF1PiRCQ"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'uizWLIG5p90Xd6Zy' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
samples/cli/sample-apps Gdpr adminMockPlatformAccountClosureData \
    --namespace $AB_NAMESPACE \
    --platform 'iPrhsz3eikHLlcSA' \
    --body '{"platformUserId": "cPevYNwHqEc9UGRW", "sandbox": "Jkn2CrEu9ontr1vm", "startImmediately": true}' \
    > test.out 2>&1
eval_tap $? 12 'AdminMockPlatformAccountClosureData' test.out

#- 13 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '27' \
    --requestDate 'DGw56W07olQU6cG5' \
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
    --body '{"services": [{"extendConfig": {"appName": "sBXeQzPJUYqHycgB", "namespace": "kFFTCWax5WAHb6Sb"}, "id": "3n8uiBY1PAn2Wa6h", "package": "ZHDSg29VwdBEU3P6", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "A1QymucpNCPAlGZQ"}, "type": "EXTEND"}, {"extendConfig": {"appName": "43HACLcVF7pOlvN9", "namespace": "NrQKpi6kKHxcjq8Y"}, "id": "0bMIXhXzOSUFM1p0", "package": "3cDgDc2KQqCuPcOv", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "9rgkYKioOovmHENR"}, "type": "EXTEND"}, {"extendConfig": {"appName": "c0PrTlYTXxEwymce", "namespace": "2DxnRSIwWhTpGktF"}, "id": "XALdRnG2gru4Xuu4", "package": "nI7HfRS6JFvkdhcf", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "UjBtkFkViwGgkK1T"}, "type": "EXTEND"}]}' \
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
    --body '{"services": [{"extendConfig": {"appName": "gdbn188g3uFpjDoV", "namespace": "Ie5BHCwe10dQloit"}, "id": "gk5OxwuLnYHVDjUf", "package": "uKb41Gw2jcgLmYlK", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "E3ydxgZvZ73y6jBS"}, "type": "SERVICE"}, {"extendConfig": {"appName": "9IWWheo5ueuckaR7", "namespace": "IsSgHfDxADqXDq0T"}, "id": "pf6MYSYRBmc7ghgn", "package": "gJ7KWzyMmcpwCYwy", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "8uFTAyuvfCT1WDH0"}, "type": "EXTEND"}, {"extendConfig": {"appName": "p9TuX6SvPPgI2huL", "namespace": "BfwXjIAwMMxbglLA"}, "id": "P7dE7iXLcJ9g4DOV", "package": "E86iv3Zu5QsgAAJn", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "Wxm1mtU4nSrQ6LO0"}, "type": "EXTEND"}]}' \
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
    --limit '43' \
    --offset '23' \
    --platform 'lhS3Hq8bUKRjHY2e' \
    --userId 'tOziijHnPuR7AbtI' \
    > test.out 2>&1
eval_tap $? 20 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 21 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'pgxaR3w9Dm50lmb4' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '7ZiHu1Cug1WgnHGx' \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'rMr4PFckFwZK1Kzd' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'JU1cWGCfUTmtcRLL' \
    --limit '61' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'dgBr0fh03SHlrkbo' \
    --password 'wSLghorZLOwC9x70' \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'rNKFBwPw4hCRzDVc' \
    --userId '8THKBntOLsMpyrgB' \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'EsDQdiIGzlzgglht' \
    --userId 'FXF2o7aCkbguaV5c' \
    --password 'PvbagjZK1614UmDe' \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'NBir7SawyL1Cxa0l' \
    --languageTag 'lFtC7eBjyoQe1APO' \
    --password 'Usxx4oDGl40eEbRy' \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'XKqzkVEWtO9bYIjk' \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'oHszdfez4vVmCGJ3' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'bZgHIpm7eHP0mhKm' \
    --limit '89' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'itNkvFFi4OKFl2Im' \
    --languageTag 'ez8ze9ohlmLMtyTv' \
    --password 'GjihsEmDWVyj9gWt' \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'Y7pN29wtAwe3l0pM' \
    --userId '6fYgY1oNiHBdmq4A' \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'jtclx7Ho59u54wxj' \
    --userId 'uw1dyJgjIgw2K4nh' \
    --password '9WmZRd2tMHifnvbZ' \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'bRpEnByZXLw8Coj3' \
    --platformToken 'eWvgZyGT6l9tjdib' \
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

#- 38 PublicSubmitMyHeadlessDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyHeadlessDeletionRequest \
    > test.out 2>&1
eval_tap $? 38 'PublicSubmitMyHeadlessDeletionRequest' test.out

#- 39 PublicSubmitMyHeadlessPersonalDataRequest
samples/cli/sample-apps Gdpr publicSubmitMyHeadlessPersonalDataRequest \
    --email '08LVjOFSADqBJ0LC' \
    --languageTag 'B7BXSqXGDcOIStX9' \
    > test.out 2>&1
eval_tap $? 39 'PublicSubmitMyHeadlessPersonalDataRequest' test.out

#- 40 PublicGenerateMyHeadlessPersonalDataURL
samples/cli/sample-apps Gdpr publicGenerateMyHeadlessPersonalDataURL \
    --requestDate 'ISigoHcVd0mmCC4P' \
    > test.out 2>&1
eval_tap $? 40 'PublicGenerateMyHeadlessPersonalDataURL' test.out

#- 41 PublicGetMyPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetMyPersonalDataRequests \
    > test.out 2>&1
eval_tap $? 41 'PublicGetMyPersonalDataRequests' test.out

#- 42 PublicSubmitMyPersonalDataRequest
samples/cli/sample-apps Gdpr publicSubmitMyPersonalDataRequest \
    --email 'ohEsCpfjK6CZIMvK' \
    --languageTag 'f0U7b1wIpItXOHUM' \
    --platformId 'QAPHytaIqx23DBUW' \
    --platformToken 'aHPtfAFpjU6o3DjZ' \
    > test.out 2>&1
eval_tap $? 42 'PublicSubmitMyPersonalDataRequest' test.out

#- 43 PublicCancelMyPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelMyPersonalDataRequest \
    --requestDate 'V9bbgvxVwEmaIBFC' \
    > test.out 2>&1
eval_tap $? 43 'PublicCancelMyPersonalDataRequest' test.out

#- 44 S2SGetListFinishedAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --end 'fmjWtsqHwYRj31RA' \
    --start 'wifhY5bcpzYgtNhp' \
    > test.out 2>&1
eval_tap $? 44 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 45 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'LpwURbpLOKYduEft' \
    --start '1g0oaZYuBFokAo4c' \
    > test.out 2>&1
eval_tap $? 45 'S2SGetListFinishedPersonalDataRequest' test.out

#- 46 S2SGetDataRequestByRequestID
samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace $AB_NAMESPACE \
    --requestId 'v2UeynhIF4PVDzgo' \
    > test.out 2>&1
eval_tap $? 46 'S2SGetDataRequestByRequestID' test.out

#- 47 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'W9oUSnhN965chqfL' \
    > test.out 2>&1
eval_tap $? 47 'S2SSubmitUserAccountDeletionRequest' test.out

#- 48 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'jtfl349OW4Q1yLvm' \
    > test.out 2>&1
eval_tap $? 48 'S2SRequestDataRetrieval' test.out

#- 49 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'pp9ndsKkv3cxlVsj' \
    --userId 'HhbWr9yoUbrYcvWI' \
    > test.out 2>&1
eval_tap $? 49 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE