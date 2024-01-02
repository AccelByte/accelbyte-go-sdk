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
    --podName 'X2JDmUf1iglZGTpp' \
    --logType 'rdHctn6anbfI34SV' \
    --offset '9' \
    --origin 'nOUIeHJ4qY5JhOyP' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'coSVcO0i7BhQM6Up' \
    --endDate 'TINKapLK3n8zurCp' \
    --gameMode 'cFrWzRnUrVnCno0d' \
    --limit '28' \
    --next 'NwM9a0MRsQnWDyS3' \
    --partyId 'Uzw1EA2gP23fOBlo' \
    --podName 'UhAF683V8rSbm9bO' \
    --previous 'zIhYewiJTYWVOXzC' \
    --provider '3KndOdBCDlJuZvgB' \
    --region 'JVX2sTOLYBiwT6sW' \
    --sessionId 'dIxsrni2ovreeQyg' \
    --source 'qXZ2ZI25hjlzPTLX' \
    --startDate '2tmwmOJLSFtqDbsm' \
    --status 'ZeEN0aA6kR1Xyk2h' \
    --userId 'k6nRJGxWypzyjZgf' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'H9k56PLsLgPfHeqD' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '8gePPosu7Yl8lYsu' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Rh1xuolSxrruvRot", "namespace": "x7Tl7gPzCNYGCiWW", "pod_name": "lqSHuqWZZ4J9F8zz"}, {"alloc_id": "2vslUsfPFQx4JN7q", "namespace": "faJGpCjfoUkF6mwA", "pod_name": "tKlmbsAUOheRBcAI"}, {"alloc_id": "5JsbLMgAGwcOZM7U", "namespace": "5UvfP7okTQJhtPh3", "pod_name": "nV3l4hF4fyAnsMHn"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'MrnVAU13jtRQjeBR' \
    --endDate 'n4BnTEr4Qn2VIUHg' \
    --gameMode 'X1VG17KWYEFhOKoy' \
    --limit '62' \
    --namespace 'VoVhHbMKeONA7QRr' \
    --next 'VlugI1yELiZUuFY9' \
    --partyId 'GKSazbzzQDfvC9KK' \
    --podName 'jjXai8EPduxgGQY7' \
    --previous 'VsqiX7VGvdYfbmIw' \
    --provider 'XBXL0B7pGXd4o28V' \
    --region 'oVSbbtKqT6HQT4tJ' \
    --sessionId 'PKtVMW2KoluGigUf' \
    --startDate 'RJeFBMSza0rJ1B14' \
    --status 'ChxdgDjsgG05eFnZ' \
    --userId 'E6a1KX1DUWAPaCen' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE