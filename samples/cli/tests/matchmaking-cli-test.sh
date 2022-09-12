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
    --limit '26' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "2lpV9ACf", "description": "CPvmKl16", "find_match_timeout_seconds": 17, "game_mode": "3QYGF0nf", "joinable": true, "max_delay_ms": 41, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 79, "min": 7, "name": "jXsIKbnO"}, {"max": 28, "min": 0, "name": "sfIG3D9f"}, {"max": 51, "min": 86, "name": "bHrzQqW5"}], "has_combination": false}, "max_number": 67, "min_number": 60, "player_max_number": 85, "player_min_number": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 66, "name": "VExCcg0m"}, {"max": 51, "min": 15, "name": "jXA3W4ax"}, {"max": 38, "min": 20, "name": "FQwWxkBR"}], "has_combination": true}, "duration": 74, "max_number": 12, "min_number": 27, "player_max_number": 100, "player_min_number": 70}, {"combination": {"alliances": [{"max": 75, "min": 88, "name": "IH6ZwAHP"}, {"max": 68, "min": 33, "name": "KGSBEIym"}, {"max": 54, "min": 1, "name": "l3OqUWv7"}], "has_combination": false}, "duration": 95, "max_number": 48, "min_number": 97, "player_max_number": 79, "player_min_number": 2}, {"combination": {"alliances": [{"max": 23, "min": 91, "name": "P2KKdLxh"}, {"max": 98, "min": 46, "name": "CFzPtC9W"}, {"max": 70, "min": 33, "name": "oP2ufrTv"}], "has_combination": true}, "duration": 9, "max_number": 31, "min_number": 91, "player_max_number": 62, "player_min_number": 18}], "flexing_rule": [{"attribute": "mROVcmEz", "criteria": "LOKFA4uT", "duration": 93, "reference": 0.2277676464863495}, {"attribute": "59tR7nRf", "criteria": "KmdsAehJ", "duration": 67, "reference": 0.32775314405857303}, {"attribute": "f1p8xWYC", "criteria": "YpkqUVIZ", "duration": 86, "reference": 0.45362112192104864}], "match_options": {"options": [{"name": "cda9JhjX", "type": "1O8mvfUs"}, {"name": "hO2HglVk", "type": "I3qro3og"}, {"name": "dpgBG8RO", "type": "EiaonWEz"}]}, "matching_rule": [{"attribute": "qle1gMkx", "criteria": "rpAdprKv", "reference": 0.14745655987492634}, {"attribute": "MU25EAM3", "criteria": "U8UzWpgR", "reference": 0.15157074374116197}, {"attribute": "DF4cNFxZ", "criteria": "AuclGRoT", "reference": 0.8079134690227185}], "sub_game_modes": {"yMdDj1Dw": {"alliance": {"combination": {"alliances": [{"max": 11, "min": 55, "name": "RJsDgJyE"}, {"max": 33, "min": 96, "name": "sv2CSMAO"}, {"max": 65, "min": 65, "name": "PSKIGNHj"}], "has_combination": false}, "max_number": 48, "min_number": 49, "player_max_number": 13, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 19, "min": 83, "name": "dgfdtduN"}, {"max": 46, "min": 46, "name": "mt2aGfpZ"}, {"max": 17, "min": 4, "name": "Qt7mfedn"}], "has_combination": false}, "duration": 1, "max_number": 50, "min_number": 93, "player_max_number": 86, "player_min_number": 21}, {"combination": {"alliances": [{"max": 89, "min": 96, "name": "G5HTlFro"}, {"max": 37, "min": 94, "name": "8MBimyxr"}, {"max": 47, "min": 59, "name": "1mkyvdt0"}], "has_combination": true}, "duration": 51, "max_number": 89, "min_number": 9, "player_max_number": 90, "player_min_number": 4}, {"combination": {"alliances": [{"max": 25, "min": 59, "name": "RbsRNs5p"}, {"max": 24, "min": 93, "name": "0XntGM9R"}, {"max": 51, "min": 61, "name": "ahQ1Q672"}], "has_combination": false}, "duration": 40, "max_number": 60, "min_number": 3, "player_max_number": 11, "player_min_number": 45}], "name": "Om6q3H4H"}, "qzQstqxv": {"alliance": {"combination": {"alliances": [{"max": 9, "min": 60, "name": "PqidEEV0"}, {"max": 35, "min": 73, "name": "eGN06iRI"}, {"max": 52, "min": 5, "name": "zVuAKIg4"}], "has_combination": true}, "max_number": 19, "min_number": 94, "player_max_number": 72, "player_min_number": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 39, "name": "bBuoZvH3"}, {"max": 36, "min": 55, "name": "tMotKSI9"}, {"max": 43, "min": 74, "name": "LdPE4PsF"}], "has_combination": true}, "duration": 28, "max_number": 93, "min_number": 60, "player_max_number": 32, "player_min_number": 89}, {"combination": {"alliances": [{"max": 66, "min": 18, "name": "MwDNK1qa"}, {"max": 13, "min": 70, "name": "MZM3yQhx"}, {"max": 46, "min": 39, "name": "yS3ol5n1"}], "has_combination": true}, "duration": 38, "max_number": 19, "min_number": 0, "player_max_number": 37, "player_min_number": 45}, {"combination": {"alliances": [{"max": 27, "min": 71, "name": "N9Bh39up"}, {"max": 9, "min": 78, "name": "k6Cl5kl5"}, {"max": 30, "min": 31, "name": "a5fACX5b"}], "has_combination": true}, "duration": 24, "max_number": 82, "min_number": 36, "player_max_number": 64, "player_min_number": 41}], "name": "O0UB17X8"}, "eaU1OlKm": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 7, "name": "HszyvXZN"}, {"max": 88, "min": 99, "name": "ri3PaBDT"}, {"max": 21, "min": 42, "name": "VLdZcjPy"}], "has_combination": false}, "max_number": 5, "min_number": 0, "player_max_number": 17, "player_min_number": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 36, "min": 26, "name": "9P7pe4N8"}, {"max": 98, "min": 89, "name": "S0gSaDn4"}, {"max": 66, "min": 39, "name": "2SNsKBEK"}], "has_combination": true}, "duration": 46, "max_number": 32, "min_number": 76, "player_max_number": 92, "player_min_number": 38}, {"combination": {"alliances": [{"max": 36, "min": 2, "name": "arTGWqE0"}, {"max": 58, "min": 54, "name": "ByKlA0n2"}, {"max": 66, "min": 60, "name": "vXXYx3Su"}], "has_combination": true}, "duration": 97, "max_number": 78, "min_number": 73, "player_max_number": 72, "player_min_number": 52}, {"combination": {"alliances": [{"max": 69, "min": 19, "name": "XZghz9dL"}, {"max": 16, "min": 58, "name": "nt48jBgn"}, {"max": 69, "min": 98, "name": "OsGY0Jmh"}], "has_combination": false}, "duration": 50, "max_number": 69, "min_number": 55, "player_max_number": 74, "player_min_number": 94}], "name": "SyrPKHZo"}}}, "session_queue_timeout_seconds": 86, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '1FEQcuAm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5r2uXR1s", "players": [{"results": [{"attribute": "oWEXLwvV", "value": 0.07746288819372837}, {"attribute": "Rmi1DVEY", "value": 0.22367527729447978}, {"attribute": "7Ko2A9q8", "value": 0.6510276048127727}], "user_id": "LffsG0w0"}, {"results": [{"attribute": "q4ryMqQK", "value": 0.9033979886920506}, {"attribute": "thmdMEwh", "value": 0.4624452645091598}, {"attribute": "r2olRDhL", "value": 0.16702325258792372}], "user_id": "oTuDnWfk"}, {"results": [{"attribute": "IkgiXNVm", "value": 0.36479144801007723}, {"attribute": "9srittc0", "value": 0.7721973539423944}, {"attribute": "9lziPm2N", "value": 0.9952699154937799}], "user_id": "iPnsLcuA"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "o33kxUJ7"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "zBLy39e4", "client_version": "S8z2eOXg", "deployment": "yh9D1c4e", "game_mode": "VV2PmQ9a", "joinable": false, "match_id": "ZjlIofOV", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 47, "party_attributes": {"sH52vMzX": {}, "73ryBgXj": {}, "v5dsFVMN": {}}, "party_id": "RNi77QzS", "party_members": [{"extra_attributes": {"Dz8xXQLj": {}, "6u5Sf79F": {}, "v9NUDIti": {}}, "user_id": "YVnKWOvV"}, {"extra_attributes": {"LnvL69Mg": {}, "8LrGpNRf": {}, "XFtzgTXz": {}}, "user_id": "Ce0KvK55"}, {"extra_attributes": {"PenHrArX": {}, "hZhhKDKU": {}, "yuAmt3jP": {}}, "user_id": "nnSUl5uU"}]}, {"first_ticket_created_at": 97, "party_attributes": {"WdXi7tc1": {}, "DlVCFNnC": {}, "HxHM0TIb": {}}, "party_id": "22QcDR1c", "party_members": [{"extra_attributes": {"vul1RErP": {}, "sbpfmCBA": {}, "Hv513j1Q": {}}, "user_id": "Sjq4GKFb"}, {"extra_attributes": {"f8PvAptO": {}, "T8MvOF7c": {}, "frEj08cj": {}}, "user_id": "qYTupWcq"}, {"extra_attributes": {"of0ijI83": {}, "gepO9EWH": {}, "X7RZYGtF": {}}, "user_id": "3m4vd6gd"}]}, {"first_ticket_created_at": 57, "party_attributes": {"OZ3l9Ffm": {}, "alsfs1un": {}, "IlpGErs2": {}}, "party_id": "hZgWzbKg", "party_members": [{"extra_attributes": {"bgul7Onv": {}, "LPKiEmA7": {}, "AAfNpmuo": {}}, "user_id": "5PFX5NHD"}, {"extra_attributes": {"BE07xNSh": {}, "N3OUM22I": {}, "4MKf0Xyx": {}}, "user_id": "IzdXYRGU"}, {"extra_attributes": {"Nu6mPKad": {}, "QgF5GOpC": {}, "MqHIhfnH": {}}, "user_id": "exkydg90"}]}]}, {"matching_parties": [{"first_ticket_created_at": 52, "party_attributes": {"HoUq201H": {}, "b7GARZl8": {}, "1T1H8m3A": {}}, "party_id": "sPy4esCT", "party_members": [{"extra_attributes": {"1vRMR1ez": {}, "8sB1qZF6": {}, "M7wWQ1Ze": {}}, "user_id": "dYhgj31z"}, {"extra_attributes": {"dDqsmy1X": {}, "Ml13zakr": {}, "lnESlyLs": {}}, "user_id": "2GP5UuAM"}, {"extra_attributes": {"rLyaXwpZ": {}, "XkiNR7xM": {}, "cpk3rCCn": {}}, "user_id": "7bYy2cEu"}]}, {"first_ticket_created_at": 76, "party_attributes": {"PLd5qnmS": {}, "u9mnvMq5": {}, "LKtL5bYN": {}}, "party_id": "oYS0Z2cR", "party_members": [{"extra_attributes": {"NOP4fPz5": {}, "2Ug6X6ha": {}, "hbqqmjEH": {}}, "user_id": "xzlFiJ3C"}, {"extra_attributes": {"mpaPQKL2": {}, "hkOCO79g": {}, "gvtop4YG": {}}, "user_id": "SOlA0uU9"}, {"extra_attributes": {"9DituIdx": {}, "cN3lJke4": {}, "C9ZkydVt": {}}, "user_id": "zKwUkyS7"}]}, {"first_ticket_created_at": 2, "party_attributes": {"WF6zJEbv": {}, "Wek3ErcV": {}, "5pB19uOz": {}}, "party_id": "ob1NbGSq", "party_members": [{"extra_attributes": {"SIXPxmqo": {}, "LEjEu6aw": {}, "8bRBa7wq": {}}, "user_id": "OlnVoN3h"}, {"extra_attributes": {"WghpSkUj": {}, "u3PJ7sSS": {}, "FQD9PRFC": {}}, "user_id": "z4kPJMe4"}, {"extra_attributes": {"Dormb6Kc": {}, "07pUXdG6": {}, "peMHYgTn": {}}, "user_id": "OnjFNxeE"}]}]}, {"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"Ag4QXqFK": {}, "KX4KQWGR": {}, "hys7YCxG": {}}, "party_id": "uEhPG3JY", "party_members": [{"extra_attributes": {"mZu3mMEX": {}, "UuMBJD7L": {}, "PwT8z7CO": {}}, "user_id": "9JhRNBMU"}, {"extra_attributes": {"c6DqeCur": {}, "0cqvRAVe": {}, "bQVcqqLK": {}}, "user_id": "RAL1LdEW"}, {"extra_attributes": {"b0wdmwB5": {}, "am5lA9YB": {}, "SXPW1nGh": {}}, "user_id": "HpL9RsgT"}]}, {"first_ticket_created_at": 36, "party_attributes": {"uyC3eRg6": {}, "ui389rYx": {}, "sbl0EVDK": {}}, "party_id": "xFqrIIR3", "party_members": [{"extra_attributes": {"tFnluQg6": {}, "kEgNZj0u": {}, "oHlRotY2": {}}, "user_id": "jNiucWhA"}, {"extra_attributes": {"TMsg4pds": {}, "MWcy0JWG": {}, "FBaELkEC": {}}, "user_id": "SiTRqzw9"}, {"extra_attributes": {"vwpj8zFT": {}, "Oxmrcg1x": {}, "da78bweV": {}}, "user_id": "7ivwFerL"}]}, {"first_ticket_created_at": 86, "party_attributes": {"vNsO8j48": {}, "JEB63nIW": {}, "UwO8boMs": {}}, "party_id": "yk1N9GQH", "party_members": [{"extra_attributes": {"zqSJqJqL": {}, "BuLTySxY": {}, "2WniM9fC": {}}, "user_id": "EYWTh0W6"}, {"extra_attributes": {"pdPfTVgZ": {}, "uZ1P8cuN": {}, "uBi1vTTi": {}}, "user_id": "8lLXBFtl"}, {"extra_attributes": {"WhGLiSBU": {}, "ypeCyBsd": {}, "L9RW1na6": {}}, "user_id": "8bG747HJ"}]}]}], "namespace": "upm6WZqM", "party_attributes": {"xJRq6n1c": {}, "vPQGwJvK": {}, "XWfacFYH": {}}, "party_id": "a1k3ZJN6", "queued_at": 73, "region": "1xMARULK", "server_name": "LtqNsnYO", "status": "jX0JKVm0", "updated_at": "1992-08-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kkotqbfM"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'rC78Q2Zd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 41, "userID": "ns3YrU7t", "weight": 0.04778524450378174}' \
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
    --matchIDs 'hQfi5S4u' \
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
    --strategy 'lT5x2pYI' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'SYpYaKaz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'RH0QGP8C' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "rfUA1OCg", "description": "PEbK7FuM", "findMatchTimeoutSeconds": 91, "joinable": true, "max_delay_ms": 50, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 98, "min": 47, "name": "IHPmDXEi"}, {"max": 1, "min": 91, "name": "OMPlXOsb"}, {"max": 45, "min": 26, "name": "kemczeoP"}], "has_combination": false}, "maxNumber": 83, "minNumber": 82, "playerMaxNumber": 37, "playerMinNumber": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 45, "min": 72, "name": "ilVXNCa5"}, {"max": 84, "min": 77, "name": "wWNAj76K"}, {"max": 61, "min": 4, "name": "eADDqzAL"}], "has_combination": false}, "duration": 51, "max_number": 29, "min_number": 46, "player_max_number": 82, "player_min_number": 63}, {"combination": {"alliances": [{"max": 65, "min": 94, "name": "msJcKoBa"}, {"max": 16, "min": 73, "name": "s8M7twix"}, {"max": 34, "min": 59, "name": "4fOzF0b7"}], "has_combination": true}, "duration": 65, "max_number": 43, "min_number": 94, "player_max_number": 45, "player_min_number": 83}, {"combination": {"alliances": [{"max": 34, "min": 33, "name": "xPrYRpBy"}, {"max": 81, "min": 79, "name": "PHVfQmgp"}, {"max": 75, "min": 17, "name": "GBOSeU8O"}], "has_combination": true}, "duration": 70, "max_number": 26, "min_number": 85, "player_max_number": 20, "player_min_number": 98}], "flexingRules": [{"attribute": "v2awmI1N", "criteria": "PNFxeVOp", "duration": 10, "reference": 0.06883192250383463}, {"attribute": "F42AYfup", "criteria": "nU5hAXXe", "duration": 80, "reference": 0.528435840657644}, {"attribute": "A3gkKZGq", "criteria": "uYGWbMWc", "duration": 57, "reference": 0.6463666131737595}], "match_options": {"options": [{"name": "95lk9IsM", "type": "Hjwj32Jy"}, {"name": "OWaIm06J", "type": "shRwZuQY"}, {"name": "1hAMoGth", "type": "ykLUsklT"}]}, "matchingRules": [{"attribute": "x93OVpol", "criteria": "wiRSy1Ky", "reference": 0.5878953184474882}, {"attribute": "ZLNPlds3", "criteria": "M1X7Mu5r", "reference": 0.27608385065639196}, {"attribute": "7Dgcc8bV", "criteria": "dRWZyX1M", "reference": 0.7284332672425974}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 41, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'IARDDpW9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'yPBIiZwD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'AiAFWoXy' \
    --matchID 'Lr4fitw0' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["Qn2LtEmX", "NEWA5cym", "T94GdUOI"], "party_id": "SOq9iNMS", "user_id": "oeE740T1"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Rcx1HXkl' \
    --matchID 'aluyqgmF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'nVQ9zyhM' \
    --matchID 'AusPzM1K' \
    --namespace $AB_NAMESPACE \
    --userID 'eZlhfUOH' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel '1H22JPS0' \
    --deleted 'false' \
    --matchID 'GN0ZmeH3' \
    --partyID '7jUSkvHF' \
    --userID 'lBjC8hHw' \
    --limit '97' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'B8v1mbjv' \
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
    --channelName 'TJZgWDAu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'SQkZzxej' \
    --deleted 'false' \
    --matchID 'SKLF8UD2' \
    --partyID 'iE4kagDg' \
    --userID 'Rdp74xPy' \
    --limit '26' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE