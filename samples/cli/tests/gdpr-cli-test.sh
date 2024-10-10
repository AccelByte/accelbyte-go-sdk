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
    --after '10nDEZE9HSKHdKZr' \
    --before 'zQC2Y6zTEqOgqX50' \
    --limit '80' \
    --offset '8' \
    --requestDate '74gCJ1ECQvTy5PIa' \
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
    --body '["yTXtgJ37DbZAR0RS", "Ch6MHMZppjbG5XIZ", "U1akr4c5PEzC7kEH"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["NYZA7uyquudWO85v", "fWeFHkRtYyWOgkDl", "LM7JnsCF84WQzf1U"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["GT4l0otyaYxlJDMb", "twa3xalemJGDjYfR", "b7b9N1BoSUfgdv4w"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'djtBFzqwrm3XuaOt' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClient' test.out

#- 8 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'zUmU1W6yddLvOEkV' \
    --body '{"clientId": "ayjd75SkE42X8qxq", "secret": "aaXGPQoXJFqdMUuQ"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdatePlatformAccountClosureClient' test.out

#- 9 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform '0rPxhWaLVOg7d5kR' \
    > test.out 2>&1
eval_tap $? 9 'AdminDeletePlatformAccountClosureClient' test.out

#- 10 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '27' \
    --requestDate 'oDoPQKoUNenkPMIF' \
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
    --body '{"services": [{"extendConfig": {"appName": "UJ2G4xKLXmR4icYh", "namespace": "RnK9Y6LzaqTXUpyz"}, "id": "rmiJITHePn89YYzQ", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "UpjhvcmClAKudkEl"}, "type": "SERVICE"}, {"extendConfig": {"appName": "ocWk8grcJaTJp7LB", "namespace": "uHAGUU6ViGrGbIJM"}, "id": "y27ZgSnwsePrVTai", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "8f6Kfjheuo4KGZDx"}, "type": "SERVICE"}, {"extendConfig": {"appName": "rCWm3sPIYn0QYKab", "namespace": "E8lJgl45YhiGW9Z0"}, "id": "7n5ZIcAd6QzKRxVH", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "VbiVxkXvnjdI8iJJ"}, "type": "EXTEND"}]}' \
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
    --body '{"services": [{"extendConfig": {"appName": "aX6bHb0KkEwstBYK", "namespace": "wx4apE9GGaGKmBxa"}, "id": "r4QBr1aVo4gxezAg", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "U0ao4swFP0JaTPlB"}, "type": "EXTEND"}, {"extendConfig": {"appName": "jXemBqAVfk6jLfJN", "namespace": "Jlau0eqgZdG85UBt"}, "id": "RMbL0XD77JYoquKC", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "RMZYIGOQ0AtzO3Xy"}, "type": "EXTEND"}, {"extendConfig": {"appName": "X2ZWNIeUWHr1k3fZ", "namespace": "gdsJTr7fBifLscj0"}, "id": "ZCWt1uGqNepBzwue", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "prBYafaQgc796xPf"}, "type": "EXTEND"}]}' \
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
    --limit '52' \
    --offset '17' \
    --platform 'VWKkL0Xa6T37kRJk' \
    --userId 'RWrwXqDZFKYOfWCy' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 18 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'qjCmzPT9WUIXccCw' \
    > test.out 2>&1
eval_tap $? 18 'AdminGetUserAccountDeletionRequest' test.out

#- 19 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'g2poPHXHq9R3xLay' \
    > test.out 2>&1
eval_tap $? 19 'AdminSubmitUserAccountDeletionRequest' test.out

#- 20 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '5Oq1MJuxbpCiUHWq' \
    > test.out 2>&1
eval_tap $? 20 'AdminCancelUserAccountDeletionRequest' test.out

#- 21 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'On55oh1Z3IN7GXN7' \
    --limit '78' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserPersonalDataRequests' test.out

#- 22 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'hzqzrdlK0I6nPBsh' \
    --password 'Ox3MoBK7HaDvqo9d' \
    > test.out 2>&1
eval_tap $? 22 'AdminRequestDataRetrieval' test.out

#- 23 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'ZkOGyK7ZXIrulmz7' \
    --userId 'Kr32I6ULbKp1W0GD' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserPersonalDataRequest' test.out

#- 24 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'HV9zFbf4nKAy0nDh' \
    --userId 'Abufguc3Oy9Q35VL' \
    --password 'IPKHKvcZtZeaKqhW' \
    > test.out 2>&1
eval_tap $? 24 'AdminGeneratePersonalDataURL' test.out

#- 25 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '5k8SKqJFnyKYp1KD' \
    --languageTag 'eQx7dnKgkIlKMKy4' \
    --password 'VWi6pshuYvYEYZDE' \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitUserAccountDeletionRequest' test.out

#- 26 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '9VRuWE831BaUYq43' \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelUserAccountDeletionRequest' test.out

#- 27 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId '1IZqW4u83DGbvvX9' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetUserAccountDeletionStatus' test.out

#- 28 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'lPgr1MU1s5BIYsUZ' \
    --limit '48' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserPersonalDataRequests' test.out

#- 29 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'cOwVBLfKzSWwQIUa' \
    --languageTag 'ZQxAjxSmfq1DhvYv' \
    --password '3WvzLzBnE0nKSC6m' \
    > test.out 2>&1
eval_tap $? 29 'PublicRequestDataRetrieval' test.out

#- 30 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'V4cDLvCG7oGkIuW5' \
    --userId 'w80HBxEqO5GoZt9e' \
    > test.out 2>&1
eval_tap $? 30 'PublicCancelUserPersonalDataRequest' test.out

#- 31 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'Mj5bHBStpoUrRTyV' \
    --userId 'OI6PHbkpw1zO4Ljk' \
    --password '72Ws8TB5Gv35Rq2M' \
    > test.out 2>&1
eval_tap $? 31 'PublicGeneratePersonalDataURL' test.out

#- 32 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'OH666GFUtHXFB3EZ' \
    --platformToken 'ruRO8ytK1IngPmKl' \
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
    --end '5mPCHapMLs8yW85V' \
    --start 'GjKWrrcBlXjiBtHN' \
    > test.out 2>&1
eval_tap $? 35 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 36 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end 'dvwvyruWFiSWir8v' \
    --start '0WuQBYTbTKcW48cL' \
    > test.out 2>&1
eval_tap $? 36 'S2SGetListFinishedPersonalDataRequest' test.out

#- 37 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'OiMbtyGGoM38gflt' \
    > test.out 2>&1
eval_tap $? 37 'S2SSubmitUserAccountDeletionRequest' test.out

#- 38 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'oLWreRY1hwcAK5KO' \
    > test.out 2>&1
eval_tap $? 38 'S2SRequestDataRetrieval' test.out

#- 39 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'dWsREuX2IpmmqAgO' \
    --userId '1Ts3AwHUSa9dPMSN' \
    > test.out 2>&1
eval_tap $? 39 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE