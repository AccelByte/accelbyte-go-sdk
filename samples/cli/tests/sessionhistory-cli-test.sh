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
echo "1..39"

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

#- 4 AdminGetEnvConfig
samples/cli/sample-apps Sessionhistory adminGetEnvConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetEnvConfig' test.out

#- 5 AdminPatchUpdateEnvConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateEnvConfig \
    --body '{"SESSION_DELETION_GRACE_PERIOD": 66}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateEnvConfig' test.out

#- 6 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 6 'AdminGetLogConfig' test.out

#- 7 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminPatchUpdateLogConfig' test.out

#- 8 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --completedOnly '3w227Qx6MIez21WD' \
    --configurationName '2R5NsGGeWkYThpNp' \
    --dsPodName '6WwBxZO1GNNFycWd' \
    --endDate '0BELcMkE7Loy1vZB' \
    --gameSessionID 'OCK3OiPwT58od3vZ' \
    --isPersistent 'FR6DmrXiSHiJN28m' \
    --joinability 'oVX3L5SClwqklgpX' \
    --limit '92' \
    --matchPool 'xo2jeiWmQFr0asR0' \
    --offset '93' \
    --order 'h3zfjbWNAv0hAAdm' \
    --orderBy 'CXiBIgmZop1YccEG' \
    --startDate 'F4udxi6RYk3LBtJ0' \
    --statusV2 'lVa49Cz4fUT2m1JL' \
    --userID 'jShoMELNGyLtub3d' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryGameSessionDetail' test.out

#- 9 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'e21g0dPsWx72gsZZ' \
    > test.out 2>&1
eval_tap $? 9 'GetGameSessionDetail' test.out

#- 10 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'jUU6V7m58nxOV0kI' \
    --limit '40' \
    --offset '20' \
    --order 'afVG82nV6dDpFe61' \
    --orderBy 'fpg4jSE4frRGm9FP' \
    --ticketID 's3TZUFbUPPq0yxfz' \
    --userID '3yoF5xDyLWvQLXXe' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryMatchmakingDetail' test.out

#- 11 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'PeRsUTknjH27XXw8' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetMatchmakingDetailBySessionID' test.out

#- 12 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'bdfesIya2iFRX0BR' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetMatchmakingDetailByTicketID' test.out

#- 13 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'g4r1zzYRX33XIYcW' \
    --joinability '14JHNimyACCeuoyM' \
    --leaderID 'bbUDe8VA4xVFf2DA' \
    --limit '93' \
    --offset '78' \
    --order '7emnbWcD537rhZwG' \
    --orderBy 'KOgDparehDRyzBG5' \
    --partyID 'umXRPghysI5YeQa8' \
    --startDate 'YnJDBvQzFwtgEUqX' \
    --userID 'ONsx1geRZIzc80CU' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryPartyDetail' test.out

#- 14 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'gAC8LbKk0c9wM2VV' \
    > test.out 2>&1
eval_tap $? 14 'GetPartyDetail' test.out

#- 15 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'ndF5tbjzklJDvP1p' \
    --gameMode '8GMIjVkHPPEoj9gX' \
    --limit '95' \
    --offset '95' \
    --order 'XW8qpaJkRZrJBcVE' \
    --partyID 'bxLaxH6iVXlrqRHr' \
    --region '3to94kyFbJ7rkvhQ' \
    --startDate 'zcpk0Gc3GTOaeqLC' \
    --userIDs 'uvLW7kyyCWAAW1mS' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryTicketDetail' test.out

#- 16 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Y5QwaKL2ToNSICY8' \
    > test.out 2>&1
eval_tap $? 16 'AdminTicketDetailGetByTicketID' test.out

#- 17 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '36' \
    --order 'Ylj6AF7aSzjsmOjl' \
    > test.out 2>&1
eval_tap $? 17 'PublicQueryGameSessionMe' test.out

#- 18 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["J6JpTeOL3KLeH7Zc", "STIEaTTokRnTEI7L", "3NxBLHKVdkFvDuEZ"]' \
    --endDate '26DtEiD5XU2siaMK' \
    --startDate '7g5rjx4RKSUFPG9o' \
    > test.out 2>&1
eval_tap $? 18 'QueryXrayMatchPool' test.out

#- 19 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'DDKgEbqCHe6838FR' \
    --poolName 'bPfWcJZYkIcXFEFA' \
    --all 'false' \
    --limit '33' \
    --offset '71' \
    --endDate 'RtaMUfqRmXMZX02J' \
    --startDate 'iIVXcOJNW7BM4yPd' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPool' test.out

#- 20 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'Y764sxZtrj5UpNQc' \
    --poolName 'WDQFdsslkTp4mefN' \
    --tickId '0swlO1Wx5zj6fzAH' \
    > test.out 2>&1
eval_tap $? 20 'QueryDetailTickMatchPoolMatches' test.out

#- 21 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName '8QxMFWPe5Tw5gGGR' \
    --poolName 'huKOpNjp0RqG62Ou' \
    --tickId 'oDjm8zhkOp0RhdaI' \
    > test.out 2>&1
eval_tap $? 21 'QueryDetailTickMatchPoolTicket' test.out

#- 22 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'QD58evmseEy9ljJx' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchHistories' test.out

#- 23 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'RImNEXVMsWVRsuuo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchTicketHistories' test.out

#- 24 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'Ud4AlwNmvUGz6phE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'QueryXrayMatch' test.out

#- 25 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["MZCcVAJBdxhwzd04", "QzeJBdxhShQd4K0R", "e3TDBxN6BdfiBuIJ"]' \
    --endDate 'pFSdLnYFBzbRQCMr' \
    --startDate 'fA4bHBi9fCI662bl' \
    > test.out 2>&1
eval_tap $? 25 'QueryAcquiringDS' test.out

#- 26 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["clhQgZGgKHjqN7JQ", "4DlqGSVnNGGF0CM2", "lczd07TsVV1wWju8"]' \
    --endDate 'pNPj65fcfhjcoL55' \
    --startDate 'KO2EIY36oJgRulFk' \
    > test.out 2>&1
eval_tap $? 26 'QueryAcquiringDSWaitTimeAvg' test.out

#- 27 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["hkZb4bgQfri9pAkQ", "bBecsCW2Vt3Ivdlz", "CBi1pmvLoKdfLzS3"]' \
    --endDate 'FaNDEzaC5ahpC2gY' \
    --startDate '5LkDXHRuAZULNRGB' \
    > test.out 2>&1
eval_tap $? 27 'QueryMatchLengthDurationpAvg' test.out

#- 28 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["7D2oUoJPgQMLjA0r", "CFokNaLlF5jsF9tD", "NgapotcwZvSPLlMj"]' \
    --endDate 'W9FSxp3foNI6p771' \
    --startDate 'Rz4CLWIbgrMzshmm' \
    > test.out 2>&1
eval_tap $? 28 'QueryMatchLengthDurationp99' test.out

#- 29 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["q5xjozG6kUBUylXN", "vKaFvFcUymiE0wxz", "vLnmg8ENB8HJ7mMX"]' \
    --region 'NAA1FbA5UDnvSdA4' \
    --endDate 'XDH5es4rA2tjVODx' \
    --startDate 'QdykEgFcXh9HwoYU' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalActiveSession' test.out

#- 30 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["tu3mZRetQ6sOyR91", "1p7a0lzpdgtI4lmR", "Dr7r6wOhbkUhq0Fy"]' \
    --endDate 'LHm7vFTXmJeQnxxv' \
    --startDate '3ErVbjo9c8jEyvII' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatch' test.out

#- 31 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["aFLvRnCKW2DfAdK9", "ek7ThdsN93IHDclY", "BGqflTGeLnoIfZQl"]' \
    --endDate '7Cip0thDhJlvXZaP' \
    --startDate 'oGLqzvDXG3moMXlL' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalPlayerPersession' test.out

#- 32 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["sKotJTtlLVaL8UjC", "sTQ0ujfvIShwTHsS", "ze4tFspCjpycDu99"]' \
    --endDate 'jyl0WExlmBy7bFcu' \
    --startDate 'kN8fFXroGRua2V3t' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingCanceled' test.out

#- 33 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["oRpCkSA3wkJJYsXK", "6uIZg1tVkUtAwIu2", "UnMibDn2WdPFDXSv"]' \
    --endDate '8V17tvKXl8D4xR8b' \
    --startDate 'xMygNlrA7QKugVaw' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingCreated' test.out

#- 34 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["mnEXjUp4Yu2nNv1M", "gvJ0lnOMCTszlV8g", "oTBv3f71gBM41iuD"]' \
    --endDate 'BOzH7oXzbEIfapHe' \
    --startDate 'GJKFZRq7P6dhEc8s' \
    > test.out 2>&1
eval_tap $? 34 'QueryTotalMatchmakingExpired' test.out

#- 35 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["I6PUyYg9jnQUWbO1", "dyqK3vFOz6slXR0r", "GpG63lesGf42h9xh"]' \
    --endDate 'MEjwEfvHIjlPiTky' \
    --startDate 'Hyeeaf3Nmrm9dDTH' \
    > test.out 2>&1
eval_tap $? 35 'QueryTotalMatchmakingMatchTicket' test.out

#- 36 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "tBP16zrP3XXXBNHS", "activeAllianceRule": {"max_number": 51, "min_number": 24, "player_max_number": 95, "player_min_number": 89}, "activeMatchingRule": [{"attribute": "F7AurkNnhbFTp4q0", "criteria": "H9p060YpVbBfIKDY", "reference": 0.02039498381643523}, {"attribute": "VcGhtqU2iMbYETyW", "criteria": "Odj2K2yWkOcsGob2", "reference": 0.5959489752091308}, {"attribute": "WlaL7Eg4ozfINow6", "criteria": "Cf1JxjkWz4gPYKXj", "reference": 0.9679407245321915}], "function": "JYS0AATWnI3ugmKx", "gameMode": "2PvPlfGXacvMLxHX", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 4, "matchID": "GgAXrxNtajQROtP7", "namespace": "WP8axMxIutLKdkc4", "remainingPlayersPerTicket": [31, 43, 70], "remainingTickets": 93, "sessionTickID": "Bl7ENwXS5Qou59g2", "tickID": 36, "ticketID": "PFQYOhVhkiZELgCp", "timeToMatchSec": 0.5925570039797277, "timestamp": "1983-09-10T00:00:00Z", "unbackfillReason": "47NvmpVCWzVnODMV", "unmatchReason": "7rsE6spwBP7MN6YP"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateXrayTicketObservability' test.out

#- 37 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "Nlqo3xQyhZpxDUFr", "activeAllianceRule": {"max_number": 7, "min_number": 68, "player_max_number": 0, "player_min_number": 83}, "activeMatchingRule": [{"attribute": "D1olRvWby9Xoa3g6", "criteria": "ZYuB8pxJDrJVG6pk", "reference": 0.18989050435210697}, {"attribute": "JpaRCywGRuWmP7c6", "criteria": "3oVTuc6ZKfw8uFfy", "reference": 0.45203731708549155}, {"attribute": "eLWApA2TD5nOd7tE", "criteria": "lnf8QWHI5yfea9gv", "reference": 0.6142854534037283}], "function": "0dczZuD1px75Xm76", "gameMode": "SDcEqEFfVIWeNWmP", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 98, "matchID": "58um2MGInHfpMFB9", "namespace": "89JW0HnVAyHlpt9j", "remainingPlayersPerTicket": [20, 71, 21], "remainingTickets": 32, "sessionTickID": "rmRnDjkysqEimiZl", "tickID": 68, "ticketID": "zC1CEGtQuPo77Mdu", "timeToMatchSec": 0.21274209432065172, "timestamp": "1980-05-10T00:00:00Z", "unbackfillReason": "XOmjUBpyAJdFs1pR", "unmatchReason": "IyfBJjHZwpTbVCOc"}, {"action": "yIZLB2UWeu1MVfM9", "activeAllianceRule": {"max_number": 48, "min_number": 86, "player_max_number": 69, "player_min_number": 56}, "activeMatchingRule": [{"attribute": "idDfdlHkxZKocY3D", "criteria": "soyXf9xj732rJsQt", "reference": 0.20352159603073805}, {"attribute": "q0dqWGMDYPYeubQG", "criteria": "rWkIBlQVB9crlOwS", "reference": 0.7611973406720968}, {"attribute": "QJOol6bSojQDw23A", "criteria": "FVt8F7jH9Vrczu5y", "reference": 0.5022722855363089}], "function": "Q4zWngJoSuPN0ROM", "gameMode": "A5en2T8KxJbRu9bT", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 19, "matchID": "O3njDG0ieAOIBqAH", "namespace": "Kn6Wrjsw4cDNCsjl", "remainingPlayersPerTicket": [47, 98, 9], "remainingTickets": 69, "sessionTickID": "4wQ3b44wNclAnzf6", "tickID": 79, "ticketID": "YXR3HnxigZPO37gM", "timeToMatchSec": 0.6519246383793463, "timestamp": "1976-05-25T00:00:00Z", "unbackfillReason": "cUdDM9nO7pqnVIY5", "unmatchReason": "b9qr7X4kQj4vSe8t"}, {"action": "t7hf53oLEmk28vKS", "activeAllianceRule": {"max_number": 59, "min_number": 84, "player_max_number": 22, "player_min_number": 0}, "activeMatchingRule": [{"attribute": "aImofcg6O2G3q3zL", "criteria": "81Yjb484VOGYnkeW", "reference": 0.956250619516383}, {"attribute": "ZB2NDVDYZem64xS6", "criteria": "JUX29TrfHhC45OM7", "reference": 0.6264535769791016}, {"attribute": "4iyU6yfeVPFEVqMJ", "criteria": "BUMmlkyLWI6G5IFP", "reference": 0.06938144755986142}], "function": "1wke17Clo4OczJz9", "gameMode": "pBHcidi2ezuLvsHa", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 60, "matchID": "iqduo7HD3GqOMKy5", "namespace": "qwhIdagAiXf0UsP0", "remainingPlayersPerTicket": [61, 73, 48], "remainingTickets": 10, "sessionTickID": "LvckTt9yE9Immf0O", "tickID": 47, "ticketID": "B4LzYWo8bCtQsTSF", "timeToMatchSec": 0.7779772296606231, "timestamp": "1972-12-11T00:00:00Z", "unbackfillReason": "fjPeRhPWmhzjT3pO", "unmatchReason": "nwTZDLFQyvYw7ugE"}]}' \
    > test.out 2>&1
eval_tap $? 37 'CreateXrayBulkTicketObservability' test.out

#- 38 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'mfbdcc5RJSiWgkoV' \
    --limit '50' \
    --offset '21' \
    --endDate 'sCmN9xESudcRsS8U' \
    --startDate 'tGCNtoz8uLal9PMC' \
    > test.out 2>&1
eval_tap $? 38 'QueryXrayTimelineByTicketID' test.out

#- 39 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'K5yNxkhMZH7FgByN' \
    --limit '86' \
    --offset '22' \
    --order 'CGvkDl3sSbbNs0jJ' \
    --orderBy 'AEt11fgSxMg1Fizp' \
    --endDate 'OrAO0UbaIQJqIpOP' \
    --startDate 'YjjXTyXYfLU5IkXA' \
    > test.out 2>&1
eval_tap $? 39 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE