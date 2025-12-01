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
echo "1..3"

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

#- 2 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "MGl4SAIKKWiRp8K0", "activeAllianceRule": {"max_number": 100, "min_number": 100, "player_max_number": 38, "player_min_number": 67}, "activeMatchingRule": [{"attribute": "Bp7YzUvVPt2GZjyl", "criteria": "Y2nInQWLNuH7y9cn", "reference": 0.48859821357966293}, {"attribute": "rMzUmG17RwgdpWMz", "criteria": "BwqjjBRuVkWttFgJ", "reference": 0.0338927095578232}, {"attribute": "dM9p2TsrYSZJ71eI", "criteria": "lCk6VTZcZ32ATVCk", "reference": 0.1077376208546289}], "function": "BmhRS9R25pDPxUM8", "gameMode": "JptSqQ7mdGXQNu0c", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 100, "matchID": "3NkHBugxbG4D48oH", "namespace": "R9jvZI3VbH08T62H", "remainingPlayersPerTicket": [67, 57, 58], "remainingTickets": 39, "sessionTickID": "2sHBpbNPafM7ys3S", "tickID": 17, "ticketID": "gPxc6NgvCrRervj8", "timeToMatchSec": 0.23912848206844928, "timestamp": "1993-07-05T00:00:00Z", "unbackfillReason": "4XWjxREPffneTOCh", "unmatchReason": "lxObnZj4AAfAWXyr"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "7QDnndrHz9wKvTQ8", "activeAllianceRule": {"max_number": 95, "min_number": 83, "player_max_number": 81, "player_min_number": 55}, "activeMatchingRule": [{"attribute": "9OkwFZiRPs02XlF1", "criteria": "UjmWViIQCcIqZ51O", "reference": 0.812163982992377}, {"attribute": "Xm1wsRif2H1dhoJC", "criteria": "SuVev6aHoickgN50", "reference": 0.9245272793264774}, {"attribute": "iDz3F4XcP0Dy7Nsz", "criteria": "MD2WFQdVOcE7UI4h", "reference": 0.7684729445405093}], "function": "M0DCLc0uk0zfJroN", "gameMode": "ZILG0ozpeWuJfouH", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 89, "matchID": "NR16ySPFdGMPrih0", "namespace": "aAGMW5kZ4AjZIU11", "remainingPlayersPerTicket": [11, 33, 85], "remainingTickets": 24, "sessionTickID": "0Y9O74cGGANkJyPh", "tickID": 78, "ticketID": "u3LB5vpFzqwNUr6j", "timeToMatchSec": 0.5090310867600026, "timestamp": "1973-06-27T00:00:00Z", "unbackfillReason": "EcVxMpX4zJSG0xTL", "unmatchReason": "t45f0QbFXWfNOEI2"}, {"action": "ajXmzduYTwkNoZAj", "activeAllianceRule": {"max_number": 44, "min_number": 22, "player_max_number": 52, "player_min_number": 86}, "activeMatchingRule": [{"attribute": "owQpNyMVJwaEBrwj", "criteria": "atoN7d7ku77aGPg4", "reference": 0.22693181283911545}, {"attribute": "oMXBn03kjbhDxMx6", "criteria": "qlZDqRJoT18VxKIY", "reference": 0.15759975552789074}, {"attribute": "x4LSJZxc1eXvyg09", "criteria": "OfbMZjeemz2E031u", "reference": 0.030129532972893558}], "function": "QmoQ3wPW5NMcKKtq", "gameMode": "KIUjfZIMOq5tts5L", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 21, "matchID": "3djs2BmJ3BIx892B", "namespace": "a6gfrUHrf0BcWqGG", "remainingPlayersPerTicket": [80, 33, 31], "remainingTickets": 20, "sessionTickID": "K7vPlEbDfCDv1dT7", "tickID": 20, "ticketID": "Zf52w4q6O4TeJEHs", "timeToMatchSec": 0.2827117096707831, "timestamp": "1984-01-22T00:00:00Z", "unbackfillReason": "R7hevoEKZuNvqrl7", "unmatchReason": "20b27hiWw2z5nE67"}, {"action": "FH3f23hgjGSZnd0F", "activeAllianceRule": {"max_number": 94, "min_number": 12, "player_max_number": 41, "player_min_number": 99}, "activeMatchingRule": [{"attribute": "lXz2rK9W2KhM2SYU", "criteria": "WeCMgLaa4oSJt7fo", "reference": 0.4019534857905753}, {"attribute": "ZMHPSuQv54dl8Ldh", "criteria": "0BtCGqkojwgxbsNs", "reference": 0.5077169443271927}, {"attribute": "HxkaZ7hiAwgbTK3M", "criteria": "WkApgg9HF29TVEod", "reference": 0.4794071653852451}], "function": "Wbb2xAQghc5uREbc", "gameMode": "JnuB0CI0OkVWDwYH", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 39, "matchID": "IjAAfdVCVLlMbcr2", "namespace": "gz0JBYfggNLnDM0a", "remainingPlayersPerTicket": [18, 22, 2], "remainingTickets": 4, "sessionTickID": "7oYmNOaMVHs6H6U5", "tickID": 31, "ticketID": "IuCgl4dRorsbw2S0", "timeToMatchSec": 0.7428472558149225, "timestamp": "1999-09-25T00:00:00Z", "unbackfillReason": "bcHed0mT4kolkAqS", "unmatchReason": "Nd8A7bKKneOmY6o5"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE