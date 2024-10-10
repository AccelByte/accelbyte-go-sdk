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
    --limit '34' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "VgMj14uaoB2ImtHA", "description": "31LbTc9ZYbybjrjW", "find_match_timeout_seconds": 20, "game_mode": "jxv2ITTDmEumPJYR", "joinable": true, "max_delay_ms": 56, "region_expansion_range_ms": 33, "region_expansion_rate_ms": 11, "region_latency_initial_range_ms": 13, "region_latency_max_ms": 50, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 50, "name": "r6AmNM1LK3rvocrr"}, {"max": 23, "min": 93, "name": "sPJl2aFZF4PC605E"}, {"max": 91, "min": 66, "name": "zVAZiw9vUJbS1l8R"}], [{"max": 1, "min": 72, "name": "bzjHwyEoDWiNB2mG"}, {"max": 53, "min": 99, "name": "zGiyXUvm3o3DLYoc"}, {"max": 58, "min": 20, "name": "jEMafaVTCoMEq7qC"}], [{"max": 19, "min": 64, "name": "LwLMCqMHt0UfRwil"}, {"max": 46, "min": 21, "name": "xLNjfHi5PZsVmvqN"}, {"max": 9, "min": 22, "name": "3vuD339vjUrjKGg6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 41}, "max_number": 100, "min_number": 11, "player_max_number": 7, "player_min_number": 88}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 12, "min": 51, "name": "Y4Dm2CDIV2YY4QpE"}, {"max": 28, "min": 65, "name": "iHOOFYjW2HdJY8Wu"}, {"max": 3, "min": 6, "name": "uqDLtXLOifZv6tGF"}], [{"max": 60, "min": 58, "name": "iwFPZrzWYvaCHj1F"}, {"max": 5, "min": 26, "name": "h04upjBo6Wqc33tF"}, {"max": 91, "min": 19, "name": "PSGLKdzb5VhsR0QE"}], [{"max": 8, "min": 24, "name": "XVEGozsPcfbsT8ku"}, {"max": 12, "min": 14, "name": "iTF3qY10PSP38Mc2"}, {"max": 27, "min": 38, "name": "iffBH780pepTcSTF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 16}, "duration": 80, "max_number": 47, "min_number": 0, "player_max_number": 99, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 65, "min": 83, "name": "wIJJ6pRhLEAe08PV"}, {"max": 86, "min": 44, "name": "KvdWH2Q83wIiDoXQ"}, {"max": 1, "min": 16, "name": "N1u0gnrNsc9Qwrwv"}], [{"max": 43, "min": 81, "name": "ajZ1EvtFtz9a9Enl"}, {"max": 74, "min": 49, "name": "GZFVezzwoXU6OzLv"}, {"max": 76, "min": 49, "name": "17NEGbJZaEDJgaE7"}], [{"max": 72, "min": 91, "name": "ulo4J2eQPNqLR2Cm"}, {"max": 75, "min": 66, "name": "6veuHdw7jTXh9Q8a"}, {"max": 21, "min": 89, "name": "feAmmEeDWr4PHVas"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 57}, "duration": 96, "max_number": 25, "min_number": 35, "player_max_number": 35, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 62, "min": 52, "name": "gFU7LP1pdeinn5Wb"}, {"max": 71, "min": 68, "name": "oQsEtAdZIcsDb5uh"}, {"max": 13, "min": 72, "name": "OWLolVMPkA1X1AkJ"}], [{"max": 13, "min": 42, "name": "ihtFwPv66jRARVIP"}, {"max": 0, "min": 35, "name": "uXWaqMnv6MgRmBGw"}, {"max": 15, "min": 66, "name": "VR7JNvTmdvvXItX9"}], [{"max": 76, "min": 12, "name": "Z2pirpFdiIN7k3yd"}, {"max": 13, "min": 58, "name": "qhJ0fiCeG1wWpYRu"}, {"max": 56, "min": 96, "name": "uucLuxXFKovo5Xa8"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 90}, "duration": 8, "max_number": 56, "min_number": 94, "player_max_number": 79, "player_min_number": 57}], "batch_size": 49, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 98, "flex_flat_step_range": 72, "flex_immunity_count": 80, "flex_range_max": 1, "flex_rate_ms": 99, "flex_step_max": 6, "force_authority_match": true, "initial_step_range": 3, "mmr_max": 0, "mmr_mean": 1, "mmr_min": 85, "mmr_std_dev": 74, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "41WmvkQw6WHTiQJL", "criteria": "uqysNQ5TmrIHkUeh", "duration": 1, "reference": 0.23040038343000135}, {"attribute": "VJQDw93KllrigEJ3", "criteria": "23zmPbHIndfX2KwR", "duration": 69, "reference": 0.8475690021775574}, {"attribute": "jsXpoj0ERgK5yrjr", "criteria": "42bqNWxodqp2lz2J", "duration": 5, "reference": 0.9683494726234866}], "match_options": {"options": [{"name": "pL3e8HOgqzzinEvv", "type": "TWEwxBh5X3N752Ng"}, {"name": "Kp2VD6eu6PCbBhwW", "type": "9gYrBREHJY6KcAHf"}, {"name": "dm2ett4NIEIB1FbW", "type": "86WeHunYbkrUmY3a"}]}, "matching_rule": [{"attribute": "vywrQfpjMubuEkJ6", "criteria": "w5ExFgaXK7nN3wos", "reference": 0.48603964940875855}, {"attribute": "GIsmMFYT3v6eJ9Kq", "criteria": "oqTcRNHqytjBOXlH", "reference": 0.7763750677203927}, {"attribute": "l0fS975Bix54ZNIH", "criteria": "o7n21VUREyJJtacK", "reference": 0.5835608677183425}], "rebalance_enable": false, "sort_ticket": {"search_result": "u2sACdIw2ZuzL3ef", "ticket_queue": "VwC7FY4SpCuVDcpb"}, "sort_tickets": [{"search_result": "UWinSDb20shKSjGJ", "threshold": 57, "ticket_queue": "AQIjFjMGBgzn30dn"}, {"search_result": "VKWQmWl3a3SKzuid", "threshold": 98, "ticket_queue": "WCJvuQAPRcAngKI5"}, {"search_result": "tj9U6nEyGguZFMP9", "threshold": 93, "ticket_queue": "DMJY6gnxRMM4568K"}], "sub_game_modes": {"VkPDtD5N0u5NllSl": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 57, "name": "oNdEiB9K3ae3K4sF"}, {"max": 61, "min": 85, "name": "iVqu7X8W9CT0nWSC"}, {"max": 88, "min": 67, "name": "0HxHKN0QZveb89Y6"}], [{"max": 66, "min": 49, "name": "db7GHFRyiJvvv7Hj"}, {"max": 6, "min": 5, "name": "1ZMVzLjOS05D7w1u"}, {"max": 12, "min": 18, "name": "qSO54YZSihRNIpEi"}], [{"max": 45, "min": 4, "name": "shqt0QUs99A3kC5y"}, {"max": 60, "min": 13, "name": "28Pas1W7CleEXio6"}, {"max": 3, "min": 92, "name": "QCBJts4DOt16OMEE"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 76}, "max_number": 94, "min_number": 21, "player_max_number": 23, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 68, "min": 69, "name": "p77Z7AVVYM1hf2pK"}, {"max": 56, "min": 48, "name": "9to7BxXsYHB5oPan"}, {"max": 87, "min": 78, "name": "DJ6bgtzQ1gB114f3"}], [{"max": 86, "min": 80, "name": "SfS1Wsnzu8CSG9bj"}, {"max": 58, "min": 48, "name": "pvvyPmiR44RT5H2Q"}, {"max": 56, "min": 19, "name": "XsbjsT6xK8SqvkuT"}], [{"max": 31, "min": 9, "name": "2eMwVyru4PcRIOGL"}, {"max": 0, "min": 17, "name": "yKc0IlZN4ZQZ5Qym"}, {"max": 53, "min": 72, "name": "iBRiQhQsh1vqsDoq"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 100}, "duration": 54, "max_number": 7, "min_number": 0, "player_max_number": 35, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 47, "min": 74, "name": "q9ZO4eFSWBtl3wH2"}, {"max": 30, "min": 74, "name": "ESwllH9ISEsuDeRu"}, {"max": 65, "min": 47, "name": "lrTmhIugjyiZUDtg"}], [{"max": 14, "min": 9, "name": "tro86yrTCZ3BGjX4"}, {"max": 67, "min": 84, "name": "z3aZSatmcscOvN1j"}, {"max": 26, "min": 97, "name": "EQRcXI5HkD2SOZuS"}], [{"max": 24, "min": 24, "name": "pPsXisOqnsAvaho7"}, {"max": 53, "min": 82, "name": "kbBoMrbHD30jPWrx"}, {"max": 73, "min": 13, "name": "PhmVTDfClya9eYDD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 35}, "duration": 96, "max_number": 38, "min_number": 14, "player_max_number": 90, "player_min_number": 70}, {"combination": {"alliances": [[{"max": 44, "min": 84, "name": "P0XqzkZyCtWWF84C"}, {"max": 30, "min": 89, "name": "NGp4vzi1wWJ2B3yV"}, {"max": 5, "min": 90, "name": "Mnze4ZAN4PYPPFa2"}], [{"max": 19, "min": 39, "name": "jFnfBjugXZ7TFbHP"}, {"max": 34, "min": 31, "name": "i5KnbnAl8EzCFNvd"}, {"max": 40, "min": 34, "name": "i97TwzhF756B12Nv"}], [{"max": 23, "min": 50, "name": "MvCKkW5Q3QIgbXDi"}, {"max": 21, "min": 26, "name": "dqFHvahf3IiE3Qkr"}, {"max": 65, "min": 18, "name": "xDbnFL96sTUKY4Hp"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 55}, "duration": 1, "max_number": 51, "min_number": 29, "player_max_number": 75, "player_min_number": 62}], "name": "UKA9DHUzv4bgeMPZ"}, "qitsrXUQc0AGpWDa": {"alliance": {"combination": {"alliances": [[{"max": 63, "min": 95, "name": "LnS7khRMBFoOLxQh"}, {"max": 53, "min": 0, "name": "y6MmRrcb4hzlVbmZ"}, {"max": 45, "min": 66, "name": "kpkPcb5H1PGggUiv"}], [{"max": 26, "min": 23, "name": "WQQWzVocjCSC6Ti8"}, {"max": 20, "min": 81, "name": "9zLrx6pM7tsY4U6S"}, {"max": 78, "min": 98, "name": "wmdwqmMgfoRcnOBf"}], [{"max": 74, "min": 14, "name": "chLOc297MRSKBq7O"}, {"max": 71, "min": 3, "name": "JDIJwbuLLCLIsRpZ"}, {"max": 16, "min": 48, "name": "kJsQi3Ux11fEsKHT"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 8}, "max_number": 33, "min_number": 50, "player_max_number": 37, "player_min_number": 45}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 13, "min": 61, "name": "5zNIS3ffu9znQ5oB"}, {"max": 15, "min": 32, "name": "093Yl9Oqthnsho5Q"}, {"max": 71, "min": 62, "name": "z7vs5Pem6lclyYBv"}], [{"max": 13, "min": 100, "name": "EiAfaylFVWAILF68"}, {"max": 68, "min": 60, "name": "KK5imM80FkPnY6t6"}, {"max": 53, "min": 96, "name": "7AZ1EYlBDGGQRumu"}], [{"max": 1, "min": 39, "name": "sUOC56Qdr4xccrSl"}, {"max": 98, "min": 34, "name": "jInJdWGOPaCQj7QP"}, {"max": 16, "min": 75, "name": "OiZNDp9WIhHSaV7H"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 21}, "duration": 10, "max_number": 44, "min_number": 73, "player_max_number": 56, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 59, "min": 2, "name": "jeZZC53c7jEsL1j9"}, {"max": 41, "min": 65, "name": "awg1MQa64yWmU6hw"}, {"max": 0, "min": 70, "name": "aWIldNmtybYX8r2J"}], [{"max": 25, "min": 97, "name": "TN6UVTRiKcoKNmTH"}, {"max": 45, "min": 2, "name": "WMwhUgLi4LWSHgCC"}, {"max": 12, "min": 47, "name": "OqrphxiTvv6vHS2x"}], [{"max": 68, "min": 23, "name": "zv2iyIuy59Pc5SyG"}, {"max": 19, "min": 60, "name": "D9MTC4mBjx6TbuT9"}, {"max": 52, "min": 88, "name": "7AmOz294KgtCnnCP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 44}, "duration": 85, "max_number": 24, "min_number": 2, "player_max_number": 72, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 14, "min": 96, "name": "yOSPoN75x93cmiMc"}, {"max": 24, "min": 25, "name": "r3Fw0AeJSDUguIXI"}, {"max": 80, "min": 45, "name": "lHpQ1aluBKeCATLZ"}], [{"max": 20, "min": 85, "name": "032oWB8ykZeZ3qfp"}, {"max": 41, "min": 76, "name": "8zff1KsjjPxNtbx6"}, {"max": 6, "min": 89, "name": "YBhapv8ekOw08gH3"}], [{"max": 52, "min": 99, "name": "aTuwl9me0NqKDRpY"}, {"max": 66, "min": 83, "name": "8bY3IQDqPIyCYALj"}, {"max": 70, "min": 52, "name": "EVopwMKh26dRHiUR"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 54}, "duration": 53, "max_number": 46, "min_number": 100, "player_max_number": 38, "player_min_number": 88}], "name": "3SQfzZzFzqNC4rKB"}, "8klk2AHwwxBPKRu7": {"alliance": {"combination": {"alliances": [[{"max": 55, "min": 77, "name": "iRkEOqutjR9QoLq0"}, {"max": 94, "min": 38, "name": "GSbkgMNfuoFIawbd"}, {"max": 52, "min": 3, "name": "UO9tWXWyz9Pg4sNb"}], [{"max": 38, "min": 22, "name": "g9F04j257eh92WDB"}, {"max": 82, "min": 85, "name": "NHCzFZsOUU37QvrU"}, {"max": 27, "min": 74, "name": "YPxAZV5Ss9pvmVx3"}], [{"max": 82, "min": 49, "name": "2jTfZe8d8cGDr85V"}, {"max": 16, "min": 53, "name": "YMEaspHpdZNIHOTF"}, {"max": 47, "min": 55, "name": "z8rZLV9b9GiyULJ4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 10}, "max_number": 44, "min_number": 99, "player_max_number": 40, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 13, "min": 54, "name": "Not4bcke8OtXxhNh"}, {"max": 41, "min": 44, "name": "i87LxaGbFNTooeNx"}, {"max": 77, "min": 19, "name": "O4gOxp0o6cCiCppT"}], [{"max": 25, "min": 90, "name": "WC7X8vuZMxS6nQjc"}, {"max": 86, "min": 94, "name": "Hc7snw17X0dF3EEa"}, {"max": 14, "min": 64, "name": "MvCzEdiysFcm4gGG"}], [{"max": 33, "min": 74, "name": "S9a0MJcsGLBVrwI1"}, {"max": 27, "min": 59, "name": "zx68lnZASuMptkPN"}, {"max": 86, "min": 55, "name": "4XutVuoGL0x5p2Yn"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 30}, "duration": 94, "max_number": 4, "min_number": 15, "player_max_number": 19, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 67, "min": 54, "name": "chLB8x2a9mdGrMuc"}, {"max": 52, "min": 68, "name": "JG2lHFhYC6If6FYH"}, {"max": 9, "min": 57, "name": "eyDnQ2zhqWvE4RE2"}], [{"max": 47, "min": 26, "name": "5UrHqQK0o7G6jlzj"}, {"max": 43, "min": 98, "name": "NnlQmX6N6CUAufuR"}, {"max": 26, "min": 72, "name": "TGK9oGTaRswrW9Bl"}], [{"max": 26, "min": 37, "name": "H5iKdQpG8mVrKZjF"}, {"max": 96, "min": 80, "name": "1cpdyg1n5irSJPoo"}, {"max": 84, "min": 28, "name": "GqfeqByrFlZplkNY"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 21}, "duration": 24, "max_number": 99, "min_number": 12, "player_max_number": 34, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 84, "min": 52, "name": "eVYtATx7JXTbBhwe"}, {"max": 21, "min": 100, "name": "p88ynYQDlKRO5bcB"}, {"max": 59, "min": 99, "name": "RCNQDCU6zOFczy9x"}], [{"max": 89, "min": 93, "name": "QbgRQ2tMHJqUkaVy"}, {"max": 45, "min": 60, "name": "vxsYILVLPpfsMrv5"}, {"max": 13, "min": 100, "name": "iLhfQv99Y3AoLrOH"}], [{"max": 59, "min": 81, "name": "dirk37pqjTz3Zqo7"}, {"max": 16, "min": 67, "name": "EauLHHFRJdsD1k3r"}, {"max": 63, "min": 1, "name": "3fByodqKpAgc9ZbP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 21}, "duration": 32, "max_number": 22, "min_number": 33, "player_max_number": 66, "player_min_number": 75}], "name": "kT2NgR8Xma0DZnBE"}}, "ticket_flexing_selection": "PeKI8vICG2fDDy2a", "ticket_flexing_selections": [{"selection": "djQKRKnQwDCdVWOn", "threshold": 4}, {"selection": "0Q3Sn3SuAfV7PNbg", "threshold": 96}, {"selection": "PVlaZwWEUQgOYCI6", "threshold": 58}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 5, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'oTCgf0xE8Lu60qOd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '98ms5xaSYMIvJS8k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "WVqbGJVyagzkhjOi", "players": [{"results": [{"attribute": "Urw9B7AWz7g826HZ", "value": 0.013025548946989707}, {"attribute": "IV49P3XUslzPuqxM", "value": 0.3548109544051694}, {"attribute": "U6GdBcFISrV3X8zO", "value": 0.5032464803132216}], "user_id": "3qwiUA5CUvF4i9az"}, {"results": [{"attribute": "o5KQEJfNysry9rOf", "value": 0.7089162419095686}, {"attribute": "i2xrTGrQinf7KhdN", "value": 0.5855259088677208}, {"attribute": "EwVRMEDAQ9uxwFau", "value": 0.16151096451421854}], "user_id": "W00pjgqT3ATJKCxq"}, {"results": [{"attribute": "eXBeETvFh0Uo8bZt", "value": 0.177743791661649}, {"attribute": "EXmUijJYtyeKItcz", "value": 0.8156985808678958}, {"attribute": "YUbuFkl7VIobjGnM", "value": 0.5678402028827036}], "user_id": "oW5lcwcZZe4viBqp"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5BERhnEJzcpiEGdQ"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "XofDZ0hX8UWP8FVK", "client_version": "6hfsCNuhF1NPtLvN", "deployment": "ey47pmrMN27qXLXf", "error_code": 21, "error_message": "4s5GnaBdZeSD5G5P", "game_mode": "6Stn38HXJ7Ik0pJP", "is_mock": "zSdZcf5j6gEn9ev9", "joinable": false, "match_id": "enM0nGeZecUcgv9n", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"BmTiTv0d8fhWjg7l": {}, "IZ7fvVnSLbyXx8Om": {}, "wJVRdPaunWS6bYyd": {}}, "party_id": "7OsqJAmmWwGt9Jv1", "party_members": [{"extra_attributes": {"pfcO4h1Zf2RpvVsg": {}, "55gEP4F6Dk8FjGTf": {}, "F5lqNUbPk6wN3GpM": {}}, "user_id": "ujKTdf0dSfATY9ev"}, {"extra_attributes": {"noib1ZSgTMKmxz81": {}, "SzKVvqW6uByqTsK1": {}, "k3Ck2Kx0UrHGc138": {}}, "user_id": "DsopyHgSOTQ8WAxf"}, {"extra_attributes": {"83ap8gMd4cE1oggp": {}, "4qe23SFBgQkyCfpc": {}, "dtG4pI7kWuI7ZPZh": {}}, "user_id": "J7GlpBn9XJtPPKRQ"}], "ticket_created_at": 18, "ticket_id": "w8MOoODXJWTn4dPO"}, {"first_ticket_created_at": 96, "party_attributes": {"PmDl1ukLG0OBScFd": {}, "bDyY0QJGSQEWupzH": {}, "4KUypATnUa0Qrr81": {}}, "party_id": "ItuRSJeKikA57FmE", "party_members": [{"extra_attributes": {"CLXWRnDpqsiCi5TP": {}, "XhNmYKT61uKcI5Fh": {}, "XnWaZLojAAR9lZjr": {}}, "user_id": "gpvUqPNCvEF14aAo"}, {"extra_attributes": {"ptsRYIW17cUA6JTC": {}, "aq4wULX5FbCLjYCh": {}, "MTOjS1TREuRhW3qH": {}}, "user_id": "0k2964jJTa52bxb3"}, {"extra_attributes": {"DtlSToa8UcBK9Q8Z": {}, "tKWTd2bWc8p8rPSk": {}, "4vOApFedeZcHrP9h": {}}, "user_id": "jEbzcGTLi5LPYNrl"}], "ticket_created_at": 64, "ticket_id": "vBw6W65NHnEBMPHK"}, {"first_ticket_created_at": 23, "party_attributes": {"8GvBV6deQrRR0BVp": {}, "83OkGridLATZJ8VA": {}, "mW9P0X1OyMHZ4BFD": {}}, "party_id": "GbRDJfOCPn4zrhDD", "party_members": [{"extra_attributes": {"QiEg10Qm4Y3auAnz": {}, "yxuqpud0WFNRjZHr": {}, "YFmQlxCItxwWEUEX": {}}, "user_id": "7twMQofDcMH66pJB"}, {"extra_attributes": {"pam42liiU1mStHKg": {}, "OOS8WMzNYenMPr4i": {}, "JgGJetNrNR5giwah": {}}, "user_id": "KzzGw84w1UXiscaR"}, {"extra_attributes": {"4Rl8t764PwpbSWF2": {}, "QrYTlPH8i9s6rf0e": {}, "Z5lWrcioGMwazpQq": {}}, "user_id": "FFgNbqyw9dT67dH0"}], "ticket_created_at": 54, "ticket_id": "4xByim9754mboOPf"}]}, {"matching_parties": [{"first_ticket_created_at": 46, "party_attributes": {"k9NkTVOUNOj5fCve": {}, "POfMM9lG7dbzHjtQ": {}, "9tHG3vbpr44ZRD9h": {}}, "party_id": "fQCjQXdgz83qN1Kw", "party_members": [{"extra_attributes": {"oFFhAfpwLFTalyOm": {}, "bs6Srmk1gcGXMUtw": {}, "UvdflzHAfcqJGOqr": {}}, "user_id": "ESxsKmaEtvMgdMoI"}, {"extra_attributes": {"gTfirwI4D6s67Thp": {}, "YAQDxiavBtOD4a1p": {}, "fXXjeyROG8AzbF6A": {}}, "user_id": "DdFuyccGTU7bcNNI"}, {"extra_attributes": {"vhNEOjDw1Yp7ne7A": {}, "OXxr4qsWtAkGpLVT": {}, "hftYTgA9KmhFdXco": {}}, "user_id": "6qkzpkJi9lIijD8G"}], "ticket_created_at": 97, "ticket_id": "dOUw4UEumsdzRGdM"}, {"first_ticket_created_at": 10, "party_attributes": {"h495EUjmAtLWEvsX": {}, "LJD4X3mNhNdzScM6": {}, "XWlBGjTcCpzj9yR7": {}}, "party_id": "fk37DJ2qzYWfUCqM", "party_members": [{"extra_attributes": {"WddDZjWDV3pjEeWq": {}, "oktldl7mZKReDutU": {}, "lbWGCtvzU6KFSu32": {}}, "user_id": "bW2Yp7sJsMAAbLDb"}, {"extra_attributes": {"7Xb31lKNWUM9sxF6": {}, "9xR3q7DYMPfPCDmM": {}, "77e7JBalmeFa56H1": {}}, "user_id": "PbFiyXxLlz1UlrkL"}, {"extra_attributes": {"UWmwOn6eW8XpzeDN": {}, "sXiu0GhLZHczq5YV": {}, "T71287CAQYiLFcfN": {}}, "user_id": "n0fRGZyRXwXxo9H2"}], "ticket_created_at": 56, "ticket_id": "X2X2mne3LNHkUCQx"}, {"first_ticket_created_at": 91, "party_attributes": {"56K96Xnj2V1sZ8vt": {}, "O59jaGsM8pGdQYnU": {}, "VUXFWZtxnzyaA7uT": {}}, "party_id": "emPQCJHtpQjfgTaw", "party_members": [{"extra_attributes": {"sQiKS4Yih9F6E9K9": {}, "XOHVLLxULBBSmv4m": {}, "eGpnbbdQckRrGMIO": {}}, "user_id": "fJ5xLogvQ2f7D5AO"}, {"extra_attributes": {"8JJhrOnrEIynTmrc": {}, "59s5pbZjwiSCVWmD": {}, "Z1V5k7Zg96kdhiQZ": {}}, "user_id": "IFDtkqNvg7JHAZto"}, {"extra_attributes": {"ofnWKDyq3CpKRZ3f": {}, "gfiQbcj6mgvRLgBX": {}, "KW4FKDq3xlApMpOR": {}}, "user_id": "MBBVbqRBD28nIqoX"}], "ticket_created_at": 78, "ticket_id": "5xDrvMAmD0tDHZiQ"}]}, {"matching_parties": [{"first_ticket_created_at": 33, "party_attributes": {"t0l9dnMREpf26r4g": {}, "NBs1EDnOSrPLdCHt": {}, "E6dT3rnmya0r6V20": {}}, "party_id": "kG37S15DwbaXhVTG", "party_members": [{"extra_attributes": {"c7KjY3DRfHRT70eY": {}, "DK5fK5wWCfP2XMBZ": {}, "aKMRvDdq0V568V88": {}}, "user_id": "5lND2IPZbdYVWTzW"}, {"extra_attributes": {"wZJO90hA1PSkYnv4": {}, "ntjuw4wE9XihFEIk": {}, "zjFDc8KOgEkDwYhd": {}}, "user_id": "61Gm8p1lGyI4pI9k"}, {"extra_attributes": {"W5eLNceiZVurS52V": {}, "YS7HyC7VN7JlUXyh": {}, "C6UIvUWW1v2IdJMe": {}}, "user_id": "GYDRUa9PDIv6hr4g"}], "ticket_created_at": 82, "ticket_id": "UmSqBxVfJ03xNjuF"}, {"first_ticket_created_at": 5, "party_attributes": {"Y32blNwYYACCjXbp": {}, "IPreaitxL3EypDsw": {}, "W1Q5Y4hnD3adpRei": {}}, "party_id": "Jgz0fp8XN1DVfTi5", "party_members": [{"extra_attributes": {"FYvjAdP3Bh5Ii9Y8": {}, "KrAxafDjqKj2iPeg": {}, "KJ6IdCQaLarMKt9W": {}}, "user_id": "XAHPaODVhCLjLNw3"}, {"extra_attributes": {"8XqPBHmbpz0Ssyyn": {}, "fmLrDlnvve5QvlGV": {}, "sE81aN8GZ75nuTFq": {}}, "user_id": "a6OWCtS81xvFGOPP"}, {"extra_attributes": {"td9cLRlUnORAZ35i": {}, "6BEdZEd79ZJddHDv": {}, "fhJOj616pzbrnPwk": {}}, "user_id": "iWuJu6en2d0aDouJ"}], "ticket_created_at": 77, "ticket_id": "PlObu9BkjigiuwcB"}, {"first_ticket_created_at": 42, "party_attributes": {"MbGrifIFodzzfPJ6": {}, "H2VkyaCDuaxH4PrZ": {}, "VRdOdZ2rUBim9VHL": {}}, "party_id": "h6Mtni1tA0cIB6AG", "party_members": [{"extra_attributes": {"pTcCLnNISLHJQVt0": {}, "jBSZywyj4HEn6ZB4": {}, "Fp0Lhu1UJVXHEmFJ": {}}, "user_id": "KhukW3Jwdn3dcilu"}, {"extra_attributes": {"qJLomylXsHo2lOwo": {}, "RFkqYPzFgBlepf28": {}, "QD3pCA1VQTsx6T2M": {}}, "user_id": "LyAHMrpDp0EbJ00u"}, {"extra_attributes": {"jeCjNPsnQdr4H6Ee": {}, "6P7qUPJ7mNnmw7I8": {}, "MzrC8P7U6RCn3psu": {}}, "user_id": "tnV7DiF8zv3oiCqj"}], "ticket_created_at": 80, "ticket_id": "sLuapWzUT26YhM08"}]}], "namespace": "Pp6TDDu8z1BhDzNO", "party_attributes": {"Tcl1e7ASvPrVtPqj": {}, "1DAmlgFp8EKOx8fJ": {}, "mAqwP36PlFGynoRS": {}}, "party_id": "yuN8DXoR0KNEyoLj", "queued_at": 18, "region": "hqhniSnF0K9Q2j6z", "server_name": "RPTc2pkSFMtWAEOC", "status": "7EAoVWkfEIyphceq", "ticket_id": "UkOlNh7zOX9uCqSS", "ticket_ids": ["eSkgMRCZ19zfG50S", "0C1qQYfmpBhRRdue", "bqeqL8K7hfzMFvxK"], "updated_at": "1990-08-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "tXZYmvjD0jpQ1xhT"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '3ISmD3a3YHomLOn7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 14, "userID": "xIcmmbHaSurojJwo", "weight": 0.030663315983574635}' \
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
    --matchIDs 'NFUdArAq3liCv5OP' \
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
    --strategy '6YY49atJjjVupk6U' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'qkxoRKplYYMlis62' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'HqB00yDpQOHQYxLQ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "Yzcf7SkKcPhRxjIo", "description": "CCVGUUqn0LBsv7rQ", "findMatchTimeoutSeconds": 55, "joinable": true, "max_delay_ms": 84, "region_expansion_range_ms": 65, "region_expansion_rate_ms": 10, "region_latency_initial_range_ms": 31, "region_latency_max_ms": 40, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 12, "min": 72, "name": "yFCYlUsPpg6asM8Q"}, {"max": 83, "min": 65, "name": "Wb7QD6VwvqmnZMyZ"}, {"max": 33, "min": 46, "name": "pXRHVlHV32g45w85"}], [{"max": 64, "min": 38, "name": "I88T9GUjyWTkRYbd"}, {"max": 74, "min": 91, "name": "p8vcrK5iAYmTjIbk"}, {"max": 85, "min": 5, "name": "WOd088HfUp7DqVZ3"}], [{"max": 43, "min": 97, "name": "bN23nef0KlmyyJ2h"}, {"max": 51, "min": 95, "name": "avwI6b5P3o3z7yVQ"}, {"max": 21, "min": 90, "name": "p3KVbv0DKCcqpCWD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 52}, "maxNumber": 15, "minNumber": 31, "playerMaxNumber": 62, "playerMinNumber": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 91, "min": 83, "name": "vGL8CcSY72xp7BGR"}, {"max": 77, "min": 50, "name": "cH1SjsipKVhgWXkI"}, {"max": 87, "min": 69, "name": "84o0TeiXijM3SXpT"}], [{"max": 79, "min": 45, "name": "9EHBWKiOYrAnbqoW"}, {"max": 33, "min": 21, "name": "SvaCFMPp5Mhq7mrt"}, {"max": 96, "min": 97, "name": "WffRE8mErUT6wFkE"}], [{"max": 73, "min": 22, "name": "D94ONXaMRPftAqEp"}, {"max": 1, "min": 87, "name": "B6RuoDdRI9lXJfKf"}, {"max": 2, "min": 20, "name": "0hRETeky9PSrUcKm"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 39}, "duration": 45, "max_number": 33, "min_number": 68, "player_max_number": 41, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 98, "min": 59, "name": "qU4k4V3SJ2DvVm2d"}, {"max": 77, "min": 10, "name": "C114rXyxc4g5qwVA"}, {"max": 50, "min": 68, "name": "CBB5ieUcBcEyKxpk"}], [{"max": 34, "min": 44, "name": "ZGOY75itfaUieOoy"}, {"max": 13, "min": 32, "name": "moYz9agd6NYqk5gV"}, {"max": 5, "min": 39, "name": "gYkg270Ww6ULZbRL"}], [{"max": 64, "min": 1, "name": "HF9MeirbQwSIEkSN"}, {"max": 29, "min": 73, "name": "M5KgxY3m2NNNdMio"}, {"max": 91, "min": 84, "name": "qykwJzbdvwpdgt9O"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 74}, "duration": 55, "max_number": 98, "min_number": 17, "player_max_number": 80, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 48, "min": 49, "name": "WXOBx4hiGioC6nLc"}, {"max": 47, "min": 72, "name": "UFTUnGHGWRpqgzI1"}, {"max": 22, "min": 11, "name": "SvKdLOTlztYReuyi"}], [{"max": 40, "min": 24, "name": "2dxvcha8BxO9keLa"}, {"max": 31, "min": 98, "name": "ptQQ3G358Lul7SCt"}, {"max": 32, "min": 47, "name": "YUms26vwaFtRd052"}], [{"max": 1, "min": 71, "name": "vD42kQdLJe13XOCF"}, {"max": 22, "min": 90, "name": "FG5rbFzc5xjzNZsU"}, {"max": 82, "min": 7, "name": "UNQo8bAsczMkQ6Gl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 35}, "duration": 54, "max_number": 75, "min_number": 3, "player_max_number": 31, "player_min_number": 47}], "batch_size": 19, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 35, "flex_flat_step_range": 69, "flex_immunity_count": 39, "flex_range_max": 7, "flex_rate_ms": 42, "flex_step_max": 37, "force_authority_match": true, "initial_step_range": 70, "mmr_max": 31, "mmr_mean": 2, "mmr_min": 12, "mmr_std_dev": 65, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "CxlpreTGkdvxwu5i", "criteria": "Y4bYtpPyyGHZQzkQ", "duration": 95, "reference": 0.37978668016006745}, {"attribute": "CzWevgxw6gps9jrw", "criteria": "j4n92x0U4IAcTRP6", "duration": 58, "reference": 0.5566736218990379}, {"attribute": "sUGn85vS8KccZOBi", "criteria": "qHX5OSbNM40NqvrL", "duration": 49, "reference": 0.9627444667041581}], "match_options": {"options": [{"name": "i9fGDaxqMpIAAKz8", "type": "y9waJg18NV0jHO53"}, {"name": "xQwQ6uvZUk8MQbDs", "type": "EpKP3y1qxujYhyBx"}, {"name": "74fVx4xD6SPLcmgW", "type": "YNJPeyoKVmpajlIT"}]}, "matchingRules": [{"attribute": "2Gpgke1tKF9eSZss", "criteria": "NrSKoQzDnaxSdFng", "reference": 0.9946823971204817}, {"attribute": "JSYWU91v3roXBW2u", "criteria": "gQoKkVIecm6XUyN5", "reference": 0.5774950875674172}, {"attribute": "bhEYDIqzM9V1VuPP", "criteria": "WqsJJInpisrQ6HTZ", "reference": 0.6340288948606052}], "sort_ticket": {"search_result": "TTAcgEd6xFlCrKMS", "ticket_queue": "Spy2dxTMCVZcF4bo"}, "sort_tickets": [{"search_result": "oHUT0IpbkrHvoSUD", "threshold": 59, "ticket_queue": "ti8Ph55MyKOwaEMq"}, {"search_result": "rfYfpmyaPvuqHSGy", "threshold": 28, "ticket_queue": "OMnqaJiDaTCn4em4"}, {"search_result": "8qvBR9LYEQnjjS4d", "threshold": 34, "ticket_queue": "k91HFDCDbe7qNfFb"}], "sub_game_modes": {}, "ticket_flexing_selection": "8M8MPGqfIZS51cQz", "ticket_flexing_selections": [{"selection": "jML9Bmlt12ldqRJT", "threshold": 49}, {"selection": "ZxBQND2fjdohBukI", "threshold": 90}, {"selection": "UDaNnG2efYwL5SpS", "threshold": 29}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 5, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'xPFip01AzkdByfrM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '0Sj6c7EQtRJonIMO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'aQjcpM5DLR7bQSkh' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 58}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'bFtepYNiydbM3KAb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'PRGQ3bCxVb0tZSPS' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "c9LmSI7VJlmCRKbx", "count": 6, "mmrMax": 0.656724298648883, "mmrMean": 0.4386159474300487, "mmrMin": 0.30037981707188777, "mmrStdDev": 0.2892290982102669}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'oqR3q9Sn6LwLTrQJ' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 66, "party_attributes": {"z3VQcQGi7Weh4vGJ": {}, "AcThgilXiCz5S4pu": {}, "mr01EwaGNUERvZ0R": {}}, "party_id": "CvHoGdh6t9hC28EH", "party_members": [{"extra_attributes": {"KSVCe69u3GJHMGV5": {}, "Iec4i1nUBM98tkqt": {}, "6JFKYl0HBULwZFI7": {}}, "user_id": "6BJzjQ03MIYdy6fX"}, {"extra_attributes": {"KvDwj0zQ8YkE0qgX": {}, "KlAPy5OdnMShhBuo": {}, "4u4vpBMjL9lAf3Z3": {}}, "user_id": "mUDlJzb2aWlF6xvW"}, {"extra_attributes": {"u2M5I8ew5hcfImOj": {}, "zisiXu4etg7HsQl8": {}, "JPj3KYsZIxihQdSA": {}}, "user_id": "3XhBeWOEsS6Ssg1h"}], "ticket_created_at": 77, "ticket_id": "i9zDCKCnn7miXAvs"}, {"first_ticket_created_at": 14, "party_attributes": {"urFEdrnOPYwEsZdb": {}, "4H4XCDiewyd59oXa": {}, "sXFrpEaZjREUVco5": {}}, "party_id": "PYFo8n3YLojPnFaY", "party_members": [{"extra_attributes": {"ushQB8EA9volKcMp": {}, "Ig7QgeuBQma0tVPE": {}, "p5Us7zsI71WrKsDZ": {}}, "user_id": "2vDJDbBUbCFYzMiX"}, {"extra_attributes": {"InDgG3zP3dYPf0oL": {}, "uwsEPmuOtu02UDDQ": {}, "u4RDnn5QZUeRCxkk": {}}, "user_id": "mv0yFQla4IDFMgU6"}, {"extra_attributes": {"YE4fRBCbGchP2bKJ": {}, "JZwzadszhLgYljSm": {}, "8M06Gb577vdvOHGv": {}}, "user_id": "NCt6MpVKkOsQKtuV"}], "ticket_created_at": 91, "ticket_id": "VpT11TyOFH3sAaZy"}, {"first_ticket_created_at": 65, "party_attributes": {"ICSZcqOqH4bDylro": {}, "ARvDQhuhiMbbCJZ4": {}, "zBu5qJ4py4EClZvw": {}}, "party_id": "N10Oliutsg5UqVWP", "party_members": [{"extra_attributes": {"qsAhyYESup75CgDb": {}, "g6qcfww5dPacanSj": {}, "peiXb62S6HDxdrAq": {}}, "user_id": "9irt4eEPYmDrjAb1"}, {"extra_attributes": {"1gJmZGBgEvxs8tfF": {}, "tIbhQ656Kj674RNF": {}, "0pfsUG140snPs6hh": {}}, "user_id": "w8Zr2mSvi6Jvpe1z"}, {"extra_attributes": {"RYDEKcogxTtmKr8N": {}, "FYUGMqTF9m1Ds4wX": {}, "jQZRugbenCQTBLTG": {}}, "user_id": "ndO21YeCQ5nqU4Wn"}], "ticket_created_at": 7, "ticket_id": "JSC0gEIUzrmGUQ11"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'EV6OO9eq7aQTWSAs' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 68}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'dav1PD9nP6xRdT3T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'sk27Ht2FqHeehaVD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'ZX58wt6HZLbWsQrs' \
    --matchID 'UEqUUwgMT9a2rDxL' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["FArndnvYYFcX6Uph", "ukw8GAJPnoQffOsW", "5h4JYdwy3JapJWh0"], "party_id": "5BtvJKa1UKVHibVY", "user_id": "XN1FkAhc82AA1YVH"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '4yQ9i1EzyFvWBDNf' \
    --matchID 'sm5PBVPXBH8ktd9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'rvjwVu0cughZlyw0' \
    --matchID 'ILMoBbWHc3NLDFZw' \
    --namespace $AB_NAMESPACE \
    --userID 'TPcJW46qXd1Te1UK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'EOEqMY4BXg1PEATl' \
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
    --channelName 'sgsrsEFjHIEdg6St' \
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