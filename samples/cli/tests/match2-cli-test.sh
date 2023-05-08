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
echo "1..29"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Match2 getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Match2 getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "ZaCXtTirznYHdfnc", "sessionId": "iZKAjPU3AEYd1lvM"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'xAZtcWCvyPwyBViC' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'P07rvFjtkCIW3JSv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'ev74Kx1NCfnRINoF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'vvkmxPxn3b62dcde' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "zUDbfP6QuHoQyLcU", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'k5SNaSXv9Dps99qt' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "NAidNG2JoaH85Ou6", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "swKGpdZWoFAMWaeO", "url": "jDvt9UkErFMf63Xz"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '9xK7SK1DcZ2JOmSE' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "vPL6Ljio6m4Yn5Ha", "url": "6yvha1g8ueMvyDg9"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'gfWFTLsXJLY5Q37q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 27, "backfill_ticket_expiration_seconds": 3, "match_function": "oIoimiORFZeU4u6g", "match_function_override": {"backfill_matches": "rPaXs5XyrtwYWxPz", "enrichment": ["ME77tl1scs590KsR", "FnKzU1orjPcm46II", "cO3c89b4FCjVWSBh"], "make_matches": "r8kuAf11brcxUxUW", "stat_codes": ["PcJ53n2mVBLs6Yz8", "9CTjAdnPzEFWlZ9M", "36qnXs8MS0abq7pf"], "validation": ["o2aAna69XacKfjEt", "iun0gSKtDmBv1qhq", "hTwNBup6d0la5npM"]}, "name": "PWqhOgsOtRnkW52w", "rule_set": "IkR1ytLE2W4xk2Il", "session_template": "YES4SXCkLb8E9pUX", "ticket_expiration_seconds": 34}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'kckXsMqgdWaRYrXH' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'alGSw5ms7oIPxvB0' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 12, "backfill_ticket_expiration_seconds": 73, "match_function": "G6wD9fndq1Ys6K07", "match_function_override": {"backfill_matches": "WpUYmqvNuOr20x0N", "enrichment": ["T05zejSitzvdrDcZ", "KoCSis90IgmC05J2", "ZqQ7v1oazqzBwgrw"], "make_matches": "HdK0ZQpIESfz3kVn", "stat_codes": ["9TGk7uBI8ybxG1nf", "ByFAKXvK68bjdxvm", "fMhDXlAaeTlZI8tW"], "validation": ["P76fzdohXsAdInDl", "JHGI6p1pcAvJ1qo2", "870NSkhQVN9zKjuK"]}, "rule_set": "nlBMBnrJkSL2lu4P", "session_template": "3LxTJngIiRfjqEpV", "ticket_expiration_seconds": 100}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'GTdyArYXWgqZSZFy' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'AlE8oSzMBnNktC3k' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'X6XGTxzhoYAoqbbj' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ZmSlR1qwssDoFegj": {}, "RsYHqiElB4o4Zg2D": {}, "PH2B2oPv2Jf3fg6F": {}}, "latencies": {"ec7FoFWZO0IUa94x": 22, "KOURBzFrq1IM7Ttt": 80, "I7m1v8Pcl5cy142r": 0}, "matchPool": "FfZT6ClpxtOPIpHK", "sessionID": "zdZ02FnrExejgGyZ"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '9UXIiwJv3GB1fCyv' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'gXar3ECDJhg5GXNm' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"1nbQFb7P5AozTGp3": {}, "SGFuajpNjd2EYO32": {}, "bA5PZDLMRXVV6R4W": {}}, "enable_custom_match_function": false, "name": "ZTinVO3fpK1cAqF2"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '0HTSgJ2VQpEZf21s' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'VkMMTEFEH0wCJmrC' \
    --body '{"data": {"snk5xjbpJLr1GZga": {}, "LUbU0Xt7D9Wt9gMd": {}, "gBd8So4Gw7Dyfe2P": {}}, "enable_custom_match_function": false, "name": "8RUy4NVnxESe1Ucj"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'pM0QYgER8OtVDX44' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE