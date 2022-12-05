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
    --limit '27' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "ivNkOkdd", "description": "btpTCNJp", "find_match_timeout_seconds": 42, "game_mode": "zTL8G6eH", "joinable": false, "max_delay_ms": 72, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 68, "min": 66, "name": "dxHLFIJ3"}, {"max": 45, "min": 88, "name": "lS0VDM4g"}, {"max": 40, "min": 25, "name": "m9C0AU32"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 76}, "max_number": 2, "min_number": 97, "player_max_number": 31, "player_min_number": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 94, "min": 5, "name": "nXhqxF1m"}, {"max": 57, "min": 36, "name": "6cNiikwH"}, {"max": 3, "min": 17, "name": "ERCvPc7m"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 29}, "duration": 53, "max_number": 2, "min_number": 13, "player_max_number": 61, "player_min_number": 31}, {"combination": {"alliances": [{"max": 11, "min": 67, "name": "PGfpJejF"}, {"max": 15, "min": 79, "name": "F44Q6nJ4"}, {"max": 44, "min": 2, "name": "hxMQVwsl"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 94}, "duration": 91, "max_number": 1, "min_number": 11, "player_max_number": 9, "player_min_number": 70}, {"combination": {"alliances": [{"max": 99, "min": 74, "name": "oYdwgHqf"}, {"max": 77, "min": 25, "name": "zTJOBoHe"}, {"max": 70, "min": 76, "name": "dsh2QLwf"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 52}, "duration": 65, "max_number": 20, "min_number": 69, "player_max_number": 96, "player_min_number": 8}], "flexing_rule": [{"attribute": "R4DRInPX", "criteria": "aNHwczTO", "duration": 31, "reference": 0.7279968912959398}, {"attribute": "s3P1gYAy", "criteria": "w5Binm2I", "duration": 45, "reference": 0.3481361980100759}, {"attribute": "P6TziGzH", "criteria": "Y6PJW5Wr", "duration": 26, "reference": 0.19952222694669508}], "match_options": {"options": [{"name": "2KtP2S5j", "type": "e115tAtB"}, {"name": "f3Nh2LGn", "type": "dZoe5PTC"}, {"name": "Rs4HTfVG", "type": "iMtaToRY"}]}, "matching_rule": [{"attribute": "qVQiX1O5", "criteria": "f5uM6Gai", "reference": 0.0801355687112063}, {"attribute": "Zf2Zv0oh", "criteria": "h9vnpR06", "reference": 0.36100654338923177}, {"attribute": "voSHKg44", "criteria": "5EPUJA3C", "reference": 0.25254028646482884}], "rebalance_enable": true, "sub_game_modes": {"lIZVTaST": {"alliance": {"combination": {"alliances": [{"max": 27, "min": 10, "name": "kFa4mdNL"}, {"max": 45, "min": 13, "name": "uthT4MwU"}, {"max": 12, "min": 37, "name": "ZDdypd5z"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 12}, "max_number": 48, "min_number": 53, "player_max_number": 37, "player_min_number": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 32, "min": 19, "name": "TPP4Uf3D"}, {"max": 60, "min": 80, "name": "MwvKLSCr"}, {"max": 73, "min": 14, "name": "9bBTxX0f"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 56}, "duration": 34, "max_number": 97, "min_number": 52, "player_max_number": 54, "player_min_number": 86}, {"combination": {"alliances": [{"max": 28, "min": 99, "name": "WlYArRhG"}, {"max": 25, "min": 19, "name": "vY3QHqBG"}, {"max": 91, "min": 32, "name": "Xx2P2G2s"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 34}, "duration": 67, "max_number": 85, "min_number": 5, "player_max_number": 10, "player_min_number": 61}, {"combination": {"alliances": [{"max": 95, "min": 20, "name": "7pnSsTti"}, {"max": 77, "min": 11, "name": "A3XHansp"}, {"max": 40, "min": 18, "name": "sVycM7mE"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 71}, "duration": 65, "max_number": 53, "min_number": 21, "player_max_number": 92, "player_min_number": 14}], "name": "4Bad1nv0"}, "GAdufsJW": {"alliance": {"combination": {"alliances": [{"max": 73, "min": 34, "name": "ucJKgvrl"}, {"max": 16, "min": 52, "name": "tsgsxBJB"}, {"max": 85, "min": 4, "name": "u0ITS7b3"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 91}, "max_number": 29, "min_number": 98, "player_max_number": 81, "player_min_number": 67}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 9, "min": 23, "name": "RzUcEiKg"}, {"max": 82, "min": 89, "name": "84wLxWzc"}, {"max": 99, "min": 7, "name": "npO4baNQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 23}, "duration": 76, "max_number": 0, "min_number": 1, "player_max_number": 90, "player_min_number": 86}, {"combination": {"alliances": [{"max": 93, "min": 44, "name": "WDlu5h5F"}, {"max": 41, "min": 21, "name": "Tb14nbqf"}, {"max": 57, "min": 61, "name": "ZMUu8vbD"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 39}, "duration": 54, "max_number": 58, "min_number": 39, "player_max_number": 80, "player_min_number": 25}, {"combination": {"alliances": [{"max": 27, "min": 96, "name": "u0Nveu70"}, {"max": 67, "min": 78, "name": "jkqSoiCY"}, {"max": 97, "min": 70, "name": "sZxM8yH8"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 74}, "duration": 63, "max_number": 45, "min_number": 46, "player_max_number": 18, "player_min_number": 25}], "name": "C0XiLW4j"}, "YrP3MBsK": {"alliance": {"combination": {"alliances": [{"max": 42, "min": 27, "name": "C0Rhc7g8"}, {"max": 70, "min": 11, "name": "HC6lR6Dy"}, {"max": 41, "min": 3, "name": "ZkouHryn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 81}, "max_number": 44, "min_number": 63, "player_max_number": 83, "player_min_number": 97}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 8, "min": 75, "name": "TBPhOeBh"}, {"max": 82, "min": 19, "name": "aB8O2iDX"}, {"max": 29, "min": 62, "name": "s3Uz3nIe"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 81}, "duration": 15, "max_number": 92, "min_number": 98, "player_max_number": 16, "player_min_number": 98}, {"combination": {"alliances": [{"max": 2, "min": 50, "name": "dp50iuCw"}, {"max": 71, "min": 29, "name": "4iTYzWzm"}, {"max": 7, "min": 8, "name": "6h5e6Quw"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 53}, "duration": 14, "max_number": 94, "min_number": 39, "player_max_number": 95, "player_min_number": 47}, {"combination": {"alliances": [{"max": 46, "min": 67, "name": "72gcXYql"}, {"max": 95, "min": 78, "name": "x5WldZ79"}, {"max": 54, "min": 57, "name": "IuwuoayF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 81}, "duration": 36, "max_number": 4, "min_number": 63, "player_max_number": 45, "player_min_number": 99}], "name": "XY7fMFNH"}}}, "session_queue_timeout_seconds": 18, "social_matchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'SP3RFx3i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "40IkeZkf", "players": [{"results": [{"attribute": "lpUOH2Ci", "value": 0.9618221584561268}, {"attribute": "Gbx2x1FT", "value": 0.798679670837462}, {"attribute": "5Url15hb", "value": 0.5291591098171629}], "user_id": "boOOGhJy"}, {"results": [{"attribute": "DVNdvneR", "value": 0.7016536330687597}, {"attribute": "93HmXoAw", "value": 0.6875226079810071}, {"attribute": "7bWsWe5u", "value": 0.9085267086442484}], "user_id": "BgXsL517"}, {"results": [{"attribute": "isWvpYc6", "value": 0.6119030660089607}, {"attribute": "SXN2gtsP", "value": 0.9086788612488931}, {"attribute": "v08L4WRT", "value": 0.39410887999672406}], "user_id": "8BThxh5F"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "npuVkD4q"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "xUWfhSM2", "client_version": "NkIoz4dX", "deployment": "bhIj0VDG", "error_code": 12, "error_message": "j6WcVaKs", "game_mode": "72ikrqEp", "joinable": false, "match_id": "sIi80A48", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 25, "party_attributes": {"OLtQf0cl": {}, "WeuHm72U": {}, "ryalQbp4": {}}, "party_id": "tugay5qy", "party_members": [{"extra_attributes": {"fDl8bJLK": {}, "Bs3HK7l7": {}, "CpmKzkkc": {}}, "user_id": "SZ9StrGT"}, {"extra_attributes": {"UdqOODvd": {}, "PVVbaE0M": {}, "PExFrQuY": {}}, "user_id": "ltWcPU2y"}, {"extra_attributes": {"eaWMhozG": {}, "pjGFJ2GW": {}, "QCIxevNI": {}}, "user_id": "lcQYA7xw"}], "ticket_id": "9k94Zwxo"}, {"first_ticket_created_at": 49, "party_attributes": {"LjwRgzef": {}, "vyQDngxH": {}, "eO4eDzPy": {}}, "party_id": "JBWHO6Fv", "party_members": [{"extra_attributes": {"hNNCKQns": {}, "TLcFOoac": {}, "1dq3atEI": {}}, "user_id": "VNemJg01"}, {"extra_attributes": {"GHbejFW5": {}, "BXRvAerg": {}, "ri5fC15T": {}}, "user_id": "Vw3arNQk"}, {"extra_attributes": {"UX9cyZ3H": {}, "xh26chyR": {}, "9a7OiwCM": {}}, "user_id": "5BarosiP"}], "ticket_id": "Tk0h9qDH"}, {"first_ticket_created_at": 3, "party_attributes": {"f20i57k7": {}, "lMsEoLiK": {}, "MguCC5kt": {}}, "party_id": "lEcLgVf6", "party_members": [{"extra_attributes": {"vTCRDdDU": {}, "9NxeX14J": {}, "nOmxiY3R": {}}, "user_id": "DYrZQtTj"}, {"extra_attributes": {"AHgQbRAK": {}, "HiRj9D00": {}, "PrKsJQ9S": {}}, "user_id": "uRrCBB2J"}, {"extra_attributes": {"y5LomKYD": {}, "zwIQTe1r": {}, "XooAjlhI": {}}, "user_id": "Z84hqAjv"}], "ticket_id": "8K0hUsdC"}]}, {"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"2QJAZiw0": {}, "JQ2hYbfR": {}, "DLSoOYRL": {}}, "party_id": "4dlEIu0Q", "party_members": [{"extra_attributes": {"tCgLDvze": {}, "aPwFcmv3": {}, "0MxwCNKe": {}}, "user_id": "nNdOK6v2"}, {"extra_attributes": {"RRM5AXuP": {}, "stJeLvdF": {}, "5MtiyAZV": {}}, "user_id": "ULOPeesu"}, {"extra_attributes": {"jL0H9kZs": {}, "Rc2kloH6": {}, "YFtKSy8Z": {}}, "user_id": "UE5H1T6b"}], "ticket_id": "U7JcWrc3"}, {"first_ticket_created_at": 15, "party_attributes": {"sFANsAlC": {}, "f9dcbcf5": {}, "l9U0SguP": {}}, "party_id": "NfrJrQoo", "party_members": [{"extra_attributes": {"euSTygLX": {}, "84QXPBah": {}, "Szbqt9kM": {}}, "user_id": "99quMvmG"}, {"extra_attributes": {"uWwXmUqM": {}, "7tT5luTr": {}, "UZGhaEfn": {}}, "user_id": "OC74E0Go"}, {"extra_attributes": {"a2h28Pts": {}, "Ab5rteeq": {}, "GZAZg1Ls": {}}, "user_id": "s4ehbdGr"}], "ticket_id": "laBPaYS0"}, {"first_ticket_created_at": 71, "party_attributes": {"wKafy3Zm": {}, "zfKdPVOv": {}, "mVeQaCRj": {}}, "party_id": "MvnlTjZ9", "party_members": [{"extra_attributes": {"ZH1VvbqR": {}, "isDyDT4p": {}, "3VShQN7I": {}}, "user_id": "OZH7gHVj"}, {"extra_attributes": {"dqBf6eM6": {}, "gjAVuaJ1": {}, "4P9DITwS": {}}, "user_id": "vmU0oH40"}, {"extra_attributes": {"59ZbHhBp": {}, "2W5xRRm3": {}, "LU84GFO6": {}}, "user_id": "DLTbZFCP"}], "ticket_id": "xYz5fJF6"}]}, {"matching_parties": [{"first_ticket_created_at": 88, "party_attributes": {"BPYq55h9": {}, "chWXPHao": {}, "PelqYB2l": {}}, "party_id": "xzULuw0B", "party_members": [{"extra_attributes": {"dPXwKXGn": {}, "9Jry2dRO": {}, "GmlEjGJN": {}}, "user_id": "VvGpKdEC"}, {"extra_attributes": {"zAtMrF4j": {}, "HYTDqhiz": {}, "h0NU97pB": {}}, "user_id": "ZxG62Qtq"}, {"extra_attributes": {"dBWA3j75": {}, "TtnxB91r": {}, "uyC3iUyQ": {}}, "user_id": "Yeq3No8z"}], "ticket_id": "gOnSKKI3"}, {"first_ticket_created_at": 87, "party_attributes": {"KuAog63D": {}, "nWwOOarX": {}, "YFe3XtlP": {}}, "party_id": "Oxjw4CiY", "party_members": [{"extra_attributes": {"5F2CMqYZ": {}, "HI3uk9Hv": {}, "TRjcN3sf": {}}, "user_id": "P6vV0PDa"}, {"extra_attributes": {"cNGgrCCF": {}, "ZzNRA24l": {}, "GGQuSrnE": {}}, "user_id": "2syaanhu"}, {"extra_attributes": {"r7AY26Am": {}, "fvwqFBJC": {}, "45TW3VcI": {}}, "user_id": "3N75BpOR"}], "ticket_id": "22bF1GHe"}, {"first_ticket_created_at": 95, "party_attributes": {"mQ5lqDse": {}, "DIGifgXI": {}, "8wLefPNM": {}}, "party_id": "hy8AO7fF", "party_members": [{"extra_attributes": {"8xKj8mkR": {}, "H06FEZTq": {}, "oG3IZ7w9": {}}, "user_id": "wYYDsGHP"}, {"extra_attributes": {"1aWrJNeA": {}, "GBfAsECQ": {}, "zDUVH41Y": {}}, "user_id": "8Df7EFLG"}, {"extra_attributes": {"exZbXzSd": {}, "2zss2Q1M": {}, "3HRD0uFW": {}}, "user_id": "ss4thvmi"}], "ticket_id": "N2AaSZDB"}]}], "namespace": "uLCs43r4", "party_attributes": {"IZ4y9PrX": {}, "TENE7VlX": {}, "MQluME7D": {}}, "party_id": "dcSukg0Y", "queued_at": 6, "region": "zrIXr9MK", "server_name": "xcStdAlZ", "status": "h5Ort8QN", "ticket_id": "UtNGAp1L", "updated_at": "1974-12-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "P1qax8Kq"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'v7EpJVsT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 86, "userID": "HaWhOK3s", "weight": 0.5576977206485564}' \
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
    --matchIDs '5s5SlUpW' \
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
    --strategy 'SVlSCPZo' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'sYCzoxg9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'cruB5VKv' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "BFeLTsZ8", "description": "iWYpqODW", "findMatchTimeoutSeconds": 61, "joinable": false, "max_delay_ms": 65, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 51, "min": 86, "name": "c8UPkkMV"}, {"max": 78, "min": 74, "name": "f68pGsWj"}, {"max": 43, "min": 15, "name": "EYLpjTmI"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 36}, "maxNumber": 49, "minNumber": 76, "playerMaxNumber": 73, "playerMinNumber": 13}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 26, "name": "Iii1HMKR"}, {"max": 100, "min": 64, "name": "5pQUiHGf"}, {"max": 39, "min": 91, "name": "RR1lyhle"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 35}, "duration": 82, "max_number": 63, "min_number": 25, "player_max_number": 3, "player_min_number": 23}, {"combination": {"alliances": [{"max": 35, "min": 56, "name": "BAaqak9r"}, {"max": 28, "min": 48, "name": "f6yTA0WT"}, {"max": 11, "min": 39, "name": "Yb3KrLjQ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 2}, "duration": 33, "max_number": 11, "min_number": 0, "player_max_number": 48, "player_min_number": 10}, {"combination": {"alliances": [{"max": 36, "min": 7, "name": "T9cxYGsM"}, {"max": 81, "min": 11, "name": "oalU7iRt"}, {"max": 99, "min": 21, "name": "PXippt4P"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 7}, "duration": 1, "max_number": 72, "min_number": 92, "player_max_number": 25, "player_min_number": 62}], "flexingRules": [{"attribute": "Z4O4mhQY", "criteria": "6aGagE8e", "duration": 4, "reference": 0.7955044166281764}, {"attribute": "ZFLmpz8S", "criteria": "ls5jN5zD", "duration": 87, "reference": 0.5548905789441221}, {"attribute": "cump4xPc", "criteria": "HuHs5r4S", "duration": 8, "reference": 0.7998391934760831}], "match_options": {"options": [{"name": "OJdWprPe", "type": "mrQgXBHZ"}, {"name": "L2nylV4e", "type": "u54REfV6"}, {"name": "Fz7cOcZu", "type": "DlqViLi6"}]}, "matchingRules": [{"attribute": "L5hSpRp4", "criteria": "r561XvxW", "reference": 0.8959718508867585}, {"attribute": "Ky7G6ipH", "criteria": "woh6LN1r", "reference": 0.8621008448187211}, {"attribute": "IWy57XHx", "criteria": "IoU7kSUW", "reference": 0.5518754445949335}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 39, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'YnLD9f8q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'AHYT5pX6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'NGk15f3P' \
    --matchID 'ec0L0FS8' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["rpbGY4lx", "nmdbGto4", "q8aOY2QI"], "party_id": "av7g0yPa", "user_id": "5tBJiIqP"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '1M35Umxc' \
    --matchID 'x3dVWhUG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'dXUWlu1D' \
    --matchID 'G7hGeEjF' \
    --namespace $AB_NAMESPACE \
    --userID '3fQfPOxH' \
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
    --channelName 'aDn0wK01' \
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