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
    --limit '6' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "rVR4kdvV", "description": "37dWqURG", "find_match_timeout_seconds": 14, "game_mode": "yPRQIJf6", "joinable": true, "max_delay_ms": 19, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 29, "min": 15, "name": "umNspLCn"}, {"max": 84, "min": 8, "name": "JeM793pf"}, {"max": 27, "min": 56, "name": "gV9scb7i"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 1}, "max_number": 69, "min_number": 80, "player_max_number": 32, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 37, "min": 44, "name": "WKYUIoiX"}, {"max": 90, "min": 58, "name": "hQiFGOpp"}, {"max": 40, "min": 22, "name": "cgIvGBg3"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 6}, "duration": 12, "max_number": 78, "min_number": 13, "player_max_number": 25, "player_min_number": 28}, {"combination": {"alliances": [{"max": 84, "min": 77, "name": "6YceTrZr"}, {"max": 28, "min": 6, "name": "sjCy6WNd"}, {"max": 89, "min": 31, "name": "tojC13JF"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 85}, "duration": 90, "max_number": 90, "min_number": 84, "player_max_number": 54, "player_min_number": 50}, {"combination": {"alliances": [{"max": 60, "min": 38, "name": "ZoNnS1ZU"}, {"max": 92, "min": 38, "name": "CHP79otC"}, {"max": 0, "min": 9, "name": "t2enXPZS"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 47}, "duration": 67, "max_number": 20, "min_number": 39, "player_max_number": 48, "player_min_number": 23}], "flexing_rule": [{"attribute": "e1phe0rf", "criteria": "Q1L7qYeg", "duration": 86, "reference": 0.45928193725595734}, {"attribute": "VuEBVL9m", "criteria": "MusI6FNj", "duration": 43, "reference": 0.25135163781529934}, {"attribute": "ml82mtSi", "criteria": "LfIlzOEE", "duration": 80, "reference": 0.11739627652743889}], "match_options": {"options": [{"name": "nYW2HrDK", "type": "fC502x0r"}, {"name": "uMIc66Z7", "type": "1BYKUrnV"}, {"name": "14PnApZO", "type": "eslgzlIs"}]}, "matching_rule": [{"attribute": "cPi11Cj4", "criteria": "sSHrnA2k", "reference": 0.6048256732258905}, {"attribute": "cmAWSCmh", "criteria": "oXy9YuxK", "reference": 0.3016985609007484}, {"attribute": "lmFCm4Je", "criteria": "j9rwqMxi", "reference": 0.813550022028999}], "sub_game_modes": {"3V6pWm6m": {"alliance": {"combination": {"alliances": [{"max": 21, "min": 98, "name": "yUYCjHEF"}, {"max": 11, "min": 62, "name": "OZeSFrVr"}, {"max": 56, "min": 33, "name": "jW1Ctv5i"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 63}, "max_number": 88, "min_number": 40, "player_max_number": 52, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 34, "name": "NF0MTEoh"}, {"max": 65, "min": 52, "name": "91YK86u0"}, {"max": 24, "min": 45, "name": "WwaIojmm"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 56}, "duration": 64, "max_number": 59, "min_number": 97, "player_max_number": 7, "player_min_number": 0}, {"combination": {"alliances": [{"max": 69, "min": 22, "name": "DaEgqzTA"}, {"max": 16, "min": 89, "name": "sxcE5ela"}, {"max": 3, "min": 59, "name": "XPnLYBns"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 52}, "duration": 47, "max_number": 27, "min_number": 46, "player_max_number": 76, "player_min_number": 88}, {"combination": {"alliances": [{"max": 93, "min": 60, "name": "wm3bvXUh"}, {"max": 96, "min": 28, "name": "GZz87s03"}, {"max": 58, "min": 53, "name": "hcWql61R"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 52}, "duration": 58, "max_number": 37, "min_number": 49, "player_max_number": 76, "player_min_number": 69}], "name": "FsGCiTmL"}, "nJZ1H788": {"alliance": {"combination": {"alliances": [{"max": 67, "min": 2, "name": "IZ8TsoGA"}, {"max": 63, "min": 44, "name": "NsaOfX5K"}, {"max": 7, "min": 87, "name": "CrXHI8Vp"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 99}, "max_number": 73, "min_number": 44, "player_max_number": 69, "player_min_number": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 45, "min": 19, "name": "B2JiZynN"}, {"max": 27, "min": 79, "name": "7nCZzddW"}, {"max": 94, "min": 33, "name": "eix6n1lu"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 74}, "duration": 94, "max_number": 15, "min_number": 21, "player_max_number": 100, "player_min_number": 43}, {"combination": {"alliances": [{"max": 31, "min": 22, "name": "I8lW4Pbn"}, {"max": 12, "min": 40, "name": "r0iR8LPM"}, {"max": 7, "min": 0, "name": "D8MNL1Ee"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 28}, "duration": 83, "max_number": 38, "min_number": 59, "player_max_number": 46, "player_min_number": 89}, {"combination": {"alliances": [{"max": 75, "min": 13, "name": "zdKvdSsl"}, {"max": 38, "min": 27, "name": "ewaMZx5O"}, {"max": 84, "min": 49, "name": "xQg2s9QI"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 47}, "duration": 68, "max_number": 82, "min_number": 16, "player_max_number": 5, "player_min_number": 93}], "name": "fuFHgfae"}, "UnZtTjYS": {"alliance": {"combination": {"alliances": [{"max": 21, "min": 37, "name": "nvTBcXxs"}, {"max": 11, "min": 0, "name": "lB5wH8Ga"}, {"max": 20, "min": 84, "name": "YegkMgv5"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 9}, "max_number": 76, "min_number": 9, "player_max_number": 3, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 2, "min": 11, "name": "uxE8L0Xp"}, {"max": 48, "min": 86, "name": "JdgAPHpU"}, {"max": 34, "min": 45, "name": "sZETlBNi"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 57}, "duration": 17, "max_number": 25, "min_number": 10, "player_max_number": 2, "player_min_number": 21}, {"combination": {"alliances": [{"max": 18, "min": 82, "name": "W2WciK2B"}, {"max": 98, "min": 22, "name": "SPC2tiou"}, {"max": 76, "min": 72, "name": "E3Etor08"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 17}, "duration": 13, "max_number": 84, "min_number": 31, "player_max_number": 45, "player_min_number": 18}, {"combination": {"alliances": [{"max": 99, "min": 45, "name": "z3jbXsiI"}, {"max": 65, "min": 16, "name": "PmuYqABx"}, {"max": 84, "min": 6, "name": "EoUV3w1T"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 42}, "duration": 47, "max_number": 78, "min_number": 100, "player_max_number": 66, "player_min_number": 0}], "name": "sjlbyRbY"}}}, "session_queue_timeout_seconds": 1, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'L4yMMEH7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "l5EF9Vfc", "players": [{"results": [{"attribute": "x7NIUvAV", "value": 0.14969253965358764}, {"attribute": "ZzozcAvg", "value": 0.03911948429791545}, {"attribute": "t4vT8XxI", "value": 0.2900914052366178}], "user_id": "JX35mS4N"}, {"results": [{"attribute": "1a5rs1uz", "value": 0.5075174560427816}, {"attribute": "5HOHmE0x", "value": 0.6584215421309473}, {"attribute": "PLNe1FtS", "value": 0.07431575172577065}], "user_id": "rWhdDLO2"}, {"results": [{"attribute": "ajfg1QVQ", "value": 0.20167253071422864}, {"attribute": "M27LrRDR", "value": 0.36270593573981014}, {"attribute": "hAkBZAwu", "value": 0.8387929885818508}], "user_id": "6QjiCxYK"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "AQAXBq7X"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "Tcm7H2LF", "client_version": "OBO4GLM4", "deployment": "9EaBeNoE", "game_mode": "ZUir0SYS", "joinable": false, "match_id": "5pa0f1DN", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 47, "party_attributes": {"l26G1FCr": {}, "p7lXi2tU": {}, "8Ieftbv5": {}}, "party_id": "E52OssPV", "party_members": [{"extra_attributes": {"V2vp3b9o": {}, "D1RlrQaP": {}, "sBeBonkQ": {}}, "user_id": "BDdA9yMf"}, {"extra_attributes": {"eRi4bcdv": {}, "Y9PKN08e": {}, "HjjA6aZl": {}}, "user_id": "VIRdROfd"}, {"extra_attributes": {"ChJSjtGA": {}, "IcsyAbt5": {}, "D0vTcp8b": {}}, "user_id": "ckW8WvOi"}], "ticket_id": "NR9ayLDH"}, {"first_ticket_created_at": 36, "party_attributes": {"4dj0ld9f": {}, "0IZwhAeD": {}, "ouN5R9yG": {}}, "party_id": "K78K0KqW", "party_members": [{"extra_attributes": {"hq2K76VS": {}, "KDWvXjEc": {}, "gzPX3m6n": {}}, "user_id": "MxpQaZ58"}, {"extra_attributes": {"KhxZ5zGZ": {}, "cR3Mr2BH": {}, "d7MFxa5J": {}}, "user_id": "ZQsRdcg4"}, {"extra_attributes": {"jCpjFPwZ": {}, "6oWyWyd9": {}, "68ilhBYQ": {}}, "user_id": "q2xQOgKX"}], "ticket_id": "N2vIexQl"}, {"first_ticket_created_at": 4, "party_attributes": {"9NosGSv9": {}, "LVNG3iKf": {}, "DgeQInMF": {}}, "party_id": "lFiJ5XEF", "party_members": [{"extra_attributes": {"h69bBTYB": {}, "Dy2EUnwV": {}, "BX6Ej15h": {}}, "user_id": "u46SZ2cU"}, {"extra_attributes": {"Sn6btsjZ": {}, "VzMSd4eJ": {}, "7QK3NIgK": {}}, "user_id": "ga3mOiaP"}, {"extra_attributes": {"a9T4YaF8": {}, "WbD7RpYe": {}, "TbU9QCvv": {}}, "user_id": "Yc0zag3T"}], "ticket_id": "paS3M2C7"}]}, {"matching_parties": [{"first_ticket_created_at": 21, "party_attributes": {"XK5PBfsq": {}, "tcEE0AHN": {}, "lALjSbmZ": {}}, "party_id": "IOTfg3mH", "party_members": [{"extra_attributes": {"5Xj8hvOD": {}, "comHANSM": {}, "UBDjTzES": {}}, "user_id": "1p9W7TIv"}, {"extra_attributes": {"2yBqwlDo": {}, "sKYzozzM": {}, "ipN0CF3W": {}}, "user_id": "xCbJPxb0"}, {"extra_attributes": {"zsi3BO2N": {}, "ReSD62mP": {}, "tUPpwhCt": {}}, "user_id": "oCcw0fa3"}], "ticket_id": "w05JO54S"}, {"first_ticket_created_at": 29, "party_attributes": {"CRlAFuv8": {}, "hPenqkOJ": {}, "9shUBLAX": {}}, "party_id": "oieQimJI", "party_members": [{"extra_attributes": {"klakCdB6": {}, "uuP0ssXg": {}, "af76y3Xy": {}}, "user_id": "iVERKOGo"}, {"extra_attributes": {"fTEmueAY": {}, "AkCFW5Wy": {}, "o6gpCS1R": {}}, "user_id": "6EpJbheI"}, {"extra_attributes": {"YnyxNkrN": {}, "EBw4XWsL": {}, "3Bagcts0": {}}, "user_id": "wNmvKjWV"}], "ticket_id": "Z2emc7RO"}, {"first_ticket_created_at": 94, "party_attributes": {"IDEqi9Oz": {}, "RxUIH4SR": {}, "HUQGd2sA": {}}, "party_id": "GcPNZCqF", "party_members": [{"extra_attributes": {"ubuSAorT": {}, "ze2KxI2p": {}, "omPRGFSf": {}}, "user_id": "K4gcMGgz"}, {"extra_attributes": {"Y0UoVtbA": {}, "YewLyXzL": {}, "JGGJmI2W": {}}, "user_id": "sgwLm1je"}, {"extra_attributes": {"D5z0cFKD": {}, "nqkJscff": {}, "v1DAHkd7": {}}, "user_id": "ZI8DFhw9"}], "ticket_id": "FMrbaP6V"}]}, {"matching_parties": [{"first_ticket_created_at": 12, "party_attributes": {"FURiX12R": {}, "cQXSfU4g": {}, "97YS2EBm": {}}, "party_id": "vVPH7HpT", "party_members": [{"extra_attributes": {"P52JquwY": {}, "OumHth5b": {}, "RXbvRPuj": {}}, "user_id": "FZxMswCi"}, {"extra_attributes": {"fXWJFw2o": {}, "WFZmqREV": {}, "2mhDKzIt": {}}, "user_id": "4WOpGrDI"}, {"extra_attributes": {"vsBEEzOz": {}, "5SL5WjIM": {}, "x9n19eAm": {}}, "user_id": "JIF5ZakZ"}], "ticket_id": "KMmEdLbv"}, {"first_ticket_created_at": 91, "party_attributes": {"MOpdpAFF": {}, "11Hh2DGq": {}, "6leHirQf": {}}, "party_id": "bcscOZI3", "party_members": [{"extra_attributes": {"sIQ0kS0S": {}, "2tclkX7f": {}, "nE0b8Md5": {}}, "user_id": "lHCiNMce"}, {"extra_attributes": {"oRdoQ8rC": {}, "a96JvICF": {}, "kQRNMdoc": {}}, "user_id": "NC0dlCBN"}, {"extra_attributes": {"goTKURKz": {}, "J1Zqa0ia": {}, "Y9slzFtz": {}}, "user_id": "zeXtzqzS"}], "ticket_id": "cQ5Y84x7"}, {"first_ticket_created_at": 58, "party_attributes": {"RPY8hJ20": {}, "IUhEzl5o": {}, "DkJ2CsHq": {}}, "party_id": "paGd4woy", "party_members": [{"extra_attributes": {"F0sq7rpZ": {}, "RGyaUFyN": {}, "3yZAkfOp": {}}, "user_id": "ZgHiQKus"}, {"extra_attributes": {"dlWoihjK": {}, "Jo72ANG0": {}, "8PKu3POy": {}}, "user_id": "6wsi0oS4"}, {"extra_attributes": {"dkyfPrvK": {}, "KQRcRNep": {}, "MI0Yr6Pi": {}}, "user_id": "X0PRcQMb"}], "ticket_id": "TeBlbXkA"}]}], "namespace": "desGUWfG", "party_attributes": {"7BJCFtzo": {}, "htobo0I8": {}, "KwKaEpQF": {}}, "party_id": "YWxTzTAR", "queued_at": 72, "region": "WVjwfejG", "server_name": "72kT7og4", "status": "vDDreGog", "ticket_id": "boM2w07O", "updated_at": "1982-03-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "NoLIu6Yr"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'iPGuPS7q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 24, "userID": "p6VZdeEw", "weight": 0.3294485849832388}' \
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
    --matchIDs 'faRnpcLc' \
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
    --strategy 'iGoC25iD' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'b1zGRHFW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'AtQZqoyG' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "tHjNC1wx", "description": "8yYFCuPg", "findMatchTimeoutSeconds": 78, "joinable": false, "max_delay_ms": 80, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 75, "min": 5, "name": "SYD5LujJ"}, {"max": 12, "min": 94, "name": "jC7pG9Iq"}, {"max": 42, "min": 5, "name": "45OR6usE"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 96}, "maxNumber": 42, "minNumber": 0, "playerMaxNumber": 30, "playerMinNumber": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 86, "min": 25, "name": "8sDyju8A"}, {"max": 74, "min": 54, "name": "rPxUwlfX"}, {"max": 55, "min": 39, "name": "cwi3g8hy"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 82}, "duration": 91, "max_number": 15, "min_number": 32, "player_max_number": 86, "player_min_number": 90}, {"combination": {"alliances": [{"max": 33, "min": 26, "name": "cDr7Joe3"}, {"max": 100, "min": 55, "name": "uZ3dNiug"}, {"max": 53, "min": 23, "name": "rVtF4PWZ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 45}, "duration": 92, "max_number": 90, "min_number": 40, "player_max_number": 74, "player_min_number": 65}, {"combination": {"alliances": [{"max": 68, "min": 81, "name": "wkOqE6X6"}, {"max": 12, "min": 37, "name": "E5SzW3nj"}, {"max": 9, "min": 96, "name": "V919ejzN"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 17}, "duration": 54, "max_number": 40, "min_number": 3, "player_max_number": 69, "player_min_number": 0}], "flexingRules": [{"attribute": "ViJ8WfJc", "criteria": "ZBPnZRKh", "duration": 40, "reference": 0.6999401644813766}, {"attribute": "bVDxMCpK", "criteria": "NHuUnEFt", "duration": 100, "reference": 0.9715128324592518}, {"attribute": "jNSyOise", "criteria": "gJ2QTp2a", "duration": 43, "reference": 0.13099317243343955}], "match_options": {"options": [{"name": "qAzKluct", "type": "RYOnyykU"}, {"name": "l0fQHr8w", "type": "DLeHsXjm"}, {"name": "81R815Zb", "type": "3JWnthKl"}]}, "matchingRules": [{"attribute": "uC9Munky", "criteria": "RDgLcU10", "reference": 0.38085150926658595}, {"attribute": "q7heE5Oo", "criteria": "RpkeRCeR", "reference": 0.44887390415319506}, {"attribute": "TZJfOIHi", "criteria": "EcXc6cp4", "reference": 0.9068767591326796}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 16, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'XdfdfzOM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'm0AILIpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'mpg5oWXa' \
    --matchID 'kmCHK3Pt' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["QPgb7Ux5", "kc5He6Mz", "Poab04YZ"], "party_id": "OvgKkqSK", "user_id": "K0tmoFlB"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'bcnC1k10' \
    --matchID '3BmDeIpB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'XdYLeo0x' \
    --matchID 's447Nzbx' \
    --namespace $AB_NAMESPACE \
    --userID 'q3JS0su3' \
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
    --channelName 'VDMYewBj' \
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