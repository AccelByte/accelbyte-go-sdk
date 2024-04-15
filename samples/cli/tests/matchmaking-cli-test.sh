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
    --limit '55' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "EcAkz7OJiJvr4t0y", "description": "Btq5K5XOrUGyrjkx", "find_match_timeout_seconds": 97, "game_mode": "OqcfWe2mj8K3QNOO", "joinable": false, "max_delay_ms": 86, "region_expansion_range_ms": 13, "region_expansion_rate_ms": 72, "region_latency_initial_range_ms": 85, "region_latency_max_ms": 64, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 50, "min": 90, "name": "2rLUOpdaDfODHiSC"}, {"max": 10, "min": 69, "name": "xqQ1z5gGxFQKFsV1"}, {"max": 88, "min": 98, "name": "bqGWAxbcn3yQWvy1"}], [{"max": 87, "min": 38, "name": "ohX4unSnwijmArFt"}, {"max": 48, "min": 37, "name": "bwNVMEYILiwwC2P2"}, {"max": 86, "min": 3, "name": "zchbHwgpujoOOfeo"}], [{"max": 27, "min": 74, "name": "iBT5jJo06Tuk7yOM"}, {"max": 59, "min": 98, "name": "6wsgNyCU9oXss5Qe"}, {"max": 18, "min": 23, "name": "oyE56UranSU9sYoW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 13}, "max_number": 61, "min_number": 35, "player_max_number": 4, "player_min_number": 28}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 83, "min": 11, "name": "5pz4OqYox0dhvv87"}, {"max": 50, "min": 30, "name": "wk6H8LaqJxCYRniX"}, {"max": 16, "min": 14, "name": "nLLG8DAJzbTtvud8"}], [{"max": 86, "min": 82, "name": "Kf5SOx0U7V5TmLxe"}, {"max": 15, "min": 89, "name": "1iIW5NPzD7Jz8rz0"}, {"max": 40, "min": 78, "name": "VmJbaTbd66Wm3Iks"}], [{"max": 14, "min": 60, "name": "UoP4z3RBa31fOdbx"}, {"max": 80, "min": 89, "name": "Ea6rf1fGMpiUjAJD"}, {"max": 2, "min": 55, "name": "ES8UHyvSTHa1yQzJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 97}, "duration": 83, "max_number": 69, "min_number": 71, "player_max_number": 42, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 12, "min": 5, "name": "n8ePzsORbU63mZnh"}, {"max": 83, "min": 86, "name": "5jrjqD9gW8qwGn2j"}, {"max": 14, "min": 95, "name": "xTNNi4oUtZU7Ycm4"}], [{"max": 1, "min": 56, "name": "1MVhuCLwaJhHQpIw"}, {"max": 15, "min": 72, "name": "b2dsRaXa3uGBQvmg"}, {"max": 38, "min": 64, "name": "rMtDAMaxjDpbOYLz"}], [{"max": 4, "min": 94, "name": "5jsSP9oEtpyRIxDF"}, {"max": 93, "min": 7, "name": "3y5tn2abuFg1AeUv"}, {"max": 19, "min": 62, "name": "sa3HxXTScsheE9li"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 24}, "duration": 28, "max_number": 25, "min_number": 43, "player_max_number": 75, "player_min_number": 38}, {"combination": {"alliances": [[{"max": 47, "min": 66, "name": "B3lPo3oimcAl8KLX"}, {"max": 69, "min": 37, "name": "GBOh1umwIsyZEL5t"}, {"max": 12, "min": 6, "name": "8OkTOD60laxB7NX9"}], [{"max": 65, "min": 58, "name": "radWcMSiNj3x5Mmk"}, {"max": 37, "min": 2, "name": "7ZsyeYTHb8044jNT"}, {"max": 40, "min": 79, "name": "SIQx3vmHyIgj8upF"}], [{"max": 43, "min": 28, "name": "Gf5KXItBOeEZ2KrL"}, {"max": 76, "min": 50, "name": "CZzyyeFfckQCi4lI"}, {"max": 25, "min": 96, "name": "pifrTv3vehQV4K5T"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 25}, "duration": 81, "max_number": 12, "min_number": 49, "player_max_number": 92, "player_min_number": 32}], "batch_size": 95, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 82, "flex_flat_step_range": 75, "flex_immunity_count": 92, "flex_range_max": 22, "flex_rate_ms": 63, "flex_step_max": 85, "force_authority_match": true, "initial_step_range": 44, "mmr_max": 29, "mmr_mean": 34, "mmr_min": 88, "mmr_std_dev": 22, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "R3fJ9vK0LE9ZqOq1", "criteria": "d4bEiyi4UWeLgMLB", "duration": 50, "reference": 0.20582276074054395}, {"attribute": "KRoiQn449YcmaGGE", "criteria": "wcQcOolcO3HxsS2m", "duration": 0, "reference": 0.9154837783870441}, {"attribute": "7GGBq6rCe5mcN7Aj", "criteria": "M9t9NAGw4mfy11gO", "duration": 78, "reference": 0.6803303528147514}], "match_options": {"options": [{"name": "UInS0VzwTGryI2Ax", "type": "N7b9fU1I6aVP0QYj"}, {"name": "zZsD3JPFTsFtfybA", "type": "FDvNS5wYVdiKB39P"}, {"name": "h4bCmk6eskhAESpf", "type": "RM4cr5wqyJjh4JZ6"}]}, "matching_rule": [{"attribute": "el7IcUUCjUrQEtI9", "criteria": "647mgd9WrQZynYH8", "reference": 0.07122022970284947}, {"attribute": "ylhkUXmqrYhRVuFv", "criteria": "H7DVFvVJo6OSHRLM", "reference": 0.5935933350321656}, {"attribute": "u3gsgoXF5seEe9MA", "criteria": "qO2u4xKkAdmXpYP8", "reference": 0.8712225437308173}], "rebalance_enable": true, "sort_ticket": {"search_result": "jb8V9eenHE8KuhYX", "ticket_queue": "klBfRQDzFyUo4NnA"}, "sort_tickets": [{"search_result": "WTL9cKRQj4IFhase", "threshold": 55, "ticket_queue": "Zwu3FjYiAqkuRjIG"}, {"search_result": "nTmwsXx05zhu3OKQ", "threshold": 65, "ticket_queue": "1waes2HmMJJe39Dl"}, {"search_result": "xA1PxAPY4MtCP5PB", "threshold": 15, "ticket_queue": "wadHXQEy97Sa6QYR"}], "sub_game_modes": {"pkXmVoRFsO1gC4NS": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 30, "name": "8OmlJkFRSF5F9wCV"}, {"max": 20, "min": 25, "name": "8q05azVh7JSegZ69"}, {"max": 6, "min": 48, "name": "VHqz7RYrMutDMXzG"}], [{"max": 39, "min": 46, "name": "gVk6hGeZnH9AnHD7"}, {"max": 44, "min": 29, "name": "0I1GYfuNHSlyOHnb"}, {"max": 98, "min": 43, "name": "eDxENDicELu97u3L"}], [{"max": 77, "min": 53, "name": "ffNrS34nlwWpuaJq"}, {"max": 35, "min": 80, "name": "joTEQwsBp5EXtYvr"}, {"max": 58, "min": 78, "name": "AbTwnkHSEHwZHMQA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 18}, "max_number": 44, "min_number": 32, "player_max_number": 64, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 56, "name": "bfo5YVgTODfUvP49"}, {"max": 66, "min": 51, "name": "FKMY2oGV2VFeoJy1"}, {"max": 42, "min": 36, "name": "JJdSvex6mxhwle9W"}], [{"max": 38, "min": 75, "name": "mDpy0E0sPHeTubKm"}, {"max": 74, "min": 58, "name": "zbA5tbZwahDd8UmV"}, {"max": 23, "min": 44, "name": "xyFLrWE5DO1Uzs68"}], [{"max": 29, "min": 31, "name": "4nDBKz8EyaBJ0EVL"}, {"max": 51, "min": 73, "name": "4LYcWYfdcxwDzKUa"}, {"max": 9, "min": 25, "name": "5JYp3jObqL3kj1Iy"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 31}, "duration": 63, "max_number": 14, "min_number": 45, "player_max_number": 51, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 56, "min": 41, "name": "56LGCHK5I0abwIsr"}, {"max": 100, "min": 50, "name": "bWMj9trK5sCFcNDU"}, {"max": 33, "min": 36, "name": "IFFLKn6KXqVmStKe"}], [{"max": 44, "min": 47, "name": "QAfaeJsCBODbY4Ce"}, {"max": 96, "min": 99, "name": "sPchIwbGQ2KHfkSm"}, {"max": 21, "min": 7, "name": "tqhQr14F91HC8Vai"}], [{"max": 93, "min": 69, "name": "p9KFbncaraogbW1h"}, {"max": 64, "min": 11, "name": "st8eq286UiY6xLH9"}, {"max": 3, "min": 16, "name": "KnIf5zrsyyt4ozrk"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 64}, "duration": 83, "max_number": 11, "min_number": 55, "player_max_number": 52, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 30, "min": 93, "name": "u2NXgkycKIOGBhbf"}, {"max": 59, "min": 50, "name": "gBOQtw0VzL4eyhmN"}, {"max": 63, "min": 15, "name": "53dAgYm53ZcIHprb"}], [{"max": 72, "min": 95, "name": "tonRh49vp7TvkEVF"}, {"max": 31, "min": 23, "name": "0cnDSVxvAX6LokiP"}, {"max": 97, "min": 13, "name": "RnwfwdEFt5KavKoh"}], [{"max": 1, "min": 62, "name": "3eH5ij0QGpLoPPdN"}, {"max": 89, "min": 3, "name": "dqL7tdy1hybwLrHh"}, {"max": 11, "min": 13, "name": "DIxRaSRPbStHMVdV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 100}, "duration": 39, "max_number": 8, "min_number": 62, "player_max_number": 35, "player_min_number": 86}], "name": "bNPK707EafVDCja7"}, "68ZVWLB1utvcrQQH": {"alliance": {"combination": {"alliances": [[{"max": 99, "min": 11, "name": "IInSZ7NhNMViXP8V"}, {"max": 93, "min": 40, "name": "DyEvLAE6beiryZ13"}, {"max": 42, "min": 62, "name": "6dSRMRmCUoWC1Vte"}], [{"max": 57, "min": 25, "name": "cPdJxqIYl8npEITz"}, {"max": 1, "min": 92, "name": "nI5utq7M9ftaamXe"}, {"max": 91, "min": 88, "name": "6Q0yYI0WVKCCQUHF"}], [{"max": 41, "min": 50, "name": "wAaSTL78LDqhppzM"}, {"max": 72, "min": 27, "name": "K36ls38P3G1mEObd"}, {"max": 91, "min": 44, "name": "JFsbEq1DJvGNXKz3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 57}, "max_number": 46, "min_number": 39, "player_max_number": 40, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 95, "min": 74, "name": "F68SoVpZsZ86TZhf"}, {"max": 90, "min": 12, "name": "H5faTgGVyknrGalr"}, {"max": 20, "min": 16, "name": "hYphYM5PoUr8mmRm"}], [{"max": 15, "min": 41, "name": "xZz5h8IXX9JYBmId"}, {"max": 88, "min": 56, "name": "hGV5HVfuDMTp0cwv"}, {"max": 75, "min": 27, "name": "FW5fHNfR5ROYCCIS"}], [{"max": 66, "min": 62, "name": "g6qwFiVMnidv5acb"}, {"max": 46, "min": 22, "name": "KJVe1JPOLOrYNFPD"}, {"max": 40, "min": 20, "name": "Rt0kpLMTxO20h2JL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 60}, "duration": 99, "max_number": 58, "min_number": 93, "player_max_number": 60, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 98, "min": 72, "name": "iqGBzTvnbdUlMP5F"}, {"max": 26, "min": 13, "name": "oQGHqo61ImDJWT4v"}, {"max": 0, "min": 22, "name": "etIFe3S5pHJrxrgi"}], [{"max": 60, "min": 42, "name": "cDcF7qNtrHJ9gmjF"}, {"max": 41, "min": 32, "name": "5ytN3FWbbZFYWxJD"}, {"max": 83, "min": 95, "name": "jgMjUgaw6xR6oWXw"}], [{"max": 81, "min": 14, "name": "FxVnlbroO1ioHhjO"}, {"max": 93, "min": 78, "name": "giETqonjpljnSeJQ"}, {"max": 97, "min": 46, "name": "RChfQMlL73F39HZG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 87}, "duration": 76, "max_number": 43, "min_number": 48, "player_max_number": 53, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 85, "min": 32, "name": "zO5HTDXUcRxIUjuJ"}, {"max": 42, "min": 46, "name": "BSDKDwe054ahHwds"}, {"max": 8, "min": 45, "name": "FmWYRSXBSkCtsVPa"}], [{"max": 81, "min": 41, "name": "DqsVq9Q7CsPYyvGU"}, {"max": 73, "min": 39, "name": "OJmKtC8Y2cuZRKE8"}, {"max": 28, "min": 10, "name": "vVbxydJ77CST9T7U"}], [{"max": 46, "min": 63, "name": "VyOaywukPgTMRq21"}, {"max": 71, "min": 94, "name": "ydUxhgkrDpro37CH"}, {"max": 53, "min": 61, "name": "3xaJ2WysdKM28OS3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 12}, "duration": 4, "max_number": 5, "min_number": 38, "player_max_number": 49, "player_min_number": 71}], "name": "Vf273IhxhkAjFHwY"}, "o9bXoHmHIuva3ymC": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 58, "name": "hFJpWkAQfXhINplv"}, {"max": 28, "min": 86, "name": "df1Qwk2AlhiI5O38"}, {"max": 89, "min": 78, "name": "k5vmRnbobivw63iZ"}], [{"max": 65, "min": 99, "name": "5C721EYwA0ifimwX"}, {"max": 72, "min": 1, "name": "e2c2ob7qi3lWGkTB"}, {"max": 62, "min": 72, "name": "0cdlaEDTpXep0JoD"}], [{"max": 89, "min": 86, "name": "tOAVV6aeo5aHnDnX"}, {"max": 94, "min": 0, "name": "AEDsbmxT1paviSI0"}, {"max": 19, "min": 56, "name": "GY0h2rPi26TrUrT4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 4}, "max_number": 89, "min_number": 9, "player_max_number": 28, "player_min_number": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 34, "min": 8, "name": "mWopiMHvUKYETelB"}, {"max": 2, "min": 15, "name": "obwAXC0ktX1mBKXH"}, {"max": 16, "min": 70, "name": "JVyYxOLVtdprxSDJ"}], [{"max": 36, "min": 96, "name": "QQ8gvm6hpnXtd8hh"}, {"max": 8, "min": 56, "name": "mcHHrviN0SnJ8zps"}, {"max": 74, "min": 60, "name": "D5aqXQsnNrXFn35y"}], [{"max": 30, "min": 54, "name": "Bs4WiVCkLQC4Wp6l"}, {"max": 41, "min": 1, "name": "cybN0r5VjnRAKO19"}, {"max": 47, "min": 99, "name": "1Ylo6K8jZ5og7o0O"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 25}, "duration": 97, "max_number": 3, "min_number": 9, "player_max_number": 41, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 73, "min": 94, "name": "i8yBpitevTOmZg3A"}, {"max": 52, "min": 75, "name": "Lb2tMwmVYEoox1WV"}, {"max": 82, "min": 69, "name": "zaEdyIOBz9LrM46D"}], [{"max": 90, "min": 10, "name": "Fp0F1uXMU2gibqZC"}, {"max": 79, "min": 88, "name": "S6qFXYG3wNg0pesa"}, {"max": 29, "min": 17, "name": "3qF7V9zbTQueZnzN"}], [{"max": 53, "min": 70, "name": "RE5xKfxC9Bf98XvN"}, {"max": 26, "min": 47, "name": "VPS3DSAKK2Era4jw"}, {"max": 82, "min": 78, "name": "splb5shc9A6XCDPG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 96}, "duration": 87, "max_number": 44, "min_number": 99, "player_max_number": 77, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 48, "min": 84, "name": "9899Lqa3O86PaqND"}, {"max": 81, "min": 56, "name": "PEmyXcaQJRsY4JMN"}, {"max": 77, "min": 99, "name": "zksQ7m9HJEKS6OUQ"}], [{"max": 40, "min": 78, "name": "sGd2Z3Sk9SForBFO"}, {"max": 51, "min": 24, "name": "j9UPSPxP2K04mYer"}, {"max": 40, "min": 97, "name": "8OBqvxHggP8LvDJk"}], [{"max": 83, "min": 23, "name": "rCAlRIwZvbbHb3PT"}, {"max": 56, "min": 63, "name": "RJqzU2sIkL6WyxnJ"}, {"max": 74, "min": 45, "name": "Bwd4biDGkVSpXkMV"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 75}, "duration": 13, "max_number": 40, "min_number": 12, "player_max_number": 49, "player_min_number": 36}], "name": "zLL0fV9RrVy5EqVR"}}, "ticket_flexing_selection": "i9AxxxPGl5Q0Qjgd", "ticket_flexing_selections": [{"selection": "70MpN0nHSD8AofcD", "threshold": 46}, {"selection": "5aDTWIgvnG8dQvZx", "threshold": 42}, {"selection": "RN7NWYVmbRaXBFsP", "threshold": 14}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 79, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'gP6SIISShkt8oMgK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '5vM1uUOeNt1PmU8y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JEL7pkSu3pr4pS7A", "players": [{"results": [{"attribute": "blHaLqntpfL3nfw3", "value": 0.4770809101882828}, {"attribute": "TByqygA2vOnu5is0", "value": 0.9751399398374118}, {"attribute": "Okjr3mafSstvoJC9", "value": 0.7700842504628235}], "user_id": "fbYxFWij2arGz63Y"}, {"results": [{"attribute": "JCSJhukHqNHIiQw6", "value": 0.996476048203415}, {"attribute": "PNcJZp1UnhBukuy8", "value": 0.4151515896487552}, {"attribute": "VF5byMIScVKaK3oN", "value": 0.7824022869027771}], "user_id": "pjV70HxfoXlBCGq4"}, {"results": [{"attribute": "ON8uHZEAzXvBGCWk", "value": 0.6841474869559405}, {"attribute": "GVCpg4U5HzRxICLl", "value": 0.5738008026213843}, {"attribute": "FynCsnrmrHhCOYvd", "value": 0.6532627147659574}], "user_id": "yrP5YkDV0kxITouv"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "IV1mDroRDxjB1WTl"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "AZLorXjZXqYFLJAr", "client_version": "f2Mr2DLV3E53tN6b", "deployment": "7xp4Tu1i5qrWAYNs", "error_code": 33, "error_message": "JzKmdU1Y8mcMwILB", "game_mode": "QhqKf4PAHpaDIbiu", "is_mock": "qthH7Tc2SxpJwCPp", "joinable": false, "match_id": "rIhlRVbXti3UkASy", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 68, "party_attributes": {"Rd3T7RQ2M0kSczn8": {}, "6RuMfJXhmlKz3BHd": {}, "ydzy0wWEeHJr5B0O": {}}, "party_id": "iOu2pQT42csB2wTz", "party_members": [{"extra_attributes": {"9vMOOzjk0I53xKh6": {}, "4fZ3RWPY9mgVdFWR": {}, "NDMHp3NDYdUrzUHM": {}}, "user_id": "I9LFxtzZCRdAp2ng"}, {"extra_attributes": {"x3BAeYRRHPC5pzKL": {}, "N1oruOSlSXIAHHrH": {}, "omCq6yHN1T1gwhih": {}}, "user_id": "J9feKx017N7eqazQ"}, {"extra_attributes": {"eah1ZY2QH8yPFxXX": {}, "68upXZ9PVVNaJoXn": {}, "iY87xNe9w6Wyp3tC": {}}, "user_id": "MT7zBYkl6xxDvdpi"}], "ticket_created_at": 51, "ticket_id": "c5nWDxxFN8Yrb7iM"}, {"first_ticket_created_at": 74, "party_attributes": {"c1UsNlFvLpjDvcIJ": {}, "Tu0IUiyZcAeDxUkv": {}, "em7bMHqY1u6Mb3pX": {}}, "party_id": "J8EdhZT66xHUM68r", "party_members": [{"extra_attributes": {"VncFMfcq2rc3VkZ1": {}, "8WzlFxZzdh04g7DQ": {}, "7VM96DzM3DSomyAW": {}}, "user_id": "39IyeB3qhDSJfvya"}, {"extra_attributes": {"Yd32OcO9qrjaKLt6": {}, "OB9wbCmRmA1WM6PO": {}, "7c3mbzIpBWhXVcnq": {}}, "user_id": "A9djhPbynrvgpEbQ"}, {"extra_attributes": {"qah2g1pUNsZor2rW": {}, "JQgWQIxi1QdnekRi": {}, "z9GTR29ojqLyzeWm": {}}, "user_id": "hyYRgy2Q7iyiXwkO"}], "ticket_created_at": 80, "ticket_id": "MhYAIFLDInU7cpmQ"}, {"first_ticket_created_at": 5, "party_attributes": {"mgNXwMS3ePWI5p2s": {}, "jFsYbNLK2b0OzbR2": {}, "WR1vNWeM86lVOqEm": {}}, "party_id": "HOuu4EsSSblv2wnY", "party_members": [{"extra_attributes": {"n7PT0Bb6ShvFYbhR": {}, "g1zuU77MPqHdTliy": {}, "3dbsmTcYsFjDujq5": {}}, "user_id": "7AUoHqkTjGv0YTLs"}, {"extra_attributes": {"7ABXgNP3BvHcc7hw": {}, "ckOz2D63QGITk2qH": {}, "biFE0cmSPCh0EKfM": {}}, "user_id": "gB2bKJTHgkvJKVlS"}, {"extra_attributes": {"XkNuGXwNhwlOGk4x": {}, "XJ38mFtX6UVk6BI9": {}, "BODajcte64FJmodL": {}}, "user_id": "HImK7OCGWmB4SMmB"}], "ticket_created_at": 63, "ticket_id": "gcct2drmT6mQmjuM"}]}, {"matching_parties": [{"first_ticket_created_at": 81, "party_attributes": {"Bsxc3ybPmjJGFwIz": {}, "3qd5kdyjWvaJ7j3u": {}, "05t5OzfLFzqpleqk": {}}, "party_id": "oISzRBANEy7971fw", "party_members": [{"extra_attributes": {"WDoB9DxujycEeRNg": {}, "D7kpUMJ14vZt0gqW": {}, "pdtdw2NiuLD0XmWx": {}}, "user_id": "fMYmq4cJ8cxjuTJw"}, {"extra_attributes": {"t4o7c6v3nhYi5Pgi": {}, "jK2ZpSk7b1K7JRcI": {}, "cmOSBOxFtjNFMsoq": {}}, "user_id": "sZlqKULXEmBypH03"}, {"extra_attributes": {"t0dDraJYslr3h4IC": {}, "dqcAg9ppcJ0GymNs": {}, "oU37gzsQEmGm76xH": {}}, "user_id": "nZdtWUt1jQT3frLt"}], "ticket_created_at": 76, "ticket_id": "3qGOy1eeLU854Th0"}, {"first_ticket_created_at": 77, "party_attributes": {"feLAy83Pgdj9jHqV": {}, "Z6XQGjkrVj0E2L4y": {}, "Bks9ffWTYRWlCne1": {}}, "party_id": "WXgl0bbQPBOWnlS7", "party_members": [{"extra_attributes": {"BLxUjwCQZd7XUgGu": {}, "KKNKegYwfN42E5oc": {}, "prrVWY8ZO3CrQbu0": {}}, "user_id": "m8KM7L9cpTagtm6f"}, {"extra_attributes": {"65oEQpYTeiBZQRDc": {}, "0fTVUwkfcgK5IJs6": {}, "brty1Y518JrKcILU": {}}, "user_id": "r2Ic66pTCcewmBmN"}, {"extra_attributes": {"xfK7J9jis5hgMx73": {}, "sbaK5JzE6FWD0ltK": {}, "Y7y4HoWB1czVcpki": {}}, "user_id": "2LhCPrSrxvdeDfUp"}], "ticket_created_at": 96, "ticket_id": "Q9NcvCJJcA7G6dt6"}, {"first_ticket_created_at": 87, "party_attributes": {"LelGHeUfatD2AfVn": {}, "F6MvamTL8mU6v05T": {}, "bP9HYIgS3FntPqNC": {}}, "party_id": "4Yaj9p6pPqjkTiS1", "party_members": [{"extra_attributes": {"x44cFZnLC0BNNXdP": {}, "k844wDB1RWbmSsr6": {}, "zz6PaWlrl7JDcItH": {}}, "user_id": "xzVF0LIEXRv99d3j"}, {"extra_attributes": {"PYvMjDGwmXdsQXmg": {}, "qgQFVCxz9yRg80lR": {}, "Lpp0lMcihTYWDSJr": {}}, "user_id": "K0XfQsa1HsQ09Aav"}, {"extra_attributes": {"BDiYfyVixRzNaLN1": {}, "gR3MlJj1zrFqizJh": {}, "YD5qHNfXCaaq8Giy": {}}, "user_id": "3GTqxV3LDkOkpi2i"}], "ticket_created_at": 19, "ticket_id": "3qFK4EIY6eBgjFvA"}]}, {"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"2d93U4NAiAUwLFhR": {}, "LVh7fCFzmKlDh04R": {}, "wZEkN1PO7LmomhG3": {}}, "party_id": "cC9j96KtxPtQFBwC", "party_members": [{"extra_attributes": {"4syZoT19PB2bCdem": {}, "Z3mab0b5D8PnYunx": {}, "KySWQ3S6EiYEmDGz": {}}, "user_id": "Y8ROVImhtNmbfU56"}, {"extra_attributes": {"2doy7MS7BuBQGuD8": {}, "pjT3NoIuQ3odVw6U": {}, "3leP3XxyU0CHs2a9": {}}, "user_id": "JYh8QGhkTWs6bZwY"}, {"extra_attributes": {"E6gJXOxDSWCQROXd": {}, "n5T20kbfjqqzG8ZO": {}, "Z23qqZQTQhfEfkKA": {}}, "user_id": "LjToo4wLq7fuZ6s1"}], "ticket_created_at": 56, "ticket_id": "ofz8rwkixJpnH8EW"}, {"first_ticket_created_at": 1, "party_attributes": {"AUWm7nwMXGv2UdWd": {}, "Od6e2GCzibgcJmSh": {}, "RI62OhPBApII1nyg": {}}, "party_id": "43iUDTCH2sZgVPCL", "party_members": [{"extra_attributes": {"Tl6GU7WT05KecAoC": {}, "pYKvOvUSTr692vF9": {}, "8kb9p9h9cMiAHfoT": {}}, "user_id": "Adqzoitdw9qaYvSi"}, {"extra_attributes": {"23MggpRYjd54IHyZ": {}, "t9xULp0X3mb7ilmG": {}, "tW8GRRp7ud7ngCSR": {}}, "user_id": "8nrXD8B29iso0TOT"}, {"extra_attributes": {"h4H2O7A6HCBZhHex": {}, "rRTRHy5gwrosyzhG": {}, "7LZ0IaAxAqdFVHhY": {}}, "user_id": "CnSaEXGdQ0n2ivDG"}], "ticket_created_at": 19, "ticket_id": "wCpRXU0C5z9pX2QJ"}, {"first_ticket_created_at": 60, "party_attributes": {"2eGUEih9zfOlYAtI": {}, "3shE6kGwT48udLyd": {}, "x3Jj3QAgTnPQHkbY": {}}, "party_id": "5zHj4FUi0I5kMA6a", "party_members": [{"extra_attributes": {"Lv1pGZyqJSLbcF0D": {}, "u6y41RUJXmpllRm8": {}, "njngHAWLTe6quzIN": {}}, "user_id": "nEtwJ4jG0YMytBye"}, {"extra_attributes": {"8dCQIbNxQKOwtZyo": {}, "00jTWKAEuj73Xk6f": {}, "fv0Gijf4WNRIkKvJ": {}}, "user_id": "DGEkI83z2qAB2Zru"}, {"extra_attributes": {"cSM8Y15irRxHDJzZ": {}, "tp5QWxptRZTxGiuj": {}, "IO66faqCvbQjfln9": {}}, "user_id": "j4kw3zML5Ei3X9aY"}], "ticket_created_at": 0, "ticket_id": "X6ZSuNyHETKQLvtq"}]}], "namespace": "HVzFvFD9VQSzhEX5", "party_attributes": {"o9HOaTc2c5sIhDSO": {}, "23mqkkoP7NSgDUPf": {}, "wIHpAHoNhue05h2t": {}}, "party_id": "SJI7czaBjwOxEir8", "queued_at": 99, "region": "zstACfOSeuigQIjJ", "server_name": "LzYJFmUPuoQ1QSS7", "status": "GyUGsptmjAnV8Z2w", "ticket_id": "lopqK3IPmnrkj8ya", "ticket_ids": ["rpOYChDgYDusx3Bq", "x2SobBwt5yhYnw94", "kkziHuBUSsVPUgN0"], "updated_at": "1982-09-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "zZyG3C8nd1LEFzVx"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'vxbOo2jWS1SAHYnr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 48, "userID": "LEDZ8j5Vn5Av9VkM", "weight": 0.7146070348600986}' \
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
    --matchIDs 'OStioVuRlB3B74wO' \
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
    --strategy 'dzq4kJCUpDy7YfvF' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'pmjcdDtHQWH10qXo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'nGWRDmRSWsCj3U1y' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "DHxbK7NBDlTA9Z0r", "description": "6rdxyV6paVfmQhHb", "findMatchTimeoutSeconds": 81, "joinable": true, "max_delay_ms": 82, "region_expansion_range_ms": 13, "region_expansion_rate_ms": 65, "region_latency_initial_range_ms": 7, "region_latency_max_ms": 74, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 3, "min": 65, "name": "gYSjgkgp2SKvXMib"}, {"max": 66, "min": 56, "name": "Y8SIi4x6g6R1uiVX"}, {"max": 54, "min": 28, "name": "4M7kHPjSbwXaFPxr"}], [{"max": 83, "min": 19, "name": "DC4lvUO1vIUkOBub"}, {"max": 84, "min": 74, "name": "BjWqxR9xzwmNzhzQ"}, {"max": 56, "min": 39, "name": "1pQw9zwtRCdoTF51"}], [{"max": 19, "min": 47, "name": "p4aok1bPgrBnF0Oj"}, {"max": 9, "min": 48, "name": "IthbVhvgEVhsfIGB"}, {"max": 36, "min": 30, "name": "jkC0e9lhYJA5JOEI"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 68}, "maxNumber": 20, "minNumber": 6, "playerMaxNumber": 24, "playerMinNumber": 18}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 87, "name": "o3lIkgmKuIwzcY8h"}, {"max": 95, "min": 34, "name": "XIojZIjJUItUVRwg"}, {"max": 63, "min": 76, "name": "wiaEfS5iZEEu6Zy0"}], [{"max": 1, "min": 83, "name": "AeLhrRCvNovFILku"}, {"max": 24, "min": 71, "name": "AEQJk1WMtsJLxFgf"}, {"max": 98, "min": 21, "name": "WrMEKXr4xasRxRV4"}], [{"max": 47, "min": 43, "name": "9f2n1YiSqmS7G1Vm"}, {"max": 11, "min": 28, "name": "NSljJsUFg1ha9Dhw"}, {"max": 66, "min": 37, "name": "g3a0KnKs8NLnP7Qn"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 34}, "duration": 19, "max_number": 79, "min_number": 6, "player_max_number": 66, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 93, "min": 30, "name": "biURoXTjWmtudgWN"}, {"max": 3, "min": 50, "name": "A4hYacjV2bD1DnnA"}, {"max": 67, "min": 83, "name": "UDyxpOB1przjW23s"}], [{"max": 96, "min": 45, "name": "9wTL1riZen6EQn7A"}, {"max": 41, "min": 30, "name": "ZYn7e9vpHJmRMkK2"}, {"max": 46, "min": 72, "name": "TfgyLc7UWkEhBAw9"}], [{"max": 2, "min": 85, "name": "SvMy2IDclZP5fU0u"}, {"max": 5, "min": 90, "name": "cRYIl7U67rSxMqsb"}, {"max": 95, "min": 98, "name": "NTX8qgK2fgsjarJP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 35}, "duration": 6, "max_number": 95, "min_number": 0, "player_max_number": 55, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 14, "min": 40, "name": "e8JrhhAyjqUODPqr"}, {"max": 52, "min": 58, "name": "IZNhs5iyjuK2vbIK"}, {"max": 78, "min": 49, "name": "GtbScI3yEi77z3kG"}], [{"max": 47, "min": 63, "name": "wg8t2DUSoAJ6X4VU"}, {"max": 73, "min": 43, "name": "7DlbZFHIfeHDUk3k"}, {"max": 20, "min": 41, "name": "gOcG3sMaAKcLBNuO"}], [{"max": 62, "min": 45, "name": "JdyNG8WXbGvQSsj8"}, {"max": 42, "min": 8, "name": "YloRDWFcgEsdU6RA"}, {"max": 53, "min": 34, "name": "kVdQifdnZrORHkap"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 59}, "duration": 97, "max_number": 70, "min_number": 62, "player_max_number": 23, "player_min_number": 96}], "batch_size": 64, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 73, "flex_flat_step_range": 11, "flex_immunity_count": 11, "flex_range_max": 12, "flex_rate_ms": 79, "flex_step_max": 65, "force_authority_match": false, "initial_step_range": 42, "mmr_max": 16, "mmr_mean": 100, "mmr_min": 10, "mmr_std_dev": 17, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "WKDL3HC915Qo8TUN", "criteria": "hWXZiuHdcQSh0qew", "duration": 2, "reference": 0.589527335378314}, {"attribute": "VPNdwfqXQqGECMs6", "criteria": "iHPXE70rOyvvJwCL", "duration": 28, "reference": 0.6194735932530622}, {"attribute": "PZyBUzYNxenYWJv3", "criteria": "zx2OOIbsYw3KDmY7", "duration": 77, "reference": 0.6890353265036872}], "match_options": {"options": [{"name": "2QYutwFYFXsZJRBi", "type": "dC1VvM1dgFsin1yE"}, {"name": "1fqYA6xIRFVJDFEe", "type": "UNr03kqVZvyBEx8a"}, {"name": "YKqhyZe6EOWrkw3L", "type": "zGrb7LASvzqi94m9"}]}, "matchingRules": [{"attribute": "JOVmQ7Jhwd9QBgEf", "criteria": "XJD7F27ILc5x0Rp4", "reference": 0.9727494138122922}, {"attribute": "IDVMfn5uQNF0xk2C", "criteria": "giabJmv2CuV1qIPA", "reference": 0.25569810978123286}, {"attribute": "QrRHStTOUvXzeKmR", "criteria": "9kd8d7FouZpv05b8", "reference": 0.6235823242874828}], "sort_ticket": {"search_result": "93CjZOMo4n4v6ids", "ticket_queue": "dIIdjQ0TYCYSE9NG"}, "sort_tickets": [{"search_result": "Lr5sm1q4HB8AmIRJ", "threshold": 41, "ticket_queue": "xziD3pqrQ2sW2B9d"}, {"search_result": "ng5NidwArwrfJcos", "threshold": 89, "ticket_queue": "VlGpbMowsUKNRBcF"}, {"search_result": "AgILxjH8tdGXLy1S", "threshold": 51, "ticket_queue": "dcSoCOZgxyvzvlYM"}], "sub_game_modes": {}, "ticket_flexing_selection": "SIEanxngE68VqRCR", "ticket_flexing_selections": [{"selection": "lmArQSEs9NhLyGuf", "threshold": 20}, {"selection": "sMkSjfSAIV9XIBT3", "threshold": 73}, {"selection": "LjhbMT054mSfdRWO", "threshold": 2}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 76, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'jADBFOA4R4RB8CrC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'XMMXCAXqd458pKAr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'mpoTpA3f0eJQ6oLj' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 100}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'VALZZIwIo869ym1r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'K6TpABT6KU340Yth' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "TdRDEb2pDIKnAjZV", "count": 81, "mmrMax": 0.803294243489164, "mmrMean": 0.8998324212564992, "mmrMin": 0.5681972056816806, "mmrStdDev": 0.6476930360393186}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'VlZQOZ6PT7oVl04u' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 20, "party_attributes": {"jJshRq03rYRK9lFU": {}, "fG94gNPwYSU3zbvK": {}, "ozhmLxnKiJ5cnnPE": {}}, "party_id": "xz56byXZ8upSUPGV", "party_members": [{"extra_attributes": {"CYf8vIWFH3J14uzO": {}, "2lUl5M4Ia7UIgNUx": {}, "660blcdLJBAF5a4n": {}}, "user_id": "CjhaYnP9jCM1fZ99"}, {"extra_attributes": {"VK2TmJJD7Cl7tij4": {}, "1T1sn2PEevX4eed6": {}, "IWziWfiRA81G6iZH": {}}, "user_id": "QfvU2Tx90l8rj2ye"}, {"extra_attributes": {"wvCr2w2INJa1zEmQ": {}, "uiWirHk7tbt6pwuf": {}, "uN6Iag4NjtwFowV2": {}}, "user_id": "7ZAMuoYVhCCoPfhP"}], "ticket_created_at": 20, "ticket_id": "iUVKiUbDNyuDkkgy"}, {"first_ticket_created_at": 15, "party_attributes": {"RtBsfrZvKOcstRqH": {}, "vKjkg35RUL2KOZJz": {}, "o5X4VwaP1psnaTFW": {}}, "party_id": "6QkqJzLLU8oo5BDn", "party_members": [{"extra_attributes": {"8ZiqDERHSVG17rvB": {}, "vK3GnE3tQEUsLSWH": {}, "S5QCozX9t5jIZ9RI": {}}, "user_id": "ztKpNaUzce3mMde2"}, {"extra_attributes": {"ppHpXBdQgpu1CrHq": {}, "SavuiREEle0TbTFa": {}, "qg6eAGKgDgm6dLtn": {}}, "user_id": "nLa0ZtPPOKeesUKs"}, {"extra_attributes": {"EVxzXyfMokaeBm3V": {}, "WFQ3ZYoKPATbvPci": {}, "0YNwtxaUJTWg7g7u": {}}, "user_id": "7JRdJwVizt44oQiN"}], "ticket_created_at": 1, "ticket_id": "bvZMKshIKes48IOM"}, {"first_ticket_created_at": 18, "party_attributes": {"cinTwmG1RzupxZsf": {}, "exKw0XZ9nQ0Bvlfk": {}, "Yp0XhjU96jROrm7K": {}}, "party_id": "aAod5A4EnDYxKsuX", "party_members": [{"extra_attributes": {"Da0rayd3dNtVKeWy": {}, "V2Vxup5TPA6Qe5iZ": {}, "LgodlAvJuwvdZ8rd": {}}, "user_id": "7z4abro161ljGhFY"}, {"extra_attributes": {"6ZxacOi6jjieIZYQ": {}, "I7EajOgetQlWhiqq": {}, "TPr3ErrHtDf0jRv5": {}}, "user_id": "Ycvh5z9uylzBXGbu"}, {"extra_attributes": {"enrIC9z9oaWEb64G": {}, "MxAu0kNc8hpW2m6G": {}, "LvJFltqiEspdEqH4": {}}, "user_id": "PW6SjK9Q2Ax5AbYP"}], "ticket_created_at": 99, "ticket_id": "3uPRIdQ2HgKAhdAT"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'ZDrnoFAn73Bbsn2A' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 42}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'nJvv6lswD0wm6TML' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'T85xfY7RKmQEmcbS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'GK4eXLHeIDs6Tije' \
    --matchID 'EgS2D8OItSzmkmLF' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["5KsPgRAAUYH26VB0", "FHxZibFDTbILeBHS", "OUET3Y0MaCNBET2P"], "party_id": "nh1HaoWOPtXq6Nbq", "user_id": "AHNw3fMy93cHfNBq"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'jpOGgoFsWsDxKimW' \
    --matchID 'IqMlc6i3e7Ij5zxO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'QE0WrQf2JeGrzthv' \
    --matchID '0i4lCdb3K1rrFwsa' \
    --namespace $AB_NAMESPACE \
    --userID 'gaZljygSDOrSqvqZ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'iMnewzhJIkIsUwvR' \
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
    --channelName 'iRmktiSwhzDzaPp6' \
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