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
    --body '{"action": "A9seCHR1pAce5SF0", "activeAllianceRule": {"max_number": 65, "min_number": 27, "player_max_number": 30, "player_min_number": 62}, "activeMatchingRule": [{"attribute": "sa831k71kg9blQNf", "criteria": "sCL9ISYBmsU4D2Q4", "reference": 0.42242146775277}, {"attribute": "ZytXe8mpvMIDIOh0", "criteria": "JgAOIZGuu8TzrtHl", "reference": 0.8005941560482704}, {"attribute": "gaeaS9xwKJHVDAMM", "criteria": "rVWQFU43lXncoJs6", "reference": 0.053837487615284174}], "function": "LAbKILMIhdekae1c", "gameMode": "jt6F3ZqBtIiFxwWP", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 14, "matchID": "WhhatMOUlMCq1lsE", "namespace": "szjrIi8lp48tkL5I", "remainingPlayersPerTicket": [82, 14, 16], "remainingTickets": 30, "sessionTickID": "wPuDF7qdZ5J4D28J", "tickID": 93, "ticketID": "9KeQ9YIdkbuXClQU", "timeToMatchSec": 0.7665011121790262, "timestamp": "1996-04-27T00:00:00Z", "unbackfillReason": "qza7qN4vMALzYYY4", "unmatchReason": "mKVkOpxj4bnWQSwZ"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "uEzxgFllZvmF3KU4", "activeAllianceRule": {"max_number": 93, "min_number": 24, "player_max_number": 76, "player_min_number": 85}, "activeMatchingRule": [{"attribute": "OcQGJmO2eccG3YZD", "criteria": "8yzABCvimCRLaNls", "reference": 0.6799582642860165}, {"attribute": "oGnLT9u11r4FVLfg", "criteria": "GFRS03fDXe049sQ6", "reference": 0.738351546930884}, {"attribute": "zQfkT4URSaF3ppQ7", "criteria": "78zK7BGRzLv9vP2q", "reference": 0.7435299386650263}], "function": "IyS0k5nZAeF9PTdz", "gameMode": "11epx2lJtpIixtGQ", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 57, "matchID": "CiHy3RaZSYAxLPU7", "namespace": "mWaLGZFI8snJdsyj", "remainingPlayersPerTicket": [19, 16, 98], "remainingTickets": 26, "sessionTickID": "cLejTHLyaqxuFAB2", "tickID": 37, "ticketID": "xAkpHmatlVidYBel", "timeToMatchSec": 0.8619867274056461, "timestamp": "1995-11-20T00:00:00Z", "unbackfillReason": "VcuBikz88YzFAY29", "unmatchReason": "FH0sFEL6I2DFiR7b"}, {"action": "lyTz3Ty7MypLA9zr", "activeAllianceRule": {"max_number": 78, "min_number": 17, "player_max_number": 54, "player_min_number": 26}, "activeMatchingRule": [{"attribute": "ZSGZNPzdnN3Ryrpm", "criteria": "r2CGhabJVoA4Qsib", "reference": 0.7692844653827668}, {"attribute": "WvvrhO07Gp2zRe4L", "criteria": "AQjOuJHiqz8yRzIj", "reference": 0.11087261655545744}, {"attribute": "tCzpB8dTTRgsFOQJ", "criteria": "hok4G5Wa5Y5KHdHz", "reference": 0.3342568115012403}], "function": "pVh5Qc5vwqOUgCSL", "gameMode": "Ok7SmuGoSWM7AJ0d", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 80, "matchID": "9ekWVcJ4kswsrbmN", "namespace": "yBHBY0mfBWcz5XBT", "remainingPlayersPerTicket": [76, 5, 91], "remainingTickets": 71, "sessionTickID": "OdMa6epE2Wo02zsV", "tickID": 9, "ticketID": "xYx0xvh82kcnMZjC", "timeToMatchSec": 0.7995789772057427, "timestamp": "1971-07-19T00:00:00Z", "unbackfillReason": "z4WNnfTZOCsNLxZx", "unmatchReason": "8rQDdBOKlNGCyJQZ"}, {"action": "bHhY8ULHPOQrcnHl", "activeAllianceRule": {"max_number": 52, "min_number": 66, "player_max_number": 53, "player_min_number": 82}, "activeMatchingRule": [{"attribute": "gWkKVfnDRkXXvYqm", "criteria": "XKzyHYzvL6n9dMUX", "reference": 0.9774060775911148}, {"attribute": "pu2ZqlzattZI7R2k", "criteria": "xKg9RgkeKT8Z6trX", "reference": 0.6523548606285409}, {"attribute": "M9oGPI2VRvUdegr5", "criteria": "ZrCcFQKeDt3iOYgI", "reference": 0.6955689997098295}], "function": "qLaH7PtijhxXQrdn", "gameMode": "OlomqJP00p14cCNH", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 81, "matchID": "OKpUYFkTs9DOeCwV", "namespace": "XDTQ0XNOsHTjXRuL", "remainingPlayersPerTicket": [38, 83, 89], "remainingTickets": 23, "sessionTickID": "91gg6Tsg8D5lJsja", "tickID": 39, "ticketID": "n7E1VmileZknRzar", "timeToMatchSec": 0.9600745960321457, "timestamp": "1988-07-25T00:00:00Z", "unbackfillReason": "kGLuFV08tZiVGi15", "unmatchReason": "HVoX0S50uo67uJER"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE