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
    --limit '24' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "fgy9RBemYBNwWevo", "description": "HiDQv6agnaAtrya7", "find_match_timeout_seconds": 32, "game_mode": "eN4v68Zg9gc7562S", "joinable": false, "max_delay_ms": 51, "region_expansion_range_ms": 7, "region_expansion_rate_ms": 44, "region_latency_initial_range_ms": 37, "region_latency_max_ms": 32, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 51, "min": 0, "name": "GL2DqJPaTvwIW5bk"}, {"max": 97, "min": 78, "name": "W5XMoQ6Tv4Jdhydq"}, {"max": 54, "min": 33, "name": "ZvGgIFXzz22oPgot"}], [{"max": 19, "min": 30, "name": "OQ3X1dkBfK8knBIM"}, {"max": 99, "min": 70, "name": "NNRmApT2GNgfqrtZ"}, {"max": 27, "min": 25, "name": "CW8cPCklSnBbcSiJ"}], [{"max": 8, "min": 93, "name": "CWSYJacxeTyx4TIR"}, {"max": 10, "min": 53, "name": "O5LpxjN9DsM77LIJ"}, {"max": 83, "min": 23, "name": "hBsoRYLl23cs7mMj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 59}, "max_number": 62, "min_number": 48, "player_max_number": 93, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 6, "min": 93, "name": "20IzvQLwnUf3L4Bv"}, {"max": 48, "min": 13, "name": "NJmsDSqYNV0Y3toH"}, {"max": 63, "min": 20, "name": "7wuY7pcoVESm95Km"}], [{"max": 100, "min": 61, "name": "m8ilvM3CCLiSHl9J"}, {"max": 36, "min": 96, "name": "HkfthbEG6LmKTVgg"}, {"max": 37, "min": 17, "name": "SNlzGYW3ZVdL0Ax7"}], [{"max": 68, "min": 76, "name": "n9B5TSpqEfsEOEK5"}, {"max": 99, "min": 74, "name": "o1qJrWHTIjKh1C5j"}, {"max": 59, "min": 7, "name": "xUVbl0GiA7dF5l4t"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 24}, "duration": 29, "max_number": 92, "min_number": 54, "player_max_number": 27, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 71, "min": 21, "name": "p4nuQD3ADNuRq370"}, {"max": 47, "min": 70, "name": "UhsUhyUe2UsHFwM3"}, {"max": 17, "min": 32, "name": "f1fAdAelwg4b10fV"}], [{"max": 4, "min": 75, "name": "FN8nC33guuXJzjmD"}, {"max": 18, "min": 97, "name": "Z2aZKUlKt0JKY9Sc"}, {"max": 62, "min": 75, "name": "QPvdLC112Y4nGt4Z"}], [{"max": 4, "min": 82, "name": "QdJjbZ8H0UCj9LTH"}, {"max": 64, "min": 61, "name": "8mFwxZektUNlYakB"}, {"max": 16, "min": 25, "name": "aIH9N6mpNzPt7VZx"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 75}, "duration": 32, "max_number": 55, "min_number": 28, "player_max_number": 39, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 78, "min": 8, "name": "Esmq1q7gRlE7ZsDm"}, {"max": 91, "min": 49, "name": "zvgVZGU6KnThdefB"}, {"max": 57, "min": 38, "name": "Rn5Zt4hTaVbWbUQu"}], [{"max": 44, "min": 52, "name": "10uREuC1E594SmZw"}, {"max": 80, "min": 69, "name": "ikK5dnKOZnxbuWgu"}, {"max": 5, "min": 68, "name": "vkUxgKSL7Za7pZvG"}], [{"max": 76, "min": 30, "name": "7CJ4zgRu4CFwlgow"}, {"max": 60, "min": 29, "name": "OTso5pL6BBt9H8Wg"}, {"max": 81, "min": 74, "name": "rW2FmARzIniJudSJ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 75}, "duration": 83, "max_number": 10, "min_number": 87, "player_max_number": 9, "player_min_number": 91}], "batch_size": 53, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 59, "flex_flat_step_range": 72, "flex_immunity_count": 94, "flex_range_max": 29, "flex_rate_ms": 31, "flex_step_max": 46, "force_authority_match": true, "initial_step_range": 70, "mmr_max": 49, "mmr_mean": 1, "mmr_min": 91, "mmr_std_dev": 38, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "gmEJhvIEzgFCNUF5", "criteria": "VVU6RJi7i0ZcSSiD", "duration": 70, "reference": 0.8492068367073403}, {"attribute": "uzSswrWC2Hyw6OnF", "criteria": "bltQAeK5Sc8eQ4kP", "duration": 89, "reference": 0.47982765607486044}, {"attribute": "vQ9shM9ebQ9aF87l", "criteria": "jkAlTqTIY8FmGWxR", "duration": 7, "reference": 0.3880582185957243}], "match_options": {"options": [{"name": "MaqQIjhiSj0mRZHL", "type": "GOn2RI8IpcG9OQPB"}, {"name": "kJOGSflssKucYIM4", "type": "UKr5W88eKoUkhqbr"}, {"name": "hvuiw7nHDIqa7ZnQ", "type": "H9QMN1T5GNtdKIou"}]}, "matching_rule": [{"attribute": "ooQ7BeqsDGxW8VTP", "criteria": "brAJF6WugmlMPTD6", "reference": 0.9621912022862453}, {"attribute": "1iaCGITBeiIXHJh1", "criteria": "9BuUcO93u9TKQ9Ym", "reference": 0.8487431152378889}, {"attribute": "xeVSSXbDUbztqsGP", "criteria": "a2WEC51gKiIdhAsY", "reference": 0.008714573175707896}], "rebalance_enable": true, "sort_ticket": {"search_result": "evHmpBV2z8S1Mabt", "ticket_queue": "rydRT1LOTkVQkb2f"}, "sort_tickets": [{"search_result": "l1M06rDi1QauaTkK", "threshold": 20, "ticket_queue": "uqFz17PV9tQYFeXy"}, {"search_result": "R6FMiZF8Lg7gaRq5", "threshold": 94, "ticket_queue": "OtunZmxWHfewgbzQ"}, {"search_result": "FgJv37658m7Y52lf", "threshold": 74, "ticket_queue": "BLiqYZIcWfd6l2aH"}], "sub_game_modes": {"7iuAor0eIzyGTGa9": {"alliance": {"combination": {"alliances": [[{"max": 4, "min": 71, "name": "ENsCt85KtRiZWeZ6"}, {"max": 30, "min": 54, "name": "QlzL0Wmuk2NEoHXn"}, {"max": 43, "min": 71, "name": "t8TRcNPu1V74Q4cl"}], [{"max": 97, "min": 35, "name": "iRZN9vF0Kp9XKwTg"}, {"max": 8, "min": 84, "name": "UchTQXQkttOZlmXT"}, {"max": 12, "min": 59, "name": "8UiiK953cAzrTwi5"}], [{"max": 55, "min": 97, "name": "cBi6SkMqsZjvb0TA"}, {"max": 27, "min": 54, "name": "8lCysgr8D9rk4zhh"}, {"max": 94, "min": 96, "name": "7B1eZsvQeIHXE6Mz"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 89}, "max_number": 19, "min_number": 65, "player_max_number": 5, "player_min_number": 9}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 56, "min": 76, "name": "c3udPZcLW156kLwK"}, {"max": 24, "min": 93, "name": "NxAdiBUSqeCEmcIb"}, {"max": 62, "min": 44, "name": "shZAvixRAm5Tu5i0"}], [{"max": 54, "min": 38, "name": "lsgsUiEOOz2Xt26m"}, {"max": 37, "min": 71, "name": "Mt9W68SqdB6IHhFr"}, {"max": 72, "min": 19, "name": "9AkZMjb7p7XLdNHb"}], [{"max": 80, "min": 43, "name": "jq437Aakw0xNokhN"}, {"max": 34, "min": 81, "name": "p0nc9d2f8kqKxmnI"}, {"max": 8, "min": 85, "name": "1wz8gKCLXJxocGi0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 1}, "duration": 80, "max_number": 52, "min_number": 6, "player_max_number": 38, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 16, "min": 34, "name": "zclPGBjIs3uqq7Vr"}, {"max": 68, "min": 20, "name": "uW3ceF0dXjHHTZvk"}, {"max": 3, "min": 21, "name": "9PPWvoASYZkpISWG"}], [{"max": 82, "min": 26, "name": "Q2Cu5nVe6iYMhqOj"}, {"max": 50, "min": 7, "name": "e1bKed8ImkWvMgha"}, {"max": 39, "min": 19, "name": "oifJccle8XJcIbRI"}], [{"max": 38, "min": 72, "name": "Bb1Lu4NHNme8ja8C"}, {"max": 56, "min": 68, "name": "M6abyUEmYqNxo1Ml"}, {"max": 8, "min": 20, "name": "toIT5nef9dZkvi0H"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 81}, "duration": 96, "max_number": 0, "min_number": 83, "player_max_number": 70, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 29, "min": 19, "name": "PBMkn9ijMbfdlMqz"}, {"max": 72, "min": 48, "name": "f4Yl16mOgo3pZdg0"}, {"max": 96, "min": 40, "name": "73ZHX314Lz8QYbvG"}], [{"max": 24, "min": 14, "name": "dtFwDoqYSyvdE9Lo"}, {"max": 98, "min": 2, "name": "xlv206pbLxsuLWFZ"}, {"max": 23, "min": 79, "name": "MuYvApH5uS8xXBhv"}], [{"max": 11, "min": 25, "name": "I3qIhvyPlLNHAbM1"}, {"max": 21, "min": 55, "name": "wvEBMnYpn5lqMT3e"}, {"max": 94, "min": 20, "name": "DWYOKC0qSxYd1j8B"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 40}, "duration": 12, "max_number": 12, "min_number": 12, "player_max_number": 14, "player_min_number": 94}], "name": "ZWYIESBL2Bsh1UGH"}, "r8fHEyb5QrYcFCWE": {"alliance": {"combination": {"alliances": [[{"max": 4, "min": 87, "name": "ytLmEfSEQCaHKyfE"}, {"max": 83, "min": 18, "name": "mHWg0S5E4igNCWGW"}, {"max": 39, "min": 25, "name": "G4P1QaVTokkPQ8A8"}], [{"max": 56, "min": 53, "name": "IXq1mSl0k0mP1ofu"}, {"max": 12, "min": 90, "name": "nTMAH8oxE0UjAKb6"}, {"max": 19, "min": 42, "name": "FOsajZSQNgsnMwqF"}], [{"max": 19, "min": 56, "name": "jc83saMBnDVMW12b"}, {"max": 53, "min": 4, "name": "SY5Mqyml1f4vA60G"}, {"max": 23, "min": 5, "name": "Ii3ok7tdOGCgtBdP"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 82}, "max_number": 46, "min_number": 100, "player_max_number": 80, "player_min_number": 41}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 71, "min": 77, "name": "i85NhMyQp4u269f4"}, {"max": 35, "min": 84, "name": "G3XED7tguQq2NccZ"}, {"max": 96, "min": 53, "name": "KGXDE8bwy92IZ2O9"}], [{"max": 54, "min": 55, "name": "gBUY6t5CHqIrWgCd"}, {"max": 60, "min": 84, "name": "xAA74NKrzXP7t6Hr"}, {"max": 11, "min": 100, "name": "1T3UxBhRgqgeuGYZ"}], [{"max": 66, "min": 29, "name": "57ACp4PvQcOyD6RP"}, {"max": 78, "min": 89, "name": "KgC8CJNxfkYdWD4C"}, {"max": 18, "min": 82, "name": "JFgDQarNMyxynrOf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 43}, "duration": 92, "max_number": 8, "min_number": 63, "player_max_number": 2, "player_min_number": 23}, {"combination": {"alliances": [[{"max": 31, "min": 4, "name": "Rtq15w8WhPemuCce"}, {"max": 72, "min": 83, "name": "aLCQjog9wjDDsiIW"}, {"max": 83, "min": 73, "name": "YfKs7mgHhs78dfCz"}], [{"max": 1, "min": 55, "name": "DKl5m369f1Oa2F7I"}, {"max": 87, "min": 62, "name": "9NnQz8ZEu55lX3sk"}, {"max": 87, "min": 90, "name": "K3Uz89NKaIqf8Uue"}], [{"max": 74, "min": 7, "name": "nN6uC0kki7lkIg3s"}, {"max": 92, "min": 23, "name": "nVmiKMAsrXnx9CLd"}, {"max": 26, "min": 40, "name": "FRTiocnc1aAcPzHJ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 2}, "duration": 16, "max_number": 23, "min_number": 18, "player_max_number": 92, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 40, "min": 75, "name": "9qN0sdvPRgFguXcS"}, {"max": 45, "min": 21, "name": "9sPEsNrBhAyVoGek"}, {"max": 23, "min": 96, "name": "V9OXR9GJQouhYbLm"}], [{"max": 77, "min": 36, "name": "4nnAZYafpovTlypS"}, {"max": 97, "min": 36, "name": "0uRS7bEEpS0h0rx7"}, {"max": 43, "min": 12, "name": "tAwujopnHZC4r6yW"}], [{"max": 20, "min": 43, "name": "SDJ3rKelLkAPeZlS"}, {"max": 72, "min": 1, "name": "PR51vBRsan6HNjaR"}, {"max": 19, "min": 42, "name": "sHF2eR5PquFOA0MD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 34}, "duration": 55, "max_number": 26, "min_number": 87, "player_max_number": 56, "player_min_number": 29}], "name": "4XZ3JzRFoNyApgua"}, "hepC0Y4pXAC1Oe1C": {"alliance": {"combination": {"alliances": [[{"max": 58, "min": 42, "name": "3VHU0Sebw8vTwyk5"}, {"max": 40, "min": 52, "name": "y3eyBP2oozxSD3gX"}, {"max": 72, "min": 27, "name": "lepIX7ciBjVBm7rR"}], [{"max": 72, "min": 49, "name": "ely34IAZlDCaYlLI"}, {"max": 30, "min": 67, "name": "Ma9M1KKdmMm27HTS"}, {"max": 19, "min": 63, "name": "nLOeWndbRAoYgAGh"}], [{"max": 0, "min": 76, "name": "dj5Qw3yzsn0aZh9J"}, {"max": 46, "min": 33, "name": "6oBg962oWmVvVUDb"}, {"max": 85, "min": 21, "name": "TrOUnrgII9Hgc8z4"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 53}, "max_number": 71, "min_number": 22, "player_max_number": 92, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 97, "min": 57, "name": "NZsZlouITNlOkoDB"}, {"max": 10, "min": 30, "name": "ESZWpbD2uAI6nNge"}, {"max": 1, "min": 48, "name": "t9popkPbTxjOJJ7q"}], [{"max": 84, "min": 58, "name": "41j8Q5eDfp2AoGKs"}, {"max": 4, "min": 91, "name": "RvC5WEX4KIbLEfIx"}, {"max": 29, "min": 75, "name": "4hrUXLPZ3PuIG4Wc"}], [{"max": 2, "min": 43, "name": "kpbA2paiMs7pyiVq"}, {"max": 56, "min": 17, "name": "tb1YuGnKYSh0S5qV"}, {"max": 100, "min": 68, "name": "U3opxaYrolytPtKE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 20, "role_flexing_second": 58}, "duration": 85, "max_number": 96, "min_number": 92, "player_max_number": 49, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 33, "min": 5, "name": "3Ejzu5McnGyw7G5B"}, {"max": 92, "min": 39, "name": "q0L4CSBG2mXYyLr6"}, {"max": 24, "min": 70, "name": "SdglCHJ3udZNRHvp"}], [{"max": 92, "min": 3, "name": "luyCoaNZtBVTgmyq"}, {"max": 73, "min": 74, "name": "ZvLUqnS1CUsHOwJI"}, {"max": 34, "min": 0, "name": "OMAp61kfBodUniUC"}], [{"max": 6, "min": 61, "name": "wTSW9UDNIWw9pw6O"}, {"max": 58, "min": 54, "name": "MNqzRdVa2fI162GB"}, {"max": 63, "min": 57, "name": "c8bC9BrGkgu0ZSOW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 72}, "duration": 37, "max_number": 83, "min_number": 96, "player_max_number": 39, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 37, "min": 83, "name": "gYqebtkC8QOs3Z5H"}, {"max": 8, "min": 89, "name": "aME31pCgnP0xVqbF"}, {"max": 21, "min": 51, "name": "3Hj686jumGWEpHUV"}], [{"max": 18, "min": 29, "name": "M8NemBT6Imz20AB1"}, {"max": 17, "min": 19, "name": "hmr3B1pIUCdh2q5P"}, {"max": 32, "min": 18, "name": "aIg0xXEGnK1jhBfu"}], [{"max": 55, "min": 42, "name": "N5rOFlwmpQkieA1n"}, {"max": 72, "min": 24, "name": "Iloz2PWCPxMrjSDz"}, {"max": 18, "min": 31, "name": "EFNuu5F7g4ToUJWL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 100}, "duration": 5, "max_number": 47, "min_number": 55, "player_max_number": 83, "player_min_number": 44}], "name": "xi1jCxf3qm44aJ58"}}, "ticket_flexing_selection": "4KgwZZ6kmYT64T5l", "ticket_flexing_selections": [{"selection": "4xzlVWBvWl5htCiO", "threshold": 81}, {"selection": "cy7LZRLYpqj3JkTR", "threshold": 43}, {"selection": "dJPQ9nnieiUuetyp", "threshold": 100}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 49, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'fFqan2tm5Pkqiy2m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'TIIpmBuZRgKgz5FJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "M0AwYwdJRa6rogTY", "players": [{"results": [{"attribute": "MbvRvUlMoYbRrTNn", "value": 0.6982259754029306}, {"attribute": "jGDvJo4Xr6cYT42Z", "value": 0.6375780879439776}, {"attribute": "DKlZDoHCxEI2msgG", "value": 0.7876034266800084}], "user_id": "4wYn8hXl6zNBTFyx"}, {"results": [{"attribute": "reXTh53uMupLH16h", "value": 0.43342321827819563}, {"attribute": "pIba6YUtCRwVmxh2", "value": 0.24495855443451775}, {"attribute": "WTA3OQXZ0qHDVOhY", "value": 0.39969900510959155}], "user_id": "9FCDbVlJ1T1mF49S"}, {"results": [{"attribute": "lG0ZMoGbq5bOiq7z", "value": 0.7502831275590609}, {"attribute": "GqcLnhpUc6IkHbwW", "value": 0.4487036732181988}, {"attribute": "RjazvwoAMszjOvyq", "value": 0.7152719952793027}], "user_id": "G96cnT03l5w2byAW"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "FwLtvDoSqCIjDhuO"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "AJkNtpIa2auKLM3w", "client_version": "fLejNjuAXgxebhU5", "deployment": "P48YzADk5B5kVNW0", "error_code": 76, "error_message": "b0RjhePsgI6RsTu5", "game_mode": "C7pyztEjwRtYuEh9", "is_mock": "jbLLBtsZtlIioGgM", "joinable": false, "match_id": "whZuAUtP0JZzps93", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 43, "party_attributes": {"NL3ZXtARJ7gT1wg3": {}, "llXSZi9MOZmMYy3G": {}, "Tx3vxMjD6OrySkgW": {}}, "party_id": "P1IdOo2ToGYmKYlZ", "party_members": [{"extra_attributes": {"sYxbi7ZXpCwHYsT5": {}, "Zd60EON0yk4oSMbK": {}, "a54FChBE6XJb3Fih": {}}, "user_id": "HSW7yVDXD3HmXBUg"}, {"extra_attributes": {"HaOb08idoqWyAXQm": {}, "WZPtNifl5cULSiox": {}, "wHuBWx2Wr6b2ICwv": {}}, "user_id": "0wJ3YRI3WFdIznRm"}, {"extra_attributes": {"llH2hkWFAc25ioRH": {}, "sv1RsyMCvxaBIJcB": {}, "QwlUU5sUB7NHCmjT": {}}, "user_id": "TxqF7K3oaWGPTv5U"}], "ticket_created_at": 79, "ticket_id": "TiPT2dr6ylJQ3sQC"}, {"first_ticket_created_at": 61, "party_attributes": {"znbPy6cMldSYmaXO": {}, "5AvNNMf6cgW5uDyw": {}, "g5NbriKw2n4P2ONv": {}}, "party_id": "NCuBmNz4pVdcUzyV", "party_members": [{"extra_attributes": {"jP3C5rcIwKiCSTLW": {}, "G3l3fNdYuoHsQed4": {}, "sKXPCorbZfaXNxPb": {}}, "user_id": "mlVYShP8oWnehjVM"}, {"extra_attributes": {"e3BILOO2N8X87B3I": {}, "Q3EIKykxyJiYuTFL": {}, "ZSP5qUiFuTfzNeEL": {}}, "user_id": "3cx3dyPjGAUiLvzx"}, {"extra_attributes": {"5UeKxVIBwMghSuy4": {}, "EpufPGaT7GXdGEDP": {}, "Kw7ebEN1FkmJwMuY": {}}, "user_id": "btKa7Wk1FytRPKOo"}], "ticket_created_at": 100, "ticket_id": "eC7oLM8kOKVqSLnH"}, {"first_ticket_created_at": 58, "party_attributes": {"uPF2yjsID5aOeQi4": {}, "bFf6q89ttK9OF3Ia": {}, "cv77Gh6OAnRQP7lU": {}}, "party_id": "d8ybNGGqFNhZ8DV6", "party_members": [{"extra_attributes": {"lF5oJ6mSv9nt4JG9": {}, "F8cJrcvdhgwrMMsk": {}, "8PCDy0kHgNVd7Q4B": {}}, "user_id": "5egD9FbR3F6f0xdW"}, {"extra_attributes": {"mfwnsgEFrLZUdtx0": {}, "1N5ZqpVrZVOgjDHV": {}, "TquvombmXDs8hdiG": {}}, "user_id": "h6pQVsECpvJ8SMol"}, {"extra_attributes": {"Nz9kYmjw1Ev1bAsU": {}, "NEpOmszb5WrtsOUH": {}, "2bVaaxpfL1TNoZmf": {}}, "user_id": "GlPcQyrQNCezVIav"}], "ticket_created_at": 72, "ticket_id": "79z5rFCFicL6IbHn"}]}, {"matching_parties": [{"first_ticket_created_at": 60, "party_attributes": {"bCDHREHDx8OLbYdQ": {}, "eAeEXy4uJZK43jYC": {}, "vq8K6HYgfoUSiJnd": {}}, "party_id": "X4TZiqwh0bJPocHp", "party_members": [{"extra_attributes": {"SI2jZGrvwysMMQky": {}, "LTcaa3wdvBpogdlA": {}, "OAS24oyQf9NEkaUh": {}}, "user_id": "XjdfU6HD1oL4y291"}, {"extra_attributes": {"g19cmBkN4MTq1tNJ": {}, "M2YIvcfzCWQ5xugc": {}, "w8c3hvIEcWLs3uMM": {}}, "user_id": "9Z3leQI7sP344WqF"}, {"extra_attributes": {"AP7ixpUsYwa8O25d": {}, "xRlz2M1qEDA4YrnI": {}, "0StkvBwWHvEsWeLr": {}}, "user_id": "bCfkfr5c6CUZFx2H"}], "ticket_created_at": 30, "ticket_id": "oyduHgcR7K7pQXR4"}, {"first_ticket_created_at": 30, "party_attributes": {"rTWX0u4XVPyp2OqA": {}, "6JCz1OW6hJdJdgjM": {}, "kvUwv6KoJ3xe65Od": {}}, "party_id": "lTZdUcwnKYcYJTMG", "party_members": [{"extra_attributes": {"Jsn0v3xhJgEd6tLR": {}, "cYfurdTJn1Nzw8xc": {}, "cPKz78SpII2vbAbD": {}}, "user_id": "hr27WypdQzGIN9Jx"}, {"extra_attributes": {"1iFBKODUfeFvNzha": {}, "iEZuxEcli0QSO8Hj": {}, "kb9Rbx9zXy7PsCmb": {}}, "user_id": "ECPaveah9iBwwDW1"}, {"extra_attributes": {"7Nobuyn6ran3thtw": {}, "68pRl6mudkqKwnat": {}, "RZEF7RoYiVnbYNIy": {}}, "user_id": "pK3uHZUONGM5CsCw"}], "ticket_created_at": 85, "ticket_id": "bRQyxynYkgkwMTgZ"}, {"first_ticket_created_at": 56, "party_attributes": {"5ldriILIP05wgjbq": {}, "kl279HdHLZri5Dqi": {}, "fbajORhJF85zrQ22": {}}, "party_id": "rO0nd4aJFxhiwdfi", "party_members": [{"extra_attributes": {"IIFEZaFBEMP2qOQN": {}, "o6Lbx0F1fH1HIyMY": {}, "JT6zPkkhjCxv4GpE": {}}, "user_id": "dFYy0b1r6RDWmFtt"}, {"extra_attributes": {"dBoNqPlofZ74Eo1l": {}, "s2FXGDfzHOVRkMgZ": {}, "U20nrvSxbwuwspmR": {}}, "user_id": "0ES1jp90za2vNLYu"}, {"extra_attributes": {"i8rJG1MqF8KBmqCx": {}, "NF4iTtVVTCPUIUvf": {}, "5CKXin1xfpTCGKgo": {}}, "user_id": "6DEdCLwEUZGsB8LA"}], "ticket_created_at": 95, "ticket_id": "3oJ9IsSC7rGmr4nx"}]}, {"matching_parties": [{"first_ticket_created_at": 28, "party_attributes": {"W56HZk8yGWxdfOwA": {}, "sROp3D0htx3Gc1gc": {}, "zc53kdynkxKMqvol": {}}, "party_id": "Aax34T7vz1DbaYWh", "party_members": [{"extra_attributes": {"JMfbNehd8v3LQgtV": {}, "mhnaFj5xhULuq9XM": {}, "jXz8HRExNIh3NixO": {}}, "user_id": "uznymXZhvlAOQWYN"}, {"extra_attributes": {"fby0akd7n0tR5aCu": {}, "M4xGEGR3ryTqbtOm": {}, "PoADEptvKtvyHlOn": {}}, "user_id": "fHvbOASszaoYyr5p"}, {"extra_attributes": {"34px8Y0emccqaE2W": {}, "tOhLQrZNLatxfbdl": {}, "fPzftbdl8SaW756P": {}}, "user_id": "h9zpmfExXk7GPKv5"}], "ticket_created_at": 78, "ticket_id": "MFJTyDehWKDwjQ3R"}, {"first_ticket_created_at": 37, "party_attributes": {"uuYwAYwactPVMNmc": {}, "od4WyAfubfq3sUDx": {}, "MLHXLTXHHhGgB5Et": {}}, "party_id": "3YkT1f00GXkHrPXT", "party_members": [{"extra_attributes": {"o3O4e3az5L1ypINl": {}, "lvqRa7K2ViyHKyww": {}, "qSAZSLd0N61W2h53": {}}, "user_id": "tSrewPnZvrb5yJSP"}, {"extra_attributes": {"G9T16fp6NqclA027": {}, "fmY4AURsiHrMl5wB": {}, "lNZ0QJ9JWiVPkPLV": {}}, "user_id": "E0xC7HlRLJEIfxkx"}, {"extra_attributes": {"g3WB1gLYqC5RWIkH": {}, "lvS4NhE7xx1koRP8": {}, "c9Bej114frWVpcBf": {}}, "user_id": "SY0UJz8BXZAvVxzQ"}], "ticket_created_at": 84, "ticket_id": "Sdqd9jUneSs5Ppdw"}, {"first_ticket_created_at": 1, "party_attributes": {"Urk0TW9ChrkMzCxw": {}, "gcTqm7tdPpJup1lN": {}, "d5fa8Ckf9nxWPtp4": {}}, "party_id": "aHIzjKpP1zxtSUgk", "party_members": [{"extra_attributes": {"lJa1PQy2buJEfIPG": {}, "diCLKzb5uszzBjDL": {}, "oPFp4181rsqkZ4ND": {}}, "user_id": "waHb39E8UkuJOzcv"}, {"extra_attributes": {"yzSneqBMFHQVJ7oy": {}, "vzYJ9ONTmhGgAC0m": {}, "TeN5BsLRtAOzyqiN": {}}, "user_id": "hjYGEk4tGB6J71CH"}, {"extra_attributes": {"yVqffKewBknZqpMZ": {}, "Szr47AnwAVGOcTBb": {}, "bWYmMjbW2tXbGTEb": {}}, "user_id": "eTb8VucyZRYtu5Lt"}], "ticket_created_at": 88, "ticket_id": "A0i0SZAxpYO4QNbj"}]}], "namespace": "cG6Lhclh40CaGQ8c", "party_attributes": {"wlfhN0NHKEvCYjEu": {}, "DK21Qnj9ism5I1QC": {}, "qZWyDhznrv2DwZMA": {}}, "party_id": "FCW6nqAdfgQSS9RN", "queued_at": 100, "region": "gwXWnvSH7dISMDHT", "server_name": "LIJYsYnCkg0wjZ6H", "status": "yvHquIMzMdG5h6RM", "ticket_id": "NhAH05L6QEZTxgNz", "ticket_ids": ["4Yz0ii2dNpAi7GrJ", "JxcN9hNWLE4ceczB", "HGmqVRSOndfey9JZ"], "updated_at": "1994-01-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "xfkreVAnFkRpoUyE"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'JcebY6K7CJhEWxxm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 37, "userID": "MzLtpLiZ0MSEc6vw", "weight": 0.0028275621787863248}' \
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
    --matchIDs 'ssjVtoDDTfPdXPJS' \
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
    --strategy 'ohlOgf36K5nPp3Ls' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'eV36RVPfqJ7AEs9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '7jykemIamMKr770B' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "PC6ggXxrsTbYansz", "description": "21KhZ7EWLCER8Itm", "findMatchTimeoutSeconds": 2, "joinable": true, "max_delay_ms": 54, "region_expansion_range_ms": 14, "region_expansion_rate_ms": 55, "region_latency_initial_range_ms": 48, "region_latency_max_ms": 38, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 47, "name": "jE5je1tv9w5sO38w"}, {"max": 0, "min": 2, "name": "pAM3OsWDaXaxYXss"}, {"max": 96, "min": 19, "name": "dbLjYjERbodxLHLF"}], [{"max": 71, "min": 97, "name": "k1t8JJ0ihg1BPROv"}, {"max": 39, "min": 40, "name": "uJIz0TvLx8IyCPQq"}, {"max": 62, "min": 22, "name": "VbZ6Vejh060qrWnI"}], [{"max": 13, "min": 85, "name": "psxfDWenywApwBsD"}, {"max": 73, "min": 69, "name": "BxAn75fwbY4zyfkc"}, {"max": 54, "min": 45, "name": "0u0KtPUMTle6h90M"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 73}, "maxNumber": 39, "minNumber": 83, "playerMaxNumber": 67, "playerMinNumber": 12}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 16, "min": 63, "name": "kicQ51OgqethDtw6"}, {"max": 53, "min": 24, "name": "9K0Dlyd7RjzZVr8X"}, {"max": 16, "min": 70, "name": "wLDv7GXOLHhdgnEt"}], [{"max": 91, "min": 68, "name": "U978HD31VjDJSlfi"}, {"max": 69, "min": 44, "name": "NdxNEq1WLzV5NuEf"}, {"max": 24, "min": 70, "name": "tZoiVQg63DvNtsJ0"}], [{"max": 86, "min": 73, "name": "4pzloNVUDukxHiMl"}, {"max": 66, "min": 78, "name": "G8CdKK60RlaMJtKl"}, {"max": 12, "min": 63, "name": "g4WpXGJkUYRnw2rq"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 78, "role_flexing_second": 65}, "duration": 5, "max_number": 56, "min_number": 64, "player_max_number": 75, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 47, "min": 85, "name": "fTE0xLlDNu4mlpjt"}, {"max": 46, "min": 20, "name": "UUauCCNV8PGFGTn8"}, {"max": 55, "min": 82, "name": "h6Gb98jJpSjVsEct"}], [{"max": 31, "min": 54, "name": "VjTrnnphtFilj8OH"}, {"max": 12, "min": 86, "name": "il9crG4NxygIPP8W"}, {"max": 26, "min": 20, "name": "IOA8s5Ltk76yHeF9"}], [{"max": 52, "min": 75, "name": "sp2lxDj9uYlNUKes"}, {"max": 28, "min": 71, "name": "8cOqVfDTS1K3tJJF"}, {"max": 94, "min": 51, "name": "Mxinc9GV42tUa5P9"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 10}, "duration": 87, "max_number": 88, "min_number": 99, "player_max_number": 6, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 50, "min": 3, "name": "cbWck4oy9neULAcK"}, {"max": 87, "min": 98, "name": "i5FdB3N0TjzWCF25"}, {"max": 95, "min": 88, "name": "NTmtiUjXCZNic4Y7"}], [{"max": 42, "min": 14, "name": "wrEBFIsIuzRhTXCA"}, {"max": 39, "min": 77, "name": "8UE1pWr0N4Jnuu6k"}, {"max": 81, "min": 3, "name": "eZANY8BEBSHcQijg"}], [{"max": 54, "min": 93, "name": "xHhA8dCE7Do3Vtr1"}, {"max": 27, "min": 42, "name": "zJQeJ5SohCiKy0IG"}, {"max": 29, "min": 17, "name": "HeQnXNR3v9HZFFe3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 71}, "duration": 80, "max_number": 74, "min_number": 16, "player_max_number": 19, "player_min_number": 53}], "batch_size": 30, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 3, "flex_flat_step_range": 63, "flex_immunity_count": 98, "flex_range_max": 98, "flex_rate_ms": 77, "flex_step_max": 82, "force_authority_match": false, "initial_step_range": 41, "mmr_max": 48, "mmr_mean": 54, "mmr_min": 5, "mmr_std_dev": 0, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "VW84LgikQSjvqTFv", "criteria": "35EqLtEJQ4Umklq6", "duration": 15, "reference": 0.5839057188157504}, {"attribute": "s9xAQtE4QayWl4yj", "criteria": "QldiY0YGHAx3Nv6b", "duration": 74, "reference": 0.9279005135252845}, {"attribute": "naUvEIN43LzLSP9L", "criteria": "BAKwJD3YMJ8xfLJQ", "duration": 98, "reference": 0.03957775775981254}], "match_options": {"options": [{"name": "nw0OyqyHkx9CvNyB", "type": "1UABAKXBFd9MqIY5"}, {"name": "WM5K8AABo8LGTIDx", "type": "oX1v1tbwQ92nR8A0"}, {"name": "iP234inYTK8o9OnO", "type": "tDptVfEtpExV8P1v"}]}, "matchingRules": [{"attribute": "E4CuETDOCgv2S0xp", "criteria": "185tQr6DFi7mfAzo", "reference": 0.6159625030237554}, {"attribute": "yztq87LIZEyTwMZJ", "criteria": "seTlxLpwDmKAf0us", "reference": 0.9456905275051318}, {"attribute": "B0uMvkripQUr6RIa", "criteria": "l3wMafHDjmxMCM93", "reference": 0.7375988775113195}], "sort_ticket": {"search_result": "ngafvv84nWp2heUp", "ticket_queue": "5pFBsiySVT7EEO6r"}, "sort_tickets": [{"search_result": "Gd5XMqgmDfvJeBsW", "threshold": 75, "ticket_queue": "bNSbUpmAhnXlcZsz"}, {"search_result": "9lFTUNb3wcADusMF", "threshold": 27, "ticket_queue": "815WsYm2g25sVRPT"}, {"search_result": "75E95jWxS29IV1ez", "threshold": 95, "ticket_queue": "9FKbKGKOeR8LPkzA"}], "sub_game_modes": {}, "ticket_flexing_selection": "CmxOYwXrneAUcN1f", "ticket_flexing_selections": [{"selection": "DRamsyB9pf3DFIBU", "threshold": 34}, {"selection": "iMHHjDKgRxKHBzml", "threshold": 85}, {"selection": "RN7bhymPe7LNx2W5", "threshold": 20}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 18, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'TWR1OjGIxgqBsBug' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'EG4M14KE4KXqJj0D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'XyRV0GOrPIO0C4G9' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 62}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'NFOBnY5nuwvMHkoq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'jZIrWpMW8wQj4dOt' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "7zeDKslEZVfKx1kw", "count": 58, "mmrMax": 0.25720355157204644, "mmrMean": 0.5708807178416219, "mmrMin": 0.859521933975983, "mmrStdDev": 0.3713308706716639}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '4KNLEEyu6Hrptemv' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 17, "party_attributes": {"QUmt43lg250qf8Ec": {}, "10u1PfIj27vynkWB": {}, "y2czxKra4cP5Yuhc": {}}, "party_id": "XiyeXfqWujcoa37Z", "party_members": [{"extra_attributes": {"sfet3aAiEvQN4aot": {}, "wStoNLL0jHDjyFBa": {}, "knQyHLjbVMGhbHf7": {}}, "user_id": "otcgNGeDJ5l5fo4N"}, {"extra_attributes": {"vieVRZTDKIVRW5VU": {}, "dpOHDCord6G5QglK": {}, "5M9YpCRjxK9LBDB5": {}}, "user_id": "engF41XeouBfLFX3"}, {"extra_attributes": {"Syr5TxFv75UwBxZB": {}, "qUbedou1fjK1KD1r": {}, "1DHiz2Y3YOheo4TF": {}}, "user_id": "YVOZdseATBCNNZpD"}], "ticket_created_at": 74, "ticket_id": "PFte465AQcHM7nds"}, {"first_ticket_created_at": 42, "party_attributes": {"BQqQHK4YE5cnoHuZ": {}, "E7TAI9Z9eYJCViT6": {}, "fFBWw8UbfjaZLcoD": {}}, "party_id": "MKCYqY4bU4wVkAEF", "party_members": [{"extra_attributes": {"dROfhnS89b8RRNAU": {}, "YUJ4bAlClG15ERah": {}, "bs8mR9aze3QNi5nh": {}}, "user_id": "1QCSlBZbiNovIH0u"}, {"extra_attributes": {"d9r9aVjqwo1SROFl": {}, "crV2nA95GbUuSxAb": {}, "Sz2x1mNDm3mHWoPr": {}}, "user_id": "2dEilGsd6HORM7eh"}, {"extra_attributes": {"kV6J15WwKpN5DFp7": {}, "cOG2naodnLfIE9nd": {}, "wuu4iAtCZYMA0Rtu": {}}, "user_id": "0X7fIES1yOUXCYnG"}], "ticket_created_at": 24, "ticket_id": "vpiKiSSCovAAjrY7"}, {"first_ticket_created_at": 94, "party_attributes": {"ZQp3pn4eJkI6XRD9": {}, "gIZBs44rnJY4ujXa": {}, "c3YY6auq1p3jeoo1": {}}, "party_id": "TWOWDy5qRIISH4yM", "party_members": [{"extra_attributes": {"A56hDhn9Qt1jghhC": {}, "cRhzzsGk9JcV6tgz": {}, "1hlknCQygyxCInL4": {}}, "user_id": "ZIHsKA7t6RFmUlD3"}, {"extra_attributes": {"MSfgz85exGSJWyIT": {}, "aFb0aoIjzxDKc1U9": {}, "lHID1Wstu1OG2O2c": {}}, "user_id": "BkdMtbrYRu1D8NZ4"}, {"extra_attributes": {"qjBDiQoFosYxX5ip": {}, "S1QOjKBXgNRng6ZW": {}, "FgPv3lBtVUQJwHsk": {}}, "user_id": "uU3mLq3o72DfLM8K"}], "ticket_created_at": 89, "ticket_id": "pmTdjW2IbsudB52B"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '7iZWzX9lNXfYrGdv' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 68}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '2gahme3syIlD0FzX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'SoizJ4RdogCFGNoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'nCDYf1kGhyIzKlVo' \
    --matchID 'm5FfLW7LikpT2V6R' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["1AGbAD1v8Uc1LsxB", "OBkwWOYP5Omay0gd", "JoJwokp0NvsE1XSn"], "party_id": "GBYotNHs51qjyuDY", "user_id": "0EfyHl8akzio2YlY"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'MZ1UwMyzrxRz2KkH' \
    --matchID 'jywh7AegIJEf0ylL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'FpYOK8nvTC4tDSfk' \
    --matchID '9LizwqqkjATVWqSh' \
    --namespace $AB_NAMESPACE \
    --userID 'GmACwuipQ4DPsEZs' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'IrJuqtWjiW6wKRlA' \
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
    --channelName 'oCIbmtml2bmK6ppM' \
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