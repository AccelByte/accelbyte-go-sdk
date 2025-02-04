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
echo "1..39"

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
    --body '{"logLevel": "trace"}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["KTJMVW9C6bdObZV6", "85zK8gu7lkvuJvqQ", "RBbhr56dVaOwlwB6"], "matchAnyCommon": true, "platformGroup": {"WIgL5J5P5XRmdaMu": ["U2KTRDjplkfHGTbw", "4TudC0IwKdq2T4se", "alwBPk0pd58IgbOX"], "PXORsF0obkEyPSp3": ["ZdruFFSbx53AzdYa", "8Iim0HFg5FvAGEWt", "yrYehV9WKSQWkknR"], "VXmefSdLfsdO0GPD": ["nvFxpJhS6tFy2D3P", "7Yxi9bYyTyrRQ6SK", "VVMFaLYBBd2RKOen"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "m56zgvBs5xZCWcw5", "sessionId": "kZjGhea41UZX9WjG"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'n0L3TbUx4HFhhTNv' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'QZd55IJjx0o5EvsQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'mncNqgPbjMHsCls5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'cfkeXpP21T4OaP3o' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["hnhyym3ihGazTPSJ", "D9hgEFsziM98JWQA", "JZS7XBNvQkeajGpp"], "proposalId": "ELMUcnNH07EsrWou", "stop": false}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'h6YzCQ9VPckuPpyn' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "78BzbR9hCLlqeLne", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "UTd65EquAAWae4F6", "serviceAppName": "uEmQkmEDg5D4SwK8", "url": "fvNMgNiaShy9xInJ"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'aPvgEjSRmcz6LbjO' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "niI2P8iBS7t9MWHs", "serviceAppName": "oO4LscW8T0KPxB1P", "url": "Po1lLs69yRkbjWCW"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'krtWHIsVwJlnWWDM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'KCbJkGfQPfkSsymW' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 38, "backfill_ticket_expiration_seconds": 62, "best_latency_calculation_method": "EibgdPMIGToy3W09", "crossplay_disabled": true, "match_function": "5GYkHorPefObY7fH", "match_function_override": {"backfill_matches": "La4CTppnSn6fx98i", "enrichment": ["jBJxMHPGCcJTGr1z", "PB8KXhgZMgId3DWu", "7U6BmA8tJXfzUPSG"], "make_matches": "lCVeYGdR0lZgsTNt", "stat_codes": ["NahiXhv9HnjAIRPf", "mDUOZeNhvO9QkVMf", "vQDWweNj8gqr9zrX"], "validation": ["D2amHqUk5lqpBQDs", "HAWHs3n5Yg8PCIYV", "rZvjMuzWiU1oeOG0"]}, "name": "hDpWK4CDaTuaaxCA", "platform_group_enabled": false, "rule_set": "7sHRzSi3KZL1KeJH", "session_template": "MsNN2TzqJAN8OeU8", "ticket_expiration_seconds": 62}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'qU5xBsXxUnjrTCTF' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'lpnqZZiVrV6PPJA3' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 51, "backfill_ticket_expiration_seconds": 76, "best_latency_calculation_method": "dUNS7COboLwfPACY", "crossplay_disabled": true, "match_function": "egcbsLgMWPYdD49T", "match_function_override": {"backfill_matches": "ElNVZru6fDEP3gpl", "enrichment": ["ss9Blix6JWlRmL2O", "YWn7Q9AseE9bVjH2", "lkCXbg6N0uV7Xnq4"], "make_matches": "HMEjhuyHYTtWVnpF", "stat_codes": ["MKLHaLp187TzLzxl", "pvbqX3S6FIGgyZqJ", "G7EjuuQYmSRiVJ0t"], "validation": ["nAS0A5FuBrVKK4gX", "BDzGz0F14Zx47KbY", "r22hC30imJECTXJZ"]}, "platform_group_enabled": false, "rule_set": "UKpAELMWWjPbLPmJ", "session_template": "qzKFSpJlF7JwVtIT", "ticket_expiration_seconds": 98}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '4OpoupUSJGbJQz44' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '0JpWPqgiND2XcZ9D' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'qmNBAU0YmijZu51k' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 26 'PostMatchErrorMetric' test.out

#- 27 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'P37fgz8yvv5vlisW' \
    > test.out 2>&1
eval_tap $? 27 'GetPlayerMetric' test.out

#- 28 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'rm9W71bR1Osjzux2' \
    --limit '39' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetMatchPoolTickets' test.out

#- 29 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"f9M9UnsE4rFKcy60": {}, "ltfZUXmqbDbqhCG8": {}, "pPaetnMPaTzIPBSR": {}}, "excludedSessions": ["F2bmCXNwRIW7GmuO", "uhlPOzngbYsVxr4a", "6bYJC7TOvV7lnsSc"], "latencies": {"zjKtf49ptEJ3kYTB": 55, "DQFRwsxZbSCJFDPs": 56, "zpZPmdjoXO12PXdH": 17}, "matchPool": "xgKv3I7Rn2Hl8UJl", "sessionID": "t6Ivh3GJaPmuL9Qd", "storage": {"4yt8kWC2FGrj8Kwh": {}, "yzv6H53Vye5hapvb": {}, "lCwEShQIIuKOcira": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateMatchTicket' test.out

#- 30 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --matchPool 'qGgXnxvUGWOPs6kD' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 30 'GetMyMatchTickets' test.out

#- 31 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'R9NK9wYYwwJ3sbiv' \
    > test.out 2>&1
eval_tap $? 31 'MatchTicketDetails' test.out

#- 32 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'Y55Q8Ja4WGw3ymjJ' \
    > test.out 2>&1
eval_tap $? 32 'DeleteMatchTicket' test.out

#- 33 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'ruE7x9bykqCqEqgt' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 33 'RuleSetList' test.out

#- 34 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"1CKNlqyGOI1lUqI3": {}, "Zs7SSQgUET3A9oXH": {}, "Mi8CvJTw21qmu8t5": {}}, "enable_custom_match_function": true, "name": "nqPiTWORS5AgMBXU"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateRuleSet' test.out

#- 35 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'mpMlQ1ItVhBuPtV6' \
    > test.out 2>&1
eval_tap $? 35 'RuleSetDetails' test.out

#- 36 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'uQt1m9ZuE1q9qvAe' \
    --body '{"data": {"R6keX055Fpae2xnh": {}, "vY64aPYbs2qvzQwT": {}, "ItzgxCLUE9ihbEP9": {}}, "enable_custom_match_function": false, "name": "uwS2lGTih6BLc20x"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateRuleSet' test.out

#- 37 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'oxSFdxvRlO3gQwXO' \
    > test.out 2>&1
eval_tap $? 37 'DeleteRuleSet' test.out

#- 38 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '8ZGxGMNdfbLDxCss' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerMetric' test.out

#- 39 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE