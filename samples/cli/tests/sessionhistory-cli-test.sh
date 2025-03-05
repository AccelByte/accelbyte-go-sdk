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
    --body '{"SESSION_DELETION_GRACE_PERIOD": 38}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateEnvConfig' test.out

#- 6 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 6 'AdminGetLogConfig' test.out

#- 7 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminPatchUpdateLogConfig' test.out

#- 8 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --completedOnly 'RMt6Pu09ZNqthN2P' \
    --configurationName 'NDj52HkqjW8JhdVH' \
    --dsPodName 'BX16W79BJMqZwT3m' \
    --endDate 'kXpbihSOSyCKWa78' \
    --gameSessionID 'ceQ8qOWCFBhM7yjj' \
    --isPersistent '9LTsW1r5jIBcrupb' \
    --joinability '5fBl80iyZxnv8Pbq' \
    --limit '64' \
    --matchPool 'VVwuYbWw5h3WjTru' \
    --offset '84' \
    --order 'zjMdYpnV8TWzKka8' \
    --orderBy '8Cu80f19S0DaWCOq' \
    --startDate '5ZQlnPXwxOAOdywn' \
    --statusV2 'Y5554842R1UUvKWm' \
    --userID 'LwoIDkHEdBLuLWsU' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryGameSessionDetail' test.out

#- 9 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'i7Mkstwayj8w9DCX' \
    > test.out 2>&1
eval_tap $? 9 'GetGameSessionDetail' test.out

#- 10 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID '5z1lwsLvewEik6qI' \
    --limit '79' \
    --offset '82' \
    --order 'VJXj3FeIHUnooYTM' \
    --orderBy 'ddgOqanMTiOvo4Ph' \
    --ticketID 'Mei098JoCuEki8aV' \
    --userID 'NMTdUG6A4Jd3oBZz' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryMatchmakingDetail' test.out

#- 11 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId '1DDbZU59KrZwJLl1' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetMatchmakingDetailBySessionID' test.out

#- 12 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'qHm4gJcRFYSsf2G3' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetMatchmakingDetailByTicketID' test.out

#- 13 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'V1Rm1LjOI9NRho1w' \
    --joinability 'RUuxDHgx9pE4wbtR' \
    --leaderID 'n0rdYwbspPnk0wuq' \
    --limit '2' \
    --offset '80' \
    --order 'oLsaKUBgB9gu58Sr' \
    --orderBy 'brWwb4NkbfKrqE6y' \
    --partyID '0JHr9K2K6qjZDrJh' \
    --startDate '0Y4Vp0F3rNh3TwIl' \
    --userID 'uYfFBWOzetJgvLeG' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryPartyDetail' test.out

#- 14 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Thaq0CYjZjzcUZXh' \
    > test.out 2>&1
eval_tap $? 14 'GetPartyDetail' test.out

#- 15 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'SG1qZJtMvWjrwTrl' \
    --gameMode '3xE6RqepWuPCDeZm' \
    --limit '47' \
    --offset '95' \
    --order 'zTkWD9XlzID0FvKY' \
    --partyID 'sdKuSQcpYO22ABgp' \
    --region 'ykaAi0Ahm44hWrdH' \
    --startDate 'wNo5chYSDpDep7ZU' \
    --userIDs 'DD4X7IVWG0BPvOWC' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryTicketDetail' test.out

#- 16 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'g9A3tmUJnzKqQKjD' \
    > test.out 2>&1
eval_tap $? 16 'AdminTicketDetailGetByTicketID' test.out

#- 17 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '73' \
    --order 'fdjvn6g340zM0KOM' \
    > test.out 2>&1
eval_tap $? 17 'PublicQueryGameSessionMe' test.out

#- 18 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["dFv1Ais2fp0kFc7i", "e59SyiXm5D6W7eBJ", "ewhYJOTgKwyUPkKF"]' \
    --endDate '3ot9LhERSbVsO8ra' \
    --startDate 'zcESHSb0myrBH1HH' \
    > test.out 2>&1
eval_tap $? 18 'QueryXrayMatchPool' test.out

#- 19 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'ifcpavPJFtSbkCXd' \
    --poolName 'EqJq9FXaHKmHhEgG' \
    --all 'false' \
    --limit '78' \
    --offset '70' \
    --endDate '6I77FLH5olIVKXax' \
    --startDate 'CbRMPIulAHGYRT9y' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPool' test.out

#- 20 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'SaOwGASEP3m6yfMd' \
    --poolName '9uyqPFyWCw5O3KCY' \
    --tickId 'Ox2rRrltUpEaJTiY' \
    > test.out 2>&1
eval_tap $? 20 'QueryDetailTickMatchPoolMatches' test.out

#- 21 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'WGrO18mlasWvfuy7' \
    --poolName 'c5szpigd02OhXgfo' \
    --tickId 'YtOATRj7Gm8w8Xoy' \
    > test.out 2>&1
eval_tap $? 21 'QueryDetailTickMatchPoolTicket' test.out

#- 22 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'KJQPAXHxwawu1Ig2' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchHistories' test.out

#- 23 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'R1CjsOc7SRZf0AkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchTicketHistories' test.out

#- 24 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId '29ZBgGQYthoFVdQf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'QueryXrayMatch' test.out

#- 25 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["VxVHIJ0Cp0HfkRgP", "vNK7XxpXWik2p5PX", "QUQppVrqNNShvd5i"]' \
    --endDate 'PmMLqBWIS2rqIxBJ' \
    --startDate 'HP277sjw4Fdug11u' \
    > test.out 2>&1
eval_tap $? 25 'QueryAcquiringDS' test.out

#- 26 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["XmWCMJkMzcgqyKg2", "X3E5QdpxDHYKy5st", "DFiKCHgHsi4F9f1C"]' \
    --endDate 'ACUNTFRaOuYeEtug' \
    --startDate '7Tt2lLQKOVimz7ZI' \
    > test.out 2>&1
eval_tap $? 26 'QueryAcquiringDSWaitTimeAvg' test.out

#- 27 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["hyvWUbokNB6gKrCy", "T7dAmwsOpBabA9UE", "DhLyntunHT6KLmDZ"]' \
    --endDate 'wjGxHQwcDGtPoHpY' \
    --startDate '9DpxRE5ly6BuqwSt' \
    > test.out 2>&1
eval_tap $? 27 'QueryMatchLengthDurationpAvg' test.out

#- 28 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["QqqekHQX6DQ4fsdI", "uI3JBzpEKlhf0ADU", "iyKAxL0NnWUYGXi7"]' \
    --endDate 'gECZTDLegy42iZU4' \
    --startDate 'bYexXn5HNUL5tIHv' \
    > test.out 2>&1
eval_tap $? 28 'QueryMatchLengthDurationp99' test.out

#- 29 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["hSv2LC3JfgFu0d0A", "WbVl1mSBSD3HhJKa", "w7Sy0WXqYkLqBySh"]' \
    --region '3bTLiMIEdz4RZEwV' \
    --endDate 'tJi0h1GUioyCdwRw' \
    --startDate 'EKx9NaEseJbQKzqw' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalActiveSession' test.out

#- 30 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["jQo1Maki96L3lUyp", "iidyZGPzwikCD9dW", "RnYhgi6n8jtMnK63"]' \
    --endDate 'K5qbHZJ3O3VXfDgh' \
    --startDate 'sIH1FNYXvvL57Zxj' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatch' test.out

#- 31 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["MvPAM4TFVEQEQqE8", "dz070KertVmLaUsR", "jCgB1vSKceYqLruY"]' \
    --endDate 'aDeRKrX0L7oV4ak9' \
    --startDate 'lQTY5s9uXpzfi47B' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalPlayerPersession' test.out

#- 32 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["ucpQYyL1MUTD11Ox", "uQHssqiOYQ7A7UaE", "8cFPYKcRFelYWnrO"]' \
    --endDate 'roanUE1c3hGoqj9n' \
    --startDate 'RwBupGjvDsTPF5wJ' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingCanceled' test.out

#- 33 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["lSCk7G9XRutryXfQ", "gAoppe0QX2a8sYic", "ZdOM3mnH3kldgMym"]' \
    --endDate 'WIKJHM6eH2u5TijC' \
    --startDate 'CO3c2dDP4VF8EsLz' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingCreated' test.out

#- 34 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["9SWeIH0BSxqel6m3", "zllKwKzhQlVBiSuj", "ROsfSx3CtOjC6X0l"]' \
    --endDate 'lqjAUVMb01gj86t6' \
    --startDate 'ENo3LUfH7gtZ4gSQ' \
    > test.out 2>&1
eval_tap $? 34 'QueryTotalMatchmakingExpired' test.out

#- 35 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["3zvdTX3zQzvFJAMy", "LkCXPEmOtvlsKjgC", "8TqZ8Ai83rBsnvaE"]' \
    --endDate 'iMHpiryYEM3cvWBn' \
    --startDate '2qS19oMUiH5BoR8y' \
    > test.out 2>&1
eval_tap $? 35 'QueryTotalMatchmakingMatchTicket' test.out

#- 36 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "lyMYvrxbohUG1W47", "activeAllianceRule": {"max_number": 57, "min_number": 54, "player_max_number": 88, "player_min_number": 51}, "activeMatchingRule": [{"attribute": "QoWdDsXYWoCZ6iE5", "criteria": "2CHeBNkAtBs8zROR", "reference": 0.30424724262183334}, {"attribute": "ouijV6FcGyxPqVUb", "criteria": "2amS3yauKNqxBeo4", "reference": 0.2476656207471467}, {"attribute": "GG58GtZP94tcUf2I", "criteria": "bTuLto6ihzkPoWAc", "reference": 0.8205162523502365}], "function": "hYPgK3yCdpHReXqM", "gameMode": "KVkfPpnqpJP3G6AC", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 5, "matchID": "NibS57Bkjfe7h4cx", "namespace": "u1lKTqkDW7gX4tVM", "remainingPlayersPerTicket": [54, 31, 68], "remainingTickets": 87, "sessionTickID": "4DOy57KxEj3uynEq", "tickID": 61, "ticketID": "4lagNt93IrmcYSL3", "timeToMatchSec": 0.8633836141247246, "timestamp": "1989-06-15T00:00:00Z", "unbackfillReason": "fuBDMgMNy1UzVF3H", "unmatchReason": "jVEst1gxnARrcu8U"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateXrayTicketObservability' test.out

#- 37 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "HH5s10IfWWHc9JjS", "activeAllianceRule": {"max_number": 98, "min_number": 30, "player_max_number": 29, "player_min_number": 56}, "activeMatchingRule": [{"attribute": "ZzNAP5XK6Nw46l3R", "criteria": "zMXaiYtc20st5WKl", "reference": 0.9016828032421204}, {"attribute": "IOSxwwUVAFXe8Zxd", "criteria": "sSZe9wTvOsM23PBb", "reference": 0.47243051117207213}, {"attribute": "pDFLa5dMVMG6t3Hc", "criteria": "OLTeESwvO30eddcO", "reference": 0.43660076736992215}], "function": "fTWKS3aYGC3BfobI", "gameMode": "wv8rUEDy78amczkL", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 35, "matchID": "t2yWQrSxnPNxAYOJ", "namespace": "FMcGe0ClL72jFRS6", "remainingPlayersPerTicket": [79, 87, 43], "remainingTickets": 41, "sessionTickID": "wFdWAHgjUNUYqOYG", "tickID": 66, "ticketID": "8s00FDHsLOXjA7zj", "timeToMatchSec": 0.8171457304844968, "timestamp": "1997-03-23T00:00:00Z", "unbackfillReason": "P2A3hpp9wJuB2QCK", "unmatchReason": "UE3sHCkCOEBlCNA4"}, {"action": "qrxlBznZe6HRB9qr", "activeAllianceRule": {"max_number": 75, "min_number": 56, "player_max_number": 26, "player_min_number": 93}, "activeMatchingRule": [{"attribute": "zflSPL0oMkBSCoIh", "criteria": "GA5ZUxZUk0fS2R9c", "reference": 0.19679239160734063}, {"attribute": "dskou3ypkyJxRFiw", "criteria": "fEAxEY8JjMKLInnw", "reference": 0.9687374539451615}, {"attribute": "qzupXcMlnKptkWO2", "criteria": "rXV7dHESIbqMcTEi", "reference": 0.22129499106558825}], "function": "5fxvlWNnwSLenPki", "gameMode": "DB3pY02jvYRiUTEW", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 92, "matchID": "JD90WQBn0bd5U4ZV", "namespace": "Cxte3n3YwmaoK825", "remainingPlayersPerTicket": [75, 51, 27], "remainingTickets": 56, "sessionTickID": "7V6wZSZW7Ox6IubB", "tickID": 18, "ticketID": "jPwSPXGOY8gYYw0V", "timeToMatchSec": 0.7063192248998902, "timestamp": "1986-04-15T00:00:00Z", "unbackfillReason": "0pN8uDfLf6OOO8tD", "unmatchReason": "jcgZ5wZaDSi7eeDW"}, {"action": "da72yehfEn1MoU1S", "activeAllianceRule": {"max_number": 37, "min_number": 3, "player_max_number": 60, "player_min_number": 37}, "activeMatchingRule": [{"attribute": "AlGR0mu5xQoHLgtw", "criteria": "TJuluxUVSEL1Qc5x", "reference": 0.9365190913948568}, {"attribute": "ELGAFpJHGUpwnDF5", "criteria": "v7ZizHRentOk7Gsj", "reference": 0.10937418308781122}, {"attribute": "tJFqvsk7hgwabmNm", "criteria": "pd3XfruGSlWWFGg1", "reference": 0.007228806575807156}], "function": "SyNrEYdeOjH2uyuO", "gameMode": "UZ3C7TfQEr5KEmzF", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 29, "matchID": "OATVG4cVKvI7mSoH", "namespace": "RO8SAj7m2Gk6Wvgy", "remainingPlayersPerTicket": [58, 30, 69], "remainingTickets": 75, "sessionTickID": "QYDMsbLJk4eWTxaY", "tickID": 45, "ticketID": "YHgCuKHmaG76MYhw", "timeToMatchSec": 0.1593324336117179, "timestamp": "1980-10-11T00:00:00Z", "unbackfillReason": "Q7Hk9LmRsM8sz8pY", "unmatchReason": "mTUwN3PxAn8XWspU"}]}' \
    > test.out 2>&1
eval_tap $? 37 'CreateXrayBulkTicketObservability' test.out

#- 38 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Fdiult9HossohJ2C' \
    --limit '89' \
    --offset '17' \
    --endDate 'sYPdxcfrN1mcRyKK' \
    --startDate 'hoLoOUK7TZcjhUjt' \
    > test.out 2>&1
eval_tap $? 38 'QueryXrayTimelineByTicketID' test.out

#- 39 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'gwRhN7qt7gHStWre' \
    --limit '48' \
    --offset '37' \
    --endDate 'A5twZgXoatlC2QCx' \
    --startDate 'oiNrV8egPQwVUecz' \
    > test.out 2>&1
eval_tap $? 39 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE