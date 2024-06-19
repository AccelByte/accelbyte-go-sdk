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
    --limit '60' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "0ZeIncP8Nwo0xrgg", "description": "sFQtzmGy1Dx6y39u", "find_match_timeout_seconds": 61, "game_mode": "REYL9chcc5D5Y4t2", "joinable": false, "max_delay_ms": 4, "region_expansion_range_ms": 19, "region_expansion_rate_ms": 23, "region_latency_initial_range_ms": 57, "region_latency_max_ms": 36, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 43, "min": 15, "name": "0ii5jnqrJg2ErMXK"}, {"max": 24, "min": 97, "name": "wKhWXh5gGBBZri27"}, {"max": 61, "min": 54, "name": "XQSw9ZmDFWtsoIy2"}], [{"max": 81, "min": 86, "name": "XkHlgVHDDgqQQvU8"}, {"max": 42, "min": 86, "name": "WPTSs2pj4ZcM4d3I"}, {"max": 78, "min": 44, "name": "ECDcGvMdArNvULO2"}], [{"max": 25, "min": 76, "name": "h3cP4zAvWIHS9u0E"}, {"max": 91, "min": 61, "name": "OjoZYIGZ3rx8hPct"}, {"max": 61, "min": 22, "name": "Awf26TY3dRZHRx6I"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 22}, "max_number": 68, "min_number": 93, "player_max_number": 38, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 66, "min": 48, "name": "WTeR9hMWlMREJxfF"}, {"max": 78, "min": 85, "name": "MQv0LgXI4c3hqjP9"}, {"max": 25, "min": 58, "name": "z4M749hCa4oBJObb"}], [{"max": 69, "min": 26, "name": "dPf7lQAyicI1aPpX"}, {"max": 85, "min": 54, "name": "ghbQxnT1xQdZ237F"}, {"max": 36, "min": 93, "name": "aIk9hC935mc2rLZg"}], [{"max": 56, "min": 82, "name": "B9FWCNR80GJYHHY4"}, {"max": 33, "min": 9, "name": "0DiBwOiOTchGqU5C"}, {"max": 8, "min": 11, "name": "x90nA5lJKlVUsU6i"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 78}, "duration": 57, "max_number": 60, "min_number": 32, "player_max_number": 90, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 44, "min": 62, "name": "ohgZ2bjVG2SuDjSn"}, {"max": 5, "min": 15, "name": "1U9yjaEg1JBaE9et"}, {"max": 84, "min": 45, "name": "GJ2pijPnIXpTRznf"}], [{"max": 64, "min": 50, "name": "HgaB8MM93wXn6yLe"}, {"max": 10, "min": 48, "name": "xyb3JcmyNTpBFAOx"}, {"max": 23, "min": 60, "name": "GuNn6Cbq4w9CXHBK"}], [{"max": 74, "min": 81, "name": "NFBoLHlYKIRivakQ"}, {"max": 90, "min": 40, "name": "8azt8jp8NzPm1SZW"}, {"max": 7, "min": 76, "name": "i7czyKhUtj25YcgW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 15}, "duration": 79, "max_number": 19, "min_number": 4, "player_max_number": 29, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 86, "min": 91, "name": "o4UONHMEXNKiKLuW"}, {"max": 87, "min": 15, "name": "syKV1x2V5wucCCH2"}, {"max": 64, "min": 79, "name": "oFfO2d0Ft7Y6jxU9"}], [{"max": 38, "min": 91, "name": "O0PAk3h8u7GKc5NB"}, {"max": 91, "min": 99, "name": "PP9odSr4Yw2Rrqas"}, {"max": 13, "min": 62, "name": "qoe0EfWA31wiGm1Y"}], [{"max": 11, "min": 95, "name": "5BBbDx5lWL4RFNqw"}, {"max": 57, "min": 39, "name": "3uuzUCEiCgR5HbO7"}, {"max": 3, "min": 29, "name": "tnF6R2AZVn4qXmMm"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 26}, "duration": 1, "max_number": 57, "min_number": 71, "player_max_number": 88, "player_min_number": 1}], "batch_size": 79, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 60, "flex_flat_step_range": 26, "flex_immunity_count": 30, "flex_range_max": 62, "flex_rate_ms": 36, "flex_step_max": 22, "force_authority_match": true, "initial_step_range": 99, "mmr_max": 73, "mmr_mean": 23, "mmr_min": 5, "mmr_std_dev": 43, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "x0RpExc2KnhNoBBB", "criteria": "TxcmbE0p7fiVROuE", "duration": 72, "reference": 0.38216112699736493}, {"attribute": "48NWz9uPFJ71oTuW", "criteria": "u7bpnveZms0KJrCd", "duration": 91, "reference": 0.08899258562499723}, {"attribute": "vM1BCRZWSDRFsPlX", "criteria": "kZzpDUbzLb2udfxx", "duration": 77, "reference": 0.5805027651425817}], "match_options": {"options": [{"name": "HpsSikrB7JpQpfYW", "type": "bVCgt4TNHSY3PbKr"}, {"name": "M5oATxT0jOE6bVux", "type": "LZxXiwNRyuoWQwhY"}, {"name": "E8Xw9W5AiFCOVbMu", "type": "NbSuAbqifvH4NHEB"}]}, "matching_rule": [{"attribute": "1uO56WO9onzDVYZ5", "criteria": "vUhoQnsybDrp7B5a", "reference": 0.015977129511495658}, {"attribute": "4f8sXDmD3KvdvGQW", "criteria": "siPh6AQRKwukK1gA", "reference": 0.49588981350699557}, {"attribute": "0Dv6NQNOXyoCDxtg", "criteria": "HiHGDGR6vO7yll4u", "reference": 0.4392269034866526}], "rebalance_enable": true, "sort_ticket": {"search_result": "yHOGZpBKJ0qtch80", "ticket_queue": "mIVzsoOHJeIIJRXp"}, "sort_tickets": [{"search_result": "r1IWYD37pNjuXg3G", "threshold": 87, "ticket_queue": "YmBW0rlHg8dZQKqU"}, {"search_result": "hxbRz9pBEkFQF4b8", "threshold": 6, "ticket_queue": "x5TmjygHTcEjNRAX"}, {"search_result": "4zDeS1pjKDODN0rF", "threshold": 87, "ticket_queue": "hWGo4NaAO7Cyagfj"}], "sub_game_modes": {"zMtI6sJANUvXUyDq": {"alliance": {"combination": {"alliances": [[{"max": 58, "min": 59, "name": "VZzJo8Y389KmyCMm"}, {"max": 25, "min": 94, "name": "UV1XXnePBdeAUNIe"}, {"max": 21, "min": 57, "name": "gFR6rYpCUizyEuva"}], [{"max": 81, "min": 22, "name": "rcmy3czoVEaIujVd"}, {"max": 73, "min": 82, "name": "dwqA7aQu0JEfNfut"}, {"max": 37, "min": 26, "name": "qFDHWi3OIdHY6Qww"}], [{"max": 80, "min": 8, "name": "LP9MO6Ew7McUZOyW"}, {"max": 34, "min": 19, "name": "uiuId2AWuYUqAx3u"}, {"max": 83, "min": 26, "name": "5cVpL5TtIBfLS8do"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 42}, "max_number": 18, "min_number": 42, "player_max_number": 9, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 2, "name": "WPvAHBQqatK4NIgY"}, {"max": 69, "min": 58, "name": "3hSrNTayyOEBUfl9"}, {"max": 26, "min": 10, "name": "5mdEBXXg3rlvvuQb"}], [{"max": 55, "min": 70, "name": "zOn1UtSkYfVjKsRO"}, {"max": 88, "min": 38, "name": "yuxvyjmaP2QSNYOz"}, {"max": 74, "min": 27, "name": "qmYlrwXqve6tuq3y"}], [{"max": 0, "min": 66, "name": "apEXXL1Si7DiWmv2"}, {"max": 64, "min": 20, "name": "M69gqy2RMcKoRPGs"}, {"max": 80, "min": 22, "name": "WOQwOS2GtK4YKVB9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 80}, "duration": 56, "max_number": 27, "min_number": 96, "player_max_number": 95, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 63, "min": 89, "name": "uShBPGFmBqgaJ0we"}, {"max": 22, "min": 76, "name": "209yewwmYd1RbWea"}, {"max": 80, "min": 60, "name": "8EYiVqKF5YMGUAn5"}], [{"max": 51, "min": 72, "name": "Z0po0VNC11ALqu5I"}, {"max": 24, "min": 25, "name": "sfdvaEJJhz4beRcu"}, {"max": 43, "min": 54, "name": "UrBGg8TodAkJm9tw"}], [{"max": 44, "min": 96, "name": "ywIOh9BgPIoH784M"}, {"max": 6, "min": 10, "name": "Mff9gGTC3ypyJ4vK"}, {"max": 35, "min": 25, "name": "W0ocedtE0Mgw0Zcc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 23}, "duration": 98, "max_number": 53, "min_number": 49, "player_max_number": 39, "player_min_number": 58}, {"combination": {"alliances": [[{"max": 65, "min": 34, "name": "0PqjA7u3paadaAQA"}, {"max": 81, "min": 83, "name": "whl5TXET9bWOSHDn"}, {"max": 78, "min": 35, "name": "yJohAoPnA0IDAfaF"}], [{"max": 5, "min": 23, "name": "CHT9GYdLCG0AUaE1"}, {"max": 94, "min": 63, "name": "7FC7PTzvh7UdhHFJ"}, {"max": 88, "min": 82, "name": "h7ByxY3tJeU94Zxs"}], [{"max": 58, "min": 28, "name": "BIufTyiak95OVfCh"}, {"max": 44, "min": 47, "name": "Q08oJsQP2HliYM7U"}, {"max": 79, "min": 97, "name": "A6IA2p30GTd5comH"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 4}, "duration": 100, "max_number": 24, "min_number": 62, "player_max_number": 37, "player_min_number": 61}], "name": "neZY4cdWs8OfOqCE"}, "N7oJCFbMkggmjXLx": {"alliance": {"combination": {"alliances": [[{"max": 87, "min": 0, "name": "4fx0bU05TG1I9Nv3"}, {"max": 71, "min": 11, "name": "mnWgSS6JE6go3MxN"}, {"max": 63, "min": 24, "name": "vJ3QA5zfbRIJf3hq"}], [{"max": 1, "min": 77, "name": "2Q4urxn35On3YYrV"}, {"max": 58, "min": 55, "name": "nASdtAiRMKNTNDlA"}, {"max": 99, "min": 17, "name": "iZsxWztMdENBkHIn"}], [{"max": 95, "min": 81, "name": "MPq8jL6BztkwDyEl"}, {"max": 99, "min": 10, "name": "AmlPuA55sYxBASVv"}, {"max": 86, "min": 7, "name": "p3Hsezin38MvYKLy"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 96}, "max_number": 17, "min_number": 13, "player_max_number": 35, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 64, "name": "UcaieiroM4vNgqX7"}, {"max": 52, "min": 95, "name": "M1nsM4RQEUcVKl6u"}, {"max": 87, "min": 74, "name": "SWw5Kik4JZ7B3zwP"}], [{"max": 29, "min": 81, "name": "kGh8vdyForV92PKj"}, {"max": 94, "min": 41, "name": "jpQ7BUvsPC7zSfMy"}, {"max": 87, "min": 36, "name": "R8B3fUptYZ7fMf4L"}], [{"max": 41, "min": 75, "name": "uOMNavCofAGKFjUx"}, {"max": 49, "min": 5, "name": "RrKHSorjytdN2L9r"}, {"max": 33, "min": 13, "name": "hFAd2qd3ykdpbNq7"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 73}, "duration": 7, "max_number": 85, "min_number": 94, "player_max_number": 54, "player_min_number": 33}, {"combination": {"alliances": [[{"max": 57, "min": 43, "name": "iMGQ4e1r7JmSVPJg"}, {"max": 18, "min": 51, "name": "f8WDcDW0KivZA1qZ"}, {"max": 37, "min": 63, "name": "tHiEh3NTIpdkmny5"}], [{"max": 25, "min": 63, "name": "5Z54ZcjBdr5xfevR"}, {"max": 45, "min": 27, "name": "g8503QFmVimId4q7"}, {"max": 64, "min": 26, "name": "6dAp1LLIYEiBGbOh"}], [{"max": 59, "min": 85, "name": "gwH1N0oi4WK3uwqg"}, {"max": 34, "min": 18, "name": "0xP7SlcvBr8bfj81"}, {"max": 24, "min": 27, "name": "8kTu0mXO74fO8EFl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 18}, "duration": 89, "max_number": 28, "min_number": 87, "player_max_number": 5, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 59, "min": 73, "name": "EdMZdGVeOUJ8Flyd"}, {"max": 25, "min": 68, "name": "tODyjrGgQyYoOfHa"}, {"max": 38, "min": 10, "name": "SqUJ6gY6b5naVePC"}], [{"max": 70, "min": 100, "name": "l6Xec1iKL6KGBVCk"}, {"max": 72, "min": 90, "name": "HR5UkoqRjg0Scagm"}, {"max": 37, "min": 80, "name": "GGuhBxSe8EWWnNwL"}], [{"max": 49, "min": 56, "name": "595lqn6rUmchg0Hb"}, {"max": 33, "min": 54, "name": "v1m9pF0TkmlJlPkC"}, {"max": 59, "min": 95, "name": "FN0NAB1i8tB9L1j2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 5}, "duration": 25, "max_number": 74, "min_number": 52, "player_max_number": 45, "player_min_number": 74}], "name": "WQniwsdCxYQgLVaR"}, "dvYhaCgPMl8HSxZ6": {"alliance": {"combination": {"alliances": [[{"max": 59, "min": 22, "name": "NXITrl9Wcss07TAU"}, {"max": 18, "min": 6, "name": "hxvZWR4VYqjWQyxG"}, {"max": 57, "min": 0, "name": "v4VwvlGsRmU32ONf"}], [{"max": 77, "min": 33, "name": "8UNIcGjCbAGGntQ7"}, {"max": 14, "min": 22, "name": "k2hGp7Ret1Czeqkx"}, {"max": 10, "min": 83, "name": "oSjx5pJyov4LKqGi"}], [{"max": 10, "min": 90, "name": "mHFK4DcOqjTcEWXZ"}, {"max": 31, "min": 71, "name": "6vDXs2y14CzLqdXn"}, {"max": 64, "min": 100, "name": "qrftsUbE3qRqPL5s"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 59}, "max_number": 99, "min_number": 29, "player_max_number": 98, "player_min_number": 43}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 31, "name": "zHidZL4tSlcdThxx"}, {"max": 22, "min": 87, "name": "KSTcRp5sDHhSWN40"}, {"max": 72, "min": 1, "name": "0qVRqIHKuXlJ3N1q"}], [{"max": 91, "min": 74, "name": "GQD3eErJHPLx37QQ"}, {"max": 5, "min": 85, "name": "4TxGQyp0hbqghe3E"}, {"max": 64, "min": 28, "name": "O1P79VReKv2Asefp"}], [{"max": 50, "min": 4, "name": "ZrxMt9ob1vD7DQU2"}, {"max": 25, "min": 36, "name": "zfVSn77sufuG70Ae"}, {"max": 51, "min": 37, "name": "M3b7q1rBzzUcObfZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 45}, "duration": 93, "max_number": 78, "min_number": 89, "player_max_number": 9, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 1, "min": 27, "name": "Y77r6zzUxiQXVDcz"}, {"max": 84, "min": 58, "name": "mIWRLuIen09r9FAD"}, {"max": 15, "min": 10, "name": "wk7YGfjAkG2IvK8q"}], [{"max": 43, "min": 14, "name": "P4QcbdJrgnErepow"}, {"max": 85, "min": 7, "name": "MOkVQtFyDXnPcj8q"}, {"max": 10, "min": 86, "name": "9aU1MJFeyEX77E5h"}], [{"max": 52, "min": 47, "name": "N7xpjB9E8dlLR5kE"}, {"max": 89, "min": 29, "name": "m5CDUJMSNEA4ckMp"}, {"max": 61, "min": 88, "name": "r4zQqkNXpwCr5N1Q"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 99}, "duration": 67, "max_number": 13, "min_number": 87, "player_max_number": 6, "player_min_number": 70}, {"combination": {"alliances": [[{"max": 85, "min": 54, "name": "1QQC5KD5v0oRwUJD"}, {"max": 73, "min": 88, "name": "bQj7vFIz8ulch1QD"}, {"max": 7, "min": 18, "name": "6Kb9lpsCHRVJ8u1t"}], [{"max": 65, "min": 21, "name": "gHBiFmrxMauWUnDq"}, {"max": 85, "min": 64, "name": "L10VzRXJp07VlyxH"}, {"max": 51, "min": 26, "name": "DozxS95ZYiOwNbcD"}], [{"max": 10, "min": 72, "name": "qFGcwnKkbhfFqya9"}, {"max": 79, "min": 63, "name": "lnBN1MgTKJ8oGHFV"}, {"max": 78, "min": 86, "name": "hgwIZo60TkHOJZ11"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 68}, "duration": 55, "max_number": 81, "min_number": 8, "player_max_number": 55, "player_min_number": 79}], "name": "onpdV54c5jkwK9QK"}}, "ticket_flexing_selection": "FZfT619Hi7QxptRr", "ticket_flexing_selections": [{"selection": "WmrdzUeMlc76iUUn", "threshold": 3}, {"selection": "fCrLK87RE4zd9VpJ", "threshold": 96}, {"selection": "7wCbLUrTJHZzdpiD", "threshold": 69}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 23, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'a0vki6XyPcTxIi6q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'j58YxmQqdkV6X3k6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "v5PSBw45YU5ZWaOd", "players": [{"results": [{"attribute": "3MUnsjjZOlh39X3F", "value": 0.397072077470333}, {"attribute": "iXBgc5CoQnUUc40z", "value": 0.7582440915359215}, {"attribute": "M6cWusrwF6NcGH4x", "value": 0.47510280605131194}], "user_id": "HXgbRHLZgFzYiU4B"}, {"results": [{"attribute": "Gklie94wuOwSzVu4", "value": 0.09707585719673362}, {"attribute": "6uA7RkHVVUgM9WGj", "value": 0.64773931714383}, {"attribute": "ucIqdIYZqIvtWhB7", "value": 0.7294787973808855}], "user_id": "BTafwWY8qvUBE3IR"}, {"results": [{"attribute": "wX8vLhdCoul9dM5Y", "value": 0.5249396429623219}, {"attribute": "JFggBOarsEbaDbw9", "value": 0.9280620194025819}, {"attribute": "SbsXV8d6EZNfoQ5i", "value": 0.6289176335126675}], "user_id": "qRvHVFqjXac5EHFb"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8FIQq6qxOdfCQX20"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "G3xDSkwLipL8CePZ", "client_version": "Nr59yLNy14jKjDaU", "deployment": "TtocMOBDIRPSFtvR", "error_code": 5, "error_message": "k2r4KeVnbcV1X0G9", "game_mode": "swhjYwj43CV74WYM", "is_mock": "iXcY2etB2qxzQkva", "joinable": false, "match_id": "iE6kfdKPPJMceuBe", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 34, "party_attributes": {"U9YMP4HUbWaN60P1": {}, "7WPpYFNF4H6XetfD": {}, "XCzXd2O0fxWNX4GD": {}}, "party_id": "q0YOBc4UCwTA9EqX", "party_members": [{"extra_attributes": {"dH92SefkX71oxGcz": {}, "8nR41m0vcOEcgTVz": {}, "7TsOSlmkGzubtkpI": {}}, "user_id": "tPAtrT6exhokvLl0"}, {"extra_attributes": {"JbWyQo6CApHRN9qX": {}, "bGuG3U2NJhQnttHP": {}, "iWZIq8Ww58VDMioc": {}}, "user_id": "DAwAaZp2AIi5gkXu"}, {"extra_attributes": {"V5JMrX2ag5TvVBUC": {}, "MXVWGPsRkbAwAg60": {}, "gFWfVsuZ0LAtviT8": {}}, "user_id": "mVYlAAnrYgW0ZLMW"}], "ticket_created_at": 41, "ticket_id": "SwUHMPXh9g0Eiwbs"}, {"first_ticket_created_at": 13, "party_attributes": {"Of3phHmLrsgiJoao": {}, "ZwSvvWs8O9yfbuZl": {}, "nfs9cDEwr340qu3H": {}}, "party_id": "DDRkzF0QAkFuzVh4", "party_members": [{"extra_attributes": {"Mxt9alfaxVRkKX7l": {}, "0yyffICfOP6fawRG": {}, "qwQlAXsofnnsv4KY": {}}, "user_id": "g3ZDmtSnhRLKvA0i"}, {"extra_attributes": {"9z3EWnbSlwC0XtmF": {}, "8VNVleY9Ox5YjLkW": {}, "DUpH2i62l0LDMpX1": {}}, "user_id": "vzrgicyy6uHp7vw3"}, {"extra_attributes": {"lV11e25tPQV3J9fK": {}, "qURU084TjlsPKDJ7": {}, "PM7BTrqqD8yTJ9iX": {}}, "user_id": "CZU6b4uHUDPI12Rx"}], "ticket_created_at": 98, "ticket_id": "q2A2Il4G1JhkMRgZ"}, {"first_ticket_created_at": 70, "party_attributes": {"sD2mRufTgZq2vWSg": {}, "tlfelzdpZMga0ekn": {}, "iWtDcwAOZWs7mLMD": {}}, "party_id": "k02nHuxMHlA560Ez", "party_members": [{"extra_attributes": {"1YsHw68IVuia2QSf": {}, "pa0foqdWRqX8DgLA": {}, "ubjzASh7DiUPDLwo": {}}, "user_id": "isgVdWHX0BBMOohz"}, {"extra_attributes": {"0u2HZfvmVrqtwrA7": {}, "UX7M3DE1nFjzEnuL": {}, "0bgi2Q3hTEq3tCOa": {}}, "user_id": "3c0W0smBg31tsSAu"}, {"extra_attributes": {"QO7z4Ev9PQH8ej3q": {}, "YDcEugVZ8b9ANAce": {}, "Qp2siQvqATZOqd5E": {}}, "user_id": "U73fWv8F6HvO49D5"}], "ticket_created_at": 36, "ticket_id": "oP0MtJDZsFytzLCn"}]}, {"matching_parties": [{"first_ticket_created_at": 96, "party_attributes": {"xnjDtPvbmftS6CYu": {}, "Bwz3XAOIixGMnHEv": {}, "bItEOu4tEWDxYJR8": {}}, "party_id": "m66t2447dQJqjvMj", "party_members": [{"extra_attributes": {"MuSLuOc63ire40B9": {}, "EPVNVxoT71UgppRy": {}, "eg1jKa2kDQeqDzXV": {}}, "user_id": "Ebde3lIjostUq9Ad"}, {"extra_attributes": {"LASb7mJdjQzzTSfb": {}, "2uE6zFyhsPGApKot": {}, "CODJogivbCiASx4b": {}}, "user_id": "ZqRuGlrPaIqgYkGq"}, {"extra_attributes": {"gJhijHl9i8VzVhNG": {}, "E9afQF9345S1hvvt": {}, "buiRomivPJffNHdx": {}}, "user_id": "ObooTfel7wNIhyBi"}], "ticket_created_at": 55, "ticket_id": "9TOfJ8aLcsxL6GMW"}, {"first_ticket_created_at": 46, "party_attributes": {"uIPzZs2QHNJ1TuyY": {}, "YfffCEBa5N0mw1H5": {}, "26IZwoH6R06q3PLA": {}}, "party_id": "AKZFEZjp7ahRo6KR", "party_members": [{"extra_attributes": {"2Fv4OFazLgpwmS1s": {}, "JS2GEw5QfRRftLvO": {}, "Licyp1r3gPPdty1a": {}}, "user_id": "pmkCpCBqk2jjKoMb"}, {"extra_attributes": {"anGBDLnQCPtOqbav": {}, "arexiJdZdh32FVDw": {}, "pd2bfjvchh5FmIkI": {}}, "user_id": "TVR1Spgri7FJT3x9"}, {"extra_attributes": {"UIDi8JiolvxkM0s8": {}, "81EU81CfeUQZULvi": {}, "cfxOqhcT8AcFlPi3": {}}, "user_id": "7GG8vxuy0UYSJSSx"}], "ticket_created_at": 75, "ticket_id": "LJeAFthA304FIg8v"}, {"first_ticket_created_at": 62, "party_attributes": {"y7NSYffzAWgN4bcX": {}, "uNYgt7W89HWAEvgV": {}, "0eleft73Zu2tp6n6": {}}, "party_id": "pe6G16Krt7KeYUAU", "party_members": [{"extra_attributes": {"XxYSLPQdvtmr6Hbk": {}, "YQupZOhPtUsm8bRl": {}, "hoB5vqCKrTu8uAVz": {}}, "user_id": "U4lavFYDAc8itXPi"}, {"extra_attributes": {"ewjayLcRVPHPgTPy": {}, "HZL7E2W4lTmtwU65": {}, "reO8oCOObzK41wXT": {}}, "user_id": "jUDxbyMn3dTUyV3a"}, {"extra_attributes": {"bF2MGzJG4e9tUvJy": {}, "gKChOZmK27ViFPHO": {}, "ru1qZ02HGOO1dSLj": {}}, "user_id": "AJOD6IWLArYEDKXd"}], "ticket_created_at": 34, "ticket_id": "SACdYqNp0KNLAyjv"}]}, {"matching_parties": [{"first_ticket_created_at": 87, "party_attributes": {"8Bt02VPhmEEF7GYd": {}, "3BlFh74Npjf71Cnu": {}, "lnPa1fjbzSR28wTn": {}}, "party_id": "cHC4W9Tczt6LjTOj", "party_members": [{"extra_attributes": {"iOoR5ZHj4Ve0qdHz": {}, "kz3Eeo67Bt4HHkbO": {}, "lyL9Etj59OyM5JpC": {}}, "user_id": "LLPikgD8uNTG9vcG"}, {"extra_attributes": {"37NOStB0DLhy7UGP": {}, "YofzP5TcP807A0Cy": {}, "LeAXx4cflHUsBe7s": {}}, "user_id": "CiE9fhRYNPylnRnT"}, {"extra_attributes": {"WClHzrFlI5msdwYI": {}, "78fpRRWWBLGo6HoS": {}, "736vKIW04bVGtmrx": {}}, "user_id": "I92mBhvitBXMJm7P"}], "ticket_created_at": 55, "ticket_id": "owRRc19qHtYtNgTR"}, {"first_ticket_created_at": 97, "party_attributes": {"VoQVpdVfpffArzV3": {}, "1JOhheVcIKrLBAb4": {}, "KqSwh33ZmWH2zao0": {}}, "party_id": "r2aAX6sEz5wIRZuI", "party_members": [{"extra_attributes": {"81ThlDDdTOIabkt0": {}, "RopX5mAyA8X5CQz8": {}, "YE0mjKU47TAepgB5": {}}, "user_id": "cFVX1Din9zAVq9BE"}, {"extra_attributes": {"7SCjJEkecaMz2mkq": {}, "SCp2A0FVHxNA4NBH": {}, "iFYjug2vVHQ1XRPp": {}}, "user_id": "FK8VYpjHKKzpIori"}, {"extra_attributes": {"B1uTcg70TWyVqaxV": {}, "zyTEv0AezH9Cm9Iq": {}, "9Lhl5nuMtDonQGfA": {}}, "user_id": "L9T1AqUlXyYQX8v0"}], "ticket_created_at": 32, "ticket_id": "BUP9VZ0on3XpGgJz"}, {"first_ticket_created_at": 66, "party_attributes": {"jTBnEs7fq2VKo9Dk": {}, "XiCsO4hMlVUgdy4q": {}, "EHXqg6zJ3oEtoLFc": {}}, "party_id": "pwpq7iq7Lk8bCmPx", "party_members": [{"extra_attributes": {"uDKnps53g5Q2KmNc": {}, "d7L2oOcNsIdrw3vq": {}, "j2jGxjRO7xLhlmbA": {}}, "user_id": "4lZXeqJd5fYcqTPH"}, {"extra_attributes": {"DlPi5aQ6ASkgD3Uq": {}, "pK2OAF1VugPWDFkH": {}, "FefLVlPd2Ih12vrX": {}}, "user_id": "CEmHrvjAnNIyawiL"}, {"extra_attributes": {"ORBmzuk3tXcA5h5e": {}, "vvH5GArwhtut0LN6": {}, "lhnYOzWPq6hbbSFt": {}}, "user_id": "BkGGEhMnfyHy3YzV"}], "ticket_created_at": 3, "ticket_id": "D0PDxA18umk4o3XL"}]}], "namespace": "rhUYIWCMMuVtYuTQ", "party_attributes": {"Cdbht42xFcJoCBO6": {}, "0rwv58V2glirF4tt": {}, "H9mJruqrfjjQdd3W": {}}, "party_id": "6UUduYrJsFXiHsAw", "queued_at": 35, "region": "6yScTHxiYLsWJZPl", "server_name": "enINKMNagHNtYB8s", "status": "FuxsdW9H9s22YyCG", "ticket_id": "ZgjrTAY18oOwCP9G", "ticket_ids": ["QckFosMItXp3eSIP", "EZAd3CpitkMCaI7Q", "Zv0Txi0oXKgoFUNe"], "updated_at": "1999-03-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0A34BbI2eKIagVdB"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'mIrdyt285bPFbCSc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 12, "userID": "ECbSXihQf4IeGXXB", "weight": 0.9897847378944165}' \
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
    --matchIDs 'ww58PjZgYDQATuYL' \
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
    --strategy 's39N3usFdm6j3h97' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '3hXQdGqaZ1fzlZmm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'ajxaeODOZ8U4VfLU' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "HNV7VboMvHDHjbDm", "description": "G8lzV5RUI7rimHAm", "findMatchTimeoutSeconds": 6, "joinable": true, "max_delay_ms": 20, "region_expansion_range_ms": 55, "region_expansion_rate_ms": 92, "region_latency_initial_range_ms": 42, "region_latency_max_ms": 66, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 43, "min": 64, "name": "yjAn0K3qVvfaVtEO"}, {"max": 43, "min": 29, "name": "XrEkrQzBsJ4Q2x3L"}, {"max": 72, "min": 96, "name": "s2eL3bqkWo1njZr5"}], [{"max": 70, "min": 10, "name": "x2hh4ihPWC3gqHdO"}, {"max": 49, "min": 90, "name": "6Ot05khL9tCT71Gk"}, {"max": 63, "min": 66, "name": "5sf5Syyd9RckWRki"}], [{"max": 13, "min": 100, "name": "qkmWMSxcUuLwxU5y"}, {"max": 83, "min": 56, "name": "mHocZk8sI688SwUn"}, {"max": 12, "min": 89, "name": "MObhyJBAaWoP0nnt"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 7}, "maxNumber": 18, "minNumber": 42, "playerMaxNumber": 37, "playerMinNumber": 87}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 76, "name": "7tH4srBSuauypGk8"}, {"max": 11, "min": 1, "name": "stANj04iEFt5X9an"}, {"max": 98, "min": 49, "name": "u96PROkdCkLz34Ps"}], [{"max": 100, "min": 90, "name": "FhYCtLtsfcSCXqL9"}, {"max": 75, "min": 86, "name": "dHkRuLVCXzgdOnI0"}, {"max": 96, "min": 59, "name": "g6uACXKKxiamiPJc"}], [{"max": 1, "min": 4, "name": "oEcU8av15Gp4jx4e"}, {"max": 27, "min": 35, "name": "N9nZfLxqpEK0miki"}, {"max": 24, "min": 26, "name": "qpWDMlVcBD7JoTfP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 71}, "duration": 87, "max_number": 25, "min_number": 74, "player_max_number": 58, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 74, "min": 18, "name": "hcfoTaPOv1DxWwmB"}, {"max": 4, "min": 19, "name": "VEWLuBGpcpHe0jxV"}, {"max": 27, "min": 74, "name": "dQwRNpNsM5xdelqL"}], [{"max": 10, "min": 76, "name": "IVSV2RHSqPhCeKQm"}, {"max": 38, "min": 44, "name": "E9XRu1evFUqqTKMc"}, {"max": 5, "min": 32, "name": "YqdJLkejS5gyNauy"}], [{"max": 40, "min": 60, "name": "dl1k9jnuzB1lmLrL"}, {"max": 76, "min": 49, "name": "ftodIMwtIrrfjcX8"}, {"max": 85, "min": 57, "name": "6kSVguLv1tLrIEje"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 22}, "duration": 22, "max_number": 86, "min_number": 54, "player_max_number": 39, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 68, "min": 44, "name": "JDXuhzB1YDxDvu9W"}, {"max": 92, "min": 27, "name": "GA7IMbEUJ1238h5y"}, {"max": 2, "min": 65, "name": "NR0Rq0KdM6YWzQJe"}], [{"max": 63, "min": 43, "name": "Twq7tyrSf5K5ZFsc"}, {"max": 61, "min": 99, "name": "nb92poOMIaDC9Fs9"}, {"max": 83, "min": 83, "name": "FkMfawBlhn7gHjWB"}], [{"max": 92, "min": 79, "name": "wMJND2RFBxHLAjS9"}, {"max": 76, "min": 26, "name": "bbshnefd3GYZMTQp"}, {"max": 68, "min": 98, "name": "fRaFDNeRa1V4AU3E"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 31}, "duration": 98, "max_number": 7, "min_number": 12, "player_max_number": 82, "player_min_number": 28}], "batch_size": 65, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 3, "flex_flat_step_range": 81, "flex_immunity_count": 67, "flex_range_max": 52, "flex_rate_ms": 74, "flex_step_max": 9, "force_authority_match": false, "initial_step_range": 94, "mmr_max": 30, "mmr_mean": 26, "mmr_min": 1, "mmr_std_dev": 6, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "05UK5i52MT2j4J3a", "criteria": "NUCZ7oTxEsyekhMP", "duration": 40, "reference": 0.10881133468118698}, {"attribute": "tUFmrPK4t4LXJ99k", "criteria": "tg5SmjFDOJe7yVNj", "duration": 65, "reference": 0.026275476547609755}, {"attribute": "LaiGpnLuiUYPiTD3", "criteria": "bWb5u1ux6Lg51ARb", "duration": 34, "reference": 0.3509864938478422}], "match_options": {"options": [{"name": "sXOc84LwjFQDzzKO", "type": "xHyl2ZW5iAnE6ljG"}, {"name": "4QXWwnLrztmBLxq1", "type": "rFG6vwZOUceIn4Zm"}, {"name": "yXwN5sda3bpb4XUX", "type": "msgV8dCjVbqiLWDs"}]}, "matchingRules": [{"attribute": "hLWxpRQi3imCU31r", "criteria": "m2OeVXNRIVfN8pMR", "reference": 0.12500272804003587}, {"attribute": "3i0vnu8jL2cwoWuA", "criteria": "OIG5DikZzAySZC2I", "reference": 0.12382054348292959}, {"attribute": "Kxp7kkZK2lqm6AwY", "criteria": "rsvaFvrOUED57L7T", "reference": 0.7749370943441857}], "sort_ticket": {"search_result": "Pt5OXRL8YP8NwTou", "ticket_queue": "H2xjfDiKetk8pjxp"}, "sort_tickets": [{"search_result": "FgALMeAS4LF3HOqV", "threshold": 82, "ticket_queue": "RbyAzRBdckCIKDiZ"}, {"search_result": "sSFHqjjjNr60wVqR", "threshold": 7, "ticket_queue": "WG7OQn51EFwEPmLt"}, {"search_result": "xhOWZLHM9FtUWiHn", "threshold": 30, "ticket_queue": "cUWTYygKcCRK03bj"}], "sub_game_modes": {}, "ticket_flexing_selection": "Znjx7lYUBFCyxWP7", "ticket_flexing_selections": [{"selection": "jhQGF2jXdBVVRfED", "threshold": 45}, {"selection": "f1RfXUElBFNY44jl", "threshold": 37}, {"selection": "FGZxTmI2kyO9ERip", "threshold": 44}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 9, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'IqsShpKlr1J1KuH0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'N49896NjEVBmetPZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'vvbA4k9ENnTYnwtA' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 18}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '6CmYt4aybneXfYbd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'dk6oqmlmHrgODiRC' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "a8iHX38TcUgKc86H", "count": 72, "mmrMax": 0.29438987791446614, "mmrMean": 0.6620510730417576, "mmrMin": 0.14903339195812493, "mmrStdDev": 0.04569040164365423}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'qg53isoa4BlIndt5' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 66, "party_attributes": {"8X7lrpMPMojUK5VR": {}, "9DGwBIZZPN9p3vwb": {}, "bE3UtyaqabOVDw7X": {}}, "party_id": "idRqAVOlltzeyJJo", "party_members": [{"extra_attributes": {"ONbmk81ZmNWT6nBB": {}, "0FO1Rzf6m4IaHprr": {}, "LznCSPrGHDnxbFTp": {}}, "user_id": "O2ktZr9XJ9yg6FEg"}, {"extra_attributes": {"V1OJiSE4dEG1OGQ0": {}, "k9UmD5DJU56kfPui": {}, "0CVLiUYERfp5eJqu": {}}, "user_id": "yg6U81Sa0l0aJX0S"}, {"extra_attributes": {"Ky2UYfWV4oGHoa1s": {}, "RQOuMpLb8XbWQXrM": {}, "387G49haeeb5QJJV": {}}, "user_id": "mqjy5kaUCxvsna7k"}], "ticket_created_at": 76, "ticket_id": "MjtZweCNLHKA20wC"}, {"first_ticket_created_at": 67, "party_attributes": {"w3bTRJyyeXzNsXeD": {}, "wvjnVGzd7XaLIReL": {}, "2zSb5fRaOfNwVRtj": {}}, "party_id": "aAcTMPbLOAdqWL7z", "party_members": [{"extra_attributes": {"1xf4AWX0rq8pTB96": {}, "QHoeLkJxQroXR1TO": {}, "XDO4AsfWaZviorZu": {}}, "user_id": "vopVIT530hp6qaDL"}, {"extra_attributes": {"0Dzr5QqAnKiPjMIe": {}, "Ho58Igw6h8MEbne0": {}, "Smm5XnKKimYkTg4W": {}}, "user_id": "rv5ndlwxHv9hqigJ"}, {"extra_attributes": {"XSfxH4JXpSlRWAzc": {}, "rCucorLMVLzNWnbh": {}, "9akwOFLkhsdwrVoE": {}}, "user_id": "3oR3OTTXt3WZUBia"}], "ticket_created_at": 90, "ticket_id": "45UAHwo8JoRSsQAn"}, {"first_ticket_created_at": 79, "party_attributes": {"la4Y8B0kBVi7vR2M": {}, "1agsSBmNpFBSDvss": {}, "K5U5orqP9YkNbCKZ": {}}, "party_id": "WPW3nX8qgjgEtsKe", "party_members": [{"extra_attributes": {"86xoU3Bu7zFsVTpG": {}, "el8lTwCy6S3dBdkr": {}, "0pJzTmc3kzGovB1C": {}}, "user_id": "JltGFaRikFdM97jx"}, {"extra_attributes": {"DzZzxNOZKGbEgDiu": {}, "RVvuqWTuwDYmBC0S": {}, "DYWKb0i6aY7MJsce": {}}, "user_id": "HkW8GeHua22Alnmy"}, {"extra_attributes": {"5t5zkLw3Xpfvp7Oc": {}, "b1yr20Xw7ZoRrslr": {}, "6fS59bS9E10Mb90J": {}}, "user_id": "H6Qj8vtZ3ZDULmSp"}], "ticket_created_at": 11, "ticket_id": "r9qBgAtVGQJI12gc"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'IacbaOozLPtSScfv' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 79}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '2VfkdFOdQlQzJuy0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'BZwbkVUrtcd5JmmU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'xPrMtQctu6vtxy8U' \
    --matchID '1dNUrWF5HA7BrEgN' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["H2PBM1Jp2HZyJcB5", "a65jENskOFY1Q7jl", "iIZf9m9vEEUWFMNt"], "party_id": "MAKYkijLmoBwCuT6", "user_id": "ejpeGI4ihJf71K8f"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'jesmwFcWSzs0dEJl' \
    --matchID 'kzvd9r3uairM7xpZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'rq9TB7bHT8xUmPOM' \
    --matchID 'H2Rxo1zQbKlqBnZh' \
    --namespace $AB_NAMESPACE \
    --userID 'W37ptJAdUXLqzFb5' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'j6LGFFzfFpKDpS2m' \
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
    --channelName 'PmJlBGVCIXqJJ2yY' \
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