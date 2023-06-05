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
    --limit '83' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "zMwcZbVx5YBv2F0Q", "description": "e1smHGeFbAj0Z5U1", "find_match_timeout_seconds": 58, "game_mode": "dNrAYsX43fwf0TQI", "joinable": false, "max_delay_ms": 28, "region_expansion_range_ms": 100, "region_expansion_rate_ms": 55, "region_latency_initial_range_ms": 3, "region_latency_max_ms": 61, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 94, "min": 33, "name": "kEy9Fs8xb4TAh0lu"}, {"max": 36, "min": 42, "name": "cXZ4iN8bZnz7Rfu2"}, {"max": 29, "min": 27, "name": "86cYzuZg07DHD0vX"}], [{"max": 24, "min": 28, "name": "oNvDs5PYYEYpt15a"}, {"max": 75, "min": 91, "name": "X8ex09QLeA5M2bqs"}, {"max": 14, "min": 47, "name": "fdhBYce1QQARcvgq"}], [{"max": 78, "min": 68, "name": "90sQpewfzMsAcbGY"}, {"max": 14, "min": 59, "name": "qobPNRabUwUBVBTS"}, {"max": 57, "min": 26, "name": "Usb3jtC62XanIJVc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 77}, "max_number": 22, "min_number": 97, "player_max_number": 23, "player_min_number": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 24, "min": 75, "name": "V7tFlwnvYwG3Y8CC"}, {"max": 86, "min": 39, "name": "9nfnXHXY1vnfQ3hm"}, {"max": 74, "min": 8, "name": "gYUVlgRD4zbROUkf"}], [{"max": 28, "min": 100, "name": "ZBcqLk8nJzkuysKd"}, {"max": 85, "min": 93, "name": "dVUltT5MQ1PAfZZS"}, {"max": 44, "min": 38, "name": "2CeuQVL37VZCxbQM"}], [{"max": 96, "min": 47, "name": "ChMBhd0vGmyapWkM"}, {"max": 24, "min": 7, "name": "QfmazHAOKqMrr7UV"}, {"max": 60, "min": 30, "name": "U8UlsBh6Qmhncka6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 26}, "duration": 72, "max_number": 53, "min_number": 6, "player_max_number": 51, "player_min_number": 41}, {"combination": {"alliances": [[{"max": 65, "min": 91, "name": "PbAvgm1QUv7jqN8N"}, {"max": 60, "min": 79, "name": "tBObbZ4uaD9UrGfn"}, {"max": 87, "min": 94, "name": "BvIt5smISi0uAXnI"}], [{"max": 71, "min": 67, "name": "U1JU8oZ6zUhHF2CY"}, {"max": 41, "min": 9, "name": "p4SZAQuk2Oc2IMcq"}, {"max": 93, "min": 26, "name": "rKspCjLAxkt7lE0c"}], [{"max": 60, "min": 2, "name": "rqLfWFdLmWOyPYQW"}, {"max": 49, "min": 61, "name": "zZROUELSqBXMHmvv"}, {"max": 3, "min": 23, "name": "FHwl2f0j4k0417wk"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 75}, "duration": 96, "max_number": 72, "min_number": 38, "player_max_number": 68, "player_min_number": 43}, {"combination": {"alliances": [[{"max": 35, "min": 33, "name": "xV0TttgmmYQq0DHN"}, {"max": 32, "min": 92, "name": "oZB8XX1XPxCwmvVb"}, {"max": 83, "min": 84, "name": "hbYrLn7b2JkQ9JGD"}], [{"max": 73, "min": 58, "name": "5k3itoW9VGZhqhNy"}, {"max": 30, "min": 90, "name": "okhI873eam88Ukje"}, {"max": 94, "min": 59, "name": "vN8N22jmbUTsT0U2"}], [{"max": 21, "min": 55, "name": "eDZehDhs1Ni5Uf3H"}, {"max": 27, "min": 98, "name": "cq9xZr1Q0yJcUry3"}, {"max": 18, "min": 64, "name": "9wfUW1zwdxhWGS9i"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 31}, "duration": 32, "max_number": 38, "min_number": 87, "player_max_number": 78, "player_min_number": 72}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 54, "flex_flat_step_range": 20, "flex_immunity_count": 42, "flex_range_max": 74, "flex_rate_ms": 22, "flex_step_max": 46, "force_authority_match": false, "initial_step_range": 46, "mmr_max": 77, "mmr_mean": 18, "mmr_min": 83, "mmr_std_dev": 7, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "WnqGDhJUn8tIs4Ez", "criteria": "eY89zhlY2o1hBU4m", "duration": 18, "reference": 0.670223940660209}, {"attribute": "M3O9MKTy1ETOyvS9", "criteria": "8QduPd0JupLrVRxt", "duration": 40, "reference": 0.4828497829383668}, {"attribute": "AXQq4gAzJT83ItHp", "criteria": "1nuku8MwpKPrspDa", "duration": 66, "reference": 0.6943505584533846}], "match_options": {"options": [{"name": "OtaCnVqoF3PEoYOl", "type": "yqsKPb5xE5sJ5S0F"}, {"name": "FtPNpAhizmHDUiM0", "type": "u5iIzzc2rBryNljK"}, {"name": "cIYrfykYNNjlyIIE", "type": "hVoPsqd8OKLS5Dlw"}]}, "matching_rule": [{"attribute": "Ldt3fSFWRmFujcmi", "criteria": "p5SIxsE3JE6ixC2y", "reference": 0.0271481410549701}, {"attribute": "BCjw3d1Zen5fzlQX", "criteria": "WCWhcOziUosFDauO", "reference": 0.7654521384909703}, {"attribute": "yGtwxL95Fur3tU4i", "criteria": "kZeq0OA15eK53mbQ", "reference": 0.10579595199393776}], "rebalance_enable": true, "sub_game_modes": {"sdn2ANQDRZjYV8FL": {"alliance": {"combination": {"alliances": [[{"max": 91, "min": 51, "name": "L0LFiGBkXLIIfbg1"}, {"max": 68, "min": 82, "name": "KloGP00xgioR7Ynf"}, {"max": 32, "min": 99, "name": "y9vS1MUvuRfbYina"}], [{"max": 62, "min": 3, "name": "5aq7Tr5odxpl723k"}, {"max": 96, "min": 97, "name": "KgcWCc0FP9P0UBLG"}, {"max": 73, "min": 99, "name": "0UyZAgnP2UpdZM5u"}], [{"max": 43, "min": 52, "name": "jo6F4Y3ri9oBVT1k"}, {"max": 59, "min": 75, "name": "NwQzyLjda4TfYztx"}, {"max": 72, "min": 97, "name": "nsrzKHLiDNnrDki4"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 66}, "max_number": 59, "min_number": 42, "player_max_number": 69, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 84, "name": "uYL8h5cA3TDOKwP4"}, {"max": 76, "min": 82, "name": "8zXkSENPRtxTiiXe"}, {"max": 37, "min": 58, "name": "XxEk5DU0KCNPNd8i"}], [{"max": 21, "min": 42, "name": "pBzGhZqfSJekDcUI"}, {"max": 12, "min": 93, "name": "AiF5yns2fHY8FXsB"}, {"max": 69, "min": 12, "name": "BhY5H4Yqi37aTJas"}], [{"max": 37, "min": 7, "name": "xmbfhflUzMsrWXSs"}, {"max": 32, "min": 61, "name": "q9SfhlahAshP5RtW"}, {"max": 84, "min": 97, "name": "oI8DwYYL9Mva4GYH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 9, "role_flexing_second": 72}, "duration": 27, "max_number": 12, "min_number": 38, "player_max_number": 16, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 16, "min": 99, "name": "nZHw5a9wFsIdDgl8"}, {"max": 37, "min": 16, "name": "cSalMdfjguQ73xH7"}, {"max": 78, "min": 29, "name": "yrXE7cqYaljTQyNY"}], [{"max": 41, "min": 49, "name": "tpHtuC1OccnLjft8"}, {"max": 95, "min": 99, "name": "XHvwwkeIlRp1YR72"}, {"max": 17, "min": 5, "name": "oJqDurN6hYvrwMBB"}], [{"max": 36, "min": 68, "name": "UuoqzsKWC7hfMBIR"}, {"max": 19, "min": 62, "name": "fS92ET8UmTI1rsTD"}, {"max": 76, "min": 67, "name": "ZOm8Hpudr7nrgoTs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 78}, "duration": 58, "max_number": 13, "min_number": 30, "player_max_number": 32, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 55, "min": 61, "name": "FfPGDejjUDCzYPqE"}, {"max": 71, "min": 68, "name": "jOZqbAEvyCtwFELL"}, {"max": 1, "min": 9, "name": "jP1TyY3YNmxLgt9b"}], [{"max": 36, "min": 74, "name": "LddRyTpvXngSSPsR"}, {"max": 32, "min": 55, "name": "2pIJXtEnc8TkZNTE"}, {"max": 0, "min": 83, "name": "QisEuj0kEt7s0NmL"}], [{"max": 90, "min": 60, "name": "W6JGhDOva6aMcsxm"}, {"max": 63, "min": 97, "name": "Opgd3zRFMGaCsTyq"}, {"max": 96, "min": 2, "name": "4gugEaH2QVfy1lzE"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 27}, "duration": 87, "max_number": 4, "min_number": 1, "player_max_number": 34, "player_min_number": 27}], "name": "uu9ScQglxcuBcLWq"}, "TGmhapaOBalE5VWc": {"alliance": {"combination": {"alliances": [[{"max": 59, "min": 19, "name": "FMS9BJT9Vx8rKQ1X"}, {"max": 60, "min": 95, "name": "vM8Jc3ZrNNQgGl2r"}, {"max": 72, "min": 14, "name": "W5p4y62nBpwj2eHB"}], [{"max": 72, "min": 21, "name": "R8Tpq0l2t387YN6w"}, {"max": 95, "min": 24, "name": "C5i6cW4mTFyKXLUi"}, {"max": 30, "min": 15, "name": "DeAVCq8InU9O0CtM"}], [{"max": 80, "min": 11, "name": "BrIpd1MgYGjnqf4f"}, {"max": 90, "min": 73, "name": "E5HMVVs7vVgojk91"}, {"max": 23, "min": 93, "name": "NhxbjMVfUvXiBIsr"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 89}, "max_number": 35, "min_number": 62, "player_max_number": 90, "player_min_number": 17}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 28, "min": 37, "name": "ecunkki80zYtlKSz"}, {"max": 89, "min": 20, "name": "0xjSmil0aqdCRM7l"}, {"max": 6, "min": 42, "name": "jr8Lsl4aYaleYGRu"}], [{"max": 91, "min": 6, "name": "rEcCQv3qOJ83EloK"}, {"max": 5, "min": 46, "name": "rCuSRUurOueP9vfE"}, {"max": 88, "min": 18, "name": "gopdZ1pbILt0hQ61"}], [{"max": 95, "min": 44, "name": "umhxt6tnhjfP9fsf"}, {"max": 92, "min": 100, "name": "5eYqHP2iguVIFFmg"}, {"max": 70, "min": 45, "name": "GgokOJUgGmYEhssI"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 56}, "duration": 74, "max_number": 22, "min_number": 60, "player_max_number": 14, "player_min_number": 69}, {"combination": {"alliances": [[{"max": 28, "min": 35, "name": "xtBvNUSsQMevR3KF"}, {"max": 99, "min": 4, "name": "fMT0BJFkxgj2mNjv"}, {"max": 0, "min": 36, "name": "iVCi6th8dgq4FgoM"}], [{"max": 30, "min": 52, "name": "lpqONgsrMMPTWLlO"}, {"max": 74, "min": 23, "name": "2jjGwYO880DyvWVs"}, {"max": 50, "min": 38, "name": "VLUZA8kOKsUeMnSR"}], [{"max": 98, "min": 46, "name": "dL7FS0ZaiPBWlQz2"}, {"max": 96, "min": 80, "name": "3AptfP40NVrc2Oqo"}, {"max": 87, "min": 67, "name": "MkG2OkOUFSy9LaHX"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 53}, "duration": 83, "max_number": 54, "min_number": 6, "player_max_number": 53, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 36, "min": 51, "name": "A1su3Wwa1LG6QrPS"}, {"max": 85, "min": 10, "name": "6MaaTV6hx7VeS7rj"}, {"max": 84, "min": 44, "name": "TU4eMpaO2NXua8z3"}], [{"max": 87, "min": 41, "name": "enpKndfaXj9hTYRO"}, {"max": 61, "min": 7, "name": "CmkA8P8WNQ9OoZdq"}, {"max": 70, "min": 4, "name": "jgOImBxyaerKYesT"}], [{"max": 9, "min": 33, "name": "TdEoheWAZbwpXTRW"}, {"max": 83, "min": 29, "name": "tmU9oqFL7HarJOLx"}, {"max": 51, "min": 33, "name": "Lc8UeO8wFi5fEBFJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 16}, "duration": 46, "max_number": 9, "min_number": 36, "player_max_number": 33, "player_min_number": 13}], "name": "Q0iifkoxCOcYLmhs"}, "Rh9l9EspKf3xmAYA": {"alliance": {"combination": {"alliances": [[{"max": 38, "min": 26, "name": "7KVATGYLiKiwPUUa"}, {"max": 58, "min": 29, "name": "PBx6GwUTULp1kIjP"}, {"max": 47, "min": 91, "name": "wwuDN4YYk2P62kws"}], [{"max": 80, "min": 4, "name": "hnmgkvnUAj9FPnUk"}, {"max": 8, "min": 38, "name": "P1gtVp2Me66PCtO4"}, {"max": 40, "min": 95, "name": "njf4DIHDn7MGcrgN"}], [{"max": 21, "min": 68, "name": "OQxn6B87WcJAVBaX"}, {"max": 10, "min": 94, "name": "Z0q7vwXZo8hzEo8y"}, {"max": 30, "min": 64, "name": "KC0oqfodnVvVkRdS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 72}, "max_number": 81, "min_number": 35, "player_max_number": 1, "player_min_number": 57}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 6, "min": 57, "name": "gc7S5q1vmqlq5i6V"}, {"max": 25, "min": 0, "name": "pQ09kTRKZaeguOPM"}, {"max": 27, "min": 84, "name": "XLgffTet5mHbmfEI"}], [{"max": 38, "min": 38, "name": "LXLNHw0RMh17FLZ8"}, {"max": 70, "min": 75, "name": "EaB6hxdftyPpyObx"}, {"max": 94, "min": 18, "name": "nqrQkKAZ79u2z6DL"}], [{"max": 66, "min": 83, "name": "nsyFG8vWs5syp5Wf"}, {"max": 34, "min": 30, "name": "wWLaliWsJwuDiVCC"}, {"max": 53, "min": 10, "name": "eRL6nBx368Sun9Rw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 53}, "duration": 67, "max_number": 19, "min_number": 95, "player_max_number": 37, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 36, "min": 66, "name": "sOHtEEtWnafrV15B"}, {"max": 9, "min": 68, "name": "qXeWLfKo66HjElTA"}, {"max": 67, "min": 0, "name": "1uYBkAn1CLJVrx25"}], [{"max": 79, "min": 67, "name": "i7sJundRnzHCJe3s"}, {"max": 31, "min": 83, "name": "vSKQUAlEUnRkPwQU"}, {"max": 44, "min": 19, "name": "AYSZqmWCSoUaVpIt"}], [{"max": 89, "min": 54, "name": "dyVe8esRe4pqa5tr"}, {"max": 87, "min": 73, "name": "TJH2ectuAjLI4KTX"}, {"max": 57, "min": 94, "name": "USSGzp9VWiEnyiJw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 28}, "duration": 63, "max_number": 38, "min_number": 25, "player_max_number": 95, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 59, "min": 86, "name": "mJri85192dwm1mkk"}, {"max": 62, "min": 81, "name": "J2Do9XcnGFG0pHar"}, {"max": 19, "min": 15, "name": "6Se03Fekn2TwFLGp"}], [{"max": 65, "min": 19, "name": "ypeASIxfR4XYHtId"}, {"max": 27, "min": 11, "name": "T5xgQ9iyF5B0V4pO"}, {"max": 70, "min": 30, "name": "J9AGOvUzXTbCpoNc"}], [{"max": 0, "min": 5, "name": "uq2lhqjDIOINjMyP"}, {"max": 21, "min": 75, "name": "nKKmeRgljFMtls7j"}, {"max": 54, "min": 16, "name": "B97XFeA1YV8qSVhe"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 40}, "duration": 7, "max_number": 56, "min_number": 99, "player_max_number": 100, "player_min_number": 58}], "name": "OA7n1mmyrmDZOECr"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 55, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'jRnoo5tp5DGuxi61' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'Xz1f7WQMFLdmiNRJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "MiPPGZdh2TlBom89", "players": [{"results": [{"attribute": "NkkGSDMsyeE6Cyta", "value": 0.005216198213779388}, {"attribute": "obuGPPysuHllv77u", "value": 0.7055047793236306}, {"attribute": "bta22sw4TzLpj2ua", "value": 0.7820618616661472}], "user_id": "YWr4BLOWmWX4ji7Z"}, {"results": [{"attribute": "dEIuwSCnqTD6aXxQ", "value": 0.4643144810425621}, {"attribute": "oNH09XBghvbW2lA4", "value": 0.4219754709505815}, {"attribute": "vumPnAvcXKD1kbhT", "value": 0.7741658632995628}], "user_id": "LCg0zmpKWcUC69t2"}, {"results": [{"attribute": "r3ON4tcOCX3j0yoc", "value": 0.3055940474845482}, {"attribute": "dRot4Aoz1v6NNHQV", "value": 0.16181148791029576}, {"attribute": "4W8TnQQfwaQ4z4vy", "value": 0.5696454066302288}], "user_id": "YeNpHxNMYkHK9sUg"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "isUsBruRoMo8Eeqk"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "LXo8kZr2Q7hBUtrR", "client_version": "xh7er006pN5Zol8f", "deployment": "M6WlafAfGlwKLGgT", "error_code": 96, "error_message": "zzmMi2zbGBiE3UK8", "game_mode": "DmCmjuoFCyqFehI2", "is_mock": "b6ny9Xe0WFXXwyUu", "joinable": true, "match_id": "neFoe7kZlo3LDjhv", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"rLWWmcszgz80dw5c": {}, "XEaPHxfrbKYi4Zek": {}, "59m22ydRZOCy0s5d": {}}, "party_id": "2uecYcOjZCZB0eCd", "party_members": [{"extra_attributes": {"ZHVkddogrjAYw3ch": {}, "5CB8kdTtZzczf3E5": {}, "dVE4ME8ChEb8ajX3": {}}, "user_id": "k3ev871i5tdiiAL8"}, {"extra_attributes": {"B3RgYv3XGk65c7Eh": {}, "SDYFQHxBB6vfZppJ": {}, "k6ti3T8GVAqjmBUb": {}}, "user_id": "OEvHaF1T59nPw9g8"}, {"extra_attributes": {"Wkw5aFNyZYruTe6A": {}, "EqXSLV3jqCciYmE3": {}, "W7GCLIkeTRms3d93": {}}, "user_id": "sV99At8ixkkxY7Eq"}], "ticket_created_at": 63, "ticket_id": "FM6FPujHZYKrMNIs"}, {"first_ticket_created_at": 40, "party_attributes": {"xe4Vs539zzDJn8s5": {}, "bbJpRd7vBco1nXA1": {}, "3Hp4gofcToSjbxnw": {}}, "party_id": "nJDKkmeeHhyTG1Cc", "party_members": [{"extra_attributes": {"HeKapFkkSXax4sKP": {}, "XDIiNaMiM0QGKfWF": {}, "l8yU3Dp5q90p0wpi": {}}, "user_id": "xHCVtCk7LYjxLGQf"}, {"extra_attributes": {"4dlQCVRcKAAD7nhF": {}, "UhHVQPDftQiDKt1x": {}, "OXcqbfm7G7QhYWUs": {}}, "user_id": "rjO0lRqrGiOyi1Hm"}, {"extra_attributes": {"Fjso8GE5QkZkAXdu": {}, "LYe5uogjeJfNiNdD": {}, "aQ9VtTnglsm08r4J": {}}, "user_id": "83pNkxrI8tzYZjPu"}], "ticket_created_at": 72, "ticket_id": "8CX0kPr9BORTRnyn"}, {"first_ticket_created_at": 23, "party_attributes": {"lCK93dvMT3Rq6aLv": {}, "GdRcOrF4m3TQ1jsR": {}, "zuhtMLuVIr7XaEmX": {}}, "party_id": "aDm7JIawNrLasxTD", "party_members": [{"extra_attributes": {"1ohxTBFMlehGxIIs": {}, "Sb6nc62omZs5ymXL": {}, "GTL42ks0RMlCjbEd": {}}, "user_id": "koSb54wy0Org7mrt"}, {"extra_attributes": {"IBY95nMqwhLeCpdX": {}, "c9q1T2cVJXp2jPgL": {}, "5cdobv4OcmKIa3NW": {}}, "user_id": "7PadB9aswE4YpqSI"}, {"extra_attributes": {"R09PBxaTF6Uusp6m": {}, "AzbVDLavTxrslJSl": {}, "EWq06YsZZQXfo925": {}}, "user_id": "E1q1V7dZo6gsO0Fq"}], "ticket_created_at": 65, "ticket_id": "HEVPoUt0G6IGEoQ6"}]}, {"matching_parties": [{"first_ticket_created_at": 37, "party_attributes": {"8G4F5fYFGzrQ9wSs": {}, "ajdB2gx2e76I9bht": {}, "W1lZcm7uNkXYWQ2H": {}}, "party_id": "WpiXgPOXpi05c8cc", "party_members": [{"extra_attributes": {"Kmie34XC1RM3mI9D": {}, "fRi923C9Ox8AsjtF": {}, "mS9QJIrc5r3RWiBb": {}}, "user_id": "sDP7b2zglHEVeAzf"}, {"extra_attributes": {"yh6fvVSywcsX9EP3": {}, "X9PQcxrPPYRayhIV": {}, "MorgWlLYX0tsE4y1": {}}, "user_id": "q71HDwXnBWw7LIgA"}, {"extra_attributes": {"cMht0pOl9hJTXiGT": {}, "vLybm0n7oaJfmeP6": {}, "UNZeJcMmuzxvZp1q": {}}, "user_id": "y0lHJXT0GFrxyZUB"}], "ticket_created_at": 20, "ticket_id": "wUevFu3ZzN2hcJTz"}, {"first_ticket_created_at": 55, "party_attributes": {"tQr44sHGFitjKqQh": {}, "H57gcu2eVqAmHieo": {}, "rzM14vxqNEsjBihz": {}}, "party_id": "hGNQivP5lL7cY2sv", "party_members": [{"extra_attributes": {"E72h0APOOf3Y98K3": {}, "gWV9r4EOE8GgU7S9": {}, "xTHPLl99tE5TXqcY": {}}, "user_id": "Lvjen87HIxD58N9S"}, {"extra_attributes": {"328NgtehbqVo51Ey": {}, "h6zXbNfh4a3ppXRL": {}, "gHdWjmbc4gh5FU7C": {}}, "user_id": "3TSionGjlTuGJAay"}, {"extra_attributes": {"kQNAiAOL3r8xV9bA": {}, "yFnsumkjcu7ZX7tK": {}, "VaW5IwbMUFm6fqtz": {}}, "user_id": "buPiqxMJ8tq2MkXa"}], "ticket_created_at": 22, "ticket_id": "c90ehxsUBxf1SpwH"}, {"first_ticket_created_at": 64, "party_attributes": {"BD0Asgf11dIgNjvM": {}, "8oGbZPk0ulWoIXoZ": {}, "VnB7BPzYhWAjEUZi": {}}, "party_id": "fgy48G3fyzEUFFez", "party_members": [{"extra_attributes": {"Qdeo1nvPtLyD2zMy": {}, "ML7hy2hn3L2Vn5DB": {}, "pv1ydKCAIITrNN6P": {}}, "user_id": "H9HtGYZFjXQTAPrS"}, {"extra_attributes": {"PzuItICDlstmjmaI": {}, "lwedZW6HGUHOO0Cx": {}, "Fpztol1iZsHZArpV": {}}, "user_id": "40C6eA5p6qNW0p14"}, {"extra_attributes": {"OtxdFFLwfoEAVpBy": {}, "W7hymM6BfproVCLS": {}, "hX4OKCRJOlGmUJZV": {}}, "user_id": "CdRk3rl92I9AWVKB"}], "ticket_created_at": 26, "ticket_id": "7Yu2N8xuO67bD2mD"}]}, {"matching_parties": [{"first_ticket_created_at": 99, "party_attributes": {"NukO8bhw4CFjrJR9": {}, "SP4ONh9bpzXBIlmJ": {}, "SDeHLVGXntMkqa7q": {}}, "party_id": "A6jDeKIVC25y72f2", "party_members": [{"extra_attributes": {"2fNP1PztcApexqlo": {}, "QLX8CPr5kof5GEtW": {}, "jt6GHlh1TqsSdK6a": {}}, "user_id": "pmgFJHkmlqtQV9pM"}, {"extra_attributes": {"1NWmLJw2JnpiMAqF": {}, "ra5iQA3HdHYyZabN": {}, "fPPvdJH6H7ihQ4mu": {}}, "user_id": "C4ukOZJR6DT7bR6r"}, {"extra_attributes": {"rnamg7GgG4VShOMZ": {}, "5asgoUANPapL9zyL": {}, "8kC2UddGqPJcyl7N": {}}, "user_id": "jPMnvTClofjnvYZh"}], "ticket_created_at": 8, "ticket_id": "P2sj7aWtyI13iz3J"}, {"first_ticket_created_at": 50, "party_attributes": {"onI4klGOiCGtPBuz": {}, "eXgEfdRYi4TYTwBl": {}, "kAwU0NwPhWcHfbe1": {}}, "party_id": "orUkMUbGgvWbNHAc", "party_members": [{"extra_attributes": {"38YNKqn6Mx9hQXZb": {}, "8JPgKWL2Vk91jQbC": {}, "mlnwFkgVvId9f5DD": {}}, "user_id": "D5fWzVdRqrftu5u1"}, {"extra_attributes": {"xZEMgnkUqbLey4hY": {}, "i86TT7TpowdmsD72": {}, "AWO5rjwT1kEM75Xr": {}}, "user_id": "QIoPcCLYBW1PODGc"}, {"extra_attributes": {"0eLvRy1P73OrAhLg": {}, "30OUwcoXGEfKXqIa": {}, "3CfXOU1dBUY0qUMz": {}}, "user_id": "zZEdu7Uwfvt9bXgR"}], "ticket_created_at": 44, "ticket_id": "AGsOHrzbxjYQeKMG"}, {"first_ticket_created_at": 78, "party_attributes": {"kEnXZYQhjnIKVPkn": {}, "cfgQ4VPpwNlxFlOn": {}, "c7t8O6y2Ofvr7Tdl": {}}, "party_id": "rieTcINMp8qzd86P", "party_members": [{"extra_attributes": {"vd07OSdN3IbMQMN4": {}, "9sVX4ssuEFQcOdlu": {}, "0ggDOWX1HcIpAytb": {}}, "user_id": "KUxR9PVh2jcIeq9S"}, {"extra_attributes": {"ElQ5LyUe2GjnDWlx": {}, "8xmipTQQvvx9QAR1": {}, "CWEjU4b8br4Vanlr": {}}, "user_id": "kLUBnEsZVrTVyifB"}, {"extra_attributes": {"D9NqCuX8knw4Rgvn": {}, "kI3hzC9gURhUTvug": {}, "dZXCoTL2VWqZnj2d": {}}, "user_id": "p1DJb6rpXhk3ZSTN"}], "ticket_created_at": 81, "ticket_id": "cXxWm2hGULnfB3MR"}]}], "namespace": "f4anBKvhhnT9Q3O4", "party_attributes": {"rskl8CkFwrQckEEz": {}, "Vv9ioIbateoxkaVQ": {}, "M86Q9a9mPRbivuSh": {}}, "party_id": "FyiuprQ0hOaEvRU1", "queued_at": 82, "region": "WTSihlfAY78REJCn", "server_name": "H76jb43dmiLZAzR9", "status": "FGTrwnz3E1P61URR", "ticket_id": "CSKae20NpoV1rZly", "updated_at": "1990-07-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "qNFW9TtnuFQLNOVU"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'x3IEwvKFqYKmD25z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 98, "userID": "LXZzrI0dtFXT0cwF", "weight": 0.12614294953645655}' \
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
    --matchIDs 'ujfsw1lHr1QJRIeC' \
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
    --strategy 'vqZ2fqvZcRY2Od40' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '6ml88WlUsw8ltOAl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'ty8XSBtRwAl9ISpF' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "ts3nm2XgvUNHbm3k", "description": "PVlqZEJmFI3LvK95", "findMatchTimeoutSeconds": 15, "joinable": false, "max_delay_ms": 30, "region_expansion_range_ms": 19, "region_expansion_rate_ms": 62, "region_latency_initial_range_ms": 72, "region_latency_max_ms": 100, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 80, "min": 48, "name": "PdHZ3oo3VtWPkDBh"}, {"max": 65, "min": 31, "name": "Vy2DWoNI2o5mWGe2"}, {"max": 65, "min": 54, "name": "3RHZeYLNAfqPW2my"}], [{"max": 21, "min": 14, "name": "xKm2oWAZEjESzjeB"}, {"max": 86, "min": 14, "name": "giqzv60dCFWCw0iH"}, {"max": 1, "min": 35, "name": "nqxMtkVi6d5zSMvA"}], [{"max": 31, "min": 15, "name": "7OtTaVzvWuBfPB1C"}, {"max": 54, "min": 80, "name": "bGWnOPDZRodaxQk4"}, {"max": 99, "min": 95, "name": "wg0sYcQ7uVXyVHxE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 20}, "maxNumber": 20, "minNumber": 98, "playerMaxNumber": 30, "playerMinNumber": 41}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 72, "min": 70, "name": "qoUNAqvp7mUTeite"}, {"max": 87, "min": 79, "name": "JOjLgvrvRRq3Yve0"}, {"max": 72, "min": 95, "name": "fnO0NC3DUn0GF0yl"}], [{"max": 11, "min": 31, "name": "L2mXadbFjPpEEDJ6"}, {"max": 31, "min": 17, "name": "U9QcXXHVDXJ08tew"}, {"max": 84, "min": 60, "name": "lsi4MHhtjXWS8qBu"}], [{"max": 6, "min": 78, "name": "y5KdR2HpfMqXR05W"}, {"max": 48, "min": 49, "name": "x5KXLNDR8xCJ7T7N"}, {"max": 40, "min": 40, "name": "K4lowcHtSUQsQhB9"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 83}, "duration": 56, "max_number": 82, "min_number": 98, "player_max_number": 78, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 26, "min": 24, "name": "YYSzUfoZcJg7eO9V"}, {"max": 66, "min": 67, "name": "hKoQKkYnfIqZsVna"}, {"max": 31, "min": 79, "name": "bsDP1smylKCmPzT4"}], [{"max": 21, "min": 99, "name": "poM4GdTNXMc2FMGS"}, {"max": 91, "min": 12, "name": "L1XV3ofz4Z1pu9ES"}, {"max": 93, "min": 73, "name": "yzki8RfnZSvqPMzt"}], [{"max": 23, "min": 13, "name": "hCtzdFtrEoXCX3XD"}, {"max": 63, "min": 32, "name": "B0u9LRVU3pmqT9NU"}, {"max": 5, "min": 14, "name": "p18gSciqBWxOdHEc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 24}, "duration": 11, "max_number": 53, "min_number": 96, "player_max_number": 95, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 57, "min": 59, "name": "TAvr4p2J1SzhxTKu"}, {"max": 75, "min": 45, "name": "n3BXoSC7qRN7HrMY"}, {"max": 89, "min": 80, "name": "HA84DLSmQhJJR4tm"}], [{"max": 41, "min": 99, "name": "Ew74lcdx9xSDeJyg"}, {"max": 5, "min": 16, "name": "HjAKbACgRIAyvL46"}, {"max": 29, "min": 5, "name": "ZPuUtZGBi7QthmoC"}], [{"max": 83, "min": 76, "name": "1TDRab5jysazR8j3"}, {"max": 88, "min": 25, "name": "pFXUfcFNbzQpVmyW"}, {"max": 77, "min": 10, "name": "YJX6cFM99UFxlLiZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 2}, "duration": 96, "max_number": 75, "min_number": 81, "player_max_number": 52, "player_min_number": 62}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 40, "flex_flat_step_range": 2, "flex_immunity_count": 79, "flex_range_max": 90, "flex_rate_ms": 2, "flex_step_max": 27, "force_authority_match": false, "initial_step_range": 79, "mmr_max": 60, "mmr_mean": 57, "mmr_min": 82, "mmr_std_dev": 9, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "ZIjroenizuLAfY8D", "criteria": "5x6m3kEpbvvyJdFf", "duration": 11, "reference": 0.4433193523337955}, {"attribute": "IesXfUhHu3E3lBIg", "criteria": "bGiZ8fArOQ8QBQZM", "duration": 77, "reference": 0.2708795522240025}, {"attribute": "AtslPiAVA80u9q7z", "criteria": "ETKnhAOh2jSBz0yD", "duration": 69, "reference": 0.3953809319852718}], "match_options": {"options": [{"name": "Oh7c4f5CFgckc1OR", "type": "vBa4UXuxrvWKvgjE"}, {"name": "qEDYTN4XkuFRdDsu", "type": "0QKpCx46mvBWPtiG"}, {"name": "dD8uIrow0H5beGzs", "type": "E5qmbbAGeiDA7NXA"}]}, "matchingRules": [{"attribute": "1yh4KaPSfZVx282R", "criteria": "v7liWoFXEnqWj31z", "reference": 0.29921352442031246}, {"attribute": "T7yAQGoGS7VraOmF", "criteria": "KG8WV1CFg7TVYlMT", "reference": 0.4990411214944609}, {"attribute": "tmLtTV4oIoEQBNob", "criteria": "RteeRRjU712JYjBb", "reference": 0.9094551605623284}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 69, "socialMatchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'vHKgyolWG09Zwol2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'cMMT0wLiDOguhH11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Eh9YTfALzZUNDFyB' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 30}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'rBc8JOdsnORsZouD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'wUvzuA6d5M8HjqIN' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "VHQPT2OepZOJWOj5", "count": 44, "mmrMax": 0.08164116040602531, "mmrMean": 0.49595756163448035, "mmrMin": 0.0019284269395044573, "mmrStdDev": 0.774713860617236}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'Guw8g9xttRaU9cDV' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 50, "party_attributes": {"aL2KvUhbeQd867hZ": {}, "zskwFrzv3WnSOX9Y": {}, "YkCEPAqdtHv1l7mJ": {}}, "party_id": "W4wBCOhEKtNLHIFR", "party_members": [{"extra_attributes": {"fs8SnMrhXNnTshC0": {}, "4utcOZK3xattrOfg": {}, "trpSSDFE2L2dJvku": {}}, "user_id": "MyXyj9i4s0vdynGa"}, {"extra_attributes": {"sktRNCDE8NCYzYTc": {}, "fV2BPGA0C2o1rEvB": {}, "brzCVKg4BPUBoTYQ": {}}, "user_id": "uauXCH2OJ4OQUXHe"}, {"extra_attributes": {"BWJLNovAKe89Ng8e": {}, "y8QHHDrpIwyyR1ij": {}, "nhFGA7eHokUR57Ds": {}}, "user_id": "2vkAH10Ku33qhq7u"}], "ticket_created_at": 73, "ticket_id": "97QGQw0ggUWkKbyt"}, {"first_ticket_created_at": 0, "party_attributes": {"9ylnbgKv5pwncDqN": {}, "J1mDE1W7SIVZvpU2": {}, "SIWBoRoG0xfGj8wJ": {}}, "party_id": "pbwRbn9RoGOZGvTD", "party_members": [{"extra_attributes": {"WSkFdJdhe5byCT9i": {}, "ChECF6x7xqBI700B": {}, "r9SrOeJgOQlDv9yF": {}}, "user_id": "lKhSINb0L8WaKkif"}, {"extra_attributes": {"58n4sUGxB6QRHwbd": {}, "eWndWIlm3rDcBjTV": {}, "cV7p29KQ9eekFuhl": {}}, "user_id": "qAXk2Zk1LBZKrVu2"}, {"extra_attributes": {"iL9Dzox2F3cCuK3I": {}, "19Kj7Mb1z7fAfbaz": {}, "VrffJzmjXC1j1lqn": {}}, "user_id": "kTQikB7E69nuSlBm"}], "ticket_created_at": 15, "ticket_id": "bo0fuMuRenqhYZnO"}, {"first_ticket_created_at": 15, "party_attributes": {"az24CWj7YEgAPKkd": {}, "IJHSS0dOuOTIhCWm": {}, "vndedtSqrmRCANr4": {}}, "party_id": "A541J4yz5NwcfR1U", "party_members": [{"extra_attributes": {"IMHxLEJVVOhKZW3k": {}, "HczSHmj6nlptk5BV": {}, "g19NoDIyZ3HDBXK6": {}}, "user_id": "J8dNsROVzs4qL57g"}, {"extra_attributes": {"L2XIrjZNCP1Jvoyq": {}, "ITJ6D535fx41xcGQ": {}, "83oNHTtVR0oTaIF8": {}}, "user_id": "887SjCgOz2nXUU9Y"}, {"extra_attributes": {"vL8dKY8yq89cxMOC": {}, "t3RhgLvBrqYpmocw": {}, "pFouFBbUxq0uChqA": {}}, "user_id": "eSrRy6aGZqmZburp"}], "ticket_created_at": 81, "ticket_id": "VK2aPIw30HTBPcoE"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '7sF1oDjfGZaHcQ6M' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 63}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'mdCfjzlmdEYSgEL8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'Yp0PwKIx2TmCReLa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'tg4QsxjOLwUWNbIq' \
    --matchID 'NPU1Gk8y8JsfEwT5' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["VfvWFejfbdiVqcY0", "p43ua8HKmKJipLo2", "c2lxMSnkPmqJhRDq"], "party_id": "n1OghyM9nj2itIni", "user_id": "cOXK8khJlV8bsgPn"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'yRy5D2EE8S0wt18B' \
    --matchID 'K7SndsM1nxmr3zLZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'nT93BmyinxTqP9zn' \
    --matchID 'vrAHZpkIpIuuRlJT' \
    --namespace $AB_NAMESPACE \
    --userID 'DkD8w6Dsyr1wnJ0j' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'YnredOfuCKMBKABc' \
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
    --channelName 'ApKWjH0KNI5nGu5r' \
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