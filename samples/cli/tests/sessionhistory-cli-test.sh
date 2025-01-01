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
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'MDZIc5vByBVwwy7u' \
    --gameSessionID 'oUC0HsW1ML5X8lP5' \
    --limit '50' \
    --offset '84' \
    --order '28MnCUIjCTXmDVD9' \
    --orderBy 'BwXtlpwaPcdw5gPn' \
    --startDate 'uw8Ru6wM40acUSS7' \
    --userID 'Y6Jef4wBaFZXH8cP' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '5rTtPiaAveBN3I48' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'fyclCH0GznMVpc1y' \
    --limit '67' \
    --offset '91' \
    --order '0X3o1ffI3mAR4Zqc' \
    --orderBy '2NMwm8xM1j9lv3u2' \
    --ticketID 'kTA74qk14DV1pBeu' \
    --userID 'iAq1VM2ALicAxO3Q' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId '7Zrrq1XGJuJuQu28' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'n6tzDVYT3ye0xbb8' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '63' \
    --order 'p5QtAWqmyeioq3pc' \
    --orderBy 'LeS8OaFYLgaE5iKR' \
    --partyID 'aWv8X1JB1HQKDHfw' \
    --userID 'BxJJDbt6TK9os65S' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'E3MEDyJQD57i1bb6' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'HbQm16PL6jFI5SJo' \
    --gameMode '4hDOteFSu3mG3Zul' \
    --limit '68' \
    --offset '72' \
    --order 'iS5JAe7ZVZI698rA' \
    --partyID 'Qyh6I4TTC9zKBfov' \
    --region 'GaYgUxdBfxAEyRJg' \
    --startDate 'J8B2zgonGXcPHRYk' \
    --userIDs 'Q20ZBInAKAR9DnXa' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'OiwiNT2AokYJjU2V' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '55' \
    --order '9Gh1M820zx3SU44K' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["EyWFbo6U02YRDDGl", "PPeHPDfxc3PfH8O7", "X4HZOfGtExSIByyo"]' \
    --endDate 'pGNgg14gCJJxt2hO' \
    --startDate 'ngtWDxfwx9t828zV' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'NqG9UZPpAF8MnZqY' \
    --poolName 'ussTrVIyeqyh8tCf' \
    --all 'false' \
    --limit '59' \
    --offset '30' \
    --endDate 'jJwX7h6XX0kceEXh' \
    --startDate 'oVrRSzZUTQBjoYxi' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'y9yRFXCrxmEAu4hA' \
    --poolName 't3hlwn3sJ9ZtY9eS' \
    --tickId 'vkMvYEGGoj51XJ2X' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName '0gDNlSlIBFcqoMzz' \
    --poolName 'QZlUc24zP1dnJJFR' \
    --tickId 'LgHDAWgMT8B5c48h' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'TmSXFRcuPNrwqNM0' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId '0jJJftTko4g5QfR5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId '5wqxYfIyP4yIvWxe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["5dKq56yYXLI8bkgn", "nyuPvKeLkcL9sEM9", "XizVpUDStFtgotR5"]' \
    --endDate 'VfbJM1lyLONEUnCE' \
    --startDate 'oGb3hl33PZ8G98xt' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["3PU3vxhJrAx6hnmI", "TeJJJP4JhlxIHKPl", "Ww38epYz0uUOjLRc"]' \
    --endDate 'pUQ8b9AwmvFGPlKI' \
    --startDate 'VUugOhBlBcOr0zN7' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["IGJwmisFLdfrWf7v", "6KuwwSHNzcUUe1QN", "CKm3TQ9J6rCdcqcC"]' \
    --endDate 'Iu3COFnlJMMvCmvH' \
    --startDate 'EuaU6ICe5wCcHk7p' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["VLD94TQJDylVF5ua", "bqwBzj4GeJ3D6oie", "7OZTj0jCWp8t4hq9"]' \
    --endDate 'vbm3qxKd47mciXWa' \
    --startDate 'MBeT8zvnyUxJ51OA' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["m1ZEaxA04OCdzCVv", "L8b8Q0BY1htceVfC", "stEeDpqvx0klvR3h"]' \
    --region 'tyhTDZQZUGnwphPe' \
    --endDate 'v1oI3qGPjb9vrU08' \
    --startDate 'L69qSxKxYejimUpE' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["UpQESbgv5ebcMNme", "5Y6pXSk2TE5Uwlar", "Kd7J1jye640hak5P"]' \
    --endDate 'UUh4AHCdCldCnEYV' \
    --startDate 'Eps3Tjg9RtUrnW7c' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["ZtlXmjEM5XheVQVT", "l9FwkHzxgCli9Pp5", "OSxEr8ZlAzZSdIXK"]' \
    --endDate '9mE1fElP8cAtmfiq' \
    --startDate 'ZS6SpUZ4ve5iywXY' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["cXdLzjXZOv5rSDNY", "g5WdrWendY9s5HXn", "x5F1Ta02BIIyGghO"]' \
    --endDate 'lRJzlbx8NxX9zbKp' \
    --startDate 'lPwr6StBnnCXr99W' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["1GHyevf8cwl8Kk3e", "RhUS7TSA3yvwFkb9", "2H4heTN8B5ftj4VY"]' \
    --endDate '4AyOfwGTl0MpStKW' \
    --startDate 'Z2Fvq7nxUKyDEhrr' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["fxDybSGYpdkxbn2t", "RGl3rXFPbz7UJmWU", "5PHjn3l134em5LEA"]' \
    --endDate 'u7Pqu12UikRYi0QJ' \
    --startDate '2HIlfOw6umQu6zNk' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["vYXznf4oFD0uvpGP", "CT8ZqaExz9uQ1ULW", "xunTVKJVvBKsp5q7"]' \
    --endDate 'fodnl5o3JwmNMOgB' \
    --startDate 'kwLs4SZeVpB9ejrp' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "f53wKa86MNByzlY4", "activeAllianceRule": {"max_number": 46, "min_number": 16, "player_max_number": 84, "player_min_number": 12}, "activeMatchingRule": [{"attribute": "aUYIti7YLLf2FwbN", "criteria": "xAb6OcDzMo6iLcxq", "reference": 0.03747121072030035}, {"attribute": "KsrOmSgy2dk1IDxG", "criteria": "f42kmkbkplX6OBZk", "reference": 0.33678978903758827}, {"attribute": "2ry8IuATuXLA2ypJ", "criteria": "ojRDGInGkK26qfTY", "reference": 0.8952241913927568}], "function": "TW6UT4exis96ZBFa", "gameMode": "mQDAcWRheFQyRPXD", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 52, "matchID": "Fqc3nvQCkXQnZPw3", "namespace": "dNRegSsNpVz6Z4Pq", "remainingPlayersPerTicket": [96, 32, 26], "remainingTickets": 57, "sessionTickID": "G9iW5vxt5S1pt9Ya", "tickID": 31, "ticketID": "tS7DpUrIdVFIQ84E", "timeToMatchSec": 0.029266494405541965, "timestamp": "1993-08-10T00:00:00Z", "unbackfillReason": "0BJlXZBHJAEx9xFU", "unmatchReason": "KfXZR6UBQ4i1jDCL"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "5oPSRIiR6Eq6dYDv", "activeAllianceRule": {"max_number": 38, "min_number": 43, "player_max_number": 10, "player_min_number": 31}, "activeMatchingRule": [{"attribute": "boTqInLbll4TlfqQ", "criteria": "srMG2OwI2YcUBW0K", "reference": 0.17504033888706394}, {"attribute": "6AwvD3SgSGvhCu0H", "criteria": "P8x37idA0OoWO3gf", "reference": 0.23909046631526043}, {"attribute": "gPrIKt7BgbOF65aj", "criteria": "r9pNUQtwBPVY3jXF", "reference": 0.5025510641597702}], "function": "KBUWmkT7lmTQJBfz", "gameMode": "ygmAMu2Kl3iwgT2B", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 64, "matchID": "98Y3bw1lsiTKGcAz", "namespace": "Ic6xCXPIc47bIVAv", "remainingPlayersPerTicket": [61, 59, 100], "remainingTickets": 64, "sessionTickID": "4wLNeg8IIfIplSb0", "tickID": 18, "ticketID": "ELCqSmmL3mJtcmbG", "timeToMatchSec": 0.49156308588870146, "timestamp": "1983-09-01T00:00:00Z", "unbackfillReason": "AMAysFM7IB0DAYjz", "unmatchReason": "TlMGWPtxhV32c3Ta"}, {"action": "6e2TYjDLHJ982tcF", "activeAllianceRule": {"max_number": 11, "min_number": 67, "player_max_number": 57, "player_min_number": 40}, "activeMatchingRule": [{"attribute": "YKiQZgyHocbR7XyX", "criteria": "lrJvS7doqk4q6c0e", "reference": 0.7531435056118458}, {"attribute": "z4ScXgskF6NVAbYE", "criteria": "qf1hdPuMXZYslr4u", "reference": 0.8728580087459723}, {"attribute": "3gojNSilyqiQA6z0", "criteria": "V5tGSvKjZieLXDe2", "reference": 0.517814777708831}], "function": "edlo6o69CRtG9hb5", "gameMode": "krY8hpyVAT7vKFQB", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 1, "matchID": "qRTCdlfcWFbFTJ5R", "namespace": "wmLIphoWGx1XjzPC", "remainingPlayersPerTicket": [88, 73, 93], "remainingTickets": 42, "sessionTickID": "DK9GHzsbbMp3Fi2L", "tickID": 74, "ticketID": "WN0m21XmcW87DP4o", "timeToMatchSec": 0.3910381563779748, "timestamp": "1995-11-01T00:00:00Z", "unbackfillReason": "QIiEkgSaLVOQkPba", "unmatchReason": "rNwOtAz0h3bj3NCT"}, {"action": "jJXjUVdQBnAScpoE", "activeAllianceRule": {"max_number": 42, "min_number": 60, "player_max_number": 36, "player_min_number": 55}, "activeMatchingRule": [{"attribute": "iwKp6E3YCa4OIyVr", "criteria": "VyXkBEsaqPzoHnQU", "reference": 0.9709504126193796}, {"attribute": "B9cYX4ytluKgnLOL", "criteria": "vYEXHnbUZRQaneWD", "reference": 0.6157303150075278}, {"attribute": "9hdrAag6C78wnA1c", "criteria": "YX6R0N6yS4VLAdPU", "reference": 0.3078829399868085}], "function": "oWQomqbnZDZaTkgs", "gameMode": "8Yk7wStUodlzTaEs", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 61, "matchID": "keWi3L96pIJnZyL5", "namespace": "hCz0ZIhLiEejfvgF", "remainingPlayersPerTicket": [57, 98, 25], "remainingTickets": 49, "sessionTickID": "Ros2YaUD4SuHfKQc", "tickID": 17, "ticketID": "2vVMB72o3ZiwRzOT", "timeToMatchSec": 0.5743915048562346, "timestamp": "1996-09-26T00:00:00Z", "unbackfillReason": "1fKuuixbg4FNUlVh", "unmatchReason": "qpMxFykGKUrqKFw1"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'AikbRQRlaaXy9aQ8' \
    --limit '72' \
    --offset '94' \
    --endDate 'H46cDrkTaGZ9S5iW' \
    --startDate '4YQGTA8R4ZDtd9as' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'z96jEyUl35ZskJwU' \
    --limit '39' \
    --offset '59' \
    --endDate 'xYWwQ2zveOElJRaB' \
    --startDate '5lwjYPd9NQCjJZYN' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE