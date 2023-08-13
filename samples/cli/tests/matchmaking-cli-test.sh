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
    --limit '12' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "z301tfPazGh0efM4", "description": "iizENY4rjMijnge6", "find_match_timeout_seconds": 33, "game_mode": "Iq8N54dWhZP9ZhP1", "joinable": false, "max_delay_ms": 16, "region_expansion_range_ms": 37, "region_expansion_rate_ms": 17, "region_latency_initial_range_ms": 60, "region_latency_max_ms": 19, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 96, "min": 90, "name": "bmN0VdVGCCyCEYWv"}, {"max": 64, "min": 19, "name": "ufW8KFZBVlsb8iuL"}, {"max": 68, "min": 20, "name": "HmplDfD9wDHCRq3A"}], [{"max": 86, "min": 10, "name": "Kr1QhdAyQo3XwKF4"}, {"max": 87, "min": 18, "name": "9Wd5WyPmNE9St6TK"}, {"max": 86, "min": 93, "name": "Gr3MWbe9mHSfDvus"}], [{"max": 62, "min": 28, "name": "H9b66Pa2os3pCMiC"}, {"max": 70, "min": 65, "name": "fY1CEBwTCSBFGXYJ"}, {"max": 59, "min": 82, "name": "wbhAdZg8otWlFkY1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 90}, "max_number": 48, "min_number": 80, "player_max_number": 83, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 56, "min": 94, "name": "vTC49l8JaD7BZhYp"}, {"max": 61, "min": 0, "name": "ZD98W104TL4k3krv"}, {"max": 70, "min": 4, "name": "IbKFcTbXjwl9jQXj"}], [{"max": 91, "min": 74, "name": "khGI2PRKMaJnd2Xp"}, {"max": 40, "min": 23, "name": "anoWSAoDf5qKjp61"}, {"max": 21, "min": 72, "name": "LNcf4irNP4WiwGtb"}], [{"max": 66, "min": 4, "name": "NY7dTc9sAUbeQkzc"}, {"max": 58, "min": 74, "name": "6oclwYdiR06FbtUN"}, {"max": 57, "min": 87, "name": "olrxxf7X7dXkmCye"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 100}, "duration": 10, "max_number": 99, "min_number": 80, "player_max_number": 94, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 1, "min": 94, "name": "j0Ip3Re29FNRihKg"}, {"max": 46, "min": 14, "name": "dwv5xwBZv0KMSbpa"}, {"max": 90, "min": 21, "name": "DTKDkIBrj0DjF4gc"}], [{"max": 1, "min": 39, "name": "uUFRPJBkhqpfIGse"}, {"max": 68, "min": 65, "name": "8ie0pOi3Ystl2MdO"}, {"max": 36, "min": 20, "name": "WjYOqAmaBlpgpH8b"}], [{"max": 96, "min": 2, "name": "51bg7hfGjyDk5mZV"}, {"max": 43, "min": 48, "name": "fJXTik13PNVDh7WC"}, {"max": 56, "min": 84, "name": "eQCUumMEcCiEMWEf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 4}, "duration": 82, "max_number": 22, "min_number": 54, "player_max_number": 47, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 62, "min": 85, "name": "xrc7TyXaEL8uNry0"}, {"max": 20, "min": 78, "name": "LMR9Ot7LcXpfHqhM"}, {"max": 21, "min": 91, "name": "czhvTSpYl9SnzehQ"}], [{"max": 43, "min": 73, "name": "QnF8nymKzyEFNCva"}, {"max": 35, "min": 52, "name": "5lPBbO1Vhp5YMsBU"}, {"max": 66, "min": 80, "name": "cuPv8aj4tYpehVJU"}], [{"max": 1, "min": 82, "name": "BKLjpRuAl1bmQySI"}, {"max": 66, "min": 93, "name": "cfNSAHkf1XHygzjx"}, {"max": 32, "min": 38, "name": "J4PpzGyZkt4JbZxt"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 89}, "duration": 78, "max_number": 45, "min_number": 64, "player_max_number": 19, "player_min_number": 16}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 98, "flex_flat_step_range": 3, "flex_immunity_count": 95, "flex_range_max": 2, "flex_rate_ms": 25, "flex_step_max": 28, "force_authority_match": false, "initial_step_range": 4, "mmr_max": 44, "mmr_mean": 76, "mmr_min": 60, "mmr_std_dev": 78, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "45da4BWo1rTFi6WC", "criteria": "XcM6QusVsVc3bZUv", "duration": 11, "reference": 0.2722749995589969}, {"attribute": "P31moNrQOZGoL0Fq", "criteria": "BfpWOh1TXTPH9JzX", "duration": 19, "reference": 0.49462994494525214}, {"attribute": "OpyKKijGiphNtYVa", "criteria": "teB6oT5R1AmjMmqR", "duration": 65, "reference": 0.9934904598006776}], "match_options": {"options": [{"name": "uzpsWpqWtJYDHyz7", "type": "kTFpPuxkX27Aqrwm"}, {"name": "hUiT2Sr5TVOj9SoN", "type": "eri4l3vHnMEbTMia"}, {"name": "M5cTLOaXAdwJQfhr", "type": "yzYTNNfkV2DQyM4g"}]}, "matching_rule": [{"attribute": "MOl2fa0dhRcz9qOs", "criteria": "lRFYnnTaAwl9X2Bx", "reference": 0.39387296496379864}, {"attribute": "YYf8nCnlKQW3YcOS", "criteria": "67GhdXOaPiMCjXE0", "reference": 0.5163339608780888}, {"attribute": "7wtTcCxWsvpgi0tH", "criteria": "3yqTkSAGqpNmUxI4", "reference": 0.6481698247654988}], "rebalance_enable": true, "sub_game_modes": {"ZrjUkx6ezuxOYpGK": {"alliance": {"combination": {"alliances": [[{"max": 26, "min": 17, "name": "PZ83VPFobXC4VqMg"}, {"max": 36, "min": 91, "name": "W2C0ogmaaeTlzxlL"}, {"max": 14, "min": 41, "name": "Rl2Q9sBnyjS0OrOv"}], [{"max": 5, "min": 13, "name": "b0lcDynerzVoew4H"}, {"max": 18, "min": 19, "name": "uS4gaX9wqLRJ2Pbd"}, {"max": 84, "min": 85, "name": "fLRa0fDSioYvZl5b"}], [{"max": 38, "min": 22, "name": "he6YYbnYBesf4gbM"}, {"max": 94, "min": 13, "name": "4QGGNVG0c9hYiEPR"}, {"max": 36, "min": 46, "name": "qfDjDrHV6hdIaUN0"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 4}, "max_number": 47, "min_number": 28, "player_max_number": 34, "player_min_number": 96}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 37, "min": 23, "name": "RZDI1WlRF3uuC9Nz"}, {"max": 47, "min": 26, "name": "bMvObj4d7qvcdovf"}, {"max": 31, "min": 19, "name": "Rh08gPwU7Z35CN51"}], [{"max": 82, "min": 30, "name": "yFPxigx7zwIZ4zqh"}, {"max": 9, "min": 10, "name": "LC03etsXMQD3XGjU"}, {"max": 24, "min": 64, "name": "a5tRLAUNbE5PxZz0"}], [{"max": 6, "min": 78, "name": "V1QD653kU89lzJEl"}, {"max": 30, "min": 81, "name": "8R0B45JGRjP9VHy0"}, {"max": 84, "min": 91, "name": "7YlP46Ia4A2BCoMo"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 61}, "duration": 26, "max_number": 73, "min_number": 4, "player_max_number": 51, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 96, "min": 25, "name": "5KqqUGpaGN3or5FN"}, {"max": 52, "min": 45, "name": "wtIBugbEsHK30Kdq"}, {"max": 97, "min": 58, "name": "Fcx97qbAUuWqZS6z"}], [{"max": 89, "min": 28, "name": "Jojc7lbqiDffLASE"}, {"max": 36, "min": 82, "name": "SCcMVL8j4oLj6Evw"}, {"max": 35, "min": 65, "name": "3y7WHI4iwSDOnzEZ"}], [{"max": 92, "min": 66, "name": "x5Dx7MREbFZ9bqc7"}, {"max": 94, "min": 12, "name": "Hl4WdLv3S0BURam4"}, {"max": 19, "min": 58, "name": "hPCIVGTPpsfVzoj2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 24}, "duration": 96, "max_number": 19, "min_number": 64, "player_max_number": 88, "player_min_number": 26}, {"combination": {"alliances": [[{"max": 57, "min": 32, "name": "r6HwUXRxSNwgBt9Y"}, {"max": 51, "min": 20, "name": "7z634wK4PHJaU4bl"}, {"max": 56, "min": 23, "name": "0iUrMRfYcHKYsghX"}], [{"max": 88, "min": 69, "name": "9Hqggvfq96GXCF5U"}, {"max": 45, "min": 14, "name": "Idbg1vZkpCvZlkqu"}, {"max": 54, "min": 91, "name": "0MMvKlk6zph1ijxm"}], [{"max": 31, "min": 1, "name": "9ILjNFTffsvneIaM"}, {"max": 36, "min": 64, "name": "sJj2LKw998drhG7C"}, {"max": 91, "min": 10, "name": "sS7NdLiCkMCazBrw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 81}, "duration": 6, "max_number": 89, "min_number": 61, "player_max_number": 31, "player_min_number": 100}], "name": "ft1sAEqgVPGCxN5u"}, "G9TbdXnNviO0hNpF": {"alliance": {"combination": {"alliances": [[{"max": 99, "min": 92, "name": "1auqn3GyJ8GMXbIT"}, {"max": 24, "min": 3, "name": "zO7QPK6VyBDlOOm0"}, {"max": 56, "min": 31, "name": "ywEe48O60uu8zIud"}], [{"max": 61, "min": 49, "name": "O7zn3pRhUlfwj6RZ"}, {"max": 81, "min": 6, "name": "pKLQHmEejIq9Uh9m"}, {"max": 84, "min": 34, "name": "ctIzMEXjwkwatKBT"}], [{"max": 84, "min": 95, "name": "XsuNczcmCaTdpeED"}, {"max": 85, "min": 70, "name": "qz6Pc2Cr8iCNZDiQ"}, {"max": 1, "min": 21, "name": "rFraaUh7pqR9bkDg"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 39}, "max_number": 18, "min_number": 75, "player_max_number": 7, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 14, "min": 39, "name": "Bnf06MmTAimhDMLd"}, {"max": 46, "min": 44, "name": "lnYTcJkLwxUK9kQF"}, {"max": 47, "min": 6, "name": "D9QtONAo391iC9K4"}], [{"max": 90, "min": 6, "name": "En5JkIIKg0rMzPuu"}, {"max": 46, "min": 3, "name": "SFfNS16gv9DPNL4D"}, {"max": 36, "min": 2, "name": "YS4YFWSVEv85FLO2"}], [{"max": 57, "min": 8, "name": "FEqELLQCtkyhyP0G"}, {"max": 31, "min": 99, "name": "IE0msFkvL2rgFgUt"}, {"max": 18, "min": 91, "name": "LHRD7T8eCWMJ34fp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 64}, "duration": 89, "max_number": 47, "min_number": 68, "player_max_number": 73, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 56, "min": 83, "name": "XTxvDfsfYa6GllG6"}, {"max": 83, "min": 66, "name": "KpcFsEYMD4u0gJHq"}, {"max": 32, "min": 47, "name": "cGAq7iDPRo7TaE8S"}], [{"max": 26, "min": 7, "name": "YHpXrPgtV3CMryqw"}, {"max": 62, "min": 7, "name": "f6wj87IsUFFeJzVV"}, {"max": 52, "min": 86, "name": "8PB43bAXs2lzuuP6"}], [{"max": 9, "min": 70, "name": "wwUPVbNL4iUlo4hQ"}, {"max": 93, "min": 82, "name": "zy2bbfi7SzOJIS2z"}, {"max": 43, "min": 71, "name": "a0z22h6PxBV4y3Ux"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 80}, "duration": 25, "max_number": 0, "min_number": 91, "player_max_number": 1, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 20, "min": 34, "name": "Ee4Z2qMKNf3VksJG"}, {"max": 55, "min": 21, "name": "Nvh2LG8vt6yTvaDM"}, {"max": 24, "min": 28, "name": "ZFSG7X8u9UbfJzM3"}], [{"max": 28, "min": 40, "name": "6KW5WWZzQSUz36pH"}, {"max": 18, "min": 46, "name": "rDK84Ue0DnZX7eXO"}, {"max": 50, "min": 49, "name": "Uua9QGYdhnhO6wMJ"}], [{"max": 18, "min": 84, "name": "tDiEeAuAN1jYQscn"}, {"max": 23, "min": 45, "name": "RKhPt1Vsaa6Ga4L8"}, {"max": 93, "min": 7, "name": "nVnN31mqHXltswFK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 37}, "duration": 59, "max_number": 68, "min_number": 14, "player_max_number": 40, "player_min_number": 36}], "name": "mwLaztQNh1GDkW1Z"}, "51PDI1wwoJumUpQb": {"alliance": {"combination": {"alliances": [[{"max": 80, "min": 14, "name": "C3raKdIlGrgD3fcM"}, {"max": 44, "min": 90, "name": "QKR4T4PIhtcKidQr"}, {"max": 1, "min": 56, "name": "l6KbshTK54kf1U0Y"}], [{"max": 2, "min": 14, "name": "sz2fmmh1YTH1DFaB"}, {"max": 12, "min": 94, "name": "eaVA9UnN45gruFZs"}, {"max": 40, "min": 51, "name": "UbmRXTSG5hhU4Iz9"}], [{"max": 43, "min": 48, "name": "smW7KUPmvPn3LCRP"}, {"max": 47, "min": 15, "name": "W2Fr9blSfBor9MIN"}, {"max": 31, "min": 99, "name": "tejBZFG0p6jAOAIF"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 6}, "max_number": 97, "min_number": 22, "player_max_number": 43, "player_min_number": 1}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 6, "min": 99, "name": "Q1VzN5JRott3ixpt"}, {"max": 69, "min": 96, "name": "gqZgme2zFzGSCD2U"}, {"max": 78, "min": 67, "name": "kudtlIhHa7slxuMI"}], [{"max": 1, "min": 44, "name": "972ykKTPhyAZQFQF"}, {"max": 30, "min": 71, "name": "ntsTNTaahlCOBizI"}, {"max": 98, "min": 25, "name": "0Vd5WxIbs8s3TbC3"}], [{"max": 98, "min": 95, "name": "YwSpKgUxqrd4juUc"}, {"max": 34, "min": 89, "name": "Rt6z8ft3XW689ja6"}, {"max": 31, "min": 28, "name": "mgbwcefv4A3qVCxl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 89}, "duration": 81, "max_number": 94, "min_number": 98, "player_max_number": 39, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 1, "min": 63, "name": "W6gT4bdOYKZAkaHb"}, {"max": 0, "min": 5, "name": "VMKlwTLWgNmfMOU2"}, {"max": 69, "min": 57, "name": "Hc4IhDU0j076zKcn"}], [{"max": 43, "min": 97, "name": "hzhXKRc3tEXz3zIc"}, {"max": 22, "min": 58, "name": "Ys10IMNbEsBr6Geg"}, {"max": 50, "min": 92, "name": "tKbNyO6ZawuWBWqt"}], [{"max": 68, "min": 45, "name": "QyilJWRPtCOHJ1kH"}, {"max": 72, "min": 4, "name": "DacSJXRiV5SQRW4H"}, {"max": 45, "min": 14, "name": "BjL39lY066Kby1H6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 47}, "duration": 41, "max_number": 84, "min_number": 65, "player_max_number": 99, "player_min_number": 98}, {"combination": {"alliances": [[{"max": 66, "min": 87, "name": "bJmmwmRV0XLTA4uw"}, {"max": 56, "min": 46, "name": "Jn6CZFPCEPqzzY9t"}, {"max": 50, "min": 84, "name": "anjsXKYXKecZNzzT"}], [{"max": 49, "min": 38, "name": "6usz31MycMVENYqs"}, {"max": 40, "min": 22, "name": "IUme7rjc5DPCMJCP"}, {"max": 75, "min": 2, "name": "lyKvmNxFxWR70wqh"}], [{"max": 63, "min": 58, "name": "lXcw3yw17PJ8hmdD"}, {"max": 57, "min": 69, "name": "vAra0bFgSGcPRfZn"}, {"max": 28, "min": 63, "name": "MuyPImcPo2Ffthug"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 25}, "duration": 0, "max_number": 21, "min_number": 2, "player_max_number": 24, "player_min_number": 80}], "name": "mjCkpGTwshG3iFWz"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 48, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'wstaKqfZw5ZrQDSs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'YB1J4GUVq6SMVjPx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "R2Bg1yohdNSPLdsi", "players": [{"results": [{"attribute": "WPBIwpMqcBvbGRnZ", "value": 0.804939087722779}, {"attribute": "TiJfPLmS1Q9xGFzt", "value": 0.8741592751934789}, {"attribute": "dEV8In3hWaeiqT4y", "value": 0.6124094357301523}], "user_id": "PfbHecARgHI5yiWI"}, {"results": [{"attribute": "3rpYM4J9Vn1wEcNB", "value": 0.7066467869144606}, {"attribute": "WE9ZsLcpz8mVKKmq", "value": 0.13988184661472147}, {"attribute": "Et5ad16ZmQkVIIta", "value": 0.013812221942877678}], "user_id": "u6X7AHfGLpPDlWGJ"}, {"results": [{"attribute": "rEIGPSjC6IVJDsQ6", "value": 0.07988402554419194}, {"attribute": "sR9zLEQB2Jxj2S2x", "value": 0.836884313472261}, {"attribute": "grskJzH8oqznA7Ep", "value": 0.23789537892775336}], "user_id": "kAYpm4pa8yg76W19"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "YEY9rChLOO1oDLml"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "NLYDsErWU79TbgiT", "client_version": "ON7J4fbREzSYrxcH", "deployment": "h4JJAUiF3VdIl0cr", "error_code": 78, "error_message": "OnXBUfjBDumCD2FC", "game_mode": "e2zFguAXXzVezmS4", "is_mock": "sG59qiGTC7lHvzPg", "joinable": false, "match_id": "ERAxlcnvSRcHz0wj", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"7jFp3dCoDuKg7udm": {}, "cnMZBEnBOmKplE9c": {}, "puYRl4E78hQ2FSZh": {}}, "party_id": "NcbL8VmihDwUHBvc", "party_members": [{"extra_attributes": {"iJpTbXpP3Tl8I6zc": {}, "71rmoSN34schjSDC": {}, "X8sfXN6f8DJl9iiA": {}}, "user_id": "ewzHdjMoxKjd1HQ6"}, {"extra_attributes": {"k3xDyUH7fm2nM1GI": {}, "ligJK8qS4Ujz3AXr": {}, "r1rrL5Qe3Gmm2v3V": {}}, "user_id": "qwKxSwndlmVmaYbF"}, {"extra_attributes": {"rEmris2zGYS3kuCZ": {}, "SUIT4Ijc0xjx8vwG": {}, "iTONU9mMoFcLrwZS": {}}, "user_id": "tiPv0QTlAV9rkpAe"}], "ticket_created_at": 67, "ticket_id": "DhjTQoVQ3IY25IdT"}, {"first_ticket_created_at": 71, "party_attributes": {"5Pwtts4RMzcF5b9K": {}, "k24ICpfsVqmr8klS": {}, "NOnPvJGPQtiI6cHt": {}}, "party_id": "68XsxpMC1rPaqDrM", "party_members": [{"extra_attributes": {"xGdAWw3bdLCgEi86": {}, "JZEq1L1KgMBTAhTC": {}, "8mMZ1KGYjKAVleZx": {}}, "user_id": "xSV4kVKZrXu29x9z"}, {"extra_attributes": {"tMkXzbIga1LQsxd2": {}, "273iwxb0FVDrDKTb": {}, "isyRUHJx8Z7cOBaN": {}}, "user_id": "dM1qKEuUplq49xaq"}, {"extra_attributes": {"vulOfptn7yWh5igC": {}, "NlZMzmefAwbi6ew2": {}, "Adkxk5ZrddD7sQ9P": {}}, "user_id": "E3k1MRxWkoVqSTiW"}], "ticket_created_at": 92, "ticket_id": "iND1YfpnBhxnMbfe"}, {"first_ticket_created_at": 10, "party_attributes": {"cHsqTlgR9cNCFvld": {}, "HulTAJF7nmiRPZkK": {}, "A6RHMjq1uGXnpy3P": {}}, "party_id": "2R3zKpDkxOBuwphC", "party_members": [{"extra_attributes": {"DVE9pdccgSNkxEEq": {}, "upYoM5UlZVmq8ZTk": {}, "IzsJqgw21ueGS2e9": {}}, "user_id": "VQHytefu3PAEySSN"}, {"extra_attributes": {"yUrAa3VyaQ8q8sqI": {}, "qd2hdLJDGbPinDz9": {}, "NH8IATCpVznShvsf": {}}, "user_id": "mTEp3GkykYDFsbOw"}, {"extra_attributes": {"Y97LA0KIEQLAcn2X": {}, "76hui5bz5Z0g5GF4": {}, "xyMwBzMZP34261ZD": {}}, "user_id": "oaClQOFFFcnBCRuG"}], "ticket_created_at": 58, "ticket_id": "d2KdvPRnqC6Wkzgh"}]}, {"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"qQTcZ3dTMCuzcRuI": {}, "mFt3UgCfxNLMzTCb": {}, "Ui5ByTjb9GoBt7nE": {}}, "party_id": "FWtJNFL0Vusv9jpg", "party_members": [{"extra_attributes": {"wG2Worr2bQtD3I8n": {}, "KB9aoKkKpbJgEJfk": {}, "je43X2eAxPA2h7x5": {}}, "user_id": "sdQtm6qTpCUFfuMk"}, {"extra_attributes": {"qJRuivgVQzpwMCu1": {}, "hNLhAoHcV16ZleNd": {}, "DRd39O7gMoYretgE": {}}, "user_id": "cB8guSbk3wx5RPjP"}, {"extra_attributes": {"aeo2NzsRcmHxtPiG": {}, "mzGJERMBNjyY0Fdz": {}, "mIEWfs41y0elc12T": {}}, "user_id": "MBAY9jIExQOR2UDc"}], "ticket_created_at": 27, "ticket_id": "KCwIF6CG0CPxWOMt"}, {"first_ticket_created_at": 65, "party_attributes": {"CZfPxgt1HQZb6oQE": {}, "Dw2GOFaWEifGGMSt": {}, "Idtw2ELYC2lKb8Ua": {}}, "party_id": "9FREGzbTILpZUU86", "party_members": [{"extra_attributes": {"0vLE4bERjMk2rPxE": {}, "x1vytsZilqEeV6Ud": {}, "w260S6um3TIstm6x": {}}, "user_id": "v1VpE0zLbQq7MuKK"}, {"extra_attributes": {"fPDQ0PtvA7CiACdk": {}, "8wFHRRx8EcroyYIi": {}, "87zJ57gAXlAgFa7P": {}}, "user_id": "H5SO9hUgSBMh7BZE"}, {"extra_attributes": {"PcayNXFlqktRRq6L": {}, "zCbfzBisL90llRG0": {}, "BiNEvMiaE5uhoYJ9": {}}, "user_id": "RX0VJo1y0gwzStFD"}], "ticket_created_at": 48, "ticket_id": "VILyyQ7sraWAWpJH"}, {"first_ticket_created_at": 65, "party_attributes": {"9tuEQ0DBOGAp9TvP": {}, "hORrhBonLGaKr87u": {}, "mOwxtoZA8MTYD0At": {}}, "party_id": "3BQWCjshTyLH1olz", "party_members": [{"extra_attributes": {"d7RQ9rBlrMKJxRIK": {}, "vfNo1y0YF97rKKBM": {}, "PSrsTnSrmVsVmqrr": {}}, "user_id": "tToSDuFpebYoUYwg"}, {"extra_attributes": {"Ys9ZjZvtvKBEyC59": {}, "hipyyGix3GxSIwgb": {}, "zb1y7DhQggIo7KVQ": {}}, "user_id": "cGp17EPoRK5yGdgO"}, {"extra_attributes": {"kFCvmZM4vYq5ZhW7": {}, "UC5ybgIsLEtnwPUu": {}, "4eRCFQjygAHspNEI": {}}, "user_id": "zYWdGN1qkugEIeLH"}], "ticket_created_at": 87, "ticket_id": "sW5078B1MOoWQ2XK"}]}, {"matching_parties": [{"first_ticket_created_at": 88, "party_attributes": {"iqCSrleWVN8u2RWS": {}, "tVl9N8TWcBwAyf0M": {}, "UzQ3OqNMII6GNpJ8": {}}, "party_id": "J7cD49e4AXgYX21l", "party_members": [{"extra_attributes": {"bnyGBcq3MJ8XxeO6": {}, "gxKN3xTbzxCUrcNP": {}, "UqRdK7wI9NFFam5y": {}}, "user_id": "1a3siXRgFnxEmrRX"}, {"extra_attributes": {"OjHnsZti3jV5dnGD": {}, "VYCcIwrzmirAq98j": {}, "9G2VJOrzT4GODiFY": {}}, "user_id": "4ieuaVeDlcU9Nf5t"}, {"extra_attributes": {"Yw0TVfD9GiAwBGez": {}, "chxtZpbvE2KjIUX8": {}, "4k5poav2r5lo6ZeW": {}}, "user_id": "7ahw8MRhGYwDpudf"}], "ticket_created_at": 37, "ticket_id": "Jll0sUIGUc2e9WSF"}, {"first_ticket_created_at": 12, "party_attributes": {"LythtyMVKHUkM8E6": {}, "EBsAUPP0Wc0GKN11": {}, "EexhWOUN0wcpr69l": {}}, "party_id": "6DTd5gYHlZ3AHAn2", "party_members": [{"extra_attributes": {"XWfeJi64eaqp1Dyl": {}, "ANDUzDDl1iqeyHFL": {}, "kRChzF3KMi4q3nVR": {}}, "user_id": "nDQIJLc612d8HGiK"}, {"extra_attributes": {"qPlOXsAhoCXkx8ea": {}, "j5dZBx4hibGlzEvJ": {}, "nXsSvoVwqCMWHUBO": {}}, "user_id": "osSASvoRfZalRmz5"}, {"extra_attributes": {"bZ3JXRyys103Wa3X": {}, "86iIZnEOobeQjmBq": {}, "CapTzJmAjLFXM61R": {}}, "user_id": "zBwKZG2LPuBBVmOV"}], "ticket_created_at": 37, "ticket_id": "rmeryDvKQHUulQfE"}, {"first_ticket_created_at": 45, "party_attributes": {"BZ7qSpmGOLg5WSKo": {}, "83G9Tg4dvD4o49X9": {}, "UTcOygIFJytyJIzk": {}}, "party_id": "haxGkHPqxM11yulM", "party_members": [{"extra_attributes": {"TS8yxCJZqwEyU46k": {}, "lwdJfAm2FURo4vJY": {}, "S6UtBRpAAyXTymJG": {}}, "user_id": "Xv53fkEmUyza2wDH"}, {"extra_attributes": {"vd9o59OnVlDeW2Cs": {}, "c5IXU9NwMZSEX3gC": {}, "xEYebnOuppfCVkMG": {}}, "user_id": "SButYPd5Ur7Wvb5y"}, {"extra_attributes": {"4Kg9u15Q9DNbMMOr": {}, "a8wRQWlwGb0qfcy2": {}, "d559iFchtOGv74G0": {}}, "user_id": "we6PWtHhxIEUJtX1"}], "ticket_created_at": 93, "ticket_id": "GYCWxOBXm3kHw3cN"}]}], "namespace": "nW3XplTky3PD3bOJ", "party_attributes": {"Ls3sQCUOeCdJRpA3": {}, "fR15l2Ka6f91EMrc": {}, "w6FdelDHqAkNm7JH": {}}, "party_id": "7zih5AN1efZG7Mzn", "queued_at": 30, "region": "JU6fjHKL7IE8E5my", "server_name": "mRFQD2yHBTu33pSK", "status": "t6L9FJV2kld2pSM7", "ticket_id": "zQjrA3CT9DIA8H7v", "updated_at": "1999-01-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "1H0GTE5UpXppRdoH"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'wO7QZycxthBOWt2K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 73, "userID": "cwkCzQyhWgNoF3Q3", "weight": 0.7179461927411762}' \
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
    --matchIDs '6M4nMJaRxRm9OCsX' \
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
    --strategy '2tRc3kQ83RsyYIyG' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '5QS7JYpq2aH3lDll' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'pluVPcLbyEMiG8or' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "gy3oehCTvlmRka67", "description": "ncJRtqqaHM7BSBJu", "findMatchTimeoutSeconds": 1, "joinable": false, "max_delay_ms": 77, "region_expansion_range_ms": 23, "region_expansion_rate_ms": 9, "region_latency_initial_range_ms": 63, "region_latency_max_ms": 55, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 93, "min": 6, "name": "t7TdR0gmR9c2tML2"}, {"max": 33, "min": 32, "name": "294JMenkPelvM2nP"}, {"max": 35, "min": 52, "name": "ze4QqF6A5RToUzwm"}], [{"max": 24, "min": 10, "name": "6guiCVdGWcKccb9N"}, {"max": 35, "min": 0, "name": "IAPmoOxeHCUl88mR"}, {"max": 59, "min": 86, "name": "7QmR4AteQQv7w8cY"}], [{"max": 33, "min": 40, "name": "uHQC0hRXMx0sCfMv"}, {"max": 3, "min": 43, "name": "jG4963pKYTvbw8FR"}, {"max": 62, "min": 25, "name": "eIA0jWyJOhVOmhxd"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 31}, "maxNumber": 92, "minNumber": 13, "playerMaxNumber": 45, "playerMinNumber": 52}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 44, "name": "LkOrRysW6mdPtLeX"}, {"max": 12, "min": 76, "name": "KKOvk6aKRJMexC2F"}, {"max": 9, "min": 15, "name": "mHsgmoU4HGyqBpOU"}], [{"max": 86, "min": 12, "name": "S5ZrrQbJS9GQ2oji"}, {"max": 53, "min": 19, "name": "NOS9WzqtP46LdeoP"}, {"max": 48, "min": 3, "name": "OM9wd2qCLm8V1Oov"}], [{"max": 54, "min": 83, "name": "zc1qPPtkCPyoqdDF"}, {"max": 64, "min": 87, "name": "1mOtc2tXdvLER7Q6"}, {"max": 69, "min": 95, "name": "PrcwWFBILTshLc0E"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 13}, "duration": 5, "max_number": 37, "min_number": 60, "player_max_number": 83, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 94, "min": 23, "name": "knwy1Wp9Yy6dQW6b"}, {"max": 23, "min": 25, "name": "k48JRDJ2EpjexU20"}, {"max": 44, "min": 95, "name": "ymFUIKhDbcvKUoc7"}], [{"max": 69, "min": 76, "name": "dW02Btu2V81gLz7H"}, {"max": 28, "min": 73, "name": "xSmT04sE8ndplW8E"}, {"max": 51, "min": 21, "name": "AECpSsPZauR13R0C"}], [{"max": 12, "min": 70, "name": "o4N42SlLeaEFRnHk"}, {"max": 34, "min": 42, "name": "C0HaPCuWdf5Agq9j"}, {"max": 6, "min": 53, "name": "1LM5vbDZnaMqaxha"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 24}, "duration": 85, "max_number": 36, "min_number": 94, "player_max_number": 61, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 45, "min": 8, "name": "gjZW48yhfC2oiTAI"}, {"max": 14, "min": 14, "name": "58Lw5TU8LT2dUhI7"}, {"max": 58, "min": 27, "name": "CpjKQvd8ILLtSIqz"}], [{"max": 45, "min": 9, "name": "Pc9Jq23UD5U96NAi"}, {"max": 91, "min": 60, "name": "YZwyCtWMRTTcZJTi"}, {"max": 46, "min": 32, "name": "xQLoo6Q84irRI0Mo"}], [{"max": 42, "min": 40, "name": "rjBJknRvSk1cHXYo"}, {"max": 98, "min": 24, "name": "YeoV62CP5QzvWl8R"}, {"max": 46, "min": 26, "name": "WPAxw8wCIfYyTWgd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 51}, "duration": 43, "max_number": 79, "min_number": 75, "player_max_number": 27, "player_min_number": 72}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 10, "flex_flat_step_range": 99, "flex_immunity_count": 2, "flex_range_max": 89, "flex_rate_ms": 58, "flex_step_max": 11, "force_authority_match": false, "initial_step_range": 62, "mmr_max": 73, "mmr_mean": 14, "mmr_min": 58, "mmr_std_dev": 95, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "pNTSCZNVQMNBB8BW", "criteria": "CVSU2sEdI1vkd5nJ", "duration": 32, "reference": 0.3456876710157395}, {"attribute": "fSBBLF79aYVybmCc", "criteria": "gczmzP1wiT7plLn5", "duration": 29, "reference": 0.0723316907867213}, {"attribute": "MOSwHX6WG7RtkyzN", "criteria": "yDyr8kaUBX0HDNdn", "duration": 63, "reference": 0.7581479259315349}], "match_options": {"options": [{"name": "g0Fp32RyLoOXF6gd", "type": "IE4hw9orpZT2Sg2d"}, {"name": "5AY5Yf3bmaXZac0R", "type": "GLy64qa1UeQZBNkZ"}, {"name": "thpmuJvrZvAjWIhc", "type": "7cjLtyazo4YPABG7"}]}, "matchingRules": [{"attribute": "dLG8CyXYaAcQQI2n", "criteria": "xvzhsqBR914NOvwq", "reference": 0.9609131869155358}, {"attribute": "QPBs6DzkYYzYs9Uj", "criteria": "JxPkeD2DzKHjzlUo", "reference": 0.03682431945053999}, {"attribute": "nsbTr0esp9LFc3P0", "criteria": "TfVMRqoSV8Kx89ui", "reference": 0.4304027187953745}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 81, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'ynlq16Y4IKWGfDOd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'UDIaYFqaO6mzsjao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'lERfYzQOnNb1ESJD' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 62}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'dBm08cXHAQow5jDU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'MExzVo56cnnZUgv6' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "n2UhtsOdWk2oFUwa", "count": 12, "mmrMax": 0.8320705243322779, "mmrMean": 0.43636867591169515, "mmrMin": 0.7369324070454908, "mmrStdDev": 0.9337091293730899}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'I8TZxohxdLWfrUyq' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 25, "party_attributes": {"Jx0yamly9MZfUgVX": {}, "739kRcDB7APgqnNy": {}, "VIWpWzXTWkJZVI5k": {}}, "party_id": "lFK55QJ29qqN2oFK", "party_members": [{"extra_attributes": {"VF3NDa0Rh4qTRpM8": {}, "Vsw2pszGFXHrLGZy": {}, "AldUxZK4laWWMoax": {}}, "user_id": "FUegV2Bg3fQQq8Pi"}, {"extra_attributes": {"yY1zR7urV9TSKrUe": {}, "lh9TIlHM8jvpxXIQ": {}, "WRxG7t2WFTnL5Tls": {}}, "user_id": "JsVuloqQWGo29i2i"}, {"extra_attributes": {"4bUvDkiw9M2bXGrQ": {}, "1KnN658TjaRCDvix": {}, "cD1pDFOCQZ6icUwG": {}}, "user_id": "RWzsx682ypAeBaX0"}], "ticket_created_at": 30, "ticket_id": "k0WgBSwFMYkdrA7I"}, {"first_ticket_created_at": 72, "party_attributes": {"JdiU7ouBMfxtT4FE": {}, "6ljxdR4yO7OZaBri": {}, "q1gvsjl7fstVwUQE": {}}, "party_id": "YvJeJh64NU1lzVlo", "party_members": [{"extra_attributes": {"9dm0D6dC21KSPpEU": {}, "ZanXXSbwl44xfhkc": {}, "tRjrLTmhoKvsPB0H": {}}, "user_id": "0OctfmcV7onl3GoT"}, {"extra_attributes": {"znzAQlSFFZ9NDeZv": {}, "FvVa54LX3o525Wh3": {}, "RrKp69PUNHKntidN": {}}, "user_id": "GO0Ka31GLRQjNLlf"}, {"extra_attributes": {"o5YKTfqz60XLHDMP": {}, "zEeGwYGlFteossC9": {}, "LDrU3PXJoVPstVxL": {}}, "user_id": "cLiVlieK9KOMOdAc"}], "ticket_created_at": 22, "ticket_id": "ResksRhwcLu9zbdo"}, {"first_ticket_created_at": 65, "party_attributes": {"TdgslymYATJVYqUi": {}, "2GvYZX6JtTbJdDhi": {}, "6yKo1IjRuA7f1OMo": {}}, "party_id": "gV3xxBNEwTXk3fpd", "party_members": [{"extra_attributes": {"2pEilmT613sTircg": {}, "sAoGr06uLs7zf6Cq": {}, "xDfX1gTqAjLFyOix": {}}, "user_id": "XKwg9y2JIv88PSmL"}, {"extra_attributes": {"Qt7HstPPfqCcy77U": {}, "5ucqm7nfdkuWWsvg": {}, "rus8bfLV2SL1rkJp": {}}, "user_id": "lyF2My0uTIBLzYhJ"}, {"extra_attributes": {"xHHpLCwXYK6iGtCO": {}, "RVK6T91Bzwr5XzDv": {}, "CTPae5tS9vqHR2aY": {}}, "user_id": "tRBCXrAMRH8pMJlK"}], "ticket_created_at": 80, "ticket_id": "kEOnfLRNI2e1mIeU"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'RTeIvw3UC87qZCQy' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 45}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'tUCsz4GtJmeTvcrf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'JruSLraUnnT4ilxM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'QpUdmlwyonSRxlpV' \
    --matchID '69DJ9mFrpg1jTDvl' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["HwqBz5Jberc84zTw", "KQRTUwZTIOv5hqjh", "5cJ1lnWGfrV8GVmA"], "party_id": "1BOFKgeZ37h1yIV8", "user_id": "983wPGHmsBRujYzF"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'juhrjCMReqQgyi1x' \
    --matchID 'Kke03V6yXLmMUnai' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'ffsDkCO1juSCLIt4' \
    --matchID 'VXD4cP6cJ685Mwgg' \
    --namespace $AB_NAMESPACE \
    --userID 'dbV2B6N9rc5uxpsn' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '9J7lHYynpd6hnBGP' \
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
    --channelName 'dmzkCnMAbyu5zM0l' \
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