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
echo "1..37"

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
samples/cli/sample-apps Sessionhistory getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Sessionhistory getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'k6tmBHtk5BiKftFy' \
    --gameSessionID 'k8gaZEhwXvCE7Id6' \
    --limit '30' \
    --offset '68' \
    --order 'd3WKj30avdvDTgtU' \
    --orderBy '8pZClqTkAts4Aehh' \
    --startDate 'ZaCqnJfxpDJA0TqG' \
    --userID 'O1zTv4FCs2ycxnzn' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'bLURqMzAns9yOa8g' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'Cd7LNKZw3S9EQqt5' \
    --limit '89' \
    --offset '2' \
    --order 'cigS75KSJHKs89MI' \
    --orderBy '0VXaLDn0g8sQlGyl' \
    --ticketID 'R3acvZS2heq8qAI2' \
    --userID '2b9asVOiOfCeVdub' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jL98NqEH9CyCti8b' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'C6Fa6hpg5l9bCMni' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '42' \
    --order 'nhrRNRqOFV1RGjQy' \
    --orderBy 'GKEGBS6qreLX8uwJ' \
    --partyID 'AVE1poXdFlfIofSl' \
    --userID 'fYbnLo25aNPZm5MZ' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '4KjR4xGq9gPJmV6T' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'OBHYgB33NLiX1Hbk' \
    --gameMode 'WXWlrRJ28z6DQJVq' \
    --limit '50' \
    --offset '1' \
    --order 'ptPQ5UDF1cPT27wy' \
    --partyID 'funq8yqQ09izIcgV' \
    --region 'u8GvqoS5kBHKYAqD' \
    --startDate 'TSvYHQkjN0kTE98c' \
    --userIDs 'DiQnwULcjNjN40WT' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'L2iJ9hJEdMG6VBKz' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '40' \
    --order 'aJJiS3ZkxXnRXTDm' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["AM0DDBDbJiiuzWEX", "XnSefQ6tcfPNuMK5", "yYIir3NJHrsBPsEY"]' \
    --endDate '4vrpqvaqE5LQlQOb' \
    --startDate 'EYCQQLdVtP4HQUg9' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'qRBR7JEkjnpIjUYf' \
    --poolName 'kpzzfO262uClkoPa' \
    --all 'false' \
    --limit '12' \
    --offset '91' \
    --endDate 'FyA7JE0t2ej2ShhG' \
    --startDate 'yV3BlnwnaK0UaFWz' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'KQzgxuYQNitL2PaG' \
    --poolName 'vtIcTVfkBNxNS00o' \
    --tickId 'NWbNlVTgx85LuHYE' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'sR7mOf1WiqABK5NB' \
    --poolName '0oXrErsJOE3vKeyR' \
    --tickId 'NDMovdvGxbKNuGay' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId '10ZmLeAkcjl3XkL6' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'otTkt5ZsrWQvBaxZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'x35C8rg3ReuMjltb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["79PSTJFMNozgKnin", "wyZ3n0s31quZ59jB", "IP9loZkSeF18VGj7"]' \
    --endDate 'Om2pzrQ31A8M1IsW' \
    --startDate 'QyRo7t6jIDyxRJhb' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["5RMT0ibUjG0vPK7Y", "Gjs8RI5LqUtsYJDI", "as8CuZFBiX3GGYoz"]' \
    --endDate 'pGCf17IN5qywMH6c' \
    --startDate 'xDGLZ2bF4v1xu1WY' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["PsQNbMdyH7Mpn4U9", "TjfdI63PcEJ3HXMq", "NJQKgACMuyebJK7W"]' \
    --endDate 'CFVCVXLC941ecb27' \
    --startDate 'ksUNfs46lEIBUA52' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["crvMXx8uQyOVul1J", "Bz42uSBynhUo2k7M", "cKx42LnEjXhT4t2G"]' \
    --endDate '9IwUywvdmpMW4URL' \
    --startDate 'puqOKp7WmNbYGpEk' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["mGmC42zzATBx9gMU", "q9spe0CnbEMIVEjF", "CJZDgEvf1DWCfTUg"]' \
    --region 'vBYs7Zg6oHqGU74a' \
    --endDate 'elKXutFd0WkWdoj8' \
    --startDate 'v7xCESu1uDKeP2bE' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["op1lAXXwxy9bbkix", "nmzh9hHQT4pIEBND", "wDAmCvKJuujZyvOA"]' \
    --endDate '3aisU4RH7C4qjr63' \
    --startDate 'L6kAktUvtfFsGstL' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["QoDsjqFSti4lVgxW", "vpw4f2Dx5HylMIlq", "BPwXlZLkO44zmiDr"]' \
    --endDate '5zxPRxMd8UzhVxk8' \
    --startDate 'hH79Glp4MMn18E2L' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["hvFKRwV2I19jdRdA", "6sSCj3WaAa7Kxh2q", "K7woZPQrBoY8Wjno"]' \
    --endDate 'I3Rra74NWhqaidR6' \
    --startDate '5jplV5JdljMQz1v5' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["J1h29XSKT02jGFNV", "7CSKqDRLgTIhfxjY", "7RWULP7ZgA5arzVX"]' \
    --endDate 'gb6e7S9dGBtHqH2N' \
    --startDate 'L4lvkseKITtkiFGZ' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["ssMv2Fk3fmIyuVxT", "DU20xuvYFwAZiQJS", "CbV4LxHTXvalV88u"]' \
    --endDate '05zq7Sp3KKJ7kieY' \
    --startDate 'TVLdV2PQJyHsmt3E' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["4JSpYBXHgKAkLjau", "QtDe0TLr3ZwyBcIQ", "82eCvPzWwJB48cZW"]' \
    --endDate '87WAsBufcFMbM1zi' \
    --startDate 'vY4k4MzwzEUJZbNO' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "FmaIWtfou6GkWHMt", "activeAllianceRule": {"max_number": 19, "min_number": 18, "player_max_number": 96, "player_min_number": 46}, "activeMatchingRule": [{"attribute": "1aKDAMnlMF6FglxJ", "criteria": "G95sAvSaPTuAfnhL", "reference": 0.7155160645696853}, {"attribute": "GU6904rlhTT2W0xc", "criteria": "dHLBxkJNhOHK7QKz", "reference": 0.012971288450047469}, {"attribute": "7RwKwHSjrcQlEUlU", "criteria": "z3p6BWYhdajGjntn", "reference": 0.5941872449462139}], "function": "p0b0eNzzIZck6fmk", "gameMode": "YTHi63o6i7nU9rNE", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 1, "matchID": "UyzhjOyZNwS6kg0J", "namespace": "tXcEooWmGqcbw1gQ", "remainingPlayersPerTicket": [44, 28, 65], "remainingTickets": 69, "sessionTickID": "yX0n9lsjjlJDCtSt", "tickID": 32, "ticketID": "xtcRifkmolu7x1Ia", "timeToMatchSec": 0.5746204575914224, "timestamp": "1984-05-03T00:00:00Z", "unbackfillReason": "qvRW6K63qrygzTzw", "unmatchReason": "VQfX3kRfA6mmmt7x"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "iWqu5mSXSemzaK0V", "activeAllianceRule": {"max_number": 13, "min_number": 32, "player_max_number": 87, "player_min_number": 1}, "activeMatchingRule": [{"attribute": "7oD87wDrcIc9Vzev", "criteria": "z4MwL1B2x4n9UVRj", "reference": 0.5314696572914255}, {"attribute": "0M8sddinkAm6Qnoe", "criteria": "GpNNbR7sjPZUxi4L", "reference": 0.9425247514646083}, {"attribute": "hnvtfdhvNLpChRBF", "criteria": "OOZIAiButp3SIAFJ", "reference": 0.9377872750402215}], "function": "eyuzW6p3IDJ50FMY", "gameMode": "2t33zW9XESYrtyn0", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 21, "matchID": "jAjl7SK2sOj8kSt3", "namespace": "QMwWXGk3h7ewX18s", "remainingPlayersPerTicket": [42, 85, 38], "remainingTickets": 18, "sessionTickID": "XUvGCucvXDoOFyz1", "tickID": 9, "ticketID": "cUB8Oez9sjJ0xxrw", "timeToMatchSec": 0.9551899568202984, "timestamp": "1977-05-26T00:00:00Z", "unbackfillReason": "UrIp78osze0gCqrr", "unmatchReason": "yLU386fWEIgQSuQI"}, {"action": "tdpIPq0jAuz1OJyj", "activeAllianceRule": {"max_number": 50, "min_number": 63, "player_max_number": 18, "player_min_number": 34}, "activeMatchingRule": [{"attribute": "iqXOvftIA3vXDw0Y", "criteria": "3J4cm5Y3KheJt4qv", "reference": 0.3264278550744162}, {"attribute": "lQ4QcwLp44xqNvwW", "criteria": "gbWpXI0ddQviXLDO", "reference": 0.6329140888861867}, {"attribute": "PPZoVEfY2F17dj07", "criteria": "2KS2nHpvBi3jo2Y2", "reference": 0.6594191577073144}], "function": "5FZKVfBI9S4QSxht", "gameMode": "2HGt3oM8cb2f2xbv", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 93, "matchID": "dd8NobnRmopMpMTV", "namespace": "AuPkGqdnmW9nLCZp", "remainingPlayersPerTicket": [0, 86, 58], "remainingTickets": 82, "sessionTickID": "qqRAuy5fOMW67yZ1", "tickID": 16, "ticketID": "nS1prcCHRsN4ZQWA", "timeToMatchSec": 0.7499023963338548, "timestamp": "1975-01-08T00:00:00Z", "unbackfillReason": "i7mDnMtTkL0JlOeb", "unmatchReason": "zqNZzsEhO1pMG0Pv"}, {"action": "00p4zgsaoS6QMnwe", "activeAllianceRule": {"max_number": 75, "min_number": 57, "player_max_number": 89, "player_min_number": 62}, "activeMatchingRule": [{"attribute": "fvPE4bArZ47caV3G", "criteria": "XMwS2npVzS4BNtIN", "reference": 0.6136494052136364}, {"attribute": "zCFOSFsUxaDGO0eP", "criteria": "rDwdl29XKURfDeKq", "reference": 0.2301531403385606}, {"attribute": "V4kXvV8FqFgprioU", "criteria": "zbglh1PR0xl5TeYk", "reference": 0.5202466819406919}], "function": "nGkg7e1yJLDjLdPf", "gameMode": "O0TnjKaXAzyyhMxL", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 94, "matchID": "7AfC9R1HwbQ7ml49", "namespace": "mVD3oWUA8gZSEteb", "remainingPlayersPerTicket": [95, 17, 80], "remainingTickets": 79, "sessionTickID": "92kNZllW7V1q8IW8", "tickID": 51, "ticketID": "la1oB8Ughn2HCGw5", "timeToMatchSec": 0.778553613904498, "timestamp": "1995-06-03T00:00:00Z", "unbackfillReason": "vIe30OKsjbvsluN1", "unmatchReason": "EauRxqZv8KSMASkj"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'xKslwvUehZWCfnHa' \
    --limit '98' \
    --offset '100' \
    --endDate 'uOVe3lKYtIL8xIvz' \
    --startDate 'kDrGBEosKhGNcwLi' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'zOOknYOnOKb9e6a8' \
    --limit '80' \
    --offset '28' \
    --endDate '8CjrZmp0ql3eygzY' \
    --startDate 'zHpqnvtVKKwl9UlI' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE