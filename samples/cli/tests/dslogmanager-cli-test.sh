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
    --podName 'vYjnZyLiRteEL9at' \
    --logType '4nNh034ocqme61mh' \
    --offset '41' \
    --origin 'J1EEyfxgEY7vwt2j' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'gUYMdgnyIWc0kJdU' \
    --endDate 'hrW4w23iqRj2C4o3' \
    --gameMode 'HuKGyEJvePIeNl6E' \
    --limit '69' \
    --next 'zY0aYet9zAtq9EUN' \
    --partyId 'DEU2ODiVndNmtawT' \
    --podName 'qA85j74hGQ2Qz8b8' \
    --previous 'cSiHERinMRw1Xwc9' \
    --provider 'lLdxBs7yflHyXurh' \
    --region 'ooNjvJhCKI45n7GI' \
    --sessionId 'SPCjYGTYCAHSTqws' \
    --source '5TD2Mf6p5XxmowQd' \
    --startDate 'JwuheYbd4IHjMmfs' \
    --status 'DYI7LP5vojMo5bKb' \
    --userId 'kjyKrIULWAm2kkhI' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3bw6GgilHOlVm8nh' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'eIuZccef3spD3QkG' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "bOI0Vq1O8VPW00AW", "namespace": "DzB6IrJE4uHmJAr1", "pod_name": "aIXGGaANqn7K4uMN"}, {"alloc_id": "beuqdmGcNSyeqEDh", "namespace": "0jbeD6Ckjkcvz2er", "pod_name": "4AZtVm97uMIJ81NZ"}, {"alloc_id": "WUIE88N5b5dzBZjt", "namespace": "SMx0Z6JgaRlMAM3c", "pod_name": "xhOuRAelT25Bvyoe"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'nFyPNSVw3zE0v2qd' \
    --endDate 'NbE9KLzZwVW5igiQ' \
    --gameMode 'ed04oQeok7PhHAQ3' \
    --limit '13' \
    --namespace 'CIgJNKjpciijZ34i' \
    --next 'RkV8HiYtmutl04sn' \
    --partyId 'gphNvDspxiJE6gai' \
    --podName 'VUR7qIxpsh5496un' \
    --previous 'aRE9t0xVk1V3DV4F' \
    --provider 'UyM8Slxy4qZWAFZu' \
    --region '9uEA7ftL5mSsqsEC' \
    --sessionId 'uLZ3v0daJoHOMGjl' \
    --startDate 'AEmEsIlHPAmseDdK' \
    --status 'tdX3yxr59lkbAi3o' \
    --userId '1flUcl5u3RJyLOf0' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE