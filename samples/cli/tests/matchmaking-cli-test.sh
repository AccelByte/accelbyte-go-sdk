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
    --limit '20' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "rk6hL26KQ85V45bk", "description": "GEVY3M5ArBeAtDbL", "find_match_timeout_seconds": 4, "game_mode": "rxU7enJvU4j8kuP0", "joinable": false, "max_delay_ms": 16, "region_expansion_range_ms": 93, "region_expansion_rate_ms": 16, "region_latency_initial_range_ms": 28, "region_latency_max_ms": 74, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 94, "name": "GhVGonHns2OcgSa7"}, {"max": 25, "min": 3, "name": "Y0XoFtn2oYgMEMb5"}, {"max": 19, "min": 11, "name": "PnXdAXxjRWgLh1aZ"}], [{"max": 26, "min": 52, "name": "fHdPezfHCma9DyfC"}, {"max": 100, "min": 19, "name": "wkNSZj0OLn8StC1Y"}, {"max": 5, "min": 14, "name": "SdQ1xEuSgThYl06p"}], [{"max": 93, "min": 46, "name": "9UY1Hy0L4Qgyljwh"}, {"max": 94, "min": 80, "name": "Tl8gydBmVZLbREdA"}, {"max": 45, "min": 13, "name": "GXE7jnCYMtuH5dcP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 78}, "max_number": 65, "min_number": 90, "player_max_number": 23, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 99, "min": 44, "name": "iSuXiEr1CuLELpv0"}, {"max": 21, "min": 41, "name": "0LDTVDrWJeaqYDMP"}, {"max": 98, "min": 26, "name": "r53COv38zfe6nCHf"}], [{"max": 6, "min": 23, "name": "sW88uyNH0MLN79zf"}, {"max": 56, "min": 67, "name": "5US51xPi57IkkYyk"}, {"max": 35, "min": 45, "name": "EF09toK0df4cGac8"}], [{"max": 10, "min": 95, "name": "N9E5QdBL7o39roCo"}, {"max": 64, "min": 23, "name": "decjYJRRGRhLC3Hw"}, {"max": 82, "min": 25, "name": "jRWIilw0wzafSti2"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 17}, "duration": 91, "max_number": 41, "min_number": 41, "player_max_number": 32, "player_min_number": 23}, {"combination": {"alliances": [[{"max": 38, "min": 34, "name": "iM6dCSkJGhj8TYXA"}, {"max": 87, "min": 56, "name": "HenE6goEQoTBsNi4"}, {"max": 6, "min": 20, "name": "hQbwnHf1ysgxw8AI"}], [{"max": 1, "min": 36, "name": "rLjpjIgrdEkLezqv"}, {"max": 88, "min": 25, "name": "X6yTdlMoFDWk9Pmj"}, {"max": 68, "min": 4, "name": "atnwH4h3b5Sm4AhJ"}], [{"max": 72, "min": 54, "name": "t0AxPT37f6gMxKBN"}, {"max": 43, "min": 92, "name": "0Da3SgpyR4dLJnBV"}, {"max": 63, "min": 98, "name": "1cZt9tF7ydN3ulwv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 6}, "duration": 91, "max_number": 34, "min_number": 79, "player_max_number": 18, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 94, "min": 65, "name": "Jan8Sg16XWu0zlOH"}, {"max": 32, "min": 48, "name": "KeIAjSQZejKnuzzt"}, {"max": 90, "min": 46, "name": "Gd6Bvy2SHkICzTr6"}], [{"max": 40, "min": 85, "name": "ffy4XGfMJMhRUDCz"}, {"max": 95, "min": 36, "name": "muC8dszFILZAAlsp"}, {"max": 0, "min": 10, "name": "H7XYN5T77T2hWQyd"}], [{"max": 10, "min": 77, "name": "rTPaTafZLu0uqm95"}, {"max": 41, "min": 86, "name": "dcskK2291MfOaPIa"}, {"max": 88, "min": 42, "name": "rDr9s762e5HzruRM"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 77}, "duration": 0, "max_number": 59, "min_number": 56, "player_max_number": 58, "player_min_number": 53}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 99, "flex_flat_step_range": 95, "flex_immunity_count": 44, "flex_range_max": 69, "flex_rate_ms": 4, "flex_step_max": 26, "force_authority_match": false, "initial_step_range": 86, "mmr_max": 16, "mmr_mean": 71, "mmr_min": 10, "mmr_std_dev": 36, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "cjOpcOpxG3oNHztx", "criteria": "ZymHv8C26SjhBEgt", "duration": 54, "reference": 0.863293803735035}, {"attribute": "jAtyk1uVdz1oFke3", "criteria": "jXwoPGX6QQr50Mvc", "duration": 87, "reference": 0.1253163577252545}, {"attribute": "EL3RqHWNTWbdsMGt", "criteria": "OVEpgJ8Z38Zs0G2J", "duration": 90, "reference": 0.6802089525054598}], "match_options": {"options": [{"name": "kB2G7bBUi2F7ZbRi", "type": "LRIchWRprb7uVRxS"}, {"name": "ACk5Q3Qm144vNWGD", "type": "fIFmHN1S030ThKNq"}, {"name": "dk5MUd9WVX4DQE3g", "type": "obfrhK60Bidtg0NO"}]}, "matching_rule": [{"attribute": "6EReuE4qCk8hVZxk", "criteria": "hxP6LF7zBRfWxPxp", "reference": 0.04342283080972387}, {"attribute": "m6k8Nkx0CD13031u", "criteria": "kOOrPMxEH45BymHr", "reference": 0.3737103196374689}, {"attribute": "vZP9EZ3w1KO97FqQ", "criteria": "UtYdx0ezYNu9mbkK", "reference": 0.6762693736717109}], "rebalance_enable": false, "sub_game_modes": {"2kF96UvLjBaDgSM9": {"alliance": {"combination": {"alliances": [[{"max": 81, "min": 80, "name": "mw4kCwsRGVZxxG7g"}, {"max": 97, "min": 75, "name": "0PZwkKKsdXvryMZ0"}, {"max": 2, "min": 47, "name": "pLPn9qqM7wCVqaZ9"}], [{"max": 83, "min": 30, "name": "xA84ntsipMfng8f0"}, {"max": 69, "min": 4, "name": "QBNh39XSJvW4xhnA"}, {"max": 41, "min": 46, "name": "ckCoMT2gLGZC81nt"}], [{"max": 23, "min": 94, "name": "twHq3lsVe1jhF7xF"}, {"max": 51, "min": 65, "name": "3lP1PaWuCjZVWBKn"}, {"max": 90, "min": 90, "name": "dfliy0FY0PxGoBA2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 76}, "max_number": 28, "min_number": 39, "player_max_number": 31, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 28, "min": 68, "name": "ZdN5kGxJBnN7DtHI"}, {"max": 11, "min": 41, "name": "0NrUSz2oHLr78vPM"}, {"max": 48, "min": 8, "name": "xZGkukg9KItSXEdi"}], [{"max": 56, "min": 43, "name": "S2RSVdo1BEogtNqi"}, {"max": 20, "min": 79, "name": "W5mzDfndK56wbTNF"}, {"max": 52, "min": 29, "name": "ycIs4QFjrISRuW7d"}], [{"max": 36, "min": 52, "name": "txC9AUEMa6KfbLga"}, {"max": 83, "min": 16, "name": "ycKY93oRvQkbooRp"}, {"max": 39, "min": 40, "name": "nNQ7DAJLZIoYKaiB"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 15}, "duration": 53, "max_number": 62, "min_number": 42, "player_max_number": 69, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 44, "min": 4, "name": "XQUIkoRgMxodcnX0"}, {"max": 24, "min": 78, "name": "GOJwQAwkEAQjQx4B"}, {"max": 34, "min": 81, "name": "fyCFHko737bQg1vi"}], [{"max": 57, "min": 19, "name": "kTKmBXvuNmZl19sq"}, {"max": 19, "min": 23, "name": "7i7tUUI3RNyTD3KX"}, {"max": 49, "min": 89, "name": "dvejWX3mNIdy45SS"}], [{"max": 80, "min": 39, "name": "v13FdGfmfhwONfxI"}, {"max": 71, "min": 59, "name": "iD5rX3lcSQA9bZd3"}, {"max": 84, "min": 4, "name": "PksMEXwvhD3G0uER"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 76}, "duration": 24, "max_number": 33, "min_number": 16, "player_max_number": 2, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 20, "min": 94, "name": "W3rhhIJIdpQeMpKw"}, {"max": 42, "min": 50, "name": "0T8tAhG1UFM4rLCM"}, {"max": 54, "min": 32, "name": "2iAJaQhoAZIR4RRi"}], [{"max": 100, "min": 11, "name": "jG4HYettoBV0Sigz"}, {"max": 66, "min": 44, "name": "eG5CIIXouGb9Ck4J"}, {"max": 89, "min": 35, "name": "0XA7uWF470intW7L"}], [{"max": 92, "min": 83, "name": "c8cKBFO7Pmsm3Dfn"}, {"max": 91, "min": 26, "name": "rrlgYvGRSU8cx5JC"}, {"max": 17, "min": 39, "name": "vZiHtsbux0VPgyRL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 65}, "duration": 61, "max_number": 8, "min_number": 0, "player_max_number": 66, "player_min_number": 61}], "name": "of2ESMMhzyZle295"}, "3W8Oev1CymcaxCcb": {"alliance": {"combination": {"alliances": [[{"max": 52, "min": 56, "name": "uc0nmA0VJ0mab28z"}, {"max": 66, "min": 19, "name": "kbnkbfy5NvXi9nWf"}, {"max": 33, "min": 83, "name": "gIWXlYPsL7bizRb8"}], [{"max": 1, "min": 17, "name": "4lUGYbAS0LD5jpTj"}, {"max": 20, "min": 93, "name": "X6zj87AxQih8yXfz"}, {"max": 52, "min": 87, "name": "fzxAhj6ZwBpbPDtR"}], [{"max": 28, "min": 87, "name": "7RERjIpkaUOlF7Cw"}, {"max": 55, "min": 46, "name": "t9uxPyQJCPvKZt3e"}, {"max": 44, "min": 24, "name": "qsGJXMmfwDRpuFVY"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 8}, "max_number": 92, "min_number": 16, "player_max_number": 49, "player_min_number": 63}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 52, "min": 24, "name": "UsnkffbQgEaC12rY"}, {"max": 74, "min": 96, "name": "NMbrgjWl423YIUOM"}, {"max": 94, "min": 85, "name": "spT0Yfg8rOwM9uFf"}], [{"max": 49, "min": 93, "name": "bfcFlo40yfKPyBFn"}, {"max": 72, "min": 45, "name": "hcawLllW9AUpVlWJ"}, {"max": 55, "min": 69, "name": "S3PnyvFBIrOTcCu7"}], [{"max": 15, "min": 96, "name": "5IuJcD0CPsyuCnif"}, {"max": 85, "min": 93, "name": "01LFwVpUIByHLMGn"}, {"max": 10, "min": 32, "name": "WpougOIeJ3IN2Xem"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 52}, "duration": 82, "max_number": 94, "min_number": 32, "player_max_number": 25, "player_min_number": 43}, {"combination": {"alliances": [[{"max": 73, "min": 18, "name": "fLtlkX17y0XzBiA6"}, {"max": 66, "min": 26, "name": "VQsyTfYSlYQMHu3E"}, {"max": 97, "min": 65, "name": "oDoz2lQqCSPeDvZN"}], [{"max": 99, "min": 28, "name": "NAYVuWIcYhLDHaIL"}, {"max": 13, "min": 8, "name": "8pFDi8vwWGXV34Pz"}, {"max": 31, "min": 7, "name": "uc3aIptk5jqDhGId"}], [{"max": 11, "min": 38, "name": "GFyGieGYPzAaBZ5o"}, {"max": 56, "min": 76, "name": "rGMOh3Wzn4kfhpnn"}, {"max": 51, "min": 51, "name": "dSf6xxKOdmP1FctG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 72}, "duration": 33, "max_number": 52, "min_number": 40, "player_max_number": 89, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 50, "min": 78, "name": "23r89AvRvskcLTEE"}, {"max": 25, "min": 22, "name": "PMoevyshKRNOhGhw"}, {"max": 25, "min": 64, "name": "HhRRQG8fStjFfnEb"}], [{"max": 70, "min": 50, "name": "04b1OHhW4PUHF0mj"}, {"max": 57, "min": 54, "name": "rLSn4tUM5gvYOSuj"}, {"max": 45, "min": 86, "name": "9ra3scb1rZmKMFHm"}], [{"max": 67, "min": 30, "name": "pblEx5crQBOzKSW1"}, {"max": 100, "min": 57, "name": "OzcEHalUcxlALSOf"}, {"max": 15, "min": 15, "name": "NCd5MqZg56ddDDOM"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 16}, "duration": 27, "max_number": 51, "min_number": 61, "player_max_number": 73, "player_min_number": 55}], "name": "qDvRdutQ65flNrBO"}, "uFe6quFWoI5XjU8n": {"alliance": {"combination": {"alliances": [[{"max": 3, "min": 73, "name": "wcHw6hd5BQ9v0qxV"}, {"max": 68, "min": 22, "name": "TPb3zZVAmjvOb7Qo"}, {"max": 6, "min": 22, "name": "CT2JtBSDLtxBf5xt"}], [{"max": 60, "min": 49, "name": "MSPGGEAZWEQdLFYz"}, {"max": 20, "min": 34, "name": "Wj7zIb3I3bC86xOX"}, {"max": 10, "min": 84, "name": "6ztL7aCtm70Q2xId"}], [{"max": 55, "min": 89, "name": "yjVDUkcSp8hNy21N"}, {"max": 46, "min": 32, "name": "VXdcoTYtzkjx29So"}, {"max": 24, "min": 28, "name": "ZLppPwbOepqC6BtT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 6}, "max_number": 30, "min_number": 84, "player_max_number": 62, "player_min_number": 56}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 22, "min": 24, "name": "OiBpWfoZUjlx4fi7"}, {"max": 76, "min": 35, "name": "qevWiDw5BjYRrwhb"}, {"max": 54, "min": 71, "name": "WpScKroHbbaFfdux"}], [{"max": 83, "min": 4, "name": "iwctE7ZyeOCkQz47"}, {"max": 36, "min": 8, "name": "aW837VAn6pJX90bw"}, {"max": 70, "min": 25, "name": "JYzllqifwmzi5lEh"}], [{"max": 73, "min": 69, "name": "7Mr7l435hut17coS"}, {"max": 30, "min": 93, "name": "E6ppsxWt81DF9fKi"}, {"max": 78, "min": 18, "name": "wF3x7FKqCMXwecdD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 93}, "duration": 51, "max_number": 66, "min_number": 91, "player_max_number": 99, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 1, "min": 3, "name": "RTfT96g81Ysx884i"}, {"max": 35, "min": 32, "name": "cU1p1t1MPuP6lybI"}, {"max": 99, "min": 12, "name": "6aZ1gEntrwtZFSI0"}], [{"max": 61, "min": 52, "name": "KTLh6QNUisPUy83V"}, {"max": 83, "min": 69, "name": "NxmmC5etrW5e6jaC"}, {"max": 44, "min": 78, "name": "L39wvuaHhLAgtcpz"}], [{"max": 59, "min": 72, "name": "MZSdGfgklxnSYDct"}, {"max": 45, "min": 32, "name": "2w7bd5Z1D1vVUDIt"}, {"max": 5, "min": 95, "name": "vHQGlCLwXYvv5GKZ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 3}, "duration": 44, "max_number": 97, "min_number": 72, "player_max_number": 87, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 83, "min": 28, "name": "jl04RmWkRMbckbZi"}, {"max": 80, "min": 10, "name": "LZHiMlcniP2NY6xu"}, {"max": 98, "min": 60, "name": "FU4E4sd3TuPCCyGP"}], [{"max": 60, "min": 22, "name": "q5iAVBkfmaYntVwr"}, {"max": 15, "min": 75, "name": "ioF5v5HNUBCkNTUa"}, {"max": 22, "min": 46, "name": "eCwS8ItyqYMnyLTk"}], [{"max": 70, "min": 61, "name": "En0nNqOhznexiKkQ"}, {"max": 72, "min": 25, "name": "sMILU7R4ViGaD2hf"}, {"max": 8, "min": 62, "name": "kvpdFMEfFcJk8lvs"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 59}, "duration": 69, "max_number": 12, "min_number": 69, "player_max_number": 39, "player_min_number": 58}], "name": "IW3JWRy0InxdjDWB"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 30, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'c0j0BYzNYPwCOLC6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'nkzXFgOr9AgTNZ2g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "LRhgJA3YUvZyPlx2", "players": [{"results": [{"attribute": "r4f2HzGjcq2AY5PL", "value": 0.5598348202891096}, {"attribute": "2aKpbnjjyOiLM7Rp", "value": 0.9683557947685217}, {"attribute": "DpYw8gMoArcRLcpN", "value": 0.515716157238389}], "user_id": "1NshWOULhnlN9taH"}, {"results": [{"attribute": "dEETqLmJGY7nqmKw", "value": 0.06348156092570878}, {"attribute": "cdubzh4QM4uxs9zj", "value": 0.32658377054993404}, {"attribute": "lfKJuYETZJPvg3Hk", "value": 0.417015655905031}], "user_id": "cn972XwWybb4RVg1"}, {"results": [{"attribute": "8cIxM43LysaaXF6r", "value": 0.6841354856419469}, {"attribute": "RsxtVoEpuHBq9NA0", "value": 0.26183088138610244}, {"attribute": "usEdIZBrWCLw01Zw", "value": 0.266812504326854}], "user_id": "nXntCZCXt7yHNXdu"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "iUaJTOM2sWcZREcT"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "zBdXalgUVsDZCL3A", "client_version": "svJ2ae68AmBHxVqi", "deployment": "cFYbOu6vgBNestDF", "error_code": 88, "error_message": "P3T8GoSUNbz1Azc0", "game_mode": "OFk1x1RmpONNujws", "is_mock": "T3UKbOOAgP4RMvLt", "joinable": true, "match_id": "fA4YSe9DZsFtfTt6", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 99, "party_attributes": {"AgoaoQQb520xIU3h": {}, "NDLhopnNT2t4T8rw": {}, "K778DxIMa3nLiYBq": {}}, "party_id": "1bRIU1AFNrNxzzy0", "party_members": [{"extra_attributes": {"Reyh4kCsQo7cnYlT": {}, "w6a0iiT0Rkq7FBnI": {}, "feGfwmgGh874Z0Y2": {}}, "user_id": "SAV0Ayw1YiFM7re3"}, {"extra_attributes": {"AgbVHoTe7woNbpvM": {}, "vVO5EM51MQTohhYp": {}, "ofOQMskL8NOEsWxM": {}}, "user_id": "Vm35YjF2fYYEW2tP"}, {"extra_attributes": {"zT0IkMdeG2mBIR5M": {}, "GOdL0T1Os1G9Pipp": {}, "BuiXVwASogxUPIov": {}}, "user_id": "FRQEsiRcICc50cOt"}], "ticket_created_at": 53, "ticket_id": "p6AQv17R7r8MTkpQ"}, {"first_ticket_created_at": 87, "party_attributes": {"mWHehc8MT5NsVl1t": {}, "WhLhxk7f5Q1tjG8i": {}, "ciBLAXUFiSRfx5gg": {}}, "party_id": "YNRAqoS4BfhsE7C0", "party_members": [{"extra_attributes": {"dcI5E8xn3k45u4pt": {}, "Tkge0g1I0IR2Ayox": {}, "dQVfUG78JpabeJSN": {}}, "user_id": "GgghbjT5hxilL3tK"}, {"extra_attributes": {"TY0InwBkieQ0kkBs": {}, "YsLb4OveA5EwWKan": {}, "jeLwZntD7V2WZwM6": {}}, "user_id": "HJd4ehDyylsPlQlg"}, {"extra_attributes": {"KWsv3czZzFvaotHi": {}, "G7ufs1R3o468XNbh": {}, "0JFoGLUcUJshe1Ne": {}}, "user_id": "Q2ZiYtLFT0AOEFm7"}], "ticket_created_at": 3, "ticket_id": "zSkyHS52zYaAm0y4"}, {"first_ticket_created_at": 29, "party_attributes": {"T4SKpq8z2t90fv5J": {}, "fD6aYpvHMRy9TRjJ": {}, "mgVqmaC5g5J6QEql": {}}, "party_id": "mrwy6d8rAi8pTZRO", "party_members": [{"extra_attributes": {"4NPgSlm0No4jwYsq": {}, "PRkMm5a4qdO1SKSn": {}, "4cDrTS5mO8FFFyyr": {}}, "user_id": "oZlyIVEdHVOKioHi"}, {"extra_attributes": {"1PSk9OfQko5aoigF": {}, "vL5iDcv7drcb8MTN": {}, "C7JCnHWuoDfdlneT": {}}, "user_id": "LbxTC4LYBwIzeoh8"}, {"extra_attributes": {"tTZF1JIYZM5qcWuz": {}, "wVM6OiQ5msbYeFuW": {}, "u21RoSXrJ4aVdZEm": {}}, "user_id": "ZN4rDtZhdR6eMCub"}], "ticket_created_at": 21, "ticket_id": "kXeMzpOP9XEdIxdc"}]}, {"matching_parties": [{"first_ticket_created_at": 57, "party_attributes": {"S33YJIrDhtzQDdWz": {}, "YbMueA59t7RpX9zP": {}, "kdyDMeWFkmPizkKY": {}}, "party_id": "CG78qbl0rG3it71x", "party_members": [{"extra_attributes": {"D93fYMnX75Gqvvrs": {}, "XVZ6UciLEm1dZy8X": {}, "zPDEyKByt6NbIAJY": {}}, "user_id": "09vej0cwEWOyzzdI"}, {"extra_attributes": {"9iP478nL8abpKaAL": {}, "MiTrPAH0toLhDZBP": {}, "rCmFiG2gPncwfWl7": {}}, "user_id": "bnoTSFdIWEHQY4A1"}, {"extra_attributes": {"C2DPwGmpJ9QpUklN": {}, "9GF3XwgCut2HOcH2": {}, "0DwczRxn2PvPp7WA": {}}, "user_id": "UGnNhIu7yy6xnPa5"}], "ticket_created_at": 80, "ticket_id": "3tgSQvbzbqa1Pskt"}, {"first_ticket_created_at": 56, "party_attributes": {"AomYil8CvHz7c2x3": {}, "quFZj1TGgVV8Sj5H": {}, "PqQNIBPEkucC2k1i": {}}, "party_id": "RploU19TwTNxCmxW", "party_members": [{"extra_attributes": {"i1QhOjs8w9AxMsrg": {}, "aRB938sD9PKNkzVV": {}, "Xbj7Omdy51BwoCFc": {}}, "user_id": "G9HS4M3i9B3Dx1bp"}, {"extra_attributes": {"mM6nXvF3oCxTTAkw": {}, "oaQ1JyG8dbV6qBJP": {}, "w6HoGY26CHHlbkXL": {}}, "user_id": "w9hhlOSN8cAMB5qI"}, {"extra_attributes": {"evAw9LCV9fUOZ2dh": {}, "F42wLqsY7gocMRVi": {}, "UwIaBC23umpI4aCu": {}}, "user_id": "hdEwpvmyvirzF3Uw"}], "ticket_created_at": 31, "ticket_id": "oFJr1QFxxE4aR4nd"}, {"first_ticket_created_at": 63, "party_attributes": {"Cybt343v483BRYHy": {}, "ULJUxpPc4JrggQaw": {}, "QYDZPlGSWtaldNNj": {}}, "party_id": "GFiXd7cNHMyQyvYt", "party_members": [{"extra_attributes": {"tywK6r1XHdI9whlx": {}, "5SBsfFQHQ0CUp4ht": {}, "cH6RESJQNv5FdDk7": {}}, "user_id": "ZCMViVEex5DCmsf1"}, {"extra_attributes": {"m5310eNr3HGBI3e3": {}, "AmVIJ3E62LHbzvWC": {}, "yJd1X82WLHJFvaFt": {}}, "user_id": "4ybJgBFBZqqzS0Qd"}, {"extra_attributes": {"V3AI5Q64MohF9Wuf": {}, "a8DjYCHk6b91JxNO": {}, "wdqB54plolQubdBe": {}}, "user_id": "tkBlh1cmbgBnLhbi"}], "ticket_created_at": 21, "ticket_id": "RaEuQc4arv6o9ZLU"}]}, {"matching_parties": [{"first_ticket_created_at": 21, "party_attributes": {"CVJrVSLU5sxMIiu1": {}, "zYoBQIhpCPgBmVLj": {}, "n0y5Q6sYMA9HNPc4": {}}, "party_id": "QF3GiQedma8toap5", "party_members": [{"extra_attributes": {"3EQda82Wr3fAYf65": {}, "ZcikPTEC4OIElT24": {}, "qIiEwPohMw1a0IED": {}}, "user_id": "MdMyvyui8uvYFovl"}, {"extra_attributes": {"wAPJxdsNs6tuvZ7I": {}, "ypCymVNR2Yio3etg": {}, "Q8u8kfqD0EygESxT": {}}, "user_id": "sOm5IvVXDLRMVt3Z"}, {"extra_attributes": {"EHpIhcAt12BS29bJ": {}, "nLEvAMcQowBfYiDZ": {}, "Q7exgBJTSD3vC7QP": {}}, "user_id": "niF0sTOtlvdOz5oU"}], "ticket_created_at": 22, "ticket_id": "wTCoath32qqAyKKE"}, {"first_ticket_created_at": 3, "party_attributes": {"PO3pVxnwG2A9N1px": {}, "1fdTA1IigICueFbd": {}, "Dz8roa31crFIPBu7": {}}, "party_id": "0FCbufbmLVDFgSgF", "party_members": [{"extra_attributes": {"oWgEDiOSX2hG2cg4": {}, "DJzWlVA76hfZuxzu": {}, "ASnQNwP1ped2xxQB": {}}, "user_id": "IKHGGPAkguzSzZHu"}, {"extra_attributes": {"n3MP2QOvJsOrcdP9": {}, "43rlcaNySmYEE8Yg": {}, "iR95J32NPP02G52j": {}}, "user_id": "zjIfo6K13UDpFisZ"}, {"extra_attributes": {"bd9wsYGu9ybwa4Wi": {}, "mUCO1ZkNTLUxW4PL": {}, "LBfxy4vAHRwjNlGS": {}}, "user_id": "qL09sLRwVWKmud8h"}], "ticket_created_at": 53, "ticket_id": "ZnVRjdPJenTPWQoP"}, {"first_ticket_created_at": 87, "party_attributes": {"gp3o8zUztQfe3amV": {}, "s754nV0rHNkr3JaP": {}, "Fnt0REBffqIvj4cG": {}}, "party_id": "VbvmLeI0vMTiswvj", "party_members": [{"extra_attributes": {"PxwQ4rA3znfOFUaZ": {}, "etcr0xKLiwLDj1er": {}, "0zHsNekT2svkzVSP": {}}, "user_id": "FetB9VMtocKHzwgJ"}, {"extra_attributes": {"MX9o8VltJdSbyj4t": {}, "o5rZcoC7p0f2p5Ku": {}, "sf7OIFsEQZ2yBECa": {}}, "user_id": "TF38CepYOgvrs2QW"}, {"extra_attributes": {"cNm04LiGyWcLaPF3": {}, "urcbMvOXDafYnvww": {}, "AWVai3MhfbwSKp0l": {}}, "user_id": "1Xk0oH0r99l1Bkod"}], "ticket_created_at": 45, "ticket_id": "MuRXxJZ9gXOXEKsg"}]}], "namespace": "dIQN1LuMVhXijrky", "party_attributes": {"R3D3L2hfzqSuB4MH": {}, "rO1Uk2pyoJALibEf": {}, "dzSn88oPjGsNLyke": {}}, "party_id": "RmRRhkIOBgBgqBI2", "queued_at": 93, "region": "sUYXGZx4VO8tkSHs", "server_name": "xy76yksxBPt64zzm", "status": "t0KFijxmhGEJhXrP", "ticket_id": "Pi2Dr60Vocvk15dl", "ticket_ids": ["UqRzEzeJ11pvSs8U", "pkw5fge8DeUzwMAP", "LnQqKM9ALX78E2R8"], "updated_at": "1987-01-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "yvymjtbfEU8NCXpS"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ChhRS3imSTU6DHxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 82, "userID": "45RAFOu8Yj5Fjv6J", "weight": 0.7125111065069077}' \
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
    --matchIDs 'gSO5dhhm48XWNOKY' \
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
    --strategy 'Gq82uHP6ykuxKR1B' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Ns9UNj9VjCthGzYZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'I1y93kqYzkOXagjL' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "YPwO5DHzQ4KXB2IS", "description": "KNXcc2rqxsYOr2T4", "findMatchTimeoutSeconds": 78, "joinable": false, "max_delay_ms": 72, "region_expansion_range_ms": 12, "region_expansion_rate_ms": 42, "region_latency_initial_range_ms": 43, "region_latency_max_ms": 59, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 4, "min": 73, "name": "Vmo3Gbej1z2JZB26"}, {"max": 64, "min": 52, "name": "CQACZbjOjUIlpzjl"}, {"max": 89, "min": 2, "name": "hW50JSrdHXTt4NKQ"}], [{"max": 91, "min": 32, "name": "7oH86cvUtaSLAQ5i"}, {"max": 19, "min": 57, "name": "xrfrVLTV8pJgb3FO"}, {"max": 51, "min": 25, "name": "1dm0I0j9Q9h97Qpy"}], [{"max": 66, "min": 92, "name": "OXVTjxHDLY1zJFg4"}, {"max": 44, "min": 40, "name": "oPFC9aOtjJRej043"}, {"max": 22, "min": 3, "name": "rLuO7CKqbdfiA28k"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 97}, "maxNumber": 26, "minNumber": 48, "playerMaxNumber": 37, "playerMinNumber": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 85, "min": 21, "name": "BSxhkKMXJwokPhAy"}, {"max": 77, "min": 90, "name": "E3egUT5wMX1X8jAw"}, {"max": 10, "min": 8, "name": "2WlBa3Iv7Zzt1rhf"}], [{"max": 77, "min": 7, "name": "XT68UnxCIGCaDfMZ"}, {"max": 100, "min": 93, "name": "vuBdFisQr5uc6cqy"}, {"max": 24, "min": 67, "name": "8fs21rsE1GEMMoEa"}], [{"max": 18, "min": 40, "name": "xDL4rCW53gmCIzFV"}, {"max": 93, "min": 54, "name": "Z8J08lgWVKpeGUW2"}, {"max": 40, "min": 90, "name": "GIND6MFdL8fozbE2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 44}, "duration": 45, "max_number": 2, "min_number": 44, "player_max_number": 8, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 65, "min": 81, "name": "kld4CqsQChjq7OUU"}, {"max": 52, "min": 54, "name": "6zaWTtG4DetcDIVg"}, {"max": 44, "min": 52, "name": "fyQYa7S2RoSoLxPO"}], [{"max": 15, "min": 50, "name": "xWas7ExgW2NVwxqb"}, {"max": 45, "min": 99, "name": "8BbJpddGzzrWqgbx"}, {"max": 74, "min": 86, "name": "2ssmsBOBuilv1NiI"}], [{"max": 33, "min": 1, "name": "n0JeX62BzrwXeexV"}, {"max": 77, "min": 94, "name": "ofBvIugVnCUvwi7A"}, {"max": 24, "min": 52, "name": "UmyfPDUzWf1VOJAr"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 58}, "duration": 35, "max_number": 39, "min_number": 36, "player_max_number": 61, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 86, "min": 76, "name": "4vuFXPw7u5oEuK6i"}, {"max": 33, "min": 65, "name": "LVGmWU4Br67eLvUV"}, {"max": 1, "min": 53, "name": "JCS1aRn4ezJJ1nsY"}], [{"max": 99, "min": 51, "name": "QCgVSTfiRRbyajFq"}, {"max": 33, "min": 18, "name": "5oP7WEtGY0FgAjVC"}, {"max": 37, "min": 55, "name": "cFehO0d9nlO4iUaZ"}], [{"max": 13, "min": 70, "name": "lXvUzlzlwkAlf1Nx"}, {"max": 73, "min": 67, "name": "cmemv2emPAqTpZQD"}, {"max": 77, "min": 43, "name": "YzCxMoRU01llyFQB"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 40}, "duration": 43, "max_number": 81, "min_number": 20, "player_max_number": 5, "player_min_number": 74}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 51, "flex_flat_step_range": 22, "flex_immunity_count": 63, "flex_range_max": 64, "flex_rate_ms": 68, "flex_step_max": 91, "force_authority_match": true, "initial_step_range": 26, "mmr_max": 0, "mmr_mean": 99, "mmr_min": 34, "mmr_std_dev": 99, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "mTXIX5inAavcNG7d", "criteria": "9YJpYMERQ3oK7oJX", "duration": 97, "reference": 0.5438932307024414}, {"attribute": "1LWK8vgK0LDxqR84", "criteria": "EPMWJCvuS3odKenl", "duration": 82, "reference": 0.9220839402532602}, {"attribute": "d0Ls9OlsIOrTbN4Z", "criteria": "j5LgcPk24fo8V9mO", "duration": 99, "reference": 0.7069196589490091}], "match_options": {"options": [{"name": "IjnNIdZr8OVAV5Cj", "type": "JbObKzl8KrxQiRp0"}, {"name": "EDMHcXwgR61K2RJv", "type": "qdzS8T1lk6WI3TkN"}, {"name": "uJ5cKYFsjNTM3bbW", "type": "fczBz1QwWUVohFun"}]}, "matchingRules": [{"attribute": "ESMOHfDcicA1H2Zx", "criteria": "vWfDuFtoJROmS8oG", "reference": 0.8544030434235121}, {"attribute": "DMvLA3sYWK0TPAfw", "criteria": "Yed91P5ucE6UGL34", "reference": 0.9521817625486554}, {"attribute": "dIyk8TLvD0fs6Ass", "criteria": "Tzzd6vQj3h3iptEX", "reference": 0.8180040668705599}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 55, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'S1cGKIGN5Mt1zeOB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'xBw1py8VuaiDa9vg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'UYv3xSJJUb6BnHhP' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 15}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'ulDf59GY0n2pOHtx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'BPzp6PjlVWCOSasd' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "P5xzB033RVhGy9PA", "count": 84, "mmrMax": 0.581582455132197, "mmrMean": 0.5860036324888921, "mmrMin": 0.1324977505635383, "mmrStdDev": 0.5874075621434931}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '48imWblMIbczsqqk' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 40, "party_attributes": {"GpjRiTiBvCLchDf4": {}, "kbLjOkkyJazPU3Cn": {}, "zn1B7qjbDPzAezM7": {}}, "party_id": "QK7nceZO8fXpVy5Z", "party_members": [{"extra_attributes": {"FGi4N7NbsfbQq04a": {}, "gkiTwk8uR1wK33WI": {}, "qzbCOcPP5ZO6qzHI": {}}, "user_id": "L0lKlmLKpYF8Bz47"}, {"extra_attributes": {"Drwg9n0pipChOFBO": {}, "j1a0P2lHYfh7QF4C": {}, "olPwG53dzTWg6KWF": {}}, "user_id": "xYdjmPVp78F58QJG"}, {"extra_attributes": {"De1dACDmi59ISm7b": {}, "nRkSAi4iK7JCagVI": {}, "1xq6wImhdpPl6r6r": {}}, "user_id": "2DekHcnq4aTalcmU"}], "ticket_created_at": 68, "ticket_id": "mAXqRjOS7NB9n7XP"}, {"first_ticket_created_at": 43, "party_attributes": {"uH0Sjn2oG0ptr4qX": {}, "TGMeVh4P53zc3MXt": {}, "bqUr1gl8alU2AHkt": {}}, "party_id": "lR4rcG9OiTMtBscP", "party_members": [{"extra_attributes": {"nnJf7CILgcpFq40Q": {}, "Dw3ZjJekXVL4bher": {}, "6AI8LXLWI8praxP9": {}}, "user_id": "6pOJcOu50jljupxU"}, {"extra_attributes": {"gyrNTLdDzJnLP391": {}, "nbLpHuiGYWRoQFgJ": {}, "cL9gI6h7MCidbWTa": {}}, "user_id": "QiwBvApUEg0AxJ79"}, {"extra_attributes": {"doIuy6h4dQuXGMr0": {}, "vwaTWIK0KAPmVu4y": {}, "yetWtfYcyg0DVyhw": {}}, "user_id": "xjoMPcWoif7fxC3p"}], "ticket_created_at": 38, "ticket_id": "zeVqv2Vwt1q2a4Yu"}, {"first_ticket_created_at": 23, "party_attributes": {"dCP9hSKQz9bjvWBd": {}, "yW7Y1SUSqeONCiqv": {}, "eVkTYYOLs7dVDnub": {}}, "party_id": "TwhMC5MbmQGFyapn", "party_members": [{"extra_attributes": {"D9L4IARRMOmzOQOM": {}, "kHV4GGQHR93mKTNH": {}, "jEbMh8T0jBYAO7xZ": {}}, "user_id": "5LbFXw7QyphEl3JJ"}, {"extra_attributes": {"2IyyyQuS7mlFPCVD": {}, "Ac48xiL2vffW5f31": {}, "n7728Ey1HQmWBn2q": {}}, "user_id": "qB9HELLnoXq4Hlqv"}, {"extra_attributes": {"mhVoiU8rDTq9adjc": {}, "s6LBIjzHPB1tEs5u": {}, "pxaXz2U5CqVhCUVT": {}}, "user_id": "BMjHyLSiLfYBPtoT"}], "ticket_created_at": 38, "ticket_id": "Gpz7fqIzloXk8TWg"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'WEp2LUd5rSWArb5s' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 0}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'PigVl00YjZpv5TVg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'vjTvewdzAADbCyLL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'xKARhp34FSrjAlw7' \
    --matchID 'cxtq8IhqpLjDGRRh' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["UQOVw7csidmm9UYt", "X484tLFy1kZsGxxY", "ZiFYDaCx6BX9xzwn"], "party_id": "VBjCgDZbTE3crUzR", "user_id": "UQwNigKDctM7ydwU"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'QN8ktdGBPS0FznBJ' \
    --matchID 'otXsgHInZrh37x6U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'O7othnSoIQOuKRpy' \
    --matchID 'oXtXntEUrojhhXEd' \
    --namespace $AB_NAMESPACE \
    --userID 'Cu2EEV3jZ5QT4lJZ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'O5vw7s4nNPBKYtnA' \
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
    --channelName 'gW8wlFzkvUHROzRy' \
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