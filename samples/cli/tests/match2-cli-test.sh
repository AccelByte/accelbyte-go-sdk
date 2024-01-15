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
    --body '{"matchPool": "n28RfdohETQt0RKq", "sessionId": "UeeTa8yFKS3loB9n"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'mxEfngW5UkTcCh3U' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'ZjSCM24eR4Xlvxj4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '5s6jHwZRfCKy6fdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '2q4v7PumJbHTduyM' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "j4uuuCUIro1WQ5AY", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'A4mPF2UJWxsesdg8' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "nbtKZ0dz4YJZ5e2t", "stop": false}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "loL4g9Q3AgmSUyx6", "serviceAppName": "O6Yf9TbTUu5ZO4DQ", "url": "1H5pcfVWkTR10OMG"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '69zvMRVjIDBw0znb' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "Hke7qrc3RHspCa0g", "serviceAppName": "BCNUPzD8pqqfyJuE", "url": "WrxNw1SdF4WOmIb2"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'whKbGTUXfpTcjCLb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'rzBqF51lhweun4IO' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 90, "backfill_ticket_expiration_seconds": 85, "match_function": "W9lEN1n2DXPjO8U4", "match_function_override": {"backfill_matches": "WysWIMgvjTELVYQb", "enrichment": ["IbTL4ZojVQXBWorJ", "gcztanFxo95a9ohV", "fZh3btw6tfNv7aCo"], "make_matches": "IXpQSLs3GXl10Cz8", "stat_codes": ["zfykaPbKJaU7lmFk", "IgyrhfTkvzCDc7V3", "rdtd8aRZaIW8uhaE"], "validation": ["5l1i7tIJ710KjuVY", "H2PiF5fgwpBDYjF0", "5HsiWYo5oZBvjnYR"]}, "name": "9ZiFDV5dVFpQhycf", "rule_set": "6sEcUlraGDsJrW5h", "session_template": "ZZwsuGDwNcOnIu6Z", "ticket_expiration_seconds": 74}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'a4TBxVPp0PxGGsSR' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'lGBG4ecPEOQQdJy6' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 19, "backfill_ticket_expiration_seconds": 30, "match_function": "By3PxuPAN0nk8ZVK", "match_function_override": {"backfill_matches": "873iXcI1X9aqbBoT", "enrichment": ["lIr7XIs2Lb0IIH3a", "H58gVGn7wVISXIgi", "9LwMVLN2n7K9TYO1"], "make_matches": "7hJLWqIY88S3UyO3", "stat_codes": ["3eHB3E5FMUArXHk8", "0JR9Hsfi6ZcRQRp7", "nDGeHlHZUwe0fqJk"], "validation": ["y5gLsEZIgyjl28m7", "ZKMipPTiKRt7AUCp", "ljFpXiojaKx8rp6m"]}, "rule_set": "Cg4nabvsoqXxSJGG", "session_template": "d8PPsIW6DdWQEfZq", "ticket_expiration_seconds": 30}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'yaRTXVJC3fRxqvBd' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'wE4eHIAJbC4o5nTG' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'eGugCxtx5ySFmKTc' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'yfHYlPBptdJBW8GR' \
    --limit '82' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Q5C374NfxJquoXq4": {}, "FirGwo6VL0LdnYx3": {}, "lxHIvxQmzn7J2vwD": {}}, "latencies": {"ETwk0LnHYAV0oOj7": 12, "E3mIjdMUkN5Un1Fj": 87, "3frOfrhkWYwfuYoR": 85}, "matchPool": "SikPIPosUx3FGNgx", "sessionID": "TMFIBPYtnhiqffms"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --matchPool 'OTmmZbVlAKukEmq2' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'aqkX2VvBDA8JaMTK' \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'sLFKDVug1E9PiNjn' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'TdAsjaur5UHLl4sI' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"aMfzKQqmjnCWLDuf": {}, "C4ftiiU7zG2fY8WG": {}, "wfQSfsi0YzZ97SDZ": {}}, "enable_custom_match_function": false, "name": "ALrBRRDMRA11WcAV"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'xQO8KRwJbvJwBpXC' \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'QSuwUci322SWPHbj' \
    --body '{"data": {"qxKIHjencyd3IxM2": {}, "nPS0TuFtMZQHsdPz": {}, "hgZ3zhzQstpfx5Bx": {}}, "enable_custom_match_function": false, "name": "XHYq9HL1MFNMexFD"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'CMOEjulxIOs1byCh' \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE