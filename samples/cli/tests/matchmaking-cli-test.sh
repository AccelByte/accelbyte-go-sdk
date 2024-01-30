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
echo "1..39"

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
    --limit '25' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "CjZo4hYhtwjR8T1p", "description": "5zafMZi8qzjf1k5x", "find_match_timeout_seconds": 96, "game_mode": "GKmEPtojYpzAiit9", "joinable": true, "max_delay_ms": 84, "region_expansion_range_ms": 43, "region_expansion_rate_ms": 13, "region_latency_initial_range_ms": 40, "region_latency_max_ms": 17, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 86, "min": 52, "name": "y8VVp1P9vdlrtQHw"}, {"max": 99, "min": 40, "name": "tlS1MF8ow9a2QbiD"}, {"max": 59, "min": 79, "name": "C5lZJBpfQ6q7JUoA"}], [{"max": 63, "min": 43, "name": "zEaVKiGSlDztYAgg"}, {"max": 53, "min": 77, "name": "3wqdSK9jL157VdEJ"}, {"max": 67, "min": 77, "name": "WP8T34JRUkynkW4n"}], [{"max": 0, "min": 18, "name": "DB58jy8Gn7GqGrky"}, {"max": 93, "min": 85, "name": "Ht9ZTTaaksR5jqN8"}, {"max": 94, "min": 23, "name": "TSJhrz2iEzWHY6Fp"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 66}, "max_number": 45, "min_number": 30, "player_max_number": 78, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 7, "min": 19, "name": "Px38vshJMUvqlSTx"}, {"max": 41, "min": 18, "name": "FhRogn60DeFoi9bO"}, {"max": 81, "min": 19, "name": "fx8nEIvriepqoiay"}], [{"max": 21, "min": 4, "name": "zS2I74JolAdKazPn"}, {"max": 43, "min": 3, "name": "Heye4KhlNaQipSxf"}, {"max": 31, "min": 47, "name": "h2drjCqzvvXrT2VD"}], [{"max": 91, "min": 77, "name": "FnlTbVEPMY2Pv152"}, {"max": 14, "min": 34, "name": "KASl4RZFxMfNzLRI"}, {"max": 23, "min": 91, "name": "8C3pNNjyIpJuV1PB"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 0}, "duration": 96, "max_number": 89, "min_number": 75, "player_max_number": 44, "player_min_number": 44}, {"combination": {"alliances": [[{"max": 27, "min": 14, "name": "6h5TzhIJJoerVCuj"}, {"max": 40, "min": 34, "name": "oNMgxh85k0xMnrES"}, {"max": 69, "min": 72, "name": "yq9W9tbbyJL3o0fH"}], [{"max": 79, "min": 72, "name": "gsQqhi4iUmgubxF1"}, {"max": 53, "min": 65, "name": "7hKQoaJsh7t7dXOM"}, {"max": 49, "min": 100, "name": "8HdWr0RLNJxGCtk2"}], [{"max": 10, "min": 40, "name": "cpn295HSmawe64jJ"}, {"max": 22, "min": 85, "name": "pdJl3XaZNZ2G4uUp"}, {"max": 69, "min": 25, "name": "SxklMyD4zmKjNh29"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 9}, "duration": 97, "max_number": 1, "min_number": 27, "player_max_number": 0, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 100, "min": 34, "name": "NLhrTkwkf1qH7twB"}, {"max": 80, "min": 19, "name": "6e5Sfj0EA0lXcMyf"}, {"max": 18, "min": 27, "name": "RPABMn5iwLlSZORx"}], [{"max": 82, "min": 25, "name": "piZfoKeZzFVJfPTn"}, {"max": 64, "min": 36, "name": "c7SjeWyXspAr5yC5"}, {"max": 10, "min": 48, "name": "uqICpEh1MsCjw2DV"}], [{"max": 58, "min": 31, "name": "4xbhgBCwnPlrqEqz"}, {"max": 51, "min": 98, "name": "ECGRNyOPomK0vEQG"}, {"max": 73, "min": 97, "name": "D7eZXsG0bQ7eeqLm"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 34}, "duration": 55, "max_number": 85, "min_number": 39, "player_max_number": 44, "player_min_number": 63}], "batch_size": 100, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 9, "flex_flat_step_range": 85, "flex_immunity_count": 13, "flex_range_max": 36, "flex_rate_ms": 0, "flex_step_max": 13, "force_authority_match": true, "initial_step_range": 33, "mmr_max": 36, "mmr_mean": 32, "mmr_min": 42, "mmr_std_dev": 27, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "kxDQWrHt1yUnD24s", "criteria": "EaCqdOu3dpGzHvob", "duration": 68, "reference": 0.31353509708113736}, {"attribute": "kxZK5G4TVlqGz4ER", "criteria": "yGUjPIGXrP5ZdfPP", "duration": 0, "reference": 0.7910230720065589}, {"attribute": "WITDwvSfVXS0NU3L", "criteria": "VJfuXE9RAsw8LM73", "duration": 47, "reference": 0.5508561782260376}], "match_options": {"options": [{"name": "H5XUndDGbROr90sG", "type": "eyl7nU6VIhgScK5u"}, {"name": "aSt1az6fhQmmeY7U", "type": "cVmzVoCAnlZryZYZ"}, {"name": "BnLhqWN0As92IebD", "type": "WhYIGliDu0IcH7ex"}]}, "matching_rule": [{"attribute": "QmP4BtiLzFs3gKgT", "criteria": "peO4rSG9S4d8o08o", "reference": 0.1899631508623043}, {"attribute": "qVbNmgstQ8R2Qsp6", "criteria": "37NcMVLD0ArKcoBf", "reference": 0.22633488485400244}, {"attribute": "ILgupJYVBwpph1sf", "criteria": "rpeyTC0AmOBJIgJb", "reference": 0.15556264118616792}], "rebalance_enable": true, "sort_ticket": {"search_result": "random", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 38, "ticket_queue": "oldestTicketAge"}, {"search_result": "oldestTicketAge", "threshold": 11, "ticket_queue": "oldestTicketAge"}, {"search_result": "distance", "threshold": 26, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"ANCins3LE3yOiWBL": {"alliance": {"combination": {"alliances": [[{"max": 11, "min": 91, "name": "cg4Q5N2uqVVuROr5"}, {"max": 19, "min": 95, "name": "5bAyZI4A4GZMViYH"}, {"max": 57, "min": 28, "name": "HYNuI6BEcawRTuPf"}], [{"max": 37, "min": 51, "name": "FTFMsSWlYzwkEM4s"}, {"max": 2, "min": 16, "name": "WAadeKBdg1qVW9e9"}, {"max": 16, "min": 47, "name": "B2YOEls8oag4hBhJ"}], [{"max": 29, "min": 40, "name": "Zi1YVQAZX9CyD7Uj"}, {"max": 71, "min": 13, "name": "W6fTzsxxshWNVm1E"}, {"max": 47, "min": 40, "name": "hD30baJpw9wHxcy7"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 58}, "max_number": 0, "min_number": 52, "player_max_number": 39, "player_min_number": 65}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 22, "min": 6, "name": "AKA84dK4GyfNVkSc"}, {"max": 54, "min": 44, "name": "QU3E1kqJcJUCNMR2"}, {"max": 28, "min": 28, "name": "FrdNaAuqBisjFCLZ"}], [{"max": 94, "min": 28, "name": "8ZBW22ip2SYkrOPb"}, {"max": 59, "min": 70, "name": "bSxoqmWOWsRjxS01"}, {"max": 64, "min": 52, "name": "9jDLzUbDyxQFydCc"}], [{"max": 100, "min": 14, "name": "7yL0Vic4YXFCpvuB"}, {"max": 8, "min": 38, "name": "TBrROtp2O6uFOgLf"}, {"max": 97, "min": 56, "name": "XSC1wqiGzBY1YmV5"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 82}, "duration": 100, "max_number": 46, "min_number": 3, "player_max_number": 17, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 94, "min": 70, "name": "z8agBeYrIilISHPX"}, {"max": 67, "min": 70, "name": "zKXePxqicEDUj5KG"}, {"max": 13, "min": 7, "name": "gev1kc2cOxKbrAJI"}], [{"max": 79, "min": 92, "name": "ujAJjVOAEdVqeEAJ"}, {"max": 35, "min": 6, "name": "QWBLNxkdfDeYiTxc"}, {"max": 28, "min": 11, "name": "FXJg4CCLXDKFXtIj"}], [{"max": 51, "min": 47, "name": "v49F3jkgqIVpuRAs"}, {"max": 82, "min": 50, "name": "mDD7uIZUBXKoMSjX"}, {"max": 63, "min": 85, "name": "n4mYKdgCUOjwDoMQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 13}, "duration": 72, "max_number": 34, "min_number": 81, "player_max_number": 50, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 73, "min": 57, "name": "zb4La0ByPBORsisS"}, {"max": 45, "min": 65, "name": "9ieSa8SYdKe9qDVm"}, {"max": 74, "min": 63, "name": "H63rIxUk0K45axmp"}], [{"max": 30, "min": 18, "name": "8TFH7zLXJmOxyLNX"}, {"max": 40, "min": 75, "name": "8EWs2UUYhYt75U3X"}, {"max": 99, "min": 12, "name": "oM2XbHsyV5ASseyj"}], [{"max": 35, "min": 78, "name": "VRbGT9nLQpObS7bh"}, {"max": 33, "min": 52, "name": "EamgoNdnxkMfo0lj"}, {"max": 39, "min": 1, "name": "IB20iK4nnFe0PfPA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 48}, "duration": 17, "max_number": 78, "min_number": 93, "player_max_number": 24, "player_min_number": 75}], "name": "FXbZfXUXyxjlGjUN"}, "LMbyc9HRw7Dle6yw": {"alliance": {"combination": {"alliances": [[{"max": 14, "min": 64, "name": "MCqnZlGBjdBhwHZP"}, {"max": 99, "min": 49, "name": "rxJ2G43ZMsaJ5I3V"}, {"max": 68, "min": 83, "name": "3ZWhh1kmfqyPdNC2"}], [{"max": 78, "min": 45, "name": "A8SYlC18v9xt6BW0"}, {"max": 82, "min": 62, "name": "8WODKXEuOlfID60E"}, {"max": 0, "min": 59, "name": "Dn2vo6TsbA24Kqy4"}], [{"max": 3, "min": 74, "name": "ndOH63WCGXVdKXAU"}, {"max": 99, "min": 44, "name": "KPW5B6v9U9tcwMZr"}, {"max": 43, "min": 24, "name": "oCCeiNssFnrttD5G"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 9}, "max_number": 55, "min_number": 54, "player_max_number": 24, "player_min_number": 91}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 38, "min": 10, "name": "vB0k1eGzZQXjBm4g"}, {"max": 56, "min": 56, "name": "dorq7f1BG140C6E2"}, {"max": 9, "min": 4, "name": "auB19CfpI9rVUcWE"}], [{"max": 84, "min": 35, "name": "xUvlngTrI6wBmm7D"}, {"max": 83, "min": 91, "name": "2075bmkOsGLvikLk"}, {"max": 96, "min": 91, "name": "H3wOqRWEdGqBBhR4"}], [{"max": 89, "min": 83, "name": "5qoxguxtnxtBgprA"}, {"max": 79, "min": 39, "name": "jB6uBTOZwQV5WI3v"}, {"max": 24, "min": 21, "name": "EKjuvaZt6PebuXtB"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 57}, "duration": 53, "max_number": 16, "min_number": 47, "player_max_number": 3, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 82, "min": 24, "name": "TU4MF7ZEqNpSftLT"}, {"max": 7, "min": 51, "name": "EkJEpNbDIxZ0WcAm"}, {"max": 1, "min": 78, "name": "CwBjD7ImY6qXM7Wn"}], [{"max": 72, "min": 68, "name": "e1vTihuE0nMLdkCH"}, {"max": 15, "min": 69, "name": "3SIPHyYHCeetUIMX"}, {"max": 91, "min": 7, "name": "HQv8ANO23x0hZf4g"}], [{"max": 61, "min": 66, "name": "cqDyU3MICtA8dAXM"}, {"max": 11, "min": 66, "name": "fDfsPiFoIYqcw4m2"}, {"max": 60, "min": 5, "name": "XGEEM11Wb4Jz6fVZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 66}, "duration": 75, "max_number": 41, "min_number": 64, "player_max_number": 10, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 41, "min": 32, "name": "sLjuy7NNOcYBQPtv"}, {"max": 9, "min": 89, "name": "28MpKt3FMhcC8eEO"}, {"max": 50, "min": 58, "name": "XWJvf7ZJW6KghNmw"}], [{"max": 100, "min": 68, "name": "yooA3uDrgFTPr0o6"}, {"max": 64, "min": 64, "name": "Aet1Z2WzlrUczC8g"}, {"max": 76, "min": 68, "name": "EIi1DqFP76pvGiht"}], [{"max": 13, "min": 18, "name": "Zq6UeNYKVJoWXxBM"}, {"max": 72, "min": 21, "name": "ejldIkLZhUVne0Jy"}, {"max": 67, "min": 11, "name": "Ty6CihwZ5t8lKw55"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 58}, "duration": 64, "max_number": 92, "min_number": 50, "player_max_number": 64, "player_min_number": 30}], "name": "5dA5FdmThSLstmUD"}, "Q4vhQODKPWY3vvqy": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 86, "name": "nQmWSayQ5dwSIdKB"}, {"max": 41, "min": 60, "name": "h11gQauQoTc1jONV"}, {"max": 26, "min": 16, "name": "TZYPpBRoGqRZpcSL"}], [{"max": 92, "min": 35, "name": "4M99x3sC8dVzxhbV"}, {"max": 54, "min": 95, "name": "RPB4s5dFf0pvWcxC"}, {"max": 49, "min": 38, "name": "RrHbxUPwlD5mISdW"}], [{"max": 76, "min": 57, "name": "EvCgsXGDs3P81CVs"}, {"max": 84, "min": 35, "name": "eFHKRpaqpkxlpiGT"}, {"max": 64, "min": 49, "name": "KPUZnLx3aXjNA6WJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 50}, "max_number": 83, "min_number": 76, "player_max_number": 19, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 34, "min": 78, "name": "XqDiW7gAZ0FKNc1A"}, {"max": 92, "min": 60, "name": "3L71d3TQHodwpDOm"}, {"max": 60, "min": 43, "name": "eFjRCKdfkJQ7HQAG"}], [{"max": 48, "min": 63, "name": "4ZLoxHWoPN8z03jk"}, {"max": 67, "min": 64, "name": "qmDPEnpGo5kecf97"}, {"max": 36, "min": 24, "name": "RdXddyn4UIUVNygm"}], [{"max": 6, "min": 75, "name": "ytHJKpoqRog8wMO6"}, {"max": 63, "min": 80, "name": "7fOWkIdytjSMDvuT"}, {"max": 23, "min": 19, "name": "RvxAzjEabI3S3kcp"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 6}, "duration": 10, "max_number": 82, "min_number": 84, "player_max_number": 42, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 72, "min": 17, "name": "RcTHv2XW6TYDhciY"}, {"max": 41, "min": 84, "name": "yTDisy6yZYITKHKB"}, {"max": 82, "min": 33, "name": "Y82JMZunN4LzfSdg"}], [{"max": 45, "min": 93, "name": "WfbqCNpeQGGvH3Jo"}, {"max": 44, "min": 47, "name": "CSc12odEHQrjuQbu"}, {"max": 14, "min": 22, "name": "CwvrvuLEp2eqExHe"}], [{"max": 62, "min": 8, "name": "ctPHTtOQHcaJoI3X"}, {"max": 59, "min": 15, "name": "6BkbrTqLMzHw4o7V"}, {"max": 93, "min": 58, "name": "CeJEjRLfzlU90Z2q"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 49}, "duration": 82, "max_number": 0, "min_number": 14, "player_max_number": 6, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 25, "min": 22, "name": "2QYZW0FTQifqaGsV"}, {"max": 79, "min": 19, "name": "rJNBcMkJ6CEq5Q1h"}, {"max": 48, "min": 21, "name": "JoHieSOmwTMpYvg7"}], [{"max": 32, "min": 64, "name": "Y8BpSYulmpKLH8jT"}, {"max": 74, "min": 13, "name": "grJXBbycR37U4HuY"}, {"max": 88, "min": 88, "name": "M3VzSoSvgFzpLP5M"}], [{"max": 36, "min": 100, "name": "7DdrBOArzxhkikUB"}, {"max": 98, "min": 21, "name": "73VlV3v8ry5saYG8"}, {"max": 42, "min": 59, "name": "2Bxziu7xDEO7kv4a"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 96}, "duration": 15, "max_number": 93, "min_number": 88, "player_max_number": 80, "player_min_number": 34}], "name": "6lvFZbGvKfdjs1mw"}}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 27}, {"selection": "oldest", "threshold": 64}, {"selection": "random", "threshold": 31}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 4, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'JK8THizWkqLUwbPh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'peONmc6JbPkuxFcB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "jocoSfbENoJnCQL0", "players": [{"results": [{"attribute": "NAzG4SPV4Sr21PjF", "value": 0.01838108070661515}, {"attribute": "3fa8osWN3WR3rLpC", "value": 0.05640012480364531}, {"attribute": "VasIIYU93BlhjzzT", "value": 0.40109775148519855}], "user_id": "Y5e7ItKoeXFH7X4O"}, {"results": [{"attribute": "3Dt6Q1l7VQTem4OI", "value": 0.5277687420718458}, {"attribute": "PUwYCWGiLj9Kuunb", "value": 0.8080865811611359}, {"attribute": "oF1EKxELbvT5ySHq", "value": 0.6658386179797688}], "user_id": "7dL8yI3tZ4O1Hf2y"}, {"results": [{"attribute": "nWNM0WN0VrG5NgyZ", "value": 0.32844540903112285}, {"attribute": "oRNQTJjBMuWpwCqH", "value": 0.66311903696124}, {"attribute": "Bs02lLhO00OQ9lCP", "value": 0.8160180902794884}], "user_id": "sCHfoOBPyDZzV8xX"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "DsFPqomdzsPkiput"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "TBozS6mWVdap7nHI", "client_version": "kFy1jcfUUwHWZ0lU", "deployment": "vh5dIPvuXoj0L2vM", "error_code": 97, "error_message": "nxTGmweNmpfEFLJP", "game_mode": "xtreZd2RQMh4Si4m", "is_mock": "o434pVQ3cZnC1l4F", "joinable": false, "match_id": "JrSe5szJp69Fqsed", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 46, "party_attributes": {"T9gwTLJouMRxuObR": {}, "92vFmBMgnnfA4YT3": {}, "vsAezAzklnO7Q6Ps": {}}, "party_id": "MoCevLxfU9WjVFuI", "party_members": [{"extra_attributes": {"H7fsTr39otBxannY": {}, "8TJlbm1X6MhCuHc3": {}, "mrn0sU0x4elfVmna": {}}, "user_id": "Mf6cywRrYEjos8MN"}, {"extra_attributes": {"LkkrxudgMo4mCe89": {}, "QoSwpnoqO4Ao9bgr": {}, "lvdppmFoVuiQRzag": {}}, "user_id": "oekCgh7mkOyWXXpm"}, {"extra_attributes": {"cJyg4tjWezXhuQUL": {}, "BZflO9AyFZ9mxlWw": {}, "UYzBTcnLDdq0Z9Ic": {}}, "user_id": "yV77wsDkcP1g7D96"}], "ticket_created_at": 30, "ticket_id": "Hd4TKGP3z5fxoZvp"}, {"first_ticket_created_at": 43, "party_attributes": {"nENsTKw4HPsXEY0k": {}, "SqBwW1PxQlyCkUxC": {}, "n4HCW3RbTBIkFMum": {}}, "party_id": "ibemlOmzY59NJuz8", "party_members": [{"extra_attributes": {"sWbSilL43dnxjHt1": {}, "80bl2TwzUkYd4rye": {}, "wp5uXeS3CK2oj7gv": {}}, "user_id": "XJfBSaSu3WvcstVg"}, {"extra_attributes": {"la3Z70B1ykzPm5ez": {}, "RQ9xxGTnEbsznBaZ": {}, "nOKXo2kFPWNmtci1": {}}, "user_id": "ktAZUvByR07p1OwZ"}, {"extra_attributes": {"qAQ2Y2gyiIRyDlyo": {}, "R3ryucfaD3IZc7ga": {}, "2TZOFXPZ7XnsDZlK": {}}, "user_id": "91cq4HDEDgtfL7WK"}], "ticket_created_at": 4, "ticket_id": "kARGokXUBxfQG1VP"}, {"first_ticket_created_at": 71, "party_attributes": {"Q3N0ZNPOqCU2KDLP": {}, "Lh01DRVDalgeVQ7T": {}, "d7JQhzGBnIRI7Hir": {}}, "party_id": "OiquduScdYtAKK3q", "party_members": [{"extra_attributes": {"6z5fKd17QbD7icSr": {}, "xY8s5mcSVIjZflip": {}, "Tooy8zkGKHzoRQ4T": {}}, "user_id": "c5SDaKuJdFPFJeXA"}, {"extra_attributes": {"6oykYv3cDbYmyidu": {}, "GeWdm4JEcSjxMeoS": {}, "f9pA8e13XsgYEeqy": {}}, "user_id": "aTwoQWb0Sma2jvnI"}, {"extra_attributes": {"SHu1fkg2IcNYk9QJ": {}, "nvv0OeFCyaVAVy0q": {}, "BC5psURuP3QeoFqJ": {}}, "user_id": "r85OV4yc4eJLvAxn"}], "ticket_created_at": 11, "ticket_id": "hb9KxPaP296eqO5d"}]}, {"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"3YPSPKqAYSUPoYLe": {}, "PPCnqGH7JxD6M0uH": {}, "0CCMtqKwYL8imzgX": {}}, "party_id": "FbvrWb3WGYXqBs51", "party_members": [{"extra_attributes": {"hq9GWaXoKSNAGEDC": {}, "IqcFc7PlYNOA2a0f": {}, "zBdnRZJNbejkxevo": {}}, "user_id": "RIgrScY9tyz1jk9m"}, {"extra_attributes": {"RukynhEVzw7uBdw1": {}, "w7MOqnKGrTyRXCvv": {}, "DppXizzVlAcWeXir": {}}, "user_id": "TBBYgOssJr5U3T94"}, {"extra_attributes": {"d3jMycuNSYaKskxf": {}, "yWVI2ZHpex7HtkHT": {}, "gznfcKwvf6mVMxzx": {}}, "user_id": "t9IvkKd8msAGFniD"}], "ticket_created_at": 1, "ticket_id": "DVFf2qLeCUL4D6PY"}, {"first_ticket_created_at": 57, "party_attributes": {"0opXIsNzMubo6aUM": {}, "qWcS8WUvc61Ct2xK": {}, "JLTIg5Iw15NGkIFi": {}}, "party_id": "oHlJktyhaRVDCqDE", "party_members": [{"extra_attributes": {"KyX8pXr1O9f9QdK3": {}, "0cWtywNPOth46Vyy": {}, "bmmsN8STHcR89Jiy": {}}, "user_id": "iOxZM171jiTGCy7T"}, {"extra_attributes": {"7nbtY7AfCQRbiVAx": {}, "OrzRUeywJqyUBc8P": {}, "sg5Ja6KcSWFWxIc0": {}}, "user_id": "mk1IY6UDRgPzrGo9"}, {"extra_attributes": {"iwmQT38Vf9SH6tXj": {}, "RYqC1C2T9MzcyTA3": {}, "pFAEl12eL3vhtnIm": {}}, "user_id": "zCCBfdlx63xcfA80"}], "ticket_created_at": 89, "ticket_id": "3HO3SFRtP6NKcQCL"}, {"first_ticket_created_at": 61, "party_attributes": {"QBw5uS5tF2kUfWP4": {}, "rqYeryvjfyXptgvb": {}, "pATgbM6bh3TKovCv": {}}, "party_id": "rg2auQo6ReZKcD11", "party_members": [{"extra_attributes": {"04m25aIHVOyfYfYy": {}, "hQacPfAaLzUlG34h": {}, "Gf22ZEfigC7YQIjP": {}}, "user_id": "9t66uYrKcEup3UNK"}, {"extra_attributes": {"UqYjI6VboEIFSAiZ": {}, "Iu1UNNoYLT1OkCSv": {}, "px5uQFvgY3kWSZm4": {}}, "user_id": "WGCroyw3ihpDBejK"}, {"extra_attributes": {"3hm1UGx1ZAWrDfVI": {}, "B6uJmcZh2rhDdgOz": {}, "cuilHVN5kVxhWEBr": {}}, "user_id": "UUTtRbHpZAdHy2A8"}], "ticket_created_at": 21, "ticket_id": "rg3taKT6MmfcIBem"}]}, {"matching_parties": [{"first_ticket_created_at": 70, "party_attributes": {"OAJBbiGxL5Fb00GW": {}, "os5iqA9LQsoepUN9": {}, "vSPROlqJWTyBEmYb": {}}, "party_id": "V8QX7PENbJvSmcGP", "party_members": [{"extra_attributes": {"kaj2Yljhj4Ephq2n": {}, "qzzj43sI9HScaM9g": {}, "4rdQbIKdIoBKOvv2": {}}, "user_id": "30EiY9ono806K7Hg"}, {"extra_attributes": {"03SdWcRZkTXxdcSH": {}, "MlM3CuDBd28zWgy4": {}, "RbYxPotEN0RoHQZj": {}}, "user_id": "mjQCDWPasFJQHLqU"}, {"extra_attributes": {"y2aPOVeBd6n6FeO1": {}, "wsKBckVDxUIH6rut": {}, "epMAFjn2GE9e7Lut": {}}, "user_id": "CdihY2mnGhT56hGF"}], "ticket_created_at": 90, "ticket_id": "QayLVrygSQTJat5P"}, {"first_ticket_created_at": 22, "party_attributes": {"Lfpq9ZQIBN5UI5kC": {}, "Db97JQkHMmcWIS3r": {}, "WBYnTV3uolD39v1E": {}}, "party_id": "s8GTgopztkPmDh80", "party_members": [{"extra_attributes": {"yMlqa24txZ4iAl3B": {}, "IULDr3PL4eLxbUZN": {}, "fBP5mpXSwc6g5n7z": {}}, "user_id": "IY1gjf41KdWb73ua"}, {"extra_attributes": {"chC8o9EdCBY4bMCq": {}, "UZaLNY7GAf99F8Co": {}, "eTvdufEkfz4py6kX": {}}, "user_id": "HTTEScnWFRUfyMLA"}, {"extra_attributes": {"NEAmqs1n47OqwSNX": {}, "uPlnSIeLFjdrmjao": {}, "IX0tdpGxGKW8gExJ": {}}, "user_id": "YvCWO4Iy8twmNIea"}], "ticket_created_at": 90, "ticket_id": "838TfxFIT9O2Jadw"}, {"first_ticket_created_at": 86, "party_attributes": {"drzwvdZMFkBYgp0r": {}, "fCmYAPyLO1gayhRo": {}, "Zms5fonuYlYqN4Nu": {}}, "party_id": "mslOcaRLXtlk7uQM", "party_members": [{"extra_attributes": {"02190Q4W08BlIMJR": {}, "ghPLU4cPo4KznZbs": {}, "p5bfMoqLnqi4fJK6": {}}, "user_id": "rv3AxzNYEIIaSUsQ"}, {"extra_attributes": {"vROPoqimHCEcCOyu": {}, "qSHb0OjbfzDgzGtz": {}, "g28fszpwJMYduyC6": {}}, "user_id": "SwL19xacyCYR4kXb"}, {"extra_attributes": {"2KmKXDVFBpWHVLHR": {}, "LSETu2IZj9Bz3dDK": {}, "AyYoNgIl61m40JRw": {}}, "user_id": "ZQovezr5fdLgQW02"}], "ticket_created_at": 13, "ticket_id": "mFCRYxca1XbW6pjr"}]}], "namespace": "i4anQTgDePqeiaP6", "party_attributes": {"uggqheuMPIS0UNMj": {}, "d5IwM0eZQRNaLVKe": {}, "xepj7JA4inDfQWsn": {}}, "party_id": "uVyttB7v0cmaN8hF", "queued_at": 62, "region": "fKT7tiwtRbl3FSQT", "server_name": "XXsBWfJNrn32kHko", "status": "L8RnJGP7IG8U9ESu", "ticket_id": "POKKP0BxZvm3j8fK", "ticket_ids": ["QOfeofukx5jUBu7n", "u6N3gkD3rbH2hJMY", "YC9REXCd02ijRdWu"], "updated_at": "1973-06-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "wD23S2hYYyo1ljdl"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'oL4tT4gSS5rtO7jD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 21, "userID": "c5oUSfHcZda1UE7m", "weight": 0.5873634751538034}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePlayTimeWeight' test.out

#- 14 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetAllPartyInAllChannel' test.out

#- 15 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'hgVSdvbEvRlhsLXE' \
    > test.out 2>&1
eval_tap $? 15 'BulkGetSessions' test.out

#- 16 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ExportChannels' test.out

#- 17 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'mnQKalu2QQjUsBg4' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'KkZ2xwk8sNIcD1cH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '9GNi1nT0ZMYsInwi' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "Q5TTAAd9LFtYD9Zk", "description": "rUktzfLCvCgpKpxY", "findMatchTimeoutSeconds": 31, "joinable": true, "max_delay_ms": 100, "region_expansion_range_ms": 76, "region_expansion_rate_ms": 95, "region_latency_initial_range_ms": 45, "region_latency_max_ms": 10, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 46, "min": 54, "name": "T3BxmBWVXSKIwkLh"}, {"max": 44, "min": 14, "name": "PCup0E5wnPsX8HHZ"}, {"max": 5, "min": 5, "name": "dNccfJ4ARFr9o98U"}], [{"max": 57, "min": 2, "name": "SyqEjuh0zw35erTL"}, {"max": 87, "min": 44, "name": "fpXjyJUMNhIKKhHb"}, {"max": 20, "min": 73, "name": "29SECPpFYBdodUYM"}], [{"max": 31, "min": 17, "name": "QKGKR7sy4zfwvWSE"}, {"max": 62, "min": 25, "name": "zf69P9Y74eV1gw5h"}, {"max": 3, "min": 94, "name": "qFFWEewq9ZjyyoyA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 65}, "maxNumber": 85, "minNumber": 92, "playerMaxNumber": 7, "playerMinNumber": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 11, "min": 37, "name": "R0B7D97t3XaQ6emk"}, {"max": 32, "min": 61, "name": "gm1t1eQH2G6LwHSU"}, {"max": 16, "min": 99, "name": "uphwoHN6osDPmpga"}], [{"max": 7, "min": 6, "name": "GDY1A1dJVlKuN4Pj"}, {"max": 0, "min": 33, "name": "SPTCWEnjwJOJveGn"}, {"max": 39, "min": 48, "name": "yu4xEtDweEswP25O"}], [{"max": 7, "min": 78, "name": "TKjPnkLCglnftg6F"}, {"max": 62, "min": 24, "name": "UmRJBspLumQ7Wxr2"}, {"max": 95, "min": 53, "name": "yQ3SCJy08rIOvl3Z"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 78}, "duration": 82, "max_number": 9, "min_number": 96, "player_max_number": 28, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 2, "min": 12, "name": "RRJ5TQkluTqiahPO"}, {"max": 44, "min": 80, "name": "ikI3MBgCCZ5OzwiS"}, {"max": 26, "min": 11, "name": "6hRzeO7aiuQ1eFmk"}], [{"max": 35, "min": 43, "name": "rSeik4dGSY4VRVZU"}, {"max": 77, "min": 47, "name": "OG7g2vM9JwpTRYZB"}, {"max": 25, "min": 82, "name": "xBXPEyuDr3Q4z49b"}], [{"max": 7, "min": 42, "name": "cMtBz0ipxCxwR96D"}, {"max": 75, "min": 41, "name": "zb0omdTSWR6hx3eT"}, {"max": 92, "min": 55, "name": "NZuxtqGky2qsguNr"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 69}, "duration": 2, "max_number": 98, "min_number": 61, "player_max_number": 25, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 70, "min": 34, "name": "D1LlKM34VZcpExXE"}, {"max": 41, "min": 92, "name": "q30nN9V9kJlvBu1x"}, {"max": 97, "min": 58, "name": "pvj0gPIrkLUVQp6u"}], [{"max": 6, "min": 21, "name": "JqqbLtEBZoGyeqXC"}, {"max": 43, "min": 17, "name": "cM482bowaPa6JvQt"}, {"max": 100, "min": 71, "name": "82LMkRkxBPY8QpCE"}], [{"max": 95, "min": 14, "name": "9xtDji9HbleEbjl8"}, {"max": 95, "min": 38, "name": "Aw0G7uqtOoCUI7qD"}, {"max": 45, "min": 39, "name": "0ghjmR1PD0J0MMQT"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 90}, "duration": 10, "max_number": 19, "min_number": 42, "player_max_number": 32, "player_min_number": 37}], "batch_size": 30, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 0, "flex_flat_step_range": 7, "flex_immunity_count": 78, "flex_range_max": 19, "flex_rate_ms": 12, "flex_step_max": 82, "force_authority_match": true, "initial_step_range": 26, "mmr_max": 96, "mmr_mean": 47, "mmr_min": 86, "mmr_std_dev": 93, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "2m9JI6n9nXe5Kzsf", "criteria": "aPvwS1i5ZBTnOz6c", "duration": 18, "reference": 0.3387059604281124}, {"attribute": "gycjxbZdXn9eBS3Y", "criteria": "Af0udvkWuGxUFNVZ", "duration": 38, "reference": 0.2477397907863943}, {"attribute": "yHLVbdN6UTISdauY", "criteria": "8onQ7rYJVWvw3vtk", "duration": 78, "reference": 0.3636704001319776}], "match_options": {"options": [{"name": "RcypAsTXXJHGaPFi", "type": "n5nWQkHAgbzOP1P7"}, {"name": "S7rvVQZEBYJNrQQQ", "type": "FHRQvoPC2aNDb7Sb"}, {"name": "VD3PdQOpg6XMSdNv", "type": "nUDLcKS5x9eBvwoW"}]}, "matchingRules": [{"attribute": "g63Qvg6Wl5IjnUyJ", "criteria": "7r3VdmwCTn0jdL0p", "reference": 0.09571248437386037}, {"attribute": "bXu4VruWb7XDymJ1", "criteria": "qF0z2kTzyuhtRrmV", "reference": 0.121392756113477}, {"attribute": "s93R4pphoxArTWeM", "criteria": "z6EOTHcAUF1G7I7P", "reference": 0.24121563115665234}], "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "distance", "threshold": 64, "ticket_queue": "distance"}, {"search_result": "random", "threshold": 16, "ticket_queue": "random"}, {"search_result": "largestPartySize", "threshold": 71, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 86}, {"selection": "oldest", "threshold": 93}, {"selection": "pivot", "threshold": 54}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 91, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'Z10qs0OiDU6nFqcS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'aNkQ9kl9RQbcaJhq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'g6u5G9bjtkdjQkCw' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 12}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'TF1Y0vaWNXPnUCvn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'agMLalLQVK204QpP' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "u8AN91yTAV8Nqf5c", "count": 83, "mmrMax": 0.08913137703305707, "mmrMean": 0.4813555555059318, "mmrMin": 0.42780190179982414, "mmrStdDev": 0.954768123912179}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'KGiG6sJ4vrj9s5LU' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 6, "party_attributes": {"zZp9LaRLR20cU97g": {}, "q1L1rB6eFGukem5g": {}, "lGU8mDFEjD7DAucH": {}}, "party_id": "DmMoCReEHvoXGRCi", "party_members": [{"extra_attributes": {"u4HNvOiig5pp1ius": {}, "1bomuMb5IkT1jsnX": {}, "fwaak6v7CSZ3W3nJ": {}}, "user_id": "ut4gfERZGoAXBlTL"}, {"extra_attributes": {"zDVlQMIZ0ZYSdUXv": {}, "ZUdj8mxzISkdr98c": {}, "lkA84ZZ9LLrBZZ2m": {}}, "user_id": "OZtY96NTX29oslOi"}, {"extra_attributes": {"J3AeANu1InQVOhWI": {}, "Q0kkY83VOw7S74Mc": {}, "mH4PDQLM2vyzUQkP": {}}, "user_id": "vN5zxheWP1MELNuG"}], "ticket_created_at": 70, "ticket_id": "8FBWgZ8nm0WoFlrf"}, {"first_ticket_created_at": 26, "party_attributes": {"7p6s4i1W39sCDX7Y": {}, "iVhZVLVAzCcpKNZR": {}, "YzvTlsCUSUFTxTlE": {}}, "party_id": "ARY8WjQiTJ6Mu3GV", "party_members": [{"extra_attributes": {"o9R2Nnz4gEeea19Y": {}, "dEBPmtiL6e4GLSBO": {}, "IMtEuKEzwOOhjImr": {}}, "user_id": "8BgyKrs4vhV0Gwf5"}, {"extra_attributes": {"HuUotG11PRyVT92X": {}, "ob2fqx8jeSwNcB99": {}, "Vcu4fyVPLcKkO1QG": {}}, "user_id": "xIiEkfdqVAnbRWS4"}, {"extra_attributes": {"y2CwDss4Ge4lgXI2": {}, "Sa9cLECLT9p9r9Is": {}, "aFIGo82tMperdiFF": {}}, "user_id": "FKLmAxdbdBOZ1aEC"}], "ticket_created_at": 63, "ticket_id": "rgJfvcAs0pOzJTJY"}, {"first_ticket_created_at": 37, "party_attributes": {"xHLAao2fzjdC4fzZ": {}, "dPLJuCBkxxgsZMqZ": {}, "CN7wTz68gmGYv4BK": {}}, "party_id": "kn0DB45xwFmKy73S", "party_members": [{"extra_attributes": {"E7XCuuyHgT17ims7": {}, "N6XwodxAK8DsBt6D": {}, "yP0w5ZNTthDLFoeC": {}}, "user_id": "QpnfL30pSkdbv7IV"}, {"extra_attributes": {"F1bWPUiu5dlyoudQ": {}, "j6DJwghEY8Zt6E0i": {}, "IE81ULB37IUiYZBz": {}}, "user_id": "ztmdgK4lWU3gwyPH"}, {"extra_attributes": {"QgzOAooHtE66wTyx": {}, "xA40sqMoaEdRAa9N": {}, "lxS2VZE01CHydDOC": {}}, "user_id": "OAWxJUu5rWX2IXg7"}], "ticket_created_at": 89, "ticket_id": "haf77yPceITEEx1N"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'vSinf8rZnko2I00B' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 9}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '3f9lPp91iezOFEGK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'b87LmkVB8cPFH86O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'EhGXeQIByU5t97KW' \
    --matchID 'q54ewj4bgD3Y3vHH' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["Y1ks5gCkDpgMohyN", "QQdPQfsxqbX8GFhk", "hFwvdsvItCKyNHHO"], "party_id": "lOBWWg8eidhY0f4D", "user_id": "pU7aND1uDlGqLO7O"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '4UCd8PVCurDlMr9x' \
    --matchID 'x3CoJYJuMxNaE3WK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Gs6A69yuBIjRGSU7' \
    --matchID 'Y0I71rCKMHFJ4n9H' \
    --namespace $AB_NAMESPACE \
    --userID '9Hr56cRZJYmqcUAK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'DATMdksf91EXp9VJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetStatData' test.out

#- 33 SearchSessions
eval_tap 0 33 'SearchSessions # SKIP deprecated' test.out

#- 34 GetSessionHistoryDetailed
eval_tap 0 34 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 35 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 35 'PublicGetMessages' test.out

#- 36 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'PublicGetAllMatchmakingChannel' test.out

#- 37 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'Wzip1dCzH5dhFcxN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'PublicGetSingleMatchmakingChannel' test.out

#- 38 SearchSessionsV2
eval_tap 0 38 'SearchSessionsV2 # SKIP deprecated' test.out

#- 39 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE