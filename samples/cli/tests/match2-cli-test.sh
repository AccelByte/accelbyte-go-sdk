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
echo "1..32"

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
    --body '{"matchPool": "nezqH1GBfaYfrQhi", "sessionId": "WY3zjru5cdaC9b1Y"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'LhpF5a1cLa6m1tQG' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'SMkeVFFLVtvYxDEV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'Iq1Z4uFHCqiUlMdK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '4lypOMJ3NEOH8o7r' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "TVcqNIMWVN6KnJNo", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'oODbwFEZmlh0aQl2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "BjUDIyfcP9FRiMyh", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "oLRc5nW24wHce1bL", "serviceAppName": "ZVgXxdLHqWTKkGDV", "url": "WYHklyGLKfo2vu0C"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'SCic16MXy6LB4uYQ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "YtMOgBJm40Ona7gO", "serviceAppName": "aREIWBQcH1kg8pGh", "url": "UV34leXpr8nPa4cy"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'PmJKtE0x0uOSk5lK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'XiAN6DRb2NZS4wPJ' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 79, "backfill_ticket_expiration_seconds": 85, "match_function": "qg2H0Q7Oh4njJhy6", "match_function_override": {"backfill_matches": "T2QRkw4hZ2KfGYOu", "enrichment": ["2hltKUdauPtrwFvc", "qKZj5MToYLIXm6D0", "wKZBkR8y9evWWzWK"], "make_matches": "8bbcVPDpMuPOKf9P", "stat_codes": ["1vCGdwb29It7dlpO", "kn65fWo0JZvMyYvM", "qCcTH2uH3DUUaPfN"], "validation": ["Nqc4A1B3pYFrQ63Q", "tfnCme40HweTsF8I", "IJaGNbd8rKmmgLAN"]}, "name": "liLU7clV7pSytCPL", "rule_set": "HqQKL46HITqDMH6m", "session_template": "eAMgE3RaX5gcC8Ok", "ticket_expiration_seconds": 4}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'ftELkZrzbUQ55MUM' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ulmr0RszUrBDfghS' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 99, "backfill_ticket_expiration_seconds": 91, "match_function": "knXAOVUhkxtkkcNn", "match_function_override": {"backfill_matches": "x55U4wQ6jD36XtDC", "enrichment": ["PTheRLTAovVNj4Nd", "Sqa1irOZyAdqN6jk", "jqBpymPJYcSa2Ilh"], "make_matches": "bL9ej4tUQoty4YqZ", "stat_codes": ["6o0pyh0qwvPgaXNO", "WY4HrAlJxEYIlNHW", "9uzNaBVW6F198Cih"], "validation": ["WkkN0XmhY32kgS9y", "CvP5R1lr0XTU1CT0", "VQsgmMwx4S3MWsgM"]}, "rule_set": "N0LopH8U51HVBuZa", "session_template": "Tm3zyjGfIIwEklBB", "ticket_expiration_seconds": 22}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'OTuLyclxLQ5wkdwr' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'lz1PRTl0pC1MXJBT' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'cTFdHpFsVy7vPPmB' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'GLUrvXNdLuHhbUSy' \
    --limit '60' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"mfBSdRddpKVWUhC9": {}, "36EprMO9TaWcUQHO": {}, "P8kKSDqK1mO07IIj": {}}, "latencies": {"x5JXEp7UU3ajSVJ6": 31, "Y6AfGjGTHm3qtMSo": 51, "KBnuLTvlG6pqHAkr": 39}, "matchPool": "RkAX9qSOYIP4eBxJ", "sessionID": "4WYBLS04LChkukpJ"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --matchPool 'wbCiP28OmgiRLvNW' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'fSAhkR4rRRCWPy4C' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'zjlFfUswvwntToSD' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'TzEAwFn5rSWjn8QE' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"MhSCDY7AmV04lAKw": {}, "uISntCqRu4Zv9sIR": {}, "pimYDpmp0Cdm1LXw": {}}, "enable_custom_match_function": false, "name": "rpgV0qdWytB0aABb"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '5B18T0O4BanXvgFd' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ySmZ3eSXxCFvdACy' \
    --body '{"data": {"y5XYE1siW6il9UL3": {}, "oZK6cVD1w3WNcFol": {}, "rkVvKcIkksNJTpvq": {}}, "enable_custom_match_function": true, "name": "GI8Lp2d3fV8Ztqsj"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'htwzkd64WBiU22Gi' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE