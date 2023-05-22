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
    --body '{"matchPool": "8xYYMCPGV4PFwvnL", "sessionId": "ZMe3HcNgvkioo230"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '00Yv9CNp1PatvJvg' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'zqcoSYY8ChARGqIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'wgm4pJh0eQSDTpf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '7utu875sUirzgx1x' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "23pJDFrbF1uFm6eh", "stop": true}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'qgkLXuFkMhowi02E' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "KlUdFZaN3wswdLVL", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "QxLuuWByrC2aHE9z", "url": "mu9rmnGEtjoFkYdM"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'SSR4wyyNqCb2y2wm' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "RfkGPkdkjuNBqauz", "url": "68Ct83cjlHK8AOmz"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '5eptSEoJpJGXgNwT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 7, "backfill_ticket_expiration_seconds": 53, "match_function": "3Zmwr0jLm96rrY8n", "match_function_override": {"backfill_matches": "cAIg3QIbXXya1ihA", "enrichment": ["lZBrg3RvaZrmpP9a", "shVS3EJfiiBhLVFz", "R5j1p87zFSJZFmiu"], "make_matches": "PdSCyKjYaQmfmdCp", "stat_codes": ["In47O55MQKG3gk41", "uhzGGQ6VIz2uKwrj", "BVt7o3TrKRK3y1rB"], "validation": ["ZbJOLGeHy3ink3PK", "fDKtrJVDK6WQAsyF", "sz5vrR3UM8ApT0vE"]}, "name": "dSUWhcMpTh9zw2QR", "rule_set": "cy0gKT3Cft8Bc4CJ", "session_template": "srWu4lh0v8DPPe3l", "ticket_expiration_seconds": 23}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'l2ETfMohEcL8nDL9' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'XlzZ5c1avFjYLh1c' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 63, "backfill_ticket_expiration_seconds": 22, "match_function": "xvlZQPnjEG9ujWcI", "match_function_override": {"backfill_matches": "oToELdBKd61pkExc", "enrichment": ["Tf5FUZCQ3uEzlsXc", "MIFXihL7yI9IQsHY", "CpW42KG7f6hX72L0"], "make_matches": "MsPDtOjAGo0Yhd7Q", "stat_codes": ["Oc54lU17jIgmdJgV", "KfDCe5O9GKAWaQec", "rhgAUOyhCyJjAR36"], "validation": ["Mz7hGV0dtS526oED", "z3yFKdLqPLSxbQyQ", "VkKRTl3MZmBoOPrW"]}, "rule_set": "HSSHVSG5QSbz9yrk", "session_template": "8aCWSLazmZxOihkJ", "ticket_expiration_seconds": 25}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'MwknJamr4IbqEKEe' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'eNfBbO8MncQDDDPB' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'G2r9A3YOEVgVvFG3' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WRVDxl8NRf3JUlhw": {}, "kLNscVXHaHgcWLBA": {}, "vgnKr7pBfe5SVoRW": {}}, "latencies": {"sxum3XTB2JpF4rww": 57, "jQnvR8FThGPe7Arn": 80, "EmgP64xOQoFrNzep": 44}, "matchPool": "pZvE2OPHOv9Wn8KH", "sessionID": "molkQ9xajIa0OtqJ"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'j1t6jHG26qMcJc3O' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'bYWKYWJCRaAxdCtf' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"xrAN1Sc5pzIh0950": {}, "ngNGkLgtXa3yWXlG": {}, "fDVgNHHy3AwWyy8q": {}}, "enable_custom_match_function": false, "name": "X6GNiyH1udm4reHW"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'lhedEMo3ad1z1B18' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'xDM7uSEAUlg6E09p' \
    --body '{"data": {"TGhM4VQxQW3lW2ar": {}, "APJ78ufx4GIc6X2j": {}, "KckuGafU70as7Upa": {}}, "enable_custom_match_function": true, "name": "cFhz5AfhLXLhZIwS"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'AaPbv060xFiC1Bue' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE