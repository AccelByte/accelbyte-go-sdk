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
    --body '{"action": "9X4UnUUwT78e7YpR", "activeAllianceRule": {"max_number": 59, "min_number": 55, "player_max_number": 57, "player_min_number": 83}, "activeMatchingRule": [{"attribute": "H8aVvVmW4xteVLNd", "criteria": "bcnvT1hfx5pZMxAR", "reference": 0.1825901386351897}, {"attribute": "kR9M5d9VRMjEfHLr", "criteria": "oVGkbJXOpCiqWo98", "reference": 0.35890380553635426}, {"attribute": "zWCgWMRP9TGSGOdN", "criteria": "w06o4qbz1YPcjyLw", "reference": 0.10867873041765896}], "function": "ZcZzNBTObCEko7Qs", "gameMode": "JPB8DEnebsLJ1vft", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 47, "matchID": "naFQknPYE6rZmrMW", "namespace": "4xiYKG4xZDjKbLgH", "remainingPlayersPerTicket": [11, 86, 36], "remainingTickets": 69, "sessionTickID": "zQYisZZspyCmhVU8", "tickID": 21, "ticketID": "dxaWnoLbk9vzPcAW", "timeToMatchSec": 0.3391883031887616, "timestamp": "1982-12-19T00:00:00Z", "unbackfillReason": "EUXoLa3TLHB4t36e", "unmatchReason": "ZOLgES4jBDWPLVw3"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "Xv7wvKkulfQGRpRO", "activeAllianceRule": {"max_number": 9, "min_number": 53, "player_max_number": 28, "player_min_number": 88}, "activeMatchingRule": [{"attribute": "x7C2nPDlvNk5WMs1", "criteria": "Wky663ta7IvVjBqH", "reference": 0.6256750304006632}, {"attribute": "qhNeS6KadqznF7Po", "criteria": "lLNVuKiHsBQS6Rkn", "reference": 0.015162958309571706}, {"attribute": "zLFtHjMzW988oSfa", "criteria": "XIp7lEYmpVOmcBTD", "reference": 0.45237820985783117}], "function": "av3rib4kzndpmDBj", "gameMode": "o9iHUFt6gVxxXNzR", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 22, "matchID": "EOZe6NT3etY8SoDP", "namespace": "vNmSVV9u3j24PHEm", "remainingPlayersPerTicket": [8, 63, 51], "remainingTickets": 7, "sessionTickID": "qlAEJhknYmkuUmt1", "tickID": 73, "ticketID": "A7AgvHU2lbnwdv8D", "timeToMatchSec": 0.11850626449590196, "timestamp": "1985-02-07T00:00:00Z", "unbackfillReason": "grS7r7VnCB0P2L9I", "unmatchReason": "f05ikUqSmqBcp3Zn"}, {"action": "fNpDTioxbWMkT7Rp", "activeAllianceRule": {"max_number": 79, "min_number": 82, "player_max_number": 66, "player_min_number": 66}, "activeMatchingRule": [{"attribute": "hHd0UOzqOsk89qEd", "criteria": "h56SlctlQ5RFGbVD", "reference": 0.15589416000813017}, {"attribute": "Z0R4KUtW9SeEquVK", "criteria": "hevBWfjrYKMbPobc", "reference": 0.07573598119923464}, {"attribute": "uOv2BtrXTSlryW0z", "criteria": "s0nnzkVKGvEM7lQ7", "reference": 0.935154156718953}], "function": "xEtDmYygIqCIF3la", "gameMode": "OOvqYgeruNRbEAXK", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 85, "matchID": "NZEKQPrY1EUWie7e", "namespace": "8ayA3HVBtPono2x5", "remainingPlayersPerTicket": [18, 66, 92], "remainingTickets": 69, "sessionTickID": "FYwQ2ViqiOQjOjVI", "tickID": 100, "ticketID": "BhLQDaxUYBMpmxtQ", "timeToMatchSec": 0.9500538666513162, "timestamp": "1974-02-09T00:00:00Z", "unbackfillReason": "iFTDa3pxNEazwN4f", "unmatchReason": "A7dWXlhsPhzpWOZz"}, {"action": "0sr3JNMXMcpqrP2X", "activeAllianceRule": {"max_number": 28, "min_number": 35, "player_max_number": 21, "player_min_number": 54}, "activeMatchingRule": [{"attribute": "FdLrWrx939brAMly", "criteria": "ccO2tIMwvAKOvVh7", "reference": 0.2157743181474694}, {"attribute": "LlEJRGG9xgRwu7OM", "criteria": "GeHTOEZXrHqDThnl", "reference": 0.13574835859140988}, {"attribute": "nnpcQCbtnYlLmjHl", "criteria": "dlYfdcTZcn2qHicc", "reference": 0.2507174832050203}], "function": "YKbQkKM2X3s6HAmM", "gameMode": "bo3DYgvhLfHp9x5A", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 86, "matchID": "o6Tnn27sHvmSTluL", "namespace": "YiAKSvqfVML7wtOD", "remainingPlayersPerTicket": [31, 12, 38], "remainingTickets": 19, "sessionTickID": "B9vAkF7EmXl6lL8a", "tickID": 51, "ticketID": "qkHSbTbkHCKYXnD2", "timeToMatchSec": 0.5145301640786446, "timestamp": "1975-08-22T00:00:00Z", "unbackfillReason": "lpPwaa2lNNXepKhn", "unmatchReason": "DgwQIR28qMZKIvEK"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE