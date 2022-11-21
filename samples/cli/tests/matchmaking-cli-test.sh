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
    --limit '12' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "kV8dqBta", "description": "jS6xdZ6G", "find_match_timeout_seconds": 51, "game_mode": "KeQIOWtl", "joinable": false, "max_delay_ms": 75, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 6, "min": 61, "name": "KiFXPc1d"}, {"max": 18, "min": 93, "name": "K0565dyP"}, {"max": 35, "min": 78, "name": "jXBqFZet"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 42}, "max_number": 12, "min_number": 57, "player_max_number": 94, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 0, "min": 50, "name": "we6LyNMz"}, {"max": 61, "min": 15, "name": "HZNcPaLe"}, {"max": 55, "min": 47, "name": "0cxMvOaa"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 64}, "duration": 58, "max_number": 42, "min_number": 19, "player_max_number": 4, "player_min_number": 35}, {"combination": {"alliances": [{"max": 62, "min": 67, "name": "itaqWRWd"}, {"max": 22, "min": 47, "name": "QlOFLiDd"}, {"max": 8, "min": 7, "name": "c4vcdXJK"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 73}, "duration": 72, "max_number": 55, "min_number": 91, "player_max_number": 87, "player_min_number": 52}, {"combination": {"alliances": [{"max": 95, "min": 7, "name": "rEB2dVBb"}, {"max": 10, "min": 61, "name": "qo5kIhdt"}, {"max": 44, "min": 58, "name": "Aebi59Id"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 66}, "duration": 6, "max_number": 56, "min_number": 2, "player_max_number": 26, "player_min_number": 34}], "flexing_rule": [{"attribute": "38bwAzA6", "criteria": "DDcnNWcK", "duration": 10, "reference": 0.3743260401018712}, {"attribute": "MKsWweMX", "criteria": "S8is2dAi", "duration": 26, "reference": 0.4037760910984455}, {"attribute": "9Br6TSQl", "criteria": "7FhrDUfl", "duration": 2, "reference": 0.2535512018390149}], "match_options": {"options": [{"name": "JQGWeygB", "type": "9jgJAbu5"}, {"name": "UObqlkps", "type": "8ykfH53S"}, {"name": "t1m7bHuT", "type": "kPvFEpgP"}]}, "matching_rule": [{"attribute": "uU1RHwiN", "criteria": "XYoWbwyQ", "reference": 0.6220804520609371}, {"attribute": "IsT1LUZ0", "criteria": "ZosPpayN", "reference": 0.507398370555533}, {"attribute": "Wcjzsksv", "criteria": "OTBhahuo", "reference": 0.30224924594074853}], "rebalance_enable": true, "sub_game_modes": {"oJXkjuaY": {"alliance": {"combination": {"alliances": [{"max": 27, "min": 28, "name": "UoueaQI0"}, {"max": 99, "min": 51, "name": "tSUkPSTD"}, {"max": 54, "min": 20, "name": "oW4j7Bme"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 4, "role_flexing_second": 79}, "max_number": 78, "min_number": 0, "player_max_number": 97, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 97, "min": 27, "name": "Xo6fsKgD"}, {"max": 15, "min": 15, "name": "aCsT7iqU"}, {"max": 17, "min": 82, "name": "HxC3sHsn"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 96}, "duration": 2, "max_number": 34, "min_number": 49, "player_max_number": 61, "player_min_number": 82}, {"combination": {"alliances": [{"max": 38, "min": 71, "name": "2k0sksQJ"}, {"max": 56, "min": 16, "name": "sTIPfsqR"}, {"max": 36, "min": 46, "name": "Y9QnaXfL"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 13}, "duration": 20, "max_number": 86, "min_number": 4, "player_max_number": 85, "player_min_number": 91}, {"combination": {"alliances": [{"max": 4, "min": 60, "name": "SpxaKj7M"}, {"max": 67, "min": 78, "name": "0ZzuayVt"}, {"max": 50, "min": 6, "name": "RXvr5cze"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 92}, "duration": 19, "max_number": 9, "min_number": 95, "player_max_number": 54, "player_min_number": 85}], "name": "gdRlm5se"}, "8GzTYGEm": {"alliance": {"combination": {"alliances": [{"max": 83, "min": 59, "name": "k7OpNAs8"}, {"max": 75, "min": 86, "name": "lFg3AIh2"}, {"max": 12, "min": 89, "name": "tv83UjHQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 79}, "max_number": 44, "min_number": 35, "player_max_number": 14, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 48, "min": 75, "name": "UfyQqIrd"}, {"max": 9, "min": 96, "name": "1NTAvFds"}, {"max": 70, "min": 80, "name": "7w3e4fCa"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 9}, "duration": 24, "max_number": 96, "min_number": 48, "player_max_number": 60, "player_min_number": 58}, {"combination": {"alliances": [{"max": 88, "min": 35, "name": "CmOapTBC"}, {"max": 8, "min": 82, "name": "6jYUZdWz"}, {"max": 28, "min": 35, "name": "jMnGvYgj"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 70}, "duration": 75, "max_number": 30, "min_number": 43, "player_max_number": 74, "player_min_number": 74}, {"combination": {"alliances": [{"max": 41, "min": 27, "name": "LEqanMzt"}, {"max": 30, "min": 2, "name": "wBouJMb6"}, {"max": 4, "min": 73, "name": "X7R5aYT9"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 77}, "duration": 5, "max_number": 56, "min_number": 86, "player_max_number": 84, "player_min_number": 63}], "name": "RqAhk3s7"}, "RKl5KWaM": {"alliance": {"combination": {"alliances": [{"max": 91, "min": 16, "name": "J1KZ3QhR"}, {"max": 58, "min": 15, "name": "9WyduKPJ"}, {"max": 19, "min": 7, "name": "DN11ZkGm"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 21}, "max_number": 24, "min_number": 89, "player_max_number": 31, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 23, "min": 27, "name": "5SFNXkam"}, {"max": 39, "min": 2, "name": "EMRzlovg"}, {"max": 51, "min": 59, "name": "gl0C2wEN"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 24}, "duration": 5, "max_number": 51, "min_number": 45, "player_max_number": 24, "player_min_number": 22}, {"combination": {"alliances": [{"max": 65, "min": 58, "name": "4IcJQgAj"}, {"max": 100, "min": 79, "name": "IHI8JJ9T"}, {"max": 66, "min": 84, "name": "OFy4Lotp"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 22}, "duration": 55, "max_number": 20, "min_number": 83, "player_max_number": 63, "player_min_number": 55}, {"combination": {"alliances": [{"max": 18, "min": 15, "name": "l4RLLY6G"}, {"max": 21, "min": 92, "name": "qNneQrTf"}, {"max": 89, "min": 28, "name": "Quv4SkWN"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 95}, "duration": 60, "max_number": 37, "min_number": 57, "player_max_number": 18, "player_min_number": 62}], "name": "9AJH4vcj"}}}, "session_queue_timeout_seconds": 15, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'xSGjOg9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JLvvR0zc", "players": [{"results": [{"attribute": "YXXoOf8t", "value": 0.18038117413720933}, {"attribute": "EgsFANNf", "value": 0.21247897003352523}, {"attribute": "1rRp7Czq", "value": 0.16282832853796758}], "user_id": "BoONaCdX"}, {"results": [{"attribute": "mE2C7NF1", "value": 0.22508076560361978}, {"attribute": "uWktyTdH", "value": 0.2332289765330685}, {"attribute": "dg8rKxNM", "value": 0.6063855227168342}], "user_id": "R4OoFT8h"}, {"results": [{"attribute": "sKAnu7kr", "value": 0.028346137700929086}, {"attribute": "yV76UZry", "value": 0.4358145168814056}, {"attribute": "WJx2e5Jg", "value": 0.36524125119202666}], "user_id": "Lee3OvsO"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "pN13pktz"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ychKQwg7", "client_version": "QszANtll", "deployment": "EuIZ69rM", "error_code": 53, "error_message": "pTTVA8xL", "game_mode": "lZu1NWfM", "joinable": true, "match_id": "qKzbIHAQ", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 83, "party_attributes": {"Q8bi96TD": {}, "cd6yro06": {}, "HUI0UbvM": {}}, "party_id": "CbeZm7De", "party_members": [{"extra_attributes": {"VAp0zxwK": {}, "AS7ToD9J": {}, "HtwLXCsz": {}}, "user_id": "Kk2R6U9U"}, {"extra_attributes": {"9nyyYuv3": {}, "B5J2ZYse": {}, "UZiddyjg": {}}, "user_id": "GZflDyFV"}, {"extra_attributes": {"5Eg3drWB": {}, "1PuZaHiN": {}, "TbGp9cZ0": {}}, "user_id": "E6AU8HxW"}], "ticket_id": "nCyLCd0s"}, {"first_ticket_created_at": 24, "party_attributes": {"B86ZjGL4": {}, "tDIEMmjM": {}, "jtThpAYu": {}}, "party_id": "xGCQbdoW", "party_members": [{"extra_attributes": {"aIOsMIHR": {}, "41uI5GF3": {}, "PvwEvUrA": {}}, "user_id": "1u4yI2tF"}, {"extra_attributes": {"c1ZDWPbS": {}, "7RBoKzf1": {}, "L3jd3XC1": {}}, "user_id": "dLiR5wZY"}, {"extra_attributes": {"Vd04RonJ": {}, "xj1c8TD1": {}, "wTANAUqz": {}}, "user_id": "v9Fl4LI0"}], "ticket_id": "6cZlwmDe"}, {"first_ticket_created_at": 46, "party_attributes": {"T4LZZqZ7": {}, "u1EyKBu9": {}, "5h9l0PRN": {}}, "party_id": "sYALroG2", "party_members": [{"extra_attributes": {"xroktfxC": {}, "4fQAOoRB": {}, "RKDuhrgC": {}}, "user_id": "Vmau6N5B"}, {"extra_attributes": {"b43lyu3N": {}, "sjppC1co": {}, "kfepbq1e": {}}, "user_id": "P3v4tjSp"}, {"extra_attributes": {"oecveG5j": {}, "5dyR4z6s": {}, "NTqVQ02S": {}}, "user_id": "Zx0ciEFq"}], "ticket_id": "wyzKo6G9"}]}, {"matching_parties": [{"first_ticket_created_at": 8, "party_attributes": {"9pH9dwb4": {}, "ggv2gRxr": {}, "O2yVoWNS": {}}, "party_id": "2HTI2XbW", "party_members": [{"extra_attributes": {"dRhPg28G": {}, "AGlaLsAo": {}, "gKPzy8Pi": {}}, "user_id": "Rhcjgn0R"}, {"extra_attributes": {"HX8zlvnx": {}, "lGEoyY1b": {}, "Niv6xGqw": {}}, "user_id": "ZF4VLobK"}, {"extra_attributes": {"ZjjSHrJG": {}, "xk6bqlmE": {}, "fpDajkzL": {}}, "user_id": "bT7DknDN"}], "ticket_id": "aBAro59L"}, {"first_ticket_created_at": 24, "party_attributes": {"tM6cVz66": {}, "NuOfmjey": {}, "g8ubAKtd": {}}, "party_id": "SMqNbnSB", "party_members": [{"extra_attributes": {"xXEXGAbP": {}, "0GFMRur8": {}, "TWLgk8BH": {}}, "user_id": "Is8RMTXK"}, {"extra_attributes": {"g6iR85to": {}, "kvgyLmLW": {}, "QaTKMhx2": {}}, "user_id": "GIMbzYtn"}, {"extra_attributes": {"ptOUXy8b": {}, "zwy2ZrRP": {}, "u7zzGkKp": {}}, "user_id": "8e3tZB3C"}], "ticket_id": "OZnQSt4K"}, {"first_ticket_created_at": 87, "party_attributes": {"kSnv5Zjn": {}, "Z8XkPAxF": {}, "Y4gU7Ha0": {}}, "party_id": "mSfksoJ9", "party_members": [{"extra_attributes": {"VWLYMwws": {}, "HchScvwA": {}, "L1TmGtaE": {}}, "user_id": "mwj0Jwrm"}, {"extra_attributes": {"laZCbcTB": {}, "59eiMukQ": {}, "Gss7oiuF": {}}, "user_id": "l2S1MtYu"}, {"extra_attributes": {"fZhUxaV9": {}, "jMDCRPkb": {}, "CAzCI7Sz": {}}, "user_id": "wliItEdK"}], "ticket_id": "vgtKzQlD"}]}, {"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"YYkGRU55": {}, "dcdpjNdI": {}, "oNu51x87": {}}, "party_id": "OEgoHFRU", "party_members": [{"extra_attributes": {"55qjsUhP": {}, "urVhVjSa": {}, "v2uvpKEU": {}}, "user_id": "hb3qZi5Z"}, {"extra_attributes": {"poLvom1L": {}, "pfW8ECfU": {}, "ikMyFtGB": {}}, "user_id": "8GoW7kiK"}, {"extra_attributes": {"BOG9hoGi": {}, "qbB65SOA": {}, "n8f2DNT4": {}}, "user_id": "zscIxTLr"}], "ticket_id": "QU9yEURm"}, {"first_ticket_created_at": 13, "party_attributes": {"wqagO0oO": {}, "XZxZRRUW": {}, "sXPN5EU3": {}}, "party_id": "ZZmU03Cb", "party_members": [{"extra_attributes": {"b1oMhzGj": {}, "WfuGG4uv": {}, "n8wStI5I": {}}, "user_id": "E5OREkSu"}, {"extra_attributes": {"qrrEHvDc": {}, "LuyQXqwE": {}, "iR9E9NEa": {}}, "user_id": "cAPyZXZI"}, {"extra_attributes": {"qqgl7s9j": {}, "nIDWf6GA": {}, "iQPUSydn": {}}, "user_id": "98MZb4F2"}], "ticket_id": "oGk0s5zl"}, {"first_ticket_created_at": 53, "party_attributes": {"5WjD1Ofa": {}, "tjCi1TDv": {}, "gGtTk27E": {}}, "party_id": "Ba0hBTNt", "party_members": [{"extra_attributes": {"2YffJejX": {}, "rtdAdaqx": {}, "YRukiIi6": {}}, "user_id": "0LfPwAxf"}, {"extra_attributes": {"TZlPCvaO": {}, "u4P9vWGP": {}, "JiR3KKAG": {}}, "user_id": "YKeEgav6"}, {"extra_attributes": {"6H5rqDVe": {}, "gfDDfAPW": {}, "4kruauvE": {}}, "user_id": "KShYg7R8"}], "ticket_id": "L2wDjwwI"}]}], "namespace": "XBmeWhUG", "party_attributes": {"3cGJAKK9": {}, "8POMR57V": {}, "BU73a9ay": {}}, "party_id": "umBTA0Fo", "queued_at": 3, "region": "tGvMLeh5", "server_name": "9kR9dSka", "status": "0h4ehoqr", "ticket_id": "02Ucy816", "updated_at": "1993-07-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "MzQQnmC4"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'uqDJT4ut' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 35, "userID": "GfvSOBrF", "weight": 0.2155678610407722}' \
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
    --matchIDs 'YM6NCA8s' \
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
    --strategy '45Cs6iZ5' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'lSVb8ZCT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '1dzRzWcC' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "0iOoMyvm", "description": "MNk5vonF", "findMatchTimeoutSeconds": 2, "joinable": false, "max_delay_ms": 70, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 86, "min": 67, "name": "bbecugLc"}, {"max": 85, "min": 77, "name": "NNOOldfq"}, {"max": 6, "min": 7, "name": "IblFAmes"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 95}, "maxNumber": 39, "minNumber": 40, "playerMaxNumber": 54, "playerMinNumber": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 49, "min": 54, "name": "lRuKCpZp"}, {"max": 82, "min": 55, "name": "wltPJPJC"}, {"max": 91, "min": 60, "name": "u5Kupeaf"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 99}, "duration": 89, "max_number": 55, "min_number": 22, "player_max_number": 45, "player_min_number": 80}, {"combination": {"alliances": [{"max": 44, "min": 59, "name": "4YSzv7B4"}, {"max": 38, "min": 93, "name": "1gU8f0tX"}, {"max": 51, "min": 75, "name": "lPuojtK0"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 9, "role_flexing_second": 46}, "duration": 0, "max_number": 18, "min_number": 30, "player_max_number": 13, "player_min_number": 15}, {"combination": {"alliances": [{"max": 56, "min": 87, "name": "LzSEvBqd"}, {"max": 67, "min": 17, "name": "3tXau822"}, {"max": 5, "min": 38, "name": "mOj4iQuF"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 48}, "duration": 46, "max_number": 61, "min_number": 22, "player_max_number": 70, "player_min_number": 11}], "flexingRules": [{"attribute": "UEaHzht5", "criteria": "OtjA2Y4h", "duration": 74, "reference": 0.7401561559527481}, {"attribute": "CAo4rZcX", "criteria": "aFZM7Zeo", "duration": 74, "reference": 0.14184888385907546}, {"attribute": "Q20D2HH7", "criteria": "wIwmzpbQ", "duration": 52, "reference": 0.9816922397649908}], "match_options": {"options": [{"name": "ijOxlRHp", "type": "NQ5H1zrf"}, {"name": "nzhCUi0E", "type": "z546ZVow"}, {"name": "zirNl0SL", "type": "gMKwk66J"}]}, "matchingRules": [{"attribute": "Gw22j13M", "criteria": "GqjhSWli", "reference": 0.8917161394090777}, {"attribute": "ReZBbHmA", "criteria": "Fbx0QdWv", "reference": 0.20038766003771813}, {"attribute": "kKt1f735", "criteria": "KUqBatCz", "reference": 0.21621799821339316}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 12, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'fiGTWcUo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'nP7hQ0Ii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '1R5c6INd' \
    --matchID 'Csn2liwa' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["ZC9r6kcf", "4SCSYSgK", "yLUR0qis"], "party_id": "yEuhaIQw", "user_id": "GkSnJjc0"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'JP0CPEOe' \
    --matchID 'OTAqkaR9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '5chMLkeu' \
    --matchID '0abvjY0O' \
    --namespace $AB_NAMESPACE \
    --userID 'TieuBUMk' \
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
    --channelName '0oZPDcI9' \
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