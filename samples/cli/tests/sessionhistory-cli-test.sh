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
    --body '{"action": "y1Uf8XXG5nwsoHoD", "activeAllianceRule": {"max_number": 19, "min_number": 42, "player_max_number": 15, "player_min_number": 95}, "activeMatchingRule": [{"attribute": "hHJjFLJqo6LFtCNV", "criteria": "QYbQq49nePIGAfYB", "reference": 0.12339958983894728}, {"attribute": "tWAvDPpJuudKH9Ol", "criteria": "9rAjFJOzsfAyIjn0", "reference": 0.9258795854682011}, {"attribute": "Cnz24YZo73n0QBeY", "criteria": "27TmNuhxW6PlhwU7", "reference": 0.8335899549980665}], "function": "hrhVS0nKOUPmzz0G", "gameMode": "uTPV3b7HbMoWjoUC", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 88, "matchID": "CaozJjvuu0L2lFm9", "namespace": "Q9yQ9Urj3KR6m2xE", "remainingPlayersPerTicket": [66, 93, 30], "remainingTickets": 12, "sessionTickID": "fis1WfdFfmxNqToM", "tickID": 52, "ticketID": "FMKei7sgoJY2kYEh", "timeToMatchSec": 0.6373941521314237, "timestamp": "1988-04-02T00:00:00Z", "unbackfillReason": "26ALbzeSgswOThG3", "unmatchReason": "g0VtPkOe4OeuELhf"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "lPG3WJB9l0lpSp0d", "activeAllianceRule": {"max_number": 12, "min_number": 39, "player_max_number": 22, "player_min_number": 71}, "activeMatchingRule": [{"attribute": "5REIf6QCxCmbHAIq", "criteria": "aecpk8xTLPV7lEu6", "reference": 0.7782529824628815}, {"attribute": "jryIRAXv70HrOW75", "criteria": "DOF2NQfWq4LnzYhB", "reference": 0.849776185695759}, {"attribute": "52nbygNtWOwN1DDh", "criteria": "P0I2TuHIGCgvb3Ql", "reference": 0.7229329258770265}], "function": "TS9kFnlgX2Yg4I19", "gameMode": "pDar8NQFpIZ99HRc", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 56, "matchID": "50kZJ8cgT6rrYnii", "namespace": "T88g2elAomKJaolr", "remainingPlayersPerTicket": [11, 76, 1], "remainingTickets": 72, "sessionTickID": "UmXh7TNob1Hsvi5n", "tickID": 7, "ticketID": "6EUVw1ngB2Sw6sIg", "timeToMatchSec": 0.650432780747624, "timestamp": "1985-10-07T00:00:00Z", "unbackfillReason": "3KPNvkq0OLCmmZZu", "unmatchReason": "mwW5Xeh6cEZXqM0e"}, {"action": "Pj3Q0OVWjriZGrij", "activeAllianceRule": {"max_number": 33, "min_number": 78, "player_max_number": 90, "player_min_number": 11}, "activeMatchingRule": [{"attribute": "xDgCm14T9FahtCLt", "criteria": "CzQaEsLRjSOh3i73", "reference": 0.7819771698469778}, {"attribute": "B9swbYZLhP3WSHx4", "criteria": "FTetkmyDxnL1stTW", "reference": 0.5327331845522534}, {"attribute": "pu1yB5StpnYJNvfs", "criteria": "1XqCFwpQBPX6itjn", "reference": 0.8430056067927567}], "function": "NUlGG5Ne2wajvhPH", "gameMode": "hXRm1vxr0fEiHkDE", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 34, "matchID": "5hjS8ozydLvHEmZe", "namespace": "hO252AMeNsEjuPVY", "remainingPlayersPerTicket": [83, 57, 90], "remainingTickets": 16, "sessionTickID": "hIz7IFTmBXZR0ygO", "tickID": 22, "ticketID": "MBaQDsulfC8HZWmD", "timeToMatchSec": 0.9909146970569123, "timestamp": "1983-10-01T00:00:00Z", "unbackfillReason": "drNFNJeDVEBUdx3e", "unmatchReason": "fU5gHDv4jQbkQcOd"}, {"action": "B1mfZdO7diD3ttyH", "activeAllianceRule": {"max_number": 14, "min_number": 38, "player_max_number": 35, "player_min_number": 17}, "activeMatchingRule": [{"attribute": "1TGCS9tslzUqg0gu", "criteria": "gxumfHwr3qHEXbFn", "reference": 0.5448605300876335}, {"attribute": "ce551ML3VikOIdwt", "criteria": "6HQIdbCzjabk9k1m", "reference": 0.7637221386066404}, {"attribute": "HsVBiZKbfWyPFwvW", "criteria": "VBAHkgjDo5lbd4RJ", "reference": 0.2634458414507692}], "function": "2laJc6mVFSAQVrpu", "gameMode": "JBsp0707bpZAA05y", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 43, "matchID": "jcuXHRaVA7DpAdAy", "namespace": "InGeAaRUbldP3pPo", "remainingPlayersPerTicket": [83, 86, 97], "remainingTickets": 80, "sessionTickID": "7W6QGofr0Ri1qyLE", "tickID": 81, "ticketID": "lWYoTBYZRTP6wPOG", "timeToMatchSec": 0.40926772643275544, "timestamp": "1979-11-29T00:00:00Z", "unbackfillReason": "daMDcXnUcYzlF2fc", "unmatchReason": "HGd532r63WdupErA"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE