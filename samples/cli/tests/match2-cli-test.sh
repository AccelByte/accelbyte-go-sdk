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
echo "1..35"

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

#- 4 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAllConfigV1' test.out

#- 5 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigV1' test.out

#- 6 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"platformGroup": {"v9IjCrHtUncxljfE": ["bUUCo6yvGP9EFMSI", "ACMQOmOQrxQdM8ve", "R3KghWXrXYamDU6o"], "pRiGHOwtSYNfdqHD": ["PDseF5BclJyJ5raZ", "so658gQbCUMXkhze", "9rnybiVnT54ouHvy"], "dOWjmTG5bZbDxQof": ["8kVOwE5R7h7UstTk", "ylzBIplLGErLXIRf", "Zp8a3FzFGfQibgQw"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "rqb39dS3uL9WOEyY", "sessionId": "ckN8oXVD2zrKkX01"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'HbTIEehU0No8kFwB' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'Ubsm0z5pV9Il85Ss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'pFUUFYW2kdNk4sCH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'RLlOcBjww602O4K3' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "uQVUiVz12WBxS9fu", "stop": false}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '3dVPnw8DG6nFmeLn' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "ily9J8jbfxPPdMwk", "stop": false}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "g9HdGto61hIZ0rkc", "serviceAppName": "ErZ04Yu7jWWn6oKw", "url": "vkouB6Xc6D0ktZYw"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'nnemo7izz5QHmVZP' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "GICSr2GXwwGOz3qx", "serviceAppName": "sUNMEnN2DkEXzDKj", "url": "KvNjm10V6eKFCjlt"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'dZuaQyofjYhnUiTo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --name 'MFzPfV1uXdgLnWXN' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 14, "backfill_ticket_expiration_seconds": 26, "crossplay_disabled": false, "match_function": "zY0Ql4pl9VeNux7e", "match_function_override": {"backfill_matches": "LMuB5PkQ3WJlD0xP", "enrichment": ["KmwzJJQNpI2xqCwc", "17qzjoJB5285KSzj", "oNgdCdTo7YxaDY3c"], "make_matches": "OQKBo8ZlK7LJOMxD", "stat_codes": ["nznKN0IlHiwGPIdc", "mAvv5O9TSTcuZrKp", "Rq1UrCiT59YrS11L"], "validation": ["NFyK60NURJ5EjBtw", "jvWzIjgMq8OSTM5D", "uM1Y8A1j1NX6aJqA"]}, "name": "6Tu8h8RcTrfcuPb0", "platform_group_enabled": true, "rule_set": "f7YkFjhJvJshOGDz", "session_template": "zXYtij5NcfbqOWiE", "ticket_expiration_seconds": 33}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'AapKckYMF49wl8SV' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Eu6XjeM8nBec0qfl' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 43, "backfill_ticket_expiration_seconds": 40, "crossplay_disabled": false, "match_function": "J330s1PUQbHFDHan", "match_function_override": {"backfill_matches": "snc4dWjlX2L4MALZ", "enrichment": ["bE0aropT0cr4Sckg", "4BnzrKDqPlmhLqmA", "YbQLWXsktBdBUekC"], "make_matches": "K289Uu45RBZws9vT", "stat_codes": ["BDmOyPGWtYsi9kMS", "hg38hOYtJPa5KhN3", "rEKnGHlt9O4j4RTH"], "validation": ["zR0Ii0esCjv0mPzA", "p0lrIonQAMFkmGEn", "kfyk5YtTaE8AswHh"]}, "platform_group_enabled": false, "rule_set": "yVuhJ9TUh1JgpdAY", "session_template": "sWZLFyIVfQexwJrZ", "ticket_expiration_seconds": 84}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'nCm9Xpbs64MWkOWN' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'I8e2F15F7NCJbZvc' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 's2ws0MtkmLDSWjHs' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'mRi8ZKFeqEpY8Nmw' \
    --limit '29' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"UrQ5QI4y7QZzyW0y": {}, "42kHB6jcLtaE8ost": {}, "n0pK7spIYECAkEkc": {}}, "latencies": {"yUCJT8O5O6jFqFkq": 9, "otlFUSJmNFJbqvjg": 24, "TVFKE7OJyrFKWYml": 0}, "matchPool": "BjSJiOuOciB0sn5T", "sessionID": "SbiEmzQyWI6yz6V3"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --matchPool 'w6yEAUuRZWVttun5' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'B2jOgxY07spXCHKR' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'i67kY6oWqwnFWi2S' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name 'Ilv33n7PCtnCQ1d0' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"jUkdgc2XYRpy1nii": {}, "sB5JnQtNNRXJXiFg": {}, "30pPhHnklMi1zVR4": {}}, "enable_custom_match_function": true, "name": "FzXrpkQWbvzuStNk"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'hwJPBEkFkpkK9wl0' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'BKKHhkJAKYX69Mz4' \
    --body '{"data": {"qgWaMYVdhmZUqHNB": {}, "7SScUByOx6m6C8SU": {}, "41CJY72Wy6P5BV9D": {}}, "enable_custom_match_function": false, "name": "O97hwNIc5RTgQKk1"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ykSVMzeGJTXgHuP2' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE