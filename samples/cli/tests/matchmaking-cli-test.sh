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
    --limit '90' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "rDVRCnfc", "description": "iKo2U5IK", "find_match_timeout_seconds": 96, "game_mode": "zl1z5BnN", "joinable": false, "max_delay_ms": 78, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 36, "min": 12, "name": "e6KpxIeQ"}, {"max": 22, "min": 42, "name": "DKaruh2r"}, {"max": 82, "min": 79, "name": "5tRfODsd"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 36}, "max_number": 77, "min_number": 74, "player_max_number": 13, "player_min_number": 63}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 13, "min": 27, "name": "oabKrGZY"}, {"max": 19, "min": 70, "name": "3TWzr2lA"}, {"max": 36, "min": 85, "name": "6JdOsgth"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 94}, "duration": 37, "max_number": 82, "min_number": 66, "player_max_number": 90, "player_min_number": 12}, {"combination": {"alliances": [{"max": 13, "min": 64, "name": "8e1TImp9"}, {"max": 36, "min": 17, "name": "cCILGMWY"}, {"max": 50, "min": 84, "name": "SzXLN3Ht"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 92}, "duration": 63, "max_number": 93, "min_number": 48, "player_max_number": 48, "player_min_number": 35}, {"combination": {"alliances": [{"max": 8, "min": 31, "name": "VqFkz6ML"}, {"max": 21, "min": 86, "name": "dJ0474f6"}, {"max": 69, "min": 95, "name": "M7r0T734"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 23}, "duration": 67, "max_number": 71, "min_number": 27, "player_max_number": 8, "player_min_number": 41}], "flexing_rule": [{"attribute": "DR7lYgBM", "criteria": "qYROIjh5", "duration": 22, "reference": 0.20241292945660228}, {"attribute": "101a3JsB", "criteria": "lSwSJlLX", "duration": 42, "reference": 0.9081601840651293}, {"attribute": "t99gpS0B", "criteria": "H9leVpvK", "duration": 80, "reference": 0.5259399441768257}], "match_options": {"options": [{"name": "drDohwSa", "type": "Hb0ToP92"}, {"name": "UFJdykEt", "type": "Or60lazP"}, {"name": "BeULcDaB", "type": "f5LGjo3c"}]}, "matching_rule": [{"attribute": "H8CYtXvG", "criteria": "mEhZM3LL", "reference": 0.23611863226201557}, {"attribute": "qK44CvnL", "criteria": "SbnN8QB8", "reference": 0.0952160730921987}, {"attribute": "xMMCjmMu", "criteria": "NymgOdjm", "reference": 0.7978947783321293}], "rebalance_enable": true, "sub_game_modes": {"f5BbhjGZ": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 87, "name": "HQFOStIJ"}, {"max": 93, "min": 23, "name": "V2Zb33al"}, {"max": 41, "min": 57, "name": "Jh0Kd8jw"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 40}, "max_number": 72, "min_number": 52, "player_max_number": 55, "player_min_number": 41}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 14, "min": 6, "name": "jOQ8RCo0"}, {"max": 39, "min": 96, "name": "MkuWOCc6"}, {"max": 36, "min": 80, "name": "0Y9L2fZf"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 74}, "duration": 73, "max_number": 22, "min_number": 98, "player_max_number": 86, "player_min_number": 63}, {"combination": {"alliances": [{"max": 56, "min": 46, "name": "QYKGHwcX"}, {"max": 92, "min": 50, "name": "bTyQIz3u"}, {"max": 28, "min": 86, "name": "CfVKIk3H"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 95}, "duration": 78, "max_number": 32, "min_number": 13, "player_max_number": 89, "player_min_number": 93}, {"combination": {"alliances": [{"max": 89, "min": 47, "name": "7dmitsoR"}, {"max": 42, "min": 67, "name": "N0a4lf6Y"}, {"max": 41, "min": 0, "name": "rzcpeM0V"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 23}, "duration": 14, "max_number": 51, "min_number": 50, "player_max_number": 6, "player_min_number": 26}], "name": "8ZQZfKip"}, "w7t40eFB": {"alliance": {"combination": {"alliances": [{"max": 86, "min": 39, "name": "dWFlkbQK"}, {"max": 99, "min": 45, "name": "6MQs4NbD"}, {"max": 0, "min": 94, "name": "lErKuIIV"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 13}, "max_number": 21, "min_number": 85, "player_max_number": 9, "player_min_number": 7}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 96, "min": 73, "name": "HBER75Ez"}, {"max": 95, "min": 20, "name": "HCZkQ5aN"}, {"max": 12, "min": 17, "name": "ZO64r1Gh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 42}, "duration": 59, "max_number": 12, "min_number": 69, "player_max_number": 100, "player_min_number": 8}, {"combination": {"alliances": [{"max": 67, "min": 92, "name": "Pyjrcuqw"}, {"max": 93, "min": 44, "name": "GKEJlhdJ"}, {"max": 9, "min": 39, "name": "rAbmHjlD"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 63}, "duration": 90, "max_number": 48, "min_number": 62, "player_max_number": 67, "player_min_number": 57}, {"combination": {"alliances": [{"max": 28, "min": 83, "name": "ccjYA8bY"}, {"max": 29, "min": 17, "name": "pruDz6YY"}, {"max": 28, "min": 83, "name": "p3tmV1i2"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 52}, "duration": 44, "max_number": 61, "min_number": 52, "player_max_number": 16, "player_min_number": 88}], "name": "JDZZEUpG"}, "FZDx19dn": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 43, "name": "hIyZfhWM"}, {"max": 53, "min": 43, "name": "nwWuDbPT"}, {"max": 90, "min": 56, "name": "5er6LHjF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 35}, "max_number": 58, "min_number": 82, "player_max_number": 55, "player_min_number": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 69, "min": 56, "name": "E8kI38rA"}, {"max": 39, "min": 22, "name": "CSAInBF9"}, {"max": 75, "min": 50, "name": "4yOUZMov"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 96}, "duration": 32, "max_number": 53, "min_number": 95, "player_max_number": 68, "player_min_number": 33}, {"combination": {"alliances": [{"max": 60, "min": 73, "name": "O95PBVpM"}, {"max": 29, "min": 75, "name": "4NBLpb2X"}, {"max": 10, "min": 61, "name": "wHDfpSYQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 66}, "duration": 70, "max_number": 100, "min_number": 18, "player_max_number": 80, "player_min_number": 38}, {"combination": {"alliances": [{"max": 23, "min": 34, "name": "8UKELNHe"}, {"max": 44, "min": 82, "name": "qnWyz8yO"}, {"max": 81, "min": 95, "name": "BUUMRu7j"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 49}, "duration": 48, "max_number": 74, "min_number": 17, "player_max_number": 88, "player_min_number": 77}], "name": "7VhC5Yzm"}}}, "session_queue_timeout_seconds": 76, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '0CTUp0YT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "NHXOzr69", "players": [{"results": [{"attribute": "1ZR3GymI", "value": 0.8859469545713371}, {"attribute": "ikkqcki3", "value": 0.9702280223904092}, {"attribute": "E6uFhWWZ", "value": 0.2898593270346046}], "user_id": "71Fh3Zgb"}, {"results": [{"attribute": "ehRvf0ys", "value": 0.06410735287680269}, {"attribute": "uwiHnrKq", "value": 0.0005506344828207776}, {"attribute": "EeFKBxE8", "value": 0.2529822099437963}], "user_id": "sAGIE6wA"}, {"results": [{"attribute": "I3WzzTE3", "value": 0.4169889742143782}, {"attribute": "BMWB7xgE", "value": 0.4009018509348735}, {"attribute": "2tuA3odq", "value": 0.45121624007345273}], "user_id": "JMvJdcBI"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "TZM8iR79"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "oi53ja9B", "client_version": "5iu5rCSO", "deployment": "Z4r8zwCY", "error_code": 96, "error_message": "u7wFbT1n", "game_mode": "vTBgHtLa", "joinable": true, "match_id": "LBfQmH83", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"DSCfN8q9": {}, "mrcAPEIT": {}, "3pOoK17B": {}}, "party_id": "YUkbN4Ii", "party_members": [{"extra_attributes": {"fsy2Bf4w": {}, "GDZ9NCVq": {}, "R7lh2GlW": {}}, "user_id": "Var80HUx"}, {"extra_attributes": {"q8NUmLt4": {}, "n5AgffWG": {}, "DMKQ5v4Z": {}}, "user_id": "lvvFGIG4"}, {"extra_attributes": {"mHssqiya": {}, "4W0PyNvG": {}, "6aBCG6ZD": {}}, "user_id": "ZaS0ZiPv"}], "ticket_id": "GVeu1Ma3"}, {"first_ticket_created_at": 62, "party_attributes": {"Y9IyYUb5": {}, "0k6n6mPV": {}, "KUvmZfNA": {}}, "party_id": "xC0NvEKn", "party_members": [{"extra_attributes": {"aSPH7xdB": {}, "kKKKGnjJ": {}, "3YKQ6ohn": {}}, "user_id": "Fn4uKXsZ"}, {"extra_attributes": {"J5ZpfIzz": {}, "e8UlpjMW": {}, "bAuEvcXK": {}}, "user_id": "2xl9xcur"}, {"extra_attributes": {"a3gyGIRB": {}, "TlcuWR0J": {}, "7qc5vMwJ": {}}, "user_id": "dKXuEvlP"}], "ticket_id": "yuvn4LqO"}, {"first_ticket_created_at": 44, "party_attributes": {"ISHQxryf": {}, "zF6NGs1S": {}, "b14Re7Gn": {}}, "party_id": "oxC7Al1e", "party_members": [{"extra_attributes": {"auTHXFeF": {}, "9Bi8ZcNy": {}, "oPJN4YT8": {}}, "user_id": "ndXuOsbu"}, {"extra_attributes": {"8eEVWmOc": {}, "sogRz35C": {}, "6TQ08eNC": {}}, "user_id": "mtjCGhxS"}, {"extra_attributes": {"miZLg4fv": {}, "NPMD7cSF": {}, "fNCp7y1c": {}}, "user_id": "Z3wBQ6LD"}], "ticket_id": "X5IvXUC0"}]}, {"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"10olkeyE": {}, "isGtjy5t": {}, "prqxPRTq": {}}, "party_id": "THoVmGTp", "party_members": [{"extra_attributes": {"7M7cLc35": {}, "OkYLKrxd": {}, "mqeA9h02": {}}, "user_id": "lvUX877l"}, {"extra_attributes": {"wjmHGGqa": {}, "MwWaQdr0": {}, "JnNB4Jg8": {}}, "user_id": "XygQaGXR"}, {"extra_attributes": {"C0KwtE7E": {}, "5VyGLUMx": {}, "6x4wrWTx": {}}, "user_id": "7QT1oVmj"}], "ticket_id": "egMvV8sI"}, {"first_ticket_created_at": 60, "party_attributes": {"74nH4ONH": {}, "4zQwSdn8": {}, "Qjsg3Qwt": {}}, "party_id": "JX7MwSXZ", "party_members": [{"extra_attributes": {"SjzxtzG9": {}, "AeUrJAla": {}, "jVeR2sSG": {}}, "user_id": "J4ieByim"}, {"extra_attributes": {"VslcMtVv": {}, "IucH23dj": {}, "XeSa9eTo": {}}, "user_id": "9c5FusHV"}, {"extra_attributes": {"BitgOuKG": {}, "1YxDCecf": {}, "FElxVFQI": {}}, "user_id": "dvrL3U90"}], "ticket_id": "DqqmesWS"}, {"first_ticket_created_at": 27, "party_attributes": {"BLeuOQfS": {}, "6Z28Jncd": {}, "u795hYiL": {}}, "party_id": "xdcE5nN1", "party_members": [{"extra_attributes": {"Pi2YgL9w": {}, "oy8HupxG": {}, "T5fTHcLk": {}}, "user_id": "Mupttv9e"}, {"extra_attributes": {"cF0iUcvj": {}, "HyQO29Kk": {}, "kXpRUZZM": {}}, "user_id": "i9iHTf54"}, {"extra_attributes": {"gBloaQK7": {}, "ILbbMt6m": {}, "lUcdNfWb": {}}, "user_id": "yyccsQTw"}], "ticket_id": "Uo66dqVA"}]}, {"matching_parties": [{"first_ticket_created_at": 73, "party_attributes": {"v0xO9hFf": {}, "MXxpLcGF": {}, "pLSnbmcK": {}}, "party_id": "w0WdqklV", "party_members": [{"extra_attributes": {"KHPaT7uO": {}, "9zTZO5Pk": {}, "FoCrLPBF": {}}, "user_id": "IPQnbU2O"}, {"extra_attributes": {"dtXaBg0m": {}, "o8UZb6vG": {}, "bZcVZfWg": {}}, "user_id": "qA7D37iU"}, {"extra_attributes": {"dTHTZoUE": {}, "aZ4mWeMy": {}, "55311lyb": {}}, "user_id": "YRxcS9yc"}], "ticket_id": "byvdzndp"}, {"first_ticket_created_at": 1, "party_attributes": {"dVPNRlX3": {}, "j7OXoKPE": {}, "vrlSzCbF": {}}, "party_id": "ZfhWnP69", "party_members": [{"extra_attributes": {"CBZfIWMX": {}, "Hx0E0QxH": {}, "9U4BdiiD": {}}, "user_id": "ITbYZ4Hw"}, {"extra_attributes": {"K79LDx1h": {}, "U2Q018qP": {}, "7dLMNWKL": {}}, "user_id": "49YQ72Xl"}, {"extra_attributes": {"K4jFAmzk": {}, "Zh3M2Vk0": {}, "HBq22qUF": {}}, "user_id": "McSiB9eR"}], "ticket_id": "u8BPlWVU"}, {"first_ticket_created_at": 95, "party_attributes": {"9KRWG49m": {}, "RE65sOBu": {}, "OhKNIHeH": {}}, "party_id": "If3eIy9O", "party_members": [{"extra_attributes": {"Q4uqDq1F": {}, "JwUK3w9w": {}, "LUkoXi13": {}}, "user_id": "kW3sRMxY"}, {"extra_attributes": {"nx4FkctZ": {}, "cQWmuNzw": {}, "y7WbGqXc": {}}, "user_id": "MktJMpFH"}, {"extra_attributes": {"ZNKem6lQ": {}, "R7Nt64Jl": {}, "suGjSAE0": {}}, "user_id": "0lKUzHRi"}], "ticket_id": "TvLeAyPp"}]}], "namespace": "eKQkOInK", "party_attributes": {"v04IutRf": {}, "HXOtNAZE": {}, "xQMihyRY": {}}, "party_id": "x7LkfdWf", "queued_at": 69, "region": "sb0vaaD8", "server_name": "7EDQH8sK", "status": "GcxFV0YO", "ticket_id": "arU3E9D9", "updated_at": "1978-03-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "i1gGpdjD"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'fLS6uQQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 43, "userID": "2rIPWmDW", "weight": 0.2705389221526845}' \
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
    --matchIDs 'sc4anmfp' \
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
    --strategy 'hXUtbAkK' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '9UMoSaL4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'QdYGoSwr' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "PYERw34F", "description": "K1DYqLL6", "findMatchTimeoutSeconds": 1, "joinable": false, "max_delay_ms": 59, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 80, "min": 63, "name": "PglRiMLU"}, {"max": 24, "min": 63, "name": "gAbMSxnB"}, {"max": 88, "min": 43, "name": "RmInQhaZ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 51}, "maxNumber": 18, "minNumber": 44, "playerMaxNumber": 55, "playerMinNumber": 22}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 3, "min": 93, "name": "EGMiaVWb"}, {"max": 86, "min": 83, "name": "FvEJqBjS"}, {"max": 88, "min": 39, "name": "rg5L4xtD"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 44}, "duration": 86, "max_number": 4, "min_number": 82, "player_max_number": 40, "player_min_number": 2}, {"combination": {"alliances": [{"max": 86, "min": 26, "name": "G7OpoLTl"}, {"max": 41, "min": 83, "name": "QHbG8CSa"}, {"max": 89, "min": 53, "name": "EJmmoeZQ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 50}, "duration": 35, "max_number": 8, "min_number": 80, "player_max_number": 60, "player_min_number": 80}, {"combination": {"alliances": [{"max": 79, "min": 21, "name": "Jiqmppx3"}, {"max": 30, "min": 13, "name": "B7lAYpiu"}, {"max": 20, "min": 17, "name": "D7jtlSlV"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 84}, "duration": 90, "max_number": 42, "min_number": 67, "player_max_number": 7, "player_min_number": 88}], "flexingRules": [{"attribute": "5UDEuuJV", "criteria": "Zl83jVZB", "duration": 97, "reference": 0.5913060246041957}, {"attribute": "0IbXNkP9", "criteria": "g1iVcsUa", "duration": 43, "reference": 0.44912465839937676}, {"attribute": "Q2hhTdCq", "criteria": "uxwhIyVM", "duration": 89, "reference": 0.6772213426185522}], "match_options": {"options": [{"name": "R1rdJB5A", "type": "MrYlSesr"}, {"name": "orZAyhNu", "type": "Owtj29bk"}, {"name": "bBLZ1Lok", "type": "OUVmR4d2"}]}, "matchingRules": [{"attribute": "f9lhbRRZ", "criteria": "evmakfwx", "reference": 0.2519360254306978}, {"attribute": "XYw9CiFJ", "criteria": "KBiHbyJ2", "reference": 0.36511065488643046}, {"attribute": "X9fT9OqH", "criteria": "5hnswjej", "reference": 0.563610394661221}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 36, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'QezBfwKi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'CbKUs5XZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'cbKJ94d2' \
    --matchID 'jo3Q2lD8' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["4qZAyEpp", "EUerv35t", "EAsgJ7L7"], "party_id": "2mZk9WGZ", "user_id": "Dn5si7ou"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '2gYCVCpX' \
    --matchID 'ix5XmRVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'CqLqgtJn' \
    --matchID 'QuuzYyvL' \
    --namespace $AB_NAMESPACE \
    --userID '7wKOdatp' \
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
    --channelName '21Met4Bj' \
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