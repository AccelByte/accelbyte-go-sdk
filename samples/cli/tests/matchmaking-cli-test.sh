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
    --limit '82' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "fEn11j7Z", "description": "2gVsVTfC", "find_match_timeout_seconds": 36, "game_mode": "s7ea3NtT", "joinable": false, "max_delay_ms": 60, "region_expansion_rate_ms": 93, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 99, "min": 13, "name": "DAkx68AK"}, {"max": 59, "min": 4, "name": "q3N7YhCl"}, {"max": 86, "min": 86, "name": "k7D4WWgK"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 95}, "max_number": 100, "min_number": 88, "player_max_number": 12, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 32, "min": 80, "name": "KjYkwJim"}, {"max": 13, "min": 64, "name": "I24cSNiI"}, {"max": 32, "min": 53, "name": "o2VEWJuP"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 11}, "duration": 98, "max_number": 48, "min_number": 35, "player_max_number": 25, "player_min_number": 36}, {"combination": {"alliances": [{"max": 82, "min": 14, "name": "tMWzFqOL"}, {"max": 99, "min": 54, "name": "qzZdB9n2"}, {"max": 58, "min": 1, "name": "x8Y4xMiF"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 23}, "duration": 49, "max_number": 15, "min_number": 49, "player_max_number": 96, "player_min_number": 85}, {"combination": {"alliances": [{"max": 25, "min": 20, "name": "cqoLoKqC"}, {"max": 94, "min": 59, "name": "ZUAC4yy2"}, {"max": 48, "min": 88, "name": "7T37My5s"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 9}, "duration": 56, "max_number": 48, "min_number": 45, "player_max_number": 80, "player_min_number": 63}], "flexing_rule": [{"attribute": "A5RWtGCW", "criteria": "dgWg51MX", "duration": 22, "reference": 0.8050080209483546}, {"attribute": "bfMhBjuO", "criteria": "AedJX5QD", "duration": 25, "reference": 0.7933574543133556}, {"attribute": "XTTl3BQ6", "criteria": "zaX0VGVH", "duration": 41, "reference": 0.9324267839968845}], "match_options": {"options": [{"name": "YgXVDMOJ", "type": "uz90fzPw"}, {"name": "RDVjnlwB", "type": "b9RKMwJU"}, {"name": "LyweZcM2", "type": "jRSGgOUQ"}]}, "matching_rule": [{"attribute": "OLxMTP52", "criteria": "UbBHSMC5", "reference": 0.49316411705610164}, {"attribute": "HaOei2Ar", "criteria": "7Zv2Sdy1", "reference": 0.1173876575952909}, {"attribute": "xxY6wala", "criteria": "0MRQncG9", "reference": 0.05509952795988826}], "rebalance_enable": false, "sub_game_modes": {"QfGGXmaM": {"alliance": {"combination": {"alliances": [{"max": 60, "min": 66, "name": "hCYmiTDt"}, {"max": 28, "min": 64, "name": "0sDaBN4T"}, {"max": 36, "min": 9, "name": "sgkorSBV"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 34}, "max_number": 26, "min_number": 60, "player_max_number": 83, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 80, "min": 97, "name": "SkxgDgvg"}, {"max": 22, "min": 69, "name": "Y6FqXRca"}, {"max": 31, "min": 40, "name": "yVLTiYFD"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 8}, "duration": 26, "max_number": 0, "min_number": 80, "player_max_number": 59, "player_min_number": 41}, {"combination": {"alliances": [{"max": 32, "min": 94, "name": "2sDmhgYy"}, {"max": 70, "min": 73, "name": "NoIcAISY"}, {"max": 43, "min": 33, "name": "TextMxuJ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 88}, "duration": 62, "max_number": 60, "min_number": 83, "player_max_number": 23, "player_min_number": 26}, {"combination": {"alliances": [{"max": 23, "min": 100, "name": "fAV5hR7a"}, {"max": 79, "min": 5, "name": "p50eSKhj"}, {"max": 92, "min": 16, "name": "zYezIYR6"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 72}, "duration": 32, "max_number": 4, "min_number": 37, "player_max_number": 7, "player_min_number": 93}], "name": "IyHkrqAa"}, "cDpB7Qab": {"alliance": {"combination": {"alliances": [{"max": 64, "min": 21, "name": "3vZbe2fs"}, {"max": 33, "min": 20, "name": "MPIsssiV"}, {"max": 18, "min": 53, "name": "gPvTQn9E"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 89}, "max_number": 84, "min_number": 68, "player_max_number": 5, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 64, "min": 66, "name": "Swg6V5TM"}, {"max": 22, "min": 12, "name": "KwjENqmV"}, {"max": 93, "min": 7, "name": "pTON2OrX"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 3}, "duration": 3, "max_number": 20, "min_number": 1, "player_max_number": 99, "player_min_number": 30}, {"combination": {"alliances": [{"max": 93, "min": 51, "name": "m5udJMVd"}, {"max": 15, "min": 74, "name": "5DG9w09k"}, {"max": 56, "min": 46, "name": "2MJULngq"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 62}, "duration": 77, "max_number": 95, "min_number": 43, "player_max_number": 55, "player_min_number": 94}, {"combination": {"alliances": [{"max": 96, "min": 94, "name": "3ZiJhCza"}, {"max": 54, "min": 5, "name": "sqdBRUdF"}, {"max": 29, "min": 16, "name": "jhwCI78u"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 73}, "duration": 70, "max_number": 62, "min_number": 25, "player_max_number": 95, "player_min_number": 12}], "name": "SRmrQZFG"}, "2Vr8NC1i": {"alliance": {"combination": {"alliances": [{"max": 60, "min": 42, "name": "kxaOf42n"}, {"max": 57, "min": 16, "name": "eo2WhMZw"}, {"max": 93, "min": 47, "name": "XLu5gqIA"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 90}, "max_number": 15, "min_number": 48, "player_max_number": 63, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 83, "min": 34, "name": "WIep9ulS"}, {"max": 80, "min": 42, "name": "pupHh2Mz"}, {"max": 83, "min": 20, "name": "tG7bmY1w"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 14}, "duration": 0, "max_number": 69, "min_number": 40, "player_max_number": 21, "player_min_number": 17}, {"combination": {"alliances": [{"max": 57, "min": 83, "name": "9F7itzhU"}, {"max": 33, "min": 27, "name": "HDEAIEqf"}, {"max": 16, "min": 51, "name": "VtWONizM"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 30}, "duration": 45, "max_number": 89, "min_number": 1, "player_max_number": 67, "player_min_number": 45}, {"combination": {"alliances": [{"max": 15, "min": 88, "name": "jB8ZlhzH"}, {"max": 72, "min": 85, "name": "E5FFgVbb"}, {"max": 36, "min": 65, "name": "EXkEDeoh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 39}, "duration": 7, "max_number": 60, "min_number": 47, "player_max_number": 87, "player_min_number": 35}], "name": "43Zixe6u"}}}, "session_queue_timeout_seconds": 23, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'I4MwhYz7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "OQXJ7ibV", "players": [{"results": [{"attribute": "hslrcOjz", "value": 0.7638409434416311}, {"attribute": "jYj1oLpV", "value": 0.3634810740037223}, {"attribute": "p6Eq07mM", "value": 0.9918134916140335}], "user_id": "nn9uuI0I"}, {"results": [{"attribute": "JzhBsRA2", "value": 0.3246379400264622}, {"attribute": "vuA1NITU", "value": 0.6856391472663198}, {"attribute": "eFGbjrjx", "value": 0.16739997538126383}], "user_id": "We9OTkwR"}, {"results": [{"attribute": "sLTUbGaL", "value": 0.7486925025705711}, {"attribute": "gdb9xNOT", "value": 0.8528166585521976}, {"attribute": "hfjpVbIP", "value": 0.7743969898467267}], "user_id": "mAQjNNME"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5kVwEKrJ"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "npRn23c2", "client_version": "Z6ZPHrE6", "deployment": "i5Gr5IRm", "error_code": 43, "error_message": "d0iHaC6c", "game_mode": "hXyvj2dM", "joinable": true, "match_id": "I82eROUD", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"NptRmuUT": {}, "5HBGu8F8": {}, "aPEAqEi0": {}}, "party_id": "UQrF6SlI", "party_members": [{"extra_attributes": {"h36QdiYq": {}, "6igFYCEL": {}, "wEkPDdzu": {}}, "user_id": "THkdrqjc"}, {"extra_attributes": {"xT9cKD0k": {}, "xqvYMStj": {}, "9JtHEndY": {}}, "user_id": "LfNlvICE"}, {"extra_attributes": {"FiJpspp7": {}, "v3h10RYF": {}, "VtcxgmYM": {}}, "user_id": "WcPwGDDS"}], "ticket_created_at": 38, "ticket_id": "Bxu2dcyK"}, {"first_ticket_created_at": 55, "party_attributes": {"bOdTdmfE": {}, "wbLTH3Wo": {}, "UDtWHmCU": {}}, "party_id": "G7hdvu8I", "party_members": [{"extra_attributes": {"OYrW4V7T": {}, "VVe66xQZ": {}, "oZkf6I99": {}}, "user_id": "eH4eX6so"}, {"extra_attributes": {"HfSLV8Xv": {}, "H7RG7zqF": {}, "fVWv1j6v": {}}, "user_id": "oBYeRmTg"}, {"extra_attributes": {"pnCJhIxw": {}, "FnDWzrDn": {}, "ugxFsxyh": {}}, "user_id": "7cD5f61k"}], "ticket_created_at": 56, "ticket_id": "SnmACERM"}, {"first_ticket_created_at": 92, "party_attributes": {"9kC1Xxp8": {}, "esMEd8HU": {}, "cTsezPA3": {}}, "party_id": "ycvDsQs7", "party_members": [{"extra_attributes": {"BPK6YQ5C": {}, "pR07nQBu": {}, "NcXQlxSd": {}}, "user_id": "Cz9iVpcM"}, {"extra_attributes": {"34NEvEcK": {}, "V8PcUIa2": {}, "Z4o60mVN": {}}, "user_id": "OwZWFpeJ"}, {"extra_attributes": {"02xIDACu": {}, "UBioEQA5": {}, "Naa8Ec5C": {}}, "user_id": "FndyjwWX"}], "ticket_created_at": 45, "ticket_id": "bHPn2BIk"}]}, {"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"T7P2xNXY": {}, "CpVmIyXH": {}, "PjahOtlp": {}}, "party_id": "v6U6JwkV", "party_members": [{"extra_attributes": {"C5mYeZ6e": {}, "jSvNv0Cw": {}, "EFEr9pQg": {}}, "user_id": "elW7Zx2F"}, {"extra_attributes": {"J2wl2GZv": {}, "WJHYVvj4": {}, "5zuHm9LU": {}}, "user_id": "n41JyQQK"}, {"extra_attributes": {"PkEHLy0T": {}, "aiOvYyb6": {}, "7p98E2Nd": {}}, "user_id": "0JB1GT6t"}], "ticket_created_at": 18, "ticket_id": "nMisP9lz"}, {"first_ticket_created_at": 96, "party_attributes": {"PqrBrNuL": {}, "QaJ2mrpG": {}, "k4szEYid": {}}, "party_id": "Q6dEVCx3", "party_members": [{"extra_attributes": {"0TZ5pfeE": {}, "L7FRYUoV": {}, "9ffAsGHC": {}}, "user_id": "3mM6vxBc"}, {"extra_attributes": {"h0MN9JrN": {}, "o3qU5mzk": {}, "B7gSy92j": {}}, "user_id": "uKmfyZE3"}, {"extra_attributes": {"YCydo5Fz": {}, "Qf2Di40a": {}, "gCDmXEOy": {}}, "user_id": "7Yen6XGf"}], "ticket_created_at": 8, "ticket_id": "BI9OrIqV"}, {"first_ticket_created_at": 35, "party_attributes": {"PNddpTqb": {}, "YKggtgjN": {}, "xN5wUSGy": {}}, "party_id": "Dvn0DLvX", "party_members": [{"extra_attributes": {"Episjt6x": {}, "SYqEGEqr": {}, "Wv8oiNGn": {}}, "user_id": "OdDSYqxs"}, {"extra_attributes": {"8zXCZCgU": {}, "FXnRh1U4": {}, "cngYAmL1": {}}, "user_id": "TsmQ7645"}, {"extra_attributes": {"v3eZf42a": {}, "CUJxpBip": {}, "1J8fQPiv": {}}, "user_id": "1a0KTf0u"}], "ticket_created_at": 64, "ticket_id": "Aj8qvX52"}]}, {"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"cRsuCLFP": {}, "YaYEEOu5": {}, "8k0lnVez": {}}, "party_id": "jXB0Xbnx", "party_members": [{"extra_attributes": {"WeGJFDT3": {}, "xWCy8ewq": {}, "6HT40i0R": {}}, "user_id": "StFprl5i"}, {"extra_attributes": {"gz7pGqYp": {}, "UhcymQL5": {}, "x6uXA283": {}}, "user_id": "Qxu1AOvE"}, {"extra_attributes": {"u9skBfsA": {}, "xRjbETR7": {}, "UfreN7K4": {}}, "user_id": "qM1bFOpa"}], "ticket_created_at": 66, "ticket_id": "sspOnvge"}, {"first_ticket_created_at": 28, "party_attributes": {"Kp6E5jnl": {}, "PbuWBj2K": {}, "HacyhnWG": {}}, "party_id": "cBNHDL0J", "party_members": [{"extra_attributes": {"3AccGS1s": {}, "JNE3cWIV": {}, "xPnFrkyH": {}}, "user_id": "4JgI3ljb"}, {"extra_attributes": {"cPu6jFRa": {}, "Ghc3xrDZ": {}, "3VMUd5Ub": {}}, "user_id": "bzqhuX19"}, {"extra_attributes": {"aGQnPK1Z": {}, "s7Iwd38L": {}, "nauqeE94": {}}, "user_id": "vjnqLO2a"}], "ticket_created_at": 79, "ticket_id": "GT1ExLcJ"}, {"first_ticket_created_at": 27, "party_attributes": {"VfscZnr4": {}, "jzbyMmD9": {}, "mV3TpRpL": {}}, "party_id": "PVB4bpaz", "party_members": [{"extra_attributes": {"1vbv5Q4y": {}, "NOhgeek7": {}, "jLlSM8PR": {}}, "user_id": "vAV1gjZf"}, {"extra_attributes": {"5qWE8fc0": {}, "lX5MbGco": {}, "SZeunAoo": {}}, "user_id": "c31r6pWi"}, {"extra_attributes": {"IcNDOPxC": {}, "lM9Nw9Mg": {}, "o263XG4z": {}}, "user_id": "A3LKPWQD"}], "ticket_created_at": 1, "ticket_id": "49H1fZ0o"}]}], "namespace": "euhuL9pM", "party_attributes": {"UcW0jJkP": {}, "EuEAgTlr": {}, "pkZOxpoZ": {}}, "party_id": "uy9nbDxe", "queued_at": 66, "region": "1X8FO78a", "server_name": "EkZ4C4tR", "status": "3SPtsNk3", "ticket_id": "FFIfrzE2", "updated_at": "1977-10-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "9jNMutre"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ZqggVxUh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 64, "userID": "TLm01TyA", "weight": 0.9427159117678058}' \
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
    --matchIDs 'vYlaiAHH' \
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
    --strategy 'ejz9u8Qb' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'idEeYrqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'OHLoEgAJ' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "DSzCSqDO", "description": "Lu7Ouj93", "findMatchTimeoutSeconds": 27, "joinable": true, "max_delay_ms": 61, "region_expansion_rate_ms": 31, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 77, "min": 35, "name": "Uk7XnRWA"}, {"max": 91, "min": 27, "name": "r0ETtl5J"}, {"max": 32, "min": 27, "name": "oupljvpj"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 94}, "maxNumber": 56, "minNumber": 19, "playerMaxNumber": 8, "playerMinNumber": 20}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 37, "min": 85, "name": "iNVAzcD6"}, {"max": 13, "min": 86, "name": "gadSNJbT"}, {"max": 97, "min": 45, "name": "1UDCibmb"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 5}, "duration": 94, "max_number": 50, "min_number": 68, "player_max_number": 26, "player_min_number": 86}, {"combination": {"alliances": [{"max": 58, "min": 9, "name": "04yLn1Ac"}, {"max": 30, "min": 30, "name": "wiFQyUeX"}, {"max": 26, "min": 18, "name": "zRNQx27l"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 2}, "duration": 46, "max_number": 16, "min_number": 22, "player_max_number": 7, "player_min_number": 96}, {"combination": {"alliances": [{"max": 31, "min": 60, "name": "w80P5NvR"}, {"max": 43, "min": 89, "name": "GmrmJKE1"}, {"max": 79, "min": 68, "name": "wzVFJzGp"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 91}, "duration": 87, "max_number": 87, "min_number": 46, "player_max_number": 29, "player_min_number": 11}], "flexingRules": [{"attribute": "DPYk3IHf", "criteria": "EmS0rKAQ", "duration": 64, "reference": 0.7055587056604447}, {"attribute": "cbFavxaw", "criteria": "QEEGYf9v", "duration": 95, "reference": 0.8831327002728568}, {"attribute": "X9oXUqx6", "criteria": "socdF4EY", "duration": 23, "reference": 0.85008035801973}], "match_options": {"options": [{"name": "D5qV4hPj", "type": "bQPYWx3e"}, {"name": "t7OEC5zG", "type": "v9HRm4kA"}, {"name": "5FhBo9pd", "type": "fkPwz33V"}]}, "matchingRules": [{"attribute": "HsbLrv1W", "criteria": "v7OFGCC3", "reference": 0.046028193189873945}, {"attribute": "KU1wkQFu", "criteria": "CxbrgjRk", "reference": 0.8836838284738557}, {"attribute": "P838uA2g", "criteria": "Xhz9GeNS", "reference": 0.9194965421509707}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 9, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'vNF7VihD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'HFCFYJTT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'Rypp8858' \
    --matchID 'YJzdyCUw' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["X81BFbds", "m23AttXg", "W79WspQw"], "party_id": "Zo5Fvflr", "user_id": "xg7CAZnX"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'AixOjVi4' \
    --matchID 'zADqpEye' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'h68kC20O' \
    --matchID 'Tz87cYSO' \
    --namespace $AB_NAMESPACE \
    --userID 'Nw6FFQJl' \
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
    --channelName '2el6peoY' \
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