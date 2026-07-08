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
echo "1..3"

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

#- 2 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "xVhvPsboo7W1qpcP", "activeAllianceRule": {"max_number": 77, "min_number": 82, "player_max_number": 43, "player_min_number": 48}, "activeMatchingRule": [{"attribute": "ORPsEMLVW5MTgHme", "criteria": "mSfgUUgZ1JP6SlgC", "reference": 0.8587120509572359}, {"attribute": "t0nSTqoVVRaqDJeU", "criteria": "fkZB9sT2Gb0m3wGq", "reference": 0.2969815599527734}, {"attribute": "RzE0pe2lE0dTWFUn", "criteria": "g0JyQ8YGc5112ump", "reference": 0.2041885978113771}], "function": "ixAn55ZNizzlj57K", "gameMode": "EkNmncc5tQzodruQ", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 89, "matchID": "ZZGaprt2Qnw6IVl4", "namespace": "1bh1tZSBcgwrQKIF", "remainingPlayersPerTicket": [76, 38, 82], "remainingTickets": 23, "sessionTickID": "CstVIjTIboIphPxF", "tickID": 52, "ticketID": "aNLYcCQ9P3WWXpwJ", "timeToMatchSec": 0.6398178762278055, "timestamp": "1988-09-08T00:00:00Z", "unbackfillReason": "3i6zb8SztHpRMq9l", "unmatchReason": "VkCXdjgxNQ1qZGGP"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "wqT8tb9x43GmEtP0", "activeAllianceRule": {"max_number": 25, "min_number": 79, "player_max_number": 61, "player_min_number": 80}, "activeMatchingRule": [{"attribute": "pJk98NWMxh8cD5NV", "criteria": "csycFFrGEW87JWPH", "reference": 0.4932492725664217}, {"attribute": "ejYQnI7tUHmoDVUV", "criteria": "h3RS51k0llr2YTEI", "reference": 0.15072360056451817}, {"attribute": "aW77iSa8nnoGvbJf", "criteria": "uRXPjZMEwPoTdxv3", "reference": 0.7948776095698624}], "function": "dzOf4sg9T8ZgVNo7", "gameMode": "8fWQRaVNSDf45fWg", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 50, "matchID": "PzDNxPd6cTwgAMMK", "namespace": "9sE2RYSoQkGZcCvr", "remainingPlayersPerTicket": [80, 68, 34], "remainingTickets": 61, "sessionTickID": "QtBH0Cgh7BCHBQw9", "tickID": 54, "ticketID": "Kl7n2gmB7HrCGGC8", "timeToMatchSec": 0.6238122580582559, "timestamp": "1972-12-26T00:00:00Z", "unbackfillReason": "gcOHtR37JZwtOh1j", "unmatchReason": "jvfLQ2Lu6wvLTcgo"}, {"action": "4ywfMBu2CIwXeaEH", "activeAllianceRule": {"max_number": 54, "min_number": 68, "player_max_number": 85, "player_min_number": 9}, "activeMatchingRule": [{"attribute": "H1SMIc3vFoWNzRdy", "criteria": "JJs0mcerprRPO2xv", "reference": 0.49052735234617995}, {"attribute": "s2VEqDEhk9IPQf0w", "criteria": "st0guQH9TU49XX32", "reference": 0.7563907341210019}, {"attribute": "eDE0849lFUpPVnCH", "criteria": "cnMU6cJlNcXvReNt", "reference": 0.9081485454104217}], "function": "SB5JQYfgXqj196Ou", "gameMode": "HsOE678Tfb2IFDj0", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 12, "matchID": "OIzmqnyQGCqRgmxp", "namespace": "zeoTGjGU9RTre7yC", "remainingPlayersPerTicket": [42, 68, 14], "remainingTickets": 33, "sessionTickID": "FaELmA5feRZzK5vr", "tickID": 100, "ticketID": "PE5od7fTnowP8luM", "timeToMatchSec": 0.4401915217010386, "timestamp": "1973-11-05T00:00:00Z", "unbackfillReason": "byOuHLFe7wzFrHjT", "unmatchReason": "YbuSdIZpmJaBj1NR"}, {"action": "oM4FIWOsLWhHny9s", "activeAllianceRule": {"max_number": 98, "min_number": 81, "player_max_number": 3, "player_min_number": 55}, "activeMatchingRule": [{"attribute": "GLSVl6OxFtGRec7L", "criteria": "PKZNkwXFYNPG1STE", "reference": 0.9658797970460122}, {"attribute": "6dmH7Ukv18425K5C", "criteria": "aytTMcXKBdPq3l8r", "reference": 0.39883833504359334}, {"attribute": "TGG4wIiGFV7WmHt4", "criteria": "eQZreHDblJHETTO0", "reference": 0.8374641199306625}], "function": "mp3rxYayKFMJNQHz", "gameMode": "vlhTcj0CaO0X9ABB", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 54, "matchID": "dkGSPqSZdOO4s2xY", "namespace": "wWlszWP9NprSKlpp", "remainingPlayersPerTicket": [38, 70, 40], "remainingTickets": 0, "sessionTickID": "xz64LHdHZUXJGvg3", "tickID": 2, "ticketID": "qkTOi9mnPlJhC2Tv", "timeToMatchSec": 0.05920879003479795, "timestamp": "1999-12-24T00:00:00Z", "unbackfillReason": "cnWtBj5DLQV9MJgb", "unmatchReason": "6x5qdZJ9QKi8JfDu"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE