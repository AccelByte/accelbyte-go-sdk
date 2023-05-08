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
echo "1..31"

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
    --limit '45' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "9OlVaW8jIXewImnm", "description": "6Nc4GgptXtE6rJeX", "find_match_timeout_seconds": 13, "game_mode": "Z8t42C3TQaVCgiM8", "joinable": true, "max_delay_ms": 55, "region_expansion_range_ms": 38, "region_expansion_rate_ms": 5, "region_latency_initial_range_ms": 14, "region_latency_max_ms": 59, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 20, "min": 55, "name": "cNm2UjFoD6Txxgzb"}, {"max": 93, "min": 82, "name": "u0GnoJl56dHbyInS"}, {"max": 84, "min": 69, "name": "faMvDqijMwyF3vGB"}], [{"max": 53, "min": 41, "name": "PjwCyRoTOrf4QalP"}, {"max": 8, "min": 47, "name": "NNkusvFAG2RR7qpE"}, {"max": 76, "min": 46, "name": "OaGswb7KyZJiM8eZ"}], [{"max": 51, "min": 94, "name": "kopj7UoRaffzPGDW"}, {"max": 33, "min": 86, "name": "a184m7Frsdq5MNs8"}, {"max": 93, "min": 53, "name": "i5p98C6buoyW55q3"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 2}, "max_number": 1, "min_number": 59, "player_max_number": 34, "player_min_number": 17}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 47, "name": "YgLLgwETAp2wSegh"}, {"max": 30, "min": 41, "name": "Pptu98nxi33WBN8Z"}, {"max": 35, "min": 81, "name": "3x6Wrkcw7U8WSTeY"}], [{"max": 10, "min": 87, "name": "i6BCkAntanUmwZ37"}, {"max": 3, "min": 36, "name": "Ot1rdSSkN88I5aeO"}, {"max": 80, "min": 77, "name": "g1lZe5qjsckvVTuc"}], [{"max": 9, "min": 2, "name": "5EAefNiHX1rPMdLd"}, {"max": 43, "min": 25, "name": "oEJ65qEBx638HMO7"}, {"max": 6, "min": 95, "name": "8phliMZMn4ET18I5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 49}, "duration": 54, "max_number": 5, "min_number": 43, "player_max_number": 63, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 96, "min": 24, "name": "veRiSS2LL05QeZoW"}, {"max": 40, "min": 31, "name": "qibJXnzZtwpx22ER"}, {"max": 97, "min": 70, "name": "j13M20FcMEYTaUfB"}], [{"max": 14, "min": 77, "name": "P127bRi4Bx4akwBw"}, {"max": 48, "min": 2, "name": "eDCh9VYT4Ds6NuAi"}, {"max": 67, "min": 42, "name": "qyc28BkWBZaXVXt2"}], [{"max": 28, "min": 85, "name": "mQlIo2kRes2yRj99"}, {"max": 52, "min": 99, "name": "HqugzNp30Kb1Sv45"}, {"max": 90, "min": 28, "name": "6PURcc9bv5Zte2EN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 74}, "duration": 37, "max_number": 32, "min_number": 92, "player_max_number": 39, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 9, "min": 21, "name": "ce9DmhlUSdwDSAIg"}, {"max": 27, "min": 4, "name": "Q9yyaAnABXHt402k"}, {"max": 92, "min": 57, "name": "CIuqKKCWK3MKbV3R"}], [{"max": 52, "min": 2, "name": "2SpwY7eBfOOpYPQG"}, {"max": 70, "min": 49, "name": "UGYzbIrTYGKm3yPc"}, {"max": 63, "min": 21, "name": "SlOHBHAZczvSIsE8"}], [{"max": 12, "min": 74, "name": "1j3FgLkBuhjKmRGD"}, {"max": 11, "min": 84, "name": "53pchqBHsIrqfmRl"}, {"max": 22, "min": 36, "name": "iFJ6vhCG2lwto7Jy"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 17}, "duration": 12, "max_number": 35, "min_number": 36, "player_max_number": 14, "player_min_number": 46}], "flexing_rule": [{"attribute": "kGxSr9p1DnsVLiqO", "criteria": "ZA9SRVQvZNAh3nlY", "duration": 96, "reference": 0.9888008211661976}, {"attribute": "VKX8yqYsJ704imiF", "criteria": "5jfdLq8ZUKJpv30c", "duration": 86, "reference": 0.616541347125368}, {"attribute": "JNckXS39eVuDZXJT", "criteria": "M79J4GN3EJ2U0hHa", "duration": 55, "reference": 0.5208154877468198}], "match_options": {"options": [{"name": "Xam5LaO0dUvruNC7", "type": "pS8rtriRw6WK33kO"}, {"name": "5yJ7L1UnPn4sunko", "type": "RK153ZSqHlRd7HB2"}, {"name": "FvrKWPo0nUiqwMrX", "type": "fiuEFI5f0UHTlhPs"}]}, "matching_rule": [{"attribute": "aDIXsckBQ5EUUnDf", "criteria": "P5EVIKXHsHxUCeo4", "reference": 0.3147209603212888}, {"attribute": "P8Hi72Du29BY138x", "criteria": "q56O7RH3Q8XNcqFd", "reference": 0.858817585214283}, {"attribute": "p27VNmDEH5iWLymm", "criteria": "6BIeBsl2BNDS8Cg2", "reference": 0.4322352520717878}], "rebalance_enable": false, "sub_game_modes": {"eXYjPTO2kNx2IoG2": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 9, "name": "NLz4zOuzMjUu0EWl"}, {"max": 74, "min": 13, "name": "Vbie53okHMD2HN7d"}, {"max": 8, "min": 64, "name": "As536hkS21pDPS4a"}], [{"max": 43, "min": 91, "name": "nYhn9NjrTNR7CLRv"}, {"max": 65, "min": 9, "name": "wPDsm4FvUTo1Y9fE"}, {"max": 73, "min": 91, "name": "OJkZMbNTevRXFcpV"}], [{"max": 47, "min": 9, "name": "QYdLJmWj4gaPVVJG"}, {"max": 49, "min": 28, "name": "qGJX25pXGf1V5K5P"}, {"max": 3, "min": 45, "name": "Tp07GOUKFKyMx0pz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 83}, "max_number": 46, "min_number": 38, "player_max_number": 45, "player_min_number": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 33, "min": 88, "name": "uJSem4lVWb0rZlZm"}, {"max": 2, "min": 56, "name": "afWn7xjD8SdGM1dO"}, {"max": 41, "min": 24, "name": "d8BwJTYlm8NVp8ns"}], [{"max": 89, "min": 95, "name": "FxHRpp3YIcePN9vx"}, {"max": 31, "min": 80, "name": "b0fa25FQAkb99g6J"}, {"max": 83, "min": 42, "name": "w43V1xDhKTuhLz29"}], [{"max": 67, "min": 64, "name": "Xv9bYNeI6nc1ARJ2"}, {"max": 50, "min": 94, "name": "UaTi5npQaP4jVy6B"}, {"max": 88, "min": 87, "name": "Hpb43RBfk2U93PKB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 57}, "duration": 4, "max_number": 88, "min_number": 42, "player_max_number": 10, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 31, "min": 47, "name": "MMuYhyOCAnXNZFaG"}, {"max": 23, "min": 57, "name": "rXhKuP9lpJQfppiM"}, {"max": 100, "min": 88, "name": "hczweOzXXPuWe23p"}], [{"max": 66, "min": 85, "name": "GkCLyJNGdtsSYhWt"}, {"max": 65, "min": 60, "name": "wBqAP1vsN9qqbFHZ"}, {"max": 86, "min": 30, "name": "p2pXP4D5rhJCPakz"}], [{"max": 51, "min": 35, "name": "eOMYJTrRfKyEZSiG"}, {"max": 25, "min": 41, "name": "0KRvC0VetqSVHqdA"}, {"max": 90, "min": 54, "name": "HnRvDO95Kfcsplkz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 40}, "duration": 23, "max_number": 98, "min_number": 46, "player_max_number": 79, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 75, "min": 30, "name": "s2RWG0l2epnHjODA"}, {"max": 60, "min": 99, "name": "fFCGyvDf8Fn9WiAt"}, {"max": 100, "min": 82, "name": "5gk2C7BSZsxO3n2E"}], [{"max": 32, "min": 18, "name": "iBgFNoEN8XUWeYck"}, {"max": 3, "min": 28, "name": "BprW7n5tcn9sjAtw"}, {"max": 49, "min": 48, "name": "2dep5kPrelHO99XS"}], [{"max": 81, "min": 82, "name": "7XLKApCoMbDk95A2"}, {"max": 73, "min": 4, "name": "DAfkHiDJhwDEB8Yp"}, {"max": 8, "min": 38, "name": "6x3u6wkXhW9MGPhq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 21}, "duration": 84, "max_number": 86, "min_number": 50, "player_max_number": 73, "player_min_number": 82}], "name": "fSnUQ56muEqlXXaK"}, "XgWkwL55LMJmQDYg": {"alliance": {"combination": {"alliances": [[{"max": 78, "min": 60, "name": "IFbDpoAMKSlLLEB0"}, {"max": 17, "min": 10, "name": "J8f8z6RlMfKOmYoq"}, {"max": 33, "min": 83, "name": "28VKz1ivzolJGhU3"}], [{"max": 76, "min": 66, "name": "6bNzU71VaDOFSmhT"}, {"max": 88, "min": 35, "name": "A9yeUYOe0OGEGlwq"}, {"max": 30, "min": 96, "name": "c8DsuHMhdvu4KV80"}], [{"max": 100, "min": 99, "name": "ueIqhQrlwCNPJo1w"}, {"max": 23, "min": 32, "name": "3Kdn9zVquVy7jqBv"}, {"max": 59, "min": 49, "name": "AyZIIvIUnU6QJvP0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 46}, "max_number": 44, "min_number": 8, "player_max_number": 4, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 54, "name": "tJPtHnvbXC8BS8Pt"}, {"max": 98, "min": 38, "name": "27Z30R5rM9ewTdfn"}, {"max": 71, "min": 88, "name": "ynT3z80eSnLSoU2L"}], [{"max": 86, "min": 69, "name": "oPsAWH5pN10rLqra"}, {"max": 48, "min": 36, "name": "BnRHWpN9r8PagWaL"}, {"max": 43, "min": 56, "name": "1qn1Op90aqDMIIZv"}], [{"max": 69, "min": 21, "name": "Ujuw1kldXGFME5Uy"}, {"max": 75, "min": 29, "name": "JtBRdeVg4q7Lqj7B"}, {"max": 95, "min": 11, "name": "3YgF29YXQGF7hedd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 66}, "duration": 51, "max_number": 8, "min_number": 7, "player_max_number": 5, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 18, "min": 39, "name": "VG1hyLqHHjX6wU8r"}, {"max": 30, "min": 89, "name": "BLFnSCurZLSO8W95"}, {"max": 92, "min": 27, "name": "I4N93ZNJSzVxHBIe"}], [{"max": 91, "min": 16, "name": "slLd4OvcOW7qd3RY"}, {"max": 8, "min": 31, "name": "OpTnyvt8TciL3fyN"}, {"max": 48, "min": 54, "name": "TaJMWmZLChQ574ly"}], [{"max": 86, "min": 58, "name": "ZM9ilCbMRwYnOuQh"}, {"max": 64, "min": 71, "name": "iB2NPfLOgc0TkUWC"}, {"max": 1, "min": 10, "name": "6ndDjw96TylcBeZJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 28}, "duration": 57, "max_number": 98, "min_number": 18, "player_max_number": 0, "player_min_number": 8}, {"combination": {"alliances": [[{"max": 52, "min": 46, "name": "4Zkry2zbtUWMVg9B"}, {"max": 56, "min": 32, "name": "1ORwNc8BB5qaWgpY"}, {"max": 4, "min": 58, "name": "mSZXItvevxLLYnby"}], [{"max": 16, "min": 25, "name": "s2FrftG7O3WJagHr"}, {"max": 19, "min": 19, "name": "GHPwie1V9rtWCjSB"}, {"max": 82, "min": 76, "name": "CHQqDVQ6pfIEWzEE"}], [{"max": 84, "min": 88, "name": "RVZmypJtsWMqH2bF"}, {"max": 96, "min": 39, "name": "H5qMrsDyehaV7zWp"}, {"max": 44, "min": 68, "name": "SmMDw3jmLbZsk21P"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 81}, "duration": 86, "max_number": 96, "min_number": 32, "player_max_number": 20, "player_min_number": 0}], "name": "U4WLv1lUNU6i9WJ5"}, "46B05GWWGCIyvmLN": {"alliance": {"combination": {"alliances": [[{"max": 40, "min": 99, "name": "HwiNG1832c5qHMKi"}, {"max": 0, "min": 61, "name": "xQbbZyTGO2msHEi0"}, {"max": 30, "min": 76, "name": "qyiXl00tdGEYSAJR"}], [{"max": 22, "min": 30, "name": "4Pg3ZHanDndA34N7"}, {"max": 95, "min": 92, "name": "jMH3RIMXxMYc3pVq"}, {"max": 23, "min": 96, "name": "ZDSAYxcGmzWes54D"}], [{"max": 55, "min": 40, "name": "6dpUbXGzXheUX0cq"}, {"max": 67, "min": 84, "name": "VcjdS0z0N1WHhZxZ"}, {"max": 3, "min": 24, "name": "oNI5eahi6h8N5Lk1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 8}, "max_number": 81, "min_number": 87, "player_max_number": 73, "player_min_number": 55}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 66, "min": 86, "name": "FVsyZxFnDeJFVW7J"}, {"max": 51, "min": 24, "name": "OQCGswLXgKKbn2PO"}, {"max": 59, "min": 45, "name": "k2C9cUZlt5IkB6Bf"}], [{"max": 100, "min": 54, "name": "tqqRXxyp43jmq0xe"}, {"max": 57, "min": 48, "name": "WKOHGD1vl9mFQ5rS"}, {"max": 8, "min": 65, "name": "59GdvaQUNZQjFSD4"}], [{"max": 0, "min": 5, "name": "djVdDf6GpOuqRc5e"}, {"max": 49, "min": 60, "name": "yu3bWpkwG3uzDosK"}, {"max": 81, "min": 38, "name": "9LI7xJ0uJllyCkrR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 97}, "duration": 8, "max_number": 34, "min_number": 52, "player_max_number": 24, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 28, "min": 12, "name": "QikLCVt2ioeTCB5X"}, {"max": 57, "min": 37, "name": "DT3WaUkd06BfW94R"}, {"max": 87, "min": 52, "name": "I2UleYUJZrsEe74u"}], [{"max": 51, "min": 84, "name": "xouz65z8V6DyLB2v"}, {"max": 83, "min": 45, "name": "1Sj7pS7SGWvlNWjX"}, {"max": 79, "min": 14, "name": "88BD3JXS9yzwC4Sm"}], [{"max": 71, "min": 42, "name": "KRJ7P47JvXPBOMOw"}, {"max": 77, "min": 29, "name": "bwsnIsg4T8VVLK9H"}, {"max": 40, "min": 27, "name": "AKS2qv6ghIDBY18Y"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 56}, "duration": 39, "max_number": 51, "min_number": 64, "player_max_number": 100, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 0, "min": 45, "name": "9g5ioco2dKRhYnkd"}, {"max": 97, "min": 82, "name": "Ur9Pzm60GyyJzxVq"}, {"max": 69, "min": 29, "name": "72GPcrXz57WRjsZU"}], [{"max": 75, "min": 65, "name": "2JMatS4YEPWjUmtP"}, {"max": 94, "min": 57, "name": "DmeR1gtm7AM7fMmy"}, {"max": 83, "min": 60, "name": "ZLKXjUsADqAdCApG"}], [{"max": 63, "min": 89, "name": "pi9w9UVVSa2aJuIM"}, {"max": 87, "min": 92, "name": "dv0gJnXbLJEm6EWm"}, {"max": 10, "min": 6, "name": "Tpgujgk7OBOlcEyT"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 80}, "duration": 18, "max_number": 44, "min_number": 6, "player_max_number": 49, "player_min_number": 97}], "name": "1cW4K2i4uYnsgvOe"}}}, "session_queue_timeout_seconds": 52, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'JIP98unDdj4z5bmk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'HFaxjhoYAogAYttX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "AP0NE1n5spwXlxSu", "players": [{"results": [{"attribute": "YuybDSbMOSJc02cO", "value": 0.37662003553126955}, {"attribute": "qL1BDDs0Wle3Bn38", "value": 0.9194935901146918}, {"attribute": "0b7S0irpEwsmjBTh", "value": 0.4622472722718297}], "user_id": "gLkoXbJSYuUrxMsO"}, {"results": [{"attribute": "UFvbR85nWIfGQJFB", "value": 0.22283693655864034}, {"attribute": "UEfAaWCJtqIF5HbI", "value": 0.983060812034994}, {"attribute": "dC8CS7fsodzwfryG", "value": 0.23620901639750558}], "user_id": "PjzyHeZKUalFys3p"}, {"results": [{"attribute": "DMKTpYwShCuZHRZr", "value": 0.07784701953329043}, {"attribute": "6GtZSLT6G0Sqx1Ez", "value": 0.5328925731520082}, {"attribute": "rksC8Q3gpZSJOVDV", "value": 0.3325739156306159}], "user_id": "f5CuUdojxYrvbtYA"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "v4gCQL9Aidx9FVjo"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "xuVek2D1kt4HDnu7", "client_version": "K2dGlFUeFRtXTYtY", "deployment": "NBm2hrXsgCUE8aDU", "error_code": 83, "error_message": "VAKoncCOd2PZEywI", "game_mode": "S9Gzz6WTRnppQoFr", "joinable": true, "match_id": "J1rYvXM1feDN7V0Y", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"Hs91Sh8zoNOjavPo": {}, "tDzodkl8gxZ9TdkI": {}, "XAwusCWUo44QBNU6": {}}, "party_id": "l3IeLXhttRY8hRe1", "party_members": [{"extra_attributes": {"dTn3KWgqsG7RnmlS": {}, "5Nqbj9otFgnbcGAL": {}, "VxZB4TSP2wVFA2DK": {}}, "user_id": "hGD0t0aUXtqR09qd"}, {"extra_attributes": {"C2agEZxbovLDizrq": {}, "G4SG2Ps4E6J23eov": {}, "DvXnEazDCMa5thjw": {}}, "user_id": "OSgnCyRUe5DH6m7n"}, {"extra_attributes": {"Z7LOI2USoqjsiO8C": {}, "kEUxxadXdgZGCzvS": {}, "opkN0oh4rMm2riLv": {}}, "user_id": "PiZsmnaj3cFXcVKV"}], "ticket_created_at": 87, "ticket_id": "A4C7wqW22NB5I4kA"}, {"first_ticket_created_at": 65, "party_attributes": {"Y6sRq3Zu5RZriFaV": {}, "NVScFq0EqDBtqiXq": {}, "qRa5hz5tzQW77abp": {}}, "party_id": "cJ698qqlniO3FKuu", "party_members": [{"extra_attributes": {"2rNeugFU67aq7sRD": {}, "5HewDkJlBNyYiHAL": {}, "YM08rfmrqMAqypnZ": {}}, "user_id": "re9YBoC3Xllt2ppj"}, {"extra_attributes": {"iGNUMvBOhEBeOoLW": {}, "ayBIb2sGlwWHCYRI": {}, "Ae4YwvS4aMqTRS3B": {}}, "user_id": "5RGJ9guUc61gjeiU"}, {"extra_attributes": {"SVaoEpnkxu9SZ20n": {}, "osRgah87vENG21c8": {}, "dmX9YLdiXqCfl35r": {}}, "user_id": "9Bl1pecz3q1xjdPl"}], "ticket_created_at": 75, "ticket_id": "ySYJ3H9vDmuKHTMH"}, {"first_ticket_created_at": 77, "party_attributes": {"RMKKT1cA25JP2NLu": {}, "FZPWl0rRNMKnmVkY": {}, "pS237CthEzsh6D7e": {}}, "party_id": "f0muXxCosarltkmG", "party_members": [{"extra_attributes": {"svg4ZbouZ6IIXFaF": {}, "axRI5sIfEGBrZPnl": {}, "1Z1TTAKFp5q3rFqI": {}}, "user_id": "JseOioJgaFqAzlyO"}, {"extra_attributes": {"w0Y1x3p9CgekkhdJ": {}, "0PoWLzcRFf41jbi3": {}, "PR3OSwnHUU8EF4CN": {}}, "user_id": "svkt6tA4WlNLPdSf"}, {"extra_attributes": {"X1Y5ApiS2CiXuYu5": {}, "DpvvOKK0Fj4IhGvw": {}, "0s04OXzaLLiJ1ulK": {}}, "user_id": "65by4qjQoep8oY4f"}], "ticket_created_at": 20, "ticket_id": "DWjgUUG2lsVXHFsL"}]}, {"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"YEA7X9arMk52IaJK": {}, "Ytv1VPDmUeIAjCGC": {}, "uyHhwUpG7yLYxlBK": {}}, "party_id": "CI5aKRpNk55H1w5Z", "party_members": [{"extra_attributes": {"HYSCeBbA8n8WxfWG": {}, "IhT2FTUqgzUutu5C": {}, "jk1l2N8wCSRvxOdB": {}}, "user_id": "NksGZem8Pbo8H8dc"}, {"extra_attributes": {"QLPo1MQHunVNoE2r": {}, "gPgUp5buP3h8OKYV": {}, "HLOOllnOF8Ax34uT": {}}, "user_id": "fG0OY1SkmQCbsxYf"}, {"extra_attributes": {"1E7XZ8oEY3VhQdCN": {}, "6Detsdvh3jayXP7l": {}, "HD8lORp1qyr5zIAI": {}}, "user_id": "v99IZXTldJ2rxppZ"}], "ticket_created_at": 17, "ticket_id": "dKawzUY8BnAiAxny"}, {"first_ticket_created_at": 0, "party_attributes": {"7S8fbp8yukTQbWMD": {}, "YboqHmXXYhSGzYJK": {}, "lvKIZnG1facFvlcx": {}}, "party_id": "3XavZTE0Rmw67WuL", "party_members": [{"extra_attributes": {"NtBh9pFbldmTnbqa": {}, "KUDqtxL4bOm6STvj": {}, "ZViKrk46JbpS91FO": {}}, "user_id": "5B8tggHA0dEgVEeY"}, {"extra_attributes": {"jix4lnSTJtn9XZzj": {}, "Yjz8HQQsNpQ9HFZf": {}, "cqP7sK3wcOZudsqy": {}}, "user_id": "7xZWjEtmXBG6g5nU"}, {"extra_attributes": {"JyKobXCNnf0QKLhL": {}, "Q0NdQ0BIbNm2kpz6": {}, "iTNSj0mnNkE3PweS": {}}, "user_id": "mTKQp9fh2Mue00RQ"}], "ticket_created_at": 77, "ticket_id": "83v7fh7dig6nQz7W"}, {"first_ticket_created_at": 77, "party_attributes": {"wZzCYDoB25qfFlOq": {}, "P4V8QcQ7pyw0MBlT": {}, "DyURzF3EHBjMhsHI": {}}, "party_id": "pkD4K410UomJB7sz", "party_members": [{"extra_attributes": {"VVzi5Wxkc9iWDAxL": {}, "F2ERjGFymqeqT3Q2": {}, "sr1xgx9UjmPasxGO": {}}, "user_id": "PA179bgwPIkh4bOk"}, {"extra_attributes": {"x3cRE8WR0WwYJQMw": {}, "Fj0rIg5v2QMNFUkb": {}, "4xKqemSVgvOXI8Rj": {}}, "user_id": "m3aiTtW0A0mBovBx"}, {"extra_attributes": {"9Gg1mN3zGrQBqS73": {}, "T5hSLYU61o3iyLYH": {}, "n4DWcXgGJNmLPrRs": {}}, "user_id": "dX8e47HO6DSULbOc"}], "ticket_created_at": 82, "ticket_id": "Cg6ZhqN4xFnbrEeG"}]}, {"matching_parties": [{"first_ticket_created_at": 93, "party_attributes": {"PnPUzWyMoCIDfepB": {}, "XDgGvvdsRSUQJrqp": {}, "IdbHpAw93JNE4Ew8": {}}, "party_id": "kJB6qcAMcO12SuE0", "party_members": [{"extra_attributes": {"c7EAgBBtskJTBfzp": {}, "BvhWDNnYV1HnedOy": {}, "VnmIvDBBg0DH91oj": {}}, "user_id": "aHNj9d8K6D3w4J7H"}, {"extra_attributes": {"Waggtkwf8nlcVpms": {}, "I3mmfsZXnR7eUhBB": {}, "U2ZVZd3CiynNhFgT": {}}, "user_id": "6Lxao5MzUE8sHpal"}, {"extra_attributes": {"XkBvhk5bedAx76t8": {}, "cAZgntig2Hjob7KP": {}, "sA1J1aIRQfXnmbfV": {}}, "user_id": "owMTif2PUK6C9GjI"}], "ticket_created_at": 69, "ticket_id": "K7js761H6fKVszEJ"}, {"first_ticket_created_at": 85, "party_attributes": {"q1LtQzIl6mOqWWYi": {}, "Wv3tQoAsDQXLPeYe": {}, "OO92N54qjA2RIEXs": {}}, "party_id": "cG2pv9VTUW2cfL1Z", "party_members": [{"extra_attributes": {"xO7YXlpBz59n1Npy": {}, "l1ML5dmonBUWd2yP": {}, "lQcERHHO880LKS28": {}}, "user_id": "FLUzRl5TLODgu4Xy"}, {"extra_attributes": {"AN1KHm75VD4RsIh1": {}, "raqaYT0HnS1SQ0ap": {}, "Y2GOkjpAOyKJqcHV": {}}, "user_id": "sSSg15hN8H61Fh5P"}, {"extra_attributes": {"DtNSR6Fu5mX2UdzK": {}, "IVPaY9ng9x2jV482": {}, "EMXDQB2irIGxWLeN": {}}, "user_id": "QLAMLsBSAxgbu0S7"}], "ticket_created_at": 92, "ticket_id": "MAExoXdVGhqOyWdt"}, {"first_ticket_created_at": 89, "party_attributes": {"oPb77SGQMvmK2ULN": {}, "e5vd6ZQdidPYpobT": {}, "cXweXgIkLy3f4HbF": {}}, "party_id": "6wBniC8gCW8yi2ue", "party_members": [{"extra_attributes": {"2hWVAuRfKFd1O6pb": {}, "8HR5Iurpo2aPbNfP": {}, "VTzUtHpBH6JNuQVn": {}}, "user_id": "Z2rWuQvJES7zAML1"}, {"extra_attributes": {"Cik45dbYCXmNa0iD": {}, "7gmvOdCTWWTN28RF": {}, "8E63mieHg0nt0ZqQ": {}}, "user_id": "NSAKgNM4hUocglK5"}, {"extra_attributes": {"B5vTPFq1Xq1yTSvl": {}, "ZoPLHQ8QObLrLlft": {}, "wMHiHXpUyFNIMrcQ": {}}, "user_id": "0HGZOMmtiiBDtUC7"}], "ticket_created_at": 3, "ticket_id": "xwPj0Lag3i49DaWa"}]}], "namespace": "UzGkEszqZ0ziYzFa", "party_attributes": {"eHgsnGsSjyUNml1D": {}, "M7HfW0PoHJJvNKyb": {}, "8BcsKmnsSH9PGSCV": {}}, "party_id": "yDHWOmxz9YseaNMv", "queued_at": 44, "region": "0ofKh1O8WHzoEMiE", "server_name": "e0ZFgIGVhcEJf9Gf", "status": "NOLdM0D62oFaa8P9", "ticket_id": "SMNi4Xwd6uyheZUd", "updated_at": "1987-02-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "zg1ZdblugUIBO0OJ"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '7LENPYjXTxWAcj28' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 85, "userID": "famuzPWpLXwkfbXa", "weight": 0.022215508322734667}' \
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
    --matchIDs 'T9Ydmmo68AVUCk9S' \
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
    --strategy 'vgSVoOkZurn54deV' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '06TvvnKLqnsWLPYX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'HkKl4w24Mjqlem2f' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "OQYRESToTr2nD2Wm", "description": "mgvrEjMsewSBBkVl", "findMatchTimeoutSeconds": 7, "joinable": true, "max_delay_ms": 12, "region_expansion_range_ms": 84, "region_expansion_rate_ms": 71, "region_latency_initial_range_ms": 64, "region_latency_max_ms": 43, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 40, "min": 11, "name": "LXCRn81L6LAIWWCx"}, {"max": 60, "min": 91, "name": "TxhDKfbbEqETX6jT"}, {"max": 4, "min": 14, "name": "MId7K7hap6wUATdH"}], [{"max": 88, "min": 75, "name": "O0it72fbkyTplPdL"}, {"max": 62, "min": 75, "name": "IpJJtVCvnF1jo0fR"}, {"max": 36, "min": 95, "name": "doq9YDrhvBFxf40k"}], [{"max": 45, "min": 41, "name": "SyW2JQzjwGir3WF6"}, {"max": 51, "min": 85, "name": "sMD5sjYbY8KNUgUS"}, {"max": 80, "min": 56, "name": "JJGE9g0WgSvXEl4w"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 83}, "maxNumber": 88, "minNumber": 90, "playerMaxNumber": 56, "playerMinNumber": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 47, "min": 94, "name": "OTaezFPtbYNnZ9oe"}, {"max": 37, "min": 55, "name": "umVAHIqsSuzL24WI"}, {"max": 56, "min": 55, "name": "AJXvCSQJjuSDwzmB"}], [{"max": 37, "min": 1, "name": "BEC7MqYnZ1Ag3rUN"}, {"max": 33, "min": 80, "name": "sszMyBxu4j2MxltU"}, {"max": 92, "min": 17, "name": "8nNPCsPdwdbAPFjt"}], [{"max": 65, "min": 14, "name": "GZvVm9ZshibHgymV"}, {"max": 51, "min": 22, "name": "nKlfk5GhkjCwVpzU"}, {"max": 51, "min": 23, "name": "mCH93xSi0gVu9C2m"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 15}, "duration": 7, "max_number": 8, "min_number": 65, "player_max_number": 45, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 8, "min": 41, "name": "TfDRaGu6pZkfOxEj"}, {"max": 2, "min": 49, "name": "5Mgw2djnTlreq31A"}, {"max": 41, "min": 10, "name": "sa54TcCksB6dtwJf"}], [{"max": 10, "min": 12, "name": "fmTmQ3jJJlO4pBR2"}, {"max": 36, "min": 88, "name": "H0tpJbaM6VfcfJAN"}, {"max": 50, "min": 35, "name": "Xp6FvF1uo0Te3A3T"}], [{"max": 19, "min": 32, "name": "d19WOWecGtPUQKm8"}, {"max": 50, "min": 27, "name": "G7e2JVm5NKqY7im2"}, {"max": 58, "min": 93, "name": "Kb8CPJOfuTvjYFKw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 60}, "duration": 41, "max_number": 82, "min_number": 67, "player_max_number": 76, "player_min_number": 68}, {"combination": {"alliances": [[{"max": 57, "min": 0, "name": "wd1f5oW8IrE3wZxH"}, {"max": 19, "min": 67, "name": "Sg2kjZA3BRkSLpTu"}, {"max": 0, "min": 95, "name": "lOnt8lTAucZmTULP"}], [{"max": 23, "min": 16, "name": "7q3u6yALeaV6DsXQ"}, {"max": 7, "min": 60, "name": "A9cW94dEE0Np71wO"}, {"max": 13, "min": 42, "name": "RPWQW2C88TaiAWou"}], [{"max": 71, "min": 58, "name": "MK8YZPgTuQm5EIgg"}, {"max": 0, "min": 47, "name": "Pvyo8k9aqaSfzwoz"}, {"max": 65, "min": 13, "name": "DZ8TFLElClC75SFi"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 85}, "duration": 48, "max_number": 10, "min_number": 61, "player_max_number": 8, "player_min_number": 61}], "flexingRules": [{"attribute": "vviUCqJLU41bLdsC", "criteria": "ulc7zgwgmpnmZALM", "duration": 40, "reference": 0.18553018126158516}, {"attribute": "2Wbkc3q1GbjxohSd", "criteria": "JloSW3wquI5rG3AY", "duration": 11, "reference": 0.2216037708258215}, {"attribute": "GiBOStC5W1m5JiIg", "criteria": "xLVZkflQPICKDqUI", "duration": 22, "reference": 0.6245116573591871}], "match_options": {"options": [{"name": "WPSIwkHJmZTXNnUD", "type": "CorsBn4tFxVnLGvo"}, {"name": "wh1KQhEXQnxEytxd", "type": "nOwBVLPvxlrQ8rF7"}, {"name": "x6vgQhxWeRG1dq4D", "type": "uB5c9e3d0DBZSPKX"}]}, "matchingRules": [{"attribute": "KvjOstIzTekVzfa8", "criteria": "bFljOxtMR8bjbMOF", "reference": 0.5076544252267806}, {"attribute": "zWamonpiQV6UmAok", "criteria": "pDbCn5VKJRo34lpv", "reference": 0.7524404260870924}, {"attribute": "V4csSDUmEulx3aaF", "criteria": "pCYbYU3WwQSMmsPu", "reference": 0.26002382122431233}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 64, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'x5PFlM2urUELZ8Mr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllPartyInChannel' test.out

#- 21 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'uNJHUgE9w8GQNnQ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionsInChannel' test.out

#- 22 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'JYhrpgxlLCwWSh3k' \
    --matchID 'snnnVMrHuSdru3aV' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["Tcm0zlgEH8NUhxev", "iqK4MUbbXPpAM7vK", "WBICVZqysrsxuilh"], "party_id": "8AoZxBfGhFmUEqhk", "user_id": "pImdb6NNt5bDZZOa"}' \
    > test.out 2>&1
eval_tap $? 22 'AddUserIntoSessionInChannel' test.out

#- 23 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Z4pK5PSzsZxWRpc8' \
    --matchID 'aQJ7yzuZGc8DshBW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'DeleteSessionInChannel' test.out

#- 24 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '45xSinTMae1eQkgT' \
    --matchID 'dcWBVUaTlhCzmjd6' \
    --namespace $AB_NAMESPACE \
    --userID '1BabdKVfruvzfgrJ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteUserFromSessionInChannel' test.out

#- 25 SearchSessions
eval_tap 0 25 'SearchSessions # SKIP deprecated' test.out

#- 26 GetSessionHistoryDetailed
eval_tap 0 26 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 27 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 27 'PublicGetMessages' test.out

#- 28 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetAllMatchmakingChannel' test.out

#- 29 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'qh1YErVpjNLRv4zx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'PublicGetSingleMatchmakingChannel' test.out

#- 30 SearchSessionsV2
eval_tap 0 30 'SearchSessionsV2 # SKIP deprecated' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE