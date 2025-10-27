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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' \
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
    --body '{"whitelistedUsers": ["Jay8PkjwwhXH1gl0", "ZYxGJaNr31isSG7x", "iP1jRM9wZhgbyy8D"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["mgW9xNiTJutTD1yR", "18uXlzhHvM35URKb", "LKAOkpNkOOSVzelK"], "matchAnyCommon": true, "platformGroup": {"PPZ4YiCzon1IC1PW": ["mhxFVrSA0wJxy5nG", "KvaCbkLeVteYd8qq", "M38qYHVUXV7OBKx4"], "Pc5ZCMFjU8oqWMQW": ["M2Qtqkw9D85jK6E1", "ggZ230ZjsGDlaKuw", "jAmlUQ0qy9EL8iY1"], "wwxOoTXB10JaLT0L": ["jJARjIvrNXRwDdhk", "XoIKo9tzB7AFBFJD", "d0od9tYANOhb5fky"]}, "xrayMaxWhitelistedUserCount": 91}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1973-07-21T00:00:00Z' \
    --isActive 'true' \
    --limit '88' \
    --matchPool 'gdaT9U1LkymWJ616' \
    --offset '41' \
    --playerID '8migjSRbWE1zc9BN' \
    --region 'lvsk1LthUns2Xd5M' \
    --sessionID 'EYjliKrg0rpp2rDg' \
    --toTime '1997-11-12T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "KYzFc5wCIOupJV7Q", "sessionId": "iwiG5lCSliFrnOR4"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'kmJdSu1QmUWLAlgH' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'k7LP6VXOeNYij55x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '5RISVeJalhu0kzfL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'zxgeQs9mNRaaej7k' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["kBFNJcI7ofFC2vle", "jdHuL7GFz6sTjQa0", "NQDIHLknBeXtX8cR"], "proposalId": "PU6OQTPRW9AWsr0m", "stop": false}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'QwaTYPCcxRiUmpy2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "0jLbs3rNTvTE2tVS", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "L6bf8MxXfIHQXpTL", "serviceAppName": "cGRtpw6FrYFKKGm5", "url": "fZNDv7tmrALiFYuC"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name '8OyGjMMagXwbZYDQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'T3EMS6F4QBB3ogd5' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "zKvmsYhaiCxz3VxL", "serviceAppName": "gA20Ci6mZOc6BOJ0", "url": "XkU302F5UiWplQ3F"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Bsr908VWEQ4TwbqS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'cJNeepDH0Sj9529I' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 37, "best_latency_calculation_method": "dK2om2ben2WejPRS", "crossplay_disabled": false, "match_function": "lLtMIYra44NavPpy", "match_function_override": {"backfill_matches": "vHxGJBCddHgaf2jD", "enrichment": ["b84cp8KiwiyVvp4X", "dtyHgNxVayaP3bVN", "xSVsxN3GiU5eYZE6"], "make_matches": "I18Hg7r3fONw6408", "stat_codes": ["5kJSTniGrTadZwo5", "PoFxyJyubQB2o0sn", "QuMVLFcrvmdfhOtA"], "validation": ["sQXhzxRYJPhYy2i5", "zXhy595a7Jx4XOsA", "MvY0abSAftd69Nmp"]}, "name": "HyrawVffWveGLpvp", "platform_group_enabled": false, "rule_set": "oR1n9ju89IMF3sN3", "session_template": "XMDe0C4N70wLym5N", "ticket_expiration_seconds": 84}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'J5YooxZ7pUq4ld5t' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '1tN5bmCdnKj4o8wO' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 97, "backfill_ticket_expiration_seconds": 79, "best_latency_calculation_method": "baie11Be4wAfuQJ6", "crossplay_disabled": false, "match_function": "ooVSCT6otcqTUZvb", "match_function_override": {"backfill_matches": "Xxiy9annMFeBSsoE", "enrichment": ["rLjrt51RdDYvmVL5", "IlcVq5Z0eaJM2iwC", "rr9Yu3PoXlxXOQIk"], "make_matches": "mxp0q9PQ4XjdlYJG", "stat_codes": ["pJgCGkSCzgHjdSf8", "Ajxe9wJ5fij8M1xT", "JHbIXe7VwbkamE8A"], "validation": ["0UWPvOmkQMSg5Srf", "YKiecZu8EHnDvUqW", "YefToiAZCaarkRV9"]}, "platform_group_enabled": false, "rule_set": "nT5DQtQrNt0bCFST", "session_template": "boU4L2UJJFSIq4uk", "ticket_expiration_seconds": 78}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'UuNZMuyDtEm38Znw' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Z31oASxN1SwkD71e' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'emM5VuJ457q1ibSj' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'XA5UJ3JJ6VMsIiy5' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'x6lcbQVVulXAwfJc' \
    --limit '90' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"RQi4E1XvTdSBuKgC": {}, "YmVMers4w7vcD5u3": {}, "7nVELeEVdjCKwgT1": {}}, "excludedSessions": ["j7I00j5VGTLuE389", "1uDAW54vZ0j9cd81", "zW48l6GOPbHTY6Hc"], "latencies": {"4x4mD6OJl9kMVPrb": 11, "2OOC3YUOCvRl6v22": 31, "0Tz07gGk7pa25wa1": 84}, "matchPool": "iSckfLADmo8J21WQ", "sessionID": "e81ekHfnozdiNn7Z", "storage": {"tww2HYZjJS7dFQd0": {}, "2DWwhlofFIJpKcjA": {}, "WPH2qPnx4lo69J59": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --matchPool 'pEULGz1QXm0OU3id' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'd2SWiSeJngCsBlr1' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'LaApU4bVv8UzYNl6' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name '7A1z3DfQZrN2BK8T' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"yLZ6ihfvJuVnyRyC": {}, "TSZDBsvDnvGTQCGi": {}, "nv8pYW0S5NpGJnFx": {}}, "enable_custom_match_function": false, "name": "DS1RVb9GeKldAt8C"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'uym69QEAtqEA8Bw6' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'k40rvFuQxr7eXTVi' \
    --body '{"data": {"zfAK56Pcbbm4KmMw": {}, "1hDRzasSIDcdQnhJ": {}, "pcmI1rT602ZKphRe": {}}, "enable_custom_match_function": false, "name": "7ZMBkYgqSxmHc9af"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'hWj4wDhF3LTbHI5x' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '4uX44awuXZ9IZbpT' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE