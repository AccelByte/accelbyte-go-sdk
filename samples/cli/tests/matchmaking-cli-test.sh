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
    --offset '90' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "2OWGPINuU7OmTRnb", "description": "Lr5Ikj1ef7BRWPSC", "find_match_timeout_seconds": 27, "game_mode": "PAzRNegEDiAZsymU", "joinable": false, "max_delay_ms": 24, "region_expansion_range_ms": 20, "region_expansion_rate_ms": 1, "region_latency_initial_range_ms": 13, "region_latency_max_ms": 49, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 76, "min": 21, "name": "155DKJCSm74d3h9J"}, {"max": 58, "min": 30, "name": "NYq8QMyI1eTHiFyI"}, {"max": 45, "min": 40, "name": "GGNmlzlTq0hrDjaH"}], [{"max": 79, "min": 29, "name": "UjgEfi7pOgYWulOm"}, {"max": 1, "min": 42, "name": "AYm1FBd2mKWFHirs"}, {"max": 60, "min": 3, "name": "3tbYFzOOgSjLhA8T"}], [{"max": 56, "min": 63, "name": "TJTHOwqrZSdtq3OU"}, {"max": 67, "min": 44, "name": "FUpDdBdsCeHZqfiJ"}, {"max": 39, "min": 65, "name": "uqGLJ4ayjzmBd3Sy"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 85}, "max_number": 41, "min_number": 24, "player_max_number": 40, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 70, "min": 11, "name": "gQ9nOmLi2HPcngsR"}, {"max": 62, "min": 59, "name": "04ltGZxRFFEKzBqG"}, {"max": 96, "min": 7, "name": "JFbYVaO4NqOoOxho"}], [{"max": 100, "min": 46, "name": "5bRBOL9ZgXHDWN1z"}, {"max": 48, "min": 73, "name": "Bp3pzgMeyXgZ16Bl"}, {"max": 63, "min": 54, "name": "MdPOx3FiZuJqSqJH"}], [{"max": 91, "min": 15, "name": "JephB4Y6QLamsdjc"}, {"max": 87, "min": 41, "name": "uLyeVzk97mVK01O7"}, {"max": 1, "min": 78, "name": "P7AOvDRUH5BWGHBO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 21}, "duration": 13, "max_number": 85, "min_number": 38, "player_max_number": 73, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 24, "min": 79, "name": "w8Agn7ynAzi19l4A"}, {"max": 39, "min": 93, "name": "51ZbWjxVzGhKtafZ"}, {"max": 6, "min": 90, "name": "DePumh6Sge0J1d4L"}], [{"max": 23, "min": 88, "name": "JSkm59DVKZBUXdBK"}, {"max": 12, "min": 29, "name": "qBEf9nCxe6ditlFM"}, {"max": 64, "min": 98, "name": "V2ABaRgbYeBnTApv"}], [{"max": 14, "min": 22, "name": "yL6PB01yE4enrMjR"}, {"max": 87, "min": 78, "name": "pRIxFYZ3P0HPytSU"}, {"max": 35, "min": 9, "name": "RFsrS3M3YcwQxFQp"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 18}, "duration": 8, "max_number": 75, "min_number": 16, "player_max_number": 43, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 9, "min": 31, "name": "1t4DgSLAI8hxovfJ"}, {"max": 40, "min": 96, "name": "FZCbK5FfNzUUibhp"}, {"max": 53, "min": 49, "name": "ujJvBdNiXmx4yhM2"}], [{"max": 46, "min": 73, "name": "04iYgIPjkOpPCIUq"}, {"max": 0, "min": 59, "name": "GJ70PAbYh2Zvd4wD"}, {"max": 26, "min": 45, "name": "jzqRAsNZ6nijCgne"}], [{"max": 85, "min": 36, "name": "4cKDMHmfekEylyV4"}, {"max": 70, "min": 50, "name": "1SE9pxQVMIwptexO"}, {"max": 94, "min": 69, "name": "Moi0WhZFTDY1yLta"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 81}, "duration": 30, "max_number": 4, "min_number": 0, "player_max_number": 81, "player_min_number": 29}], "batch_size": 27, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 66, "flex_flat_step_range": 68, "flex_immunity_count": 37, "flex_range_max": 65, "flex_rate_ms": 61, "flex_step_max": 68, "force_authority_match": true, "initial_step_range": 87, "mmr_max": 78, "mmr_mean": 23, "mmr_min": 47, "mmr_std_dev": 91, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "1FHgex8UKS4hOEPj", "criteria": "eWQiHqrFYJLn81Iy", "duration": 98, "reference": 0.6334812683487046}, {"attribute": "ZKTp6ixhmp9thX8S", "criteria": "Ip5EnP72RJOxvpcy", "duration": 31, "reference": 0.5537873184160109}, {"attribute": "1koWqWNNFzUlCrST", "criteria": "wSZaeTSVH1grKwiZ", "duration": 30, "reference": 0.15822247463759076}], "match_options": {"options": [{"name": "gUyCphLBpA0cy0AN", "type": "4wG7LGOXlwfRj8uJ"}, {"name": "AnwXEglLBSCzOWdT", "type": "ZnGpt3GnNPIeCFYa"}, {"name": "VMrX8kEXOWkkqISu", "type": "f1Vm8yOj3T60oNAI"}]}, "matching_rule": [{"attribute": "HPX3AMYmkXsCuIFl", "criteria": "cQ8kcdFbXtpbYiM6", "reference": 0.11883357829674046}, {"attribute": "62ozUkyzAmkBC9dZ", "criteria": "PLzDvjErRrwODRA5", "reference": 0.49737580531618686}, {"attribute": "m0l89lLOyV5tFpc9", "criteria": "j1ccwkQ39syy2HEk", "reference": 0.9483170588564513}], "rebalance_enable": false, "sort_ticket": {"search_result": "b4Z9vrILvoWgzun9", "ticket_queue": "fr5V5jilhwPGLHSd"}, "sort_tickets": [{"search_result": "6CTQnoyiDkyFS0fy", "threshold": 31, "ticket_queue": "fgUzdixt0Q03olvK"}, {"search_result": "tKqPSILZXO03OZu2", "threshold": 41, "ticket_queue": "5uE0QMVujRdJMftR"}, {"search_result": "1mSIHixoqPv504oA", "threshold": 79, "ticket_queue": "aQd7pbgcTsBIKwrl"}], "sub_game_modes": {"6BhSqR0wa8izZtRT": {"alliance": {"combination": {"alliances": [[{"max": 39, "min": 14, "name": "psThtQRcZskJ8UUz"}, {"max": 29, "min": 68, "name": "SIqEs9ddCO7Orh0R"}, {"max": 66, "min": 93, "name": "YgO2uJQXflMNryLO"}], [{"max": 40, "min": 27, "name": "BUz3OnTCS3UTkBIT"}, {"max": 2, "min": 96, "name": "mrk3c5r7QzwPtBq1"}, {"max": 47, "min": 60, "name": "yf7BDfrujZxl4Ikq"}], [{"max": 56, "min": 41, "name": "fy18gXXVd3K3ogvu"}, {"max": 3, "min": 93, "name": "w8DKzD6iPeLRj3kJ"}, {"max": 8, "min": 86, "name": "8EwIqAen8jOwM1tQ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 54}, "max_number": 87, "min_number": 67, "player_max_number": 76, "player_min_number": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 55, "name": "YBOToGxSWak9gRUP"}, {"max": 55, "min": 96, "name": "rtY8vBtXcpAhAyro"}, {"max": 65, "min": 83, "name": "uOgE57S0uEwiRwSg"}], [{"max": 86, "min": 37, "name": "7EIlqjHxbpG7LmKY"}, {"max": 0, "min": 92, "name": "8esHShTQLwcoORK0"}, {"max": 6, "min": 65, "name": "lVBk1OyDTbZWWzXP"}], [{"max": 21, "min": 98, "name": "bE3sKJrXqUm8NqK1"}, {"max": 50, "min": 66, "name": "Sem15sLaZVxzI90w"}, {"max": 60, "min": 5, "name": "PcsqyV4441CNWEKn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 84}, "duration": 83, "max_number": 37, "min_number": 21, "player_max_number": 87, "player_min_number": 68}, {"combination": {"alliances": [[{"max": 9, "min": 31, "name": "8jDKGFSsDGX60dfh"}, {"max": 8, "min": 14, "name": "Ky7TXN7LatWWgy1p"}, {"max": 52, "min": 82, "name": "UtM9RFKO8CwdBRR4"}], [{"max": 76, "min": 87, "name": "yohBwr1FbmbGYRFq"}, {"max": 49, "min": 57, "name": "DyZZA8TDfminUA1e"}, {"max": 18, "min": 87, "name": "mdP0FFHso7yWoqbh"}], [{"max": 7, "min": 49, "name": "uFE9eRXhucFyazhQ"}, {"max": 15, "min": 42, "name": "7twG74AKNUO5lEa6"}, {"max": 74, "min": 91, "name": "QWvn9l176s4PUQmF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 58}, "duration": 59, "max_number": 10, "min_number": 92, "player_max_number": 26, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 100, "min": 2, "name": "GVNkOFJYp3FCtbZ8"}, {"max": 97, "min": 92, "name": "RMPyTphYkw4Z6Uz6"}, {"max": 36, "min": 96, "name": "E2nwhynPEFhLFHKt"}], [{"max": 36, "min": 1, "name": "OFjWvZt9Wydea5W7"}, {"max": 53, "min": 98, "name": "WlRk4TRVmbu3sMlf"}, {"max": 3, "min": 7, "name": "XEgtrRzDqF9C36zH"}], [{"max": 75, "min": 81, "name": "QNsD4o3l2jrWneH8"}, {"max": 24, "min": 45, "name": "8DStzI58q7uit0Jz"}, {"max": 43, "min": 77, "name": "qEkoISZLkERHo9wW"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 40, "role_flexing_second": 98}, "duration": 21, "max_number": 53, "min_number": 76, "player_max_number": 21, "player_min_number": 35}], "name": "vN30ToCi2fZGfLYf"}, "6bazWLqbEclwBZYu": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 32, "name": "dxt9YdHi5uRe9mrd"}, {"max": 25, "min": 81, "name": "NrXV6TT45Oug7HJX"}, {"max": 20, "min": 58, "name": "Gj87yFK0uFQ8F0yj"}], [{"max": 48, "min": 95, "name": "g9izWcynyEttp894"}, {"max": 7, "min": 78, "name": "5mxhtU4ekAkc50L7"}, {"max": 72, "min": 57, "name": "ffAWZlAZOaBkvAvL"}], [{"max": 100, "min": 61, "name": "FSY5v1aIauZYW5oI"}, {"max": 37, "min": 51, "name": "4jqc9Xi3sRyHRDoq"}, {"max": 4, "min": 55, "name": "5NB4yN4v03sj6TL9"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 100}, "max_number": 47, "min_number": 66, "player_max_number": 81, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 99, "min": 33, "name": "POCK2YfwdhpcwZZN"}, {"max": 93, "min": 19, "name": "vICjbQthihCBAxJk"}, {"max": 96, "min": 44, "name": "PLvrGgr6ykkaFrYJ"}], [{"max": 82, "min": 5, "name": "4SzEY0ge7PI1VSsV"}, {"max": 96, "min": 47, "name": "PGmDycYcAE2CMnzh"}, {"max": 67, "min": 83, "name": "y5fL3M6pA88SbUDY"}], [{"max": 93, "min": 1, "name": "SKxtwBMQPY6G2f1y"}, {"max": 8, "min": 13, "name": "MEpbt3395vHDnBei"}, {"max": 68, "min": 100, "name": "fibOvQABQJXa5247"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 27}, "duration": 72, "max_number": 37, "min_number": 51, "player_max_number": 47, "player_min_number": 25}, {"combination": {"alliances": [[{"max": 87, "min": 80, "name": "bnYrk8Af3sTBvacR"}, {"max": 40, "min": 60, "name": "OejQNjM2hBDWabpb"}, {"max": 10, "min": 71, "name": "U5sDTM3MyfXf1ejv"}], [{"max": 38, "min": 45, "name": "uJNdTdoqsvIjI1CU"}, {"max": 70, "min": 92, "name": "A2aRxOoNYm1UwvRX"}, {"max": 98, "min": 10, "name": "TdTWiiFtc6MuklHJ"}], [{"max": 1, "min": 89, "name": "fPX0xOFN6hxyzwdQ"}, {"max": 19, "min": 59, "name": "olFnbjQAtrhkD2TP"}, {"max": 37, "min": 14, "name": "hBsLwpvILFg4w4ki"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 62}, "duration": 67, "max_number": 45, "min_number": 27, "player_max_number": 77, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 29, "min": 42, "name": "HKZzuLOOfrTZKPj7"}, {"max": 64, "min": 77, "name": "yuQ2LNi0CpcCgxGa"}, {"max": 41, "min": 26, "name": "6GKfOjtOD3zYYSqf"}], [{"max": 87, "min": 30, "name": "3MrgwaUNci1GjK9v"}, {"max": 78, "min": 8, "name": "IFrv7nXFmEz8UZa1"}, {"max": 67, "min": 82, "name": "Hx3ZdZeJHlp1PJFC"}], [{"max": 66, "min": 61, "name": "TZ58CT8SOsay8huX"}, {"max": 16, "min": 68, "name": "b8HjxDSbJbUHbVNc"}, {"max": 16, "min": 89, "name": "YAH4zOn07CccVbnK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 20}, "duration": 12, "max_number": 86, "min_number": 28, "player_max_number": 96, "player_min_number": 3}], "name": "tLk4yGLt6ofhYy7A"}, "lEp9crFz1vx6NXQ1": {"alliance": {"combination": {"alliances": [[{"max": 40, "min": 78, "name": "spt5L2hfQNz4uH7R"}, {"max": 25, "min": 1, "name": "Mb2eKvpmdN36jAH2"}, {"max": 15, "min": 56, "name": "5TZzm8Qh9OAAI45O"}], [{"max": 22, "min": 45, "name": "u270KGkM1sYdMBzE"}, {"max": 18, "min": 62, "name": "P4nCmMqHyOPTDEm2"}, {"max": 2, "min": 61, "name": "ClXen6s0wq2ti6dS"}], [{"max": 67, "min": 36, "name": "GZmLxRRIxCrPEm58"}, {"max": 55, "min": 53, "name": "SbhiwThCYHu8g7i2"}, {"max": 45, "min": 6, "name": "1SOtdiOaQAEaZb3j"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 88}, "max_number": 62, "min_number": 44, "player_max_number": 92, "player_min_number": 56}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 78, "min": 88, "name": "dVnwY1acQ2r4FsZx"}, {"max": 44, "min": 45, "name": "f7IUvX9oywu6irrC"}, {"max": 62, "min": 59, "name": "1pdODuud9g42to6J"}], [{"max": 33, "min": 30, "name": "ZEZeugbWjYbu4i2R"}, {"max": 1, "min": 95, "name": "jm95iv2MYG1nJSMw"}, {"max": 28, "min": 24, "name": "7nZgIDt74wvPPDN2"}], [{"max": 73, "min": 57, "name": "Eo73BWCkihbTUJ5Q"}, {"max": 41, "min": 98, "name": "HufEeisuqkV1jcZC"}, {"max": 49, "min": 7, "name": "xvnahBptaq12BXyV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 4}, "duration": 91, "max_number": 86, "min_number": 6, "player_max_number": 0, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 57, "min": 96, "name": "rbFSZO2biwH2n2rU"}, {"max": 66, "min": 70, "name": "Ilr8tDZgQcO6O5oD"}, {"max": 77, "min": 66, "name": "c90NwzMad5hO9Tag"}], [{"max": 83, "min": 47, "name": "fvpVUP1OoRMkrJYm"}, {"max": 77, "min": 50, "name": "6NWuHbDdRqD6DiOq"}, {"max": 47, "min": 28, "name": "3J7T5tuXEdaZi3b8"}], [{"max": 86, "min": 55, "name": "FgiG74xEdi1bqnaJ"}, {"max": 36, "min": 5, "name": "dEU9ixiKPpBvDDDZ"}, {"max": 2, "min": 5, "name": "4Sw7z2XX5pjEGWL2"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 29}, "duration": 15, "max_number": 78, "min_number": 21, "player_max_number": 4, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 70, "min": 27, "name": "YgeRLPKA2sH5oaZU"}, {"max": 49, "min": 4, "name": "XCLFLXZvDlRyehKW"}, {"max": 50, "min": 82, "name": "yQRoQzYyOKUPmt1W"}], [{"max": 36, "min": 83, "name": "YPn75tGe60kByYnM"}, {"max": 64, "min": 86, "name": "J57G8PNSRjdkYFnq"}, {"max": 83, "min": 54, "name": "UuCs3qTmP1jQv4kN"}], [{"max": 40, "min": 30, "name": "EPaAbnoFpjNtmKy1"}, {"max": 42, "min": 74, "name": "NzWaIKmOkCLrymG2"}, {"max": 52, "min": 40, "name": "W2XMXjwd6cgg1fGO"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 21}, "duration": 92, "max_number": 69, "min_number": 49, "player_max_number": 15, "player_min_number": 51}], "name": "9bkfHk2Jtl9s4JET"}}, "ticket_flexing_selection": "k42XGExcMTxYwE17", "ticket_flexing_selections": [{"selection": "o1q4TLAB0xl7nTVD", "threshold": 14}, {"selection": "dzXOkmn5gdkGXKPP", "threshold": 11}, {"selection": "hqR1IdsMLRSPTSn9", "threshold": 63}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 69, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'IrgKnaTAJ4KHjnAa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'VgG3Zmn0el4AD472' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "3c0rH8XcCg1nDs8R", "players": [{"results": [{"attribute": "Wk7nABF5L9rXFIlG", "value": 0.16599326598306063}, {"attribute": "gYHIaN9JyGcvNFr4", "value": 0.3272353438059159}, {"attribute": "EiBTDA9lNfJJzx5u", "value": 0.6016614910541462}], "user_id": "A0ROIDEq38wcL74V"}, {"results": [{"attribute": "VPhHsDdiLi6Pun84", "value": 0.22088761347660113}, {"attribute": "zRKCv0oZyOedgtzt", "value": 0.6758942178835271}, {"attribute": "jRC8ABFfaVZPKNfL", "value": 0.4552367119059948}], "user_id": "K37NZQVjof5XuFk0"}, {"results": [{"attribute": "SQWXWMsExJubT3tA", "value": 0.5868914206255352}, {"attribute": "8H7WHwkLFs2K4nxt", "value": 0.3829132795489002}, {"attribute": "JVbfZL4jIUSDL2zH", "value": 0.04556491226536219}], "user_id": "0geyPO23u5yEqsdQ"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "WysGIwVi5G7ZoVlN"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ITC6wWmKzG4bsNjg", "client_version": "Kn0BPJkETSOi86r1", "deployment": "2pE2ycR8O0xZfv61", "error_code": 39, "error_message": "mdli7mNVEW81Onxw", "game_mode": "j3UX19cMnGnvmQE2", "is_mock": "BXyRK4tJEPskx6A6", "joinable": false, "match_id": "lXtvKwwJGJO91rSm", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"Tm5FIjd1FNtBGbIm": {}, "6JR5kMROzXO56eRd": {}, "qC4XbSf4RYxyzWbk": {}}, "party_id": "4R4NA8sJ5IRjQHhQ", "party_members": [{"extra_attributes": {"k0bq4YyoSNCntotv": {}, "bprS3f7LCITTbc1q": {}, "5LjQ2oXg1f4eos44": {}}, "user_id": "tiY1W6x9hyFHJ89D"}, {"extra_attributes": {"hYWN2kTf1LzZhHxC": {}, "Q4NXbUBMGfWpzu4q": {}, "PHzR7ULJq2V6wZT5": {}}, "user_id": "5iMdla9U6c44zz2A"}, {"extra_attributes": {"L6EwTABA1rCRsIbK": {}, "2btTtTCP5aC2ZQc8": {}, "8ilW3H9FG8L47Oay": {}}, "user_id": "rbQO1xCCXPQmorts"}], "ticket_created_at": 31, "ticket_id": "FKfSAMc5YHpuc8Rm"}, {"first_ticket_created_at": 82, "party_attributes": {"ua11N0RLryu0fCgW": {}, "3rJ1GChKCTTmLXqR": {}, "5AjwDyh4Q73nAjyw": {}}, "party_id": "V9cwxFVjfyKhSkpJ", "party_members": [{"extra_attributes": {"JtoyuY6g8oTMmulo": {}, "B0gSCVBFLWflKtLe": {}, "6mvZO5Yew5BuIj5v": {}}, "user_id": "29o3NqX6o3y8HZLs"}, {"extra_attributes": {"55yHew41S0LRJItJ": {}, "MP6oFnNPSeUdR1p6": {}, "0AkccC56UFpVBFKj": {}}, "user_id": "YRJeSW6ohpSjTqrb"}, {"extra_attributes": {"riubKbxmEB8IsOJJ": {}, "Ay2XwTzeh4zS8s7V": {}, "Hg5sgi6RBhl462hP": {}}, "user_id": "rE8Ng2caTULudDLt"}], "ticket_created_at": 88, "ticket_id": "KxainJGheVvroDul"}, {"first_ticket_created_at": 75, "party_attributes": {"z0IloQpI8BQmQOgE": {}, "gCr8tN2mzq8Z8pWd": {}, "h4wpXOmZpdD6hMFS": {}}, "party_id": "btqwe7T311rnwUnu", "party_members": [{"extra_attributes": {"GBr3HFz4oIQfdEbS": {}, "xRLB9spxUbf3lV0k": {}, "e3lL2RiN0kHF5Z8N": {}}, "user_id": "mHzT5R5uhnzuWhjF"}, {"extra_attributes": {"hQOVkr26EatBxT1V": {}, "oM9BzTw5zMff0kLv": {}, "5nlw8pV5eQp9l8fr": {}}, "user_id": "kmHuJHyQcDNiQUrA"}, {"extra_attributes": {"HaVABOsmmrkiPVSn": {}, "rWu8Fp91I47gdJ6s": {}, "gDIAy9LfDZmvumxr": {}}, "user_id": "mmRkRePX07p6S6s3"}], "ticket_created_at": 73, "ticket_id": "dGqBta0ybIDYvFkC"}]}, {"matching_parties": [{"first_ticket_created_at": 98, "party_attributes": {"FNItkfkmVmeZ6hey": {}, "5Chi2NvNtP9RDdZy": {}, "WdJRYgynRiPwL30f": {}}, "party_id": "IseVXoo2C0WvTiCd", "party_members": [{"extra_attributes": {"ZdjktjbfIlzNq2RV": {}, "oMm8fd97bBWEMURV": {}, "PckZ2YfnLAxllPtS": {}}, "user_id": "NEUplcvBsdQXko0Z"}, {"extra_attributes": {"dLEArevBvo7B5iVT": {}, "fdVLCNPmKdwTGMGx": {}, "CNwckgYLtiNMm08Q": {}}, "user_id": "sxSbZ98o2FD1bndv"}, {"extra_attributes": {"E1zKHPU87IAUZBG9": {}, "gzkOjKyXAGXOl5fR": {}, "aQmBZWYDItRgz7nf": {}}, "user_id": "vXreGYKQEN73tIvS"}], "ticket_created_at": 62, "ticket_id": "RwiJRb8ahBnpTP7N"}, {"first_ticket_created_at": 98, "party_attributes": {"qjsa4VptF9jucsTT": {}, "Qqa3EhRJJ86Dz60v": {}, "R05qBXbpq2vnrZmn": {}}, "party_id": "9LDZu3T5A7UZnmG6", "party_members": [{"extra_attributes": {"jo4ZKmgzaByY6L8z": {}, "USpkLUvmdchUnPrT": {}, "bWGfx2Sj5mWoTe5f": {}}, "user_id": "Kj8mUXiaM71uMQXl"}, {"extra_attributes": {"QFm4cYDV0CjeBIrm": {}, "ln8DyyqS2w6p7a64": {}, "bBxqjGEKds6RZe0D": {}}, "user_id": "1phtLq6asvSWMKVM"}, {"extra_attributes": {"UcvyWmrHV9bE4hPt": {}, "ShVQjRvNHRXb0MZQ": {}, "8ucPgEQsoyZmtRTH": {}}, "user_id": "Wy0xGsD4TXWpACwo"}], "ticket_created_at": 43, "ticket_id": "vDNIrjEmD4IAAhXs"}, {"first_ticket_created_at": 9, "party_attributes": {"HzOMZfOTAO4T8H9k": {}, "jKVxoV1Lsjq1xxNc": {}, "w4C123R5uDRGBvWu": {}}, "party_id": "PtmotuKB6Zk2C4N1", "party_members": [{"extra_attributes": {"qtcYiw5fQDMYJbRW": {}, "QhqW2eIvY8BxY82A": {}, "XsFHIoa13IsxB8Bz": {}}, "user_id": "HVE7lxvDycMjZX9G"}, {"extra_attributes": {"ktbdEtaqHZsabZ0q": {}, "7E5ETayFtvPSR1x2": {}, "HeupIIllDtp5MHO3": {}}, "user_id": "JLBj3pf8KLfO5w1G"}, {"extra_attributes": {"5NGo10uiUDNnApqd": {}, "3BySAZ7fWaeRZ4LB": {}, "jTC3GkIHchzVN6H0": {}}, "user_id": "Vz8wwljOUak6UBq0"}], "ticket_created_at": 37, "ticket_id": "As2nqQ1LxyRt28IH"}]}, {"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"eH6AGeg5SmFK3XW9": {}, "yO0ZBrVpFy8WwT4H": {}, "CXKXVovgxybtXKle": {}}, "party_id": "bBij38urQIbhawyK", "party_members": [{"extra_attributes": {"PcEWbgDtSIF1JGnM": {}, "daBj1qRT30LKtkBW": {}, "r1ZKCUrP2eayjFJz": {}}, "user_id": "gMUUPOtqOKE2mYNP"}, {"extra_attributes": {"vPtYvoNt7Gb3asyw": {}, "3WM0Kh7qKqQlqM7x": {}, "IpF0catDkDb4fU4M": {}}, "user_id": "kekj2Mn872uPucJX"}, {"extra_attributes": {"MQ5hszGw7XVoaqbG": {}, "mNSwmrvHYsVQakWh": {}, "PKgm08BEf1mM0jGl": {}}, "user_id": "T0sCKyy3uPB28Xpl"}], "ticket_created_at": 78, "ticket_id": "sepK3JmAIbkKcQS0"}, {"first_ticket_created_at": 24, "party_attributes": {"hBKvzvGh7duglwuI": {}, "oT259iVzpOKWXTlA": {}, "lSM0dG7b0nFVDvjJ": {}}, "party_id": "36bfmCvn6PlcVtVp", "party_members": [{"extra_attributes": {"moZnjgRits9vRIF1": {}, "Ob1FIm3tq3o18NtZ": {}, "jEjmMncKzEHu8YEv": {}}, "user_id": "6ieA09QFBVvy4zRj"}, {"extra_attributes": {"mZW8JyLgudHneE9W": {}, "UwkrPIrACJPjI5Le": {}, "0dOX0k4q52HReevX": {}}, "user_id": "JBGhplmWpGRAlGN7"}, {"extra_attributes": {"Zn6x1AS2thjJJiDL": {}, "PCvQ29SyQems0LlN": {}, "afRIST5CNowFJrkz": {}}, "user_id": "t4DtJNti64rohlUm"}], "ticket_created_at": 4, "ticket_id": "9So2lFyq3wQu8U6O"}, {"first_ticket_created_at": 94, "party_attributes": {"xyQKbR8Jy9lwG66D": {}, "H31BW5kRye2wvGzj": {}, "yaqnW7R9q624y5Tb": {}}, "party_id": "WLIioyAZxulWSbEF", "party_members": [{"extra_attributes": {"f6BYKjrXQcptofnW": {}, "6By2pGg33qTkyqsd": {}, "LFkYmVuVOCxe93ly": {}}, "user_id": "zzpSVqfuAmEeUUTL"}, {"extra_attributes": {"SOJpCcSdu5XGeQVR": {}, "2q9hcSFJ6X1yQ64x": {}, "3u51oOAAyVku5tZu": {}}, "user_id": "bVDZPeUs3ufg3UAS"}, {"extra_attributes": {"btnZ2tnqOB5Ub9XV": {}, "bJXPj2OrmiXxDtkB": {}, "eTDEQvsmGRivyXWB": {}}, "user_id": "3n4Qfe38G7L43MAm"}], "ticket_created_at": 37, "ticket_id": "HtPG0XVu6IUV3naI"}]}], "namespace": "e4i0kT8riF9pjut4", "party_attributes": {"xoFEgR4hbqOBXYg8": {}, "040VGpaa3fvlDlqm": {}, "jh9gsTjOSfItFzK8": {}}, "party_id": "841T8R9qNRZSTpiT", "queued_at": 6, "region": "GbF0SGLIJE8iA5CY", "server_name": "iWmtarKv5S5EU340", "status": "zctoEMEOAnK8OCKX", "ticket_id": "WfKYz9yzSx7QXejK", "ticket_ids": ["vdnAILQhVfbv01wO", "QEWHJH50ivqCePXK", "uGoqsRJ1Q002SG74"], "updated_at": "1992-01-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "pRDEJVTn4App3NTR"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'FGFDA75mfZW8pfKL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 88, "userID": "VbmH3R8DUu2vqixt", "weight": 0.29889867473720755}' \
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
    --matchIDs 'jOF813IOxFmL6xBJ' \
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
    --strategy 'dKsc6EYWxSrP5RHH' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'TIbr5XGvXqnQAqLP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Wr7JnsbhxBLhhDqX' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "e9ei7RdMKtXx7VAc", "description": "HFOZXVEM9IfuUpQe", "findMatchTimeoutSeconds": 40, "joinable": true, "max_delay_ms": 30, "region_expansion_range_ms": 7, "region_expansion_rate_ms": 77, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 89, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 55, "min": 45, "name": "jmmd870Fqcvtr40P"}, {"max": 64, "min": 57, "name": "Oy2soLTpZkBzSqt7"}, {"max": 22, "min": 65, "name": "0F2qnDSgLna9KkDB"}], [{"max": 53, "min": 29, "name": "HyvEkhP0bFIeSmAT"}, {"max": 42, "min": 99, "name": "JAuyHCFBhkLQkjWB"}, {"max": 26, "min": 57, "name": "siXp7ykwD3R9DOap"}], [{"max": 93, "min": 11, "name": "banwE9cfipswYQOO"}, {"max": 18, "min": 71, "name": "OcOtMSYlFgLuAZNx"}, {"max": 2, "min": 14, "name": "zfQOvCWRHG0ax5i3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 40}, "maxNumber": 68, "minNumber": 69, "playerMaxNumber": 47, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 99, "min": 41, "name": "wEA8FgiciTFHckJv"}, {"max": 94, "min": 99, "name": "Ktk5JFSMQakiowyV"}, {"max": 54, "min": 18, "name": "H33pg3ASmidhMvN5"}], [{"max": 47, "min": 82, "name": "FyPLWLS1UQ8qEYru"}, {"max": 59, "min": 33, "name": "q7L72wgPmyjktHFv"}, {"max": 3, "min": 48, "name": "R2sKykL59DX0j9xv"}], [{"max": 11, "min": 33, "name": "C2Jl90NV2oay5sO2"}, {"max": 48, "min": 19, "name": "ZOiLzVxQarnoOyRq"}, {"max": 60, "min": 43, "name": "lWFSZ6AaAwypHlch"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 31}, "duration": 89, "max_number": 68, "min_number": 82, "player_max_number": 7, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 56, "min": 49, "name": "2CxII6bRKNZ22RuO"}, {"max": 86, "min": 100, "name": "YvBevmGYQN0A8Xv9"}, {"max": 22, "min": 89, "name": "fiKeqExGHdtK7ynK"}], [{"max": 51, "min": 11, "name": "sYe6OFhvvHLJ1MBf"}, {"max": 66, "min": 26, "name": "jwcBnA5wXGh5CRrB"}, {"max": 22, "min": 23, "name": "fTtYvsN6bhxrLrwB"}], [{"max": 38, "min": 30, "name": "OEISZI1VNBMopkLx"}, {"max": 14, "min": 1, "name": "GH9z5877baMoWrew"}, {"max": 52, "min": 53, "name": "XJVVEyVeCPBhcM2u"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 51}, "duration": 98, "max_number": 36, "min_number": 89, "player_max_number": 84, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 15, "min": 35, "name": "L5Q154Pi5hBppPVv"}, {"max": 28, "min": 73, "name": "1vvIAQts5dUIR8Vt"}, {"max": 3, "min": 90, "name": "oGEyWljnr1GBniuy"}], [{"max": 68, "min": 42, "name": "E4UxZkc8GbLn6oFR"}, {"max": 37, "min": 31, "name": "WTbP68qheUnATJg2"}, {"max": 5, "min": 71, "name": "RIfgC4UHXAvdL7AC"}], [{"max": 84, "min": 11, "name": "GWiaohsOzI0AusZD"}, {"max": 67, "min": 25, "name": "wz5cJVVRHoItRSqs"}, {"max": 24, "min": 64, "name": "wNnyqUOCuoxpgAPk"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 40}, "duration": 11, "max_number": 69, "min_number": 30, "player_max_number": 72, "player_min_number": 46}], "batch_size": 50, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 88, "flex_flat_step_range": 75, "flex_immunity_count": 2, "flex_range_max": 69, "flex_rate_ms": 28, "flex_step_max": 92, "force_authority_match": false, "initial_step_range": 92, "mmr_max": 56, "mmr_mean": 30, "mmr_min": 51, "mmr_std_dev": 11, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "rzcFvqda5Hv0brs0", "criteria": "2rE8FPa4KBDgW5Tn", "duration": 43, "reference": 0.0002638718085413716}, {"attribute": "JwbGLUEQnGvguwkR", "criteria": "GzO3OqTTyC06GB6M", "duration": 61, "reference": 0.37266756304871784}, {"attribute": "CIuauavuZf5U7peK", "criteria": "98ZB6jgBuLrjdyec", "duration": 37, "reference": 0.6813099911324443}], "match_options": {"options": [{"name": "rA3G61QpzrNYfkeT", "type": "ArS0JKGO7ZAQoaEn"}, {"name": "6ACYzLwSi1w4rb75", "type": "n3GykEDkhYASlAtu"}, {"name": "5KxTg7oJ6L5NRFzK", "type": "qIIiIO8qO5ceI5NM"}]}, "matchingRules": [{"attribute": "BsYarDYBPgzGttuu", "criteria": "2Ql0EgoaarCjuZjR", "reference": 0.6141435049227039}, {"attribute": "PMGGzm6oUEI73fi5", "criteria": "aqamkDkChFxOrLLq", "reference": 0.036196314673612506}, {"attribute": "L3JE8snaXY0LLSco", "criteria": "OuXlcatc3U8O4DVS", "reference": 0.8549896686814419}], "sort_ticket": {"search_result": "cGPxZjjv1wSDySqU", "ticket_queue": "IrfAHq528s7JogAY"}, "sort_tickets": [{"search_result": "S3pCMbY6wtJ73vOp", "threshold": 97, "ticket_queue": "NQGLdaDSkMgLEDkz"}, {"search_result": "XDy2pVbvS7XrV8LI", "threshold": 87, "ticket_queue": "pl9QmJ7ZNFObL8yw"}, {"search_result": "77R0YiDCmgFihLdX", "threshold": 58, "ticket_queue": "PNqShfG7u7eXe7Ir"}], "sub_game_modes": {}, "ticket_flexing_selection": "LZzJ6U2U9CjcpmHl", "ticket_flexing_selections": [{"selection": "P1qjzytijpM9EoAL", "threshold": 61}, {"selection": "Az6WVHtaES0U3n9A", "threshold": 63}, {"selection": "tY51JauqyoXSAEgh", "threshold": 27}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 71, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'kLStKqCLOv1U76Nk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'hON0Kw4BWLlsQjGr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'lTUJbDasfdcsswyG' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 11}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'LhxlBrJGgfJCFvJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'SQup0Vl1rT5TimgD' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "sJSiHjmKKoHxUMqz", "count": 35, "mmrMax": 0.7433298394307994, "mmrMean": 0.3361666021084442, "mmrMin": 0.3092791828442979, "mmrStdDev": 0.9430886775430498}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'WgRvSyLr7Lxfkpkx' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 5, "party_attributes": {"3IA0qcjCpmhiNz1q": {}, "1XGfsszV9AuFuWan": {}, "kMjvQqQB1Xh1FqTn": {}}, "party_id": "sM0QBpBchlTIys6z", "party_members": [{"extra_attributes": {"7tryLGQg0BsdCQbH": {}, "vw3gQlaS9OJDY8Tn": {}, "knFIoEuDbF0Xrgkc": {}}, "user_id": "6MCFjKteGyHhZd83"}, {"extra_attributes": {"UlDteQdaPyxfwh5V": {}, "X0ez4YJRJAVgmScY": {}, "RYmAH4mt7OBmIvEW": {}}, "user_id": "6fHtcNQuHpzsse7p"}, {"extra_attributes": {"57IGeqD4ovODytS2": {}, "wNG9Ub7AH9OZ9yV1": {}, "PSJmRMKfCcSdCtwF": {}}, "user_id": "k2r9Xj3BPmUZF6Fl"}], "ticket_created_at": 12, "ticket_id": "gS5UquLaXN8dgJHD"}, {"first_ticket_created_at": 67, "party_attributes": {"RY8xT8xYRIULu6dN": {}, "ymyjvCdfhhPOHFlN": {}, "xUoCxiebb5OBgffz": {}}, "party_id": "0ZD3c1lzohpDx4GP", "party_members": [{"extra_attributes": {"XaHE7b85ps9PcW43": {}, "3dilmDQrGim2SR1p": {}, "K1sxfLkhR8oLufWX": {}}, "user_id": "UfN7xPvAr62FqX0L"}, {"extra_attributes": {"txHIBYO0miru1YUp": {}, "hNaIs8H1btmPGJr3": {}, "BQ5GemGyh4RZlWSG": {}}, "user_id": "sJrXormLYbg2Idop"}, {"extra_attributes": {"eH3H6SoC2OPsA5jD": {}, "0Xh5U8GXjKr72h2a": {}, "FhDVsnVWrdOqPAu8": {}}, "user_id": "9ok4Ar9IsgTNlxcA"}], "ticket_created_at": 77, "ticket_id": "sesfDQrbbkrTe6WI"}, {"first_ticket_created_at": 50, "party_attributes": {"xkuIqM9qUZgYCmgd": {}, "vRrdZdCRVJZZ6BbY": {}, "jb4OvvWjqAx1EPQC": {}}, "party_id": "eYZVLAltKvRcUVqs", "party_members": [{"extra_attributes": {"9sxZ0Z6HFSpqy6JG": {}, "PBAvRlNpCivyLo3F": {}, "NW4X5QJ0jXu0q2DE": {}}, "user_id": "3y8w0sxvUugoIT0g"}, {"extra_attributes": {"HsercIhsTBVSs1QN": {}, "N0qeGZrQdDnRnatu": {}, "oYkZo0JMmSXO3YWE": {}}, "user_id": "nGCmGRtrDYhg0KnN"}, {"extra_attributes": {"HJvA12NGQh32oAw3": {}, "aJG7vIWFUbUp4zlh": {}, "Q62cvYLiwvlswxik": {}}, "user_id": "mBsryRKEVtKFKnEk"}], "ticket_created_at": 82, "ticket_id": "vZq5MRSNU8YcVDNU"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'IAIzlPBYVv7Ow08i' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 31}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '5pGXdpF9CzfMC6ua' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '5hlNNMXKk56xKIun' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'qGXCCxgO9Qp2NRWV' \
    --matchID 'RHh2aCz4XjokFLJb' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["aB8tdm6pb49PC77E", "unyTX2VRIq54rRm1", "fBRE6cCdajDPqPHf"], "party_id": "r6tAMJlyfHf2p8Rs", "user_id": "24euxTnBFSBizzMs"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'mDi0cCnlKbBpPJE6' \
    --matchID 'K4e2e5UJukgpix7W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '8v1Pg1DvXYWE6vxX' \
    --matchID 'xj3iFdFXpJgd1aQw' \
    --namespace $AB_NAMESPACE \
    --userID 'VHIceYmIZgpIS0MM' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'TUr6FAQbdcVJrpo4' \
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
    --channelName 'eGxRl2Q6oEGZlK4L' \
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