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
    --body '{"matchPool": "LXMUl6EhkgAl42bj", "sessionId": "u4fc4MG8xXVE6MFD"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '45f0Vs4w4Mj4682s' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'FB3Fh12oSgxyQmLk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'bqpDzMMIhzAwAzTR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'o7UT4Xx1D7wehmuQ' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "6By9iVsSgH7oDCiR", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'oNJ00sV92z7UOONr' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "XbFKAbVfTIl0vaQj", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "vR5fYYe9l57QYeWv", "serviceAppName": "6sACre1ddjyKnSuQ", "url": "dos7bJ5uLGL3MHDP"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'pKBopXC5oEinNbko' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "BNMG9i5Y8bwbt1yj", "serviceAppName": "x4DxRmF9MMrFXl1p", "url": "CjE6ReIpUW947u8V"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Vz8Q070tCd3XvlWA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'u7kZHAHYPgp2x8XW' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 67, "backfill_ticket_expiration_seconds": 31, "match_function": "uh0WmQhrkjJgsyVz", "match_function_override": {"backfill_matches": "81T5x0zAf6kazfnL", "enrichment": ["iHgazZiODSJzO2rw", "LKTpIDqBGiBbqQ74", "qQvZI4bcWGGScRDh"], "make_matches": "pIaFVIdSJ2hIzITs", "stat_codes": ["EFUCfKw45l6J8yq4", "VhdIMKdyUQItVInh", "9kw5mavepPPvbWdF"], "validation": ["mZcgNWN5HPua9S60", "pmQHTRVQMFhetgy7", "RYTCR8Tc3xgyhhVe"]}, "name": "PSGpg5yqHmXq0J06", "rule_set": "0zOocaE3OUJdbzV2", "session_template": "YhMsZoV29XzYv0fq", "ticket_expiration_seconds": 39}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '7on2xgY9skuC45W9' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '31mog1mxCxXJv20O' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 82, "backfill_ticket_expiration_seconds": 1, "match_function": "1ihJuaBOLfD08zdt", "match_function_override": {"backfill_matches": "jDCvf8FzB5cYkHsa", "enrichment": ["6EO40NRRCIXoTlh9", "hnHpfEP2uEgRnm3H", "9v2NB6JMGOzs2adg"], "make_matches": "gbYhy16hRLBY5Sfw", "stat_codes": ["8tuWAgSrm1QZvMY8", "dbAMCmGU0Pi2Icnh", "pLeMgC2s3NclaP3S"], "validation": ["Lpk5wBKjtSywzkm5", "LGEWIj7j41ZO3Lgw", "3LYc2kv5dFuQxNrf"]}, "rule_set": "QmgntTmHdqytFIpC", "session_template": "iHRSsO3kPb7Ai0ZJ", "ticket_expiration_seconds": 62}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ppPndX5DsnNUgchI' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '9Zdss5DHVpr0Ihh8' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '9drk16DzrpAspfCv' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '1bi6GN8mMPk1GSz2' \
    --limit '99' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"w9qZa00p212O13il": {}, "wj678lgXvJg5icIe": {}, "slq63hPzeKqmxlyy": {}}, "latencies": {"69YiMabwmuPsGzOM": 12, "9wGsDnoHXA1R5Ou4": 81, "QplvoSWXVKHIZovp": 66}, "matchPool": "cbJZ6zl3NowD1Igb", "sessionID": "zXFGpb5jV9vWk45r"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --matchPool 'oi5NtLwY3Ewb8V19' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'hVUFkuIVqWr7jy3O' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '1ichtuNnwEJZjGc4' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name 'KrWHxRFA9oT5cFly' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eqGg2K3f1z0ovag6": {}, "Ez7HEZY4OpmEtH3o": {}, "pb2CQv9I8IgkcmVi": {}}, "enable_custom_match_function": false, "name": "uxLh8dXR5qpYphKA"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'QbSXDBswsUkoX595' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'jglgYvUwWhWG3vgX' \
    --body '{"data": {"ldknHq8AMYNqdgcB": {}, "odp6RWloWR9gpSOT": {}, "MBsquz9GAEuW2bO8": {}}, "enable_custom_match_function": true, "name": "N4CjyBSJnDDaYcVn"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 's3i9ry3WrRvXpoMB' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE