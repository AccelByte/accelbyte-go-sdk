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
    --limit '95' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "asYzOKR7", "description": "FG5knn3X", "find_match_timeout_seconds": 83, "game_mode": "2qkF0S4c", "joinable": false, "max_delay_ms": 46, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 21, "name": "ZrFUaRoD"}, {"max": 55, "min": 41, "name": "l1Riet5M"}, {"max": 11, "min": 45, "name": "3gVrZ4LZ"}], "has_combination": false}, "max_number": 96, "min_number": 100, "player_max_number": 83, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 63, "min": 71, "name": "KPHzNXjR"}, {"max": 47, "min": 43, "name": "L4kqNHYy"}, {"max": 28, "min": 12, "name": "f9F1UzRi"}], "has_combination": false}, "duration": 44, "max_number": 14, "min_number": 2, "player_max_number": 79, "player_min_number": 30}, {"combination": {"alliances": [{"max": 85, "min": 43, "name": "XvWao2aH"}, {"max": 42, "min": 54, "name": "E1bP9Wwf"}, {"max": 91, "min": 29, "name": "XV1H72pf"}], "has_combination": false}, "duration": 30, "max_number": 38, "min_number": 72, "player_max_number": 51, "player_min_number": 32}, {"combination": {"alliances": [{"max": 1, "min": 55, "name": "aVNJ5gw1"}, {"max": 47, "min": 29, "name": "NFQ1Tqxr"}, {"max": 26, "min": 72, "name": "iXMTBMBB"}], "has_combination": true}, "duration": 100, "max_number": 15, "min_number": 1, "player_max_number": 85, "player_min_number": 21}], "flexing_rule": [{"attribute": "J4XGwunB", "criteria": "zJuA7JCr", "duration": 38, "reference": 0.025861148897838415}, {"attribute": "JuhAA5C0", "criteria": "z9ZX3V08", "duration": 90, "reference": 0.403190018078576}, {"attribute": "GXJcNAun", "criteria": "vsHrGdwn", "duration": 6, "reference": 0.809527841275884}], "match_options": {"options": [{"name": "yj8rDL4V", "type": "WsWiFkYi"}, {"name": "fJ5fGAcc", "type": "far87L9X"}, {"name": "ptkrMvsE", "type": "SvQ0xYrA"}]}, "matching_rule": [{"attribute": "HJMMez1B", "criteria": "4VLABUf8", "reference": 0.6163760669225641}, {"attribute": "RWiSXfj3", "criteria": "TyhgAwNL", "reference": 0.13883500216455835}, {"attribute": "9BuxzL0R", "criteria": "mFbasjiq", "reference": 0.7954628591074567}], "sub_game_modes": {"PWZFp5EF": {"alliance": {"combination": {"alliances": [{"max": 12, "min": 84, "name": "7QipKS8Q"}, {"max": 10, "min": 51, "name": "DRc6MyQ6"}, {"max": 19, "min": 47, "name": "G8hkpEeb"}], "has_combination": true}, "max_number": 34, "min_number": 48, "player_max_number": 49, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 16, "name": "jJbPxpro"}, {"max": 77, "min": 4, "name": "q7yhi9HY"}, {"max": 38, "min": 26, "name": "tiM5sS9F"}], "has_combination": false}, "duration": 24, "max_number": 46, "min_number": 80, "player_max_number": 29, "player_min_number": 5}, {"combination": {"alliances": [{"max": 98, "min": 54, "name": "YYXrXV5A"}, {"max": 41, "min": 40, "name": "sOl0gnK3"}, {"max": 63, "min": 13, "name": "kAkE2OLA"}], "has_combination": false}, "duration": 79, "max_number": 73, "min_number": 20, "player_max_number": 33, "player_min_number": 14}, {"combination": {"alliances": [{"max": 65, "min": 2, "name": "jbEUdCMn"}, {"max": 79, "min": 12, "name": "C1eJ3RoG"}, {"max": 46, "min": 98, "name": "F0cPxHkc"}], "has_combination": false}, "duration": 15, "max_number": 42, "min_number": 26, "player_max_number": 66, "player_min_number": 18}], "name": "TTKFkoAW"}, "mGYG2hG8": {"alliance": {"combination": {"alliances": [{"max": 9, "min": 77, "name": "KOikn2fI"}, {"max": 72, "min": 64, "name": "o71DzDoB"}, {"max": 5, "min": 69, "name": "AGonRps1"}], "has_combination": true}, "max_number": 20, "min_number": 62, "player_max_number": 86, "player_min_number": 59}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 52, "min": 73, "name": "ex67OyLp"}, {"max": 51, "min": 54, "name": "ccKrz1f4"}, {"max": 55, "min": 86, "name": "HwvHxAqS"}], "has_combination": false}, "duration": 100, "max_number": 81, "min_number": 79, "player_max_number": 55, "player_min_number": 22}, {"combination": {"alliances": [{"max": 55, "min": 32, "name": "oYX7Lltp"}, {"max": 72, "min": 68, "name": "aZ2nfoJk"}, {"max": 82, "min": 87, "name": "mhtaqRuV"}], "has_combination": true}, "duration": 14, "max_number": 1, "min_number": 10, "player_max_number": 31, "player_min_number": 98}, {"combination": {"alliances": [{"max": 7, "min": 61, "name": "GdhPVDnZ"}, {"max": 25, "min": 62, "name": "Yby4DuCB"}, {"max": 36, "min": 5, "name": "3imw6Oaw"}], "has_combination": false}, "duration": 54, "max_number": 32, "min_number": 43, "player_max_number": 87, "player_min_number": 3}], "name": "QX8WG4S2"}, "aqnMaN4f": {"alliance": {"combination": {"alliances": [{"max": 14, "min": 35, "name": "ku0tgIDa"}, {"max": 50, "min": 71, "name": "FMZKAcVe"}, {"max": 97, "min": 95, "name": "dbpxynj6"}], "has_combination": false}, "max_number": 20, "min_number": 27, "player_max_number": 82, "player_min_number": 27}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 9, "min": 9, "name": "jGwGI8Se"}, {"max": 69, "min": 42, "name": "NEjt5Qdk"}, {"max": 86, "min": 92, "name": "OYXWqUYQ"}], "has_combination": false}, "duration": 25, "max_number": 13, "min_number": 26, "player_max_number": 20, "player_min_number": 31}, {"combination": {"alliances": [{"max": 37, "min": 71, "name": "GdGDSLg5"}, {"max": 61, "min": 68, "name": "pHjJ0pRS"}, {"max": 96, "min": 7, "name": "IKQDoRbX"}], "has_combination": false}, "duration": 66, "max_number": 35, "min_number": 100, "player_max_number": 20, "player_min_number": 56}, {"combination": {"alliances": [{"max": 42, "min": 4, "name": "x9I9fOwm"}, {"max": 84, "min": 19, "name": "Ji3pfoX7"}, {"max": 64, "min": 68, "name": "kv7wkxi6"}], "has_combination": true}, "duration": 35, "max_number": 59, "min_number": 31, "player_max_number": 18, "player_min_number": 45}], "name": "Mvq6F6xx"}}}, "session_queue_timeout_seconds": 55, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'PMQrt0ZI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "lUiB5Ois", "players": [{"results": [{"attribute": "lFZ6WIcA", "value": 0.7289580621744214}, {"attribute": "sXI1B93A", "value": 0.7570533592443196}, {"attribute": "HNIsgfGY", "value": 0.516398776526327}], "user_id": "01LO04ur"}, {"results": [{"attribute": "ZdfDhFG7", "value": 0.9880144699985725}, {"attribute": "hAeY8M4w", "value": 0.46036812599411514}, {"attribute": "7kmzTvlI", "value": 0.9844635884876053}], "user_id": "ldLWMGUG"}, {"results": [{"attribute": "u4g5WKBo", "value": 0.7465069625497178}, {"attribute": "sVefNWqq", "value": 0.7453708311181728}, {"attribute": "yoDeRby0", "value": 0.2943662450723137}], "user_id": "9ZTNQ0NJ"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "7FarC0f3"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "NLJ4MthU", "client_version": "oqYgM3RI", "deployment": "QR38xLOn", "game_mode": "ggv4TChC", "joinable": false, "match_id": "pmulBZHX", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 67, "party_attributes": {"U3b7Qvwe": {}, "vnic2Jp2": {}, "GeCmLLhd": {}}, "party_id": "G2ZpYXNh", "party_members": [{"extra_attributes": {"C9WCsg5H": {}, "isroodeg": {}, "L1AF3z47": {}}, "user_id": "5pIxqi6Q"}, {"extra_attributes": {"Gqyx1vxu": {}, "63Xx2sAn": {}, "ZfC6IdTv": {}}, "user_id": "fQqXGK7h"}, {"extra_attributes": {"UawfZWeU": {}, "MatkC5Cx": {}, "cd21nTUl": {}}, "user_id": "ETl7cE6W"}]}, {"first_ticket_created_at": 6, "party_attributes": {"oHZLvRdU": {}, "YEZRbxKz": {}, "ml6pqgs0": {}}, "party_id": "kn8KJtMN", "party_members": [{"extra_attributes": {"izvwUgSX": {}, "YGdf7qtn": {}, "TziC08hU": {}}, "user_id": "BU1tC6To"}, {"extra_attributes": {"Di0hNbt3": {}, "jAcw2dBn": {}, "NxM6UKzx": {}}, "user_id": "FVQutoDr"}, {"extra_attributes": {"gmIuVcLl": {}, "5A0rbBUi": {}, "RJTwRVIW": {}}, "user_id": "mYJbRLen"}]}, {"first_ticket_created_at": 65, "party_attributes": {"cDhKUCb3": {}, "WBy2Ezoz": {}, "zWD2QSGJ": {}}, "party_id": "nYiz300R", "party_members": [{"extra_attributes": {"tVGmUGUa": {}, "VkNkgoQY": {}, "SaCpoYR0": {}}, "user_id": "FrjrbhBu"}, {"extra_attributes": {"zv7W2p0Z": {}, "JUAsG08C": {}, "ggmnzn6j": {}}, "user_id": "2rnwwk9M"}, {"extra_attributes": {"ptjoZ0U5": {}, "uc1FJ6PN": {}, "5VYWwzE5": {}}, "user_id": "ucnQ42tu"}]}]}, {"matching_parties": [{"first_ticket_created_at": 29, "party_attributes": {"cun0LAhj": {}, "gwitCABM": {}, "EMcBnHqG": {}}, "party_id": "ZKQyR1e4", "party_members": [{"extra_attributes": {"vFncOSBq": {}, "33qlsHul": {}, "CS6YdRCV": {}}, "user_id": "hmDpk60f"}, {"extra_attributes": {"zY45bbAb": {}, "7epBQklp": {}, "X13aA5od": {}}, "user_id": "nG7CyAZQ"}, {"extra_attributes": {"wKhBtppz": {}, "A8TXnOaG": {}, "6qSCCcZR": {}}, "user_id": "pImvJtFA"}]}, {"first_ticket_created_at": 34, "party_attributes": {"lgBdoi6a": {}, "kePSlgWO": {}, "9XKh0pxi": {}}, "party_id": "DEPmjdzW", "party_members": [{"extra_attributes": {"JHqCayue": {}, "0V9Qfi90": {}, "0OkWsGm5": {}}, "user_id": "HF0Be22I"}, {"extra_attributes": {"MdHfyrDx": {}, "Tk9kOpIw": {}, "4oXt0sjj": {}}, "user_id": "af7mLfar"}, {"extra_attributes": {"hdRjB1RZ": {}, "2RS8YacR": {}, "XbYZ1LE4": {}}, "user_id": "jWaugifw"}]}, {"first_ticket_created_at": 82, "party_attributes": {"5nais7X6": {}, "f1ySX92P": {}, "xi4D2Vvv": {}}, "party_id": "5Tqs9Hld", "party_members": [{"extra_attributes": {"koSoUVUR": {}, "4bJZTGtf": {}, "MoKWHfU6": {}}, "user_id": "qhpcLdFd"}, {"extra_attributes": {"H0TIJmku": {}, "9Pi6twFF": {}, "RKLzfN7q": {}}, "user_id": "cV2fFojc"}, {"extra_attributes": {"4kXCbAQO": {}, "XSiXogJc": {}, "7u5d6gDq": {}}, "user_id": "tFdhMc14"}]}]}, {"matching_parties": [{"first_ticket_created_at": 36, "party_attributes": {"3yLk5Xt4": {}, "kPI9slQO": {}, "o08EvftT": {}}, "party_id": "bkzgFWw0", "party_members": [{"extra_attributes": {"Q6cGYCFI": {}, "IJc9YKod": {}, "UMJyYZEH": {}}, "user_id": "0sgQYzXd"}, {"extra_attributes": {"WC2uMtxW": {}, "zkdEPnDp": {}, "jvBxJ8NP": {}}, "user_id": "WroAg6jA"}, {"extra_attributes": {"Ll4l31xB": {}, "oXGci7y5": {}, "46pZgRZx": {}}, "user_id": "uiESJf9k"}]}, {"first_ticket_created_at": 41, "party_attributes": {"YNr1qbHf": {}, "gnjnotqk": {}, "G4WfzzhF": {}}, "party_id": "05jsLfmY", "party_members": [{"extra_attributes": {"jX2xfhu9": {}, "Skyy9LtM": {}, "6SErY3jU": {}}, "user_id": "TNZqQPkG"}, {"extra_attributes": {"37aTBha2": {}, "jHDK6xrV": {}, "g3m6D4G9": {}}, "user_id": "CdyP2H58"}, {"extra_attributes": {"wOqT6jPQ": {}, "ULiKMTFR": {}, "qhK3D3d3": {}}, "user_id": "h5MGixBE"}]}, {"first_ticket_created_at": 94, "party_attributes": {"kSfHzG2q": {}, "XxI3Tmo5": {}, "sNZKNRzH": {}}, "party_id": "wkvZCfhh", "party_members": [{"extra_attributes": {"Y36h6iA3": {}, "0FlyyNyx": {}, "O9pZiL3B": {}}, "user_id": "1kCaF2P9"}, {"extra_attributes": {"2mwLwBD6": {}, "ESY4xbXf": {}, "iibxUfTn": {}}, "user_id": "jdFxU9iV"}, {"extra_attributes": {"2V0pBhAd": {}, "S7NA2Olm": {}, "wNDZtvSG": {}}, "user_id": "DI3PYmkJ"}]}]}], "namespace": "atKH50JJ", "party_attributes": {"wOvN4h24": {}, "rICCTY71": {}, "WJk7bLF1": {}}, "party_id": "e0NXKtgD", "queued_at": 43, "region": "pz43Te8j", "server_name": "9C7keXeG", "status": "H4w3Nc71", "updated_at": "1980-05-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "7G1Gyu0Z"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'LRAO5PE9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 1, "userID": "tFFPO2zn", "weight": 0.23612205567458067}' \
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
    --matchIDs 'X2mUFl4J' \
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
    --strategy '0dHldyKM' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'CnyFdV8e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'GFv4qqGC' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "CzkKzSOX", "description": "yrZiyC5F", "findMatchTimeoutSeconds": 9, "joinable": false, "max_delay_ms": 26, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 83, "name": "Xs3CR40f"}, {"max": 3, "min": 87, "name": "NZ1KsIYX"}, {"max": 70, "min": 72, "name": "AJtwNr88"}], "has_combination": false}, "maxNumber": 30, "minNumber": 57, "playerMaxNumber": 9, "playerMinNumber": 51}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 20, "min": 61, "name": "zanex3rs"}, {"max": 52, "min": 53, "name": "qtxGCSDb"}, {"max": 90, "min": 2, "name": "O2GlOio4"}], "has_combination": false}, "duration": 99, "max_number": 41, "min_number": 80, "player_max_number": 52, "player_min_number": 24}, {"combination": {"alliances": [{"max": 83, "min": 30, "name": "gpa9cwbq"}, {"max": 13, "min": 1, "name": "8Jg4MpRs"}, {"max": 59, "min": 78, "name": "jmv9ZGLQ"}], "has_combination": false}, "duration": 39, "max_number": 18, "min_number": 4, "player_max_number": 100, "player_min_number": 43}, {"combination": {"alliances": [{"max": 63, "min": 91, "name": "BfqE3inH"}, {"max": 18, "min": 9, "name": "PWpEVZCe"}, {"max": 29, "min": 88, "name": "ezHgyzvw"}], "has_combination": true}, "duration": 78, "max_number": 65, "min_number": 47, "player_max_number": 92, "player_min_number": 6}], "flexingRules": [{"attribute": "T7kF2Yyd", "criteria": "BCWxXo1j", "duration": 68, "reference": 0.5264685506243285}, {"attribute": "SLzz66v7", "criteria": "lhZJQb3P", "duration": 33, "reference": 0.20472767960437965}, {"attribute": "pVB1Ggep", "criteria": "VofVzNOP", "duration": 36, "reference": 0.5172890867592224}], "match_options": {"options": [{"name": "5vBqiEyE", "type": "Z7lwzAt0"}, {"name": "OoEhcPoy", "type": "GvTcbLWt"}, {"name": "xB2Cpdf6", "type": "iF4ya6cp"}]}, "matchingRules": [{"attribute": "INS78b0L", "criteria": "qiJ3ZT4d", "reference": 0.34281710900059215}, {"attribute": "wgq71CuE", "criteria": "pHbTQsHR", "reference": 0.9849223192982401}, {"attribute": "HhGz8ouO", "criteria": "TtSaNb0N", "reference": 0.24219341590701304}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 93, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'CKSaPBn9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '5B5TIWJN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'xQRzMQMu' \
    --matchID 'd0bXeUSM' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["H5IziU5o", "mUifrql9", "nEmbdwaI"], "party_id": "w5ZJ1e9A", "user_id": "QoKl4J54"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '8ku8uKvX' \
    --matchID 'Xgw3Sqds' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'FJjJOEpO' \
    --matchID 'H3EJM1al' \
    --namespace $AB_NAMESPACE \
    --userID 'PuStIpUt' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel 'Web1suGB' \
    --deleted 'true' \
    --matchID 'BNv76usf' \
    --partyID 'j2oF0d7p' \
    --userID 'HsmBIuu7' \
    --limit '87' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'PaJaHaLK' \
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
    --channelName 'JC4xGgBr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'WbEulnCU' \
    --deleted 'true' \
    --matchID 'hvvIGEla' \
    --partyID '7FV0hxny' \
    --userID 'tuU92CmD' \
    --limit '2' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE