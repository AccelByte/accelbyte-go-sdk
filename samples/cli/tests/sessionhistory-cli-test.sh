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
    --body '{"logLevel": "error"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'tFb3fknat6hx6DhI' \
    --gameSessionID 'EAajwPPfaZ2oQxcX' \
    --limit '0' \
    --offset '3' \
    --order 'xbQahPgnrspLG257' \
    --orderBy 'jskL4Sn4hSmhBx2T' \
    --startDate 'C09QDnJwOllADaVo' \
    --userID 'byJJAlDZOwu6Hbla' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'QHFl83yoGS5eRQLc' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'dYDxBMAjuYLC2gaO' \
    --limit '81' \
    --offset '5' \
    --order 'NdIYIw9MwSGfZUJx' \
    --orderBy 'yzuIlScPZ33tHMZB' \
    --ticketID '3u9UlFAnrOKOvlSo' \
    --userID 'TE5C1g0guUkseN1s' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'H4iKZs0yz34L39e1' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'CrEwrP2dJnR4CEh1' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '70' \
    --order '1zD2u4rFgED4mF7z' \
    --orderBy 'iuOXnb1CZINaDjFv' \
    --partyID 'LoQ9mTragx5lVYjY' \
    --userID 'TGLsea3872NdCFuj' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'fxTRsMJ0colsDSjA' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'vbQ1L4kHUHY0NACu' \
    --gameMode 'yjcFVTv8gn0jIWe5' \
    --limit '98' \
    --offset '93' \
    --order 'aH8Y2Z9hKm2dDtYe' \
    --partyID 'T0aXFAeO1a42RhYH' \
    --region 'UwzgOOGBFZChdudI' \
    --startDate 'rGr0pJAH8W6pGEUn' \
    --userIDs '6BtjtJ4xsUOVZxzA' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'OsaY2FR7zxgqHIRc' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '40' \
    --order 'iISkgTn2E3IP0umM' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["yyyFxeX0ozJ3nUXN", "cULj9QGmLzl5uF6i", "u2UJdnFxLihbHW2R"]' \
    --endDate 'pPBLxr0S7Cdwwhti' \
    --startDate 'upqrmbBnYtmvf0GM' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'NChhbjwOvnIZ6sYL' \
    --poolName 'qY7SsVRuM5hxPMir' \
    --all 'true' \
    --limit '38' \
    --offset '75' \
    --endDate 'f3znq6czftDYFc8w' \
    --startDate 'jAGDerZr2zFCxScq' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'J7a3hvQf6yMlBOpB' \
    --poolName 'V2vpexCzWUV4ghkh' \
    --tickId 'Hclwi3KMj5bOF6QN' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'YepTLkzZrvEOhOlM' \
    --poolName 'lkIgD0JXoOUoUyjU' \
    --tickId '1iNlCsjjHxBBba2L' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId '84jNZVrrOIpdhtXR' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'gYsvYf0BGbRxAg4z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'M49O2WyvtRTx8v5B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["BCBRuA8vM91CcfIJ", "nfV8JO5jXAL9U6LL", "R2kYXNChwyiun7e7"]' \
    --endDate 'tOCOE5BVepWYH5E0' \
    --startDate 'DF3f9rDZU3QaRjbP' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["17ExHRJD5lTqyCgo", "NzLcJrst2Ypo0OvW", "4Y7WIatGab6Vt7UL"]' \
    --endDate 'TfH0FV1bFbAUXNSX' \
    --startDate '7JwA9TTi8ANLNSMx' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["zM0EWjfIJGoT9Goi", "CVEUo7FXBQNq4bQk", "D4RZksSsEArERYJw"]' \
    --endDate '3SxRmRPP7Cqq5lk0' \
    --startDate 'xYiMG66QCY5YIuuy' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["VIVJdBuacD1xvGWl", "7DvPLmBOIe7tU1yp", "sywx0og6t28e1hwN"]' \
    --endDate 'rR3KkmJrtADucd3b' \
    --startDate '5SgTPtrTV8XMIfex' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["x1V4PEcE6owWa8pk", "CIs8bNlhMRXiSk9y", "EhPW5JoCzVBb22oE"]' \
    --region 'otn86DTVJcIxzuyY' \
    --endDate 'YfSnPlZGrCY9Jcwb' \
    --startDate 'nZjBipM9OUaorr10' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["iuFUh3mMWpb0tOur", "Ro8uuklrerZYqbmG", "UrKYk9N3uGK0y4S2"]' \
    --endDate 'fylYJ239KKj2E1ko' \
    --startDate 'YXMBm9GTRB7sGFv7' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["ALDIkIkQA7s8EbjT", "tpiz2Yo5NGwtbYkb", "Wmw06RlNIBEC0KRc"]' \
    --endDate 'ToLqCvzuycOYQkYE' \
    --startDate 'tSD550jQZDucdsUq' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["MF0eRru7ooEEkpxN", "pJckjTB9QO0Mg6zt", "VoRBdqt9ofcRyK4e"]' \
    --endDate 'NpwAs9sdO0AsgoM4' \
    --startDate 'j3ruDKPiMDWQg0Yr' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["Lz9wWBdhplq8UBUR", "EA1dmd12Qi1zuM7O", "4ZAuTvDAqZo9aLi4"]' \
    --endDate 'mTI0vR8WoZWxxxiv' \
    --startDate 'fhwIm9QI0hOi0MUA' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["afaOU76mzlQI2AVQ", "SHcvDnl3ygbYX4oE", "h2l6rafhFmUnqcs2"]' \
    --endDate 'gWuuLpvj4KtMWEUo' \
    --startDate 'HZTemxXzgdIFglcB' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["w6Y77gPqAfdbt8lr", "hcMFgE9TEVGyWdv1", "W7GgyChKKpbZHxk7"]' \
    --endDate 'MsLqGJZB4s4d8cI6' \
    --startDate 'nSskmGeGmA9l5qqP' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "toGVAzuYafh96LHx", "activeAllianceRule": {"max_number": 73, "min_number": 99, "player_max_number": 13, "player_min_number": 40}, "activeMatchingRule": [{"attribute": "n5QY2VeGlScdPLwa", "criteria": "0BEBu8nndKLR7WH5", "reference": 0.7832164759281077}, {"attribute": "nUbYVGMPB6tFoCdc", "criteria": "AMEUhPdaB44zlLHo", "reference": 0.9284453672488492}, {"attribute": "jja63Jx3wJcR2mgY", "criteria": "4dvw1sLX2LK6fGu1", "reference": 0.9832882521511861}], "function": "8TLfUKepIYVOxluf", "gameMode": "K66IbR4Omz7515gV", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 47, "matchID": "M1MMm7GSO3kvtGh4", "namespace": "ecd2p2FN5MZcQ93i", "remainingPlayersPerTicket": [14, 63, 45], "remainingTickets": 96, "sessionTickID": "xicSkHqayEif2icJ", "tickID": 89, "ticketID": "LtHjw6HJEpmsZCCb", "timeToMatchSec": 0.16386180678977935, "timestamp": "1988-01-20T00:00:00Z", "unbackfillReason": "BysjbiFKtnlnqmjQ", "unmatchReason": "Jv3QDv8WtXhriQ6I"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "Jc61uvS0XudqZIe1", "activeAllianceRule": {"max_number": 46, "min_number": 100, "player_max_number": 97, "player_min_number": 31}, "activeMatchingRule": [{"attribute": "xGALu6tDcwQ0g4oj", "criteria": "5WL7GMHK2qn41yCB", "reference": 0.4643281512289421}, {"attribute": "QvBxHAXINCkqKjz9", "criteria": "cy6Ovb22nP1WNgda", "reference": 0.8489882265093659}, {"attribute": "Hvwy3FfeHAgLqFAY", "criteria": "SvLWrn6n0zOfWGig", "reference": 0.0329114787708481}], "function": "5Z7Pj2CtAdSmPJ1Z", "gameMode": "hAl7kMifWFkhRcfZ", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 96, "matchID": "teygebyyk9UDPBs7", "namespace": "bhh2LqB7AzYyItGK", "remainingPlayersPerTicket": [100, 72, 41], "remainingTickets": 51, "sessionTickID": "eAnASbxOv7kFdlWV", "tickID": 87, "ticketID": "F3tOz6U2wTay1RsH", "timeToMatchSec": 0.4202093851852847, "timestamp": "1990-03-21T00:00:00Z", "unbackfillReason": "Bl7YYmNAF5oVTNxR", "unmatchReason": "LNmM2mFZi22WirfO"}, {"action": "c4dVw6NJIKh8fktj", "activeAllianceRule": {"max_number": 91, "min_number": 35, "player_max_number": 50, "player_min_number": 15}, "activeMatchingRule": [{"attribute": "stUmkMe1bmLvgHBR", "criteria": "3mJycKFCeBhEZ1MN", "reference": 0.05878541000344706}, {"attribute": "Bg7pXXgdJ5jrpttF", "criteria": "E3iO9Px4MNTQji2Z", "reference": 0.6045176947237115}, {"attribute": "YXdgOrzoTKJa3kSi", "criteria": "z2gxCvMuANyOeKzR", "reference": 0.8311669026414352}], "function": "3k9a0vuyEuFlrXx9", "gameMode": "3K9bz2cetMOY3bxL", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 39, "matchID": "enRut78arCzaDZxr", "namespace": "LlkfPVbO7oZR6lYJ", "remainingPlayersPerTicket": [24, 13, 0], "remainingTickets": 77, "sessionTickID": "zEZCes1xAfCdclxO", "tickID": 30, "ticketID": "VZt3meTaMXKXvE4C", "timeToMatchSec": 0.6298576408504378, "timestamp": "1991-02-10T00:00:00Z", "unbackfillReason": "eNv1FBC3enCaQ61F", "unmatchReason": "baIVWsBtFdqZJa5F"}, {"action": "dQwQguYnna54o7kp", "activeAllianceRule": {"max_number": 4, "min_number": 49, "player_max_number": 11, "player_min_number": 49}, "activeMatchingRule": [{"attribute": "Oi3bnxAOvTH1P1fi", "criteria": "mZ3vChMJ8HqrRZ6J", "reference": 0.7900346140632608}, {"attribute": "aZflt5aT4VDF9wnG", "criteria": "3b2BMNuVl7b7p7CK", "reference": 0.6244564594535423}, {"attribute": "knjU1KANGteNmwWh", "criteria": "S8pybRQDjtmYIVuj", "reference": 0.9193585305733066}], "function": "WGUsNmBQyNzccQlX", "gameMode": "1VpCGamEF3yt2CD1", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 53, "matchID": "tc0U4yuxuwc63Zu5", "namespace": "L9W9VXS7Iv6bZgm4", "remainingPlayersPerTicket": [3, 56, 69], "remainingTickets": 30, "sessionTickID": "AMYh430WPDpvuKlr", "tickID": 42, "ticketID": "Rc1Vb1kJ0PnnnakY", "timeToMatchSec": 0.8311159319077464, "timestamp": "1996-07-15T00:00:00Z", "unbackfillReason": "arxC3uFDR8g7HhQZ", "unmatchReason": "xEGexPOXJ1JSwO73"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Isnj1uFUnmOPKHfk' \
    --limit '35' \
    --offset '43' \
    --endDate '7FQEDXDzitzJHdaS' \
    --startDate 'QnTUnLrajJEWatqG' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'IyVokXuW5oheakZs' \
    --limit '30' \
    --offset '87' \
    --endDate 'bOjlt86p3a03qyHO' \
    --startDate 'XdbSM2tt5rCjDBF7' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE