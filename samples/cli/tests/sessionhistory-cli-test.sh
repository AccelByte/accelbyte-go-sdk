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
echo "1..36"

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
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'OSlDU52Z6CPGtLmR' \
    --gameSessionID 'HnJYq2qkQsZxIPEI' \
    --limit '49' \
    --offset '28' \
    --order 'WxUb9999ucsuAXiO' \
    --orderBy 'yGX7vdCUchty2Jqh' \
    --startDate '9TPLQLc1KFuLjZXu' \
    --userID 'VwAIBPd3HeTX5G4z' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '04KCULOwVYKJeiTY' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'LSTn3DX8W6KjBnvv' \
    --limit '27' \
    --offset '32' \
    --order 'uRqxWsepQF7nMPFp' \
    --orderBy '4Ks0jWgv8G4EhPt8' \
    --ticketID 'tyH35KWtNVNU0xIq' \
    --userID 'BgeeVoUjNIZzkpqa' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'PYIKjbCRiD21GI8O' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'KFb2X8phkDrCSZNe' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '1' \
    --order 'kJt2oSAvFVuijsmV' \
    --orderBy 'OJQNDR860wXt2EBs' \
    --partyID 'tfVHAk7OdyCLtG49' \
    --userID 'qGldcrCyL3iJnFB1' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Tdv4UTHohBYGIH0w' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'h4bjG7IDAAw19FWh' \
    --gameMode 'NAHE0df8Bsh0gjRq' \
    --limit '69' \
    --offset '33' \
    --order 'whbHeos0woMNn9PG' \
    --partyID '05fCWood6yzPrt59' \
    --region 'vxd0ByFH4cgUv2x3' \
    --startDate 'lT3KYG639Cv7b7ad' \
    --userIDs 'uCApXw1FncsLCUIt' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'LHBt5GgfYQlMBxnb' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '70' \
    --order 'CLr4ycxhaOuyRRr7' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName 'XWUos8B4bOpD4HMm' \
    --endDate '6dHIJBgDcj3cOnNp' \
    --startDate 's2jsCV2MdOU8ifJ0' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName '7gsnb1P40bjQw6S2' \
    --poolName 'SWe0fPcSjSt3nqvJ' \
    --all 'false' \
    --limit '22' \
    --offset '7' \
    --endDate 'n3Fhj5z2VaY72fXC' \
    --startDate 'TZMM840epVgEAg1y' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'jahYUOSL77qUEwDc' \
    --poolName 'm9ZunPlGGkAESzjh' \
    --tickId 'fJ6hxnEJsg33sFGG' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'B9wG8bUUwUUJLHML' \
    --poolName 'Exqn3SyT36vLsd4M' \
    --tickId 'OmkV3Ai6dWEb4Uhf' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'y1AbqCb6OOhqOrVL' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId '7sD9wfegBa9gTqS8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'yv9pj4Lx7mKC8J0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'VCMlPoy5q3YoewHU' \
    --startDate 'TAdvIzE0Vn62ggT8' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'BdrfxDLDWg4cQsXB' \
    --startDate 'IRnnbOzzS3vFAC9a' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'ckopZdYMUYyZGLjA' \
    --startDate 'Xuohal0b4uTTr1l7' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate '30NjljV4ocLFnWgu' \
    --startDate '7KJkU1D5RzkxYh2t' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region 'a2nQCS8CnksyyDrh' \
    --endDate '5XWhHkNvGzsxVVKk' \
    --startDate '9iv1sfs2SjfQsjT8' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '7ST8IiRfBcR1An5x' \
    --endDate '1FSDsl3HmgLn85Rq' \
    --startDate 'Q3wMe9rOwmxcWcX6' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate '4mEmHQsuhsR0dFLK' \
    --startDate 'J9zyNlAURAyYW4UH' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'aYJN5zv9m4faqZpv' \
    --endDate 'kuon5gGUgpPhEfHX' \
    --startDate 'JyIJVijcmAnFbk3E' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'GTCE3a9FFiDuWmgG' \
    --endDate 'KwVbKqzqfv7OPfD5' \
    --startDate 'r6FACr8XVnQDNE4V' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool 'bkqKP7KOzh8CzELL' \
    --endDate 'qClL8mCnDFRim6Z8' \
    --startDate 'bRG7GDw9x3Zcqmuj' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'SXkFs64z3YC3qv6g' \
    --endDate 'noGwNCfVUsOZxPAB' \
    --startDate 'TvbWSsLCFD1QdfpS' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACi9zZGeVEaiz2VN", "activeAllianceRule": {"max_number": 46, "min_number": 62, "player_max_number": 39, "player_min_number": 38}, "activeMatchingRule": [{"attribute": "24EWXU0w8CRQLy6q", "criteria": "bCQllyDN5PHihpMX", "reference": 0.16216684059418118}, {"attribute": "KNJoyMFTu2qGiAO2", "criteria": "linUS5JGUkkaACJZ", "reference": 0.9685486181097701}, {"attribute": "N1I2LJ1UJNcJuiCD", "criteria": "emogrRPHcGikm1jH", "reference": 0.38358643020186955}], "function": "WRCmAAdapBKp928X", "gameMode": "OKaUqXnox4K7j4Zi", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 30, "matchID": "muZzicshlk2hudnD", "namespace": "7sznQENk5jLZhVkt", "partyID": "H90bP6fyop4MXjXW", "remainingPlayersPerTicket": [13, 4, 86], "remainingTickets": 33, "sessionTickID": "dlmK4RO9ZTjZBEvG", "tickID": 80, "timeToMatchSec": 0.43438763780006073, "timestamp": "1994-01-06T00:00:00Z", "unbackfillReason": "DKhH5GXgfBBAOw5F", "unmatchReason": "JgguRiBYTG6rIxqW"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '0NxADu1DOX7nMst3' \
    --limit '58' \
    --offset '18' \
    --endDate 'ddGWzKyMKvqj1uLD' \
    --startDate '85U17XRMTMAiYRoM' \
    > test.out 2>&1
eval_tap $? 35 'QueryXrayTimelineByTicketID' test.out

#- 36 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId '1hHhXyjlWXUXLanI' \
    --limit '100' \
    --offset '67' \
    --endDate 'nXhKnqZvaXDVCh00' \
    --startDate 'UUEBnkKs08H6Wyqx' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE