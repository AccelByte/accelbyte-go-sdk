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
    --after '2u7chyJIR9RTI6I4' \
    --before 'mfaWl35wV58Y7eFM' \
    --limit '91' \
    --offset '93' \
    --requestDate 'eDeZaOm6An2VdQUX' \
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
    --body '["jrFQMECp33tPbpf2", "o3CvdKeoLnRUf4jw", "zC3oufLnBJgjamH6"]' \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --body '["nl4my8VXLKZhwwkm", "FlUW49UAYp3ve5mN", "pQYcpQnBsB3CP1y3"]' \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace $AB_NAMESPACE \
    --emails '["eB1UFXsnW8SihV1u", "bKAjslMIgyMDjfcC", "vFAoOfYbRpC3MDN5"]' \
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
    --body '{"bpCert": "uuojBcNG0pMvTtBG", "password": "47vXY8mqeAYlxv1v"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'fIKVAE6ZQV202NDf' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'RioXzVJXwBAwRXcI' \
    --body '{"bpCert": "9tifRSAdv51HqFvP", "bpCertFileName": "A4DU7sl4gmy5NLBj", "clientId": "O66tW5JYREAJ8W5i", "password": "wywXUKaO7oAs4tTp", "publisherKey": "0a4aJB3DASsr9yAp", "sandboxId": "Sg9bNuvxjhmL09Io", "secret": "p5mI6uMEVJfRWieC"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace $AB_NAMESPACE \
    --platform 'YdxHZTTSaV1f2yfI' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
samples/cli/sample-apps Gdpr adminMockPlatformAccountClosureData \
    --namespace $AB_NAMESPACE \
    --platform 'tzrD74jvFns25UQA' \
    --body '{"platformUserId": "ABX0bb5LthjIiiGC", "sandbox": "UloPT3o59yR0S84I", "startImmediately": true}' \
    > test.out 2>&1
eval_tap $? 12 'AdminMockPlatformAccountClosureData' test.out

#- 13 AdminGetListPersonalDataRequest
samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '55' \
    --requestDate 'wvMs9UyqEibgKP7N' \
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
    --body '{"services": [{"extendConfig": {"appName": "hZ1t1nwM5pI1mjxs", "namespace": "HmJYozb59kYU37ml"}, "id": "12Lrl65YLxZLyvdl", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "nTnmsHEEKhBF8iLT"}, "type": "EXTEND"}, {"extendConfig": {"appName": "xwIceeN8Ym6GOlxf", "namespace": "wQOntbMSBdyDSDfM"}, "id": "minSXRKFXodCj9U8", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "eRRDz2HS4DLhU1PZ"}, "type": "SERVICE"}, {"extendConfig": {"appName": "ymLRRVueVAk4Ijj8", "namespace": "qi3pO6ERihWOoHTj"}, "id": "rjM9Ls4lSwdmfLXS", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "s5BaG69IKRSWk1lz"}, "type": "SERVICE"}]}' \
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
    --body '{"services": [{"extendConfig": {"appName": "wSXZCPPW0LRaDz0Y", "namespace": "tSWfaJN8TCUpqcXq"}, "id": "e8VPbL0q8I3sfTek", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "slCf9RmKOwcMOFuq"}, "type": "SERVICE"}, {"extendConfig": {"appName": "wR7HZwApu6FxxX8F", "namespace": "8EeTQH3ApK3jz218"}, "id": "Op4tFTwtlaDsnp7o", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "7kIlEtiAGVhtWiLO"}, "type": "SERVICE"}, {"extendConfig": {"appName": "AoyBgRhavv3S58Z7", "namespace": "64X52jjg6PQqAASZ"}, "id": "qWXn3T8RyvZ3BYNj", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "oyYjo8zcLZVoxM0f"}, "type": "SERVICE"}]}' \
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
    --limit '1' \
    --offset '1' \
    --platform 'bqK06lwGbhpvIp86' \
    --userId 'oNhs2MacrXvuCo4e' \
    > test.out 2>&1
eval_tap $? 20 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 21 AdminGetUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'YlIilBXZtmCjjXeS' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'RTKYdSoK4PqnlMfp' \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '5pCzHKaVthX9yjQ1' \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId '9Jz14y4Eyjpi4Sov' \
    --limit '24' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'nLTLbdZHqjrGWapM' \
    --password 'GNskRxyEp89v7P1w' \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'PAEOe0iqILn2yvCM' \
    --userId 'bMLvQU72HTzZ4usW' \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'iCsRobdAZ48VUkpN' \
    --userId 'xx2LrEwNDsUMwTlH' \
    --password 'WTIcDIwo3DCHe30Q' \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId '4cctWKurCoXovL5T' \
    --languageTag 'QyfJtIoleaCMShbq' \
    --password '7tvHIwhkBV4aotYv' \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'BgYj9H4dnzcuXMDp' \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace $AB_NAMESPACE \
    --userId 'lfinlc2pQnFhUZez' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace $AB_NAMESPACE \
    --userId 'mIwu533IKsb74JIA' \
    --limit '93' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'yjZGKOQQSFg4EbUa' \
    --languageTag 'cuur8mcMGCNTZxp0' \
    --password 'P5US7ifesvh25Fdi' \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --requestDate 'hBtAfjCl5PjCYoxf' \
    --userId 'o3bXWgR4x5Vl0mxI' \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'mNsJPROaKDgmLnmN' \
    --userId 'MEuk02lAJ0ZFXUf3' \
    --password 'y261gMdH6Y6kdQPK' \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'LLUHMWN2qneY7SC5' \
    --platformToken 'i6n8uOVOkb1fUEP6' \
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
    --end 'JDphJArCM6yHig3F' \
    --start 'SCfUzcgKRSSCK22p' \
    > test.out 2>&1
eval_tap $? 38 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 39 S2SGetListFinishedPersonalDataRequest
samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace $AB_NAMESPACE \
    --end '6RGFte9NUnGMLogF' \
    --start 'rlHNYvqkNqFUiVBp' \
    > test.out 2>&1
eval_tap $? 39 'S2SGetListFinishedPersonalDataRequest' test.out

#- 40 S2SGetDataRequestByRequestID
samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace $AB_NAMESPACE \
    --requestId 'Vn7NBURD7hz91rNQ' \
    > test.out 2>&1
eval_tap $? 40 'S2SGetDataRequestByRequestID' test.out

#- 41 S2SSubmitUserAccountDeletionRequest
samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace $AB_NAMESPACE \
    --userId 'pts5R4nMqit9t9rL' \
    > test.out 2>&1
eval_tap $? 41 'S2SSubmitUserAccountDeletionRequest' test.out

#- 42 S2SRequestDataRetrieval
samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace $AB_NAMESPACE \
    --userId 'PiiBGis5kb6gawJY' \
    > test.out 2>&1
eval_tap $? 42 'S2SRequestDataRetrieval' test.out

#- 43 S2SGeneratePersonalDataURL
samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace $AB_NAMESPACE \
    --requestDate 'IlDlT2PEylV7tFCB' \
    --userId 'm4Fe3byOxtCiBdBj' \
    > test.out 2>&1
eval_tap $? 43 'S2SGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE