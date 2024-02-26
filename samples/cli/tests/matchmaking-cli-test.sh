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
    --limit '7' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "B7CRohu9OoUuO0dM", "description": "aq9agdy288KTgKDo", "find_match_timeout_seconds": 92, "game_mode": "i0dbqGbuGqGl6XJf", "joinable": false, "max_delay_ms": 94, "region_expansion_range_ms": 76, "region_expansion_rate_ms": 100, "region_latency_initial_range_ms": 41, "region_latency_max_ms": 20, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 6, "min": 0, "name": "CcHXq1T8QxN6qRyj"}, {"max": 50, "min": 69, "name": "oJBsxAJfwuhI2beO"}, {"max": 2, "min": 44, "name": "RuMOT5VlvBcvEdx4"}], [{"max": 13, "min": 37, "name": "vamclFAhefPvd45D"}, {"max": 56, "min": 100, "name": "HtvWTbF3DKO7q6Hs"}, {"max": 9, "min": 83, "name": "nwuwfrBhESlqcVIy"}], [{"max": 80, "min": 99, "name": "s0kWrGxsrOOPrklR"}, {"max": 27, "min": 34, "name": "oqKSsq8YzouxuEZw"}, {"max": 14, "min": 80, "name": "vCYwad8m6a19fIVQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 62}, "max_number": 57, "min_number": 7, "player_max_number": 11, "player_min_number": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 83, "min": 94, "name": "J4tYS1Fa3hSCc7OM"}, {"max": 59, "min": 89, "name": "DTW3KyAI4C8KCUQ9"}, {"max": 57, "min": 24, "name": "4zKsvDl8iwCpnVKD"}], [{"max": 70, "min": 13, "name": "6YHvAPNxixRWA2oH"}, {"max": 29, "min": 36, "name": "H3CNkUkKu7Ulvb5k"}, {"max": 51, "min": 100, "name": "pTiVrDg39jbPfniZ"}], [{"max": 2, "min": 80, "name": "xaOFnkz3Reect2LY"}, {"max": 71, "min": 50, "name": "b1In1VUeyIX7LSQk"}, {"max": 16, "min": 98, "name": "BroOaV3ZxGBn4LME"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 1}, "duration": 3, "max_number": 93, "min_number": 43, "player_max_number": 13, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 73, "min": 69, "name": "ppdvVH7D6i9Lh68i"}, {"max": 81, "min": 40, "name": "Y78InjLT2jugAuWe"}, {"max": 65, "min": 82, "name": "P7KlfF3GB7kmgctU"}], [{"max": 47, "min": 84, "name": "sHDvWhwvaPZJ6Eya"}, {"max": 20, "min": 62, "name": "3icwv5ct58jUZfvq"}, {"max": 95, "min": 20, "name": "2jgA3QXDXmazirpD"}], [{"max": 18, "min": 21, "name": "88IumysWTOfJhVG5"}, {"max": 10, "min": 99, "name": "l2s8K8KUYI9BwWKt"}, {"max": 93, "min": 88, "name": "Raq4jUqErLIHXRQU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 66}, "duration": 18, "max_number": 44, "min_number": 68, "player_max_number": 57, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 57, "min": 81, "name": "FwkEndCBFMuSKuur"}, {"max": 73, "min": 2, "name": "tDK5MFk9L5wtQJjD"}, {"max": 5, "min": 22, "name": "7PO6Cm00NWFL3HJS"}], [{"max": 86, "min": 67, "name": "araGQmDlMzvNAz0Q"}, {"max": 83, "min": 30, "name": "BVQmAj9dzqtT4YKv"}, {"max": 85, "min": 23, "name": "RjAp9wdzS8STtxhC"}], [{"max": 25, "min": 3, "name": "6I4XFIMHqQwBT48Q"}, {"max": 79, "min": 88, "name": "ENGNmzy6q3tZMAGF"}, {"max": 46, "min": 20, "name": "4qlNXwlYHD2Vauu9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 28}, "duration": 21, "max_number": 47, "min_number": 82, "player_max_number": 84, "player_min_number": 52}], "batch_size": 33, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 9, "flex_flat_step_range": 27, "flex_immunity_count": 98, "flex_range_max": 89, "flex_rate_ms": 87, "flex_step_max": 60, "force_authority_match": false, "initial_step_range": 92, "mmr_max": 32, "mmr_mean": 55, "mmr_min": 40, "mmr_std_dev": 79, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "ECOqT0gAvL9dvSek", "criteria": "8Znc1Zi5nsJMfSt3", "duration": 19, "reference": 0.9071450850250043}, {"attribute": "zqu1gJ1LZzKwsNGS", "criteria": "mwPnGO4wkrQq7HGT", "duration": 89, "reference": 0.07766699737084914}, {"attribute": "qbGUBi6vzNLP7u7s", "criteria": "BJkcaTyx0n2LiGgo", "duration": 73, "reference": 0.6280427034620542}], "match_options": {"options": [{"name": "SuFB1Iybd8cchGnI", "type": "hBLMbcs43mnBmCde"}, {"name": "sLkh4v0bOv0SYYRJ", "type": "YEOVOL8GNpIOiAxQ"}, {"name": "6nWM8qGSNbqn8wxv", "type": "gvd82zRPjssJzlx2"}]}, "matching_rule": [{"attribute": "QyLxPMiPXm1nvSsS", "criteria": "VWWIzMiyCMP23IOM", "reference": 0.4634141065921503}, {"attribute": "pRlrytdb9U3CbJMG", "criteria": "DGb55RyJNuhb068k", "reference": 0.02071390203686163}, {"attribute": "Cb43LNvaJmRAkkrw", "criteria": "NPO96bFhNnpmIVYU", "reference": 0.8558434005175796}], "rebalance_enable": false, "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "random", "threshold": 91, "ticket_queue": "oldestTicketAge"}, {"search_result": "distance", "threshold": 16, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 50, "ticket_queue": "distance"}], "sub_game_modes": {"eQsnq8NJImsuToHd": {"alliance": {"combination": {"alliances": [[{"max": 94, "min": 0, "name": "DIYdCz9EYdmsTJNM"}, {"max": 25, "min": 32, "name": "guJyOoBFL1JLbN6R"}, {"max": 97, "min": 20, "name": "8SYMGLFTqYFkNBWa"}], [{"max": 55, "min": 26, "name": "2jt443sVuyXk1Bwn"}, {"max": 25, "min": 6, "name": "ZF66bKP1Y7BrnXbs"}, {"max": 10, "min": 73, "name": "QZLoKiYnUk1U3AkM"}], [{"max": 97, "min": 90, "name": "011pSDVs9UY0bSQu"}, {"max": 74, "min": 59, "name": "6DurVmddrXHV5qLv"}, {"max": 24, "min": 31, "name": "4Vtv9jIEYCZS30hP"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 41}, "max_number": 58, "min_number": 4, "player_max_number": 40, "player_min_number": 88}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 1, "min": 43, "name": "aSESiw2cvlQwASmD"}, {"max": 25, "min": 66, "name": "qo111Y7NYC19AuUj"}, {"max": 92, "min": 93, "name": "JyQEwOEKk0Xq1DK3"}], [{"max": 24, "min": 26, "name": "Q9xIk607cqarNHkn"}, {"max": 98, "min": 1, "name": "VvUWSsAD4JHaUwZg"}, {"max": 59, "min": 7, "name": "TPYQvyMuKIhAlgYu"}], [{"max": 69, "min": 44, "name": "dbInDnFZPflFsq0D"}, {"max": 73, "min": 18, "name": "ibhXViNXgZ1o8Pu1"}, {"max": 71, "min": 3, "name": "CMGxKDGiqD2vexZO"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 77}, "duration": 29, "max_number": 43, "min_number": 34, "player_max_number": 90, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 84, "min": 87, "name": "u5jHubQwU5C9mx09"}, {"max": 43, "min": 0, "name": "QNaCEK5ukQk5XWri"}, {"max": 13, "min": 92, "name": "pT0yWNpDTL2Giwr2"}], [{"max": 80, "min": 48, "name": "jl8U50BcZ8Ns2NBQ"}, {"max": 21, "min": 94, "name": "N1JDoBqzlQLhh0FI"}, {"max": 41, "min": 86, "name": "1Kc93OGNgqxz3mil"}], [{"max": 42, "min": 66, "name": "ZI28N6UXGlXaj9g5"}, {"max": 95, "min": 19, "name": "nJ18uwpdiXvnumb3"}, {"max": 73, "min": 75, "name": "C8JJSLC5vmUbVF1p"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 24}, "duration": 95, "max_number": 18, "min_number": 96, "player_max_number": 89, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 82, "min": 43, "name": "SyopJXsjcL9cU3ka"}, {"max": 38, "min": 77, "name": "YZttkHCfPzPqHz7y"}, {"max": 66, "min": 3, "name": "dZBRKo31ycTbXe1r"}], [{"max": 12, "min": 28, "name": "w0HUB6Zqbf7gOvl5"}, {"max": 92, "min": 28, "name": "3veoDN7hCIHAbOBE"}, {"max": 24, "min": 53, "name": "hI0vASrsMJVhUcmd"}], [{"max": 67, "min": 81, "name": "CMKMBzHYhU5aipM9"}, {"max": 71, "min": 71, "name": "T4cU0SFDJj7SytqK"}, {"max": 10, "min": 38, "name": "7mi8lpORYdzhiVNE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 72}, "duration": 91, "max_number": 20, "min_number": 33, "player_max_number": 68, "player_min_number": 33}], "name": "hjS4RzyAelqMTlgx"}, "rUBfQuXAfVvPlgjx": {"alliance": {"combination": {"alliances": [[{"max": 29, "min": 97, "name": "e7N82SSaCJfjqtn6"}, {"max": 60, "min": 15, "name": "g6DreT42VnEoLM8y"}, {"max": 65, "min": 45, "name": "jKGUJVCn0p9fjrjh"}], [{"max": 32, "min": 60, "name": "WhJBfmU1vslVGDV1"}, {"max": 27, "min": 60, "name": "QjewqdFslLZQKDPz"}, {"max": 21, "min": 39, "name": "zEKzhKp6KKPF0lao"}], [{"max": 54, "min": 9, "name": "JvwAmjIQgylqbAAF"}, {"max": 25, "min": 20, "name": "UqVmhtoxiGZxE8SC"}, {"max": 67, "min": 70, "name": "DkrzHO1JribdwqHi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 19}, "max_number": 45, "min_number": 44, "player_max_number": 14, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 12, "min": 14, "name": "AllSQGdQDzpFZ6LO"}, {"max": 5, "min": 90, "name": "7fIXPnsOWGIrVFUn"}, {"max": 97, "min": 60, "name": "SnUdTg0Hp05o8MZG"}], [{"max": 33, "min": 52, "name": "Y8iwW6lc5QlaKhOY"}, {"max": 11, "min": 11, "name": "t2fq6xYg5uT9TSdQ"}, {"max": 8, "min": 75, "name": "4W5Lo5d0s7VGmKOO"}], [{"max": 21, "min": 73, "name": "b8K0qUepBw2xbAgO"}, {"max": 69, "min": 43, "name": "E5uLVBneQ0lkcUbp"}, {"max": 45, "min": 21, "name": "F6xhN9dT346Ojaii"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 32}, "duration": 54, "max_number": 41, "min_number": 58, "player_max_number": 31, "player_min_number": 48}, {"combination": {"alliances": [[{"max": 10, "min": 4, "name": "DsmH7WeLCwy11tbb"}, {"max": 99, "min": 36, "name": "f6ECa02v3KGc0jIN"}, {"max": 30, "min": 57, "name": "VORJSJyzdrVEYc6w"}], [{"max": 8, "min": 67, "name": "XbtBCgfIlNqolQGq"}, {"max": 15, "min": 11, "name": "BIHmkuaKk5HJ4QhD"}, {"max": 94, "min": 49, "name": "YS3gdKegWMwc1Kve"}], [{"max": 72, "min": 7, "name": "JoOGJ0bBeYuYqlli"}, {"max": 8, "min": 17, "name": "u8bDS3TYwxFBcbJj"}, {"max": 51, "min": 50, "name": "XgzWhHJAucrIeqyG"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 25}, "duration": 52, "max_number": 70, "min_number": 38, "player_max_number": 82, "player_min_number": 35}, {"combination": {"alliances": [[{"max": 5, "min": 82, "name": "3vhSxdyl8lpJLV3Z"}, {"max": 47, "min": 59, "name": "SrPBQ8rbgsCbcKDT"}, {"max": 14, "min": 66, "name": "h7joWg21NhJUbJ1z"}], [{"max": 35, "min": 63, "name": "RSCkYwd8QNCpSScV"}, {"max": 34, "min": 93, "name": "ch6aUZiDPGPFk1Y8"}, {"max": 36, "min": 67, "name": "h2HLF6wTt77bVI6I"}], [{"max": 15, "min": 6, "name": "xRpxkAEADMCOU0sm"}, {"max": 88, "min": 86, "name": "oo9mRIcAilROqBHj"}, {"max": 80, "min": 99, "name": "ZIjZpzgua5jXWpTI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 44}, "duration": 27, "max_number": 68, "min_number": 61, "player_max_number": 10, "player_min_number": 59}], "name": "JKXjx1YkktVrncMn"}, "dqWqPAeNjoykPYpC": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 47, "name": "N1fXogEruFNmwBaw"}, {"max": 85, "min": 63, "name": "Wi7QNSM9OQMb55QI"}, {"max": 84, "min": 85, "name": "y5quGphLVCAxqjvY"}], [{"max": 90, "min": 1, "name": "RIjnLXrvfCZJ2Nn5"}, {"max": 92, "min": 70, "name": "zZlqR3RXO6QMYyqv"}, {"max": 98, "min": 60, "name": "ZWNoncCx9SmuIczY"}], [{"max": 60, "min": 1, "name": "DkZhn1RuQ5N2I9Eh"}, {"max": 89, "min": 51, "name": "eWZMi0xtJVPP6GN4"}, {"max": 92, "min": 80, "name": "Hsd5Jcf3s8H9kwPV"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 97}, "max_number": 22, "min_number": 81, "player_max_number": 13, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 13, "name": "9Id3F3ak3f2Xmo0H"}, {"max": 66, "min": 36, "name": "YoNwb2Yd4lPGniib"}, {"max": 58, "min": 7, "name": "np825jMnZ7Kua0bC"}], [{"max": 62, "min": 49, "name": "tpKdLDOCxtzZ1BGZ"}, {"max": 83, "min": 80, "name": "PWFp0J6An3N8gHNh"}, {"max": 23, "min": 69, "name": "wLWBUbWB5jbfZrmS"}], [{"max": 46, "min": 0, "name": "mSTacXU75GA2RCEu"}, {"max": 38, "min": 73, "name": "5tZb6or5eMYbnraM"}, {"max": 54, "min": 86, "name": "xDchZFblYLBZRHDO"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 79}, "duration": 42, "max_number": 42, "min_number": 19, "player_max_number": 2, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 79, "min": 100, "name": "gl5xMh5kExC2oxBw"}, {"max": 71, "min": 100, "name": "8uJM5J0FXzMCllOl"}, {"max": 75, "min": 5, "name": "JaHHYr0T6o4RJtvW"}], [{"max": 22, "min": 25, "name": "9oREpkR6aYSkJS8p"}, {"max": 28, "min": 23, "name": "GqD7NVmW03F4hGmn"}, {"max": 62, "min": 7, "name": "FjkVU5p2QN0QwHCe"}], [{"max": 35, "min": 53, "name": "kXLJrViPQoIfEOZI"}, {"max": 47, "min": 6, "name": "SGfMtvbir0mnwEwC"}, {"max": 70, "min": 33, "name": "QzBCjw8aVFKoPn2x"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 21}, "duration": 34, "max_number": 44, "min_number": 23, "player_max_number": 59, "player_min_number": 38}, {"combination": {"alliances": [[{"max": 51, "min": 52, "name": "tPK2mt873LAdrPpX"}, {"max": 5, "min": 86, "name": "LXqhy9mKnAu7UgBM"}, {"max": 9, "min": 4, "name": "T34w6TgAgFS3wskx"}], [{"max": 35, "min": 9, "name": "ZjjrgACPzsf38grh"}, {"max": 45, "min": 25, "name": "rVJavJEXjvm5s50E"}, {"max": 52, "min": 48, "name": "tZ4hZG1oTvbZz0Fm"}], [{"max": 32, "min": 28, "name": "SpFpkocytr8RGPD1"}, {"max": 0, "min": 73, "name": "XLjxAH2swZ0yGsWa"}, {"max": 86, "min": 19, "name": "PkJgyAUOSJf9bfO2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 76}, "duration": 36, "max_number": 72, "min_number": 12, "player_max_number": 79, "player_min_number": 21}], "name": "ewEG6HP9NCtlSHZU"}}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 29}, {"selection": "oldest", "threshold": 61}, {"selection": "oldest", "threshold": 70}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 90, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'B9QXjRwE2gWq8lvV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '9tFd3ocCapW1ll6L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "h9zNrzXD5Vo7SNdA", "players": [{"results": [{"attribute": "utjTBg1UmHnh3wd3", "value": 0.3711653987137792}, {"attribute": "RcBFjNXWkDUZHKoO", "value": 0.33967882834144736}, {"attribute": "pDwMbG0WMUJq6XJU", "value": 0.1423420412634102}], "user_id": "6pRixHC9v2rZjGJs"}, {"results": [{"attribute": "Iwz7MrR0j30KcAoL", "value": 0.7633503642283989}, {"attribute": "b1jDTzCn9CfVHInN", "value": 0.5990104068848005}, {"attribute": "71kVk1Z8y9sJr4i7", "value": 0.8937835752379725}], "user_id": "6LWOUqEB7Hj8zBm5"}, {"results": [{"attribute": "yNleTGcBLWRJBNOC", "value": 0.9938463077768298}, {"attribute": "Y61iZ20eAQTKWVn7", "value": 0.06683905883205066}, {"attribute": "waE3L89h5fxhHvgF", "value": 0.5449822839193068}], "user_id": "Vue0VouXoVcJeBEC"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kn6hIReKSByggEls"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "Zf6xtplh0XLO4eRj", "client_version": "WQIXIfGTfiMnDm1p", "deployment": "l9IQCDHgzIvMxDZF", "error_code": 72, "error_message": "EMWF79KdROWof6st", "game_mode": "8QkMaSKi8IoFeI0y", "is_mock": "W9kdhyLz1JrEje93", "joinable": true, "match_id": "LIUBDKa3j8yL5Gjl", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 89, "party_attributes": {"NijeKsH17pAcJne7": {}, "02Gs0pyuogaJSuxS": {}, "lFRZCK3dyG2PR8S5": {}}, "party_id": "6bHwsOuKck99p9Ka", "party_members": [{"extra_attributes": {"8S8dTxaBLRo3jZr5": {}, "BY8haV2cl2DrOvUv": {}, "G1oYmErXDWotJIdy": {}}, "user_id": "ddVAaS6aTbCkZK1k"}, {"extra_attributes": {"4U3h8kUsSuMzNkcF": {}, "mVk2vbV4BDVuXhkr": {}, "ceBXQjEHJZgk2NM2": {}}, "user_id": "LPo3vjQ60hBgoELs"}, {"extra_attributes": {"GCdSBAmvFgVxWP9e": {}, "FDNGRHMajf57z8ig": {}, "sb5UtbT0Z9fkn5jq": {}}, "user_id": "QeqGDSPcrLI5a4jE"}], "ticket_created_at": 41, "ticket_id": "ffbiyM55dim26qHc"}, {"first_ticket_created_at": 39, "party_attributes": {"Aro0YpvzLGl1cQtz": {}, "iidlsxWB2SoYpTmZ": {}, "Xt0d0aySt6WfRrts": {}}, "party_id": "mMS7J68hXiraBU96", "party_members": [{"extra_attributes": {"aZeJQlfoHzcz5Yyw": {}, "T3hZgAk063MkOryd": {}, "PeHnmZYR9aNFYC7H": {}}, "user_id": "0XFYdiJkmoT3PWNU"}, {"extra_attributes": {"pZkll8gQs50EgaoW": {}, "xQixCVzTrNG7uDSg": {}, "RcSzcDefWzRXPurB": {}}, "user_id": "kRuEBIjQSx5qxSpv"}, {"extra_attributes": {"IzM7rlJJaAKvvoac": {}, "1jHLpiccG46fcRdz": {}, "t8mbIE7bPNRCi23x": {}}, "user_id": "qAzU76f7jUkjyvVB"}], "ticket_created_at": 71, "ticket_id": "7QXb0pvflEhiH7VG"}, {"first_ticket_created_at": 37, "party_attributes": {"JyTNUwhOQ6v9QywU": {}, "9NbmUPdEC2ha0vBX": {}, "AMNPc9Ea35kTVyQo": {}}, "party_id": "6ocoO9EDro1uQcgS", "party_members": [{"extra_attributes": {"dSRHhcUr8ajiwzuc": {}, "kof4YQgwApfLMvA1": {}, "fgwgKwllWZE6JPwj": {}}, "user_id": "DzBiJgPteT9IaX0i"}, {"extra_attributes": {"jRKcuvWesE7mER7d": {}, "0c2gAVtsFL3GHleE": {}, "35SGScoOFPHtrFr6": {}}, "user_id": "F1AjToFEtYrRyuGp"}, {"extra_attributes": {"UiIznXGVEAYqT0sK": {}, "OwHpZGNI8PakElj8": {}, "YcAVt8O4aYDO4noP": {}}, "user_id": "8g6epArm8uDrJvHK"}], "ticket_created_at": 78, "ticket_id": "Ybjgk8o0vP6kTyN3"}]}, {"matching_parties": [{"first_ticket_created_at": 81, "party_attributes": {"8UPAo4nGExBdq263": {}, "CJbdb2n0EfoCEG75": {}, "tx0lsKNqGS3NAQaa": {}}, "party_id": "PdWzJblEz6QScfZf", "party_members": [{"extra_attributes": {"LNKMvq8aED1cRlU7": {}, "jlRODCHtHfjdFyTa": {}, "oBqqAqt2MeJEJtWH": {}}, "user_id": "sVwyfsL713Nzs1XX"}, {"extra_attributes": {"YFgMJbI4px4mo9Vg": {}, "XziVsV81dRqDDt87": {}, "LOF5RSTyKUPWGmVn": {}}, "user_id": "EU0OS6E5GLssLqPS"}, {"extra_attributes": {"A6G2CO8wVROi9k7F": {}, "GeGWBV6idLzLgE1J": {}, "bm6ikRxylCOiLZ1p": {}}, "user_id": "qaYJ6KG4s1RQK8JR"}], "ticket_created_at": 93, "ticket_id": "NSrbX8Ge7vN6YRnv"}, {"first_ticket_created_at": 72, "party_attributes": {"2fbeNWhJFQc1ytAu": {}, "lPnY9D5NrKU3o38R": {}, "H3Iyfg4jEUwQZIul": {}}, "party_id": "9T3j6yVmERZOJShd", "party_members": [{"extra_attributes": {"QEFYtDcZ0VTu6R7I": {}, "0v23v3FJW27GggfS": {}, "Px1qF2Zkru8AkWv0": {}}, "user_id": "gF4sxbC8OBUBXo4N"}, {"extra_attributes": {"qR4pIy2p7BY1t7F1": {}, "ZQh6ibvpByx5Au3v": {}, "gMBysWwbgcBJ8Nhy": {}}, "user_id": "7HubiAKximEh5IYC"}, {"extra_attributes": {"rlQ5caXwj4Gpfyqf": {}, "rIcB8nu5EZydLdJk": {}, "0R3WSfIbofjgVcil": {}}, "user_id": "g3BWfHVBtHd3Utef"}], "ticket_created_at": 60, "ticket_id": "WbQqZhWrr2jaj6Zw"}, {"first_ticket_created_at": 51, "party_attributes": {"aL2BhSUe1qDPD5ya": {}, "6GH2xPoLwgdZagdN": {}, "R1CeoBbAix1RsGSF": {}}, "party_id": "FtWZjZL7WPjtpCCS", "party_members": [{"extra_attributes": {"ubW5UVMDbl2eDbAr": {}, "KJeaR1cOjUe0srWd": {}, "n2O84N9asPZ9YinP": {}}, "user_id": "LBPhxeRCWUJ2OHPO"}, {"extra_attributes": {"gpL2Byt3OZ4kTs7f": {}, "xW7qFmoEJGPDBomV": {}, "DrQcSHlxAh4SI6Tf": {}}, "user_id": "VEZclhzAA6Dvyhi1"}, {"extra_attributes": {"32ihHtl3vXYkEoE3": {}, "Sn1amEPz52ls1Pct": {}, "vPMWVYBM8mFxXs4i": {}}, "user_id": "1Op7KKdl9s2FgZpm"}], "ticket_created_at": 14, "ticket_id": "UKWrehixZUAoWVAX"}]}, {"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"LOht26rb8WKaOPqk": {}, "5IAcv1dinkBNAMG7": {}, "9A9wvnDINg3BdKP1": {}}, "party_id": "SMtYzLHtB9tx6F6i", "party_members": [{"extra_attributes": {"Miw6c0SJXZPyvG1R": {}, "2fsrDsUTwdKfzjxr": {}, "3wF2pa509RhNUWNQ": {}}, "user_id": "6qfMtd69ITi5i098"}, {"extra_attributes": {"XYkH7j8cOTGDY7wO": {}, "GYAEWxG8GciJXRac": {}, "qAm6R3V37IL3bJ7Y": {}}, "user_id": "uCcuEgc6QHc82wiq"}, {"extra_attributes": {"K6x1CXr0HXeufkfq": {}, "U6hxS5j2RhgazwpP": {}, "kkAuDAAcDdmSzZY7": {}}, "user_id": "zPTrkfL8V20WuLrG"}], "ticket_created_at": 27, "ticket_id": "ravACCoYRvBOgfXm"}, {"first_ticket_created_at": 7, "party_attributes": {"AbLtzxHhMIRlRihD": {}, "R4Nhhubyj5VIs1bS": {}, "0T6hPDH54BgoQ1Y7": {}}, "party_id": "bDKec4NARe4ILClq", "party_members": [{"extra_attributes": {"emyaK534iTBgYEBR": {}, "2w8jOpEfiDYZ7qOS": {}, "6DhhhhQmSPgYBJxR": {}}, "user_id": "J6m0REo1yvyOw6b1"}, {"extra_attributes": {"N4RAib1TBGRJeJ18": {}, "ZbG2UMQWEBmWG0nx": {}, "xRs8c9uc25XDK7e2": {}}, "user_id": "fIqpCuW7ZbGcCpAV"}, {"extra_attributes": {"IYgyxvhGZRf3DK4p": {}, "jT2V5zOACJh9WdJQ": {}, "UO2sGsmhyfMFKQXf": {}}, "user_id": "4sYlWbmMXJ8Fmc2H"}], "ticket_created_at": 27, "ticket_id": "4Cml2QyLX20aIfmH"}, {"first_ticket_created_at": 52, "party_attributes": {"cAQOxsb0hfU4YsxP": {}, "AdX6LACxWzyQXZoF": {}, "2oSaa9PZuvROIBUN": {}}, "party_id": "StEczwmMWdHawLwb", "party_members": [{"extra_attributes": {"PoI091jLk3PeThFD": {}, "yPQXlI8udyWOVWRE": {}, "B9MTIyqeJmSBHYsy": {}}, "user_id": "kW9gvaMOGDcG5Cbu"}, {"extra_attributes": {"vsfvtTCbGMQ88yco": {}, "GIoVOw6huFOhRKZe": {}, "Cawzorku4ybu7FKa": {}}, "user_id": "xEKSTTk4W66wxtdD"}, {"extra_attributes": {"9K4sMWtB79kzcdCE": {}, "gOsx4RgDYCHpB8bn": {}, "sa2NOSnvec1Zzyor": {}}, "user_id": "vAgCUcgKGoqiSXzs"}], "ticket_created_at": 4, "ticket_id": "U6plb9Is86QkyPfs"}]}], "namespace": "lFxdEWqhtzDDqbqx", "party_attributes": {"PGk7gfjAz8hYBySQ": {}, "OrFiSf9oSIGUReWG": {}, "WEacVNkNQ14eakSl": {}}, "party_id": "4OZ9FbtJbYqZYC06", "queued_at": 10, "region": "8m3wYuBJ6vcWvmYR", "server_name": "rD1Sbt4JiczM84bU", "status": "qrxQidY85wsZGU8d", "ticket_id": "253p7enrxuLCYhX5", "ticket_ids": ["KAgKnDVlnBuQRQnt", "SPQ2R5gqYn6iZZf8", "cjgXDVD7cfLnJSWp"], "updated_at": "1974-12-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "YekHyfSo7ffDoWGk"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'tNcvp7imQ8MV2G43' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 50, "userID": "8OJLojxQ0qNkv7yW", "weight": 0.34632358913706573}' \
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
    --matchIDs 'qhfIjJbIqQPB8BFA' \
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
    --strategy 'ZnkRl9lF6qr6cuF5' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'z8zEM5oRp7e0W31O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'lBSs9MsdDS3TWc3R' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "pQzLQMic1fBPrKKF", "description": "JRwsuoh47LFS6WRm", "findMatchTimeoutSeconds": 2, "joinable": false, "max_delay_ms": 76, "region_expansion_range_ms": 32, "region_expansion_rate_ms": 99, "region_latency_initial_range_ms": 26, "region_latency_max_ms": 26, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 14, "name": "8v3IL1gnLKKYg8ZO"}, {"max": 55, "min": 47, "name": "ngGEcZ1qu4VLfPMb"}, {"max": 36, "min": 100, "name": "itrjKPvQ9aeyB50R"}], [{"max": 8, "min": 24, "name": "3uCSTIas3amnr3te"}, {"max": 47, "min": 55, "name": "7SBJ88ErbjksKnWF"}, {"max": 98, "min": 0, "name": "Judc66O8TvZX7A3K"}], [{"max": 79, "min": 6, "name": "n8xdKxUCWMVHkrYv"}, {"max": 27, "min": 14, "name": "KDfVQ9qwivln5B6J"}, {"max": 34, "min": 23, "name": "rWuqiEkLGSZpCOBN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 69}, "maxNumber": 84, "minNumber": 47, "playerMaxNumber": 87, "playerMinNumber": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 11, "name": "7uYEQtBGeOepdLqa"}, {"max": 34, "min": 97, "name": "vHhgUjryLrxjZ9ed"}, {"max": 96, "min": 5, "name": "CJOBZFOAiQ2APhIr"}], [{"max": 26, "min": 26, "name": "UwWzqb30a2OJwEHS"}, {"max": 20, "min": 18, "name": "7pZfoPIXLt8gjG62"}, {"max": 22, "min": 56, "name": "JpoNvb6wnUN2GU2n"}], [{"max": 67, "min": 46, "name": "LDSqes56K5ZGJKAS"}, {"max": 32, "min": 38, "name": "4ZhKUfA3MxWQfAhr"}, {"max": 13, "min": 96, "name": "2VEOo76TlEdY1UtY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 19}, "duration": 87, "max_number": 19, "min_number": 78, "player_max_number": 60, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 55, "min": 95, "name": "lKVgFBZN3ROkcrHy"}, {"max": 83, "min": 43, "name": "RqiSbjCpx0QxS3MO"}, {"max": 69, "min": 62, "name": "8clyFfa4eEX0Pqb0"}], [{"max": 84, "min": 48, "name": "8sX1HDgh4tAzmlnJ"}, {"max": 23, "min": 34, "name": "jTH5JzSiHjckY0qD"}, {"max": 52, "min": 33, "name": "FgAjDiIABHck8bem"}], [{"max": 31, "min": 30, "name": "QimmFWCSgaOZ1YUY"}, {"max": 100, "min": 95, "name": "aR7aHJTNaz8mQ3Nj"}, {"max": 74, "min": 34, "name": "LOhw012cH7VmtUUn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 69}, "duration": 54, "max_number": 30, "min_number": 29, "player_max_number": 3, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 18, "min": 82, "name": "DXsF5fSYEln9SM53"}, {"max": 11, "min": 63, "name": "lX5tGqjvGV97slH0"}, {"max": 24, "min": 67, "name": "zh3Rktu3Hd9PfYEr"}], [{"max": 21, "min": 55, "name": "F6FTfpbgYln0HKaY"}, {"max": 71, "min": 53, "name": "fySEVZmC2JrAT0aD"}, {"max": 10, "min": 61, "name": "U3KzqYnDXRcI5BKO"}], [{"max": 45, "min": 96, "name": "QmbMkIb9wnOC1kO0"}, {"max": 96, "min": 74, "name": "JkgJ4KFLS6inuB2q"}, {"max": 37, "min": 41, "name": "VfmfJaXao1xQK2Te"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 41}, "duration": 1, "max_number": 10, "min_number": 70, "player_max_number": 28, "player_min_number": 90}], "batch_size": 62, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 68, "flex_flat_step_range": 69, "flex_immunity_count": 92, "flex_range_max": 36, "flex_rate_ms": 56, "flex_step_max": 64, "force_authority_match": true, "initial_step_range": 6, "mmr_max": 4, "mmr_mean": 61, "mmr_min": 19, "mmr_std_dev": 52, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "x5mOaHQXVFreRcKD", "criteria": "yOctInQhtWNHgDpD", "duration": 31, "reference": 0.6006796345262341}, {"attribute": "wG7VFtK13NxTyGdo", "criteria": "zhuFDWkwpgMGyeqM", "duration": 25, "reference": 0.7320882055192581}, {"attribute": "eGANoGlSC2ZHNnRM", "criteria": "rpHEhazj6mTmPxU4", "duration": 81, "reference": 0.11390798918069578}], "match_options": {"options": [{"name": "LnCKF5VGy9LVVtFl", "type": "Jw26oK3NlSMXAmp9"}, {"name": "lYvCsRsMoCzkZEgy", "type": "7g2MaDiGfYFVVRdY"}, {"name": "jvHUuTrR7FWNYpyJ", "type": "9FfftnZKAXYImV3o"}]}, "matchingRules": [{"attribute": "z8FNNIQgkddHVKhc", "criteria": "Amnh2cy3oTQ3Hfhm", "reference": 0.6240783765579062}, {"attribute": "7h9ipXuZBjPlFiEn", "criteria": "tg8OlpYu2YPcG7pp", "reference": 0.3490842161326515}, {"attribute": "mowfKybwRZSpqKQy", "criteria": "CNXdexMHjbvV4Bny", "reference": 0.1611384868091159}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "distance", "threshold": 99, "ticket_queue": "none"}, {"search_result": "random", "threshold": 53, "ticket_queue": "random"}, {"search_result": "none", "threshold": 96, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "random", "threshold": 55}, {"selection": "pivot", "threshold": 43}, {"selection": "oldest", "threshold": 86}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 76, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'kZeWceXb9fwFPW1V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'MSYBBSSOgGChHVst' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Skm2Eu9p5SBgWTwI' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 54}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'KEIiA2hLPJva3CaV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'J1ygvgDqk1GpKNRY' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "g9oicoOQWKtzBLFZ", "count": 17, "mmrMax": 0.4789254534585762, "mmrMean": 0.3361702578956174, "mmrMin": 0.12553834516368945, "mmrStdDev": 0.6132089049651386}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'ca87gsB2N8HEQ0Z9' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 54, "party_attributes": {"evzXvWJzxCGLSn1u": {}, "68JaN5EJgLsK0fyG": {}, "B8Hs3ST4nWuULLsK": {}}, "party_id": "LplWkEDSlLPqBb7R", "party_members": [{"extra_attributes": {"M5KpkSd7y4OAAZTB": {}, "XPmBD0KuZYnrJInr": {}, "Gu0UZqo4yGVj3MTt": {}}, "user_id": "oZhyKNmIaMGOQecn"}, {"extra_attributes": {"Qr2ZEKEHJuRhipGm": {}, "VMWUnV5KygigU9qw": {}, "8fMaURfpezOYOwzC": {}}, "user_id": "O8q1TFvPkYbgmeXp"}, {"extra_attributes": {"VPb8AWdE0v7pQEIw": {}, "vl8ZKavAhw04iM9u": {}, "j3xlGz9G22V64ADd": {}}, "user_id": "mEsFoIuY2WdcAOMU"}], "ticket_created_at": 50, "ticket_id": "Hlevihkm9TFwcZdR"}, {"first_ticket_created_at": 29, "party_attributes": {"9ENA1mug4GPoCKSw": {}, "SuGSLaOBVnmW7MAC": {}, "zI5Fyhrkk7O6amTE": {}}, "party_id": "S5f41bjPSZSLx7Go", "party_members": [{"extra_attributes": {"6Utkeaq8FaIoJ3Yc": {}, "IlhiVqQ633L8YTW2": {}, "O06HcR7azlwnOuFW": {}}, "user_id": "HaNMUZkEETZL5cTC"}, {"extra_attributes": {"PXGO1hy0x4co7yN9": {}, "2BT9gf4TpFuJBgK0": {}, "j3NuGDfBHdjHI4yN": {}}, "user_id": "pAFxD0l7FwAlPRMU"}, {"extra_attributes": {"YvidRD7IU6EWj2p2": {}, "5Vm7buOOSWLcJHJU": {}, "muB3wehjrFp6vzvV": {}}, "user_id": "ByluQO2Mua18l1BX"}], "ticket_created_at": 86, "ticket_id": "fRcZAH6TV0ekRBWq"}, {"first_ticket_created_at": 24, "party_attributes": {"rfkLVjKsEA8y7cWx": {}, "gPYFY2B53p8TBq52": {}, "TTk81tDRy24jw93h": {}}, "party_id": "CKAhveEuCOZofMaO", "party_members": [{"extra_attributes": {"JsfF668TJBUgYmvD": {}, "qnQhzAnKtgpgpB7y": {}, "YezceWzxROi9x6wM": {}}, "user_id": "tXnxI9BpEYxnC9JJ"}, {"extra_attributes": {"Ad6W9obI4wuRT8x6": {}, "gZAZ8U6fO00C6cX9": {}, "E64fkG9JtgQKzQnX": {}}, "user_id": "Sy8bQeZbhagfykGn"}, {"extra_attributes": {"qwMyFABnI8Lp7f41": {}, "h38HBJS66JNnPwpY": {}, "o1rErajZzr4NjGt3": {}}, "user_id": "ZAK2JKXNVmYO6svY"}], "ticket_created_at": 65, "ticket_id": "wz9JVFs05kKhfjGL"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'l4xba4sK9d6JT7qs' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 78}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '7HIpVzSUErGDoj0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'NUJWqhHOQCNrxy0K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'zXrKfyjLuM02wyT3' \
    --matchID 'c8ogrp9zOBGc4vcD' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["HuH4qoVE6iRPjJb3", "hPK0EmGb3ypInLdo", "2m7Osqf5e9THnFQy"], "party_id": "TnRI9T9A5Dex330j", "user_id": "a5hmwqMGSmkovIjz"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '2YmdjXY2zRHR4gV6' \
    --matchID 'gGggt9gtzAtRuGzU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'L9kiCxUES0aB8W8u' \
    --matchID 'AQw8dTzgxhFLQi5O' \
    --namespace $AB_NAMESPACE \
    --userID 's7zJ5FsnEw5ROwWN' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '7esL3IvnFhrOrbGH' \
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
    --channelName '7sxYGcEflaZ1CPYq' \
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