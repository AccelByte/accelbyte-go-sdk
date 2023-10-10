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
    --limit '32' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "m9EhoGpxtIXW5VRd", "description": "b8uwMBUsylK2aufN", "find_match_timeout_seconds": 55, "game_mode": "8q7NHs6tMkiIMsnd", "joinable": true, "max_delay_ms": 74, "region_expansion_range_ms": 83, "region_expansion_rate_ms": 72, "region_latency_initial_range_ms": 82, "region_latency_max_ms": 21, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 50, "min": 94, "name": "y4kDgBgs2UKge93V"}, {"max": 95, "min": 99, "name": "39DXwBBOc5TiSY5U"}, {"max": 61, "min": 26, "name": "2ARyvPUHirMh0htp"}], [{"max": 31, "min": 52, "name": "AwJGlY0pYoVt49Xx"}, {"max": 2, "min": 79, "name": "TpHlYXB5ruJmuuoE"}, {"max": 67, "min": 64, "name": "mK7rPj6n3fy3ddeO"}], [{"max": 5, "min": 99, "name": "Wh2rmbmQt2CQjAgh"}, {"max": 52, "min": 52, "name": "IwgNdoQo89oA8td1"}, {"max": 89, "min": 76, "name": "aXr8Gw5Xb5PvCLGl"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 96}, "max_number": 65, "min_number": 24, "player_max_number": 92, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 81, "min": 61, "name": "ZzyDRAsKbohI2RZp"}, {"max": 78, "min": 84, "name": "BFCgjaT5itMWXXB3"}, {"max": 92, "min": 70, "name": "FzGqFHDDY6JIv8UZ"}], [{"max": 26, "min": 73, "name": "u5q2CgRuxAro0tkw"}, {"max": 80, "min": 63, "name": "pzsQgfqQ5U4apkUD"}, {"max": 22, "min": 61, "name": "JYNgm7iHIPL9JN8A"}], [{"max": 5, "min": 100, "name": "GvGUCEUJNjlyNj5A"}, {"max": 3, "min": 4, "name": "Rg9EUSTZOjrxrYGD"}, {"max": 58, "min": 75, "name": "spaIT7zusYU9Eth1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 57}, "duration": 9, "max_number": 13, "min_number": 30, "player_max_number": 4, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 4, "min": 93, "name": "YWwIiDnXtXQrwodB"}, {"max": 83, "min": 33, "name": "oAhgrSVzQ5EF4S4n"}, {"max": 48, "min": 10, "name": "w7LYawXNIskZOvzr"}], [{"max": 57, "min": 91, "name": "mHCd7ePJAOfrZrpH"}, {"max": 94, "min": 85, "name": "r55Dnk8oE2urF57m"}, {"max": 80, "min": 56, "name": "yYfCVXeWSLFHTDdz"}], [{"max": 20, "min": 37, "name": "aIsgp7ChOtzzemAQ"}, {"max": 37, "min": 13, "name": "7g9N3tauCrGiohIz"}, {"max": 8, "min": 34, "name": "TBmizxuXSb8not20"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 75}, "duration": 86, "max_number": 25, "min_number": 59, "player_max_number": 53, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 48, "min": 67, "name": "zpJsOdk9Tx7CuBaj"}, {"max": 14, "min": 45, "name": "o1rqppJDh8SYtPOf"}, {"max": 51, "min": 17, "name": "z1IzlvJgGNdOIgjL"}], [{"max": 54, "min": 85, "name": "uQR2wUv4CT6Vf9v6"}, {"max": 81, "min": 40, "name": "a2l7wit6mQEEH27P"}, {"max": 15, "min": 31, "name": "WpB64cG94vlHMIlK"}], [{"max": 31, "min": 46, "name": "pgAHe5F7iR48YQn3"}, {"max": 77, "min": 94, "name": "y8BtLDOns4bJydZ8"}, {"max": 43, "min": 78, "name": "UeaFwFotGHxUZJNc"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 83}, "duration": 28, "max_number": 81, "min_number": 96, "player_max_number": 64, "player_min_number": 85}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 62, "flex_flat_step_range": 28, "flex_immunity_count": 32, "flex_range_max": 79, "flex_rate_ms": 84, "flex_step_max": 88, "force_authority_match": false, "initial_step_range": 47, "mmr_max": 47, "mmr_mean": 51, "mmr_min": 71, "mmr_std_dev": 45, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "n54iif3INc2YR1hf", "criteria": "7wLhuZEaJebrzTts", "duration": 83, "reference": 0.9458697420851653}, {"attribute": "2dCNKKt6GGC0YAjE", "criteria": "NIpRQZ0XsPko2J28", "duration": 94, "reference": 0.2934223170021938}, {"attribute": "MBDoFshfPjAk1DNf", "criteria": "79RtMtBXVNlvMHzg", "duration": 16, "reference": 0.044515425344684}], "match_options": {"options": [{"name": "uJe8Gr6WCXZSq6m0", "type": "dFcb7IlV0rvkMiuQ"}, {"name": "rYTYRzCw6MBCMqgR", "type": "e4E2NGIe0nCwMxT9"}, {"name": "vzoVQ36pnnkd0jEg", "type": "NXGWspwmWJMtPyGl"}]}, "matching_rule": [{"attribute": "0EZRbGWmjOTocZam", "criteria": "n4zoxXdXLJYk0vEy", "reference": 0.08347645923117353}, {"attribute": "oLNwL7tlyOfSSdQK", "criteria": "Z0N8Ct1X6LsUWaj4", "reference": 0.06574732200057043}, {"attribute": "1d075ptS13SLDF39", "criteria": "iJ1vejY6kgH37Pdq", "reference": 0.19160462670577882}], "rebalance_enable": true, "sub_game_modes": {"3GDTqOD62WJFpaPg": {"alliance": {"combination": {"alliances": [[{"max": 41, "min": 99, "name": "rWaB0DmwVF8bSIUO"}, {"max": 25, "min": 41, "name": "O7ZRUDZf5q5RpnVl"}, {"max": 20, "min": 43, "name": "HUkoOihKijS91OXp"}], [{"max": 45, "min": 76, "name": "bq5ld7qY07NQoT1f"}, {"max": 21, "min": 63, "name": "UDd5La1miFYgMoRy"}, {"max": 82, "min": 38, "name": "SIyYXPV4kqnKOeR7"}], [{"max": 36, "min": 14, "name": "aYgPa95XAe80g8jX"}, {"max": 60, "min": 25, "name": "ZyCOkS67JPS4Z62g"}, {"max": 73, "min": 74, "name": "uEiizOK0SOzWqGiL"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 9}, "max_number": 50, "min_number": 26, "player_max_number": 13, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 46, "name": "w3PdihlTFKyHnCPJ"}, {"max": 30, "min": 41, "name": "hduLpjV52ncLYo2Z"}, {"max": 73, "min": 59, "name": "jo54ZTBXxrthznau"}], [{"max": 59, "min": 44, "name": "gSseStWwleANZY3M"}, {"max": 49, "min": 96, "name": "op9g8IeOKaAWjHxV"}, {"max": 97, "min": 36, "name": "fTqPuQKBkzhfId8K"}], [{"max": 98, "min": 15, "name": "QxPp16pqtf1fcfYx"}, {"max": 11, "min": 30, "name": "3jzl7ZTBPWYrlRhp"}, {"max": 42, "min": 17, "name": "liJhLB2fEFnwHWJN"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 10}, "duration": 0, "max_number": 2, "min_number": 31, "player_max_number": 90, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 30, "min": 96, "name": "wywlvHasyWwDcFac"}, {"max": 24, "min": 9, "name": "1iPI7WyqHVHy1L3V"}, {"max": 15, "min": 67, "name": "1Zc18r5q3EIAGkz6"}], [{"max": 38, "min": 70, "name": "H72jQRi1vulUypCl"}, {"max": 53, "min": 71, "name": "PzTCCy4QOUUiBV7t"}, {"max": 9, "min": 82, "name": "PmguIbwD9tRLWxcQ"}], [{"max": 66, "min": 28, "name": "fETpPbSXT7NUfLy5"}, {"max": 94, "min": 76, "name": "JWDR1ZZlxu88cGBi"}, {"max": 80, "min": 45, "name": "pSMpU1i6swGNZw4T"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 63}, "duration": 41, "max_number": 100, "min_number": 97, "player_max_number": 15, "player_min_number": 35}, {"combination": {"alliances": [[{"max": 93, "min": 99, "name": "F6LlfDn3EqPNVhy3"}, {"max": 81, "min": 35, "name": "eYdea2vU671wc9dl"}, {"max": 36, "min": 97, "name": "IaqdMIMR3wXJlvja"}], [{"max": 10, "min": 75, "name": "yzEVpWT4g8ydsFbR"}, {"max": 88, "min": 77, "name": "a7pOoMShbtQkFFGa"}, {"max": 65, "min": 13, "name": "tJEA7AoShysp9UGA"}], [{"max": 59, "min": 19, "name": "VY8XsWW8mUASHD8A"}, {"max": 40, "min": 76, "name": "2PYsfY5VOjgLreiF"}, {"max": 32, "min": 18, "name": "zShjpfibn6qm1yWX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 63}, "duration": 41, "max_number": 85, "min_number": 77, "player_max_number": 4, "player_min_number": 59}], "name": "fNJ43i0Ces5KeEB8"}, "GojsCKr753B4ymq7": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 11, "name": "vj4Z9KnT9JbSmUGR"}, {"max": 16, "min": 36, "name": "QV9KhyXkmK9vm7gZ"}, {"max": 72, "min": 16, "name": "E2rdeyho3ZCYavvA"}], [{"max": 47, "min": 83, "name": "oFIic3wwdaLLCS3K"}, {"max": 49, "min": 66, "name": "gmJG91OCOrOo4hc9"}, {"max": 79, "min": 70, "name": "KB6pFxRNccwcTIU3"}], [{"max": 3, "min": 3, "name": "YMXYanretKxevmMX"}, {"max": 43, "min": 29, "name": "inAH00fTRtx9ENyU"}, {"max": 48, "min": 87, "name": "LLxmmTdQkmAQifHM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 82}, "max_number": 46, "min_number": 54, "player_max_number": 20, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 54, "min": 58, "name": "RVTxnBG4g8Z51ldt"}, {"max": 82, "min": 32, "name": "Imx9hx2PjIGxckjH"}, {"max": 75, "min": 29, "name": "WgwFAObKGk9uHPRH"}], [{"max": 92, "min": 88, "name": "7zKZPDglvrgoDhhc"}, {"max": 70, "min": 91, "name": "GMgiOIZjBPYbR8UB"}, {"max": 96, "min": 28, "name": "pJKHleX9kIuihkqj"}], [{"max": 16, "min": 87, "name": "TVNHZqUlUQxVB3j3"}, {"max": 89, "min": 93, "name": "wI0j41o3ejgXYKpt"}, {"max": 70, "min": 28, "name": "XKVB2JSIoDrfQiKb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 43}, "duration": 98, "max_number": 4, "min_number": 68, "player_max_number": 78, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 21, "min": 83, "name": "BGraUaZ1Zok4Wk6t"}, {"max": 97, "min": 88, "name": "hpT8r7n2bhuHsO6J"}, {"max": 9, "min": 20, "name": "KobFHbmG1Dn1SdcU"}], [{"max": 74, "min": 7, "name": "2IIKSYN5zpv4ESXv"}, {"max": 100, "min": 47, "name": "YK4kuYPsbWfsLQPo"}, {"max": 4, "min": 54, "name": "iwjqd8E5wc1C9cst"}], [{"max": 77, "min": 18, "name": "qo3bomnaug70OYid"}, {"max": 100, "min": 51, "name": "wPLnlXW769FyKaj9"}, {"max": 4, "min": 99, "name": "VDjzDZZWViPloo0R"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 16}, "duration": 22, "max_number": 12, "min_number": 1, "player_max_number": 85, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 77, "min": 18, "name": "d7MF8j7DqFhr7Z9X"}, {"max": 80, "min": 74, "name": "u2oTzkorhzozWGCE"}, {"max": 0, "min": 97, "name": "5v9OjLvGQsL1B1U9"}], [{"max": 58, "min": 94, "name": "TB0MKZ3q19DRLG4H"}, {"max": 75, "min": 83, "name": "bdxkRxl4fDmuqP8D"}, {"max": 62, "min": 58, "name": "jz5B3dY4MTls8rXA"}], [{"max": 50, "min": 29, "name": "3IeeKZ7K6QQhXWLo"}, {"max": 11, "min": 55, "name": "ixls2BrRkHmZJ9rB"}, {"max": 29, "min": 89, "name": "Tg9Dk467Mxiex2XH"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 81}, "duration": 48, "max_number": 100, "min_number": 46, "player_max_number": 37, "player_min_number": 25}], "name": "FCzJydMr2Damd4NC"}, "NJo421DFuJO5g2kf": {"alliance": {"combination": {"alliances": [[{"max": 28, "min": 94, "name": "w4XREaeD9DtvO09A"}, {"max": 5, "min": 77, "name": "lsRV89rzuon4moQF"}, {"max": 7, "min": 89, "name": "NRyOW4D7rOaaYuIx"}], [{"max": 29, "min": 59, "name": "iAB0WzPDSaH2MPaq"}, {"max": 14, "min": 40, "name": "JqlyHQmcaqTZ19k8"}, {"max": 82, "min": 69, "name": "NQPHUN3KJKzGrgpO"}], [{"max": 74, "min": 10, "name": "e5NGVBG8vxCuKGuW"}, {"max": 77, "min": 18, "name": "9BKlNT6WZv8dDHDu"}, {"max": 72, "min": 19, "name": "HGHjA6oCtg1IFeVH"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 25}, "max_number": 73, "min_number": 13, "player_max_number": 72, "player_min_number": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 58, "min": 72, "name": "xXxF4jTLFQfOfRXI"}, {"max": 22, "min": 94, "name": "oJs2NzT2VVUxgQRN"}, {"max": 64, "min": 65, "name": "o6UTzpoFNSYyTyNM"}], [{"max": 33, "min": 80, "name": "PCVAC7i2jyRjASqV"}, {"max": 48, "min": 65, "name": "OjrOxs4ioibPsUcx"}, {"max": 16, "min": 48, "name": "SdNbqNdClksrdRah"}], [{"max": 63, "min": 13, "name": "YB7dTeZ5OseRoiXJ"}, {"max": 98, "min": 95, "name": "54lbjFuELFqoE8Pp"}, {"max": 24, "min": 43, "name": "ndbu3WvfUfvMCW3I"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 51}, "duration": 54, "max_number": 57, "min_number": 45, "player_max_number": 90, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 80, "min": 50, "name": "rIV63IHpVAChYjcb"}, {"max": 45, "min": 21, "name": "VZTfxSlLI9zmZC8A"}, {"max": 75, "min": 59, "name": "YbCcYDM8HJKwO7j4"}], [{"max": 0, "min": 49, "name": "Djugs5aVxvYAvb80"}, {"max": 46, "min": 28, "name": "JbdQPCDB5Mik2nTE"}, {"max": 39, "min": 58, "name": "AqJraur970sUyhaH"}], [{"max": 97, "min": 13, "name": "vA75FnH5Uv4IEWR9"}, {"max": 44, "min": 34, "name": "oKAIyQuNUTJ9AfKm"}, {"max": 66, "min": 52, "name": "kJuIpDDNWp40isVw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 38}, "duration": 42, "max_number": 82, "min_number": 10, "player_max_number": 61, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 67, "min": 89, "name": "q287axIr2UkTqrQj"}, {"max": 38, "min": 45, "name": "k4ikrcJkgU7BqSwy"}, {"max": 45, "min": 64, "name": "E1yFeV1XZffUhtpn"}], [{"max": 92, "min": 71, "name": "1wLkN4vOACC609QS"}, {"max": 93, "min": 78, "name": "IHRwjE4PETnobkth"}, {"max": 52, "min": 87, "name": "hhaNKrw5KscvedIt"}], [{"max": 35, "min": 13, "name": "ZQ8iZqTKcCg5RVax"}, {"max": 65, "min": 54, "name": "2AtdSsyHj6j64ZzL"}, {"max": 65, "min": 31, "name": "QIuOR6Gq2Fs5sWTR"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 54}, "duration": 4, "max_number": 3, "min_number": 28, "player_max_number": 65, "player_min_number": 60}], "name": "nWrppzLPT5TvNQRg"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 36, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'cPnQNF2exxvwVU9K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'PF8QYaYC2uRTbToT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "W67puD2U6aBMpoAM", "players": [{"results": [{"attribute": "lEhXTe5qFW7UANAR", "value": 0.3970252374373583}, {"attribute": "zM57OMAvnQWDyHz6", "value": 0.31726922418999204}, {"attribute": "bPNn5soXlrnHd092", "value": 0.29277119015089115}], "user_id": "weXgw4tzrrPvjCeW"}, {"results": [{"attribute": "92iapJ6wfuN9sBj2", "value": 0.5195537391336356}, {"attribute": "VHp9wi2fEv6KTFZj", "value": 0.44500758886909864}, {"attribute": "v0LNttBiquQRPwqq", "value": 0.30481552345194207}], "user_id": "yczX2rlivnA0tU36"}, {"results": [{"attribute": "wSs7Qv6eg2R3lReY", "value": 0.3556063389944083}, {"attribute": "P4coY1g4EHQADe1L", "value": 0.8227450225477072}, {"attribute": "aZBb8LeiqgSBIMAX", "value": 0.673237293967019}], "user_id": "sHKG2vI0FYZY1u9B"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0EO6yC4jLdT1Gzo7"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "3NOpxB9szARJ7DWe", "client_version": "kg2kRpk5OkTtaO9h", "deployment": "OOcj15LqgAQAsau4", "error_code": 97, "error_message": "H2yBEzEDBImaHoEL", "game_mode": "nrIDg1vda8mYtWZ9", "is_mock": "gjFk9HGoTYg5V3oY", "joinable": true, "match_id": "i1HJmeQHsaVIjlKw", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 55, "party_attributes": {"eBsvyKRgQvgJOYqA": {}, "mXMhufTUz1gX0CfE": {}, "sutNLCDjNpeGJLoc": {}}, "party_id": "lgzAWjeXWSzuZAcQ", "party_members": [{"extra_attributes": {"8Gww2e2QMe6fAhRS": {}, "ZkuLVhMR6UhpdfN7": {}, "Yruzbj2HMsSGn3VU": {}}, "user_id": "3aghQdYYeTt33Nao"}, {"extra_attributes": {"wEhIQLuVdLSldfFt": {}, "qeyCyni5ZRtZO2bk": {}, "OA1MCIGzXSxkkbZF": {}}, "user_id": "a143XN0YxV8Yim72"}, {"extra_attributes": {"T5QUpIFLD0r56RbR": {}, "w94rInbWMPKrix52": {}, "2UgE4RR8GYaYnYxl": {}}, "user_id": "nnhzZfCtcMp7yFph"}], "ticket_created_at": 44, "ticket_id": "B4uunmTCDDHNk7KZ"}, {"first_ticket_created_at": 76, "party_attributes": {"XEfOtZ7i7ENcHfu0": {}, "oNLXa7WzhyBmVuPG": {}, "41SzDHCPOnB4lMUM": {}}, "party_id": "GmTZftbX4QUf7EFM", "party_members": [{"extra_attributes": {"V4KkMryjsSwjbxSC": {}, "fkWI4R9xJRY9RJgF": {}, "JMT3UsSUhvZuxNyF": {}}, "user_id": "AKno34szAcrgtqaA"}, {"extra_attributes": {"09QTVEzqYLYvaosg": {}, "yFdFnM67U51kYZ0M": {}, "ToTsuGFHuSioOr0W": {}}, "user_id": "NZ6ElUsUUaOYvrSZ"}, {"extra_attributes": {"NU2A7dfzcTSlFNgD": {}, "l1NOY80qMAIgMJPx": {}, "KXKYQET79TK1YcIV": {}}, "user_id": "Vm2ffkhFD4aZelxW"}], "ticket_created_at": 17, "ticket_id": "QdKJPMJH57pSTYi1"}, {"first_ticket_created_at": 32, "party_attributes": {"ln2LIxpIL80RxXTQ": {}, "z41TgBSDk3UPmJOE": {}, "dHlaCDp3HsliI6cR": {}}, "party_id": "Yi5jqPXP1382OP2g", "party_members": [{"extra_attributes": {"btRtlptx5FMzC46k": {}, "h1j0TosZFsNEmNMW": {}, "atu2DOkEJzU5izdh": {}}, "user_id": "N2GlNTufJdBGx2bQ"}, {"extra_attributes": {"GDC7qnu0N4izcUl5": {}, "AeF408GX7BNdBPPg": {}, "jsxkIzpoE6IzxfYE": {}}, "user_id": "4s1tGG6scl8aPNYu"}, {"extra_attributes": {"62Yc467c7GpPtPzS": {}, "1BwQhIevJSfulnaE": {}, "Nv4xM4fBJewIPOI9": {}}, "user_id": "ewwlnMqmmRW68QUW"}], "ticket_created_at": 22, "ticket_id": "nefrXr2XR7TxBry0"}]}, {"matching_parties": [{"first_ticket_created_at": 14, "party_attributes": {"M0P52LeA9J3AstHQ": {}, "LyYS5e3hmfY5tEd8": {}, "Qp5w6hCBK6tN6TKV": {}}, "party_id": "l1MyaMFnmZyCZslR", "party_members": [{"extra_attributes": {"NyYiaAYPSeyywDms": {}, "cSzNlngUHjliH8DA": {}, "tEpfNbvMQUF3f9RY": {}}, "user_id": "iOcsYf6UjbDTvk4p"}, {"extra_attributes": {"idzwqjuXUOSc28Vg": {}, "lzdHGgG6357QZ5na": {}, "LV1Ow3F2Nwx9sjLe": {}}, "user_id": "mESo8MzfEX2YwQUn"}, {"extra_attributes": {"glWgjX2fYz0qGcds": {}, "ma12tnADvDZ8jPxN": {}, "JLSpN6QAz1ZAtg0I": {}}, "user_id": "K33IbrWsCaZH8uXS"}], "ticket_created_at": 86, "ticket_id": "07jEX5E8snceF8kj"}, {"first_ticket_created_at": 35, "party_attributes": {"3MLkwO4ztwMGrqJr": {}, "ERfCY5w9V5zj1m9X": {}, "c2N7L3OULjMeosRX": {}}, "party_id": "Qm5e8JosR922k5iT", "party_members": [{"extra_attributes": {"oNaBKctFTEqTIaJj": {}, "m8v0P5iVMJ9oeLUC": {}, "w6CEKDkgzyA00hSQ": {}}, "user_id": "vMSsS9gjXT2SpKSJ"}, {"extra_attributes": {"PMOuyReVIUHxPGvQ": {}, "OjXqHzu9Cce0qkhQ": {}, "nigLElIojzDXvWAb": {}}, "user_id": "aGTfOOZFf2aki5P1"}, {"extra_attributes": {"6VFsVHWr69xCA274": {}, "GBFOXel3q8I89cl0": {}, "EKD4KsncctCuUls6": {}}, "user_id": "qhVIKqQWSps4ODe3"}], "ticket_created_at": 45, "ticket_id": "YzFKs1X65cBdn9Bp"}, {"first_ticket_created_at": 63, "party_attributes": {"u4mgMojYsVa3JODO": {}, "ITANdiQp9o2bL9OQ": {}, "XDhBHYRpN4pq69td": {}}, "party_id": "fVMUJ7QkmxnbFWlR", "party_members": [{"extra_attributes": {"zrG7dC1DsjhQf1u6": {}, "dU3cHmbL8bAxCylo": {}, "A7gBKyUYXkQcZELW": {}}, "user_id": "wy8dOXmf1TveSe1H"}, {"extra_attributes": {"OnxGfePFZgA2e9VA": {}, "JMg5RGEYuCeYuzfc": {}, "KC5vzzCXfKOoosWQ": {}}, "user_id": "JTyw7gbCpBpEnQah"}, {"extra_attributes": {"vfbELUOfKsA3ru6R": {}, "nx0TENBO13tdrhpD": {}, "UE2WNvWxlYR5Y12q": {}}, "user_id": "yRNfh9VYoxmnylSy"}], "ticket_created_at": 59, "ticket_id": "Nz6Jy96nLmcqGQdO"}]}, {"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"xFLc7st8db7si14s": {}, "xdNmVHzXMMgHJVie": {}, "pcTHAMHYstPAORzv": {}}, "party_id": "3uNrafEAz7jF22e4", "party_members": [{"extra_attributes": {"DD73qXVeO11qc1MT": {}, "4Vt7hLNORH5jgRJa": {}, "RiIaesj7V3thIg1l": {}}, "user_id": "LGDd2akJGTdcf4ko"}, {"extra_attributes": {"QwzomwX29vu7CoUH": {}, "voBabAStmcCo1ULr": {}, "uCrDvmhwIgxMPzL9": {}}, "user_id": "Dcv6SIj5Rf8mxLBW"}, {"extra_attributes": {"NRYQW7dGifQL34gt": {}, "QvR2YTCzwJ4Yk85L": {}, "WCw5aJBSxay54QQD": {}}, "user_id": "q8sR9VYmDy34HPdc"}], "ticket_created_at": 6, "ticket_id": "Cv3CUXgUacJxOnXf"}, {"first_ticket_created_at": 62, "party_attributes": {"30dtQwAftwFtumcb": {}, "DmNLSKDoFJ5LthfK": {}, "PaSsCVngHBf2xxkW": {}}, "party_id": "sfNzya1MlsQG4b6E", "party_members": [{"extra_attributes": {"HyTzjrc8Q1jHcHdh": {}, "ZeuECRhgFqX1Inp4": {}, "XdfnNMnRu6rbcRQN": {}}, "user_id": "5MokRIvp1LB7qrOm"}, {"extra_attributes": {"uaU8jRmvvf6XA8hj": {}, "kjw0wCTJky5FEDUp": {}, "ltP7VqWl64Fx0UJe": {}}, "user_id": "mOsHQoxIUcfflH73"}, {"extra_attributes": {"yeB1SWzrmLhGwqno": {}, "ZQFucosCkRsQPLbJ": {}, "Mp7xRNQ1gqc2LLYO": {}}, "user_id": "YbBhNcIHstlMNOHq"}], "ticket_created_at": 54, "ticket_id": "BHkmsFct4bvfvFbg"}, {"first_ticket_created_at": 8, "party_attributes": {"YYfsxbRz1R7a5BWv": {}, "NaimXdwkCuYE4GbM": {}, "TO2ywWu5IfcAif8p": {}}, "party_id": "2f5mWVZnG6ntZDRA", "party_members": [{"extra_attributes": {"JNlug1fqKwjz3CLJ": {}, "F7mfTRLt7LTDDs7p": {}, "GBPvn2xWuGZ7xEpW": {}}, "user_id": "wGtDIygD5LTq9OSB"}, {"extra_attributes": {"yvsVvVQ4eLxNO6hf": {}, "nAD5eq0jPrBTYTkS": {}, "z6AG5LIlVIb4gwaF": {}}, "user_id": "JCSrScRsdKZz3I8f"}, {"extra_attributes": {"blakZDwiwukAyE97": {}, "EoPyMiUirguN98w3": {}, "raHLbpv58dDYfWyv": {}}, "user_id": "V5LrA9JsQNbbAAdr"}], "ticket_created_at": 49, "ticket_id": "Jmkhd3ylGXpgcZJq"}]}], "namespace": "GZaFAQwa9zqOxP7f", "party_attributes": {"fkNGfpvEzCNBoerd": {}, "6cxon9arbZFwr3dB": {}, "dYBMJqFp2FAN4CDr": {}}, "party_id": "ddeKSotT4APbK6VL", "queued_at": 41, "region": "JntyT5adYjAoCqPp", "server_name": "tzo78f1ECRASpTLE", "status": "0lwLBWsFxadtKT7f", "ticket_id": "SvMHtL6poAV3D7Wj", "ticket_ids": ["PxHAxMhDblkBYdzv", "jPawiXyEzLAYIBLU", "dYdyyuZ0o5TBPaPA"], "updated_at": "1994-04-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "a1YAF8OsUZC2usr3"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'c79tCoSeZJzMySQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 77, "userID": "gSJ0gIAUyrexpMeb", "weight": 0.10176511051747683}' \
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
    --matchIDs '7FquyZGQ5LwX3NNN' \
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
    --strategy 'ofmV2FXtIAntK0Fx' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'hPuzzIWuxEiAWmQV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '49AY6nz6K6aCCz0r' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "uDErjZlhC5oOmpsO", "description": "SXKhSIyUCyReDtT0", "findMatchTimeoutSeconds": 1, "joinable": true, "max_delay_ms": 83, "region_expansion_range_ms": 24, "region_expansion_rate_ms": 32, "region_latency_initial_range_ms": 5, "region_latency_max_ms": 82, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 60, "min": 97, "name": "OVALmCbIxaf6xbKT"}, {"max": 25, "min": 6, "name": "7sO5g4lOzpK79gev"}, {"max": 13, "min": 2, "name": "DYV7VvcrdPUsBt8d"}], [{"max": 55, "min": 70, "name": "oDS6qlAlBgAm91hy"}, {"max": 78, "min": 49, "name": "lp2I8EE5xSG3B7f7"}, {"max": 38, "min": 1, "name": "PXr71y5dtULSFWto"}], [{"max": 29, "min": 34, "name": "gC3mJg37m9E83F2n"}, {"max": 58, "min": 31, "name": "zL14xnlqh5yH7C3T"}, {"max": 49, "min": 74, "name": "9EZv6d1kBvQD2nsY"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 47}, "maxNumber": 81, "minNumber": 6, "playerMaxNumber": 39, "playerMinNumber": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 23, "min": 38, "name": "SdfddSP7mmhwKhDj"}, {"max": 45, "min": 31, "name": "Qn12ZJRHWV86Jq1N"}, {"max": 67, "min": 18, "name": "DHucoxIyVrxMVyTk"}], [{"max": 6, "min": 5, "name": "ZQNMSmGHXpYfbatt"}, {"max": 50, "min": 97, "name": "AxRr1RFaoaxdURQZ"}, {"max": 76, "min": 66, "name": "Upsh44vKMIK1NGui"}], [{"max": 34, "min": 3, "name": "qaSHTsLl3ksz91wP"}, {"max": 46, "min": 91, "name": "tif8JFOpMub5TUN5"}, {"max": 1, "min": 51, "name": "LtiVtsEFc7DwD2Wi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 10}, "duration": 97, "max_number": 88, "min_number": 50, "player_max_number": 11, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 20, "min": 6, "name": "tre13rK4Pwa0nprc"}, {"max": 34, "min": 81, "name": "wOhajjX0oUVaG48i"}, {"max": 13, "min": 60, "name": "6ZIZTRsj1weGUnBM"}], [{"max": 70, "min": 0, "name": "hd9y8rfYo4SJPQEs"}, {"max": 18, "min": 23, "name": "mQRar5nRS87UwgF0"}, {"max": 53, "min": 59, "name": "SdGAEpgNGFodq4NX"}], [{"max": 84, "min": 48, "name": "67PUTBHrasO7CH5b"}, {"max": 67, "min": 70, "name": "I2XCsjMkgpUZ00DZ"}, {"max": 40, "min": 25, "name": "joEW4xkZl73mfrew"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 69}, "duration": 30, "max_number": 17, "min_number": 61, "player_max_number": 34, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 46, "min": 37, "name": "L39Fw1uEMduIj0bD"}, {"max": 97, "min": 39, "name": "cqM8mtvJX0bOxBtz"}, {"max": 2, "min": 77, "name": "1FLVxnsKVQlKJvtM"}], [{"max": 91, "min": 65, "name": "2NlsDFc3hOUcZy48"}, {"max": 9, "min": 64, "name": "DGtv8A6z5ZNPKBAM"}, {"max": 67, "min": 12, "name": "S7dCDYxbILZshMYs"}], [{"max": 56, "min": 96, "name": "BUSDpgE6ktyLlKeG"}, {"max": 44, "min": 90, "name": "4Jk1Ai7xVS9JFZ5A"}, {"max": 78, "min": 90, "name": "Iv3tMieLH9BorhBU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 92}, "duration": 33, "max_number": 74, "min_number": 51, "player_max_number": 88, "player_min_number": 13}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 3, "flex_flat_step_range": 22, "flex_immunity_count": 69, "flex_range_max": 30, "flex_rate_ms": 82, "flex_step_max": 99, "force_authority_match": false, "initial_step_range": 74, "mmr_max": 68, "mmr_mean": 81, "mmr_min": 30, "mmr_std_dev": 24, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "FENDiSHkHdX14KzM", "criteria": "npBRrBkUGlDiP8Vj", "duration": 39, "reference": 0.2793745150341024}, {"attribute": "DCGJzUGm9ko2ECff", "criteria": "8jECl1W1W9BuIfTT", "duration": 25, "reference": 0.3272393775528306}, {"attribute": "lciuCmwoyrQQylml", "criteria": "jqxbkybGDBT1vZ1d", "duration": 84, "reference": 0.9033885038507008}], "match_options": {"options": [{"name": "gRsNp3Da1L0C6T8A", "type": "gTSjMlKY4NYoUQ6I"}, {"name": "oGXkE4HNbTjck7p2", "type": "7GoF65Ca42acvls2"}, {"name": "UNPeA9y09ooplnoK", "type": "N5tzFuPieoJO8EBf"}]}, "matchingRules": [{"attribute": "3Kh8vhI72Asvbpc2", "criteria": "I72wGOYdQZGJ7SXG", "reference": 0.10858115158807113}, {"attribute": "NVASn5x5IKDTzKYD", "criteria": "mReOTVsHoNBgMQ9i", "reference": 0.26020310964068694}, {"attribute": "tuI6AB0Wpa2zyV85", "criteria": "TFW3M9q2F6dpNK8V", "reference": 0.05135610486639186}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 14, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'dxMzsu73JycdHPQT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'yuNVBmR99u2QH32t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'BRJOVSl50qCcWI45' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 53}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '6bGuFMYG74KJIbip' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'jt6itDkjyhNP8E1U' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "KKFXJF8UByuBnAxd", "count": 12, "mmrMax": 0.8140366692020705, "mmrMean": 0.7492404855661341, "mmrMin": 0.3444327792922085, "mmrStdDev": 0.0991846699200335}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'yKSF7Qa2R1h1rjJK' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 2, "party_attributes": {"1Unr9Du1A64I3SSR": {}, "hQY84e6Qj3LiVdrd": {}, "H5X39EPsyiM6VeEC": {}}, "party_id": "1ze8Z1A9BvmvTGXt", "party_members": [{"extra_attributes": {"iq4UaP1LxvgyqGo4": {}, "3vxmUFubmzyWLZ38": {}, "ogoa02kFOommbFZJ": {}}, "user_id": "NeysVHNHFp9duu47"}, {"extra_attributes": {"UmtFAku2RON7MBCW": {}, "unfwToFFavm75cCw": {}, "LdbEMRzSeRfeiLPr": {}}, "user_id": "uDTKqx5sPUG9i7Hw"}, {"extra_attributes": {"jCZjLVzoVZ4lCATI": {}, "oCKrvKOUfBd6HaeT": {}, "3nZu8ccZG3tD3Bhs": {}}, "user_id": "7dwk2BQCq3wD943L"}], "ticket_created_at": 97, "ticket_id": "DAYSDYfTP6hsDf1o"}, {"first_ticket_created_at": 8, "party_attributes": {"tSIF57NXAzqGUYS0": {}, "ZT6P1K4RD5sYAzJT": {}, "wbSRpJyefYNxOKtg": {}}, "party_id": "z5yPrtczrfMurUSf", "party_members": [{"extra_attributes": {"zuBRFRcjhX2SNFIX": {}, "NbmxQtQdDwqfE2HH": {}, "HLJ4PcJYmeAKbgyu": {}}, "user_id": "w8QR4UB73HMA7Dms"}, {"extra_attributes": {"NW4NCuHF8eVcVhqB": {}, "CP8WJgtSEtI55sby": {}, "zNjNFinkvqIYL9by": {}}, "user_id": "rtqtPpqBjWsoLDLq"}, {"extra_attributes": {"MwJlnBrfQtcnFtss": {}, "LaiMzGnXyBWc1wZu": {}, "JffLc4KypOcIUjXa": {}}, "user_id": "HmKFt7IGzh5tRJHj"}], "ticket_created_at": 18, "ticket_id": "6TFRbNe2z8xybuz5"}, {"first_ticket_created_at": 27, "party_attributes": {"fJsEsWFnwETubDGE": {}, "qKcWkjdO8smj6Nhp": {}, "ppKEd2qVK1QPBwjq": {}}, "party_id": "i0Xd9MGxyP0N9OXE", "party_members": [{"extra_attributes": {"9yktMhxIV4j5Q6By": {}, "GhtwvNMVpSaKWseq": {}, "VMC80OrJdGwy2ING": {}}, "user_id": "610DPF2aGtdCvUcN"}, {"extra_attributes": {"YU5k7Sto2ETU2MBA": {}, "8f582aQvOSryzIqj": {}, "j7URt5pVl4EP67B7": {}}, "user_id": "UHYVmauelrKlf1LP"}, {"extra_attributes": {"5KnS8KsVYH5lm1h5": {}, "slNlKdNfpMBzehhl": {}, "iqddiBNQ27bVjQiN": {}}, "user_id": "48EZAyrufQEE9pq4"}], "ticket_created_at": 79, "ticket_id": "hwnhwfxO6Agzbwow"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'vbxDvrJRyZstvVWo' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 30}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'VNS95u4323CKYlpX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'YxpElNXl326GWqIF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '227EsmC9zXq5pFju' \
    --matchID 'PD0JLAV0YH1wUSAC' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["jtSDPb3EQIy0atY1", "Wx1LiWculvSMbCMw", "kNWRKBGfEq7fpSop"], "party_id": "fDwPgbz7PbEBXmv8", "user_id": "MX51a4jJ2Vpnyj3P"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'CVbb6GgjCCdRzirx' \
    --matchID 'rafXYI2KnZJEfr6P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'my0uqKdFcyNb06Xc' \
    --matchID 'rlOJMN3p3Mnrrenz' \
    --namespace $AB_NAMESPACE \
    --userID 'JsQFf7sQ3PCWAhBy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'hm5da3Z8pJ2lqEcb' \
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
    --channelName '6X702s6XEQXFgIyp' \
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