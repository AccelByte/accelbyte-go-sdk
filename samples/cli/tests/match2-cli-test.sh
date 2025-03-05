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
echo "1..40"

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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["KVQ3g1M2bKwm3PpB", "l0fKrLB16M0yens0", "gKB68GgudxCyo2nX"], "matchAnyCommon": true, "platformGroup": {"9nY5pyEixENwk6k7": ["RPfjoORopbAwfF2u", "Ah9gH4r3voGXuHKo", "ZzUvbAHmi3nPDfhh"], "rmW5oOu034iVQcq2": ["zAzLcB1x4gthFYGK", "06RtwJmJdKFk63M5", "SDWNoDQJ4e0CvL2a"], "yztLxL8pmweKIOnH": ["pycHLirfN3Le2Oeg", "w8TrtlOZYaILMLL8", "gdvpmZYwSJW7asma"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1998-03-03T00:00:00Z' \
    --isActive 'true' \
    --limit '46' \
    --matchPool 'lUukfQV3fzs95bnD' \
    --offset '72' \
    --playerID '5ptkmqpNmEnsUHlP' \
    --region 'tAHPUJawQp1NPVa9' \
    --sessionID 'SQa1to8xOzSvK6Mg' \
    --toTime '1973-03-12T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryBackfill' test.out

#- 11 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "J7DRRCJpUevyqXId", "sessionId": "c6xZGMhJW90BygbA"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateBackfill' test.out

#- 12 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'HfS1y64gi5jqpofk' \
    > test.out 2>&1
eval_tap $? 12 'GetBackfillProposal' test.out

#- 13 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'AfF7I5rmRDvyFxTS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetBackfill' test.out

#- 14 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '1vOGLkRY4XzuwdHC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteBackfill' test.out

#- 15 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'bkfhpB20Ri8606po' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["9viof6fHFAJaoL4z", "dw71GS7vy5An24jc", "SwNhBxuVVpVsHhbx"], "proposalId": "hZqKUJK6yZxg3DyK", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'AcceptBackfill' test.out

#- 16 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'DhsqR5Gu4OOZ8gmM' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "cgnxEjXwDgNNrFvK", "stop": true}' \
    > test.out 2>&1
eval_tap $? 16 'RejectBackfill' test.out

#- 17 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 17 'MatchFunctionList' test.out

#- 18 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "DYf0Kb6tUPUm0mSc", "serviceAppName": "TIFi4XrCYjbR2YWH", "url": "XBNaKeDesNXbt1Sh"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchFunction' test.out

#- 19 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'CKhd9KeYGVz4LO2q' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ZXW7HLASSDYFpR23", "serviceAppName": "1dpdRs2yse8XuqIK", "url": "5tAUQu1a7FOiT5aV"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchFunction' test.out

#- 20 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'g0fRuCQcp39IUG6U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteMatchFunction' test.out

#- 21 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name '5cgj3nEaKpzsNfq8' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 21 'MatchPoolList' test.out

#- 22 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 57, "backfill_ticket_expiration_seconds": 88, "best_latency_calculation_method": "HISoZ59cnFvaT8zW", "crossplay_disabled": false, "match_function": "9RFXqfA2E6bPr1Rb", "match_function_override": {"backfill_matches": "GMGdrY3K0yfQa0SO", "enrichment": ["fmcpNpneLwQtt1R3", "YIVW8so0U5TmqXv5", "7Tucqz1Qg0A1BIHx"], "make_matches": "iBxnyZHbiSMcsgyU", "stat_codes": ["FJN7lU3XF7gnEbcf", "6YQMWEVOEB3PsV5H", "6wLqi2o02HJehB06"], "validation": ["Jny01krw99W6iTT8", "KiZfwaFQVUNOenxp", "wJpu55MTks5DTXK4"]}, "name": "gZqbZOSzaVa9jAw3", "platform_group_enabled": true, "rule_set": "FSUr0cJYZH1N7J3u", "session_template": "w4yHlR8r2SEY0Yhu", "ticket_expiration_seconds": 23}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchPool' test.out

#- 23 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'KeYh9FNzsUgXOeUa' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolDetails' test.out

#- 24 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Y0HuqsVpIwUazfhk' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 17, "backfill_ticket_expiration_seconds": 36, "best_latency_calculation_method": "F9Qc3a1CqZC2t32d", "crossplay_disabled": true, "match_function": "ygJs8Q4K49Gmk8bL", "match_function_override": {"backfill_matches": "rSbkO2b3CdB5q8Wr", "enrichment": ["ho6FFbyBMME3scmy", "vsZ7SDjg4QZvwol8", "UxeiYcld4JS9Ys4E"], "make_matches": "k55lExXn38Q8tjHz", "stat_codes": ["dYyJ5f2Ph21qeNVb", "jwyDCa64mVlxtyEv", "Fq4eE7t1LPLVXaPD"], "validation": ["nPhHbJYkZaB3dWSv", "gSWvtfK0OI5lbc36", "0jqMpBH6ngQtekB7"]}, "platform_group_enabled": true, "rule_set": "4bQLgrfyVT3PHHtv", "session_template": "tPGtrjwWU99YdpB0", "ticket_expiration_seconds": 36}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateMatchPool' test.out

#- 25 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 's0B5GyVgGavdq8AD' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchPool' test.out

#- 26 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'RToiIkpeXsCH6F6k' \
    > test.out 2>&1
eval_tap $? 26 'MatchPoolMetric' test.out

#- 27 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool '7UuvQcf7Qa9JucSG' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 27 'PostMatchErrorMetric' test.out

#- 28 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'GiP40D0AgRrXiTLe' \
    > test.out 2>&1
eval_tap $? 28 'GetPlayerMetric' test.out

#- 29 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'wd6Gph7fTi6slfGM' \
    --limit '49' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetMatchPoolTickets' test.out

#- 30 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9bgt4NQstXFjfx7L": {}, "sWgk6rOQ9DPZaOMo": {}, "X56iQ64cBwNjKjFM": {}}, "excludedSessions": ["Eb45ZD38VBumphZ2", "64AXFBTYmGF0pgVI", "AO1nYoHKBXQPPFmA"], "latencies": {"yjJRK1mO5VjLdU4S": 25, "1Yae5vA2a7PcmurA": 28, "GkX4SZgiH4A97bhV": 38}, "matchPool": "nO3JUD2J1UmxiPBL", "sessionID": "Y35edvhGrBOMfzHU", "storage": {"WDGQAk14ZuMIQr8h": {}, "9Psp1ISEBQuSSVke": {}, "0juFRPKse28Yevnf": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateMatchTicket' test.out

#- 31 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --matchPool '7in6Yy9uUrnq0HzH' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 31 'GetMyMatchTickets' test.out

#- 32 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'falalqUodkKyvhBz' \
    > test.out 2>&1
eval_tap $? 32 'MatchTicketDetails' test.out

#- 33 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'VKkhhEpPXPHiibpJ' \
    > test.out 2>&1
eval_tap $? 33 'DeleteMatchTicket' test.out

#- 34 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'lBdK56fM8M1dZMq6' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetList' test.out

#- 35 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"56Aniekqc0cq3lSk": {}, "fnIGszuDLD2q0KYJ": {}, "nD9IlgE9YuLYh0h4": {}}, "enable_custom_match_function": true, "name": "dYe27Z2Z5zQS0JJs"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateRuleSet' test.out

#- 36 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'AKzANt8wPKkVYBLk' \
    > test.out 2>&1
eval_tap $? 36 'RuleSetDetails' test.out

#- 37 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'EpwSrJPn7n1cXH19' \
    --body '{"data": {"FAzJHaLVuxhp6YC0": {}, "xkVLnZg8ncDrD66N": {}, "ZGGZ0H4ux2e6pqxH": {}}, "enable_custom_match_function": true, "name": "X43j2sCJjVtShjCi"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateRuleSet' test.out

#- 38 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'oYOGkBDcO8jzggDI' \
    > test.out 2>&1
eval_tap $? 38 'DeleteRuleSet' test.out

#- 39 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'UdtOgaegwzGsDRTa' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerMetric' test.out

#- 40 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 40 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE