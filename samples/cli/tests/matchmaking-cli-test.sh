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
    --limit '67' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "0eqWNtOtW2aqFIvW", "description": "IyKypH7O5kqtDGls", "find_match_timeout_seconds": 76, "game_mode": "1Vn5fWV1IXFOhr41", "joinable": false, "max_delay_ms": 32, "region_expansion_range_ms": 3, "region_expansion_rate_ms": 0, "region_latency_initial_range_ms": 0, "region_latency_max_ms": 21, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 23, "min": 20, "name": "pUpppzeYgH15khyz"}, {"max": 32, "min": 71, "name": "YDEKOg6AAiWbEr8t"}, {"max": 33, "min": 3, "name": "dtMYhLjnSCwyPnGK"}], [{"max": 0, "min": 42, "name": "hqryPtvAx3k83sGY"}, {"max": 18, "min": 58, "name": "lRrREFeSgSh3F8Fs"}, {"max": 44, "min": 58, "name": "4sOEV8ogaZrJODmH"}], [{"max": 95, "min": 72, "name": "B5Y1YUxDJpfCIuWC"}, {"max": 44, "min": 79, "name": "brQShTYGzp7LBcb1"}, {"max": 64, "min": 4, "name": "UrZ6aduXBKsF2ICt"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 53}, "max_number": 12, "min_number": 48, "player_max_number": 44, "player_min_number": 43}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 49, "min": 92, "name": "uoSHRqKoRRXS3QFB"}, {"max": 76, "min": 46, "name": "FoAcpiK5rA31uRRs"}, {"max": 92, "min": 45, "name": "y2nHl6uKGnw4IUYH"}], [{"max": 20, "min": 99, "name": "sEFAtDXjpT5hCJ9s"}, {"max": 5, "min": 97, "name": "XwRJaghdWnmOXIr8"}, {"max": 37, "min": 53, "name": "GmBckYurAad4Wpjz"}], [{"max": 18, "min": 45, "name": "FXgi9avlJaeUnhiM"}, {"max": 76, "min": 28, "name": "83FJhFHk0KVaQrSA"}, {"max": 87, "min": 29, "name": "bAeEwBhVlwg77toR"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 41}, "duration": 18, "max_number": 59, "min_number": 2, "player_max_number": 72, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 34, "min": 84, "name": "FFaFWgn0CU9JZRrL"}, {"max": 81, "min": 32, "name": "im2Wo2HTDTs72XyI"}, {"max": 52, "min": 23, "name": "WeagW9YSj5AJmaup"}], [{"max": 58, "min": 5, "name": "ugsLdgZBk2NN8z9o"}, {"max": 22, "min": 79, "name": "eVgmjYhsmw9HN5ss"}, {"max": 47, "min": 54, "name": "uFjfwJ6MHoX2lkKi"}], [{"max": 23, "min": 30, "name": "vyYXstFAgltcFl5W"}, {"max": 24, "min": 12, "name": "NIjSQL3lRInVFHQg"}, {"max": 44, "min": 83, "name": "9MJnYmg6DVOapwGc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 30}, "duration": 81, "max_number": 68, "min_number": 37, "player_max_number": 54, "player_min_number": 81}, {"combination": {"alliances": [[{"max": 62, "min": 58, "name": "dy3VU2pdtHmdqkcL"}, {"max": 69, "min": 13, "name": "m15l7ZrxOK9fnexi"}, {"max": 68, "min": 86, "name": "UVHBBYMbPEwTk2ZG"}], [{"max": 11, "min": 100, "name": "WAllpj32bWRxts5y"}, {"max": 43, "min": 69, "name": "HLKHqL5sekV55ZyU"}, {"max": 28, "min": 95, "name": "66upeeQZgyfVEcVy"}], [{"max": 49, "min": 52, "name": "OcGVkPYEaSRF9tSS"}, {"max": 86, "min": 43, "name": "zMvsgZ4zKpBOiEad"}, {"max": 56, "min": 94, "name": "EeIr7QMIRLzcYx1h"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 27}, "duration": 95, "max_number": 60, "min_number": 46, "player_max_number": 12, "player_min_number": 36}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 21, "flex_flat_step_range": 61, "flex_immunity_count": 39, "flex_range_max": 44, "flex_rate_ms": 8, "flex_step_max": 22, "force_authority_match": true, "initial_step_range": 55, "mmr_max": 52, "mmr_mean": 46, "mmr_min": 12, "mmr_std_dev": 16, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "GJv92VwOAB58nfEu", "criteria": "8LEBDB88WjaLs8pw", "duration": 97, "reference": 0.06533881081099491}, {"attribute": "esyIoBNB2x5OokMM", "criteria": "NXadur9gKmqs6Tdu", "duration": 25, "reference": 0.4097281286565234}, {"attribute": "0sAuqcQr0uWrnYnH", "criteria": "jthNRAMe1PU40Lrg", "duration": 11, "reference": 0.2279833130620319}], "match_options": {"options": [{"name": "LV38g9VpwzlSbQEp", "type": "qphzp44vZjmQj2d8"}, {"name": "NHN7CBgPJCo2M6UY", "type": "pggMzYsEKQtE4iXt"}, {"name": "LNhq9g5IReZGrTBd", "type": "kjIeqUofWn7RGPZp"}]}, "matching_rule": [{"attribute": "PmQ9Y8hRiURHGNmD", "criteria": "EaLFQtKPMVADWej7", "reference": 0.5469107250683128}, {"attribute": "wvvOXnYEXXmij1GN", "criteria": "y8izgDQxKabDNlvt", "reference": 0.22339232718665558}, {"attribute": "9x4NXXVHbOLQKuJD", "criteria": "dNrlOTI8K1AMjVqC", "reference": 0.8189594371815482}], "rebalance_enable": false, "sub_game_modes": {"6AXCs5jlEeppMGPu": {"alliance": {"combination": {"alliances": [[{"max": 14, "min": 30, "name": "ZyBrCQG0HJsnokXG"}, {"max": 59, "min": 50, "name": "yYx6H0oQpMN82n2j"}, {"max": 77, "min": 54, "name": "YSHIlJAio2SqGHXS"}], [{"max": 49, "min": 53, "name": "fW3v43oSNeYGres7"}, {"max": 61, "min": 67, "name": "cimoBxpEmEqhcjaP"}, {"max": 90, "min": 81, "name": "HwIHfWx7Y73SQiFn"}], [{"max": 22, "min": 62, "name": "ltGpf6FSnKib0D5p"}, {"max": 28, "min": 26, "name": "Qr6k0JxRxpBIiNPY"}, {"max": 42, "min": 43, "name": "SIwXBG9PUnWstX1c"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 74}, "max_number": 84, "min_number": 75, "player_max_number": 80, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 1, "min": 59, "name": "79g9YQWSbs8Veg9P"}, {"max": 50, "min": 94, "name": "ZoB9H9XAUojyAEUG"}, {"max": 11, "min": 6, "name": "RABNTVWFcWrsmSfm"}], [{"max": 32, "min": 31, "name": "XkivDsO6c0RBuFWQ"}, {"max": 91, "min": 3, "name": "7rYnWJBgCC2rHFaj"}, {"max": 10, "min": 99, "name": "jV3eICvm4Wm0v2X9"}], [{"max": 13, "min": 11, "name": "czOX44E4RcSZu7ot"}, {"max": 59, "min": 89, "name": "AnZ8DGKcvHpMhkma"}, {"max": 41, "min": 20, "name": "h6FN4l6PNNCUeGh2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 4}, "duration": 81, "max_number": 4, "min_number": 40, "player_max_number": 62, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 94, "min": 52, "name": "iH3S5CUAR4xJjjYQ"}, {"max": 44, "min": 33, "name": "zkGPSsayIKXqVPFF"}, {"max": 7, "min": 4, "name": "C7pFv8npn9bQgQkW"}], [{"max": 79, "min": 92, "name": "OOv10EeO43ULD84k"}, {"max": 60, "min": 48, "name": "hjHMAhZ1ypv2rFP8"}, {"max": 91, "min": 23, "name": "RPXLA0iFRnZeBECd"}], [{"max": 6, "min": 73, "name": "JtkqJY9B92svsLf0"}, {"max": 57, "min": 38, "name": "8PXdTDz30yxN265n"}, {"max": 82, "min": 83, "name": "UncriqgkmijHa5FX"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 44}, "duration": 37, "max_number": 71, "min_number": 30, "player_max_number": 75, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 70, "min": 80, "name": "uSVy8iE0q2zBrdA6"}, {"max": 80, "min": 19, "name": "YMbFNCo99owqLWyO"}, {"max": 2, "min": 43, "name": "kKVvJR75xwvj8Y1r"}], [{"max": 62, "min": 54, "name": "WkHXTTb2f8WNnyyy"}, {"max": 6, "min": 68, "name": "r9YHgWkuSVdEUnTZ"}, {"max": 10, "min": 39, "name": "DsROQm7TrFXtPEyO"}], [{"max": 76, "min": 100, "name": "ooi9xBLK8rp35qCd"}, {"max": 97, "min": 88, "name": "xuIwIg5Q85nYKi27"}, {"max": 71, "min": 47, "name": "9vyWBGN1gNUcrxas"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 11}, "duration": 17, "max_number": 5, "min_number": 87, "player_max_number": 85, "player_min_number": 95}], "name": "CN4MeG9ZvYC7euVW"}, "NU2vLE4wa905bJRb": {"alliance": {"combination": {"alliances": [[{"max": 4, "min": 46, "name": "uiI1kRFQ8KyjdpsW"}, {"max": 26, "min": 93, "name": "XYqja1pmu0LOruK9"}, {"max": 96, "min": 86, "name": "OGefYVSjm4Jpm69m"}], [{"max": 0, "min": 76, "name": "bSdqnOSOeV5nf0wB"}, {"max": 17, "min": 6, "name": "eyxtZHNiF2QodIfF"}, {"max": 4, "min": 14, "name": "l8h1WKYLEPoRh2HD"}], [{"max": 45, "min": 4, "name": "1apiziMIVpqE8Utf"}, {"max": 21, "min": 89, "name": "vwI2iKSm2DrshnQc"}, {"max": 68, "min": 22, "name": "jRLninCImSUtiaig"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 46}, "max_number": 25, "min_number": 83, "player_max_number": 3, "player_min_number": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 13, "min": 67, "name": "BdFibZW2SuqariiZ"}, {"max": 38, "min": 46, "name": "ynJlXxuBrmYKzNfw"}, {"max": 92, "min": 79, "name": "ncn5ynEPy0hmDf7s"}], [{"max": 50, "min": 22, "name": "6BGGLN6VzHOUCfCw"}, {"max": 49, "min": 23, "name": "L9enuZMsLcUQzq14"}, {"max": 28, "min": 58, "name": "snGxW730NA6KtMy3"}], [{"max": 58, "min": 4, "name": "7JITZFL0tDZyZ9bu"}, {"max": 4, "min": 34, "name": "0kPqsOmQrGQKp1V6"}, {"max": 9, "min": 65, "name": "mVbETKVwhmgJHW5k"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 42}, "duration": 20, "max_number": 0, "min_number": 89, "player_max_number": 87, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 86, "min": 11, "name": "tN7unhxDp7bso1Ug"}, {"max": 21, "min": 90, "name": "QWNfrvjWcKgVsueV"}, {"max": 95, "min": 68, "name": "YhBcemwFa1wLN8o1"}], [{"max": 67, "min": 100, "name": "nNFYLNNyPcEOX4L6"}, {"max": 77, "min": 38, "name": "WZQAWE6uvXZC81n5"}, {"max": 46, "min": 25, "name": "6LmZ2m8liuu0MXPo"}], [{"max": 20, "min": 7, "name": "jPSgjVtWuvKM6KEI"}, {"max": 34, "min": 99, "name": "fbNd4LCZ86CvKdup"}, {"max": 45, "min": 46, "name": "lmFZDBJWH9Bxf8Tf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 53}, "duration": 74, "max_number": 1, "min_number": 20, "player_max_number": 63, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 60, "min": 10, "name": "vprgFDAaTnLfCVpk"}, {"max": 89, "min": 62, "name": "G9PWu8gQ5RqJcYJx"}, {"max": 94, "min": 36, "name": "jhV0HIQvhZLWqlG4"}], [{"max": 71, "min": 38, "name": "gZ6Ap8Z9nsXmLXBJ"}, {"max": 36, "min": 59, "name": "4xQJtMWxuOxfyk0D"}, {"max": 40, "min": 50, "name": "ikbMlT5YwynWxoDJ"}], [{"max": 78, "min": 36, "name": "s8Kc9bPISToFQPjg"}, {"max": 93, "min": 84, "name": "1PyNf4Ai8D4GMF0P"}, {"max": 94, "min": 76, "name": "pqEWvKrr5soukik6"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 8}, "duration": 91, "max_number": 54, "min_number": 87, "player_max_number": 75, "player_min_number": 28}], "name": "MggWH0b3F3yQCTar"}, "o9kztApAsIZoyTMr": {"alliance": {"combination": {"alliances": [[{"max": 99, "min": 16, "name": "cqHys9yPrqimLfJF"}, {"max": 96, "min": 83, "name": "LjHyzJGKMINWQbQs"}, {"max": 51, "min": 76, "name": "qzaWthmFewmEtshz"}], [{"max": 78, "min": 48, "name": "POkepngoPpk4eSB6"}, {"max": 54, "min": 12, "name": "0onRgQ1uO4HhvUNy"}, {"max": 5, "min": 14, "name": "0tM9KL6XHbnF6w9u"}], [{"max": 53, "min": 54, "name": "2gWnBxeeKu3wk8dG"}, {"max": 67, "min": 60, "name": "j0TIaqrwYmBx4Ynm"}, {"max": 73, "min": 27, "name": "o8aIl8vRk3SlYf1h"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 8}, "max_number": 55, "min_number": 77, "player_max_number": 26, "player_min_number": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 21, "name": "qvJOYvI0MkqPPNSe"}, {"max": 47, "min": 87, "name": "PvwK3S7ny4xMfOw1"}, {"max": 64, "min": 44, "name": "KKJBC5sNPsX2Xz7v"}], [{"max": 7, "min": 51, "name": "Z6dwfpFSkxmff3O2"}, {"max": 74, "min": 95, "name": "VVS4joWBFMVpYFxT"}, {"max": 13, "min": 29, "name": "UkskMf4KkJHRxa6b"}], [{"max": 86, "min": 55, "name": "qNWhoqNAs9uwRI1o"}, {"max": 96, "min": 11, "name": "gHfUzDTAwMWJv6L9"}, {"max": 86, "min": 32, "name": "f7hj2h7h8RZyEfWo"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 100}, "duration": 41, "max_number": 100, "min_number": 51, "player_max_number": 79, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 0, "min": 4, "name": "SX3OiZ5JkDiFlSBR"}, {"max": 11, "min": 58, "name": "a0dV0GfBChLUcK3J"}, {"max": 43, "min": 82, "name": "X5NNnaREDvGAnEWk"}], [{"max": 5, "min": 64, "name": "sy9fY1A3dp0fUQBM"}, {"max": 96, "min": 76, "name": "RTl5hedCAq91rSwI"}, {"max": 39, "min": 51, "name": "L1oHEUOeB4ciVHI9"}], [{"max": 74, "min": 93, "name": "r6eQKz6zsXYftRd1"}, {"max": 37, "min": 96, "name": "yg83j9hOewL5L0IL"}, {"max": 22, "min": 30, "name": "2QmQVbwYkkfZsWk4"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 59}, "duration": 51, "max_number": 75, "min_number": 25, "player_max_number": 97, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 0, "min": 25, "name": "jsY8xM4237yL16xs"}, {"max": 52, "min": 81, "name": "Y1XvvliGdGWZ0oil"}, {"max": 75, "min": 38, "name": "qr6p6JDk2dMvLcaK"}], [{"max": 62, "min": 98, "name": "jFu8Z31heL7AJSap"}, {"max": 81, "min": 91, "name": "zksv7FWYQspvdwsf"}, {"max": 2, "min": 18, "name": "RahcIYcBjHdV5Ujq"}], [{"max": 100, "min": 6, "name": "QVjWeNp2cocyfd7D"}, {"max": 73, "min": 66, "name": "MCITyTqaPBOclc0x"}, {"max": 19, "min": 3, "name": "rMMJEL42TMyHmFYd"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 67}, "duration": 4, "max_number": 12, "min_number": 31, "player_max_number": 59, "player_min_number": 89}], "name": "U0n7D5ZLaV87QSnt"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 96, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName '3HX62qEH2DDzftGo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'uEEQXRu59XGdkKgV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "CfwD2UBn2kKhRPyM", "players": [{"results": [{"attribute": "W5lg1ekHJHXPBzdQ", "value": 0.037172390227102836}, {"attribute": "ZHdYoyWfNzNbfOCM", "value": 0.030093205864821226}, {"attribute": "9Vg2f1MO7XbmmmfB", "value": 0.1477281147572792}], "user_id": "nCjzEXlxAyL6u2V2"}, {"results": [{"attribute": "Uo4jCuVIr2O6bG0K", "value": 0.6109177164410127}, {"attribute": "0LyAf7wxAPTGOel0", "value": 0.6623859202240006}, {"attribute": "iTzy3qfVWcBBL1xY", "value": 0.022281828168050022}], "user_id": "rzSFnPcEJKVLFBmG"}, {"results": [{"attribute": "7UKWfgAuQuQolkFp", "value": 0.47908223113695025}, {"attribute": "ROJtDa3TzUZyqPeg", "value": 0.6324204111717813}, {"attribute": "HMmJJo8krGvEGtof", "value": 0.7003869244361592}], "user_id": "zs5gjXAiS1xuFcwz"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "YfFTS4b2IMBb4mHk"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "F6Sv7LUE10x5FHex", "client_version": "GBkqaG8k63NOtJmf", "deployment": "nPDrhJhCjdg861Ul", "error_code": 18, "error_message": "JK6sx8mPJtyU0HK0", "game_mode": "byVblW1I9bqXetLA", "is_mock": "u6iCVNedfVMDSARt", "joinable": false, "match_id": "USEV7vJSnTEGP7Xn", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 65, "party_attributes": {"wnbxbhBay9G72P3S": {}, "SXc5k93QVoIshMoc": {}, "BNO4TkYoznxeM8uA": {}}, "party_id": "gErH2Yz4kaKnDHg8", "party_members": [{"extra_attributes": {"Mllp8AOOzRsEU9uK": {}, "VGl1sKycbLWV0tSB": {}, "zPPIYpvMGOLZ2P6S": {}}, "user_id": "QXYM30MTVFSFuf5u"}, {"extra_attributes": {"xiP7w082fIK9SOHm": {}, "PRD2woRrZaiW8Kpl": {}, "Quq5GhmCFeWR8ySr": {}}, "user_id": "BP7y4nEi9G4ZQhyF"}, {"extra_attributes": {"JIAEh7grobBk3buX": {}, "PbKooUXKTid4cgew": {}, "8gF7vjhJmGTwbfmy": {}}, "user_id": "1mtB7tLGOSHDMl4z"}], "ticket_created_at": 79, "ticket_id": "QDafzlgrfZgI83Zj"}, {"first_ticket_created_at": 98, "party_attributes": {"ghkhANHJNftTHZic": {}, "grzZGdfCqHDF2QW1": {}, "JZ1oOCS5DUYcJNuJ": {}}, "party_id": "2lf0ZxAGtw9BX6IT", "party_members": [{"extra_attributes": {"qLW9DH9f1giAsw8w": {}, "ZNK6gNcg36HW9bfX": {}, "1vdLreF9DfcBqfXq": {}}, "user_id": "aoFZaM2xbY1xKgZT"}, {"extra_attributes": {"3BqqgWgnhhahOoh5": {}, "qPgTuf9ysbfwJEwW": {}, "fRP4f6rI7yagbgH2": {}}, "user_id": "cA4tpZicFCZGzsbj"}, {"extra_attributes": {"fFCNxQKnjWewyF1O": {}, "J6nJXzu0Cf1iFCQv": {}, "XkqY5fHmEMZ5f3PB": {}}, "user_id": "uPemqJqhaIH24Are"}], "ticket_created_at": 19, "ticket_id": "KmEOGP94x5MRxawa"}, {"first_ticket_created_at": 57, "party_attributes": {"WABxVvTBeD6gBsdv": {}, "f3aMc6V8k1IGYW2U": {}, "odgPg9Ee23nhNhcG": {}}, "party_id": "YZfRymHwUBo1rlGC", "party_members": [{"extra_attributes": {"sBXdjb91wtNrnmqj": {}, "XrnZT69EArUayqh4": {}, "KG3M7ahSor3HxMuU": {}}, "user_id": "7uzOCcoVYw1qCOFY"}, {"extra_attributes": {"JAicdowRK3N0cXhl": {}, "WmHlEQ3NBGtMgiXy": {}, "3L8rAanadknU6tSp": {}}, "user_id": "awUveOciBMuNKAd4"}, {"extra_attributes": {"LJenC5olAgzof63d": {}, "lGX2Ni5yXEDIvcjk": {}, "G9LAJAeqy1Eb69iq": {}}, "user_id": "ayY2S1l0gz9dKGuD"}], "ticket_created_at": 62, "ticket_id": "FsWawzPKDHOlc3gm"}]}, {"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"NDvhqM8NTpKtw4Dj": {}, "7uJRLVrOy6yE3PCa": {}, "6Kg4dsWjet6lMnRT": {}}, "party_id": "ekvwjEEgUKdppbRI", "party_members": [{"extra_attributes": {"VcNHPgBBuMdykcgo": {}, "Ds8uCbPJm5jYL7A3": {}, "CSc4TXGCI1giUaPf": {}}, "user_id": "wYc4vX6GCh0NwY6v"}, {"extra_attributes": {"C2ZpI3VELPRvuUSZ": {}, "gEWgUxISyZDrUYd2": {}, "QUavIUgpS32INXHq": {}}, "user_id": "6SoBcu8bP3VI3X9p"}, {"extra_attributes": {"vuovI9CRWKlbfmhd": {}, "nECozcjV3DoItmia": {}, "ra4j4gGzYq0bK9Tf": {}}, "user_id": "xF6xNvcnl6buireo"}], "ticket_created_at": 43, "ticket_id": "trlJ8vRsztzVgPzy"}, {"first_ticket_created_at": 5, "party_attributes": {"OCVB9HnL2q5Q5S28": {}, "RtTEmY3EitUO0Jna": {}, "D1VeEobh68hR9f5q": {}}, "party_id": "7jSkwiggrVXq5Mwi", "party_members": [{"extra_attributes": {"CIMsLLPbLttmtnbs": {}, "UpWDLmf5FbkDI9oD": {}, "wPInPhsYir8AZkOt": {}}, "user_id": "mumbl2iXVTIA4A9Z"}, {"extra_attributes": {"E3FK52wSsCpoQf9N": {}, "H0DF2r77GLPoV7Ih": {}, "KjcP742IghxWiHBi": {}}, "user_id": "ZsHT1RwRt4QPmohe"}, {"extra_attributes": {"wyItpKcLGCpia2JC": {}, "7Y4mRPwRjzVMacqe": {}, "SOYLuxw6qDvQCLzf": {}}, "user_id": "wzxpZ9SBRHlaxl4B"}], "ticket_created_at": 30, "ticket_id": "LncJpOlolm7aVB3t"}, {"first_ticket_created_at": 82, "party_attributes": {"T0HFdvNnLta79eJj": {}, "Lua8NoGJRCaWp4Fd": {}, "0QQO7ItrP1n7C9FS": {}}, "party_id": "jDFKAkuYoxC4Jkhs", "party_members": [{"extra_attributes": {"YClGXsPnCWq5R6RI": {}, "C94ytgPPPVH6URw8": {}, "VcrF0XNXAlqMbNKz": {}}, "user_id": "cvTqOF2t4zFUdW8s"}, {"extra_attributes": {"RI1bLaGLH81B5uWJ": {}, "muo2NAbjRvrh5oaY": {}, "0x0L6VEZTBKNBh1j": {}}, "user_id": "GP9fAA9ZsJ8NCQaR"}, {"extra_attributes": {"tbaV2HqxRTUhIw1n": {}, "scZzDl8zb9p8ijEl": {}, "u5E9a6hI7Icgxapi": {}}, "user_id": "dNr4D15IWmqV9O8O"}], "ticket_created_at": 73, "ticket_id": "QtDiEUSMMKL5ju3c"}]}, {"matching_parties": [{"first_ticket_created_at": 37, "party_attributes": {"9CZGcvoOduAIQwxi": {}, "JjPlycKqDuIPIRqW": {}, "2I7kIvf5J1eO2bkG": {}}, "party_id": "fwcfBU2ARKTXQGYS", "party_members": [{"extra_attributes": {"XiZIuFywvxNSMb4f": {}, "qfusaFDrnYLNkLmD": {}, "ggSq8cpoeeL7se2b": {}}, "user_id": "XJOzCEBYIdKYoJNj"}, {"extra_attributes": {"czGce3YnN1YPRCvV": {}, "OCxdu170zURQksMW": {}, "AWO594KTTAwc9PoH": {}}, "user_id": "GC5Hx6vkcj8N6JMo"}, {"extra_attributes": {"XEBi5reFZfy7HNZ9": {}, "ZncuT2S2szUDbVQJ": {}, "p3AMXJE9Os5fO3Fm": {}}, "user_id": "ybseEzsOwTsSL3jd"}], "ticket_created_at": 95, "ticket_id": "iHkVXT15HsaMJ2IF"}, {"first_ticket_created_at": 17, "party_attributes": {"KGuCy1m06BzH69ys": {}, "hMbRbn9y7npKa15q": {}, "mlTmH7ZsP3tmYlUe": {}}, "party_id": "NirXgAr4LdelaBU7", "party_members": [{"extra_attributes": {"rJ8J7UAUPXIjG9TX": {}, "I8Fa6y1k6Piakdtl": {}, "erT6Agc5J8wiISD5": {}}, "user_id": "jsUqtHUYF6Wn5Se8"}, {"extra_attributes": {"8gvXOR54vlCpoRdn": {}, "kEq1jkcMRTiEvTb6": {}, "ZRKXx1H0pGzJVZFO": {}}, "user_id": "573g4ss9P3yUJRTt"}, {"extra_attributes": {"biyEWXb31llbFJrq": {}, "UP398tUeINuAhlUD": {}, "W0YrUooJDdsOfySO": {}}, "user_id": "IkeZ6s6OXj5Tyelh"}], "ticket_created_at": 76, "ticket_id": "xHEIMBQknNteRYUO"}, {"first_ticket_created_at": 99, "party_attributes": {"99Y2wyawroTQVnRV": {}, "A6AQ2vwO2QQ5583d": {}, "B69fm9Qbd1WbMpQZ": {}}, "party_id": "AcedzVot7DbAUXyi", "party_members": [{"extra_attributes": {"Wo8Hda3AA2oIjh3H": {}, "XtsdqgB6OdEakRQ8": {}, "hXhViz0HLjXfycVn": {}}, "user_id": "7BTa1VH4mtjY4wi9"}, {"extra_attributes": {"82Vj3EiTr0vUMTgv": {}, "2Z5FS291s4OkkFtw": {}, "xyP97RO7XHAl1USb": {}}, "user_id": "IGJUoNGnrnGZSjXl"}, {"extra_attributes": {"itAscwKyDeBKo2eb": {}, "fkngP8Y8ueFxtX1t": {}, "TG12KIbAy6hUO6yJ": {}}, "user_id": "WjUaBjGc8BtwJkUr"}], "ticket_created_at": 70, "ticket_id": "jpKojCcchM1a4ElK"}]}], "namespace": "JhvkR5xdsWsl3S0t", "party_attributes": {"YVf7UYuX5DysM1a0": {}, "mC1RVfVo3ASCnV1e": {}, "xGo81nYR5wnhCytP": {}}, "party_id": "3MoJAwbvaFIuLvU5", "queued_at": 5, "region": "0C4Bywqxha8GC1Br", "server_name": "TuqKoHkifEJiBwTB", "status": "CQRBECyVxi2HXE8V", "ticket_id": "PdcW4WaGleqeNZPq", "updated_at": "1987-02-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "aowr4qqydMLfVSYS"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'H5Cx8jDtT9ITBr3J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 67, "userID": "uMymZadCsmPoBp8o", "weight": 0.8042771121660337}' \
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
    --matchIDs '85YVlbWydnuzQ7Ea' \
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
    --strategy 'N1idzBbOaL2k5Qgv' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'JIEtwAYS97JBfHcB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'ZU1X6eC6xesVbV0L' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "YtHf8PC8P4rd7SUY", "description": "YX35QDUtOptxRqOq", "findMatchTimeoutSeconds": 0, "joinable": true, "max_delay_ms": 12, "region_expansion_range_ms": 75, "region_expansion_rate_ms": 86, "region_latency_initial_range_ms": 48, "region_latency_max_ms": 42, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 18, "min": 25, "name": "4QxQbea1g54rE5A7"}, {"max": 20, "min": 60, "name": "sQATfxwgm0jmEvhw"}, {"max": 34, "min": 59, "name": "Z3enInUo5IyH3AwS"}], [{"max": 60, "min": 12, "name": "H80vGxldPNAEQN2G"}, {"max": 11, "min": 15, "name": "c33QgNPiFZhcUtNq"}, {"max": 11, "min": 49, "name": "bp9OUSpPv59NtHt7"}], [{"max": 75, "min": 100, "name": "oVuoPcAxpgxGrr5b"}, {"max": 93, "min": 87, "name": "Sh5eCCFuFnHkshZA"}, {"max": 26, "min": 61, "name": "xDJn5zXm1hSaVJd0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 98}, "maxNumber": 72, "minNumber": 2, "playerMaxNumber": 27, "playerMinNumber": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 80, "name": "ZLQwzNBONLFYOkrT"}, {"max": 85, "min": 33, "name": "FCGlZqbDML5iBlgp"}, {"max": 74, "min": 59, "name": "bG9sCKxSAWXc2OPx"}], [{"max": 34, "min": 82, "name": "XRonoMcsWjgDmp8L"}, {"max": 51, "min": 55, "name": "sHaXk0n27cE4RehE"}, {"max": 68, "min": 57, "name": "7B2Bw32zRMrTzmcW"}], [{"max": 66, "min": 43, "name": "wrDbyOokJreQtfEi"}, {"max": 15, "min": 50, "name": "FBf8ZFUP8cdgPP0Y"}, {"max": 15, "min": 80, "name": "11sZuboByERuWKji"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 36}, "duration": 52, "max_number": 8, "min_number": 20, "player_max_number": 63, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 26, "min": 12, "name": "UoQA6UZw0GIuGdWe"}, {"max": 15, "min": 55, "name": "OXy7n4ROeQjcgTgU"}, {"max": 75, "min": 21, "name": "1SEnJV7uxsqpMP7W"}], [{"max": 39, "min": 84, "name": "Bm03M8i3FYSna9pz"}, {"max": 66, "min": 31, "name": "kzozqhDJtIx6VmVA"}, {"max": 3, "min": 52, "name": "fZZbmtRe2kqGv0Kq"}], [{"max": 52, "min": 97, "name": "4N1vcLfRjhet1uc9"}, {"max": 58, "min": 1, "name": "vaXfpXbCW9S00396"}, {"max": 8, "min": 60, "name": "qSHtjakQRU5KCRV8"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 1}, "duration": 99, "max_number": 90, "min_number": 43, "player_max_number": 76, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 80, "min": 67, "name": "dTEZYkJHTOY8KJTx"}, {"max": 7, "min": 39, "name": "EmaARFNMOC4hVwhY"}, {"max": 24, "min": 44, "name": "vbh16VxBksBVlxYX"}], [{"max": 46, "min": 18, "name": "rPE1mQrhEhLrfuB4"}, {"max": 93, "min": 49, "name": "joQh1OglurYWqjfY"}, {"max": 33, "min": 65, "name": "gJ7XaavK9fpwSaJc"}], [{"max": 82, "min": 0, "name": "HOKC77mbvQQA1PgQ"}, {"max": 44, "min": 21, "name": "41P1XSukJH6UpiZc"}, {"max": 22, "min": 40, "name": "tnoGWfUKsbLUe9bp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 8, "role_flexing_second": 56}, "duration": 28, "max_number": 100, "min_number": 16, "player_max_number": 87, "player_min_number": 57}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 9, "flex_flat_step_range": 49, "flex_immunity_count": 79, "flex_range_max": 30, "flex_rate_ms": 68, "flex_step_max": 74, "force_authority_match": false, "initial_step_range": 53, "mmr_max": 11, "mmr_mean": 23, "mmr_min": 22, "mmr_std_dev": 56, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "XugEMmj93wY6gBKQ", "criteria": "h61vO6YQkOq7lOg2", "duration": 35, "reference": 0.12036941165695958}, {"attribute": "8Ol9TSi17cMOOP41", "criteria": "2VcOHXdOMEv486FI", "duration": 20, "reference": 0.19996779726928715}, {"attribute": "ReMTjSLL8EUNeZBJ", "criteria": "RgnSDJ3gxAqKZksv", "duration": 45, "reference": 0.039328183732927346}], "match_options": {"options": [{"name": "8Huk8Yx2G3LkHdZS", "type": "JfmWqhc65drtRVN4"}, {"name": "ZqJ2kaJx4u87jXTa", "type": "Dq0nqPXHI0xlLNPT"}, {"name": "fkxO8rFput4oIYPy", "type": "ll36FfCv7TrOFjAL"}]}, "matchingRules": [{"attribute": "vO8jgk8ZmYjPRf0i", "criteria": "HPsCqbzo62wA8Zo0", "reference": 0.02186053908737584}, {"attribute": "le2j3e2LPYwmuZlt", "criteria": "1UUMHe2CKnV5X6bw", "reference": 0.021806716549944483}, {"attribute": "nsx3Vf8zbCYFOOtx", "criteria": "yroiqCYggEN2X2yH", "reference": 0.9693519637638464}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 83, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'dpPOSmo6jU0h3Pxq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'rTJidSUPXrLYvtjw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'vf3l4PjV9miFjdhT' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 38}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'Sqf1uU1fIqsqobsQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'zsTzo9jQYBqBzvXu' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "2lRbebDDhFdgCefY", "count": 31, "mmrMax": 0.5117633993866874, "mmrMean": 0.3481454983502573, "mmrMin": 0.6666641237493288, "mmrStdDev": 0.04578747028861008}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'Z60egFadkFxxBGlM' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 73, "party_attributes": {"8qci7Ix9Z1zH5Qr0": {}, "cTSC9yKaHbDCs4mE": {}, "fh8rzoXH4n0QAGCb": {}}, "party_id": "8iCRxOrTMVnhVE95", "party_members": [{"extra_attributes": {"excOOiVrHNwAZiv7": {}, "kgo6js5KtvBYltVA": {}, "0lYbGx6JQq8fhvj7": {}}, "user_id": "kSVaZcemwjZAmO8Z"}, {"extra_attributes": {"xtoWjvprHYybfsAx": {}, "tT9UhdjBqbfU79yH": {}, "RTUwRxb6VEwEtITw": {}}, "user_id": "7BXSP7y4O8MfXrjK"}, {"extra_attributes": {"ASokCvZBoGga5y5J": {}, "shTJWGf9djxojHc6": {}, "12BikF3B40Zv590C": {}}, "user_id": "u91jHBnQSDNfkjfG"}], "ticket_created_at": 85, "ticket_id": "fPRJAScou9OObHTl"}, {"first_ticket_created_at": 69, "party_attributes": {"nTxHILyh6hjeuiy9": {}, "utZgvQhUAoXp1vo6": {}, "x6UMtDUyQVYo8vof": {}}, "party_id": "bhtqKtaBUQMEXMK7", "party_members": [{"extra_attributes": {"dsEFz8L5QIQ1csrl": {}, "iMHfJAsdjYQiSF39": {}, "durvGGlkhGAo9dt8": {}}, "user_id": "cjUbrcU6rmRXhY1y"}, {"extra_attributes": {"w6hEQgfLPKiuvkgW": {}, "NMeqB9NPAKTn628G": {}, "rXNVOMycVtzO2ySv": {}}, "user_id": "4Sc7fPRt4U6bkUQQ"}, {"extra_attributes": {"GVPSYR4Wnxnh5ov9": {}, "ykmUvNIAlFYPKZ91": {}, "e3FOmDxGbpClVuKz": {}}, "user_id": "6VLKKXwG5YouLrK5"}], "ticket_created_at": 14, "ticket_id": "I7LPqa62WfHJCu7K"}, {"first_ticket_created_at": 73, "party_attributes": {"klphQk2FtTDTudzs": {}, "mkCR7FmagbCsRnmT": {}, "wAWddx8qruGZZSro": {}}, "party_id": "A4NZs0W4PVt0A1yi", "party_members": [{"extra_attributes": {"Fuv1xqonDJWceYGP": {}, "kxR0GKeYxN6TYRcH": {}, "zaJRtJoVggHQu2nm": {}}, "user_id": "Vr06Jj6OPE8F252n"}, {"extra_attributes": {"2p9xhWG8FMdmbLUA": {}, "Iqo4LtGG0kWc6QIF": {}, "vNIuWIBdDUJAknxL": {}}, "user_id": "PyDcAZFoeBroPnei"}, {"extra_attributes": {"OQpxWjiuaahV7bKo": {}, "LSsLcmW2KRC3OvFw": {}, "JfijumpiDLb0wjlf": {}}, "user_id": "d6ChKZqRFNJyq2ws"}], "ticket_created_at": 93, "ticket_id": "z2kjdwfl42MkiqvU"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'R1ehySYTivNu3QX2' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 13}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'KkfqxM8OI2rTSDSl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'mQqzSQSv8NA9EIYR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'SU7oW10S5uStRJde' \
    --matchID 'GauVBhuqATtP39Px' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["lvg7FMKxRwxPt7ZB", "1rOxZgtHbGUWdToh", "gS1Q7qK9HAm1TnZf"], "party_id": "rKbXjB0aIVgPSpoP", "user_id": "tpGuWke0zfgFGi9V"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'c0dSLTZuvPsCmMVX' \
    --matchID 'xr2cLSmPxLjADme2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'mQn2H3VDGetHg3eU' \
    --matchID 'qqNLemLo3YIEZpIe' \
    --namespace $AB_NAMESPACE \
    --userID 'xK2PbYczoNONsdxa' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '7PVuxW0YM8e0z2FP' \
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
    --channelName 'OMFfQs1yjiK6A5bX' \
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