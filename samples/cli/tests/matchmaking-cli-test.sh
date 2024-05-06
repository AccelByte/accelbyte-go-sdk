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
    --limit '21' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "prGUnz5OdWX3WEeO", "description": "28Ob0vXg7LCTSKid", "find_match_timeout_seconds": 5, "game_mode": "PhOqdlCI1QJm0xLZ", "joinable": true, "max_delay_ms": 31, "region_expansion_range_ms": 28, "region_expansion_rate_ms": 83, "region_latency_initial_range_ms": 72, "region_latency_max_ms": 16, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 57, "min": 14, "name": "Y68Y24Q5LQ8Sv5wq"}, {"max": 79, "min": 34, "name": "Jy1EsBtKRZFctNNC"}, {"max": 70, "min": 57, "name": "rKXcXTTTqHAhmLUN"}], [{"max": 44, "min": 31, "name": "fUcseQC0miPmilZp"}, {"max": 59, "min": 95, "name": "x4oi7sESgbvjn3jE"}, {"max": 87, "min": 7, "name": "yoSxhFJndU4Q3Ga2"}], [{"max": 37, "min": 35, "name": "m26kKbkFDRhuOuza"}, {"max": 97, "min": 3, "name": "LFPgPHUOt7mxogCz"}, {"max": 32, "min": 97, "name": "ALKlEEPB5uanQXIX"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 71}, "max_number": 5, "min_number": 97, "player_max_number": 50, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 50, "min": 9, "name": "wDSlfRoyZG5Qv4jD"}, {"max": 81, "min": 5, "name": "bFhxbdzMZyQyiKnN"}, {"max": 58, "min": 87, "name": "RX7W5DUDWfSFywMC"}], [{"max": 32, "min": 96, "name": "IMLWAS3Xc2gCdj5P"}, {"max": 23, "min": 83, "name": "cOLGHjlO9905qlIH"}, {"max": 30, "min": 4, "name": "rRqYdo8VkWOAR3jy"}], [{"max": 50, "min": 79, "name": "li2tSYvvVpsUGxAN"}, {"max": 8, "min": 3, "name": "ZhCy0VSDvABNMpTg"}, {"max": 39, "min": 56, "name": "gp141GdFz5f6XZkw"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 47}, "duration": 98, "max_number": 38, "min_number": 93, "player_max_number": 45, "player_min_number": 23}, {"combination": {"alliances": [[{"max": 96, "min": 98, "name": "CD2TnZVZPOBCdg7A"}, {"max": 52, "min": 36, "name": "UBC0vV8FEZeH7wPF"}, {"max": 14, "min": 49, "name": "RjT2CpTsGw7OboB5"}], [{"max": 77, "min": 80, "name": "DmOs88vyfAxV6Cm5"}, {"max": 24, "min": 69, "name": "hFFtbZDJFV1YYLln"}, {"max": 67, "min": 1, "name": "03atYaRGcbyutd0M"}], [{"max": 45, "min": 38, "name": "T5B2IZXgYQ1KxY8k"}, {"max": 14, "min": 96, "name": "39qlbPHpatk3yCo0"}, {"max": 67, "min": 81, "name": "gLuGPQEdlVC8OYFD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 32}, "duration": 28, "max_number": 95, "min_number": 13, "player_max_number": 62, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 51, "min": 28, "name": "QSxqeqt1scIu43Aa"}, {"max": 86, "min": 30, "name": "gOVeIxgGOV7t2Zbt"}, {"max": 86, "min": 56, "name": "etloCcvUS93knN0p"}], [{"max": 84, "min": 74, "name": "rpCEiODLty6FyChR"}, {"max": 50, "min": 21, "name": "u6bCGFzOtS8ni9QQ"}, {"max": 60, "min": 66, "name": "jExJ3Rrvyv0uwDle"}], [{"max": 53, "min": 62, "name": "57DApemefKEPCWaB"}, {"max": 92, "min": 52, "name": "ncvTNj3bSclzYnxZ"}, {"max": 89, "min": 95, "name": "jzlU7S6XUJ6mAOzW"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 41}, "duration": 75, "max_number": 46, "min_number": 31, "player_max_number": 35, "player_min_number": 20}], "batch_size": 52, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 47, "flex_flat_step_range": 37, "flex_immunity_count": 0, "flex_range_max": 76, "flex_rate_ms": 35, "flex_step_max": 54, "force_authority_match": true, "initial_step_range": 18, "mmr_max": 82, "mmr_mean": 26, "mmr_min": 62, "mmr_std_dev": 94, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "WLJEkBUxOm4J1NCj", "criteria": "txpC5ohy2ddCTywl", "duration": 12, "reference": 0.4028207589377807}, {"attribute": "du938w8SnMETV7cz", "criteria": "pph2Xjzty84nC2UE", "duration": 58, "reference": 0.6146771574983251}, {"attribute": "4o4QV5fWAdgoodRT", "criteria": "lfvNTFsRJ1ZBW6br", "duration": 49, "reference": 0.49454299967294146}], "match_options": {"options": [{"name": "zmo1Xpt9jC4sXtGS", "type": "Td5ivyJnnmuEYFGX"}, {"name": "1j3OuRfQgTFPzckq", "type": "ewll0JPbYgaLgc50"}, {"name": "3k6AbLpLJNikC0Eh", "type": "RpjcVdnUW2FOivke"}]}, "matching_rule": [{"attribute": "eyfV5D4bG4FHcDN0", "criteria": "soe7CRTtBgwrh4UZ", "reference": 0.8945534526671284}, {"attribute": "W0Ka80i0hp9l8PtM", "criteria": "6oLx0er9gs4QM0kZ", "reference": 0.1280409979847994}, {"attribute": "loXSwjhgYjjBR8JI", "criteria": "kHeuQITqPcNPPWYt", "reference": 0.48570521236702113}], "rebalance_enable": false, "sort_ticket": {"search_result": "tnD03E3idvJsQO9H", "ticket_queue": "81Skl9ugaa1LwVWT"}, "sort_tickets": [{"search_result": "s16EV7Ca6557mX6M", "threshold": 66, "ticket_queue": "MZNZXCASQ3QCMN6J"}, {"search_result": "233S7UU2pUOPt6O3", "threshold": 19, "ticket_queue": "QsfK37208VnmpmGw"}, {"search_result": "ZBZqMrobEGyCtNBM", "threshold": 52, "ticket_queue": "kmFCdcmVcGgRHMG0"}], "sub_game_modes": {"aCa632joUG7gwrID": {"alliance": {"combination": {"alliances": [[{"max": 16, "min": 27, "name": "eO4PM0s33QNnT13T"}, {"max": 36, "min": 88, "name": "Tjexnq0AabTtcAYY"}, {"max": 84, "min": 85, "name": "66HqHwusSK4dZtSH"}], [{"max": 79, "min": 16, "name": "c3RedQIFP53purH6"}, {"max": 20, "min": 13, "name": "5J10xQpHzvh8a9qY"}, {"max": 59, "min": 44, "name": "h3QgCtnNmlGoPqfE"}], [{"max": 23, "min": 39, "name": "dv4Xg21DRe8yokri"}, {"max": 81, "min": 94, "name": "tzWU12KB7d1MhFzM"}, {"max": 6, "min": 42, "name": "EHjofoGDw49ogXUC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 24}, "max_number": 40, "min_number": 90, "player_max_number": 0, "player_min_number": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 45, "min": 46, "name": "aMXvGtMrjTF5jRoM"}, {"max": 61, "min": 17, "name": "c1batlhBvOyvClTk"}, {"max": 64, "min": 60, "name": "voyGWPR2wv7l4Wlp"}], [{"max": 84, "min": 57, "name": "PteddwVBsCyfB7Az"}, {"max": 17, "min": 41, "name": "TigENVZXgX9bEs1s"}, {"max": 37, "min": 48, "name": "BgonX1rhCEyEdxBy"}], [{"max": 28, "min": 15, "name": "FPaqNDsNPITSxZdm"}, {"max": 8, "min": 67, "name": "wJsrlRk1JnBjudns"}, {"max": 34, "min": 15, "name": "JISbHnjfnYjawxqr"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 58}, "duration": 91, "max_number": 7, "min_number": 66, "player_max_number": 82, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 82, "min": 46, "name": "MKtyZ8AZKbpZjH6m"}, {"max": 23, "min": 43, "name": "nhHJR3QqlL18l6fQ"}, {"max": 48, "min": 77, "name": "TqSwUjRwsqMiP1TL"}], [{"max": 48, "min": 53, "name": "eTNzWeWXwRAyFwVs"}, {"max": 69, "min": 59, "name": "irnHtFbjyhr73VK4"}, {"max": 44, "min": 33, "name": "8kSZlMf7ipaIGlFn"}], [{"max": 31, "min": 79, "name": "KSA1se98UDcjXHto"}, {"max": 68, "min": 74, "name": "Zx5907JEVYwNPy1h"}, {"max": 55, "min": 28, "name": "OoJmheAfBH43eO3I"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 75}, "duration": 99, "max_number": 3, "min_number": 99, "player_max_number": 100, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 3, "min": 24, "name": "8Fh7z6ID03bBxFal"}, {"max": 77, "min": 70, "name": "83RJ6KjRsvJbnXbI"}, {"max": 33, "min": 72, "name": "w0cLDNljLEH15tGz"}], [{"max": 18, "min": 72, "name": "Pc6YIkzLGzaKJbJA"}, {"max": 52, "min": 28, "name": "rUglDAh6td3q0oNT"}, {"max": 48, "min": 34, "name": "UmUw403quaJp7HAk"}], [{"max": 11, "min": 92, "name": "VrZjArEKeiy68a9L"}, {"max": 6, "min": 43, "name": "RsXErv5eTNeULn6d"}, {"max": 88, "min": 32, "name": "307czstwULbVmZq7"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 35}, "duration": 25, "max_number": 28, "min_number": 71, "player_max_number": 5, "player_min_number": 98}], "name": "OJtkAnfVWmMAfScn"}, "SI0HDHq7uyYRguEx": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 37, "name": "xFvfr11OInbWY0fF"}, {"max": 31, "min": 26, "name": "5xI1nlb8CRlvwICh"}, {"max": 38, "min": 37, "name": "PLXTIOaocsMrA405"}], [{"max": 36, "min": 15, "name": "XLMWs7AYhoR50EaT"}, {"max": 80, "min": 54, "name": "lasjouLlNuOX7zln"}, {"max": 43, "min": 60, "name": "yyZGLmj67O6m7B1O"}], [{"max": 58, "min": 30, "name": "3FW17zOVUPS8oUB8"}, {"max": 76, "min": 16, "name": "jUJak9GvtswvGVoo"}, {"max": 85, "min": 58, "name": "cFBL6eGlaOFisuzz"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 18}, "max_number": 21, "min_number": 74, "player_max_number": 1, "player_min_number": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 77, "name": "JqXWGw8fbuUJg6o3"}, {"max": 18, "min": 26, "name": "J8W80lX8CrShWmD2"}, {"max": 86, "min": 80, "name": "3aIwjHB4D0DxoOJL"}], [{"max": 82, "min": 33, "name": "WqHxqbtXokM0NK0s"}, {"max": 67, "min": 25, "name": "0ITsIHbu0hX26b71"}, {"max": 87, "min": 74, "name": "vV4cg9lbx9P2p2OM"}], [{"max": 49, "min": 89, "name": "TOBjNprcfPdmKwuP"}, {"max": 39, "min": 76, "name": "hdiG0S73DBNoJXTF"}, {"max": 1, "min": 15, "name": "bb47PuLNyMzxIlx2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 0}, "duration": 87, "max_number": 31, "min_number": 44, "player_max_number": 25, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 15, "min": 6, "name": "bChKYyskdYTunsFB"}, {"max": 24, "min": 61, "name": "m9tVQOKUmlm58Xvz"}, {"max": 21, "min": 89, "name": "UNypk9XqXDrlKDgY"}], [{"max": 39, "min": 79, "name": "AJWZW4TxKWR4kUMW"}, {"max": 18, "min": 73, "name": "plZZ687OzVnVOTEW"}, {"max": 1, "min": 66, "name": "nhPBKwkTKDty7e5u"}], [{"max": 78, "min": 32, "name": "rnwXtnF5QWP94LHO"}, {"max": 66, "min": 38, "name": "CawHsy1BsNR5z0zg"}, {"max": 85, "min": 95, "name": "QeQA38dOnplvyyZs"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 74}, "duration": 35, "max_number": 65, "min_number": 24, "player_max_number": 16, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 99, "min": 76, "name": "7pkbp9ZLqWZf0oPK"}, {"max": 67, "min": 14, "name": "PdB20ivaVzYZjjUH"}, {"max": 47, "min": 46, "name": "tfvRzkfTkVrDB6Ok"}], [{"max": 1, "min": 3, "name": "9gZQIAzOGCjvWDCd"}, {"max": 31, "min": 43, "name": "ohfs9X6y46eoUGna"}, {"max": 2, "min": 94, "name": "6GmNpW2Q3qXyYbTT"}], [{"max": 76, "min": 77, "name": "Zgl8bAL0DR3yKxiA"}, {"max": 63, "min": 53, "name": "UXifQt0uPxcIiBaw"}, {"max": 31, "min": 8, "name": "I2LsCessZLw74Bn2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 21}, "duration": 61, "max_number": 90, "min_number": 9, "player_max_number": 41, "player_min_number": 12}], "name": "QlPI3NUdabR0kE47"}, "Anj2WrkIa9KF7MHu": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 71, "name": "yd71IarZQGjW72RB"}, {"max": 58, "min": 30, "name": "jDETMyyhG68QfHNR"}, {"max": 74, "min": 65, "name": "aHSaamq1EBclm3Nd"}], [{"max": 88, "min": 47, "name": "Xt7I8NUZaSZmUFs5"}, {"max": 47, "min": 34, "name": "EBHlj07YajE0d0wb"}, {"max": 75, "min": 67, "name": "RzGTeasssGZbEfxt"}], [{"max": 74, "min": 51, "name": "8CN3OtkH9Iwa1swH"}, {"max": 63, "min": 22, "name": "Yg9pNuopOlZgeKIZ"}, {"max": 67, "min": 68, "name": "jXiu4cu3IsdOSAp9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 20}, "max_number": 54, "min_number": 39, "player_max_number": 46, "player_min_number": 27}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 21, "min": 19, "name": "lCHDE8vCcE1rDQse"}, {"max": 39, "min": 59, "name": "TXEqIHVKhh4xf7JM"}, {"max": 53, "min": 42, "name": "rYO7MpT4sMYZ38k6"}], [{"max": 86, "min": 66, "name": "Ux3YoHn5UOfoTM5y"}, {"max": 94, "min": 36, "name": "lExbJgncxrccubkB"}, {"max": 91, "min": 90, "name": "7JcEZ5TSPLYnS1Dk"}], [{"max": 64, "min": 1, "name": "VQDNUbcpefmjNRRf"}, {"max": 9, "min": 72, "name": "IdNAhoW71J1F9EPy"}, {"max": 16, "min": 94, "name": "IsCmaE6rM9Ye3ag0"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 18}, "duration": 21, "max_number": 0, "min_number": 23, "player_max_number": 42, "player_min_number": 22}, {"combination": {"alliances": [[{"max": 37, "min": 21, "name": "4vFtoTaoTVoahYOq"}, {"max": 11, "min": 45, "name": "5Yu5Soifk63sqWM0"}, {"max": 67, "min": 7, "name": "MzXDGenNhDPQEPZA"}], [{"max": 42, "min": 15, "name": "brlmaWsqqcZ1A4z5"}, {"max": 55, "min": 77, "name": "iKcopNJVPR1Lgtl8"}, {"max": 9, "min": 100, "name": "euE4EenfIkCLXYXE"}], [{"max": 23, "min": 34, "name": "lfS0cDcXq83xYpXB"}, {"max": 40, "min": 97, "name": "7q56KHzvLN1nPFRh"}, {"max": 10, "min": 47, "name": "b6JYyOdXTNnn1fiw"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 98}, "duration": 73, "max_number": 67, "min_number": 24, "player_max_number": 22, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 45, "min": 41, "name": "PR0SlRmg1hp5R2FG"}, {"max": 96, "min": 90, "name": "MHap8LGqdPsVm78R"}, {"max": 7, "min": 71, "name": "aK32eKDVoUymflKE"}], [{"max": 99, "min": 9, "name": "C5zN9O3ChIUX5Dgq"}, {"max": 97, "min": 83, "name": "5yKXlbvKqgeuPuBc"}, {"max": 8, "min": 21, "name": "VAD5w9at8GboqQll"}], [{"max": 39, "min": 33, "name": "kqeRXAQ7QQujjomq"}, {"max": 10, "min": 16, "name": "ypewv9GKGiX2FUOE"}, {"max": 69, "min": 55, "name": "BGQy2EwTHGAny5dY"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 11}, "duration": 48, "max_number": 93, "min_number": 3, "player_max_number": 22, "player_min_number": 29}], "name": "F1cwHRGRauyxMduH"}}, "ticket_flexing_selection": "F4Sl1gtDbqJZDn1q", "ticket_flexing_selections": [{"selection": "J5vvsFJEnA8m5ll2", "threshold": 14}, {"selection": "mb6HC6XFebiakrV1", "threshold": 26}, {"selection": "2yMZ8CQCVWGC3M7A", "threshold": 24}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 9, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'sqevn03HslgjgmxY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'EFzfk1n99cb6NuxX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kQjEEK7fJAe10MY0", "players": [{"results": [{"attribute": "Srx79nGIH1gBq4RA", "value": 0.5019085910808623}, {"attribute": "qngohIJpuac00cqY", "value": 0.960566301226364}, {"attribute": "CvUzMy0nbV4kvROW", "value": 0.019240822633089016}], "user_id": "Nxrloi0oy0hrUX8f"}, {"results": [{"attribute": "U46tbkWxSsuakAIZ", "value": 0.6437366553915334}, {"attribute": "sKHZw0OY6sixLhXc", "value": 0.1903022566704048}, {"attribute": "4XBWFWnGpOKZL9bE", "value": 0.7333963785765814}], "user_id": "ckJaFhwEiLWApbJD"}, {"results": [{"attribute": "ZkLbkOlDO4Tal1UM", "value": 0.3129562639078053}, {"attribute": "iUwMr6NgxCEuCr9T", "value": 0.11844842083961371}, {"attribute": "w04oEDhnFi0xmmeA", "value": 0.6397485476104268}], "user_id": "rAzbpGeRmPsmyqNf"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "h2PJBNmOeSM9rQpo"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "p28dr6tu99HFlEJ3", "client_version": "4w5vGNKGt7ZyJfdy", "deployment": "AYpMctKN0lvjXOX5", "error_code": 9, "error_message": "hizwt3zXdLUnYNVs", "game_mode": "akZfeVMwxrkhN3K1", "is_mock": "iyNkfvg6ULHPBhhU", "joinable": false, "match_id": "gnq9JwiUG3ffXjkF", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"QFeWQnyPwVfatD1f": {}, "br1kRu2KsauR3Uy2": {}, "PujQS5PkUR2fVQwZ": {}}, "party_id": "sbxRnIkJy58eO74B", "party_members": [{"extra_attributes": {"Q64iZr39DlwnfwQk": {}, "GGcwIV30uOl1Ldr7": {}, "7Ol2JWssGJua14VE": {}}, "user_id": "dsBe7gHMll20Jqhj"}, {"extra_attributes": {"406wprq6F6xDuj9e": {}, "6n70pIjsaUqwd046": {}, "QJ6DxTn9fVsHDDcL": {}}, "user_id": "7WxVlpCmPEis9ehH"}, {"extra_attributes": {"1BkWhfLTcnrA7zqE": {}, "Iz3I9ugSHpQJro18": {}, "yT1PI2llzOSwTVkZ": {}}, "user_id": "efB5be0s58MTKmX2"}], "ticket_created_at": 84, "ticket_id": "enIuZu1HVSaQ2aci"}, {"first_ticket_created_at": 14, "party_attributes": {"VzfldnwUj6NAVrIV": {}, "Ax3HVRRTHN0aPPO0": {}, "M99qtl1AHQv1om0i": {}}, "party_id": "hA9lS4YK5DjtSTUq", "party_members": [{"extra_attributes": {"DDWpNMYXEG6uJMjK": {}, "xO44Ke1KfNApTSuY": {}, "ROgPewgP7E3k2wAM": {}}, "user_id": "I4Ej9LrgH5gg14ki"}, {"extra_attributes": {"UmN11Kecx94yyCIs": {}, "iXNrRNRx1f5Ujbtq": {}, "s3ZKt6wQJo1GTnzO": {}}, "user_id": "bVVTlZDDrlArrZCM"}, {"extra_attributes": {"owYHTOTkoioM0iCY": {}, "pmgaLLs2dXDNfBsa": {}, "n2P959SdmcZvxqq3": {}}, "user_id": "lXoi1DSuqfFIF4ZY"}], "ticket_created_at": 6, "ticket_id": "Ph8tZjd5RwvDb9c5"}, {"first_ticket_created_at": 58, "party_attributes": {"uWr78QiyS7Gt4tmj": {}, "itQeDsxCxLSjcwC4": {}, "6MwpXETBTl3QY7uA": {}}, "party_id": "NSKOcrCtgfflmmgs", "party_members": [{"extra_attributes": {"TLInDwzjW0L439QJ": {}, "9txRL1BR7qBGcl6b": {}, "iUrqZiGpU9OQBQyA": {}}, "user_id": "vp638gXIXN9CvfhY"}, {"extra_attributes": {"XjfOjU5FutNKtuSI": {}, "ZBhyG85EJMV5yX84": {}, "Et5eF3eD7H9Y05sA": {}}, "user_id": "zsrMpWDmZKr1qzFc"}, {"extra_attributes": {"U4lvn6ZOem5pghl3": {}, "hZxwnIgLT7It0bLN": {}, "riFs9VNAYLVysKMI": {}}, "user_id": "fpGYEtw0ZMI42la8"}], "ticket_created_at": 34, "ticket_id": "CJ9p7YR7xJoHF6oa"}]}, {"matching_parties": [{"first_ticket_created_at": 43, "party_attributes": {"IaAyMlNIGsvTdyZ1": {}, "Zs6B97gDRGKuDtDM": {}, "YEFGSghX7eII2d3k": {}}, "party_id": "GQMzUH3zcoL0m6oy", "party_members": [{"extra_attributes": {"mq5ATeAu2vSS8VOA": {}, "YJpPXSLpUvvA3uSI": {}, "rkRhpRwjBMsAYEpY": {}}, "user_id": "Izxsl54tZ5T3GuK0"}, {"extra_attributes": {"xPxImZceFIEBr7O3": {}, "XqLqVw6mSzZ4NjcJ": {}, "dLV8TYqbCho8eLYS": {}}, "user_id": "V4kR0fTfgmgSDBxX"}, {"extra_attributes": {"oTcSPd1IzbO9pa38": {}, "KHHOtrROCTlNeC3i": {}, "4ECpp8siS4lxP06A": {}}, "user_id": "pubr8XCYoQ5LHFCh"}], "ticket_created_at": 35, "ticket_id": "qbmq2Nsa9lQ5KajE"}, {"first_ticket_created_at": 42, "party_attributes": {"yqOYTUG4ltpMDfKd": {}, "ONyo4spk30hhKNwp": {}, "4JJEXFsCzFLkzlmH": {}}, "party_id": "3DJ2hHDkIUSobbcj", "party_members": [{"extra_attributes": {"c1DUXaioSOC4g4EO": {}, "cXjpmibIwVod3qCK": {}, "AlMFYFzKKrTmbFgx": {}}, "user_id": "9pt72KcR5Zlzgdzk"}, {"extra_attributes": {"oEjkaKOOSX0euyFt": {}, "8c8coyysat3JVYDz": {}, "pm5tOfMhr2pozCev": {}}, "user_id": "yuIZH90QjsUxZwib"}, {"extra_attributes": {"CejdjxAwT1r7G9HW": {}, "z1K5TMsTPEzbCM8c": {}, "MNsKCYohaQbriEj8": {}}, "user_id": "X1JdrZIRac1PltJ9"}], "ticket_created_at": 38, "ticket_id": "N3TaEI4VmLyIe9eW"}, {"first_ticket_created_at": 54, "party_attributes": {"wlBbVGzPNabc4EdS": {}, "Ja5wVKsOq4RXEuzW": {}, "8r4n51R0J5d7jPbC": {}}, "party_id": "jpfV9vZ3efMZHVwT", "party_members": [{"extra_attributes": {"0T1NzfzD94SkBGso": {}, "CGvWs4XeMKIYtN23": {}, "jJI6eokFuaU2ltGh": {}}, "user_id": "Y6fQX67cpxROZCH9"}, {"extra_attributes": {"FAiE7GcK6FjOfCxj": {}, "b7ZgjsDrSJvDUVZe": {}, "0VfCUx3sytcseiaV": {}}, "user_id": "Z08wqGLICNqt5BHf"}, {"extra_attributes": {"yNgUbf9Z9wlnzcr6": {}, "4SEy4Y05YOFHAwPj": {}, "MoUxTbyaK4e9oksx": {}}, "user_id": "gn0cafzzJmD12Ymc"}], "ticket_created_at": 6, "ticket_id": "4Xu6EV58xKr0Smkd"}]}, {"matching_parties": [{"first_ticket_created_at": 81, "party_attributes": {"mJ0TTFvLpTZuGTEj": {}, "KvRsZxK4JZ2O1qfD": {}, "s2VsebGkA7xPQlYD": {}}, "party_id": "8ogVbEnByMhDuVAk", "party_members": [{"extra_attributes": {"PWSAdqror1EuMYzV": {}, "P7LYXyWLwpjwSrnd": {}, "KTyiygQvoNSB0nMl": {}}, "user_id": "uSaQXqxaGra2UJxC"}, {"extra_attributes": {"NDwCsRh1VrPgiWcX": {}, "UOA0ezvopzogdIp1": {}, "RouKv9MGie6ngvTC": {}}, "user_id": "OVfyGuqIgWade26W"}, {"extra_attributes": {"3SUmNuAr3HxC98p8": {}, "8LDO6MRaXKpLbJrd": {}, "U4I9szR5rNq4Y8GI": {}}, "user_id": "vRpqMOFw4EHpbwrc"}], "ticket_created_at": 8, "ticket_id": "f4PDR327HdjAubAP"}, {"first_ticket_created_at": 39, "party_attributes": {"je2gnRM1SnEdD0qt": {}, "PO9T9ZEeMHPYSPG9": {}, "05APQXGjZuKNJTWe": {}}, "party_id": "kPYAIMMCDHb6Brc1", "party_members": [{"extra_attributes": {"vMA2l41U8LhOUrfs": {}, "LarCwKuO2bmOuKWD": {}, "rPBIU3HiRFE8mLU2": {}}, "user_id": "7RUn0OjXMxZnllGu"}, {"extra_attributes": {"Q7sdxyZ1L9PaSWBe": {}, "RnStQBgZVTbfi5GT": {}, "ikwOIrOLPPTDy06z": {}}, "user_id": "fauuK4ZBRpn9oR9w"}, {"extra_attributes": {"VQFZZh2JZiDP9ke7": {}, "h2uvliCkZlLMXwhW": {}, "Z8izp3Eh8G0tvGNn": {}}, "user_id": "YxT7i0oeTSQ5ltpL"}], "ticket_created_at": 71, "ticket_id": "mMI7ayMt5GeO7IZE"}, {"first_ticket_created_at": 12, "party_attributes": {"TTLEAq1XYKXO7adZ": {}, "E6usoXfoysZPNA5b": {}, "4dSsRGv4ENeO13M2": {}}, "party_id": "YTrUmKKDF8825gk6", "party_members": [{"extra_attributes": {"6icWztsUVqhhdaaN": {}, "28aUAnN1kVcwaWlW": {}, "gs3UpvMFYBvlEAWf": {}}, "user_id": "7SUJWJXcPWPk70QF"}, {"extra_attributes": {"fPQTzxj2FiGHzMlP": {}, "ud1QTvQMeoPeoP0u": {}, "w9FK4WxpBloCgXYS": {}}, "user_id": "mLNEOkgMhl5Yc8pB"}, {"extra_attributes": {"pMiuuAExVhdj6GSf": {}, "5yVKDNoCDxpGwQf0": {}, "62vAo5tWDpiBn4G7": {}}, "user_id": "hDDeo3YWMlsJabVU"}], "ticket_created_at": 24, "ticket_id": "kNplQuXRLmwp58Za"}]}], "namespace": "6KgUnqvsRxYNboMM", "party_attributes": {"HhQdSHeSMNbZTIt5": {}, "aBY67xkMRQzY4U4Y": {}, "VaudaJSVYR2nHmYf": {}}, "party_id": "ngaQYUiFxCoTAmoU", "queued_at": 38, "region": "YAklYrKbKqOdu9Zc", "server_name": "obz7NKCZQCwFgQnc", "status": "PNDX1PlQZCgd6J8s", "ticket_id": "bdfiuvnGlezjtwYW", "ticket_ids": ["540lck7h8bnM90JO", "lCcA0Os05xsvNPJD", "vq0RsBHeByjUpLl9"], "updated_at": "1996-02-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JxxjknhBbLni5vDd"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Th5oJM1VKY13V05X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 49, "userID": "MzLoNZ4hXPu4NwN6", "weight": 0.20277731253035425}' \
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
    --matchIDs '6kXCGkeGRXiJwwUT' \
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
    --strategy 'EEeera7Vr5faAj06' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'osMDVdmReqZCIlRF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'WwOMx8Hs22s4Itrp' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "ETGlKAx2sR5hJQGZ", "description": "gKvrISEpA7GdNpT0", "findMatchTimeoutSeconds": 61, "joinable": true, "max_delay_ms": 77, "region_expansion_range_ms": 7, "region_expansion_rate_ms": 63, "region_latency_initial_range_ms": 85, "region_latency_max_ms": 50, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 19, "min": 51, "name": "eCRHKATUiRaaJN6B"}, {"max": 47, "min": 11, "name": "AE6WvHIU9Nqi09VL"}, {"max": 72, "min": 79, "name": "VSGyCpooxXad27E5"}], [{"max": 64, "min": 38, "name": "GT2so3mcsEXJxnUz"}, {"max": 82, "min": 15, "name": "O31yWP0ofDKYKLmw"}, {"max": 0, "min": 0, "name": "MpwX3XCAkEoYfEiM"}], [{"max": 27, "min": 37, "name": "BjgbfmN4DLjn2sKs"}, {"max": 69, "min": 94, "name": "A8jiygShG4xwvCYh"}, {"max": 69, "min": 17, "name": "Lr4XRJALAGmNcty8"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 38}, "maxNumber": 3, "minNumber": 65, "playerMaxNumber": 15, "playerMinNumber": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 7, "min": 83, "name": "TQ4VMMLMB4Tw2vbQ"}, {"max": 88, "min": 52, "name": "wjRf8ucGZJ7b38aK"}, {"max": 40, "min": 4, "name": "c0MzVUHP4iZqErB7"}], [{"max": 18, "min": 94, "name": "sgzova5KRFsiyPXU"}, {"max": 88, "min": 14, "name": "ENzZm5G0p4O51NFq"}, {"max": 98, "min": 17, "name": "AEMFTDL5DpLE815S"}], [{"max": 20, "min": 18, "name": "leaQCz6KN9soaboM"}, {"max": 56, "min": 100, "name": "qk6b2UHB0df2JviZ"}, {"max": 32, "min": 81, "name": "cSiB9oIlTdAKBOBN"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 28}, "duration": 22, "max_number": 81, "min_number": 97, "player_max_number": 8, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 25, "min": 44, "name": "zPVuFKW5qNDh3upR"}, {"max": 53, "min": 48, "name": "QfHZSUwrRnIGWU14"}, {"max": 10, "min": 18, "name": "jjeg1Nlh9U4jEUGp"}], [{"max": 63, "min": 42, "name": "YtJk95SbzVSnFOEG"}, {"max": 83, "min": 72, "name": "vtXzu8VG6zbTtkev"}, {"max": 73, "min": 77, "name": "QO1JqpUDVDuXEJlC"}], [{"max": 16, "min": 91, "name": "5xVsbI3D978jiYIX"}, {"max": 10, "min": 4, "name": "mfbvba0Bo1TOodLM"}, {"max": 66, "min": 28, "name": "Fx5iZYMjtnhKNHu2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 10}, "duration": 85, "max_number": 19, "min_number": 46, "player_max_number": 18, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 22, "min": 8, "name": "Y72TMfc5Mph2vb35"}, {"max": 18, "min": 40, "name": "WGrYJtwxqY3mWzIF"}, {"max": 80, "min": 65, "name": "60CaFAC6VpLhUUrx"}], [{"max": 26, "min": 1, "name": "48voOmih7QmB05ad"}, {"max": 17, "min": 43, "name": "Nkyk1kGot4MONZme"}, {"max": 88, "min": 58, "name": "5sGWCkBMkBd76z9H"}], [{"max": 42, "min": 74, "name": "CCS95R8siK1MYszl"}, {"max": 4, "min": 58, "name": "CudGJekN0qVfYpsC"}, {"max": 3, "min": 63, "name": "PQLZq1tUubYtr8Yb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 4}, "duration": 18, "max_number": 29, "min_number": 32, "player_max_number": 58, "player_min_number": 72}], "batch_size": 36, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 24, "flex_flat_step_range": 55, "flex_immunity_count": 53, "flex_range_max": 90, "flex_rate_ms": 28, "flex_step_max": 5, "force_authority_match": false, "initial_step_range": 70, "mmr_max": 60, "mmr_mean": 52, "mmr_min": 34, "mmr_std_dev": 71, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "TD4H03SZuC7TI12H", "criteria": "8PtJ4x1v2JsdhXla", "duration": 60, "reference": 0.9937712924379041}, {"attribute": "4TAl4ORoWRZC9gH5", "criteria": "S7jAN9H9PbIYoZAe", "duration": 66, "reference": 0.914508774312061}, {"attribute": "467Ztc0rAqggjmbd", "criteria": "jaXYhU5X9mGTODLz", "duration": 62, "reference": 0.8988223468009378}], "match_options": {"options": [{"name": "EvRySu02wQXiC0KJ", "type": "tDy7pl4n25vjkm5K"}, {"name": "1rzcn8FzyIozTUZT", "type": "2Pe4cmslNWGIp6tj"}, {"name": "oh2RAcdkLnFAhN7z", "type": "O1fMdyVBuRd5sMct"}]}, "matchingRules": [{"attribute": "3rVrFhC2y6xAAIZS", "criteria": "lS4kurWYQ7Qc6HA3", "reference": 0.6402120095136259}, {"attribute": "KB4XFM3WJ1izQTg5", "criteria": "5TxaVyII6cw2Nx9Z", "reference": 0.8291408433166941}, {"attribute": "ZWfEdwdF1Ijlyb9i", "criteria": "4Oc8MgLM4oxoPH2E", "reference": 0.7666973188175468}], "sort_ticket": {"search_result": "teXUwN0lbDujlfWh", "ticket_queue": "5HyW6b1eh72wslaJ"}, "sort_tickets": [{"search_result": "gW8FpzGbCJYXaC7V", "threshold": 57, "ticket_queue": "aKvhgaWwf0kngXed"}, {"search_result": "4PbAwtEYr9S08c0u", "threshold": 2, "ticket_queue": "igmKqy6n8ZKp9Pms"}, {"search_result": "NjZWvt34K5NVnePy", "threshold": 30, "ticket_queue": "5oNbtboTIgzUPYti"}], "sub_game_modes": {}, "ticket_flexing_selection": "CIwWn5NuFLztClJg", "ticket_flexing_selections": [{"selection": "G6qE8CckD3IHL72N", "threshold": 64}, {"selection": "QGZJPaH5GrNSeBXx", "threshold": 7}, {"selection": "kPIP1SvDxgiURfDx", "threshold": 92}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 0, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'K6qmbnS29scht8n2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'HUVxAH74SgbK5sDE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'EfO0R4JFxtHTnjkF' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 33}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'Vz4EUizBvLbCDUJt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'gMiMaNs0Wecmfu6e' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "iI2V4UqAYYHHn7vu", "count": 8, "mmrMax": 0.9749685972597902, "mmrMean": 0.853375471959492, "mmrMin": 0.6859503721014604, "mmrStdDev": 0.8901739395223417}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'RltI5vveFnH1Hn3W' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 42, "party_attributes": {"L55VfZAbTusFuA52": {}, "GxKXaXqSsaFD9ouM": {}, "BBfaFwRmfb8BZUFe": {}}, "party_id": "aFT7XdZCepasigOE", "party_members": [{"extra_attributes": {"6jOgofr1sSL2iJzX": {}, "JVdoMGqCfjae33zl": {}, "eJ7w41ikAracJudy": {}}, "user_id": "3enyPgk9S3NOgats"}, {"extra_attributes": {"DJczVTgh1oByAUPO": {}, "2VThKQ3HJTos4ohJ": {}, "QljsDibKlnGIhCBd": {}}, "user_id": "gLYQsxeXmrwERnX6"}, {"extra_attributes": {"Cxf6ggB592gDRW37": {}, "fLnDDlnVU55uyLfE": {}, "i63lGxv41ds4a5e7": {}}, "user_id": "mxkBLUwLCVxtQxbK"}], "ticket_created_at": 85, "ticket_id": "25EDt2xoBFdJNNli"}, {"first_ticket_created_at": 47, "party_attributes": {"BxPK4BPrV8PW5wnv": {}, "2egS9MnKumtPl3gP": {}, "n2x4AgLO1t1JsVA7": {}}, "party_id": "GWgFnAEl43j0ncvi", "party_members": [{"extra_attributes": {"5bB5nvhCaFL1DcaE": {}, "LfLBbe4y0ZvhBMuP": {}, "bh3Aag5sf3eNyg8v": {}}, "user_id": "OGWlkhuIczvbdCHz"}, {"extra_attributes": {"bSz5QSOLwmWLntPE": {}, "dibeLc8SIKr4uFeD": {}, "t6sDlvfJEV9v8JW3": {}}, "user_id": "7amg877BOSNGCyQj"}, {"extra_attributes": {"mT9SZ5fsjW3xFRM6": {}, "Qm35PRt3tOgRGdRA": {}, "ssyTBCRaJePDtehr": {}}, "user_id": "UwTKmT4sP8Q2z7vQ"}], "ticket_created_at": 56, "ticket_id": "p6PTvhoKNJXTDGmu"}, {"first_ticket_created_at": 81, "party_attributes": {"d9XCUxWF5TetahGf": {}, "qpYxTJ5Ns4Wd0uhH": {}, "lqhMMREXn58uaCDZ": {}}, "party_id": "YVATaJGKtJZUdu90", "party_members": [{"extra_attributes": {"wokzSvoFyZpaJmep": {}, "AH0dqXHL4TLYvMsf": {}, "NmQCwof4ICVJuBe9": {}}, "user_id": "7CLd8QKpVbXRtYMl"}, {"extra_attributes": {"BHvWkubpW62BK4rA": {}, "LBObrHniqo22Klcw": {}, "OJtSbXjt50AuzhAK": {}}, "user_id": "LCtI0uCeVluV59gd"}, {"extra_attributes": {"8npst2KGKb33XxBi": {}, "9jZvqumefqgLXCAK": {}, "3vQNSC71nu3HO8wp": {}}, "user_id": "r6va5PoI6dXqjVwc"}], "ticket_created_at": 35, "ticket_id": "VfEHaBagWukHO5BG"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'DNHtTq5A78bfMPKQ' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 21}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'jyODOKYYKeMQinsV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'G3zteXp8VZU53xvy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'aTLTDpz28q1OivkD' \
    --matchID 'KEAs3r7pGTyjb2No' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["mrbNmo66y2qnf1qQ", "JXirCzSEhGXibCs0", "EG4VCPSuBUsQ2KLT"], "party_id": "oiTpgZeJZeitKWlo", "user_id": "J9G9t7g5znkHdgPS"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'ae2GMZtope8x0y7E' \
    --matchID '2fVdCRkdmuO9Rkj4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '2AjqOyRpQaoh4rF2' \
    --matchID '5Dx4JNoScEk9XPIt' \
    --namespace $AB_NAMESPACE \
    --userID 'aW4DGWPgm3Lk7gVx' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '2ALXz2UUMZS0wbWC' \
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
    --channelName 'KoqvLPDgTSSXS1H2' \
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