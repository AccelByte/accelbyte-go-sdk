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
echo "1..23"

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

#- 4 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "jwp4HIXG", "sessionId": "z25Z89vI"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'VnXENFxD' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "eu5Iu7lW", "stop": false}' \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '5V9seYFF' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "SyhGfgTJ", "stop": false}' \
    > test.out 2>&1
eval_tap $? 6 'RejectBackfill' test.out

#- 7 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 7 'MatchFunctionList' test.out

#- 8 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "z2ozr7WO", "url": "k0fQgidb"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'd2TqaXjf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteMatchFunction' test.out

#- 10 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 10 'MatchPoolList' test.out

#- 11 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"backfill_ticket_expiration_seconds": 64, "match_function": "bF1QfO9D", "match_function_override": {"backfill_matches": "BUy1FC9D", "hydration": ["m2YGmADS", "vNVRfdbD", "RCQBIrLS"], "make_matches": "ihXwhlsI", "stat_codes": ["sz3sir5P", "WYiCOSp8", "6W5fdO3j"], "validation": ["FV15pnhh", "QzeZsp7C", "NuLuQugU"]}, "name": "HEOTAxLi", "rule_set": "tNgTm0zM", "session_template": "xfVYyrxg", "ticket_expiration_seconds": 12}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'pJA8LZ2J' \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'jnXRhMWf' \
    --body '{"backfill_ticket_expiration_seconds": 69, "match_function": "2e4ziObu", "match_function_override": {"backfill_matches": "IfOrRSXa", "hydration": ["cppJt3JL", "lQe2lafy", "o0mMICaV"], "make_matches": "ZifAnrEf", "stat_codes": ["dJpVH9pF", "VnSbqI0p", "x0mA9dg6"], "validation": ["oCQbeuuI", "MKY9H0gG", "gc6v2c40"]}, "rule_set": "J967Ae3S", "session_template": "GwOX4Iuk", "ticket_expiration_seconds": 57}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'yI9uuiXW' \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"872VS4Z5": {}, "m8yMEoJR": {}, "a9phGM0U": {}}, "latencies": {"IO1pQwVT": 78, "4eNl2FLn": 81, "EUq1tFB2": 33}, "matchPool": "Ja4ehdCC", "sessionID": "c9oc6Xad"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'xlvyC2Mk' \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'sWt8anYp' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchTicket' test.out

#- 18 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 18 'RuleSetList' test.out

#- 19 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": "bEUdsEFw", "name": "jDMeDHiZ"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'gDp2zLvz' \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ZYZDL7e1' \
    --body '{"data": "Qks99Wh7"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'VVXD0j9l' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRuleSet' test.out

#- 23 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 23 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE