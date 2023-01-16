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
    --limit '31' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "7x9WBS2R", "description": "Jis3qtqk", "find_match_timeout_seconds": 10, "game_mode": "7vuHgN30", "joinable": false, "max_delay_ms": 22, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 74, "min": 19, "name": "xaK977FG"}, {"max": 35, "min": 82, "name": "Q00v45H7"}, {"max": 16, "min": 93, "name": "dYwRUren"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 19}, "max_number": 80, "min_number": 47, "player_max_number": 41, "player_min_number": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 50, "min": 47, "name": "OqcDGRke"}, {"max": 24, "min": 88, "name": "WyoLyIHM"}, {"max": 14, "min": 63, "name": "1UslGurP"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 39}, "duration": 20, "max_number": 18, "min_number": 15, "player_max_number": 39, "player_min_number": 20}, {"combination": {"alliances": [{"max": 49, "min": 84, "name": "QA03ADPA"}, {"max": 38, "min": 3, "name": "EGWbUSzu"}, {"max": 71, "min": 63, "name": "XT6Di36C"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 59}, "duration": 49, "max_number": 91, "min_number": 87, "player_max_number": 13, "player_min_number": 95}, {"combination": {"alliances": [{"max": 22, "min": 46, "name": "11kTbhzw"}, {"max": 74, "min": 84, "name": "Sn6HZWjc"}, {"max": 48, "min": 95, "name": "WomFQBJj"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 57}, "duration": 85, "max_number": 78, "min_number": 3, "player_max_number": 40, "player_min_number": 20}], "flexing_rule": [{"attribute": "VdekiGXZ", "criteria": "CDisvagL", "duration": 71, "reference": 0.17217786329561235}, {"attribute": "xWyusY3Q", "criteria": "jckTEzdT", "duration": 17, "reference": 0.29367759185967}, {"attribute": "6X64Qonm", "criteria": "dzKWLBCw", "duration": 73, "reference": 0.13046649642842156}], "match_options": {"options": [{"name": "8vMRxX7R", "type": "5lSTt4oO"}, {"name": "u54a5VBo", "type": "qsXBG1bg"}, {"name": "ofvikRbV", "type": "aNiX8o23"}]}, "matching_rule": [{"attribute": "lKXbwc7u", "criteria": "I07M6Nz6", "reference": 0.4235800987876729}, {"attribute": "juGl0vyL", "criteria": "DgreCfH4", "reference": 0.05317338755755996}, {"attribute": "rGcYlb7H", "criteria": "DqIWQ0Ud", "reference": 0.2824818218481405}], "rebalance_enable": true, "sub_game_modes": {"ERluxMww": {"alliance": {"combination": {"alliances": [{"max": 75, "min": 60, "name": "Jc2o8kYJ"}, {"max": 59, "min": 96, "name": "j09emkRP"}, {"max": 69, "min": 67, "name": "fXD3bOoK"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 89}, "max_number": 63, "min_number": 50, "player_max_number": 28, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 58, "min": 52, "name": "MBqXMvSb"}, {"max": 68, "min": 8, "name": "mv6NcMAU"}, {"max": 12, "min": 54, "name": "BydxuB2P"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 90}, "duration": 69, "max_number": 21, "min_number": 53, "player_max_number": 1, "player_min_number": 42}, {"combination": {"alliances": [{"max": 16, "min": 58, "name": "g0eIfQ3Y"}, {"max": 88, "min": 92, "name": "TQBWx9BH"}, {"max": 71, "min": 66, "name": "1AG2QBpA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 24}, "duration": 26, "max_number": 68, "min_number": 93, "player_max_number": 15, "player_min_number": 100}, {"combination": {"alliances": [{"max": 69, "min": 12, "name": "ARAqLZGU"}, {"max": 62, "min": 47, "name": "NJaHEabT"}, {"max": 61, "min": 66, "name": "Due2RxhC"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 84}, "duration": 11, "max_number": 46, "min_number": 71, "player_max_number": 58, "player_min_number": 82}], "name": "ShJWmWSC"}, "TInmlBuT": {"alliance": {"combination": {"alliances": [{"max": 57, "min": 87, "name": "1r1xhuaN"}, {"max": 39, "min": 32, "name": "enhcaRwK"}, {"max": 82, "min": 13, "name": "kw0xENwt"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 50}, "max_number": 75, "min_number": 85, "player_max_number": 60, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 29, "min": 44, "name": "j3nuRMHv"}, {"max": 52, "min": 80, "name": "TDZWteE7"}, {"max": 33, "min": 10, "name": "eKuqPDyx"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 67}, "duration": 51, "max_number": 23, "min_number": 60, "player_max_number": 59, "player_min_number": 72}, {"combination": {"alliances": [{"max": 25, "min": 48, "name": "lmCOr8Hq"}, {"max": 54, "min": 93, "name": "4Jj9YxQA"}, {"max": 29, "min": 3, "name": "acxwFeGT"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 39}, "duration": 44, "max_number": 77, "min_number": 51, "player_max_number": 14, "player_min_number": 83}, {"combination": {"alliances": [{"max": 53, "min": 65, "name": "0QmHuMuf"}, {"max": 62, "min": 11, "name": "sBiIF9xC"}, {"max": 48, "min": 38, "name": "1vrtOwBJ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 66}, "duration": 80, "max_number": 78, "min_number": 6, "player_max_number": 45, "player_min_number": 93}], "name": "afmKqVVx"}, "VQbY3rTc": {"alliance": {"combination": {"alliances": [{"max": 1, "min": 99, "name": "yTyf0GLl"}, {"max": 71, "min": 37, "name": "nNN2CiZP"}, {"max": 33, "min": 16, "name": "EhwcFUgB"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 72}, "max_number": 15, "min_number": 62, "player_max_number": 6, "player_min_number": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 77, "min": 85, "name": "5LAHa670"}, {"max": 20, "min": 24, "name": "G24g5PsR"}, {"max": 42, "min": 90, "name": "xdzT9xWe"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 100}, "duration": 8, "max_number": 63, "min_number": 57, "player_max_number": 50, "player_min_number": 55}, {"combination": {"alliances": [{"max": 87, "min": 96, "name": "9VFX6Rix"}, {"max": 9, "min": 81, "name": "Ezwt8Hc4"}, {"max": 90, "min": 15, "name": "LAfgMAoR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 61}, "duration": 53, "max_number": 10, "min_number": 30, "player_max_number": 30, "player_min_number": 62}, {"combination": {"alliances": [{"max": 18, "min": 66, "name": "wDewaBBh"}, {"max": 61, "min": 46, "name": "MIRl1Sd6"}, {"max": 71, "min": 36, "name": "NFtyxXOG"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 47}, "duration": 64, "max_number": 75, "min_number": 48, "player_max_number": 4, "player_min_number": 64}], "name": "sIV00lcm"}}}, "session_queue_timeout_seconds": 49, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'o1UakkUT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "9qFRyAdd", "players": [{"results": [{"attribute": "uhhMiYVh", "value": 0.6109024303613257}, {"attribute": "3K42bpjz", "value": 0.8495909559910662}, {"attribute": "ieNlwmkh", "value": 0.5432965810906981}], "user_id": "0UJ5ckzJ"}, {"results": [{"attribute": "kr9Y2lWw", "value": 0.5691857229329563}, {"attribute": "4hdrHTSr", "value": 0.465913494088104}, {"attribute": "UG1D77Bb", "value": 0.04001460503215204}], "user_id": "YyKBsvJR"}, {"results": [{"attribute": "azSr54Cl", "value": 0.1293247826053585}, {"attribute": "QzgWtMzZ", "value": 0.5097943631017686}, {"attribute": "7SUrxKry", "value": 0.6215262949895825}], "user_id": "KGRVrwzy"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "1H33Uajy"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "wEznXaIw", "client_version": "yZtfI9HW", "deployment": "cpB30BBV", "error_code": 95, "error_message": "SnhhZFiO", "game_mode": "Lpj7AHXH", "joinable": false, "match_id": "FlUjjxuQ", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"FW7bJkSe": {}, "FqwHVTlF": {}, "GEMhYnr2": {}}, "party_id": "V6Uv9TYI", "party_members": [{"extra_attributes": {"pWdtqxgk": {}, "d6jcnelZ": {}, "7kgPrDiA": {}}, "user_id": "bJtj1HIg"}, {"extra_attributes": {"TvTc9Xay": {}, "Ib1yOvhn": {}, "zcRLMJXu": {}}, "user_id": "NgzlRO24"}, {"extra_attributes": {"UC59wwi8": {}, "IiqJ8BH4": {}, "PVABI0u2": {}}, "user_id": "hUBlr4su"}], "ticket_id": "XgCrbaqz"}, {"first_ticket_created_at": 33, "party_attributes": {"uJT0dH5X": {}, "TRT4A5nv": {}, "UGYW9A3G": {}}, "party_id": "GuO1eEOe", "party_members": [{"extra_attributes": {"dyBAl88X": {}, "XvFlNJuZ": {}, "GKfdkMdM": {}}, "user_id": "0m5IkW4f"}, {"extra_attributes": {"ejpjlaza": {}, "vplpD7aF": {}, "ztZm8IDz": {}}, "user_id": "0rnOIp1U"}, {"extra_attributes": {"2VvHaJs7": {}, "ocMXU8UW": {}, "4ukWzGlK": {}}, "user_id": "KlkI2aZi"}], "ticket_id": "AqRfAnPH"}, {"first_ticket_created_at": 66, "party_attributes": {"S2gLoQdg": {}, "sG9TZIAy": {}, "9PBfENBV": {}}, "party_id": "jn1kUYld", "party_members": [{"extra_attributes": {"YUAGBQ4Y": {}, "hdQ6q2Q3": {}, "G9CNErX5": {}}, "user_id": "fv8EtcLF"}, {"extra_attributes": {"oAWnnNXI": {}, "eEhcyh6Y": {}, "Zl1RfoxC": {}}, "user_id": "tmj4oATE"}, {"extra_attributes": {"iDBz1EIZ": {}, "vgj5lHF9": {}, "Y5kGYjdY": {}}, "user_id": "41R6Wxb4"}], "ticket_id": "BpVCh5Db"}]}, {"matching_parties": [{"first_ticket_created_at": 43, "party_attributes": {"yVA1zvHD": {}, "8MgLw18b": {}, "WQUJzhJG": {}}, "party_id": "Vs2LD0TG", "party_members": [{"extra_attributes": {"9N6PVSCA": {}, "shEBZu0S": {}, "xemL7HXN": {}}, "user_id": "RO6ELr0w"}, {"extra_attributes": {"Oo3OUuTC": {}, "wCxAzfO8": {}, "K22wyv3A": {}}, "user_id": "SUBVPPTH"}, {"extra_attributes": {"zqSPHRkP": {}, "0IHMMfuG": {}, "JRREUzLd": {}}, "user_id": "972aggI5"}], "ticket_id": "jsCVhe5Y"}, {"first_ticket_created_at": 57, "party_attributes": {"y9kmvt99": {}, "t3uBEZmS": {}, "SdBigMi8": {}}, "party_id": "JgVf7dLa", "party_members": [{"extra_attributes": {"yUORO9oY": {}, "yUbde534": {}, "OjuD6Mld": {}}, "user_id": "M8ZsRCB7"}, {"extra_attributes": {"N2nK2nFr": {}, "8Oml0p09": {}, "qp9xXnAD": {}}, "user_id": "SAKU0AHi"}, {"extra_attributes": {"6fGftq4M": {}, "uBYrmvZl": {}, "QsTtrOVp": {}}, "user_id": "EZuFPutw"}], "ticket_id": "YVIVgwth"}, {"first_ticket_created_at": 49, "party_attributes": {"7ANYjY9s": {}, "UR9d7gno": {}, "54SvFh5a": {}}, "party_id": "CAAe1NWV", "party_members": [{"extra_attributes": {"vcXPU6kU": {}, "RtsehBmC": {}, "nYpcvUO8": {}}, "user_id": "UuBBn5p7"}, {"extra_attributes": {"xt5PjnWw": {}, "X5kb3S3z": {}, "9Ee40GKn": {}}, "user_id": "jksqiCSD"}, {"extra_attributes": {"y0rEXYi1": {}, "V9Twi04c": {}, "GRd7LxS9": {}}, "user_id": "cPJvWtI5"}], "ticket_id": "VpEXFW4A"}]}, {"matching_parties": [{"first_ticket_created_at": 93, "party_attributes": {"YjPMQbEE": {}, "Ws14qcVz": {}, "H39X8lRz": {}}, "party_id": "jAAY8Kdk", "party_members": [{"extra_attributes": {"rGOzyMXJ": {}, "n7HhyBrJ": {}, "dbU6UR2e": {}}, "user_id": "2eXkHAtV"}, {"extra_attributes": {"jMCAbjpW": {}, "lqwVRcmW": {}, "mX9wFzCz": {}}, "user_id": "tRUiKwTL"}, {"extra_attributes": {"mj5yaPJq": {}, "CG2sHyQf": {}, "7t6WIPXJ": {}}, "user_id": "gsmNWKOV"}], "ticket_id": "SyeK0pLS"}, {"first_ticket_created_at": 46, "party_attributes": {"sxvIB9Wa": {}, "bZDJL2g6": {}, "veb40xTt": {}}, "party_id": "3hmwWep9", "party_members": [{"extra_attributes": {"ZSM7Anyc": {}, "RczyMon3": {}, "3IcqFcu4": {}}, "user_id": "Z4x6yiZT"}, {"extra_attributes": {"DIWDmW0t": {}, "jNAdGsDa": {}, "cb6sL09m": {}}, "user_id": "IYPWAXxj"}, {"extra_attributes": {"RDNJQA5f": {}, "UIHevF6c": {}, "XESe8SC3": {}}, "user_id": "XAldXchE"}], "ticket_id": "A5SDmENb"}, {"first_ticket_created_at": 95, "party_attributes": {"Qm9btYoe": {}, "DNYQ9HRf": {}, "CUeSHeuy": {}}, "party_id": "OInpIkSi", "party_members": [{"extra_attributes": {"gy4n40mt": {}, "7epICLg1": {}, "CHf0uTEe": {}}, "user_id": "CXTFohdG"}, {"extra_attributes": {"5cyjdCYO": {}, "NeMZSmxH": {}, "6yK4wtws": {}}, "user_id": "v0Pa07wa"}, {"extra_attributes": {"1kaUCBHe": {}, "xftoJzk9": {}, "CSiLM58g": {}}, "user_id": "G9Qfl4vH"}], "ticket_id": "TAvNpUhK"}]}], "namespace": "o0lQGHud", "party_attributes": {"dwNwd2c1": {}, "km0fkk93": {}, "SA0KilAT": {}}, "party_id": "527t6pxO", "queued_at": 19, "region": "DpqwTl16", "server_name": "PPCtc3cx", "status": "NDEY5wGF", "ticket_id": "HA2mzMYK", "updated_at": "1998-07-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "EvMv7x4Z"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Bf5lH4Zn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 50, "userID": "bqfahJ4F", "weight": 0.31366622046000636}' \
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
    --matchIDs 'X45SJRnZ' \
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
    --strategy 'NDXjsrXC' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'mDxzJ06g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'wpWCT5tu' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "SAcwzNXi", "description": "RwDv3thV", "findMatchTimeoutSeconds": 56, "joinable": true, "max_delay_ms": 43, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 61, "min": 19, "name": "G3u74Ona"}, {"max": 50, "min": 59, "name": "C7IRd7Oz"}, {"max": 74, "min": 35, "name": "dQhCWg8k"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 85}, "maxNumber": 55, "minNumber": 50, "playerMaxNumber": 32, "playerMinNumber": 7}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 20, "min": 44, "name": "ts9q5RzL"}, {"max": 52, "min": 100, "name": "xQnI7Kss"}, {"max": 89, "min": 25, "name": "T2Q1LAPa"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 47}, "duration": 30, "max_number": 80, "min_number": 53, "player_max_number": 42, "player_min_number": 52}, {"combination": {"alliances": [{"max": 54, "min": 55, "name": "ThdsFZ7W"}, {"max": 78, "min": 77, "name": "dt4H1aWJ"}, {"max": 95, "min": 38, "name": "N52oKIvy"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 13}, "duration": 47, "max_number": 17, "min_number": 83, "player_max_number": 89, "player_min_number": 55}, {"combination": {"alliances": [{"max": 66, "min": 44, "name": "XyUQ8XSk"}, {"max": 23, "min": 50, "name": "EJS86htt"}, {"max": 13, "min": 96, "name": "ipWNkVnP"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 93}, "duration": 28, "max_number": 84, "min_number": 62, "player_max_number": 19, "player_min_number": 68}], "flexingRules": [{"attribute": "p6YgeAIO", "criteria": "cx3nElrw", "duration": 10, "reference": 0.7564726922071546}, {"attribute": "0pKUDIG7", "criteria": "Gwh4mnE5", "duration": 73, "reference": 0.056325756333964416}, {"attribute": "VUB46Evc", "criteria": "5yVxieqO", "duration": 48, "reference": 0.5320028620778203}], "match_options": {"options": [{"name": "Hgw4Ud3Z", "type": "gPBRSfVp"}, {"name": "J1eDhpKd", "type": "oW3ORFG1"}, {"name": "KmwyXoXz", "type": "fjwp2sac"}]}, "matchingRules": [{"attribute": "LdsNmX0D", "criteria": "G5D7TpRn", "reference": 0.6514310979304676}, {"attribute": "jGwNuAr6", "criteria": "kdfDwAQr", "reference": 0.9909794373170325}, {"attribute": "yLRT3ezm", "criteria": "yyS6Q6ld", "reference": 0.579025364064465}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 3, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'CG41rk6a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'Fy5sqWYd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'RE4CesbD' \
    --matchID 'PakWXynd' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["H8oa2WuP", "iZ5yjIHq", "bvarxUIr"], "party_id": "y7BnmYdv", "user_id": "f5nuQgYM"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'bom3VgCq' \
    --matchID 'authYyTm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'a25Mh1oJ' \
    --matchID 'ATnWOm2v' \
    --namespace $AB_NAMESPACE \
    --userID 't7jgaprI' \
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
    --channelName '53zuw7iF' \
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