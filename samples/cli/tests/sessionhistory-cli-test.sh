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
    --body '{"action": "Kim8Ob6kCd1gbGAA", "activeAllianceRule": {"max_number": 3, "min_number": 26, "player_max_number": 99, "player_min_number": 36}, "activeMatchingRule": [{"attribute": "y7ZS2jXNYrW99JnD", "criteria": "wuRIxb2sG6iZFidy", "reference": 0.9010410760910174}, {"attribute": "9pSfC5B4GCvQ531b", "criteria": "tGBqh5cRdRbHjIVh", "reference": 0.5129865160014341}, {"attribute": "RnY2HwXrMNxgJjwr", "criteria": "1x3A6h7IIfj5JOjr", "reference": 0.22266685084499416}], "function": "OJUU2zcla0jo8oBI", "gameMode": "tepzHEUvNx22oqB9", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 88, "matchID": "pw6UOacjyPZZJjqq", "namespace": "VdkyHD7CMq8osYDp", "remainingPlayersPerTicket": [76, 75, 68], "remainingTickets": 46, "sessionTickID": "cYAqWSEakDAPelh5", "tickID": 100, "ticketID": "oLQOFXFMyZz8Mbw8", "timeToMatchSec": 0.07839621722545331, "timestamp": "1980-11-18T00:00:00Z", "unbackfillReason": "SAw6nyA3Qv3mlyn6", "unmatchReason": "ZiZyEEc2o7oUUXGv"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "KfWLQsYUS4rN6ehE", "activeAllianceRule": {"max_number": 58, "min_number": 18, "player_max_number": 52, "player_min_number": 48}, "activeMatchingRule": [{"attribute": "V0AQ7vxGSiv3yq40", "criteria": "pqG4BFZq3N8ULazP", "reference": 0.2717539231002486}, {"attribute": "I7cKUjBed7ZKNLEB", "criteria": "gzDmmx6oQO06J5YQ", "reference": 0.7471148298241339}, {"attribute": "NOtJNiV9JKozojFV", "criteria": "3JPOledpVAlhgBcF", "reference": 0.011228254570939011}], "function": "bbK43wPM44wBTMZx", "gameMode": "KYTrG906kOMfjvRj", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 41, "matchID": "KFMipeCE8mOYBC0a", "namespace": "SQ9qK2aHUDjcajHO", "remainingPlayersPerTicket": [77, 27, 47], "remainingTickets": 36, "sessionTickID": "VLS4lj6jf3u8j8Lp", "tickID": 3, "ticketID": "CBzdjEao4WaG0EHg", "timeToMatchSec": 0.14571704688180598, "timestamp": "1998-11-27T00:00:00Z", "unbackfillReason": "CWqOeh9w2km9057U", "unmatchReason": "YLZkgerGqLIIAFN6"}, {"action": "uFuGer7kdhb7Ager", "activeAllianceRule": {"max_number": 10, "min_number": 23, "player_max_number": 17, "player_min_number": 0}, "activeMatchingRule": [{"attribute": "cVuoi5MFEf44Ngro", "criteria": "eEzk0poCC04KjeHe", "reference": 0.26673907771600514}, {"attribute": "qyzfLFaZJoNyLl8x", "criteria": "Lyk7uHYHX6V2A9fx", "reference": 0.46273031892003125}, {"attribute": "bio7a0k98UC8820M", "criteria": "vuoYqeAFBMS7kg3O", "reference": 0.5694216358801257}], "function": "yhsFdlXioKZ7pMHz", "gameMode": "wa41PYgmwy9lhQ19", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 22, "matchID": "TMSLpRXUprivctYx", "namespace": "9WyD9gAtJg7HfgRs", "remainingPlayersPerTicket": [16, 63, 24], "remainingTickets": 70, "sessionTickID": "KKM5DUpdL8YCqJ09", "tickID": 24, "ticketID": "wJZjXKn4NgYF4cCA", "timeToMatchSec": 0.956247773727915, "timestamp": "1973-06-19T00:00:00Z", "unbackfillReason": "FZ9OnwsT325wHdfG", "unmatchReason": "4oeH3As9EfgfbhHz"}, {"action": "UaFS0lFAlglQJtEG", "activeAllianceRule": {"max_number": 59, "min_number": 77, "player_max_number": 62, "player_min_number": 49}, "activeMatchingRule": [{"attribute": "Dz7gbroj7zJ9nrYJ", "criteria": "fMrkD0MYboH9WeAM", "reference": 0.9900558882792201}, {"attribute": "ei8YZvKr4mbBhcYF", "criteria": "mI5WO2WdgVWNueKD", "reference": 0.31685970882429837}, {"attribute": "WDlPw5fYBvQnUXPp", "criteria": "mDP6yo9AFtJiCYd3", "reference": 0.45710244074208584}], "function": "Ys28IIjUg13QfkNk", "gameMode": "QMC2PDMvO6xAAcZt", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 5, "matchID": "7bg8qjqrzvUUynt1", "namespace": "UUM610sVTV5D4fYp", "remainingPlayersPerTicket": [29, 70, 38], "remainingTickets": 46, "sessionTickID": "ImHzsjDJdeMBsS0o", "tickID": 9, "ticketID": "Ts0DfNNIMFyuFi5b", "timeToMatchSec": 0.11543760196763819, "timestamp": "1975-06-22T00:00:00Z", "unbackfillReason": "1rb5l85G4v5FS0bE", "unmatchReason": "WDnqslbBH0YzEkjU"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE