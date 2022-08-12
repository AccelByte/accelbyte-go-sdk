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
echo "1..30"

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
samples/cli/sample-apps Matchmaking getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
samples/cli/sample-apps Matchmaking handlerV3Healthz \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
samples/cli/sample-apps Matchmaking getAllChannelsHandler \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "qfpHVu9C", "description": "8M8mMHU4", "find_match_timeout_seconds": 27, "game_mode": "WMwfn2Ja", "joinable": true, "max_delay_ms": 98, "rule_set": {"alliance": {"max_number": 18, "min_number": 12, "player_max_number": 33, "player_min_number": 54}, "alliance_flexing_rule": [{"duration": 23, "max_number": 10, "min_number": 21, "player_max_number": 43, "player_min_number": 59}, {"duration": 22, "max_number": 50, "min_number": 55, "player_max_number": 4, "player_min_number": 49}, {"duration": 71, "max_number": 49, "min_number": 59, "player_max_number": 46, "player_min_number": 46}], "flexing_rule": [{"attribute": "vR1OqyhY", "criteria": "JMb0hM4o", "duration": 59, "reference": 0.6758460872459842}, {"attribute": "d5x5eHam", "criteria": "lVU5Kc2X", "duration": 33, "reference": 0.51431129734348}, {"attribute": "1DDoC6I6", "criteria": "7IXWCdYR", "duration": 3, "reference": 0.4584922323271673}], "match_options": {"options": [{"name": "Ho1NIoA0", "type": "2QObslEX"}, {"name": "YeLpLacc", "type": "w5HgMyiu"}, {"name": "aYuv42yM", "type": "0wiVnVWO"}]}, "matching_rule": [{"attribute": "AuSwRbNv", "criteria": "gu1AwUzy", "reference": 0.03157016665591161}, {"attribute": "JeTaoaet", "criteria": "CRmYno40", "reference": 0.6212059586869434}, {"attribute": "ASG25NTo", "criteria": "9D9uR9o7", "reference": 0.31816712405094394}], "sub_game_modes": {"3jH1ZGkE": {"alliance": {"max_number": 0, "min_number": 56, "player_max_number": 41, "player_min_number": 9}, "alliance_flexing_rule": [{"duration": 30, "max_number": 64, "min_number": 54, "player_max_number": 87, "player_min_number": 28}, {"duration": 10, "max_number": 55, "min_number": 10, "player_max_number": 4, "player_min_number": 65}, {"duration": 25, "max_number": 41, "min_number": 13, "player_max_number": 10, "player_min_number": 32}], "name": "nqCawKiG"}, "6eoRZkzb": {"alliance": {"max_number": 70, "min_number": 75, "player_max_number": 44, "player_min_number": 53}, "alliance_flexing_rule": [{"duration": 65, "max_number": 30, "min_number": 79, "player_max_number": 5, "player_min_number": 62}, {"duration": 28, "max_number": 27, "min_number": 71, "player_max_number": 76, "player_min_number": 100}, {"duration": 19, "max_number": 39, "min_number": 67, "player_max_number": 50, "player_min_number": 24}], "name": "HpiJJcrk"}, "nbmprOsm": {"alliance": {"max_number": 52, "min_number": 51, "player_max_number": 79, "player_min_number": 25}, "alliance_flexing_rule": [{"duration": 44, "max_number": 62, "min_number": 0, "player_max_number": 30, "player_min_number": 76}, {"duration": 26, "max_number": 56, "min_number": 28, "player_max_number": 7, "player_min_number": 54}, {"duration": 42, "max_number": 99, "min_number": 63, "player_max_number": 24, "player_min_number": 12}], "name": "v5KMiClW"}}}, "session_queue_timeout_seconds": 32, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'iKRtB0lF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "eAhJJhBn", "players": [{"results": [{"attribute": "vUsP6FdW", "value": 0.026632723559350646}, {"attribute": "oNAcUif9", "value": 0.7165854949999939}, {"attribute": "ckWocSF2", "value": 0.775849350472735}], "user_id": "feIdgi39"}, {"results": [{"attribute": "uovL8G2A", "value": 0.06183128449403241}, {"attribute": "s2oD9UBo", "value": 0.6823474149972033}, {"attribute": "28oTkBPM", "value": 0.4043807089333238}], "user_id": "45hd0zqV"}, {"results": [{"attribute": "ijyUrVkE", "value": 0.9478049949737852}, {"attribute": "amFuqtwr", "value": 0.7685732634218236}, {"attribute": "hnZgPKBE", "value": 0.20792190798168386}], "user_id": "SYOI7ib4"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "gZtJRPyX"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "PHmf19xd", "client_version": "TlEpfLY7", "deployment": "IBQpvIPC", "game_mode": "MHHEzscJ", "joinable": true, "match_id": "SiOhXSzw", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 2, "party_attributes": {"fNldfLt6": {}, "4M8RFPP0": {}, "NjQoO0Cp": {}}, "party_id": "p6oUu5Du", "party_members": [{"extra_attributes": {"Vlzm3wMA": {}, "Pt6BcgQi": {}, "PXUddsYl": {}}, "user_id": "PGv33aTb"}, {"extra_attributes": {"RUf2JSYM": {}, "OveN4iOO": {}, "qkumG1x1": {}}, "user_id": "nyQEoHZn"}, {"extra_attributes": {"Evb2rkuW": {}, "JokjnvJU": {}, "Bw85zHPf": {}}, "user_id": "gV6cRUTr"}]}, {"first_ticket_created_at": 34, "party_attributes": {"BdwmQKXb": {}, "1wyrt39X": {}, "vdl3Rqfq": {}}, "party_id": "PwjYWQkh", "party_members": [{"extra_attributes": {"aVLa302o": {}, "LTf2epOJ": {}, "3VlqjpXm": {}}, "user_id": "OV7UbMYe"}, {"extra_attributes": {"V0ZgVs83": {}, "55qi8TqV": {}, "k7F9gFCZ": {}}, "user_id": "fuJTyQCx"}, {"extra_attributes": {"apwkFmQy": {}, "lLegZqx1": {}, "SsMRVHLw": {}}, "user_id": "JHUNFMUy"}]}, {"first_ticket_created_at": 6, "party_attributes": {"gMLNBobT": {}, "1N5J2wBU": {}, "RRgE6EJg": {}}, "party_id": "e7PanvJI", "party_members": [{"extra_attributes": {"xwwrxecn": {}, "Enbfx95h": {}, "76Ja8Rob": {}}, "user_id": "j13VAIYb"}, {"extra_attributes": {"ha1nfpRI": {}, "3TFOPQ4K": {}, "oeIpG79F": {}}, "user_id": "33tG6Ve1"}, {"extra_attributes": {"CDKLWKWZ": {}, "EodbSOZL": {}, "NTvX680I": {}}, "user_id": "hqYUfmoL"}]}]}, {"matching_parties": [{"first_ticket_created_at": 86, "party_attributes": {"GJxny7hD": {}, "L9GSun3M": {}, "Fprj5Q8c": {}}, "party_id": "WKZplMZO", "party_members": [{"extra_attributes": {"HhnkWM4k": {}, "DUsLt9Wo": {}, "h1jwhbwP": {}}, "user_id": "JxnL8dnQ"}, {"extra_attributes": {"90uten1F": {}, "8TDuYj0I": {}, "UddNd5zq": {}}, "user_id": "z7Sp7oIw"}, {"extra_attributes": {"k6a8hW3D": {}, "3vCTJtSi": {}, "ZcuzJa2w": {}}, "user_id": "T7QR9pEL"}]}, {"first_ticket_created_at": 72, "party_attributes": {"jzPwR3Pi": {}, "DnDLMm6L": {}, "GdFaTga4": {}}, "party_id": "qxVuYLlk", "party_members": [{"extra_attributes": {"UwGpnpWK": {}, "cDPmiIn9": {}, "vupaT3Mr": {}}, "user_id": "rN3tOLpI"}, {"extra_attributes": {"DPimrfQc": {}, "TbE0Pp6k": {}, "ZVg2CZ0x": {}}, "user_id": "MYh7UU28"}, {"extra_attributes": {"9WIx1mUM": {}, "q3gj7VJ4": {}, "uUjmxIQb": {}}, "user_id": "Ax2EQXYx"}]}, {"first_ticket_created_at": 45, "party_attributes": {"ZN8TZucT": {}, "E23Z4fbo": {}, "othLIuqq": {}}, "party_id": "GHrITBTr", "party_members": [{"extra_attributes": {"19io1oxv": {}, "KOIYX5IF": {}, "gqMLEWni": {}}, "user_id": "LVq29LDC"}, {"extra_attributes": {"RVHmfeWf": {}, "fMoVF4uI": {}, "Qmwyy5re": {}}, "user_id": "0HwphoI9"}, {"extra_attributes": {"PUAXdK5F": {}, "yMl0wv32": {}, "I3rRtVBM": {}}, "user_id": "6aecuHcW"}]}]}, {"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"Iq1hAfo8": {}, "e1x90vOt": {}, "KmD8TNMc": {}}, "party_id": "VFEYrSro", "party_members": [{"extra_attributes": {"BCwARV3P": {}, "ZTxVvxpH": {}, "wON43cIP": {}}, "user_id": "hLlUugVQ"}, {"extra_attributes": {"YCqCLMg1": {}, "sdjQmDk1": {}, "hVyWEqXc": {}}, "user_id": "y03mt6DW"}, {"extra_attributes": {"p03AAzLy": {}, "yokb05zi": {}, "OIstloDH": {}}, "user_id": "8f0jwVrh"}]}, {"first_ticket_created_at": 26, "party_attributes": {"MCUW0aRW": {}, "pB8ViEwS": {}, "2fO7Dhfq": {}}, "party_id": "9ZW7diVn", "party_members": [{"extra_attributes": {"iy66zg13": {}, "3TlVSigb": {}, "ux49FwCc": {}}, "user_id": "GRAuhuCL"}, {"extra_attributes": {"YIPLDY6V": {}, "t8hlgjuM": {}, "yDiLbLFz": {}}, "user_id": "NPFuz54J"}, {"extra_attributes": {"dDmsro0w": {}, "PB8zm9xC": {}, "TMgGZmu4": {}}, "user_id": "lBiJmaHm"}]}, {"first_ticket_created_at": 3, "party_attributes": {"2ZJgPYck": {}, "y6iraENZ": {}, "1uY5MVaW": {}}, "party_id": "BhkKUt4e", "party_members": [{"extra_attributes": {"uaH7NXG8": {}, "If1UsvQK": {}, "oqFUv80d": {}}, "user_id": "sE9PRlE4"}, {"extra_attributes": {"ZyPCXIj9": {}, "xqf9OVO0": {}, "eycB5Hdt": {}}, "user_id": "33TxrzFw"}, {"extra_attributes": {"bJlvX94w": {}, "hq4xuMZ9": {}, "0fvA8GWt": {}}, "user_id": "mEXPO368"}]}]}], "namespace": "O4aEEpAq", "party_attributes": {"qZOUaDu0": {}, "4hekmcVJ": {}, "vh2Cdf6N": {}}, "party_id": "jZRgKGMd", "queued_at": 59, "region": "QEe8YUVC", "server_name": "XWDkuYLb", "status": "LQrcoRJt", "updated_at": "1976-01-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "s36RRZA3"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'a16F3g91' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 16, "userID": "rS6JkZd3", "weight": 0.3551992078945869}' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'iUYnuZYv' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '3IVSV78r' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'qEdgdlCA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '6vTHvxIb' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "3fdKdzNz", "description": "hlJ0VQ1H", "findMatchTimeoutSeconds": 48, "joinable": false, "max_delay_ms": 67, "ruleSet": {"alliance": {"maxNumber": 84, "minNumber": 98, "playerMaxNumber": 18, "playerMinNumber": 70}, "alliance_flexing_rule": [{"duration": 85, "max_number": 59, "min_number": 10, "player_max_number": 28, "player_min_number": 61}, {"duration": 14, "max_number": 79, "min_number": 47, "player_max_number": 87, "player_min_number": 19}, {"duration": 29, "max_number": 86, "min_number": 28, "player_max_number": 96, "player_min_number": 14}], "flexingRules": [{"attribute": "o7ygXmhQ", "criteria": "tZBUlOJZ", "duration": 29, "reference": 0.046957916826469326}, {"attribute": "wMZz3rep", "criteria": "0Oah72Hu", "duration": 29, "reference": 0.14859746972605214}, {"attribute": "TmrxrshT", "criteria": "RZa3n1rS", "duration": 95, "reference": 0.8864660454722435}], "match_options": {"options": [{"name": "a4JJeb2k", "type": "sk7d9qaY"}, {"name": "kCOiwWAz", "type": "U5qSqzh4"}, {"name": "2DTTHbrC", "type": "b6NeF3mU"}]}, "matchingRules": [{"attribute": "I4iM9B6w", "criteria": "vSSbR4eY", "reference": 0.9179855674625785}, {"attribute": "AtkDBSY7", "criteria": "aW5TrZcl", "reference": 0.48733771107706325}, {"attribute": "b3qRM6GB", "criteria": "W7Kj30PW", "reference": 0.07872746044154466}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 68, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'AojhG0r6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'SZd495O2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'NlpcfOdf' \
    --matchID '6rqhYYRT' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["vkNdG4cg", "PgFJNmGp", "VosXPZsa"], "party_id": "QNqR7uew", "user_id": "Q2sr9GsI"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'mFJMYNzu' \
    --matchID 'Glgn72d3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'KeSmnDoQ' \
    --matchID 'GOpqgXMr' \
    --namespace $AB_NAMESPACE \
    --userID 'GSjHc5Co' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel 'Tc2yW4S4' \
    --deleted 'false' \
    --matchID 'oIpHEcbA' \
    --partyID 'IMkJcqib' \
    --userID 'lOq5T1hb' \
    --limit '89' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'zeSsXEqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'UPVySNlM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'cuZ4OMPI' \
    --deleted 'true' \
    --matchID 'Yk7BKmlF' \
    --partyID '3jVuka9j' \
    --userID 'MHQpfRmk' \
    --limit '29' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE