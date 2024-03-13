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
    --limit '73' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "hH5G9HF5KI99Hqfm", "description": "oodeXE44LdPK600H", "find_match_timeout_seconds": 10, "game_mode": "o2rxeYRyklMvKRjL", "joinable": false, "max_delay_ms": 79, "region_expansion_range_ms": 34, "region_expansion_rate_ms": 7, "region_latency_initial_range_ms": 18, "region_latency_max_ms": 79, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 68, "min": 19, "name": "IxFz7vLfzd9Y0K2j"}, {"max": 99, "min": 23, "name": "jQHrZEawyiksKUnJ"}, {"max": 1, "min": 39, "name": "NaBkXS91DH6jeSdx"}], [{"max": 61, "min": 89, "name": "jWJzmlB6UcOXLVTM"}, {"max": 76, "min": 85, "name": "8sET6Zo13TkqJ4Tv"}, {"max": 20, "min": 25, "name": "xKDbDcuP5DIMV8XN"}], [{"max": 21, "min": 64, "name": "8ynJQskcCk2ZAYhK"}, {"max": 78, "min": 95, "name": "6STh5Lm6LUmzpG4H"}, {"max": 7, "min": 49, "name": "erYuoXWWGLHlTx3n"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 76}, "max_number": 73, "min_number": 66, "player_max_number": 74, "player_min_number": 12}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 44, "min": 8, "name": "hgx9YGOs3ZKBPI9b"}, {"max": 31, "min": 83, "name": "6MBuxEd5Pq4brsL5"}, {"max": 84, "min": 86, "name": "YN3x1czHxeWtefXv"}], [{"max": 90, "min": 34, "name": "FjUW2Cl3XAUdyibT"}, {"max": 81, "min": 35, "name": "bLxSQSPikUyS5NoS"}, {"max": 96, "min": 4, "name": "TIu1x6kKOcAHZeoQ"}], [{"max": 12, "min": 63, "name": "ANfdjNU3PDWjwe9Z"}, {"max": 34, "min": 69, "name": "h7IEx1lQsWZuUeDn"}, {"max": 82, "min": 59, "name": "zLuJpZ8ABn3MMBcv"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 22}, "duration": 37, "max_number": 47, "min_number": 70, "player_max_number": 51, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 72, "min": 5, "name": "BS8dBgrcUYIaa6Y5"}, {"max": 7, "min": 93, "name": "U4MiYXNc7j8bega9"}, {"max": 93, "min": 32, "name": "bJuCBTd2FD5qIV3J"}], [{"max": 19, "min": 87, "name": "DKBoQJ6tg58FSxvl"}, {"max": 24, "min": 11, "name": "EccnXVInwyeDausX"}, {"max": 45, "min": 42, "name": "xAowhLqKl7TWUtnA"}], [{"max": 68, "min": 56, "name": "2WteVbIt3PluxvdF"}, {"max": 34, "min": 87, "name": "CBrvglAuPPMGmYMk"}, {"max": 98, "min": 11, "name": "wadjbTsWJqUKehGE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 40}, "duration": 51, "max_number": 20, "min_number": 84, "player_max_number": 58, "player_min_number": 34}, {"combination": {"alliances": [[{"max": 87, "min": 32, "name": "bheqwqizdGRjcLCf"}, {"max": 3, "min": 16, "name": "UtDrxjSlfjCBR0QP"}, {"max": 35, "min": 65, "name": "WIg75Thh8DENIbSX"}], [{"max": 23, "min": 19, "name": "9Q7WrWSRBXcoZoVr"}, {"max": 52, "min": 25, "name": "K6kLCsOskqkLHBx2"}, {"max": 91, "min": 37, "name": "hK6yvkDnVhWVr4qC"}], [{"max": 9, "min": 16, "name": "9KFvBpOywRnSOWOr"}, {"max": 55, "min": 23, "name": "9UTWhYg101HtZMMM"}, {"max": 17, "min": 78, "name": "vo2qAf9FW4LRxQT5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 40}, "duration": 98, "max_number": 23, "min_number": 22, "player_max_number": 96, "player_min_number": 83}], "batch_size": 14, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 40, "flex_flat_step_range": 89, "flex_immunity_count": 42, "flex_range_max": 79, "flex_rate_ms": 34, "flex_step_max": 55, "force_authority_match": true, "initial_step_range": 4, "mmr_max": 10, "mmr_mean": 33, "mmr_min": 26, "mmr_std_dev": 14, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "hGcKAWm84BXZpmol", "criteria": "hD9aIfDq1bH1Afn3", "duration": 42, "reference": 0.6151266996036608}, {"attribute": "lDDFPaYPY8Y6uD3b", "criteria": "cew8mEYzzbQjz0MX", "duration": 100, "reference": 0.38806356249937546}, {"attribute": "Ex1cC5o3SvzGkS1N", "criteria": "Rt9v0yD8Nps2xVUM", "duration": 79, "reference": 0.016890756086553438}], "match_options": {"options": [{"name": "amxLUthw6y6bDSmZ", "type": "EZYOZpQYKXhk6UfX"}, {"name": "4LCbKQc5AjuVFyyf", "type": "VtCKkSC8BdVHKHrx"}, {"name": "9FsbT6NJ53Eips7o", "type": "obAMC5mqSaFyOGsR"}]}, "matching_rule": [{"attribute": "Z24ONPHHq1MaBiau", "criteria": "XF7pbMZMWNwvqDC9", "reference": 0.13829066676982282}, {"attribute": "iupI9TwvoGeEr6JE", "criteria": "BLk2DuQ0N9lV2oBs", "reference": 0.27074942750083675}, {"attribute": "GcuPIBq6c1VGYOXv", "criteria": "vmgxwJxgkSpfDMLJ", "reference": 0.11716064143225835}], "rebalance_enable": false, "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "distance", "threshold": 53, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 82, "ticket_queue": "none"}, {"search_result": "distance", "threshold": 35, "ticket_queue": "random"}], "sub_game_modes": {"jtCR5T5SG9knJUcI": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 77, "name": "H9rKHa5W8ImOfLTw"}, {"max": 53, "min": 52, "name": "ya4mfwWLCYydPlAH"}, {"max": 3, "min": 19, "name": "dwLAZCm1h0lLUn6L"}], [{"max": 12, "min": 47, "name": "0KdvoukC7PgQg8r4"}, {"max": 45, "min": 98, "name": "DXjYdti5pWNS2YnF"}, {"max": 32, "min": 47, "name": "CsOPbFOj9kADZ9Y6"}], [{"max": 67, "min": 44, "name": "KuZlKXMtHgO9fmn0"}, {"max": 78, "min": 68, "name": "BCVemBVeq1cVoD1t"}, {"max": 72, "min": 10, "name": "L0OF4sAmkapOYV9t"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 3}, "max_number": 94, "min_number": 44, "player_max_number": 20, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 14, "min": 93, "name": "9S4jmhnvtkVlCdlt"}, {"max": 9, "min": 15, "name": "FTqEEmGHCgdxLB83"}, {"max": 17, "min": 55, "name": "B3WwFOTaxbCCVkuv"}], [{"max": 30, "min": 78, "name": "GmPbGdMgxd3QPFlt"}, {"max": 33, "min": 64, "name": "oKHQgExzFj0jKaER"}, {"max": 98, "min": 21, "name": "d65HtFRlSkxGRFpH"}], [{"max": 32, "min": 19, "name": "ZbqhCjdO4bkyaQHD"}, {"max": 12, "min": 46, "name": "MidLipiKhAAv01GJ"}, {"max": 11, "min": 60, "name": "fhAS0RW2fvSuy0Zb"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 63}, "duration": 94, "max_number": 27, "min_number": 17, "player_max_number": 71, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 96, "min": 88, "name": "tNSGFIY9vDqxWM2K"}, {"max": 69, "min": 48, "name": "mDxF0cOGrAt2zEc0"}, {"max": 98, "min": 73, "name": "S7EI42JkDM6yYKrS"}], [{"max": 90, "min": 58, "name": "tWgeYBZjw4PpKWDb"}, {"max": 18, "min": 59, "name": "W81DQrglLEmHE5Eb"}, {"max": 1, "min": 87, "name": "oyI38MbKlIsI5O2X"}], [{"max": 92, "min": 38, "name": "LWK6pTt5LvOpf07P"}, {"max": 74, "min": 48, "name": "e3h8FHzgzdsy1msd"}, {"max": 52, "min": 10, "name": "qtwX56nzj2MGbXFl"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 80}, "duration": 75, "max_number": 9, "min_number": 30, "player_max_number": 53, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 88, "min": 39, "name": "3eYVvhIxk9AJCpKy"}, {"max": 86, "min": 8, "name": "dkWze9GXVS7mAFy5"}, {"max": 81, "min": 43, "name": "n3QbL6RAg2n65rfT"}], [{"max": 34, "min": 47, "name": "m5p91gsrRPq5m9fa"}, {"max": 93, "min": 61, "name": "utdzstUz7N7CZx1G"}, {"max": 76, "min": 40, "name": "fiZpdjrPMVNZpdcr"}], [{"max": 72, "min": 30, "name": "keTv30ptBWDsRwTw"}, {"max": 55, "min": 51, "name": "YCy3tb9e0Ok0tNhZ"}, {"max": 49, "min": 9, "name": "NlDSuR9HEhLKNMko"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 54}, "duration": 16, "max_number": 21, "min_number": 14, "player_max_number": 51, "player_min_number": 84}], "name": "XfxfopaI4XFl2cXV"}, "TkgyyrOVKWVyRYf8": {"alliance": {"combination": {"alliances": [[{"max": 66, "min": 23, "name": "zYSk9iy7iPIHtzL7"}, {"max": 72, "min": 4, "name": "qre1nrTStlCcWXI7"}, {"max": 3, "min": 29, "name": "kkxWRFYNPAkCAivx"}], [{"max": 47, "min": 70, "name": "eSdeb78QFrzlTEEg"}, {"max": 80, "min": 10, "name": "sUovWjVA6SVz3qRh"}, {"max": 6, "min": 14, "name": "CGttBhvCunlCAePE"}], [{"max": 17, "min": 88, "name": "SjidzCqqlCSieS46"}, {"max": 38, "min": 77, "name": "Dp46EeIpG7HsXFB4"}, {"max": 69, "min": 15, "name": "HcgXYGjDl9FVVhSP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 86}, "max_number": 53, "min_number": 47, "player_max_number": 98, "player_min_number": 44}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 91, "min": 31, "name": "0FprEbO0jjgWKBmn"}, {"max": 12, "min": 68, "name": "sokpdZ9Ug3761fE4"}, {"max": 5, "min": 12, "name": "XnBbd5z56y13HVG7"}], [{"max": 6, "min": 91, "name": "bcrmzwYkXKP3Z5a2"}, {"max": 17, "min": 91, "name": "FcUxf1puQFlNP0vL"}, {"max": 62, "min": 47, "name": "oZy6hptaT5FkOLGO"}], [{"max": 38, "min": 67, "name": "uYRArYFLP7PYt01S"}, {"max": 93, "min": 47, "name": "DYW7LqJp4FbzVfV4"}, {"max": 20, "min": 76, "name": "rX76zGcbMSa7b4zf"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 5}, "duration": 66, "max_number": 25, "min_number": 93, "player_max_number": 60, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 12, "min": 24, "name": "UAdQzBwzjp0nITEg"}, {"max": 81, "min": 100, "name": "W7O8ROU9jnZINuv2"}, {"max": 91, "min": 60, "name": "kHiuXTDi0X21MmqP"}], [{"max": 85, "min": 91, "name": "4PNpdKInHRJT6pmm"}, {"max": 29, "min": 66, "name": "EZS1gx3fwUIhURQq"}, {"max": 39, "min": 4, "name": "nsPC5uy29l6zD3Sx"}], [{"max": 52, "min": 34, "name": "WnxD1WavEnI0mwu6"}, {"max": 77, "min": 6, "name": "QiJXn5438wOva5uB"}, {"max": 71, "min": 37, "name": "z4kKgZLZfTVTzBZm"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 73}, "duration": 88, "max_number": 59, "min_number": 93, "player_max_number": 18, "player_min_number": 49}, {"combination": {"alliances": [[{"max": 53, "min": 82, "name": "f1I7a5kt0nQzJRkY"}, {"max": 97, "min": 92, "name": "4bQqqQrhZdymLZo3"}, {"max": 95, "min": 83, "name": "AFVXSqfiEs5xPizl"}], [{"max": 21, "min": 24, "name": "xfqHx2TralUR1GKy"}, {"max": 5, "min": 18, "name": "qXJJT3UttIoWyYtz"}, {"max": 82, "min": 19, "name": "ueG6ck0pmMkIVnFA"}], [{"max": 39, "min": 79, "name": "AjiTZgDe9dqdJfq8"}, {"max": 48, "min": 37, "name": "SqxxZMXus3lKOxqy"}, {"max": 5, "min": 53, "name": "dmT3n4bFH5ueS82D"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 79}, "duration": 76, "max_number": 61, "min_number": 40, "player_max_number": 44, "player_min_number": 94}], "name": "4S0yemrQjjoJiHP9"}, "wX8hePPfscm0iDSX": {"alliance": {"combination": {"alliances": [[{"max": 0, "min": 32, "name": "fpNglIATWBKJxPG9"}, {"max": 20, "min": 11, "name": "mGyVSfnicyO9VZTt"}, {"max": 33, "min": 57, "name": "KW4ZC8cEPDgaeS2W"}], [{"max": 52, "min": 89, "name": "olEpfBC7902hqs45"}, {"max": 61, "min": 28, "name": "yU1YQD0H7pfrB9Z8"}, {"max": 85, "min": 68, "name": "2YibQDzdBuedbIIe"}], [{"max": 94, "min": 24, "name": "NzktQxJUXsTgpisR"}, {"max": 64, "min": 32, "name": "NRqREsjDZdmFvgn4"}, {"max": 51, "min": 77, "name": "sXbNvWzGKUXXM9Kp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 16}, "max_number": 100, "min_number": 18, "player_max_number": 45, "player_min_number": 2}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 95, "min": 26, "name": "wOy0lzMZnam8Ho4C"}, {"max": 30, "min": 48, "name": "fqzNaVpGZGWh4vCX"}, {"max": 55, "min": 83, "name": "Sr88OZMP4Xc5QAZg"}], [{"max": 44, "min": 50, "name": "CZcAXsDEQU9JAeSk"}, {"max": 67, "min": 55, "name": "dhqKYmOJSeXHrBap"}, {"max": 68, "min": 97, "name": "3KOO9A9zsYevzcjo"}], [{"max": 48, "min": 80, "name": "ndWbVoR2XyGMbmm7"}, {"max": 10, "min": 91, "name": "0uHcSbty1kqOEx9l"}, {"max": 27, "min": 86, "name": "7iBd1qsgEwDKEYdl"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 45}, "duration": 26, "max_number": 11, "min_number": 36, "player_max_number": 35, "player_min_number": 44}, {"combination": {"alliances": [[{"max": 77, "min": 5, "name": "r7MNKFv2b2lC3Ixy"}, {"max": 20, "min": 87, "name": "iGXQjGbjoQhdTb5p"}, {"max": 5, "min": 81, "name": "Uil83j9RXTDjqxg6"}], [{"max": 93, "min": 3, "name": "2OuDCKrkhZQ0PUch"}, {"max": 27, "min": 93, "name": "b7cEDDjZrhuiBVGA"}, {"max": 41, "min": 74, "name": "rm5zBQbwTtpwHVeI"}], [{"max": 62, "min": 74, "name": "wrVywA4AIyeQal4D"}, {"max": 80, "min": 15, "name": "qlgDDCVjZ0stjelf"}, {"max": 36, "min": 27, "name": "DZG43d2xI5vMP4Qo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 93}, "duration": 61, "max_number": 69, "min_number": 29, "player_max_number": 87, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 80, "min": 70, "name": "nd4T2hU5qZjoAf08"}, {"max": 40, "min": 50, "name": "BGNlbOTibjCipBby"}, {"max": 51, "min": 72, "name": "9ImwkLz83yantBdd"}], [{"max": 65, "min": 97, "name": "0nx128qWUzEH8AFk"}, {"max": 60, "min": 6, "name": "IDz8yybk10xBUUPm"}, {"max": 77, "min": 38, "name": "blxX63oKrzmsFXPt"}], [{"max": 64, "min": 67, "name": "3MRA1DORU7tWLkTM"}, {"max": 89, "min": 55, "name": "HWQh6YiHlQuf82GL"}, {"max": 34, "min": 24, "name": "RuYoFlSwcvuxfNKq"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 55}, "duration": 35, "max_number": 23, "min_number": 4, "player_max_number": 75, "player_min_number": 59}], "name": "J3KX8F26GulnsDso"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 42}, {"selection": "pivot", "threshold": 26}, {"selection": "pivot", "threshold": 97}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 0, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'ddAtj1B3SPyCYFbR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'fPQQXA0pOkn3GlBw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "m9LzaF3qcsxZ1oDd", "players": [{"results": [{"attribute": "mepxn4vcbWv6WsoU", "value": 0.8848433655824913}, {"attribute": "oDdD463ioE9ASMEF", "value": 0.6637410485965601}, {"attribute": "56KmB9jcScDQq30w", "value": 0.8229330307896087}], "user_id": "GGJ6Ay8PCouGKxXT"}, {"results": [{"attribute": "0pHD6IWsAIg5gQia", "value": 0.35128812449828506}, {"attribute": "2azRhHKPFkz81yUl", "value": 0.9892333974416936}, {"attribute": "14zxpzKyS4mZK1jt", "value": 0.550437079961448}], "user_id": "uf7fy005qxIQA6fk"}, {"results": [{"attribute": "aUsuz20FseM8bW8u", "value": 0.06725577017851925}, {"attribute": "boDa2hnURLLXhYqw", "value": 0.9460480038568985}, {"attribute": "Wg4i9LOSW8ZUfbhB", "value": 0.465232953394792}], "user_id": "yViDxv6aNJbmCURN"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "jG5l9z1QbPURokX4"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "B2mcuW77P1Lej9mA", "client_version": "hERlXNQOgVtwctGJ", "deployment": "Hrcx3PYwA68ANukG", "error_code": 2, "error_message": "dCyYkBEOZ2diHj0S", "game_mode": "Sw3TSaw9kCk4vfFU", "is_mock": "LlHbmecB2sLHZV70", "joinable": true, "match_id": "OPZlGzd39LIQPOCf", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"Bv3ih4uEammiB1Rt": {}, "KCJWfyUL1tIHNEwm": {}, "npFauraBWHhc5dol": {}}, "party_id": "Lkf3N5LEp5QhjSLq", "party_members": [{"extra_attributes": {"RHyqdsf9ne0kV6Be": {}, "BwO0hggAX8y60qss": {}, "sfrqAotNosBy9UZM": {}}, "user_id": "f8UYDMll3h3XORNJ"}, {"extra_attributes": {"Kf2zkqZ8fUQnjVWI": {}, "bK1TTHTcMT9s1bYw": {}, "xIP25eSpuQqQtmaZ": {}}, "user_id": "ylRIRgYBXhDnSZ9x"}, {"extra_attributes": {"QuyfejgbMIVvyMyO": {}, "CJ6jhDyB6ugprAKq": {}, "DSNZ8kkCwyGSR7Se": {}}, "user_id": "fcH7RJ1iiS4JPszL"}], "ticket_created_at": 93, "ticket_id": "wqsGXJuwFNuEFqha"}, {"first_ticket_created_at": 52, "party_attributes": {"7i0z0knAsFVGToTQ": {}, "un45ofLTmt8ZZXyQ": {}, "TjO1xZbVUeHtDoWZ": {}}, "party_id": "omuFs15yeCWTCi81", "party_members": [{"extra_attributes": {"kE1874rn7BmZTUEd": {}, "pPPIQKhHHV3ywzPz": {}, "DqdCo2cEkRW7N695": {}}, "user_id": "3mtqgtpOxkY7wo3Y"}, {"extra_attributes": {"2pNl3KMm5FCxm2AQ": {}, "MTX7lfzpMorW1Il2": {}, "WXEIGcndrr45QOub": {}}, "user_id": "4VH9rN3jfRrh6mMk"}, {"extra_attributes": {"00Wl9AnQ9LC8Ipnh": {}, "8GOW0mukgRsAYb7G": {}, "3VRVHO0zFVy9B294": {}}, "user_id": "gbPnJKpHkDrDr3wZ"}], "ticket_created_at": 66, "ticket_id": "1fvcsPDaWtlVNCQB"}, {"first_ticket_created_at": 93, "party_attributes": {"zt0nza81dbPgPphu": {}, "f3zuOk5qMoZP0kmd": {}, "SKIwblKTVYyq8bQJ": {}}, "party_id": "flim2waoxYOBNixD", "party_members": [{"extra_attributes": {"S6Om5zP775pAuKLg": {}, "KiFkYLE0YMXA6YLJ": {}, "suMPFNbHZyaZeXB7": {}}, "user_id": "xr02RV7SL9AsZ647"}, {"extra_attributes": {"QxMTlwzg41Bb4sNf": {}, "QIRnzhHh76wnLBbw": {}, "6plBSAI0tLQmCzVH": {}}, "user_id": "fmAOT4aqMlREWce6"}, {"extra_attributes": {"qxjzcLxsSO5o9oQu": {}, "BsQWqtv52h5R1Gdz": {}, "rVwpLtzX5ASpxBLG": {}}, "user_id": "nLfJuRYXpHXr1RRb"}], "ticket_created_at": 4, "ticket_id": "rcZWvgRGUI0R7OiJ"}]}, {"matching_parties": [{"first_ticket_created_at": 28, "party_attributes": {"eXIhvH2TulvuBMx7": {}, "P9zMcnqfnURN9uCX": {}, "sEu6QskerG7CEfCj": {}}, "party_id": "kuHeGBYNwHKWHr2u", "party_members": [{"extra_attributes": {"IdrAGU9o492Of4cw": {}, "Fnm7GA2S6wbgMC3x": {}, "gCagsJa06eifdusM": {}}, "user_id": "2vPkZRBnFMlsfxoX"}, {"extra_attributes": {"Km40VC8p0NnJJSdo": {}, "NrutGeVpzn6qS7Rt": {}, "QQD8FfYo8kdDAYWT": {}}, "user_id": "Cp6j8eE1CF0hVMIA"}, {"extra_attributes": {"H5fRN0QSwI4LqlJZ": {}, "uPjLm7rrLovyRCoG": {}, "Wr33hIxdbysw7vt9": {}}, "user_id": "Ch51e7AlhRp6mzfH"}], "ticket_created_at": 50, "ticket_id": "zWfHHWACpHlEbcxE"}, {"first_ticket_created_at": 50, "party_attributes": {"lY1UxpkwUgcnRhJz": {}, "UWXHR7mbc1FLlPj9": {}, "hs2y83TnubZjavzr": {}}, "party_id": "fYiYX0sDAE3HV9pk", "party_members": [{"extra_attributes": {"boWbu1WJUvrNKLV5": {}, "60rLFUD5C7H2Ubgg": {}, "kqpf88ddM1wdk25e": {}}, "user_id": "yWLCQ709OzJGZJRN"}, {"extra_attributes": {"Em5o49PhkLIGBWkT": {}, "NA2TXlzh3TaVn54V": {}, "Dx1tcnrIHvsPRf0B": {}}, "user_id": "C9sL21eBucFf6MIK"}, {"extra_attributes": {"xprecfF6TEe73PG8": {}, "ljkOZygSLQJv3MjS": {}, "4pSwheJfa8pDjy9B": {}}, "user_id": "w1TsxT987IyphaRQ"}], "ticket_created_at": 33, "ticket_id": "lnAuLEBPPaKFzARY"}, {"first_ticket_created_at": 100, "party_attributes": {"XBEy8vZ2AF3SUDYr": {}, "nZnRQZNwCIrioeAD": {}, "WBEhl9ieX02RshCJ": {}}, "party_id": "zCVOq88bFbi9fgNU", "party_members": [{"extra_attributes": {"hLM4SUVnxY25sESa": {}, "huVa9uUTpefpxXj8": {}, "8M4IR4HPGrKqXwtb": {}}, "user_id": "UyvWKfSjmr7TQStr"}, {"extra_attributes": {"ny8FMETWRWtUDCez": {}, "e9daQ0KOaaPonKsv": {}, "wuOXeEM7yEry6oyn": {}}, "user_id": "IcTpBRa9oYgY3whf"}, {"extra_attributes": {"UajulGXjkcyd5h5L": {}, "n0sw6BQoLPckqzha": {}, "Sk1U4GRwPK6pwf9r": {}}, "user_id": "nyI4JFa6hj95o9aM"}], "ticket_created_at": 42, "ticket_id": "C6C7nnaguIY31dCZ"}]}, {"matching_parties": [{"first_ticket_created_at": 65, "party_attributes": {"aP9J7iFexFB0eSmx": {}, "QJ4PvaD0ap9qiBmK": {}, "pOufKYTzth0iQhdn": {}}, "party_id": "CVJJGSRRHQQedrXw", "party_members": [{"extra_attributes": {"ZJQI9ipRTpOW0u8A": {}, "ZienkFMTo6d9RrUj": {}, "MKrkzHwhZdghRdBa": {}}, "user_id": "ss5Kzej0M8Wyc3ki"}, {"extra_attributes": {"AcSXIb3GwLAH8xp6": {}, "H5t9jxB0jSiaWZqh": {}, "v79xhocmJ72Y6nHh": {}}, "user_id": "fIAeDtsVeD3XHQ9a"}, {"extra_attributes": {"Pqp3cIQrlERHzp5A": {}, "d3VGk2r9QzOR2w6G": {}, "3duQ6ASEw64SKR06": {}}, "user_id": "NPuVxqBWokNyHLBV"}], "ticket_created_at": 31, "ticket_id": "KyTRi0nBxNWnelRa"}, {"first_ticket_created_at": 87, "party_attributes": {"ThF7r0LnSbo1gN3w": {}, "1RuKNwgiuLef1ktA": {}, "EBVEwGc5fs2NAZly": {}}, "party_id": "DFzbYH7AwRpuWAsI", "party_members": [{"extra_attributes": {"GadepH9QRzt5ll7l": {}, "jVjhO0pelcA15VQY": {}, "otUrxYlfe7rYwblI": {}}, "user_id": "4fpzQEJIYHboKcJv"}, {"extra_attributes": {"vLvA1zXlsDYTaF1l": {}, "NMqBAVPfqB0lPG7h": {}, "UlUNnJydylf9Dw56": {}}, "user_id": "429h4tnycrXOEIL4"}, {"extra_attributes": {"E1gDE5q5xWUqHNUD": {}, "l9OGTqmgrCAkVLJL": {}, "bxJ6N0uDx7gvcUEa": {}}, "user_id": "tGplAJqTc65vAvuZ"}], "ticket_created_at": 88, "ticket_id": "ygxIAyFKXTDMKUWx"}, {"first_ticket_created_at": 54, "party_attributes": {"886nfqVlLyxqQ8Wy": {}, "sUKhdAS7sstcTQOa": {}, "Ub9F2UrP6KkbveRv": {}}, "party_id": "JKTxXtpKqPhKGypU", "party_members": [{"extra_attributes": {"jB4K7S6oEdhNXrOX": {}, "FJa6xDuH5sdvxgWD": {}, "yTSdFMXKnwZUHOq6": {}}, "user_id": "UBHfOgMxbfm392qz"}, {"extra_attributes": {"qcmKxbLhq9a8rZLo": {}, "LMVs6AFVu0LKw0Oo": {}, "WTuiXCX3Bb6r58MR": {}}, "user_id": "v31L46YIp6E9ZabA"}, {"extra_attributes": {"ol0lx7vi13pyZz4c": {}, "wX6QNoav8WXYSduT": {}, "z2OLi8dmNe9mFVNh": {}}, "user_id": "ryDuzatgfyq38RCd"}], "ticket_created_at": 15, "ticket_id": "8lZHuP8lySuEvYla"}]}], "namespace": "Dp8KtTys3itBaove", "party_attributes": {"Sb1lMWz8JhmprIY5": {}, "hFb5ltpu9G2l08aE": {}, "3APVrBSGxTUvK4Pg": {}}, "party_id": "pycx6ZHJiEnVKrFU", "queued_at": 28, "region": "kR4eARrHqSBqGsyY", "server_name": "w9NbugWcAgaKwaRT", "status": "J4oGD9CO9DbqpZbg", "ticket_id": "cHTxo6CuVRfYxfdQ", "ticket_ids": ["ixjJC9iIAHLJrcLL", "Wd1hg7P02RhF1cLp", "c3AHlYiybdRiY5v5"], "updated_at": "1973-05-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "BbxyMgeSEbNFHyGR"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'I0rAMk53c0ORlkpu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 1, "userID": "jvC0f5qs67Gjn3D8", "weight": 0.5544890795578185}' \
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
    --matchIDs 'Bm1vB4eAjXtxXIO4' \
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
    --strategy 'OwYAMMdqXyOjtXFL' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'C39UkhOAmKNOeky4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'HQJi9uZzKeRPGjvu' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "mZveO9ZdPcwIoTnE", "description": "gRBNtRe4afgMQBmD", "findMatchTimeoutSeconds": 58, "joinable": false, "max_delay_ms": 32, "region_expansion_range_ms": 95, "region_expansion_rate_ms": 69, "region_latency_initial_range_ms": 51, "region_latency_max_ms": 46, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 20, "min": 80, "name": "EdHLSVIb3FyQg0aO"}, {"max": 100, "min": 40, "name": "qewCuYdUjeQs19cz"}, {"max": 60, "min": 21, "name": "AFPZn5SQZoJfywPu"}], [{"max": 46, "min": 31, "name": "LVpWgOHc8MWo091D"}, {"max": 80, "min": 24, "name": "x55sJEKdkYYacCa9"}, {"max": 42, "min": 36, "name": "yMYk7UN0pUuJwbmr"}], [{"max": 70, "min": 95, "name": "2ej853Bqiv3Kakc2"}, {"max": 37, "min": 47, "name": "GhpMa20Z1eZC1OEw"}, {"max": 15, "min": 35, "name": "zOOKTgyJLOmCCAMA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 32}, "maxNumber": 79, "minNumber": 39, "playerMaxNumber": 59, "playerMinNumber": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 76, "min": 50, "name": "9TKORSu8syfNai1c"}, {"max": 61, "min": 1, "name": "tC6PLu7tsi47pdIx"}, {"max": 31, "min": 82, "name": "mRwepPSn9YlQtIdG"}], [{"max": 41, "min": 82, "name": "HS8TBKceKaUV65Li"}, {"max": 41, "min": 1, "name": "wSl93YzeKKZCZFdo"}, {"max": 4, "min": 54, "name": "WBTUeRcB5ldPfARN"}], [{"max": 27, "min": 12, "name": "mBABzH0xwieGJzIr"}, {"max": 23, "min": 39, "name": "0r4mzXwZgyTfBRLD"}, {"max": 81, "min": 23, "name": "EK1Me6ynSLmYSans"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 33}, "duration": 83, "max_number": 29, "min_number": 88, "player_max_number": 84, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 51, "min": 61, "name": "Mnv3PmlHdPrXTLfZ"}, {"max": 14, "min": 100, "name": "7wF2Fu9jvt9YMDm5"}, {"max": 67, "min": 7, "name": "iPIyEENw55P1TTdw"}], [{"max": 1, "min": 8, "name": "OQzNseETPv6m2w6l"}, {"max": 37, "min": 79, "name": "4ViH6j2bF0BG5g3d"}, {"max": 46, "min": 11, "name": "ue3Gr63WBEXkgIwL"}], [{"max": 87, "min": 19, "name": "NeHuUB6tiyAhabeU"}, {"max": 12, "min": 74, "name": "xQpt2JOfZyEJTneL"}, {"max": 59, "min": 44, "name": "X4EMaGhfjkWBgX59"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 69}, "duration": 91, "max_number": 93, "min_number": 77, "player_max_number": 87, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 8, "min": 32, "name": "MxGZsGiYKG6vllju"}, {"max": 20, "min": 45, "name": "xZdGxAsVPc8j8JQw"}, {"max": 48, "min": 9, "name": "pzV2bXFj9DatsXvF"}], [{"max": 11, "min": 39, "name": "lNOP0KfmzYwCa0yI"}, {"max": 73, "min": 28, "name": "B4pNRLnEqtCUcRWs"}, {"max": 86, "min": 22, "name": "vaMUSb6Da3e24eF1"}], [{"max": 43, "min": 63, "name": "uwuDYpS2RLhsxwnf"}, {"max": 11, "min": 48, "name": "Nl8deADK06zUg7B1"}, {"max": 62, "min": 95, "name": "c2yVtKufIUDor0XI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 29}, "duration": 37, "max_number": 75, "min_number": 30, "player_max_number": 36, "player_min_number": 60}], "batch_size": 69, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 6, "flex_flat_step_range": 85, "flex_immunity_count": 66, "flex_range_max": 4, "flex_rate_ms": 17, "flex_step_max": 63, "force_authority_match": false, "initial_step_range": 86, "mmr_max": 11, "mmr_mean": 24, "mmr_min": 15, "mmr_std_dev": 37, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "sxdlw29peJCYCaRF", "criteria": "mlbhNqXsTrATSk2Q", "duration": 97, "reference": 0.8420115982222518}, {"attribute": "kDI8Zz88WuRW9KnA", "criteria": "PFkrlJBVHXOX0cn6", "duration": 14, "reference": 0.4512494330647361}, {"attribute": "Tl5X2NCMYwTCqduy", "criteria": "m94e4bD22X3hEYh4", "duration": 48, "reference": 0.4006948912632553}], "match_options": {"options": [{"name": "Q64ZLtkGb5fnt46j", "type": "tAX8nUKyT72X6xQ3"}, {"name": "wdg0GFXH3PfCYt7e", "type": "ruDFdRzkkMvLkDIV"}, {"name": "IrldzX4nDDdAogNS", "type": "tLnFIvObrRWNy3jg"}]}, "matchingRules": [{"attribute": "A5l3AntZsVSyJmz1", "criteria": "RV8Mf8ZXEwJ1BgET", "reference": 0.9802956896193971}, {"attribute": "xwaKUX1a8wGqA74I", "criteria": "ySO75H1vviURZVMr", "reference": 0.30990846354894475}, {"attribute": "Fu9ELWmDGQ32LwXT", "criteria": "7Qq0Y8EjaalTRxNY", "reference": 0.9786396894207592}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "distance", "threshold": 70, "ticket_queue": "none"}, {"search_result": "none", "threshold": 22, "ticket_queue": "largestPartySize"}, {"search_result": "largestPartySize", "threshold": 83, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 42}, {"selection": "newest", "threshold": 34}, {"selection": "pivot", "threshold": 51}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 84, "socialMatchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'fLRn8CqzUMeQNIuf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'JBcR4KxmCYibMqnC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'ljEnQpoisqIsxC5d' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 77}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'frtHoNtY4O3MVNVQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'fY4ghwWkbcNmwMM2' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "GFf2niF3SmALcEkH", "count": 39, "mmrMax": 0.5707988189576572, "mmrMean": 0.11309140678925855, "mmrMin": 0.5250530243227887, "mmrStdDev": 0.09878596507689785}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'Z0m6Z9LvYxUrW5Ml' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 71, "party_attributes": {"zajBSZiJim0ohLDX": {}, "1T5nZL57OYxBSYgp": {}, "QwDM9cU4afh76mQv": {}}, "party_id": "TL3DUjCCGbXLDu8o", "party_members": [{"extra_attributes": {"uBCmrMhxiNPBKMd9": {}, "Auunxa8xGRE7CXJK": {}, "FO8VQ6Q8DqwU3fzH": {}}, "user_id": "mTk9kycrprC80TsJ"}, {"extra_attributes": {"GS2bL9be8UIpKlqy": {}, "jaV5ypJoCb2yqJ03": {}, "Icl09mHbgTmpenQF": {}}, "user_id": "vM3FlJAKsfytnLQS"}, {"extra_attributes": {"U338gUpe4YtEGenn": {}, "aal5vkfdQFiWGowB": {}, "royKVpsi91yetbi1": {}}, "user_id": "bCsJoJu71edAnc1i"}], "ticket_created_at": 23, "ticket_id": "RM8k95xpLqJQhNKZ"}, {"first_ticket_created_at": 68, "party_attributes": {"dpkp0SOoTFMZm2R8": {}, "xInOci6BenuUnINF": {}, "4pVxS2UFbBlp6f3d": {}}, "party_id": "t2Xt845K5Jct1ckd", "party_members": [{"extra_attributes": {"Fm6Szlfe6jXbkw4v": {}, "AAoriRZyH9DSTd2s": {}, "7KNfEazxH02dNhL2": {}}, "user_id": "U3yaaiPE3wfMD5K9"}, {"extra_attributes": {"3T0XxgCaT0flQMNS": {}, "fcxuia6tnZpEVjY4": {}, "ojDFYzjAj3Ib3zWa": {}}, "user_id": "sWHUYAAfklZWyAIP"}, {"extra_attributes": {"gqxN0SekUrBToxiK": {}, "h2FSNrWmgtXcdwjS": {}, "FUS4C62FjztbcuHD": {}}, "user_id": "hhQBVyS8C1oIYH5c"}], "ticket_created_at": 23, "ticket_id": "OyKCaFht9im39v2m"}, {"first_ticket_created_at": 67, "party_attributes": {"WgfpW96IjTOrC3Uc": {}, "Nq1127iQbhbe0n1f": {}, "jUleNGubdsURx1Yq": {}}, "party_id": "M1Ulvj3WG5usYIPf", "party_members": [{"extra_attributes": {"zoQNkJyNLRNDJyAR": {}, "xoC1FEmA6Xn3sEzz": {}, "RFRH1WKvIwb5lbPg": {}}, "user_id": "t7ed3OWFEhUXVRTm"}, {"extra_attributes": {"CDPTf9GGnmmzS2dO": {}, "YkaUcFY92Ois7JVj": {}, "cqtPTTbVhvOfYakl": {}}, "user_id": "hayU8KT7Xcn0idPu"}, {"extra_attributes": {"UqyDoqqgqc9f4WpI": {}, "O2urj0wOgCSiSnKa": {}, "AEkMHzKpvHYeMfui": {}}, "user_id": "U5MgBdgHjFxfbGt2"}], "ticket_created_at": 48, "ticket_id": "wANyJ5tPXJRn9Qvw"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'gBp8rlw4kCqiqucy' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 72}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'eg38aNLIi7mkLgX9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'BnLlKiFwK5eTFQT6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'zWV6q6KDiyhQ0lfZ' \
    --matchID 'E0PPtUmcw1pi5RiI' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["3rsZ0YfTKPUv7cyh", "0NgkxxIvWhwC7QP4", "bRFnFsB6KuWFipX8"], "party_id": "e326u6I2CxwaGvOr", "user_id": "dIlYIz7MLBNCjgfG"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Hy2kcrbIUQeO5qfT' \
    --matchID 'IzxDY0gLhVQQE98W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '4RCKklXMQqBcVxFl' \
    --matchID 'YkV6aynhq3Pm0a3k' \
    --namespace $AB_NAMESPACE \
    --userID 'SjSSHHwwCw464X1E' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'JpSmKdgQYsIdwsFb' \
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
    --channelName 'jPNN7gxMC4dae6Kx' \
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