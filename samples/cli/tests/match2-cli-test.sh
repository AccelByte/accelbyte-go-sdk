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
echo "1..29"

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
    --body '{"matchPool": "wdouVSKyvhYS7AQn", "sessionId": "jw0OQpq8Ht0gUiKO"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'P0oZ2E3SiZQlGvql' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'RCLxpmu0SzrzGXBf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'JfZzi2jClMryKjdF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'ibzVxpOSmH3mNaAg' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "J5kIrDsARX5ThZYx", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '8RQ96jNpQAG0uLzn' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "XiXztoJ47sfsGVCF", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "AHhEaEj17K8OlYH5", "serviceAppName": "v6ysD0owGYvAI2Gv", "url": "QAAJwkXJINlG0aEN"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'DtzCvoDu1IdZUKyw' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "LcQqO4kCwR9C5BUf", "serviceAppName": "1gLZY9PjmbOsY108", "url": "DSwkz2oHBIUCrKJa"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'QpF24llCFT1pYvoB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'Mv1kmdPmFmX7Mdle' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 22, "backfill_ticket_expiration_seconds": 25, "match_function": "HY2C7qKzkY5qMO40", "match_function_override": {"backfill_matches": "ULNYyG4nq9Y8EqD1", "enrichment": ["txFw5StJkrKvvV4T", "GmSxhiov94jy7HYD", "1O0YSz1XVcmkxjD5"], "make_matches": "mKveXTNkwpicBEHr", "stat_codes": ["MjPG7JgDt9qa1LWH", "sBnzc0Vi9h1TZyMv", "ngltIVsSXosvPNiP"], "validation": ["MZXJnrk6hGX0YUjk", "oTxWdyQjwMWxGenf", "bf2MzqFYd8E2qvhA"]}, "name": "r3ifuImhDkcTGPV3", "rule_set": "gKOuO1qbYr92IlYb", "session_template": "or27rPDVb1ZExUhV", "ticket_expiration_seconds": 71}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'vP36gy7STTTTgA6f' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ishAaQd8n6CitTd3' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 86, "backfill_ticket_expiration_seconds": 42, "match_function": "CT2b1CiFYhdJbzpd", "match_function_override": {"backfill_matches": "q80hrNMmKvrsLCo2", "enrichment": ["lFYaDlnAndjp3pLP", "yzLuR3crN4qkJYVW", "VKY5j6XCGFRED7us"], "make_matches": "fUPmzR66PSCnLGTH", "stat_codes": ["TYiM5hCspvIgNOPW", "5ugGCsS9XBtQY1xd", "Kbzes8fzV4Usx8jI"], "validation": ["pYj5MdiosrWXdKy1", "Hdh049rSGCr1s3DO", "Ww9JdpyLG37tMAzw"]}, "rule_set": "ZRQXPlEXgXaONyUL", "session_template": "JerzXFaxqKwqlYj5", "ticket_expiration_seconds": 0}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'R11VV8iBVdU5cbLu' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '3BmZji5QZIHd8en0' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'qM4m2HkztuKafgxP' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"frdvNAHDWM1l9WPz": {}, "xY3jtP9pnblYxMyb": {}, "1IxoVPDAK3KeRLAm": {}}, "latencies": {"s4EDb0J89MM2onUS": 56, "38nhUsS4XV8NnDBR": 12, "XtoaC5TQJ2QElH8g": 60}, "matchPool": "vOwoHVcnvquYNC8b", "sessionID": "aCodTu7XIf22rOTe"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'V0PbC3Oc13QFuYqA' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'K6myuKh2Kmt6sHzl' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'TX0pPYobdtR2NjCV' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"VljKCnHie5WYckkW": {}, "gleHUi2O5znPkmbw": {}, "vZVFS1Ar2tzLW94h": {}}, "enable_custom_match_function": true, "name": "iL5RvUeodGU5BfhW"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'qxnWvE7yoC6f91Mi' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'mcK3bae0yR3qbAmn' \
    --body '{"data": {"abEyhO9eeFW3mCcs": {}, "dYcy6ZqaDujz0HIE": {}, "Wl0X0dt99j0Tcwr9": {}}, "enable_custom_match_function": true, "name": "H7tceb7ajgW5rtcR"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'e7uGnypcE9RkmDI9' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE