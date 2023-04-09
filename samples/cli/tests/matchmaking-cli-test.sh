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
    --limit '7' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "0SLP5zXg", "description": "My66wTnu", "find_match_timeout_seconds": 65, "game_mode": "xRvyaNFV", "joinable": false, "max_delay_ms": 18, "region_expansion_rate_ms": 0, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 97, "min": 87, "name": "vUUjQm5n"}, {"max": 19, "min": 26, "name": "bKccOVAG"}, {"max": 32, "min": 27, "name": "kDKsm8Rb"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 50}, "max_number": 7, "min_number": 93, "player_max_number": 87, "player_min_number": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 34, "min": 75, "name": "KQghw7fA"}, {"max": 62, "min": 13, "name": "MrDco6Pr"}, {"max": 5, "min": 91, "name": "mshwMJy6"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 100}, "duration": 65, "max_number": 85, "min_number": 30, "player_max_number": 56, "player_min_number": 38}, {"combination": {"alliances": [{"max": 51, "min": 14, "name": "2hevzm1E"}, {"max": 35, "min": 5, "name": "0A7OsMCF"}, {"max": 89, "min": 83, "name": "L4FkSanE"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 68}, "duration": 46, "max_number": 72, "min_number": 17, "player_max_number": 29, "player_min_number": 82}, {"combination": {"alliances": [{"max": 55, "min": 17, "name": "mn5tvFbq"}, {"max": 45, "min": 83, "name": "Gg3XKPsE"}, {"max": 34, "min": 8, "name": "YxF3ZPSA"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 18}, "duration": 32, "max_number": 21, "min_number": 46, "player_max_number": 87, "player_min_number": 8}], "flexing_rule": [{"attribute": "dIEBTdno", "criteria": "O97MzzAm", "duration": 56, "reference": 0.9255801328379382}, {"attribute": "xJyqjA15", "criteria": "EQNe0unS", "duration": 60, "reference": 0.6857130757457192}, {"attribute": "ZgF39Lvt", "criteria": "w8cLyuNX", "duration": 86, "reference": 0.39285565036409165}], "match_options": {"options": [{"name": "3fR9LA6e", "type": "CoAfN6ot"}, {"name": "zodhlbai", "type": "1VpkpnRP"}, {"name": "lo9zqufd", "type": "O6uOwDax"}]}, "matching_rule": [{"attribute": "WAFBG807", "criteria": "j1nlZoEc", "reference": 0.9421954425365827}, {"attribute": "Dwg0tNtE", "criteria": "r2ztWS1B", "reference": 0.015867774149497027}, {"attribute": "emRYiwWP", "criteria": "JcvHBMwe", "reference": 0.3606877063492915}], "rebalance_enable": true, "sub_game_modes": {"fpLZPG3Y": {"alliance": {"combination": {"alliances": [{"max": 42, "min": 14, "name": "YZPHrn55"}, {"max": 27, "min": 87, "name": "V1VBooLP"}, {"max": 92, "min": 12, "name": "8c4WZWXB"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 36}, "max_number": 22, "min_number": 38, "player_max_number": 10, "player_min_number": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 83, "name": "1QXOxH6g"}, {"max": 86, "min": 38, "name": "bCKB492Z"}, {"max": 13, "min": 87, "name": "MA1HZoFJ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 67}, "duration": 89, "max_number": 86, "min_number": 38, "player_max_number": 92, "player_min_number": 62}, {"combination": {"alliances": [{"max": 24, "min": 65, "name": "s1kkcSvD"}, {"max": 23, "min": 47, "name": "y8uh3moc"}, {"max": 72, "min": 75, "name": "JOe0rf3x"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 69}, "duration": 45, "max_number": 5, "min_number": 19, "player_max_number": 15, "player_min_number": 22}, {"combination": {"alliances": [{"max": 9, "min": 91, "name": "08K0SN4a"}, {"max": 46, "min": 83, "name": "JStsIQo8"}, {"max": 94, "min": 89, "name": "fn9mN1Yg"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 65}, "duration": 77, "max_number": 77, "min_number": 21, "player_max_number": 86, "player_min_number": 92}], "name": "pLOAteyV"}, "QbTn8sqC": {"alliance": {"combination": {"alliances": [{"max": 17, "min": 81, "name": "ZfkDOos2"}, {"max": 8, "min": 0, "name": "rjlfwQ3l"}, {"max": 27, "min": 5, "name": "fZ72ie6s"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 23}, "max_number": 60, "min_number": 75, "player_max_number": 41, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 92, "name": "TLDNvcXB"}, {"max": 68, "min": 59, "name": "u377DbtP"}, {"max": 86, "min": 44, "name": "adfO3Sqk"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 74}, "duration": 62, "max_number": 2, "min_number": 72, "player_max_number": 48, "player_min_number": 27}, {"combination": {"alliances": [{"max": 19, "min": 65, "name": "z7Jz6LY8"}, {"max": 56, "min": 51, "name": "tUzcwH7k"}, {"max": 5, "min": 100, "name": "BF0uIyxs"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 83}, "duration": 89, "max_number": 22, "min_number": 89, "player_max_number": 51, "player_min_number": 51}, {"combination": {"alliances": [{"max": 66, "min": 64, "name": "SH0wsoXf"}, {"max": 67, "min": 33, "name": "t4AiUXVZ"}, {"max": 73, "min": 79, "name": "TDuWconU"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 50}, "duration": 26, "max_number": 82, "min_number": 57, "player_max_number": 72, "player_min_number": 23}], "name": "uVcB4IiI"}, "32dmV2II": {"alliance": {"combination": {"alliances": [{"max": 3, "min": 67, "name": "RN7PwjyD"}, {"max": 33, "min": 80, "name": "fOLzVqnP"}, {"max": 6, "min": 89, "name": "grWRLr5z"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 39}, "max_number": 92, "min_number": 9, "player_max_number": 33, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 60, "min": 40, "name": "Ky5or8nU"}, {"max": 6, "min": 35, "name": "nS7LgG8z"}, {"max": 75, "min": 53, "name": "B8iVyAAt"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 60}, "duration": 56, "max_number": 94, "min_number": 89, "player_max_number": 90, "player_min_number": 39}, {"combination": {"alliances": [{"max": 42, "min": 25, "name": "bY3f43PK"}, {"max": 15, "min": 36, "name": "lMHmMggo"}, {"max": 42, "min": 58, "name": "AS7qu5sH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 61}, "duration": 96, "max_number": 13, "min_number": 38, "player_max_number": 1, "player_min_number": 85}, {"combination": {"alliances": [{"max": 7, "min": 55, "name": "2UQS9oGz"}, {"max": 67, "min": 23, "name": "2D5gl62y"}, {"max": 65, "min": 58, "name": "8LCmvAa3"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 36}, "duration": 85, "max_number": 52, "min_number": 68, "player_max_number": 71, "player_min_number": 59}], "name": "rspbrmaM"}}}, "session_queue_timeout_seconds": 54, "social_matchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'oERMi3xt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "K6eSk8kq", "players": [{"results": [{"attribute": "VzyedKy8", "value": 0.06902118496413256}, {"attribute": "sgN9bssn", "value": 0.01391641750107031}, {"attribute": "xVzhNneG", "value": 0.4377563056386271}], "user_id": "z99Re4y5"}, {"results": [{"attribute": "2d6MXW2O", "value": 0.2919283364032841}, {"attribute": "ozmXnYGC", "value": 0.19500488193670218}, {"attribute": "dVu46nbo", "value": 0.565700600880897}], "user_id": "4SeoLFT9"}, {"results": [{"attribute": "011iAkZR", "value": 0.8546404403123233}, {"attribute": "V89JsVfY", "value": 0.3834125322254128}, {"attribute": "a9Gi9KPR", "value": 0.8305458572197629}], "user_id": "y7GG6aNV"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "rkhl3AO5"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "fRxd1XiV", "client_version": "Vb5wxFbR", "deployment": "KNYoAVU8", "error_code": 90, "error_message": "ijRGDnR5", "game_mode": "SCEOQy4l", "joinable": false, "match_id": "FnYPNhaT", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 52, "party_attributes": {"CXGeLed8": {}, "HUaYm3vh": {}, "gMytOXcn": {}}, "party_id": "7LbjgiEH", "party_members": [{"extra_attributes": {"KONhfhra": {}, "7HABZ7Jb": {}, "DH67t1Ld": {}}, "user_id": "Cwj0AXwP"}, {"extra_attributes": {"igRUIn8H": {}, "GTaBvk5k": {}, "CaQjIqbO": {}}, "user_id": "p9idpFbD"}, {"extra_attributes": {"zYzHcTGc": {}, "OXSW0VYs": {}, "VRRqqon4": {}}, "user_id": "GS8JN6cq"}], "ticket_created_at": 10, "ticket_id": "JxQ5xZnL"}, {"first_ticket_created_at": 2, "party_attributes": {"esZQOmNa": {}, "eGIJFoEV": {}, "coypGxYR": {}}, "party_id": "fJiyAGQb", "party_members": [{"extra_attributes": {"TnxHnW3G": {}, "Z2lm3NzY": {}, "liAxreqR": {}}, "user_id": "k0HBqGqM"}, {"extra_attributes": {"EAGXPQcG": {}, "qcnTWd8F": {}, "3MC0mrsZ": {}}, "user_id": "sB1RJ9Wj"}, {"extra_attributes": {"hmkWpmrn": {}, "3h89sBqr": {}, "LXV1eNbz": {}}, "user_id": "uKCimAKZ"}], "ticket_created_at": 26, "ticket_id": "1nIpoe3t"}, {"first_ticket_created_at": 59, "party_attributes": {"pEv7JlaR": {}, "B3EWTzB5": {}, "gllWnvvG": {}}, "party_id": "JX70M8gm", "party_members": [{"extra_attributes": {"dZgaKhTm": {}, "VOcdCwV2": {}, "nVGpqohQ": {}}, "user_id": "nEdCt08z"}, {"extra_attributes": {"bNDEpoAh": {}, "fGcxdj7a": {}, "nqaGmLrm": {}}, "user_id": "SofYOVGz"}, {"extra_attributes": {"uHsgaLEw": {}, "Zqf2A8lG": {}, "8lX0USP2": {}}, "user_id": "XdhqU7zn"}], "ticket_created_at": 41, "ticket_id": "2zcMr5Bt"}]}, {"matching_parties": [{"first_ticket_created_at": 62, "party_attributes": {"EGyiJiD8": {}, "SFxkxnLl": {}, "vEGO5tf9": {}}, "party_id": "Ctzrisro", "party_members": [{"extra_attributes": {"iLWhTzU6": {}, "ozPjHAQc": {}, "BkPjiYvp": {}}, "user_id": "DTN1mcxm"}, {"extra_attributes": {"F9T4uL9Q": {}, "rLCMIJOT": {}, "SCZhnQNa": {}}, "user_id": "c0uVMwUr"}, {"extra_attributes": {"uCfUWi4H": {}, "rXvBjbxC": {}, "D6wN1hkA": {}}, "user_id": "036CGp2S"}], "ticket_created_at": 47, "ticket_id": "tr731xWj"}, {"first_ticket_created_at": 46, "party_attributes": {"ShBjerKg": {}, "Qgisi8Lw": {}, "vbNiHGwC": {}}, "party_id": "3itjpiur", "party_members": [{"extra_attributes": {"Nor6rQxZ": {}, "R34Id7xt": {}, "wFwucFyc": {}}, "user_id": "p8zsNhgZ"}, {"extra_attributes": {"ddbDws4e": {}, "uR6jn1r5": {}, "GBA7Usif": {}}, "user_id": "OLqi9iGD"}, {"extra_attributes": {"ZNjH5AtZ": {}, "9Yt5bzTy": {}, "bFGtlxU8": {}}, "user_id": "jxBaBD9R"}], "ticket_created_at": 64, "ticket_id": "9InU8H10"}, {"first_ticket_created_at": 33, "party_attributes": {"X0T2wrQH": {}, "0yY9nUfv": {}, "gUF7mfj3": {}}, "party_id": "27ZPcu59", "party_members": [{"extra_attributes": {"sc7UAJ8t": {}, "vDoZ96Ev": {}, "Pi4iPkQc": {}}, "user_id": "Xyzrkehb"}, {"extra_attributes": {"PgiZUa2f": {}, "kr4qNLGe": {}, "bQBFKNzn": {}}, "user_id": "nlnFRcBt"}, {"extra_attributes": {"iOB3NfCX": {}, "oriN20CB": {}, "5hCKWkxz": {}}, "user_id": "iVveIsGX"}], "ticket_created_at": 77, "ticket_id": "RQGW11LB"}]}, {"matching_parties": [{"first_ticket_created_at": 84, "party_attributes": {"iV3zsv6n": {}, "kW0cp7BC": {}, "8KdOebos": {}}, "party_id": "HKW4IPLE", "party_members": [{"extra_attributes": {"gbHL91om": {}, "cRDCBNxu": {}, "NtqPnF3V": {}}, "user_id": "OIsC5PP2"}, {"extra_attributes": {"nYE3kvn2": {}, "8atukcXJ": {}, "dewCvA5r": {}}, "user_id": "rKAcQulG"}, {"extra_attributes": {"PXKViQEu": {}, "dKPgh1XA": {}, "C9qUfceT": {}}, "user_id": "LXFaclMa"}], "ticket_created_at": 86, "ticket_id": "uXJeG4kK"}, {"first_ticket_created_at": 4, "party_attributes": {"CUDefLW6": {}, "CD3hkOSp": {}, "QmgwBZ1d": {}}, "party_id": "sgznSao3", "party_members": [{"extra_attributes": {"YRpN6Qus": {}, "axLiyB7D": {}, "RhVCTPaM": {}}, "user_id": "pQ91hcMv"}, {"extra_attributes": {"8a0NOkpK": {}, "MmJboX4N": {}, "GUcm9C67": {}}, "user_id": "K5C5bljQ"}, {"extra_attributes": {"Xo0Nw5sp": {}, "C7i8pg2I": {}, "xpOgW2al": {}}, "user_id": "vh9SmoUk"}], "ticket_created_at": 49, "ticket_id": "3JXNolmx"}, {"first_ticket_created_at": 43, "party_attributes": {"8wzHGrjA": {}, "Qyh8jvjo": {}, "69MWzm1x": {}}, "party_id": "BFoG1pde", "party_members": [{"extra_attributes": {"VTcT2KDE": {}, "h3GywRqA": {}, "ZpmW2T29": {}}, "user_id": "Ni7ww0Yc"}, {"extra_attributes": {"AEQzneum": {}, "MCg46rFb": {}, "ZynQ8hJF": {}}, "user_id": "9TuxhAY1"}, {"extra_attributes": {"NpNnW9Qc": {}, "YIz0w8mg": {}, "FidV2P7o": {}}, "user_id": "4lDDQGRx"}], "ticket_created_at": 75, "ticket_id": "Y0DIJdGl"}]}], "namespace": "lTZr1Yzg", "party_attributes": {"FPTQePAn": {}, "piCCpWlM": {}, "VpOhTqB9": {}}, "party_id": "BeBZr7Ia", "queued_at": 9, "region": "TZOC6OsZ", "server_name": "A939I3eg", "status": "bgvjAidM", "ticket_id": "0Fc7l3Kf", "updated_at": "1991-08-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0krQGhL6"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'PoJb0zjP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 38, "userID": "EmdhbkYE", "weight": 0.8116884936643691}' \
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
    --matchIDs 'PwVybBsI' \
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
    --strategy 'ifw2cuWm' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'NrSmbjZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'y8z1Fg81' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "eWcgW4TI", "description": "tQVmYAd4", "findMatchTimeoutSeconds": 51, "joinable": true, "max_delay_ms": 54, "region_expansion_rate_ms": 89, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 84, "min": 79, "name": "ZtAIy63L"}, {"max": 6, "min": 95, "name": "X01Lrhml"}, {"max": 63, "min": 82, "name": "NWZT5aqz"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 47}, "maxNumber": 61, "minNumber": 81, "playerMaxNumber": 5, "playerMinNumber": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 13, "min": 36, "name": "i1rUCElg"}, {"max": 7, "min": 26, "name": "PvtDuLct"}, {"max": 29, "min": 7, "name": "wGrmdRjB"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 72}, "duration": 81, "max_number": 98, "min_number": 87, "player_max_number": 73, "player_min_number": 55}, {"combination": {"alliances": [{"max": 62, "min": 14, "name": "UcdRMTGz"}, {"max": 80, "min": 83, "name": "sePVpIwX"}, {"max": 28, "min": 80, "name": "0ZV0n0jP"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 79}, "duration": 51, "max_number": 19, "min_number": 25, "player_max_number": 66, "player_min_number": 87}, {"combination": {"alliances": [{"max": 46, "min": 79, "name": "tAkhzV0R"}, {"max": 35, "min": 27, "name": "bxxYDMxt"}, {"max": 48, "min": 82, "name": "AQL5dAzV"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 44}, "duration": 51, "max_number": 88, "min_number": 68, "player_max_number": 16, "player_min_number": 88}], "flexingRules": [{"attribute": "mLKCNbLD", "criteria": "FU8KkprH", "duration": 55, "reference": 0.811422653584498}, {"attribute": "1MSQgvVT", "criteria": "5t0y2bLQ", "duration": 58, "reference": 0.6320316317981596}, {"attribute": "MAJXtMqs", "criteria": "85NCKSsM", "duration": 15, "reference": 0.504235857584088}], "match_options": {"options": [{"name": "6bSWPtyG", "type": "sboXKuFZ"}, {"name": "UqqCBarS", "type": "McBuMm6C"}, {"name": "4SXZxYH3", "type": "VzCVH87e"}]}, "matchingRules": [{"attribute": "eBlErtuT", "criteria": "SkiprEtR", "reference": 0.28186768389955996}, {"attribute": "w7nbcBrF", "criteria": "OvQmxrxm", "reference": 0.8956722014636118}, {"attribute": "xMG6KtEe", "criteria": "GghSNENc", "reference": 0.7221336951946067}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 100, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'dNL8UMqO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'tfQlwRNY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '6rVtKgd7' \
    --matchID 'J34XLkMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["BqmICd3R", "HvtQjrKV", "IwKqLL0r"], "party_id": "28hZ2BzI", "user_id": "tBuvrOTI"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'EJCybekI' \
    --matchID 'rBBDffOM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '8XYTRlUw' \
    --matchID 'Gb4vjkcO' \
    --namespace $AB_NAMESPACE \
    --userID 'yesgola6' \
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
    --channelName 'yR4lYY1v' \
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