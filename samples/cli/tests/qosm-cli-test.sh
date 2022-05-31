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
echo "1..7"

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

#- 2 UpdateServerConfig
samples/cli/sample-apps Qosm updateServerConfig \
    --body '{"status": "FtBxyZcD"}' \
    --namespace 'XBpGlsQu' \
    --region 'Ju8vMf0I' \
    > test.out 2>&1
eval_tap $? 2 'UpdateServerConfig' test.out

#- 3 DeleteServer
samples/cli/sample-apps Qosm deleteServer \
    --region 'sJkTrd8I' \
    > test.out 2>&1
eval_tap $? 3 'DeleteServer' test.out

#- 4 SetServerAlias
samples/cli/sample-apps Qosm setServerAlias \
    --body '{"alias": "DcV2zXnT"}' \
    --region 'KjXY1bPq' \
    > test.out 2>&1
eval_tap $? 4 'SetServerAlias' test.out

#- 5 ListServerPerNamespace
samples/cli/sample-apps Qosm listServerPerNamespace \
    --namespace 'amiBxx9C' \
    --status 's18EY84e' \
    > test.out 2>&1
eval_tap $? 5 'ListServerPerNamespace' test.out

#- 6 ListServer
samples/cli/sample-apps Qosm listServer \
    > test.out 2>&1
eval_tap $? 6 'ListServer' test.out

#- 7 Heartbeat
samples/cli/sample-apps Qosm heartbeat \
    --body '{"ip": "kItqRzHU", "port": 28, "region": "h570KQBV"}' \
    > test.out 2>&1
eval_tap $? 7 'Heartbeat' test.out


rm -f "tmp.dat"

exit $EXIT_CODE