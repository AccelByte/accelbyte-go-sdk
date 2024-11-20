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
    --endDate '3HaD5T06y4IXZlE4' \
    --gameSessionID 'JTsiDG4gvwfBEme3' \
    --limit '59' \
    --offset '98' \
    --order 'RKpXrRZgsz2o8SM7' \
    --orderBy 'FgbxCj7ZZA3IUVVl' \
    --startDate 'jJi794FcCc6vuyRR' \
    --userID 'NoOZP7h0aZn2IFIT' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'pTQ1SBcW3gSa169n' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'SxFAXYudsotmoTi9' \
    --limit '22' \
    --offset '70' \
    --order 'zZ7aiuIOqiiWnkhL' \
    --orderBy 'qVR81WU3HP98BDyq' \
    --ticketID 'gly1SO5bnnnGDpFq' \
    --userID 'O3zdVrJE82MJp5yE' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'bdFbQS3RYf8J6h4M' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'IfsFKwS54wtnQeJd' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '40' \
    --order 'IU5o3C1uGrl1MfHL' \
    --orderBy 'fVB4WbngvieYldiQ' \
    --partyID 'XLtA5HDm53OoNp8t' \
    --userID 'OdIKGkyxGpfnvW1l' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '5hMBaPs8a5lXFHcO' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'WWaIeyRLVyMGE9qh' \
    --gameMode 'WjeaH28gM0tZB1cl' \
    --limit '29' \
    --offset '40' \
    --order 'MHKp0ZTyc52Idsad' \
    --partyID 'UyXZWPPUGsmWjRnc' \
    --region 'WdowEFBI1CBNixMQ' \
    --startDate 'jRJakERV1V2Mpvhb' \
    --userIDs 'yxoyDqKm0L39cb6S' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'cbhTKt4l44r5pQlE' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '68' \
    --order 'VQp5fIkAYEKAF4Xp' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["QHz8TLCP51eGARVa", "6RpwcEiXKBZvzFCs", "RyPR9phqr7604BEN"]' \
    --endDate 'eLXQqRW4qxZshlz6' \
    --startDate 'GKWFpQQZcIBjs0s2' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName '6MoSGKQyIBaBDBnU' \
    --poolName 'FVlVN9JXgzrGlsU9' \
    --all 'false' \
    --limit '66' \
    --offset '18' \
    --endDate 'aPkCyGRkSjibknoL' \
    --startDate 'DzvVYlKtO9vgcXhX' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'y7ysPycrULQW6awh' \
    --poolName 'Gw1qCNEjkVSHN6v5' \
    --tickId 'nVMOSvjHi1TksXTi' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName '29xVIVsDwRneKigH' \
    --poolName 'lFz4Vmwuuht4Di7E' \
    --tickId 'uAODSfKuUP95GxSt' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'IeUmMN1mpPLzF1AW' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'xwetHHzl07WHwG1z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'BTjnlZQkIv7sRzk0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["AHCTkyFwoD8LDHD1", "zNeK1qVo1g405y23", "YB0bULTBJzd8aHjy"]' \
    --endDate 'KQ0cLm8AXTH5iCxU' \
    --startDate 'xox7HZrPUTLw1SY0' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["rHPVwNQG1YZdV173", "6ubbiijFtO9FN8DF", "6oVkGKychSWRX2gq"]' \
    --endDate 'NM7an2J1aaRCnQvX' \
    --startDate 'V4bSwqJ9EFAdqtT9' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["sJWN7h2IqirNFGkn", "YJe4H7BQYU2M9EUU", "duCpl7sjzRpIQYhw"]' \
    --endDate 'DPLjjW4ftQXmCpb4' \
    --startDate 'BTCRhrV3AKNAg1cU' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["ljFTHzoSbzlM2SBN", "8idEQfc4k3UX8gTi", "Y8ogTr9jpvO3hBCZ"]' \
    --endDate 'X1B8ZmHh2ohXcxAP' \
    --startDate 'D7b8hfz8CXiOc6ni' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["mHrUSPyG3ACBZpgV", "VOCB2jXfiIEpDDUx", "72m5QRCu2t2rIjSY"]' \
    --region 'aoh4Xq3OrcvXud5s' \
    --endDate 'l7oxQFBdPxw4n4fz' \
    --startDate 'SGL9QT8caQgNfURI' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["sTvMqHlcDOWHkmtd", "VlrZctlfL9vk4frr", "vsAjHWKv6qAcJLiI"]' \
    --endDate 'P7Zaxv5psr5h1YM9' \
    --startDate 'wASmu1G273REGtp6' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["Lcj0YNtlJBm9eaJw", "qdbHsSAqnjqCCUoq", "iB3aVHsuDZWMLcMM"]' \
    --endDate 'Vqy4QLz36a9fDZPc' \
    --startDate 'mmFBliI0Z0PfEanH' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["FLZBQ665OulEH3uZ", "kBkfZRtPeNkGZopS", "uulTSEdpG4l30CQd"]' \
    --endDate 'aPzO4zOv3snlxSr3' \
    --startDate '4tez6LKA9sMMczkN' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["LUe0ygHfdphRol5Y", "Mwo2kHwfxoEGdgai", "asK9PevshGjmmDEO"]' \
    --endDate '7lY9PfmAP5691VsA' \
    --startDate '5UKgpUsB204Dve0e' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["myT1TvGj8QfJqOE0", "5XJW1wxWb9XDTWog", "CU4BQnTy2iAjHgSw"]' \
    --endDate 'ONLsHzBppZRnshWs' \
    --startDate 'UfxjNf2d000MmFzS' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["FunoE72ibPrALkXT", "qi3kEDeDQtXzmqE1", "yYZgIeFcwFmL0qu5"]' \
    --endDate '9zm8irG0vIXO7ZuA' \
    --startDate 'AMGXIrQz26HEKdfs' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "OW0sABZe0FJSuUQs", "activeAllianceRule": {"max_number": 37, "min_number": 53, "player_max_number": 9, "player_min_number": 93}, "activeMatchingRule": [{"attribute": "C6ChMfFfaINtTMA6", "criteria": "BQKaLgP0uzglS9cF", "reference": 0.8955735598530328}, {"attribute": "WwQriOnN47RHCQPg", "criteria": "5JN2lNEFYAsR5ARk", "reference": 0.7022523698582163}, {"attribute": "jL1LkaBtpTbD39JY", "criteria": "AwBHA4u86vFMpnKW", "reference": 0.00954998899707249}], "function": "MV0QAaRiFnaH2SY8", "gameMode": "HQRq9i6nwLmn6cma", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 22, "matchID": "eCbTzVnOfyzDMjAf", "namespace": "jYx18VCyADfQrmgI", "remainingPlayersPerTicket": [10, 5, 6], "remainingTickets": 16, "sessionTickID": "aRc4gcXPgZyLgeAE", "tickID": 23, "ticketID": "Y4j3r5T9RlfiSZ4S", "timeToMatchSec": 0.7712046417660231, "timestamp": "1973-11-09T00:00:00Z", "unbackfillReason": "5PHPjSLiKCqp2njU", "unmatchReason": "JR1dWyJHOYsi1Ndp"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "ThUh0aATcLbzJine", "activeAllianceRule": {"max_number": 63, "min_number": 26, "player_max_number": 4, "player_min_number": 89}, "activeMatchingRule": [{"attribute": "9zFl1wqsK6Lf5IfJ", "criteria": "0voJxNU38FB2gFBX", "reference": 0.8528555405930539}, {"attribute": "bmUQyIxCilf6oQLZ", "criteria": "OkKloWorRtRUSzmp", "reference": 0.9650820398034535}, {"attribute": "dvOGa4gQYpe0tQgg", "criteria": "JYLlM0c9X5mY3qft", "reference": 0.05405128005944637}], "function": "1mOigl5priz2mn9S", "gameMode": "W5ejtf7dW9OqaSji", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 65, "matchID": "yh9KcPPeMVH5KLD9", "namespace": "02nyCmqZdIyxIGF1", "remainingPlayersPerTicket": [5, 11, 99], "remainingTickets": 45, "sessionTickID": "9YJp8OS9XC0h6qD2", "tickID": 32, "ticketID": "KOE5uS5XsUzwrULP", "timeToMatchSec": 0.43657929949478236, "timestamp": "1994-10-14T00:00:00Z", "unbackfillReason": "5D6sgI56L5dLxLEB", "unmatchReason": "SCyBW5j9esPaiSMx"}, {"action": "n2n7H3ZMFjIoV1Ir", "activeAllianceRule": {"max_number": 12, "min_number": 51, "player_max_number": 19, "player_min_number": 19}, "activeMatchingRule": [{"attribute": "GYqGCWYGzkfTqQZr", "criteria": "cJUxUYIXUYBN14IL", "reference": 0.6539151447647031}, {"attribute": "ZfrrUrhvU3Xdr1QW", "criteria": "0vqRF49txImfvsxo", "reference": 0.2178158101794233}, {"attribute": "M45T4YVRj4hYiCtk", "criteria": "mmKfJ9kNgEmf4mtc", "reference": 0.33580662354308255}], "function": "zhFVGfFx8UXVeb60", "gameMode": "FLlnpDQUhYXtkXcc", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 33, "matchID": "3K1lnFRVdC5QxcCZ", "namespace": "3vU2oMhqC7md57Wa", "remainingPlayersPerTicket": [23, 42, 74], "remainingTickets": 57, "sessionTickID": "Yeu2MIB6XYshLPld", "tickID": 71, "ticketID": "FCq3Er1DwhcEI0z2", "timeToMatchSec": 0.6509597933892991, "timestamp": "1993-06-26T00:00:00Z", "unbackfillReason": "qdVu9ovvbfvItWw8", "unmatchReason": "ySccQ0memQXoFEZn"}, {"action": "hJdLHy7AbqI1I3UU", "activeAllianceRule": {"max_number": 5, "min_number": 23, "player_max_number": 90, "player_min_number": 16}, "activeMatchingRule": [{"attribute": "y5tbedk0plhyXUIR", "criteria": "sAe1IP8zraJ4XBFp", "reference": 0.043576202184365975}, {"attribute": "lzYeeexa3zGIVecx", "criteria": "IRKt0PomMTDFCyvb", "reference": 0.49318400232334547}, {"attribute": "DzJ7NpvJQb6nk9LN", "criteria": "x6phggNhq5DCGEro", "reference": 0.0882823870827174}], "function": "bGnqkCH2kXp40Grr", "gameMode": "nnF7WXtgqaSL4twK", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 76, "matchID": "cbBYLnOlmzQKuWNs", "namespace": "9rD12p6vKiR9uI0q", "remainingPlayersPerTicket": [39, 95, 82], "remainingTickets": 30, "sessionTickID": "lhsUsBxyUnqoYCiH", "tickID": 73, "ticketID": "6qp7tj9xUTq964Jf", "timeToMatchSec": 0.3761328175346391, "timestamp": "1982-04-12T00:00:00Z", "unbackfillReason": "rQUgejU3xxhs01FQ", "unmatchReason": "9YpxKK5sK6DHaKOg"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Z0DcQ5lEkeoQ9YAS' \
    --limit '86' \
    --offset '31' \
    --endDate '25MbWVAbons91eva' \
    --startDate 'xHkA8BMIPY4zakDp' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'LG1fpJ1JMtsiiQSZ' \
    --limit '55' \
    --offset '33' \
    --endDate 'zf36hOOoZS7UHiXy' \
    --startDate 'Q4p5r42fZVlnIcR1' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE