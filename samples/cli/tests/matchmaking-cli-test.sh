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
    --limit '8' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "1DYNjj1LpgoKdtvD", "description": "8kQYTuahk4WjJOYG", "find_match_timeout_seconds": 58, "game_mode": "MQGva1jH2ZoMCMpT", "joinable": true, "max_delay_ms": 29, "region_expansion_range_ms": 23, "region_expansion_rate_ms": 12, "region_latency_initial_range_ms": 23, "region_latency_max_ms": 1, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 79, "min": 54, "name": "oqzTyNmV1SIz4AbN"}, {"max": 74, "min": 45, "name": "dxPF7wIf98YmyEeF"}, {"max": 16, "min": 16, "name": "zUpZPQf1OPIDqJLH"}], [{"max": 87, "min": 12, "name": "r2Ej3li8Iy0pD6c2"}, {"max": 77, "min": 91, "name": "C6SFNOyxiDoOfKph"}, {"max": 6, "min": 65, "name": "X5b20SNGXRSTSuNk"}], [{"max": 59, "min": 24, "name": "IfEf0LK63Dz48Wss"}, {"max": 62, "min": 65, "name": "wpO6GujGngC3zwEL"}, {"max": 36, "min": 84, "name": "Ezb2Emv1e2g0tIKI"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 5}, "max_number": 100, "min_number": 94, "player_max_number": 12, "player_min_number": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 23, "min": 86, "name": "Na9aDvGNfPB1MTHc"}, {"max": 96, "min": 20, "name": "PhwreIJ9CwMpgY0E"}, {"max": 58, "min": 59, "name": "xriYGzNWfX6vyfVD"}], [{"max": 70, "min": 62, "name": "Qf9KvcFN8Oa2PkZ3"}, {"max": 40, "min": 61, "name": "K0jb9QfATQbbB87k"}, {"max": 70, "min": 16, "name": "Am2AO45DZCpphk7p"}], [{"max": 29, "min": 10, "name": "U4o1WAC8xed83NIT"}, {"max": 96, "min": 79, "name": "MZvkUT6o8RtBZrKB"}, {"max": 56, "min": 35, "name": "d6JvyYIzojVggtrv"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 44}, "duration": 5, "max_number": 85, "min_number": 73, "player_max_number": 11, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 21, "min": 97, "name": "Mh7MZ33vuul7NkaE"}, {"max": 7, "min": 13, "name": "62iAi20OGpoe3Jky"}, {"max": 63, "min": 71, "name": "NT7UnIcwAuoiHsN5"}], [{"max": 52, "min": 8, "name": "xPJoXrb5UEgLj2U9"}, {"max": 16, "min": 62, "name": "8LCBsxtowyqN5AZW"}, {"max": 23, "min": 95, "name": "U6lAERYwMJl5xQQl"}], [{"max": 91, "min": 78, "name": "C3Mx3KEngjn8Q0cJ"}, {"max": 6, "min": 34, "name": "QMzCOCBaJbm5EZPE"}, {"max": 2, "min": 2, "name": "dsFBy0i1So2WfOfj"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 95}, "duration": 0, "max_number": 90, "min_number": 45, "player_max_number": 12, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 87, "min": 18, "name": "BY0jLsW7lHmFz6Br"}, {"max": 82, "min": 42, "name": "SR8RZMpYCSc5hW87"}, {"max": 49, "min": 56, "name": "01tGNtU0vjdgrxii"}], [{"max": 36, "min": 87, "name": "i64whJKBxTxZO7k9"}, {"max": 62, "min": 6, "name": "psXxrsb1KdSZ95iX"}, {"max": 66, "min": 81, "name": "LkZ930udFnIqfBUg"}], [{"max": 20, "min": 39, "name": "RPraN4MNNKRPLjWe"}, {"max": 70, "min": 74, "name": "l8wM94AID7Ae91T8"}, {"max": 98, "min": 10, "name": "kHaOE82J7GiknUsC"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 94}, "duration": 15, "max_number": 68, "min_number": 88, "player_max_number": 15, "player_min_number": 6}], "batch_size": 84, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 16, "flex_flat_step_range": 68, "flex_immunity_count": 74, "flex_range_max": 76, "flex_rate_ms": 31, "flex_step_max": 51, "force_authority_match": false, "initial_step_range": 3, "mmr_max": 54, "mmr_mean": 36, "mmr_min": 93, "mmr_std_dev": 20, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "HgGSMWONSd3sVqyE", "criteria": "N8kMx2RJUjACv18c", "duration": 54, "reference": 0.5998821796585552}, {"attribute": "3vXQaZAAjwrhge3H", "criteria": "galkzb4nlUMT2r7L", "duration": 4, "reference": 0.246836436541214}, {"attribute": "h9yP1naRnp1wXJ3L", "criteria": "IWW5AXNYVGREppRE", "duration": 3, "reference": 0.7711529917999587}], "match_options": {"options": [{"name": "XmKKgTpqQkFig7t6", "type": "hH2kyofpfQoJ3guP"}, {"name": "LyCKZino4kwUXarC", "type": "op8OJUCd1Tso3kOc"}, {"name": "srfptjMskemb6aRY", "type": "LLtaveeSdsi5nht4"}]}, "matching_rule": [{"attribute": "BadLmwNtH2MZeyh5", "criteria": "QSYmwdpuSUYH3wkk", "reference": 0.08496705256892167}, {"attribute": "St5MhjyAjvdv3kUB", "criteria": "2TyMgl9lDfG0guRv", "reference": 0.6687828885394506}, {"attribute": "36PSWW85eCajbM0N", "criteria": "hY1hJnkf3AqfeCVI", "reference": 0.8627809593860902}], "rebalance_enable": false, "sort_ticket": {"search_result": "none", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 70, "ticket_queue": "oldestTicketAge"}, {"search_result": "distance", "threshold": 72, "ticket_queue": "largestPartySize"}, {"search_result": "largestPartySize", "threshold": 87, "ticket_queue": "random"}], "sub_game_modes": {"3hPh1KxCy7SfoYCR": {"alliance": {"combination": {"alliances": [[{"max": 72, "min": 54, "name": "34Gu8IpwxmAOvRHa"}, {"max": 52, "min": 87, "name": "1w34bpiUtlmWsii9"}, {"max": 92, "min": 23, "name": "eOueKLuN8wAFRTDD"}], [{"max": 29, "min": 88, "name": "Z2uiEIBy1RrGIrfU"}, {"max": 43, "min": 76, "name": "Gd6F2Qua4mwTGB3k"}, {"max": 35, "min": 37, "name": "4FFHlMX7aLKbasiE"}], [{"max": 40, "min": 44, "name": "xY15pGHWaBN6SSvB"}, {"max": 31, "min": 15, "name": "VuwZx3nSk3sJMi1g"}, {"max": 35, "min": 35, "name": "4SEJxCesZ117lRg8"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 97}, "max_number": 40, "min_number": 61, "player_max_number": 58, "player_min_number": 9}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 79, "min": 29, "name": "QFKtJEBWqsN0bD8d"}, {"max": 36, "min": 46, "name": "RgcpoqLLaIm9yvRM"}, {"max": 91, "min": 0, "name": "bXPYeDnr3KxojLCB"}], [{"max": 12, "min": 14, "name": "ngBEQhlhE5L3pSq6"}, {"max": 12, "min": 37, "name": "0d0lQNe6SuQtpLs6"}, {"max": 57, "min": 30, "name": "8y7wNytfjk6INNL6"}], [{"max": 23, "min": 70, "name": "7NRwqC9OCN9yFKD5"}, {"max": 41, "min": 46, "name": "g53VmCjgG1KdC544"}, {"max": 18, "min": 8, "name": "ErW3am9GLQU6oqzu"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 96}, "duration": 71, "max_number": 20, "min_number": 94, "player_max_number": 98, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 46, "min": 60, "name": "gXszI58ElaY8aW8r"}, {"max": 8, "min": 30, "name": "j8zXEXFkfMVBNlht"}, {"max": 23, "min": 15, "name": "7zgkdLMIKCyS5Pkk"}], [{"max": 26, "min": 89, "name": "zJZKbtcLXCfIP5M3"}, {"max": 32, "min": 6, "name": "IfaU6luJPruZYAvt"}, {"max": 86, "min": 45, "name": "r3voF3nqsC9W9p0q"}], [{"max": 56, "min": 11, "name": "6bqbxh1kXksdehYw"}, {"max": 97, "min": 80, "name": "Dk7Osi8OrMEBxsOj"}, {"max": 58, "min": 55, "name": "KEUm9kKOidYRx8L0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 0}, "duration": 95, "max_number": 55, "min_number": 97, "player_max_number": 61, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 82, "min": 56, "name": "fBEuhgFTEM65dgHA"}, {"max": 90, "min": 65, "name": "e1u6wUU8AmIciY5c"}, {"max": 33, "min": 34, "name": "taBND3IdK3HC1oGQ"}], [{"max": 88, "min": 10, "name": "8i2LqXUQP3Eyx3fl"}, {"max": 69, "min": 58, "name": "EjSGg9Gc9YIOT62D"}, {"max": 9, "min": 17, "name": "j6H671vzhDgObLt5"}], [{"max": 83, "min": 31, "name": "kytgeg7EqzqnqOfa"}, {"max": 36, "min": 77, "name": "i9FVNeaR8BX8d7N8"}, {"max": 40, "min": 61, "name": "FqNnWS0LT0vjvXaN"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 14}, "duration": 38, "max_number": 74, "min_number": 49, "player_max_number": 19, "player_min_number": 84}], "name": "fGRyP06IQ8xzKKRU"}, "aYJBxgoGOsE1uu89": {"alliance": {"combination": {"alliances": [[{"max": 39, "min": 28, "name": "Qw9DQ1o1fS6IUSDE"}, {"max": 39, "min": 35, "name": "Oyy19OEmA29GNHRd"}, {"max": 34, "min": 85, "name": "Zy6y0g8653DLNq0o"}], [{"max": 94, "min": 34, "name": "ZdNUBIjbVvVR5HAQ"}, {"max": 90, "min": 52, "name": "b6yUU45qEACLZ7GS"}, {"max": 57, "min": 20, "name": "W4IbDsexTezBBdtX"}], [{"max": 15, "min": 68, "name": "XkdXvrOABpipqWxO"}, {"max": 95, "min": 76, "name": "WqHZeMhTelLEsqge"}, {"max": 95, "min": 1, "name": "hAKAAWx8J6Calz0y"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 26}, "max_number": 9, "min_number": 21, "player_max_number": 99, "player_min_number": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 85, "min": 34, "name": "V5E6nzWtMoyXrcrc"}, {"max": 64, "min": 2, "name": "aXBnUYQD04DOEVYr"}, {"max": 42, "min": 44, "name": "tfSmNBV31gS4zlSh"}], [{"max": 78, "min": 86, "name": "BwJ0bwArkSssn0zf"}, {"max": 81, "min": 38, "name": "t2kOd2UdzRTmF27O"}, {"max": 42, "min": 67, "name": "wsJUVqHkW22Cjw9G"}], [{"max": 35, "min": 63, "name": "5BPcH1IgwOlMFJI0"}, {"max": 15, "min": 64, "name": "deaOh4B15CIYPfCL"}, {"max": 54, "min": 89, "name": "hoIMJYk7GQfuVLNi"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 92}, "duration": 93, "max_number": 94, "min_number": 36, "player_max_number": 68, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 68, "min": 80, "name": "nWqX55VeKs7WvEEN"}, {"max": 4, "min": 46, "name": "WlPCXVI66QH7e8GZ"}, {"max": 86, "min": 82, "name": "mOaEmZD42Y5LWseG"}], [{"max": 48, "min": 2, "name": "yGflxzM9vKmsKtq5"}, {"max": 42, "min": 49, "name": "wCvHkOUNajaJSjU0"}, {"max": 76, "min": 50, "name": "80gN4UbnxHNwr7j3"}], [{"max": 97, "min": 15, "name": "cFMyqK3ocapGE72F"}, {"max": 70, "min": 59, "name": "M50TwlDLFcfIQ65d"}, {"max": 19, "min": 0, "name": "t5sH9ph5KT8fFEBG"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 75}, "duration": 34, "max_number": 97, "min_number": 14, "player_max_number": 80, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 72, "min": 58, "name": "aHiSUFG1zSypAfoo"}, {"max": 33, "min": 86, "name": "06N7044otrqZNReo"}, {"max": 46, "min": 86, "name": "E8qqH7AzA7hbKNHr"}], [{"max": 68, "min": 35, "name": "pS9t8Xd8ArI2EtxM"}, {"max": 19, "min": 55, "name": "Dnza5uTZgovxpkjo"}, {"max": 0, "min": 8, "name": "ASmyxuBdU9BmH1SG"}], [{"max": 18, "min": 96, "name": "5zK5Y49lB1XJzStt"}, {"max": 39, "min": 2, "name": "wjBrtJTkcuoji3EF"}, {"max": 32, "min": 58, "name": "qLKQPO8b73udan41"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 28}, "duration": 43, "max_number": 53, "min_number": 79, "player_max_number": 39, "player_min_number": 39}], "name": "mPKPAeoVUPap6vp5"}, "M1TTXi9BQs8UFvVs": {"alliance": {"combination": {"alliances": [[{"max": 29, "min": 42, "name": "TY9HaFbv0b4qGBeO"}, {"max": 91, "min": 27, "name": "trutAXcaHC2DAsX4"}, {"max": 53, "min": 6, "name": "hEQrkxI0zodoEa5p"}], [{"max": 96, "min": 39, "name": "BoztE88uQXscJ9fZ"}, {"max": 50, "min": 61, "name": "HGHt0CsPE7wijIGN"}, {"max": 4, "min": 36, "name": "IQA5ijcjxIzjOIbn"}], [{"max": 80, "min": 80, "name": "hYLdF5R87DCDBOUw"}, {"max": 41, "min": 58, "name": "J6RZgKR0MAvGrGno"}, {"max": 74, "min": 68, "name": "9jB0cqEU7ZER1V1m"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 33}, "max_number": 23, "min_number": 18, "player_max_number": 99, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 1, "min": 72, "name": "HuAxdu3plRRezdFT"}, {"max": 39, "min": 36, "name": "ea7kW4idecPX1vli"}, {"max": 71, "min": 82, "name": "Oor2xPcWyycIdUUB"}], [{"max": 81, "min": 82, "name": "0Ax4juOkoCFMgvQm"}, {"max": 40, "min": 92, "name": "MjgTIgjg1XwIaICI"}, {"max": 64, "min": 82, "name": "vqCksxoiIAutagWv"}], [{"max": 19, "min": 94, "name": "ejKbsL3r7RirIkua"}, {"max": 64, "min": 20, "name": "PCkPeIa4me6Kpadh"}, {"max": 38, "min": 60, "name": "DrUQIoKbCkOoIZof"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 80}, "duration": 1, "max_number": 68, "min_number": 4, "player_max_number": 52, "player_min_number": 8}, {"combination": {"alliances": [[{"max": 8, "min": 58, "name": "u1Qls64OLdgdRRBc"}, {"max": 91, "min": 54, "name": "ADKRFGgGnkopJAAu"}, {"max": 63, "min": 7, "name": "3oXodoxH4Fv7wE31"}], [{"max": 47, "min": 77, "name": "Qczm19eWsrSMt3Bd"}, {"max": 13, "min": 8, "name": "oxbi5KKXxVz0yRLr"}, {"max": 28, "min": 52, "name": "bW1UjX479GgI1KMu"}], [{"max": 9, "min": 66, "name": "E8EP3M3SM6DDzUVC"}, {"max": 90, "min": 96, "name": "bfbmJtsrQmCfBliB"}, {"max": 60, "min": 81, "name": "EXc3zHhNBPn5qH6Z"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 24}, "duration": 42, "max_number": 7, "min_number": 73, "player_max_number": 10, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 24, "min": 36, "name": "2P8F89sF3NcHA5kb"}, {"max": 95, "min": 74, "name": "kidpzmGblrR0IQ9h"}, {"max": 99, "min": 39, "name": "i4EVS3NVC7qtuo2f"}], [{"max": 83, "min": 50, "name": "sGwU5G4r4uqNkOS8"}, {"max": 12, "min": 66, "name": "d6zgIQv2l8TZcqHr"}, {"max": 79, "min": 19, "name": "AkAa3IFskGBbVqj5"}], [{"max": 41, "min": 91, "name": "OpRU7FAkpW2lpiB0"}, {"max": 62, "min": 2, "name": "FrifdWLZnmUEXz2Z"}, {"max": 13, "min": 56, "name": "IksYBQmMHO3f2AH5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 45}, "duration": 37, "max_number": 67, "min_number": 0, "player_max_number": 3, "player_min_number": 12}], "name": "uXsBy59C06ZSdqKj"}}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 80}, {"selection": "oldest", "threshold": 56}, {"selection": "newest", "threshold": 58}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 78, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'wCoiv7a8YH4Dfip0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'fgOINOHYMFfni4iC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "y0tA0pW2rZxI11V0", "players": [{"results": [{"attribute": "ttcJxQvOJmgaCsI6", "value": 0.07039632669714624}, {"attribute": "3w8mlxQSPZ8InYeu", "value": 0.13872611051849693}, {"attribute": "IzBCkSdaoZgvUbes", "value": 0.6403542218949728}], "user_id": "ub8vFeJhUzdNA9TN"}, {"results": [{"attribute": "9JiqU83MmmXdT4Db", "value": 0.41802563889422484}, {"attribute": "TBmHNVqLkktbAQRP", "value": 0.16688684745534532}, {"attribute": "4kgy55czNyZJBWDX", "value": 0.18689452660827122}], "user_id": "YSY1nhzWb4OqeRCD"}, {"results": [{"attribute": "XkHf9qctQcGIar8a", "value": 0.773790891458242}, {"attribute": "VPqT5IYVqOFCrwDA", "value": 0.20768851433696855}, {"attribute": "noDK21CxnxWQiTHO", "value": 0.8045068972297735}], "user_id": "alVXVkovpOjBZ27k"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8pkkjM7wiMBod6oj"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "3WYv1TQkpsJHWUJA", "client_version": "VFJc0LhSJUb8T7HQ", "deployment": "oZ4JANy89zottB0V", "error_code": 86, "error_message": "74zpmmpLLdBGUW3W", "game_mode": "E6fmEAgYnI9HO6ST", "is_mock": "ii077NpEl5K3cIHH", "joinable": true, "match_id": "XdEU1qutKcYcaeAl", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"0uwTvhwjKQyuxXjJ": {}, "uR42XtZWx1LkL5de": {}, "skyFcPIqdq2LgX6b": {}}, "party_id": "vNICPFY7iFBaHSsZ", "party_members": [{"extra_attributes": {"EabKTE020C22hNaP": {}, "58uQLHOaTKAjjDd6": {}, "8sjE0ohQtMCWoQpz": {}}, "user_id": "fUkVM3sO6rwGpv9u"}, {"extra_attributes": {"b1p64eSbHsi6kl59": {}, "Gwo7IFwYbgdOu7yc": {}, "g6ys0Wf0KdSB0pPI": {}}, "user_id": "7ocHmBA6Mp1dIRuq"}, {"extra_attributes": {"dtVAxLKqengacSqr": {}, "4JPEuVnKVNnoQLl8": {}, "zCZDdceKH7QEoeMi": {}}, "user_id": "2fNKB0wyZtd9suHV"}], "ticket_created_at": 13, "ticket_id": "cWLcApMQCVmiMYS0"}, {"first_ticket_created_at": 52, "party_attributes": {"qM1M3aQh7kLVIZ6S": {}, "6CJLqzWx1o3HMtHe": {}, "Xl20Rj9GaHB4ncZR": {}}, "party_id": "HpLppxI30DNZDImr", "party_members": [{"extra_attributes": {"jEEbuQqp1OHOaTTb": {}, "rUt7sxnCwyqnY5tM": {}, "m33P74IWcPaYFxhU": {}}, "user_id": "x0EF3dEQfueaUOtz"}, {"extra_attributes": {"R5WmfJnVmmMpqF08": {}, "V4yEqUfrvMvTBFDY": {}, "8GWAMVxza6DExvoL": {}}, "user_id": "j5aV9JCbEtFQIDOz"}, {"extra_attributes": {"WmIm3MH5PIIcNzVb": {}, "JC1GAdnfgNoso2kK": {}, "vcxmMu8bVi2weJYQ": {}}, "user_id": "mmXLEBrcHFY02WZA"}], "ticket_created_at": 51, "ticket_id": "imNcx7waJlFgk0rM"}, {"first_ticket_created_at": 53, "party_attributes": {"r5bPrxT3za0QmU9B": {}, "KexN84Z758oXGoED": {}, "T53dGiobs1LQXHNW": {}}, "party_id": "QHdFcrB9ZLrFJQKp", "party_members": [{"extra_attributes": {"uV4hB7cx2IEGbOrM": {}, "suGgUcJbEZhxzpEa": {}, "oqHWS41dndZ4Fnsx": {}}, "user_id": "a3rWwbtbxMteWu6h"}, {"extra_attributes": {"YA2bebAKEGBdVQjp": {}, "k8BkD92pBq2w9L2K": {}, "fnelP1DYOhvhH7tJ": {}}, "user_id": "kMARRsLHEGnpXNjs"}, {"extra_attributes": {"52avnuLwnYFz3tVk": {}, "oEVsTwBlMP4VlFi4": {}, "YaLYtZohJig9u9tz": {}}, "user_id": "28xM1UG192sEoRpG"}], "ticket_created_at": 73, "ticket_id": "42OkaS1QcxC87Mot"}]}, {"matching_parties": [{"first_ticket_created_at": 61, "party_attributes": {"26xgVEUTAX9AmBbg": {}, "nn0GD0PEMXnbj5CR": {}, "GFMmI3qwLvmAnGNa": {}}, "party_id": "d498dsWAnVMM4DHe", "party_members": [{"extra_attributes": {"HtKbesWnmem1DnEj": {}, "WrP2Lka7GJic2msm": {}, "6kp7pXxkQ9pI7opl": {}}, "user_id": "FuMfy1OEf2jsTwTZ"}, {"extra_attributes": {"Btl8GA4IM0iwUyQK": {}, "3TdFauYpwliClGwQ": {}, "u6JoiejQp7TJwL6t": {}}, "user_id": "s5yNQxv5GMxZxpDv"}, {"extra_attributes": {"Dl10lXX6hcnUVfMd": {}, "QFMWrhZYXxhtFjhT": {}, "pgWUONJrH8ZduZFd": {}}, "user_id": "PekH8GiKsfJdCwa9"}], "ticket_created_at": 68, "ticket_id": "OkDwdP9nW2lXI9X8"}, {"first_ticket_created_at": 31, "party_attributes": {"i9uL3oEcvNbEaxwz": {}, "bUTtsTzoZgOkhWuU": {}, "g7cOx9p1ZBvDt0yE": {}}, "party_id": "7r83ehYjLXqFQpJL", "party_members": [{"extra_attributes": {"7BLTn3nHQt1otcHZ": {}, "UgERiHwdHisG937C": {}, "DRi9kiQR9irbSLjk": {}}, "user_id": "3ZDkt24NMWQoxxXr"}, {"extra_attributes": {"6822XmemFZocIoOU": {}, "Dl0l7BvFh8jFel7H": {}, "idI3aQklMXHW2Y4a": {}}, "user_id": "K3y6m3f0SYhp7Vu7"}, {"extra_attributes": {"VL3tsJkxyVdDnpyU": {}, "g7MXlFZ7fR0vdVGT": {}, "AoiP60kgcrcvPrCT": {}}, "user_id": "2HFI0psTgmfRlB0y"}], "ticket_created_at": 43, "ticket_id": "ViWqvJYm1ov9qFaj"}, {"first_ticket_created_at": 48, "party_attributes": {"WzNfdRtzXfkY4Pnj": {}, "wQIRiOPI7364w3mh": {}, "fwTNJ1QgkUvorQzO": {}}, "party_id": "xOAaUt9Qoy3OA0UN", "party_members": [{"extra_attributes": {"IT166LVEty7Cog6z": {}, "30OQwhJ9fc5LxrWo": {}, "uDxA0Bub7joY8blu": {}}, "user_id": "ZArG84omcu8vSEdR"}, {"extra_attributes": {"jPiVfeuth6tx0wKb": {}, "gbuBk1h9i3VUNLtx": {}, "0Rv9oYuuR1llZVop": {}}, "user_id": "UXDu5gC9t3beiYDt"}, {"extra_attributes": {"GfgCUqWNsIf9O1tv": {}, "LxIxsyLGn7IOJNxd": {}, "m1GtRUesYBcmCIWH": {}}, "user_id": "gQg9OMBHIKddKGwf"}], "ticket_created_at": 2, "ticket_id": "m2yfbCSMSdyvlEOI"}]}, {"matching_parties": [{"first_ticket_created_at": 88, "party_attributes": {"t2IfhK0QBOUIMWD8": {}, "Cy9AOiV8AZVeqjhs": {}, "fP5ItXc4w34POQJn": {}}, "party_id": "cscenWwPhYmXZdaB", "party_members": [{"extra_attributes": {"PuC72KAwsK3b6Uz7": {}, "HsCXldmGAo7WWwYx": {}, "aqtmSpRNx1sGAUx4": {}}, "user_id": "GbTwbv93awON0B51"}, {"extra_attributes": {"j9dOzESkK4c0bXKX": {}, "oWJPAMyIQC5uYCgf": {}, "lW24Vkl4wlNTyzu9": {}}, "user_id": "3BOuk0aSAvwjK8r5"}, {"extra_attributes": {"UUC23Ar329L6XTRn": {}, "ufgH8LiTGsPjzaay": {}, "t5Rr3dKyLThoFoF2": {}}, "user_id": "wIZVJeEclWV3X4SC"}], "ticket_created_at": 24, "ticket_id": "2QLko9wVEz8TnIkG"}, {"first_ticket_created_at": 98, "party_attributes": {"HflOyTsBzi28ePRc": {}, "dGJPWLPMPIvyr5yF": {}, "QdAk9jQl7OIYuSyz": {}}, "party_id": "dG32SwmrgoL2tWeh", "party_members": [{"extra_attributes": {"xwABfeVeLxEjMlC4": {}, "XChSELGlBG7UfQyv": {}, "irkKZIAh9x9eL5tf": {}}, "user_id": "dOQRvQmT81AAl9x3"}, {"extra_attributes": {"hCDW0GLON8DWtVwu": {}, "U0nIRFzIz0cRiJuo": {}, "HOrUl6ilpot8zRHB": {}}, "user_id": "HenRa0waLdb3ApAq"}, {"extra_attributes": {"kOpcDQIi0gCuRfhk": {}, "1aebVpnPyxS1BLf1": {}, "2fhJSZyAQqBUGNhH": {}}, "user_id": "Jc2fmhKByt8uchZZ"}], "ticket_created_at": 10, "ticket_id": "AhqcmkBlgj1RzmlE"}, {"first_ticket_created_at": 30, "party_attributes": {"W2QG1V2sX43FzaNJ": {}, "zD7dDLQ2A8KAZWCc": {}, "UOwEP4vyUm2c3XZ3": {}}, "party_id": "uwWqR0IswtoW1t7b", "party_members": [{"extra_attributes": {"uVQhkisFr17VO4CJ": {}, "sHzezdlzBOd0wHdf": {}, "kuASK4d89Egn0x40": {}}, "user_id": "K9iiuBRvix5XQARD"}, {"extra_attributes": {"amG2ZOlcraQTAoz9": {}, "TEvSJ4iALMaGBXTk": {}, "5vR4Q9Af2HZ2oL98": {}}, "user_id": "JJeeqTTpXNPHZUNc"}, {"extra_attributes": {"wsUKLhOGUBHAljqk": {}, "xvQOIUfMiOGyKAg8": {}, "qWpogNn0KGYYtA8Q": {}}, "user_id": "qui99rPAYZVK2PT4"}], "ticket_created_at": 96, "ticket_id": "NIy8Bebf0w4PYaz3"}]}], "namespace": "N1Ln55vyBTlq0QkV", "party_attributes": {"eElagqbutnvEImlE": {}, "3BYVDyPI65FSFbLV": {}, "RlDGM8xg1tpEBX7T": {}}, "party_id": "Nstnf8DJnH5n5Pdk", "queued_at": 20, "region": "9wOY3RWMKNEiaAOC", "server_name": "lXIqhk4VJI67HhW0", "status": "LuqZHYePPlW8mq8I", "ticket_id": "vDlgi3B9Ua49PY4l", "ticket_ids": ["O0hvSYyAXO0CdNdh", "pvFFvdq7DvKSvSvY", "jyda5vBwXstnzMvD"], "updated_at": "1994-04-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "FcTH9BbWHCDUwkUV"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Dpo8aUDcPzCygeIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 23, "userID": "JdorPLiBoPOzESM9", "weight": 0.5999428535495087}' \
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
    --matchIDs 'vdg4OCQx8eFwV0iH' \
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
    --strategy 'IYUYKbFt7CuQ09dt' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'XDGoy7aRK5MOBdRP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'GS5VK1anY5aZNDwK' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "raB1ezzTlt2MvILb", "description": "zD6kZvI4TdyQ1aBe", "findMatchTimeoutSeconds": 36, "joinable": true, "max_delay_ms": 19, "region_expansion_range_ms": 31, "region_expansion_rate_ms": 16, "region_latency_initial_range_ms": 79, "region_latency_max_ms": 12, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 86, "min": 24, "name": "BA73Nk0ZhNkozHla"}, {"max": 73, "min": 43, "name": "0RIYPT26zaqTSzcb"}, {"max": 93, "min": 6, "name": "ce5uMPV4mwdzw3WK"}], [{"max": 57, "min": 2, "name": "yawGAdZunp9b2DQ5"}, {"max": 72, "min": 75, "name": "dGZRgMXGmKGywdQ2"}, {"max": 98, "min": 44, "name": "uyV8c6prni2JY0sb"}], [{"max": 8, "min": 74, "name": "yGxF2YEmJ95TA6MU"}, {"max": 0, "min": 34, "name": "hLHDi6aOWxf58cfV"}, {"max": 82, "min": 51, "name": "gATr56eiNuu8Lvv5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 22}, "maxNumber": 53, "minNumber": 68, "playerMaxNumber": 26, "playerMinNumber": 73}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 29, "min": 8, "name": "wV28U4B34etYwh6F"}, {"max": 36, "min": 1, "name": "pB2Jx0FPJBmGmuUk"}, {"max": 53, "min": 83, "name": "boWHRKvUOLn2nuHr"}], [{"max": 12, "min": 30, "name": "Im2a4ULs6xN1FUgj"}, {"max": 79, "min": 24, "name": "aZ18ZL0Fl4AeD5U0"}, {"max": 5, "min": 4, "name": "BT3JSliFvtCbwqSk"}], [{"max": 86, "min": 73, "name": "rLjkmb2H1kUytbHn"}, {"max": 33, "min": 100, "name": "5cr3X32K51SvZljr"}, {"max": 99, "min": 53, "name": "3NXQ5aFiUQBVJp8j"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 48}, "duration": 60, "max_number": 87, "min_number": 42, "player_max_number": 48, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 58, "min": 99, "name": "7vveEkqKPWRzQQJz"}, {"max": 32, "min": 23, "name": "2ItfWhBXhdl8L2IC"}, {"max": 34, "min": 45, "name": "r0CeNdtziSEfcz4P"}], [{"max": 68, "min": 66, "name": "RC0jCOCzflM8om2F"}, {"max": 32, "min": 40, "name": "zxE7myLcGLRauwye"}, {"max": 55, "min": 33, "name": "iGt0tU5v88RkGZPd"}], [{"max": 5, "min": 55, "name": "cfHfbR9cZGkDzQsh"}, {"max": 99, "min": 69, "name": "t7Xc5ieE3ToT2UQX"}, {"max": 53, "min": 82, "name": "TMU9F1PxAY0zFOlH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 26}, "duration": 88, "max_number": 35, "min_number": 18, "player_max_number": 91, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 25, "min": 63, "name": "Srx6ZnAUJC7oY1w8"}, {"max": 94, "min": 82, "name": "staDiIlcJCCnJ8VQ"}, {"max": 70, "min": 87, "name": "GoZLQvS0jwrpvs1t"}], [{"max": 33, "min": 15, "name": "YZ7gl4FdwTD3HLTc"}, {"max": 17, "min": 62, "name": "R7kryZoJ4cdmJOmW"}, {"max": 51, "min": 47, "name": "JFlZson2Zr6txqWC"}], [{"max": 36, "min": 39, "name": "iOPVoRLDCswS2fjA"}, {"max": 93, "min": 13, "name": "VfWvGIfGzxjCq5Sz"}, {"max": 17, "min": 2, "name": "tNFPYTEbrJFZ4mfG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 97}, "duration": 82, "max_number": 45, "min_number": 79, "player_max_number": 58, "player_min_number": 66}], "batch_size": 57, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 84, "flex_flat_step_range": 35, "flex_immunity_count": 81, "flex_range_max": 33, "flex_rate_ms": 22, "flex_step_max": 57, "force_authority_match": true, "initial_step_range": 32, "mmr_max": 61, "mmr_mean": 26, "mmr_min": 23, "mmr_std_dev": 85, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "9qjvmdWhHk3RgnLc", "criteria": "AjZqFR0CPmUrbU1f", "duration": 34, "reference": 0.4415114988507076}, {"attribute": "p3YoFDQxNQdp2hyW", "criteria": "s21go4iTt2sJdqc9", "duration": 23, "reference": 0.6728453009145392}, {"attribute": "ANuTjlxM9Oq55Xqh", "criteria": "pwVZ0NKlfdR7wiAE", "duration": 33, "reference": 0.5667384707692843}], "match_options": {"options": [{"name": "GiSSVKJiSM1DrlzE", "type": "XyGtNv7iocuZVAWA"}, {"name": "Q8VEJ5MCxJstq8Lf", "type": "IoHqOGNRXWfbqQs7"}, {"name": "tAuO4FURJEF9vtbF", "type": "sxjDSQqWaETrxKfp"}]}, "matchingRules": [{"attribute": "nVGkQuoZaN705vYu", "criteria": "A4MARu99E1eJylwO", "reference": 0.9069997631531997}, {"attribute": "9ylv8kqMBu8guTCt", "criteria": "RaCQJf0YCkAwpRVm", "reference": 0.6748824041577743}, {"attribute": "07ujt7XmiPvXEVJp", "criteria": "eN1H7UXvkC7YToeJ", "reference": 0.4356167862022552}], "sort_ticket": {"search_result": "random", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "distance", "threshold": 19, "ticket_queue": "distance"}, {"search_result": "none", "threshold": 57, "ticket_queue": "oldestTicketAge"}, {"search_result": "largestPartySize", "threshold": 72, "ticket_queue": "largestPartySize"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 64}, {"selection": "oldest", "threshold": 85}, {"selection": "pivot", "threshold": 59}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 55, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'dR7SrAlV4Fr5uOfV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'jFW7yyKuHgYujzjd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'LdP1CACGplZo4I9y' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 66}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'h3v3nsVIp2wcgQBA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'VbLAb3rVnkp8OGA4' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "HOQd88Q5I7BpWya0", "count": 88, "mmrMax": 0.6732462307447051, "mmrMean": 0.4402297177090796, "mmrMin": 0.7245644177464199, "mmrStdDev": 0.6292755706149643}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'jW9plJd9sZikUsN0' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 19, "party_attributes": {"zbqWvt4Jo659TyUT": {}, "j2WBwYFD8q7mTlAc": {}, "ERDaUGquavB5Flej": {}}, "party_id": "JiXviwSSXjzXvJPJ", "party_members": [{"extra_attributes": {"7Bm4R1wo1VBMmhaE": {}, "jL5z3MC7JHpv8kFy": {}, "M07HWS3HykZB0Rls": {}}, "user_id": "XaOkQZmaPmoBs8YU"}, {"extra_attributes": {"BkX4i1vIt8f5gNRC": {}, "XgrtP4U7yXajGMqO": {}, "wJ8V3iqdTQhceO9U": {}}, "user_id": "daDKNolLwiSJFuFr"}, {"extra_attributes": {"5Oss9WUpbqcomF1g": {}, "zruwLGySvjFEaAiq": {}, "9wixukhxeeDPgyyb": {}}, "user_id": "4THj6j9lk5gCp1EI"}], "ticket_created_at": 86, "ticket_id": "jyPgZXlxJMFqtAxD"}, {"first_ticket_created_at": 69, "party_attributes": {"iWqlpqcACjRHGuW3": {}, "5Iwepg9tYOCgEBWv": {}, "GWk7VxTKVn0amyHa": {}}, "party_id": "O5OwyRFMqKqL7Jvs", "party_members": [{"extra_attributes": {"PR9WPW01nIUjaYeb": {}, "EkhuxkI39NbcDIVS": {}, "Ai97r3aKZMHY6r2Y": {}}, "user_id": "vvSGIE5EKoH7oRmS"}, {"extra_attributes": {"t0rp0DFmsBqa4Kh4": {}, "v3tcgVHKTIXqFMIk": {}, "ThWeSwNUOeViKrA1": {}}, "user_id": "pi8eLaAQis8Ney6R"}, {"extra_attributes": {"u4qp4XLuSoW3Eqyo": {}, "HDry6ea1QhRRRTAq": {}, "BBwOoyDkOfsrRqxV": {}}, "user_id": "oQNSPV1yMMnsGndZ"}], "ticket_created_at": 16, "ticket_id": "elljIe5axqbmnmrq"}, {"first_ticket_created_at": 82, "party_attributes": {"qOxYawLsvos2wHXi": {}, "6RcVHab1vQM84OXo": {}, "dbivdDQATkZV6mJK": {}}, "party_id": "3Fn0gohHfWYcT8WO", "party_members": [{"extra_attributes": {"WovKM0TMUkJDmuFW": {}, "0ZbiIPMTyJSMauhS": {}, "ypcD1EoqA7qNiILJ": {}}, "user_id": "CpBSpqCi4kXk37pl"}, {"extra_attributes": {"PRW3U5GKnTyaPj0Q": {}, "ddpfwJsdqO6aIIPJ": {}, "9oEKtHj7IGuUJudJ": {}}, "user_id": "3pd3tubUO9rRgCno"}, {"extra_attributes": {"N42da0GDis89gu7Y": {}, "GXNkZxZBzwOYSwYw": {}, "YSZSh6XTXIP4s2GJ": {}}, "user_id": "dkeYyaqdSY88oJFX"}], "ticket_created_at": 100, "ticket_id": "XhMbwKA8nDfQuUMa"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'lhIFMQ4sOt6eHkdF' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 10}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'BpCOGDoeElIRXwCr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'cto4YGUayT2s80xJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'A1wYdYSZG9KMrlQm' \
    --matchID 'ZgHGT5x9lBWPBBXA' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["pnahwTxyg08aqg6s", "2WR1IgqkVbIGOS4p", "xMQTAQhcvCW70KyC"], "party_id": "VSnQjUhdlwhzDQYJ", "user_id": "0ZBImKnBTxWhwoFu"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'YfeuAtMACjck22Qj' \
    --matchID '5bHMKhWifobSfsSE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'vzFoC1VgIkKt5VGS' \
    --matchID 'Ths60XDWzpMU7puR' \
    --namespace $AB_NAMESPACE \
    --userID '7twY8F4TnAgMTKEo' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'IwPoQU17Y1FfKzp5' \
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
    --channelName 'mp38noSqAs9EHY0C' \
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