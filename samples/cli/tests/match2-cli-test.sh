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
echo "1..31"

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
    --body '{"matchPool": "KVR8NLUGKoz1o67f", "sessionId": "4Rp5vWp4lAJIxyrp"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'r732ETKfqyy7c01r' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'KR1dWQynuXotD3lv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'mjnNmiMOVv9Qr9Gy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'ENxa7tl4sKPNliZ8' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "sIYkdngaCNL8vTze", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'UmFvgQpzkTTOVcyp' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "BqoBVjGmLLkZXjYY", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "AREYvtV2uKgGaOMp", "serviceAppName": "Bt5sC6FqnckynZkG", "url": "39j0gQUnriyMyjDx"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'knkSwOHproqCLKNl' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "GrjomPuzBbjGrjKK", "serviceAppName": "wVm2UdsJ1ifAY4Ck", "url": "bdd84EjVriD2Hrbp"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'gE4xiWhrurIVejhs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'ZpFRgXDmFf15OW5U' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 50, "backfill_ticket_expiration_seconds": 92, "match_function": "RYEz88XRdg0Sn6ko", "match_function_override": {"backfill_matches": "P3Ej0PdcsjaLZXp9", "enrichment": ["Sbjfduf5wSCyuRa1", "Or0aBmOe6AWIRGzN", "iU6yHdpqozzfV5oQ"], "make_matches": "GQHS3fsPxViGkqjZ", "stat_codes": ["cem0CcuS7BemoHBv", "SzWcFar1cMaJ3ABj", "5Yi07dY5FTeYafqn"], "validation": ["sIw9sLixrONlCEVO", "eW4i4jJbj232vhx2", "4njUXRLFNCZLUkuZ"]}, "name": "2DfBBwTeqGmSvq66", "rule_set": "XKQlAqZ2jCANoOye", "session_template": "j2zMzdogkPV5cP6Q", "ticket_expiration_seconds": 28}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'q4i55jT0FvXBWheg' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Xjz5uSVjCPQrlh4W' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 14, "backfill_ticket_expiration_seconds": 98, "match_function": "tdoCcPuLJWBC0yLe", "match_function_override": {"backfill_matches": "WgXfneURsrpeMK24", "enrichment": ["XPdqmTXl4rrzpYXJ", "0mvn1vHXp1DfKTLB", "sKTHTR5o2HtQiHws"], "make_matches": "RolHuD4x3hRqJ1Hl", "stat_codes": ["J5njUgd522RER4aF", "TfVkTLVhdKdACKfg", "FmANImondx1H2mD3"], "validation": ["ZpS4OCL63wU0udIp", "9L4xf0mDo7KLBGUq", "LNnC1e80lIyw5jPw"]}, "rule_set": "tTmLzoBnXH6CqJIC", "session_template": "L6R2raaHdzL7KCQm", "ticket_expiration_seconds": 44}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'E1Jp4RxBbsHObSHK' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'yZojUhKiIezq5lC0' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'IsFS2puOcoMInhcf' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Poa0hGwqhJPUTIiO": {}, "v6YOVoCBCVhzzy4L": {}, "YHDvxCecJrW1T0tm": {}}, "latencies": {"sPmI0u1QSzmSYBFk": 55, "hTmEIF4O3ijMQoLP": 22, "hpM4aYsMJvcOQOuT": 39}, "matchPool": "2F0pnJGf7f1NWkps", "sessionID": "YG7yrFuTZn2kQQTB"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --matchPool 'KclMxA5SBtS9835M' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'x7brLM6HIVwPCiaz' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'FJxeh9ApXLU2cxCL' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name 'azLE7NmoVcpvGpP6' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"q40af3d3Yf2XK9HN": {}, "u7GT1HPctBpyGIbh": {}, "UXjjGDyAKIUECuN7": {}}, "enable_custom_match_function": false, "name": "ZRSqfdKuwJEbvAbv"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '48C8xJ1fIl6TesyJ' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'UPSUdVTBfXI6PVT5' \
    --body '{"data": {"JBHMF14MPIMJlTjd": {}, "QGIJwfilsdJX3iXQ": {}, "PM9M1fPHEyx4A8aG": {}}, "enable_custom_match_function": true, "name": "Gjb5FTY3vkRBghix"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'qrI664OYhAsRags2' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE