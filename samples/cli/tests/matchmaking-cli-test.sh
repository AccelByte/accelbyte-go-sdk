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
    --limit '78' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "dGiMyK7t", "description": "532HmiOX", "find_match_timeout_seconds": 19, "game_mode": "DX91yqTM", "joinable": true, "max_delay_ms": 31, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 22, "name": "Qst3Dd3e"}, {"max": 82, "min": 63, "name": "6hOpCstW"}, {"max": 63, "min": 10, "name": "yBeqQFLT"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 71}, "max_number": 87, "min_number": 89, "player_max_number": 34, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 68, "min": 44, "name": "QfS6bLWi"}, {"max": 94, "min": 27, "name": "VPkhTlbq"}, {"max": 27, "min": 83, "name": "ZAvqRVk2"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 66}, "duration": 74, "max_number": 40, "min_number": 71, "player_max_number": 86, "player_min_number": 97}, {"combination": {"alliances": [{"max": 1, "min": 35, "name": "bEwl60I1"}, {"max": 21, "min": 92, "name": "OODBaCtR"}, {"max": 51, "min": 70, "name": "hRFcIfOX"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 89}, "duration": 44, "max_number": 68, "min_number": 81, "player_max_number": 25, "player_min_number": 71}, {"combination": {"alliances": [{"max": 28, "min": 56, "name": "lOr1hXop"}, {"max": 5, "min": 24, "name": "zZCymuQ8"}, {"max": 23, "min": 85, "name": "XuNHEQf3"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 69}, "duration": 68, "max_number": 19, "min_number": 79, "player_max_number": 68, "player_min_number": 46}], "flexing_rule": [{"attribute": "vRACcIgk", "criteria": "gfElzAk4", "duration": 37, "reference": 0.722058559789618}, {"attribute": "9D6yDkm9", "criteria": "qcAtuaxG", "duration": 47, "reference": 0.9616159404340129}, {"attribute": "mJ9blX1z", "criteria": "6arjjAYF", "duration": 12, "reference": 0.01959489720028007}], "match_options": {"options": [{"name": "eWtDjh6C", "type": "LUKtCT4t"}, {"name": "ihyB6UFZ", "type": "DjCVWMDs"}, {"name": "OFNqaWmx", "type": "BgdnIWC7"}]}, "matching_rule": [{"attribute": "qPoW04rr", "criteria": "V1yLOCGa", "reference": 0.2440249399881348}, {"attribute": "AkfWiclM", "criteria": "zjVtjLsn", "reference": 0.026131894369331832}, {"attribute": "VsOsV8Oi", "criteria": "yTw03nv5", "reference": 0.5297771632637394}], "rebalance_enable": true, "sub_game_modes": {"ktQpmii0": {"alliance": {"combination": {"alliances": [{"max": 86, "min": 94, "name": "fR2fiPpL"}, {"max": 80, "min": 91, "name": "dzX4MFyG"}, {"max": 85, "min": 84, "name": "hZ3mWkZ3"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 41}, "max_number": 73, "min_number": 20, "player_max_number": 45, "player_min_number": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 99, "name": "UtdPW3Sl"}, {"max": 81, "min": 56, "name": "YDhzX8Aa"}, {"max": 4, "min": 9, "name": "Wpgygb0o"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 41}, "duration": 85, "max_number": 87, "min_number": 34, "player_max_number": 13, "player_min_number": 87}, {"combination": {"alliances": [{"max": 26, "min": 79, "name": "dfgVbhwq"}, {"max": 92, "min": 14, "name": "Bmf8qYNs"}, {"max": 97, "min": 81, "name": "uuSfroUe"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 99}, "duration": 46, "max_number": 48, "min_number": 15, "player_max_number": 99, "player_min_number": 76}, {"combination": {"alliances": [{"max": 100, "min": 97, "name": "6sg32Lo6"}, {"max": 81, "min": 61, "name": "sgdEvr1M"}, {"max": 35, "min": 55, "name": "NTC5juKa"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 83}, "duration": 28, "max_number": 66, "min_number": 16, "player_max_number": 54, "player_min_number": 8}], "name": "72JL8ywa"}, "6XDjkgr7": {"alliance": {"combination": {"alliances": [{"max": 38, "min": 17, "name": "nh4K7wrl"}, {"max": 22, "min": 52, "name": "oOFqhxNH"}, {"max": 21, "min": 91, "name": "b9cO7vnH"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 34}, "max_number": 43, "min_number": 59, "player_max_number": 68, "player_min_number": 17}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 80, "min": 23, "name": "C2AoaKUA"}, {"max": 93, "min": 27, "name": "kv1hquqy"}, {"max": 20, "min": 81, "name": "dlX5ZSAc"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 91}, "duration": 31, "max_number": 47, "min_number": 13, "player_max_number": 39, "player_min_number": 95}, {"combination": {"alliances": [{"max": 82, "min": 62, "name": "OLiHt1xP"}, {"max": 41, "min": 50, "name": "R9UJrxAS"}, {"max": 83, "min": 76, "name": "8fokx9vJ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 80}, "duration": 81, "max_number": 98, "min_number": 82, "player_max_number": 7, "player_min_number": 90}, {"combination": {"alliances": [{"max": 64, "min": 20, "name": "cmRaOdXW"}, {"max": 69, "min": 1, "name": "zhUJqfyi"}, {"max": 40, "min": 69, "name": "moZ54YyS"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 4, "role_flexing_second": 37}, "duration": 78, "max_number": 19, "min_number": 37, "player_max_number": 67, "player_min_number": 26}], "name": "GZXSU6SR"}, "qsu6xC90": {"alliance": {"combination": {"alliances": [{"max": 11, "min": 23, "name": "iNpDpFIq"}, {"max": 70, "min": 13, "name": "ar68nDVX"}, {"max": 85, "min": 31, "name": "P4JZ6d2T"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 37}, "max_number": 96, "min_number": 10, "player_max_number": 12, "player_min_number": 57}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 78, "min": 84, "name": "cOFDcCYe"}, {"max": 4, "min": 55, "name": "EAJgh1bK"}, {"max": 45, "min": 99, "name": "fKFzUWgX"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 29}, "duration": 1, "max_number": 96, "min_number": 76, "player_max_number": 85, "player_min_number": 80}, {"combination": {"alliances": [{"max": 81, "min": 70, "name": "F1QYPEfC"}, {"max": 43, "min": 45, "name": "xxnIuncA"}, {"max": 39, "min": 44, "name": "AkwTcJev"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 95}, "duration": 50, "max_number": 22, "min_number": 5, "player_max_number": 46, "player_min_number": 62}, {"combination": {"alliances": [{"max": 41, "min": 55, "name": "yK2ga88o"}, {"max": 95, "min": 20, "name": "5Fyo8gaW"}, {"max": 17, "min": 50, "name": "V7woMoN7"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 90}, "duration": 40, "max_number": 54, "min_number": 11, "player_max_number": 56, "player_min_number": 16}], "name": "A6eViBFy"}}}, "session_queue_timeout_seconds": 95, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'XqEtKZsK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "isj2762E", "players": [{"results": [{"attribute": "CBebJI0c", "value": 0.15963878471537007}, {"attribute": "bFhlQ3qZ", "value": 0.9022190100361378}, {"attribute": "07y8LL1I", "value": 0.6084741519661264}], "user_id": "Jy8oYCYG"}, {"results": [{"attribute": "xy43Y6J2", "value": 0.4201818578610236}, {"attribute": "2SME1h3I", "value": 0.14483637802760307}, {"attribute": "70O73O1b", "value": 0.04016982056033125}], "user_id": "IKZNCKpE"}, {"results": [{"attribute": "EvyDgZUL", "value": 0.8188909502277734}, {"attribute": "fkbVvQkP", "value": 0.8987024534530395}, {"attribute": "e0G8nqQ3", "value": 0.1692726696021023}], "user_id": "SLvWMKpo"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "30X3p5mS"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "rvzAwuDr", "client_version": "MqcpYSqH", "deployment": "yVJOE0Ch", "error_code": 4, "error_message": "ktuDRzJd", "game_mode": "GGFzDI07", "joinable": true, "match_id": "iqoga2kw", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 86, "party_attributes": {"jwgT0e9M": {}, "rDxHr8RO": {}, "acpm30uO": {}}, "party_id": "8AoOl9ob", "party_members": [{"extra_attributes": {"3PtVikf9": {}, "DwxManvj": {}, "k7KlXr9U": {}}, "user_id": "2skMbN6u"}, {"extra_attributes": {"UcCPk8YT": {}, "LmTiSI21": {}, "knEqdQ1f": {}}, "user_id": "xpXX9eeJ"}, {"extra_attributes": {"YGWqfuWA": {}, "gy7a4g6O": {}, "89ZkAosZ": {}}, "user_id": "kwSuFgpc"}], "ticket_id": "Zu0hii02"}, {"first_ticket_created_at": 13, "party_attributes": {"Qq8yHWIr": {}, "RP2Y6b7s": {}, "Hp7ZfqU5": {}}, "party_id": "9KhoJjBa", "party_members": [{"extra_attributes": {"5bjVHTEr": {}, "9MEqSOQC": {}, "yVCc5euW": {}}, "user_id": "L5osNog5"}, {"extra_attributes": {"ZrS4AFWt": {}, "8lE4egJp": {}, "MvYfRbcv": {}}, "user_id": "jh6QerFH"}, {"extra_attributes": {"rQPnyiML": {}, "WnhD2CyM": {}, "QU4aSHDF": {}}, "user_id": "mrZfItz5"}], "ticket_id": "mMlLyjgB"}, {"first_ticket_created_at": 42, "party_attributes": {"p5cOPI6Q": {}, "OJ7qJ96v": {}, "X7hKjTRw": {}}, "party_id": "ds3iZzZl", "party_members": [{"extra_attributes": {"5xxsqesW": {}, "o7IFdkRt": {}, "cyIdKbal": {}}, "user_id": "zeUQqSq3"}, {"extra_attributes": {"xvP8xUQe": {}, "V9A4gRbf": {}, "OKY56BVY": {}}, "user_id": "sGRulZGz"}, {"extra_attributes": {"pmCXOoCw": {}, "D98RKZeR": {}, "fY4sIJJZ": {}}, "user_id": "YGFdyfwE"}], "ticket_id": "p89PcUG3"}]}, {"matching_parties": [{"first_ticket_created_at": 29, "party_attributes": {"p1UEbcH3": {}, "K1p6Cm5e": {}, "Q5eVOzE6": {}}, "party_id": "M0UjNVA0", "party_members": [{"extra_attributes": {"15phFMf0": {}, "7dORBGIX": {}, "W9ItYsbf": {}}, "user_id": "aB3Mva9y"}, {"extra_attributes": {"CUNgovV9": {}, "YHbhDC8q": {}, "QOXMimM4": {}}, "user_id": "n5dVkKny"}, {"extra_attributes": {"U9Ylab4m": {}, "cVdYXwxd": {}, "AyA28Vxz": {}}, "user_id": "49UWCnkL"}], "ticket_id": "J1C7IMRx"}, {"first_ticket_created_at": 42, "party_attributes": {"ua7geeN5": {}, "zzHwQbwv": {}, "r2LsaEPM": {}}, "party_id": "r5RgBBbg", "party_members": [{"extra_attributes": {"qCZrcYtG": {}, "ktCetG0k": {}, "3Ud62wzi": {}}, "user_id": "p8y19Mm2"}, {"extra_attributes": {"mYET6tew": {}, "Y2lxG5Cv": {}, "4pfWqKzn": {}}, "user_id": "CxgkFTHi"}, {"extra_attributes": {"Yw4pgJWI": {}, "txeJqQaf": {}, "g7nf3Hpf": {}}, "user_id": "lakGIF1A"}], "ticket_id": "YywcNelc"}, {"first_ticket_created_at": 42, "party_attributes": {"jTsmHlXp": {}, "t89HQFYT": {}, "iju8ZPNr": {}}, "party_id": "C0jEIHYP", "party_members": [{"extra_attributes": {"8J8PDoon": {}, "9O3qr98H": {}, "AeI1x8mE": {}}, "user_id": "70zYVCr2"}, {"extra_attributes": {"YZV18ffG": {}, "R4u6Cm1e": {}, "odCCIAKp": {}}, "user_id": "sylYnSRp"}, {"extra_attributes": {"byTm2ltJ": {}, "RuUifFx6": {}, "s0ZsbZGS": {}}, "user_id": "zGLEOj9F"}], "ticket_id": "gyhfJaci"}]}, {"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"ruvdzHpa": {}, "dvJKO9PV": {}, "E4hlEwSC": {}}, "party_id": "F6nRDJiF", "party_members": [{"extra_attributes": {"XSoIi7hL": {}, "77W6ZJa6": {}, "nATCnQmA": {}}, "user_id": "2e3h5oNG"}, {"extra_attributes": {"SIUHE9XS": {}, "4WleRJ0W": {}, "eMdSr6TU": {}}, "user_id": "v9uadwYt"}, {"extra_attributes": {"WpRaWtzg": {}, "Vh1f48B6": {}, "kSzvuIoH": {}}, "user_id": "6h15U4iZ"}], "ticket_id": "SVcnmCBP"}, {"first_ticket_created_at": 72, "party_attributes": {"FBKN4zC4": {}, "r8Jnlcbc": {}, "sa74tuXe": {}}, "party_id": "A5EiL0oZ", "party_members": [{"extra_attributes": {"LvOONnQ1": {}, "mWVLgnUr": {}, "Lf8IwVOD": {}}, "user_id": "zCWZqywi"}, {"extra_attributes": {"pLYidjGz": {}, "hrvx9vaE": {}, "rd5iRAH4": {}}, "user_id": "Dth6lcoB"}, {"extra_attributes": {"dZQ7ZbJE": {}, "NuFqHd4R": {}, "LHdwd2fl": {}}, "user_id": "hoRtDNJH"}], "ticket_id": "lVVdseMZ"}, {"first_ticket_created_at": 8, "party_attributes": {"TFdsacw5": {}, "QAt89G3p": {}, "gtujQlju": {}}, "party_id": "2VvbOwBn", "party_members": [{"extra_attributes": {"Q3QohGjw": {}, "VSMRh1yI": {}, "eIAX9BBT": {}}, "user_id": "Ylfwtu3Z"}, {"extra_attributes": {"aon8KORp": {}, "GkHCBMPQ": {}, "h0zQDFML": {}}, "user_id": "UUwMccTn"}, {"extra_attributes": {"W1vyIVhK": {}, "9IC7hCn8": {}, "NzpddXv9": {}}, "user_id": "n6Nq7dSe"}], "ticket_id": "UwpMzNkg"}]}], "namespace": "CbA4v9Db", "party_attributes": {"i7DvyKs8": {}, "WEU5H3yp": {}, "W8SzdfOY": {}}, "party_id": "B61mTD89", "queued_at": 2, "region": "QspPYh83", "server_name": "dxf04h2w", "status": "7Wx0cg4v", "ticket_id": "I2aCUbBJ", "updated_at": "1974-01-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "pNlq8g5N"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'pgTfjwF0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 46, "userID": "fOgDJs35", "weight": 0.04702389374430871}' \
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
    --matchIDs 'ELiBhA2c' \
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
    --strategy '2nnFAiZ4' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'LndXKM9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'R9zOhg5N' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "u5sA4MXU", "description": "ARnkgOJl", "findMatchTimeoutSeconds": 53, "joinable": false, "max_delay_ms": 19, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 15, "min": 51, "name": "Bruhaj8R"}, {"max": 14, "min": 96, "name": "n4heM7nr"}, {"max": 73, "min": 61, "name": "hcRafgml"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 49}, "maxNumber": 90, "minNumber": 92, "playerMaxNumber": 76, "playerMinNumber": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 58, "min": 23, "name": "yemMTWNm"}, {"max": 16, "min": 77, "name": "c0LfJrfm"}, {"max": 33, "min": 32, "name": "qdPILgTi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 64}, "duration": 77, "max_number": 95, "min_number": 87, "player_max_number": 2, "player_min_number": 35}, {"combination": {"alliances": [{"max": 9, "min": 84, "name": "09rnkaR9"}, {"max": 72, "min": 48, "name": "sZ4Q9VY9"}, {"max": 86, "min": 38, "name": "lwP7peNi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 40}, "duration": 83, "max_number": 19, "min_number": 52, "player_max_number": 53, "player_min_number": 9}, {"combination": {"alliances": [{"max": 50, "min": 25, "name": "lZbjEsqZ"}, {"max": 38, "min": 76, "name": "daSBEhkq"}, {"max": 54, "min": 66, "name": "7plgKP9M"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 63}, "duration": 22, "max_number": 59, "min_number": 95, "player_max_number": 87, "player_min_number": 76}], "flexingRules": [{"attribute": "7umldYJS", "criteria": "BWNN0Ui7", "duration": 98, "reference": 0.35107057754567084}, {"attribute": "l6MYUdkG", "criteria": "otDCxYSL", "duration": 96, "reference": 0.36570932135584955}, {"attribute": "8WPVyTQs", "criteria": "QdhjguXB", "duration": 40, "reference": 0.4872052885242326}], "match_options": {"options": [{"name": "ysHmPmBx", "type": "BbaLcxnf"}, {"name": "irLIjty5", "type": "eVdDPohD"}, {"name": "8w9cQ2Vk", "type": "4lN0Vj2g"}]}, "matchingRules": [{"attribute": "ILG19aIr", "criteria": "h6qlfuft", "reference": 0.5491755840642161}, {"attribute": "VwQPNr26", "criteria": "b3oyChvG", "reference": 0.650921463173515}, {"attribute": "k1phGXVA", "criteria": "p3ynRtAY", "reference": 0.7664872780112815}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 88, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'hJq7roaB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'L9o1Sxnl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'QPuG3sDn' \
    --matchID 'swU0N8Vy' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["UMB3gdEl", "5JcFglml", "Dp3ogRN8"], "party_id": "eYvp2xRt", "user_id": "Zic3n4hC"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'puZTo9hy' \
    --matchID 'vONpiioR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'FmE9YpFX' \
    --matchID 'MyMx9syv' \
    --namespace $AB_NAMESPACE \
    --userID 'BZg3648d' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
eval_tap 0 24 'SearchSessions # SKIP deprecated' test.out

#- 25 GetSessionHistoryDetailed
eval_tap 0 25 'GetSessionHistoryDetailed # SKIP deprecated' test.out

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
    --channelName 'NpxKVE3p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
eval_tap 0 29 'SearchSessionsV2 # SKIP deprecated' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE