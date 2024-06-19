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
echo "1..34"

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
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID '9GKIPWnFJk6hjAeF' \
    --limit '41' \
    --offset '10' \
    --order 'vSA25U9DkFt2zw64' \
    --orderBy '6ZGej050eRP4oPZC' \
    --userID 'hIuCX4kGOjKpTFnh' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'E4lW5vjJ7YxneqCc' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'EAZmzAMIItex7P00' \
    --limit '58' \
    --offset '55' \
    --order 'pOFg2ZEkrhLLCEl5' \
    --orderBy 'LB4NWOIlUaidTGcI' \
    --ticketID 'HUvS5N5qOUa4F8KF' \
    --userID 'vy8jokdtBtwwBcB4' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'DXHpnooz0kz9l0Iv' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'MxlF9mhVLd2P8p4h' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '73' \
    --order '48PgBrk2xzP0Gbde' \
    --orderBy '67jQKcqqvnp1m1Dh' \
    --partyID 'FGBjCcoDCwgwHeeb' \
    --userID '0uYINqhd5FYraaVr' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'fLHcWMxdVqaKMVpX' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate '20DsfTX3IVSEClG3' \
    --gameMode 'tfzOnOv0CyIbeHW0' \
    --limit '84' \
    --offset '9' \
    --order '2ppEa7GWYGqUzGqQ' \
    --partyID 'J0J6BIyKq8adc43u' \
    --region 'W0dKqcK3FaOArEBs' \
    --startDate 'Y5YeIt0OfRFTCgpI' \
    --userIDs 'HWs8lybq4AbkDbcN' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'GrAVatBdMNQY23M4' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '9RX2oERwJIZ2MGrO' \
    --endDate 'S0ReIiHuJJ7YWjts' \
    --startDate 'wSq8gG7QL8oIBDgY' \
    > test.out 2>&1
eval_tap $? 15 'QueryXrayMatchPool' test.out

#- 16 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'zQzf5kPEh4eLBEEy' \
    --poolName 'VlvPCkzx5oOfzcuw' \
    --all 'false' \
    --limit '53' \
    --offset '20' \
    --endDate 'QljavHdwRpErPqPI' \
    --startDate '63ikgHJwKu5TBTpd' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPool' test.out

#- 17 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName '9mFfkNjcx47PbAte' \
    --poolName '1J69d4tydU5KVx1B' \
    --tickId '8H6kDClTrlzs0umu' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPoolMatches' test.out

#- 18 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'LLj9x83xdzAryfK6' \
    --poolName 'KW1XTrgeJHPPBK2w' \
    --tickId '4GEvL9INvADCyjjL' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolTicket' test.out

#- 19 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'Mvf2MAlH3G7oOOAL' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 19 'QueryMatchHistories' test.out

#- 20 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'PPfHWxiVMIn2pyqQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchTicketHistories' test.out

#- 21 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'Ii85m8EqQtcCAnic' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryXrayMatch' test.out

#- 22 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'OiG0fAAu2ypeIDJN' \
    --startDate '6pg2hAdMAoCsMi1E' \
    > test.out 2>&1
eval_tap $? 22 'QueryAcquiringDS' test.out

#- 23 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'tuCKyEHkoXwjvy7b' \
    --startDate 'Vy5EdhXyRwRh8HIW' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDSWaitTimeAvg' test.out

#- 24 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'gHWapMOlH23JHCFp' \
    --startDate 'z3HY1vuPlYxNIpDs' \
    > test.out 2>&1
eval_tap $? 24 'QueryMatchLengthDurationpAvg' test.out

#- 25 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'kvIrlTEoI3HnJECt' \
    --startDate 'L1l1xWuvFCccXjYX' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationp99' test.out

#- 26 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region 'Pom4r9jQ4f5D3TTc' \
    --endDate 'ZFTv4nPj0OgQhHdI' \
    --startDate 'SkfyJ1xDulUY0Ebq' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalActiveSession' test.out

#- 27 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool 'VEXMBHUzm1eq3f0N' \
    --endDate 'QplnSpg10DS1j4SL' \
    --startDate 'PhMKgIThXVUMkAYO' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingMatch' test.out

#- 28 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate 'v6R86llIPb9LOrkw' \
    --startDate 'bu8eUtvyZQG6Bt3h' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalPlayerPersession' test.out

#- 29 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'WPKdalC8F87YmhZR' \
    --endDate 'nzhxGjiIoQK16sZr' \
    --startDate '4pjm0r3NrHCLxvtg' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingCanceled' test.out

#- 30 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'qmRnZC1QaPkncTEG' \
    --endDate 'lF80YBKswQjNbbvA' \
    --startDate 'kS5wsYuqQ3cztm5X' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCreated' test.out

#- 31 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '4Av3XhflKU4GuvI3' \
    --endDate 'rk4hffNCwfmGSr8X' \
    --startDate 'elq7Vs82WJLVOlV9' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingExpired' test.out

#- 32 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'xbfhIckVYAMqry5T' \
    --endDate 'xZJsa60Qg4rBuZF5' \
    --startDate 'WsRCvNLNpGLw5xnV' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingMatchTicket' test.out

#- 33 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'CKxrGtVRiJVOrAEo' \
    --limit '24' \
    --offset '67' \
    --endDate 'bozWwt8XEaGPJ9Li' \
    --startDate 'xv8UKGAlPpHYMdjs' \
    > test.out 2>&1
eval_tap $? 33 'QueryXrayTimelineByTicketID' test.out

#- 34 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'MGjJ4f1mYYf8ItO9' \
    --limit '3' \
    --offset '37' \
    --endDate 'Kl9NAKOkAfYcSjyZ' \
    --startDate '6PWjVix0z3MHBOfq' \
    > test.out 2>&1
eval_tap $? 34 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE