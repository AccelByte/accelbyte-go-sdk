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
echo "1..8"

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

#- 2 GetServerLogs
samples/cli/sample-apps Dslogmanager getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'lKrf8eYEuoR4nfjT' \
    --logType '8rQPJ2c3wyXfUK59' \
    --offset '92' \
    --origin 'gejpb1hS8AI0yf5F' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '6EYJNmqP3WHjwAj8' \
    --endDate 'hd4DjgZlWcW89skF' \
    --gameMode 'mBpwhgBsyX0Ek5HW' \
    --limit '55' \
    --next '3m3sBjSy7E584ZE9' \
    --partyId 'K8LnjOEjczEJRBSV' \
    --podName 'S2w5Gi7W5lWxb44G' \
    --previous 'wYVa0JiGIbCneojz' \
    --provider 'onO3KrAyPP7uclsr' \
    --region 'UKJk7LbIjKTCAbMG' \
    --sessionId 'jwD7zzsndNriDSv3' \
    --source 'ak70TJAeVZ8tucgK' \
    --startDate 'rITuSkTBj16hpRfv' \
    --status 'zmtc1jkODFp3EvlU' \
    --userId 'cWiGfk7iSVe2PiJy' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'KCBGFDpfr4tNAVwr' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'N1OZjySWkkCK8SRt' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "2mGFtpcwWLKX2ZQX", "namespace": "U5jbziA4MEizmAKo", "pod_name": "7XFwfPRnKU8A7AZA"}, {"alloc_id": "7NlHJKypa9HpkeRu", "namespace": "YyWV3KLbAptJ0g4q", "pod_name": "etLttBAKj9tII2k5"}, {"alloc_id": "Cm0AjevUXUrtKzuf", "namespace": "FSXQ9zASW7cxOloU", "pod_name": "XyceBzgr6u3FmYcQ"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'mB7MEScY4OgnI1pr' \
    --endDate 'KMtNcOtp3NUT200g' \
    --gameMode 'noTQnu5e2IifJgsD' \
    --limit '12' \
    --namespace 'v1Cs6nuhriTefhAF' \
    --next 'iTDHbmZERBbT4S0l' \
    --partyId 'hJgNHyFY9NqYPYa4' \
    --podName 'lfVsFvysUZxKXrdt' \
    --previous 'zlTnFz2BudfnVCFr' \
    --provider 'w85jDfiEM02uxix3' \
    --region 'e6Og998wazdYUV7o' \
    --sessionId 'vThsFNn2kIOIKuy6' \
    --startDate 'jssbgTIvAD0FrknU' \
    --status 't6876GMDgxKgQ52T' \
    --userId 'UyoknqhQEKYGL5Ht' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE