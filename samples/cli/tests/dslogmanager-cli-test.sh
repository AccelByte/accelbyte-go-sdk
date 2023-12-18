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
    --podName 'tJVcVF1UXIwZop9l' \
    --logType '8wkHvjFJyT7WCYFM' \
    --offset '35' \
    --origin 'JfbEcRZdmS8ege8x' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'f7KaUw7mS8Hnv3wP' \
    --endDate '0Jx8cpL2zBeh08uV' \
    --gameMode 'botnJ4u3trtDJT8R' \
    --limit '62' \
    --next 'IIaV75yaNX6Yn2u8' \
    --partyId 'G7RJMrfey8xgQtiE' \
    --podName '24eMoxw9zmB1dYTC' \
    --previous 'oupjgLpSi3WI74L6' \
    --provider 'gfK0WTIkO7pkIkhD' \
    --region 'YhM2NPivGQPX3L9q' \
    --sessionId '127KKZakIOlLdOEX' \
    --source 'eLk9VM9MsKO8Ses4' \
    --startDate 'pDctYgFfJlegpMJZ' \
    --status 'mV60l5cEt0gMYLZJ' \
    --userId '2IiAWVHwLgMtIG36' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'M7uTFupeuAVnp3Y7' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'fkKaxB2rSzWGgqcp' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "MlLE1VqviXfa2MPr", "namespace": "HIBpDzPiCG12qmOT", "pod_name": "QitdSVYLOwObe9i3"}, {"alloc_id": "huSCAGzEoRdFU96D", "namespace": "bhIMKZuSYZD5IT4K", "pod_name": "9DwxJ84Nvh9ZbgN0"}, {"alloc_id": "JjzPRhbixwg9csUZ", "namespace": "muYmQL04Sk3XM14o", "pod_name": "N6RUhIOD8tM47pJY"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'VBHQMvmUCSjkCaWC' \
    --endDate 'vFu93Nm0IRg76c4r' \
    --gameMode 'gzaYrALfmSIpueh2' \
    --limit '52' \
    --namespace '9VYiitmdNoBzdeN2' \
    --next 'D6mzvEpqIb4eQM0e' \
    --partyId 'e9qBcBHU8WJG4dBD' \
    --podName 'PvhIJHkGy1CiWHEI' \
    --previous '08nyoikVaGPZDgC9' \
    --provider 'i6N7gaTFJjf4H0Vv' \
    --region 'IDqiQDmkXHujzOz3' \
    --sessionId 'wOhYgPBoYVArcWRC' \
    --startDate 'e4XvElk1MzwycDKD' \
    --status '7iFkHqO8QBToKFxt' \
    --userId '966qArsthQIW8XXW' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE