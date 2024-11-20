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
echo "1..38"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Match2 adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Match2 adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["dG6VCTGZUFYFqrOH", "2vEmcjV7rSG1w0WS", "XqCJfAWGAilERuDv"], "matchAnyCommon": false, "platformGroup": {"chyFOG3yzbebFclh": ["MRf4K8ppmdhlEx5c", "UIU3tCrk6MOis3qS", "HyjbxG3lxEmMslTZ"], "pLbZ5eJXmyi2FtPn": ["5S3bemfYFehxGpIH", "RDPkxq2nWVQYQo68", "Kg1zSh7M6SiMMSOR"], "Y6wvNGYM5zETLjXe": ["hR3vOYpdQyquGa6a", "BYYMcPn9rdT4zHhM", "5aQfObuRbwmyhRrG"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "B5DAwC6nGoDiTLEb", "sessionId": "jrcH4dyntlmUQgKP"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'kLidWips1fOu7Wk0' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'uGVduWu7o60wyFEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'uSF0hE0VBRDAqh6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'ziHSIdJoYla8364a' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["4FYg3OLGDRUPyCl5", "6Su5Kh91HZZlIFOP", "aUSFbAn4ABEe7d2o"], "proposalId": "rgK9ocyqySZXZHv9", "stop": false}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'dMjkf87su8HHnGjR' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "JjsjRJOav8EydBUs", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ssnqdx4ZLrdnjLAu", "serviceAppName": "oY0FsL6SGuJVfZZQ", "url": "hxpshP5PaLQYbpUD"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'jViZgklEucpT4586' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "djJ3qrvW4QzL6UdF", "serviceAppName": "ebkjhrYTAdxUlTuo", "url": "YDoST7eBpNUAXiDy"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'd2BinKKUnHxohQ5N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'nas0e2R0VhUjUdPs' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 48, "backfill_ticket_expiration_seconds": 49, "best_latency_calculation_method": "COygXrgmah2gjRPI", "crossplay_disabled": true, "match_function": "P9uqqwBndgOEDmsU", "match_function_override": {"backfill_matches": "ALq2Qu6gB6Vi6BNF", "enrichment": ["UEwIB0NGltjOx10H", "CUEHe7bOh5Bx62VG", "mzY4L3aOwjWkg8ZZ"], "make_matches": "ek5N2oSXst5ZhjlD", "stat_codes": ["L4Q8NdBbh7J0Jg1G", "8RNMALJ7YJ1ZuLO7", "vGZeZfzsXIktnnil"], "validation": ["6wjQ2Z95HNMuz8HK", "l8fEe7b0UtozPBUY", "hhPdFhz3DEWu80Ub"]}, "name": "IEGcM1zP23uusylS", "platform_group_enabled": true, "rule_set": "sJ4j2ScFBihUcTTz", "session_template": "1ajfvwrZMHSX4i2u", "ticket_expiration_seconds": 22}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'WBwwqBRtOOY3Az7G' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '3lsLOadcXOfW7LhS' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 88, "backfill_ticket_expiration_seconds": 87, "best_latency_calculation_method": "wKplPi9uFLTixTKF", "crossplay_disabled": true, "match_function": "xMYsQ3qE23InM6RR", "match_function_override": {"backfill_matches": "6JKucNcE8pFWWk6l", "enrichment": ["A3YMGvns8oviY14k", "3grGqu1W7rRyZqHx", "bKc0M5Jk7QVrjCCM"], "make_matches": "m61WsapkMVjeSs5w", "stat_codes": ["GJqSXcGZyHMSkxSL", "jT7Iizx6DGZag6y3", "66UgsZGWuPp7R1Rb"], "validation": ["H76xmgFgIflG3QSf", "rG53QKCXpAUm8rPk", "tjTWcjMoqVhYssAy"]}, "platform_group_enabled": false, "rule_set": "OeC7PpRpvA2tg1cI", "session_template": "vrFzsCoNemOzCuZP", "ticket_expiration_seconds": 18}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'hAJ7pihRz1aYmgsP' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'LqYjmb9zkskGvzRr' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'AKSins7yDKRlYm7m' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'h9NDPhOIm36mJbLd' \
    --limit '92' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"d6FCnnFLWItgTlcv": {}, "oMlQpbnFkzqHjUFI": {}, "ZOZAS5cRkATQESkJ": {}}, "excludedSessions": ["zY1DGqjWp23mFifz", "qlwpPLUCkBBy7H0U", "owhSauhm6MZwLFcK"], "latencies": {"s4DwrE23kMtOCqQC": 34, "zkXriL6nXpAF6cBg": 8, "HQbTwy0j4L4oMven": 3}, "matchPool": "k3iOkp5HkFa6awkK", "sessionID": "JO9zjXCW4UbCpVjs", "storage": {"9KD0zL9LH478Zh6s": {}, "NyOHqYBhsbruqygB": {}, "9kiAUObWey7ay8Eh": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --matchPool '3T6MTtiCw44Ej4t0' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'cXZSKpoy9anZ2YIb' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'krUrmg7u8q74jvnN' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name '7if236CNMXcjsand' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"6HVId6oTK5RF9YkD": {}, "jB1s6QUBgsUovXKJ": {}, "bdvHAEuOE3G12CSA": {}}, "enable_custom_match_function": false, "name": "hqJSYdYid0jo7ifp"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'zLijouk0sYg4Q8V4' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'fWN3sBsy8A1Wcv5l' \
    --body '{"data": {"y07AWfotpblXQyPV": {}, "VWYGLM8ah3nHYM08": {}, "SFf1xLHRrHVUkWbA": {}}, "enable_custom_match_function": true, "name": "pIabwVrmVswXTS9A"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '0ai04meFJOfilzFQ' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'hUCYIfNsZp21nIo0' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPlayerMetric' test.out

#- 38 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 38 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE