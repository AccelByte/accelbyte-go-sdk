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
    --offset '65' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "KtSBQlc5ZOS11HZE", "description": "etsv9jrK0Zpu3w88", "find_match_timeout_seconds": 26, "game_mode": "RJWaPTYU6SOn3ZDC", "joinable": false, "max_delay_ms": 32, "region_expansion_range_ms": 4, "region_expansion_rate_ms": 41, "region_latency_initial_range_ms": 9, "region_latency_max_ms": 5, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 94, "name": "WckD0BZoIu9DilNn"}, {"max": 96, "min": 2, "name": "3uGWQvpQs6OTNWKQ"}, {"max": 10, "min": 31, "name": "mTRBvh9BZ87T6sDV"}], [{"max": 37, "min": 38, "name": "NzTFaWAwxH614YjL"}, {"max": 6, "min": 91, "name": "ZvmyZQMQnmgadeuS"}, {"max": 32, "min": 50, "name": "dCFnryqjTMo7EFBp"}], [{"max": 94, "min": 62, "name": "uzIOdg9wJzl5QPqj"}, {"max": 7, "min": 13, "name": "uJRVzpHtdGnPXd9n"}, {"max": 97, "min": 89, "name": "Jjuu43aDD7VrVKZJ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 8}, "max_number": 36, "min_number": 18, "player_max_number": 63, "player_min_number": 73}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 95, "min": 20, "name": "WzNI76YofPAW9xuR"}, {"max": 24, "min": 99, "name": "ZuF23zf225IHEPmf"}, {"max": 39, "min": 44, "name": "H0VVeMK22lVhemEk"}], [{"max": 91, "min": 44, "name": "tM1lcDCfBRFfoq9C"}, {"max": 65, "min": 85, "name": "NmS1ccfgFjdDvKGU"}, {"max": 94, "min": 5, "name": "NIe3KQSWdx5MCqjP"}], [{"max": 35, "min": 49, "name": "ifBzRkLEHbTpRO01"}, {"max": 28, "min": 28, "name": "PTYUEoSM92EwCqf8"}, {"max": 17, "min": 19, "name": "ffmnvCsc0sJ7km1l"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 70}, "duration": 65, "max_number": 12, "min_number": 28, "player_max_number": 82, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 51, "min": 29, "name": "yN8Ip5VADIuCDgcV"}, {"max": 21, "min": 98, "name": "YLA1txcrSrW3EUJ5"}, {"max": 44, "min": 58, "name": "qHn5mlccejZYtHO9"}], [{"max": 52, "min": 37, "name": "jQoCIvI5jpw29LnC"}, {"max": 1, "min": 32, "name": "p4fdD5AC0So6UJ9r"}, {"max": 21, "min": 27, "name": "JgKstVXbmWBpx151"}], [{"max": 11, "min": 98, "name": "C37aoPiWd25JwrJp"}, {"max": 47, "min": 87, "name": "yCVpdoE9zjkRB8f1"}, {"max": 27, "min": 33, "name": "bL01bZmmLVVqq5Nc"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 36}, "duration": 27, "max_number": 73, "min_number": 41, "player_max_number": 74, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 55, "min": 13, "name": "uZRLCoZfF9qcWzwj"}, {"max": 5, "min": 7, "name": "xGABPmxCASpF9GrI"}, {"max": 86, "min": 61, "name": "vHyhNWd27JITrw08"}], [{"max": 27, "min": 24, "name": "nyfTm2jF6pZKXDxS"}, {"max": 63, "min": 39, "name": "qiMiVd96rh0O5XT0"}, {"max": 38, "min": 6, "name": "tz8JuusHDV5XwWQe"}], [{"max": 21, "min": 96, "name": "d9zTaHv7eaNcYBKe"}, {"max": 93, "min": 20, "name": "rAAZS42R7c0Vm3Ep"}, {"max": 100, "min": 33, "name": "F5UrqFsWbg0YSTtW"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 29}, "duration": 73, "max_number": 72, "min_number": 39, "player_max_number": 14, "player_min_number": 40}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 69, "flex_flat_step_range": 74, "flex_immunity_count": 87, "flex_range_max": 40, "flex_rate_ms": 28, "flex_step_max": 81, "force_authority_match": false, "initial_step_range": 9, "mmr_max": 33, "mmr_mean": 0, "mmr_min": 50, "mmr_std_dev": 35, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "ENqBdialoNUG50dx", "criteria": "Ld4cUsrDr21tfWC3", "duration": 66, "reference": 0.7977190430187691}, {"attribute": "YvWudw7Crx2X3mmH", "criteria": "L7WsvCNGk30kExlP", "duration": 36, "reference": 0.047401634695471206}, {"attribute": "o7wb8k43HU0EpJJ6", "criteria": "Af23vWuscSvg4qzf", "duration": 1, "reference": 0.36609461047779357}], "match_options": {"options": [{"name": "edkwxcrToA2uCgJJ", "type": "G01sekj8j0RX4BJ3"}, {"name": "pDYErMlLqtZHYM0z", "type": "wVh3tMueSaWsvz1L"}, {"name": "SI578hqFLkjWwbqa", "type": "Wy3nGOxSUhXFQF6R"}]}, "matching_rule": [{"attribute": "7wzwVrJ0yxZUeD3v", "criteria": "evEs4twPR0vw41oi", "reference": 0.8081608749453832}, {"attribute": "miJRAeXj3hRoM5ou", "criteria": "L8IB5hvJCqfkj5V4", "reference": 0.21611817697357527}, {"attribute": "slZHTeC5TdMcAFuP", "criteria": "oUKzASYbs3W8crhD", "reference": 0.008665060637779054}], "rebalance_enable": false, "sub_game_modes": {"OJ3F9B15kUgtuOj5": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 30, "name": "Eh7bpM9LStDBbKLq"}, {"max": 59, "min": 22, "name": "mZO4GRKCPgAt9niQ"}, {"max": 85, "min": 74, "name": "ZKFnii2mxlLKnpfZ"}], [{"max": 100, "min": 67, "name": "KTynZa8JrxRiNkWK"}, {"max": 60, "min": 91, "name": "AhXgjvRajJ7j4UgT"}, {"max": 77, "min": 52, "name": "Mbv9lFmK9YwlkHi3"}], [{"max": 87, "min": 76, "name": "MxQ1Gw6SolgQS465"}, {"max": 64, "min": 57, "name": "6VZaFapnurS9lFNC"}, {"max": 7, "min": 64, "name": "bOxaWyOjqgGPNKov"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 15}, "max_number": 75, "min_number": 93, "player_max_number": 80, "player_min_number": 43}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 26, "name": "5uRKsZXdOm0UqhWq"}, {"max": 75, "min": 100, "name": "R0KMePbSycROsuBA"}, {"max": 93, "min": 33, "name": "dLGyP3X5zO2Dar5i"}], [{"max": 97, "min": 20, "name": "6afEhh0UNDSj8aHI"}, {"max": 0, "min": 56, "name": "QpLhECbTw2XnefXD"}, {"max": 43, "min": 84, "name": "XZkHQXEQ1kIldYHB"}], [{"max": 58, "min": 99, "name": "TJvYq2NSk9IBv2sK"}, {"max": 99, "min": 51, "name": "ZQB2PqzoSkGwdpgG"}, {"max": 78, "min": 36, "name": "Pkc9Me4iKWLVVQe6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 26}, "duration": 69, "max_number": 21, "min_number": 57, "player_max_number": 94, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 63, "min": 68, "name": "g0aeVcfC1tZRtsjB"}, {"max": 45, "min": 57, "name": "SFm7dT237lTfT4R0"}, {"max": 5, "min": 15, "name": "13PkcSWDfQJZOBDX"}], [{"max": 86, "min": 24, "name": "5ifNo7OOtVumctfN"}, {"max": 97, "min": 71, "name": "mqegtS6lDI2676Xp"}, {"max": 8, "min": 14, "name": "OXDUo6gazKdgMRDu"}], [{"max": 60, "min": 41, "name": "EbeybynxMy7xzSHu"}, {"max": 26, "min": 72, "name": "j7rZQsUgWg2RCBCy"}, {"max": 63, "min": 24, "name": "Jt92O2FBIOCd9fS7"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 8}, "duration": 10, "max_number": 45, "min_number": 23, "player_max_number": 43, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 80, "min": 47, "name": "ltVFgupsgEvo9R8l"}, {"max": 46, "min": 90, "name": "G707jvfNA008kGnB"}, {"max": 26, "min": 31, "name": "qP8jpiMDKG0lp27c"}], [{"max": 12, "min": 66, "name": "hwdO4XZUQCfM0C2f"}, {"max": 34, "min": 15, "name": "OdLxrcJYSn2jyQbG"}, {"max": 89, "min": 35, "name": "cQCHHY5tb1g36fGL"}], [{"max": 35, "min": 20, "name": "f6WQYsYJQe5ESB4R"}, {"max": 57, "min": 56, "name": "dGAS4Fza4OvIDqKP"}, {"max": 78, "min": 13, "name": "WRuIoFW05kioQO5B"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 3}, "duration": 56, "max_number": 50, "min_number": 66, "player_max_number": 66, "player_min_number": 36}], "name": "H2VFIIMMSUME74jD"}, "X0zOcnyBFLRTsO5P": {"alliance": {"combination": {"alliances": [[{"max": 41, "min": 44, "name": "2NYeLzyW0q4yJbP0"}, {"max": 25, "min": 99, "name": "H7Fds2Y1H2z44SX6"}, {"max": 93, "min": 61, "name": "qpmbZMpOHfFsGmJQ"}], [{"max": 53, "min": 97, "name": "kFX1bUf0YaevklDv"}, {"max": 40, "min": 79, "name": "4l0MoaBEcoeTDWu3"}, {"max": 30, "min": 95, "name": "E2IUEl4haubKavfI"}], [{"max": 66, "min": 92, "name": "ekzZa9qoxqQA6CoN"}, {"max": 30, "min": 32, "name": "RYlVMfNgELjff0Ag"}, {"max": 38, "min": 93, "name": "qKnPcAyAcTLm2WKh"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 81}, "max_number": 57, "min_number": 29, "player_max_number": 67, "player_min_number": 78}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 40, "min": 76, "name": "7POWcavYPopHdqpw"}, {"max": 32, "min": 55, "name": "Oe9frj7SM6r9YOGa"}, {"max": 70, "min": 7, "name": "lDNMFCgujrR1aWM9"}], [{"max": 0, "min": 90, "name": "PHsfPcCmg2xMLxl2"}, {"max": 97, "min": 51, "name": "pgP1Kx3mC8wmXTkY"}, {"max": 93, "min": 79, "name": "3EtPQPgQUbXwyZcF"}], [{"max": 64, "min": 91, "name": "V9mxonCOI67uHfc1"}, {"max": 35, "min": 29, "name": "8lUo8C8LXslmnBFR"}, {"max": 88, "min": 25, "name": "q8bhNaXEGHT8J99O"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 8}, "duration": 23, "max_number": 16, "min_number": 16, "player_max_number": 98, "player_min_number": 61}, {"combination": {"alliances": [[{"max": 68, "min": 34, "name": "6C7MZapun0CRGYnN"}, {"max": 95, "min": 8, "name": "55bkVls3KBOVvGfD"}, {"max": 64, "min": 41, "name": "knFGqN1wXkStet9q"}], [{"max": 21, "min": 47, "name": "2OFomRqFlZMda8R0"}, {"max": 70, "min": 49, "name": "X2yJp0FO2EFKEQDF"}, {"max": 96, "min": 42, "name": "01QqqpwtO0ioGP5x"}], [{"max": 54, "min": 46, "name": "JdtmhlCD7ok1no9H"}, {"max": 33, "min": 24, "name": "ck09KKu8BLu1sD4L"}, {"max": 97, "min": 23, "name": "Iji3trmXHTtCLbZR"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 69}, "duration": 81, "max_number": 92, "min_number": 46, "player_max_number": 50, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 47, "min": 95, "name": "DA5FGJcJ9XATgCPl"}, {"max": 93, "min": 61, "name": "v3FjxUVyWRG0VLXr"}, {"max": 60, "min": 59, "name": "RMKed4FyW2PojXjg"}], [{"max": 23, "min": 84, "name": "59thk8Qlh4EkllZt"}, {"max": 21, "min": 61, "name": "fZxwJv60VJRPPv9B"}, {"max": 35, "min": 11, "name": "LVsZBW8eQ0UEY9Ql"}], [{"max": 89, "min": 28, "name": "4AjlnBhmqED9JogU"}, {"max": 87, "min": 9, "name": "ZTXDcQxTZ557lWE3"}, {"max": 78, "min": 17, "name": "94PIhuHL6cZG20Bs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 66}, "duration": 37, "max_number": 97, "min_number": 6, "player_max_number": 36, "player_min_number": 39}], "name": "OtCJkAlHFTSe4HiX"}, "npjtl721TYfW0wAq": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 32, "name": "OCeZYW8sPpTVOkuv"}, {"max": 6, "min": 100, "name": "aJix4D2Yl2cMn5jf"}, {"max": 61, "min": 17, "name": "5ikdBckuHKwpoa78"}], [{"max": 19, "min": 66, "name": "oweTNuZZudPaiTBp"}, {"max": 17, "min": 90, "name": "qTJynXwY2Fh6l7zo"}, {"max": 64, "min": 25, "name": "ev8eCaNokldbmO6n"}], [{"max": 97, "min": 57, "name": "7KP9PG2BYiqST14E"}, {"max": 82, "min": 44, "name": "HxERBZ7d5yBemD1T"}, {"max": 32, "min": 52, "name": "FZVUOPMEUBfaalm2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 83}, "max_number": 8, "min_number": 86, "player_max_number": 40, "player_min_number": 28}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 52, "min": 50, "name": "u7ittFJxcd1w5gNI"}, {"max": 44, "min": 12, "name": "wjRVhbttSVMMrJ8K"}, {"max": 99, "min": 23, "name": "Ki8CKsEoX2QaUeLa"}], [{"max": 53, "min": 31, "name": "HqhDlH9a0LZIizBX"}, {"max": 45, "min": 92, "name": "K9Sp1uEtx4v5X48x"}, {"max": 86, "min": 1, "name": "ZqcJ87ug4xJdclKx"}], [{"max": 74, "min": 30, "name": "6raBoInmoOA2F3p8"}, {"max": 39, "min": 44, "name": "AW0y3Yja2NUKw8D9"}, {"max": 80, "min": 98, "name": "a1NtJ6W3i2QaapBV"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 77}, "duration": 21, "max_number": 80, "min_number": 18, "player_max_number": 66, "player_min_number": 98}, {"combination": {"alliances": [[{"max": 49, "min": 55, "name": "LbNy6kEtCIEXl9kQ"}, {"max": 56, "min": 36, "name": "K9B5ffcAscwTu9J4"}, {"max": 64, "min": 41, "name": "4YZTTqxDg7q1kD8P"}], [{"max": 75, "min": 84, "name": "oIP1gdFSotewOi1A"}, {"max": 82, "min": 32, "name": "3sMdsFT3kSJZcfpw"}, {"max": 48, "min": 73, "name": "Mse1KDrJEnpehWB7"}], [{"max": 49, "min": 38, "name": "WfCnKZ71wOJkbHZS"}, {"max": 95, "min": 80, "name": "8Q1xnQUImb5Rnids"}, {"max": 95, "min": 76, "name": "vrkfhOdNNFegmX3E"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 59}, "duration": 39, "max_number": 95, "min_number": 87, "player_max_number": 51, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 20, "min": 91, "name": "0HLPHxcW8X8fBC6t"}, {"max": 72, "min": 99, "name": "CyZcCFgyJG32XTdD"}, {"max": 38, "min": 97, "name": "DMl13Le3wZERooxq"}], [{"max": 73, "min": 75, "name": "MHWlVumogVh7U5xB"}, {"max": 22, "min": 85, "name": "2MJzcAsIFw2QHagh"}, {"max": 96, "min": 28, "name": "5cQsrSBslo4JQhgA"}], [{"max": 1, "min": 24, "name": "MPfDD3oscgSSwYd0"}, {"max": 91, "min": 37, "name": "P72WBGD4u8rGPWJx"}, {"max": 22, "min": 62, "name": "5bN4pJFOAEa7KxpN"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 44}, "duration": 59, "max_number": 70, "min_number": 4, "player_max_number": 28, "player_min_number": 3}], "name": "l0SEaFJivIZ75bdo"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 52, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'KsEgLmSaHDVMO14L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'lteYEp1vxToEyNHL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "ixddzt7SAeHoBXOb", "players": [{"results": [{"attribute": "57bR0F8KQgmphJc3", "value": 0.41837285293923543}, {"attribute": "mEU2cTapCWDTOqoW", "value": 0.12892269054316408}, {"attribute": "XnpZ6ckmApcYbkJk", "value": 0.0862143067678226}], "user_id": "StH6IwfKA6jmPaOj"}, {"results": [{"attribute": "jtAUtbpWm5P96cDW", "value": 0.5027861560239382}, {"attribute": "MxQW5kCubrVA152o", "value": 0.6126166052094579}, {"attribute": "nqH48o5g4f0cVq0p", "value": 0.1612760965095038}], "user_id": "Ht5gDkcSUSGnTAR4"}, {"results": [{"attribute": "VupETNbOLUr9KqU1", "value": 0.9417828672025452}, {"attribute": "RtYylThZxZTJVLSe", "value": 0.38939785746094235}, {"attribute": "kvdkhkgNqVH9P95E", "value": 0.20263070513680537}], "user_id": "WkG0bqJN0lO1D62h"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5fSoO9TFAFlLRNvY"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "ymnhO0oNQOQwsoHJ", "client_version": "RBMSD7sp3edOQMfd", "deployment": "wunTcOtm79VkieX8", "error_code": 81, "error_message": "DIYYCMDxwQeSeXXn", "game_mode": "xQs3VS6EBCu18v47", "is_mock": "5My7dhyj2l33XgBE", "joinable": true, "match_id": "l3RX1B4tLSxokM0c", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"TCv5akwcHXu5e495": {}, "ARBDWlL5G9g0noIT": {}, "5jYII50ojWNVHLRP": {}}, "party_id": "DXhkttRua5LOkCCS", "party_members": [{"extra_attributes": {"jRcaywVsn44RaQ3N": {}, "Qdj1H37u0iEe2QwO": {}, "my5gMIzIDnu676ZA": {}}, "user_id": "7f7LuvWOZQVq3bFB"}, {"extra_attributes": {"xsdRX1x2Vh91eKH2": {}, "LpqsEMcEU8qRSUUs": {}, "Pc9Qp1vZayTVgQHw": {}}, "user_id": "2nVIWKCNknlY44tY"}, {"extra_attributes": {"SFFiDM8O8jxULTit": {}, "A3rsouWojNDBFipY": {}, "9uGNN9Bwmelxku5h": {}}, "user_id": "wQaYBZMKI9n7TvlH"}], "ticket_created_at": 91, "ticket_id": "PRKtpxfS9RbFdR8v"}, {"first_ticket_created_at": 55, "party_attributes": {"r280zTGsQjleTgAQ": {}, "byBz7wWc8vQuNOCl": {}, "ACGIOApPv9NY6gd7": {}}, "party_id": "ACIyOMI4OG6A4Pu1", "party_members": [{"extra_attributes": {"KJM8qPmmsUeOocO6": {}, "fbAo9E8VdGQbyahM": {}, "YDPnxKdKPwqQqbUi": {}}, "user_id": "12xxCa0nwPThuC1A"}, {"extra_attributes": {"rvgF5tog7Xsad9UP": {}, "X6nknXhHgCJq6yXb": {}, "SxvNiUB2TFLurWGS": {}}, "user_id": "YnonZiNS1s1ljk8n"}, {"extra_attributes": {"luHen8OV4Ly1Q6gK": {}, "JGgMw6AYn7Gi312V": {}, "fU3hRbtOBJCYUfCN": {}}, "user_id": "nRwf9GjRfbCMQz4N"}], "ticket_created_at": 30, "ticket_id": "GGviAjRUrosxfr5L"}, {"first_ticket_created_at": 0, "party_attributes": {"fj2fRRgnFlhwWUVy": {}, "BbpE1HU9SE143cgc": {}, "Fsst6M3ospuJlLxh": {}}, "party_id": "yHlOgQMCTAbnqV8w", "party_members": [{"extra_attributes": {"kCcsrOLhfEZZzKg4": {}, "VTmutcUJTEn7pcNU": {}, "TKBd3LCzvXpH2WGA": {}}, "user_id": "hvHJg4RJGYdUtSf8"}, {"extra_attributes": {"0HTxGFnrQvIKV5Q8": {}, "dip59ypEo2aDiMrO": {}, "yQdVxwfqoHU86u96": {}}, "user_id": "0egWiwqhqgCSEroD"}, {"extra_attributes": {"5ceZA32toQ780x8J": {}, "kRUUDxIHzoxbxixY": {}, "tEL4CI4uJUHGOzaG": {}}, "user_id": "bDWGiJOfsC5ySaod"}], "ticket_created_at": 38, "ticket_id": "aYfCANRyTWAXi3dP"}]}, {"matching_parties": [{"first_ticket_created_at": 82, "party_attributes": {"aNoo5huM6E5WdXuO": {}, "dU1fOf206CAwxpni": {}, "A7Q5W3H4CvmtgqUR": {}}, "party_id": "SQdwcfCaEc51JJ9d", "party_members": [{"extra_attributes": {"wDtUo3aCzMGgrac9": {}, "RKWyen9shc3K9DvW": {}, "Z2yE3BwwUKhhuUrZ": {}}, "user_id": "j0zOZFfKVMVbcvDy"}, {"extra_attributes": {"3OBM4eQoMs7AQmC0": {}, "dQRAIaO0KlGDCImy": {}, "s0hgvwTvanSJXkP6": {}}, "user_id": "69yVa8cjUVsgNuwh"}, {"extra_attributes": {"DlYWVf5IKgpgFLTw": {}, "66GxYTeALTN0HDwH": {}, "Bv4LBXWjQAWaHrtu": {}}, "user_id": "BJikDV8XnKK3I7YH"}], "ticket_created_at": 83, "ticket_id": "YXbljx1Q1p3ppcSm"}, {"first_ticket_created_at": 73, "party_attributes": {"3DuSmdu8fEDPPoz4": {}, "g2nI4ET2qCMND5FK": {}, "dcoLjhTrcKf0d0Uy": {}}, "party_id": "MQRX8dY0iDh8ZYrE", "party_members": [{"extra_attributes": {"Q4Uwllv7JvSxtlTl": {}, "Q92aKUPO2LESvOgt": {}, "DayEnN2vflRK07Vy": {}}, "user_id": "cTWgE14Y1UAQP8S0"}, {"extra_attributes": {"paqwkvvh1MeaT611": {}, "V6rkIdqAYflxRMFx": {}, "fd2dItMsq7KgeHls": {}}, "user_id": "2VVmFPU3a8Fqooez"}, {"extra_attributes": {"18eq9KukmBw20Krq": {}, "wXm9wfO7yjIc9QZ7": {}, "xZjUyLJ18IBSUEJl": {}}, "user_id": "4coVHVRawIWPo6Rx"}], "ticket_created_at": 93, "ticket_id": "Tuw0Kd6zWsH1f4LM"}, {"first_ticket_created_at": 15, "party_attributes": {"6U6u8dEPhnKFPzIo": {}, "vLqmYcpNJvWAXw6k": {}, "7gS4ut9FZu6Dfm6h": {}}, "party_id": "gWMjXQG3PK9dsKh2", "party_members": [{"extra_attributes": {"ckb7JQ4On7ptBpO9": {}, "qocYfg7potV6rmAU": {}, "yOWg6Y0OoGf7V8Ta": {}}, "user_id": "HoXPa519caPSxZ7d"}, {"extra_attributes": {"sJkNX8VKGe9OC2Se": {}, "A5pXqTjZNQML67dG": {}, "SzM3hxSl5QYqESw4": {}}, "user_id": "JtM5voU7NevkBOpa"}, {"extra_attributes": {"FpJkzjAuseNKlYJx": {}, "qU8Ybikmb31JYsxp": {}, "UVnOS9qxTkXAMR0b": {}}, "user_id": "o0WD5xCiaVdKxzfH"}], "ticket_created_at": 8, "ticket_id": "KwyU9m5MrS4OKFc1"}]}, {"matching_parties": [{"first_ticket_created_at": 22, "party_attributes": {"ifrEeraprCNOSSGV": {}, "10mL8xJKqyBJ3eym": {}, "O5wmIlOQANDlWmYc": {}}, "party_id": "6XwtQdVWsNqCx15C", "party_members": [{"extra_attributes": {"NYj3xI4pFNCeKGtY": {}, "mfXEW1vv91BwawgQ": {}, "pr8VhFk8jT6kLXtg": {}}, "user_id": "u8H1O4j0cmrtBRb5"}, {"extra_attributes": {"bKwp3yB7zBJzF1Il": {}, "4Nzh0UqsgWgIuHUx": {}, "PNI5QyGSECsp81sF": {}}, "user_id": "ba7xTk0nC67S58xq"}, {"extra_attributes": {"AFeaRVMUhMuCEG3f": {}, "N9vCqSYlucdmx0Sp": {}, "pVde9HjK1GPT0Q3p": {}}, "user_id": "AWi5YBFiZkb5Flvu"}], "ticket_created_at": 4, "ticket_id": "zAe6bX2EGmuAdx68"}, {"first_ticket_created_at": 16, "party_attributes": {"Opo9VT5UUNE8oaDX": {}, "C8U1TzjPCOQkdSOg": {}, "ZyvHfhPbNGcdYeF0": {}}, "party_id": "t6U2YfIerKS5Kiql", "party_members": [{"extra_attributes": {"ASz9VPqNw2PdJiyF": {}, "Ah1I4piYqfZMGStY": {}, "ngeO79bkIldBsr0U": {}}, "user_id": "lzXNRKvoWMMH66Gn"}, {"extra_attributes": {"97ZxzyEhPqzpCkYk": {}, "wsrRgBY2CYv4xEr8": {}, "YpWlRjeLXY9Lwxig": {}}, "user_id": "hgj5lg293n8E6iOH"}, {"extra_attributes": {"wDStWyYwgVKRFLzX": {}, "1ScN2CuK1LkXoZxu": {}, "7CzJVt4VwFNIlFYz": {}}, "user_id": "8yEefC1PfW45ondK"}], "ticket_created_at": 12, "ticket_id": "Wu88SAl5yJvBXx5a"}, {"first_ticket_created_at": 21, "party_attributes": {"Obj0RWb0EStlzV2b": {}, "AUrNOQNk8gvvxqkV": {}, "4cg6wujiUMO9xiiG": {}}, "party_id": "Hy6UnFaPgXGYTGqX", "party_members": [{"extra_attributes": {"asLX3koCFliHy7fU": {}, "BxEjzS7cCkcEl5KW": {}, "jl0ZKKQRPpbMNZJz": {}}, "user_id": "27S6C8O2Lizzw2ZC"}, {"extra_attributes": {"afLrIj06G4luKB0E": {}, "5hhcs68PL23mcyre": {}, "Nt9T9rSiW72JgChR": {}}, "user_id": "4j7KHGfTORqusKSS"}, {"extra_attributes": {"2z89b7OzcW6xhvMe": {}, "LU5xAZp96Qq2w58T": {}, "qxsWOHXRNxnGAMDe": {}}, "user_id": "x3D3zGHb6cFJ0I4F"}], "ticket_created_at": 22, "ticket_id": "OgqW1vxbCA511vZl"}]}], "namespace": "fflqjQTst0O8Jyj8", "party_attributes": {"pZbHMI9ScE3XOTJW": {}, "VhdjrmPXCrY8wAdI": {}, "1PJ3pCgExeX3LgQT": {}}, "party_id": "ZzeGs7gf70YrzGpC", "queued_at": 94, "region": "4BYpFioiDLvMVCJv", "server_name": "BBXVBliYP0BJw8tU", "status": "2kDZyDO1RUGWFgUY", "ticket_id": "ZzLi4X8E72Aq7sJU", "ticket_ids": ["PZoMIANwmX5irilD", "PDshrSeJ0Y5D7BJW", "iVVaJgiQpkzWvAX2"], "updated_at": "1976-06-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "1o05iosE6sjDlrRi"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'pDDKadQLWrKdzcJU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 10, "userID": "UvP6JkYQHiZlgvMp", "weight": 0.8735719789772358}' \
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
    --matchIDs 'Rp80xbaKUqVpBdOp' \
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
    --strategy 'ebV5jYcuXIpVpOmW' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'o6P6r7YQiD5GdsXq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'RJBIDZrMUkYUG7cG' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "1K5PxrJnKxLTVY2R", "description": "ntKINKCsW1ma5P4M", "findMatchTimeoutSeconds": 38, "joinable": true, "max_delay_ms": 66, "region_expansion_range_ms": 45, "region_expansion_rate_ms": 16, "region_latency_initial_range_ms": 65, "region_latency_max_ms": 100, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 21, "min": 32, "name": "Rsq0IWFXAKh6V6HN"}, {"max": 30, "min": 35, "name": "DBYDXmbJNndFRmiB"}, {"max": 29, "min": 84, "name": "TeNAsIPEVj5vVjCr"}], [{"max": 76, "min": 53, "name": "eUKbIisqXwCR6zly"}, {"max": 62, "min": 60, "name": "gOfmRFtBhMzBULk7"}, {"max": 85, "min": 78, "name": "eu3LzwY46Sq88NO7"}], [{"max": 88, "min": 24, "name": "1NG0LiUYKb48tsq2"}, {"max": 40, "min": 46, "name": "ktoa0gYK4yCPqrAF"}, {"max": 13, "min": 20, "name": "v86auYchuhHnoOB8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 92}, "maxNumber": 55, "minNumber": 21, "playerMaxNumber": 98, "playerMinNumber": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 40, "name": "KsOIIReEi847XlOe"}, {"max": 1, "min": 17, "name": "vY4JWhswNaAVgzu6"}, {"max": 30, "min": 37, "name": "tZgnuGZcveHNchb6"}], [{"max": 24, "min": 33, "name": "XGmtBd1emWwAlOvQ"}, {"max": 50, "min": 9, "name": "toCoXLOY32BdE0m9"}, {"max": 31, "min": 45, "name": "PIqtLXCsqG3sLpJm"}], [{"max": 32, "min": 42, "name": "lqj1fI0k4fDv2py6"}, {"max": 57, "min": 78, "name": "pRzFC2L1YNQUZzs1"}, {"max": 86, "min": 12, "name": "JgFpu02z1WUyGljs"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 53}, "duration": 46, "max_number": 5, "min_number": 28, "player_max_number": 84, "player_min_number": 81}, {"combination": {"alliances": [[{"max": 44, "min": 17, "name": "zRFyTaNG5KQiCWEI"}, {"max": 21, "min": 26, "name": "LKaN4xhKIYcm30cJ"}, {"max": 58, "min": 72, "name": "vLBL3uENunkojHhB"}], [{"max": 45, "min": 3, "name": "3gpEmSHgSn6THIl9"}, {"max": 2, "min": 69, "name": "0uovDVQ1yQJ2rFZR"}, {"max": 30, "min": 86, "name": "PZtyzW15GTfZkv9R"}], [{"max": 98, "min": 38, "name": "f8AVfUj9JoHRlpiY"}, {"max": 60, "min": 49, "name": "1uFlhWuuT0l6v3vm"}, {"max": 41, "min": 58, "name": "UY4ztLuQFlPfkIHC"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 30}, "duration": 92, "max_number": 59, "min_number": 40, "player_max_number": 4, "player_min_number": 76}, {"combination": {"alliances": [[{"max": 55, "min": 22, "name": "dO11rbNEhfyNMmLd"}, {"max": 71, "min": 73, "name": "gAgW2DCZYL21cWWd"}, {"max": 100, "min": 66, "name": "atZ80WNWaYYZ6pTZ"}], [{"max": 41, "min": 90, "name": "VkkAQiKbmn8PTfXa"}, {"max": 6, "min": 54, "name": "V1vN0lOUTR2wvbQ6"}, {"max": 98, "min": 17, "name": "wGDChbwCpvmKhHrY"}], [{"max": 51, "min": 53, "name": "ysZ4HKBVgfgwREdZ"}, {"max": 46, "min": 30, "name": "6wZJpZ46KejM0YwK"}, {"max": 33, "min": 34, "name": "8CVr96KFWHPGOecR"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 81}, "duration": 82, "max_number": 65, "min_number": 54, "player_max_number": 68, "player_min_number": 14}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 30, "flex_flat_step_range": 28, "flex_immunity_count": 19, "flex_range_max": 45, "flex_rate_ms": 76, "flex_step_max": 94, "force_authority_match": false, "initial_step_range": 84, "mmr_max": 65, "mmr_mean": 55, "mmr_min": 21, "mmr_std_dev": 73, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "eyt2olKROwhyA3oc", "criteria": "raGGIqtVqNqBorvD", "duration": 93, "reference": 0.906829179699748}, {"attribute": "Q4PNM5NuEKZSOlh0", "criteria": "MAasVxpgmUHHuzco", "duration": 58, "reference": 0.9976848092889435}, {"attribute": "iD1FVRuxVszCRP6Z", "criteria": "BWJ30wRKho8Eav1G", "duration": 67, "reference": 0.062305933878992414}], "match_options": {"options": [{"name": "LYsSRVQpQGjxtZOH", "type": "k3KB24eaeuXsI6T7"}, {"name": "kBlZp8H1ub9f7rye", "type": "3Q4NNV32Fl0UBQV7"}, {"name": "JBkmC0id88KSFcdH", "type": "WoJ4MPBhS2ZecggT"}]}, "matchingRules": [{"attribute": "FkX8AZq88TOiOuAc", "criteria": "8yfBpvqEQgrV3oIx", "reference": 0.6761739027381186}, {"attribute": "TyRlNZYZIgTELi2S", "criteria": "RJDwVBuWaBvjz1aQ", "reference": 0.06581121512737997}, {"attribute": "mPxU99cQd4bSBY90", "criteria": "uSr1SvxbsEBYhVzC", "reference": 0.0020368305252462804}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 23, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'DpP6wBjlNyARVi3A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'iS28tsrAKfkrFeGn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName '3XN1T1ZPa5ZBvmE3' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 42}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'nIXzST8j3uj8hyaO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'GqF5IbKKV1xIOYQx' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "yUJ4xVjs02KRsWI8", "count": 50, "mmrMax": 0.03779820781656884, "mmrMean": 0.06187771075150461, "mmrMin": 0.2283967621356009, "mmrStdDev": 0.7401003199159355}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'BIfbGPIgAwOpGYwF' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 0, "party_attributes": {"uRh2YYjZeb3cuI1Z": {}, "ED3JJGXZI46CfMVR": {}, "kBE0xPMVViCVMsFn": {}}, "party_id": "WDKcoV9oCbyfijck", "party_members": [{"extra_attributes": {"uwb2N8uqueg9XV2E": {}, "s1B2TnFXwoWjkydy": {}, "Wy3IjG0o3hFvB2gl": {}}, "user_id": "P4eP8lQXO9B5LFiV"}, {"extra_attributes": {"qamHBfXkwqRCBEk9": {}, "92VcIHIyTHJ4Bfu4": {}, "ZCZT92unqIJUAEzd": {}}, "user_id": "GLDBG8bE4MuzI35c"}, {"extra_attributes": {"jNRFaEJA2PvzVfgK": {}, "fFffXidGU69ijPUh": {}, "lvX3ohTSFlkXFpO1": {}}, "user_id": "gmaWpzEHo46On11M"}], "ticket_created_at": 48, "ticket_id": "92WKC0vqQ6QKBYex"}, {"first_ticket_created_at": 55, "party_attributes": {"czuHl8JUHh2qlKOk": {}, "R95aKFXvFuST7anW": {}, "mRJSyFG77OO49fOG": {}}, "party_id": "3AZrdmGXn6OkdWwT", "party_members": [{"extra_attributes": {"T6Zr5sjobG4z01SG": {}, "faQl6l2kgKhm8IC6": {}, "FsOA3OctkLVDexwi": {}}, "user_id": "L8Qqz4nXe91BKBwj"}, {"extra_attributes": {"K050OzujsfjzU39g": {}, "1TdAibIlZMJ2cc4W": {}, "isQQVcFFkI6XaRDT": {}}, "user_id": "t1mPdiHZeAKFquhY"}, {"extra_attributes": {"o21yy588JC5cdrPd": {}, "a9QIikqaaExaPES7": {}, "2WHtijSjDUnJYYMU": {}}, "user_id": "bsQ9Egcl39GctiS8"}], "ticket_created_at": 98, "ticket_id": "oMcR5oUA5M8zNjc9"}, {"first_ticket_created_at": 90, "party_attributes": {"sQsspVhXiLn035AE": {}, "b20DVEnbJfwruAr6": {}, "n4TxZU1WMugJKr5W": {}}, "party_id": "jXmqNHX4uKGseS2t", "party_members": [{"extra_attributes": {"4TwHwHfFLtluivVx": {}, "utKcsVWvWxKjNFBI": {}, "jodMVeQDaMrXGMXm": {}}, "user_id": "LyRcXdS2Q5fvMZWd"}, {"extra_attributes": {"aJkHBy4Y4nMVNdmX": {}, "s1LjH9iEAOWF1bbm": {}, "PR5ODn9KQXGsBWFZ": {}}, "user_id": "RK7BzFCQFDvE00Ku"}, {"extra_attributes": {"cZiP662LspssnGTK": {}, "6rq3waH3A5CPqhb8": {}, "AawnXoTwGpFgaESL": {}}, "user_id": "vD9L4ncT20YbWcp4"}], "ticket_created_at": 98, "ticket_id": "CwvcRICj760swrbX"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'JSpqrXb15WSOinnN' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 38}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'fOJaVh0zYjdrniWf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'eP7oznPxkQ8sxuJ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'qn5xtj9hYTVByGLV' \
    --matchID 'Gv8MP1bUQNteskqj' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["4ISz5CzaNuhX8O6G", "syTHjZOeUuv5Kljq", "u1Xk5RoQkT7RCwIe"], "party_id": "gFMdNJk2uDuyrbNr", "user_id": "eof923qtz0SNtNW3"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'c3bXNS4Vleauh9Z5' \
    --matchID '718uGCtrob6JSd9W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'klUtGXGJy33lavF4' \
    --matchID 'kEDRH8cu2h7LYW8u' \
    --namespace $AB_NAMESPACE \
    --userID 'zML0b9bPclOP9ixm' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'qYJEDqEScQTEfrdN' \
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
    --channelName 'gUKcE0HHqtEFZea3' \
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