#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..5"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 DeleteServer
samples/cli/sample-apps Qosm deleteServer \
    --region 'FtBxyZcD' \
    > test.out 2>&1
eval_tap $? 2 'DeleteServer' test.out

#- 3 SetServerAlias
samples/cli/sample-apps Qosm setServerAlias \
    --body '{"alias": "XBpGlsQu"}' \
    --region 'Ju8vMf0I' \
    > test.out 2>&1
eval_tap $? 3 'SetServerAlias' test.out

#- 4 ListServer
samples/cli/sample-apps Qosm listServer \
    > test.out 2>&1
eval_tap $? 4 'ListServer' test.out

#- 5 Heartbeat
samples/cli/sample-apps Qosm heartbeat \
    --body '{"ip": "sJkTrd8I", "port": 59, "region": "cV2zXnTK"}' \
    > test.out 2>&1
eval_tap $? 5 'Heartbeat' test.out


rm -f "tmp.dat"

exit $EXIT_CODE