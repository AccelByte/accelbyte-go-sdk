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
echo "1..46"

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
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetPlayFeatureFlag
samples/cli/sample-apps Match2 adminGetPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetPlayFeatureFlag' test.out

#- 7 AdminUpsertPlayFeatureFlag
samples/cli/sample-apps Match2 adminUpsertPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
samples/cli/sample-apps Match2 adminDeletePlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetXRayConfig
samples/cli/sample-apps Match2 adminGetXRayConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetXRayConfig' test.out

#- 10 AdminUpdateXRayConfig
samples/cli/sample-apps Match2 adminUpdateXRayConfig \
    --namespace $AB_NAMESPACE \
    --body '{"whitelistedUsers": ["kQftkyfrZJefv62D", "Q5BnnEAqy5dKZ1KG", "tCN1WIlOKrCLbboj"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateXRayConfig' test.out

#- 11 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigV1' test.out

#- 12 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigV1' test.out

#- 13 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["0aH9XjhV7A3g8WFV", "GAaKHa8QKcFvn1b3", "QRi6z2DRwaf081ul"], "matchAnyCommon": false, "platformGroup": {"CbbUUJSig3YbZtF3": ["gZDbHVKmTIkRKqr4", "SD0uYlWNHVZQ5rbn", "ABJODkMMrQYPMvmk"], "GruXiKqsFEvpaWR4": ["xWgcoZ6Zrx1LkGon", "TLpy7c3lncPG3SRj", "0NILzhKaTnffAFcz"], "uytDzxJhuUDwBMzI": ["MeQkxViY7WagyHuY", "h1oEpgqzcZjq0vGR", "fRJXgX8FgTj3nptM"]}, "xrayMaxWhitelistedUserCount": 37}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1999-11-15T00:00:00Z' \
    --isActive 'true' \
    --limit '94' \
    --matchPool 'SuvVKwUhgf1w64hF' \
    --offset '1' \
    --playerID 'umEDC0sZLH8ucSze' \
    --region 'NntpCXXhLJtsfUxg' \
    --sessionID 'I4xQAfmlQHZ3In2t' \
    --toTime '1979-04-16T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "4r9ASEwjr4RCYRqi", "sessionId": "UV2ri8yD1Hcf9cr4"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'igFlP6rm8zySNicG' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'pII5wTUB8G3Z9HId' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'Tg81RRcjpiTT6E9t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'QH6fu3cBPVZCzLLY' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["EZbeNSP73xIN6trg", "28TLmrBQUwLfYJiI", "9bUkuWpNeVIQFxCx"], "proposalId": "Mgezl630Mu2P88EM", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '8ubIjQIQiE0adRIr' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "maCZ11hKhQtziZ6X", "stop": true}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "smPROIQuHGgmyOC3", "serviceAppName": "pImkKbKEis1U6bJd", "url": "cqPAt0z0IlIAqV0S"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'A9ozsrFJGGyP3lXV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'HAXHJpC3UFCnC5fu' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "BTpuLWeF3HPdAzMq", "serviceAppName": "cfH9WauqZJYqJAtC", "url": "QaDdVgzrZnqJgQJs"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'jc2ASYldXk7IaZYf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name '6kAc8bXEd7gLYEMB' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 97, "backfill_ticket_expiration_seconds": 77, "best_latency_calculation_method": "ebNVmb6TKjOY49tR", "crossplay_disabled": true, "match_function": "HM5BKYazgtMvNtY0", "match_function_override": {"backfill_matches": "paN1lxAUQx8DXsEo", "enrichment": ["bM88T63lkFSigH2V", "WPnJpIxmkeXXSUOV", "2U9f004PlRIK6Gpl"], "make_matches": "OmozdNewzGZ6ACT9", "stat_codes": ["TrW71XnkDJWxjoMb", "oFHqFFrMJz2Knoyn", "1stXB36rZ4LAMjKR"], "validation": ["NjP2cFsosbxxdcd9", "RcmT0yI3C07uQRLH", "yDcBNrACZROGwj45"]}, "name": "O6vIkrBmmTKXtUQs", "platform_group_enabled": false, "rule_set": "Hogk9kO9Z5BuTBFT", "session_template": "pt2ERey5avkDpNuy", "ticket_expiration_seconds": 75}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'BEjGH7kSqG53SQko' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ay6TUV3BZo6Y0SgS' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 61, "backfill_ticket_expiration_seconds": 94, "best_latency_calculation_method": "PdjSlWB2mUnjs8qt", "crossplay_disabled": true, "match_function": "Ht0jPoSLMKUApbIl", "match_function_override": {"backfill_matches": "IUI2H1DTE3KAc9J3", "enrichment": ["OJVlQeHk2J6SfNQG", "AOU3i7itXy1ukQ2F", "QfzcXPLpILhf5j5y"], "make_matches": "NQcUH62xHKS3OwoM", "stat_codes": ["7OC0BdBHb0fgtRJe", "tZAjrTGD5bLqjWFz", "SGNapo6VLz7s4MgG"], "validation": ["YFh6bP3egsjXd6RM", "wrVAOpGYPfoFpAz2", "M4teYmbmTwxYgzyl"]}, "platform_group_enabled": false, "rule_set": "8DCs1v2tsu7lk2SE", "session_template": "P28tid9AI24WOFlb", "ticket_expiration_seconds": 75}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'DBYuu1aZfU2ZaetW' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Xk8CDh1HYlXbxo8b' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'HkZCIuDw8JdAXXW1' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'LkSqQOutgAyBomg6' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'BYa7ZnSWrLqReESg' \
    --limit '67' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3gxn30VbmzYnnzJ2": {}, "zNIA23e6tQA2lRKG": {}, "GCZOOLkRcjsXn4E0": {}}, "excludedSessions": ["e6UgcFz6cSQ1GYN3", "50WklR5PdKdVXXQx", "2kOa7P3Nlj7U9iFk"], "latencies": {"4GX2P1CIzvB46uwe": 86, "k2Vp0wC9IHr7cOxJ": 77, "4FCu86hUzErQwXlf": 99}, "matchPool": "trDReLsu9qyCSt3x", "sessionID": "GKWhvNRvyJrFeQvG", "storage": {"BVwcq3nje8KdAykW": {}, "rV7U4rLT8pDubhLV": {}, "vgJx7rjrQ3DFNuf9": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --matchPool 'gtMAkEGg5QgbNcXb' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'J3oxvvbGRGxDhYqP' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '2dLXMr4rPK8QwT2c' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name '2B7TisCWfcCknfyz' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"N2RvEI5UdWubGeP1": {}, "FEFgMcKZgLsPR9iX": {}, "FgZ9WRLlBYBQX0pl": {}}, "enable_custom_match_function": true, "name": "vi9x59EH2Gfg9j2Y"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'yZeW9P2PMtsX2yOs' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Q0yvmSDh8nVnG6rM' \
    --body '{"data": {"icYt3zuu35k0IX6G": {}, "YMgY8mWgv8Z8RWAa": {}, "iUTDpg1yPVjNfESa": {}}, "enable_custom_match_function": true, "name": "WyWSujpszWe58Umi"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Qr4hr2H7FruY15MJ' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'oFpSDEUHTU9he1WP' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE