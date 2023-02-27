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
    --limit '67' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "5YBAXVGy", "description": "UGnywR6a", "find_match_timeout_seconds": 20, "game_mode": "dFSKe6vk", "joinable": true, "max_delay_ms": 81, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 10, "name": "vUwcGWSX"}, {"max": 68, "min": 3, "name": "U0z4VTxB"}, {"max": 0, "min": 55, "name": "G85yuIv6"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 59}, "max_number": 69, "min_number": 35, "player_max_number": 45, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 48, "name": "B0yoacGN"}, {"max": 45, "min": 27, "name": "OCYR8t21"}, {"max": 84, "min": 51, "name": "AGbtVs1O"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 74}, "duration": 24, "max_number": 2, "min_number": 42, "player_max_number": 40, "player_min_number": 26}, {"combination": {"alliances": [{"max": 52, "min": 42, "name": "PJ03OTBn"}, {"max": 43, "min": 11, "name": "PKhHzjJT"}, {"max": 95, "min": 57, "name": "JARC7AE2"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 5}, "duration": 45, "max_number": 93, "min_number": 91, "player_max_number": 10, "player_min_number": 30}, {"combination": {"alliances": [{"max": 0, "min": 26, "name": "eUVTL60u"}, {"max": 10, "min": 0, "name": "Z8YVEv5v"}, {"max": 32, "min": 26, "name": "6QYVoZsv"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 37}, "duration": 45, "max_number": 26, "min_number": 79, "player_max_number": 66, "player_min_number": 10}], "flexing_rule": [{"attribute": "pAIQFdpI", "criteria": "WeiGQXpD", "duration": 95, "reference": 0.5575121862457312}, {"attribute": "BVPocBHn", "criteria": "XiBpi8GJ", "duration": 66, "reference": 0.7630419428263825}, {"attribute": "fz7VuH7Z", "criteria": "TO3ww4GH", "duration": 32, "reference": 0.05996970418834102}], "match_options": {"options": [{"name": "kEBcbRBA", "type": "I3GZL7NL"}, {"name": "Hppr9FgT", "type": "rDMd0jfR"}, {"name": "fXa7FA4Q", "type": "KMa8bOxM"}]}, "matching_rule": [{"attribute": "lkfugp2L", "criteria": "hLbQpUyJ", "reference": 0.5478399633598579}, {"attribute": "3lnEdylp", "criteria": "kGmNy1S7", "reference": 0.47482299500113356}, {"attribute": "T5b53Zn9", "criteria": "6mPshEPG", "reference": 0.2722258494198926}], "rebalance_enable": false, "sub_game_modes": {"AqbrQf7h": {"alliance": {"combination": {"alliances": [{"max": 25, "min": 32, "name": "yJwf3sQk"}, {"max": 38, "min": 13, "name": "Rs4sjsuV"}, {"max": 41, "min": 58, "name": "WxogAxiO"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 95}, "max_number": 66, "min_number": 4, "player_max_number": 40, "player_min_number": 81}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 55, "min": 80, "name": "3ESGEITh"}, {"max": 31, "min": 85, "name": "W1i2BxTf"}, {"max": 100, "min": 16, "name": "vzxX1JVK"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 56}, "duration": 25, "max_number": 83, "min_number": 21, "player_max_number": 84, "player_min_number": 90}, {"combination": {"alliances": [{"max": 93, "min": 45, "name": "QVw4mac2"}, {"max": 75, "min": 98, "name": "Op6VujyV"}, {"max": 97, "min": 13, "name": "tcWAOT3I"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 75}, "duration": 54, "max_number": 9, "min_number": 28, "player_max_number": 66, "player_min_number": 20}, {"combination": {"alliances": [{"max": 31, "min": 61, "name": "wIoUdFOr"}, {"max": 19, "min": 23, "name": "4o5RFHEn"}, {"max": 85, "min": 53, "name": "8LcWbQ17"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 47}, "duration": 3, "max_number": 74, "min_number": 86, "player_max_number": 79, "player_min_number": 60}], "name": "aWTtxAmL"}, "v3icQfbX": {"alliance": {"combination": {"alliances": [{"max": 90, "min": 3, "name": "KA88bmRs"}, {"max": 60, "min": 8, "name": "VHtQ2kvm"}, {"max": 59, "min": 98, "name": "rGanJjsl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 2}, "max_number": 56, "min_number": 100, "player_max_number": 62, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 17, "min": 46, "name": "TIX0MiFD"}, {"max": 41, "min": 99, "name": "UZLVTHbu"}, {"max": 85, "min": 95, "name": "rtW5iS3B"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 11}, "duration": 20, "max_number": 8, "min_number": 15, "player_max_number": 61, "player_min_number": 58}, {"combination": {"alliances": [{"max": 95, "min": 15, "name": "YDdiNUGg"}, {"max": 67, "min": 89, "name": "e5l8OyfK"}, {"max": 55, "min": 99, "name": "spjxI9im"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 53}, "duration": 48, "max_number": 26, "min_number": 32, "player_max_number": 66, "player_min_number": 98}, {"combination": {"alliances": [{"max": 23, "min": 15, "name": "lPnP6LzZ"}, {"max": 58, "min": 84, "name": "5jGig2Zk"}, {"max": 31, "min": 95, "name": "uoNTjQco"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 22}, "duration": 6, "max_number": 41, "min_number": 63, "player_max_number": 83, "player_min_number": 99}], "name": "v35uLEos"}, "XHt0ayOY": {"alliance": {"combination": {"alliances": [{"max": 63, "min": 46, "name": "agvkOp3d"}, {"max": 9, "min": 11, "name": "2hnPjD8C"}, {"max": 44, "min": 27, "name": "BTG8CHbU"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 82}, "max_number": 83, "min_number": 4, "player_max_number": 98, "player_min_number": 97}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 3, "min": 34, "name": "ivHfvIMc"}, {"max": 16, "min": 70, "name": "7s606WlK"}, {"max": 27, "min": 56, "name": "wGmQcnSi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 48}, "duration": 90, "max_number": 1, "min_number": 65, "player_max_number": 70, "player_min_number": 71}, {"combination": {"alliances": [{"max": 61, "min": 60, "name": "jJgqb8qZ"}, {"max": 79, "min": 23, "name": "3vzhat58"}, {"max": 51, "min": 30, "name": "QWzfqZRb"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 100}, "duration": 7, "max_number": 26, "min_number": 81, "player_max_number": 35, "player_min_number": 73}, {"combination": {"alliances": [{"max": 21, "min": 60, "name": "HSRvNPo4"}, {"max": 84, "min": 90, "name": "x9GEUyWw"}, {"max": 29, "min": 64, "name": "0rGEdN2i"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 66}, "duration": 77, "max_number": 7, "min_number": 95, "player_max_number": 76, "player_min_number": 69}], "name": "avUyzUp3"}}}, "session_queue_timeout_seconds": 78, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'h7nGvQuz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Z58cH1pB", "players": [{"results": [{"attribute": "mFPo097a", "value": 0.13135465100933452}, {"attribute": "UwE5xADa", "value": 0.9104594193019137}, {"attribute": "hKthRWBY", "value": 0.9412781912672696}], "user_id": "fYaL5j4v"}, {"results": [{"attribute": "iZCYHdQL", "value": 0.19814118677835013}, {"attribute": "zXIIzvNc", "value": 0.4388834280556241}, {"attribute": "5odCMJdq", "value": 0.9324903318337073}], "user_id": "0POgjArG"}, {"results": [{"attribute": "yy6QebpZ", "value": 0.48315643989753887}, {"attribute": "dCAQWiOr", "value": 0.9481378545049353}, {"attribute": "rVPXeixv", "value": 0.44886013137930025}], "user_id": "LDcRRdZ6"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "DHuNCN8z"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "CSYnrW06", "client_version": "HxPCL3LU", "deployment": "qXzPg5UF", "error_code": 50, "error_message": "SaAKnd5T", "game_mode": "wXHWfhnD", "joinable": true, "match_id": "7v9EvQz6", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 40, "party_attributes": {"INXSTFdh": {}, "VNztJYYz": {}, "ECGtqW1E": {}}, "party_id": "VOgvGpnD", "party_members": [{"extra_attributes": {"iaR7Gr9p": {}, "38x9GZoT": {}, "tspILIkr": {}}, "user_id": "6U2WvDsW"}, {"extra_attributes": {"2UYOQSuV": {}, "5hYF0Bij": {}, "xQfm0toK": {}}, "user_id": "PJSFyiMD"}, {"extra_attributes": {"c2VdPMFH": {}, "aCg7xwvF": {}, "wcgFAoF2": {}}, "user_id": "iw5teaXI"}], "ticket_created_at": 23, "ticket_id": "J0hngfZ0"}, {"first_ticket_created_at": 2, "party_attributes": {"isgh6IbY": {}, "cEpJPyo9": {}, "ioFlLP90": {}}, "party_id": "IFOy2E5k", "party_members": [{"extra_attributes": {"5fo34yNa": {}, "2YGoPUpg": {}, "a3r4EsCx": {}}, "user_id": "atcsHqVu"}, {"extra_attributes": {"DQySkIfx": {}, "GZw11vvc": {}, "oCBFhjWA": {}}, "user_id": "tBC3pq4w"}, {"extra_attributes": {"CnpXhsUq": {}, "RA3Gk6Ch": {}, "fk01VWh3": {}}, "user_id": "kCvRf92X"}], "ticket_created_at": 1, "ticket_id": "hrT91kyA"}, {"first_ticket_created_at": 43, "party_attributes": {"FMvVW3Bc": {}, "vV2u395G": {}, "Yd1xB5p0": {}}, "party_id": "6SjZUutr", "party_members": [{"extra_attributes": {"srItNVqr": {}, "6Wn4nKLZ": {}, "VRaJbVMS": {}}, "user_id": "PWXoB0pP"}, {"extra_attributes": {"s3eMLljZ": {}, "b1hSaBok": {}, "3AP5XlCH": {}}, "user_id": "1hnkUPLO"}, {"extra_attributes": {"p6Wt0yuR": {}, "8FKoZPA9": {}, "g5r90zQF": {}}, "user_id": "kRUzuEUy"}], "ticket_created_at": 51, "ticket_id": "JLddt7jc"}]}, {"matching_parties": [{"first_ticket_created_at": 4, "party_attributes": {"ZlbSLksl": {}, "sgclDINe": {}, "1FXSgHSK": {}}, "party_id": "IGim4WhJ", "party_members": [{"extra_attributes": {"LQydwg0p": {}, "PRsz2NGT": {}, "DuZUM8ya": {}}, "user_id": "Q1zx8ibj"}, {"extra_attributes": {"XrW8Xfds": {}, "JNXA6nuD": {}, "n1oQWP4c": {}}, "user_id": "vlMOfgKU"}, {"extra_attributes": {"Hbbxduej": {}, "FGgKq9lJ": {}, "7frLhKIO": {}}, "user_id": "BNpGaDfx"}], "ticket_created_at": 90, "ticket_id": "Fo3WQB1g"}, {"first_ticket_created_at": 19, "party_attributes": {"89Q6oHvf": {}, "st7N8uSH": {}, "oveK09MX": {}}, "party_id": "mmVncnFx", "party_members": [{"extra_attributes": {"0QXSVqWz": {}, "veZtSAnB": {}, "GYUCBgIM": {}}, "user_id": "dRQMg5Sy"}, {"extra_attributes": {"J3lg6IIY": {}, "0ipgr2HD": {}, "PPwzIctI": {}}, "user_id": "iaKauatY"}, {"extra_attributes": {"I97tNfBx": {}, "rsnW14WU": {}, "OGe1REni": {}}, "user_id": "PqT2dyuk"}], "ticket_created_at": 14, "ticket_id": "Fgy7RViq"}, {"first_ticket_created_at": 71, "party_attributes": {"sY8E3PdM": {}, "CnnbYYJ5": {}, "6tEsbRmh": {}}, "party_id": "JKSbMcau", "party_members": [{"extra_attributes": {"0s07mBld": {}, "sjoq81da": {}, "KiibYZH3": {}}, "user_id": "YB0e01X5"}, {"extra_attributes": {"FmhrdEBs": {}, "iwsn9Fpf": {}, "KeQ0MPTN": {}}, "user_id": "E1jk7DPI"}, {"extra_attributes": {"5bdzuehe": {}, "C99G4Pvj": {}, "cSE0x3AC": {}}, "user_id": "h7a6wBkX"}], "ticket_created_at": 40, "ticket_id": "tSBaGY5F"}]}, {"matching_parties": [{"first_ticket_created_at": 94, "party_attributes": {"tp25WaGH": {}, "eqgLYdeL": {}, "7SIG1Fik": {}}, "party_id": "uT3FA3NZ", "party_members": [{"extra_attributes": {"EsUpe35h": {}, "XoGxQgrE": {}, "BJjvCw5c": {}}, "user_id": "xUcuA7w9"}, {"extra_attributes": {"w6QaeBCU": {}, "cHjWAUdL": {}, "vHn022PS": {}}, "user_id": "UaHcqkt4"}, {"extra_attributes": {"fdKHs5zE": {}, "pSSib8rr": {}, "6DunHfZK": {}}, "user_id": "xmPqsQVK"}], "ticket_created_at": 84, "ticket_id": "fPERl8Sy"}, {"first_ticket_created_at": 65, "party_attributes": {"ZlNB2hKm": {}, "PsTuCX6r": {}, "fiVwvfen": {}}, "party_id": "dfL8rLRw", "party_members": [{"extra_attributes": {"PvvZgdtz": {}, "isq36WO1": {}, "cGmGznNt": {}}, "user_id": "VLF1GuzQ"}, {"extra_attributes": {"DsxdSf7l": {}, "M3eeMAFt": {}, "5kZNs3SI": {}}, "user_id": "hXqfpoWm"}, {"extra_attributes": {"oychvpOl": {}, "IQ9lqUCd": {}, "nvtKf9VV": {}}, "user_id": "Kf2UbJQV"}], "ticket_created_at": 1, "ticket_id": "FF7EcM6d"}, {"first_ticket_created_at": 3, "party_attributes": {"uF1EbqKA": {}, "pZ5XiTAZ": {}, "ZDGqzb6f": {}}, "party_id": "MP5adqN8", "party_members": [{"extra_attributes": {"cIsVaYyi": {}, "rjOIyACw": {}, "YV5EsUNa": {}}, "user_id": "5cvllXzi"}, {"extra_attributes": {"r9bMZNsc": {}, "IXeavJZ1": {}, "UoY2YYUN": {}}, "user_id": "IZeTsXCl"}, {"extra_attributes": {"cHdDxJIi": {}, "fa9z7P6N": {}, "SqR2jApx": {}}, "user_id": "EwQDKJyV"}], "ticket_created_at": 61, "ticket_id": "0wxgKj2u"}]}], "namespace": "Hb7VFW2c", "party_attributes": {"qSjLslKj": {}, "EMgT1Es7": {}, "XyeUCWFC": {}}, "party_id": "cQHdqG4h", "queued_at": 78, "region": "uVqMpUFL", "server_name": "OrsKZVeT", "status": "m5MSlAfg", "ticket_id": "go6zWhOP", "updated_at": "1989-11-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "4kcfsQoH"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'EX2MNIE0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 16, "userID": "Y3zoEUqF", "weight": 0.6861061975120056}' \
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
    --matchIDs '8JUJFa4H' \
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
    --strategy 'iQBK8XRn' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'CkWpQ9xN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'CdQWq3sc' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "Up0lrH4F", "description": "Ojgpdnj1", "findMatchTimeoutSeconds": 72, "joinable": true, "max_delay_ms": 53, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 77, "name": "tQdCArBb"}, {"max": 79, "min": 11, "name": "oZNvqQgY"}, {"max": 2, "min": 84, "name": "rCXmcdVJ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 99}, "maxNumber": 21, "minNumber": 17, "playerMaxNumber": 25, "playerMinNumber": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 0, "min": 29, "name": "CTIEnnFV"}, {"max": 17, "min": 91, "name": "SEuMmRNZ"}, {"max": 57, "min": 73, "name": "se817dqt"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 84}, "duration": 31, "max_number": 58, "min_number": 90, "player_max_number": 83, "player_min_number": 84}, {"combination": {"alliances": [{"max": 32, "min": 41, "name": "5CCz1FLM"}, {"max": 77, "min": 88, "name": "TNqVPp2x"}, {"max": 83, "min": 67, "name": "r1e1U8TD"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 14}, "duration": 21, "max_number": 77, "min_number": 32, "player_max_number": 100, "player_min_number": 39}, {"combination": {"alliances": [{"max": 27, "min": 8, "name": "fVZp7M1W"}, {"max": 59, "min": 55, "name": "xVAwQIPy"}, {"max": 39, "min": 12, "name": "w4izoTqV"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 95}, "duration": 67, "max_number": 53, "min_number": 95, "player_max_number": 19, "player_min_number": 8}], "flexingRules": [{"attribute": "VYZUcHUR", "criteria": "iUqww8Dt", "duration": 4, "reference": 0.17003189205289793}, {"attribute": "MqxsjBmz", "criteria": "XXUsGUET", "duration": 33, "reference": 0.44801748918301365}, {"attribute": "solwwh4N", "criteria": "mDOc1vDd", "duration": 65, "reference": 0.7985435082210252}], "match_options": {"options": [{"name": "7hQGqXN4", "type": "7bAcWbVG"}, {"name": "91pASlqW", "type": "nkXRxA5r"}, {"name": "PH6VmyRL", "type": "TdW7wjMx"}]}, "matchingRules": [{"attribute": "PGsPM5Dj", "criteria": "qcDfye1R", "reference": 0.3836906724879583}, {"attribute": "j9Wz8KKg", "criteria": "uOgNztmU", "reference": 0.39479026964482733}, {"attribute": "pVuC9f6q", "criteria": "EHMJcZHi", "reference": 0.6681572885341082}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 45, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'dCrf5Fit' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'bxBMcb3o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'hqnDwFz2' \
    --matchID 'TU63xwvN' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["M01LJ9r1", "Ibyw8gRs", "D9thT8TL"], "party_id": "VR999u5M", "user_id": "5yA3pPLR"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'G6MdW1Ge' \
    --matchID '7EvRS6Ja' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'jXDK3q4o' \
    --matchID '3NzKULwG' \
    --namespace $AB_NAMESPACE \
    --userID 'YOcHiaCA' \
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
    --channelName 'NxD42WFv' \
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