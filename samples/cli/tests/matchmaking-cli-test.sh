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
    --limit '81' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "1Mql5djMYwVJouUg", "description": "IkCw14QF5ChfWJMJ", "find_match_timeout_seconds": 69, "game_mode": "1h6Tu6bVOCNIdWxg", "joinable": false, "max_delay_ms": 90, "region_expansion_range_ms": 8, "region_expansion_rate_ms": 60, "region_latency_initial_range_ms": 48, "region_latency_max_ms": 17, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 43, "min": 92, "name": "YcoUlCVKVlrwcjxt"}, {"max": 39, "min": 56, "name": "SKwKvPK0ng2Vua80"}, {"max": 67, "min": 58, "name": "IiOWfMJ1EXgkJvWk"}], [{"max": 19, "min": 63, "name": "WNwcQEjefXMyLqcp"}, {"max": 36, "min": 37, "name": "5SOKwTMqMbMdgdGK"}, {"max": 65, "min": 66, "name": "xMbRH43h5gYpIAm5"}], [{"max": 96, "min": 14, "name": "iZowirxBx2Ldl7FL"}, {"max": 8, "min": 17, "name": "GmirbvkYbFqRNoTK"}, {"max": 45, "min": 16, "name": "TRyDfBqgG5NrESZx"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 27}, "max_number": 29, "min_number": 14, "player_max_number": 86, "player_min_number": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 78, "name": "BmgVzaC2f6RivIB9"}, {"max": 28, "min": 40, "name": "E8bD1OqzRUv5khY0"}, {"max": 29, "min": 50, "name": "t7lw0ECRzY0nviI7"}], [{"max": 62, "min": 45, "name": "tj6bf2fu09dU8RgK"}, {"max": 53, "min": 67, "name": "QZq2IICZUERytzwu"}, {"max": 66, "min": 93, "name": "oZ71KhcKI4raThM9"}], [{"max": 67, "min": 33, "name": "RS3dtVHseppYM2Ul"}, {"max": 56, "min": 40, "name": "ZwveHe2UZVQpJgDz"}, {"max": 22, "min": 41, "name": "OCrbA2UmGVmcumd4"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 31}, "duration": 33, "max_number": 91, "min_number": 90, "player_max_number": 46, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 47, "min": 44, "name": "CU3D5S1KLe2JqlAK"}, {"max": 2, "min": 16, "name": "5LOzBcuCntwgszh9"}, {"max": 14, "min": 13, "name": "pSwqdVJtMjRpTSTY"}], [{"max": 54, "min": 65, "name": "2traZoIGcLaubwjN"}, {"max": 21, "min": 100, "name": "NEM1jayERk9bVZVh"}, {"max": 32, "min": 50, "name": "YvUrhjvhy99t9mqD"}], [{"max": 24, "min": 91, "name": "5SPsTf3PWc9ZeFy9"}, {"max": 41, "min": 39, "name": "X1eWTVFA9qmySaim"}, {"max": 88, "min": 19, "name": "A6zNtl3UWEHrA7P5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 81}, "duration": 100, "max_number": 42, "min_number": 0, "player_max_number": 9, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 60, "min": 30, "name": "TbR5hfTTIGbq0uB7"}, {"max": 84, "min": 70, "name": "DLv4xxBExmOU7aBz"}, {"max": 74, "min": 4, "name": "7J6BUyL6gsxCWXDg"}], [{"max": 9, "min": 68, "name": "AH6IEDzIqPUcSmz6"}, {"max": 55, "min": 21, "name": "BDkDDaejHW3RjGgA"}, {"max": 46, "min": 41, "name": "BUTCwtZQSt66gbeV"}], [{"max": 41, "min": 1, "name": "LwXdRkzsAEaDyZv5"}, {"max": 95, "min": 93, "name": "BOT6yTSirruBOKNe"}, {"max": 40, "min": 58, "name": "36c7H1dwfQsMGrK4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 83}, "duration": 10, "max_number": 17, "min_number": 28, "player_max_number": 8, "player_min_number": 7}], "batch_size": 75, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 13, "flex_flat_step_range": 83, "flex_immunity_count": 71, "flex_range_max": 29, "flex_rate_ms": 100, "flex_step_max": 17, "force_authority_match": true, "initial_step_range": 57, "mmr_max": 63, "mmr_mean": 57, "mmr_min": 13, "mmr_std_dev": 48, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "mVTtkWkJSJSJU3Sj", "criteria": "7FA4kCqoVZeCigKm", "duration": 13, "reference": 0.3630382229340454}, {"attribute": "5YWSLdieSKUXcS7P", "criteria": "218YeTTizK4UQSqO", "duration": 53, "reference": 0.7407950482923953}, {"attribute": "0YhNyT2UW4V0Xz0f", "criteria": "iPuAJwVOpT4dLLgW", "duration": 96, "reference": 0.02501150937948704}], "match_options": {"options": [{"name": "BR0REPltaUfAqsx7", "type": "ucH46DTLIeLCM9Vm"}, {"name": "MFC5GgigxPHPbf5p", "type": "vduXrvmuSxjYQ6Vw"}, {"name": "kqBjFoKgUGb9uZ1y", "type": "yKvRM6XtQ5B9HBH7"}]}, "matching_rule": [{"attribute": "5JY8yqW2tBhdM3tg", "criteria": "7XzonEsZAVDyj7Zp", "reference": 0.7325631467474195}, {"attribute": "jAKpM4j5cYaFNeD5", "criteria": "6ioDxFEMMGq1qHgf", "reference": 0.386892449237797}, {"attribute": "Ia1frhTbTBU2Wm12", "criteria": "3Ahz97nxni3XTa0l", "reference": 0.9620744392485251}], "rebalance_enable": true, "sort_ticket": {"search_result": "random", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "distance", "threshold": 34, "ticket_queue": "none"}, {"search_result": "random", "threshold": 54, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 13, "ticket_queue": "distance"}], "sub_game_modes": {"0qhcX5vPMndRwmkn": {"alliance": {"combination": {"alliances": [[{"max": 11, "min": 76, "name": "jiCZKLmwmzoqwMJ4"}, {"max": 99, "min": 70, "name": "X2kZNzczVpYhPJEt"}, {"max": 37, "min": 12, "name": "WWY2gQCFBHgtGOhJ"}], [{"max": 38, "min": 100, "name": "94x5UUCbw16HsDLd"}, {"max": 92, "min": 61, "name": "FTizwExoOZMOcRLE"}, {"max": 1, "min": 31, "name": "DccwWslkUQ45D84k"}], [{"max": 12, "min": 42, "name": "batr8eioNzXUhxmN"}, {"max": 23, "min": 59, "name": "PBHFjlU1ZQmbHTD6"}, {"max": 22, "min": 43, "name": "pANncTVY5yFNoxVu"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 10}, "max_number": 9, "min_number": 91, "player_max_number": 80, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 94, "name": "n35I6QX8f9vdxVkN"}, {"max": 22, "min": 47, "name": "XJvcqcOmWbkOsfce"}, {"max": 100, "min": 26, "name": "J2aNSw8Iiqxfjbvq"}], [{"max": 37, "min": 39, "name": "Ohcr2DSzWsiEV7Fc"}, {"max": 53, "min": 86, "name": "CKVXEhhaVoWGNBEd"}, {"max": 82, "min": 83, "name": "AKwZkk7GxgfHto1P"}], [{"max": 5, "min": 45, "name": "atc09uBFe6Z3MCYr"}, {"max": 5, "min": 57, "name": "c4NCo4wYJGlXuPDZ"}, {"max": 66, "min": 80, "name": "92nvV64iupbTW9t9"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 56}, "duration": 91, "max_number": 13, "min_number": 31, "player_max_number": 31, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 22, "min": 3, "name": "MaMEcXksCSg99nvF"}, {"max": 69, "min": 18, "name": "WLliXxxZtXsr385m"}, {"max": 30, "min": 39, "name": "XeGwRoS3DqtzoUNG"}], [{"max": 76, "min": 78, "name": "jWMAkBwxbONzLlJt"}, {"max": 80, "min": 58, "name": "FmzHtNb60bk3RGis"}, {"max": 52, "min": 21, "name": "UeFje8ENk5DjKLYR"}], [{"max": 69, "min": 11, "name": "UHSOeOcRAMB1tZAH"}, {"max": 13, "min": 52, "name": "Iu1QUezsmwbrTWAc"}, {"max": 88, "min": 14, "name": "PuWvOflnCI3sqY2g"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 85}, "duration": 2, "max_number": 58, "min_number": 48, "player_max_number": 38, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 96, "min": 97, "name": "QF9CDBYyPmXBDx06"}, {"max": 53, "min": 53, "name": "7GMfzi6bk9EmfyOK"}, {"max": 60, "min": 76, "name": "ieR1Gq6MS5GEZVvC"}], [{"max": 23, "min": 16, "name": "pf4r3W7uNScoXnde"}, {"max": 2, "min": 70, "name": "O7EzMXQl1Orxw5ul"}, {"max": 1, "min": 100, "name": "ZMjlW8lFP2ff9zjo"}], [{"max": 97, "min": 21, "name": "pPxj59oOW8DzberL"}, {"max": 41, "min": 79, "name": "g8vI0PxzWRpQJ2n3"}, {"max": 74, "min": 37, "name": "AovTcvXYkQAKlXOz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 21}, "duration": 49, "max_number": 90, "min_number": 90, "player_max_number": 51, "player_min_number": 82}], "name": "31m9H7OcNyzYvklX"}, "1JjOo4KUNBIpBbum": {"alliance": {"combination": {"alliances": [[{"max": 67, "min": 6, "name": "BxXXj2VoRH7b2y9X"}, {"max": 86, "min": 23, "name": "Mb9HUFqBKYECZUeh"}, {"max": 93, "min": 98, "name": "m17VNeTjOEOQ6H1z"}], [{"max": 74, "min": 68, "name": "q7ZblSaX0rRG6pKb"}, {"max": 44, "min": 85, "name": "lFh2kkwjV1HM47IC"}, {"max": 38, "min": 34, "name": "BBh36fqI2z3lDBlW"}], [{"max": 2, "min": 10, "name": "bIRHukHAO2R61zUo"}, {"max": 31, "min": 63, "name": "9Q7DskIpfP0SwSj7"}, {"max": 33, "min": 67, "name": "ELXVdkIdtHCBeaB6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 10}, "max_number": 56, "min_number": 70, "player_max_number": 96, "player_min_number": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 95, "min": 72, "name": "54akQ1rAU9B2fhy1"}, {"max": 51, "min": 90, "name": "bmCpKZdqaFINmBvW"}, {"max": 88, "min": 62, "name": "uzHagUF4gAS28J3o"}], [{"max": 94, "min": 35, "name": "IcLwfVCP7GL4lpKQ"}, {"max": 6, "min": 75, "name": "4211lFwWZTnOsPP5"}, {"max": 68, "min": 16, "name": "eZw5NZSKSPLby6tg"}], [{"max": 89, "min": 70, "name": "vTRQI6FliaBKewKV"}, {"max": 8, "min": 32, "name": "ZSwf7Nitb4ARwfbs"}, {"max": 36, "min": 61, "name": "sxUBjRqUgLE776MC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 62}, "duration": 19, "max_number": 13, "min_number": 8, "player_max_number": 66, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 57, "min": 2, "name": "K9RU9k6ONtALAny7"}, {"max": 32, "min": 62, "name": "mR296y7XmC60xt8x"}, {"max": 57, "min": 44, "name": "998Z3cpiLKs3AkPu"}], [{"max": 55, "min": 7, "name": "cPUwhPfzSdLbTW34"}, {"max": 89, "min": 15, "name": "73nOk5NlJJLBwn9B"}, {"max": 40, "min": 27, "name": "z5Ll6fXhQvju5lBN"}], [{"max": 42, "min": 74, "name": "ZsO6OjCM6JiezC12"}, {"max": 32, "min": 62, "name": "Fh4BAthsbtN4yPDM"}, {"max": 18, "min": 11, "name": "pacYd2vpgB0OJ46w"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 43}, "duration": 14, "max_number": 56, "min_number": 65, "player_max_number": 84, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 0, "min": 28, "name": "JcciksqkUxo2Bnp8"}, {"max": 27, "min": 50, "name": "1vUHZSG1rKxEJ0O0"}, {"max": 97, "min": 32, "name": "BePvdDLC4anQ3QBh"}], [{"max": 29, "min": 46, "name": "j0bUwXZwcsEGsH7g"}, {"max": 24, "min": 78, "name": "ohBY98U7lAzLXimf"}, {"max": 74, "min": 49, "name": "xsLebH0r4WFMjM8T"}], [{"max": 3, "min": 2, "name": "8MvHCBAoAV4rK7IU"}, {"max": 47, "min": 100, "name": "reQCNOYM6qx44e66"}, {"max": 46, "min": 22, "name": "wj64KDL9uW3UeVpW"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 17}, "duration": 71, "max_number": 29, "min_number": 33, "player_max_number": 76, "player_min_number": 77}], "name": "RcizYvf49VOfFQWF"}, "ksFfDJKL3zxOnfcc": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 84, "name": "kcw9xBShOnaG4y1W"}, {"max": 91, "min": 21, "name": "lrjiZKn4oxF1FNXx"}, {"max": 69, "min": 32, "name": "MmV7SigNL3iEPuwx"}], [{"max": 72, "min": 100, "name": "OjzJNXIpmLo2PKBq"}, {"max": 66, "min": 30, "name": "T9stM6CiPBAxgIgX"}, {"max": 83, "min": 96, "name": "SwrluBjsbwcAcpva"}], [{"max": 77, "min": 11, "name": "xiEuZW4faUhvsDGU"}, {"max": 7, "min": 34, "name": "xeKPgu0P6RYfuGSv"}, {"max": 20, "min": 89, "name": "KTmMwTrK1OYgSkfS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 22}, "max_number": 28, "min_number": 10, "player_max_number": 15, "player_min_number": 52}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 87, "min": 29, "name": "SoP83etBJhlEVeSr"}, {"max": 61, "min": 97, "name": "H3KFRefhyVQojfYK"}, {"max": 32, "min": 15, "name": "o23sEEVs6lkp3zfL"}], [{"max": 84, "min": 33, "name": "Q4DfnJYIvFnsPfd9"}, {"max": 56, "min": 81, "name": "p2co4dnKFEJXmIK4"}, {"max": 47, "min": 6, "name": "zYzwpWB5HGpYmzeP"}], [{"max": 49, "min": 42, "name": "g68SpMCpnhgN3GV9"}, {"max": 56, "min": 44, "name": "nCxJK0xlEDhhZjDv"}, {"max": 65, "min": 24, "name": "aSl9y97xWEefpmwo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 15}, "duration": 45, "max_number": 78, "min_number": 96, "player_max_number": 49, "player_min_number": 48}, {"combination": {"alliances": [[{"max": 3, "min": 8, "name": "1ptbCDH0to8pjOzZ"}, {"max": 66, "min": 24, "name": "WW5uw2bDDy848eDn"}, {"max": 98, "min": 76, "name": "chn8O1m0MlH7oIPU"}], [{"max": 35, "min": 94, "name": "4y84vHsgyCEybo2E"}, {"max": 19, "min": 51, "name": "4m6O3vukeDPIGFYy"}, {"max": 39, "min": 9, "name": "ooPF4b9Bw6xkpieS"}], [{"max": 11, "min": 66, "name": "679XJPu0IPgBF8hs"}, {"max": 89, "min": 65, "name": "HJ8CI8PLg9HGP3BU"}, {"max": 46, "min": 76, "name": "cEpV07OroGmEwOSA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 61}, "duration": 87, "max_number": 46, "min_number": 28, "player_max_number": 38, "player_min_number": 90}, {"combination": {"alliances": [[{"max": 59, "min": 55, "name": "Q6BZrvXJsegvVa13"}, {"max": 35, "min": 70, "name": "tkuFGzzqnSCWPb6n"}, {"max": 93, "min": 30, "name": "4cTOrvYCmEAEj1Wv"}], [{"max": 49, "min": 14, "name": "7o3ZTgrZnk31FVm8"}, {"max": 3, "min": 70, "name": "Z8pDtac6xEvOI2MH"}, {"max": 84, "min": 38, "name": "bkTlolyHZ7QiQ8dZ"}], [{"max": 35, "min": 71, "name": "Ew23NabfX4y1eArq"}, {"max": 13, "min": 72, "name": "9HH0pxnqejzrCOzK"}, {"max": 99, "min": 0, "name": "TwCldx2TNolxbtfu"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 23}, "duration": 17, "max_number": 67, "min_number": 37, "player_max_number": 58, "player_min_number": 93}], "name": "Q2xxuYIDpfxJ6M4k"}}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 98}, {"selection": "random", "threshold": 16}, {"selection": "newest", "threshold": 58}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 44, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'FuEAqk02oLlnB0Ak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'wTaFY5MbGl9MEinE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "xEhkwK9y06RUwZ6R", "players": [{"results": [{"attribute": "kBIG5dWyxw3mPGnf", "value": 0.3492007564096623}, {"attribute": "uRCPIrv2OSFO447T", "value": 0.9092074472160904}, {"attribute": "KyU7IQBo3iOLDWxI", "value": 0.9441747141786359}], "user_id": "gZjY3bpCfu4XcEWC"}, {"results": [{"attribute": "rbiYb8beT81OScqT", "value": 0.3296041043089154}, {"attribute": "amtaIeK46y1QqRy1", "value": 0.7951138987976885}, {"attribute": "9zHaxh6LSbqI7aHW", "value": 0.21093053051162824}], "user_id": "KZnRY1JchaI7Ym6u"}, {"results": [{"attribute": "17Nc673SBkjR6Llx", "value": 0.09702213579220809}, {"attribute": "f0LijhXTgIe2Tx80", "value": 0.16941290101429352}, {"attribute": "sNtkYXuPBRt7wyIH", "value": 0.6455152938642902}], "user_id": "RZFTFbprDhmZMJu9"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "ZCFEAHtlAwlan9Up"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "t7GdgZ0oirSl3VP4", "client_version": "OLNkrvI3i5EJGjS7", "deployment": "sqsupFsDEbUpHy7b", "error_code": 40, "error_message": "3R6INbc8s4ypj2AE", "game_mode": "AkERJoHFuBls7IZj", "is_mock": "3mvgyuhQDYXWfqjk", "joinable": false, "match_id": "29ACb709iTh8ou5T", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 88, "party_attributes": {"Jc0WpjGZZoXvXvpm": {}, "E9Gd1t5ERvZVwc4S": {}, "1y3Xn171n4xJj89q": {}}, "party_id": "fbzWaKQcixtkdJaB", "party_members": [{"extra_attributes": {"WuMl4eRqAVYMXnHz": {}, "sS1arkoI9EMwUpFG": {}, "0jORaUPe3nZxNF65": {}}, "user_id": "ZC1FW7NbDbOn6dmL"}, {"extra_attributes": {"iuqW8bHfX5Q9QFNm": {}, "GuTQPOn7G3IVcHXk": {}, "UvzXlNtUy9RPcUbY": {}}, "user_id": "euGLo3YMlRbEqDif"}, {"extra_attributes": {"8YVBjqHRwYuFi4tf": {}, "l67tZtLLbzgjynRt": {}, "phwQwuA7vn9uryl8": {}}, "user_id": "X0w6ipzAhT4tdIZ9"}], "ticket_created_at": 65, "ticket_id": "WZUuhSGJtG8LHAuj"}, {"first_ticket_created_at": 17, "party_attributes": {"xBYl3whKO7CFUXD7": {}, "tCKgUdoCTduIyZGX": {}, "wnkbjdxGWDU7hle6": {}}, "party_id": "y5mXvqSx22OaK3BX", "party_members": [{"extra_attributes": {"FWJ2lNhsjza97Ba0": {}, "CksMLSICvQLvN3Vm": {}, "Oy1RZQEpXN7gYVkx": {}}, "user_id": "8sLnHKVE6R4j31cO"}, {"extra_attributes": {"2LeEEhoB4NgR7JVV": {}, "UJw6T7B1MzgQqNSF": {}, "V5WUbn0UIAmC0P1z": {}}, "user_id": "2GO5jR47iulsBazk"}, {"extra_attributes": {"kR2qpW6hZnePSNpN": {}, "cqfA5U98fqORUx4B": {}, "BgdmCQmxqouyLvkS": {}}, "user_id": "Z2XYC7zNHgGWMd96"}], "ticket_created_at": 65, "ticket_id": "yVPHaoOqYl1tVjeN"}, {"first_ticket_created_at": 77, "party_attributes": {"hf39yoyBvHm69WNg": {}, "RAWQwLZQnrbNHCxh": {}, "N1bIqr2AOeLFzJw6": {}}, "party_id": "7NQOwjcxjdLRcSsS", "party_members": [{"extra_attributes": {"3k0UjecR3zotHnRX": {}, "1JWG1Jicl8oPECYg": {}, "1VFCzUPYcZlu1lIo": {}}, "user_id": "JMQQvRqlTsOONYb9"}, {"extra_attributes": {"q8PfRcnzMS1sAoom": {}, "invq1Kha7N3KFq0S": {}, "vJuRxu450JEkdTmH": {}}, "user_id": "0VSaPpN3jajQTvUW"}, {"extra_attributes": {"zC1ldakN2KcISom5": {}, "Pq9ug9mXTLOOQKCP": {}, "OSWgo7kcWfqd4nOb": {}}, "user_id": "XOnmJzV9PklnnkUg"}], "ticket_created_at": 82, "ticket_id": "Z6SFWtBFMNIeZUnb"}]}, {"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"E5GDFfDukHzvekba": {}, "rsXleZW9eily7zkO": {}, "mxsiphxJSyvQo20p": {}}, "party_id": "yHHvQDjXc4SdRiF8", "party_members": [{"extra_attributes": {"Au538J97aArjvNhl": {}, "2IhyLJGSgpfYUSu8": {}, "24VlHZKby8hPasjy": {}}, "user_id": "O1JsmUi5fWFcvto6"}, {"extra_attributes": {"oWbw1nRaTCvLGPbh": {}, "LcLhympFrH6azb5e": {}, "iNWWlq2WFzpAw4F8": {}}, "user_id": "BrwDDv8B1rPgPkAA"}, {"extra_attributes": {"2RSDiZ2vB0CqUTFS": {}, "jLxZtI521au5Y4Mk": {}, "3xiOQG8AhSQWaZqC": {}}, "user_id": "EUiI2HU0BDqucRNr"}], "ticket_created_at": 75, "ticket_id": "dHKhudMDpiSrAIlk"}, {"first_ticket_created_at": 47, "party_attributes": {"eQZDYs7Cxq0Z8Iz3": {}, "maIWdXI2do7FdjyV": {}, "MNJIncN42vwXTXzn": {}}, "party_id": "Rqxm2K0rCOnDVeEN", "party_members": [{"extra_attributes": {"lOZ3rhNKU2GoFLvL": {}, "hgiwcgIMsmWxNqd5": {}, "cHMgPMSIaD6uBkxU": {}}, "user_id": "GRDPJQFCg28T5Z15"}, {"extra_attributes": {"J2082IEg8ifk7vu8": {}, "dp1c0fmq87Lb8eU6": {}, "fx5ldW9YtTVXzK5Z": {}}, "user_id": "3K6Mlq3ZOmdXIRK2"}, {"extra_attributes": {"P2SemSrimDEB0ZaR": {}, "dj4NVDmqSkwUNMzR": {}, "mXFr3rxYAd9eGBkn": {}}, "user_id": "blY8Ba7SxLRyB2wu"}], "ticket_created_at": 83, "ticket_id": "YLUQINUKmDRPWOSZ"}, {"first_ticket_created_at": 46, "party_attributes": {"ITSwXplkGKp8IIpf": {}, "1qECGgmxELh4fywu": {}, "brbRV8VYsAosidNV": {}}, "party_id": "b0GoVIArdUwSVp7s", "party_members": [{"extra_attributes": {"P35pkmFkqzdNKPQP": {}, "FoCimSRXHiUqQcZv": {}, "MSzBwYSungyCnuo8": {}}, "user_id": "6Xr259DUnKvpyy4F"}, {"extra_attributes": {"HJfwXlQQIYPouEpP": {}, "BXxdv2lKY8rDUaIn": {}, "CVbnSE6g8b81jdcM": {}}, "user_id": "kLMkULq2HAQLbftC"}, {"extra_attributes": {"dQ9vvwZ5kFZYq5TQ": {}, "fQCL2PVxzpuIJOI2": {}, "CbYHHXQDaEfLYYmv": {}}, "user_id": "XU2QaU2otZP7lgUL"}], "ticket_created_at": 87, "ticket_id": "DPnKNuOFZIfInI9I"}]}, {"matching_parties": [{"first_ticket_created_at": 76, "party_attributes": {"mK3pvqLQhRzX2vIr": {}, "YiIfaJ9EmDpxc1mz": {}, "OkjMnse7TCegFroN": {}}, "party_id": "j3smUI8WMdS6jwaR", "party_members": [{"extra_attributes": {"JW0oqhiLk9wSxVpP": {}, "sRsM7mmi2EIVF1fD": {}, "c3mE4JXFU2DMa53U": {}}, "user_id": "shNdgE6byvCiz7un"}, {"extra_attributes": {"ZcxPXdotNb5jpXD0": {}, "gsCL04PXsoKrfiSC": {}, "eogqzZNIkhXS0E9t": {}}, "user_id": "yRKekqcxNOiHPpJT"}, {"extra_attributes": {"f2DjkzPwnnIOqaFk": {}, "LkBIJz8t963ypPYy": {}, "XGwaRoNftaVQW4by": {}}, "user_id": "1bWgTvdJzMe0ezuj"}], "ticket_created_at": 91, "ticket_id": "Up0z4HzXLteK8YKW"}, {"first_ticket_created_at": 51, "party_attributes": {"rn2TdgSSr8k0XAdB": {}, "1oom5FbppxLNYiEg": {}, "eqbJvtb0BThwQTzC": {}}, "party_id": "RWvT66zrz1UmuZwZ", "party_members": [{"extra_attributes": {"rxDwHLH2XEx4VL6I": {}, "ta3bsDzyglW4KpnW": {}, "5cs9DKo9Dyu3fNsP": {}}, "user_id": "lebjMnPPBUewZDaI"}, {"extra_attributes": {"fobYCz8ovQZXiPbF": {}, "diKLkLnVo3z7kU0l": {}, "iYIAhxwVcJbc781b": {}}, "user_id": "mOId9fU0TGsEWdPq"}, {"extra_attributes": {"DdWPE0JLmdiXi8ND": {}, "hmYFeCHKbndDr9M6": {}, "kHHJaHwsNdHsbGB3": {}}, "user_id": "acDNSDvwbY2CBJwM"}], "ticket_created_at": 85, "ticket_id": "hCe6kxvN3AHN4Vvq"}, {"first_ticket_created_at": 86, "party_attributes": {"lkcliFu8amCPWdr0": {}, "S48YOV6F2AWs2nff": {}, "rAW0EBGsfhkdAFtp": {}}, "party_id": "KmnkjJFQF0TbhzOe", "party_members": [{"extra_attributes": {"QRyvgbLJBbuRX1bo": {}, "hZwwMFkwi7BOqAQR": {}, "6jVZ2J10KLBySNOh": {}}, "user_id": "wimOBCWnOjL7RzqF"}, {"extra_attributes": {"u9JkeCf6QFeihYic": {}, "3cwTAv4y4XTqlquD": {}, "t0tJYpqyqE9VAzYE": {}}, "user_id": "2aoeYcVpDu7t2dhk"}, {"extra_attributes": {"wa5GE1XXqdcSYkyw": {}, "egekvWWYaQ2acVSv": {}, "fApCMz13ipoHblQR": {}}, "user_id": "CNOM9zBXR6YTvjmt"}], "ticket_created_at": 6, "ticket_id": "mF8a7wwCnmmuENd4"}]}], "namespace": "TcRKvz7NGU9AJULp", "party_attributes": {"fRFJeIrzNFaZImDg": {}, "Lnv1QeX7bjDetv5U": {}, "r0IYuqfNXfVznaal": {}}, "party_id": "chaYAbMcWcvPbCFo", "queued_at": 55, "region": "nLxvtdWi5QuldPZJ", "server_name": "fQRq8BmluKRgmnQk", "status": "RLG3eVKZnZBkLZPp", "ticket_id": "wjmpgkm073J22egB", "ticket_ids": ["Aaqf6MtkIaluWYXd", "I6QQCAOORJxfNR8s", "iU9Aq6DK8aEtMXAt"], "updated_at": "1984-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kxLcUXMNi74xgkYV"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'g9Oiki6DTUZmROPF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 76, "userID": "0pOiIML9ywLy1nxM", "weight": 0.011185611244919014}' \
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
    --matchIDs 'IYRfIRYCoqixx7Bp' \
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
    --strategy '1b5Zm8DqUd4f080Y' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'vaEPsXBXWGYenE55' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'XEPzCOgOFkLWrQYZ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "aaU8BaUkf34UAA6s", "description": "Fs2SgdMXOve2plH3", "findMatchTimeoutSeconds": 58, "joinable": false, "max_delay_ms": 33, "region_expansion_range_ms": 51, "region_expansion_rate_ms": 17, "region_latency_initial_range_ms": 96, "region_latency_max_ms": 31, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 91, "min": 98, "name": "eApYvcFU6PYQAVkH"}, {"max": 29, "min": 87, "name": "pMXSLFcPc5r08jx2"}, {"max": 38, "min": 57, "name": "keMzObsIJjz0TdSW"}], [{"max": 28, "min": 63, "name": "4VR1vNxspySv3Yab"}, {"max": 25, "min": 33, "name": "7ipoP6JlLazl16h1"}, {"max": 76, "min": 19, "name": "snsJl1Rz4ozcgCJ2"}], [{"max": 86, "min": 82, "name": "Z9MGsPXxK3gSN8fl"}, {"max": 14, "min": 6, "name": "HX0Z44unWuRQBkpY"}, {"max": 82, "min": 84, "name": "Ofeqh2wX13v5B9jW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 36}, "maxNumber": 81, "minNumber": 90, "playerMaxNumber": 47, "playerMinNumber": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 43, "min": 29, "name": "5T9RTkoGJNR9IIhy"}, {"max": 86, "min": 73, "name": "C1qTDDaV2VBEakKM"}, {"max": 43, "min": 32, "name": "UeWjVrnj9eJs0SLe"}], [{"max": 6, "min": 36, "name": "gGrunprx5cPOmEiG"}, {"max": 51, "min": 9, "name": "Y1E8CTRdQZ8dBwq1"}, {"max": 38, "min": 30, "name": "h589QEAgZibsiCdE"}], [{"max": 98, "min": 68, "name": "QYyVAdCsh4nru601"}, {"max": 6, "min": 7, "name": "UWUDVOn339xSY983"}, {"max": 13, "min": 3, "name": "q6M26Mya8I8fmEwt"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 70}, "duration": 71, "max_number": 33, "min_number": 32, "player_max_number": 80, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 15, "min": 86, "name": "2w3wk0UCnZem3gdc"}, {"max": 66, "min": 83, "name": "5TF5NLhMf6Qb15z1"}, {"max": 47, "min": 34, "name": "Xj1GWQJxTBoAj9BA"}], [{"max": 93, "min": 99, "name": "U69IeyzSocyKBMmX"}, {"max": 96, "min": 65, "name": "6pH9pu9WRdynaq2d"}, {"max": 74, "min": 1, "name": "VgJY4OmwVjkuaXzu"}], [{"max": 70, "min": 84, "name": "VylhN80TYl4CfsSk"}, {"max": 78, "min": 29, "name": "s0rUb42abbqCjqCJ"}, {"max": 29, "min": 34, "name": "UUeWSbwpXjjTNVFt"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 99}, "duration": 35, "max_number": 96, "min_number": 38, "player_max_number": 89, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 70, "min": 0, "name": "OTEAOaGabCeJ4AeN"}, {"max": 46, "min": 3, "name": "3VvS7Adx3Ots2R5b"}, {"max": 21, "min": 92, "name": "ZxTeO3mYLo6fbSUe"}], [{"max": 19, "min": 40, "name": "RWm4AYoBdnMRu6pU"}, {"max": 92, "min": 78, "name": "zd5Wv6fSI2AuOdLc"}, {"max": 32, "min": 24, "name": "lFkKdaS7V1xBGfWU"}], [{"max": 17, "min": 48, "name": "VfFXhNNGItGKj3fR"}, {"max": 25, "min": 93, "name": "tSi5ydVj3UHqvIS1"}, {"max": 94, "min": 66, "name": "LayCrXk3ZuNveAsn"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 100}, "duration": 84, "max_number": 81, "min_number": 6, "player_max_number": 5, "player_min_number": 43}], "batch_size": 21, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 72, "flex_flat_step_range": 91, "flex_immunity_count": 11, "flex_range_max": 38, "flex_rate_ms": 18, "flex_step_max": 10, "force_authority_match": false, "initial_step_range": 3, "mmr_max": 62, "mmr_mean": 31, "mmr_min": 28, "mmr_std_dev": 78, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "zR6LiuALQ0RreBtc", "criteria": "m01ANToyeCW4hmMg", "duration": 81, "reference": 0.36280546846177264}, {"attribute": "AIdhFMo0K0V3vDcO", "criteria": "5GC6nxgO5NZD4TzJ", "duration": 50, "reference": 0.9754403475080232}, {"attribute": "EQDumoLDXnQC1Q5D", "criteria": "agQD5gVvlLowy37G", "duration": 94, "reference": 0.5260606669352048}], "match_options": {"options": [{"name": "KHPjG2Ih9IGGcgCE", "type": "liwF17xr4VMMWJXR"}, {"name": "WRJY8qy8Fs0Lcvea", "type": "5jkRj9Cvgu0OEjfR"}, {"name": "nfKtEWekfcJVlsZK", "type": "2Tlc3lM17D2QyEDq"}]}, "matchingRules": [{"attribute": "tk6sONhwVxejVlDI", "criteria": "QZiaEFZZPc9Kxcok", "reference": 0.3983756765416525}, {"attribute": "ETptnqISp63313Rb", "criteria": "tMBKsriUpqX75HXD", "reference": 0.46099775584306524}, {"attribute": "L853zF5PDd1QLtgN", "criteria": "jM3Eaqs6sU0xk3xs", "reference": 0.8063035380453899}], "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 76, "ticket_queue": "largestPartySize"}, {"search_result": "largestPartySize", "threshold": 93, "ticket_queue": "distance"}, {"search_result": "none", "threshold": 3, "ticket_queue": "random"}], "sub_game_modes": {}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 46}, {"selection": "oldest", "threshold": 69}, {"selection": "oldest", "threshold": 60}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 16, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'wHylNhvTxR1saMGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '34BctxfjZ392XhSp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'zRt4ut4JOdSL1UaH' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 91}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'CHOLFcfEWqZXan1M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'jeZXQXzLaIVTbsgB' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "VDp2BXHSbukweNm1", "count": 82, "mmrMax": 0.656364550775899, "mmrMean": 0.5886629681530605, "mmrMin": 0.3343293996187068, "mmrStdDev": 0.16705121688469526}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '1hj0dDvS0VrSvSCJ' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 44, "party_attributes": {"QYTFIvaN5NbxC8bS": {}, "khvZKlgp6wpLTQOX": {}, "YJNNfdvVngVUwMsK": {}}, "party_id": "vgPlPqpWcQMlgLEq", "party_members": [{"extra_attributes": {"qwl4p1HtN2zkPz7p": {}, "BOY4IHCB4zLTyE9M": {}, "LiLDv9QpFYq6napz": {}}, "user_id": "K0x1TiZ4MthtlBva"}, {"extra_attributes": {"ynxXUX9uHOtTavNo": {}, "crAYfU6A3SUwYsQn": {}, "pLMUON2ajqEw1S8m": {}}, "user_id": "YXBx4f1mWoE1J6WO"}, {"extra_attributes": {"Hfu1OcLAcSTAbipE": {}, "UhiqjHdHx3bdnfsE": {}, "aKEpmgSl33UjXReK": {}}, "user_id": "bZNhOfJhF3vX3kAg"}], "ticket_created_at": 77, "ticket_id": "IUQZbD5pfwewZjw3"}, {"first_ticket_created_at": 8, "party_attributes": {"xuBymvxg0t8uVTZ4": {}, "EA8g7hx17i4cpfxm": {}, "oLkSqOv0W7WMqFEt": {}}, "party_id": "ro6aBhWnhpr4bnSr", "party_members": [{"extra_attributes": {"Gp1jBerx9RWYk6sR": {}, "71Z2APmqbDveZ0nn": {}, "4fSGNdLpMKqnViAC": {}}, "user_id": "fcNFOO7nuLPuhC78"}, {"extra_attributes": {"DCbZ2OrGVQMLJXks": {}, "YQBkojdIjMQBtldn": {}, "HwTSRppTnsfFZVQ1": {}}, "user_id": "3K7J4ZL5o0zoXfzi"}, {"extra_attributes": {"ZXNKDnsb7xny5eVm": {}, "mZRizyztBltOHT7E": {}, "ddTSuPUbik4ixNdi": {}}, "user_id": "41Tr7Bl7S7oLkNWa"}], "ticket_created_at": 19, "ticket_id": "ROmOhAGIyI2XJ5Nd"}, {"first_ticket_created_at": 65, "party_attributes": {"V7AJC53pzfBO6Eeb": {}, "F7dR9bwRehuAOIXm": {}, "2uASvWqG9mAViR30": {}}, "party_id": "K0dysBQxpBkMnCv5", "party_members": [{"extra_attributes": {"g1HKPexmClAeRzTO": {}, "6298wczQ6sWB6G28": {}, "LHYNric10KboZvch": {}}, "user_id": "1qPsIZgnycSjOd0n"}, {"extra_attributes": {"aolICrZRvoLiOGZc": {}, "KEPJ0EPAvceVpv9p": {}, "vXCMPHbq5HHx6P4C": {}}, "user_id": "7Z5ASIapmBaCPpki"}, {"extra_attributes": {"pKs8m1G6A5Y0j14I": {}, "k2WcRPhyXMcWfXdw": {}, "PDCJEe8girCW5GQv": {}}, "user_id": "idT85OiR9dwzzFkU"}], "ticket_created_at": 46, "ticket_id": "nrl5LxNWDkfg7c0F"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'gRvEn1w04Hes5i1a' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 70}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'VlaFek2EznapQip0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'qnyccowdxRPN3WI2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'FXEKRDiL3lA4sCKa' \
    --matchID 'ZUWgcvlzDY9MvkHa' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["ZkoFukVMMHXm7rvd", "5xNXUsFzbtYxDffU", "tkNkL37D7V1BDJca"], "party_id": "Ip29nlkIQyT3tuBV", "user_id": "4nzcQjMs80sSvO3P"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'IWS6bKY9yEXxwKFT' \
    --matchID 'idzgEdLRA8jbfyuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '9WaB8MTbGHtrwfYI' \
    --matchID 'BJbfTGGi19q6wdNV' \
    --namespace $AB_NAMESPACE \
    --userID 'XH6s13WYZ5sSQ89p' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'qXZGa2ve6kk6kgeL' \
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
    --channelName 'TYdfBxzE9kJ2zMDg' \
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