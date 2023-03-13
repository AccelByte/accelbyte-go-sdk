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
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "AxcVpFrt", "description": "tufHIRdH", "find_match_timeout_seconds": 4, "game_mode": "UzVRiXbq", "joinable": false, "max_delay_ms": 17, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 54, "min": 47, "name": "w7r6W2kt"}, {"max": 87, "min": 51, "name": "G0h5JAav"}, {"max": 21, "min": 35, "name": "Ra62WopB"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 6}, "max_number": 79, "min_number": 61, "player_max_number": 93, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 46, "min": 62, "name": "bBZLCXLx"}, {"max": 56, "min": 2, "name": "XxyaNoMR"}, {"max": 87, "min": 14, "name": "1g7qbPng"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 49}, "duration": 43, "max_number": 52, "min_number": 89, "player_max_number": 92, "player_min_number": 29}, {"combination": {"alliances": [{"max": 47, "min": 7, "name": "wElFHHdg"}, {"max": 38, "min": 31, "name": "21Jub74C"}, {"max": 96, "min": 67, "name": "kNmKJfh5"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 21}, "duration": 69, "max_number": 1, "min_number": 84, "player_max_number": 60, "player_min_number": 24}, {"combination": {"alliances": [{"max": 32, "min": 64, "name": "oMF78NY4"}, {"max": 70, "min": 21, "name": "ua5tWEIC"}, {"max": 91, "min": 61, "name": "ogW7olvb"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 36}, "duration": 58, "max_number": 15, "min_number": 93, "player_max_number": 90, "player_min_number": 59}], "flexing_rule": [{"attribute": "TcPiSuL0", "criteria": "Sly6XM4O", "duration": 71, "reference": 0.8888015289412455}, {"attribute": "cwyALczN", "criteria": "IicXm7ag", "duration": 92, "reference": 0.8354370317209492}, {"attribute": "qxYG3aRE", "criteria": "Au2D6QVK", "duration": 81, "reference": 0.3403008241851835}], "match_options": {"options": [{"name": "diRilZ7o", "type": "Fgx4c8Ou"}, {"name": "mKtPDKJD", "type": "Xn7Z4U68"}, {"name": "su8Xfqlq", "type": "NiTvB6Sd"}]}, "matching_rule": [{"attribute": "AdIhUDrw", "criteria": "oZ5MecdK", "reference": 0.1351148773782459}, {"attribute": "5r6QEa1y", "criteria": "sLEzth6m", "reference": 0.7961965873147596}, {"attribute": "hzkzWkFe", "criteria": "ZSoEAcBd", "reference": 0.787997200767659}], "rebalance_enable": false, "sub_game_modes": {"IR7CkyF6": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 20, "name": "duuyZ0Gh"}, {"max": 61, "min": 86, "name": "ogqrhBRd"}, {"max": 23, "min": 59, "name": "MYzYiKWe"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 65}, "max_number": 90, "min_number": 76, "player_max_number": 23, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 19, "min": 54, "name": "v7IPrDQQ"}, {"max": 89, "min": 43, "name": "gat0Sevk"}, {"max": 76, "min": 75, "name": "GMS0lyuI"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 42}, "duration": 52, "max_number": 86, "min_number": 97, "player_max_number": 89, "player_min_number": 31}, {"combination": {"alliances": [{"max": 0, "min": 2, "name": "T5kPxUfo"}, {"max": 10, "min": 71, "name": "vnnSuB0y"}, {"max": 78, "min": 99, "name": "mCVuHOPl"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 10}, "duration": 45, "max_number": 1, "min_number": 89, "player_max_number": 2, "player_min_number": 26}, {"combination": {"alliances": [{"max": 37, "min": 40, "name": "KgnuRkgg"}, {"max": 15, "min": 67, "name": "HGCiljvj"}, {"max": 75, "min": 59, "name": "oyD6SCwG"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 64}, "duration": 5, "max_number": 19, "min_number": 34, "player_max_number": 21, "player_min_number": 25}], "name": "QsfCaTmt"}, "1d67FXGk": {"alliance": {"combination": {"alliances": [{"max": 77, "min": 37, "name": "isV6zwPu"}, {"max": 29, "min": 40, "name": "3td6TC6I"}, {"max": 10, "min": 23, "name": "9x4rt69l"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 89}, "max_number": 23, "min_number": 33, "player_max_number": 48, "player_min_number": 48}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 12, "min": 82, "name": "cjHfYakU"}, {"max": 59, "min": 46, "name": "TqGkE7wc"}, {"max": 100, "min": 95, "name": "fDslpJSq"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 85}, "duration": 88, "max_number": 52, "min_number": 18, "player_max_number": 50, "player_min_number": 80}, {"combination": {"alliances": [{"max": 30, "min": 7, "name": "NRKd3IL5"}, {"max": 93, "min": 48, "name": "AQ6iiPlS"}, {"max": 59, "min": 5, "name": "2uE4o5Vw"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 24}, "duration": 12, "max_number": 80, "min_number": 8, "player_max_number": 33, "player_min_number": 84}, {"combination": {"alliances": [{"max": 68, "min": 33, "name": "cUmLZZbS"}, {"max": 34, "min": 21, "name": "b8RwNmn9"}, {"max": 69, "min": 97, "name": "rNQy4uZA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 63}, "duration": 70, "max_number": 42, "min_number": 25, "player_max_number": 91, "player_min_number": 18}], "name": "5S5XUdjs"}, "oqwGyzzW": {"alliance": {"combination": {"alliances": [{"max": 17, "min": 75, "name": "9gwQYv7t"}, {"max": 42, "min": 30, "name": "7Vk6Jt4Y"}, {"max": 25, "min": 16, "name": "os9Jcdos"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 57}, "max_number": 94, "min_number": 80, "player_max_number": 98, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 95, "min": 1, "name": "6RBt0zYo"}, {"max": 79, "min": 6, "name": "cHyCUEXl"}, {"max": 55, "min": 1, "name": "vxJMdalw"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 80, "role_flexing_second": 23}, "duration": 85, "max_number": 16, "min_number": 100, "player_max_number": 79, "player_min_number": 3}, {"combination": {"alliances": [{"max": 81, "min": 84, "name": "W5NyLu0M"}, {"max": 56, "min": 98, "name": "2jJCSQT2"}, {"max": 60, "min": 3, "name": "ZZPYGu0r"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 13}, "duration": 34, "max_number": 6, "min_number": 90, "player_max_number": 99, "player_min_number": 56}, {"combination": {"alliances": [{"max": 51, "min": 1, "name": "OtXi3cho"}, {"max": 88, "min": 35, "name": "X68cmDc3"}, {"max": 11, "min": 9, "name": "xU8MyKrQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 80, "role_flexing_second": 16}, "duration": 61, "max_number": 21, "min_number": 22, "player_max_number": 21, "player_min_number": 50}], "name": "K6KKXNB3"}}}, "session_queue_timeout_seconds": 66, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'J8aeCnaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "pUKp44YU", "players": [{"results": [{"attribute": "DjasWIPU", "value": 0.34991329621526146}, {"attribute": "mEejtGeo", "value": 0.39859223821348067}, {"attribute": "IPa8ZRrv", "value": 0.15264149132678073}], "user_id": "j7il35MX"}, {"results": [{"attribute": "bN9oCMNq", "value": 0.2659340479437836}, {"attribute": "98SjTvhZ", "value": 0.6405752133277357}, {"attribute": "kSQ70D0H", "value": 0.9412272149105891}], "user_id": "BXksUC9b"}, {"results": [{"attribute": "6i5lZC9x", "value": 0.34597292625307297}, {"attribute": "32e8c5cs", "value": 0.722918887624434}, {"attribute": "ovoqsZNB", "value": 0.05138451619280082}], "user_id": "te9NDUPV"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Jf6c2Z0Q"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ZxfgPubT", "client_version": "DIHrvqAT", "deployment": "huwjRHpK", "error_code": 74, "error_message": "eFoF7VSZ", "game_mode": "6pf3vneS", "joinable": true, "match_id": "VPHbn4Xx", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 39, "party_attributes": {"QUhAEtrm": {}, "jqU6YE3p": {}, "4lSck0ZH": {}}, "party_id": "n5GI39YB", "party_members": [{"extra_attributes": {"HqaTHeKt": {}, "W18iGeUl": {}, "c9d9sogW": {}}, "user_id": "a24CKNS0"}, {"extra_attributes": {"GqVvUfHQ": {}, "vsHXNUNe": {}, "4mhgo5QB": {}}, "user_id": "65lSAiYn"}, {"extra_attributes": {"NjkfZrQv": {}, "GgbLdLsF": {}, "zHkBMr1y": {}}, "user_id": "rOMlNFSr"}], "ticket_created_at": 96, "ticket_id": "58f7Gc26"}, {"first_ticket_created_at": 92, "party_attributes": {"DmIbeZxz": {}, "fTcyiuAT": {}, "us9hsfpF": {}}, "party_id": "DcSDG8aM", "party_members": [{"extra_attributes": {"VGLiBNrD": {}, "jqoxcwgG": {}, "LXpUL4pp": {}}, "user_id": "2ncYAHdN"}, {"extra_attributes": {"zDmeIP6r": {}, "OvDz9KOs": {}, "b392k6Ym": {}}, "user_id": "JFfRByjl"}, {"extra_attributes": {"BiuFM3FI": {}, "oVk8T3Gp": {}, "AnkCmBUq": {}}, "user_id": "g2SCnqnt"}], "ticket_created_at": 47, "ticket_id": "9y1aZSWM"}, {"first_ticket_created_at": 17, "party_attributes": {"C2DKHRuP": {}, "MMWH8Yb3": {}, "3T5UBJCj": {}}, "party_id": "fcnLRfxe", "party_members": [{"extra_attributes": {"CSz9WEi8": {}, "KlloeH0J": {}, "T1yduat2": {}}, "user_id": "vQR3biBf"}, {"extra_attributes": {"su4jmsRE": {}, "2w1yEkLg": {}, "h3tIYt4S": {}}, "user_id": "qYUTLDx9"}, {"extra_attributes": {"gIiDandp": {}, "GT2t24aO": {}, "Mh5eC3IH": {}}, "user_id": "eHSKLCa3"}], "ticket_created_at": 48, "ticket_id": "AE7WIsfm"}]}, {"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"wH3q31A8": {}, "06DJgas4": {}, "b6z3LNUj": {}}, "party_id": "7fdgLA84", "party_members": [{"extra_attributes": {"Z8YYk6QE": {}, "gJjBbEDo": {}, "Nf3n0hEo": {}}, "user_id": "RCAcf80z"}, {"extra_attributes": {"fFyabWAg": {}, "IUXiI07A": {}, "68eaqC2J": {}}, "user_id": "9jyEW6GL"}, {"extra_attributes": {"bc0NaKDU": {}, "L3sa13lk": {}, "1dQBHO86": {}}, "user_id": "IlBhnetU"}], "ticket_created_at": 85, "ticket_id": "RwTqUXlT"}, {"first_ticket_created_at": 61, "party_attributes": {"O3FgkXhj": {}, "DzaQY3sn": {}, "n2ZkP7cF": {}}, "party_id": "dP43e5dC", "party_members": [{"extra_attributes": {"9XIBudfZ": {}, "grbHDIDm": {}, "4hMzF4Tx": {}}, "user_id": "odenSrUT"}, {"extra_attributes": {"vfqU0bfo": {}, "Mm5cTtFW": {}, "botQyXJR": {}}, "user_id": "cQWsmqPN"}, {"extra_attributes": {"s92epxk0": {}, "i8VxsZNe": {}, "reSvf969": {}}, "user_id": "9mCEHThU"}], "ticket_created_at": 73, "ticket_id": "CMNFIurj"}, {"first_ticket_created_at": 15, "party_attributes": {"gh4TeUTk": {}, "OkAYfJB8": {}, "AT9t4Tv2": {}}, "party_id": "07Y2QD3o", "party_members": [{"extra_attributes": {"D5fLCr3O": {}, "OlXVv8ZG": {}, "F7uYnGzp": {}}, "user_id": "ipNDigNJ"}, {"extra_attributes": {"ma1MbqqZ": {}, "tfNWql4n": {}, "mwAft4gq": {}}, "user_id": "kNNlWkD9"}, {"extra_attributes": {"eOziYRFO": {}, "n0jJLHC9": {}, "LxhvNXTw": {}}, "user_id": "GBCtohLt"}], "ticket_created_at": 23, "ticket_id": "7MUBG7qt"}]}, {"matching_parties": [{"first_ticket_created_at": 84, "party_attributes": {"UDrT6QXC": {}, "s5SPBbRP": {}, "ZTF6oQAX": {}}, "party_id": "VG7tnsZg", "party_members": [{"extra_attributes": {"5QgXjvyG": {}, "JPN4eXbJ": {}, "E5Vs2Gcy": {}}, "user_id": "omQoIXim"}, {"extra_attributes": {"BJehyxlN": {}, "sjUgxBkF": {}, "6wFPoJeQ": {}}, "user_id": "ediogEhh"}, {"extra_attributes": {"M2rIizGd": {}, "KvOPdq5x": {}, "rgxSmy1D": {}}, "user_id": "N9LFkYW5"}], "ticket_created_at": 61, "ticket_id": "UiGKXVFC"}, {"first_ticket_created_at": 25, "party_attributes": {"o2ogaKt2": {}, "ujQSa3Zd": {}, "b65UXmy0": {}}, "party_id": "Zp6iIaTI", "party_members": [{"extra_attributes": {"KUkmkk9Q": {}, "M0NBMA9O": {}, "RxpzwLR2": {}}, "user_id": "AK6eXUGP"}, {"extra_attributes": {"Jsw1fiP8": {}, "0G9Pclxc": {}, "ft2ulIJz": {}}, "user_id": "PyrVEiOG"}, {"extra_attributes": {"4UcqsuGK": {}, "HhMRWLVd": {}, "3DlhLuIp": {}}, "user_id": "omM8sm1M"}], "ticket_created_at": 16, "ticket_id": "UccE536u"}, {"first_ticket_created_at": 13, "party_attributes": {"oARtdbBe": {}, "7udsMrok": {}, "0WvGYYnx": {}}, "party_id": "4V709xbn", "party_members": [{"extra_attributes": {"GezKsDwG": {}, "2omOR2nv": {}, "YI9TVqJd": {}}, "user_id": "vzcWbfUp"}, {"extra_attributes": {"aXp5JMl5": {}, "LL4bTxBm": {}, "ZjdrrIxs": {}}, "user_id": "B0NRsB1f"}, {"extra_attributes": {"PqqRRulp": {}, "qpymDkQh": {}, "trHWwRVn": {}}, "user_id": "wVBOqOHi"}], "ticket_created_at": 15, "ticket_id": "pWGd1juY"}]}], "namespace": "hiqjRJOq", "party_attributes": {"B5F93zFQ": {}, "bJndUDpd": {}, "ONneAczb": {}}, "party_id": "BdHb2slt", "queued_at": 95, "region": "1B1SmZp2", "server_name": "JZp50CnP", "status": "b71ORYcm", "ticket_id": "QbTU5JX8", "updated_at": "1972-05-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "cLjMXJRk"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '0eaKQDOJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 44, "userID": "Ixi4YKlO", "weight": 0.6305787186342298}' \
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
    --matchIDs 'k2Q5Y4Jv' \
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
    --strategy 'aizwiila' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'tuUjjt9l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'IMGql5El' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "Ea9EIIlG", "description": "cHB3CfR3", "findMatchTimeoutSeconds": 26, "joinable": false, "max_delay_ms": 4, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 61, "min": 5, "name": "lwi3v3MF"}, {"max": 64, "min": 47, "name": "J1KesKoE"}, {"max": 76, "min": 72, "name": "CpobBEG8"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 31}, "maxNumber": 50, "minNumber": 6, "playerMaxNumber": 26, "playerMinNumber": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 31, "min": 19, "name": "ai0rYaT5"}, {"max": 16, "min": 51, "name": "OPjaf3H0"}, {"max": 39, "min": 69, "name": "YighU0VU"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 77}, "duration": 64, "max_number": 68, "min_number": 53, "player_max_number": 74, "player_min_number": 68}, {"combination": {"alliances": [{"max": 2, "min": 63, "name": "BfAKSiPW"}, {"max": 35, "min": 97, "name": "0KHaAsmT"}, {"max": 9, "min": 72, "name": "j52WKi6t"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 55}, "duration": 46, "max_number": 96, "min_number": 86, "player_max_number": 90, "player_min_number": 95}, {"combination": {"alliances": [{"max": 41, "min": 100, "name": "9plCSVq8"}, {"max": 85, "min": 4, "name": "dH6hJPUA"}, {"max": 5, "min": 33, "name": "0RVwXgAg"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 80}, "duration": 46, "max_number": 58, "min_number": 41, "player_max_number": 7, "player_min_number": 1}], "flexingRules": [{"attribute": "eoV9Lx5R", "criteria": "DA1l2Xcr", "duration": 5, "reference": 0.006403089599041678}, {"attribute": "ncUZGCHs", "criteria": "ZYoLfR1K", "duration": 41, "reference": 0.4152996439684685}, {"attribute": "5S5BvmgB", "criteria": "Lxh4ijFn", "duration": 62, "reference": 0.3964149049575447}], "match_options": {"options": [{"name": "tZQ7M6Nz", "type": "y1adnSKO"}, {"name": "LFKx1dX4", "type": "LuWJu3pD"}, {"name": "MUAeeZ97", "type": "SBROPYuG"}]}, "matchingRules": [{"attribute": "6XqP6oo7", "criteria": "G73zdxTg", "reference": 0.6472079399897399}, {"attribute": "fnwIdlNa", "criteria": "29fDLh74", "reference": 0.8647619886111616}, {"attribute": "IslKHzGl", "criteria": "LKWUtDQs", "reference": 0.9417139932964892}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 76, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'oxyyQpRW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'CiiPDGQh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'NPEwiJCf' \
    --matchID '2XJVrlzq' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["Qls1ozhL", "VA3kE8jK", "vgatOEBM"], "party_id": "70TdlNBJ", "user_id": "YOmpu1VC"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'arzBsV6x' \
    --matchID 'nZ5Jrzzj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'rcaug6CW' \
    --matchID 'VG8SWP3g' \
    --namespace $AB_NAMESPACE \
    --userID 'lU6muswV' \
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
    --channelName 'JnNnN7kA' \
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