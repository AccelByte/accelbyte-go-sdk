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
    --limit '68' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "hWfC0BKkpRs3iTNE", "description": "18IZpJ90Bos5SjjC", "find_match_timeout_seconds": 79, "game_mode": "ClqxfE49anHwE0Eo", "joinable": true, "max_delay_ms": 34, "region_expansion_range_ms": 84, "region_expansion_rate_ms": 99, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 80, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 5, "min": 54, "name": "sObDn4f8NAnULxrm"}, {"max": 76, "min": 82, "name": "b3kaklQjskpciG7g"}, {"max": 10, "min": 40, "name": "WyF0a8fKgjOvQ5fP"}], [{"max": 89, "min": 21, "name": "wtUP3k7GOwGkC0qR"}, {"max": 36, "min": 24, "name": "V9fjDlmj2WWTgkrG"}, {"max": 52, "min": 25, "name": "KeBDwFEl554ivsS2"}], [{"max": 67, "min": 99, "name": "eyuQWUdouq2mt06s"}, {"max": 73, "min": 92, "name": "SJA04SlP7vIfqbCb"}, {"max": 47, "min": 30, "name": "XJoouIquMfoS415e"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 29}, "max_number": 60, "min_number": 3, "player_max_number": 43, "player_min_number": 28}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 25, "name": "5sAVx6WdStuDjM5O"}, {"max": 82, "min": 4, "name": "hIu97BUUXCHfcBss"}, {"max": 56, "min": 58, "name": "u1i3tkVCmz5YEMs5"}], [{"max": 4, "min": 6, "name": "y9jtOVjH2Sg1umk2"}, {"max": 51, "min": 82, "name": "6vzRzMAjaO06bOZR"}, {"max": 14, "min": 38, "name": "pC8AyrF1kA6gmW4h"}], [{"max": 1, "min": 14, "name": "eP8A5iNV54g39DcM"}, {"max": 75, "min": 88, "name": "fvxygT63poz2twAV"}, {"max": 92, "min": 0, "name": "sDwRQActHgc4Qmb2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 10}, "duration": 93, "max_number": 54, "min_number": 20, "player_max_number": 66, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 64, "min": 87, "name": "2XqB79CW48YmbY0M"}, {"max": 27, "min": 81, "name": "888uWavggl9ghW2l"}, {"max": 50, "min": 85, "name": "bPEdlPLz1U5DW9rW"}], [{"max": 14, "min": 97, "name": "GyAa2rFpAzwdC3Bd"}, {"max": 79, "min": 45, "name": "eFzoOZabjpdpl0Ku"}, {"max": 66, "min": 88, "name": "W0JZTzf39JxaWpLY"}], [{"max": 73, "min": 69, "name": "PhCdjEbVNNJFtSAD"}, {"max": 82, "min": 91, "name": "3qMNtZkENHbBzUN2"}, {"max": 68, "min": 15, "name": "nA7I0VmIlTjS1bcD"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 14}, "duration": 62, "max_number": 11, "min_number": 73, "player_max_number": 40, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 20, "min": 64, "name": "bUBuUZJ6ekvrvxHF"}, {"max": 82, "min": 36, "name": "Kn7ZSIDgqTFDpKNl"}, {"max": 41, "min": 72, "name": "xdF5e52rxzjTL1wh"}], [{"max": 32, "min": 47, "name": "Eipklmkl8Kjgeap8"}, {"max": 87, "min": 17, "name": "NdVj42zjqyXmZR5Y"}, {"max": 89, "min": 99, "name": "Gk461rSpRQqKUZD3"}], [{"max": 86, "min": 25, "name": "93UwobRgJfiajMr5"}, {"max": 61, "min": 49, "name": "nVl9Oun3S1XsGJO0"}, {"max": 63, "min": 100, "name": "08WZ6rFZ7n8rPSSc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 98}, "duration": 94, "max_number": 98, "min_number": 93, "player_max_number": 24, "player_min_number": 85}], "batch_size": 59, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 11, "flex_flat_step_range": 14, "flex_immunity_count": 25, "flex_range_max": 31, "flex_rate_ms": 42, "flex_step_max": 30, "force_authority_match": false, "initial_step_range": 39, "mmr_max": 39, "mmr_mean": 17, "mmr_min": 84, "mmr_std_dev": 44, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "tV8PNnQtUmkUHlgR", "criteria": "C8GWgg6QaMXXiiDI", "duration": 97, "reference": 0.5237449896618249}, {"attribute": "NPpztWvgRtSoz9uy", "criteria": "sH2SuJHtSMmlKiJM", "duration": 60, "reference": 0.037750051523257167}, {"attribute": "FXMl6Ca8heHiNjrl", "criteria": "FXDEWYp1gkAxzCtt", "duration": 1, "reference": 0.5865205757254038}], "match_options": {"options": [{"name": "4NpLGVn5HIwDI6bP", "type": "y3TtghS0Pqvkx8ty"}, {"name": "bgIGlLCNmcG4iLUk", "type": "9CDKZ8brUrLVaOWK"}, {"name": "CL3GBzUdVKHRioqw", "type": "pF47urjC7rdSPQYV"}]}, "matching_rule": [{"attribute": "no6lbFdtNDHrdQlJ", "criteria": "fainQuo6ZF2IZYe3", "reference": 0.9491717952753591}, {"attribute": "DbUwky0Iyq6SLLRT", "criteria": "oOY6YsX7G7RVsmM7", "reference": 0.7598748496672795}, {"attribute": "fgbp4QzoMgiizcXt", "criteria": "bgVPgvKU4wDGqDzi", "reference": 0.21159163258289626}], "rebalance_enable": true, "sort_ticket": {"search_result": "none", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 8, "ticket_queue": "random"}, {"search_result": "random", "threshold": 61, "ticket_queue": "distance"}, {"search_result": "random", "threshold": 77, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"nqHNRYdwQBXBdctg": {"alliance": {"combination": {"alliances": [[{"max": 5, "min": 26, "name": "ZYmCQyJQt57hHryV"}, {"max": 34, "min": 46, "name": "yyV7cIlGfUihWNsF"}, {"max": 8, "min": 1, "name": "1bgLc7EStH0meuFQ"}], [{"max": 53, "min": 26, "name": "EPvyPOB9UYgWGEHt"}, {"max": 47, "min": 32, "name": "xqJSaJTqiROF6hnT"}, {"max": 78, "min": 70, "name": "91wD8DyTa6LX1gps"}], [{"max": 35, "min": 66, "name": "QzZF9OU17h1FfzsR"}, {"max": 20, "min": 48, "name": "FLTo1LYYba6QEZ2L"}, {"max": 88, "min": 100, "name": "h0hE8wTR09YsTsMC"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 97}, "max_number": 45, "min_number": 59, "player_max_number": 81, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 23, "name": "eFnRg2ZYPNFZN7B7"}, {"max": 14, "min": 59, "name": "mQWdLxMFzsou6r4t"}, {"max": 0, "min": 51, "name": "9r44NyQIIUm72SkZ"}], [{"max": 71, "min": 41, "name": "1Ys2QZ1l4IZyxaIm"}, {"max": 69, "min": 56, "name": "Tiw31KLmp2wCUm5i"}, {"max": 34, "min": 5, "name": "XdTrTbJz0hkoMPvh"}], [{"max": 98, "min": 55, "name": "8s6lJEJ6r0M1Y1tL"}, {"max": 45, "min": 19, "name": "F2Vo2zZxbLkapofI"}, {"max": 70, "min": 85, "name": "CGp6jg54g6MSCXFJ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 31}, "duration": 6, "max_number": 51, "min_number": 3, "player_max_number": 60, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 80, "min": 66, "name": "P835AXScyupayXSc"}, {"max": 86, "min": 13, "name": "cJJ0y0ZJMTjJQSJk"}, {"max": 99, "min": 31, "name": "pwPW90u8lfmHhZq1"}], [{"max": 39, "min": 3, "name": "UoxntMfbFA0C6E4D"}, {"max": 62, "min": 5, "name": "IZiEAxq3gppaGFeT"}, {"max": 49, "min": 76, "name": "YDu2ZCD9la6TWmDy"}], [{"max": 32, "min": 15, "name": "wPBxVNiQxtuMLHK1"}, {"max": 59, "min": 40, "name": "nmof1A3oetpQWgWC"}, {"max": 2, "min": 51, "name": "PcPaNRtEKC3PRW0D"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 24}, "duration": 40, "max_number": 68, "min_number": 18, "player_max_number": 16, "player_min_number": 13}, {"combination": {"alliances": [[{"max": 24, "min": 6, "name": "oI7iwktXYgUAMmV6"}, {"max": 10, "min": 80, "name": "pWuRbMMN7ppDArAJ"}, {"max": 42, "min": 72, "name": "2hzUQGy2frbtDbcR"}], [{"max": 15, "min": 78, "name": "8SNYVli81VMSDkeO"}, {"max": 63, "min": 64, "name": "kle4W6zbi9ix0nIN"}, {"max": 93, "min": 40, "name": "7a5olisA6alNW1zy"}], [{"max": 31, "min": 8, "name": "cR8hYiybL3L2R8pT"}, {"max": 5, "min": 68, "name": "hjtN6n4dmoReO70x"}, {"max": 78, "min": 56, "name": "pnKxkIQOJMrivGZ6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 50}, "duration": 31, "max_number": 91, "min_number": 48, "player_max_number": 63, "player_min_number": 76}], "name": "v6WaHMtb9BFj9MXz"}, "i9yDxrFGfJ7wdPz5": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 68, "name": "2XNB0L6rjvwzXft9"}, {"max": 76, "min": 57, "name": "qNQ68C2glbP7fYrV"}, {"max": 11, "min": 62, "name": "l2qVtouikyjC5ga7"}], [{"max": 98, "min": 4, "name": "56qxPcI9Bbx6YANx"}, {"max": 31, "min": 14, "name": "TsiRcpUdu85XDhc9"}, {"max": 16, "min": 33, "name": "Jhi5ZQcF234guewb"}], [{"max": 76, "min": 26, "name": "nXWHWL66nWg0Bf8m"}, {"max": 37, "min": 40, "name": "Bl8PTjC2expYux3G"}, {"max": 49, "min": 64, "name": "2MJuKcaBR4kM4nRa"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 42}, "max_number": 50, "min_number": 94, "player_max_number": 53, "player_min_number": 19}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 97, "name": "BmLc092trVPfYrl4"}, {"max": 56, "min": 30, "name": "XXyP2Azxe8H29acx"}, {"max": 21, "min": 37, "name": "TV7ZUUIdx24mHKCw"}], [{"max": 31, "min": 5, "name": "OmO1n70ZojZECG0Q"}, {"max": 22, "min": 37, "name": "3XB6inNkzE4sbDj1"}, {"max": 23, "min": 4, "name": "EqHdk19L6WgV3ILM"}], [{"max": 73, "min": 18, "name": "PRko0kFt4EpGqcaJ"}, {"max": 6, "min": 76, "name": "CCO6WtxZDbQUpwoA"}, {"max": 100, "min": 100, "name": "ZjVJPkmPkDiYU7EB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 61}, "duration": 63, "max_number": 69, "min_number": 12, "player_max_number": 25, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 77, "min": 10, "name": "b5rRQ1rIWvYcDocN"}, {"max": 42, "min": 89, "name": "lb2QTGhfqEdne2gy"}, {"max": 0, "min": 90, "name": "YryDe3xmqqTY69GD"}], [{"max": 21, "min": 46, "name": "poUxdZf1JaOhxFay"}, {"max": 58, "min": 78, "name": "JFAaRlGGoA1Tc2Me"}, {"max": 22, "min": 82, "name": "XG3XFSJ2G3RIOdSz"}], [{"max": 13, "min": 21, "name": "bTTtY35ZbtA3SyJT"}, {"max": 96, "min": 51, "name": "MWKPKwZ3T7q8BSnI"}, {"max": 30, "min": 34, "name": "6TiIukZPuVpe8YJl"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 81}, "duration": 60, "max_number": 96, "min_number": 61, "player_max_number": 46, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 3, "min": 80, "name": "dMDxwSMfh2t9WX4l"}, {"max": 18, "min": 63, "name": "auQSrv6XHiA89BBm"}, {"max": 46, "min": 27, "name": "NcGpbf6q0DgG1BQ3"}], [{"max": 74, "min": 78, "name": "dvbDzJkAG1KL54UJ"}, {"max": 74, "min": 40, "name": "0BI7DQ5G9dTfHSY2"}, {"max": 60, "min": 28, "name": "Nc5EE27aKCHdt2XI"}], [{"max": 59, "min": 22, "name": "iqhupfHb6w9J5Uuv"}, {"max": 37, "min": 0, "name": "lyumcKC3XneJ3x5H"}, {"max": 83, "min": 17, "name": "Xb1lfreLknYG0gpS"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 83}, "duration": 83, "max_number": 9, "min_number": 50, "player_max_number": 100, "player_min_number": 41}], "name": "kNjxSJOW8B4TaFby"}, "MOJ1rA65M375J35c": {"alliance": {"combination": {"alliances": [[{"max": 59, "min": 50, "name": "xQ7FWPZEhYZFaEiK"}, {"max": 75, "min": 40, "name": "n31jLT43Unm0uT6h"}, {"max": 95, "min": 66, "name": "x6QNPEf0vZbaDbiL"}], [{"max": 45, "min": 88, "name": "m9YkLAdVvcLLIGEK"}, {"max": 21, "min": 27, "name": "t5o8QBE9QRgFBaPq"}, {"max": 15, "min": 96, "name": "J1VuS5vgcC64rmpW"}], [{"max": 14, "min": 50, "name": "Vydns2BfRaGT8XDX"}, {"max": 91, "min": 30, "name": "ABOR25IGPi4aiGGR"}, {"max": 56, "min": 92, "name": "uVd6PQsXOEzgIE9O"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 100}, "max_number": 10, "min_number": 45, "player_max_number": 63, "player_min_number": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 23, "min": 74, "name": "AXVX1ZDI0cmf3Z5a"}, {"max": 69, "min": 51, "name": "sBCmW65BQtbVRoQT"}, {"max": 5, "min": 56, "name": "nWUHmvQ3Y6uv7AfS"}], [{"max": 9, "min": 43, "name": "LiwqCUTDjhExDwnP"}, {"max": 28, "min": 80, "name": "McZ8xUAc8O9TZfDI"}, {"max": 78, "min": 96, "name": "oq8PnnxiN5yH9Dk7"}], [{"max": 62, "min": 86, "name": "s1eS3TBtkIaLvelF"}, {"max": 22, "min": 97, "name": "ia3AVbV1C4Yrwqh0"}, {"max": 21, "min": 98, "name": "0hOvhG8w90hkeCDa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 80}, "duration": 82, "max_number": 63, "min_number": 2, "player_max_number": 86, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 77, "min": 5, "name": "Fu736n2i3cEqyXaM"}, {"max": 34, "min": 58, "name": "giAejMqEpXkWV73V"}, {"max": 28, "min": 47, "name": "jPk5Cm1oILGZvtT7"}], [{"max": 94, "min": 95, "name": "3ou3HKtS1lSmPnaU"}, {"max": 88, "min": 49, "name": "Uy73Cr0FcPg4bruR"}, {"max": 22, "min": 93, "name": "OjWu9NpVRv4cFLPN"}], [{"max": 42, "min": 19, "name": "3Ad9mqeNvWTvNyi7"}, {"max": 15, "min": 92, "name": "6zyQXW3p7EX9i6J8"}, {"max": 67, "min": 81, "name": "KNRfJZItFwzDpb6f"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 1}, "duration": 16, "max_number": 77, "min_number": 2, "player_max_number": 86, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 7, "min": 5, "name": "KOyzUfx5LnveiWS9"}, {"max": 31, "min": 31, "name": "YXKbvHmwVUYOolnv"}, {"max": 48, "min": 35, "name": "jvkulo2Bg8XL7BL9"}], [{"max": 28, "min": 34, "name": "BXNab98rfcZ9SfwS"}, {"max": 37, "min": 37, "name": "VCEHfTZqB5aqVvZR"}, {"max": 58, "min": 82, "name": "cpOJErB6FALFpPiE"}], [{"max": 48, "min": 60, "name": "HgoVw4RzZZ8NpJzT"}, {"max": 26, "min": 69, "name": "eHfmVMrafHi9qIoF"}, {"max": 42, "min": 40, "name": "fswP1SxIzc2gTIu4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 9}, "duration": 55, "max_number": 73, "min_number": 74, "player_max_number": 8, "player_min_number": 16}], "name": "2YW8Kxvqqpo8FO2i"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 54}, {"selection": "random", "threshold": 29}, {"selection": "pivot", "threshold": 85}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 41, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'rp3y2YzP5MTKC0GV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'YKvNhhes91YHVq5v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "mLlW3L5Qza9ym1JP", "players": [{"results": [{"attribute": "53kRFEkxA7XPAevS", "value": 0.8972295934336788}, {"attribute": "ndiOr0Vri9fl0mQh", "value": 0.6340792334668699}, {"attribute": "TqYaLHlzBhFFgtU4", "value": 0.019249251208426132}], "user_id": "YBv1o0nGpKbI6Ldm"}, {"results": [{"attribute": "T36cd465Alggx9os", "value": 0.1742216836633771}, {"attribute": "qN2sTZ91xhHt2O5O", "value": 0.7461134758071805}, {"attribute": "n32alXEI0ToWhVlZ", "value": 0.8845207068088058}], "user_id": "jFcf3fRjnKbzDcOf"}, {"results": [{"attribute": "2ts8klXafd8OjLUP", "value": 0.14274019255513248}, {"attribute": "fU0DFagCsEF5uL7w", "value": 0.48234245602925596}, {"attribute": "26UvwpgTnkP1adUx", "value": 0.349587016988967}], "user_id": "Z4ooP6Ln5HdQxBcs"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "K6ZNEz3sJfc3OeTh"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "yiMA59JPxBNqQLCI", "client_version": "vtpwJzXOEb8MDDWy", "deployment": "OeCchYKIVdSDuEmX", "error_code": 1, "error_message": "qvsFVkIQ0tLHox23", "game_mode": "A8cVThf00zdaCdkT", "is_mock": "iuPFnYVT5YAN23js", "joinable": true, "match_id": "xSIYyFUgguLwG1lK", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"u4f0eqBZ0PFm11CH": {}, "1SQXtGUnI5x88g4a": {}, "ZwHNCbkVrl62x6Ms": {}}, "party_id": "Nj94EVIac9Ca8gPJ", "party_members": [{"extra_attributes": {"JWF7ZVWACpzlQsQj": {}, "8r5Pin7Ab2GROhh6": {}, "5iFew5vPR9gJ7JmV": {}}, "user_id": "E5NLJHQKDShmRHzy"}, {"extra_attributes": {"iMOhPrstMyf9RDpt": {}, "GxGcSd6muu2Vljhk": {}, "6Fr2aHwDfDDOir9Z": {}}, "user_id": "50RB4LMoKM5EZaIN"}, {"extra_attributes": {"ByVclIHgrGjAZycD": {}, "SDA0mTaypnnoAP9M": {}, "DW1eRDGrYVlk1Qlz": {}}, "user_id": "F8cywbKrAjIou9kB"}], "ticket_created_at": 53, "ticket_id": "tqAoS2fAHDf2Zvo6"}, {"first_ticket_created_at": 75, "party_attributes": {"GksjlVZThgtj1Uwq": {}, "MmY5Sv98yaskKTx9": {}, "SenPMtjuD7WSVHGv": {}}, "party_id": "LG1i4Rn1umOBQ42R", "party_members": [{"extra_attributes": {"A6v6RJCgW14l4YUQ": {}, "5w4R8IKktzYNEXaO": {}, "MX3dc4KNdWYMKW1n": {}}, "user_id": "5eAeC16Z628RAQPd"}, {"extra_attributes": {"7zJvnx82Asj2XYfR": {}, "DeLyS9evyfMRWEGj": {}, "2EMFVEobuoFV03Bn": {}}, "user_id": "C8CoyUE3CFtWtokU"}, {"extra_attributes": {"DbfFs04Y2PYF6XQT": {}, "maaondCId4IjEC6c": {}, "lMWoGXhmfmt27BUp": {}}, "user_id": "wDrZhpc842pPhtiu"}], "ticket_created_at": 0, "ticket_id": "gydm7rbkT6HLNBZP"}, {"first_ticket_created_at": 33, "party_attributes": {"QToUKIKkQgRF7Ukv": {}, "si9rvFghWnqgA0a2": {}, "QyjTHdJLlp8BTQpo": {}}, "party_id": "rpeJrAPbZ8ltW1t8", "party_members": [{"extra_attributes": {"mtE5HmkjH8HkuoXm": {}, "8GoadzhD2hGVlXq3": {}, "VZNHKeeRkRbutkMy": {}}, "user_id": "fKmM86dEmQJzpoz9"}, {"extra_attributes": {"5wfhQmdjibBQ2d40": {}, "BsDo5vi4thiWeIdE": {}, "d2MFJa9lR7RaM7rM": {}}, "user_id": "u9tsGtH5xSmbrV4B"}, {"extra_attributes": {"1G6ZWEmty7hHnZ1H": {}, "sFbitkvC1sAeXOSC": {}, "ziEYbY8y2FIWTRjb": {}}, "user_id": "JlRh59YYaHcqtEWy"}], "ticket_created_at": 4, "ticket_id": "2W1qk5yNWUHrPtUx"}]}, {"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"MNB5zao32XNExGBv": {}, "QgxAGOcmZ2coUuWB": {}, "S78OXFKI7kHHfaVP": {}}, "party_id": "tJGvX5RudykrqTW9", "party_members": [{"extra_attributes": {"nfBJPSAH3A0ljls5": {}, "mkE3B6tsTJq6QQ00": {}, "XP91iWUvU0pQ6UeU": {}}, "user_id": "TqASfcDGp9yN3W1G"}, {"extra_attributes": {"zj5JH2sjYp9JowT4": {}, "1lvBaGNiWoDnYrSl": {}, "69oH9LzV7bjfEXTA": {}}, "user_id": "811A9AASYKB84rAf"}, {"extra_attributes": {"1i6Y0c7fjOZWJsNy": {}, "SpKVrgSsNRNmyaHK": {}, "IsmMfNFxNZvzHFLk": {}}, "user_id": "vrw6kBJfNNnx6wU1"}], "ticket_created_at": 67, "ticket_id": "sW0cdShzHgyeGvgz"}, {"first_ticket_created_at": 55, "party_attributes": {"1dEGQZ3QhGJeoCrV": {}, "pCzQdmBVP9EG9L7H": {}, "wTbyOkwZ3Fz5aouq": {}}, "party_id": "dhkEJ1BgPGI3Ip8N", "party_members": [{"extra_attributes": {"hUy7TeFITmvsDiDU": {}, "sbBFrPbew0u7SrTf": {}, "x6ZiFal3xwR0IQkS": {}}, "user_id": "lPQ8nE8eGr7aFADk"}, {"extra_attributes": {"2s4LzTXGtkjd63nf": {}, "0MSxWVDSNc8nEJDx": {}, "kp12Rbc1DLp670pQ": {}}, "user_id": "Hy5fRWCOiDbrymIz"}, {"extra_attributes": {"BXl07l9dmbUIUK79": {}, "I2tsrfzitlBxSoPO": {}, "4w417l4hLHYwSrK6": {}}, "user_id": "BEIORyU28W6LYlpf"}], "ticket_created_at": 20, "ticket_id": "c7lpJebiXcglqIjy"}, {"first_ticket_created_at": 63, "party_attributes": {"nRw8Ak9r7sFF1bB6": {}, "WNJp4x45RhGghtcE": {}, "sAkC0O5lWHjESK0G": {}}, "party_id": "sre60drbZDzu6aaD", "party_members": [{"extra_attributes": {"nSEj0XaZIakAUBTM": {}, "JLpKq5L3jZTtr7FW": {}, "GQeY3i714aaKLXAV": {}}, "user_id": "9zybMlWrYdjYGom5"}, {"extra_attributes": {"VcgF5YVwaw8VGB48": {}, "1S39pYUJsgMIodgW": {}, "JPXTnIWz0tDY1PsI": {}}, "user_id": "AXATbH5WHhXFZHE4"}, {"extra_attributes": {"nPYC748Q1TuanCzn": {}, "gS6hZO5KDujTbnIK": {}, "sY20vQ14lTpkkKTi": {}}, "user_id": "jFBWVzBvWgIHoNgm"}], "ticket_created_at": 44, "ticket_id": "gOtMVkdueACRuwF6"}]}, {"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"pmGNzhkf32AbWTsG": {}, "gtFGs5Q1dHX14Jam": {}, "r67ZcOzEapMRnd86": {}}, "party_id": "9oj7l2DQPP6a3EzN", "party_members": [{"extra_attributes": {"aceC9aqN9dDPtEhD": {}, "bxOykr7eRudCLSGe": {}, "Lx4KaI9vCkZZj61x": {}}, "user_id": "d4B0ttcaVRRPhLiE"}, {"extra_attributes": {"5PGVcXuVT9KfWWx9": {}, "iPyE0ENxeljYwDBk": {}, "JTZE4hyZpmzOgCct": {}}, "user_id": "4P6prXOPOEfPrOUz"}, {"extra_attributes": {"lLNwKJdNY2ygwDAn": {}, "wPTnKoUyTMv0jBvf": {}, "5XGXVqDsqBcUQTfL": {}}, "user_id": "JNUKaXO4tu1tZLmF"}], "ticket_created_at": 43, "ticket_id": "xiONuYIelRJ5R0Fn"}, {"first_ticket_created_at": 53, "party_attributes": {"r1gDcW2ja68MbF6S": {}, "VTgTzOJDOugj7lzP": {}, "XivyhdtyfFZpcvkO": {}}, "party_id": "xxP4Goj9urQDpJUm", "party_members": [{"extra_attributes": {"sKMo8SdxBXv5VNtQ": {}, "ioA9pCJchm2GXQGO": {}, "jp1taXMLCrpRvYeV": {}}, "user_id": "xI7gcxcZ0MRYPRk1"}, {"extra_attributes": {"4zeMTipG2haKJmwo": {}, "ZUHDo8gdkgcSS8Lj": {}, "tjwKMT63TGIZUwC3": {}}, "user_id": "pnMyi9gUE6PvHKx6"}, {"extra_attributes": {"MR3wDdP4b7XjHAhO": {}, "kwEP6guZlKCaMgc2": {}, "VTor2Ew7l0cp2NeD": {}}, "user_id": "Le7M9mZCD9pKRrcE"}], "ticket_created_at": 26, "ticket_id": "Mnx7XMG96nHEVN8G"}, {"first_ticket_created_at": 16, "party_attributes": {"CZ52de4chgAgnSLb": {}, "qFmt74DVt9laneWz": {}, "qGMRW48F9U3PqePk": {}}, "party_id": "y2GgeYB4mxTHF6U6", "party_members": [{"extra_attributes": {"CVqEpgUQ89bvcbAx": {}, "4I4SFp6ddN5EJP32": {}, "VAg8PoCXI5y1C6DR": {}}, "user_id": "UFzkg6f9xZl4DHI5"}, {"extra_attributes": {"d0oEfvGA3TeuWMP8": {}, "TeHB936vEwAabyWO": {}, "YgxSmZbNTyPGHnyg": {}}, "user_id": "3NuXiavVj0e5oXZm"}, {"extra_attributes": {"CgLN6K8Kgf5tVpXs": {}, "4yPGQFwnu1HZwgYc": {}, "v1lR4a9v8QLVK5kz": {}}, "user_id": "Wg2xPjIw6KYqr079"}], "ticket_created_at": 52, "ticket_id": "nQMYbKZfJGthTdGi"}]}], "namespace": "yPrFISxyF3jszunb", "party_attributes": {"jNFvWINNX8ypLfdT": {}, "ORTjhMYnLEPDEloa": {}, "B71iono7JU6RpT7d": {}}, "party_id": "wIDWtkuAfFLpZQCR", "queued_at": 11, "region": "zw1bRd0YJkgnyboE", "server_name": "AvJ0jGE2XKwKLMzW", "status": "Hobf1qzt3tJN852X", "ticket_id": "j586nN2AfuZ29nU8", "ticket_ids": ["P5rzLarWB6ZBCsh5", "0IywRlR3a9Jctc4k", "KnOZLoel2coYMTJg"], "updated_at": "1978-09-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JhBeqY9CgdkQ5R3x"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'JO3Bpw9s8ZCWTGSa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 43, "userID": "1xMaVeqge7plcAXJ", "weight": 0.27090695406751264}' \
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
    --matchIDs 'mHCjk0g9DCBWJYzw' \
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
    --strategy 'DzDE32aBBtcUF6Nd' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'A5SOTESzISr6uz3v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '2toJUqCcNtuVgTgu' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "zInwVgJIdEQT8LkF", "description": "lNG4FY20EGtrkaxA", "findMatchTimeoutSeconds": 48, "joinable": false, "max_delay_ms": 1, "region_expansion_range_ms": 95, "region_expansion_rate_ms": 25, "region_latency_initial_range_ms": 64, "region_latency_max_ms": 20, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 18, "min": 34, "name": "fJHSEfu4OggaWVHe"}, {"max": 71, "min": 19, "name": "JXBid8qiJbC19NBU"}, {"max": 77, "min": 95, "name": "CpEkQN6Ghr3twZVb"}], [{"max": 32, "min": 33, "name": "Yu8cBLH8z8PxKSVg"}, {"max": 67, "min": 26, "name": "vdVUMLJE234eJLnp"}, {"max": 69, "min": 13, "name": "4kVDHiU4Jj9LmE2F"}], [{"max": 36, "min": 6, "name": "tNdfQ68exLEr1qQQ"}, {"max": 83, "min": 8, "name": "qzlfM0jLCEGXvFpn"}, {"max": 36, "min": 13, "name": "ddPFyHxRIC5CSSii"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 70}, "maxNumber": 52, "minNumber": 55, "playerMaxNumber": 39, "playerMinNumber": 7}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 47, "min": 82, "name": "aLftibzPlm4l4SDM"}, {"max": 31, "min": 28, "name": "imsGVGuNC7d676tQ"}, {"max": 29, "min": 6, "name": "yC6DNS7mZZPkjdX0"}], [{"max": 70, "min": 85, "name": "AJ4AjrfZ7JD4TrVJ"}, {"max": 100, "min": 88, "name": "qS7U20252DaWkbXt"}, {"max": 43, "min": 43, "name": "sf975JPmHs8V8RSQ"}], [{"max": 73, "min": 2, "name": "mdSqH08OQtJUsaAs"}, {"max": 87, "min": 56, "name": "d2u5Dk4AXCqr0Vcg"}, {"max": 82, "min": 96, "name": "ANOpwjFT2906Kn5U"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 51}, "duration": 93, "max_number": 35, "min_number": 21, "player_max_number": 44, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 61, "min": 39, "name": "XWM1D9QTXDpNWaeU"}, {"max": 28, "min": 68, "name": "4tDCWJoxvB6eXI8z"}, {"max": 85, "min": 70, "name": "E57sPiJbUYfbMR7e"}], [{"max": 61, "min": 38, "name": "QpmlStOlBJXthop1"}, {"max": 90, "min": 23, "name": "Bm8JOmR9ydVTvMxM"}, {"max": 55, "min": 89, "name": "SUKrA8LgxSsC4YAN"}], [{"max": 35, "min": 20, "name": "GsOI1R6mYpKCOUOZ"}, {"max": 2, "min": 94, "name": "LPUzHM68MztAobmz"}, {"max": 69, "min": 54, "name": "ohLulyBiITnVqd8s"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 73}, "duration": 90, "max_number": 24, "min_number": 82, "player_max_number": 76, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 100, "min": 1, "name": "MDBMjTmmgvlyeaYw"}, {"max": 26, "min": 61, "name": "mPmNvl7yKU0xVDwe"}, {"max": 84, "min": 99, "name": "irqsw5Wxr4BZxbvd"}], [{"max": 32, "min": 53, "name": "iRV7leYVraHHGOHi"}, {"max": 57, "min": 99, "name": "ChnhqD1wS7nzOW5e"}, {"max": 97, "min": 16, "name": "UoF7cL0pBuCLIdgl"}], [{"max": 65, "min": 15, "name": "a89GGJE9Am2SWYSz"}, {"max": 33, "min": 21, "name": "A8SxLOg9t0gzPOkY"}, {"max": 63, "min": 15, "name": "WfFDAe8lWXDpR99s"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 5}, "duration": 64, "max_number": 75, "min_number": 100, "player_max_number": 38, "player_min_number": 93}], "batch_size": 98, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 62, "flex_flat_step_range": 41, "flex_immunity_count": 46, "flex_range_max": 70, "flex_rate_ms": 85, "flex_step_max": 8, "force_authority_match": false, "initial_step_range": 63, "mmr_max": 44, "mmr_mean": 46, "mmr_min": 71, "mmr_std_dev": 27, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "1owfiNVIerox0L1P", "criteria": "3HePdl8bwLzgL8hN", "duration": 3, "reference": 0.8985279159786437}, {"attribute": "MlL4kPB6J5UlmcAA", "criteria": "4cxM2jIQxcj4FeX1", "duration": 37, "reference": 0.9461276903015405}, {"attribute": "5O3nfFz4sUKjNmYb", "criteria": "2trXURvxu7atoE8j", "duration": 75, "reference": 0.3170067519052022}], "match_options": {"options": [{"name": "Fhkvtl9TG41Hr9yG", "type": "A2UGzywX3OpIrkc1"}, {"name": "sPEnt0gV7hojxaFe", "type": "eA7oOsJIK9r8i12y"}, {"name": "lvw1vo6tHbNj0EzN", "type": "qOYVLEPfVvDVNcKu"}]}, "matchingRules": [{"attribute": "qbNetpgdE0Fj75jw", "criteria": "QrsLLsw1nhRFegg8", "reference": 0.32996844559861893}, {"attribute": "cWfldPr7cISvVc0I", "criteria": "A4soiSXN4Tor3juO", "reference": 0.9096313946547676}, {"attribute": "oNaLmu1dDTrcBWfD", "criteria": "34IT7hypz48H9fw4", "reference": 0.04804062780282825}], "sort_ticket": {"search_result": "none", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 98, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 66, "ticket_queue": "none"}, {"search_result": "distance", "threshold": 22, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 63}, {"selection": "newest", "threshold": 99}, {"selection": "oldest", "threshold": 58}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 6, "socialMatchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'VNkto9SHUrNoGkud' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'CqHeITnU1CqX84Tn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'KUgstm469NUFDnKb' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 5}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'hkNIkXJNTy3Kyepl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '33gXgDaesopGBAtV' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "9In6SagnosMFuW8r", "count": 9, "mmrMax": 0.9960493099137722, "mmrMean": 0.7098713000038777, "mmrMin": 0.42118723545004855, "mmrStdDev": 0.7686320386708929}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'Tm7nyYlJ4FgrkMuD' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 66, "party_attributes": {"JHNXmd2T8RbtsdXl": {}, "EfyOikAuN99pCAZI": {}, "ulEHX0eWyki9zkFQ": {}}, "party_id": "l2ttCjYYeATsArmZ", "party_members": [{"extra_attributes": {"3uL8NMYArCe1Fq6c": {}, "B6xk7Zd3SdCdpeFG": {}, "C1bTe2rv5xhgd296": {}}, "user_id": "DDkh57vojXme70b0"}, {"extra_attributes": {"WIYjmLcq9dUGEKMn": {}, "flzauzUoG7upmLHC": {}, "RbVJJHFZfQiFnqyD": {}}, "user_id": "r8BQSXEcpQ06Wq70"}, {"extra_attributes": {"0ux6bq08WSHWmFQH": {}, "Crw4IfBNCJBFv39f": {}, "h3RGRUBHzzi4yvSK": {}}, "user_id": "xiJOBJ8cWrIApheT"}], "ticket_created_at": 49, "ticket_id": "40rKHaxtH62DzO1F"}, {"first_ticket_created_at": 91, "party_attributes": {"7BvjNh7kIeHmGNhg": {}, "ZYoNs7WF4QI8zUQ7": {}, "th0rBHOSdZ2Nmksn": {}}, "party_id": "H5KCgecILwVTOjit", "party_members": [{"extra_attributes": {"Gii1sZ7TbsWHkkkb": {}, "IpMEAp2gIbBq2NO6": {}, "U3yy773LBGWVeYtO": {}}, "user_id": "niruv22IEm0FPQGq"}, {"extra_attributes": {"z5b7zNo1C9mNMlzZ": {}, "zUzdg5lRIAvxBRd6": {}, "PVUSm4iji3uDXo8b": {}}, "user_id": "SVFi5kbXzEUKpmJa"}, {"extra_attributes": {"HMGaIJjRYLApy1ob": {}, "JV7RXJ9SZQZxEW00": {}, "XpXqPrCS0LxSpI5i": {}}, "user_id": "9I4SqlqrqxgedPNV"}], "ticket_created_at": 96, "ticket_id": "SEfuwPrL8tLKO5ZM"}, {"first_ticket_created_at": 58, "party_attributes": {"FOnMHkKZ6WnCyZIs": {}, "Q2BVej9uWQYZgfij": {}, "4V7wgTQPM21F7FQR": {}}, "party_id": "bz4kPLRwYLenl0Xy", "party_members": [{"extra_attributes": {"MFseH4qYjUyRLbLy": {}, "sbHVQIsqFTRAi7uu": {}, "RkQzVMyv0FNERkud": {}}, "user_id": "vqiz7yZZipD4xmpu"}, {"extra_attributes": {"TWR2IQnjwTsatBh2": {}, "8Wf8P5hPtsVNYmKj": {}, "TuKAbKlXVZmFvPDK": {}}, "user_id": "Tebo9dyRlznxwKpo"}, {"extra_attributes": {"iDs3vat7XnKGuWQJ": {}, "QR01bWyLZMnv1KDR": {}, "sRaGB361ded1ObEs": {}}, "user_id": "CoaDQKqnwxRkE3QV"}], "ticket_created_at": 26, "ticket_id": "v0qzNbGHfGJtFROc"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'Y3ETdUjtV6x6Iwf4' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 60}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'jS5Q8SHvwptwFgfe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '0Jk2eNjTEW0k6ofq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'zScv2vH2I7XewIlW' \
    --matchID 'tRe3TSNofknbIvjZ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["m6WT3xktDpvGK4Mt", "sYhNsMqV8L4fw2qw", "zb9WiU8TaHczJbdF"], "party_id": "57fzBo5oENUJKLVV", "user_id": "M1UFwVqZRjsZjY1J"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'T400KgoDptRwOWkZ' \
    --matchID 'SdIgDbzBt9TOVSHc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'lY6XCbXyJu9r53iw' \
    --matchID '9euofrM9K5KfnAq7' \
    --namespace $AB_NAMESPACE \
    --userID 'ku0zGQpqlznANZg8' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'fIhhfLSYaZkEZZnI' \
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
    --channelName 'DzEM9XTFCQyW6xA2' \
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