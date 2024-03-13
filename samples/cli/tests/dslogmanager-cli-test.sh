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
    --podName 'AFOF8dg1iVJauEgJ' \
    --logType 'OQvIUg15V7CJiM7f' \
    --offset '1' \
    --origin 'PV3sQ14jhX8gXRbY' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'vzXYZg40TGlsUlBT' \
    --endDate 'qPJxysnRcPreEdQE' \
    --gameMode '9bvPoql5ZvEFtHQM' \
    --limit '54' \
    --next 'a3Aseu2qbVdy6TX7' \
    --partyId 'YMk2cePCXFTjbFNm' \
    --podName 'ZZztt6C4iiaYd8dm' \
    --previous 'QmIIYwFyV7ZuuPO2' \
    --provider 'g5dm1ecwckHbP33t' \
    --region 'ACpPtv45gS6ayjKy' \
    --sessionId '3pD48b4DFRZUjDBz' \
    --source 'i6f8GeUT4P5Em7a0' \
    --startDate 'UGwRx7kc5I6FwrgS' \
    --status 'LqJbBQkXCa4HPXnZ' \
    --userId 'V52lsmDBH0dDikFQ' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'XMgzqMMv6fM6JjqF' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'LiMxfsOuRjG3wqop' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "xbJ818wTUzeYkIw4", "namespace": "QUeBoZrBgQm8hGem", "pod_name": "tAVpnqlzxJoClMOE"}, {"alloc_id": "0SlN9NrXBdTQpbDj", "namespace": "BVZuM3tXSJCNMWnK", "pod_name": "csiFmU5NpXXxwQ2g"}, {"alloc_id": "t3h4Sqfg9cABegOq", "namespace": "9b0knBG4mMMWHmzD", "pod_name": "t83KHr4ZvkqSnmL4"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'cDsErzudtFIOa1BX' \
    --endDate 'APFYHDHs8RHd932a' \
    --gameMode 'Gq8TVSMe6gDcY1Cl' \
    --limit '33' \
    --namespace 'ClNOUGnJ74C6Oc3E' \
    --next 'dNsFb01dZ2gNaHqt' \
    --partyId 'ft6oyxInOoTqLU2D' \
    --podName '1j7f0FlNTidKgHmM' \
    --previous 'TanCB6eI28XKTtx9' \
    --provider 'YfSfdA5cKj2RaS7D' \
    --region 'nmbwgSymz6Tevkag' \
    --sessionId 'HxD6trw93TacMl8q' \
    --startDate 'acandrUhgtbwfedw' \
    --status 'cUjU8LgAJugmw4rW' \
    --userId 'IBAi076Xg93pcyAc' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE