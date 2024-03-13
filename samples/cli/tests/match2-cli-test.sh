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
    --body '{"matchPool": "qOM5HkvxqbFQpAmj", "sessionId": "0wYY67ZWxI42fia3"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'tZuwiBR0o2Xb8kxC' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'VYavi6pVQnkhOFJ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'sBNQ1lB7rWTkpAWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '4KiSNyGRgQHOQSwp' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "oRFBd6Ppy9QpOHlT", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'YYvca4DpJ7ycX2JE' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "oWt7C8AJKUQhAogi", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "6gaAL6j2T9H7sZTP", "serviceAppName": "ZSqvC9zidSVqp2oo", "url": "tQrNRgxHDoyPibbz"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'jcFQDpt0jQRgrhLJ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "D0srUVbZFOY3NEMc", "serviceAppName": "vlM6gFmuHvNTqCNh", "url": "0c5YXE6Ay3UwvmvZ"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'j5p66XW6WJVyqxOe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'E7BvZUWd7rMEVTBB' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 78, "backfill_ticket_expiration_seconds": 76, "match_function": "rz1XvGOAO3LQtdgd", "match_function_override": {"backfill_matches": "XbNilz1orwcBygAD", "enrichment": ["92yTHijpKfvG8VTD", "z5VfCo9ZmOzDukFM", "w6olzByrbGVu4QFG"], "make_matches": "QWJzmqmjjBjgWxJB", "stat_codes": ["NgDo3iLLfAI4aHob", "CA5uMNXUymOEBgO6", "M6vzxELCYlWK5pAi"], "validation": ["wykwRWJYW4vx1bHu", "kxr22OrgQCY7tKAu", "YzUUwJesSncvmNbT"]}, "name": "1RlqZYOEVwSOOOgx", "rule_set": "4Qq2Vk8dFfPD8mrA", "session_template": "3B2yQ73njzivjNeG", "ticket_expiration_seconds": 93}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '792RLWVyTtasFZ7r' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Y0MwDFBVuCEhGvN3' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 89, "backfill_ticket_expiration_seconds": 67, "match_function": "8jUGUrSKpgvB9vXe", "match_function_override": {"backfill_matches": "CjRlo4iVFiFHrjuM", "enrichment": ["YOD9GYkxY10vFWEP", "nVcAK1a5INEjcARi", "1DmEvqxNVygJXhdx"], "make_matches": "rMjI7lGe8S3ELNY0", "stat_codes": ["MgO6zd01zf2ctQq4", "v3dnCJjnP4czd9zJ", "DvBWa2NU4azyh6tO"], "validation": ["y6wEx7lJPeA92boh", "0IdQXjzoQENcx0Rz", "IZgUVrjIcUprnfod"]}, "rule_set": "7sVQ1EXqcWII2D2S", "session_template": "etxT5Haks3Lg8SRb", "ticket_expiration_seconds": 39}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'OlO2qh4cNUm3wq88' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'jwn6hlbt9k1WIaU4' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ti7s3ghgQjmDmfZe' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '02QzFpMqHmyH23Ly' \
    --limit '17' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"97mSI6D6LtXyGGEO": {}, "Fmz93Un3vtbW59ac": {}, "7x9LUDTw0aOb9tgp": {}}, "latencies": {"gxJOnT4bzZ4yxzhS": 73, "SrE9fdDGUwyguPvM": 67, "MamSMnWOUcHB6cGV": 81}, "matchPool": "7k41stP4GTEhbJ9T", "sessionID": "FLu5q0HrrrETnynL"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --matchPool 'h4JFza6Z0wE3xbom' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'dY3ppb6rc6R07oIU' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'UEh4aYtN8nzsv7sW' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'rkNXELl2UNxb8IQb' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"MFutIQmBlmmCMHMt": {}, "gN6L5W2sKe4BrAg8": {}, "frfClXex5PBMyUyp": {}}, "enable_custom_match_function": false, "name": "xjkWh4QP5zrG5pvt"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '3myWuOnFl5VcSgDD' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'DTwryt4FASguMgIH' \
    --body '{"data": {"Q2Ncjb2GWyGfC5GY": {}, "pNKmU3KsUfemC8lw": {}, "yg9IJ7M30wg1FUk7": {}}, "enable_custom_match_function": false, "name": "BbDcGQwE5RAzjfnW"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'nvrwWhAEYZAZD653' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE