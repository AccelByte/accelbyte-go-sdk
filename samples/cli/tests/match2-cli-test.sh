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
    --body '{"matchPool": "WQKhPZcGQ2dXAZxW", "sessionId": "VQ4oP3rci07XeqmF"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'geFfEQ2GGJRDT1GF' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'kNb9GIptSJus2AXs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'bcbqDKqTv6cK3SRY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'JfclRrspnBpo4y4O' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "MABBiGN76ZcvEYFc", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'Dxz03ZjLIHVx94Xj' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "MUhfrVZx0FgNyXoE", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "G5dRD1atEF4iYqDI", "serviceAppName": "sct5InR0XwJW8nfh", "url": "2n3FwTPheDsj5tar"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'xsMBzrdtkuPdb71y' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "1eqsKcFvrrTPlytd", "serviceAppName": "VwbODbR3cuKcrtic", "url": "lPB39TIbwnEzi5lf"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'gXWqd6aVaARlGOKG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name 'TgPxR5lqqNkLKfix' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 41, "backfill_ticket_expiration_seconds": 77, "match_function": "s21TAJeDvPSid3QM", "match_function_override": {"backfill_matches": "zsDTdAQSdGmxin5k", "enrichment": ["qYNU2GkLdng38GpA", "cJdfz3wvByAajDL2", "qh9CXVFaA2nLIEiw"], "make_matches": "MwmVf9hzapmsjik9", "stat_codes": ["oYSXrcxyuT69nMJ5", "4MF6STyq4U0yQzMW", "eMRSMl5kYTKNUxEd"], "validation": ["0qvlUH3D5QoeML8k", "RDP05PAhMosPTlw4", "Q1jjeZU2vV5wiGdt"]}, "name": "CuaXNzcSc0BJEgJa", "rule_set": "tGFdebjiymlmzlam", "session_template": "lxX65HpeLAT16MDf", "ticket_expiration_seconds": 76}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '6yU3WxHNhJ0tGoT7' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'z04NRSQ0NMcT7JEg' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 28, "backfill_ticket_expiration_seconds": 17, "match_function": "ZCCp9Bo2ebBJH13g", "match_function_override": {"backfill_matches": "R7scc5VpaBrQ9V5z", "enrichment": ["U2TwMDwdjvs2xdIa", "nCgd9uaAEX6jO2lc", "xT27ONwdAUzJciYj"], "make_matches": "JU1CaeARuqj90fYL", "stat_codes": ["y4WysJKiKWCnBxWr", "n0PaKxnjQRkSFIRO", "CpNbbrsUVVewtIxO"], "validation": ["dofHmCJ9xntxNjod", "hVyKJul8wqO2pUxQ", "VQR21QFlRRfOY14S"]}, "rule_set": "BXPOlYIB07AcohUw", "session_template": "xdK82btuDS5EiDcL", "ticket_expiration_seconds": 93}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '0xSF9Zb8HoQ6xA8Q' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'f7IkpafMrrkcpdbh' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'TLi5tC3a4kNDf3X4' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'FwHNwo3IRPJUHloI' \
    --limit '28' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tplu3B69kY18LgJp": {}, "n8lmXnvVfgbgPgrQ": {}, "HbQDSynRqwh2srSX": {}}, "latencies": {"DYOFymuhXYJotT6K": 44, "EYmc8RAGnfNqoOTO": 66, "XOku677aBkdRqbdi": 48}, "matchPool": "1DiStFvdzMAr27sx", "sessionID": "xpzEZrqUVBZwmpOc"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --matchPool 'ylv2XFkee2EBx3cB' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'z95Ptuu7IH8vJ5PD' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'uieKHWraj4ZpgsWi' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'QGjDnmBDbOPNVtaq' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"g3frIKdjb3BmnARr": {}, "w9sjtr0628L8vYui": {}, "01CN5qUbejyqEGe3": {}}, "enable_custom_match_function": true, "name": "1WK6zGSsPkjgY62D"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'ytX3mTGkvNIZWfl0' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'jKZ8o4pC34rPO46X' \
    --body '{"data": {"SETJz4YVEaZrmTdT": {}, "iQ0UzHWS0eSCQKFD": {}, "fJuAORb3DRVEfWxF": {}}, "enable_custom_match_function": false, "name": "wycYqNrordwzDEPr"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'JEsyVEpv8s51yW5C' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE