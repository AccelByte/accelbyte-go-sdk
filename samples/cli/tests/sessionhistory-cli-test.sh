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
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'XlngQuI4f29M1O1r' \
    --gameSessionID 'YNSSgufF6iHZtrER' \
    --limit '64' \
    --offset '34' \
    --order 'jTXB4YpRryxIEzHi' \
    --orderBy 'kIcDtV0P1rQifDzi' \
    --startDate '8moywCVuemI5K0Fa' \
    --userID 'S5baqstGf6me0cT5' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Eb78WL9YAcas7Pbd' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID '3xhca91f3ImfaQT0' \
    --limit '48' \
    --offset '5' \
    --order 'jGt30KBHTkmXcMgQ' \
    --orderBy 'SWl5WqzqLoAISIvj' \
    --ticketID 'C968Y7r7KNWTZA4I' \
    --userID 'uadKaTtt5DwPCdgm' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'VMvsLn222PYhGaHs' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'd9FhTyr2NKdNZtsT' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '70' \
    --order 'AwAPsm3unswPvdpm' \
    --orderBy '6fpBC8B4vJjv46Ez' \
    --partyID 'sIlTT64TUk39zY36' \
    --userID '0mMxBNdQmccHf6s2' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'jPMTYca2DZKvF9ge' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'mQZORLLC0cL323XV' \
    --gameMode 'o3dYyfou6RPaUIQN' \
    --limit '46' \
    --offset '1' \
    --order '5r2ZQQeaZ6YrLEmd' \
    --partyID 'HGWOLKnS0Q3Sf3jX' \
    --region 'a88vOCwrISKlV280' \
    --startDate 'bw7pfUYlRkmGKmlM' \
    --userIDs 'EwQCoq07N2rcDkUc' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '2BXJyShlUltZapFv' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '22' \
    --order 'orJl0zFQmZG9Jk0z' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["epRRwWDpUDjlHcrh", "0MEAkT4BEo2Pv0FZ", "b8c70zNq7d6thQFa"]' \
    --endDate 'jXADfQ6uLlrXXgDc' \
    --startDate '6tx9zrQ6XJ1APyqa' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'rvBYipv2T2x90BZu' \
    --poolName 'aIiuha2YyNOMd7Lo' \
    --all 'false' \
    --limit '25' \
    --offset '59' \
    --endDate '1fSMbbr9yp3gnfkD' \
    --startDate 'wyBpFzysS5NHXIBD' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'junYe53Z3l32GVuN' \
    --poolName 'fU2IUJzlW47x76iX' \
    --tickId 'MDRYR0qjI6SFI9qb' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'dz3MuxjOGXOpPtcn' \
    --poolName 'qaGfyeMZecFbVfMi' \
    --tickId 'D8JxDL7unlV9U4pi' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'xfPCa6HbzMdr2tLs' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'NMbdrdIJ8ZS4gXTJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'Ypx1RBVxxoIRLfw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["7bG91MWpeNAGZtoM", "ofoe3LkcoE5FFF3W", "k3MbLbLZQFZz4dbP"]' \
    --endDate 'xxxwyghCG0CtttEu' \
    --startDate 'Vz1TxykiAzlHB6Ua' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["c0HZxaB6QxazwTXK", "2gj6qPQDWaffUSe6", "cPHe69HmGPRzQDLr"]' \
    --endDate 'DUipW3kKN1qd7UOB' \
    --startDate 'iAtQTMVDxSP88MJV' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["XfB5y1xs2jOSxTgm", "SVcVu1qOw1vrJ3Qn", "tbkQwhQJQYSEWGWK"]' \
    --endDate 'Hwk71Id9kVYhjlSr' \
    --startDate 'jYchlQvznB1CpAxs' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["kvY1WrrQsBS9dQQy", "RZDZBr8I7kDHZnIX", "PAB4Cd2nArKTprkh"]' \
    --endDate 'E7yDM2vgSBahOlKd' \
    --startDate 'HH3NYkS5VyqPO4eg' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["9cpWkX4gj5f16Fgu", "Ub4xaUSvufP7mKEK", "uXBIRXFUk5qjjxEb"]' \
    --region 'E3izL4BGbanDZZ74' \
    --endDate 'GpcTgW0rGps7SDQf' \
    --startDate 'cKj79vSt9xcWqZgO' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["TJdvVQzRx1RRrr6d", "Ow8h8aMvffBVm1V4", "PMzLxcWkf7pFgzYN"]' \
    --endDate '8tiMcm9Mfjy3hbPA' \
    --startDate 'xSsoyVR5O2LIh0tl' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["oQkEyS4nZDRnhNnm", "wdouvG8CKFkp3xhl", "23sCo1XbTR0g6ND2"]' \
    --endDate 'pbBr4Xvn8YtkdtaE' \
    --startDate 'CJMYdTuMetkjI8PM' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["aiaHZrtPunWpkSl3", "nW1c0fQaPzrWvOUI", "Tl4xZsCWXtIA2qXg"]' \
    --endDate 'ksEgmVpWlMuGFwB7' \
    --startDate 'pCc5gGllfSrQbpy8' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["Nfd21p3jpPoAEH5V", "n2MCi0egJYksxP3u", "TMZjnYVk06bCXsuQ"]' \
    --endDate '5JuSyGmCLFQAs2ur' \
    --startDate 'KW5ZovjOs8LksR59' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["HFkQwRiXLKCOMbBG", "9ggSiwdQ2oreTMiI", "k2ZPzy7QHqGLOthl"]' \
    --endDate '7jK6Dw4kTdjN8e61' \
    --startDate 'xdNdLQGzCk0p2GdR' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["ZDQvAAIAIF7k1Cw3", "OfdM7XWnbS8zVqNt", "GohsnAH2TBsxyksR"]' \
    --endDate 'F0yZnLo5irpQw4bF' \
    --startDate 'VcOdTvCGbP6VYWB9' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "gNvnBhQtIsuJ2bJi", "activeAllianceRule": {"max_number": 31, "min_number": 14, "player_max_number": 68, "player_min_number": 2}, "activeMatchingRule": [{"attribute": "ERm2zXZ3dIEM9Yx7", "criteria": "N5E4TuYTUNgnGsIx", "reference": 0.13263562246924598}, {"attribute": "wlTeHMATHuHCvzJO", "criteria": "jjvLoAmCallXWEzB", "reference": 0.5591195593658687}, {"attribute": "iejZqsFGvHeain4q", "criteria": "2rNMaymswI4dCPHy", "reference": 0.2726581330539277}], "function": "x3PmbJBFXlXxtP5j", "gameMode": "rNOQ1T8oC1PyLGPu", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 38, "matchID": "2AX9eLCuJPeky03y", "namespace": "cT24ISm89Rkr1PZE", "partyID": "8WlHeQCIOpox4QSS", "remainingPlayersPerTicket": [61, 87, 46], "remainingTickets": 25, "sessionTickID": "3GkNXgquIBzTgSE9", "tickID": 62, "timeToMatchSec": 0.7881948509241307, "timestamp": "1983-03-12T00:00:00Z", "unbackfillReason": "GIDbbevFWFIgpLt4", "unmatchReason": "PjZkhBColyyn5AFZ"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "nAoY1EbkVClRi7Ij", "activeAllianceRule": {"max_number": 0, "min_number": 32, "player_max_number": 82, "player_min_number": 3}, "activeMatchingRule": [{"attribute": "N7rlpDwlI8SxAJe5", "criteria": "y3Amb39qzN5YWdBX", "reference": 0.08423696425616634}, {"attribute": "wzN70umEt51vs96B", "criteria": "uz2jmxGfpUnAe1JM", "reference": 0.18443743919975786}, {"attribute": "E9csgH31k4bGiDRL", "criteria": "ijj7CXJsCzcSgHqK", "reference": 0.45307541155363473}], "function": "VCjetSYM0U57O3Jj", "gameMode": "icoYCFYxmgvZA2Ag", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 1, "matchID": "W59k8YBmfygZxpb4", "namespace": "qqfSVjsFZ0ivP1di", "partyID": "LUkEAB7Z814GnpUX", "remainingPlayersPerTicket": [93, 18, 59], "remainingTickets": 57, "sessionTickID": "E4QvaYRtrwLQ87wB", "tickID": 47, "timeToMatchSec": 0.6839925776170868, "timestamp": "1985-07-15T00:00:00Z", "unbackfillReason": "7nu6juNHe5N2PnGZ", "unmatchReason": "YbeQlB7mEpXUTE7F"}, {"action": "oh5vlRix5kzkWuw1", "activeAllianceRule": {"max_number": 14, "min_number": 35, "player_max_number": 9, "player_min_number": 80}, "activeMatchingRule": [{"attribute": "AU4kKs31bRjsjKdR", "criteria": "n2flHyf5PIEmFx9J", "reference": 0.4995513149059364}, {"attribute": "fcGXj3MMXjxxruj8", "criteria": "67VXx1ScrTLCX5nw", "reference": 0.8601044983663066}, {"attribute": "jnP3Zhge3E0hZOD7", "criteria": "tn1ADEW43BrB6fij", "reference": 0.9355827124336454}], "function": "fy4lqYTk1DNMezuN", "gameMode": "DdmvrDhpDO9AAaG6", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 18, "matchID": "HIUXxZmyBnLc3dB2", "namespace": "T89Wt3Pc35ceCNBm", "partyID": "ZgRovFdmgFDvszoN", "remainingPlayersPerTicket": [75, 15, 80], "remainingTickets": 19, "sessionTickID": "hBKXAegWnXyHXlXc", "tickID": 23, "timeToMatchSec": 0.36346159828000824, "timestamp": "1981-08-07T00:00:00Z", "unbackfillReason": "PcVDyzbNGgXf29yp", "unmatchReason": "0Aed2mGnp7dfXMdK"}, {"action": "McwjpuNNpTnP6bvS", "activeAllianceRule": {"max_number": 4, "min_number": 39, "player_max_number": 62, "player_min_number": 43}, "activeMatchingRule": [{"attribute": "yQDzry1jIJok1gUm", "criteria": "e8kmAwP3fDBNqvZv", "reference": 0.6414362717000839}, {"attribute": "9vr8gmgtl3t4zsqF", "criteria": "PV6fCfjlKf5zFlaS", "reference": 0.6817413620127293}, {"attribute": "icE5VHuTkWspt0gN", "criteria": "bA0DskbEud8o9TdZ", "reference": 0.33233640819372046}], "function": "pQPQ2MKbObyOcAW4", "gameMode": "EIUs8I1y47B9zxo0", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 21, "matchID": "htJmRneVBFRZRMvX", "namespace": "XNHDRZzdnBBekYdm", "partyID": "9RMDmJif4rheH7tD", "remainingPlayersPerTicket": [68, 31, 80], "remainingTickets": 22, "sessionTickID": "vb9ffmdQPR92Fb59", "tickID": 88, "timeToMatchSec": 0.13989838748871208, "timestamp": "1971-08-10T00:00:00Z", "unbackfillReason": "OaGY2pQEKIw2dWj5", "unmatchReason": "o9qyc7zv8ikYA3v0"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'sAq0sGywXGpsNm5a' \
    --limit '21' \
    --offset '54' \
    --endDate 'fdFnbUpTS5tcuA9K' \
    --startDate 'I1vaQNkhqjLENTNR' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'ISBAld4wQNvVp8rB' \
    --limit '3' \
    --offset '14' \
    --endDate '4VBT9Ub3ybxlijhv' \
    --startDate 'dXIP1QnitsoF51Br' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE