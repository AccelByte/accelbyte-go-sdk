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
    --limit '14' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "qrttpnqvIwqjDxCy", "description": "4MnUObuXFYCCebRL", "find_match_timeout_seconds": 9, "game_mode": "l6qFvBNA0lbi1Guz", "joinable": false, "max_delay_ms": 28, "region_expansion_range_ms": 41, "region_expansion_rate_ms": 29, "region_latency_initial_range_ms": 26, "region_latency_max_ms": 8, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 79, "min": 8, "name": "WTKjuMbwGmoMEzsj"}, {"max": 56, "min": 17, "name": "2dvwgr7ih3PXAxjW"}, {"max": 60, "min": 54, "name": "Uiijr1xnWOO6sXXz"}], [{"max": 47, "min": 91, "name": "SbiLfyXMtwZgO4xx"}, {"max": 81, "min": 24, "name": "xcGUfxaI9l5iH5UM"}, {"max": 64, "min": 83, "name": "1CAvHTrMYOUkeHim"}], [{"max": 15, "min": 67, "name": "vSsNNXyxICSKpRRY"}, {"max": 97, "min": 28, "name": "eCP8Q1ya61lVnlQT"}, {"max": 38, "min": 49, "name": "eFXYryqmCVYljoO0"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 32}, "max_number": 13, "min_number": 91, "player_max_number": 93, "player_min_number": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 30, "min": 90, "name": "CzcJLveqWJN2fzxJ"}, {"max": 99, "min": 17, "name": "WOGeC5XIvhv3OePk"}, {"max": 84, "min": 45, "name": "0JEmrPdYsReSRKAa"}], [{"max": 7, "min": 18, "name": "dm5XwanPUML3I5Bm"}, {"max": 19, "min": 53, "name": "drKgMmkmKDjjYftB"}, {"max": 94, "min": 82, "name": "udG3ecE6esW3NHDH"}], [{"max": 78, "min": 69, "name": "GkBzC7Fuv83L5f3B"}, {"max": 32, "min": 98, "name": "iWfrqj8qBO1U604a"}, {"max": 80, "min": 89, "name": "irVcmdd3bAX93rMf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 56}, "duration": 4, "max_number": 52, "min_number": 64, "player_max_number": 67, "player_min_number": 5}, {"combination": {"alliances": [[{"max": 67, "min": 61, "name": "54ON7TDykaQ02S9I"}, {"max": 72, "min": 14, "name": "fIp3oqGBcuzWn1nj"}, {"max": 26, "min": 9, "name": "6AVlSFJMPpRJF09t"}], [{"max": 28, "min": 64, "name": "rTNACwBJvt4Ggx3y"}, {"max": 99, "min": 99, "name": "cNGtHMfzJF1D80T2"}, {"max": 15, "min": 87, "name": "tbTaZAtoLuhs0rHr"}], [{"max": 60, "min": 90, "name": "Xm69OoPBakmPm9ng"}, {"max": 16, "min": 36, "name": "1cZM67Sz5MG0UTyo"}, {"max": 25, "min": 68, "name": "EIjELe0NG0nSHn1O"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 16}, "duration": 25, "max_number": 49, "min_number": 7, "player_max_number": 82, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 40, "min": 97, "name": "z6wDe30KjyDnOHYU"}, {"max": 43, "min": 27, "name": "jTjwc4UNByiCoqOh"}, {"max": 71, "min": 100, "name": "x7sZrRZOiQiiPo7r"}], [{"max": 29, "min": 31, "name": "ZX3yF9kUwwZyMUIE"}, {"max": 88, "min": 35, "name": "RybQKA3gqDOBKH4P"}, {"max": 22, "min": 85, "name": "hNukUy5FXTpOkSg2"}], [{"max": 96, "min": 16, "name": "7RLu8kdLvlJ3Sn2q"}, {"max": 73, "min": 14, "name": "c2vXNqxUIWr4jAWL"}, {"max": 22, "min": 21, "name": "EtCF0dgJZAsFoHmP"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 54}, "duration": 69, "max_number": 61, "min_number": 82, "player_max_number": 77, "player_min_number": 19}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 69, "flex_flat_step_range": 80, "flex_immunity_count": 71, "flex_range_max": 13, "flex_rate_ms": 56, "flex_step_max": 32, "force_authority_match": true, "initial_step_range": 7, "mmr_max": 13, "mmr_mean": 22, "mmr_min": 58, "mmr_std_dev": 17, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "kOVsyF8DGPFykp7V", "criteria": "V1j29FZ6PvloA3Le", "duration": 89, "reference": 0.7080698703563658}, {"attribute": "VlZK8sTTHKTtOLs8", "criteria": "O2TkX0NWIuOhT1Ae", "duration": 57, "reference": 0.7773956472337429}, {"attribute": "i5SYnhiZiqfM5OKF", "criteria": "5Tx0Io0cxkDCbnA3", "duration": 7, "reference": 0.5977609391966208}], "match_options": {"options": [{"name": "3k0nhDLB4GKvoFA0", "type": "S76SZrgrq5SF6xiK"}, {"name": "qv3jJvPugCcDvTmO", "type": "uTuQhzPqthEMwbVP"}, {"name": "9B50OSwZypwPM1g6", "type": "iGlpNaT2gvwWeSg7"}]}, "matching_rule": [{"attribute": "UoIp0BHaoCSbd0k2", "criteria": "Sez90C3fkCPpTkD9", "reference": 0.49205387840975023}, {"attribute": "6RTPu8ZacvRZFXUd", "criteria": "wXOM1XJeNvlhvrzz", "reference": 0.40443824926607763}, {"attribute": "Gnp2SYpDIN0fGv1T", "criteria": "DwCjHJGxmHzrnR30", "reference": 0.7739191563431407}], "rebalance_enable": false, "sub_game_modes": {"t6SEhyZSFI8hgzs7": {"alliance": {"combination": {"alliances": [[{"max": 63, "min": 75, "name": "kzgmIkChrBaqTip0"}, {"max": 94, "min": 7, "name": "DxQBNf4GQmMhDrIa"}, {"max": 74, "min": 80, "name": "7gAcmSWuwbXY3UvA"}], [{"max": 55, "min": 60, "name": "PbsaT78tYD5hkTl3"}, {"max": 7, "min": 53, "name": "6cTOdq9iNq4uDian"}, {"max": 51, "min": 7, "name": "iIQt1cLeZH8pw81Y"}], [{"max": 58, "min": 81, "name": "j9Wbf9pWmUgkrA2J"}, {"max": 83, "min": 88, "name": "jQdWViyiEiC24mov"}, {"max": 26, "min": 81, "name": "n2YSUksSQZJ4AqPN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 28}, "max_number": 5, "min_number": 75, "player_max_number": 19, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 53, "min": 82, "name": "Y3DzMhqNAZq04M7Q"}, {"max": 95, "min": 79, "name": "9fpUZwX1b4k2G4Il"}, {"max": 100, "min": 22, "name": "q1Btf4584X7xhJ19"}], [{"max": 8, "min": 39, "name": "Uy9ydRuDRqnaeXai"}, {"max": 31, "min": 61, "name": "qj7Fmvb90b1lBRDG"}, {"max": 20, "min": 37, "name": "XxUw16xcX6NkLzeC"}], [{"max": 5, "min": 13, "name": "Z511399tW6yNvkd7"}, {"max": 17, "min": 70, "name": "IdFgiA7yP6uymQm1"}, {"max": 98, "min": 26, "name": "GRmnaQub0iGjUMNz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 89}, "duration": 58, "max_number": 6, "min_number": 10, "player_max_number": 68, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 32, "min": 64, "name": "noWMSyLCqpNwKMel"}, {"max": 92, "min": 51, "name": "PCopaEaI6dkEHg6B"}, {"max": 87, "min": 59, "name": "SW3psmrK6Y2UMClv"}], [{"max": 31, "min": 36, "name": "W4daRv1qugSHhsxc"}, {"max": 22, "min": 99, "name": "ZcQXOMbZeCbW2qlu"}, {"max": 7, "min": 78, "name": "3LPIvLlCL69PvJWN"}], [{"max": 67, "min": 16, "name": "rYyPweprBO1y6lSg"}, {"max": 63, "min": 98, "name": "UEJqWZM6wxfZ8Zg7"}, {"max": 12, "min": 92, "name": "MjaX7l95Ym213CPD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 89}, "duration": 92, "max_number": 42, "min_number": 85, "player_max_number": 30, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 38, "min": 66, "name": "wCl1497njDhHXs4j"}, {"max": 49, "min": 90, "name": "1dlZgpU1lIbeKjn4"}, {"max": 66, "min": 59, "name": "E9KLrRCVM43HoDA0"}], [{"max": 12, "min": 73, "name": "OqGDiNcvycPMMdFr"}, {"max": 78, "min": 61, "name": "PX9xCh1UIVmZq5gP"}, {"max": 3, "min": 1, "name": "rq8L3TnCj6OYqupD"}], [{"max": 92, "min": 8, "name": "qUMfIRRGBadkrZfw"}, {"max": 63, "min": 91, "name": "IyuUlYv2ZqKoDJEW"}, {"max": 96, "min": 59, "name": "mIq01cV6vW5P3Syv"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 72}, "duration": 65, "max_number": 88, "min_number": 8, "player_max_number": 38, "player_min_number": 67}], "name": "20ciqwr2QTbMaFW7"}, "BPKRYIvJLtr8zSSx": {"alliance": {"combination": {"alliances": [[{"max": 9, "min": 75, "name": "w2rzd09GyavsOPTX"}, {"max": 99, "min": 69, "name": "J3cEtau9WrctgTTH"}, {"max": 75, "min": 97, "name": "CNARXGLjtA63DV98"}], [{"max": 85, "min": 6, "name": "8nWFyUkvWMD290hb"}, {"max": 82, "min": 23, "name": "wrnDQZamYdLu9SLc"}, {"max": 46, "min": 37, "name": "DesraRDKwKKzbbCn"}], [{"max": 63, "min": 12, "name": "07MyID3Mg0kJuT1s"}, {"max": 70, "min": 25, "name": "QbKq67S9yimgqFLO"}, {"max": 71, "min": 97, "name": "qqU3PJr6dZjKodHp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 1}, "max_number": 68, "min_number": 52, "player_max_number": 40, "player_min_number": 23}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 60, "name": "QFgT7wcmU6nhilJ3"}, {"max": 20, "min": 96, "name": "YkKIDggt91wcnYZ2"}, {"max": 67, "min": 40, "name": "vyLpxqqOE6pluNqi"}], [{"max": 76, "min": 42, "name": "Bq63nnNCNENhuEPE"}, {"max": 61, "min": 8, "name": "8iewCr7dvBR4Dgou"}, {"max": 100, "min": 13, "name": "59XbJlyDwlL2yw0m"}], [{"max": 11, "min": 13, "name": "JYDOE6J2l1Gb58Q8"}, {"max": 30, "min": 16, "name": "fw7NUuijTyu6ATAj"}, {"max": 14, "min": 9, "name": "Ztil9LH3z1F41glo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 99}, "duration": 67, "max_number": 10, "min_number": 37, "player_max_number": 58, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 19, "min": 66, "name": "gHj0yafpuPyHQ1dI"}, {"max": 40, "min": 61, "name": "uF7wJwjT4xeSo7bX"}, {"max": 90, "min": 4, "name": "LwRcpsZq8QtudrF1"}], [{"max": 57, "min": 43, "name": "2GPVOJIei56aCr4j"}, {"max": 42, "min": 74, "name": "xAuG7j76yIaAO4uW"}, {"max": 21, "min": 100, "name": "rYiPt1rTeHNbjwDX"}], [{"max": 26, "min": 58, "name": "dSuTYGW8C8ABnpoW"}, {"max": 49, "min": 39, "name": "5eHg3kkpguqN3Edq"}, {"max": 84, "min": 2, "name": "O2UumIe8oHKjVxD5"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 9}, "duration": 60, "max_number": 24, "min_number": 86, "player_max_number": 43, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 82, "min": 55, "name": "mHhSNfmyqoLkbhsP"}, {"max": 11, "min": 2, "name": "hqB44ZDKODcJtZOu"}, {"max": 60, "min": 90, "name": "wyLZcchqr9esaDBz"}], [{"max": 16, "min": 54, "name": "bGevXog4F8URkUmo"}, {"max": 55, "min": 15, "name": "AXKag3ASgeu84SFB"}, {"max": 76, "min": 71, "name": "gBzO38xteTGdx1cq"}], [{"max": 4, "min": 26, "name": "NeI3jCCqqlLt6ZxG"}, {"max": 19, "min": 11, "name": "53OsD9AXD3myTBW2"}, {"max": 11, "min": 0, "name": "t0ZqkoPn4Kqz00k4"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 97}, "duration": 66, "max_number": 24, "min_number": 48, "player_max_number": 98, "player_min_number": 7}], "name": "De6X2RNT4cmSMifg"}, "RDefJGRc5Z9LTGPH": {"alliance": {"combination": {"alliances": [[{"max": 81, "min": 63, "name": "pH3sFRnrKxYE38Xw"}, {"max": 89, "min": 72, "name": "5dWIWH5Kp9B4dsT7"}, {"max": 48, "min": 80, "name": "IPwhsZFPCMfl9KGf"}], [{"max": 34, "min": 52, "name": "uE5FOtKZpjzQRbKN"}, {"max": 68, "min": 13, "name": "TkfLSZfgZ7d6LRgN"}, {"max": 6, "min": 15, "name": "pdNxkVK7IC2LmlUb"}], [{"max": 43, "min": 73, "name": "Mlc36WPgGne4hjaM"}, {"max": 28, "min": 90, "name": "pfU4ehotkSiFJ2SK"}, {"max": 30, "min": 68, "name": "wl0Q3ArGB9CO6cDn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 8, "role_flexing_second": 100}, "max_number": 53, "min_number": 22, "player_max_number": 17, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 16, "name": "PRODgLexqGCHyY3M"}, {"max": 90, "min": 33, "name": "LgHt1FpdS83vLynv"}, {"max": 49, "min": 100, "name": "AMjTVEZNQX4viELQ"}], [{"max": 7, "min": 55, "name": "r4YNgwOoCoTdXirW"}, {"max": 83, "min": 67, "name": "zOxY83CGNGByN03e"}, {"max": 32, "min": 32, "name": "aNhACmV6DXlSqSNO"}], [{"max": 1, "min": 56, "name": "ZrLR0YWyiRTjyzj0"}, {"max": 61, "min": 9, "name": "EIGTbs8ZOSkaNMMc"}, {"max": 45, "min": 66, "name": "1IDTIsmK6R16Ta7j"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 70}, "duration": 9, "max_number": 57, "min_number": 45, "player_max_number": 91, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 28, "min": 71, "name": "QLqNEUBjDCy6tc56"}, {"max": 94, "min": 54, "name": "oxaurFA4gAgy9HGe"}, {"max": 49, "min": 85, "name": "Mlsf3BK4VCX2GVqO"}], [{"max": 82, "min": 41, "name": "VyZpEdViwJDHd8nX"}, {"max": 98, "min": 33, "name": "F05Ct2fdpyG67azs"}, {"max": 70, "min": 86, "name": "fh6WQihQ9s4brS5b"}], [{"max": 5, "min": 53, "name": "fCCpYx84iFTS7d7e"}, {"max": 34, "min": 57, "name": "hEicB6tXw8l13AbJ"}, {"max": 66, "min": 36, "name": "P8bcWYdzKzRWaiyN"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 63}, "duration": 34, "max_number": 39, "min_number": 44, "player_max_number": 72, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 5, "min": 82, "name": "9WwzhZkvwE9wVVsx"}, {"max": 15, "min": 62, "name": "5TMfOGmm2mKKWEwg"}, {"max": 68, "min": 19, "name": "bv0V49fa6NtLj8XN"}], [{"max": 97, "min": 20, "name": "0RRAQR87VPyFlRDp"}, {"max": 49, "min": 34, "name": "Ip9e0EotHZwnVhvl"}, {"max": 15, "min": 27, "name": "aVsoo9ePB7WLQarY"}], [{"max": 64, "min": 53, "name": "IfvQUAR4VqTejDHk"}, {"max": 53, "min": 10, "name": "unaRQPY2m3swONA1"}, {"max": 73, "min": 78, "name": "MiEADkJAneAofIT2"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 9}, "duration": 84, "max_number": 73, "min_number": 82, "player_max_number": 28, "player_min_number": 88}], "name": "4HFY0Il88qmYeFO8"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 100, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'RpnECFXzOz58cLal' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'BlCwAg8YZH28uLdL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "YXsOHfThhYShrTr6", "players": [{"results": [{"attribute": "AnojcBmVMs0AOGrN", "value": 0.937646231112246}, {"attribute": "Z6nvhQIThQw8iPMg", "value": 0.6291721154254342}, {"attribute": "vKyDJSgZURH0kZOB", "value": 0.921546350994409}], "user_id": "FgsnAWZAHdjGV1U2"}, {"results": [{"attribute": "Gba9zIL8gXlZ6jxn", "value": 0.3173975764225285}, {"attribute": "MWOJhv5dyLbJn3h7", "value": 0.020839211902369925}, {"attribute": "YR3ZU4VtCU2tt4K4", "value": 0.9286664905141808}], "user_id": "x62aGFNy4ghdqF1J"}, {"results": [{"attribute": "iJeXppLUa1wlVuKz", "value": 0.0031093445105482287}, {"attribute": "dE1vABB7j3KKLWWW", "value": 0.7476194468578039}, {"attribute": "0Tt5z4Rov2i9SwaC", "value": 0.37964464493439476}], "user_id": "6KPwSPvzOMn0fVuU"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0BQFuU7X4IWAb6pj"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "4BsAih4y1rCJEbN6", "client_version": "7PwjODu4JA8BA42q", "deployment": "wxuqR3is6B1ni7F3", "error_code": 21, "error_message": "l4b5nmYtO904IAxz", "game_mode": "JFvviXt0UqGxJY05", "is_mock": "oE48HNK9w1311IWN", "joinable": false, "match_id": "Kyckbsnsl99xTzb6", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 25, "party_attributes": {"5jHbIbWAJsTlrXXx": {}, "MNvrrfLPirZM3ybe": {}, "2O44SUXZmcGJBuFn": {}}, "party_id": "ZLXQG8fC6lij9IEv", "party_members": [{"extra_attributes": {"rCULnHVKMiISXrR7": {}, "LE6QG8JKJYywBzaM": {}, "5XqYtuFmf2oKdRMK": {}}, "user_id": "Flig05Pi1t35eAWL"}, {"extra_attributes": {"xrN8VDFfymyLF5oK": {}, "UhvTMSSBxSnSFUMQ": {}, "wWhOqcb9TNhUcxOs": {}}, "user_id": "Y4K1knJpOQZglij5"}, {"extra_attributes": {"7i1dKzfbqacDh5UI": {}, "ag3c4aTpHiP0KFCC": {}, "DAx1Ja7FgJQlGtfl": {}}, "user_id": "RnNXpeI6CUb74oLN"}], "ticket_created_at": 48, "ticket_id": "FtDk4WMzUwGng4Vr"}, {"first_ticket_created_at": 10, "party_attributes": {"V5GFhRzyL4X9T4DJ": {}, "LT8Dw2H1geQw0Ksz": {}, "ektGdeyT9GrD74km": {}}, "party_id": "YcWqJAYQF45imJ5U", "party_members": [{"extra_attributes": {"nCGlTCVLulBGVA8h": {}, "cHLlkCda9eN9u947": {}, "fK6LCMInZar2fPqm": {}}, "user_id": "7db7UDi2xgM8c3DU"}, {"extra_attributes": {"8rHm67MbuiN4Y1mC": {}, "oPQyyL7MB4NGF00t": {}, "xds2P6lQuRy60p3W": {}}, "user_id": "au1xFJVMoeTdXgRP"}, {"extra_attributes": {"RDOy1XNIIazNlIlw": {}, "LJ3AZ9H2qsLB4O4d": {}, "bSoR0GNCbpXm6LX8": {}}, "user_id": "sLXj6mwVCwBrvius"}], "ticket_created_at": 95, "ticket_id": "VkM0i2GfMsYyLaRs"}, {"first_ticket_created_at": 38, "party_attributes": {"0lwH1PkpHboqh3EX": {}, "19RYAaeVFrQhRmTn": {}, "1FnBi98LSDBQcn9i": {}}, "party_id": "hNSs85Wc9nRuDiOE", "party_members": [{"extra_attributes": {"7BMWNjPtKbTllRqj": {}, "qPHNn5y92ivXvzEu": {}, "sizlCBZAzBJNy80t": {}}, "user_id": "oVHSjflXkTyFxlUH"}, {"extra_attributes": {"i7Fcz3Ctcwz8arnr": {}, "lEc6Tzp2nAe5xEBI": {}, "X9q4WENRRYeMr3XW": {}}, "user_id": "UQtev6b7J4ZW3MFb"}, {"extra_attributes": {"owweM764ND3ya3rA": {}, "vVIA9jI0VucW3mAw": {}, "fcBP4fKCEZyno9hy": {}}, "user_id": "rjbgJs7J9qJOPDJT"}], "ticket_created_at": 27, "ticket_id": "HLgHTt49oFmGuaRl"}]}, {"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"tkQzdLwVdgjsQ2sq": {}, "J58N9FhJMFECODWm": {}, "NHAaOFHWCFvJEBEP": {}}, "party_id": "lJgAMSkFfaeiET0i", "party_members": [{"extra_attributes": {"C8kqYgYzs2fpMzaP": {}, "iCWiodUw5F4HVpMh": {}, "wlyoJxIv5zuZfj0w": {}}, "user_id": "I5JvY3gCbIYj7vLo"}, {"extra_attributes": {"52QfPiw2E6RTwq7k": {}, "W5glvybMEl5udjS0": {}, "xlJVX2GjAzSFHaMh": {}}, "user_id": "YSwVhFK3FWSblzIc"}, {"extra_attributes": {"4tn7odhg325CBteU": {}, "AgZJdvA44zOAMj5m": {}, "7glsbrtP0kilYx7r": {}}, "user_id": "5HMjHvqDm0QDoqye"}], "ticket_created_at": 43, "ticket_id": "0n1Z7Puf57fkMmyX"}, {"first_ticket_created_at": 91, "party_attributes": {"fQOBUez3A6qPeFrB": {}, "MW98XO1vNk6AK6MK": {}, "SyvO97k3RXzI2M06": {}}, "party_id": "0FBCRJvIRcslyb4P", "party_members": [{"extra_attributes": {"LskF1H6fMllWDGJl": {}, "mWco6Mg2DcX8VATT": {}, "qgkjFVcdiKjFpW8G": {}}, "user_id": "6893Kk7K7ZwRqjhJ"}, {"extra_attributes": {"6CJn0MGGV9QdT6kp": {}, "Nk2shDxmrskOARox": {}, "1jPmD303RNcjrPXY": {}}, "user_id": "2tjajI5ZLfjuy4NN"}, {"extra_attributes": {"lKcjgZilB1uO6b4K": {}, "aPtFbUxMEykTykC8": {}, "TUyQwYdFPZQDGaf4": {}}, "user_id": "I69cV5ms4puIrv0i"}], "ticket_created_at": 61, "ticket_id": "TXBuIKTRRHcBBBLK"}, {"first_ticket_created_at": 0, "party_attributes": {"fsk2FtHo2dlwekqP": {}, "EzBiHRpVlr5sEeqC": {}, "24lYUmWuQl0JMxRV": {}}, "party_id": "vfAsMjL7Qv9Qvn5Z", "party_members": [{"extra_attributes": {"NeKpFjmS4OkiwtaB": {}, "O8tENUxZa8xrai60": {}, "1Bh2jNWiXPPyf74D": {}}, "user_id": "APCtKvdzAOfTC4SP"}, {"extra_attributes": {"ERjLE8K2SIVa2wSd": {}, "4bY23DVqMbFFDvQV": {}, "Kn5AMNn8F35Wjiic": {}}, "user_id": "rohDXIpUhZppsSkF"}, {"extra_attributes": {"uPGKnFtAbVp8fFxD": {}, "tQWAhAK0hw9N7hRp": {}, "HFoP1d5WXFJfsjH4": {}}, "user_id": "VLgPJjW2EsXBUwyQ"}], "ticket_created_at": 21, "ticket_id": "STPPLlxvjHiKDPCs"}]}, {"matching_parties": [{"first_ticket_created_at": 73, "party_attributes": {"QIMGvGBqZZPIFGqc": {}, "0IYUjlrhMT267RL5": {}, "WxxEqgkq3nvMifcD": {}}, "party_id": "Bw8cFLDdrmvQUJpL", "party_members": [{"extra_attributes": {"IOs0Una2oNEDGd9s": {}, "pbhjyA6Hj3khNpXj": {}, "rPXjPZL5JP7XEq2f": {}}, "user_id": "7LH1LHeIazrl1QZG"}, {"extra_attributes": {"MBTZhYO402yv9rWg": {}, "X4a350xMkdrG19UO": {}, "wb6dfLfl4DrL6yHR": {}}, "user_id": "BcKDjXpJVK87U2KV"}, {"extra_attributes": {"ovwmu2pB3tYeGQCU": {}, "xBUXLeEBW2JkSzKf": {}, "OPhwlZFkylbJglB3": {}}, "user_id": "m6FaWwvzBTrMCw6X"}], "ticket_created_at": 68, "ticket_id": "rhrtZEvoIF85AZnz"}, {"first_ticket_created_at": 87, "party_attributes": {"K9JZKJnX8YOG4Jgd": {}, "NBc8v4TFSAM3puhI": {}, "xkKaM3uzpsD8wOSr": {}}, "party_id": "Br8dDEdMohrBvUMd", "party_members": [{"extra_attributes": {"zy09mK33Gn2vNhyf": {}, "7BwhcwCi1PtqCmt3": {}, "p4uc1MDDT9x1JAeY": {}}, "user_id": "bnE0bcWcyvlTid5v"}, {"extra_attributes": {"fOSnJBvkxLbnm6ye": {}, "ny4P5pmRnyVqfhgJ": {}, "T6xImqKRMYcBjBKf": {}}, "user_id": "28b0v5saiUSfsXXZ"}, {"extra_attributes": {"5tydCuCnEk6WvaZB": {}, "0M8zTZnhGad8CoOH": {}, "SuGtgUQz7DJo4VMp": {}}, "user_id": "2oCKzkRW1vlX4YmG"}], "ticket_created_at": 23, "ticket_id": "gsNG4oiMe22cl1wN"}, {"first_ticket_created_at": 50, "party_attributes": {"edsat3UhzjrClPLc": {}, "m3vA44mbeLcdxHI7": {}, "62945uRk126RGPei": {}}, "party_id": "p1fDq54t8PQAE75O", "party_members": [{"extra_attributes": {"ADtqup4sHYNi4sbV": {}, "MYbFUpdm5mp9OId1": {}, "gHxlSs4SC1jiJDgA": {}}, "user_id": "QtOakut4Abro1T9i"}, {"extra_attributes": {"FeJ9ViFCI3hsPU1o": {}, "LH44RvB8WFjjVz4Y": {}, "bDJ7yvAhUJQn9ffh": {}}, "user_id": "LTrtTEoyCaeGFTCR"}, {"extra_attributes": {"GapJV1DzZf8meBRx": {}, "EWHGqqSwvt5H1uSd": {}, "ljIFmHOZSF1l0zVl": {}}, "user_id": "8snRxSDI3tdeSnZ4"}], "ticket_created_at": 55, "ticket_id": "KO5glyMHVBBH7QIq"}]}], "namespace": "XTDwNI0iwKqwV2l1", "party_attributes": {"gGc7O9Qq9PhgtIed": {}, "JZQLJG0XjwlJqAsl": {}, "U6WwCHhkPSdy3ooW": {}}, "party_id": "DRciRq1NmeY2bxet", "queued_at": 0, "region": "44PebI2axkEon1SL", "server_name": "FnlQxxinpwmekDmg", "status": "aEnY8W2Rpg1ctaXD", "ticket_id": "x2QPF26JveGEoplA", "updated_at": "1987-04-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "6iRY9ixXT2bNcRMx"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'pVhFUXNd7fLGs2qK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 17, "userID": "r8gOzOR4GznD89pe", "weight": 0.31710854240740816}' \
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
    --matchIDs '2OzFVFpwxruAOPUN' \
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
    --strategy '1xcSdnV5oYKBGHFe' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'm3RPhOrKRpqGUyIi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Tn6XvzM7iJrJwyZE' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "9NtyGHAAeUUz8sUv", "description": "VwGitTyJ1GCB7dZ2", "findMatchTimeoutSeconds": 41, "joinable": true, "max_delay_ms": 64, "region_expansion_range_ms": 96, "region_expansion_rate_ms": 17, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 25, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 88, "min": 84, "name": "1mMzJUzprqmDzJqY"}, {"max": 68, "min": 66, "name": "boa0bJaf9ZTjIGBc"}, {"max": 83, "min": 59, "name": "eInFiNtBGolZ0fwc"}], [{"max": 88, "min": 55, "name": "ar1AGEZkgUur6OFJ"}, {"max": 94, "min": 4, "name": "7TuJWdibSp1Dz11j"}, {"max": 72, "min": 82, "name": "uPhPp87YBCbyNNeV"}], [{"max": 71, "min": 70, "name": "ApKuuy7K48BqMFIh"}, {"max": 96, "min": 81, "name": "VkBL6Yr7TLWWKFfs"}, {"max": 48, "min": 31, "name": "ZGxR3R20DyGSqk0e"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 52}, "maxNumber": 54, "minNumber": 60, "playerMaxNumber": 49, "playerMinNumber": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 26, "min": 53, "name": "1UsCThXDHaS8iREN"}, {"max": 97, "min": 74, "name": "Ylf4uttcgDL9XGAV"}, {"max": 64, "min": 53, "name": "0hMT8TH5WKZQlgXO"}], [{"max": 32, "min": 55, "name": "tYGf8gIuOC9M4BWW"}, {"max": 76, "min": 54, "name": "YJMAH27xD9u7P4xq"}, {"max": 15, "min": 85, "name": "IcfPNcmJ0CKS64Ug"}], [{"max": 43, "min": 86, "name": "HFHfpNqMwXJTZIjO"}, {"max": 66, "min": 66, "name": "iM3kOwswD3LmoW7l"}, {"max": 2, "min": 36, "name": "8l5fv3xhTGZ4bcwc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 3}, "duration": 69, "max_number": 51, "min_number": 24, "player_max_number": 65, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 38, "min": 46, "name": "qn7TEXCNXM9S95L6"}, {"max": 33, "min": 86, "name": "VZzRAU3T0y83pOyO"}, {"max": 91, "min": 23, "name": "XJJx15OMVA7fdPhS"}], [{"max": 20, "min": 97, "name": "NRNqSDRUNOFEwV0v"}, {"max": 23, "min": 48, "name": "wMh1JxRaX7KybzpD"}, {"max": 0, "min": 54, "name": "WZYzhlk7HT70nuIS"}], [{"max": 89, "min": 87, "name": "tv0VtSTG1a9iGmbu"}, {"max": 4, "min": 70, "name": "pML1h7YpKXPNWt5E"}, {"max": 76, "min": 39, "name": "uLqJO9CdG3iEG6OQ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 70, "role_flexing_second": 76}, "duration": 64, "max_number": 4, "min_number": 6, "player_max_number": 76, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 77, "min": 77, "name": "QE38csJkTobnO9TE"}, {"max": 97, "min": 37, "name": "OvL6YP9ukFUGjAzF"}, {"max": 20, "min": 75, "name": "IQl9EId24761ZRP2"}], [{"max": 42, "min": 80, "name": "cmRaCGON528fjful"}, {"max": 80, "min": 27, "name": "1x8OzvCq2JfysZQG"}, {"max": 95, "min": 41, "name": "PSMDybrw8tPbbJd8"}], [{"max": 8, "min": 100, "name": "zYFYMRs5ues97pSq"}, {"max": 5, "min": 49, "name": "WG4QD1Mre5GxoIX2"}, {"max": 69, "min": 92, "name": "xuo5Sh9f7xvJ1pV4"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 73}, "duration": 56, "max_number": 95, "min_number": 89, "player_max_number": 19, "player_min_number": 29}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 31, "flex_flat_step_range": 99, "flex_immunity_count": 65, "flex_range_max": 38, "flex_rate_ms": 37, "flex_step_max": 26, "force_authority_match": false, "initial_step_range": 77, "mmr_max": 40, "mmr_mean": 70, "mmr_min": 5, "mmr_std_dev": 32, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "DsBWoora4q0wU7mA", "criteria": "uhg0lB0N9saaEtNh", "duration": 76, "reference": 0.6646401551122041}, {"attribute": "TsJj20qDdcW1mp3Y", "criteria": "VOIdO32xT3Y9VftA", "duration": 8, "reference": 0.0814454262330474}, {"attribute": "oAltLGzjvkhgglu2", "criteria": "mtlDys813739WagZ", "duration": 99, "reference": 0.09924363625867183}], "match_options": {"options": [{"name": "gIiY5d8IeQPuYcLn", "type": "Ge42GNlxOLqO3j9l"}, {"name": "wR2Up1a55rMjyh1z", "type": "EnFilYvoDafaLmyO"}, {"name": "PiWzMWpr2HZSwFmI", "type": "1M3fvSZTKbpk7e3N"}]}, "matchingRules": [{"attribute": "G95b6r79ELdGwiCb", "criteria": "kzvMgaG2qB0xTFXi", "reference": 0.6549031985036702}, {"attribute": "13LoiHldcmAssKsK", "criteria": "rKgF9lHhNBhu7iJY", "reference": 0.4574790084864162}, {"attribute": "vP7Y2MLOhXHQxRnm", "criteria": "IPawPx89Z5By5GZB", "reference": 0.6859656379062729}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 51, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'qFs6vRVBqQEGmDXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'kOE1pdb4Kus680EP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'oY68AYwWwzZWjMfQ' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 9}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'kdcw5FDNFqWPl8W9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '8XkuXVEaa41rJA6z' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "NfChWp547E2g4XjS", "count": 84, "mmrMax": 0.11026420998535202, "mmrMean": 0.6495077266853575, "mmrMin": 0.83883610805666, "mmrStdDev": 0.43512717560533987}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'OzywhNpuwmM2xWoO' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 57, "party_attributes": {"W2St0GqDzof8I2yg": {}, "nEeRzAqZfGi66DOA": {}, "OP52eIWPkraLzfPI": {}}, "party_id": "a2jIIbkH1mPpDNc4", "party_members": [{"extra_attributes": {"IXQgL1tHs1wst5Bh": {}, "3e9701gkRt4beDYN": {}, "GR00uOQZrInXal8l": {}}, "user_id": "g9jwNhsbOxkTrBKH"}, {"extra_attributes": {"IvyjSabmA6aUSFzn": {}, "5KnZ5XeXOrDyPkOk": {}, "Kfh4tTTzXBKwGrDC": {}}, "user_id": "kKTw0KLq7HaOfWwe"}, {"extra_attributes": {"aCWYWbT8g2cI1FQc": {}, "AP7YujeDRnExvm5j": {}, "yMJ0OsdxQeVVBuv1": {}}, "user_id": "NnUZXgWGMEbCIDxd"}], "ticket_created_at": 70, "ticket_id": "rHHxTaEaMNBVkmQJ"}, {"first_ticket_created_at": 27, "party_attributes": {"8yTn0PSik8Mm2qKh": {}, "Ry2VnYLocYI1RBsk": {}, "T0tyDaEF1cD3Zz9H": {}}, "party_id": "grof5i9IbvQV4uRn", "party_members": [{"extra_attributes": {"a2j373dNNI9sdK8q": {}, "rmpMd9ZoFitzeXfS": {}, "HZdQCYy79E1sJNow": {}}, "user_id": "4nqDhcoEZ9drhDEf"}, {"extra_attributes": {"OzdRYotAWKmrvrbh": {}, "r2Ll7mT324AbYAhT": {}, "fbyNe3ToKOijYVnF": {}}, "user_id": "JtChcVlEjahaharb"}, {"extra_attributes": {"1LgQGYr9mU6qNZrF": {}, "GnoxOB8imTsxVCHG": {}, "eHW0MnDVDiDdGe7b": {}}, "user_id": "rUD0r2loJeZjfOe5"}], "ticket_created_at": 100, "ticket_id": "3CXkZrZkmxL1uwMd"}, {"first_ticket_created_at": 43, "party_attributes": {"8USGz8vKJY58yMxv": {}, "TS03i2864um4KVEV": {}, "IBUgG2tjwTHBoYgX": {}}, "party_id": "L61MEBEQOZd5Eink", "party_members": [{"extra_attributes": {"c0wQQYdBk6Fc8FAn": {}, "9zp1EUmDPIKvObyN": {}, "9h42unyFkuWKHTXh": {}}, "user_id": "wX38hIDVAhiOMAya"}, {"extra_attributes": {"xTSriSNYLlH3zIdN": {}, "osLEJaYRonmQ2QUn": {}, "IRCXQfc5SPDlHkQw": {}}, "user_id": "bmYZZmFqSTyQlrq1"}, {"extra_attributes": {"ZWTjrzLRF6ZswYzC": {}, "GuZ1e9Ilmj9FEvT8": {}, "JY7CXuw4woRJy8fj": {}}, "user_id": "yqtCNPl6zQzAuT0f"}], "ticket_created_at": 26, "ticket_id": "ZFbUzPilx0UbKQTw"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '7MCxGOKr48pKSZB7' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 54}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'mWx0Rfl2M1bBq5Yy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'w9fvd5D1ERaxpONA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'aZBFWYKHfwp1Zc6y' \
    --matchID 'fbV7hnVWuhl3DetJ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["eIYtgIcYZPYOJGwM", "LxCknDrVCEbHyNpx", "nGmTGjutwhbYPNc7"], "party_id": "HD8cXMyzMCAAGsrg", "user_id": "H1ZsAlsQoF6nmWzk"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '2mF5kUkOZHMkKWmU' \
    --matchID 'Uy4KXrAcyBa7Nzuf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'xRcWltpBldaw79Pz' \
    --matchID 'Kv1wsPsTyqb37NQB' \
    --namespace $AB_NAMESPACE \
    --userID 'TBXYB3PCQhTWQv6Q' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '3S9DGseSZ0TLpL0q' \
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
    --channelName 'vHfg1tbzO2IP3cfR' \
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