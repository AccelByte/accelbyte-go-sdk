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
echo "1..27"

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
    --after 'sIapxhvIgRTk2ue7' \
    --before '1vQIshjanlRNp9mW' \
    --limit '97' \
    --offset '91' \
    --requestDate 'SmTY5jH5kohjHdDN' \
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
    --body '["mBcNf1aZicVUuMPk", "QpnJsfDKlekZBlci", "te1MTt2QUqIsJPVW"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["epNYW8W1v9tt8ohF", "sVz140t7aLKqr5mK", "eGmk6VvVHlgOcc9f"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["zWBITGPFgDJthaLz", "Fgdv5YUGsyVptR3B", "Y1ZdEFrwvcfryE0c"]' \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '95' \
    --requestDate 'wSr0GUNz72URgccs' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetListPersonalDataRequest' test.out

#- 8 AdminGetServicesConfiguration
samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminGetServicesConfiguration' test.out

#- 9 AdminUpdateServicesConfiguration
samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"services": [{"extendConfig": {"appName": "IPVQyaiDNItcmEH9", "namespace": "MmPf9qQpImMq73he"}, "id": "NoGp4B8uzo3wlEng", "serviceConfig": {"protocol": "GRPC", "url": "B98F5Z0vnHXb395I"}, "type": "SERVICE"}, {"extendConfig": {"appName": "AXnpB4AnrxuIyxhY", "namespace": "gT2S7l7iN1v7fOjK"}, "id": "1JrPklAhCA3chJc9", "serviceConfig": {"protocol": "GRPC", "url": "pcoUe3clNkA1kAmk"}, "type": "SERVICE"}, {"extendConfig": {"appName": "ePoYwDqjneDEVerQ", "namespace": "0iwopaVyB9rJwM1e"}, "id": "AeIxaKIHOCRAZvRb", "serviceConfig": {"protocol": "GRPC", "url": "dRxSG9gyrTIdrjMi"}, "type": "SERVICE"}]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateServicesConfiguration' test.out

#- 10 AdminResetServicesConfiguration
samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminResetServicesConfiguration' test.out

#- 11 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'SedOY6b3ZRhZFSnJ' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserAccountDeletionRequest' test.out

#- 12 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'y1FfYpm7XyGc1EKi' \
    > test.out 2>&1
eval_tap $? 12 'AdminSubmitUserAccountDeletionRequest' test.out

#- 13 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'zWkLy3nXbOCs99g4' \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserAccountDeletionRequest' test.out

#- 14 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'SJD8TbloTlyXZ4Vt' \
    --limit '29' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserPersonalDataRequests' test.out

#- 15 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'Wt1CpOg62IiEKTve' \
    --password 'kfN5VQ8IutYrlFal' \
    > test.out 2>&1
eval_tap $? 15 'AdminRequestDataRetrieval' test.out

#- 16 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'TIvv4esNMXdjMMfg' \
    --userId 'IBAe7idzwzyuBsWE' \
    > test.out 2>&1
eval_tap $? 16 'AdminCancelUserPersonalDataRequest' test.out

#- 17 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'FPjRS7p9SZ4dHL20' \
    --userId 'xNzctyxv0du6XFV1' \
    --password 'nar7sfA4iSIV8AY8' \
    > test.out 2>&1
eval_tap $? 17 'AdminGeneratePersonalDataURL' test.out

#- 18 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'eJqgiY25Jfbr5kuC' \
    --password 'hJ1fTzfIrVh3EFlf' \
    > test.out 2>&1
eval_tap $? 18 'PublicSubmitUserAccountDeletionRequest' test.out

#- 19 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'n3CyB6gTGdsCJB6U' \
    > test.out 2>&1
eval_tap $? 19 'PublicCancelUserAccountDeletionRequest' test.out

#- 20 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'we1wtrUOoB0LZQiV' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserAccountDeletionStatus' test.out

#- 21 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'pnDw0XMwafRUB7zQ' \
    --limit '83' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserPersonalDataRequests' test.out

#- 22 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'RDfxI0fxvkQnIR3F' \
    --password 'oMRaoqYTUP0vunK3' \
    > test.out 2>&1
eval_tap $? 22 'PublicRequestDataRetrieval' test.out

#- 23 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'UdbcCha3flw6WXJo' \
    --userId 'QhpV8RURNsisBysj' \
    > test.out 2>&1
eval_tap $? 23 'PublicCancelUserPersonalDataRequest' test.out

#- 24 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'QEgvPCje7ekJUUKe' \
    --userId 'XqCFis4UY2Dv8YxW' \
    --password 'i254WprVDO5iz8rn' \
    > test.out 2>&1
eval_tap $? 24 'PublicGeneratePersonalDataURL' test.out

#- 25 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'M1JqvhhDvLvtovWT' \
    --platformToken 'qWlrw86I0Nk9kXSg' \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitMyAccountDeletionRequest' test.out

#- 26 PublicCancelMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelMyAccountDeletionRequest' test.out

#- 27 PublicGetMyAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > test.out 2>&1
eval_tap $? 27 'PublicGetMyAccountDeletionStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE