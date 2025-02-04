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
echo "1..6"

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

#- 2 AdminGetConfiguration
samples/cli/sample-apps Loginqueue adminGetConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'AdminGetConfiguration' test.out

#- 3 AdminUpdateConfiguration
samples/cli/sample-apps Loginqueue adminUpdateConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "maxConcurrency": 62, "maxLoginRate": 72, "minActivationPeriodInSecond": 84, "playerPollingTimeInSecond": 91, "playerReconnectGracePeriodInSecond": 10, "queueReconnectGracePeriodInSecond": 90, "safetyMarginPercentage": 53}' \
    > test.out 2>&1
eval_tap $? 3 'AdminUpdateConfiguration' test.out

#- 4 AdminGetStatus
samples/cli/sample-apps Loginqueue adminGetStatus \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetStatus' test.out

#- 5 RefreshTicket
samples/cli/sample-apps Loginqueue refreshTicket \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'RefreshTicket' test.out

#- 6 CancelTicket
samples/cli/sample-apps Loginqueue cancelTicket \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'CancelTicket' test.out


rm -f "tmp.dat"

exit $EXIT_CODE