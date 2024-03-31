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
    --gameSessionID 'k5Wm48SRfcFxsOxf' \
    --limit '13' \
    --offset '13' \
    --order 'OL2CwzkXZfaf6dBF' \
    --orderBy '3GIK33f9nbBD9oq8' \
    --userID 'V3v3bcLBZIK3yupg' \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'BXEhRhEmsfWyC70x' \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'IAJTAf5qkypADhsL' \
    --limit '33' \
    --offset '62' \
    --order 'KCBvhGkrSl8AxLyU' \
    --orderBy '9Hna8dJDaqOcLaTM' \
    --ticketID 'p4rJItt0a6qRX6WT' \
    --userID 's0CCjx4gJVtLOTch' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'tfkK5IlLg9SzX5gD' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'B5uBnPGXBGEBrBfu' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '97' \
    --order 'a9YUZziT6MOjW0gY' \
    --orderBy 'obNNlxxvDn7u1ybF' \
    --partyID 'my9HikG8UOn0wkqA' \
    --userID 'Tqiogg3EJTI4FuZK' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '9GrXvg31hC9GT6Gu' \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'QLTltplObqS8rH0M' \
    --gameMode 'ziibbuHb0tYYyedd' \
    --limit '80' \
    --offset '30' \
    --order 'pKiceQTQTgz3esEg' \
    --partyID 'pYbgKdn53BHoJ9Fz' \
    --region 'kT8jdrHolbxgqN68' \
    --startDate 'fzwHRT3NDUYSsUVM' \
    --userIDs '7JOtmB1ZexPLb1VG' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'm9cbAYsmKUlngEO1' \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName 'WYM3fJIOuO8g4Xa6' \
    --endDate 'ahpBE9pE3N3R9ooZ' \
    --startDate 'riZXaS2bUQ5MtOQE' \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'cIGi6fmSsEIVNKgM' \
    --poolName 'iCJ4x4jwXgvW0NbF' \
    --all 'true' \
    --limit '43' \
    --offset '5' \
    --endDate 'IgbU4CiviNhPB9lG' \
    --startDate 'Brzbe5h4GUkPYDNg' \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'E6BxvLa8FeKCkFoI' \
    --poolName 'VpzYyFWB2Q3tYZgK' \
    --tickId 'AM801M6qJ6Mnm6Bz' \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'gVh5LyterJUemrqy' \
    --poolName 'arG9KXw5886HvJev' \
    --tickId 'NakcnZn9ggpat3my' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'nK0TXouXWrVlsYmW' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'a0WarhBgFuYMgNVl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId '0g8HQjCCrapJDv2k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'AYRCQPMlJt74F6bl' \
    --startDate '4mOxYz6ZDHE0hoCK' \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'dKE4x4FUA7rSIaEu' \
    --startDate '7Q0FYN0zXiKBrv8Y' \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'H8YQZjXXgr9IYYoF' \
    --startDate 'bTCn9N26TTvnTQvP' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'nVv8zNt929OyNUZM' \
    --startDate '3JPnSojOU8znOTFP' \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region '36YEF2UaUyqDHRqm' \
    --endDate 'FqmVmCiHdmVJN0z9' \
    --startDate 'bfjBXAsqjzmCNeNX' \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool 'Il6h3UiaeCMuitow' \
    --endDate '4V5rKtL9SxNz9ULg' \
    --startDate 'sqgKgw0tVJ0yVXe9' \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate 'mYMoRX2W15NoC0Qz' \
    --startDate 'Y2KhDgbSmWGWbdYQ' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'jvs9d1jn2zToYPm9' \
    --endDate 'OH9tIP155VRcUjRY' \
    --startDate 'Lwq7MnVWVF2SoiU1' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'UtsuU3j9WgGeE16I' \
    --endDate 'wUnobYu5QbCNKVuU' \
    --startDate '0Cc2cjaHQMIuxYJW' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool 'GoyMFK8KuYBsiBMx' \
    --endDate 'u8SbcHumHFThPyot' \
    --startDate 'cXCql66VSJjdkM8f' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '6SnbgQcjgyBsZWjo' \
    --endDate 'mu57Y6G432laq2vk' \
    --startDate '38mnEyUHXKBfgh2M' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '7W1Z2eB7XoEGdeOw' \
    --limit '48' \
    --offset '18' \
    --endDate 'wlJfJ0zbrHsLU4CN' \
    --startDate 'Ip34il1zbOTHiJTY' \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId '8kNosCrhNyfRjRuN' \
    --limit '41' \
    --offset '66' \
    --endDate 'UC99HdW6INwACooW' \
    --startDate 'RCbz2eYY9hwkWafU' \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE