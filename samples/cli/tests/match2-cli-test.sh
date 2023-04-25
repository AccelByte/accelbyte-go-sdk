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
    --body '{"matchPool": "RvQldzbD4AI8bvof", "sessionId": "392a0mSurgrK8uuj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'IvyQsypkUMckR3KG' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'oaodmWJpEm8ofhm5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'JcOsXcwBBSqRCKRd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'kqWQCvO3PdB7xd78' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "WskhQKBCZHNQj9dB", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'o16YNqcAyMfmpXxk' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "6c5fTT6SPeI6U8d9", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "DqrV6OWycBMxzQoT", "url": "vHRnxE1QKzzf0189"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'ykjkFEzChEJd33Fw' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "D3uhmIOnPCRYWlKb", "url": "WNAITzMKoDxmKojI"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '59wQ6umaz7OIF62K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 4, "backfill_ticket_expiration_seconds": 95, "match_function": "mn9Zub1ZSNhNHBqT", "match_function_override": {"backfill_matches": "1lhD4lUrZTey2VG9", "enrichment": ["sTd30umQQkqhAKXn", "QysRdslO0Yz7Lxuf", "OIpllF25bMnisFO1"], "make_matches": "Iu2WNMfTNg8eIBRS", "stat_codes": ["Zc0YkijCnICHkV9g", "DOhLknnMBNeHSU5A", "0O1CCpqPHn1t3mdD"], "validation": ["9Ird5R7nxgWlEeNj", "TeXoV6MpE4P6UdY1", "LNaXVlQnu0AFjOXg"]}, "name": "DTOEHOP1k04bK8ik", "rule_set": "h8n7oK0uSlA2IQC4", "session_template": "a6mg2l1xRoijllgb", "ticket_expiration_seconds": 70}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'K7SmALlB5RrrN6CK' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'qAf9XaRjxVaN3thq' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 14, "backfill_ticket_expiration_seconds": 56, "match_function": "aC7M9Z7JsqhyKQrI", "match_function_override": {"backfill_matches": "VMauvZIc8EyihauT", "enrichment": ["YjL6UZaexHllHupL", "jIkp0l7pkVPXdhPc", "nYAH1z5iXSIxrIIL"], "make_matches": "UmTjcJrGwf81BScv", "stat_codes": ["u0GUiIfArdgQTN5m", "08PQpmYR24KQtt5p", "Pzr9dHILcAN3jtlp"], "validation": ["Fbs5xTJLeQr1XVey", "3fzRCsCt00hqVTwv", "c8W3jxqn6OloJSKQ"]}, "rule_set": "LKH9aIQOxFjGY7Y8", "session_template": "NGp1KUTK74IzZw42", "ticket_expiration_seconds": 4}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'FNoc9X8sUQoKVYZD' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'S7WzHR9stQU3eevt' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'w1deTDrremowGAXa' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"n2aGmxPhVOOTOV5m": {}, "FQIBnZw2Y1NJnNiT": {}, "5wxCqlzZL2ReZvFg": {}}, "latencies": {"U0j7gOvze8GDBn1j": 62, "6W5rQiUn9Rx9hztg": 96, "YvrCoHp2grWya3Jl": 48}, "matchPool": "GgI4K4xUBIEiX9vB", "sessionID": "3cJjCjbmsrLEaEWF"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'zFM9X3PfvyrroR88' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'RZuOBQjl0lgO6ypV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"vVw4nfGukyOV3qHB": {}, "uwcqFYrhoCFacTPk": {}, "xdlyCIS4GSybUj00": {}}, "enable_custom_match_function": true, "name": "nnCtqimYyLOC6ySR"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'sTAnWG69myLXh2Vd' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'zwBImruy9zAQSBIw' \
    --body '{"data": {"6Eeq6dgCAc7RZCYD": {}, "lkMYF7BSrOnG0Dzg": {}, "naYFOBs8AuU6CBiL": {}}, "enable_custom_match_function": false, "name": "8iY9zDvVSWwNUfnL"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '6Y1jxrvgcZqommLQ' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE