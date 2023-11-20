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
    --body '{"matchPool": "LGnnc1Kk0CPqDkHF", "sessionId": "VXrvyWwQK2fzsiJZ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '0v1Iz6l4ftRqmOs9' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'dDL3Wuoc9ti9kcW5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'PQ38nNbxzKSFCkfJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '88woiGmpYOzqto0a' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "ORAbnwdOZZKOXfRS", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'pe42Px8neK2a2DVE' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "55lUJeFWADyMHgfK", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "bMXyQi7LePiKwzD4", "serviceAppName": "gbXpA8evdnTNWC8E", "url": "5xIGOff0jiCdkDoZ"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'wUaE518hzQdB8Cff' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "0xKMWP8b9DMBtGEc", "serviceAppName": "E9yyynfc3DrrGFnz", "url": "suGDxvpDvuNTC9wI"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '3drn3qOCVNCloCfj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name 'OWC4iTe9HxTXPRJA' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 28, "backfill_ticket_expiration_seconds": 28, "match_function": "LSd45Iv6VMUBF5Is", "match_function_override": {"backfill_matches": "Q4hKTLgvv9CjWqVp", "enrichment": ["Ixqf4fiA6DkvRElY", "4AmOyrr4h8rKE8p8", "FZ0qdhEkwW981yex"], "make_matches": "uuNVjTfQloRVdAH3", "stat_codes": ["rTZt5xiIDGoWiExd", "B4edffSPNxsLBBqb", "PQMPM1VNpb1calSx"], "validation": ["SKumIpipFVgH2DMI", "5DWZMuRgs3CKAN3J", "9IoljTwC9XSlC5Mi"]}, "name": "kYkNIblDjbqDVJhG", "rule_set": "KeLySODvEtQyA6OD", "session_template": "vZ73uK8zJ2becJ1R", "ticket_expiration_seconds": 34}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'iyH8DecpG4JhaQOt' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'BYwiZpx4Gyk34nbu' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 90, "backfill_ticket_expiration_seconds": 85, "match_function": "L5czAkiKV0ct3BN2", "match_function_override": {"backfill_matches": "ieBcmsIaG4KFIDAt", "enrichment": ["6xyQBe62I0d95WWP", "JzrFLKCBCYQloJXz", "adO61RIBnM6NbtoM"], "make_matches": "JTpEIRNssxt46ycD", "stat_codes": ["jrYqU3w3QAer5YNx", "oJFIwxzL2v8INhAI", "Z3Q7sL7QUb1k9TRa"], "validation": ["0BpCgSxOYcVdGAQD", "isKT90Uv4Z2Ceft3", "Eu6pswd5I4Ruc6vR"]}, "rule_set": "z8SJCHxY4uS33RNW", "session_template": "zmp76otQTA42jXdk", "ticket_expiration_seconds": 14}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'r9b3E41XfOM6TUfg' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'qm98QDwKf7ZFQUMZ' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'pYgGygt2MpBUh1JX' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'ERNNzsxClcIuDT3F' \
    --limit '38' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"YajDNjuOoqc6OZ1U": {}, "evnURTNPOMpdUeLe": {}, "9gJuWyN6R1eQRtzA": {}}, "latencies": {"DgQ0cgIBLAHVMsUJ": 2, "ebRukC2c6FAQDSYw": 42, "WFg5KSD2d0UTwi2O": 17}, "matchPool": "bcnP6x3XQTMh5IvL", "sessionID": "a2tL14vRDEMjTlqR"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --matchPool 'Tv3Y5rIOAFWSJcKQ' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'ooLNVfPmxcAqKLjx' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '8DJNT8g4gIGbFd79' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name '0jf3zS0Jmn74Ib0e' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"yQcqbTSfzbVTLStJ": {}, "GdA20t3P87haIRvN": {}, "iT7PAEHFKVzXJ136": {}}, "enable_custom_match_function": true, "name": "nqmiRKqNEIwQ7Zp6"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'Rto9RoIhrumLqYQM' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'uCgu7J3jHa98XxmT' \
    --body '{"data": {"Uta6XnnFH8BJijZG": {}, "UAgyjANPm0haeY0i": {}, "sZl2nQxaV3Z85Nkz": {}}, "enable_custom_match_function": false, "name": "YOekzlV2Tj4dwODL"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'tAFdPlxT9WKTsVIU' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE