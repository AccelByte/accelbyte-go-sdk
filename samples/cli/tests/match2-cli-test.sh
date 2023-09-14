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
echo "1..31"

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

#- 4 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 4 'EnvironmentVariableList' test.out

#- 5 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "grd03Y8OmIcjrsLZ", "sessionId": "qV9YSg3z9lAElu3q"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '4eRTtf1hKgda6EWs' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'JV1rM4me5CKeQwPG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'xOcKvE0Ouoii3Fkb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '1OyZs4r8YkqofROT' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "g95F33Nola7EPJjU", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'E4JLsWgFQRFa67KU' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "oQJR4uP1BhKGZ1Z4", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "lNqZoEpkptMgnmUL", "serviceAppName": "injFEFmFWWbe0QA9", "url": "mnqMLjLQ04jz4Awg"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'YBLWqQDKDFqTh6Jz' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "PpHB2T1H0oUe8qKV", "serviceAppName": "iXq69sjr200ko2eP", "url": "oIJbtLSgQSYP7kSb"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'm2hHyFss8iwkC2Au' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'zwv9f2YvnDrc6YnL' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 35, "backfill_ticket_expiration_seconds": 47, "match_function": "MqiBVILuEEOHnZh8", "match_function_override": {"backfill_matches": "y7tkYe2WWkjaj35u", "enrichment": ["rEKgQncA3LWejRoC", "OEZeb7gDD0nmAvSj", "FeBiDjHGLvck9TZh"], "make_matches": "TaiTrePeFnfHTTpb", "stat_codes": ["a0nLwyJZiczw3VMv", "Q5VxyMW7ojwhI6Ux", "FJJ21GETsGoJQ67b"], "validation": ["mhl02JdseBBOU3bT", "SC0QzbQcvkNWGP2p", "d8eNn35EB11vHFH4"]}, "name": "sbW9Zmc4sD3wWItE", "rule_set": "e4cUBJq04U9xCCuz", "session_template": "RbhwhyMotLaltXQC", "ticket_expiration_seconds": 83}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'RxW9jGcyeX71WOi8' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'FtWbEKljnlGwJdQk' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 60, "backfill_ticket_expiration_seconds": 10, "match_function": "JflPF6fDH469kkVW", "match_function_override": {"backfill_matches": "VASHpfizVpBmm2U3", "enrichment": ["EjoqHDcEyvWJXtru", "lwmJGaHtpOydWqDJ", "SwsIzVVXOfLAbx4J"], "make_matches": "o9n5mFrbyop3Wxg7", "stat_codes": ["1W8lEsUHDGg6hKnR", "l9r51HzfKDMjqOk6", "dtuCoFMGw2voki8N"], "validation": ["3FrQyXSOedXQJmfO", "VY27r5OPkjGXeWeo", "eDMX88L2fPsuOtCh"]}, "rule_set": "6ZLr8lGi1JHiQG8m", "session_template": "reK1PLHg8YvurWBr", "ticket_expiration_seconds": 99}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'G8jsbHSfUCFtpUSo' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'm7Lp3lnym5MVdpDG' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'kgjW8g4aZ7z7gbqp' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"qbRetyeG8sY6k4wX": {}, "bKrW5MRa4mmp7IZf": {}, "vfvLIi6HtMU8vydv": {}}, "latencies": {"T1pRGYFJ7BOZfEMw": 71, "oeOzF786VIPjDFQc": 78, "fsA1zM0fVCTAJgvA": 69}, "matchPool": "Hvr8QKOsY1oeu3tu", "sessionID": "A2wpmbLu05Fm4l2e"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --matchPool 'gKWb7VeOaU6TBZgp' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'PhIeuGM5wDAITKK4' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'CRE966qDmYBhkWHp' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'PbbiJRZpf5OKG37P' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"jcFgsLm468jGpxOX": {}, "V3VEpuutMvKSwDHZ": {}, "VxwJtjvU7xJm6kuH": {}}, "enable_custom_match_function": false, "name": "pAKoOhNaTh0wqd3m"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'lZjpvuBQAzmZqBuD' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'itAoI0UMXO7rK4JH' \
    --body '{"data": {"SHMoc2OINPSj5Yle": {}, "U10JS964sPb6YTsh": {}, "LcXzsbZEz1sZifEW": {}}, "enable_custom_match_function": true, "name": "sFvSPfc7BwZVYsd5"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'a1r3SON3MY9Tl1vO' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE