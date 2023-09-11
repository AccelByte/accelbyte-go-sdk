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
    --limit '66' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "xGxw1OxZGxRjHv2x", "description": "fSnBtZZLHk9iB01T", "find_match_timeout_seconds": 59, "game_mode": "IGiIMrvGOA2sigUz", "joinable": true, "max_delay_ms": 82, "region_expansion_range_ms": 88, "region_expansion_rate_ms": 2, "region_latency_initial_range_ms": 61, "region_latency_max_ms": 58, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 77, "min": 13, "name": "zRlNuK96tQXHbqJ8"}, {"max": 98, "min": 80, "name": "yPLPjdiIdUe1K8hr"}, {"max": 64, "min": 65, "name": "97FWXZz0AuTVnbex"}], [{"max": 56, "min": 20, "name": "Z9pZKviRTicRytcD"}, {"max": 59, "min": 31, "name": "3RBqFzdIl6M3By4x"}, {"max": 42, "min": 85, "name": "bvQ68EjTUaQjWakc"}], [{"max": 26, "min": 21, "name": "T9CLuyJe5RQkHiP5"}, {"max": 29, "min": 42, "name": "IuznPBsL9joTVsM4"}, {"max": 26, "min": 42, "name": "408EJnjqcFrYZFuo"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 64}, "max_number": 31, "min_number": 58, "player_max_number": 98, "player_min_number": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 48, "name": "EZbBiAhQ19nbGHf2"}, {"max": 91, "min": 22, "name": "pLF1iqW4IZOznivJ"}, {"max": 68, "min": 68, "name": "vkPgeIYXi6QDMKYr"}], [{"max": 49, "min": 48, "name": "erbcmrqxCRzjE07h"}, {"max": 50, "min": 15, "name": "6GSREgSrQbnxTthM"}, {"max": 66, "min": 36, "name": "PgJYhX8kXUpBFqKt"}], [{"max": 27, "min": 52, "name": "qhPDDfAQJcVHjoI9"}, {"max": 47, "min": 53, "name": "MxHf3x7o51yjnmex"}, {"max": 19, "min": 33, "name": "JAE1E1Pa2C0Nnx5j"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 48}, "duration": 100, "max_number": 84, "min_number": 90, "player_max_number": 54, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 20, "min": 71, "name": "i1PzcO8k9UZZKpL2"}, {"max": 41, "min": 0, "name": "w8N3LOgQiFKMgobX"}, {"max": 6, "min": 71, "name": "oYwhfp1jsuqWGxTx"}], [{"max": 23, "min": 43, "name": "n43FoYWeLDTRp83z"}, {"max": 38, "min": 38, "name": "ykZulz2yUnNCIjpt"}, {"max": 65, "min": 75, "name": "bl0e5MRE5K9MY1c3"}], [{"max": 10, "min": 64, "name": "QHjd4DsmV5oacIqb"}, {"max": 90, "min": 10, "name": "1wZFxamEKkGC8g9q"}, {"max": 17, "min": 53, "name": "GCnKlpzECSx0Q2w0"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 75}, "duration": 72, "max_number": 3, "min_number": 46, "player_max_number": 5, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 99, "min": 44, "name": "ZcH2Km2oinizsdPU"}, {"max": 92, "min": 21, "name": "36ac56vxA52aFfVm"}, {"max": 63, "min": 98, "name": "pCM3GaNCSIO2oaEw"}], [{"max": 94, "min": 16, "name": "w6WcZYATLE8trKva"}, {"max": 4, "min": 11, "name": "c0WPXQi9ghmiq9ro"}, {"max": 56, "min": 3, "name": "jdeqdtveO7XdeNoJ"}], [{"max": 38, "min": 18, "name": "f3A2SQkKPc2Jc66R"}, {"max": 100, "min": 91, "name": "3oNA2vjwnYI4FlFW"}, {"max": 31, "min": 52, "name": "ERL5ETzT8XlAbl2h"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 94}, "duration": 27, "max_number": 96, "min_number": 36, "player_max_number": 64, "player_min_number": 51}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 74, "flex_flat_step_range": 25, "flex_immunity_count": 73, "flex_range_max": 50, "flex_rate_ms": 93, "flex_step_max": 43, "force_authority_match": false, "initial_step_range": 0, "mmr_max": 96, "mmr_mean": 61, "mmr_min": 76, "mmr_std_dev": 93, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "PLmpF6P20IJLNhGm", "criteria": "p6UwCOPmgo1ZIg0N", "duration": 95, "reference": 0.6627606888191507}, {"attribute": "5ge64pzUODNyI2hd", "criteria": "BTWfw9umpXhoGLjt", "duration": 70, "reference": 0.6025986388434281}, {"attribute": "pkklqIDYz2Jor5WI", "criteria": "3X3RlADz6omOdW2b", "duration": 43, "reference": 0.5635061570700337}], "match_options": {"options": [{"name": "d541ccosTHkiFquB", "type": "xzgjjELa2gtSqCVi"}, {"name": "J7QZEGmV7fxNB0UC", "type": "pZTYpaygdg1pREIK"}, {"name": "sQQ9eTPCHCBzqVCu", "type": "4xa8zsQVZno0Eujl"}]}, "matching_rule": [{"attribute": "OXJSPoowMCElDPEU", "criteria": "0NE5cVtmidsouUZR", "reference": 0.031610256636748435}, {"attribute": "oQkp0Gt5K2CcEsXc", "criteria": "KpRmXVntRI3Aqw9o", "reference": 0.7436249179833836}, {"attribute": "Q6SaofHU8pg5tmjf", "criteria": "C7IwIu6aS1jDKF4j", "reference": 0.34640543916083255}], "rebalance_enable": false, "sub_game_modes": {"DtFEmfeLeIodHfnI": {"alliance": {"combination": {"alliances": [[{"max": 94, "min": 54, "name": "k03hSBJSylXBjsC3"}, {"max": 3, "min": 38, "name": "7j6UDj8sI5dVVhNu"}, {"max": 92, "min": 52, "name": "xzNNhDFRtpStMOzf"}], [{"max": 22, "min": 71, "name": "XePSHfoLoFpOTSBq"}, {"max": 41, "min": 75, "name": "nWQdPSgA5IcVg03B"}, {"max": 25, "min": 3, "name": "fVKYcKaRrMrp9ILj"}], [{"max": 10, "min": 56, "name": "JMjvJepuvzy7Nq8i"}, {"max": 99, "min": 6, "name": "V3D7IVakYE1NWHGr"}, {"max": 7, "min": 22, "name": "abHj0VaswMBk39Hy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 29}, "max_number": 97, "min_number": 66, "player_max_number": 57, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 51, "name": "GgSffcZ0KFIYD5WC"}, {"max": 43, "min": 93, "name": "qlA1qnMyz7X2biVC"}, {"max": 8, "min": 80, "name": "ubZMgkWCdngRsiwv"}], [{"max": 90, "min": 41, "name": "IOPmn3MnJWDzft2Y"}, {"max": 3, "min": 64, "name": "2h81bMh557g5SfdL"}, {"max": 66, "min": 78, "name": "tdWamfDlA8llTpmt"}], [{"max": 80, "min": 85, "name": "WRjLCpHFPlJcmlVa"}, {"max": 35, "min": 86, "name": "nmtpD2zNxWxZHoKe"}, {"max": 13, "min": 5, "name": "yH9RoEhP3rpgwsJq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 45}, "duration": 66, "max_number": 73, "min_number": 10, "player_max_number": 53, "player_min_number": 55}, {"combination": {"alliances": [[{"max": 80, "min": 54, "name": "xw2MAE7NdiCiQdDq"}, {"max": 86, "min": 62, "name": "f3gwgQirhP0iYDrt"}, {"max": 15, "min": 38, "name": "E5K3jR69iyk2gh3U"}], [{"max": 30, "min": 55, "name": "OSzSs1cLZR1tLg4O"}, {"max": 7, "min": 17, "name": "X4pmgcTvgv5C9XnX"}, {"max": 76, "min": 72, "name": "PSxKcuPznyFdXOLw"}], [{"max": 61, "min": 37, "name": "2ihZsRmQDVOXIwiY"}, {"max": 22, "min": 60, "name": "y28pIPrWvWj3TzSA"}, {"max": 1, "min": 64, "name": "xlPyBdcQUtiyh9td"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 81}, "duration": 92, "max_number": 97, "min_number": 42, "player_max_number": 89, "player_min_number": 96}, {"combination": {"alliances": [[{"max": 8, "min": 32, "name": "CbUki552Mh6kYJdN"}, {"max": 28, "min": 80, "name": "Bk4liy0CX1Nqcmf1"}, {"max": 0, "min": 94, "name": "BVsttRvt1CXA9U0w"}], [{"max": 0, "min": 77, "name": "SWkHLfFzKwVOgRzV"}, {"max": 70, "min": 17, "name": "yoBYeralqjH9EFLh"}, {"max": 76, "min": 64, "name": "23TI8rTZMVuYPfsg"}], [{"max": 3, "min": 13, "name": "rJa3Wm0ZVrn5DSzK"}, {"max": 54, "min": 35, "name": "nEDUnul4Ixxmd0nj"}, {"max": 52, "min": 46, "name": "ZtRXqLFOVTwGt8rz"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 5}, "duration": 86, "max_number": 53, "min_number": 24, "player_max_number": 50, "player_min_number": 91}], "name": "F7MRVY2RjYqk2nPM"}, "41xQikup9Bvwzxzg": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 26, "name": "wEiAeQtFbYcGOrzj"}, {"max": 90, "min": 63, "name": "a1BgwpxxUvtsCuNr"}, {"max": 38, "min": 25, "name": "Gq29b3ckodjWXRbM"}], [{"max": 54, "min": 20, "name": "XIxXNB2RGZ4ZxlBh"}, {"max": 23, "min": 88, "name": "gBbCrzhsRkQYYPKP"}, {"max": 64, "min": 9, "name": "11CcCe1H2R4jOvo9"}], [{"max": 83, "min": 23, "name": "YXGl4GWy99JFzydm"}, {"max": 70, "min": 15, "name": "p6Dt05Zs4yLceM8s"}, {"max": 98, "min": 68, "name": "1mNHFMOUDqttt950"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 81}, "max_number": 94, "min_number": 16, "player_max_number": 26, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 63, "min": 52, "name": "FPptNUcrMKf83sRU"}, {"max": 6, "min": 11, "name": "i1FSl48xzhqVIcva"}, {"max": 37, "min": 83, "name": "Qo3oIlxeS2qCGuqf"}], [{"max": 50, "min": 24, "name": "0oo2Cbp1O3t0L4uB"}, {"max": 20, "min": 84, "name": "1TsMiAkFBp6LRIJL"}, {"max": 39, "min": 3, "name": "C1NvHBgRGx8hY064"}], [{"max": 21, "min": 59, "name": "JCwMMelRHfnyGJsU"}, {"max": 6, "min": 55, "name": "J0r07nj76TWarJ4x"}, {"max": 10, "min": 22, "name": "8CTudUxf7PsPZT3U"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 36}, "duration": 47, "max_number": 18, "min_number": 15, "player_max_number": 99, "player_min_number": 55}, {"combination": {"alliances": [[{"max": 44, "min": 67, "name": "7HxcuQ0srh5qdhcv"}, {"max": 11, "min": 93, "name": "KlAdtW1hsQgAfeH5"}, {"max": 38, "min": 95, "name": "ZnuKmPHg8h1Cu378"}], [{"max": 81, "min": 38, "name": "cxac3jI1FRPNjrnR"}, {"max": 68, "min": 71, "name": "SzcMJ6ElY4WFSJCo"}, {"max": 40, "min": 74, "name": "eqitdadtFZBrv1rh"}], [{"max": 26, "min": 50, "name": "CQUWONVcrwtA1l09"}, {"max": 74, "min": 55, "name": "QTc6hU7csWQCoWGf"}, {"max": 53, "min": 95, "name": "mF40NyksGKVfEt4K"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 78}, "duration": 80, "max_number": 67, "min_number": 98, "player_max_number": 14, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 64, "min": 91, "name": "osbrvWgMmF6rcJsk"}, {"max": 3, "min": 66, "name": "qn49WDG2ZG8aCDpA"}, {"max": 38, "min": 4, "name": "1s6sqshya0Icu8hV"}], [{"max": 24, "min": 18, "name": "slIzroUjXQR4jACK"}, {"max": 55, "min": 94, "name": "A9VbfGojMRfudr4e"}, {"max": 100, "min": 63, "name": "0OEtFA9cHztDVKdJ"}], [{"max": 76, "min": 23, "name": "8zKzCxii4imChtUd"}, {"max": 83, "min": 18, "name": "wv47rjtqgov7pfUT"}, {"max": 52, "min": 9, "name": "1FGYSGnynmYe8UYp"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 57}, "duration": 65, "max_number": 92, "min_number": 3, "player_max_number": 77, "player_min_number": 61}], "name": "7ngXGQZnNinyxEc4"}, "SAgQGzeMXR91YUEA": {"alliance": {"combination": {"alliances": [[{"max": 18, "min": 89, "name": "cFXJcoPV68M1k4rH"}, {"max": 16, "min": 27, "name": "UqNJfW4MSvJFFTg9"}, {"max": 23, "min": 8, "name": "JQYH93ErLWy5O7q7"}], [{"max": 48, "min": 62, "name": "KVvCGXTNufC5xktR"}, {"max": 7, "min": 63, "name": "UbtmEEB5CiUIIGsp"}, {"max": 71, "min": 77, "name": "HqCSrFqz097kWHlX"}], [{"max": 78, "min": 79, "name": "R0X4VaRXT9Y498DX"}, {"max": 78, "min": 73, "name": "J62lz7RIa79FKrIr"}, {"max": 81, "min": 84, "name": "ATXyDINibEKe2X2o"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 98}, "max_number": 92, "min_number": 73, "player_max_number": 53, "player_min_number": 63}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 84, "min": 65, "name": "kyH3fJo5hiLf6Kgs"}, {"max": 69, "min": 4, "name": "9n7ASk8LhUnylDwz"}, {"max": 61, "min": 20, "name": "52bWPcthe40i0im4"}], [{"max": 1, "min": 33, "name": "gpjDzHvCHX60KzhO"}, {"max": 60, "min": 69, "name": "hn3dSVZ6qPNrjT6e"}, {"max": 59, "min": 11, "name": "Z1HUd6zC8gH4Koyp"}], [{"max": 32, "min": 5, "name": "yP5tBrJ4xFH3shE1"}, {"max": 75, "min": 53, "name": "pLzFeZwJYhw0FVuL"}, {"max": 26, "min": 78, "name": "lJCpye8aMecItSvU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 54}, "duration": 4, "max_number": 43, "min_number": 31, "player_max_number": 18, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 11, "min": 55, "name": "jtxGqRGxpTewrqoh"}, {"max": 39, "min": 54, "name": "t0akIbD93L9pf0i2"}, {"max": 80, "min": 29, "name": "2KPUN6yguqUhN3xa"}], [{"max": 84, "min": 29, "name": "sgIhPtAOk85flnUl"}, {"max": 8, "min": 49, "name": "eR9iMYbgKUU1058k"}, {"max": 87, "min": 20, "name": "DPwVWSgvPS1MitFO"}], [{"max": 14, "min": 56, "name": "0Gw61CsgBmRzOA9f"}, {"max": 19, "min": 34, "name": "SoQJr9BzDYeOiHMx"}, {"max": 4, "min": 80, "name": "YGBrgWP83jGE9EfZ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 35}, "duration": 69, "max_number": 19, "min_number": 5, "player_max_number": 83, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 35, "min": 67, "name": "ZxAmvvB589IpByNB"}, {"max": 39, "min": 93, "name": "s9OvE0h2nB4gm1Eg"}, {"max": 48, "min": 41, "name": "mEzSXA9fBZqVRjIA"}], [{"max": 47, "min": 18, "name": "zhCbXFpl4qb9tgs5"}, {"max": 69, "min": 84, "name": "YbpllwfO9Vhvbiwc"}, {"max": 68, "min": 69, "name": "ibDfwF2OIwLaikOH"}], [{"max": 43, "min": 88, "name": "NXYKWYVJRwfNMTtx"}, {"max": 11, "min": 9, "name": "pwDmqL0tNhG3m1Vx"}, {"max": 67, "min": 37, "name": "o7pxk6mWHC9XwgPY"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 0}, "duration": 90, "max_number": 97, "min_number": 45, "player_max_number": 17, "player_min_number": 94}], "name": "27psiDi0Ly61kdYm"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 19, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'jUKxTHKMfqcxfmhL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'SMWYF7MIO5S8p5WP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "XS8EMipS6syQuDDY", "players": [{"results": [{"attribute": "E7IGCbEJ3pEFt1WZ", "value": 0.18474732503024305}, {"attribute": "X1SjpJ4EjE4ARWoM", "value": 0.8887184052506998}, {"attribute": "35uQF1lo1w8kIkwT", "value": 0.7390050355824835}], "user_id": "6NydPlNvPTwQ8mEP"}, {"results": [{"attribute": "waD9D4w3g8lUInpX", "value": 0.2427212498734761}, {"attribute": "0o4t9N2pLIu8uY61", "value": 0.3913828833096329}, {"attribute": "HuJmHuY41po5OEU4", "value": 0.4534954584354931}], "user_id": "4FPdMlBj7PoxEeKQ"}, {"results": [{"attribute": "vZJ274btJrr6hKE6", "value": 0.39765024414919636}, {"attribute": "nMxIYw4vunzw0EfN", "value": 0.22773535325038663}, {"attribute": "tHgkYqZZXkcUdi7I", "value": 0.6128847495931451}], "user_id": "nKiGLupNM6DkfToH"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8qbAVP0zW74tzJR7"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "eEFO1Ka0kD4k3YDH", "client_version": "eFufg8mOQ4wti9QH", "deployment": "dI0NmjaobvsGO3Ac", "error_code": 51, "error_message": "cHmGIYZ83OEfvox2", "game_mode": "ZvrcjEFN3h4dCGTL", "is_mock": "0FPR8UQ2wepdUzMe", "joinable": true, "match_id": "Ho1sT0fx8dOQLHvc", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 37, "party_attributes": {"v7FzrilbyU4CqOkg": {}, "lhdWDwrLURWECXvJ": {}, "LTnjWVJ6eLKw3ouR": {}}, "party_id": "hPCMHvyRrZjSPRl7", "party_members": [{"extra_attributes": {"IN5G5FFqj1dYdYNb": {}, "G0jaNBHsdW13H64v": {}, "6TLrvgT6X7LKgx62": {}}, "user_id": "mYvzMzg55XBiXpiA"}, {"extra_attributes": {"LqJwtihW6JP0mVrt": {}, "fiwJS2qkVloOm3bt": {}, "Hl1cebrP5jvfsfDY": {}}, "user_id": "ofZ0hWsHMyyH2NDT"}, {"extra_attributes": {"xl5xTj61lzuFPthy": {}, "BzwJPB8Dt82qO96B": {}, "sbEdvJXiEaMd3ZfZ": {}}, "user_id": "tWvxRqwk65mMadtL"}], "ticket_created_at": 77, "ticket_id": "Kebobzlbq00alyqx"}, {"first_ticket_created_at": 33, "party_attributes": {"9Pf9WpcpF8PDCTHE": {}, "uJzufeF0MWIAAwtu": {}, "1lrS8wLlCzzfQYeQ": {}}, "party_id": "R2zsiqpfFcx7MUBi", "party_members": [{"extra_attributes": {"tLTw2xsPPi4hkGwI": {}, "Cyqz0Zb2LdykGsK4": {}, "Ff666UH8TOOz4mQK": {}}, "user_id": "lutZXWdbnjk6c8t7"}, {"extra_attributes": {"viV3R7WaEnhOiLVN": {}, "EQdSLDOu9vbxtE9u": {}, "kq1iMjVH6pZUkr5x": {}}, "user_id": "Z5C0vEEslqEnLPSN"}, {"extra_attributes": {"LFXzzmwWBKJlz2n7": {}, "72LvAaAFZu7DwHUs": {}, "O49cKqEqmIcF0uLT": {}}, "user_id": "74q983vvbsjuuLUv"}], "ticket_created_at": 67, "ticket_id": "0GWpZqY6D4TeZIDz"}, {"first_ticket_created_at": 42, "party_attributes": {"6QuXnVUD2pwm8V3a": {}, "wryt9Cju4xcr6GO8": {}, "AAyThhCc3f1fOfgi": {}}, "party_id": "3XWD7W6CNBechzCB", "party_members": [{"extra_attributes": {"0ge9XocI5hrMgfW4": {}, "Lq6RVARtKL02GFGv": {}, "yDDKgc41ken9AvVU": {}}, "user_id": "lsCcisaV6RuRafxf"}, {"extra_attributes": {"P9B57mYhvza1HFe6": {}, "hELDWjSrYAjouAQJ": {}, "dKdHUnD9STUcTWOx": {}}, "user_id": "MnxCCUTyPJSpfEwP"}, {"extra_attributes": {"RsTbdXosOSJo5KtM": {}, "LtqpUTh2C7TuqEYv": {}, "umHAubMd48ir27DX": {}}, "user_id": "Klqq92giYXLjcL1p"}], "ticket_created_at": 98, "ticket_id": "cFzBlaa3t9BHdjd6"}]}, {"matching_parties": [{"first_ticket_created_at": 71, "party_attributes": {"vXWgDyl0kKsVf96L": {}, "mLOC0Jbtf0Q6EgLd": {}, "ePsqhXMRAn2abRFI": {}}, "party_id": "JWcILVvqIXdcDodB", "party_members": [{"extra_attributes": {"pnBEH2f4aXDuDoLe": {}, "3FDYdnXS7OFgcE1a": {}, "et7CysdSvzokJdIv": {}}, "user_id": "4F4Bxs2sfKqcTBda"}, {"extra_attributes": {"QXVcyUYLagBSr2hy": {}, "JkmNEbJ6vdvjg63k": {}, "HAkYG4cigz0yeuVc": {}}, "user_id": "QsAtVf6Km7UNOePV"}, {"extra_attributes": {"gdtrw2Nzr742X8o6": {}, "8ugod9y03clTLJWW": {}, "8fUYsszmwnhoXDxh": {}}, "user_id": "XZSUI3iOkNlIp7zI"}], "ticket_created_at": 43, "ticket_id": "JrplimAZIYySR6Q3"}, {"first_ticket_created_at": 66, "party_attributes": {"PVuGL4pch2JnU0oh": {}, "QyR8pSYlF1xjv6s8": {}, "W7D3NfUogQnU3X54": {}}, "party_id": "dL33zajbtr51F7ol", "party_members": [{"extra_attributes": {"5xgEo4DXfPrydZjk": {}, "KDSIQtxuDH9JTR02": {}, "8AbkAAbeuUFdUklp": {}}, "user_id": "UdUUjBBtJJ6Mt7Jo"}, {"extra_attributes": {"2OjQMNj11Un9TmVN": {}, "ntwwhr4wcofW3PQN": {}, "OTKNM6ifuZtPmrGw": {}}, "user_id": "TFV4vndG5eLrLmTf"}, {"extra_attributes": {"5ksXuKkcze4fTa78": {}, "wyIpI7VnVsjh962X": {}, "vtxWa3pryeG9AK7X": {}}, "user_id": "kM4L8aAoE9M6fU1N"}], "ticket_created_at": 55, "ticket_id": "7N2PUHmW5Yx7XMM2"}, {"first_ticket_created_at": 8, "party_attributes": {"sPzeCEPHDKU1DY9T": {}, "peMdcVd0yn3c5VCr": {}, "lujRKxcy0qVhCR8F": {}}, "party_id": "GofR7vb4vzFWWT7A", "party_members": [{"extra_attributes": {"cBepm5cVlo9nZyJS": {}, "AkHo8ms1BI5MNCto": {}, "c0Ugre9BRerzvQME": {}}, "user_id": "4T3l5iDki7rUjMMA"}, {"extra_attributes": {"hgENTvvwWzvfHmXM": {}, "TX3anktKAeP0hMSv": {}, "rWWBlLOM96u6XFd3": {}}, "user_id": "adsstCnOGZ7ojtAK"}, {"extra_attributes": {"BEvYYc8JPe6sjAYq": {}, "jTWlmvtsSeOtMS6j": {}, "P7jAqn3rO3QLyVOr": {}}, "user_id": "XZghW08cm7t6Frx6"}], "ticket_created_at": 29, "ticket_id": "ig5HMFmxU4FmBYm9"}]}, {"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"zsMKdHw8qlW5WIL6": {}, "iQO1E6yWbAc0Z48o": {}, "4mxoA5zD75DEwXn9": {}}, "party_id": "6wteT0mPvvkcYBRJ", "party_members": [{"extra_attributes": {"KpWto2Dr0RDlnd5r": {}, "TjXZ4iPhyqiRsPT6": {}, "BqpRulXHnjxdjMLV": {}}, "user_id": "wVOa7lhW6Xx4JE5I"}, {"extra_attributes": {"MmpviqwW3nnMomsL": {}, "AI3SA13SjMnF6vYH": {}, "QFo7g1aAa4jZUxAT": {}}, "user_id": "HOiwrQzTGUO6s4NG"}, {"extra_attributes": {"c2nYbgY86hqJ7f46": {}, "kHxqkMoaDlGAnhHR": {}, "ZkVRTilxHmZdqqKS": {}}, "user_id": "iJyQ64RWk5MWG1jf"}], "ticket_created_at": 22, "ticket_id": "s1ltpHLEP8Trb3kE"}, {"first_ticket_created_at": 76, "party_attributes": {"LxcixJqX1hTNPZsm": {}, "g8lKWyohBSDXQ4CB": {}, "pdynFeJWtNKDCJLY": {}}, "party_id": "X0YnFOrYR3F1PmpZ", "party_members": [{"extra_attributes": {"vR2Wujx2CptPr3mI": {}, "FyPKpa5Z9aAg7jxp": {}, "2R6YqLHHdOndujtw": {}}, "user_id": "uTwNYqcmAb3f9Ype"}, {"extra_attributes": {"1THsZIx1UJK7NoEJ": {}, "RYDVYJiV8lJI4UjE": {}, "TnYRCnM6qE8OvWVn": {}}, "user_id": "pXGMAiILnDJlh9T5"}, {"extra_attributes": {"XgS7Ia1CZB8HRuyP": {}, "A65QIqm5YVr8qDSA": {}, "RlvJcHzg4tvdcUip": {}}, "user_id": "zZCqOzAFzc35z6hO"}], "ticket_created_at": 84, "ticket_id": "8XjVBlufWCbOTG2d"}, {"first_ticket_created_at": 9, "party_attributes": {"fvasXCbquvb4AQ4d": {}, "jTIRPZSW8KMIRW6W": {}, "8dZpoBYWOFhE4q03": {}}, "party_id": "BNcyMsjva5NWCpaX", "party_members": [{"extra_attributes": {"dLgJTeX0rYaMecNA": {}, "YUtbJBUJgPNL2BLN": {}, "Df94br94gPc75t3P": {}}, "user_id": "52iUfAc2NnwUe2uV"}, {"extra_attributes": {"hqev3dOogcDJBbfE": {}, "xCLsDR271pR1Nodo": {}, "Ivgva3KICenZFTIZ": {}}, "user_id": "PVdlTndJIWg3D98B"}, {"extra_attributes": {"OJDhwUHEQrXA2GeN": {}, "1iGIQWMw70IIQgrb": {}, "campWgZs1bMD2wEs": {}}, "user_id": "dcSu4f9bKxmHVc2n"}], "ticket_created_at": 10, "ticket_id": "cSlxueb5M1bd9EyG"}]}], "namespace": "FNwbl6AJp6zUCnyS", "party_attributes": {"1VKhp4l7WRnIARli": {}, "Z8aHidHkBqZNoayy": {}, "onHEHyPSRXBxC4Kp": {}}, "party_id": "2HYgvQLGhbqdvcej", "queued_at": 82, "region": "rclJVWpfnYwzkF4h", "server_name": "zWenSzhFpFhbfisf", "status": "SiPyp5R93cgsozqh", "ticket_id": "2n9DHpom23Ju5Epd", "ticket_ids": ["zgbe7emjZBJM8Kkq", "sO2KCgqvnAJMczS5", "UcFSLD0WX9J4HR6s"], "updated_at": "1985-04-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "cHW4gpVEvKSFy1sc"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'LGnBPiqzTCK9Ic4I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 51, "userID": "VLgKmfPYPTVWdvX1", "weight": 0.060487946143845006}' \
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
    --matchIDs 'P47VkbKvRJ8PyIGj' \
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
    --strategy 'ZIP4doZuVIW8yw1L' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'yDWkJmoDHLxYovT4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'y1fHalCUiFiNrvIE' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "m2Eos61ZUQJHeGO3", "description": "ke5MLGolYZTgDPLm", "findMatchTimeoutSeconds": 20, "joinable": false, "max_delay_ms": 5, "region_expansion_range_ms": 16, "region_expansion_rate_ms": 81, "region_latency_initial_range_ms": 81, "region_latency_max_ms": 79, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 61, "min": 73, "name": "Q4LOXp0RDmUQdQRT"}, {"max": 19, "min": 82, "name": "Ap5la9MEHDvU9A2m"}, {"max": 28, "min": 73, "name": "yuPy8C12qEsuNOPS"}], [{"max": 42, "min": 47, "name": "h6D69gxrkhgFlHil"}, {"max": 3, "min": 42, "name": "XyTDaU3wIrX0KHgn"}, {"max": 61, "min": 68, "name": "6cgiuQVo4czHtZIl"}], [{"max": 4, "min": 64, "name": "NfXpBUG4zZ5ZClpf"}, {"max": 7, "min": 74, "name": "pvT1veXCGJ3608Mr"}, {"max": 72, "min": 79, "name": "txEskDoCkeXo2Zr1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 6}, "maxNumber": 17, "minNumber": 57, "playerMaxNumber": 47, "playerMinNumber": 63}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 84, "name": "8QJStUr7q5ZiJheY"}, {"max": 75, "min": 38, "name": "FbYVs79wPKpVXmgf"}, {"max": 10, "min": 31, "name": "pUe1YOgt0yq8d2Xe"}], [{"max": 87, "min": 49, "name": "DjI6mGKExGa4ssWB"}, {"max": 70, "min": 86, "name": "4SWxRbIvLddM8c4v"}, {"max": 3, "min": 4, "name": "o2OL8zc0R4NPrrRL"}], [{"max": 15, "min": 44, "name": "BwLcid5dA1bCxil5"}, {"max": 35, "min": 45, "name": "qBF4cIgry5Te0flu"}, {"max": 65, "min": 41, "name": "1TpQdqu0PDhxa9L2"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 76}, "duration": 70, "max_number": 100, "min_number": 29, "player_max_number": 22, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 54, "min": 34, "name": "EoEAPqZEnz8mI9Eq"}, {"max": 64, "min": 75, "name": "DSZbfyRvBa2B3I0R"}, {"max": 97, "min": 68, "name": "CetJuZRL4tevPbj8"}], [{"max": 6, "min": 40, "name": "zof0tWZX8woR8VfE"}, {"max": 28, "min": 2, "name": "oPhHZ5gk20W1wVpH"}, {"max": 66, "min": 29, "name": "dxciVDzcmovIgZZB"}], [{"max": 49, "min": 18, "name": "l8Ojmn3a0simmyly"}, {"max": 95, "min": 86, "name": "hzHEISS6YkkE2iNQ"}, {"max": 15, "min": 22, "name": "h3dRh1cineMHt0Qq"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 99}, "duration": 20, "max_number": 25, "min_number": 66, "player_max_number": 87, "player_min_number": 25}, {"combination": {"alliances": [[{"max": 80, "min": 71, "name": "wNu8PfJ4JdmJWFsb"}, {"max": 80, "min": 17, "name": "Ghzjwnwg655LSgzN"}, {"max": 9, "min": 19, "name": "E5G0VrOG35qnuXC2"}], [{"max": 1, "min": 98, "name": "TcC9KrBLQMo5BWT3"}, {"max": 61, "min": 60, "name": "Cxe194q2XtGehhjr"}, {"max": 6, "min": 8, "name": "e7Jjnvvb69Z0TQsc"}], [{"max": 9, "min": 61, "name": "qVuFIeKdeBocWV16"}, {"max": 19, "min": 57, "name": "6rZGIe7XLl4dnBER"}, {"max": 79, "min": 62, "name": "fmAni1dsg0PRfM2z"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 27}, "duration": 3, "max_number": 18, "min_number": 41, "player_max_number": 29, "player_min_number": 62}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 92, "flex_flat_step_range": 11, "flex_immunity_count": 75, "flex_range_max": 88, "flex_rate_ms": 19, "flex_step_max": 53, "force_authority_match": true, "initial_step_range": 22, "mmr_max": 24, "mmr_mean": 24, "mmr_min": 81, "mmr_std_dev": 27, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "GYzdRZhks01DKd3Z", "criteria": "hQEw6YnbD1VsUZzz", "duration": 15, "reference": 0.48578933104299404}, {"attribute": "gu1yBZPlTLXsYSGd", "criteria": "Sh7aEBfBCEqcPvs4", "duration": 2, "reference": 0.5913781747791942}, {"attribute": "0KLHJG0qG58riI9a", "criteria": "QJFSG54hkPvStuU5", "duration": 3, "reference": 0.17365978504533608}], "match_options": {"options": [{"name": "fWEBNPCumPBU6xVD", "type": "h6NjhZuuaTyhZIzl"}, {"name": "ZJkcmSlaKGpYjA1J", "type": "CuKSvsSuWQGUJz8V"}, {"name": "DfLQf0o0ZSOp2L13", "type": "Q8FSxxcMAvGUt8cv"}]}, "matchingRules": [{"attribute": "aTNO0R6wgmzAQaJe", "criteria": "K8DGMnzNNxO9s8Iw", "reference": 0.42479345171849203}, {"attribute": "qgOjSW1Jve8hcgNp", "criteria": "NC4BxVogCt0C260o", "reference": 0.605304608481011}, {"attribute": "eeGoOBnPKuicgj2d", "criteria": "PDklBlZkP8qZZyOy", "reference": 0.7714009745677259}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 87, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'R2IPsqeDZxz6jXg3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'qti6ZAEdPPmNOY2g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName '4WVnQ0LRGXmaDWOt' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 30}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'URInllHX82T1DC2Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '4uPrjmTkhSuiKjgL' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "TemQ7y7IATQHH8jU", "count": 85, "mmrMax": 0.004184935652687294, "mmrMean": 0.45539334657374053, "mmrMin": 0.9771855479089029, "mmrStdDev": 0.1281105575015008}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'I6bVZrCFvu82OCMh' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 65, "party_attributes": {"fsGPhXus0f3yO9e2": {}, "BaCWij7GetoSVdHr": {}, "5EhlAR9vssvoI0RI": {}}, "party_id": "43G9GK7KmR72fat2", "party_members": [{"extra_attributes": {"84Da2UAOKDuEu1pO": {}, "CsmzB53X3jqHZ24D": {}, "RZARkjRTp1ho9CtY": {}}, "user_id": "y176AkYokz30JI4x"}, {"extra_attributes": {"6NKwQbkD924azyo8": {}, "uheNbsy3CA7HgkYe": {}, "H6sTE5sIZpt628rh": {}}, "user_id": "52swfpXhDqIG2NYi"}, {"extra_attributes": {"20KGckDIAZzru63h": {}, "icSIRykq5p6pj8Ub": {}, "eYKO4rubilx2wner": {}}, "user_id": "2rXmABP0PxyRoumw"}], "ticket_created_at": 37, "ticket_id": "KBGGGQcFIHfOCcwb"}, {"first_ticket_created_at": 51, "party_attributes": {"R7iRlkOlvflQ4u8i": {}, "crC7ISeJMN3mr57x": {}, "dglud4y4qOldVOOm": {}}, "party_id": "WOZlSX5hifc48j66", "party_members": [{"extra_attributes": {"CJBF1NbxTINfvhxA": {}, "Zqc77vxjFOmSHT2B": {}, "UDeldjncLEfiEU9r": {}}, "user_id": "EL35LHxv1rOisVhO"}, {"extra_attributes": {"2XYX9oP9IrmNDKaM": {}, "RJep8AmEhikBfc03": {}, "vsNEMzDUblnoLdMf": {}}, "user_id": "5gAqQ0b3uy8NDra5"}, {"extra_attributes": {"oSjvMbKbuvpNv4M1": {}, "m8BjZ7f6PV7zQL2l": {}, "sY0YyJpwIJRvueUf": {}}, "user_id": "ctN6Lq0Ovfs1ODCg"}], "ticket_created_at": 4, "ticket_id": "uIZt1R0awzJ65XGE"}, {"first_ticket_created_at": 39, "party_attributes": {"j42n3GGAKLOrxLcR": {}, "EsTbLpMpRHycW5Uh": {}, "p51jCHHkKZqmw1aj": {}}, "party_id": "DUADmXinSf87ctHX", "party_members": [{"extra_attributes": {"zeK7yosI6D8nnMUF": {}, "bAawlfWbqf92NUD1": {}, "vrcesrpus5ZavAiI": {}}, "user_id": "GIn7tygdD5sFnn0R"}, {"extra_attributes": {"30rZyGl2kJZdBK0b": {}, "W92XnfNiiz0XZY0b": {}, "SRXkAXWRKD2tmM8r": {}}, "user_id": "PCe8vshW8JzoSffe"}, {"extra_attributes": {"wQTmjvGZAs1fnBpS": {}, "7CdEX7RVhoWJGtGa": {}, "RMI1lYuHE8nL25sU": {}}, "user_id": "5CDku8tFa9WBnRID"}], "ticket_created_at": 37, "ticket_id": "x1YYhCNPocoKVsmr"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'QtNx7puHH6O8ls10' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 86}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'qI29qAXDdujqVaVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '4T3quR6CvZwCrYie' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'kN7kipsbjrctDpG1' \
    --matchID 'MKhXu32AluGxx9xR' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["qgykO9ayu0nbLifd", "70B1Djx3G8RRFQR9", "EtWOgGjFDCsOXs93"], "party_id": "yajcacbI1HiwIfpX", "user_id": "EiMlkQJJdbboQE23"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'lGm11UnsWSKMMoBu' \
    --matchID 'J8tghpKujmci33La' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'cDbDwJWvOmrFXruk' \
    --matchID 'tSpsKJvXqbOICdiR' \
    --namespace $AB_NAMESPACE \
    --userID 'j0bTRCeVrMTxm0Yx' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'YYxIHZUT3AAMjxuI' \
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
    --channelName '25i6RYjHrCYDvK01' \
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