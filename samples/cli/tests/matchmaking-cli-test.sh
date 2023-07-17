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
    --limit '47' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "9QTWAvuAefjf1nL5", "description": "txlp8nqbq8YQNfnJ", "find_match_timeout_seconds": 91, "game_mode": "0rhiZamSNZdwpzGJ", "joinable": false, "max_delay_ms": 40, "region_expansion_range_ms": 95, "region_expansion_rate_ms": 61, "region_latency_initial_range_ms": 97, "region_latency_max_ms": 68, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 69, "min": 31, "name": "ar6ZbqCdRlZKcvlO"}, {"max": 47, "min": 81, "name": "iUtQE37JPg2bCV8f"}, {"max": 91, "min": 13, "name": "zVNNj3BgVZV7JBwV"}], [{"max": 84, "min": 99, "name": "EveZ4GPFM8K6WdJu"}, {"max": 78, "min": 67, "name": "om3NYYd6YsdKrqTo"}, {"max": 66, "min": 72, "name": "gd4RMJ43vDx1aH0U"}], [{"max": 16, "min": 49, "name": "MDS9KMA3fCzI1VLw"}, {"max": 72, "min": 53, "name": "ZvCOxZH0vluQm9JH"}, {"max": 29, "min": 72, "name": "BOTiKbwyIXXXBzhh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 92}, "max_number": 26, "min_number": 59, "player_max_number": 44, "player_min_number": 18}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 2, "min": 65, "name": "mBu0p4FkG9IWBTbF"}, {"max": 99, "min": 75, "name": "5tqgPFE4YHDWq1Lw"}, {"max": 16, "min": 24, "name": "C7f81qHrnTHGGgU3"}], [{"max": 63, "min": 16, "name": "oaq83ZCQIPaiKF0W"}, {"max": 4, "min": 19, "name": "qUHQoTLOTFOy9sqE"}, {"max": 7, "min": 48, "name": "wCMHCpNSlVNsjhxJ"}], [{"max": 81, "min": 69, "name": "aXGVeKHAZ5MqmsPe"}, {"max": 78, "min": 0, "name": "s4gOoCCFKgH64An6"}, {"max": 76, "min": 48, "name": "zhADjgeCYwbvGU0h"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 54}, "duration": 47, "max_number": 50, "min_number": 65, "player_max_number": 79, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 13, "min": 40, "name": "8J2TZYkuc8i3RMGZ"}, {"max": 7, "min": 46, "name": "H8tZiMpwSdBjrUKU"}, {"max": 80, "min": 30, "name": "ZzZFwgY8o2CAp46V"}], [{"max": 93, "min": 28, "name": "O3zCKTVn6PVXWMql"}, {"max": 81, "min": 90, "name": "CzQdN51yGli87DoW"}, {"max": 25, "min": 92, "name": "B8EOvx63RzLme4jB"}], [{"max": 38, "min": 15, "name": "FUaiP50Nb1vV6eRm"}, {"max": 76, "min": 62, "name": "GjHXeoY5xuEn03f2"}, {"max": 45, "min": 1, "name": "1BuRu7xu3EzJK0YT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 89}, "duration": 88, "max_number": 98, "min_number": 22, "player_max_number": 4, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 94, "min": 70, "name": "TCYONkB3iNXlDTFe"}, {"max": 77, "min": 50, "name": "W9YSRIC5UysLraVY"}, {"max": 14, "min": 76, "name": "N33DJhDU6dh1d6A4"}], [{"max": 5, "min": 32, "name": "IpnatceXb47ALbVO"}, {"max": 4, "min": 26, "name": "mKq72HVX076GzDZR"}, {"max": 48, "min": 75, "name": "krqPFW6otMBMDwbB"}], [{"max": 3, "min": 66, "name": "H6AKV2HfKC99j4eX"}, {"max": 75, "min": 51, "name": "WVtKuDzCeWW4UDY6"}, {"max": 2, "min": 2, "name": "kYCN19ERhC8FxG2t"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 0}, "duration": 27, "max_number": 71, "min_number": 19, "player_max_number": 77, "player_min_number": 84}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 38, "flex_flat_step_range": 23, "flex_immunity_count": 29, "flex_range_max": 28, "flex_rate_ms": 14, "flex_step_max": 39, "force_authority_match": false, "initial_step_range": 48, "mmr_max": 39, "mmr_mean": 99, "mmr_min": 42, "mmr_std_dev": 56, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "tj2lQJ7UO8g9LPkD", "criteria": "4EbX0DfED0F5AUsz", "duration": 69, "reference": 0.7632117406986891}, {"attribute": "j2LXw32Dk4Rxb6E2", "criteria": "P1QyzzJMWMYG3MTk", "duration": 89, "reference": 0.07903973679230147}, {"attribute": "wweXcU0K7UZN7fAm", "criteria": "P53v0UFiA742hQ5v", "duration": 6, "reference": 0.04703002891874952}], "match_options": {"options": [{"name": "314miNq4wx73ygLP", "type": "qvgiJBcCjSYi5Zh8"}, {"name": "TzxQx5URpTVm8C3W", "type": "cUsgS98Fc9BiLplH"}, {"name": "lLyToyvCQZtAG15D", "type": "VaSyDl37FwHNnJjb"}]}, "matching_rule": [{"attribute": "pJbwVXOsdXgZBYPQ", "criteria": "DzSmfqH0sssuS5TC", "reference": 0.2547387629876926}, {"attribute": "67dKQ14cafTfS6xf", "criteria": "b8Q7XcuQg9xvVDxw", "reference": 0.04569540008238393}, {"attribute": "Y2RMyygP0XZSJ7Aj", "criteria": "mTVCmDn6BtbR27zj", "reference": 0.3883680955660732}], "rebalance_enable": true, "sub_game_modes": {"jSmsDKOIf6ECoyhi": {"alliance": {"combination": {"alliances": [[{"max": 52, "min": 73, "name": "x8LOl4eS2shAGZqq"}, {"max": 33, "min": 42, "name": "6EmDm0zyflyxteA9"}, {"max": 89, "min": 28, "name": "FDdDBuT1Jjd6AHS3"}], [{"max": 84, "min": 97, "name": "jRzt4zbQq8qt577O"}, {"max": 37, "min": 34, "name": "3jXIWpECypgkuOML"}, {"max": 41, "min": 14, "name": "YOXlp3JvaGn3EB8T"}], [{"max": 59, "min": 55, "name": "LG5Anj6r2SDmnXl5"}, {"max": 5, "min": 79, "name": "xYR6w2EBUl6i5QvX"}, {"max": 55, "min": 15, "name": "ObHBi6aKe2liLbqS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 61}, "max_number": 48, "min_number": 67, "player_max_number": 92, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 86, "min": 70, "name": "fT2ZVDYePvJFKC6O"}, {"max": 52, "min": 5, "name": "2a4BcjuCOZR87B8Y"}, {"max": 12, "min": 67, "name": "SOdcAexOYVPqEkPJ"}], [{"max": 11, "min": 77, "name": "6o81h3fwC3rgBxfG"}, {"max": 75, "min": 39, "name": "UGlgJVsArSUac5yq"}, {"max": 7, "min": 66, "name": "DZQUWyJvP0BIfWUo"}], [{"max": 10, "min": 44, "name": "qtUaLnAKy1KSJhr4"}, {"max": 0, "min": 50, "name": "SZTxsWaXxl2FcfH5"}, {"max": 59, "min": 76, "name": "FK8G2slMEbAAHkB9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 29}, "duration": 19, "max_number": 84, "min_number": 50, "player_max_number": 74, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 50, "min": 82, "name": "FreCyqXQGU9lSwA9"}, {"max": 42, "min": 48, "name": "STSXv5Dsa6xVcST6"}, {"max": 36, "min": 85, "name": "u4ApR9mrcPrsHXZO"}], [{"max": 78, "min": 91, "name": "kEMacCGQShDOJEu1"}, {"max": 33, "min": 65, "name": "OT9riJlsE1cVN4Dh"}, {"max": 84, "min": 14, "name": "9MzuIgrQKsIfevNA"}], [{"max": 81, "min": 32, "name": "JEzY5IgYBhPJfchu"}, {"max": 4, "min": 64, "name": "e3zx4ssXcDzfFGAE"}, {"max": 85, "min": 72, "name": "Ph7wV4AWBaP11com"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 81}, "duration": 65, "max_number": 2, "min_number": 49, "player_max_number": 49, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 55, "min": 43, "name": "v6SYV1OZ8dLbeAa7"}, {"max": 22, "min": 24, "name": "SKhEr9HyvujVU74A"}, {"max": 96, "min": 27, "name": "KDT3WbwEH6GV0DhS"}], [{"max": 98, "min": 4, "name": "hb0E8e9Ktq0S3smv"}, {"max": 79, "min": 91, "name": "BPrafwRKo1ZoPBBL"}, {"max": 34, "min": 18, "name": "r1sIzyErGE3C8s0p"}], [{"max": 6, "min": 27, "name": "GS6pwvzY1QaHivcK"}, {"max": 17, "min": 29, "name": "wykoc0SiW5SBWOY5"}, {"max": 100, "min": 45, "name": "iIFLeLerdp3eWUjk"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 67}, "duration": 41, "max_number": 20, "min_number": 33, "player_max_number": 46, "player_min_number": 50}], "name": "IzQ4uu8jNeNYbcsg"}, "hVT5OfesJGOd44a4": {"alliance": {"combination": {"alliances": [[{"max": 88, "min": 54, "name": "5466TRpm9k6IZjse"}, {"max": 64, "min": 47, "name": "YvM0copnr4a6neq1"}, {"max": 19, "min": 3, "name": "1mLvfAUE03yOJp3p"}], [{"max": 39, "min": 67, "name": "vIBOkeMvL7TYgY4x"}, {"max": 74, "min": 60, "name": "8CJdYNRFLW3kcBQp"}, {"max": 19, "min": 99, "name": "WD6RDRygE4oMm3Nt"}], [{"max": 46, "min": 81, "name": "YWDLTHBpR3qONiqA"}, {"max": 30, "min": 41, "name": "TRDKBTx3dMML854o"}, {"max": 52, "min": 60, "name": "8sxmvHqvumL3O4KH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 6}, "max_number": 90, "min_number": 92, "player_max_number": 51, "player_min_number": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 49, "name": "2vgHz1p2AkoeCAC2"}, {"max": 76, "min": 46, "name": "eYuMmLv3esiQjPDy"}, {"max": 13, "min": 49, "name": "wR5FbS1ZSSQqG3II"}], [{"max": 16, "min": 96, "name": "JOSylXAvcpvUPg3l"}, {"max": 83, "min": 51, "name": "MJBLrPgmxI0k19IU"}, {"max": 2, "min": 7, "name": "SiDVeMhJMZ3s74vE"}], [{"max": 28, "min": 77, "name": "D8PbSkbZbbVN3ngl"}, {"max": 62, "min": 79, "name": "YleZEpF815LlEbSl"}, {"max": 72, "min": 40, "name": "Jt19W99scpgoHGuD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 33}, "duration": 74, "max_number": 32, "min_number": 22, "player_max_number": 69, "player_min_number": 13}, {"combination": {"alliances": [[{"max": 63, "min": 78, "name": "mKZhLtT88L0QdtgM"}, {"max": 72, "min": 67, "name": "qaOjRpXgtLrS44pm"}, {"max": 49, "min": 80, "name": "vV3ti2cr1QKodC3l"}], [{"max": 47, "min": 77, "name": "KGLFBbeHk6101j5s"}, {"max": 6, "min": 85, "name": "ylXFesBLsWVPz5zZ"}, {"max": 87, "min": 55, "name": "w5eUJh7af9syp34o"}], [{"max": 23, "min": 67, "name": "9Fenb1hQeR3Qv2ZF"}, {"max": 19, "min": 44, "name": "6yc48Q90U0IZ0hmA"}, {"max": 93, "min": 18, "name": "7bGH5gMWT21DiO6D"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 53}, "duration": 88, "max_number": 28, "min_number": 100, "player_max_number": 91, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 53, "min": 7, "name": "AdCkLdk6vXtTNmSK"}, {"max": 57, "min": 65, "name": "ZTt0Oo3T39whRAFK"}, {"max": 79, "min": 85, "name": "fQmu7BxBRQon4Yar"}], [{"max": 68, "min": 34, "name": "H2qN2OA41W7qBNRi"}, {"max": 38, "min": 50, "name": "1S7vrwVxGaxBXoiZ"}, {"max": 31, "min": 57, "name": "dN04TCxa3NfSQSgE"}], [{"max": 47, "min": 79, "name": "a0z4bcAbeeFiWoWq"}, {"max": 22, "min": 14, "name": "JeVr3GLPxXEAWTaS"}, {"max": 16, "min": 27, "name": "8kBBjqX22l2L7wrL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 40}, "duration": 67, "max_number": 43, "min_number": 43, "player_max_number": 11, "player_min_number": 44}], "name": "5CIOHXc6xyVagKAV"}, "b2Fqt5EWMkAVbpEb": {"alliance": {"combination": {"alliances": [[{"max": 49, "min": 96, "name": "Mobu5zg3I5le3rJg"}, {"max": 64, "min": 61, "name": "b7k3L1ejiuX3nu8f"}, {"max": 64, "min": 83, "name": "PEJJYhkIn9RHDWwi"}], [{"max": 48, "min": 14, "name": "gwaGO8sTxSZ5uedF"}, {"max": 71, "min": 56, "name": "ac77T41r5rkswENY"}, {"max": 44, "min": 82, "name": "YVYuIAQ8zr3i2YKH"}], [{"max": 91, "min": 40, "name": "Vn1TVSMkKRhkq0Tl"}, {"max": 96, "min": 58, "name": "Nulm7LN1bHziHkgq"}, {"max": 18, "min": 11, "name": "5m7Lb1f7Nkf26JdK"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 90}, "max_number": 59, "min_number": 44, "player_max_number": 66, "player_min_number": 11}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 66, "min": 97, "name": "DpsmtxQWV4G6Onvn"}, {"max": 68, "min": 6, "name": "lEaedNVpiRZjjOoL"}, {"max": 43, "min": 36, "name": "ZG1E1bQ0aEofwMDx"}], [{"max": 49, "min": 67, "name": "aPSoj266df70uKts"}, {"max": 41, "min": 44, "name": "S0d3MOovqP9ZQvBB"}, {"max": 93, "min": 85, "name": "ilCkvpniQi0Si1QG"}], [{"max": 4, "min": 20, "name": "zidMt2Lx3Sf8vOvC"}, {"max": 0, "min": 60, "name": "ZjibQKPnRa6koIdT"}, {"max": 23, "min": 60, "name": "HEfEXW3kUjpSccdK"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 75}, "duration": 64, "max_number": 93, "min_number": 28, "player_max_number": 93, "player_min_number": 44}, {"combination": {"alliances": [[{"max": 21, "min": 27, "name": "LNitoSCTeGdM0Iwz"}, {"max": 66, "min": 79, "name": "p0AYODxILqRXYk7Q"}, {"max": 89, "min": 52, "name": "smZBM4LgJg2LczHk"}], [{"max": 68, "min": 38, "name": "8UzdzOBHBtWtcRyk"}, {"max": 68, "min": 91, "name": "UW1PGVeIX7fuHB5v"}, {"max": 36, "min": 41, "name": "5sELnRnIE7GcNrCH"}], [{"max": 14, "min": 23, "name": "uAjUJlDAMVlPSqum"}, {"max": 13, "min": 61, "name": "m8tpaaKQ5SCi9BbN"}, {"max": 15, "min": 1, "name": "5HyBxaKj7kiTj9WV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 20}, "duration": 42, "max_number": 41, "min_number": 96, "player_max_number": 75, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 88, "min": 24, "name": "Ur2nyitoQ7u9iTjB"}, {"max": 27, "min": 18, "name": "RAMeRisUBdclNgrb"}, {"max": 37, "min": 16, "name": "Htie9eNRIbsetjD8"}], [{"max": 43, "min": 65, "name": "GcqO5zgwQA4wy84W"}, {"max": 75, "min": 50, "name": "ugoF1S6scIyAQcB9"}, {"max": 37, "min": 26, "name": "9wP8t64v2NeyIlZW"}], [{"max": 64, "min": 30, "name": "jq6F8lyQEiaNvasM"}, {"max": 58, "min": 80, "name": "SaMNEk6q1OceYOdw"}, {"max": 89, "min": 57, "name": "r3xIQ4vXy2nePSSe"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 31}, "duration": 35, "max_number": 19, "min_number": 71, "player_max_number": 65, "player_min_number": 13}], "name": "i4vsR1r3dOfVnGQT"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 33, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'LoZzSovfiIWn88rv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'LjPwUt1cxsGHcCEF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "N2zSuz50uRGKKRrZ", "players": [{"results": [{"attribute": "Kgat3Y7Nc5Lom74C", "value": 0.6980695709931043}, {"attribute": "klqu2avfwhD9lCDC", "value": 0.23258319807746597}, {"attribute": "KgA8nAKkhKqdSLQd", "value": 0.5264114595617783}], "user_id": "L6cSQ2WXsVNPNQSO"}, {"results": [{"attribute": "AFlBhmoSF1LEJtgm", "value": 0.11084451369225912}, {"attribute": "FiPYW8UPC5RfknTG", "value": 0.5337776364269293}, {"attribute": "vgoRMYVk7mQpfYlZ", "value": 0.31015667707150574}], "user_id": "YtNyUgBMrMcWaNS5"}, {"results": [{"attribute": "qK1hzaviB0BY1JMJ", "value": 0.24106817077886888}, {"attribute": "eI6WcL18F1lNTwua", "value": 0.4891394291053961}, {"attribute": "ZMs1LfJ0FAj2iv5W", "value": 0.3190000808250285}], "user_id": "vx9uGjB7eU86xGml"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0yUV5r6hK79ecHf2"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "W2XbvtVVJze56lXH", "client_version": "7tkFmv249GumMwCU", "deployment": "fcPRQRZ2S8ZsofHn", "error_code": 85, "error_message": "Y223BLvXWjIH9GN6", "game_mode": "8jgvGttBLq8VwiOa", "is_mock": "e73ax8VMxdDU8m5Z", "joinable": false, "match_id": "ic87Owec1KEkBLRU", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 97, "party_attributes": {"fVWXPHPYPgwXSBv9": {}, "CPSSTZRe4he4EgJA": {}, "2crjoYeI0zgO6nm3": {}}, "party_id": "QtqXp2t4FMPhjPEZ", "party_members": [{"extra_attributes": {"MlmtJYAEBBDujPmK": {}, "xFFAda11nybFAfa3": {}, "NmfUmn3jWR1cfraq": {}}, "user_id": "Pw5CugwWNncuPMNS"}, {"extra_attributes": {"TpTx5nJ4HNiShG8F": {}, "B3rrgxk06WOb5zj5": {}, "nPoisFhQBQDIT9UD": {}}, "user_id": "E4wvj90agxrYfm5v"}, {"extra_attributes": {"0m76Eqm3RzJIUSe6": {}, "e8bgt8gLFxy8TOT8": {}, "SCaUUlPyl5xAWWBz": {}}, "user_id": "fLDr8I70p9QfEpk5"}], "ticket_created_at": 58, "ticket_id": "N0msDhr0miruSfqX"}, {"first_ticket_created_at": 18, "party_attributes": {"9qFlbJjaisFomlmd": {}, "JFC7gdn6HVXzw68L": {}, "71qBJzQ6om2npRPg": {}}, "party_id": "HxXYLm8lKZv8NiWI", "party_members": [{"extra_attributes": {"hrapWkJitdDzvGHg": {}, "26ezJpqZkSc4rVIM": {}, "hv3weQxdt8AvzJuQ": {}}, "user_id": "DuIFC6Ci9tUGyxxC"}, {"extra_attributes": {"DlFZqpeFNJMbAvlM": {}, "O9bN1aEr3sMN0vuq": {}, "hYBV4R4If1vJRy17": {}}, "user_id": "JryujD17f4PN0nWu"}, {"extra_attributes": {"PlhPUbLyX3teLBvF": {}, "A0lafYb8UgbgPl6m": {}, "jphdAwCLeDjhyfoF": {}}, "user_id": "teby4FrbYSId62kU"}], "ticket_created_at": 8, "ticket_id": "M2Bjj2UMqQ5bsqNq"}, {"first_ticket_created_at": 74, "party_attributes": {"xuyUZmHtDGS2WJAe": {}, "GTF5NluTlADft1gR": {}, "uDW5OCn3qDhOlRTA": {}}, "party_id": "lQmSiqdmWOiIsN24", "party_members": [{"extra_attributes": {"aGphT6W5MpCa0r5N": {}, "Pd9AZR8xgGGePQAF": {}, "oKvKJJqtnd24BUFe": {}}, "user_id": "vGIH7oVr3IswCeal"}, {"extra_attributes": {"sXioC4bdDkvE28M7": {}, "FFaqy4jHdQg4Cmca": {}, "QyamPOelhid9OsvB": {}}, "user_id": "2UhyKAU1mvmqjJ6d"}, {"extra_attributes": {"MzgFy4VmZdbHvlHp": {}, "LLNVhfgudNNutbAj": {}, "EBmzM3itbw0qPu6v": {}}, "user_id": "jzRalKpxfI230fbT"}], "ticket_created_at": 76, "ticket_id": "UAvxPXayYlPhII8Q"}]}, {"matching_parties": [{"first_ticket_created_at": 44, "party_attributes": {"WlIiCOxQMTE1ilWP": {}, "kpeIi3WZFGp9j9ZL": {}, "P2YujkJabIbp6ycj": {}}, "party_id": "MYJAX7UnRAhxfDuc", "party_members": [{"extra_attributes": {"idBEzSdbcPG6jxNO": {}, "jI7EvigBlppfkzaC": {}, "cq10IjX4UPNvWZvR": {}}, "user_id": "ZlqIPit5zZ55kWd3"}, {"extra_attributes": {"derLQyfYIM4WrNxm": {}, "KKTfZ3jD7Ec6sdLC": {}, "Hlw0NdO4a9xnhwAv": {}}, "user_id": "axeVoddqPGhgDe3k"}, {"extra_attributes": {"MUfKK1suiUu9eqw8": {}, "ZuXanGkQDtRWhaDe": {}, "yEAMm5PPfpsLS2FK": {}}, "user_id": "yGGd0b5yK5ZqPliu"}], "ticket_created_at": 74, "ticket_id": "Eln5gBoeLdB5gPp1"}, {"first_ticket_created_at": 52, "party_attributes": {"idaahOUkY7XU3xeO": {}, "VfAMdOTkf5t0wnTA": {}, "9FJDP2ShaM2i4b5L": {}}, "party_id": "dy1OfMOxBoXtgDiz", "party_members": [{"extra_attributes": {"AKOzh0v87An06iMT": {}, "bhAgq3HWkRY8cw58": {}, "J8QB7o7f5eLDd3Bi": {}}, "user_id": "a9M7mNWn1OEhAcG8"}, {"extra_attributes": {"Mn4VTAdfRLMdabiU": {}, "AUeWSLKgiBSRsz3n": {}, "AI3dhIt5HFhZ6ze2": {}}, "user_id": "3XpnTaN5fl6UY1Nc"}, {"extra_attributes": {"5WUx6C69tGLGTSpY": {}, "yz0KflbCkmIIg5nt": {}, "QNPtVurPILcNV048": {}}, "user_id": "l97y41vuyLKvYFOV"}], "ticket_created_at": 7, "ticket_id": "hMUdjOdTokswUklo"}, {"first_ticket_created_at": 63, "party_attributes": {"UW18vU02kJVkYmsn": {}, "DGUaXSejtxw2MuEw": {}, "BwpVvnjcJS1Hciw9": {}}, "party_id": "gVXErwDYSPNdXBPL", "party_members": [{"extra_attributes": {"40xgUfG7ZPMghBFY": {}, "j1RXR1ATdzTJbBz6": {}, "6YpRsP7dsxsgsoAd": {}}, "user_id": "9WQWgBBxWurkfDU9"}, {"extra_attributes": {"F6YOHZEAb5XWhA8O": {}, "M5h9U6uOYGW4L2cU": {}, "Ds83cNFOMBqwpOeo": {}}, "user_id": "bVxYF5abDeAYYgV1"}, {"extra_attributes": {"wBDpFsPhEjDiyHm6": {}, "PNMVEnds923PMtpL": {}, "U7a2iEaX6zrGnfrC": {}}, "user_id": "RXWWRjLH7o3hc7uN"}], "ticket_created_at": 67, "ticket_id": "F2x0R0m21Pd9cT4O"}]}, {"matching_parties": [{"first_ticket_created_at": 90, "party_attributes": {"Njo5043lAfJb1KAY": {}, "z4m9dN8p8wSMypCF": {}, "jgYr1AoEVC3jIfI8": {}}, "party_id": "8Vf6oOVPU5MAc8Ns", "party_members": [{"extra_attributes": {"5u1t2zDzRIZX3cz8": {}, "LGmHO9a27ue82m5X": {}, "SN9d4YqhkU8tn9M6": {}}, "user_id": "rcOyampcbf4pY0Nh"}, {"extra_attributes": {"kFHaV70WDqWoUhxB": {}, "liMs779FHgGxtRAj": {}, "BWqKe4iTU1ntKZNz": {}}, "user_id": "3crYcbLj9gwMQIxd"}, {"extra_attributes": {"TjuxpZft3cCqYkcd": {}, "730rv4GhcrhhGeux": {}, "GNPoT8USk9li3RKN": {}}, "user_id": "ekDWbeRMnn3kdczM"}], "ticket_created_at": 55, "ticket_id": "5XfvHmmBhXJ3qqJq"}, {"first_ticket_created_at": 57, "party_attributes": {"V8CO6MHa37PT8CL1": {}, "H0FgrbLrzjfuleYd": {}, "SHk5nccbEcpcBrOr": {}}, "party_id": "kMHLMrLciVoWRWHA", "party_members": [{"extra_attributes": {"TkwNCTz6d2o3FLis": {}, "8fSkmxDyCSDzK3cu": {}, "dzlkojI6MfgMzn0r": {}}, "user_id": "HAO3axAqnvFDsCrQ"}, {"extra_attributes": {"5EYyU3SxJohkrOa1": {}, "2IXWcjJFr1o7VgS7": {}, "62xY3uLCl7dntKDo": {}}, "user_id": "ecHmK90Io5fsnDrS"}, {"extra_attributes": {"GNzEfuZfYTBdQDDf": {}, "X4Loo9F6Tyv6j3g9": {}, "ogsHiC5nitCuZRYK": {}}, "user_id": "h4ux71Kt4uxrX3dL"}], "ticket_created_at": 87, "ticket_id": "ljiQcolHHwCUTcyF"}, {"first_ticket_created_at": 49, "party_attributes": {"7cxY9cLuWSAt5SKz": {}, "MGq33duFOkNfWD5H": {}, "EzOrPYmoE2viuMzs": {}}, "party_id": "rLFuaOJ55eVL7ZAZ", "party_members": [{"extra_attributes": {"V63brpHhKNMsa0pU": {}, "5EffPYclLY0jFZVp": {}, "jYr3B0vfIhqX2XY5": {}}, "user_id": "yHaWyNzp2B7nq4TQ"}, {"extra_attributes": {"eB6EzrG3BIxhIXrh": {}, "zlZzZxXqlYam2ywD": {}, "TiYWiKURVGLshogC": {}}, "user_id": "gXQx7qenhHVRL52G"}, {"extra_attributes": {"LEzOo7pfhY2bUcwO": {}, "0fvcDcWxdvsyTmsB": {}, "1cW1sArKuSlx4eLJ": {}}, "user_id": "ggbBOLRPKtTOUXEu"}], "ticket_created_at": 49, "ticket_id": "9gGxoDHzN3le1iMq"}]}], "namespace": "m0IgnKojbOreVbgc", "party_attributes": {"lJbo9LXqh0et9x8V": {}, "k32SJcSLTEUTFTXE": {}, "Uaf1rfkkUJd0Au97": {}}, "party_id": "xdrOcldoZxWuZ2yS", "queued_at": 29, "region": "7YiJ3UqgULoeYeXF", "server_name": "fmnhJ5Vjg5GjyW8i", "status": "CXiS2pQuFHpYRrE9", "ticket_id": "a4boG5vz2v82HZNL", "updated_at": "1992-12-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Ll02J6OuJSlRb6Dk"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'mnHzvMovOdj5gCYN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 99, "userID": "6bBakddPcnH8QHPp", "weight": 0.28009681577245726}' \
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
    --matchIDs 'MkxYysco382AjZBl' \
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
    --strategy 'SKdLdFt5ADBqQrN9' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'IEkljUCMZRkElkHS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Xa3YR2ZMa5LGxCgi' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "10JoCgZvHl1IJUWF", "description": "C0skugT7bCJjvz5a", "findMatchTimeoutSeconds": 82, "joinable": false, "max_delay_ms": 7, "region_expansion_range_ms": 32, "region_expansion_rate_ms": 90, "region_latency_initial_range_ms": 50, "region_latency_max_ms": 29, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 100, "min": 88, "name": "qGzofyJCJuqE4e2o"}, {"max": 55, "min": 94, "name": "ZlfLeOic0OWfeFrV"}, {"max": 53, "min": 56, "name": "aEcTtqfEmZpXM24v"}], [{"max": 52, "min": 90, "name": "04zNYPd2jl3CEN3M"}, {"max": 0, "min": 8, "name": "X6VG4kwNnCxUI2ZS"}, {"max": 70, "min": 60, "name": "LgTbUImCiQXQo7tD"}], [{"max": 41, "min": 97, "name": "vgL5wtp1agmuSVX0"}, {"max": 81, "min": 0, "name": "9VLN2YLaU3jWDVcP"}, {"max": 18, "min": 84, "name": "aOhAUNeEEaX9nOs4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 78}, "maxNumber": 71, "minNumber": 49, "playerMaxNumber": 40, "playerMinNumber": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 12, "min": 9, "name": "ImpJHqb1coOHlrB5"}, {"max": 58, "min": 32, "name": "mpBK3YAaY8dFsnW6"}, {"max": 23, "min": 40, "name": "7EU56wyHzwPtVuCm"}], [{"max": 83, "min": 99, "name": "mfyMbSTqumr1PPnZ"}, {"max": 94, "min": 40, "name": "4sW8NJxkIE0IOA2G"}, {"max": 91, "min": 78, "name": "zTIWaY28nDkgVv3t"}], [{"max": 41, "min": 1, "name": "Y1KDbHsV40ZoNceY"}, {"max": 44, "min": 79, "name": "yPcEsBINcLVUm5FL"}, {"max": 29, "min": 48, "name": "lg8nzrlmh9JdDtyU"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 56}, "duration": 46, "max_number": 70, "min_number": 55, "player_max_number": 55, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 96, "min": 33, "name": "ri28DycsTO1O5YMX"}, {"max": 99, "min": 97, "name": "Rd7YebhFMxN0NF0L"}, {"max": 64, "min": 24, "name": "RpMzdNtCWeE5RS1G"}], [{"max": 51, "min": 27, "name": "fXMBbYefiq51aHMx"}, {"max": 76, "min": 59, "name": "ojBdFarQ4Rt6Uk1Q"}, {"max": 88, "min": 21, "name": "Fmd6nsUiunU9X9v9"}], [{"max": 56, "min": 87, "name": "5kOFdUOlZZBdDRtu"}, {"max": 37, "min": 14, "name": "7AfpwWG5bIZQi8Kl"}, {"max": 30, "min": 100, "name": "SSLtwV3urPt9FcgX"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 69}, "duration": 60, "max_number": 8, "min_number": 7, "player_max_number": 64, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 67, "min": 10, "name": "Uub7QZgFUymykzar"}, {"max": 61, "min": 41, "name": "C4XereaRtuOjm6Kt"}, {"max": 62, "min": 24, "name": "i5bMuB23jpbtrzTo"}], [{"max": 34, "min": 27, "name": "UvTn0yBbkztuQWGp"}, {"max": 23, "min": 40, "name": "xFTm0dBGLMPiGz1G"}, {"max": 63, "min": 99, "name": "xuhyFTA3BEzpZvsx"}], [{"max": 43, "min": 83, "name": "Tv4jNPBBsBltoLQZ"}, {"max": 91, "min": 23, "name": "wzUr4Gc5iqviCz90"}, {"max": 29, "min": 72, "name": "4bYuFy9yeZMQ01Mh"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 66}, "duration": 97, "max_number": 71, "min_number": 29, "player_max_number": 95, "player_min_number": 72}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 84, "flex_flat_step_range": 29, "flex_immunity_count": 12, "flex_range_max": 30, "flex_rate_ms": 39, "flex_step_max": 55, "force_authority_match": true, "initial_step_range": 89, "mmr_max": 51, "mmr_mean": 24, "mmr_min": 70, "mmr_std_dev": 8, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "dEOk8ZPVHoNqGx6s", "criteria": "5VSRRbZvON6oLfsd", "duration": 29, "reference": 0.7186756280025433}, {"attribute": "bTcE5uOAKMcVWOpT", "criteria": "EieGtdwAzFNMgvHO", "duration": 26, "reference": 0.9335295290860869}, {"attribute": "3nkQIcLxUfRRqDOB", "criteria": "xzHj609sdTLtqNGq", "duration": 8, "reference": 0.8327348748139507}], "match_options": {"options": [{"name": "dPn4IAFlWw2zlI1z", "type": "fAoc74WlN7cMi7eL"}, {"name": "1PFaNkmhOPoGUXhz", "type": "hvvWyeCUtcAyBcpp"}, {"name": "HJxK03QFelxwrhCg", "type": "CBeWW0Me7EPGsNVj"}]}, "matchingRules": [{"attribute": "POoGLi2kdCHGs2HP", "criteria": "BH2XIMFUJE9fjRXw", "reference": 0.4396934426210156}, {"attribute": "Ia2vK82rggeBDUBn", "criteria": "Nj0oXfgUqpI6W3Jq", "reference": 0.8329311101017465}, {"attribute": "S77etslLTEVhUpEs", "criteria": "T7KPyJx7KQ0QZYKQ", "reference": 0.8878680576318475}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 30, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'OccHNrLCqLSOkmd4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'HsfplyU722z7AKsl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'LOnqIMQiphISUAtu' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 93}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'Wc46Y9QoWjrQmQnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'FtZV2bz0SbUyxYDw' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "U98KqgdIXS5jRDOd", "count": 87, "mmrMax": 0.12510249861421996, "mmrMean": 0.48933232787363923, "mmrMin": 0.07090015386942028, "mmrStdDev": 0.6143028062339795}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'LkIVkr4Bd6cuZ2Mg' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 4, "party_attributes": {"H51V9stD0zsFapc6": {}, "MxrHBSKUEPcX5j5p": {}, "Nyh9Z0TQPSnJt9i3": {}}, "party_id": "CReXJt4ryFE2Qsqg", "party_members": [{"extra_attributes": {"VmnTMaYhWxslvyCK": {}, "kqtWItgJc4dHYT63": {}, "Wp3CNREmkGqJnm3g": {}}, "user_id": "5kYJqdBVOxA0SLck"}, {"extra_attributes": {"57P02ahBF67ei6vG": {}, "B8qRhGNXhRQ37a0L": {}, "loKhw5J73qYr7rX6": {}}, "user_id": "WnTLLWIkXefSZ80D"}, {"extra_attributes": {"DcYyXr4KmSXWK35s": {}, "rgnmIAD0bGBrjIbl": {}, "67xZFtCpz0I7zBm1": {}}, "user_id": "aMmxSawVHlcgHxBw"}], "ticket_created_at": 40, "ticket_id": "GCrxt08vfZvxkHmN"}, {"first_ticket_created_at": 34, "party_attributes": {"d1p60dfjVTk6tvyu": {}, "2IGdp9DYjhak2Sj2": {}, "XQkoxyiZgOa1D7wu": {}}, "party_id": "UH06O3DZ9LAFbUJH", "party_members": [{"extra_attributes": {"XjP6Mbx5XZqqowfb": {}, "nFhCNi7yygG1UZcf": {}, "7vKpIKgCe4R2DkC9": {}}, "user_id": "7rlbjWHSpyCT3Vm9"}, {"extra_attributes": {"yWh75ue79Ouu9Fav": {}, "ouIIVWGP5R5ZJ4lw": {}, "71Uu9u3Y79iabMaN": {}}, "user_id": "uJc13QoTsP7CRLSt"}, {"extra_attributes": {"fZ9BLZraK2yQLDJJ": {}, "8Cqc7RFaj11OLR03": {}, "Mnl158ViJ0LRF93P": {}}, "user_id": "kopOVZjjnObrX4By"}], "ticket_created_at": 55, "ticket_id": "IuNNfdfz4aEJ8S3m"}, {"first_ticket_created_at": 82, "party_attributes": {"VDVUwMpWsixc6zSs": {}, "60P702xU2TKz8obu": {}, "gn0SMeVaiRK1BUhz": {}}, "party_id": "K2FaNvnW3vVAHUUk", "party_members": [{"extra_attributes": {"HcYaPyoNeEccRlDl": {}, "NHIdLPNh1lc7akMo": {}, "vpEi7TR5EV8FNSat": {}}, "user_id": "mNFsIap9juGNly9T"}, {"extra_attributes": {"fiS4AgMeOschdtgO": {}, "iuy0MQQgy7Oi6RNy": {}, "oLZmsV7Wv8adJmyw": {}}, "user_id": "e3cT4RdzjBdJCF8p"}, {"extra_attributes": {"qpQUwGUrlRBRoO2T": {}, "dV3bxCYrM1u1tXeE": {}, "QoStJOq9K2av3m1X": {}}, "user_id": "cvbmkPOOs3OEiTVW"}], "ticket_created_at": 92, "ticket_id": "AZegkCLBXW3C73Mk"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'RiGETZdX5q2eZfoO' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 20}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'LUKvmQpu2TeJo0LQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'aisZRxB1K6uSdKOv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'w0tN07NCRpTyffN1' \
    --matchID 'YeL2uRTAOwpgfYID' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["MTOJCiGMKKcMpkzl", "APxopFNQCeDLFvwu", "BtRz2CXiRxxJOG09"], "party_id": "rqJtZ1S9uCnpuL7X", "user_id": "65PQT0PNFtfxaaEF"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'NkYEevEeI6rX2cso' \
    --matchID 'o1Vq0zDUHLiEQV8H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'nhCjcRqKotH0YvRI' \
    --matchID 'Z2WFGLt6jh28SV90' \
    --namespace $AB_NAMESPACE \
    --userID 'MEOJwiTSPINhFGeI' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'TpohVahZpJJNL2lk' \
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
    --channelName '3b8KWTGigPL51C0M' \
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