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
    --body '{"matchPool": "8HzdLPTnyg5orjiK", "sessionId": "I6KdIh1Y6lnNFllG"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'qhIaqw6YQVaihmGt' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'axSqQwS4BbO6yKHZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'INRFvfISSarlDVwI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'idcJEb8u1CwmODHV' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "rbqEY1ZjzELVbeKw", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'x3KU79JnUwYAbbhO' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "OMDhP66m8lseHavu", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "rEF4Tut7ChdqvPWu", "serviceAppName": "ONrP3oIb8JoJlWbn", "url": "VR9FzWIsK647OQi7"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'qmcAQx2vw1KWXFix' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "YAWgpfeH9LvZ6e0h", "serviceAppName": "aVztfOPykGu0U6Ak", "url": "WaQr4Zey5E2xWPYq"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'KMVg2ng7M7RY7llH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'DJxdE8v5UiH2gFsX' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 99, "backfill_ticket_expiration_seconds": 73, "match_function": "X9OB042wDBcPQcum", "match_function_override": {"backfill_matches": "1mSnOtWArrXtr0Li", "enrichment": ["jWM9dVjGD7JOzj5I", "QXAexUwk6mrliLHh", "AuJTEDrkbIX5otZD"], "make_matches": "3jZSUYKUU3arSoA4", "stat_codes": ["P22dnmKinc9jhUB5", "nqm6aJW4VIuzPrpr", "GyVwcY5ZaiLBRYj6"], "validation": ["HESSsJ2ecK0ebqUc", "LFqmuWXtQITzybVq", "PQcFDBQVxmqJjUMm"]}, "name": "jfsj8IzpV9LFGeFQ", "rule_set": "sWr1SGAMgIBAUHJu", "session_template": "5bTDG9pYeRqa7gho", "ticket_expiration_seconds": 86}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'b549RKxAwEEwnAIP' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'vgm71wsu6dr72BlA' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 18, "backfill_ticket_expiration_seconds": 21, "match_function": "awEAWuj3bGvd8SvH", "match_function_override": {"backfill_matches": "lGDpAWncY7i2KNjq", "enrichment": ["B8kpe2gkJkrZDPTg", "nEvAYjzjFeAPfDbx", "HTU2bPsiBHe1tBze"], "make_matches": "mDBVDp7cosS4D5x4", "stat_codes": ["gR0WB2jXEOhtgC6R", "9yQFjZLjPFoBWlNY", "LAy6eJ14KE2prnX8"], "validation": ["XjrEDmGZeF0Hlnv7", "iKXMM6XYtsNeDD3I", "19Dy19k1VNWNesmK"]}, "rule_set": "38XCJhQttAyaORfY", "session_template": "1tGgmRlh3OVUDDDF", "ticket_expiration_seconds": 3}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'I6vNpkEe59lPoZHn' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '0hkhDtlJNJzHIL1X' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'VMqWDF5vVhlTjvIN' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"g1yO3J5V5oex1dSc": {}, "GodiokK5Zr5e6OHg": {}, "ptrmIUQNtcAJMnTO": {}}, "latencies": {"QhePBYPqGP7nZC7E": 10, "Vc9bBPZOwsrKlHvF": 53, "xgLW6CqfWogBgjQl": 58}, "matchPool": "cC9UAHEjryVhTv8R", "sessionID": "mVS81TuFwlVgNtqV"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'q6IBPgMhSfXVCwug' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'k0eV3lEeShYVyQxI' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'bsEttvnPb4nBfEZp' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"hPz5LDsQuK55vJDl": {}, "0tu2KvK0qTXAgKAq": {}, "ssFSw82unWUU4D7T": {}}, "enable_custom_match_function": false, "name": "q3Z0yHAu6Er91bsC"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'jD9GCoxgRZane8jU' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'vkpKMwGpGviuyXXk' \
    --body '{"data": {"m4JbvRUQklgJ1EFU": {}, "OzU1d2HhNvJtMzQh": {}, "97S5KfDq95eXpfZT": {}}, "enable_custom_match_function": false, "name": "qR4Y3954ArjVF72u"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '4wII1Gi1oGijoL12' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE