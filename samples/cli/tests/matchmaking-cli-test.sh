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
    --limit '72' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "JDdWGPnx", "description": "DdmUs9rv", "find_match_timeout_seconds": 47, "game_mode": "oxLyZqPm", "joinable": true, "max_delay_ms": 0, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 27, "min": 56, "name": "aE30hEzC"}, {"max": 54, "min": 78, "name": "OUIvFyd2"}, {"max": 24, "min": 48, "name": "JZMOb4Bv"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 48}, "max_number": 34, "min_number": 18, "player_max_number": 8, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 24, "min": 47, "name": "Rpaq4P4f"}, {"max": 83, "min": 33, "name": "hq8VIpam"}, {"max": 49, "min": 19, "name": "gySbmHP3"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 98}, "duration": 11, "max_number": 42, "min_number": 21, "player_max_number": 26, "player_min_number": 99}, {"combination": {"alliances": [{"max": 4, "min": 53, "name": "OhlCKTRG"}, {"max": 90, "min": 0, "name": "fZdwCTPS"}, {"max": 92, "min": 26, "name": "g19LstQX"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 28}, "duration": 71, "max_number": 55, "min_number": 77, "player_max_number": 91, "player_min_number": 26}, {"combination": {"alliances": [{"max": 58, "min": 54, "name": "ZTgpZSAt"}, {"max": 39, "min": 79, "name": "FpV29Efx"}, {"max": 93, "min": 24, "name": "pyGMdSbW"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 96}, "duration": 85, "max_number": 32, "min_number": 52, "player_max_number": 28, "player_min_number": 88}], "flexing_rule": [{"attribute": "TRx1bFUF", "criteria": "FCLrC1Fj", "duration": 31, "reference": 0.812672261966697}, {"attribute": "zZDoZqCy", "criteria": "y0CeKWSN", "duration": 21, "reference": 0.5900833529410194}, {"attribute": "inrbodd6", "criteria": "nquM5Fei", "duration": 69, "reference": 0.7432762020588217}], "match_options": {"options": [{"name": "Y2LWHWXy", "type": "B89PJd01"}, {"name": "ZKYaDHEG", "type": "Vc3Bt3Fd"}, {"name": "vudGCD3a", "type": "qhmyukiw"}]}, "matching_rule": [{"attribute": "UYfGstk9", "criteria": "ksfD1KXj", "reference": 0.40089504152642563}, {"attribute": "wNaKIYBr", "criteria": "21vGqE4Z", "reference": 0.8533254962909028}, {"attribute": "1q1uBGyx", "criteria": "PylXLYWr", "reference": 0.2798666874865777}], "rebalance_enable": false, "sub_game_modes": {"2EfTMAeF": {"alliance": {"combination": {"alliances": [{"max": 4, "min": 84, "name": "m6gz5kFT"}, {"max": 68, "min": 55, "name": "qjMyH8Fj"}, {"max": 52, "min": 58, "name": "As3ZgjPi"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 20}, "max_number": 79, "min_number": 84, "player_max_number": 20, "player_min_number": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 67, "min": 55, "name": "px8jv0fo"}, {"max": 78, "min": 3, "name": "TMA7Nqb0"}, {"max": 10, "min": 84, "name": "eRRyEa84"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 46}, "duration": 49, "max_number": 100, "min_number": 77, "player_max_number": 19, "player_min_number": 82}, {"combination": {"alliances": [{"max": 42, "min": 27, "name": "itqxjnOG"}, {"max": 70, "min": 27, "name": "KSlaZtZN"}, {"max": 86, "min": 5, "name": "r5uFDwI5"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 9}, "duration": 92, "max_number": 46, "min_number": 26, "player_max_number": 55, "player_min_number": 23}, {"combination": {"alliances": [{"max": 52, "min": 15, "name": "AVtuFbWI"}, {"max": 67, "min": 45, "name": "E1an51Xl"}, {"max": 96, "min": 21, "name": "MUPZCGWv"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 73}, "duration": 3, "max_number": 95, "min_number": 77, "player_max_number": 11, "player_min_number": 58}], "name": "TZCLX8AW"}, "LsI0QIlP": {"alliance": {"combination": {"alliances": [{"max": 82, "min": 47, "name": "D0w50JH0"}, {"max": 9, "min": 83, "name": "AzbP1eeg"}, {"max": 23, "min": 78, "name": "kBC15BhH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 38}, "max_number": 65, "min_number": 14, "player_max_number": 27, "player_min_number": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 87, "min": 100, "name": "Y26xrVty"}, {"max": 17, "min": 100, "name": "cvBcCosN"}, {"max": 2, "min": 83, "name": "1QWQupE2"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 11}, "duration": 82, "max_number": 9, "min_number": 9, "player_max_number": 71, "player_min_number": 8}, {"combination": {"alliances": [{"max": 1, "min": 94, "name": "2rfovyFA"}, {"max": 82, "min": 99, "name": "VwDXM5f1"}, {"max": 92, "min": 68, "name": "XnON0cBC"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 9}, "duration": 6, "max_number": 77, "min_number": 38, "player_max_number": 46, "player_min_number": 97}, {"combination": {"alliances": [{"max": 5, "min": 63, "name": "cxqImo3l"}, {"max": 6, "min": 54, "name": "WKrJrDoP"}, {"max": 42, "min": 84, "name": "Vtc28ral"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 0}, "duration": 74, "max_number": 69, "min_number": 17, "player_max_number": 64, "player_min_number": 13}], "name": "MviooQZH"}, "NJhI6NVP": {"alliance": {"combination": {"alliances": [{"max": 24, "min": 66, "name": "DrOb8g3F"}, {"max": 73, "min": 40, "name": "J1cj8K35"}, {"max": 64, "min": 16, "name": "43d5IHFI"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 42}, "max_number": 59, "min_number": 40, "player_max_number": 26, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 68, "min": 55, "name": "WPBb7cSk"}, {"max": 76, "min": 72, "name": "l7seLVLp"}, {"max": 27, "min": 62, "name": "3QnUe2qJ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 33}, "duration": 95, "max_number": 30, "min_number": 0, "player_max_number": 56, "player_min_number": 65}, {"combination": {"alliances": [{"max": 80, "min": 82, "name": "LKAD9P1s"}, {"max": 42, "min": 30, "name": "kMFQNNJw"}, {"max": 47, "min": 71, "name": "OEQvRpe8"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 100}, "duration": 57, "max_number": 35, "min_number": 5, "player_max_number": 39, "player_min_number": 42}, {"combination": {"alliances": [{"max": 84, "min": 7, "name": "hErzGno8"}, {"max": 67, "min": 96, "name": "10xscjGt"}, {"max": 94, "min": 3, "name": "88AKby8B"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 90}, "duration": 75, "max_number": 82, "min_number": 56, "player_max_number": 36, "player_min_number": 35}], "name": "gz0WXPXN"}}}, "session_queue_timeout_seconds": 18, "social_matchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'Wn0JnLmu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "INHLPgF8", "players": [{"results": [{"attribute": "AxSqaX0a", "value": 0.45306767008473314}, {"attribute": "B30XOjtW", "value": 0.5325026329521638}, {"attribute": "FItRUdjw", "value": 0.47722612228200467}], "user_id": "A8UZn6Ku"}, {"results": [{"attribute": "Qmh926Ez", "value": 0.48564411839453414}, {"attribute": "xh103KqX", "value": 0.30575558984105}, {"attribute": "tIyyfg3H", "value": 0.42530509322488697}], "user_id": "F6C2tBcv"}, {"results": [{"attribute": "ucVtFkVK", "value": 0.8089821264440846}, {"attribute": "43AFNUs2", "value": 0.9655981642098528}, {"attribute": "AbsVvEFO", "value": 0.2599452291968011}], "user_id": "PFf5SWjO"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "tSeyFX4G"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ar9zWtlx", "client_version": "d2zr2AJI", "deployment": "19zACr4k", "error_code": 51, "error_message": "1Cgnqct1", "game_mode": "GOH2iR8J", "joinable": true, "match_id": "fas09Vho", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"SnMq2YFv": {}, "SjFouTW2": {}, "y2Erf5j6": {}}, "party_id": "6txBDN9z", "party_members": [{"extra_attributes": {"0lCp2LoH": {}, "oaJJbloT": {}, "BzQgLpnZ": {}}, "user_id": "7z9g7pF1"}, {"extra_attributes": {"pdPQNofG": {}, "Wv1v15L5": {}, "8oCAW7Gt": {}}, "user_id": "fSpiBAlR"}, {"extra_attributes": {"qg9ejxTo": {}, "HBV2llOk": {}, "vUC7azpw": {}}, "user_id": "PnVEaTTK"}], "ticket_id": "55u2dqVW"}, {"first_ticket_created_at": 58, "party_attributes": {"NVlNn4wU": {}, "jqxWZy8l": {}, "ZjeaYISv": {}}, "party_id": "LvEKFDEA", "party_members": [{"extra_attributes": {"ovuTcKTx": {}, "NHX5YVyq": {}, "GWNhx5J7": {}}, "user_id": "0ZCTmLuo"}, {"extra_attributes": {"Q40UpnRg": {}, "L2aMefiv": {}, "vzuNAl6T": {}}, "user_id": "L1PLUk5x"}, {"extra_attributes": {"zTkjD775": {}, "P4QYtRoB": {}, "WlY2MXcN": {}}, "user_id": "e1gwJfY1"}], "ticket_id": "5o5idi8n"}, {"first_ticket_created_at": 95, "party_attributes": {"wKNLrnBx": {}, "haQZ5qj1": {}, "LjMfyPmS": {}}, "party_id": "JtJfJyGG", "party_members": [{"extra_attributes": {"B0f9Ayft": {}, "O7FtY95s": {}, "D1iAmeeh": {}}, "user_id": "pgBpS67E"}, {"extra_attributes": {"qvxwZHya": {}, "zY51ylGJ": {}, "j3vcsGiz": {}}, "user_id": "WFzEHPSU"}, {"extra_attributes": {"k53Soqik": {}, "wlrOhk3x": {}, "7Oxh7urD": {}}, "user_id": "JwCepL6H"}], "ticket_id": "1qDFK40Y"}]}, {"matching_parties": [{"first_ticket_created_at": 61, "party_attributes": {"HrVDMQLJ": {}, "3OKvr0rl": {}, "Ur6WgG2U": {}}, "party_id": "0HtCQoUf", "party_members": [{"extra_attributes": {"Hwi2vRI4": {}, "z30i1bP3": {}, "M7mYkPdQ": {}}, "user_id": "IBbM9zW4"}, {"extra_attributes": {"WiGi5Tfl": {}, "oPKbPTU3": {}, "fOMSEqpP": {}}, "user_id": "Qz3w2XZx"}, {"extra_attributes": {"PPHUFxR1": {}, "f3WaTklD": {}, "S8AIM6t4": {}}, "user_id": "uElUGEdZ"}], "ticket_id": "QGpehfcm"}, {"first_ticket_created_at": 28, "party_attributes": {"ojofbhGS": {}, "60wWKQvc": {}, "SFIkTja9": {}}, "party_id": "JbUARjlV", "party_members": [{"extra_attributes": {"uEnogHXC": {}, "1GUlDpb2": {}, "GLm0c80d": {}}, "user_id": "Lj0lSAy2"}, {"extra_attributes": {"lUAMI75M": {}, "SDVQwpZp": {}, "8FEVONk0": {}}, "user_id": "avTVetrE"}, {"extra_attributes": {"wU4Cnc1c": {}, "UAS7ktjX": {}, "BphK966B": {}}, "user_id": "IjQgXtAw"}], "ticket_id": "gV6uAR2B"}, {"first_ticket_created_at": 89, "party_attributes": {"nudX7he4": {}, "UVYOC110": {}, "XmyD2WY0": {}}, "party_id": "12LroEln", "party_members": [{"extra_attributes": {"9XYmR7zM": {}, "41z5NEuA": {}, "0UkMEVQm": {}}, "user_id": "kU4wccWe"}, {"extra_attributes": {"Roahm5li": {}, "jyoeb6Am": {}, "QodU1855": {}}, "user_id": "6xFBbn9f"}, {"extra_attributes": {"sUh1j2BC": {}, "6jA4SN8U": {}, "SxewkODJ": {}}, "user_id": "c320eeyk"}], "ticket_id": "XIIPGYLl"}]}, {"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"Dm99lRJi": {}, "PGeL7lJ2": {}, "70gdlLEo": {}}, "party_id": "pa4whJ6q", "party_members": [{"extra_attributes": {"4uljZ6tz": {}, "KzGfyg4I": {}, "jOX66y5U": {}}, "user_id": "aAv0QnWk"}, {"extra_attributes": {"99HkLoHb": {}, "lwFFscXK": {}, "QDFwS2jw": {}}, "user_id": "jRZTDGCa"}, {"extra_attributes": {"8IXPBdTC": {}, "z7xpjzwn": {}, "9WuT0iyG": {}}, "user_id": "xXzHPznv"}], "ticket_id": "G66Rtdam"}, {"first_ticket_created_at": 82, "party_attributes": {"92yrujEV": {}, "PuRIEweX": {}, "AquhDLcy": {}}, "party_id": "azXbWufY", "party_members": [{"extra_attributes": {"9hf5bqqg": {}, "pZ6dsZEI": {}, "XjdoHOsD": {}}, "user_id": "osk5tWgb"}, {"extra_attributes": {"zGy05igF": {}, "5pMiffd2": {}, "p0McyeKO": {}}, "user_id": "JMChbWco"}, {"extra_attributes": {"2eurBHfx": {}, "nZsE1gjN": {}, "ks8AwPYZ": {}}, "user_id": "UH9GyW8P"}], "ticket_id": "y9HdKPmH"}, {"first_ticket_created_at": 83, "party_attributes": {"P98NvtJm": {}, "mdug13Vq": {}, "KtdVS7fC": {}}, "party_id": "nDlAIIpJ", "party_members": [{"extra_attributes": {"ubYZy0Of": {}, "OzMuiEUP": {}, "eKRb9wW4": {}}, "user_id": "aUvXxHv1"}, {"extra_attributes": {"2m3U64HR": {}, "jTztFJcB": {}, "avlf2ZpA": {}}, "user_id": "MxGaajLV"}, {"extra_attributes": {"bcW3rsoJ": {}, "VhludqZd": {}, "e92699Nu": {}}, "user_id": "3Di3OOKC"}], "ticket_id": "pZVOvg9o"}]}], "namespace": "fXvw61o7", "party_attributes": {"FLxzlmC7": {}, "xYUFNtjp": {}, "p4TY79Nf": {}}, "party_id": "yNnOw61k", "queued_at": 19, "region": "bEUO1HT9", "server_name": "SBlSSNtE", "status": "0IIenGXH", "ticket_id": "4dBfoYUa", "updated_at": "1995-07-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "2TJcpEHL"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '5Sx3U65w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 86, "userID": "VgwDSFLP", "weight": 0.9155483936809661}' \
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
    --matchIDs '6XHymLhz' \
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
    --strategy 'PzIQjjDM' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'ALwOgrpF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'TzFLu0Qc' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "CmJYO6Np", "description": "cGHBezZc", "findMatchTimeoutSeconds": 51, "joinable": true, "max_delay_ms": 90, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 17, "min": 70, "name": "8zfh2fiP"}, {"max": 39, "min": 92, "name": "c81g4kiF"}, {"max": 1, "min": 77, "name": "5FjX7Byh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 52}, "maxNumber": 81, "minNumber": 8, "playerMaxNumber": 19, "playerMinNumber": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 18, "min": 15, "name": "k3tI5D3N"}, {"max": 97, "min": 25, "name": "Kl7eQPk0"}, {"max": 76, "min": 30, "name": "z5CbygWH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 66}, "duration": 79, "max_number": 77, "min_number": 48, "player_max_number": 24, "player_min_number": 54}, {"combination": {"alliances": [{"max": 89, "min": 68, "name": "uEQkG4p3"}, {"max": 67, "min": 60, "name": "IwcAqxCF"}, {"max": 81, "min": 10, "name": "Rj2H3O4a"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 89}, "duration": 45, "max_number": 43, "min_number": 9, "player_max_number": 12, "player_min_number": 97}, {"combination": {"alliances": [{"max": 50, "min": 100, "name": "nzG5eFeW"}, {"max": 69, "min": 3, "name": "sEYqILoC"}, {"max": 4, "min": 61, "name": "hpdcy3Yx"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 50}, "duration": 3, "max_number": 5, "min_number": 89, "player_max_number": 78, "player_min_number": 94}], "flexingRules": [{"attribute": "Xn4XOCYh", "criteria": "YKHfxDhD", "duration": 60, "reference": 0.24836030856512015}, {"attribute": "IeQJQK63", "criteria": "lKa97F3x", "duration": 8, "reference": 0.8782961691528237}, {"attribute": "XUeYKaox", "criteria": "6lw6oNXH", "duration": 84, "reference": 0.7779607911394}], "match_options": {"options": [{"name": "vgWGpBqM", "type": "4e05tInq"}, {"name": "bm0yafyE", "type": "IIAa9vkl"}, {"name": "jMOqdBXn", "type": "ZAFv32gd"}]}, "matchingRules": [{"attribute": "UZfMGt0O", "criteria": "Iflp3Zr2", "reference": 0.5288599809150711}, {"attribute": "1Xnxj7EA", "criteria": "eHD8B98y", "reference": 0.31135955780850244}, {"attribute": "lovWt238", "criteria": "d2y75kwb", "reference": 0.8505478638205054}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 87, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '9dGfc6ED' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'GZruxvsT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'J0sJ4PEw' \
    --matchID 'DtG3i3m5' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["ifNpOlca", "Y6QGZRFe", "FhueHTAA"], "party_id": "t6lO3tKV", "user_id": "zPSxWLpf"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'LEMJAySh' \
    --matchID 'EcADwlkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Syf2moHE' \
    --matchID 'mpUQG8FH' \
    --namespace $AB_NAMESPACE \
    --userID 'KQBjpTeV' \
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
    --channelName 'ciDYBDJw' \
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