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
echo "1..38"

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
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["sWHpjV77zXRPA8RH", "8wh95zyr1dERo6y7", "jUgetVmjqM84G4N5"], "matchAnyCommon": false, "platformGroup": {"sJylgGTqiKK93L2X": ["27keyCK7OPpui9yC", "bgRuVLcUXoRvUTja", "91KOKCCyzA6vOEpt"], "YwtEc6cJNso3BO4m": ["KsJa7e7h5mYy65Hg", "j9lIa8GxJxpd0CXv", "OLu1y7nzThnpJLRg"], "HpMkXsMrqWWhkQqa": ["XGuDMSd57fEjWYB3", "TxgWXdv7XTW1DdYp", "SkxZG32XOIIcIZuG"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "W05kLxriE0rr81xS", "sessionId": "McodlbpkzbeY0xeZ"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '3SCIbPbEuUblzEgt' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'F3M4aveoIExQivGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'fPoclocQTMXRJjbe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'pVsvxigYIM9mwGBI' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["XSdjocPKapH3EVMf", "tkmwOSjCtXokZIGT", "ajB8Ccx98If8wwsV"], "proposalId": "qFuECDzqf4zlXvq8", "stop": true}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'bajZWksHKcKQqgcM' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "v7CVUqlkPfmXzGni", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "UEJ9lhzlqW9u12w5", "serviceAppName": "R0tmeKyJIQOaJTQs", "url": "lQeZFvgDCmrh0BV5"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'YAgYRuX9jonQRKNw' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "8afR7UAxd5MAVQSn", "serviceAppName": "iYhsDZQnW5R9vQKM", "url": "epVhEkEzJtZCHBEC"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'rDHaHBAJSNRWmRUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'k3kJwxqCV6fskU9z' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 96, "backfill_ticket_expiration_seconds": 90, "best_latency_calculation_method": "y6RW3uKWwSUXeTr8", "crossplay_disabled": false, "match_function": "VG8zEPYuUvuwzKc1", "match_function_override": {"backfill_matches": "aAcF6w2mx2oMcySu", "enrichment": ["iqrDDOFcLPt18d6R", "btQrT9KjWIy7HO4g", "qiYStlvp4LvCybiJ"], "make_matches": "FBXiVYWBWVCNoEa9", "stat_codes": ["yWNLxvsGegBQ7F6h", "iOTKMnizQTKB1Im8", "cjXcciMrmqkfwHGv"], "validation": ["Tt7YNmGTUBlERTO6", "chHKiIb2faio4tqD", "IjXz0CiqQxz8Tdoi"]}, "name": "supBFWZuhOJTcglK", "platform_group_enabled": true, "rule_set": "TTbPYy3jgtM7sPnh", "session_template": "ZBfiQCxvu6C1ZF5R", "ticket_expiration_seconds": 54}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'yKZkU1WbNelY1mkV' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'KI3dxqcdDHsp3dm5' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 0, "backfill_ticket_expiration_seconds": 0, "best_latency_calculation_method": "L52o21KwdJCEVoPM", "crossplay_disabled": true, "match_function": "f5qLbxBOSVsS6B3z", "match_function_override": {"backfill_matches": "tk5FVZJ8CU0S5ft9", "enrichment": ["qqGZj7o7lAgLLfLP", "C5yxziRIwKShZ18d", "1aeVzMqLVYYVsBK0"], "make_matches": "XCPK4BCdJq3fh8y3", "stat_codes": ["736vQz3IG2p5UBXs", "Y4Mt1ClfqTzPW2dN", "TmLN7JLrRxlqf5wi"], "validation": ["4ZveANxzgdsudmB2", "FNpG9DR9nfb47zG8", "tQtuMLwG7AfSXyJL"]}, "platform_group_enabled": true, "rule_set": "LretVEsfua9ojmyY", "session_template": "Dqz9zvHkwARhpkRC", "ticket_expiration_seconds": 22}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'jKHMXOxwzZe7ynfL' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '2TtMLeiqD06m9wbT' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'scg822Eow0Zdsgbk' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'lDDgMagKGNdPcbff' \
    --limit '85' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Uu0gXGWkWej4X812": {}, "ZoU6zTM89UES1thc": {}, "op5R0RopUCe3SiYU": {}}, "excludedSessions": ["U47KceWbuVfm5BXk", "bELrFU27In9hVNst", "NifTaQfldb2mruiw"], "latencies": {"Y2M1KiPn5vG4DzSb": 16, "3vxAVtAfzw8wFk8t": 25, "Sy3jri6lpohNi5ar": 98}, "matchPool": "i2ts9ETFWGDrlxMu", "sessionID": "umYpocdjrgatviiw", "storage": {"3tjrcKJtCxT03mrx": {}, "8cukFXrTcXbEs8gR": {}, "zk6cMWUXrQakeHh9": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --matchPool 'X0yfRfZUH85gG3Cj' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'LbIJnHwXheANdUo4' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'MXSMcPKkqywlXDpu' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --name 'DzBLkvZ5o4igtNh4' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"2kgHET4ULk0BBdMv": {}, "Uz98kx1mtVy7nfjC": {}, "hZn4LtbkorvLrtZ9": {}}, "enable_custom_match_function": false, "name": "sjJmndilBUB0EXUv"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'jWVbRUsTeTfTkFIE' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '07qkss1m6NXzjJ4r' \
    --body '{"data": {"Kf7bEidAl002jpOM": {}, "z5K7CQVVYiUmGvbE": {}, "FBCHl8TfJBMEjUsE": {}}, "enable_custom_match_function": false, "name": "VyN5kzrUokeQPhgf"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'QVE3H0aPXLkTg1jP' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'UnIDvcJdHqMWoNRU' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPlayerMetric' test.out

#- 38 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 38 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE