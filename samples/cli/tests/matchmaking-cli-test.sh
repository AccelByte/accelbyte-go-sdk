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
    --limit '68' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "MTOGNyhB", "description": "Z3PdnNn7", "find_match_timeout_seconds": 100, "game_mode": "nNX9WieZ", "joinable": false, "max_delay_ms": 6, "rule_set": {"alliance": {"max_number": 76, "min_number": 14, "player_max_number": 89, "player_min_number": 21}, "alliance_flexing_rule": [{"duration": 54, "max_number": 7, "min_number": 51, "player_max_number": 79, "player_min_number": 26}, {"duration": 86, "max_number": 8, "min_number": 45, "player_max_number": 31, "player_min_number": 61}, {"duration": 33, "max_number": 36, "min_number": 54, "player_max_number": 42, "player_min_number": 77}], "flexing_rule": [{"attribute": "gXEjR0SD", "criteria": "yHr9wz2c", "duration": 31, "reference": 0.8909011410392679}, {"attribute": "yuKqjSw6", "criteria": "CdRYAgmV", "duration": 52, "reference": 0.7553516722647237}, {"attribute": "ppDGmUZg", "criteria": "xjovOf5u", "duration": 10, "reference": 0.33708676168831664}], "match_options": {"options": [{"name": "DVJ7wxzI", "type": "Ht9nCB48"}, {"name": "vuylPTP0", "type": "Zi3j6NYS"}, {"name": "qhA78lpU", "type": "RaEyAHk4"}]}, "matching_rule": [{"attribute": "qMqENP6t", "criteria": "lUVWnwul", "reference": 0.32056890960532525}, {"attribute": "iTWKivxJ", "criteria": "C4LVtSVG", "reference": 0.9987395341966019}, {"attribute": "lrPpvXta", "criteria": "3KLSyP3f", "reference": 0.4668981492788836}], "sub_game_modes": {"xbimKrSO": {"alliance": {"max_number": 65, "min_number": 84, "player_max_number": 51, "player_min_number": 52}, "alliance_flexing_rule": [{"duration": 15, "max_number": 35, "min_number": 48, "player_max_number": 97, "player_min_number": 73}, {"duration": 80, "max_number": 39, "min_number": 82, "player_max_number": 76, "player_min_number": 78}, {"duration": 71, "max_number": 75, "min_number": 45, "player_max_number": 25, "player_min_number": 40}], "name": "x1jVKS6E"}, "8xR10ehn": {"alliance": {"max_number": 22, "min_number": 71, "player_max_number": 0, "player_min_number": 85}, "alliance_flexing_rule": [{"duration": 14, "max_number": 15, "min_number": 15, "player_max_number": 4, "player_min_number": 54}, {"duration": 96, "max_number": 87, "min_number": 2, "player_max_number": 45, "player_min_number": 26}, {"duration": 93, "max_number": 83, "min_number": 1, "player_max_number": 38, "player_min_number": 50}], "name": "IOh3JQOD"}, "ER2ht1Hc": {"alliance": {"max_number": 11, "min_number": 64, "player_max_number": 70, "player_min_number": 87}, "alliance_flexing_rule": [{"duration": 61, "max_number": 11, "min_number": 83, "player_max_number": 15, "player_min_number": 19}, {"duration": 97, "max_number": 15, "min_number": 49, "player_max_number": 80, "player_min_number": 73}, {"duration": 38, "max_number": 75, "min_number": 97, "player_max_number": 43, "player_min_number": 19}], "name": "5E27c9Ww"}}}, "session_queue_timeout_seconds": 20, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '7q6p46pP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "nIH68tkU", "players": [{"results": [{"attribute": "skQFaVpR", "value": 0.7310789061632259}, {"attribute": "Ldwxd7Tb", "value": 0.41723224226885436}, {"attribute": "XBiVvIIp", "value": 0.1180579130035817}], "user_id": "DOw16yYw"}, {"results": [{"attribute": "U9axDIYw", "value": 0.1526826766877919}, {"attribute": "ODdZCGPS", "value": 0.5646171980401062}, {"attribute": "5vHJslql", "value": 0.030561531429111777}], "user_id": "TmkTudnp"}, {"results": [{"attribute": "YtumjnKK", "value": 0.02632495080434616}, {"attribute": "OE2vVdxs", "value": 0.1518368452397001}, {"attribute": "GNaoBouF", "value": 0.08456941038889865}], "user_id": "1HOptEKw"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "a2MwIlAN"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ISCnx1Xx", "client_version": "vuj32yX7", "deployment": "6VYao3ho", "game_mode": "2xerYVXE", "joinable": true, "match_id": "uleGgiq3", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 71, "party_attributes": {"fYJ0m6B8": {}, "IXpNclXw": {}, "hI3AgV8d": {}}, "party_id": "pxxWpE5U", "party_members": [{"extra_attributes": {"BirF1ytW": {}, "esdb4GGO": {}, "37TvrJm3": {}}, "user_id": "sgTJP3iV"}, {"extra_attributes": {"BhtUOWqR": {}, "RxQ8zB92": {}, "ZqIgG7hx": {}}, "user_id": "V8c14zyE"}, {"extra_attributes": {"nR1QtPt5": {}, "O66AIWas": {}, "WXmO70mm": {}}, "user_id": "qqK2GMS9"}]}, {"first_ticket_created_at": 22, "party_attributes": {"GNc0uES9": {}, "rIJvLHSI": {}, "qa3gJaQK": {}}, "party_id": "ihsu7FXf", "party_members": [{"extra_attributes": {"zwsYZaVG": {}, "k4X4mDR6": {}, "GBd9L3bM": {}}, "user_id": "MuKGVtVN"}, {"extra_attributes": {"viXlS3Lp": {}, "pPYtgAk7": {}, "6XBxnJhv": {}}, "user_id": "nUkm5mkd"}, {"extra_attributes": {"j523RaNq": {}, "THLaQMr8": {}, "VehjbPQX": {}}, "user_id": "DzgKP0CG"}]}, {"first_ticket_created_at": 65, "party_attributes": {"nlRQCdA3": {}, "ety44A7c": {}, "vswXTVfs": {}}, "party_id": "VqKKDo3L", "party_members": [{"extra_attributes": {"PXsKbbi2": {}, "p4nQ42D2": {}, "YzVBGmlm": {}}, "user_id": "rBNd6APR"}, {"extra_attributes": {"xNS4eFP0": {}, "Qo3Bizro": {}, "fMSlLPUZ": {}}, "user_id": "3C7jMsQI"}, {"extra_attributes": {"pF2VCVe6": {}, "P6M5hUb3": {}, "OrYmxeRZ": {}}, "user_id": "un4dka4v"}]}]}, {"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"UsqjSE5U": {}, "VLNWGyI8": {}, "qChvzljf": {}}, "party_id": "p4zd3djd", "party_members": [{"extra_attributes": {"5IyxPXor": {}, "co968zW6": {}, "nkd6LMI3": {}}, "user_id": "tIhOzF6o"}, {"extra_attributes": {"A0O77VIM": {}, "uRmks8tQ": {}, "GrK4Axnz": {}}, "user_id": "jSsicRUs"}, {"extra_attributes": {"xUzL1XI4": {}, "3TmH9xIc": {}, "UgNtzXpI": {}}, "user_id": "Qa0U2Kcw"}]}, {"first_ticket_created_at": 61, "party_attributes": {"7ji7wmDN": {}, "YvZdt8Qv": {}, "DOZlNhY6": {}}, "party_id": "oRhVxxMe", "party_members": [{"extra_attributes": {"A5jjDhOy": {}, "IPqQfCs8": {}, "F4fOrtxh": {}}, "user_id": "duRUbldS"}, {"extra_attributes": {"lv1Odee7": {}, "nDYwKzpO": {}, "NbHYe7ve": {}}, "user_id": "o2GsfNsj"}, {"extra_attributes": {"2GMf3pJx": {}, "yriwzlXF": {}, "lEcshfuO": {}}, "user_id": "Cr6vdLzs"}]}, {"first_ticket_created_at": 71, "party_attributes": {"wNJnP7ez": {}, "gm0GBsnY": {}, "LxPabFy6": {}}, "party_id": "3T5nV3c9", "party_members": [{"extra_attributes": {"RCVS3xZo": {}, "5mjq5G5u": {}, "xoTsbXgR": {}}, "user_id": "bfHBy4uh"}, {"extra_attributes": {"WR8FxaeO": {}, "gSbmoSXz": {}, "v2Y2cPGx": {}}, "user_id": "YocdhPnD"}, {"extra_attributes": {"uXFBgDTG": {}, "u5CW8ZYv": {}, "kejZgAH4": {}}, "user_id": "oTdxxcpI"}]}]}, {"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"alMiVh2l": {}, "aKVvhThc": {}, "DzJZkn93": {}}, "party_id": "hrdwAQRm", "party_members": [{"extra_attributes": {"NIeDJJqg": {}, "Kj8qp9DW": {}, "5ZlV0JnP": {}}, "user_id": "0FwjVl4y"}, {"extra_attributes": {"gNBjXJGQ": {}, "opDreUlg": {}, "MdTvOc9r": {}}, "user_id": "G7hG0czY"}, {"extra_attributes": {"bLFm7LTr": {}, "eGw9oi8k": {}, "G00CYyTc": {}}, "user_id": "nefUmaH3"}]}, {"first_ticket_created_at": 22, "party_attributes": {"PhnOltTK": {}, "bYDDLuYE": {}, "qRMBkhiO": {}}, "party_id": "qTDuExv7", "party_members": [{"extra_attributes": {"EHVnv9y7": {}, "1lFa5ilI": {}, "9AOojju4": {}}, "user_id": "mj05reOO"}, {"extra_attributes": {"mHuC69tt": {}, "MCpe1SPh": {}, "4tyKTuiq": {}}, "user_id": "eL501BHo"}, {"extra_attributes": {"qVkFfZ1r": {}, "czXEXmnk": {}, "TG0fThpY": {}}, "user_id": "d7Yks8nq"}]}, {"first_ticket_created_at": 66, "party_attributes": {"aPv5JKaq": {}, "mtWsHKX7": {}, "IbIs7pNZ": {}}, "party_id": "Zt48GOjh", "party_members": [{"extra_attributes": {"Ea8Ch4o1": {}, "s4ioypkw": {}, "7C2Tz54Q": {}}, "user_id": "d7UugFin"}, {"extra_attributes": {"h7JgVTwK": {}, "w2QxawzO": {}, "3AGwBPce": {}}, "user_id": "sIrVV7Wo"}, {"extra_attributes": {"7fZKxuAp": {}, "SrVn5LZ1": {}, "GLBEK3LX": {}}, "user_id": "GeV2dQjY"}]}]}], "namespace": "NehV1LEe", "party_attributes": {"Nf1VLBgS": {}, "PbAZw0Dk": {}, "aP3Wl4Kv": {}}, "party_id": "97a3M47L", "queued_at": 66, "region": "KIDwzAdY", "server_name": "w53hh3Kn", "status": "6L9AGcJd", "updated_at": "1972-09-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "txVKUwIH"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'pdmNUmST' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 94, "userID": "DXAxNjru", "weight": 0.2082500479357665}' \
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
    --matchIDs 'VECRBgAT' \
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
    --strategy 'rJPKH0r0' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'E9ByGbDM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'YtJj0dir' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "V5BJYydf", "description": "NiYoXwOT", "findMatchTimeoutSeconds": 99, "joinable": true, "max_delay_ms": 15, "ruleSet": {"alliance": {"maxNumber": 24, "minNumber": 25, "playerMaxNumber": 93, "playerMinNumber": 88}, "alliance_flexing_rule": [{"duration": 21, "max_number": 13, "min_number": 97, "player_max_number": 25, "player_min_number": 87}, {"duration": 92, "max_number": 31, "min_number": 42, "player_max_number": 91, "player_min_number": 6}, {"duration": 56, "max_number": 46, "min_number": 52, "player_max_number": 57, "player_min_number": 62}], "flexingRules": [{"attribute": "QKzViuKq", "criteria": "BZJ4u2vT", "duration": 52, "reference": 0.6648347541448543}, {"attribute": "1fVUMbb9", "criteria": "UTucWPIC", "duration": 42, "reference": 0.4919719472330807}, {"attribute": "tf5tBSQV", "criteria": "AisvwwSc", "duration": 37, "reference": 0.6820085815396306}], "match_options": {"options": [{"name": "zJNmSNky", "type": "67CzTd9d"}, {"name": "qBinfbwf", "type": "rExvhxo8"}, {"name": "r5qRiHis", "type": "ujqW5EAN"}]}, "matchingRules": [{"attribute": "bVjNcdxo", "criteria": "GKdFrWV4", "reference": 0.7350889399266243}, {"attribute": "yBeGRlPE", "criteria": "l4rmQazi", "reference": 0.1801851127744637}, {"attribute": "De4Ck6R1", "criteria": "MscTrT99", "reference": 0.6233526831217602}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 24, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '4cPJiwpH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '5uMLt26u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '9VCYWdV2' \
    --matchID 'KvWq8WQD' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["ri8Br2Wf", "B4O9AKUu", "eGA8ixWx"], "party_id": "e9ITABcg", "user_id": "Njo2Jirz"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '2Bn8xaqy' \
    --matchID 'zGfeJeex' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'A4CALS50' \
    --matchID '22qQ10Ec' \
    --namespace $AB_NAMESPACE \
    --userID '17aDrWct' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel 'FMzi8Cri' \
    --deleted 'false' \
    --matchID 'UVCDo4gI' \
    --partyID 'gRrwvmWW' \
    --userID '7IYRN37c' \
    --limit '58' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'zSOTE5lr' \
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
    --channelName 'pQRC0aI7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'hZzCObgO' \
    --deleted 'true' \
    --matchID '5CIzkg8q' \
    --partyID 'DGuP5mXe' \
    --userID 'RCmDQOsr' \
    --limit '69' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE