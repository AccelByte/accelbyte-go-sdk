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
    --limit '23' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "OqHxidMl", "description": "xnkotXU8", "find_match_timeout_seconds": 19, "game_mode": "BhEdExju", "joinable": true, "max_delay_ms": 52, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 88, "min": 98, "name": "pCfLyQol"}, {"max": 96, "min": 79, "name": "oiqSVpz5"}, {"max": 17, "min": 49, "name": "7YHU7QXk"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 7}, "max_number": 54, "min_number": 56, "player_max_number": 92, "player_min_number": 1}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 95, "min": 91, "name": "yiolicxF"}, {"max": 96, "min": 60, "name": "qOYGbDWC"}, {"max": 24, "min": 15, "name": "pQdnoC30"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 13}, "duration": 31, "max_number": 65, "min_number": 3, "player_max_number": 87, "player_min_number": 62}, {"combination": {"alliances": [{"max": 75, "min": 33, "name": "W5nU1neA"}, {"max": 39, "min": 4, "name": "kdsi3QzR"}, {"max": 15, "min": 60, "name": "QBEY8PCp"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 4}, "duration": 5, "max_number": 13, "min_number": 22, "player_max_number": 38, "player_min_number": 55}, {"combination": {"alliances": [{"max": 93, "min": 98, "name": "kXW9hmIY"}, {"max": 2, "min": 93, "name": "qifa0GLF"}, {"max": 73, "min": 9, "name": "tpBlqodC"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 6}, "duration": 16, "max_number": 8, "min_number": 66, "player_max_number": 76, "player_min_number": 30}], "flexing_rule": [{"attribute": "hdn8jCvH", "criteria": "uZOdv3Mb", "duration": 74, "reference": 0.2884282992775439}, {"attribute": "loeH07vh", "criteria": "iSXUguSr", "duration": 96, "reference": 0.1142729915147711}, {"attribute": "7cmqIbcQ", "criteria": "23oSZXJN", "duration": 88, "reference": 0.20124811810848098}], "match_options": {"options": [{"name": "jZwkpUDD", "type": "X91BK2uc"}, {"name": "ucmeJorQ", "type": "v4mzVNNN"}, {"name": "PzEbT7r6", "type": "eUFzLk2T"}]}, "matching_rule": [{"attribute": "Box6VgXX", "criteria": "GIn2zGvj", "reference": 0.7058849941757114}, {"attribute": "tOltvABc", "criteria": "8BiQ4rBn", "reference": 0.2642784666802257}, {"attribute": "ZXqaKwV0", "criteria": "O6dDNIMw", "reference": 0.329820472095847}], "sub_game_modes": {"gVt8xgr4": {"alliance": {"combination": {"alliances": [{"max": 58, "min": 74, "name": "KBbYngHp"}, {"max": 51, "min": 40, "name": "wKAk0ofP"}, {"max": 22, "min": 70, "name": "DdThz6eh"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 79}, "max_number": 39, "min_number": 76, "player_max_number": 30, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 37, "min": 94, "name": "yG2KVztB"}, {"max": 50, "min": 80, "name": "rXmJ13Nc"}, {"max": 82, "min": 31, "name": "YAjgW3yt"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 22}, "duration": 17, "max_number": 4, "min_number": 9, "player_max_number": 8, "player_min_number": 67}, {"combination": {"alliances": [{"max": 31, "min": 9, "name": "HbJh3x8w"}, {"max": 23, "min": 25, "name": "pv0VvwB4"}, {"max": 46, "min": 54, "name": "eJcEb2Ie"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 71}, "duration": 100, "max_number": 93, "min_number": 3, "player_max_number": 2, "player_min_number": 34}, {"combination": {"alliances": [{"max": 95, "min": 68, "name": "PWVfFW03"}, {"max": 73, "min": 77, "name": "wGyU3woV"}, {"max": 99, "min": 99, "name": "6qi7dKhS"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 44}, "duration": 22, "max_number": 70, "min_number": 51, "player_max_number": 46, "player_min_number": 41}], "name": "Bci1Z0XY"}, "J9GVdvUI": {"alliance": {"combination": {"alliances": [{"max": 35, "min": 88, "name": "fWrd9lJb"}, {"max": 38, "min": 72, "name": "WO5Fw2nX"}, {"max": 70, "min": 65, "name": "xVyS9YyH"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 86}, "max_number": 16, "min_number": 33, "player_max_number": 92, "player_min_number": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 55, "min": 57, "name": "vTq4eWPF"}, {"max": 48, "min": 80, "name": "GEVFEeHy"}, {"max": 85, "min": 44, "name": "ONriKHfw"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 75}, "duration": 4, "max_number": 25, "min_number": 2, "player_max_number": 28, "player_min_number": 46}, {"combination": {"alliances": [{"max": 26, "min": 69, "name": "KWXbOkn8"}, {"max": 4, "min": 25, "name": "47NEGm8T"}, {"max": 41, "min": 44, "name": "9aDanXim"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 43}, "duration": 6, "max_number": 74, "min_number": 59, "player_max_number": 19, "player_min_number": 9}, {"combination": {"alliances": [{"max": 25, "min": 86, "name": "PUv7j13k"}, {"max": 74, "min": 69, "name": "XQxo5O0k"}, {"max": 72, "min": 7, "name": "0HFvA66w"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 4}, "duration": 43, "max_number": 83, "min_number": 64, "player_max_number": 59, "player_min_number": 85}], "name": "avUUF5W2"}, "Z2OZ9fwl": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 69, "name": "iakXhn7h"}, {"max": 73, "min": 10, "name": "K7UmzKNC"}, {"max": 43, "min": 93, "name": "6Vr1BPvA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 31}, "max_number": 65, "min_number": 30, "player_max_number": 92, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 93, "min": 11, "name": "PR4rpoWw"}, {"max": 48, "min": 15, "name": "V1FPA29H"}, {"max": 25, "min": 88, "name": "8zJI2M48"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 5}, "duration": 22, "max_number": 24, "min_number": 10, "player_max_number": 47, "player_min_number": 73}, {"combination": {"alliances": [{"max": 58, "min": 39, "name": "DzLHRsJl"}, {"max": 8, "min": 96, "name": "EOyrqXOA"}, {"max": 2, "min": 100, "name": "kihHEOJ5"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 67}, "duration": 82, "max_number": 38, "min_number": 60, "player_max_number": 70, "player_min_number": 100}, {"combination": {"alliances": [{"max": 59, "min": 48, "name": "D6hwYoh0"}, {"max": 25, "min": 16, "name": "PGgdXqgd"}, {"max": 20, "min": 94, "name": "6cM0SipY"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 58}, "duration": 6, "max_number": 55, "min_number": 23, "player_max_number": 94, "player_min_number": 57}], "name": "dEp05VWB"}}}, "session_queue_timeout_seconds": 40, "social_matchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'dQ0SffFA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "jvAzhTBD", "players": [{"results": [{"attribute": "TavXfFnB", "value": 0.36306095878033795}, {"attribute": "PA0iaZzq", "value": 0.5268788993743783}, {"attribute": "01bm3kcr", "value": 0.8385730626837442}], "user_id": "iB2pDtdd"}, {"results": [{"attribute": "nwreTcNZ", "value": 0.9740758037446335}, {"attribute": "PmIrspQc", "value": 0.030174905336519453}, {"attribute": "7NEAC6p1", "value": 0.7597592780552936}], "user_id": "Jipw6Co7"}, {"results": [{"attribute": "sVsH6I0v", "value": 0.9769970677483784}, {"attribute": "MQTzVFtd", "value": 0.9967206958645102}, {"attribute": "xFNVz1vp", "value": 0.3236379168462038}], "user_id": "9gPW7dqN"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "t5SWaNku"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "XnBGmvW4", "client_version": "GTdoGjBR", "deployment": "1UBCMpEn", "error_code": 12, "error_message": "lBk4OVsm", "game_mode": "jTNsFzy5", "joinable": true, "match_id": "mxxpgEpb", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 38, "party_attributes": {"ch81iwKP": {}, "DkXFjJCt": {}, "jfUmstej": {}}, "party_id": "E06d5xLA", "party_members": [{"extra_attributes": {"wp3luyMj": {}, "U0bEbs68": {}, "H55D2XGj": {}}, "user_id": "Q0pQ9tj5"}, {"extra_attributes": {"I5dUiIpc": {}, "OZzZdcbc": {}, "eqRmxMkP": {}}, "user_id": "GTRBwazf"}, {"extra_attributes": {"Pf7AKppT": {}, "tG276AC5": {}, "6SkuEdit": {}}, "user_id": "QBJ4TgYe"}], "ticket_id": "8OXafBrs"}, {"first_ticket_created_at": 13, "party_attributes": {"PbNqf3v2": {}, "HIepH4SM": {}, "Aid3S8FK": {}}, "party_id": "1DsyYd1z", "party_members": [{"extra_attributes": {"yADCMuDa": {}, "G1P5dAMl": {}, "GMkpWUXK": {}}, "user_id": "08W2lCj3"}, {"extra_attributes": {"frQYrl1g": {}, "E86LlJyX": {}, "evWjcGtr": {}}, "user_id": "rdHEywzJ"}, {"extra_attributes": {"8dUEJKcq": {}, "toriZnNT": {}, "uIzWC7NE": {}}, "user_id": "B78dpAVy"}], "ticket_id": "wYkB38RJ"}, {"first_ticket_created_at": 48, "party_attributes": {"XpmfwFWa": {}, "FPicpQ1A": {}, "SCKg2ofJ": {}}, "party_id": "n13a4yyF", "party_members": [{"extra_attributes": {"gyuF72nc": {}, "GTvLZXpV": {}, "6DGYQP10": {}}, "user_id": "PAaUGsSH"}, {"extra_attributes": {"2H3GiYEv": {}, "WUTmXlwJ": {}, "RVKzIdET": {}}, "user_id": "d3VCn94s"}, {"extra_attributes": {"2SzR239X": {}, "8J2be7A5": {}, "ueSTZkAu": {}}, "user_id": "iML54BDb"}], "ticket_id": "uXSXtp1C"}]}, {"matching_parties": [{"first_ticket_created_at": 30, "party_attributes": {"nfvvWwGJ": {}, "deHE3xMs": {}, "OyqBWkPd": {}}, "party_id": "afxDFHiA", "party_members": [{"extra_attributes": {"RU1MD6gV": {}, "U8dfzy56": {}, "sFydDl6a": {}}, "user_id": "5diRMWeC"}, {"extra_attributes": {"y0KCuGqa": {}, "KLCtEDu6": {}, "H5IMpEdY": {}}, "user_id": "sG3UZgaM"}, {"extra_attributes": {"BtvIkaYB": {}, "xGqz1ESI": {}, "NB8v0Bcq": {}}, "user_id": "a2ROLmQ1"}], "ticket_id": "816ftaHM"}, {"first_ticket_created_at": 55, "party_attributes": {"eJoYZKKb": {}, "xlf9IlIl": {}, "ECZci1fB": {}}, "party_id": "Wixshox0", "party_members": [{"extra_attributes": {"Y6lRmQt0": {}, "4zBwAq8N": {}, "5Lnhv32c": {}}, "user_id": "NGb9Nrg2"}, {"extra_attributes": {"j53mLQQG": {}, "35O2GGBr": {}, "YxDmmldR": {}}, "user_id": "1UXcf7G1"}, {"extra_attributes": {"64LJuURZ": {}, "D9sbrhuv": {}, "DNKEL5Y1": {}}, "user_id": "8nlZKfLF"}], "ticket_id": "Pcx5OhAd"}, {"first_ticket_created_at": 72, "party_attributes": {"1QEnwVwT": {}, "CZ9Q6KU4": {}, "Dlf6S242": {}}, "party_id": "AqtU3k2E", "party_members": [{"extra_attributes": {"4JkCqihy": {}, "IbTzp1Ci": {}, "SU9xyQ9Y": {}}, "user_id": "5iddZQnU"}, {"extra_attributes": {"ESQM8wFl": {}, "yEUedNks": {}, "aZ1UGnNh": {}}, "user_id": "KzpyJ6M3"}, {"extra_attributes": {"TXDYjX8W": {}, "z3JQHi9o": {}, "Ufl69cD1": {}}, "user_id": "DYMC79Uy"}], "ticket_id": "ROGRlQZs"}]}, {"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"DK5gOmYN": {}, "zlJB4Hid": {}, "HAMleCu9": {}}, "party_id": "02DdcaXd", "party_members": [{"extra_attributes": {"kArSw8m8": {}, "TDVJK9Vu": {}, "yWFDYKDK": {}}, "user_id": "lMe2OAhy"}, {"extra_attributes": {"aGSE9yHx": {}, "NPBcJdl5": {}, "ChtyiiMx": {}}, "user_id": "27B9AscF"}, {"extra_attributes": {"nxsrKesr": {}, "1qj1mjMB": {}, "IOEdqlWj": {}}, "user_id": "my0vocbg"}], "ticket_id": "bWj5vi76"}, {"first_ticket_created_at": 53, "party_attributes": {"1brOHebk": {}, "s3PH6bmv": {}, "pTQQjIXj": {}}, "party_id": "hCGx1BrT", "party_members": [{"extra_attributes": {"iNM2nnwX": {}, "Uhu78eJY": {}, "AOe6BzM7": {}}, "user_id": "o3hdPmqm"}, {"extra_attributes": {"zo7tdlVa": {}, "SgZ4TNLs": {}, "G05BM5o2": {}}, "user_id": "ifpYnnNu"}, {"extra_attributes": {"nKfWyl30": {}, "daB1bIVP": {}, "JIFZnSI1": {}}, "user_id": "GIBKZcPC"}], "ticket_id": "lR1hdePF"}, {"first_ticket_created_at": 9, "party_attributes": {"cIC9UcPd": {}, "v0ca3wPG": {}, "03Ni9hVU": {}}, "party_id": "PupO4tVR", "party_members": [{"extra_attributes": {"TqMIIM07": {}, "rTBI3UCq": {}, "60GpkXfl": {}}, "user_id": "KgM8tESj"}, {"extra_attributes": {"1YWxiCRv": {}, "DXzKN8cr": {}, "oN9RvllE": {}}, "user_id": "LwrWU5Au"}, {"extra_attributes": {"z3dcfMua": {}, "ZqlR49BP": {}, "JcJc6CnF": {}}, "user_id": "CPq9H52J"}], "ticket_id": "VB8P8jB4"}]}], "namespace": "cH4j9wzr", "party_attributes": {"LseoWNnI": {}, "yA4eSr4d": {}, "l6df1oNF": {}}, "party_id": "j54gIalq", "queued_at": 22, "region": "7vkunDm8", "server_name": "zIKjVduu", "status": "NEh0TIiX", "ticket_id": "bMMuiR27", "updated_at": "1992-04-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "6cbHgfra"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'kkjbKdF3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 6, "userID": "SkegdA6b", "weight": 0.315138739487131}' \
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
    --matchIDs 'Tu3uUnmR' \
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
    --strategy 'QQ5sV1Yp' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'cXZacbGN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'PGssQe7H' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "RPwduaYr", "description": "OOGYweSR", "findMatchTimeoutSeconds": 92, "joinable": false, "max_delay_ms": 2, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 60, "min": 39, "name": "3QRetkEQ"}, {"max": 95, "min": 11, "name": "QErkzywI"}, {"max": 98, "min": 33, "name": "YQTw7YxU"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 19}, "maxNumber": 76, "minNumber": 94, "playerMaxNumber": 43, "playerMinNumber": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 99, "min": 53, "name": "Zg7s605n"}, {"max": 1, "min": 47, "name": "sNjDX52T"}, {"max": 59, "min": 26, "name": "yUPf5m7r"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 81}, "duration": 92, "max_number": 27, "min_number": 44, "player_max_number": 29, "player_min_number": 72}, {"combination": {"alliances": [{"max": 28, "min": 55, "name": "EoRu0FZ7"}, {"max": 9, "min": 93, "name": "9jeLsbWI"}, {"max": 30, "min": 86, "name": "sUJ7ABbd"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 65}, "duration": 51, "max_number": 94, "min_number": 12, "player_max_number": 36, "player_min_number": 35}, {"combination": {"alliances": [{"max": 82, "min": 66, "name": "WGHYUuQL"}, {"max": 5, "min": 99, "name": "zqTeK7mJ"}, {"max": 52, "min": 89, "name": "Iz9qQHQv"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 67}, "duration": 88, "max_number": 71, "min_number": 17, "player_max_number": 2, "player_min_number": 66}], "flexingRules": [{"attribute": "di1KWfov", "criteria": "tBX9sHYy", "duration": 95, "reference": 0.08017713640197865}, {"attribute": "mjHaPonf", "criteria": "KLd7FGlz", "duration": 54, "reference": 0.5188543490797513}, {"attribute": "7VIbhgKg", "criteria": "Y1PMGkAk", "duration": 19, "reference": 0.2701333141503264}], "match_options": {"options": [{"name": "9gjJBcqP", "type": "rBboGcos"}, {"name": "JBEDHQP7", "type": "HJsBS64a"}, {"name": "Xi4uNZUF", "type": "YP2p61Nv"}]}, "matchingRules": [{"attribute": "i0Y3Yv4Y", "criteria": "G30XwSYC", "reference": 0.037767230907088}, {"attribute": "lCx6X2RC", "criteria": "l6Luprvw", "reference": 0.01476668003374737}, {"attribute": "fvgHgN5f", "criteria": "TE0Nwfns", "reference": 0.9527123189294066}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 55, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'dPlER1AW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'cZ8LR0gX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '7gldMu0R' \
    --matchID '4pwXKiUE' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["kRayLHov", "dvlqwLRm", "gcvX7vqX"], "party_id": "w0azVRLD", "user_id": "MSx6nRYL"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'TWGF2rBC' \
    --matchID 'Akm35IBy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '7m2RGbF4' \
    --matchID 'KxncL0z1' \
    --namespace $AB_NAMESPACE \
    --userID 'nVsqxZJm' \
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
    --channelName 'wpPb4MIx' \
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