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
    --limit '54' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "VzRhMcF6", "description": "jQ34M4cU", "find_match_timeout_seconds": 74, "game_mode": "OTlo7if0", "joinable": true, "max_delay_ms": 26, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 29, "min": 84, "name": "xpzM2d8I"}, {"max": 54, "min": 12, "name": "OSELaMbb"}, {"max": 93, "min": 64, "name": "K89Xwu8n"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 14}, "max_number": 72, "min_number": 96, "player_max_number": 87, "player_min_number": 55}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 6, "min": 82, "name": "u4Nuuc4K"}, {"max": 63, "min": 39, "name": "8yYM4dpN"}, {"max": 33, "min": 50, "name": "n4s41Qbt"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 53}, "duration": 30, "max_number": 70, "min_number": 96, "player_max_number": 74, "player_min_number": 76}, {"combination": {"alliances": [{"max": 82, "min": 45, "name": "LlGvKCl7"}, {"max": 8, "min": 29, "name": "yB9m34cH"}, {"max": 46, "min": 71, "name": "8RjDfcT9"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 83}, "duration": 0, "max_number": 71, "min_number": 2, "player_max_number": 52, "player_min_number": 29}, {"combination": {"alliances": [{"max": 44, "min": 10, "name": "blqWsRxA"}, {"max": 28, "min": 60, "name": "OaNF63YQ"}, {"max": 3, "min": 94, "name": "FxJGHVC8"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 21}, "duration": 99, "max_number": 38, "min_number": 41, "player_max_number": 0, "player_min_number": 36}], "flexing_rule": [{"attribute": "2aFIPagX", "criteria": "cmgLrmbK", "duration": 69, "reference": 0.2723281915507546}, {"attribute": "vZ9HvA2I", "criteria": "CNov1PHF", "duration": 61, "reference": 0.8300310054598756}, {"attribute": "WSJbW79x", "criteria": "kiFmdXSO", "duration": 86, "reference": 0.5149886567501845}], "match_options": {"options": [{"name": "3pXGBhl0", "type": "qX0o8ydz"}, {"name": "Ok0WGSDq", "type": "mXvtRnB1"}, {"name": "iGjRCKv4", "type": "6p8Z5P0E"}]}, "matching_rule": [{"attribute": "Nq0ozxFX", "criteria": "UGj3SDRF", "reference": 0.0018194004405187592}, {"attribute": "rPuvlquo", "criteria": "43pwq9BB", "reference": 0.4852322938575073}, {"attribute": "f9MwyHWG", "criteria": "R4Rxwy3l", "reference": 0.8809317478968155}], "rebalance_enable": false, "sub_game_modes": {"TJtmotxE": {"alliance": {"combination": {"alliances": [{"max": 12, "min": 3, "name": "GrLAnJDk"}, {"max": 33, "min": 1, "name": "EkFOSEHL"}, {"max": 87, "min": 61, "name": "m6rhiDse"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 76}, "max_number": 88, "min_number": 73, "player_max_number": 40, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 36, "min": 65, "name": "VBCRiZms"}, {"max": 32, "min": 68, "name": "m0rJSo22"}, {"max": 66, "min": 71, "name": "6Pwbu3xQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 26}, "duration": 48, "max_number": 77, "min_number": 23, "player_max_number": 78, "player_min_number": 72}, {"combination": {"alliances": [{"max": 99, "min": 47, "name": "bCBuIjvu"}, {"max": 70, "min": 12, "name": "yk06i7cP"}, {"max": 68, "min": 13, "name": "3Z621Vyr"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 44}, "duration": 97, "max_number": 56, "min_number": 8, "player_max_number": 72, "player_min_number": 80}, {"combination": {"alliances": [{"max": 1, "min": 45, "name": "YNALmHMu"}, {"max": 80, "min": 99, "name": "b5kexPcs"}, {"max": 0, "min": 54, "name": "WuhhusHy"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 78}, "duration": 61, "max_number": 75, "min_number": 63, "player_max_number": 32, "player_min_number": 89}], "name": "xEPixNoH"}, "0ODXFF5s": {"alliance": {"combination": {"alliances": [{"max": 81, "min": 67, "name": "R5uAXTZs"}, {"max": 33, "min": 88, "name": "30376QIB"}, {"max": 14, "min": 14, "name": "f3E36MFb"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 75}, "max_number": 21, "min_number": 11, "player_max_number": 99, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 79, "min": 27, "name": "4ToFUL8O"}, {"max": 89, "min": 91, "name": "Cy6KSDsV"}, {"max": 32, "min": 42, "name": "5BpuZuPN"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 87}, "duration": 41, "max_number": 71, "min_number": 33, "player_max_number": 77, "player_min_number": 26}, {"combination": {"alliances": [{"max": 53, "min": 30, "name": "aSIBIJbd"}, {"max": 55, "min": 94, "name": "w15vq4Dc"}, {"max": 56, "min": 36, "name": "KqikBmRU"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 42}, "duration": 88, "max_number": 100, "min_number": 29, "player_max_number": 31, "player_min_number": 23}, {"combination": {"alliances": [{"max": 76, "min": 24, "name": "FrSRodC9"}, {"max": 51, "min": 30, "name": "258kUN9M"}, {"max": 50, "min": 82, "name": "OrqyMXmo"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 39}, "duration": 40, "max_number": 86, "min_number": 12, "player_max_number": 40, "player_min_number": 35}], "name": "iLEvYdLJ"}, "tkFdM5pk": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 14, "name": "Z3wW2qoD"}, {"max": 32, "min": 85, "name": "jOkUtneN"}, {"max": 78, "min": 64, "name": "DaMq3XEO"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 92}, "max_number": 100, "min_number": 23, "player_max_number": 42, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 54, "min": 51, "name": "BFtKSTcc"}, {"max": 56, "min": 100, "name": "bwRp4fHj"}, {"max": 35, "min": 43, "name": "l9oZTQ2D"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 68}, "duration": 25, "max_number": 25, "min_number": 61, "player_max_number": 3, "player_min_number": 15}, {"combination": {"alliances": [{"max": 1, "min": 52, "name": "iYUbZUS3"}, {"max": 69, "min": 58, "name": "BskhRWoO"}, {"max": 89, "min": 7, "name": "18VBB9q4"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 95}, "duration": 39, "max_number": 60, "min_number": 58, "player_max_number": 2, "player_min_number": 84}, {"combination": {"alliances": [{"max": 9, "min": 46, "name": "S8AMP4Jv"}, {"max": 99, "min": 97, "name": "W6SbekXl"}, {"max": 99, "min": 72, "name": "kaaCNuaX"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 17}, "duration": 24, "max_number": 52, "min_number": 41, "player_max_number": 56, "player_min_number": 30}], "name": "8Mg0YS4s"}}}, "session_queue_timeout_seconds": 31, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'mtJPfX0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8eIAcYNn", "players": [{"results": [{"attribute": "J7SGWNax", "value": 0.8936659772194081}, {"attribute": "nF8guC1S", "value": 0.2607834372287712}, {"attribute": "yNWzSjWW", "value": 0.26365787826183795}], "user_id": "SwvpXwgO"}, {"results": [{"attribute": "JWr7Y7VJ", "value": 0.9326864837166613}, {"attribute": "wcy1CPqP", "value": 0.73553931496861}, {"attribute": "d9CezJYg", "value": 0.4781229213974316}], "user_id": "1cGXTOgE"}, {"results": [{"attribute": "QyFe5wCK", "value": 0.9154694373121931}, {"attribute": "WLEJ3FPS", "value": 0.8240813408346674}, {"attribute": "tIHno4BI", "value": 0.6866931496814128}], "user_id": "0TVaAKji"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "uG3JgTX5"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "DA6ncrGV", "client_version": "Jxsxvz9l", "deployment": "HgmTidAc", "error_code": 91, "error_message": "mjm5w6k2", "game_mode": "wbkdiMzT", "joinable": true, "match_id": "8ieNF4jt", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"gXo1U9aN": {}, "e8ma5JQv": {}, "cH0Qp43L": {}}, "party_id": "TlBYyCW1", "party_members": [{"extra_attributes": {"CNI4EBZm": {}, "xhZrb1W4": {}, "GygTABDb": {}}, "user_id": "xvnUhuUw"}, {"extra_attributes": {"prtoe2LS": {}, "WVeGZstl": {}, "6H1fHUbn": {}}, "user_id": "0TJmU0ZT"}, {"extra_attributes": {"KMvyo2DN": {}, "NVKHMlUh": {}, "IYRGOicg": {}}, "user_id": "C7KPRdb7"}], "ticket_created_at": 19, "ticket_id": "XiEm6H6v"}, {"first_ticket_created_at": 52, "party_attributes": {"qkZUeGoz": {}, "ZseXuLGJ": {}, "PPKpWcTY": {}}, "party_id": "2sPOpDxn", "party_members": [{"extra_attributes": {"CRJPDrWf": {}, "XfvL18wM": {}, "2qbyZbuG": {}}, "user_id": "cVwse3aI"}, {"extra_attributes": {"ERQh1cBy": {}, "jdYLEvYN": {}, "o4PbLjeR": {}}, "user_id": "2PDdaPv2"}, {"extra_attributes": {"yMNEBVUs": {}, "zc0eojYl": {}, "IIYrAfGy": {}}, "user_id": "NEfMaiRp"}], "ticket_created_at": 62, "ticket_id": "dvgywWDB"}, {"first_ticket_created_at": 21, "party_attributes": {"5X3HlFmX": {}, "C4T8bFWv": {}, "LcgMGVr7": {}}, "party_id": "2xcKh2nw", "party_members": [{"extra_attributes": {"uBNMxvfg": {}, "xlBEKs4N": {}, "JbqinKKL": {}}, "user_id": "cDwpaaoY"}, {"extra_attributes": {"y2i7Ohst": {}, "mvSeypmL": {}, "lv8mK43n": {}}, "user_id": "ZRzi2haX"}, {"extra_attributes": {"YVv4tAJp": {}, "2JEM8xLu": {}, "E5FIHkuE": {}}, "user_id": "0X52r1ri"}], "ticket_created_at": 94, "ticket_id": "W4RQvdu5"}]}, {"matching_parties": [{"first_ticket_created_at": 80, "party_attributes": {"7MXeYJex": {}, "pAy7lOAK": {}, "Ka9UNi2n": {}}, "party_id": "BQClUSUI", "party_members": [{"extra_attributes": {"0bljge9x": {}, "vXr1zQQq": {}, "qNhRvRfK": {}}, "user_id": "dMomAGjB"}, {"extra_attributes": {"xmC7Swfp": {}, "WXuDB5Pf": {}, "xdlg9cBq": {}}, "user_id": "ZsokSsB2"}, {"extra_attributes": {"USkIwSrI": {}, "3V5dXVLL": {}, "ChxviZKU": {}}, "user_id": "Puy4b4pL"}], "ticket_created_at": 17, "ticket_id": "HJeQOvgA"}, {"first_ticket_created_at": 12, "party_attributes": {"mtcLFY1y": {}, "LZgwwV82": {}, "b9o7qVlf": {}}, "party_id": "oNLc2PU7", "party_members": [{"extra_attributes": {"wau8nC4F": {}, "SbJinDZs": {}, "twLBF3i8": {}}, "user_id": "77Eqa67a"}, {"extra_attributes": {"5ZcZxu7s": {}, "NR7kpTzK": {}, "lnZu0lbR": {}}, "user_id": "MaHO3TNp"}, {"extra_attributes": {"TvXM2RmC": {}, "shIXnmhX": {}, "CwaJPnpu": {}}, "user_id": "tTXQ6EVn"}], "ticket_created_at": 5, "ticket_id": "teqDvnQU"}, {"first_ticket_created_at": 20, "party_attributes": {"zJvTi5lB": {}, "A8PQaL1O": {}, "xrngPOCW": {}}, "party_id": "siK39Mt0", "party_members": [{"extra_attributes": {"6lKQ4x1C": {}, "Ifsb9EeG": {}, "Roych3Lx": {}}, "user_id": "WYv2PNBP"}, {"extra_attributes": {"DYhnlxdg": {}, "OiTjzpik": {}, "SsB3W5CZ": {}}, "user_id": "gqeI4l19"}, {"extra_attributes": {"56rvVc3t": {}, "YpIKGD2E": {}, "WfYsf44a": {}}, "user_id": "j10BWmrO"}], "ticket_created_at": 26, "ticket_id": "3WvbeA8T"}]}, {"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"pfqzyqwx": {}, "Q0Pilvdk": {}, "9OEmr26W": {}}, "party_id": "HpFuYPf9", "party_members": [{"extra_attributes": {"nwmcG4uw": {}, "jHeYG6tr": {}, "tFPHgf9M": {}}, "user_id": "YCsfICQj"}, {"extra_attributes": {"cfustNho": {}, "tr0Psd22": {}, "AjSdgqtu": {}}, "user_id": "jLBiG6D7"}, {"extra_attributes": {"4qXN8Jwd": {}, "PlndbJPJ": {}, "B5yHLxVu": {}}, "user_id": "zRpkz5Wq"}], "ticket_created_at": 27, "ticket_id": "09400e7i"}, {"first_ticket_created_at": 11, "party_attributes": {"mu4hP4TT": {}, "hGGP5AuS": {}, "ZKSXIJJU": {}}, "party_id": "TiKcHV54", "party_members": [{"extra_attributes": {"me8PTB1P": {}, "WkekcznF": {}, "kS5WxBUo": {}}, "user_id": "mlZsYSCU"}, {"extra_attributes": {"Ri0Wmu3g": {}, "cgufjdEN": {}, "bS5JaDpk": {}}, "user_id": "YgxL9ron"}, {"extra_attributes": {"pKsY0usp": {}, "foFPgVlA": {}, "UGESeJGt": {}}, "user_id": "yNiKj35l"}], "ticket_created_at": 66, "ticket_id": "cK5PfLiM"}, {"first_ticket_created_at": 65, "party_attributes": {"2SGiyzKh": {}, "P7pCIaTE": {}, "ZDIkhSaY": {}}, "party_id": "C4eWKdAy", "party_members": [{"extra_attributes": {"xxLGKwiN": {}, "5chxAnwq": {}, "Xu5dXPWh": {}}, "user_id": "xZjcugtW"}, {"extra_attributes": {"2yZ0Hc2q": {}, "gVrbWSYk": {}, "eoBKSOC9": {}}, "user_id": "aUlDbqVP"}, {"extra_attributes": {"41lK0YWd": {}, "E5tJGe1A": {}, "xR7RBqKc": {}}, "user_id": "nQoPfRma"}], "ticket_created_at": 99, "ticket_id": "HElWuQ9R"}]}], "namespace": "cTqQ694w", "party_attributes": {"N6Z2LN1q": {}, "fnZssaHj": {}, "MvKJeSQz": {}}, "party_id": "EQZ3rZs5", "queued_at": 97, "region": "1o90agtA", "server_name": "XDB8Aeas", "status": "AR1aful4", "ticket_id": "gGnsW8xF", "updated_at": "1997-04-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "QpMiPxYD"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '65LfRBm6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 48, "userID": "FJsAYSSH", "weight": 0.22075118266074967}' \
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
    --matchIDs 'euUmnr8K' \
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
    --strategy 'JqAFSksy' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'WnXF9ThN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '3vbA17gB' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "T8pbo149", "description": "NEvpzRWa", "findMatchTimeoutSeconds": 27, "joinable": true, "max_delay_ms": 93, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 42, "min": 54, "name": "I1BxFgU2"}, {"max": 41, "min": 32, "name": "C1vaFnCk"}, {"max": 47, "min": 79, "name": "iHeTvbwg"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 64}, "maxNumber": 66, "minNumber": 81, "playerMaxNumber": 86, "playerMinNumber": 91}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 76, "min": 97, "name": "mvYpfjM1"}, {"max": 69, "min": 1, "name": "6OgK4ocQ"}, {"max": 17, "min": 41, "name": "oh9B9wZR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 12}, "duration": 98, "max_number": 99, "min_number": 41, "player_max_number": 62, "player_min_number": 63}, {"combination": {"alliances": [{"max": 30, "min": 75, "name": "Rva6G7li"}, {"max": 13, "min": 56, "name": "rVD5MULt"}, {"max": 91, "min": 41, "name": "wZ8ai0jT"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 19}, "duration": 90, "max_number": 17, "min_number": 27, "player_max_number": 75, "player_min_number": 84}, {"combination": {"alliances": [{"max": 48, "min": 83, "name": "Amj20tQZ"}, {"max": 71, "min": 93, "name": "o75Yntuv"}, {"max": 67, "min": 48, "name": "aF1oZD12"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 4}, "duration": 65, "max_number": 26, "min_number": 46, "player_max_number": 4, "player_min_number": 91}], "flexingRules": [{"attribute": "igMOnpvL", "criteria": "YC3XWYni", "duration": 10, "reference": 0.454389373657194}, {"attribute": "9ecEqgwx", "criteria": "5hGqDk0y", "duration": 69, "reference": 0.09256134053974807}, {"attribute": "g0ScIIqD", "criteria": "fHDxD705", "duration": 96, "reference": 0.301343118359804}], "match_options": {"options": [{"name": "gDEFlCSi", "type": "M6QeG9bi"}, {"name": "LoXH5Ntd", "type": "ipplr3Wy"}, {"name": "z0AeL0Pv", "type": "Q4QYw2Yr"}]}, "matchingRules": [{"attribute": "m5BirKOm", "criteria": "0BP1zB9P", "reference": 0.9733468838293916}, {"attribute": "g5RcEfk7", "criteria": "RnXPeDDj", "reference": 0.7191449765268965}, {"attribute": "ULcZjcdP", "criteria": "two4VBaH", "reference": 0.4005980234039691}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 74, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'hzTdnWkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'GY9skuq2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'qqOYdPNp' \
    --matchID 'crxf9cwE' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["M25FZM9T", "mxdGRJNl", "KcNBPOJq"], "party_id": "GVuuwvdR", "user_id": "OPfPWB8V"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Dm1ewyO1' \
    --matchID 'gUZldBUE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '4ZCNsLRL' \
    --matchID 'NtzO7O4s' \
    --namespace $AB_NAMESPACE \
    --userID 'BCbCPMPW' \
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
    --channelName 'oXClFVdK' \
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