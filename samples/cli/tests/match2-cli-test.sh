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
    --body '{"matchPool": "UPftxFeDyxr3VWB2", "sessionId": "dO6QtYN6QO97SrHO"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '9Gf5atPh5h8iJ8Xn' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'MAtzZQUkFHQHp2x6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '6itsRalVefqsBKM6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'OgDgDRIZJ4fZ8SlK' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "mBCn2Ft0eJa4u4Zk", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'lGjfsQySYwgmYfRZ' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "Ms9IAbpCBlaLLa2h", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "BTaBCD7ziVc75Zs7", "serviceAppName": "zh142QXs3XH8Cr09", "url": "6bgrmXk6BQYGKau2"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'tsH3Fj5U0kZaNZBn' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "wKACeMEBz3IATnSR", "serviceAppName": "Gxl0cDvRxamXcFPo", "url": "Jvtzc0k67SFzTsDT"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'IbUShONQZdoBaYdw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'gS23486F04p8YTgR' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 72, "backfill_ticket_expiration_seconds": 60, "match_function": "O4ZtuYJIDGadVnpm", "match_function_override": {"backfill_matches": "rAJlcqC9CPTwqs71", "enrichment": ["lNnBGZDW57ahAqcx", "DUYfEaUEVszaZvdd", "6MpEsuBYsllIyUXO"], "make_matches": "RY4qsP061s2nATz1", "stat_codes": ["0yuMFA7pddEFZLOo", "pRYwGUvpRl12gNiP", "1GmNEZ81JtgEXhYF"], "validation": ["oFvj2lJED8Q2pUn7", "LDNVo9nZOATgoswW", "SPLLMLQKptjWodqO"]}, "name": "CDBRVJpfRB4yL9pv", "rule_set": "t79Fxyeu2xnbCEez", "session_template": "ssbXBn9upOVGD6cE", "ticket_expiration_seconds": 41}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'qeTJC0IIl70E0jGl' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'sCuHEeG8ibXB2kM1' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 11, "backfill_ticket_expiration_seconds": 10, "match_function": "0JQVRbawuJrUMN10", "match_function_override": {"backfill_matches": "sNGXnaktzswVnzBu", "enrichment": ["I7oEdKSfK2ZX5BVN", "YRaW9oQqG6Du1frR", "HouectXfi1pl89OC"], "make_matches": "Qtdfx4PSYpnLV1OQ", "stat_codes": ["0t2ZS9vRyzhXg2f4", "Ol8KcCRa4OSCJTZ4", "F2b5KtIKONCsfrTI"], "validation": ["rRq5RccAtLU7iTGD", "R5a66miFXl6Rvnnd", "spvFM4YnY2BMEjVt"]}, "rule_set": "EslGzCIukZLn27Js", "session_template": "Fnf1hI2UVooj1vsu", "ticket_expiration_seconds": 18}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ClF3fFssJ3fOPIun' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'HjmyAbhou3ejmxuO' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'gt3Fi05oeN3gszSf' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"m0BM4THdYGtohXwG": {}, "kfs9ejLybgDCjUqt": {}, "MxP9pzudsMf5COhr": {}}, "latencies": {"2QHuH3QDmq0kk7ht": 38, "Cou4xihItJyoQhPw": 28, "PP02kz44BWDFOQGu": 26}, "matchPool": "CyPn4Rweo8MPaRPW", "sessionID": "tECgQd4POc3cpRCP"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --matchPool 'l6aVUnHZMOxs9jBk' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'UVMHuJFJqDzrYN7e' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'XDCKIhkShTFCCWKw' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'Rk9iXcoNVaygeZgh' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"NG4ZBkUNPlm8fQP1": {}, "icLnwJkKJafSwFub": {}, "UckCrUsvEef8WD6u": {}}, "enable_custom_match_function": false, "name": "WBGf7Lqp4gVQC3Ng"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'wlN9XKnDdg9AwZgF' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'rOSGmnTCaPmS6crB' \
    --body '{"data": {"zL4dhNJXgIphJfas": {}, "zSOjp4A1P2IWuNDc": {}, "CChRYNyvFfAdq55t": {}}, "enable_custom_match_function": true, "name": "7UR4tjt3ob4oIPFS"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Tnb31asdIkJ7sDj7' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE