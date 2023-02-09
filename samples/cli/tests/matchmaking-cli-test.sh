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
    --limit '59' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "brgvWXXB", "description": "3MRqqO9U", "find_match_timeout_seconds": 55, "game_mode": "eEfqtGrH", "joinable": true, "max_delay_ms": 67, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 36, "min": 1, "name": "B8TvQy41"}, {"max": 61, "min": 17, "name": "L88ityHv"}, {"max": 4, "min": 10, "name": "3VcRM83G"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 58}, "max_number": 70, "min_number": 74, "player_max_number": 58, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 42, "min": 40, "name": "HyqPT11i"}, {"max": 5, "min": 48, "name": "MZcqxBw6"}, {"max": 77, "min": 16, "name": "vrUOF8lq"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 7}, "duration": 73, "max_number": 85, "min_number": 20, "player_max_number": 87, "player_min_number": 64}, {"combination": {"alliances": [{"max": 17, "min": 13, "name": "Plze5S9Z"}, {"max": 90, "min": 42, "name": "mqeNtLZs"}, {"max": 27, "min": 94, "name": "wy7nXbwR"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 5}, "duration": 18, "max_number": 88, "min_number": 93, "player_max_number": 52, "player_min_number": 59}, {"combination": {"alliances": [{"max": 10, "min": 35, "name": "YxDnD6Bj"}, {"max": 19, "min": 26, "name": "9dsq6zq9"}, {"max": 5, "min": 82, "name": "gAmN7cUx"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 29}, "duration": 43, "max_number": 64, "min_number": 6, "player_max_number": 70, "player_min_number": 21}], "flexing_rule": [{"attribute": "Ep7Y9vbt", "criteria": "rqOUxBU1", "duration": 36, "reference": 0.9792742795971967}, {"attribute": "ORuOty4g", "criteria": "WjdSDBiJ", "duration": 35, "reference": 0.9680013985285426}, {"attribute": "uN4aNpRF", "criteria": "h8WwT4Tp", "duration": 88, "reference": 0.9613870824741721}], "match_options": {"options": [{"name": "wRWhBhWE", "type": "p4xBYnzz"}, {"name": "JVbhHFBA", "type": "xMWJs7yi"}, {"name": "meyZht0a", "type": "nkrr6amk"}]}, "matching_rule": [{"attribute": "pUNKIim0", "criteria": "uTabBu0y", "reference": 0.6480176713883813}, {"attribute": "sRNT81yO", "criteria": "zYh0kAVa", "reference": 0.2686378658291878}, {"attribute": "yOQ9JHKp", "criteria": "wzPMkBzq", "reference": 0.5201841977317558}], "rebalance_enable": true, "sub_game_modes": {"ZsHXWz0Y": {"alliance": {"combination": {"alliances": [{"max": 73, "min": 89, "name": "0QyVp8tL"}, {"max": 79, "min": 47, "name": "ZZwmrad6"}, {"max": 73, "min": 39, "name": "2PGeMhPe"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 16}, "max_number": 40, "min_number": 64, "player_max_number": 75, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 12, "min": 81, "name": "TgZ51iEY"}, {"max": 16, "min": 28, "name": "bZfDaZK7"}, {"max": 26, "min": 52, "name": "SkQMLzPU"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 15}, "duration": 10, "max_number": 56, "min_number": 30, "player_max_number": 11, "player_min_number": 52}, {"combination": {"alliances": [{"max": 14, "min": 47, "name": "InrpRJrn"}, {"max": 72, "min": 84, "name": "00fJrEuK"}, {"max": 32, "min": 90, "name": "3rfzvN0i"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 83}, "duration": 79, "max_number": 18, "min_number": 0, "player_max_number": 94, "player_min_number": 26}, {"combination": {"alliances": [{"max": 7, "min": 71, "name": "aV7BYQCh"}, {"max": 34, "min": 58, "name": "9IDlwPiu"}, {"max": 82, "min": 90, "name": "LNUzpuib"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 36}, "duration": 23, "max_number": 6, "min_number": 87, "player_max_number": 17, "player_min_number": 69}], "name": "v8v1ukSc"}, "OMDJam7t": {"alliance": {"combination": {"alliances": [{"max": 48, "min": 79, "name": "CxydCVdN"}, {"max": 84, "min": 83, "name": "nk9TZdmO"}, {"max": 20, "min": 27, "name": "0sE5dgV2"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 22}, "max_number": 93, "min_number": 16, "player_max_number": 45, "player_min_number": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 95, "min": 36, "name": "Rk9a9UBr"}, {"max": 12, "min": 73, "name": "tny43jqK"}, {"max": 15, "min": 74, "name": "hMobapWQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 56}, "duration": 88, "max_number": 87, "min_number": 1, "player_max_number": 22, "player_min_number": 16}, {"combination": {"alliances": [{"max": 13, "min": 88, "name": "SdlET8IQ"}, {"max": 44, "min": 19, "name": "piZjHphv"}, {"max": 41, "min": 42, "name": "mWWx6Cxn"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 31}, "duration": 52, "max_number": 10, "min_number": 100, "player_max_number": 58, "player_min_number": 62}, {"combination": {"alliances": [{"max": 50, "min": 31, "name": "GurjVMkM"}, {"max": 47, "min": 93, "name": "VVDMEnm7"}, {"max": 99, "min": 2, "name": "ceF5pNlW"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 18}, "duration": 93, "max_number": 65, "min_number": 6, "player_max_number": 85, "player_min_number": 54}], "name": "OHUTULlx"}, "fu5Nniyb": {"alliance": {"combination": {"alliances": [{"max": 57, "min": 41, "name": "Lv4cclHp"}, {"max": 39, "min": 93, "name": "RApI3cza"}, {"max": 27, "min": 99, "name": "4WNVBWgZ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 98}, "max_number": 75, "min_number": 37, "player_max_number": 82, "player_min_number": 27}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 84, "min": 17, "name": "QAYgHxEv"}, {"max": 56, "min": 61, "name": "V8Jv4lgX"}, {"max": 92, "min": 20, "name": "c7cdJDpc"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 65}, "duration": 100, "max_number": 64, "min_number": 57, "player_max_number": 25, "player_min_number": 4}, {"combination": {"alliances": [{"max": 42, "min": 40, "name": "65wJEw1k"}, {"max": 9, "min": 32, "name": "dEig6lTF"}, {"max": 99, "min": 51, "name": "7QaoXy5q"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 93, "role_flexing_second": 89}, "duration": 59, "max_number": 97, "min_number": 22, "player_max_number": 85, "player_min_number": 15}, {"combination": {"alliances": [{"max": 86, "min": 82, "name": "y2exxEKp"}, {"max": 73, "min": 62, "name": "3uT8Ppad"}, {"max": 87, "min": 81, "name": "lTwZ7zuP"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 46}, "duration": 77, "max_number": 94, "min_number": 21, "player_max_number": 49, "player_min_number": 1}], "name": "w5VGD9tk"}}}, "session_queue_timeout_seconds": 33, "social_matchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'PUSFoPCH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "rKfgkAEO", "players": [{"results": [{"attribute": "YhTNeNVx", "value": 0.5976129856157246}, {"attribute": "ZdGNCzNS", "value": 0.8989415686169056}, {"attribute": "6Gt4AnDO", "value": 0.48985474442771326}], "user_id": "Gs3MuKaM"}, {"results": [{"attribute": "a3Hx9e8l", "value": 0.2148948628895354}, {"attribute": "Zt1yJiUK", "value": 0.1416480344713522}, {"attribute": "lbrDuwvC", "value": 0.9981454612048679}], "user_id": "e9aAsMGg"}, {"results": [{"attribute": "S8lCfpxU", "value": 0.7581737388380863}, {"attribute": "sBBNO3CF", "value": 0.9220356915101966}, {"attribute": "B0LSndgD", "value": 0.1176703906888188}], "user_id": "KESroSE3"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "USBy79pA"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "U5Mdml7Q", "client_version": "fxdypvlh", "deployment": "dGaiXtwn", "error_code": 49, "error_message": "4ax1vDSt", "game_mode": "XpmxdFDm", "joinable": false, "match_id": "uQ3L8Nto", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 99, "party_attributes": {"mwn87Nfj": {}, "l0YzKdZM": {}, "Mwcja6c6": {}}, "party_id": "aKh8BjzD", "party_members": [{"extra_attributes": {"OvqwMgvX": {}, "ByG1E0Ch": {}, "TLjdmv83": {}}, "user_id": "5e7cT0fP"}, {"extra_attributes": {"bGnZ6VzR": {}, "J3jp9CfM": {}, "jG8FbXZw": {}}, "user_id": "MjsG357u"}, {"extra_attributes": {"H2i2ipD8": {}, "uUGzZJDR": {}, "rGYKURYX": {}}, "user_id": "sA7cqb0m"}], "ticket_id": "JEQz2bJl"}, {"first_ticket_created_at": 11, "party_attributes": {"glO70mzj": {}, "VfbjuRcN": {}, "31UKp6Dq": {}}, "party_id": "49V8ohK3", "party_members": [{"extra_attributes": {"mPnbnqDT": {}, "LOgupXt2": {}, "nbHCVtTe": {}}, "user_id": "EXtYe0JY"}, {"extra_attributes": {"7ziAS9Pf": {}, "dMoPRtzZ": {}, "cuMRx46L": {}}, "user_id": "89gLj4CT"}, {"extra_attributes": {"5miJBX7j": {}, "KDqdA9Hf": {}, "THQZyhzb": {}}, "user_id": "wMhmOQLh"}], "ticket_id": "9IewzkG8"}, {"first_ticket_created_at": 48, "party_attributes": {"BA2y1vkn": {}, "EsqFzONq": {}, "deJtfPpS": {}}, "party_id": "jM4UD7uu", "party_members": [{"extra_attributes": {"d1MQapRB": {}, "SkOcQ7Pv": {}, "3DuMaRDo": {}}, "user_id": "hJ4ri6ve"}, {"extra_attributes": {"jmtNk4zj": {}, "p2Gj3cZR": {}, "mKf0tiyE": {}}, "user_id": "xd7Axkew"}, {"extra_attributes": {"rwJrNGRL": {}, "8w3qsgFe": {}, "Xx5DTtNv": {}}, "user_id": "mpLGmiCS"}], "ticket_id": "3spM2CbD"}]}, {"matching_parties": [{"first_ticket_created_at": 75, "party_attributes": {"EVvV4QPC": {}, "cSeoQO5m": {}, "WzhMIaa6": {}}, "party_id": "TuTsAVfl", "party_members": [{"extra_attributes": {"wNd7ekgp": {}, "liNjtz6R": {}, "xTRTosQe": {}}, "user_id": "OtfutDnw"}, {"extra_attributes": {"hm17CtU1": {}, "9YuCY2at": {}, "ZEsVekxq": {}}, "user_id": "pJuFOlqg"}, {"extra_attributes": {"kabEhp1P": {}, "hHLM0xLT": {}, "wu2ouSaV": {}}, "user_id": "TXexjny8"}], "ticket_id": "NfLG9SBJ"}, {"first_ticket_created_at": 86, "party_attributes": {"jWJ3feuA": {}, "weY7cPcJ": {}, "XzPff1Tk": {}}, "party_id": "tdEArN9C", "party_members": [{"extra_attributes": {"wo9YQgO9": {}, "wc18JdZo": {}, "hMrrY4ly": {}}, "user_id": "iuEOaVaN"}, {"extra_attributes": {"0r8ebaDC": {}, "rZoKFlyO": {}, "mtSppOQd": {}}, "user_id": "SJHEqEll"}, {"extra_attributes": {"QyUmvScz": {}, "eRjAnD7r": {}, "8ZFGrCqU": {}}, "user_id": "yOFsfBmO"}], "ticket_id": "PT66y1ij"}, {"first_ticket_created_at": 3, "party_attributes": {"BujS4174": {}, "21tCkt2B": {}, "kTpTMjhR": {}}, "party_id": "vfWv7COD", "party_members": [{"extra_attributes": {"KEsmrhPC": {}, "vcOlfC3H": {}, "tt67PYi2": {}}, "user_id": "L1kCGlkN"}, {"extra_attributes": {"2xIVIve7": {}, "u7IcyM7E": {}, "MMAhsKH5": {}}, "user_id": "f5txnSJ8"}, {"extra_attributes": {"NRnt7BbA": {}, "TcD720XJ": {}, "M3pkW0Ny": {}}, "user_id": "zMZRyBnV"}], "ticket_id": "AfQmTbau"}]}, {"matching_parties": [{"first_ticket_created_at": 44, "party_attributes": {"59RgHFG5": {}, "M3ymDWVs": {}, "F08DSKZM": {}}, "party_id": "U7bxIXCo", "party_members": [{"extra_attributes": {"Tx61gdwJ": {}, "VCNYfWhX": {}, "tBwp0VAP": {}}, "user_id": "KNZFec6M"}, {"extra_attributes": {"rlYeenJr": {}, "rmOIzgji": {}, "imlP2Fzu": {}}, "user_id": "sjrmMtJT"}, {"extra_attributes": {"bFBGEde8": {}, "4zVn1EMz": {}, "gkEeljKW": {}}, "user_id": "sQfOGMAY"}], "ticket_id": "4NfXS2Io"}, {"first_ticket_created_at": 19, "party_attributes": {"KbwedE9H": {}, "9neW3kNd": {}, "6LbYTTHV": {}}, "party_id": "BARRWXoH", "party_members": [{"extra_attributes": {"jCNghjRh": {}, "jy1GJeuY": {}, "obmdXZFH": {}}, "user_id": "3QkaBLMr"}, {"extra_attributes": {"FMJovnJA": {}, "trI4VsO2": {}, "qU6JMxGQ": {}}, "user_id": "a63kibHV"}, {"extra_attributes": {"c3UT68k1": {}, "TxPVQlYF": {}, "GkNf1R6h": {}}, "user_id": "bWCYjXeK"}], "ticket_id": "NEynSDUx"}, {"first_ticket_created_at": 10, "party_attributes": {"3qw80ckk": {}, "7LRzruVP": {}, "RPSLyRup": {}}, "party_id": "po6u5mIu", "party_members": [{"extra_attributes": {"DjyBI7oz": {}, "PV3ORZUV": {}, "EAxe87eT": {}}, "user_id": "M39FEhOo"}, {"extra_attributes": {"po6GD1IX": {}, "9g4UC8cz": {}, "9C9vQSzD": {}}, "user_id": "wBEZYgiS"}, {"extra_attributes": {"5JHS3pBX": {}, "Zds9DmGP": {}, "DgAA6Lrl": {}}, "user_id": "WBdCdO7T"}], "ticket_id": "B3qX0zPG"}]}], "namespace": "psXkAZ6m", "party_attributes": {"ab3ztx7F": {}, "KoklLbDL": {}, "6ag3gcdG": {}}, "party_id": "9qCjBtfu", "queued_at": 80, "region": "jmLWU2qi", "server_name": "bO0bKt8X", "status": "j8yYkE6g", "ticket_id": "dEgUYsiG", "updated_at": "1981-08-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "wvZE9E81"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'IzxU85zN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 5, "userID": "rKQQWxH3", "weight": 0.23409313531311315}' \
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
    --matchIDs 'Rr5d1k5N' \
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
    --strategy '2XL33b2N' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'TPWhBDe1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'T70ctgMS' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "eH3BQm67", "description": "DZgfh8MM", "findMatchTimeoutSeconds": 96, "joinable": false, "max_delay_ms": 22, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 39, "name": "VB3hG2tv"}, {"max": 25, "min": 32, "name": "NQK3AO3u"}, {"max": 81, "min": 100, "name": "owayM6Hj"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 37}, "maxNumber": 91, "minNumber": 17, "playerMaxNumber": 90, "playerMinNumber": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 87, "min": 77, "name": "00iaS3JB"}, {"max": 64, "min": 97, "name": "uPY9CehN"}, {"max": 84, "min": 67, "name": "MqTRT5bb"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 0}, "duration": 30, "max_number": 29, "min_number": 91, "player_max_number": 80, "player_min_number": 33}, {"combination": {"alliances": [{"max": 98, "min": 4, "name": "QzH2L9qD"}, {"max": 3, "min": 48, "name": "G9c9SOwk"}, {"max": 42, "min": 35, "name": "yXNrI8ao"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 14}, "duration": 22, "max_number": 66, "min_number": 87, "player_max_number": 51, "player_min_number": 57}, {"combination": {"alliances": [{"max": 81, "min": 71, "name": "zlbvv2oZ"}, {"max": 48, "min": 78, "name": "6g35mm55"}, {"max": 67, "min": 61, "name": "1GC8MBB1"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 69}, "duration": 94, "max_number": 89, "min_number": 96, "player_max_number": 24, "player_min_number": 82}], "flexingRules": [{"attribute": "EpY1X3Ew", "criteria": "VQH19riR", "duration": 22, "reference": 0.4912703274127842}, {"attribute": "tqmX2Un8", "criteria": "ADl4AC4v", "duration": 31, "reference": 0.8973525986572306}, {"attribute": "cA2mW5oh", "criteria": "N6Nwevd4", "duration": 89, "reference": 0.03962052133948868}], "match_options": {"options": [{"name": "DW7k6CPf", "type": "5BumrLMZ"}, {"name": "P8es3svd", "type": "NbjlGFWS"}, {"name": "wPaI6yEc", "type": "7qBoWOyB"}]}, "matchingRules": [{"attribute": "X5viSW9i", "criteria": "oIRqwiZ5", "reference": 0.35939131759636955}, {"attribute": "Gy0NqXpT", "criteria": "PyLf8NQs", "reference": 0.07986472528829813}, {"attribute": "00Hrc9I3", "criteria": "of6NdMuw", "reference": 0.013040102952764698}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 53, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'Vl8blH9K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'YjG63U6Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'gTpJG83l' \
    --matchID 'hzvwkrCi' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["tLFYGfey", "vMaYTzvH", "8ReVbPWi"], "party_id": "TRUyDyMu", "user_id": "nl6UhZey"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Zdh0wpqB' \
    --matchID '3bHZV37q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '921BZdRj' \
    --matchID 'iWZrPbgJ' \
    --namespace $AB_NAMESPACE \
    --userID 'pBJql7Jh' \
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
    --channelName 'e2byiTto' \
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