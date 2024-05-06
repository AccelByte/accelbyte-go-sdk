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
    --gameSessionID 's5sEDA9wIJgG2qYm' \
    --limit '24' \
    --offset '78' \
    --order 'mH4X6y3VJQUmhHXp' \
    --orderBy 'DtfxBXtpRL1N75j5' \
    --userID 'g9CzssOxFsMjzih3' \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'aiRQmBunViF2RY7X' \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'AeBnuX4i9vF0bLxk' \
    --limit '30' \
    --offset '25' \
    --order 'jISQhs4lh8CbzwUU' \
    --orderBy '3qmn3444xRBPtSuv' \
    --ticketID 'rCQvQhpBdRQXo0lM' \
    --userID 'bZv8poEjPwuafirZ' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'RIvqZ1tWGDRRG3vk' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'cftTFczNVBYnpZ4E' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '51' \
    --order 'urJgBnL0JMQIpfeH' \
    --orderBy 'eGbVMF4E8PC0xpty' \
    --partyID 'aG4W7mfAmlfqHgft' \
    --userID 'POXvhwosdndq59oD' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'mb25Z2lDFHKn57qS' \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'a9eMZDt2gLTL0t62' \
    --gameMode '47FT8MxbbllFpNg3' \
    --limit '46' \
    --offset '81' \
    --order 'rF86XJZDkfXFoH1J' \
    --partyID 'TmyKiFeWKKJJtY7e' \
    --region 'oZlbZZzt6EaYbY79' \
    --startDate 'cQtKGItWNznZSDo1' \
    --userIDs '9pUp1Jq9w2v6TVR6' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Oghixn9257ZKDjXn' \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName 'e2aB2ZAhH5dtUy97' \
    --endDate 'lt0NEUJ1yPDn6d97' \
    --startDate '2bETlW0Y0zntBpkF' \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'YluMBbtFDX5xAM15' \
    --poolName 'tXHUYSDa61t5OIdq' \
    --all 'true' \
    --limit '100' \
    --offset '18' \
    --endDate '9RZePPLPsTknSWzW' \
    --startDate '4oRJ3NeaUtBasT41' \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'iP8UXg24eeMYApP3' \
    --poolName '5vrtnUbtWr6TAtsf' \
    --tickId 'DRay13JN6eH0ioDf' \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName '441gn7GH6g15AjZk' \
    --poolName 'b81q466chKX4JHXP' \
    --tickId 'FBoJ73UpUhT8n2Ao' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId '9zVRGxI0EVf9Oqfn' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'hNDsPnQWkdrTfmm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'LOlA5a3OiEBk0I1K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'd71aUzwf8m7UWAMZ' \
    --startDate 'u9LpFiPwcpJ1DTrB' \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate '6tvOGQzGiQ8ZvYHf' \
    --startDate 'mECzeQKHEsmKf0BT' \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate '84DFzEoG2fICuiQL' \
    --startDate 'BIBrn1gKcHbFqOIg' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'sWpE66GKDSdJYlU8' \
    --startDate 'CZuxBJjGTjSmNJYA' \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region 'CetOcLodLrElRbbI' \
    --endDate 'NEt4w7eVpurZNxcT' \
    --startDate 'Z37F9f0cJII9RFme' \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool 'C8owb8aTfstqpqRR' \
    --endDate 'WTApbYehr3TLZ0zB' \
    --startDate 'jV5lPJsZDzYRROIu' \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate 'iR3gzSvib55w2HAt' \
    --startDate 'v6CNEZ6N4WhTjYsB' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'K7yQRJ6Q3axfenAE' \
    --endDate 'xsuS8NxxLpBPusZW' \
    --startDate 'Qrem6jPQKNziR7Fh' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'b1ekI1rdHwzZ8wOX' \
    --endDate 'QexeQ5mXuW2YAXUl' \
    --startDate 'Q52A1QXwYsak01Nw' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool 'u8NQqNcHSKeVX8E1' \
    --endDate 'Iw1Pu0mjRg6Zt6js' \
    --startDate 'fk0ssPcyAaVIZ62M' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'qRub8rifXqMg8Tpw' \
    --endDate 'tAGXUsAemkWTiHxw' \
    --startDate 'hOEZd9ogmF00O1u6' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Wt4OS15iyOlrlO2D' \
    --limit '32' \
    --offset '100' \
    --endDate 'e8ZrHotVCqXuTgud' \
    --startDate 'mMBBKAjAqIV12Gut' \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId '1y8IAk7xqDGCEVPd' \
    --limit '37' \
    --offset '87' \
    --endDate 'FbYHpIEqQ0jzPKPE' \
    --startDate 'quHH44bYtDD5sOZp' \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE