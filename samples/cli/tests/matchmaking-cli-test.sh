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
    --limit '91' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "mIIHJn4fqOMo0egu", "description": "ADrNOjL3gCYwPH0o", "find_match_timeout_seconds": 90, "game_mode": "qVFMCn0Ywsu1kn5u", "joinable": false, "max_delay_ms": 10, "region_expansion_range_ms": 93, "region_expansion_rate_ms": 44, "region_latency_initial_range_ms": 95, "region_latency_max_ms": 31, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 96, "min": 96, "name": "ZnpR7SbYq11yyQUy"}, {"max": 27, "min": 25, "name": "GM0oN1crxBcBw5Ip"}, {"max": 87, "min": 71, "name": "Vh1yVtuL6yi8eqnZ"}], [{"max": 2, "min": 82, "name": "5IVc7LklSn6ulfIE"}, {"max": 75, "min": 10, "name": "RbmpYzEora5hEocd"}, {"max": 88, "min": 94, "name": "jWNSC5BpIGQyyEgV"}], [{"max": 87, "min": 89, "name": "98fHcfl6Xicup49O"}, {"max": 12, "min": 75, "name": "NrcMXyMCIe9vBxhK"}, {"max": 56, "min": 38, "name": "OuQJBXMtb43DJDDI"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 54}, "max_number": 3, "min_number": 96, "player_max_number": 2, "player_min_number": 84}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 21, "min": 79, "name": "7pVFH6X9r2nIgznP"}, {"max": 13, "min": 94, "name": "hQKg0OCYD9qga63L"}, {"max": 25, "min": 44, "name": "Zf2ZCufHV8bJAUtu"}], [{"max": 27, "min": 90, "name": "4iue5CzHQqcE52o1"}, {"max": 30, "min": 11, "name": "cxQeIRUUxkcNTxYV"}, {"max": 21, "min": 1, "name": "y2hs7Aj9IY6dj4cv"}], [{"max": 83, "min": 84, "name": "UXmBC6dZctFhaoXW"}, {"max": 52, "min": 12, "name": "LOY5X0GbRiLWoysJ"}, {"max": 14, "min": 81, "name": "I8j0wh2wTN3g6PXh"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 69}, "duration": 13, "max_number": 88, "min_number": 1, "player_max_number": 42, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 100, "min": 77, "name": "uTDJqYKs6H4Yyf10"}, {"max": 74, "min": 3, "name": "WicadG0X5oiYYP8U"}, {"max": 38, "min": 20, "name": "UGgFpko474RXaxJC"}], [{"max": 95, "min": 52, "name": "FAWMNpAe3pIz8rNb"}, {"max": 41, "min": 30, "name": "GSeu9e2ttpmd80W3"}, {"max": 77, "min": 75, "name": "ofcv0fPZuIOi4sRP"}], [{"max": 21, "min": 35, "name": "iDmJE2n5JzTB9oxQ"}, {"max": 33, "min": 73, "name": "yH3uUf6CZ9luhtV1"}, {"max": 62, "min": 81, "name": "rb7Y9rERRUAKFdE1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 58}, "duration": 97, "max_number": 59, "min_number": 93, "player_max_number": 36, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 67, "min": 65, "name": "ZwHbr0RysDMakOyP"}, {"max": 17, "min": 25, "name": "yiwR5KIPr82yHoPp"}, {"max": 13, "min": 65, "name": "jNlsm1QO6CEjGrQn"}], [{"max": 80, "min": 39, "name": "WjUrqR7NgScQ1PRh"}, {"max": 46, "min": 83, "name": "2xhZsLMstGavb0Z3"}, {"max": 100, "min": 22, "name": "DXveLwS9YTNS6E6y"}], [{"max": 33, "min": 100, "name": "bPSGDTfubmcCrrf4"}, {"max": 80, "min": 24, "name": "goB1GsiWtKe6ihhZ"}, {"max": 52, "min": 58, "name": "RnITTVPSoIC2RGKj"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 83}, "duration": 92, "max_number": 93, "min_number": 39, "player_max_number": 38, "player_min_number": 65}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 90, "flex_flat_step_range": 90, "flex_immunity_count": 54, "flex_range_max": 9, "flex_rate_ms": 92, "flex_step_max": 2, "force_authority_match": true, "initial_step_range": 68, "mmr_max": 49, "mmr_mean": 99, "mmr_min": 88, "mmr_std_dev": 28, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "GLN2AKg7OrhSprQp", "criteria": "tjl4BMVFM3LiOMyO", "duration": 32, "reference": 0.46710888424520813}, {"attribute": "PpGcKqD3AvKuTPAn", "criteria": "rozD69aK2CDclMSe", "duration": 4, "reference": 0.7792295192084373}, {"attribute": "fajxyMRxtwrqNzwQ", "criteria": "dKJHGg3AzFVGNymN", "duration": 91, "reference": 0.2506380047604363}], "match_options": {"options": [{"name": "n3fiCGzadAODxQW0", "type": "xjkXD15fsAkYBg5g"}, {"name": "POVWOay6DMj900FE", "type": "u6E9851cQSKvBaYH"}, {"name": "lpQ1Eg9Haexj94de", "type": "75h717fa1U1KxKUB"}]}, "matching_rule": [{"attribute": "7YJP8xgTTYAoUx5m", "criteria": "ufWgEQCceq4Ug3ED", "reference": 0.46775904241491384}, {"attribute": "wapFaDDBOdDT4gDs", "criteria": "duYcqMbmWYnn6oZs", "reference": 0.058943582303837005}, {"attribute": "euxGc42oaBdQSjSg", "criteria": "hjFO85cTUxDQ27tG", "reference": 0.32369755384635435}], "rebalance_enable": false, "sub_game_modes": {"rymFchInwxyRPzx6": {"alliance": {"combination": {"alliances": [[{"max": 99, "min": 41, "name": "Mcrha8KkQ60ibj30"}, {"max": 96, "min": 11, "name": "BZXE6OFt3BvEKaPh"}, {"max": 70, "min": 56, "name": "XwMzH2ubnMhkqVlu"}], [{"max": 7, "min": 95, "name": "44Qjno045BWoynZx"}, {"max": 57, "min": 44, "name": "bS6dRf9CxZRkD58d"}, {"max": 67, "min": 50, "name": "1kHIvfmo1Cr3OTA2"}], [{"max": 20, "min": 89, "name": "TMq6egTaMfLTHduR"}, {"max": 87, "min": 2, "name": "PhKg2b5w9kSU0e9v"}, {"max": 18, "min": 35, "name": "qTwDDxzWkBHRR57h"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 29}, "max_number": 99, "min_number": 7, "player_max_number": 31, "player_min_number": 71}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 71, "min": 73, "name": "5tzZszJJvjLMdpkN"}, {"max": 92, "min": 89, "name": "fXBVssoXqWNnhLj8"}, {"max": 39, "min": 70, "name": "eoHe86FXCu2PW8Yw"}], [{"max": 23, "min": 56, "name": "8IjEtSM5bddZdeeZ"}, {"max": 35, "min": 1, "name": "cBfxWudGSzchZRxE"}, {"max": 26, "min": 17, "name": "CGd78hqfw6mOCflj"}], [{"max": 32, "min": 30, "name": "1wZh6AqMrHQpsvsH"}, {"max": 67, "min": 53, "name": "DLLULZXckzsTpSPw"}, {"max": 28, "min": 34, "name": "LOUFG83xULv9clVv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 18}, "duration": 25, "max_number": 70, "min_number": 69, "player_max_number": 34, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 50, "min": 64, "name": "mMKnIBVQWsaFjRkB"}, {"max": 97, "min": 62, "name": "gKwT7KwhpskzoCeR"}, {"max": 76, "min": 0, "name": "8EwmalIniqUKqVJX"}], [{"max": 90, "min": 7, "name": "sNklaegx4FBDBi2m"}, {"max": 26, "min": 21, "name": "2KaYdrFmOAmye8Mn"}, {"max": 1, "min": 84, "name": "DbuCJfMFTi1KyoB6"}], [{"max": 76, "min": 93, "name": "PWpgYt0Lqo3EinB3"}, {"max": 49, "min": 47, "name": "Zs2q1aIrAROQB8Pw"}, {"max": 30, "min": 64, "name": "k58g7ZgB0xpbPbe5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 0}, "duration": 37, "max_number": 88, "min_number": 50, "player_max_number": 25, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 8, "min": 72, "name": "E7DGFhSt62bLs4oD"}, {"max": 76, "min": 85, "name": "omLBkyckKFkTeIBc"}, {"max": 50, "min": 34, "name": "kYlJT6I3CUUjwk0n"}], [{"max": 0, "min": 85, "name": "IWMzFfE8QIv6SV8z"}, {"max": 32, "min": 94, "name": "bwegxvP6QzrYoCCH"}, {"max": 98, "min": 84, "name": "uvtL40G2XE7mdui4"}], [{"max": 11, "min": 32, "name": "6ZPkKH0BqKk7VLgh"}, {"max": 9, "min": 41, "name": "zgJk8CH5ehobcUAv"}, {"max": 41, "min": 15, "name": "uCEfX5p2uYVyktEx"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 8}, "duration": 13, "max_number": 17, "min_number": 67, "player_max_number": 75, "player_min_number": 39}], "name": "GFiK4wJCtU46RSmW"}, "j1sSksYFxG7MJBct": {"alliance": {"combination": {"alliances": [[{"max": 97, "min": 60, "name": "UPsRFkv5459jlrPi"}, {"max": 6, "min": 94, "name": "B3xMOBZOvP6S1wMA"}, {"max": 97, "min": 86, "name": "ORnfwHRE7tIfEVOF"}], [{"max": 95, "min": 96, "name": "PCJp15Mz88xzd91h"}, {"max": 50, "min": 35, "name": "haEXmWvKEaNrAiTx"}, {"max": 12, "min": 53, "name": "VTfFaHpJXFvwFz2s"}], [{"max": 59, "min": 44, "name": "4CiudITV3fAgWM0E"}, {"max": 23, "min": 38, "name": "Xihrwla9o8wyN2cN"}, {"max": 84, "min": 100, "name": "oYjg1MLfGi2rVKin"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 40}, "max_number": 15, "min_number": 83, "player_max_number": 60, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 40, "min": 65, "name": "1BQxkjNn8kr7CdCe"}, {"max": 5, "min": 62, "name": "p7vnOnm4yg8aJn0O"}, {"max": 32, "min": 44, "name": "h5VC8wSXIQLBMhfM"}], [{"max": 56, "min": 71, "name": "woQz8OkwObhabj9d"}, {"max": 93, "min": 99, "name": "90aHDRghTDk4ESMe"}, {"max": 52, "min": 22, "name": "1Ca49fzVKrdAUrZo"}], [{"max": 10, "min": 42, "name": "ov4BHhW9qPJcsykS"}, {"max": 84, "min": 78, "name": "DiD8AgtMUzI9Vtsf"}, {"max": 58, "min": 95, "name": "ZvtXPny2rUqyEXer"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 10}, "duration": 6, "max_number": 77, "min_number": 44, "player_max_number": 54, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 43, "min": 72, "name": "PJbS5wkVWO8S7vNH"}, {"max": 31, "min": 5, "name": "go0D7VKVoz30EYdX"}, {"max": 75, "min": 16, "name": "359wdprd7ziCwMcm"}], [{"max": 26, "min": 76, "name": "3vyZWkR9mZe3SFqf"}, {"max": 25, "min": 74, "name": "0DYQMQYsPQ6IQjXl"}, {"max": 79, "min": 19, "name": "10l3EIkZczuu5ahG"}], [{"max": 60, "min": 95, "name": "oFK6Qym3RbH8BrsG"}, {"max": 32, "min": 48, "name": "6DalgtweAy5xr1Nm"}, {"max": 44, "min": 76, "name": "FD1ndAvRGmKEoXHK"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 18}, "duration": 0, "max_number": 82, "min_number": 65, "player_max_number": 62, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 56, "min": 93, "name": "94GLwQ3YeVSFkC7j"}, {"max": 56, "min": 48, "name": "8900ucfyRTl6VSF3"}, {"max": 91, "min": 84, "name": "DbvQlyVGJHpqxR5s"}], [{"max": 14, "min": 81, "name": "Me5aRgoeMJN3ut5U"}, {"max": 42, "min": 36, "name": "kOduK6uHX8RCk8zB"}, {"max": 48, "min": 75, "name": "GY0XyX5qXEKFmXwn"}], [{"max": 33, "min": 71, "name": "bAOKLZGMNpNRxsmK"}, {"max": 84, "min": 8, "name": "RGnS8GlpOnUXTvAI"}, {"max": 93, "min": 5, "name": "e2L0c2ZDyKDD23Da"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 63}, "duration": 93, "max_number": 79, "min_number": 86, "player_max_number": 27, "player_min_number": 39}], "name": "GG2ZJZWVOMLidAj2"}, "Rj6KVOHkWsahdFUs": {"alliance": {"combination": {"alliances": [[{"max": 36, "min": 33, "name": "0Oc1k1XLx2TD94CL"}, {"max": 48, "min": 75, "name": "htx6n0UrCC3pf1sD"}, {"max": 82, "min": 72, "name": "QEuTcBhPwOx6JrLk"}], [{"max": 13, "min": 57, "name": "qyWRastqnlyrzEX7"}, {"max": 60, "min": 29, "name": "xikXJHBfSCnfB8ai"}, {"max": 34, "min": 61, "name": "SoQXieoKbLjLCdB8"}], [{"max": 3, "min": 72, "name": "P8zf6oloJbd7dTJM"}, {"max": 71, "min": 42, "name": "ByMHjBezdAZnHvSP"}, {"max": 2, "min": 62, "name": "9t8pYZI7CHtpj7Nt"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 48}, "max_number": 67, "min_number": 93, "player_max_number": 37, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 97, "min": 83, "name": "P0ZA0vWgoPqn9sOw"}, {"max": 76, "min": 58, "name": "Q02eoemH2oGvtNhM"}, {"max": 79, "min": 94, "name": "rtp9WNZqIhL1h5gV"}], [{"max": 82, "min": 58, "name": "u6I5gzoO8ylr9FMr"}, {"max": 90, "min": 60, "name": "2gOZZ7eX7ZbzMFg8"}, {"max": 77, "min": 5, "name": "gtEfMNuiWitM7o0v"}], [{"max": 30, "min": 33, "name": "FtljNZqyRFABy6XW"}, {"max": 16, "min": 75, "name": "x9gz7Oo8QXD8sCXX"}, {"max": 6, "min": 63, "name": "naQg3VwQEMJjJheI"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 26}, "duration": 7, "max_number": 4, "min_number": 54, "player_max_number": 44, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 4, "min": 61, "name": "VbB51p9hovyMJ2mA"}, {"max": 12, "min": 44, "name": "B2yZcqCQWEZUYZ3z"}, {"max": 83, "min": 70, "name": "nzExANgPkqFjQZXi"}], [{"max": 23, "min": 61, "name": "5Iv4UyaenZ7RKDQ3"}, {"max": 56, "min": 29, "name": "s42RaenemJ5er0x7"}, {"max": 29, "min": 58, "name": "6G6Kr33D4BO9ZiaG"}], [{"max": 13, "min": 16, "name": "eFH4OPz0KrNs4TSN"}, {"max": 66, "min": 49, "name": "4qTZ3qfjTCIE7ciu"}, {"max": 62, "min": 48, "name": "VcXuuFTnVryhWB5d"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 33}, "duration": 22, "max_number": 44, "min_number": 44, "player_max_number": 44, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 82, "min": 11, "name": "XnbbBXhUoNGNSwgD"}, {"max": 42, "min": 35, "name": "2frzpkxnazrZDDTS"}, {"max": 81, "min": 48, "name": "XePd8kYjjT9CKpve"}], [{"max": 27, "min": 87, "name": "jrlS5IK1SEzvIjmw"}, {"max": 12, "min": 59, "name": "Jz19aeK2osRQQXBy"}, {"max": 0, "min": 43, "name": "08cN1yv0Vg0cojlV"}], [{"max": 10, "min": 61, "name": "ZvHo20TpD4lzvMnz"}, {"max": 37, "min": 80, "name": "jiDsBx2ZdZVcohM6"}, {"max": 28, "min": 97, "name": "opf84A8yOHEuqDDu"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 68}, "duration": 27, "max_number": 22, "min_number": 23, "player_max_number": 8, "player_min_number": 23}], "name": "lemF8WytLPc3FZSy"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 94, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'KGLE4uJ6yqO8tAEx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'L80yx3lliNfyId1L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "whQw8xwGqp80ZYqu", "players": [{"results": [{"attribute": "b0XJTHtoCcDA7kis", "value": 0.6676986949018153}, {"attribute": "YVAFO70ZGcNaYez0", "value": 0.6166411379872716}, {"attribute": "u23mczCFnSMb09GZ", "value": 0.6993274158042455}], "user_id": "KZU8tKNgqGMfQXEa"}, {"results": [{"attribute": "jAxMFZIlel1Tiqir", "value": 0.9747099487352673}, {"attribute": "JJXlXXppshCT1QEj", "value": 0.34087590437780224}, {"attribute": "F550jlIcobAYDV5H", "value": 0.9566192574691271}], "user_id": "fsTICn3VKXqgz5Ic"}, {"results": [{"attribute": "cKCMWKtGoFSy6jVW", "value": 0.14519240181525428}, {"attribute": "s9DiDyylnSFYbmU3", "value": 0.2504340488317336}, {"attribute": "0AKkhbJLpOPmLs6z", "value": 0.2859807589772694}], "user_id": "f6K5WwTZFnybYU5a"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "xLCbpQtRpjtJIJ0a"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "jNqwbEkLK2ZjwqJx", "client_version": "M1atNg4s6JVA6ciM", "deployment": "hJ4O8VHbgXJB9Rnt", "error_code": 87, "error_message": "wnN93sXG83fMDFnG", "game_mode": "tneuyYXyOPsT06BZ", "is_mock": "iVDdORWf76U60kdZ", "joinable": true, "match_id": "NQWp3c1NgurDVn77", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 55, "party_attributes": {"yibQRRiKon9u2bDC": {}, "cAxkpKGh89oEc235": {}, "hby3MMZjG8NHpngo": {}}, "party_id": "0WVdKi7CO0x0GiOa", "party_members": [{"extra_attributes": {"fAXtKa9FvOjQTg93": {}, "YybhhtGkfsxf0nIj": {}, "dfFi2FS3AHZKlhlw": {}}, "user_id": "hTUOCyjVp9zCBxmU"}, {"extra_attributes": {"kgoFXykuesc5zRPk": {}, "0xWE7NRTofQofcOC": {}, "J3fUiuGAGk0m03te": {}}, "user_id": "nwa3EBorGCXAwyG5"}, {"extra_attributes": {"X0V0lEESawIvEHRi": {}, "VJH08M70cuBS16OL": {}, "EGJwcTAmFZAR200R": {}}, "user_id": "cgO6lotl6DdB1LCk"}], "ticket_created_at": 19, "ticket_id": "Giktf3I4JYG2haGp"}, {"first_ticket_created_at": 3, "party_attributes": {"bKdbqCujmFihlOZT": {}, "RKnOXmfb2WVRXklr": {}, "aSyYiPvZ1GToREOF": {}}, "party_id": "Qb9xI7SnNwadBPBo", "party_members": [{"extra_attributes": {"UZb1uHSb9yGpYFro": {}, "M6HObhy5DAV6mhhF": {}, "O9xhbUThvXp0IIev": {}}, "user_id": "NCPIGVpt2IAmtb4E"}, {"extra_attributes": {"hG6khk4zEAprd4nD": {}, "pWolTTEyG05FOqTk": {}, "MEGcz9gyi9Kw2uFM": {}}, "user_id": "1CZ3VkuN4Yz3fMVa"}, {"extra_attributes": {"4NF1cUA2lZSDEJqn": {}, "aWPpepjsObmg9tUM": {}, "pUaJimVC6orGeyLo": {}}, "user_id": "BMXcUYZBt9Vfxwvh"}], "ticket_created_at": 15, "ticket_id": "qkRsqesabu76jkHl"}, {"first_ticket_created_at": 54, "party_attributes": {"jj9qmjTVTS7jD9BG": {}, "z045z20TzcY9yxWL": {}, "YDAVGBbg8YeElzkQ": {}}, "party_id": "8FvcWjVn6LLIIgyg", "party_members": [{"extra_attributes": {"DDw5BWHYwXGrMSD6": {}, "7fIwyEUxqhdgBB4O": {}, "ZODGNuajJU4Z6fwf": {}}, "user_id": "hiGoKfJsYLlI7znW"}, {"extra_attributes": {"y64mLVdvnqEnc4dG": {}, "Sr59ahy22Y1FeNzg": {}, "slbLpXdcPyOXVCik": {}}, "user_id": "cXGwaGqgWqMAgfag"}, {"extra_attributes": {"tkgZKSmcbJyRezID": {}, "W5IUEVxIuaP5T23w": {}, "kMbTey5MhlXZsN0n": {}}, "user_id": "DTEGhc5tMKw6IigK"}], "ticket_created_at": 22, "ticket_id": "VsZCIB8yuee0FUgP"}]}, {"matching_parties": [{"first_ticket_created_at": 38, "party_attributes": {"tGt5QzXk0B5sfIPW": {}, "3EyTYUW4gpengTzp": {}, "9eXQDLzycUpeOksw": {}}, "party_id": "xK6TVHshlePKjkzH", "party_members": [{"extra_attributes": {"IbVaXST08iSEivyq": {}, "2DBe6FjR23CLetny": {}, "7V6Qmv90YTAUOn4w": {}}, "user_id": "MiNsBmI07PzfzTl4"}, {"extra_attributes": {"xcDkjTbuSxVmjDzH": {}, "3rd1gC3SS2KUOuvj": {}, "90wDKfxJ0FDh9pZA": {}}, "user_id": "m6F5D5wQFKdHhZTu"}, {"extra_attributes": {"r4e7c5TB0QrzKVp5": {}, "VJFfH6bfqfiW8NQ4": {}, "1EMSeeDzstdSEjOL": {}}, "user_id": "Yp1Jl4NB54Xz20L3"}], "ticket_created_at": 36, "ticket_id": "5h696YSv1Zo3DR5B"}, {"first_ticket_created_at": 94, "party_attributes": {"zneDlLQhU9d8fk8g": {}, "o06UqLuMyXxlOFEg": {}, "Q5jFXF9sfdUZXwpH": {}}, "party_id": "eVVPP3Otk1U4MHGO", "party_members": [{"extra_attributes": {"MzM7SaeAjw2faRee": {}, "QoGvGndp2dkjRdm5": {}, "mgwRxGNm6cSons4G": {}}, "user_id": "IsS4WHs6yfvOeG2g"}, {"extra_attributes": {"9X6kKyHqdJNoRsLK": {}, "jbERRN7rHZYTuHP6": {}, "phQnhKCBwAKhZlmW": {}}, "user_id": "SAiuXQ0hliNl9dxv"}, {"extra_attributes": {"R1vBRjotzurUxAGS": {}, "vXBKAGftbmtUjilq": {}, "8H6BP1IC5Fw7y7qt": {}}, "user_id": "hVtRhzrlrm5QiFQ0"}], "ticket_created_at": 85, "ticket_id": "TMScsbcOEhE5of1X"}, {"first_ticket_created_at": 98, "party_attributes": {"dI68hIvxabGEWe2i": {}, "bIB91YF34khKykvS": {}, "KJgojAgxffQ40Dnv": {}}, "party_id": "MaHwilV6Ap8vGBgc", "party_members": [{"extra_attributes": {"r9f2vpeMeEKT1nXj": {}, "O3qYBSCV5qqLgKUg": {}, "rfUhICzXgDJMjZ02": {}}, "user_id": "zFnoKNP3ZHNmY8UV"}, {"extra_attributes": {"4g2Li5jZWphEwDs5": {}, "0wWQbtyZRzIti0tu": {}, "UZtQfWjrgo6YTHTb": {}}, "user_id": "djbLAKqDTZTcXQbO"}, {"extra_attributes": {"a2vmh6zBabYkX6Iu": {}, "UimFpY2DEm0Z97Xc": {}, "prTkR1dhlroisY9f": {}}, "user_id": "Qp34guAIDIn1e6S7"}], "ticket_created_at": 82, "ticket_id": "q6uDcPTdks9pmqWz"}]}, {"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"rGvPI6JEkZi0saYw": {}, "BX67rRajeV12LnB3": {}, "tRwsplvQnEN97svo": {}}, "party_id": "ODpSNmwA59dWhM1J", "party_members": [{"extra_attributes": {"Hh0PGaNs3R048HUm": {}, "Yam3B2iGezAss2ly": {}, "7JurR4fmD2JPTtsi": {}}, "user_id": "u6Kgr9Zct1JJvpCG"}, {"extra_attributes": {"CII8g3AjtSG7Vf0d": {}, "RX2NvoILpg8xmMaV": {}, "ABIxlbazJOC0qFpC": {}}, "user_id": "WmpqQC7tdVuBbPSe"}, {"extra_attributes": {"cKiheaCAQufg2nad": {}, "G19B0IkFrhffmK1l": {}, "mM1QtDxCLzLJY9Fx": {}}, "user_id": "5zfI2U5UUF0MBZVC"}], "ticket_created_at": 84, "ticket_id": "xCsAXWC1NLcRcPrG"}, {"first_ticket_created_at": 69, "party_attributes": {"qyaERbskXHBBliX7": {}, "peGjZTilZvGwrv24": {}, "JDzkusrANBviMLsU": {}}, "party_id": "oEn5WDP7vjhGp9nm", "party_members": [{"extra_attributes": {"rA4o8xxvyvSe7GG5": {}, "UnJNhtVJ3gfSudNr": {}, "FYuzFu2K0xuzXSxA": {}}, "user_id": "fn4GOEiLznJNMq7O"}, {"extra_attributes": {"3yO6FHFEbmf5b9wk": {}, "6k63lnK5PkZmbLUi": {}, "1mfed1jUwF1HYlAM": {}}, "user_id": "ScHvf3P4Plwkmjz4"}, {"extra_attributes": {"Tp1Okiy5RiMQHpZD": {}, "ecXVjjvLxav4DBf2": {}, "V7bWucdadROORJtc": {}}, "user_id": "giRDviW9QrmIqDp9"}], "ticket_created_at": 78, "ticket_id": "qcx0q9428Z9qfwRm"}, {"first_ticket_created_at": 18, "party_attributes": {"AIcOtBmd6jGpD6LA": {}, "AvHJzub5GkyH22HX": {}, "CpAGCJbDiCSEsKVL": {}}, "party_id": "GRFH6wJBZ5cTg1aF", "party_members": [{"extra_attributes": {"1HH2bY1FqVwxiUj7": {}, "icPSd3Ziv2UIccR0": {}, "ZlAE5DS4svtmVwq7": {}}, "user_id": "1NmAU4mLhhSYTSDj"}, {"extra_attributes": {"DPeKBWeae4EgRkxq": {}, "R3alY6LHRCxuWNF2": {}, "mLXcrpflbZxzXLUR": {}}, "user_id": "ODLv40RaoWdTTANG"}, {"extra_attributes": {"W26aDwfU9EnJuXLB": {}, "ZQgvHrFkOAV2movA": {}, "7cnKnDYOceMmqprH": {}}, "user_id": "397DI3ZsMQcZerw8"}], "ticket_created_at": 95, "ticket_id": "bKu8GbBynIlttlfD"}]}], "namespace": "1HB63pRYpibW27SK", "party_attributes": {"lLBCgIWDoP2kQ4IT": {}, "iUiTEYW4fjKcOUM7": {}, "CKXK5xhllKRlun62": {}}, "party_id": "hOpnCXmavVshN84F", "queued_at": 25, "region": "8kXfRgECc1slSCgx", "server_name": "BGBOgAFaUcqPVuRd", "status": "oA80ChjDgxfAYjof", "ticket_id": "uta7LTYD6w6AHTJb", "ticket_ids": ["QxKDL9mMqaeQyJl2", "Q5jsu5guVKCAW74x", "R03AFzuyxp46x1Fr"], "updated_at": "1978-08-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "jLOFDrdREcdwIIlL"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'IOIg3WDipoEqSOmn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 91, "userID": "WKDCjLmGfWBnVMLB", "weight": 0.3307870369837016}' \
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
    --matchIDs 'B2qBBmkHvnHf6dVx' \
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
    --strategy 'emMQAeQlAmF8FpIx' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'AU2cdB6Ede3E8Dce' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'eesr8TmTqmM6ncfu' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "CRTEdUQ2MBNi6lDG", "description": "FC6Qz1TqEXmzfTV8", "findMatchTimeoutSeconds": 89, "joinable": true, "max_delay_ms": 7, "region_expansion_range_ms": 16, "region_expansion_rate_ms": 48, "region_latency_initial_range_ms": 82, "region_latency_max_ms": 4, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 48, "name": "gsqpfal2YvFp4Okp"}, {"max": 35, "min": 15, "name": "HvU34jXHpkjnvgCH"}, {"max": 18, "min": 97, "name": "BfwVledyQNu0xwPk"}], [{"max": 99, "min": 86, "name": "pm0jUcZBxFuYMw8z"}, {"max": 0, "min": 93, "name": "INQNELdadprexVNo"}, {"max": 92, "min": 66, "name": "eRvEKwCOR5CTZJed"}], [{"max": 67, "min": 0, "name": "Q9ZyTSjTPSWn8xrj"}, {"max": 35, "min": 59, "name": "RfaQL5hzcCYQlDlX"}, {"max": 43, "min": 46, "name": "42QrRBuMPzQQs7ub"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 13}, "maxNumber": 55, "minNumber": 46, "playerMaxNumber": 28, "playerMinNumber": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 54, "min": 98, "name": "n3hImVSBAVOcj2Hz"}, {"max": 23, "min": 23, "name": "yMJvOjLtRtzBmy6e"}, {"max": 14, "min": 52, "name": "yygv8xs1pLi58ckX"}], [{"max": 79, "min": 24, "name": "LNIrhz193RS8L2XG"}, {"max": 0, "min": 33, "name": "dwCOdvNGO3uAPWVe"}, {"max": 77, "min": 37, "name": "WGC1ir20q56HUX3c"}], [{"max": 76, "min": 40, "name": "VrKcAaY2pDGQ1spK"}, {"max": 31, "min": 2, "name": "8odZ8W4ZHHHYFXlo"}, {"max": 39, "min": 70, "name": "xqMY80oJkDpTtp5I"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 46}, "duration": 33, "max_number": 6, "min_number": 70, "player_max_number": 35, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 25, "min": 26, "name": "L5IC4YlKythKDTZy"}, {"max": 74, "min": 50, "name": "XkUu7mA92Vv5YWXH"}, {"max": 7, "min": 48, "name": "r5tgeUyQ6VIYyu60"}], [{"max": 98, "min": 32, "name": "aDueDcZwxjRFpELG"}, {"max": 36, "min": 61, "name": "pk6FmWWIUIw4g7PA"}, {"max": 1, "min": 6, "name": "cNSy3VTEdEfqF4lI"}], [{"max": 96, "min": 20, "name": "OeLQ6FxdFkHRzDDE"}, {"max": 94, "min": 24, "name": "ryfHUV7DkBtxUKDE"}, {"max": 44, "min": 45, "name": "AOaP1lvT7uy6p6M1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 94}, "duration": 64, "max_number": 58, "min_number": 56, "player_max_number": 38, "player_min_number": 75}, {"combination": {"alliances": [[{"max": 52, "min": 99, "name": "5tnxstOoZmXhbl0f"}, {"max": 13, "min": 52, "name": "5eUdGCxN5Mg6Vy3p"}, {"max": 94, "min": 33, "name": "QFE0fAoWwyKjqzLk"}], [{"max": 24, "min": 84, "name": "tN6hNIVcKXVBEC2q"}, {"max": 43, "min": 33, "name": "JCGEtpTSEEuan9ya"}, {"max": 100, "min": 92, "name": "Y9n4mWDq9qEmp0x1"}], [{"max": 38, "min": 35, "name": "uEKbhwtMOBT4rcNH"}, {"max": 43, "min": 1, "name": "T0OgrqpknVWLara6"}, {"max": 14, "min": 14, "name": "VT0f4x0em7gZjjpa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 51}, "duration": 60, "max_number": 57, "min_number": 8, "player_max_number": 35, "player_min_number": 14}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 96, "flex_flat_step_range": 25, "flex_immunity_count": 29, "flex_range_max": 95, "flex_rate_ms": 87, "flex_step_max": 44, "force_authority_match": false, "initial_step_range": 6, "mmr_max": 45, "mmr_mean": 49, "mmr_min": 2, "mmr_std_dev": 82, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "8bSSiTDylrMjIKro", "criteria": "vGWrltp6NskSxgx8", "duration": 99, "reference": 0.5354242894691648}, {"attribute": "ZDLtpHTGSvwTxF7g", "criteria": "mIodiz6AJeKDNuPL", "duration": 93, "reference": 0.6530163106013508}, {"attribute": "m0pFlApdNyOGYliT", "criteria": "bklwpaWo0bkxO2wD", "duration": 87, "reference": 0.7335184982352778}], "match_options": {"options": [{"name": "GgFCT14lPr9lvssY", "type": "U3p8vPs7jVYClnGs"}, {"name": "EO1pCRRzOAyvWWdO", "type": "TE8NLNxw9oZh3VZO"}, {"name": "fvGYXjZoAwf1DxIe", "type": "f9d0GsBDsyGASZ8g"}]}, "matchingRules": [{"attribute": "YLGQK4rAFXQNsKo9", "criteria": "W8kJTNkkXoUv5sh8", "reference": 0.6153478498513483}, {"attribute": "XXWWPXVi5P1zJkmF", "criteria": "63qcNFYGhpA66W0M", "reference": 0.17896686401200623}, {"attribute": "urrpnlvl1tPWmWnU", "criteria": "OXX2tyGa4cEThGEi", "reference": 0.1899311329046226}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 18, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'PCywMd1gw1xamaeB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'lV28Z6iaGoJAfu1c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'yZf0wsgUZIjZYVlN' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 75}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '391uC00QyQkdiG70' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'nQjGzd8cntqMVDA0' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "xbfq4n8la3PF7T4j", "count": 64, "mmrMax": 0.7742258976396512, "mmrMean": 0.6372459135253582, "mmrMin": 0.12146821515380635, "mmrStdDev": 0.42675842782654927}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'h474dzLaDHGLGEMc' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 57, "party_attributes": {"we6S7ZxC3RQjwYtP": {}, "IkL92pf5dJOdQy0C": {}, "sKwv5h03KSSg58He": {}}, "party_id": "6xY2U1ujjSdYIgle", "party_members": [{"extra_attributes": {"NbXXfWB4a7a0X93z": {}, "bnhl7glwThQZ2Odu": {}, "DhECLrFVKcTVr6GE": {}}, "user_id": "0UPPlbjXYcdNmhh7"}, {"extra_attributes": {"ucpBY7SRJkzhAabA": {}, "alaq35q7bWzZw8V1": {}, "HFS2vNYQMhJQ7OiA": {}}, "user_id": "Hlw3jYokihsWdnDt"}, {"extra_attributes": {"qy1ToSYVXx1QNA73": {}, "cqT7yioIXhtzx6dn": {}, "4ejS4xH2676oKzla": {}}, "user_id": "c8dqUvjiGmRyEMzV"}], "ticket_created_at": 26, "ticket_id": "m0AIk5WROf43YtHx"}, {"first_ticket_created_at": 34, "party_attributes": {"LVSs4ZN9MMTA3b2I": {}, "XXG8plYIKmmWaRtm": {}, "PNMV9UyESTSni61j": {}}, "party_id": "GPWxz2VzREXHXrEq", "party_members": [{"extra_attributes": {"9eUfbBlNkelcwtPE": {}, "rmvHCLtP9sKhYsVK": {}, "9ea0AGhC1uzGhZwd": {}}, "user_id": "Veg0Z1cyH03OKpkk"}, {"extra_attributes": {"w9HtZoYSfUurkPbV": {}, "J6HWph7acF7FIJuP": {}, "vokOP3laPBZVmRak": {}}, "user_id": "QwOGegdhuOsyPxbI"}, {"extra_attributes": {"JT496LwZkkNX0IQF": {}, "N58lr9dl9rs2f9cs": {}, "KcqvohqBA3D1wd9g": {}}, "user_id": "hq53FeT7bcdQogcC"}], "ticket_created_at": 39, "ticket_id": "JSWd33K5rMHKnGxU"}, {"first_ticket_created_at": 3, "party_attributes": {"H0EtGd4MyETLz22P": {}, "8Zak1LuKUrRSbG9M": {}, "3sgcZ2gMl5pj4L2J": {}}, "party_id": "TjraNL6TZU6nIbF2", "party_members": [{"extra_attributes": {"hQT4aJeYQabzaYWi": {}, "zuspq7AALIgtqfMt": {}, "kJfmvWMMMfJYRdd3": {}}, "user_id": "ZCji7m2PpyUx6V4i"}, {"extra_attributes": {"O7xcMyrK0QdtqkTW": {}, "pKolJPCyk3PGpSya": {}, "ehwMIavnazQtPuYT": {}}, "user_id": "jqyGnCbvcG2DFkPx"}, {"extra_attributes": {"hdSbZsV7TgRcsXMY": {}, "z00o9pnmtPEYyOxD": {}, "hIHuOnIY7CH7mInb": {}}, "user_id": "jIlEgSnNnDcynezT"}], "ticket_created_at": 46, "ticket_id": "F996OdrEq5GmePdu"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'grQrSbK1V922oIbW' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 35}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '4n1KxLg8rBxjeahn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'DE2KCrcKpb3RpK1O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '9Y18p4EqPrxK8Md2' \
    --matchID 'V3tc6aRS5cZZqopn' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["v59FR0O7fS7QnwD8", "KNyM1KI80L6xhs4e", "4uFzZPOzVmHkRfxc"], "party_id": "d7e8L6oKUxY1IcM0", "user_id": "rB6oF1P3pueU3cuj"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'HSBz0CWBfxn3lFEj' \
    --matchID 'KJiDMLvGBj4emEBM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'VKirwIM2iDN95Gga' \
    --matchID 'qEdLL1fPs55Aj0yF' \
    --namespace $AB_NAMESPACE \
    --userID '2LeRsKkunBgsZM8C' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'KWrS6EGM5aVKmEx8' \
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
    --channelName 'teW9TH7dNcSylQlY' \
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