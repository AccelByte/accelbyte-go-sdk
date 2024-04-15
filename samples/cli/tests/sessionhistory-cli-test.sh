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
echo "1..32"

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

#- 4 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'BLHLI6TBHpBj6iNw' \
    --limit '14' \
    --offset '74' \
    --order 'sARecsapmnd0ToSH' \
    --orderBy '4NWB1zx07nwCzl1j' \
    --userID 'zJGrMiu6VtnEOHup' \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'RewLlnt23cTUrIbt' \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID '6yWbvIplMZmog4mj' \
    --limit '42' \
    --offset '85' \
    --order 'w1C8LWPX2vPJB5GW' \
    --orderBy 'xgS4fBm8ozzAVDQM' \
    --ticketID 'QHU51KmN3ZnGnQGW' \
    --userID 'YDUKn5Q2fqDtCvpo' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'R2QzKzT99zK6svZ2' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '7uU967jfmS08bO9J' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '28' \
    --order '9ZVIxB7Zv4xY6H8g' \
    --orderBy 'YhSGFClEpLO3ir3u' \
    --partyID 'RJcpjwTYzvvbDvHi' \
    --userID 'wMadv8f7KYKom8Q0' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'cfGKReMkF38SZqIC' \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'fyEoXkdlVQzmaYtT' \
    --gameMode 'b7qrbPwoDNkzyyZk' \
    --limit '36' \
    --offset '63' \
    --order 'taWbPdLfuM9vWzs7' \
    --partyID 'E4UdJ5ERD7PjiFiy' \
    --region 'AaWDT5UXdNv4Xihz' \
    --startDate '6cqKWwBIXWQ6iGRG' \
    --userIDs 'VA7XNVS3kVyrAsOH' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'khYQbm05tpoQY2IK' \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName 'Kt0uZMeE4PL5eJGC' \
    --endDate 'NtByRuLV5ILsicmE' \
    --startDate '9L4SzMn88LtsUdm6' \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'zzxHHj0sMO1ZYMXo' \
    --poolName 'VE4fCnGYKamdloLc' \
    --all 'false' \
    --limit '41' \
    --offset '84' \
    --endDate '8NN3AlTdfC3Rtx1j' \
    --startDate 'miFj3zDkX5FMQaGa' \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName '89yjiX3enN2L5q2p' \
    --poolName 'a3ZBEf008k836EWl' \
    --tickId 'Vv7MYRmnmKgq5k9X' \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 's0Xej0O8DmyFoumt' \
    --poolName '1IX08YVFvwqaaaDE' \
    --tickId 'aNLAlkbDTvsMnkHd' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId '3n5k3gUQqMUgpJzE' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'j51gYoVNzoWqgF2e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'v0ViRTDkWnHWm8TR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'sT0mVYcjf9fuoBrp' \
    --startDate 'W2Sge8ll5AEWDZuA' \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate '6NbERvLsBXZtFDWq' \
    --startDate 'BxxnEsRDjzxAbI2A' \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'Z2Ky3g1KsciqBjU0' \
    --startDate 'k21qeCk0oi51ttYd' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'nZoPhIIEcoYsh4Zu' \
    --startDate '9UZnJeIjUP9o2bZi' \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region '7lcAjsOYmjqGkS5U' \
    --endDate 'DPZ6rv7GSiHDhWZB' \
    --startDate 'NYLmPQ6RuZYJiiXN' \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '0qh6jhU7UZGYCs7E' \
    --endDate 'ZJDTpyxhKpNXtL3W' \
    --startDate 'XSpEoVd70Zrx3XSK' \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate '3jHRfcOYrExalNyx' \
    --startDate 'msmua4VhUnPAvS1g' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'rR7RJ9UIteJoklLH' \
    --endDate '5fStTHEkeIHctITZ' \
    --startDate 'XaL4slUv9YSMZDZu' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'ERfiS5xv2zP1Jh92' \
    --endDate '2ehwSQvlHz8bRc0c' \
    --startDate 'MSh6CmO6YodGUNwq' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool 'wlSaPwNLZI7E0qKl' \
    --endDate 'cMXuCVv2X0AtHIeW' \
    --startDate 'dy2yy3S1f6j1fUFl' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'vCwvYuQ3CmMeqg2x' \
    --endDate 'xnAHtcKBDLcDvSkR' \
    --startDate 'vTH82P1PIiWD91lT' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'tgDTv34SRiYWZ3Hj' \
    --limit '98' \
    --offset '12' \
    --endDate 'v5N3XrhajTlzzEbi' \
    --startDate 'hxVSIikueZXWZiNJ' \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId '8hdjZ4DDrjICcGMC' \
    --limit '96' \
    --offset '80' \
    --endDate '2uurozobZKrUK59y' \
    --startDate 'ft0fgVIqe8c9JeBV' \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE