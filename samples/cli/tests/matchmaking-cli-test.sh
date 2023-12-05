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
    --limit '33' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "QwL1e3XjeeyjSGwJ", "description": "VpRVBvIKbLx3XE6d", "find_match_timeout_seconds": 60, "game_mode": "wetzxRPwAhShE0ts", "joinable": false, "max_delay_ms": 47, "region_expansion_range_ms": 8, "region_expansion_rate_ms": 1, "region_latency_initial_range_ms": 5, "region_latency_max_ms": 96, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 6, "min": 31, "name": "34Nm5hfaQqOjfvph"}, {"max": 28, "min": 54, "name": "C89gEWlK9uk9oryp"}, {"max": 51, "min": 70, "name": "glheXpIpmOkrOJyQ"}], [{"max": 55, "min": 71, "name": "KhXCYxMGeaF3ntLD"}, {"max": 28, "min": 66, "name": "6vaJuTQgn7cZDVPW"}, {"max": 91, "min": 85, "name": "FvrcVUfi214vNL0i"}], [{"max": 81, "min": 58, "name": "wAd0UW0WbhUy4hCv"}, {"max": 8, "min": 27, "name": "3VeXk5fKIz7KKAZW"}, {"max": 34, "min": 30, "name": "lNDTQDIIwcByBFBC"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 26}, "max_number": 1, "min_number": 34, "player_max_number": 56, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 3, "min": 91, "name": "23v60vkdFcxf495C"}, {"max": 73, "min": 4, "name": "epQUe2UvEzl7ZIYn"}, {"max": 45, "min": 49, "name": "7rFcIzWx6SOg42Ql"}], [{"max": 49, "min": 51, "name": "aKx6MU5PuhIMzgCC"}, {"max": 14, "min": 74, "name": "VpjH4rDjFTdmsoYu"}, {"max": 91, "min": 87, "name": "rcb41Ta2ZeFsOIrt"}], [{"max": 62, "min": 81, "name": "GghUXtj31GCscuok"}, {"max": 91, "min": 28, "name": "4BfxZhhcpxdqlmuf"}, {"max": 38, "min": 34, "name": "MN9mzrH41WUa4Qs0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 83}, "duration": 75, "max_number": 72, "min_number": 52, "player_max_number": 98, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 34, "min": 92, "name": "f0GBHq7aVImaANj8"}, {"max": 28, "min": 36, "name": "TX1MWImtf7VAlsXA"}, {"max": 89, "min": 97, "name": "UtQs3IKCDFY6YDQ6"}], [{"max": 94, "min": 33, "name": "A4FI8M2WhOzMDo8d"}, {"max": 64, "min": 21, "name": "SJANrUWChERPD2un"}, {"max": 20, "min": 22, "name": "IavW7sGZMLkNRtTN"}], [{"max": 80, "min": 88, "name": "hy0s8ywHWmHWILZc"}, {"max": 93, "min": 55, "name": "WnZfJEikRL2Afrzv"}, {"max": 46, "min": 26, "name": "p6uB3UYZuKjgJxNw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 91}, "duration": 51, "max_number": 13, "min_number": 43, "player_max_number": 33, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 11, "min": 77, "name": "qLkutlbAaFoABYmZ"}, {"max": 22, "min": 27, "name": "2sa2pad3lEYi86NH"}, {"max": 78, "min": 44, "name": "5piAkk2AQuB4X6R5"}], [{"max": 81, "min": 48, "name": "nY6pBNFb5A2Jzk4J"}, {"max": 84, "min": 58, "name": "lPUJ51iCC5sarwtz"}, {"max": 14, "min": 43, "name": "xfa4Cb83UeTkKYLb"}], [{"max": 47, "min": 49, "name": "7wS88U92uvBeCvfn"}, {"max": 23, "min": 78, "name": "YFXkO0MM2oEdeICE"}, {"max": 62, "min": 13, "name": "m7sPKqPRwqkVQMZX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 54}, "duration": 40, "max_number": 29, "min_number": 22, "player_max_number": 81, "player_min_number": 22}], "batch_size": 1, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 30, "flex_flat_step_range": 77, "flex_immunity_count": 79, "flex_range_max": 82, "flex_rate_ms": 24, "flex_step_max": 57, "force_authority_match": true, "initial_step_range": 36, "mmr_max": 17, "mmr_mean": 67, "mmr_min": 63, "mmr_std_dev": 63, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "voVA6ud3e6HX4t8t", "criteria": "ixDlEXt5bgqbqRMl", "duration": 16, "reference": 0.8365312862315593}, {"attribute": "pd6aXL8UQnQPHe8O", "criteria": "M3APbwb0rjcpEi4l", "duration": 7, "reference": 0.14515198168015953}, {"attribute": "moF5TjYRfCXdEFoA", "criteria": "qCKScB76lz27QHr0", "duration": 29, "reference": 0.5584101361558137}], "match_options": {"options": [{"name": "HWEz2uP7Ypk3HUPY", "type": "P23WDcvEIFlsO8ww"}, {"name": "4eFFKEjf8nC2ptE1", "type": "S1uWoL0BHhnAWvCl"}, {"name": "ttSWl9lbjw426Io8", "type": "lMY3kkIZCzCGLIzF"}]}, "matching_rule": [{"attribute": "VwM1KVDcS4JnHWx2", "criteria": "ub2yAUmp3lG6qCmZ", "reference": 0.9402348689007003}, {"attribute": "0KIwkad5q9JG5lf0", "criteria": "YQzOHcjlO86ZHLP8", "reference": 0.1292191885736047}, {"attribute": "H2Ee7HixU7sXZ4xr", "criteria": "gVJBpVZgUqV8VPuh", "reference": 0.8626386949728323}], "rebalance_enable": true, "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "none", "threshold": 76, "ticket_queue": "random"}, {"search_result": "random", "threshold": 13, "ticket_queue": "distance"}, {"search_result": "oldestTicketAge", "threshold": 63, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"hCiwKLpfC0VJDTmw": {"alliance": {"combination": {"alliances": [[{"max": 34, "min": 73, "name": "QZkTjUXAaGoS7oOF"}, {"max": 78, "min": 72, "name": "ruWcRfZQwpeoKFJu"}, {"max": 73, "min": 32, "name": "fmw99hb2m5bZFINM"}], [{"max": 7, "min": 61, "name": "tjkg9MGf5OfIxciR"}, {"max": 80, "min": 87, "name": "vGrGuTsXR1OpwDYc"}, {"max": 63, "min": 55, "name": "QBMFSREFquo7chtB"}], [{"max": 27, "min": 42, "name": "l21OQcRd5PZVVq65"}, {"max": 71, "min": 38, "name": "lDRuM5TfH0ilM92j"}, {"max": 83, "min": 18, "name": "R03HhIF3PD9UaXlj"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 87}, "max_number": 5, "min_number": 9, "player_max_number": 1, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 13, "min": 79, "name": "V2xJmY2dUfqHrsGr"}, {"max": 10, "min": 43, "name": "bPmLQpHw0D0RjVP9"}, {"max": 64, "min": 68, "name": "dXKKCyPPEYMReaS2"}], [{"max": 88, "min": 80, "name": "JN51rkZ1OnzRYm1y"}, {"max": 77, "min": 94, "name": "nAaxIwdLJTRLVEuZ"}, {"max": 11, "min": 8, "name": "5Z5Z5v3PrG5Ue4Oe"}], [{"max": 38, "min": 24, "name": "94CKB82xeV9Xs5r0"}, {"max": 6, "min": 86, "name": "cGjJnvnn3MNFnwg2"}, {"max": 13, "min": 24, "name": "8YwNM8bRfqwUXKjU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 12}, "duration": 48, "max_number": 26, "min_number": 27, "player_max_number": 79, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 99, "min": 46, "name": "1ik7X7uTpqGXZEFk"}, {"max": 94, "min": 87, "name": "nT4NqSsyjJygnaI1"}, {"max": 45, "min": 49, "name": "EPIOFU4Hs3GZnzu6"}], [{"max": 62, "min": 43, "name": "5f1PibJOZuQ9hXfJ"}, {"max": 15, "min": 79, "name": "g5V6esypFY8SmjoE"}, {"max": 74, "min": 88, "name": "XukuhDenUfYvriTa"}], [{"max": 9, "min": 34, "name": "8kJZMpWBeLCkqOYv"}, {"max": 100, "min": 55, "name": "161AjQo6Z7ni2uO7"}, {"max": 57, "min": 41, "name": "m3oFwAFHEYyqdTrA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 14}, "duration": 56, "max_number": 17, "min_number": 41, "player_max_number": 34, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 6, "min": 56, "name": "tyX4pahh4VIsQl50"}, {"max": 88, "min": 62, "name": "T8mEP6JX5Ixln8Ic"}, {"max": 19, "min": 20, "name": "9hUHz4tLdGnIcdu0"}], [{"max": 20, "min": 13, "name": "4R728PnYpL0qYnRb"}, {"max": 40, "min": 61, "name": "lAJ9OqAkD1fOFQ8u"}, {"max": 37, "min": 95, "name": "a3zQjtvZ056fbFPt"}], [{"max": 65, "min": 66, "name": "ho8AykIPwqkEcSHH"}, {"max": 13, "min": 93, "name": "ZNJrKVY0m7BWxOJz"}, {"max": 82, "min": 11, "name": "eqMwM29KurYG2jWM"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 53}, "duration": 0, "max_number": 1, "min_number": 9, "player_max_number": 16, "player_min_number": 80}], "name": "xNOPUmqAjWEJ0tiw"}, "cSMTQQNgAYP3Xy5n": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 32, "name": "zt9ieg3WCVHtCpjp"}, {"max": 7, "min": 32, "name": "dmBWouChChYuVtfR"}, {"max": 55, "min": 78, "name": "rBllZWzWtA2r9IOr"}], [{"max": 3, "min": 13, "name": "DBRkt4AQDBRHtRCj"}, {"max": 94, "min": 11, "name": "bhhEKaSpmHV8hoxb"}, {"max": 78, "min": 22, "name": "lFjMywqD1z2eCcRW"}], [{"max": 12, "min": 34, "name": "UyJCNabbMUkIOnnd"}, {"max": 79, "min": 72, "name": "6wDrnNhpTAOZIlN2"}, {"max": 93, "min": 9, "name": "Ggwds5gME8wQs0Yh"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 27}, "max_number": 25, "min_number": 79, "player_max_number": 71, "player_min_number": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 49, "min": 19, "name": "d7rxf1XDAVw8pOvT"}, {"max": 43, "min": 89, "name": "A5XJDzWfCJxiKUlg"}, {"max": 71, "min": 54, "name": "TaLk9eXSKqWvfkrK"}], [{"max": 36, "min": 63, "name": "IniniD24MXYdPwxO"}, {"max": 89, "min": 35, "name": "tmhMSONM0dwKhf4C"}, {"max": 1, "min": 18, "name": "yZvw5gOPV0kMwRWG"}], [{"max": 49, "min": 81, "name": "NpB8h2eJDl45IvVr"}, {"max": 47, "min": 28, "name": "R546g4dPBDviBu8R"}, {"max": 25, "min": 38, "name": "p2NcOW0iaIZcWBBA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 93}, "duration": 29, "max_number": 55, "min_number": 36, "player_max_number": 60, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 4, "min": 32, "name": "n9vQjav5YMUNakb7"}, {"max": 90, "min": 10, "name": "JzX2TSxXpc3TxXWu"}, {"max": 24, "min": 57, "name": "l92apfg4vM9MOPWv"}], [{"max": 51, "min": 100, "name": "hSjqMqBmxgcgypWH"}, {"max": 30, "min": 100, "name": "gVtBk1tjRtcCcs9s"}, {"max": 78, "min": 25, "name": "Kw4NihpCUYgyWA0z"}], [{"max": 25, "min": 96, "name": "Eo1ztXEa5nUXHyz8"}, {"max": 37, "min": 72, "name": "jeENROSbmLA08NHq"}, {"max": 12, "min": 40, "name": "zChEhTBT2CyQ6I3F"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 43}, "duration": 13, "max_number": 8, "min_number": 63, "player_max_number": 100, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 30, "min": 81, "name": "XtcshFTIBXtug1yS"}, {"max": 24, "min": 87, "name": "RIWxMCxob3Dwr16M"}, {"max": 34, "min": 67, "name": "yzcYYBO0cPWgVtm4"}], [{"max": 57, "min": 65, "name": "mIadGx0MVujNJ8uL"}, {"max": 82, "min": 10, "name": "qwFl428dOwMa1zbG"}, {"max": 34, "min": 55, "name": "OjTEDlaPMNJiv5qE"}], [{"max": 23, "min": 19, "name": "waXrHokIpMxE6qXW"}, {"max": 73, "min": 6, "name": "JFaTcOeJuUZD6RNe"}, {"max": 10, "min": 86, "name": "KO5wbcGFdbam4LAC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 2}, "duration": 18, "max_number": 30, "min_number": 83, "player_max_number": 88, "player_min_number": 63}], "name": "ffwDKtv6SEAFwQ8Q"}, "2Gm1IU7HlZszj5RR": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 79, "name": "pO7Rr9k7V2JxjIjC"}, {"max": 97, "min": 21, "name": "i4BDF4uqfnWoS0IH"}, {"max": 100, "min": 34, "name": "5FbnECn5NkpX0OWw"}], [{"max": 18, "min": 45, "name": "SgbDyZcrCR6hyR4D"}, {"max": 34, "min": 14, "name": "lMoPApPhfcOGTgH8"}, {"max": 47, "min": 59, "name": "ZO9yMYivah2u8uhR"}], [{"max": 98, "min": 57, "name": "beqpCu0uViVfM1bs"}, {"max": 11, "min": 53, "name": "snpMK7MDRZQeVEa9"}, {"max": 83, "min": 64, "name": "dUWX2CMocSojGyFM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 28}, "max_number": 8, "min_number": 80, "player_max_number": 50, "player_min_number": 22}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 1, "name": "Hu3jqMYeL4vyt0o3"}, {"max": 79, "min": 11, "name": "qmxNn6722zEMufoj"}, {"max": 31, "min": 87, "name": "5pD2ZnM8DPM9Hyub"}], [{"max": 23, "min": 69, "name": "lEKbSbkeYqmQUUlJ"}, {"max": 23, "min": 75, "name": "vHJsc6VWUtJXPfjS"}, {"max": 89, "min": 12, "name": "ISlQoDa92Wd49BfK"}], [{"max": 19, "min": 12, "name": "frFDBNlT3xTkNzt5"}, {"max": 77, "min": 8, "name": "zs2vBOSnxny4HlFg"}, {"max": 42, "min": 47, "name": "MWGY36bLv2RFrve1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 20}, "duration": 14, "max_number": 85, "min_number": 44, "player_max_number": 34, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 2, "min": 13, "name": "QGYaf9OcSUGC52a0"}, {"max": 96, "min": 23, "name": "8uiM9imQUeRrRqB0"}, {"max": 93, "min": 34, "name": "MEhCt7GSvRDpshPA"}], [{"max": 68, "min": 44, "name": "No8E59741DHFNC6X"}, {"max": 24, "min": 44, "name": "j9cu9MMi6PSlR52L"}, {"max": 6, "min": 89, "name": "ykKGJsVCY8KPPvC0"}], [{"max": 79, "min": 43, "name": "fd1bLITvfYwXs4jL"}, {"max": 80, "min": 51, "name": "4H42n2FIhoXi4FR6"}, {"max": 68, "min": 22, "name": "06fUEI0sasrR1lOe"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 93, "role_flexing_second": 74}, "duration": 42, "max_number": 3, "min_number": 63, "player_max_number": 15, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 25, "min": 37, "name": "kK93g38Rx3Q82iMi"}, {"max": 98, "min": 99, "name": "9oXBhmHUvTSd8cf3"}, {"max": 58, "min": 70, "name": "IxIfAkGq5xh9DyVW"}], [{"max": 13, "min": 38, "name": "sxVsHhfe7xpOBwu5"}, {"max": 53, "min": 7, "name": "c7eGBZeaBqyBV1n5"}, {"max": 67, "min": 29, "name": "IARKKBhydfeDiNR1"}], [{"max": 60, "min": 71, "name": "ESMlKv39HwsSwUAn"}, {"max": 52, "min": 95, "name": "sSnTXrH3exkhpQt9"}, {"max": 37, "min": 36, "name": "j7qoSJSz546uWPZa"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 39}, "duration": 9, "max_number": 8, "min_number": 25, "player_max_number": 53, "player_min_number": 81}], "name": "hCZHSm4w0jVWZmiG"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 41}, {"selection": "oldest", "threshold": 93}, {"selection": "pivot", "threshold": 35}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 8, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'URUXrtN21pKi4z8n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'guz9O8zZxncVHYNx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "LfNn0ZLIkITggrVL", "players": [{"results": [{"attribute": "4yfxkdR7B8Ide36M", "value": 0.013023395506023272}, {"attribute": "Llr9Ijkh0GsirFA0", "value": 0.7709540057705643}, {"attribute": "JeXxZ0gp2s1DhO8i", "value": 0.7173080381218547}], "user_id": "uhg6hRaO3BiWIwWr"}, {"results": [{"attribute": "AkLrPQIZVmxF4cP6", "value": 0.16801588797791678}, {"attribute": "cyRcIF5PVzo6B1VY", "value": 0.8769310852331944}, {"attribute": "PikmYNtVphkCkHS6", "value": 0.7162878400493938}], "user_id": "XTjz7qXHTgL30R6v"}, {"results": [{"attribute": "biLRBZjvNtKCBAGB", "value": 0.07235817502768327}, {"attribute": "ilk377KbR4pv5SvZ", "value": 0.5914386645989821}, {"attribute": "Hq7ygqZJ5HGXku5q", "value": 0.25147444011441544}], "user_id": "eTsEUDvEhEEn7vyH"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5AuhWmtERa1nOViK"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "fpwLSZNLPF9JIerx", "client_version": "0XyQ48UZE8Umk4eP", "deployment": "V5hDeChntPhKx7ns", "error_code": 56, "error_message": "oVdy5geHuGDznOD9", "game_mode": "vrD98mC9C6jkN5Uo", "is_mock": "yYXknmgOWtyhXUNN", "joinable": true, "match_id": "eXSLJdlXB69ouwQg", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"Nh1mgDB0LHUKp2N0": {}, "h4eRhDDLBWscxG0F": {}, "zxsUzvNbK6vQqKqP": {}}, "party_id": "BGaOEHm4z35UTlRC", "party_members": [{"extra_attributes": {"1Og11x8pX120mQDC": {}, "MCswJiUlYhTMrXgz": {}, "AjAevAeFCrzeA6gt": {}}, "user_id": "LhnHTrKrFgBKtXcA"}, {"extra_attributes": {"5DpqOj77M4MTAOGB": {}, "xgTUonGgvYm8qP7Q": {}, "76UlheZTsCF2cPTJ": {}}, "user_id": "itGEHHsOOBfhZ5do"}, {"extra_attributes": {"T34KV5fmlR93V5CG": {}, "I4HT8o1YsxACwp3x": {}, "6FQDLb5ejefgF73X": {}}, "user_id": "wlbMg9x23diCngGT"}], "ticket_created_at": 11, "ticket_id": "jvXvugQgEPsdYBt7"}, {"first_ticket_created_at": 26, "party_attributes": {"Z0bol1Q60CeL8rke": {}, "kxxsaepQrBKOekGy": {}, "Bi3IX7vL4T6AMpOX": {}}, "party_id": "MYwwc0Z1NhClPElk", "party_members": [{"extra_attributes": {"9KOFZc2xbBLQkSxE": {}, "rksTtSNEDne5HVef": {}, "2iuU4rVQv3FmRfTl": {}}, "user_id": "1J93N7T0cBeCZeOq"}, {"extra_attributes": {"wLYwvOeoVzZNVaY8": {}, "hOKLQ9zYMU1ZpGzF": {}, "3Gw8EiRlBvEifgSZ": {}}, "user_id": "7MqVJWdq0arnYCu9"}, {"extra_attributes": {"bbnauQLlAnAKQLCu": {}, "uCmOpeYtJgg99TPB": {}, "7xp3iqkbTOScXYlG": {}}, "user_id": "if2HBPGp7Ph4xedR"}], "ticket_created_at": 44, "ticket_id": "6KBguyhLHSU9hQTx"}, {"first_ticket_created_at": 16, "party_attributes": {"Ba8tND5WtAg8lQEj": {}, "aYQdfpZLM1VIeRGS": {}, "MQ45btTls1vhKBmC": {}}, "party_id": "ADVJMZkAFWwxybBR", "party_members": [{"extra_attributes": {"MBgGa4UhDim0RGyW": {}, "1zNghsqHf4yh8YeJ": {}, "Jb5CEo0TWz5mKeOw": {}}, "user_id": "iBuiKc9Var4kYccp"}, {"extra_attributes": {"RZuLpDkYYAJmFkhX": {}, "kmMRjyqUJGWFl5ls": {}, "JVF1tjAcee91NRhQ": {}}, "user_id": "vpnxGKkOQ0tI7zxZ"}, {"extra_attributes": {"xEy6GtAh20Nv5Ewm": {}, "1ZByrO7jI4vtdbnu": {}, "0wbMi6dtjcGePniM": {}}, "user_id": "ay4VUhNbWitwFADY"}], "ticket_created_at": 18, "ticket_id": "Pzn8W2RollqKcdUs"}]}, {"matching_parties": [{"first_ticket_created_at": 89, "party_attributes": {"dDuyhO1GT9qoRTPV": {}, "m6KZAXqP2v6cOiKR": {}, "NDkX2aQ2vjHbKYGG": {}}, "party_id": "dT5kRZh6JEpzwX1f", "party_members": [{"extra_attributes": {"ahtEmlWbFT3v39pw": {}, "Zw87RZ8wuD4Rze2F": {}, "6c2t73dvD63AKJhN": {}}, "user_id": "3lj8le7PaIRKNsGT"}, {"extra_attributes": {"bZ1djrV7IvgAK7Lg": {}, "6HjtXfsqloxI7ZGK": {}, "y6V841Lz83hOSWOB": {}}, "user_id": "iEQoykAVLnP0zEgD"}, {"extra_attributes": {"JuB5pciDOBjOrKNW": {}, "19M33ZSpGLGTz4vy": {}, "iHP86v5F5cqeur3W": {}}, "user_id": "OQgVBFYq02fOnyP1"}], "ticket_created_at": 74, "ticket_id": "JEKLutdvWjLls3Il"}, {"first_ticket_created_at": 32, "party_attributes": {"9MT22NBh2XdgHmun": {}, "OR35kZJOstLLH3wD": {}, "5TQvcZWyka5Vd6tC": {}}, "party_id": "VXLTVIqk6dRBRb4W", "party_members": [{"extra_attributes": {"RvOCMTqv6359ZXq0": {}, "XiLnOWf8OGgKFuJy": {}, "bWOPAYUk5MjSBDKJ": {}}, "user_id": "NiZQ9cQ67WgXJygj"}, {"extra_attributes": {"UU9MHD8LZrd8xrls": {}, "Z74K9KVO1xINgVvW": {}, "d5bvLfFHFVupD0VA": {}}, "user_id": "6jd9OBmIusEQWTlw"}, {"extra_attributes": {"k7QzWKUztw0j8vDg": {}, "TwDtvx4h5XxS2m7e": {}, "eU1gyraNYVrDpJjv": {}}, "user_id": "JwHT4MzfIjpPqyAv"}], "ticket_created_at": 59, "ticket_id": "CuYDHscwtXNdXFY5"}, {"first_ticket_created_at": 32, "party_attributes": {"w9tFeVHrVRFnUAmY": {}, "RjDFMTYAbvqyG2qi": {}, "gvNlUWUUeDW49To9": {}}, "party_id": "lh2KDaw3Qastgqwy", "party_members": [{"extra_attributes": {"JdXsWVQQDQfFb1NU": {}, "WP4iewF1xgX9MxW4": {}, "q8kw9aGlaowH58sE": {}}, "user_id": "DzMwrLoH223iaRnK"}, {"extra_attributes": {"9MHDUsSMLUCI6Aaq": {}, "nx22kWGzfUQz8jct": {}, "mMT0dVqwC4tlMYPd": {}}, "user_id": "fzGjy7JzsWOhv7a0"}, {"extra_attributes": {"WT6SbSnGN7uIeXRA": {}, "JBL40N7LYdw5E2Fi": {}, "A4B9KKJEbQZOBmAu": {}}, "user_id": "6YzHNQC9iP5ff9F5"}], "ticket_created_at": 95, "ticket_id": "96yKCFNUNWBAxfrp"}]}, {"matching_parties": [{"first_ticket_created_at": 95, "party_attributes": {"qw4JcwwokoISOgeD": {}, "pEXz6jE2Uw7JZz7R": {}, "KtnVg7j35HaZEDTU": {}}, "party_id": "0EbWZiLiWE3Icdgu", "party_members": [{"extra_attributes": {"HGnYj4TB1TSUEfxS": {}, "gASo1OUq3xc1mmdY": {}, "Zq8Lchn9SNrCnVrg": {}}, "user_id": "ieiMqzKtpB7SBj9u"}, {"extra_attributes": {"IupFGzELof47x1gn": {}, "LxftmNKaMkJuOVbY": {}, "bS2Gd6uJKl9olug9": {}}, "user_id": "vxn0QIx1lRW8j9vM"}, {"extra_attributes": {"BamzPEj6EsJgR6sy": {}, "Rv0dbaFTYWTrQwsK": {}, "G2ZFXpeZC9uf6PrU": {}}, "user_id": "jq18dLQGxxqiJ6jP"}], "ticket_created_at": 75, "ticket_id": "pzz9Rp3EZl5GtmLH"}, {"first_ticket_created_at": 55, "party_attributes": {"8qtfrB7a6EEJ36WS": {}, "nWyekqdKMn1p2MzO": {}, "yhIF8I53BMcUtIHS": {}}, "party_id": "5MrJv01In9BVYxWn", "party_members": [{"extra_attributes": {"K7QkVOql8RrX7534": {}, "FXu2OAJK5XaF9jY4": {}, "TKZIC2elrNA7FAdE": {}}, "user_id": "Y7dPxvtfEGgdAo1f"}, {"extra_attributes": {"Ew9VaGfsvoXleuNG": {}, "3yTUYkiEHQSyrSh0": {}, "JgnsQIePuQaUrjg1": {}}, "user_id": "VlOGm9O86Jl4tt16"}, {"extra_attributes": {"LM0SYPuFLbvLWPO5": {}, "vDn1WnsFfWhYROQl": {}, "E3CHLIN8MoLl33fr": {}}, "user_id": "k90Pmyr9AsjgLwhB"}], "ticket_created_at": 4, "ticket_id": "nQ5pB5qwXViKXJrT"}, {"first_ticket_created_at": 48, "party_attributes": {"IZwgk0C6MPTqZrBO": {}, "6GOoMqKIkKAXJjmx": {}, "7c9NBcuXHxkfDw47": {}}, "party_id": "H6v3V7qACXFEVVdC", "party_members": [{"extra_attributes": {"J4IsN3a75Z7u5Boi": {}, "PHzeTTQtSa5clpjM": {}, "RgC3o81KXnepGjBm": {}}, "user_id": "zgu8akOFCtdoiIfh"}, {"extra_attributes": {"GbtjKfUd8K0X1YVG": {}, "9KrdTPVx6ak4Epow": {}, "hih49TwA50Y34lPf": {}}, "user_id": "xiFnK5pxm70mFUsI"}, {"extra_attributes": {"9Em9lGNq2qUGH7x2": {}, "HJbvOTrC7umH6Txa": {}, "7T4w9lZ1aUNlxQqN": {}}, "user_id": "EmVaP8510qEZlr4Q"}], "ticket_created_at": 62, "ticket_id": "3ESzl5WPnA1yEd2K"}]}], "namespace": "nF8BDL7baqiB6ULZ", "party_attributes": {"nLI4J6FgunGGO01C": {}, "f3IoWNUHmXGT10od": {}, "5cFmTSKj3kaGEL9X": {}}, "party_id": "RCeZNoF0mNoiY8EF", "queued_at": 8, "region": "kgw8goaX57LZeIzt", "server_name": "5EmDOuEeCS0GC5g9", "status": "siMSRceXfmmYaQY3", "ticket_id": "kOaq8ZSrVOoi7VYk", "ticket_ids": ["yJosGBCCkzY8sW7Q", "vBquXAptoi4HqGde", "NRXUxrZoZ06ZcVRv"], "updated_at": "1990-10-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "2fjPg9SqOgteBHqd"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ZAehehGeg6pVj9X9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 53, "userID": "NQY9Kfh4P2UNpGMq", "weight": 0.26448987022407966}' \
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
    --matchIDs 'f8JXZIXcD5GXAp27' \
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
    --strategy 'xCyCvmn7U0Cq9YOK' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '9OZw6130sImo93qq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Uu0TejL8BMvHnXw0' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "KjtkC2gtx56jCEyQ", "description": "XLqqeSvNsZ01UtVl", "findMatchTimeoutSeconds": 28, "joinable": true, "max_delay_ms": 40, "region_expansion_range_ms": 12, "region_expansion_rate_ms": 37, "region_latency_initial_range_ms": 64, "region_latency_max_ms": 9, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 83, "min": 64, "name": "pNNbQjT4TscMPaBF"}, {"max": 19, "min": 24, "name": "J887n9KijgUbzyMT"}, {"max": 46, "min": 53, "name": "yaEwCoGPAMvRWuWY"}], [{"max": 6, "min": 15, "name": "Fz8V222rc0YAC1qr"}, {"max": 56, "min": 65, "name": "tE35y70QLQ3xdPDt"}, {"max": 84, "min": 8, "name": "NQwFPHcAIpaYl4Cp"}], [{"max": 100, "min": 74, "name": "Nj35HBjMJ1Dm37Ib"}, {"max": 71, "min": 28, "name": "oY3JJQ1nbFioiEd9"}, {"max": 67, "min": 85, "name": "c4yYaxLADvNu3Js5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 99}, "maxNumber": 93, "minNumber": 52, "playerMaxNumber": 81, "playerMinNumber": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 99, "min": 2, "name": "8wg0A1K866CXcDk9"}, {"max": 32, "min": 37, "name": "6j5yWWfjZNi8cAvh"}, {"max": 76, "min": 82, "name": "WeSbqB4A6dHrjccl"}], [{"max": 46, "min": 38, "name": "j71yat4LXWyPIePF"}, {"max": 28, "min": 85, "name": "f28S8dShUUCnPUcN"}, {"max": 65, "min": 100, "name": "SrzN0OLnUHGgZ7Ha"}], [{"max": 45, "min": 43, "name": "Mfm3tO1L70rZ0u9Y"}, {"max": 91, "min": 19, "name": "zwYIBID1k7FyTGEQ"}, {"max": 39, "min": 30, "name": "OU15nmZjzyez5vMT"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 36}, "duration": 60, "max_number": 7, "min_number": 30, "player_max_number": 89, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 9, "min": 52, "name": "FFg9vhLyFQPr5Xph"}, {"max": 15, "min": 75, "name": "ckFFlFUoRVQ8qqez"}, {"max": 71, "min": 63, "name": "iXoLSLJHvzGY3H6q"}], [{"max": 71, "min": 84, "name": "B597Qi6fm8RKeL0A"}, {"max": 29, "min": 12, "name": "lTsVp2IlPjq0PmVm"}, {"max": 11, "min": 78, "name": "XQHqfJseKhN94jr2"}], [{"max": 66, "min": 17, "name": "wJhTnoV9IjZA994Y"}, {"max": 28, "min": 81, "name": "u3jUmNEfOF6RMg99"}, {"max": 59, "min": 69, "name": "m0C6O0n2XZgQ85kX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 69}, "duration": 8, "max_number": 52, "min_number": 27, "player_max_number": 31, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 63, "min": 93, "name": "2x1cEZiVCViPB9aD"}, {"max": 4, "min": 93, "name": "Byg7csHACm8mDfEj"}, {"max": 61, "min": 56, "name": "CvVAcxlsAOXWuws2"}], [{"max": 93, "min": 93, "name": "py1DKTMNkRXrO92R"}, {"max": 66, "min": 59, "name": "IPqbwgz0O5E0Imig"}, {"max": 7, "min": 99, "name": "sGtYPXuo3BYNGKMt"}], [{"max": 44, "min": 91, "name": "H9cWyveuNWeraECJ"}, {"max": 14, "min": 20, "name": "n9t9Pg6LsrlxfuF0"}, {"max": 95, "min": 27, "name": "bvogBKdzLIB4Tl80"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 46}, "duration": 64, "max_number": 64, "min_number": 94, "player_max_number": 93, "player_min_number": 7}], "batch_size": 76, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 30, "flex_flat_step_range": 77, "flex_immunity_count": 75, "flex_range_max": 26, "flex_rate_ms": 53, "flex_step_max": 63, "force_authority_match": false, "initial_step_range": 24, "mmr_max": 99, "mmr_mean": 68, "mmr_min": 2, "mmr_std_dev": 54, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "sqi9toraPg3xrKHh", "criteria": "uBij7e4PDuCUdZ7S", "duration": 43, "reference": 0.14823162415834057}, {"attribute": "knuXbtlkRX34XTgo", "criteria": "xNIQY9G93YhhK1iP", "duration": 72, "reference": 0.843566143313899}, {"attribute": "WHBeRbOKs95etfYb", "criteria": "VznKI0kVn6A2wW4V", "duration": 39, "reference": 0.9323359767692914}], "match_options": {"options": [{"name": "yYadHqqnb8lcZ7eJ", "type": "RR60HFudqnn9cqTl"}, {"name": "rZ6jzfUWAlI6SHA6", "type": "lrkw9oRPoNUE22nb"}, {"name": "3GUAMUk3RP3Pa4bp", "type": "YxirCjU0JqAAt6mZ"}]}, "matchingRules": [{"attribute": "9vgm7nqQDbpFhN6b", "criteria": "GCvJapWgtbHPbq7G", "reference": 0.6602090108243321}, {"attribute": "wvp2EgxO3KsUiWLf", "criteria": "Lyk9keM04xuHAH1G", "reference": 0.7327255394806766}, {"attribute": "2BjgbrIsbdAI7dL5", "criteria": "8ksaK1FYCa7vmO1R", "reference": 0.5425429951369196}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "distance", "threshold": 40, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 62, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 82, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "newest", "threshold": 5}, {"selection": "random", "threshold": 31}, {"selection": "newest", "threshold": 18}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 23, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'xEIROOOjP5V6B8JA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'Os2IT4gKC2qz9Lv0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'awEEguLRSQfA6MMZ' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 61}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '046niI5v57SV8BeS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'F6bl4E1OE1f9geIN' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "WubwW3PsJYwDcmyQ", "count": 4, "mmrMax": 0.4691817605597771, "mmrMean": 0.489288323377177, "mmrMin": 0.9616564978753562, "mmrStdDev": 0.24360287569739147}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '9WeVbTqBFkEvWT9w' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 47, "party_attributes": {"zgYzxXyh8GcQ6kXn": {}, "ezNAhLjxGeJI5x1A": {}, "ebSn7LaIvJak50R4": {}}, "party_id": "cPcCtOO5vnJIUiBR", "party_members": [{"extra_attributes": {"Cku4rHOUUUkkRMWq": {}, "THOuGBVP33Lgtjns": {}, "KAeYm9F1U7BPlScf": {}}, "user_id": "zhQ1C2lfhgFvpG46"}, {"extra_attributes": {"2KAgLYNNyaSwY5dd": {}, "F9s3S9A85y45RdMr": {}, "vaMP0gvGcFCSYKIb": {}}, "user_id": "S8jWlKXScpjZIvyr"}, {"extra_attributes": {"nDjU0HS9K8MURgbr": {}, "nDp6epKu7AFU66ep": {}, "b2BWnxx2VfgiNzHk": {}}, "user_id": "suwYsKYMQlCQVLgF"}], "ticket_created_at": 87, "ticket_id": "lUibSrtumhSRABGT"}, {"first_ticket_created_at": 55, "party_attributes": {"D1hHDas7MzHTrs7F": {}, "11rgyKYOEq1niqOK": {}, "IHzyb8QZqqkjy69b": {}}, "party_id": "rD3AtOM3mP3072Z2", "party_members": [{"extra_attributes": {"gUt0ivbO4vmY7r0w": {}, "A0vg3aoryecuWlkU": {}, "Bpp04v17lIGSc42O": {}}, "user_id": "u5X6KaM9fHqRiwUV"}, {"extra_attributes": {"ShpzWoFuEl0AuczX": {}, "NdtWSccGwMJz0qhC": {}, "Cfz7WjGQCNdHed8J": {}}, "user_id": "G0CvkJt5JyCYWPyk"}, {"extra_attributes": {"oJpqwlnlmFcSiCXd": {}, "vHPcc8eaKBymlGDM": {}, "HbeOCWaAS7r9acrj": {}}, "user_id": "lqLOHXtOjsdRZfAa"}], "ticket_created_at": 34, "ticket_id": "rkgn5bv8rrpBa61g"}, {"first_ticket_created_at": 50, "party_attributes": {"Az4dVGP9WgTLxwQa": {}, "lGp8DjX3sGP8Bqh1": {}, "ZMUWzbDZ7KUvQ0GU": {}}, "party_id": "RGvDCJwyNHCP8Sx7", "party_members": [{"extra_attributes": {"DBXYsg8TmEZ7FM5G": {}, "ymB4B6pf0aQ1Fact": {}, "ZdAqXZ3qI23Iup0X": {}}, "user_id": "pU8Xr5Lk0aZNd2p5"}, {"extra_attributes": {"UCBmABlbMhT1EyWj": {}, "rcIaYDRmjWOeQRYL": {}, "oVjEOMzrxOzznUHq": {}}, "user_id": "fV3ltUhyG6PX8Klt"}, {"extra_attributes": {"TdshWgp85H7drx79": {}, "jRNnK8Zr3NweofoX": {}, "u9QIeyKWChQmM2eW": {}}, "user_id": "tbP21EL2G4k3E1tS"}], "ticket_created_at": 88, "ticket_id": "Gykks33w45KNur83"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'vs4qebN14vmtEoGr' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 28}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'fJuIHkRh4G5BOkeo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'KKqcSDxEy5Ik6qWZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'pgx8KTyyYpSx6Iav' \
    --matchID 'ejxgddTj302FiFKM' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["XeVZYz8LjDjDSgq3", "To8MKMeMjsGI9pO8", "WnRqJWhbIsANrWWt"], "party_id": "2d8HDo7T94ObDEDU", "user_id": "tzaRHKqlMS8LVUOj"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Tn1v7KQNYPGOK93C' \
    --matchID 'anLDqRn5HdvxRjAr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'kpYl2L9pKW78ZGRo' \
    --matchID 'keXaThSAVpV4zbn9' \
    --namespace $AB_NAMESPACE \
    --userID 'wLp6dTG3aMp3rkXv' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'XRSW7ttCVFjPzMUy' \
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
    --channelName 'OLMzOiSxTbAovbgO' \
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