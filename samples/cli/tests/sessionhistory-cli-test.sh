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
    --body '{"action": "H3q6gZbYOvyxs0wx", "activeAllianceRule": {"max_number": 28, "min_number": 6, "player_max_number": 43, "player_min_number": 71}, "activeMatchingRule": [{"attribute": "YN90gZpXCy8DSzKd", "criteria": "FTZkonosLNUcWF8x", "reference": 0.1153037031145604}, {"attribute": "EeNJ2dxVJZRHPa0s", "criteria": "9phGNAEzZEFd3Kxx", "reference": 0.7997671207756243}, {"attribute": "RGYVjE8BHA1tFSiC", "criteria": "lWzDQM7RQeo5O9I7", "reference": 0.8247542728077274}], "function": "GPNl6rJ9Q4xcS8AS", "gameMode": "kllRUSxJNR25wwhx", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 46, "matchID": "powqwNXKhApAUiAK", "namespace": "DaXioN6JW4SdxHPs", "remainingPlayersPerTicket": [54, 25, 26], "remainingTickets": 23, "sessionTickID": "CtH6PSxLX2ehCV5Y", "tickID": 88, "ticketID": "ZOBOyYEjdnOV8a5i", "timeToMatchSec": 0.2280521205153606, "timestamp": "1998-06-18T00:00:00Z", "unbackfillReason": "TVYdxHtOuQxVbx90", "unmatchReason": "MwGUJ6f9gpEPc007"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "mnqFVpvDDJCqWjuE", "activeAllianceRule": {"max_number": 39, "min_number": 43, "player_max_number": 16, "player_min_number": 21}, "activeMatchingRule": [{"attribute": "pVK3q8itRzu1giMC", "criteria": "8sJFxsuLnuNOvStZ", "reference": 0.3249665047097995}, {"attribute": "4xtACWFZ7OThOWxi", "criteria": "grEYNj6DpmPt6ZJM", "reference": 0.4277013674148824}, {"attribute": "mKGv5HVibSX01qZe", "criteria": "t58GbXDugSY1q71b", "reference": 0.32707933649353427}], "function": "AbIrK5AoI0SkZ7fu", "gameMode": "AGu7xRgtJxHeZUKR", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 23, "matchID": "W8EvMuL4i1p0vOKv", "namespace": "5anjfgMMFKvsduJ5", "remainingPlayersPerTicket": [57, 32, 56], "remainingTickets": 60, "sessionTickID": "k0feYKREsefSDuxO", "tickID": 45, "ticketID": "SsqayeC4PhnLVTW4", "timeToMatchSec": 0.7203919505739117, "timestamp": "1974-10-21T00:00:00Z", "unbackfillReason": "eEAh7MSxg9Remsts", "unmatchReason": "lXnwn3xqiRC3O0ix"}, {"action": "RZokcFsaegxutp96", "activeAllianceRule": {"max_number": 99, "min_number": 71, "player_max_number": 83, "player_min_number": 16}, "activeMatchingRule": [{"attribute": "6ZWqMI9iYaY18em1", "criteria": "7AaZMFztkAwOlDs9", "reference": 0.8068431434086792}, {"attribute": "KnOcuOFxzc906UC4", "criteria": "5YMJCJmZ11UsjWcE", "reference": 0.6930848993930827}, {"attribute": "qnn4JKpMW5Tv5YQB", "criteria": "DNekNHgzjarHUAHF", "reference": 0.28071052817426523}], "function": "GkTuOYefHa5ptmIU", "gameMode": "A5kFvugQCteKyr4w", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 39, "matchID": "NCPGcSAtX8RVjm8e", "namespace": "GSMFa60oPkFB1653", "remainingPlayersPerTicket": [5, 39, 88], "remainingTickets": 27, "sessionTickID": "eSJCN3GSrAmrSemM", "tickID": 1, "ticketID": "AzqOvQTs8WRa60Ol", "timeToMatchSec": 0.39309095010910466, "timestamp": "1989-03-31T00:00:00Z", "unbackfillReason": "lpQgDlUaiQ3QWpIn", "unmatchReason": "JxdJt5NqSw26UnTw"}, {"action": "Z2N4mAPrp4fXAZIK", "activeAllianceRule": {"max_number": 26, "min_number": 58, "player_max_number": 48, "player_min_number": 65}, "activeMatchingRule": [{"attribute": "3oclkRa1EziyFurF", "criteria": "Emz8iGwgAfDVJpdp", "reference": 0.9592690088302663}, {"attribute": "WfHQl7hWQIyou4Sc", "criteria": "M5I81XB3QyTTd8Ao", "reference": 0.6395855931436196}, {"attribute": "k4BdurUc1BUF6vGh", "criteria": "xFK7gmohxIzF8wie", "reference": 0.9043196919844927}], "function": "3zlaZkvIopQ19ZCw", "gameMode": "4rKEFZAipeggHj2l", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 8, "matchID": "ITI0kOgMWMlNS2a8", "namespace": "xaqw9lIh72GvLpzJ", "remainingPlayersPerTicket": [63, 84, 86], "remainingTickets": 86, "sessionTickID": "9oPJzzC8hhhVZ0JA", "tickID": 79, "ticketID": "bFKwNqW6YGiysJ3A", "timeToMatchSec": 0.7894978577065717, "timestamp": "1989-10-15T00:00:00Z", "unbackfillReason": "RbtyHdGU7Ss7yveA", "unmatchReason": "fI6NWMkZeyv8Fuag"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE