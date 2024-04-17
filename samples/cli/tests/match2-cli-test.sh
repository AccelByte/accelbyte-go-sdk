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
    --body '{"platformGroup": {"VbCNpvA6XHMOtnVj": ["ObBYaq8zRvTvNIGB", "NNkFtMamGTB3ng3R", "3q2JYLFQz5To1ZTu"], "v2ZpuwOfzSQUfd2D": ["aUiq0xyAzaX16BBc", "cvSaHm3wkLyJfYx8", "9UuBaZ8pPHM1wAcx"], "zCAI6bL9mXPr0e14": ["CJzPUFexBTJFfts1", "tZXwaU0SWlcgY7Zr", "AMdYgPxmObKHkvPX"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "febRZVxaRghmqaLJ", "sessionId": "nBljW4XVwLmJhy9S"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'TCuaXwFOHWwOo6cO' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'gAZXvppKvAM3LYhS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'rqKdLLR1WfDWtVnB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'mttPR9LraIE8AS4T' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "bSDVDfoFGEIVfHso", "stop": false}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'iDvUtJIiHWI1z4fw' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "JPgCaQTDZNJ6xbxF", "stop": true}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "fKrxfrFIrDIwuw6L", "serviceAppName": "Eq1DhH313GWf77K2", "url": "PkZj0Dhjpe7hA6br"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'nm970Dt9XlzUfSqL' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "52GwWDurPXUt2BH7", "serviceAppName": "O8SkrDZ3mZ9DnjHb", "url": "vSSUvTrI7UjLivmh"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'xGSuX59OprbCxMA9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'IVbRh18VoSJ3ZtpT' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 70, "backfill_ticket_expiration_seconds": 22, "crossplay_disabled": false, "match_function": "RctpHGcwrdmmVOko", "match_function_override": {"backfill_matches": "8btB8hozID3VXGJF", "enrichment": ["frdvUhfL7EknaTfA", "LUH1UAd69R5Gybl4", "jSBAOLKyEv2WEIgM"], "make_matches": "PyblJjm0jcWXsQCq", "stat_codes": ["UkK3cYmNe14AKSIQ", "OHcra7dKiQMWdDL2", "vBkGYyR5yeqBUGQ4"], "validation": ["4cGM7soJN9VUipv9", "vIFfB3dil82cjBEH", "n2sERkLp2sOoqNM1"]}, "name": "TMzBO1h60AtMybO0", "platfrom_group_enabled": false, "rule_set": "BC4S0VGlOuuCA0Ir", "session_template": "i9sWFTEaH5pGscoT", "ticket_expiration_seconds": 51}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '87i4Ri3ssn77O8bZ' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'HpdY9qNKKJaeRZH7' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 72, "backfill_ticket_expiration_seconds": 86, "crossplay_disabled": false, "match_function": "DEeNiBpgV5aRUgkD", "match_function_override": {"backfill_matches": "NjRFkiXcGmovxEzY", "enrichment": ["VudIqwdGILuAHGji", "wJ9eNnJTQbD0AnK7", "wZkjGeUdUGSeEoFY"], "make_matches": "d7TlrwCtOLpq7YJV", "stat_codes": ["GjllVR2fzoErSvTO", "hRuVRWVEiqCuUJdL", "2yoR4gLsC3bEQ3Pn"], "validation": ["QQb6YwrOq0CgfXJp", "UYeTv1wEVaKBChpq", "HCsuKjmGFwCJ1Bch"]}, "platfrom_group_enabled": true, "rule_set": "3ZQrvmzy1HLiPBFW", "session_template": "3zIXQjXhxO9W7SBl", "ticket_expiration_seconds": 70}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'm9eq1nUc4t16uAnW' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ocPt8WbQPsnd4i3s' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '67mR9AkKU2TH2brJ' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'XH9mVKshw3TJOdV1' \
    --limit '11' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"FUtOobDz4iNSff8c": {}, "wg6zOwDhRIAiaIou": {}, "uqHOgWwhsD1pUvmj": {}}, "latencies": {"1hpcjh4CufxtyzbH": 46, "ARIVo2eNHZzsGeWV": 6, "hnq34S0VOnnSJClt": 52}, "matchPool": "pnRxdMqi0Ng2hWtf", "sessionID": "h6WVGFs9NR95rJsr"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --matchPool '6Ob4PPaESJwkR930' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'cJXY9KmQ3hPy6QVg' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'ourYVEPtCcR4sjgG' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'b3wSHxxuyHFWbi1r' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"ae6BrTmK6kLUbswo": {}, "illbdeeBnGPchXKD": {}, "BmqtOlthlRNKeTLI": {}}, "enable_custom_match_function": false, "name": "LqTcczXw9YzASCsJ"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'km9exW7ptlrTa2DY' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '4mVH9Rk4tvcI2eIe' \
    --body '{"data": {"5PELAGcV01cpbSHO": {}, "IjCHBxGJnQ0m4HNP": {}, "JZG4Dr359GuLADzk": {}}, "enable_custom_match_function": false, "name": "nCnq9lTaHAFNcfjI"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '7zjGvMfrNAJ1PGHG' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE