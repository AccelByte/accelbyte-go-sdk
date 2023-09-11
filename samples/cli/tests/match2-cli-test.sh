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
    --body '{"matchPool": "9hjUvSYF18okCKPu", "sessionId": "Vajp2smcPLvSvbLi"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'GyHNM5X6v7sp5nEE' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'DYOq6VVyWVyvNzfW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'TE2E9XnC6N9BD5Xw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'j5emCE0tjDGP7MHN' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "QG5w5pIe01ZiAh48", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID '0gWP03O8YMNee10o' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "TZxuSNT9uQa86G5L", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "KqpeACDTsnJ5XB0Z", "serviceAppName": "zWUoCmGwHGLFhYx2", "url": "YQMnYqWOTEe6byez"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'FiTzSAz08aKbWaWZ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ECTfRFZvY6k1Yri7", "serviceAppName": "5xvsWGm3Mo9qbd27", "url": "KxyqJkizaNK1RxF8"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'XVyNE7h8x0UTN9De' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name '3zftqWqw1QD7MC0z' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 30, "backfill_ticket_expiration_seconds": 93, "match_function": "paI2XJWAiO4q86zR", "match_function_override": {"backfill_matches": "03GMXmE26zoSWMkr", "enrichment": ["PfHT7ZHwgsW33ZuT", "tqqgIaL0DzKuxNWL", "d1pYC3gJC7MAdDot"], "make_matches": "QrDKyXt8nu5bfcFn", "stat_codes": ["EPzemxJTHcD8G2mf", "wVcT3jycZhVPujzy", "qjbM8qck3vbsB0kL"], "validation": ["grtYtuoGSdLCmvc9", "5Gjpq6dU4lkuOrVw", "1sBKfZkN1za0Mle5"]}, "name": "9RjX8FDZVEum5bmc", "rule_set": "IYTzbRH7xQ2VoU6k", "session_template": "2ChYnXwdYDB4tUSO", "ticket_expiration_seconds": 85}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'h7uLx6pfGGMBuWlT' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'TiFiqhWRhxgdMTeJ' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 59, "backfill_ticket_expiration_seconds": 95, "match_function": "QL7EqDzcM5MzXo5v", "match_function_override": {"backfill_matches": "OnLufT7mpxc1VMiy", "enrichment": ["n4K2N7kS2ll5AtVh", "4JGDmSkqlIEdvjvt", "ivzgrSeuVgW1klVY"], "make_matches": "tf374dWW7iiHmQaT", "stat_codes": ["oCe9NV2GT81YK20G", "SeaSgnTuJVS55bCd", "RsAoBPcHAdBFo1yG"], "validation": ["lUWtcKaajK3AMpvb", "uN1PJKmDmYCsaFtk", "LBMQY1VZYe7bQTIG"]}, "rule_set": "QJk6AbFDEHPKPagO", "session_template": "kctbwTsRh0x1K57G", "ticket_expiration_seconds": 72}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '3iXVLAoug5sT6jRY' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'BXEsay8ibUIIAlkh' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'HVqt4c9zR3Dfx9bU' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"O2m2sD0Q9gnoP2IT": {}, "chxaOBFeF9F0hRsw": {}, "mHARdTDR1Mqgt1ub": {}}, "latencies": {"v5zQMv0LYEqV8z8D": 85, "4500n1J6GYIHO3wc": 76, "ZiQVIxTRlBoXVAAL": 62}, "matchPool": "Uh16rc5B79NP05gK", "sessionID": "lRIKh3am2GdUMfei"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --matchPool 'nbsS5FayrT2h0yvr' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'i9Rv2H1d3THJLHsb' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'QV1Ab0y8HWnXg1ma' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'g14ABEFatdt34IjY' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"EWW4pcZMFRoAExCa": {}, "5u1XjdrJvWn8JtJD": {}, "7fBNi3Oyc01UgpOF": {}}, "enable_custom_match_function": true, "name": "6U5DVnb6JsHqr6Es"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'uWBPrcWgaKH80SOB' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'NGWofHmVhhVNvepV' \
    --body '{"data": {"iAGKdLPpVkF8Bx4s": {}, "qRYtZPukYp8Y4D3m": {}, "Yn7ZkSgB32HTN0YF": {}}, "enable_custom_match_function": true, "name": "hLmu6kTolc9skoxG"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'qRCiRAiJEdIaUygL' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE