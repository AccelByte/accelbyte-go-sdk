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
    --body '{"action": "KZFdkTvebFUAEqwC", "activeAllianceRule": {"max_number": 6, "min_number": 52, "player_max_number": 80, "player_min_number": 84}, "activeMatchingRule": [{"attribute": "Oaa3XFZlQ679FI7z", "criteria": "Py3B7DM5rOuqVwHg", "reference": 0.49399567944869305}, {"attribute": "JqGvT6GNISkiZH4W", "criteria": "cJCYYHfWXwBCxuFJ", "reference": 0.8071453715834629}, {"attribute": "Id8OgDUS6p6LLuIo", "criteria": "ThXpHqXcwHFINLjT", "reference": 0.37179451512384576}], "function": "fgM8XA0o1hl4EYCB", "gameMode": "ca2XVdEtFkoOd7Yl", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 11, "matchID": "WGat4MSCqBchDwPS", "namespace": "KgO04L5oe2hMT3vF", "remainingPlayersPerTicket": [38, 29, 61], "remainingTickets": 11, "sessionTickID": "R6G1JqkAGHAt9zvK", "tickID": 49, "ticketID": "DYetxvbQL4L6VZRV", "timeToMatchSec": 0.007773185817382955, "timestamp": "1971-07-17T00:00:00Z", "unbackfillReason": "SLfb564D2oVvate6", "unmatchReason": "qD0F7ehexS9NLARR"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "z6fwpXnUcAo6Vni6", "activeAllianceRule": {"max_number": 62, "min_number": 93, "player_max_number": 26, "player_min_number": 43}, "activeMatchingRule": [{"attribute": "p8d2fhz2scgR4egJ", "criteria": "LIc9WggNENvcSL1r", "reference": 0.851932098511825}, {"attribute": "ighXG0YFEyAzTxdu", "criteria": "5W7pMhV430IaN2MV", "reference": 0.6356268795542953}, {"attribute": "GsIsrOmep5MB8Z7W", "criteria": "I25o9MNR17Dcrz2h", "reference": 0.8484147078964256}], "function": "uLKSkhFh5jmCOW2e", "gameMode": "jNpCJCUmepe778A0", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 86, "matchID": "qLsDHSvZN6hjYqk8", "namespace": "3nksul3XVIn74AJV", "remainingPlayersPerTicket": [98, 9, 85], "remainingTickets": 65, "sessionTickID": "fDRlrzP4JmniNA35", "tickID": 25, "ticketID": "PAq8a2VaipOFoaRQ", "timeToMatchSec": 0.9225132674084007, "timestamp": "1977-10-16T00:00:00Z", "unbackfillReason": "9M1BiAi9Mtk1tj7k", "unmatchReason": "h2Eb7Tp8rzdU0h1P"}, {"action": "g9qIOHLcYCBhGBNh", "activeAllianceRule": {"max_number": 92, "min_number": 74, "player_max_number": 1, "player_min_number": 52}, "activeMatchingRule": [{"attribute": "6edzqz8YHC8lAdpV", "criteria": "mgVAgw4ZnaoYLl92", "reference": 0.4790057018238979}, {"attribute": "lUaWi9eDhyKeLhZE", "criteria": "yA8q6xJau5qdncBh", "reference": 0.8585613588766937}, {"attribute": "l5tfFklbfhOrkPvY", "criteria": "Y9AlOr1fdVV3yFRO", "reference": 0.4278790140035217}], "function": "vOOe5qy2dto4ikUB", "gameMode": "yOhlkDh81N779PkA", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 47, "matchID": "CxAbPIt6MgOfWEr9", "namespace": "MpoPVjArCGmpbVkm", "remainingPlayersPerTicket": [87, 26, 51], "remainingTickets": 25, "sessionTickID": "vNSMQKNLZhGThqP0", "tickID": 15, "ticketID": "fY8UTxZqVSUNK3At", "timeToMatchSec": 0.1389295727724874, "timestamp": "1984-05-07T00:00:00Z", "unbackfillReason": "FbQo3a5ObhjBHfq1", "unmatchReason": "8hizErE3gdDcnkWJ"}, {"action": "eg9eavZkGw936QkI", "activeAllianceRule": {"max_number": 86, "min_number": 66, "player_max_number": 17, "player_min_number": 18}, "activeMatchingRule": [{"attribute": "7Hp8enqRwSzwulJm", "criteria": "iAI9R4tWPmChfUgN", "reference": 0.8137160925526669}, {"attribute": "fpSrEZU8DpLUIKmE", "criteria": "f6x7rYJpJWB8cV0r", "reference": 0.5134348802035207}, {"attribute": "F4bFUk2XuHdthyVt", "criteria": "9Q1j5Oaky2Nj6Wbq", "reference": 0.4408560229626344}], "function": "OPgUWTRZqYO4HxQe", "gameMode": "QOevMYCrmZDY58L2", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 81, "matchID": "kE3q91Gppuzi3hgK", "namespace": "dzjhldv1QQNQui57", "remainingPlayersPerTicket": [87, 19, 29], "remainingTickets": 76, "sessionTickID": "nfUASUjNxeSPlrJH", "tickID": 44, "ticketID": "CsqoqRlftIlEHkED", "timeToMatchSec": 0.6263551983344291, "timestamp": "1999-08-06T00:00:00Z", "unbackfillReason": "LhjZub16NuOfrs6w", "unmatchReason": "jbyyASBbMPYtrRad"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE