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
    --body '{"action": "ZGV42sje0ikMw7WL", "activeAllianceRule": {"max_number": 27, "min_number": 99, "player_max_number": 85, "player_min_number": 83}, "activeMatchingRule": [{"attribute": "GsBu7DENuYhJ5avF", "criteria": "hUcOO7e7Fw0poMyE", "reference": 0.8700706045957497}, {"attribute": "AlKpMfj660jdPbox", "criteria": "9H2NbAgp3l5jdU0G", "reference": 0.2718034139586417}, {"attribute": "FJ85QNWJqQWCl3jF", "criteria": "E6LIYxeC16WdMA6H", "reference": 0.8088026599157161}], "function": "vPoweUGvleDyd3KO", "gameMode": "0Ufj99dHQsC00kS3", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 1, "matchID": "9cfh9pXylskJeHUy", "namespace": "ytwVpeq9DqLd9DIp", "remainingPlayersPerTicket": [7, 79, 4], "remainingTickets": 29, "sessionTickID": "9FdqjtxNi2s1JdJa", "tickID": 16, "ticketID": "DahIMq9e6TCGiCno", "timeToMatchSec": 0.6023079977944582, "timestamp": "1999-09-16T00:00:00Z", "unbackfillReason": "9jOefjf6L9PujdZK", "unmatchReason": "CjBoRnqZXKpkBhuR"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "HXzaJFCUNDoNZyoL", "activeAllianceRule": {"max_number": 2, "min_number": 72, "player_max_number": 67, "player_min_number": 95}, "activeMatchingRule": [{"attribute": "bWJsZmKblY0iTSpQ", "criteria": "E16N9c1Gr2a1zbJu", "reference": 0.6124909114309365}, {"attribute": "4uvNjkEyWqA7utZJ", "criteria": "7tsbKwIw5dYRj9D0", "reference": 0.30411143064689306}, {"attribute": "Ie0gDiI5WPCYjPsg", "criteria": "lfVa5umHekG0nc3L", "reference": 0.8013727824289709}], "function": "qI4zZ5KFufUKDvXd", "gameMode": "PtRETazlE183WNgD", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 58, "matchID": "oDnZzB6nxizeCFtS", "namespace": "jkvgNBbrD3YhbPMi", "remainingPlayersPerTicket": [7, 96, 66], "remainingTickets": 70, "sessionTickID": "p8zvznTjEZCzld4S", "tickID": 7, "ticketID": "9bjK1vJQKeNodIon", "timeToMatchSec": 0.25242241529568477, "timestamp": "1988-06-01T00:00:00Z", "unbackfillReason": "nb9gouVzYoLirmAd", "unmatchReason": "fPjjKt1dMdFrCLkX"}, {"action": "aVLQ4b9X2mzizsZN", "activeAllianceRule": {"max_number": 7, "min_number": 4, "player_max_number": 81, "player_min_number": 44}, "activeMatchingRule": [{"attribute": "5iHdC9x3c5pk5WeA", "criteria": "CeYbpOc2dua3alnW", "reference": 0.16589109610061925}, {"attribute": "KwPjCbjCUCwxZlqQ", "criteria": "ijC52kiswoxVaEAh", "reference": 0.23813266690108426}, {"attribute": "igF2g33UbFYoMiBw", "criteria": "ZcoEnkdYkd15GjWz", "reference": 0.0795243134074245}], "function": "hSHE9kPBXBLXxrYz", "gameMode": "3hGqy6nMk79AASDj", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 74, "matchID": "Y8yfczUC0oLouhmN", "namespace": "P0r2NgJQW1YOJ622", "remainingPlayersPerTicket": [77, 7, 100], "remainingTickets": 10, "sessionTickID": "q0GTzrDW86zkrycR", "tickID": 69, "ticketID": "pGJJXkHSNfgJhgqL", "timeToMatchSec": 0.8330757036483887, "timestamp": "1980-04-01T00:00:00Z", "unbackfillReason": "70i2PHgeVhI4ZXD7", "unmatchReason": "6ueYeSRVEtBqqE9D"}, {"action": "8DlSEhPr7I0C2Wnv", "activeAllianceRule": {"max_number": 61, "min_number": 74, "player_max_number": 42, "player_min_number": 26}, "activeMatchingRule": [{"attribute": "tdWRfgjmpoFMVyJa", "criteria": "td61jWHye8CRvrC0", "reference": 0.8103879312757161}, {"attribute": "c8EQfuyfOdczZnZy", "criteria": "4Eu0eYw4fO4gtLhj", "reference": 0.4016607514983176}, {"attribute": "GPnw3fmvHofDfxez", "criteria": "9HUT0BLjT4G2rxHd", "reference": 0.07782575983668027}], "function": "4u8ioyOgcyUrlkIj", "gameMode": "07Dgxta5cbTKh4s2", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 86, "matchID": "keaKcedCHvP51y94", "namespace": "fz7msp2pa4uCSIMe", "remainingPlayersPerTicket": [48, 23, 98], "remainingTickets": 66, "sessionTickID": "pnF6YKPviglHmoAd", "tickID": 24, "ticketID": "lR9bQyLFIEVfAQ1c", "timeToMatchSec": 0.658662357291476, "timestamp": "1973-06-07T00:00:00Z", "unbackfillReason": "gWzkmYEfTczZOYJH", "unmatchReason": "LCO1o2r74Rq1lhno"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE