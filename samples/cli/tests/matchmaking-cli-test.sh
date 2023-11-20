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
    --limit '68' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "Kac6ybjUmxko53YG", "description": "MtOhX8EDN7AUftK2", "find_match_timeout_seconds": 82, "game_mode": "hWimyi11ccBYsHYa", "joinable": true, "max_delay_ms": 19, "region_expansion_range_ms": 50, "region_expansion_rate_ms": 61, "region_latency_initial_range_ms": 4, "region_latency_max_ms": 41, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 38, "min": 24, "name": "0LOHADRokmC4wiUv"}, {"max": 82, "min": 80, "name": "KE2NiRrBUVxQSZyy"}, {"max": 54, "min": 84, "name": "ZC2oVqx7xlO80POz"}], [{"max": 18, "min": 3, "name": "TGesSkWbV9N1iRow"}, {"max": 1, "min": 57, "name": "FXC4BMyh7gcBSKL5"}, {"max": 25, "min": 51, "name": "jQ2VUVVQGXT2eFZR"}], [{"max": 55, "min": 41, "name": "mnu72HFXvajpST1N"}, {"max": 77, "min": 80, "name": "6Tpaq3LgZVmSHbQO"}, {"max": 21, "min": 38, "name": "iJxWgH6efreIZIsm"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 96}, "max_number": 20, "min_number": 75, "player_max_number": 65, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 74, "min": 69, "name": "0a6oCh1WZEE5Avzg"}, {"max": 82, "min": 24, "name": "nfNIdaAVzcsJ2MCB"}, {"max": 90, "min": 74, "name": "cVaRg0riVujzqw7o"}], [{"max": 94, "min": 26, "name": "4DgQv2gn2mIhsB3u"}, {"max": 96, "min": 36, "name": "AChrBFA8XRiAoo1b"}, {"max": 1, "min": 10, "name": "CmE6Tb3QL0KEA3tc"}], [{"max": 65, "min": 58, "name": "JZcTFuO5PlYtW17b"}, {"max": 61, "min": 47, "name": "kQ7InDCJTo0ocDx8"}, {"max": 78, "min": 71, "name": "a4nrbn2jqvFJB5EO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 70}, "duration": 63, "max_number": 25, "min_number": 90, "player_max_number": 17, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 49, "min": 21, "name": "feoURCR8m7qtpZfa"}, {"max": 96, "min": 67, "name": "n7LFMNvKumLfADmx"}, {"max": 57, "min": 83, "name": "Vch1QySi5iUVRmv9"}], [{"max": 37, "min": 60, "name": "bfKFuoMzmnDvRtC9"}, {"max": 45, "min": 30, "name": "STHFvqN1HIX2XX3J"}, {"max": 39, "min": 62, "name": "uC0IkX1tEtAh2DhM"}], [{"max": 30, "min": 98, "name": "TAWeuwjpTtxbgLkx"}, {"max": 85, "min": 51, "name": "gc801HUFzwoce2ur"}, {"max": 38, "min": 0, "name": "5xtHRToHoiRBfJJJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 24}, "duration": 36, "max_number": 89, "min_number": 44, "player_max_number": 96, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 51, "min": 47, "name": "LslqzfnkSV0FY726"}, {"max": 42, "min": 71, "name": "Zdu4hil1o0o6PK4t"}, {"max": 27, "min": 45, "name": "chsfEkAgzggqB6sS"}], [{"max": 66, "min": 28, "name": "r1TqxSaVepCWCYhs"}, {"max": 6, "min": 22, "name": "x0y7vQsivEMiuYj3"}, {"max": 47, "min": 56, "name": "jwwkNNZ4CtAAcx5R"}], [{"max": 93, "min": 85, "name": "x0D1lym2GsP5l0jz"}, {"max": 4, "min": 4, "name": "x0p3LxxPLtYd6Yrr"}, {"max": 39, "min": 17, "name": "9S1mXu9fWnxvy09Y"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 25}, "duration": 0, "max_number": 24, "min_number": 13, "player_max_number": 98, "player_min_number": 71}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 0, "flex_flat_step_range": 0, "flex_immunity_count": 27, "flex_range_max": 88, "flex_rate_ms": 13, "flex_step_max": 27, "force_authority_match": false, "initial_step_range": 100, "mmr_max": 48, "mmr_mean": 11, "mmr_min": 64, "mmr_std_dev": 16, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "flP02tIu1DEdvltl", "criteria": "6vxVRB4sddsxpeI6", "duration": 34, "reference": 0.8009159835696603}, {"attribute": "QQDdqvYxo3Zlmrdg", "criteria": "HMf6PFXBOXh3OlWa", "duration": 54, "reference": 0.8339673329614777}, {"attribute": "75PtsLHDl6jdNbDE", "criteria": "L9ioxVSjYRLr8OzK", "duration": 49, "reference": 0.7662868883829942}], "match_options": {"options": [{"name": "ms94IzIf53aYhTT7", "type": "wZMvBvTo7GgYJXfM"}, {"name": "kJKj5sAFbEM5Jlkm", "type": "9tjD4uGuRwARf701"}, {"name": "EHVjjHquPuYQIDbd", "type": "hFYehpanoWwFBBXc"}]}, "matching_rule": [{"attribute": "OhYp5Yq9hP4PNbiH", "criteria": "lS0gYUT6XAjWYQna", "reference": 0.09231283045892502}, {"attribute": "Dc306KdWZDnKyDDV", "criteria": "u782gd3mVzmTbwSW", "reference": 0.12405476748034994}, {"attribute": "y8ezk1OJg2hQg9Uj", "criteria": "bupdaFErZ7iZjRR4", "reference": 0.568404507747472}], "rebalance_enable": false, "sub_game_modes": {"hptsl4UQq3LMUnkC": {"alliance": {"combination": {"alliances": [[{"max": 21, "min": 0, "name": "WhGHNcQeSfkES4M0"}, {"max": 82, "min": 99, "name": "NQgb6MI7214gMEN0"}, {"max": 39, "min": 71, "name": "XSSIQCIf9msMd9Y3"}], [{"max": 83, "min": 16, "name": "BolHrG1qnfS3pFM7"}, {"max": 59, "min": 88, "name": "TuRF4wnAcVqaKJ1L"}, {"max": 40, "min": 90, "name": "VnHyZoamsxTSrviU"}], [{"max": 16, "min": 54, "name": "GAX5GQw2NlVrXE2w"}, {"max": 40, "min": 50, "name": "oqnG7DsqanyqOwOy"}, {"max": 6, "min": 51, "name": "cTIFIJmEISvivGQD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 6}, "max_number": 86, "min_number": 29, "player_max_number": 37, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 53, "min": 19, "name": "u8GH5B4EnvvMn00M"}, {"max": 38, "min": 39, "name": "q4kGSIepTrV8uvJD"}, {"max": 100, "min": 79, "name": "ARX0E2kaXEN0PEee"}], [{"max": 13, "min": 8, "name": "adTRuy9muFi10WXE"}, {"max": 31, "min": 49, "name": "WSg7YhxPYS4KySnv"}, {"max": 43, "min": 3, "name": "Npib5p3aOMT8s8Um"}], [{"max": 12, "min": 64, "name": "2pG1izMpYsqO5FTC"}, {"max": 87, "min": 83, "name": "D4h0JwnqyAETBdJX"}, {"max": 50, "min": 74, "name": "f1dnTD4uJO9drX7h"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 94}, "duration": 91, "max_number": 23, "min_number": 66, "player_max_number": 83, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 30, "min": 84, "name": "3VM8k6cFii9t6Grm"}, {"max": 15, "min": 92, "name": "Rse8PXrfHmrqED3o"}, {"max": 58, "min": 1, "name": "PTWSaI9Xfn50JZd5"}], [{"max": 74, "min": 67, "name": "DPtKYEQHpSK7GNkw"}, {"max": 41, "min": 54, "name": "NI8zxEKvovPVk4Ei"}, {"max": 54, "min": 4, "name": "GHngnWsmgYNfqPZw"}], [{"max": 67, "min": 98, "name": "Y3J1VpUDZrOy5X4C"}, {"max": 11, "min": 20, "name": "v7xCY8LbNNtJjyi6"}, {"max": 44, "min": 13, "name": "jAyeWVVihQUzcZdE"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 25}, "duration": 73, "max_number": 64, "min_number": 62, "player_max_number": 83, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 27, "min": 20, "name": "SD7ChzlH9zZyARlz"}, {"max": 3, "min": 30, "name": "gckGBTjYp0qmHc65"}, {"max": 7, "min": 4, "name": "jFxt1BEFGbCeQBK8"}], [{"max": 40, "min": 15, "name": "xtN6JfRzQCSS8E0h"}, {"max": 100, "min": 51, "name": "7Xmi950c28rJUM0C"}, {"max": 47, "min": 31, "name": "cvP08hq4LBWOYOto"}], [{"max": 38, "min": 10, "name": "JNq3U9Qhgc4x1JVf"}, {"max": 15, "min": 45, "name": "zkXk1Wh3rCdhIcqa"}, {"max": 58, "min": 97, "name": "HN8Yl1SfJRB0LTLn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 38}, "duration": 60, "max_number": 74, "min_number": 80, "player_max_number": 96, "player_min_number": 34}], "name": "6bHg5JEz8l7e9THa"}, "PuBe6CVK5rE3syAM": {"alliance": {"combination": {"alliances": [[{"max": 70, "min": 60, "name": "g7u0JwrptmTrTfLr"}, {"max": 8, "min": 44, "name": "HKFoWxvsUTNNPJD7"}, {"max": 96, "min": 25, "name": "uwh4H0OrdUUVp1Rq"}], [{"max": 44, "min": 52, "name": "ugZ3OyhsHxU2jwZ2"}, {"max": 13, "min": 60, "name": "v1ucFUnUgUMJXGi9"}, {"max": 48, "min": 30, "name": "goGo3ugz1WV3OxB9"}], [{"max": 90, "min": 23, "name": "nITPSL3HEsZJrYPB"}, {"max": 3, "min": 37, "name": "Gg1dDDO2G78X4mD5"}, {"max": 10, "min": 30, "name": "tIS0MfG25ugSendz"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 50}, "max_number": 23, "min_number": 60, "player_max_number": 0, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 72, "min": 1, "name": "sRAR7vuBG60w2g4q"}, {"max": 8, "min": 55, "name": "jUxHJuwOybq5gSu4"}, {"max": 13, "min": 25, "name": "ezOq5y0Y0RLkDvXE"}], [{"max": 81, "min": 93, "name": "ww7SPB6PAFq3Bjgy"}, {"max": 9, "min": 100, "name": "wipS1VO287IO2Tej"}, {"max": 74, "min": 47, "name": "GmPbeOJprrYb3efu"}], [{"max": 8, "min": 18, "name": "4dyxCbL87PHOyhRY"}, {"max": 9, "min": 25, "name": "bZTaUC9NP9SQ0ZFX"}, {"max": 75, "min": 8, "name": "DnpJVkaLDBXbx5R4"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 10}, "duration": 59, "max_number": 25, "min_number": 58, "player_max_number": 46, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 66, "min": 68, "name": "vEvjL8FUWXYlpgYR"}, {"max": 23, "min": 46, "name": "IYyzmAzhiiByme3n"}, {"max": 55, "min": 54, "name": "dkJv9ojwR4WgUcd6"}], [{"max": 12, "min": 12, "name": "07BZviDwEAEZsf2G"}, {"max": 50, "min": 49, "name": "jXmSGF9tH60cJGV8"}, {"max": 44, "min": 32, "name": "dLczsoAqaVyUWtnn"}], [{"max": 50, "min": 37, "name": "rDLACDqkqtA8hYZK"}, {"max": 97, "min": 74, "name": "OLa6O9c6pmg3Entt"}, {"max": 38, "min": 15, "name": "Epp4e7y42VpMjZXP"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 41}, "duration": 23, "max_number": 64, "min_number": 22, "player_max_number": 17, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 16, "min": 37, "name": "6EiGAIZcaGd2NJQ4"}, {"max": 16, "min": 33, "name": "ZPBBVRljatLhj8Px"}, {"max": 69, "min": 18, "name": "ihy72bEKsr5OwZEx"}], [{"max": 1, "min": 97, "name": "cTP0JezpK92ioaAo"}, {"max": 73, "min": 32, "name": "4MxNcF01KAfRn5ax"}, {"max": 17, "min": 84, "name": "EGAD34w377yv4tKW"}], [{"max": 99, "min": 100, "name": "w7aLoU5u54TqzTGW"}, {"max": 68, "min": 53, "name": "lG52vH4xMxe1rFf0"}, {"max": 55, "min": 14, "name": "0rytBoYt10whCWYp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 90}, "duration": 33, "max_number": 15, "min_number": 64, "player_max_number": 35, "player_min_number": 42}], "name": "Ctk86x1swdUj5l44"}, "QtaqSTfKyARigJTn": {"alliance": {"combination": {"alliances": [[{"max": 50, "min": 95, "name": "KqXv5IAUx5X7G58i"}, {"max": 11, "min": 22, "name": "2Xo1lCkMtLAgJHYN"}, {"max": 71, "min": 74, "name": "SjpkcMYZz5o00Brm"}], [{"max": 44, "min": 25, "name": "FoGk6YMaUNM4HoiC"}, {"max": 59, "min": 78, "name": "aae3782fy1LPKseQ"}, {"max": 38, "min": 5, "name": "FZkNIOEYOkZAskL5"}], [{"max": 72, "min": 11, "name": "YiNAlP7RubPil38g"}, {"max": 0, "min": 11, "name": "xsKOkD11txKdtJMg"}, {"max": 25, "min": 95, "name": "Pyh63wchOOMELCBQ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 35}, "max_number": 44, "min_number": 92, "player_max_number": 52, "player_min_number": 34}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 31, "min": 21, "name": "6hNQeWkE3FmSgI2v"}, {"max": 39, "min": 48, "name": "ZP8iFKJ7AgAI4qLL"}, {"max": 3, "min": 85, "name": "yrcCvPnhLsApU6Zu"}], [{"max": 63, "min": 43, "name": "dQ0KiVcJX68eYx7m"}, {"max": 66, "min": 21, "name": "lmofRW98wWZe63i4"}, {"max": 72, "min": 96, "name": "sQKNOkA5z7n7CENe"}], [{"max": 55, "min": 25, "name": "dDPZCiI1Dyd1ItDl"}, {"max": 91, "min": 33, "name": "9woK0pmUpGces69d"}, {"max": 68, "min": 73, "name": "Q1LLtcJab2UuHvvf"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 40}, "duration": 89, "max_number": 8, "min_number": 91, "player_max_number": 36, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 29, "min": 74, "name": "tKhU3p5sOrXmTozV"}, {"max": 45, "min": 23, "name": "wWMVJfWlFNzCM489"}, {"max": 90, "min": 95, "name": "cEaaVREbUrAtO1w6"}], [{"max": 95, "min": 11, "name": "0mxcmW6ZVv85yQ5h"}, {"max": 79, "min": 64, "name": "dLyhNnmkZuYPJHiZ"}, {"max": 22, "min": 58, "name": "HqjLiV01UFimMLGQ"}], [{"max": 63, "min": 31, "name": "CqTtMC2rRY8cIlvL"}, {"max": 24, "min": 35, "name": "OswY7sDRa7D1z9E5"}, {"max": 100, "min": 18, "name": "hG1cjPMNt7jjXVJI"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 90}, "duration": 65, "max_number": 70, "min_number": 56, "player_max_number": 92, "player_min_number": 35}, {"combination": {"alliances": [[{"max": 63, "min": 35, "name": "I2q0yROC9HxGhHZ3"}, {"max": 4, "min": 0, "name": "PtwOsPbnIvkSe1ts"}, {"max": 81, "min": 50, "name": "C0EJsg2wMsg4n4lJ"}], [{"max": 1, "min": 34, "name": "t2WZb9JQVFC8mdzj"}, {"max": 95, "min": 11, "name": "jAFN0iw0KKJyn4SR"}, {"max": 28, "min": 83, "name": "nsh6aabi7vk5ke5q"}], [{"max": 15, "min": 57, "name": "uBWYzfgvgY3RkNNn"}, {"max": 54, "min": 25, "name": "qWEMmVF8t71pZeAo"}, {"max": 79, "min": 52, "name": "DczjZp45rGuXBt3k"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 84}, "duration": 83, "max_number": 69, "min_number": 15, "player_max_number": 65, "player_min_number": 61}], "name": "aOXlRqs2SvArFIHB"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 50, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'm5KO9d2nsODYIjJ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '0ZuR3axfy5wWCVt7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JnWuP7aRBDSXKr49", "players": [{"results": [{"attribute": "j3bVryZ04NCYa21i", "value": 0.3701844186081851}, {"attribute": "zEWgSNyi2V0c8NVT", "value": 0.212076644715113}, {"attribute": "4WbBBlsgW8Vw3s0F", "value": 0.16273123447594717}], "user_id": "qvLojMgsU1uBhChG"}, {"results": [{"attribute": "DIrvHgXSUdyqd85x", "value": 0.5150504215771831}, {"attribute": "EfqTOVUkP8gTl0R5", "value": 0.5222674785379681}, {"attribute": "VsMn8e9YzjjA498b", "value": 0.2939356170409373}], "user_id": "Z1dQQakdUBwr253N"}, {"results": [{"attribute": "kcIfy3gEqd7XOeAI", "value": 0.22574995538350617}, {"attribute": "O1vKe5zzrGsPpNf3", "value": 0.7383341954761637}, {"attribute": "JECsp7Bfm5eDBJg0", "value": 0.9912097168797135}], "user_id": "Ty8nbnik9OMfYlhI"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Rosb5i0YMxLOzcmi"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "XAlBmDlrM6PYEBKi", "client_version": "O1Po1jATadceg1CH", "deployment": "nqxam2zDhbpRczBW", "error_code": 28, "error_message": "SqYDCEM7WxdyagH2", "game_mode": "dkf4BsoNwubEFNE4", "is_mock": "IkLO3jl7LVkeR1hX", "joinable": false, "match_id": "LezPHTcSRmjChlxy", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 98, "party_attributes": {"QJPKovusRLy7ZQcu": {}, "nOjkaF5Gy5qB9ag8": {}, "7MK1u2vEDA3LCBXu": {}}, "party_id": "AKEvNYt4n2aIHTn4", "party_members": [{"extra_attributes": {"BHn8hVpq81PMtfSi": {}, "Dkv5I62d9CjSAauo": {}, "kymJqbrn4vZSyDE8": {}}, "user_id": "NalOpFfTecybCCnk"}, {"extra_attributes": {"SIPraX2EXutljUNF": {}, "6JWJJMh9TDFPL6fY": {}, "THGZbnhpp0gX1sRL": {}}, "user_id": "RPcmlPGBEBHSFdQj"}, {"extra_attributes": {"VQJ7ljJUOuxeKNjq": {}, "Uh5xVT7y9aYVnYiQ": {}, "BF8cUhyivMgFWzHg": {}}, "user_id": "PZ7iNJG0n5SRWRNV"}], "ticket_created_at": 24, "ticket_id": "ztLutsBpkGEraRDg"}, {"first_ticket_created_at": 38, "party_attributes": {"vJPyE31js8U1VMQe": {}, "sH3PFPj68xMWu3Wh": {}, "VLz2wqxa6rXoy0UP": {}}, "party_id": "gbQWICal7GbaAb1R", "party_members": [{"extra_attributes": {"phakpkN20wxzIdQk": {}, "Ycc8cqqlPsiJrTcn": {}, "NtT0xa4M1C0nugzI": {}}, "user_id": "9qvQxyANat2IINu6"}, {"extra_attributes": {"4vkJYJFP4yOLwRGT": {}, "4xtapXbIJDKs3hHC": {}, "vbxML4lcrcTAi0wE": {}}, "user_id": "vCOMDkMFRLQGdXya"}, {"extra_attributes": {"eiZmUELUxwfEeXcd": {}, "DyWLoeukwp8oZOaG": {}, "jA4zh8DAClmIhV3X": {}}, "user_id": "MvlcJ3wIblMN2Blf"}], "ticket_created_at": 47, "ticket_id": "nxd5C2hV2IBRtRJC"}, {"first_ticket_created_at": 95, "party_attributes": {"GHEJvx25G1deTRTc": {}, "G9eFLULqplVGuRzG": {}, "Jz8xRd9Vq39xhoDJ": {}}, "party_id": "t7MGapFl77Y9eXyE", "party_members": [{"extra_attributes": {"RXQqKuVdfbAQfffp": {}, "TMb14XUDnMkeNfyX": {}, "4XevZYqILBkwrLon": {}}, "user_id": "jtGOVBsHWLodNrg2"}, {"extra_attributes": {"zT11vC82vBmZaUx8": {}, "IChjHqHPhgHCr7uu": {}, "bNWZgQyFxrdRHrXM": {}}, "user_id": "T3ukLROL7xlFXPbV"}, {"extra_attributes": {"a4zlX8qlPCLFHTbB": {}, "L2wj6GTu1VXyt0WB": {}, "qTMGPYo5dImcnasi": {}}, "user_id": "cht7y99FXKlEbUhW"}], "ticket_created_at": 47, "ticket_id": "2OAUGMaW0awJXiqx"}]}, {"matching_parties": [{"first_ticket_created_at": 72, "party_attributes": {"wlNQehSgZW30fpsE": {}, "mWEfASnkh7QM9UOt": {}, "HVpEnV7EIaFYhY68": {}}, "party_id": "zsJgl3oVkuCVvO31", "party_members": [{"extra_attributes": {"JLLWsSrqJmEaM6a6": {}, "KbqzeWR3IaaY0Amh": {}, "ojILS6w6CGY8qgn6": {}}, "user_id": "GGLs7hZlia6VoC3J"}, {"extra_attributes": {"JnKgxtF3Jfr9pmqh": {}, "RDQsD9bIqsL3l0yk": {}, "ElmWZuqEKqS1jHuz": {}}, "user_id": "hFW8i7GbIgniLGv9"}, {"extra_attributes": {"QSzluUu4cVKlR7lx": {}, "Ccod2oTcnU4BLPVG": {}, "R5kU6C14uJ7Kb0Pr": {}}, "user_id": "3PUN7tamp1tZMP8Z"}], "ticket_created_at": 58, "ticket_id": "NnpODTMkbEhBN3ro"}, {"first_ticket_created_at": 65, "party_attributes": {"eJdd4uYTYqhqC8p4": {}, "yJWhXZPIFmn4Sj8Y": {}, "SV0DFAEgjCT0XvNc": {}}, "party_id": "BNm6vczWuOpAKvZE", "party_members": [{"extra_attributes": {"oSa5Q93DzG8dGK7l": {}, "LcLtLyXGAwyRaWs2": {}, "wXVsLAI5pjBZlhAs": {}}, "user_id": "fW7uD3hHw1d5Wbgh"}, {"extra_attributes": {"wR5IEwLGKqYZoVuu": {}, "mMI5yPyTsn7rx1JF": {}, "KCPnUUjsSRhGgTOA": {}}, "user_id": "3Uysu1WJUxJZKtEK"}, {"extra_attributes": {"YsxlS0Fqp8q1PJyP": {}, "MkQYgRJ2Oe0M2qGR": {}, "hxmscPIhcPYTovvX": {}}, "user_id": "eEOWR9M0wW3BulmS"}], "ticket_created_at": 4, "ticket_id": "QP9dD9zdH6dDUJ9A"}, {"first_ticket_created_at": 51, "party_attributes": {"TwvIFIbxMy89gh8x": {}, "cm0pzuY20ZBjwfho": {}, "UWSrAUsapckbgiWA": {}}, "party_id": "Xvmm0R4h52iTM5vi", "party_members": [{"extra_attributes": {"GUdKNvjVZNB3jftD": {}, "ecHIQD2Ak2aiD2yi": {}, "B3RctitRytvO9etc": {}}, "user_id": "B7rOarhGcKfXtu9e"}, {"extra_attributes": {"TOvxm9mTxPXqIZ8w": {}, "pWwQ3XzbV3Ft8qjG": {}, "KfcY7SSaEYHGmKQe": {}}, "user_id": "gIU8guBHCD6ylN7A"}, {"extra_attributes": {"n7RVNZ8sOIqyRZLP": {}, "xl2ZoQQF4Lqw20ZN": {}, "BvR927rbqAapo2ii": {}}, "user_id": "1Awm5GPlgWhsjHYZ"}], "ticket_created_at": 16, "ticket_id": "T0jNtAvTcS72oKZ4"}]}, {"matching_parties": [{"first_ticket_created_at": 80, "party_attributes": {"ANFKTfKuElTeTGkG": {}, "y0qx9HgRu1TezKQX": {}, "eSFrOBsgDOQTKda7": {}}, "party_id": "OAKFBXpu8A2Oxao0", "party_members": [{"extra_attributes": {"ABaOrIpaZcmiROax": {}, "wm2IUNemSBJ29Flk": {}, "vYxchFwVUWztvaOS": {}}, "user_id": "mydEKXrUE1e56q3R"}, {"extra_attributes": {"LPAHGGGYA3bPwBzq": {}, "mpsiq8MVQ2p8RIB1": {}, "ZxBw9qfxf1y1FfPo": {}}, "user_id": "yDktjkGILRcZqqET"}, {"extra_attributes": {"q7Rrg2lZj6Fv5DhE": {}, "7jX6zHr9dHfJIbY2": {}, "ZwNH6D1XkLRONHG0": {}}, "user_id": "nJaoxfBiIGAPyjU2"}], "ticket_created_at": 78, "ticket_id": "iOX14BqU1ZAPf3Y5"}, {"first_ticket_created_at": 47, "party_attributes": {"E5O8IwbvBF7AbjTB": {}, "KPDl0TS6Ja1n1GTu": {}, "TJ1u7TMgOYu6p94T": {}}, "party_id": "NoyRdlawD4zFTszO", "party_members": [{"extra_attributes": {"NGbe0OQDTW7jk5Yx": {}, "dCx0zSFvrE6X5L3W": {}, "KLhgpeiMAmlVCcPx": {}}, "user_id": "hB9WiweQhPvFl3AK"}, {"extra_attributes": {"82mt73cXl7Y9eiFE": {}, "9zhKktSKFOoHtJCp": {}, "NdG7RAVvaIhQlX9y": {}}, "user_id": "vmr2iNirmREVl4Sl"}, {"extra_attributes": {"0iWPcEOjtFdVC9xG": {}, "sd8tbKBrkkbE3iYE": {}, "EAZod9HYURGhSaEu": {}}, "user_id": "FFAwlNae5ekNTB21"}], "ticket_created_at": 21, "ticket_id": "p0N6k01wc6lzebcR"}, {"first_ticket_created_at": 47, "party_attributes": {"byvdoKSLtIfCYW0D": {}, "FUEL3k4MknHB7i5a": {}, "jtn063NELQSPjYKc": {}}, "party_id": "PmAja1Wu41k45Pmc", "party_members": [{"extra_attributes": {"YgPplM9ZQVCWKvtU": {}, "1nocYQl1VIFZV9MZ": {}, "9QQvO8KxdxuQbY9f": {}}, "user_id": "ysPiTZ9GcPRrPXGg"}, {"extra_attributes": {"ryxJm89Pn8d1RJ30": {}, "1VLLoLB3dy153Wqa": {}, "J6acM9O1P3nY7pyo": {}}, "user_id": "wU8qFDQWciNN6RWu"}, {"extra_attributes": {"gwbBVYo00NZ0MZsO": {}, "lAeoOM6qviVmU9vX": {}, "p936wLroAjK09tBq": {}}, "user_id": "VjgO14jXze8NaHyP"}], "ticket_created_at": 11, "ticket_id": "fohDDt9hU3ySOsZR"}]}], "namespace": "6q3FnICz2c6D52b8", "party_attributes": {"koAidODtRb10cLGa": {}, "25Y4YewskhMpLrp7": {}, "4v1YOzsoDfC1UMtV": {}}, "party_id": "a7SNT4gv7avhbZjQ", "queued_at": 97, "region": "3vhXrIRHtxosV1X9", "server_name": "LfRx2falP9Gc6NoU", "status": "b2OIPczDUsGLY0IJ", "ticket_id": "B8fecKS2pt22dUky", "ticket_ids": ["gSYT34twiWprD31j", "srsZKMZ8g3yahgwI", "ZKZP83LOsYAbiVIs"], "updated_at": "1978-10-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "SuCaeBwzw84yJYnV"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'lpjKkrGen65ML9kr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 1, "userID": "1l7h1eTIf71jz0C6", "weight": 0.7466008049484126}' \
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
    --matchIDs '2XDsQIZoCFlNySW2' \
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
    --strategy 'j7jcTT4ianHvM0Jp' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'GXYXmYjtL7uWsByM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'mB0E3dz50OjrrAEw' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "CFFdZz9ql5ezbkZG", "description": "ypfyxeFqeZRAAUCh", "findMatchTimeoutSeconds": 62, "joinable": true, "max_delay_ms": 93, "region_expansion_range_ms": 94, "region_expansion_rate_ms": 80, "region_latency_initial_range_ms": 60, "region_latency_max_ms": 88, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 11, "min": 22, "name": "Rdvuj79xKJ7E3ibO"}, {"max": 19, "min": 30, "name": "3I7rcNIXPqToS9Jv"}, {"max": 44, "min": 82, "name": "bgfPuDEoiccbJedZ"}], [{"max": 92, "min": 16, "name": "wktlwHuMbnh2fWRK"}, {"max": 49, "min": 37, "name": "0qJjN8tXe7wIQJh9"}, {"max": 53, "min": 92, "name": "3v4uIG3qKLkjsC80"}], [{"max": 3, "min": 61, "name": "2vkGrVnXNXjBVPd4"}, {"max": 43, "min": 16, "name": "sIzRmkQsUNerKdJB"}, {"max": 56, "min": 10, "name": "E4UL5lrcI4Y6piFb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 56}, "maxNumber": 42, "minNumber": 82, "playerMaxNumber": 13, "playerMinNumber": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 34, "min": 31, "name": "Bfc8eieUd8i6FRJ2"}, {"max": 50, "min": 92, "name": "q6A5zYnRTALD7vZ9"}, {"max": 28, "min": 51, "name": "Hb4m9pwMpv1f2GKk"}], [{"max": 25, "min": 68, "name": "yMjcrcS6ZHIyB4b9"}, {"max": 4, "min": 24, "name": "nBOYeEw3ej9k9cwz"}, {"max": 71, "min": 34, "name": "S5ZLbLFBLH44xkPp"}], [{"max": 4, "min": 44, "name": "8uhm4r7oMTo7Fo5L"}, {"max": 47, "min": 2, "name": "s9oOohN4AdnXXizX"}, {"max": 73, "min": 84, "name": "NhE6plho9HGZ7hVq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 90}, "duration": 67, "max_number": 35, "min_number": 42, "player_max_number": 9, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 44, "min": 30, "name": "w2CEfXEKZolq0SZN"}, {"max": 5, "min": 76, "name": "1MZincpzQfsm8ldc"}, {"max": 80, "min": 94, "name": "oziSWudYkNjWgjf4"}], [{"max": 85, "min": 30, "name": "lFSGHwhrcmwr0Baw"}, {"max": 16, "min": 50, "name": "OEXRNDICXOUtUrBt"}, {"max": 57, "min": 67, "name": "TJos9s3qDjgUQO5d"}], [{"max": 95, "min": 78, "name": "CjyrMrlvEcz1LEAu"}, {"max": 54, "min": 59, "name": "KQPC9HHl4zbbCMRB"}, {"max": 42, "min": 42, "name": "0E8yzhPVy0HhzE9c"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 61}, "duration": 96, "max_number": 87, "min_number": 3, "player_max_number": 16, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 12, "min": 25, "name": "ZFquNgClDb4jGEJc"}, {"max": 42, "min": 78, "name": "Smde4On2c46UtnGH"}, {"max": 46, "min": 73, "name": "qIKaXyzvGl31dy4s"}], [{"max": 40, "min": 21, "name": "wUsS8VESBPSEGfsz"}, {"max": 90, "min": 77, "name": "PA5F0EK1bfboD2Vq"}, {"max": 14, "min": 94, "name": "PWNOADatyXWT1SYZ"}], [{"max": 54, "min": 29, "name": "2999efAOCPkd2qs6"}, {"max": 83, "min": 25, "name": "2jupcDnEUgc1T1mb"}, {"max": 34, "min": 14, "name": "344l6W67db0lfszI"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 56}, "duration": 57, "max_number": 44, "min_number": 95, "player_max_number": 84, "player_min_number": 60}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 18, "flex_flat_step_range": 64, "flex_immunity_count": 3, "flex_range_max": 46, "flex_rate_ms": 6, "flex_step_max": 71, "force_authority_match": true, "initial_step_range": 11, "mmr_max": 78, "mmr_mean": 11, "mmr_min": 68, "mmr_std_dev": 5, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "m7UGc5v8c3oo9XBf", "criteria": "8X9DhlSzav5q7xEX", "duration": 79, "reference": 0.34563149143644956}, {"attribute": "S1jVqOwkGRi7VVkE", "criteria": "ptQ5N1B7gmZVKEfX", "duration": 33, "reference": 0.8512408128214096}, {"attribute": "57mN9iQWEu9iKpeH", "criteria": "Zfk0En0fM1tldc1D", "duration": 69, "reference": 0.5524820771670305}], "match_options": {"options": [{"name": "cgMDsDtuz3rtIY88", "type": "9rEG71l9sogaKgbz"}, {"name": "kseEQYWa7WGAJ9ff", "type": "EFU62jYK7BFU9IDi"}, {"name": "61T2Zrof6lQdtpRQ", "type": "cwrhrFU802ug7neX"}]}, "matchingRules": [{"attribute": "j6RK42HN7MOILNom", "criteria": "KtGpouQHrAR8wi3U", "reference": 0.28171372523995786}, {"attribute": "SiofCyR853907JBA", "criteria": "AWvUedm9rTcy35pn", "reference": 0.6297134716971834}, {"attribute": "R9Bh1WbNo1kdYnGY", "criteria": "svJkLVaNE8yisrLl", "reference": 0.3538504969042382}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 80, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'QOJlmgCjtbi0lu3u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'C9NWi7cOlRvJpJYD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'vDE6rlR76T0Umkuq' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 96}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'ErjImFfeJjfJ6JyA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'Bix3vjsp8KzMo3q6' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "10aShNjRMmmjOKp7", "count": 25, "mmrMax": 0.6524915470913365, "mmrMean": 0.9056289904202053, "mmrMin": 0.4522286987456712, "mmrStdDev": 0.2982286091665711}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'C655yNDg01mBUt5w' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 21, "party_attributes": {"jIB2u2mpQmoBtan1": {}, "DvVW4p7D3e3b7MjW": {}, "4NsOMyL7110KqmH1": {}}, "party_id": "SXAwFkcBy4Z818nb", "party_members": [{"extra_attributes": {"DXIgJWMno4kzrZgO": {}, "7xJ6Sw8bxOgwJwPw": {}, "07aTgvjSzz8Xo3wp": {}}, "user_id": "KPemXtH7LTsIowJz"}, {"extra_attributes": {"52gCw1VTfSSEa7bc": {}, "XI3V8bEYhfCDJK0p": {}, "U3uRdzmUulgRd5VY": {}}, "user_id": "CtxJuWdqWfYHqKVV"}, {"extra_attributes": {"WrNeGaqGi9PCbBAd": {}, "f5U8lOBELljqyMVH": {}, "f3upDlcJTVVEYBCP": {}}, "user_id": "zW874OdLmyz1d9Aw"}], "ticket_created_at": 19, "ticket_id": "1KSkNP9TWSzAr1GG"}, {"first_ticket_created_at": 38, "party_attributes": {"WRPrKtDfFY6lFL3j": {}, "XU3kCjotR7EX99MQ": {}, "WHXMS4xseK2SkqOe": {}}, "party_id": "SSKOBLEZeKZ8HeNU", "party_members": [{"extra_attributes": {"jCEb97KroZrt1Uj2": {}, "ggJRwJB42X2yiw2W": {}, "JHmzguqi02z4jQYb": {}}, "user_id": "0vQyk8EL8f8XcJD8"}, {"extra_attributes": {"IUENOgDq824plUmo": {}, "ekO3dnn26KL6XB2m": {}, "SqHkVB28gnceurAw": {}}, "user_id": "IpUzUMhtRww9s4QY"}, {"extra_attributes": {"GkMePUHmw26stgo7": {}, "gGYYB2qzaBJBxTzU": {}, "FpNtA7MVoELcATPo": {}}, "user_id": "UpM9Blgq1vsIUvvN"}], "ticket_created_at": 95, "ticket_id": "81pEiRm4645iMzcV"}, {"first_ticket_created_at": 26, "party_attributes": {"CtlGwvGUWkk0FzOm": {}, "ijFT024YJn5iU84X": {}, "mZXhFG8doPe3DSKT": {}}, "party_id": "xQy8AjheytEogqJi", "party_members": [{"extra_attributes": {"4h79x0jlZe56HSXD": {}, "Thjv7KVjVtZ1Ax4y": {}, "mdP4L6qX4nb3Ag7P": {}}, "user_id": "vgzW3HY5baC8c3qB"}, {"extra_attributes": {"Eaelax9LFwNU8YsH": {}, "n5rsp0o4ZGlhyaPP": {}, "rmJwbumvtLxADoE3": {}}, "user_id": "GbghbwD01vwZI2aX"}, {"extra_attributes": {"jhJFuuap1inszYhS": {}, "knZ38hBTASzyI4XP": {}, "9S6ylXoFDHj1DW0W": {}}, "user_id": "AUWOMZpug93sckBM"}], "ticket_created_at": 68, "ticket_id": "em6BUWxePL4oklTK"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'ObZhfNFsJqWpnC3f' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 37}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'E66OpWyDoa0o1N2T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'AGFJtKtC4XKPj4C6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '5BLhvdaDheCI881W' \
    --matchID 'wNwO3HpdF38mK9Da' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["0HBzy2ERdYWlzO8X", "n8AKztmWHqdxL2qd", "wxDy1u8B2m8vSxOh"], "party_id": "nP9dwF1ozl10Rlp1", "user_id": "gEpzxfiu4deropJh"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'ZE7PSuEdCuw2ULCM' \
    --matchID 'dvkvT8ae8mHX9Q6L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Ve2XRMQR8rf2xm5D' \
    --matchID 'K4PSm6EcQUllpg7K' \
    --namespace $AB_NAMESPACE \
    --userID 'GoglG2S7WKScgswg' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'e8YbJ4VHOK6PAKli' \
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
    --channelName 'iOSCIAOH1HjF4bvR' \
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