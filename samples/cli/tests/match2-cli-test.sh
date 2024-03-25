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
echo "1..35"

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

#- 4 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAllConfigV1' test.out

#- 5 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigV1' test.out

#- 6 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"platformGroup": {"DdtX3E532ySwjSzM": ["oha4slH2ev9wNE2a", "JqJ993jwhbzPJu7B", "qWC5vLBkjvdzoyBE"], "PPh2JwPewU56TL65": ["a7yAN5CNoRJafFWw", "AiKO7aVVUJZHYrCp", "311iBQle3x8ru4in"], "6H2vxMHbgBRKg3D0": ["Jh0PzaILo2yAMjXY", "Q4NKXx45GMk0Q3LR", "uplxX4CMo79IyFVK"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "sG86LDujYPr4HItW", "sessionId": "kfbqRljIfUNhvqF2"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'hWLDM7iq8dL5lhxJ' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '9xgeELk7GGQZGdtU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'OfXrol1wmmyghz0F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'bWS350GaclJ9ISh5' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "OV1DWo7eZSl3V590", "stop": true}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'uB7mOwNjJ7hsom99' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "fpyw0b349g5idF5Z", "stop": false}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "eUkNTYKRktJ9fkbK", "serviceAppName": "Vjs56JIQ29iWNXmK", "url": "XaCcmjKTDcXQQkPR"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'gKWsamkIPdz99cAr' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "YuyIkUMikJxmpQip", "serviceAppName": "c2JsTdJbZxzHkaLq", "url": "y5fizzAAthliiedN"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'i1aTPvEuGpigacIu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'j2pNxQ8k204yApm2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 75, "backfill_ticket_expiration_seconds": 36, "crossplay_disabled": true, "match_function": "ubCo5UKb80iP7pgB", "match_function_override": {"backfill_matches": "5qvxpnLKpz98PIgI", "enrichment": ["qA3YtADiQfOhbLqj", "xcllUMN0SCj9JWap", "wJPLd1uJFe2ymG9H"], "make_matches": "r9nZynyfo0Zhxub3", "stat_codes": ["Haexm2vN2gzga5E8", "kSBXRZXwu5Db5qZH", "uqIhyTZolYJAfRT7"], "validation": ["30kTu34yOlCG8P1t", "GH4y2vuZCsGYwIdE", "7ed3GvZqOu6eapWB"]}, "name": "izCH6bXH1dMK3T1t", "platfrom_group_enabled": true, "rule_set": "wQMGFxoS0z9RyWzc", "session_template": "ZEcrQYJSla2jj6QK", "ticket_expiration_seconds": 72}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'yRABQwZkljJJbRae' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '0BkjqzzJnQDiw14T' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 2, "backfill_ticket_expiration_seconds": 4, "crossplay_disabled": true, "match_function": "OcXKcNRl0n2sIQGh", "match_function_override": {"backfill_matches": "O9bDpcPhWUS0qnai", "enrichment": ["Xz5Jv5rWrYkUnSOe", "F8fOudJ2AgNCzhBX", "fOngVPlm0sPt2eGy"], "make_matches": "29E9FgVM30ePl7t5", "stat_codes": ["twG82w6uCEeMqYia", "oMkUfDA5VsW5KgJ2", "ZM9vmtekY6CZoDJH"], "validation": ["2WfeuIx0csr0NFpV", "RfTd9qas8WwkCs7K", "QfgDE5OgCZdpb70U"]}, "platfrom_group_enabled": true, "rule_set": "POaDy8DLhWvunfpH", "session_template": "szWHX4LzDpS50DMU", "ticket_expiration_seconds": 30}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'iFLZS46K7Ml49rde' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Lmx2jIig3NsK0r8N' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'EdaCLsICkIyENrux' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'Rlrc67STJura4YvP' \
    --limit '71' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"66zv8vsd3l8Q6MN3": {}, "Z18Mb6V6zy3IG5vo": {}, "52VpSixqe6rCQU1O": {}}, "latencies": {"OcJoYwkhk0hrkWkY": 48, "tcgpBedCQaftTuvl": 40, "MUMIA6zFmbZwr7s7": 49}, "matchPool": "iZi9ekBo2mJb26Xf", "sessionID": "I3fQzGKm7kBtr28x"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --matchPool 'ZshA17WZY2z0LvO0' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'HpECsM4flCn2hBIY' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'LRwsCKEqovqOP7c4' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'e6SFpuvsuhYs0g01' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"oefeSTY41igGgjFa": {}, "RluOpOriCfGKfrpy": {}, "sj3Be2n0P11wpXXA": {}}, "enable_custom_match_function": false, "name": "PG8m0hxjSJsviXU3"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'XZfP5dYoGoBEJrlL' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'pFCAxwRdF62lRHsE' \
    --body '{"data": {"XlA9vIWnDMRK1YJd": {}, "juaFSxyUsGq0keom": {}, "s2sLWVWJqqbovIoS": {}}, "enable_custom_match_function": false, "name": "A9AAALhFrsTOtz4N"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'axLfkyeOg2EQQkqo' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE