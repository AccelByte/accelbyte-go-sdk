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
    --limit '95' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "WDggXnegdTMA5363", "description": "jk6dgfzddPQS9qoc", "find_match_timeout_seconds": 2, "game_mode": "5qOEfhF4E5KeDeYB", "joinable": true, "max_delay_ms": 82, "region_expansion_range_ms": 99, "region_expansion_rate_ms": 0, "region_latency_initial_range_ms": 98, "region_latency_max_ms": 46, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 83, "min": 30, "name": "v1T32C6uhLeckBUD"}, {"max": 46, "min": 68, "name": "JZPg3JebokAqAjWg"}, {"max": 36, "min": 0, "name": "EGiYWvlvf4H1yrmb"}], [{"max": 57, "min": 0, "name": "1T2OgaUJTIXiQt5A"}, {"max": 81, "min": 23, "name": "gXkdRcNuT4dpPF0c"}, {"max": 88, "min": 51, "name": "fX50nZxHlpdiGl7S"}], [{"max": 95, "min": 75, "name": "ocvVBfoYoeQe3Nnj"}, {"max": 33, "min": 87, "name": "qaCrCoctGt0c4Aml"}, {"max": 0, "min": 23, "name": "Ea7dBC0ZuIoX2IWY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 44}, "max_number": 18, "min_number": 9, "player_max_number": 4, "player_min_number": 18}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 29, "min": 35, "name": "L5tkOGphwhbJpSWu"}, {"max": 7, "min": 26, "name": "fnnp7ormix2j9QzX"}, {"max": 36, "min": 12, "name": "znGLkSNRMuwuHDV8"}], [{"max": 30, "min": 67, "name": "h4D3HboC8BrB5ret"}, {"max": 89, "min": 48, "name": "9aMS4RPIJaztQJvi"}, {"max": 47, "min": 94, "name": "zaUxtiCLMqRBIV8A"}], [{"max": 14, "min": 0, "name": "9qOLAXbTHXTAtqrv"}, {"max": 5, "min": 24, "name": "5jon2QYZJX5jwMMr"}, {"max": 14, "min": 82, "name": "DdDIq1u8Nh8vHBWH"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 57}, "duration": 31, "max_number": 44, "min_number": 58, "player_max_number": 47, "player_min_number": 90}, {"combination": {"alliances": [[{"max": 81, "min": 80, "name": "GTGBTjGGakxftcOW"}, {"max": 69, "min": 36, "name": "c9RAClKrHJV9APHD"}, {"max": 86, "min": 16, "name": "UJmGOG9gl9OZEu2u"}], [{"max": 48, "min": 74, "name": "cGHmmuVUFzUmZ6UH"}, {"max": 44, "min": 43, "name": "JNf3KYyElC3Ctimz"}, {"max": 46, "min": 83, "name": "njZFMX7uOB5lDcq2"}], [{"max": 1, "min": 61, "name": "9BK1qYRILXEQH2gP"}, {"max": 38, "min": 46, "name": "MBJj186wLalaZO15"}, {"max": 31, "min": 89, "name": "c8tV9KreWwR6mkBN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 6}, "duration": 99, "max_number": 55, "min_number": 69, "player_max_number": 18, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 85, "min": 56, "name": "7bqNCq9IMcTGi90X"}, {"max": 17, "min": 85, "name": "6IcnoNpkDGB4DblO"}, {"max": 45, "min": 94, "name": "jalZcyrN8dLhxOFH"}], [{"max": 65, "min": 39, "name": "T1jyes2p6Gze7N76"}, {"max": 79, "min": 62, "name": "UWP49mxzS6G0U1E2"}, {"max": 84, "min": 67, "name": "HrfKYGSAsDEh3EK6"}], [{"max": 61, "min": 95, "name": "UhrCSVPGQaeQmOW1"}, {"max": 0, "min": 4, "name": "02M7ydwajwPrT29z"}, {"max": 40, "min": 91, "name": "bdB0lcLSfoGM5GP8"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 9}, "duration": 79, "max_number": 57, "min_number": 37, "player_max_number": 95, "player_min_number": 97}], "batch_size": 56, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 12, "flex_flat_step_range": 50, "flex_immunity_count": 19, "flex_range_max": 85, "flex_rate_ms": 59, "flex_step_max": 7, "force_authority_match": false, "initial_step_range": 89, "mmr_max": 85, "mmr_mean": 67, "mmr_min": 86, "mmr_std_dev": 37, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "kHUDJg28VtBwhDkF", "criteria": "B2zQespZ2hjB0e0K", "duration": 50, "reference": 0.7170500202208859}, {"attribute": "ZXYXJhGwCmDhbmmJ", "criteria": "oPdVxIMdz5DRsv7d", "duration": 38, "reference": 0.7060931804260517}, {"attribute": "IeCPjut6DBqReIfX", "criteria": "zgZ3GHUUfjSIFluC", "duration": 14, "reference": 0.8839924633366751}], "match_options": {"options": [{"name": "fyW0j6vBrqsfmVYm", "type": "z02Oyq9BtaxTFgjS"}, {"name": "sqZz07bxtg5EBpZ8", "type": "PqdvrGnBSj4KcAJY"}, {"name": "uBQuEsNp04jTwim4", "type": "Q78Okgn84KqtL7yK"}]}, "matching_rule": [{"attribute": "WEAaAiWFMvloW9WJ", "criteria": "AinnXgkki9dmDOqE", "reference": 0.7852696612303175}, {"attribute": "9pqu0vUvaxBwAvDg", "criteria": "yjSSelSaDrdhQyFR", "reference": 0.3630014630966619}, {"attribute": "aGw6SHfowigsABwe", "criteria": "H4UYxq5kB9UCqwSh", "reference": 0.44175285629521865}], "rebalance_enable": true, "sort_ticket": {"search_result": "none", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 71, "ticket_queue": "distance"}, {"search_result": "none", "threshold": 88, "ticket_queue": "none"}, {"search_result": "distance", "threshold": 25, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"nqGb7rciKO6MeyM7": {"alliance": {"combination": {"alliances": [[{"max": 87, "min": 25, "name": "M26f29qNNphfRHQA"}, {"max": 66, "min": 8, "name": "bteQio8VF7uqgYC3"}, {"max": 48, "min": 31, "name": "7j0sSyM5QGSawyb9"}], [{"max": 21, "min": 8, "name": "AzPQ0fsYB0nRaBXc"}, {"max": 36, "min": 86, "name": "c8tOY8So5p4R5MFC"}, {"max": 7, "min": 46, "name": "P7QxtYWMs4KurYcQ"}], [{"max": 53, "min": 49, "name": "f6gZh7KVMC5xQ8FU"}, {"max": 39, "min": 9, "name": "PreXjFlqUk7QY1T2"}, {"max": 56, "min": 1, "name": "Zrd8cyQmZKpajGzW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 97}, "max_number": 73, "min_number": 51, "player_max_number": 63, "player_min_number": 22}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 33, "min": 59, "name": "DP5BiNH9mB06W2T1"}, {"max": 92, "min": 78, "name": "OPLY7KTmsQXnBQZZ"}, {"max": 74, "min": 15, "name": "iLjykBQNhI4wGc2b"}], [{"max": 14, "min": 66, "name": "eH8rBm4oBhBlmaVt"}, {"max": 90, "min": 70, "name": "T94LpajXGblwkEjt"}, {"max": 81, "min": 52, "name": "XJSa8UYxTpBMnnLe"}], [{"max": 87, "min": 54, "name": "DbLKi3Zki8WLmegg"}, {"max": 92, "min": 94, "name": "B0s87ExEQjCAxliF"}, {"max": 91, "min": 92, "name": "peF9ZZS198WcfooF"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 4}, "duration": 73, "max_number": 59, "min_number": 61, "player_max_number": 76, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 99, "min": 77, "name": "6Z3pNurJpwIUmOSX"}, {"max": 48, "min": 21, "name": "EKA0dklhjJ71UFp3"}, {"max": 5, "min": 52, "name": "AYKTpY4Jmm3vIszM"}], [{"max": 89, "min": 78, "name": "VozvtqMNRtGPIJ02"}, {"max": 72, "min": 81, "name": "D9A1Ihaf9JIRGGCC"}, {"max": 31, "min": 37, "name": "oexe7BOK6Bo4B0jF"}], [{"max": 9, "min": 67, "name": "I5kQmrAsWOz0hTlg"}, {"max": 49, "min": 44, "name": "yKUi7LFR8yPdiR2P"}, {"max": 38, "min": 62, "name": "t9T6viVwgVvvEzB1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 31}, "duration": 39, "max_number": 38, "min_number": 47, "player_max_number": 17, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 23, "min": 39, "name": "uVPuV8jwErEIG3pN"}, {"max": 24, "min": 31, "name": "FJmJqyF1CxeQuZsx"}, {"max": 25, "min": 63, "name": "kSz4FUoWM4yz0Cyh"}], [{"max": 44, "min": 55, "name": "FS2XjnZ90vIyqtWf"}, {"max": 62, "min": 15, "name": "UA8aa2S1HaPUJJZx"}, {"max": 27, "min": 97, "name": "RqHIvruzTGcRN7w2"}], [{"max": 34, "min": 40, "name": "WvLzBChQHJDARkc4"}, {"max": 10, "min": 29, "name": "xSEiWvrm5rFgWCW6"}, {"max": 65, "min": 5, "name": "HTajOdLy3Q0bbOiy"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 34}, "duration": 11, "max_number": 3, "min_number": 24, "player_max_number": 3, "player_min_number": 78}], "name": "BcvxOW2mICB9v9pm"}, "wOLZuLJrjXT8W71C": {"alliance": {"combination": {"alliances": [[{"max": 77, "min": 8, "name": "Ca7P57B8cPylu972"}, {"max": 44, "min": 13, "name": "PZYSrLl5girVWJfZ"}, {"max": 22, "min": 77, "name": "vbm4W05PpkcsWr05"}], [{"max": 19, "min": 13, "name": "UvuYGluJYXZRd0aU"}, {"max": 80, "min": 44, "name": "qxOfrGXTzYLA9dDG"}, {"max": 90, "min": 93, "name": "DWhmMHuon0u2VNn5"}], [{"max": 79, "min": 21, "name": "dXenVSCpim2JDW7Y"}, {"max": 10, "min": 49, "name": "XEsXcmozlVBOJbmf"}, {"max": 64, "min": 86, "name": "GOEeHIQmfhqMh3uq"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 5}, "max_number": 80, "min_number": 20, "player_max_number": 91, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 74, "min": 34, "name": "orwi3iuTCDuZ4x38"}, {"max": 67, "min": 36, "name": "zsmRTrg2fPxICUTL"}, {"max": 91, "min": 46, "name": "Cywgiv7EwO8JURpp"}], [{"max": 53, "min": 15, "name": "0DAbJaQof3ks8kLH"}, {"max": 47, "min": 76, "name": "iH611OJ55LSrQNII"}, {"max": 38, "min": 11, "name": "XQZf8bU8qK9hnliI"}], [{"max": 65, "min": 19, "name": "QbVZOHam5GSraq0c"}, {"max": 84, "min": 23, "name": "m8wz3SPabFPxAjB2"}, {"max": 70, "min": 38, "name": "D0xnXoTkboSWdplq"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 74}, "duration": 58, "max_number": 11, "min_number": 48, "player_max_number": 87, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 31, "min": 61, "name": "uYBaFxxDR0vnDmZL"}, {"max": 95, "min": 50, "name": "RP2Vkth82hyWcEpE"}, {"max": 8, "min": 21, "name": "Hobe2gLULXfFizuW"}], [{"max": 69, "min": 45, "name": "8pgz1RwvRI9tU3cB"}, {"max": 61, "min": 39, "name": "e9F7yEFPqN8lsOgj"}, {"max": 68, "min": 1, "name": "hyyHn9oG1hsHvyeb"}], [{"max": 33, "min": 83, "name": "UX4rcrIGBFkedytE"}, {"max": 53, "min": 56, "name": "UzYoIddcysJDNX1y"}, {"max": 97, "min": 6, "name": "On8Nbe51QrDZktxd"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 9}, "duration": 92, "max_number": 81, "min_number": 71, "player_max_number": 36, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 49, "min": 55, "name": "te3OdurAbgCTqqYQ"}, {"max": 67, "min": 96, "name": "2L5o0g4Zri8cxs6s"}, {"max": 30, "min": 39, "name": "DYCZJm5kPM6fj0h8"}], [{"max": 49, "min": 29, "name": "BXkmDC50NPScLd12"}, {"max": 75, "min": 54, "name": "RO8kRnPJi3UwOekh"}, {"max": 35, "min": 12, "name": "UFOkGgWCySvjor1b"}], [{"max": 42, "min": 75, "name": "c5Bh8Jgh2mWbVTXp"}, {"max": 77, "min": 62, "name": "NkrS4RXCEzOjmj4D"}, {"max": 85, "min": 16, "name": "HDir2bC9KuznwIE7"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 69}, "duration": 68, "max_number": 78, "min_number": 73, "player_max_number": 17, "player_min_number": 90}], "name": "Mg7nmRB9OKBKzTJk"}, "tYlu3VIYw8g6XrQf": {"alliance": {"combination": {"alliances": [[{"max": 42, "min": 66, "name": "xMdATfAULIX7nFCP"}, {"max": 5, "min": 86, "name": "bGYjejEplYdHyj3P"}, {"max": 89, "min": 73, "name": "JGyxVgo24sfxRjX4"}], [{"max": 24, "min": 0, "name": "bGE0B1DuCicWfv2N"}, {"max": 37, "min": 39, "name": "2RWWHPQmLkr0rCIm"}, {"max": 94, "min": 77, "name": "l4EO1SmxCWcZ2zuM"}], [{"max": 19, "min": 73, "name": "BaSFqZsGoU0uYI0s"}, {"max": 34, "min": 45, "name": "8ATEPDWmwDI3tqwT"}, {"max": 30, "min": 48, "name": "zhfv45kuWznJH2iE"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 91}, "max_number": 66, "min_number": 42, "player_max_number": 77, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 8, "min": 55, "name": "dx5iItrWEVfiJRNf"}, {"max": 69, "min": 49, "name": "sRq709xBrTL4J88X"}, {"max": 45, "min": 13, "name": "bXB6ADTmnEofpuSL"}], [{"max": 17, "min": 87, "name": "sv6uK4lQtKLrNHyN"}, {"max": 34, "min": 17, "name": "5eKdomHghjlj0UwJ"}, {"max": 8, "min": 61, "name": "bcgvRfPtL4uLF2mo"}], [{"max": 15, "min": 66, "name": "OALslDgDBGNwY1YL"}, {"max": 57, "min": 71, "name": "cu12CkGcabj1Of3O"}, {"max": 28, "min": 2, "name": "Flr2WYJwQlcRelSu"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 42}, "duration": 70, "max_number": 3, "min_number": 51, "player_max_number": 88, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 48, "min": 45, "name": "qdOoXfkQDh5e9n3b"}, {"max": 44, "min": 21, "name": "9odGRDIEBKybWV82"}, {"max": 61, "min": 84, "name": "Lry7Z76t1fnbWFOB"}], [{"max": 85, "min": 15, "name": "xTuEkCWlkxrObaVn"}, {"max": 53, "min": 58, "name": "OJfCdiuRMpMiqsRW"}, {"max": 30, "min": 50, "name": "dT9BbI9M3X64wrSy"}], [{"max": 78, "min": 76, "name": "AJWbXYYopSAm35Ag"}, {"max": 84, "min": 58, "name": "V2Era4isWYPznaqW"}, {"max": 7, "min": 95, "name": "AdTjWH69cvVOGSnI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 4}, "duration": 90, "max_number": 48, "min_number": 92, "player_max_number": 33, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 80, "min": 19, "name": "VJCSdObLsR3uN9Br"}, {"max": 62, "min": 79, "name": "Qtz1MCwrE2jDcPgN"}, {"max": 61, "min": 27, "name": "9uVfD3fspnK7GxRG"}], [{"max": 56, "min": 57, "name": "cudOZCCOWGEo9Lej"}, {"max": 22, "min": 66, "name": "XcG9uyWBQDSgkFBf"}, {"max": 29, "min": 79, "name": "fTa7DvlPDva2o4t5"}], [{"max": 40, "min": 37, "name": "A9xdG6p2mK1jOA4E"}, {"max": 54, "min": 5, "name": "Le77UDgHRApznNRk"}, {"max": 55, "min": 14, "name": "VzD3k2RoiqQQ9hu7"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 90}, "duration": 78, "max_number": 70, "min_number": 90, "player_max_number": 31, "player_min_number": 81}], "name": "g9l8pnZ21LOyzVfo"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 35}, {"selection": "pivot", "threshold": 100}, {"selection": "newest", "threshold": 72}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 30, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'wBYRIBgrq9wKkwQ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'SJVKNbNvESjvu37z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "ITCfGusJDYZ5mLrr", "players": [{"results": [{"attribute": "sFQmnD5JdKHSvrKU", "value": 0.5326268412623205}, {"attribute": "TTu7cHN20Ts3ih7b", "value": 0.20006375907630913}, {"attribute": "BX7t8ZuZRxGIJFJN", "value": 0.8842059087138396}], "user_id": "khav23tJDNruhXMt"}, {"results": [{"attribute": "IUUjYziIMMSc6mrL", "value": 0.13664387027296776}, {"attribute": "OtH8vdX4xMQVUZWJ", "value": 0.7906794168290354}, {"attribute": "igU4uiZbpSSdGMsa", "value": 0.1745231924756141}], "user_id": "pVtCm4EYOQ6JdWgm"}, {"results": [{"attribute": "Zqrx9YRtC7W7HUU5", "value": 0.49744651878810375}, {"attribute": "1cBtpZLY6aaO9sAR", "value": 0.9973720221874192}, {"attribute": "he92xGSjDldwzQcq", "value": 0.9966124980155076}], "user_id": "Qsq8hsmeQdb6L3mm"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "pDVTa2dCe2ZQ6C0e"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "WeJWIpgj4KXfgTjc", "client_version": "CMu1fAYjBN24C3TF", "deployment": "nn16E3YNBQWifoTF", "error_code": 23, "error_message": "6q6wNAJmM4U7Yz8g", "game_mode": "0rXwXk6Wb7O6dnob", "is_mock": "xwncSQqRFX7jvq9H", "joinable": true, "match_id": "yFklVWrcniH73CRd", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 67, "party_attributes": {"S46lcy8XwbsT7NV2": {}, "fYmq3RACtqFzN92r": {}, "jvJS4oGRpGIelyG8": {}}, "party_id": "LkgS2n0wynlqI795", "party_members": [{"extra_attributes": {"kgBYPBiDZYXZY2s9": {}, "I1OuCZpTuJyqi3gy": {}, "9oI7BtlT5T2fTrni": {}}, "user_id": "bBTgxbPd9bE6Eg1W"}, {"extra_attributes": {"vtUv1TNebrgSf5KP": {}, "8Tj3oxEGQSqqjnpL": {}, "FEGWpGFdu6BFMD2k": {}}, "user_id": "bOuXvBtGuaBwjpSg"}, {"extra_attributes": {"V6QIcQEPpz64DALK": {}, "ddwWwfXmzIY0tqHc": {}, "mkqd5xlr6TpaYJNQ": {}}, "user_id": "ZwxQ5v7Kh8XMmIJC"}], "ticket_created_at": 26, "ticket_id": "mxRr4akzX4Nnfotv"}, {"first_ticket_created_at": 3, "party_attributes": {"fl3kM27TQeq6x8bf": {}, "w9oaPAfWBuXAscvh": {}, "D1sCjnf0oo9E3hS8": {}}, "party_id": "KisQGxTOoToDXsWZ", "party_members": [{"extra_attributes": {"80snifZRXknX0Rsb": {}, "vQZuKLCCcfyJZLxD": {}, "U0ZkPyiik4jZBLGF": {}}, "user_id": "lfR1kMZvlJeK8Ktj"}, {"extra_attributes": {"TfO9aHX3BlphiWLo": {}, "iURIvMzqkOXf93Tc": {}, "tBuRjhrrna6J5e5m": {}}, "user_id": "y2FVGi605OTjj5yT"}, {"extra_attributes": {"43cvjZyQODVI1Yl1": {}, "2GJB00Vp3tSOThY9": {}, "JQEyqqzYFZ3ErExm": {}}, "user_id": "pXpiOtrx2gLsvb1u"}], "ticket_created_at": 69, "ticket_id": "CbJJBDtX9JUMPhMY"}, {"first_ticket_created_at": 75, "party_attributes": {"KtBo00Yx5RoI9dBI": {}, "WawocrXFlXLMU0vk": {}, "8FbCQjdF3F9JsGs9": {}}, "party_id": "kB0jdRv7VMuCbcFg", "party_members": [{"extra_attributes": {"5tOofofVuzHHiJqO": {}, "yfnvTGEJ3VoZLRkL": {}, "GfvSbxO8oQykXoru": {}}, "user_id": "X179porAyaJNzW2v"}, {"extra_attributes": {"Mi1FWNkprgtuAp8r": {}, "JcY3DjPgVaAEzNyd": {}, "aiaJ7lI8we9aIkSU": {}}, "user_id": "x8fzLFaHZRW7oTTq"}, {"extra_attributes": {"0mNnz4KmiOssNBwn": {}, "xFyiRLY6gCcMrZtG": {}, "Zq3mpJnLVsWxYnfw": {}}, "user_id": "X9GTPOFTtgadHpN4"}], "ticket_created_at": 51, "ticket_id": "nlUZmvQ5ruiX6roa"}]}, {"matching_parties": [{"first_ticket_created_at": 16, "party_attributes": {"iygpz7lWtJ3fxXPv": {}, "MiP0rrtcZGZpzppb": {}, "xPuTxsi001XCtsyr": {}}, "party_id": "5rnJEXHNRFDrmmlf", "party_members": [{"extra_attributes": {"w9VpkIoCsfxSNQo3": {}, "FzZwa8jtQ7CcSGjC": {}, "p5GZZAyqxBFrpjvH": {}}, "user_id": "HOhFNLdtvaW44otq"}, {"extra_attributes": {"iBO6fpiRdfUIZUyM": {}, "xraXLjaUhFO1gHV8": {}, "go88CV6OcA8Aq7mz": {}}, "user_id": "a0iXeSoi9jjNT9Ws"}, {"extra_attributes": {"4Aphh6hd9jm2d2QK": {}, "Tktv3DKfiFFF0HKu": {}, "3BEZ4DniWwYQq0d6": {}}, "user_id": "QgQrUrQ3HoK5lM0k"}], "ticket_created_at": 31, "ticket_id": "xL1mkcqv96LSc0iS"}, {"first_ticket_created_at": 60, "party_attributes": {"8764UTRS1gkNcwhI": {}, "dBIyvlyyf47tIPRl": {}, "kwQPZUHWzDK6VKxU": {}}, "party_id": "5BbFeVSKRBJwJt3g", "party_members": [{"extra_attributes": {"Cvrd18SMdsHSSCkd": {}, "EuiEuabFHepFXOmA": {}, "sbbiQXKqjnRQEKVo": {}}, "user_id": "9aEIzdIY9MXbSmlt"}, {"extra_attributes": {"PsjFSlpNDXlswsuE": {}, "kDOa4GmVclSwYcqh": {}, "haKAFaSIZr3k4KgX": {}}, "user_id": "z54vsMuKKNaZh2Tt"}, {"extra_attributes": {"DHwDqjjJPyxHtGHc": {}, "wKYa80lvh3WHs79O": {}, "myNhpE8S5j4LaBg7": {}}, "user_id": "zTmesc9Xjwrmtdgh"}], "ticket_created_at": 73, "ticket_id": "PUivwMXibRNjViwI"}, {"first_ticket_created_at": 13, "party_attributes": {"Fjj8g8m0kMBjO3z0": {}, "i5qJr8y1OsELCDgs": {}, "3rBtcDQKysnm7ewr": {}}, "party_id": "yW6vbFw1VLAD6eq4", "party_members": [{"extra_attributes": {"4VgHo3vLj6rggidW": {}, "jFhkKj3ZNwKuvViW": {}, "2EdIi3loXxJdOLsG": {}}, "user_id": "FR1AslxaSwhRfkjU"}, {"extra_attributes": {"0x9mwj1mOd1iE0jN": {}, "sqvYqxHgAerGtrih": {}, "P4ELMkIqJMXgsWRW": {}}, "user_id": "rYxelXRqTKCy6qt4"}, {"extra_attributes": {"jcJarTBRa6LfSwDk": {}, "T5uQPBgqwYVtYmoP": {}, "1EATkBFcccbcSHl0": {}}, "user_id": "U5hw5zQh4qf1hMqZ"}], "ticket_created_at": 47, "ticket_id": "vBPjx353sVMoUCVP"}]}, {"matching_parties": [{"first_ticket_created_at": 1, "party_attributes": {"gWxkWwSbpkPyEScr": {}, "0TLa0XParq7qHADv": {}, "JVGdpi2hTd93xCvn": {}}, "party_id": "Q6G89AsRkSkL0TOo", "party_members": [{"extra_attributes": {"JXFhVVzkY7PemN3y": {}, "O2gezRLrvtNBUFaC": {}, "6GTU86KMMaGCHwC8": {}}, "user_id": "JXPnkmDzYKgxbAcs"}, {"extra_attributes": {"HxQEoKTCFdZsXswo": {}, "RPb1H5OmTJcj2HCG": {}, "Jre09Rc7F2dcwvOH": {}}, "user_id": "bz0NnjUxZhzmSwa4"}, {"extra_attributes": {"pwOLDnxb8y37VXKb": {}, "j98bs95iOvUEai9W": {}, "zfd5jThtuZMNnrdp": {}}, "user_id": "pWKQjPN7G54SYtL8"}], "ticket_created_at": 30, "ticket_id": "nO3HPUv1m3SrLHa8"}, {"first_ticket_created_at": 62, "party_attributes": {"0BENfU3Ci3XsUB5k": {}, "lrAIHGEWVUMpfFok": {}, "3xhqh1eZQgHsCYjJ": {}}, "party_id": "9GyTOciWmS4yN2dY", "party_members": [{"extra_attributes": {"TJp2GzeXxyP7URfm": {}, "PUKf6ZdISQLk4c8w": {}, "lPLNA7LNqTW7rX74": {}}, "user_id": "oiPblxOQ5QT3PvQ6"}, {"extra_attributes": {"O5LQUG28nOSITOvw": {}, "SZgdFLDanpRPhXtF": {}, "4BG3OkdhoDP6VKna": {}}, "user_id": "ISXvKc6E7oCTE8QR"}, {"extra_attributes": {"B2QRsD5I7uMngUZ8": {}, "VrRcGX3NkmnGErUu": {}, "cY4zxChh5qWYS7xh": {}}, "user_id": "EnXC2VdUFcbVVgVo"}], "ticket_created_at": 3, "ticket_id": "4dMZBiUf0NAPUFPl"}, {"first_ticket_created_at": 26, "party_attributes": {"e8PQKTExbql6riZ2": {}, "trQYo71QEDSDsKEU": {}, "lvfpw20OsuW4u4L2": {}}, "party_id": "bF0EhWdlO3DHQOd4", "party_members": [{"extra_attributes": {"f5KfmxKLkzgprP8f": {}, "hVL4FKgMywtpil6p": {}, "iJSwkXtkTQP5iKs1": {}}, "user_id": "za5HDlYGs8I0pWrf"}, {"extra_attributes": {"hEsmicigQMGdOqZ4": {}, "1faoMAIs1GEapFaE": {}, "HhVXlOWRUB44NLt6": {}}, "user_id": "gDauD3bmlI4KMjEv"}, {"extra_attributes": {"tcJBFsP6knvEO5AI": {}, "cbFVWutFd9OKVILF": {}, "vcKZQexbAnSV570c": {}}, "user_id": "GfH3DEvJCreEtWnq"}], "ticket_created_at": 100, "ticket_id": "3TFwr6b68KRXvFnL"}]}], "namespace": "cjAXRrlbJtV4zwpy", "party_attributes": {"BpYgfzha0s3jPnxA": {}, "VBw4VJdOXHnTiyB0": {}, "M4EYpSkKMZiIghLQ": {}}, "party_id": "dOaBxE00otjVmYPD", "queued_at": 76, "region": "7tL5fRnPpvoTIQbh", "server_name": "L9V4hQx7apl8jIwv", "status": "mOZJ8rYVTnmh5uNg", "ticket_id": "aT6RNl5elp1R8Qha", "ticket_ids": ["5CuKqSAKlCzKfvJG", "DcAfgw950hans14r", "m8BLXZKucksd2QAQ"], "updated_at": "1999-12-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "gOAtbo34PPdO1IwP"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'DqVPB5PmYYpfKeri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 76, "userID": "kCUTwGTIFCAUCdVd", "weight": 0.2886050130000485}' \
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
    --matchIDs 'xY0SVPSTTsGQR7la' \
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
    --strategy '7WineeY7eGjqxVFq' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'ayJXS9EE8WC0ksdv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'YNcXODvMOdoOaRee' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "rsEv1MzkJzOLCV12", "description": "UTcGVpFPOilYTvgu", "findMatchTimeoutSeconds": 42, "joinable": true, "max_delay_ms": 42, "region_expansion_range_ms": 12, "region_expansion_rate_ms": 0, "region_latency_initial_range_ms": 45, "region_latency_max_ms": 45, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 94, "min": 90, "name": "bXDIgIo2YfrOiBRC"}, {"max": 85, "min": 36, "name": "S3jRzURF3W0SGAQ1"}, {"max": 37, "min": 37, "name": "fxZWda8qIzsfZYep"}], [{"max": 51, "min": 76, "name": "SsKRAo41cDgUZXnu"}, {"max": 83, "min": 83, "name": "PRpwy4gBa3IBMoOz"}, {"max": 82, "min": 12, "name": "cCFfmVrahA9nkHsk"}], [{"max": 69, "min": 88, "name": "fUvWZerhVwvwKTTI"}, {"max": 53, "min": 15, "name": "BFNe4PNtzw4EeCwN"}, {"max": 38, "min": 35, "name": "UBQhdCKxnwLO64iM"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 90}, "maxNumber": 96, "minNumber": 74, "playerMaxNumber": 25, "playerMinNumber": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 65, "name": "a4rhGie7pOrGjSUW"}, {"max": 16, "min": 80, "name": "t9uzDtSwBR85r7Qk"}, {"max": 2, "min": 87, "name": "6nhSMaaIY7ml1Ri0"}], [{"max": 89, "min": 55, "name": "DK0vtisw22BEy9CI"}, {"max": 55, "min": 88, "name": "v1Z7v056mVGPkSeo"}, {"max": 19, "min": 62, "name": "qjD4FdR3J6YuTj6G"}], [{"max": 44, "min": 99, "name": "ypwUAxhQC6D00k4n"}, {"max": 38, "min": 57, "name": "kmHWvdE1i86io6sa"}, {"max": 99, "min": 0, "name": "Ym2kfl7zabxItLmX"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 35}, "duration": 64, "max_number": 93, "min_number": 19, "player_max_number": 74, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 29, "min": 86, "name": "Al8YK0RFB8F0Fnaj"}, {"max": 18, "min": 81, "name": "f0gEwKHYvDHFop0O"}, {"max": 12, "min": 46, "name": "jS56qTPXYWiDUp3t"}], [{"max": 35, "min": 12, "name": "tYsJkZu47TZXzzmE"}, {"max": 64, "min": 99, "name": "TP4TsR4Vki9BF58z"}, {"max": 89, "min": 25, "name": "BXqjQSHnO2E4rDjG"}], [{"max": 34, "min": 91, "name": "mMeWRBFFtNWkBBK5"}, {"max": 53, "min": 82, "name": "9f38PuoSnJku4aPy"}, {"max": 84, "min": 79, "name": "EzPaiLJE7ByL68Yl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 23}, "duration": 99, "max_number": 100, "min_number": 0, "player_max_number": 7, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 57, "min": 84, "name": "1KPf4QZlFGSo9f9z"}, {"max": 65, "min": 14, "name": "ejuMwCpdgoGQqunb"}, {"max": 46, "min": 57, "name": "oh7wZjVcofb2e8X7"}], [{"max": 38, "min": 77, "name": "R0PLiYj5KCAW3uIi"}, {"max": 46, "min": 11, "name": "cTJznCV7aHkbBr6V"}, {"max": 10, "min": 10, "name": "cunPsJ2oFWvehj1W"}], [{"max": 69, "min": 7, "name": "AZjFSxILfBlBJ2Hp"}, {"max": 17, "min": 54, "name": "Upr4z6xbZFpOjmmk"}, {"max": 83, "min": 27, "name": "z6PWxkqtOxy3IZ0Z"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 17}, "duration": 90, "max_number": 85, "min_number": 60, "player_max_number": 50, "player_min_number": 25}], "batch_size": 37, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 18, "flex_flat_step_range": 89, "flex_immunity_count": 85, "flex_range_max": 41, "flex_rate_ms": 5, "flex_step_max": 17, "force_authority_match": true, "initial_step_range": 70, "mmr_max": 83, "mmr_mean": 39, "mmr_min": 91, "mmr_std_dev": 53, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "XOJPVaCRcRKZhey9", "criteria": "DjrZtauI3tJQ1vmZ", "duration": 48, "reference": 0.34704810030623756}, {"attribute": "juBCeasMhfrDDvVu", "criteria": "hj1cpsaYx9719D6o", "duration": 96, "reference": 0.029086173213975774}, {"attribute": "OUiJAr5obyPKqBRQ", "criteria": "WItWAlqa5sVQj5XY", "duration": 29, "reference": 0.7615850058633438}], "match_options": {"options": [{"name": "7KJlGDE06tO52OYQ", "type": "w9S0nKLbxtnpqyeU"}, {"name": "ODN94LEepf5O3jUV", "type": "6xKMgLicNcXlfAjU"}, {"name": "oG0f4JuaYjW4uBiI", "type": "TNkcspdfKIOeiP7F"}]}, "matchingRules": [{"attribute": "Ywishx5fcs0WF9be", "criteria": "RKCg4YL2f9TKfpgc", "reference": 0.20181134683076518}, {"attribute": "GbMHpG3Oo6KNqDnU", "criteria": "6v09Scd1ixvDZzQz", "reference": 0.40516289624196067}, {"attribute": "GMvIErukhOQSK61v", "criteria": "K5fSXC8DMADbrLUb", "reference": 0.65378668769378}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 63, "ticket_queue": "none"}, {"search_result": "largestPartySize", "threshold": 100, "ticket_queue": "random"}, {"search_result": "distance", "threshold": 50, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 3}, {"selection": "random", "threshold": 69}, {"selection": "newest", "threshold": 80}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 6, "socialMatchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'sQe0y7NilS6pWxS4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'ckSYaoVoMHc8sdsi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'p4g1FIi3AlxLCO1O' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 37}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'YaArr7ZIRzqhx8rb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'MeuOu2IN5LbAefNy' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "sXALmORrqeQTxEr1", "count": 31, "mmrMax": 0.7552846299374876, "mmrMean": 0.3882278508406395, "mmrMin": 0.013673327516519285, "mmrStdDev": 0.5668845555623524}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'P31NxNV0JdTvmxES' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 22, "party_attributes": {"0Wa9SLLb5nKFxLMV": {}, "WZYIKXv69yx8CK00": {}, "W9x5W6UGHTs3S5xr": {}}, "party_id": "nUowEeCg6JXBhJMp", "party_members": [{"extra_attributes": {"28gX14aiqj5yDXYw": {}, "jTALPlvemvGPu8JL": {}, "TfpyNDfJTb6YxT6O": {}}, "user_id": "0c1gYCWEtUHW4d3l"}, {"extra_attributes": {"lJ2hlP6vjlnyZayZ": {}, "JAx64dSVH8VPJmOf": {}, "00l6g7u219AIhyiv": {}}, "user_id": "SE9kFshbJfuDm2Bg"}, {"extra_attributes": {"yBG9BPOMaPLyDrPZ": {}, "NBjbIRPJKii346Kx": {}, "FqQMURQjQ4ygsO5T": {}}, "user_id": "CW4njXMkBag6APS4"}], "ticket_created_at": 39, "ticket_id": "uPcsUxM3fNYxx6a6"}, {"first_ticket_created_at": 67, "party_attributes": {"EvETY766jCfBtNiX": {}, "Hcp6kmdOqZ8wo0jE": {}, "ImDdMI4ZFyS2E3f6": {}}, "party_id": "LQWgn2MkFEmth7EE", "party_members": [{"extra_attributes": {"qSAht5gEhTZentSH": {}, "OjVarehpYzwZLc2x": {}, "fT171EQv2SlZ6rHm": {}}, "user_id": "gVgZPVy0pTqivWbN"}, {"extra_attributes": {"l6Cqstnn4AI15yQ2": {}, "raXV4C1VhccboQff": {}, "JOBFQUtxCZuj2Vi4": {}}, "user_id": "t7kXsqIiYEpmTN4Q"}, {"extra_attributes": {"x1jhGtifPyafNYwj": {}, "UoGLxOyAg2HaoiOk": {}, "XT6VPyjfFErnrPt4": {}}, "user_id": "1787yNlN1nUR7XB5"}], "ticket_created_at": 51, "ticket_id": "PYjIB4JUe6fJsxjQ"}, {"first_ticket_created_at": 28, "party_attributes": {"Sz7rWTZBWgsqRuF8": {}, "OnjS4xSY8ts85sPW": {}, "FMYcgiNddsSt2nUr": {}}, "party_id": "VMe1FMEEHMmfkZK7", "party_members": [{"extra_attributes": {"hOJ4q9Pv2fLoEzLl": {}, "rlH5xJ0Vdyws21vN": {}, "kXoBJ5G3FPzE98Bo": {}}, "user_id": "FrzJuzDx3HlhLcBK"}, {"extra_attributes": {"7z5aWrMm0xDI8Sdo": {}, "XMHj4fqDFWxmWTx4": {}, "TeRL75UiweSLQFxv": {}}, "user_id": "ZXrUmef2tT56OjK1"}, {"extra_attributes": {"ZcuPgXTzczuh5dpb": {}, "YnmJ5PUrFG7Gg6ZE": {}, "OypHtOJ0JFQhYt7U": {}}, "user_id": "OJUy6PDZSvpvhuSb"}], "ticket_created_at": 81, "ticket_id": "cuAusbXVwRzHFWOQ"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'U3nnv94tUUUicUp6' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 80}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '8HZP0xZVAqP3GYRn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'SV18mXF2YmD3tX55' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'NlPhxNuHASpmJUN4' \
    --matchID 'urUF7IM9Q0fwtw5Z' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["wCLt95jcZf1zAlY4", "Kc5i4mWfQnEgYQ8C", "cab5zkqmzDitDfKd"], "party_id": "obqPoFXbSYdKyiJk", "user_id": "tFMMjBXCGB0mxUy2"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'LHnkARMD4yaMcWfF' \
    --matchID 'BtUHknNdoXsUhQ9f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'VkGFGdueS7zSOrWN' \
    --matchID 'iWXze8z5uNHQBgzT' \
    --namespace $AB_NAMESPACE \
    --userID 'HHUln96DsTDkOy9W' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'glDNUXHHMrz3KZuV' \
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
    --channelName '6ncvt6GXHdQaB7OX' \
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