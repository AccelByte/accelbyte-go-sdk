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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
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
    --body '{"whitelistedUsers": ["qCVb8gyYyEdaEIoR", "A6UhG1xkiaKt5tbp", "5j1PfiwQDBukJyig"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["4BB6J3piAsPGzXs0", "mIIXzTXRWjQwJZSm", "VYYLTOe19hoVLgeO"], "matchAnyCommon": false, "platformGroup": {"o4jgbzBdITEri9zA": ["7JDvVBUq7r2YElVs", "y0Qz1cBNht2W8gxs", "yhXHFsyeO70AN9wQ"], "8h0Fku5SC3ZT29KO": ["q4lb0a6wnIA7vrn2", "LVrMrE4IJvamNQdc", "vXdPDSrf5Kq0O7r1"], "PxopV3bKtvrYW7wD": ["QBjmmaMRpQvfUGuv", "pqiNWYiVvSqk5oue", "pVElQ6URtSNrWa2d"]}, "xrayMaxWhitelistedUserCount": 66}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1975-06-15T00:00:00Z' \
    --isActive 'true' \
    --limit '89' \
    --matchPool 'kQJZjLaLYyxN8BcR' \
    --offset '34' \
    --playerID 'nGUOuVci8bavoLci' \
    --region 'hlvHCWJ1P1n3ZINA' \
    --sessionID 'QIcnEzDR1HWVG9MT' \
    --toTime '1985-10-15T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "2z9L41toCZtoc2rY", "sessionId": "9X8x5pmGrtMZ6z3d"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'JEaCrzLgYZ7Q27QQ' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'ywJyD5SZVUVZiZii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '7tBxjsUKbjVrEBWX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'e6qi2hDUfqB0mOSL' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["JN4kvYwMbID36Gtn", "VHaBzKoVIi29k29q", "tvF4gKl4vPqsZ1Aj"], "proposalId": "lV2Ruikn3PgQo1Ha", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'f9VJWfsk2rj3AQuH' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "3WrqGa5eiYIb4tbQ", "stop": true}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "0V2t6JXfD3upAjZs", "serviceAppName": "cuzkInDm1mHmMRTY", "url": "gfNjlFXZfpdoEmyM"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 's6fJlSE7cIlVAkRh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'Zutb7sGzuQN55E0c' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "YWsyM84dPdjujcpN", "serviceAppName": "Bf9O2Q0V6TnIEchX", "url": "W4cpAHX1ZulIGUaC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'ymxTpp5odCRoEOGf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'FMml4T3TjAYmaaJn' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 30, "backfill_ticket_expiration_seconds": 73, "best_latency_calculation_method": "fNJjnPC4Bp6qZoxQ", "crossplay_disabled": true, "match_function": "c04BtpvUsTbJCYb8", "match_function_override": {"backfill_matches": "by2pTDdl6U25jjmB", "enrichment": ["82aTmZpDAraLlyzJ", "oakpyyU4Djc7pCuf", "lcj4J6dAY1uhwEAv"], "make_matches": "NdDcLgrp3WCW96gc", "stat_codes": ["N1XI4XovgwhyEWws", "pnkf2m0kMUSCwmjo", "7J60WJqfxX119fIb"], "validation": ["b4ogqNIYwquKUSBi", "MUOcmlLD325TRZhW", "D1xT2xpq1s4dz27K"]}, "name": "CWTQwxaXZlvryTj3", "platform_group_enabled": false, "rule_set": "bSlIGHnHcx6PMU1K", "session_template": "s9JCOWXIc7UTP2Uo", "ticket_expiration_seconds": 40}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'FI0CK7XicU4oEOSR' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '6les6XhHZ4pT18Mf' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 56, "backfill_ticket_expiration_seconds": 37, "best_latency_calculation_method": "MRc9QVALw3L7GZpR", "crossplay_disabled": false, "match_function": "TEfDC0FTo9Vm9MDV", "match_function_override": {"backfill_matches": "3MHXyMzHP1o2o16v", "enrichment": ["UrOoGBJmtsV27KNH", "ZDPRfUNEALe6f6I7", "wEiNuVtMcfUM70QY"], "make_matches": "rYvYQpddIz5Pdri2", "stat_codes": ["xl5BPWTptRxKrr3t", "Njpl9dPaJgDKXCKW", "9TSVHTEj7ubn2DYU"], "validation": ["YfKo78llsKQ4Cg1m", "hjnyV1HdB5KWQbe3", "nFTRFtBAUbQKeN6M"]}, "platform_group_enabled": false, "rule_set": "sh0cS4jqk0N2FXcd", "session_template": "DeX0hJyDGitD5REo", "ticket_expiration_seconds": 75}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'eaZdFuVbNoKCWNnc' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '8mtJ25BmYbaxKJSZ' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool '7uV4WkqYkkkJPiKu' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'jpmHa5eUHuMgeBaQ' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'qMKzz0UPcIXuUDwB' \
    --limit '19' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"LJDcb6Ct2eM5wXKY": {}, "VxVcF3oGQhkqKxAe": {}, "2gZZOIwkQKzzevBv": {}}, "excludedSessions": ["DwkG9OePHV8IQhDJ", "IuS4qvn7qcCLXIzr", "XKf8QQSIJsChY8H8"], "latencies": {"vuKLXHXZnpdbYIeV": 16, "Ltn5YR9RcGYzQHvU": 2, "gJjjkYLSEZyQFhhU": 62}, "matchPool": "XRFANfQ8O6qJ7OSr", "sessionID": "DBuANVihWCgUz0z4", "storage": {"nFE6vmLA7WI3ejg5": {}, "D6Frwxu5NJx8jPf9": {}, "EeVfy2GG9qcTNMGL": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --matchPool 'cQnepy0ZYntj3h8k' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'WJannrDkfqgYAayU' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'd4gf1gOWSUNhgTTq' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --name 'CXQCHKvfptFF5NUw' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"qISSmvt8w7QFfPWT": {}, "C03qBkQfVgNVmqlA": {}, "26m9yQPubCC3u7XH": {}}, "enable_custom_match_function": false, "name": "FXw7sMXqvMyFIB3H"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '8BUEdjZpY6tDFM8N' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ffxgyLSbhKkFc5iW' \
    --body '{"data": {"mxqtjZKqFveezrQn": {}, "Rm7BM2r8iE03igTP": {}, "fGfzF6yRayuXG5Bb": {}}, "enable_custom_match_function": false, "name": "yvgVJB5Aw9Ndnvow"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'UlRlB09dtzxWkGdt' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'yGOUQS9gkv2YrOhB' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE