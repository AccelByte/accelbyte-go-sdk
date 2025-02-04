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
echo "1..9"

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
    --podName '1LSJl6jd5TOA8ARA' \
    --logType 'OQTrcixw6YDspODC' \
    --offset '8' \
    --origin 'Nlu7h7BiJaltA3LN' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'wVCYGBXRzgx1RZ1z' \
    --endDate '9Fju5F0s3szIKWsu' \
    --gameMode '9BjY151ZIxtIN6Hd' \
    --limit '17' \
    --next 'jq5rUYIynwbw9o9q' \
    --partyId 'WhzSDMxgNgLFteId' \
    --podName '577YiaNkh2bdt2ob' \
    --previous 'OqAusCSZ9Do61yaX' \
    --provider 'zlHlmqJQ1f1kVkmF' \
    --region 'hv3e0c3Bc7RVSeHz' \
    --sessionId 'foOBF5n79kSPRXup' \
    --source 'pMoutpsddmGr4r2B' \
    --startDate 'D61kA9idd0iQezUP' \
    --status 'NbFpCE4lRKDvm2An' \
    --userId 'V2His0bOGMXKgjmM' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'lUjEKWgNXh3CLY0C' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'q1PGNXavfOwySaxL' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "uhILX1oREcEFwFf4", "namespace": "gByjiLscYUnxX3RZ", "pod_name": "ciLCKvsImxRm7RQD"}, {"alloc_id": "DHKrVBOrZEVdSiO6", "namespace": "ieEeFnJFwmrS6Pwo", "pod_name": "l74g6CCL4k7SNDIJ"}, {"alloc_id": "UQkEngveYzsCyiLM", "namespace": "2pvYTS9edujVHGrT", "pod_name": "gkgucfUKm0x5Bc4K"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["CC9RUeCHnwkjXsiP", "vRblcTbX2W3G8xpt", "6ZsECFv6vdBSGTiX"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'wXnlfZasai03m5AE' \
    --endDate 'ZXR73kPLeelRnBft' \
    --gameMode 'seAbP644V5ligFcC' \
    --limit '86' \
    --namespace '5KMrkRcMAiyQVBNQ' \
    --next 'lS2SdtRBd9IvkeXh' \
    --partyId '09huT8tLp49ruHgF' \
    --podName 'vh5xlCCHn9jEmp4G' \
    --previous 'zIxVWPEMc5jErmal' \
    --provider 'XHjB1wlSp4Zr7BCO' \
    --region 'U3iqpVWG40VqjeOW' \
    --sessionId '4Fj3y7nyYKodC2H4' \
    --startDate 'jp0U7p0wylZI2ugJ' \
    --status 'd6NYyMLP4Q6qdYZz' \
    --userId 'HA9oY4PGk72kdtUk' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE