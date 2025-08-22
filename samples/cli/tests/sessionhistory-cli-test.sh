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
    --body '{"action": "06BwOoovgSocaMhU", "activeAllianceRule": {"max_number": 95, "min_number": 46, "player_max_number": 81, "player_min_number": 23}, "activeMatchingRule": [{"attribute": "tMntFSWE6zWLeOKD", "criteria": "hOPReO4nhYBNovQj", "reference": 0.2673217052594036}, {"attribute": "t645oro4FAEij2dU", "criteria": "GroSYbHXPvgrzNwE", "reference": 0.39141481168741166}, {"attribute": "ykgtw6kS2BplPeVN", "criteria": "M4kDU721JTR3717j", "reference": 0.17887864690905664}], "function": "705OCDlFwMhrRjYJ", "gameMode": "72dxuXjbESbawOWk", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 83, "matchID": "ZqIhqi2NPWbADlj2", "namespace": "KuK9yXVgBCN30set", "remainingPlayersPerTicket": [61, 40, 49], "remainingTickets": 71, "sessionTickID": "FlTVcM2Qv7MOFM0S", "tickID": 42, "ticketID": "7Pdpqn57kygmZrLh", "timeToMatchSec": 0.09085128781101903, "timestamp": "1994-09-08T00:00:00Z", "unbackfillReason": "3M9MwnPjrgIPxF4p", "unmatchReason": "OUYdk1R0KDPbhafc"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "lNuMZm61e72MsTiQ", "activeAllianceRule": {"max_number": 71, "min_number": 20, "player_max_number": 32, "player_min_number": 85}, "activeMatchingRule": [{"attribute": "ozmRJddtFR3wGufL", "criteria": "IvWGfAGw7WioYoW3", "reference": 0.7744718800778363}, {"attribute": "XznbLbBrOtGrqlIn", "criteria": "zkJ9NBY1iZcymakR", "reference": 0.5870970392349035}, {"attribute": "x9d2SjTKWiFVGmbl", "criteria": "4Y6JiCE41zy85yrl", "reference": 0.8865421459132319}], "function": "To9nt3cFGVHVGmr7", "gameMode": "bR51ROdue5849oXt", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 96, "matchID": "e435BrLkF3ZDyvMl", "namespace": "r4v2SRtr7gw3MQrJ", "remainingPlayersPerTicket": [48, 55, 0], "remainingTickets": 62, "sessionTickID": "kvg5GMmFfnFXZf7c", "tickID": 66, "ticketID": "76RUGWWVtzNQUxwq", "timeToMatchSec": 0.3369097634583089, "timestamp": "1976-11-06T00:00:00Z", "unbackfillReason": "gCH0FTzIILbzU6Ew", "unmatchReason": "qn0N9ZyR27nLpGbw"}, {"action": "iqcXlLQ5Dj4hVSb6", "activeAllianceRule": {"max_number": 1, "min_number": 90, "player_max_number": 95, "player_min_number": 69}, "activeMatchingRule": [{"attribute": "1rKNDwciwhCaxem6", "criteria": "nRI5W1bEQ8YuOA1C", "reference": 0.8922359098545964}, {"attribute": "Lm48wCOWwyvNI4qH", "criteria": "hyMFgDjUXCVQBbvr", "reference": 0.4249383828378709}, {"attribute": "Pgi6vULA5sq4v0da", "criteria": "ohfu21QszXMelYAu", "reference": 0.4608548529928794}], "function": "CB0jItH87n4OvOvf", "gameMode": "9yVZgZZNUzaLPpwf", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 46, "matchID": "6Lx7QKHfZ3rQJzE7", "namespace": "tpZ7bA1jbFXbpQCk", "remainingPlayersPerTicket": [58, 40, 93], "remainingTickets": 10, "sessionTickID": "Y9ofUkGuZyJpvANG", "tickID": 83, "ticketID": "z2q0XHW3mfbFlGXi", "timeToMatchSec": 0.26197118647029793, "timestamp": "1976-09-23T00:00:00Z", "unbackfillReason": "SScyMENHhpBSKfAN", "unmatchReason": "gGobUC8ngtpy2KJP"}, {"action": "zQS23nw2W7phg3ts", "activeAllianceRule": {"max_number": 61, "min_number": 89, "player_max_number": 7, "player_min_number": 52}, "activeMatchingRule": [{"attribute": "r1IPe9hoWQU1ec1Z", "criteria": "NhcK6yQEZIKP8Wis", "reference": 0.9888945838205212}, {"attribute": "uIPjmUjbqVniewYu", "criteria": "bb0B4zzyysghURSV", "reference": 0.4681065130964014}, {"attribute": "6kI7wbYfxCS7lr0m", "criteria": "sS2nRDDLrITZaLkL", "reference": 0.9639329990594181}], "function": "1OzjiufAwbJkQLzY", "gameMode": "4cXQbCLnKvF7ibUV", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 75, "matchID": "jvKAHOK7znzUDSFe", "namespace": "Z1xJsKNAQ9GVjfXI", "remainingPlayersPerTicket": [32, 16, 64], "remainingTickets": 24, "sessionTickID": "PxxzThyYvzN4ZhWW", "tickID": 92, "ticketID": "xYkhQiBijk8rckum", "timeToMatchSec": 0.5356977158407882, "timestamp": "1997-02-24T00:00:00Z", "unbackfillReason": "sKOGFx3yYwPKNT2t", "unmatchReason": "VzSwACnP67B12Uxi"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE