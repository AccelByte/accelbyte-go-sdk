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
    --limit '49' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "3Ec9IcWb", "description": "ciLZtx1X", "find_match_timeout_seconds": 23, "game_mode": "AZCxnMWW", "joinable": false, "max_delay_ms": 23, "rule_set": {"alliance": {"max_number": 18, "min_number": 66, "player_max_number": 24, "player_min_number": 61}, "alliance_flexing_rule": [{"duration": 60, "max_number": 59, "min_number": 74, "player_max_number": 59, "player_min_number": 98}, {"duration": 83, "max_number": 66, "min_number": 7, "player_max_number": 33, "player_min_number": 53}, {"duration": 66, "max_number": 90, "min_number": 59, "player_max_number": 91, "player_min_number": 55}], "flexing_rule": [{"attribute": "fTXW2QGd", "criteria": "zVFEy57d", "duration": 77, "reference": 0.6348380364742555}, {"attribute": "Fu4w4Vyw", "criteria": "AljnvkLw", "duration": 9, "reference": 0.6719079742807684}, {"attribute": "MgM3wGCa", "criteria": "CWDGncFy", "duration": 40, "reference": 0.10233484269244164}], "match_options": {"options": [{"name": "HOZcGhHR", "type": "EcNLcRz6"}, {"name": "EVhDnBlS", "type": "JDfpcAFq"}, {"name": "rtSZz629", "type": "5nD7Ccsk"}]}, "matching_rule": [{"attribute": "deQOeCDz", "criteria": "Z7UeM8BI", "reference": 0.6217236552444022}, {"attribute": "GnXgo2Yn", "criteria": "MT1uqa9X", "reference": 0.8705953312985992}, {"attribute": "Ahfnd05v", "criteria": "0nR938xO", "reference": 0.579448658608893}], "sub_game_modes": {"DK3KfsrU": {"alliance": {"max_number": 54, "min_number": 79, "player_max_number": 28, "player_min_number": 15}, "alliance_flexing_rule": [{"duration": 12, "max_number": 44, "min_number": 98, "player_max_number": 43, "player_min_number": 81}, {"duration": 5, "max_number": 57, "min_number": 5, "player_max_number": 45, "player_min_number": 23}, {"duration": 11, "max_number": 15, "min_number": 39, "player_max_number": 56, "player_min_number": 89}], "name": "VpuuKddG"}, "kmfar6r6": {"alliance": {"max_number": 100, "min_number": 18, "player_max_number": 6, "player_min_number": 75}, "alliance_flexing_rule": [{"duration": 85, "max_number": 19, "min_number": 65, "player_max_number": 18, "player_min_number": 68}, {"duration": 1, "max_number": 7, "min_number": 91, "player_max_number": 20, "player_min_number": 83}, {"duration": 35, "max_number": 20, "min_number": 98, "player_max_number": 31, "player_min_number": 71}], "name": "ozhVtHNn"}, "PYfp4lxh": {"alliance": {"max_number": 36, "min_number": 44, "player_max_number": 26, "player_min_number": 55}, "alliance_flexing_rule": [{"duration": 24, "max_number": 62, "min_number": 58, "player_max_number": 46, "player_min_number": 70}, {"duration": 5, "max_number": 11, "min_number": 52, "player_max_number": 83, "player_min_number": 79}, {"duration": 70, "max_number": 79, "min_number": 1, "player_max_number": 49, "player_min_number": 67}], "name": "YmfTOCAq"}}}, "session_queue_timeout_seconds": 100, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'gfNiuSPW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Atq7m3E0", "players": [{"results": [{"attribute": "fNyXCwQp", "value": 0.7227196132795835}, {"attribute": "WvP572MY", "value": 0.4396305297231162}, {"attribute": "1Q3ddFjr", "value": 0.9802559917711015}], "user_id": "xfBGMuBY"}, {"results": [{"attribute": "p5TMe9jb", "value": 0.058156669804740435}, {"attribute": "vEgspgqA", "value": 0.4255301846412898}, {"attribute": "pbBKrPz4", "value": 0.6301354236966986}], "user_id": "yi35T1Eh"}, {"results": [{"attribute": "oOqJugwV", "value": 0.842404364260611}, {"attribute": "hWTCoIhH", "value": 0.5270686264163144}, {"attribute": "j4zax9dp", "value": 0.9144964043433985}], "user_id": "3e0kVHoC"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "HL9hBwXe"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "UZRmDL8J", "client_version": "AwlByRiT", "deployment": "Sozv7gNH", "game_mode": "tbJ50ybS", "joinable": true, "match_id": "y95zgypX", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"vrYJktyD": {}, "Qyg3wzm1": {}, "MUf1N3zN": {}}, "party_id": "fZPTlqKD", "party_members": [{"extra_attributes": {"wYcgbzFo": {}, "XHgL1aXV": {}, "DISPJal9": {}}, "user_id": "1jH4Lrcp"}, {"extra_attributes": {"4pN2JTgK": {}, "tn7WItbK": {}, "pjffEuu7": {}}, "user_id": "h610DlLN"}, {"extra_attributes": {"W0fbnmuq": {}, "yzRj6oou": {}, "xDpO20fZ": {}}, "user_id": "tNpfMflY"}]}, {"first_ticket_created_at": 67, "party_attributes": {"IuokoQGC": {}, "qVyjJUGp": {}, "KbdkGHrb": {}}, "party_id": "4cXQa2ka", "party_members": [{"extra_attributes": {"5KQ5QOVu": {}, "lVgPGB8P": {}, "GgjQuD18": {}}, "user_id": "9YdcTw7g"}, {"extra_attributes": {"HXFvixmc": {}, "yugJIGZl": {}, "MplNv566": {}}, "user_id": "IEYeTJLp"}, {"extra_attributes": {"tbIEfov8": {}, "RMGQU5XN": {}, "mrCg67ua": {}}, "user_id": "zdZJMY83"}]}, {"first_ticket_created_at": 83, "party_attributes": {"t5UF01BJ": {}, "ZKGjvBqr": {}, "HNZwoqHb": {}}, "party_id": "FmGP4344", "party_members": [{"extra_attributes": {"1SjGeHoP": {}, "NdsyUx8z": {}, "NNS007Z3": {}}, "user_id": "UHzpvHX5"}, {"extra_attributes": {"1bwc9PxY": {}, "IVl36m8z": {}, "bJwVNZqD": {}}, "user_id": "qgancpfA"}, {"extra_attributes": {"1R1Xt4HK": {}, "RwHsnf6N": {}, "S81A4tCm": {}}, "user_id": "FiVBXgUC"}]}]}, {"matching_parties": [{"first_ticket_created_at": 67, "party_attributes": {"i4Vve8tu": {}, "nBAH05bh": {}, "5ttj6V6E": {}}, "party_id": "Un284Dus", "party_members": [{"extra_attributes": {"dUXoZjIA": {}, "JhCnUGwd": {}, "Mr1ahoql": {}}, "user_id": "a7TtJlOe"}, {"extra_attributes": {"tfoOIaFj": {}, "9jOmZOAC": {}, "br7f6Fqv": {}}, "user_id": "DMbsP1EW"}, {"extra_attributes": {"eK5oGn5N": {}, "wLyBOXvy": {}, "tlCSRNKa": {}}, "user_id": "pyrXWfnf"}]}, {"first_ticket_created_at": 68, "party_attributes": {"zDXCK6Ds": {}, "zsrFgenY": {}, "7y78Gkgf": {}}, "party_id": "DJekMjA2", "party_members": [{"extra_attributes": {"e1V6POgj": {}, "D32jNiVp": {}, "ekNaT5JJ": {}}, "user_id": "vPGzDc17"}, {"extra_attributes": {"RHyrvYIZ": {}, "mCEkcpBp": {}, "ycczvkch": {}}, "user_id": "W92J0I3A"}, {"extra_attributes": {"N5tyrPZ9": {}, "iJg1IIdM": {}, "SKMAqKcx": {}}, "user_id": "pNsEoVZg"}]}, {"first_ticket_created_at": 92, "party_attributes": {"BcYOg76m": {}, "NdFQWipD": {}, "eD7ySBgv": {}}, "party_id": "ZJJtJpHp", "party_members": [{"extra_attributes": {"V7fVE6sx": {}, "FQ28maM6": {}, "Q3z8UsSn": {}}, "user_id": "v9mPWOLs"}, {"extra_attributes": {"3duI1rVg": {}, "EOiPAXYz": {}, "0zBpnI7a": {}}, "user_id": "Iq0fbVcA"}, {"extra_attributes": {"garWAm7Y": {}, "LXOYF5yX": {}, "Swo6qsn2": {}}, "user_id": "ED3qhq2a"}]}]}, {"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"1T42eI5f": {}, "NWv10hNv": {}, "HKNdKvXd": {}}, "party_id": "R8fFsmpz", "party_members": [{"extra_attributes": {"32HGybd3": {}, "squkNC3K": {}, "YVomfrwK": {}}, "user_id": "Wl3SggmM"}, {"extra_attributes": {"0fnRD14Z": {}, "VEs6SdAu": {}, "Cr2fB7KT": {}}, "user_id": "2PQNiVvU"}, {"extra_attributes": {"eRccy0tX": {}, "0bPVc5WT": {}, "0lVNjUNI": {}}, "user_id": "K3M3WrUj"}]}, {"first_ticket_created_at": 14, "party_attributes": {"s7cb9j27": {}, "3Wzk3iJ4": {}, "Fg2USVMz": {}}, "party_id": "B0C9Oq3T", "party_members": [{"extra_attributes": {"NtOuQTPJ": {}, "NOF9a3Nu": {}, "oreYNMAy": {}}, "user_id": "OoGm9txx"}, {"extra_attributes": {"5Y9V79EK": {}, "f80HPBQl": {}, "gAXkblSR": {}}, "user_id": "MyrYVW5l"}, {"extra_attributes": {"LhI26pg6": {}, "i0R65mH4": {}, "XlgrE7Uv": {}}, "user_id": "en906RAA"}]}, {"first_ticket_created_at": 2, "party_attributes": {"ZuOPC3Wx": {}, "WciRExKe": {}, "dHzdlxxD": {}}, "party_id": "fJmQm6hh", "party_members": [{"extra_attributes": {"0Uxx89JS": {}, "uYQmhXHT": {}, "uY7dcRz0": {}}, "user_id": "hHRJnWuW"}, {"extra_attributes": {"omZJ4j4a": {}, "w1Xnge7g": {}, "BYtRwWyX": {}}, "user_id": "ttSLjkD4"}, {"extra_attributes": {"RZqkrxli": {}, "kQbba3h8": {}, "CP06yfBf": {}}, "user_id": "08okJ8Cu"}]}]}], "namespace": "eYlLvyEM", "party_attributes": {"TRdzwfCb": {}, "8dQaEGtZ": {}, "CcaLBslK": {}}, "party_id": "DZnxmj5N", "queued_at": 43, "region": "R5OIlq1x", "server_name": "nrQfS4xd", "status": "qdjE9qoG", "updated_at": "1994-11-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "WCb7R1T6"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Cs2dxIL5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 28, "userID": "JbVw9Rzv", "weight": 0.6487655109627907}' \
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
    --matchIDs 'iXMRlMCZ' \
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
    --strategy 'Amckh4En' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'E9kcluUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'AWRBP5C4' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "dJe3x9tX", "description": "uyTckzhw", "findMatchTimeoutSeconds": 40, "joinable": true, "max_delay_ms": 8, "ruleSet": {"alliance": {"maxNumber": 11, "minNumber": 90, "playerMaxNumber": 100, "playerMinNumber": 44}, "alliance_flexing_rule": [{"duration": 73, "max_number": 55, "min_number": 42, "player_max_number": 62, "player_min_number": 94}, {"duration": 21, "max_number": 18, "min_number": 80, "player_max_number": 15, "player_min_number": 66}, {"duration": 6, "max_number": 45, "min_number": 51, "player_max_number": 59, "player_min_number": 38}], "flexingRules": [{"attribute": "z6WCdA9P", "criteria": "3u2nnayl", "duration": 50, "reference": 0.4739681244564866}, {"attribute": "LWGJe1QQ", "criteria": "y7c05MQt", "duration": 85, "reference": 0.5062409070712383}, {"attribute": "M20TL9Uy", "criteria": "JmpRa6iv", "duration": 91, "reference": 0.581942022768531}], "match_options": {"options": [{"name": "qlGGOYDu", "type": "Tx1gzlux"}, {"name": "eLtUHJdc", "type": "37zcZKIv"}, {"name": "tO02tIii", "type": "S5EaepB6"}]}, "matchingRules": [{"attribute": "AHg7sE6O", "criteria": "mWWS619h", "reference": 0.5467420397390849}, {"attribute": "w5OHfiZ9", "criteria": "treb6Mwr", "reference": 0.9431226049277517}, {"attribute": "GCd66I5r", "criteria": "lK65xktx", "reference": 0.5563432837179288}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 81, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'JEkMdPDf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'lqTxUkMa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '6VBE3yIO' \
    --matchID 'On4lDdna' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["adcJ2ABQ", "0Fn60s1d", "RUEjB1aK"], "party_id": "MYCsqjBu", "user_id": "y1X0kaQ0"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '9b7muIjB' \
    --matchID 'BePYM8BM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '7u98aYOe' \
    --matchID 'occCFazS' \
    --namespace $AB_NAMESPACE \
    --userID 'sgVR2xwA' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel '3f7IX7eQ' \
    --deleted 'false' \
    --matchID 'WtY9FF41' \
    --partyID 'eimjIJip' \
    --userID 'P1rSX6Ty' \
    --limit '86' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'TEQ7TmeD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

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
    --channelName 'PKutmRrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'tOFL7jLU' \
    --deleted 'false' \
    --matchID 'UZO7zyfT' \
    --partyID 'QyjWvIoR' \
    --userID 'U4QyaPR1' \
    --limit '66' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE