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
    --limit '94' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "BT635JMbBXIK5sJ5", "description": "jbL4iJoKXMtpEa5D", "find_match_timeout_seconds": 22, "game_mode": "yJkSZ4iu6pvOW61d", "joinable": true, "max_delay_ms": 69, "region_expansion_range_ms": 40, "region_expansion_rate_ms": 53, "region_latency_initial_range_ms": 55, "region_latency_max_ms": 58, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 4, "name": "MKgSFJHIKipsYeC1"}, {"max": 74, "min": 34, "name": "MEa2D4aTc5x6UT0W"}, {"max": 69, "min": 8, "name": "fgMZyNTcbUDSfbJM"}], [{"max": 32, "min": 89, "name": "tkyyelOF3iRAoGXN"}, {"max": 63, "min": 83, "name": "AY3jiJPrXt2W7lcW"}, {"max": 31, "min": 60, "name": "wz9YRgudAXupXRth"}], [{"max": 73, "min": 79, "name": "Oy29Es74dWAq4qv0"}, {"max": 72, "min": 6, "name": "S1ub48fUznjgGSpH"}, {"max": 96, "min": 59, "name": "UfY3WL4I4BKPSixP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 51}, "max_number": 91, "min_number": 51, "player_max_number": 2, "player_min_number": 23}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 34, "min": 28, "name": "onX82MWM5yhI0GEG"}, {"max": 53, "min": 45, "name": "lj94meCtTRlX5yBB"}, {"max": 100, "min": 41, "name": "tNvx2xxkYpohgOST"}], [{"max": 25, "min": 5, "name": "NDEXBXPDnmIEJGrT"}, {"max": 36, "min": 48, "name": "fzdp3x8P1keYAKXu"}, {"max": 16, "min": 89, "name": "7AYJkXLNbsmcGJos"}], [{"max": 100, "min": 100, "name": "MhYSYDRifGOyvbHT"}, {"max": 89, "min": 49, "name": "0V9JBjeq6RTHgHrA"}, {"max": 7, "min": 8, "name": "ywpaJht6sNk28ZKW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 63}, "duration": 40, "max_number": 38, "min_number": 6, "player_max_number": 65, "player_min_number": 8}, {"combination": {"alliances": [[{"max": 27, "min": 31, "name": "kGC88YE6dpHg8PWH"}, {"max": 98, "min": 50, "name": "9QaZgbEDl9ZzeKlI"}, {"max": 88, "min": 43, "name": "ruwZwaQwCCZ7CFIa"}], [{"max": 90, "min": 3, "name": "Z6oju0TEeDXdt84m"}, {"max": 17, "min": 45, "name": "tIotWkHabSfM0hDZ"}, {"max": 35, "min": 9, "name": "cU4CIzG5QRS7TJ9w"}], [{"max": 87, "min": 14, "name": "qxXhMY2leXtBNLDG"}, {"max": 18, "min": 89, "name": "xC7V1GScvqBCu29Y"}, {"max": 44, "min": 6, "name": "p2gweOXl7Bzr2Om3"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 17}, "duration": 69, "max_number": 8, "min_number": 20, "player_max_number": 23, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 1, "min": 55, "name": "pGCZBRHIhclAvazd"}, {"max": 42, "min": 46, "name": "3xhA6fuxeBgivznL"}, {"max": 94, "min": 77, "name": "dYFKSba4LcLRa98E"}], [{"max": 75, "min": 37, "name": "F8mx6entoqeHNPag"}, {"max": 1, "min": 32, "name": "U3R2mSNxFiInunoO"}, {"max": 83, "min": 90, "name": "gDdXfjWsthlAvyQJ"}], [{"max": 10, "min": 83, "name": "xQW206eIIgCKuvpT"}, {"max": 23, "min": 35, "name": "mOROUTq24sjDYTxk"}, {"max": 84, "min": 46, "name": "v0UNOFjJpVRqW54b"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 78, "role_flexing_second": 44}, "duration": 16, "max_number": 47, "min_number": 72, "player_max_number": 23, "player_min_number": 66}], "batch_size": 74, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 30, "flex_flat_step_range": 74, "flex_immunity_count": 37, "flex_range_max": 63, "flex_rate_ms": 54, "flex_step_max": 40, "force_authority_match": true, "initial_step_range": 29, "mmr_max": 48, "mmr_mean": 10, "mmr_min": 71, "mmr_std_dev": 9, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "n6MVERCwe7kcFCJ1", "criteria": "HfgEL4L9xzGCXlLT", "duration": 50, "reference": 0.9760600738805413}, {"attribute": "isLn3acp3kj7WHaP", "criteria": "KoXogtNDM0HDfMSY", "duration": 24, "reference": 0.6739022465010701}, {"attribute": "Ij9cHNaWLHVtnAxe", "criteria": "O5RdDeHV3blCERsa", "duration": 52, "reference": 0.8047568371685636}], "match_options": {"options": [{"name": "kcdzm2xA0C2M23CR", "type": "W8ynbKhZQxBvVS2Q"}, {"name": "ZpPcMT3yEbZJpqLQ", "type": "C2qHJ6z3V354JXa5"}, {"name": "VGZGcT7VYFhhqqix", "type": "zyj4Yhw1DEORJ5or"}]}, "matching_rule": [{"attribute": "tdugvKLgJlhRxD6i", "criteria": "b4hsfub95NlTCK5v", "reference": 0.09083764359997648}, {"attribute": "1iJoY9JLkNmyACSI", "criteria": "WoLv2rw0uWT4ZJW0", "reference": 0.046014535994435946}, {"attribute": "T4rJjehU9NRIpnYI", "criteria": "mTYlYSpvqKPGsZd3", "reference": 0.11399510731036211}], "rebalance_enable": true, "sort_ticket": {"search_result": "eTHZftJgMXDCVn01", "ticket_queue": "EA3Psh9OLmfKn2OJ"}, "sort_tickets": [{"search_result": "r5OjGhsS5zM5veTj", "threshold": 79, "ticket_queue": "Nky1M9ScLqrh6uW1"}, {"search_result": "nC5gt0FvwWuiVkso", "threshold": 22, "ticket_queue": "ThfAAyWCSjcVLq7B"}, {"search_result": "4j0phNAK0Wke63P3", "threshold": 20, "ticket_queue": "OaPm00koYavE1I08"}], "sub_game_modes": {"ryrXLSTP2gdflLoT": {"alliance": {"combination": {"alliances": [[{"max": 98, "min": 48, "name": "Pl72N0WB9rKC0ccn"}, {"max": 48, "min": 62, "name": "o9XSePe8XG5yF4tA"}, {"max": 40, "min": 69, "name": "m9WZWloqoSbc3GFh"}], [{"max": 11, "min": 11, "name": "KG5oHZ8p8ve0eKuL"}, {"max": 25, "min": 27, "name": "rQxGbDFDE4o4SmXN"}, {"max": 58, "min": 90, "name": "rGpC5TYLWPEZABPE"}], [{"max": 60, "min": 22, "name": "eAhuqMwPnZHJcyGr"}, {"max": 73, "min": 90, "name": "5Xct9IsvDIiISym8"}, {"max": 86, "min": 56, "name": "uWA37NVcirQBqvhu"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 18}, "max_number": 30, "min_number": 93, "player_max_number": 23, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 79, "min": 99, "name": "yuwWDzpvqQ4djZrL"}, {"max": 27, "min": 27, "name": "XykaDDQFqRpdr6wP"}, {"max": 74, "min": 13, "name": "jKXCJJIKALOVkdPr"}], [{"max": 24, "min": 74, "name": "8BxDaTgglZZEMSja"}, {"max": 16, "min": 7, "name": "3qtFnouGDwZzH2wg"}, {"max": 46, "min": 14, "name": "rO8NSqN46xLY5VGp"}], [{"max": 29, "min": 66, "name": "9Yuj9jnJqpbZ2lXM"}, {"max": 31, "min": 34, "name": "7HLlxTKYknGZBxJR"}, {"max": 89, "min": 32, "name": "F6XkGmqHCIRGGMF6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 100}, "duration": 62, "max_number": 51, "min_number": 34, "player_max_number": 43, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 12, "min": 44, "name": "piM4UmO553APWk9c"}, {"max": 64, "min": 47, "name": "2ckfA2MouZO7mtJX"}, {"max": 57, "min": 14, "name": "zT2Fkk5UISz3KbA7"}], [{"max": 97, "min": 30, "name": "ZvtExdi44i8u40qx"}, {"max": 49, "min": 81, "name": "5dlCE2oUtoW5nmsw"}, {"max": 20, "min": 2, "name": "WWvF7Nwqgeshdkhq"}], [{"max": 44, "min": 4, "name": "W9eXwB50PsCdvkdf"}, {"max": 53, "min": 8, "name": "CGYVKIGuKxahV9ze"}, {"max": 34, "min": 77, "name": "pbHu4eCRgUzjuWoh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 31}, "duration": 2, "max_number": 53, "min_number": 24, "player_max_number": 24, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 73, "min": 65, "name": "JjYXHU6TBAOoGRGd"}, {"max": 88, "min": 42, "name": "IY6Eem6NPNjdSMtZ"}, {"max": 86, "min": 13, "name": "IjCe6RM0rfbQHYZF"}], [{"max": 58, "min": 17, "name": "RIyKWQVALrlGxuNP"}, {"max": 99, "min": 70, "name": "X1lrboGgZtX0D0l7"}, {"max": 76, "min": 81, "name": "nuAbU2if8nAva56z"}], [{"max": 29, "min": 81, "name": "P1YbVuWl2ydCzmgY"}, {"max": 32, "min": 14, "name": "GmqokrQihn2fmFYn"}, {"max": 36, "min": 2, "name": "C5iJrbHf936SJPkR"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 76}, "duration": 42, "max_number": 11, "min_number": 1, "player_max_number": 47, "player_min_number": 0}], "name": "4GH2RHolZwlsylK8"}, "F83MCvNkqGkbASnO": {"alliance": {"combination": {"alliances": [[{"max": 33, "min": 75, "name": "T6xW1hkQBI3c9mbr"}, {"max": 59, "min": 90, "name": "MuN9gNbTboKvhFDs"}, {"max": 94, "min": 100, "name": "ld5qBShqq09l4WJT"}], [{"max": 57, "min": 76, "name": "7ZPSFPn7ymS586AR"}, {"max": 20, "min": 55, "name": "GeyJ0fKVgp5xu45Q"}, {"max": 93, "min": 37, "name": "Gu2NRrnUhB9UeoPd"}], [{"max": 81, "min": 38, "name": "ex7DX9RQ6Tk66Yua"}, {"max": 15, "min": 70, "name": "AiedLnmhZzN9tzGH"}, {"max": 47, "min": 2, "name": "Z02XxXU9VaaXNQs0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 18}, "max_number": 19, "min_number": 86, "player_max_number": 36, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 47, "min": 91, "name": "NyQnAgeFwztAdRJG"}, {"max": 58, "min": 87, "name": "49w289kEMCgnW9Ua"}, {"max": 84, "min": 59, "name": "goJ4w6s53jYJ87gq"}], [{"max": 78, "min": 9, "name": "AhoPUSI8C0BMAIie"}, {"max": 72, "min": 73, "name": "22pKiJ0pPVe3UWYL"}, {"max": 30, "min": 42, "name": "BV9Y2MfrmSEmaED2"}], [{"max": 98, "min": 80, "name": "I6gFPA5cnlG8T3jO"}, {"max": 35, "min": 7, "name": "p5LRJbKaoNw7UPer"}, {"max": 66, "min": 61, "name": "MTI2ZFII1tC8fUFU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 100}, "duration": 87, "max_number": 45, "min_number": 88, "player_max_number": 35, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 15, "min": 68, "name": "aqDaUKkJJtmpAcCV"}, {"max": 8, "min": 9, "name": "Goko24dPhokblRdQ"}, {"max": 91, "min": 19, "name": "x4Ct5zgQf5tUbbtg"}], [{"max": 70, "min": 24, "name": "4k8afWnhqwyDZljT"}, {"max": 89, "min": 100, "name": "kwp6j1EEAWExRKm5"}, {"max": 71, "min": 80, "name": "rpZfovY33Br2wF60"}], [{"max": 3, "min": 37, "name": "WSCYa8VQnFUjA6ga"}, {"max": 44, "min": 0, "name": "eu8MIaY7k0VUHJ1G"}, {"max": 25, "min": 92, "name": "b63uziFswHX6a58p"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 40}, "duration": 92, "max_number": 4, "min_number": 84, "player_max_number": 6, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 63, "min": 12, "name": "sFnhZsA8JmSZILEA"}, {"max": 43, "min": 51, "name": "xBWhanZYjFbnHBOp"}, {"max": 91, "min": 38, "name": "yCHkoNtVz4aH4OwE"}], [{"max": 13, "min": 20, "name": "vInm8m8qdudHb9yH"}, {"max": 38, "min": 49, "name": "bPBIdZKckHVmsD4H"}, {"max": 87, "min": 5, "name": "NOhVUcP4lSMkf072"}], [{"max": 47, "min": 85, "name": "MwAfD6FaylNSWVxf"}, {"max": 53, "min": 56, "name": "08K1UA1La35oTyN4"}, {"max": 74, "min": 69, "name": "Zt26asJqROIY40xp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 96}, "duration": 76, "max_number": 0, "min_number": 59, "player_max_number": 88, "player_min_number": 36}], "name": "7VczsxzFU7sH9Wbe"}, "VPli2uF2YK5lYdL6": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 82, "name": "G8qWNXZOkKDjxWD4"}, {"max": 28, "min": 37, "name": "MDWBaF9eRddWjz6p"}, {"max": 30, "min": 82, "name": "aVSpzFbrnCUdlYLE"}], [{"max": 95, "min": 17, "name": "yYChc9VI60AzeY4Q"}, {"max": 49, "min": 70, "name": "PoSiBANqYEe4e0ru"}, {"max": 36, "min": 52, "name": "rNGULKPeipGBfzmB"}], [{"max": 43, "min": 30, "name": "AcN92UZO67RgNayW"}, {"max": 15, "min": 57, "name": "RHVc75DesoI3N0SD"}, {"max": 2, "min": 29, "name": "YTsc2niiDHakSMv0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 62}, "max_number": 12, "min_number": 13, "player_max_number": 95, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 99, "min": 35, "name": "6Gf51Lf8dt0Idh63"}, {"max": 89, "min": 71, "name": "igTzK9ypEl2WmsLc"}, {"max": 11, "min": 17, "name": "XfmOm3gfDhFsXBl9"}], [{"max": 24, "min": 90, "name": "Z7kcLbR17LRgsg43"}, {"max": 47, "min": 72, "name": "2j0akIOu9uUrAk9O"}, {"max": 34, "min": 21, "name": "49lq6XFaFPVCEPwG"}], [{"max": 17, "min": 37, "name": "2Dpo5TMItQGrDkkr"}, {"max": 50, "min": 35, "name": "hZkjUHSxTDaEZit1"}, {"max": 51, "min": 31, "name": "A4V21BXfZJVTkgUu"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 61}, "duration": 39, "max_number": 64, "min_number": 66, "player_max_number": 55, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 80, "min": 82, "name": "JA8WY3GhIPwcE7Kz"}, {"max": 74, "min": 92, "name": "5WzkwSfqQMj0gzAP"}, {"max": 0, "min": 57, "name": "emPAwXa6dQe6j4NT"}], [{"max": 24, "min": 14, "name": "U7UkBoTHHxUZuQIt"}, {"max": 5, "min": 24, "name": "biUcWAGBSz4diTBB"}, {"max": 37, "min": 3, "name": "XVaAbtvVqdX69Jmc"}], [{"max": 21, "min": 90, "name": "Mpmm5KSP6qsa0l3h"}, {"max": 39, "min": 39, "name": "6P9Iw0bkuScMXI1J"}, {"max": 99, "min": 100, "name": "iky1KbcQAJBTow8z"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 23}, "duration": 28, "max_number": 25, "min_number": 22, "player_max_number": 96, "player_min_number": 48}, {"combination": {"alliances": [[{"max": 63, "min": 39, "name": "N6eUKBPPafpm4xxk"}, {"max": 82, "min": 65, "name": "vmz1Ou3U5DlcnZyU"}, {"max": 59, "min": 34, "name": "rKuYLaSVhegR2UlJ"}], [{"max": 41, "min": 33, "name": "wKBKkiOrrPWEsQSo"}, {"max": 18, "min": 34, "name": "PfC4adVhKKwmoDc2"}, {"max": 74, "min": 6, "name": "pdYDbfHaxvBW8JZ7"}], [{"max": 85, "min": 56, "name": "zlOd20J3jAlP6i65"}, {"max": 82, "min": 11, "name": "XGSe5x5ODQfMlqDh"}, {"max": 91, "min": 60, "name": "BUva7pwJosHvwLWp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 26}, "duration": 71, "max_number": 53, "min_number": 70, "player_max_number": 2, "player_min_number": 48}], "name": "saUCbJjLnUfHXXz2"}}, "ticket_flexing_selection": "3LQWu9jauWNbqWjx", "ticket_flexing_selections": [{"selection": "IOH914NONSqZg0uZ", "threshold": 0}, {"selection": "g6HgSMza6jCt5GII", "threshold": 36}, {"selection": "nX5utzClSGoBU6tW", "threshold": 91}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 19, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'hMg7ZieKgtctWs84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '9p4u7FnPtvoN89IQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "q35puuQJOp23s40C", "players": [{"results": [{"attribute": "Q5miGfkf9HMnlhC6", "value": 0.44680140993798734}, {"attribute": "qh82E0EPuTIZr0tN", "value": 0.674095075468896}, {"attribute": "L7GxIbd1bD4b1SWG", "value": 0.06973481089434175}], "user_id": "wiXpSsI1BA5CtI6n"}, {"results": [{"attribute": "RMg3mYWc3GlYigZh", "value": 0.33320534104355826}, {"attribute": "YnAFOyrwo5S1tQij", "value": 0.8801782975374816}, {"attribute": "zZnehDwPziXU6izr", "value": 0.7536159590565317}], "user_id": "VUtuDCCyVRFOJHxl"}, {"results": [{"attribute": "GRZSO8nuSRZag5CK", "value": 0.07740254843190009}, {"attribute": "520JlPZzLpB00X5F", "value": 0.7803229836804755}, {"attribute": "zWnz2F5HF5DUYHmU", "value": 0.44901526329961483}], "user_id": "HkpWPXcOhLspQEHW"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Wpz9dryIc2xipSMl"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "tnB5clAestgLeOGE", "client_version": "aZMPWslQQXtqLTdX", "deployment": "V7tlgr0gkFhBvWK8", "error_code": 73, "error_message": "UO05BrNreRbXvFe2", "game_mode": "KbtmRTyoOQJ30Cqq", "is_mock": "0cZXEnAQ3gPpAx26", "joinable": false, "match_id": "hRXHYx12RWhOhvfu", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"txhhcxnaQ680jclo": {}, "C7Gv5fbCA5OTxaD1": {}, "MwUFFG2itJjmSB7f": {}}, "party_id": "cwnoBrR4jkE2TJKB", "party_members": [{"extra_attributes": {"wffLoW5XrbA7Iow0": {}, "wtTkO7VRfMArvr2d": {}, "hOvOv6a26HdyjJsl": {}}, "user_id": "Km5BpFA10DzwNJbx"}, {"extra_attributes": {"C90WxEtRg8XUg2W4": {}, "WST2WSnM8bDg6I8P": {}, "7YWs9ngKXXzl18Gj": {}}, "user_id": "RbIexCqkrxg7B53x"}, {"extra_attributes": {"dDWulYgN7UqpBwMa": {}, "ZL8ywFSarZ26wxPr": {}, "odkHJPh6EmFCDFQ1": {}}, "user_id": "yRBNmjd5WEvITRgO"}], "ticket_created_at": 77, "ticket_id": "HI0i0zCuWwPLEBQ9"}, {"first_ticket_created_at": 61, "party_attributes": {"cVv4Vkqy4zhrOu5e": {}, "OQXRV6ZZIIHEgIM0": {}, "wrzq5zqtdSYhqJYN": {}}, "party_id": "fsgxrIDeo2Bb86Ie", "party_members": [{"extra_attributes": {"DvlcsNLSPGTsAWml": {}, "CI1AkTYkShUOGKgl": {}, "y8A49Msm66cWG60N": {}}, "user_id": "0fqQoRdr849D9dMn"}, {"extra_attributes": {"Jx3joMVkBSMhvNgW": {}, "BdMcNnS3IXSHiJWL": {}, "mEnzS3ltDicDlOBc": {}}, "user_id": "UsNjy4dkN2df6KVR"}, {"extra_attributes": {"mPHPmCJzFzYVeZTI": {}, "GGaARLlXGLc7IAmR": {}, "hThHg0plO3aQ5Q8u": {}}, "user_id": "xTznaNFi73gEwLqb"}], "ticket_created_at": 81, "ticket_id": "ty2rV80CNxLJRpjY"}, {"first_ticket_created_at": 81, "party_attributes": {"iJ68RvjcqM8ZCyB6": {}, "mYARqbO61NxwHvs0": {}, "0xd3fQGCOg6hdKDO": {}}, "party_id": "g5UkyWdO1SIol9KA", "party_members": [{"extra_attributes": {"J1WSdxDWfhKaumBc": {}, "4ddWgWdIIshKhbg3": {}, "wYktRDEC9Kj4QnxX": {}}, "user_id": "PFPAAu18JiMBEFDh"}, {"extra_attributes": {"7KNbLDlpvC8Bjuo0": {}, "SPwXlrYjp6N8SIpv": {}, "Co5ZbKLx8CaSRnGq": {}}, "user_id": "0Po8SYDoDbpHEn8k"}, {"extra_attributes": {"XwPSUtvletXroaHc": {}, "pPrje8D3lzTjkd9O": {}, "qGqVYCr3UxxpAhEe": {}}, "user_id": "M8F4sEyzsHK6LPJf"}], "ticket_created_at": 31, "ticket_id": "LBlwrPK9rWEbfZyc"}]}, {"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"6bOjTmKrHosP7F2N": {}, "PacuvsmvrTxrAWlX": {}, "kp3gZmUvWX7u6NfV": {}}, "party_id": "XStSbuPCKtWTyzmt", "party_members": [{"extra_attributes": {"gkzUcckjmh0F7hgF": {}, "wtFyku5HnpSpLzKV": {}, "GlQjuLGhbz2A74hs": {}}, "user_id": "DmXCqSUd0819646o"}, {"extra_attributes": {"vWA4eFEiIEnJmGcP": {}, "OeEdBc35lq5uldlJ": {}, "38ZjAiNjeuqI3Bmd": {}}, "user_id": "uduDpuVJ5nyCN3QQ"}, {"extra_attributes": {"YLQKdWB8jHCf5Ten": {}, "rfBwWuWtSHLHa4KJ": {}, "V3fVUsxmWxM7VDk2": {}}, "user_id": "uRjXfQiNR7I0aJyZ"}], "ticket_created_at": 67, "ticket_id": "u23wjSiINXoSzU8d"}, {"first_ticket_created_at": 55, "party_attributes": {"dxHepPIFiN4Yyzxh": {}, "fzekK8BscYL2XiSM": {}, "QXavHz2SyEYZax5z": {}}, "party_id": "ybjRRw7agNbwyFkI", "party_members": [{"extra_attributes": {"pC8p0NkIu6ZEBihz": {}, "hJ29nlaN3bYQBY3G": {}, "ebM2ZHmia99vZkS3": {}}, "user_id": "aQ2lFodHySEVKyaW"}, {"extra_attributes": {"pdBz6LoGW1NtupjH": {}, "91CnSdDANfFl5JqS": {}, "59EIKiKKX5WVXIvT": {}}, "user_id": "eAj9RzWKdnNTQwzq"}, {"extra_attributes": {"vMnlvjwbcCWC0s4O": {}, "FWN1aLEl4VeG3YUn": {}, "f8CnzRTBlBZhEexB": {}}, "user_id": "QTnk7Mh1b67kXbqU"}], "ticket_created_at": 69, "ticket_id": "1EbMm0UzymLfZEFw"}, {"first_ticket_created_at": 38, "party_attributes": {"7fUIfPuU2gucQ1uD": {}, "5WtQkBeQMAHQ9wqQ": {}, "WgWEJmvwYGciy5Uy": {}}, "party_id": "EJ4cDqygEBm8fL92", "party_members": [{"extra_attributes": {"FFyn1bJAI6RxXbyI": {}, "aSnMGUKVFte7Fnts": {}, "bK1NH80frJ0bCt0A": {}}, "user_id": "8Io2IigRAVLlSV3o"}, {"extra_attributes": {"WMz2PYQPYiKncMpE": {}, "Nha1EQBqrMx5wO2j": {}, "ikzvwJHrcIFXXShR": {}}, "user_id": "pS801L5JwSDl43jj"}, {"extra_attributes": {"j8H8rztZIw3AykM4": {}, "WVNFtgBjGqv0j1BZ": {}, "lDAvXJmAKPwXe6FF": {}}, "user_id": "UkewTuRJbaai5LuS"}], "ticket_created_at": 71, "ticket_id": "LSWSvLkFwZoA8Kl0"}]}, {"matching_parties": [{"first_ticket_created_at": 24, "party_attributes": {"5TR9UTHzEJbQ28T6": {}, "kdENjydOdQGBz5Hn": {}, "hvEOcLfhOUBx7pFh": {}}, "party_id": "9P4Fpoc7nTJPpUTW", "party_members": [{"extra_attributes": {"dxkKRqAXvTOBiN1e": {}, "tkBTNXjdqD0JZMHe": {}, "9AB6mkTYH9ihuoIB": {}}, "user_id": "fYhx9CUyfydVcY7l"}, {"extra_attributes": {"YfOoXKIjLhRY1oKP": {}, "9fSfwczjFDCZfJcO": {}, "EFPwG62NjqwDvzEX": {}}, "user_id": "lYIELBRrI8Yueu7x"}, {"extra_attributes": {"Z3eHbBp8KbQ3wgke": {}, "ErPiqy0p83JXDEwd": {}, "fjWTa71noJTio7fp": {}}, "user_id": "PnG66ub27qGXPUQz"}], "ticket_created_at": 59, "ticket_id": "OOAUGmstwKTd1CLV"}, {"first_ticket_created_at": 19, "party_attributes": {"KQSCjcvT6v05KWmL": {}, "nvh8esAWYBoZKWRb": {}, "kiyY3LTOgclXlzzp": {}}, "party_id": "OX9pjrEgkOjH12Y4", "party_members": [{"extra_attributes": {"BAH7ZhkbTUaY4sW6": {}, "z7m7iEVnW8Vks8EM": {}, "55yB1ITJpO7nx8rH": {}}, "user_id": "g8TUXj02SuTVnvuF"}, {"extra_attributes": {"0jYtuRWvtJHc8uOQ": {}, "RPi4F98pN16x0l1J": {}, "0KdbZYRYBbLMDcNR": {}}, "user_id": "qZOf1prof724O6rC"}, {"extra_attributes": {"hoEBPEdQdefW0ztB": {}, "sotKCofygUOr1Qxn": {}, "q9WuTwGFCQD5EoU1": {}}, "user_id": "v4xOKust9FiHdwfD"}], "ticket_created_at": 76, "ticket_id": "z5mB3yFOjbPlezir"}, {"first_ticket_created_at": 29, "party_attributes": {"rTp9ZrbNCJkEZCZU": {}, "39DyVMz1nXwxpI6z": {}, "IqeOPoQ4wSCKJvaI": {}}, "party_id": "0cV5j3gaOEl9LMAp", "party_members": [{"extra_attributes": {"iBOE2H2JQWjZt6PU": {}, "GyOc1mGV4zv67SUP": {}, "gOAFtgR49MJuVSb9": {}}, "user_id": "r9l4Z5IUbH5vhhnW"}, {"extra_attributes": {"0xOgyBZStBK0wbVK": {}, "ivp78MkqAcf9vlgQ": {}, "0U8JTw4860P3ZbNN": {}}, "user_id": "3O3XKnptiaIut6xS"}, {"extra_attributes": {"CU9g5CKE92yVakyT": {}, "cOrWrrsmSwTg7N7H": {}, "6B4ylUhXD7oHQoxG": {}}, "user_id": "cwPFpYkVPfkPftNc"}], "ticket_created_at": 42, "ticket_id": "oM4LjRbrLbqEBxHq"}]}], "namespace": "NsAsVbFyFjx9qhoj", "party_attributes": {"meRQ0vSoVFCJ6LOs": {}, "5vSMDHwryUeDYm6F": {}, "OOuAsxHmjGqPPVRm": {}}, "party_id": "ZOqc8neucpQLRySn", "queued_at": 36, "region": "fBgFF8yqAENw6Ql8", "server_name": "tIxe3zQL23a36yNr", "status": "4UhoZq2wpAv7Qzgl", "ticket_id": "wChlfLhN6izjH5Fa", "ticket_ids": ["4TuR9mo4ASxRszzY", "wgNXJFuSYQuUFEmW", "1HiChRcR4rEgjCD6"], "updated_at": "1974-12-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "DseNO2hXiFqgpfx0"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '3B9JDl2KQav6s54A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 98, "userID": "sRv5Rg62Yja1lKDs", "weight": 0.14644657713016884}' \
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
    --matchIDs 'BwIaELY8mtKjmVVv' \
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
    --strategy 'i2VuekQpjEYJYdbI' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'TbIuSzDmoupOji2A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'KCsaRcCoG02geLRv' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "xpteVO1hFOFytKds", "description": "kwIBJzHWHARpr0Pb", "findMatchTimeoutSeconds": 57, "joinable": true, "max_delay_ms": 96, "region_expansion_range_ms": 77, "region_expansion_rate_ms": 6, "region_latency_initial_range_ms": 30, "region_latency_max_ms": 19, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 39, "min": 38, "name": "Kq7Nk2bb4s7XJcPO"}, {"max": 56, "min": 31, "name": "zTrVWPHwNsKO1Mzj"}, {"max": 10, "min": 8, "name": "EATrkFfYjxnezt3n"}], [{"max": 53, "min": 85, "name": "z2ZCIL9HjfmMDGqm"}, {"max": 47, "min": 51, "name": "ByhNm4nHMAXRRpxU"}, {"max": 100, "min": 24, "name": "XpIpCOD2LXcp8Qoc"}], [{"max": 10, "min": 65, "name": "WqQNcKcQKUkTaD9d"}, {"max": 59, "min": 100, "name": "lDEK8iDiqVHuivme"}, {"max": 5, "min": 21, "name": "c2LUVWEiMEM366aA"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 39}, "maxNumber": 70, "minNumber": 54, "playerMaxNumber": 47, "playerMinNumber": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 83, "min": 21, "name": "UloVvL0rd3jb6l9V"}, {"max": 15, "min": 6, "name": "umWLMKIuFybhfRYa"}, {"max": 49, "min": 13, "name": "NAgp7KiLt6ePoztb"}], [{"max": 13, "min": 82, "name": "N33HrEvRTmNxEiIx"}, {"max": 100, "min": 22, "name": "BekyfjEMnb0dywUM"}, {"max": 9, "min": 41, "name": "c6qnAvjmduNHwcLU"}], [{"max": 14, "min": 57, "name": "pxrlBoLM6LDEyl8p"}, {"max": 16, "min": 100, "name": "zFCeu7RY1IesD5VH"}, {"max": 8, "min": 13, "name": "g35EUlVQc7XSjz8Q"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 82}, "duration": 30, "max_number": 39, "min_number": 38, "player_max_number": 65, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 78, "min": 50, "name": "nejXarPI7yY6UH4n"}, {"max": 72, "min": 13, "name": "gtknGaqUCLfGCHGO"}, {"max": 34, "min": 59, "name": "hweQoMxIrrd6RYCE"}], [{"max": 64, "min": 37, "name": "oT3Lho7PaS5Vz1qQ"}, {"max": 38, "min": 77, "name": "Of5B6qx30Bm6DEoF"}, {"max": 97, "min": 72, "name": "n8DviUspM3n6R4zF"}], [{"max": 90, "min": 15, "name": "iDtNM1wC6PG5n0kv"}, {"max": 4, "min": 0, "name": "nEUZv5RhL6NcqleE"}, {"max": 66, "min": 88, "name": "5jz4Sfb8TRzJ2xg2"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 25}, "duration": 30, "max_number": 25, "min_number": 53, "player_max_number": 57, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 7, "min": 32, "name": "ECnNHVxJ5LM5VXfP"}, {"max": 9, "min": 96, "name": "virg3xdsrC6bSZVT"}, {"max": 22, "min": 92, "name": "etr07jejzgvZ0JVN"}], [{"max": 48, "min": 34, "name": "eD1AdCmTupvKeZai"}, {"max": 50, "min": 26, "name": "MwR2zgNOey3jmh37"}, {"max": 21, "min": 80, "name": "Q9WUvE0LE3M1y11d"}], [{"max": 42, "min": 48, "name": "mOJIf977Ufp7RNrN"}, {"max": 65, "min": 46, "name": "mxeIQ87kqvdJekiM"}, {"max": 22, "min": 94, "name": "nEPeBpLXb4zYRy5B"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 66}, "duration": 35, "max_number": 96, "min_number": 81, "player_max_number": 66, "player_min_number": 45}], "batch_size": 21, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 34, "flex_flat_step_range": 39, "flex_immunity_count": 41, "flex_range_max": 3, "flex_rate_ms": 40, "flex_step_max": 86, "force_authority_match": false, "initial_step_range": 79, "mmr_max": 48, "mmr_mean": 74, "mmr_min": 72, "mmr_std_dev": 14, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "0xNCyup5zrEPAwZC", "criteria": "Wsdpl5hLMHkZRshA", "duration": 25, "reference": 0.47090753231610727}, {"attribute": "gRCxOZ8nR7Ga6mWH", "criteria": "dX2cCpsxTrKvtgoV", "duration": 0, "reference": 0.9053247424247457}, {"attribute": "hsyGAqodAdJ8V7L2", "criteria": "hk1N1xVqfOMEZCBe", "duration": 24, "reference": 0.9208199355262227}], "match_options": {"options": [{"name": "2mEqsEZfEPAzOb59", "type": "UYbZjtSamDKVsVi9"}, {"name": "OjZrIBMmVvGdYzlI", "type": "pkUO4bOF7zMDqaiW"}, {"name": "DobNeQJTb2qY9GzU", "type": "yyoK6I3vHBiZQpdo"}]}, "matchingRules": [{"attribute": "Vmrb4NeiWzHlYEyo", "criteria": "2ehM9yJQYZa25ujt", "reference": 0.07343996983048484}, {"attribute": "G0VNGc8zTpXZIg4Q", "criteria": "TiYcZDrxoEbsHrOv", "reference": 0.9103516942899442}, {"attribute": "6LDoIToBF0w2zW2w", "criteria": "J1IC0ulPOuMupMcz", "reference": 0.13268695616571247}], "sort_ticket": {"search_result": "9rCVTOEMKgZOKCrp", "ticket_queue": "XIPAtopxUFc326bs"}, "sort_tickets": [{"search_result": "03IffSd2pYMwQP3I", "threshold": 52, "ticket_queue": "DDDCa7bbO29L93MN"}, {"search_result": "CiRLC1PJ9O6sitX0", "threshold": 81, "ticket_queue": "eMQhcsqDLWc2SEec"}, {"search_result": "6MuLJ80uSYgP0Zjt", "threshold": 35, "ticket_queue": "I2NAAhqbUmV7mt86"}], "sub_game_modes": {}, "ticket_flexing_selection": "a7k0XiI7rAQPUXbl", "ticket_flexing_selections": [{"selection": "OGag1PmL1r4DJwft", "threshold": 6}, {"selection": "nyZtZRjl5fYzYHNX", "threshold": 16}, {"selection": "6xoQcOPM3WYwXAMb", "threshold": 100}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 64, "socialMatchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'uJoWwda4AF5pnkhn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'u50lMZs3ufgVAJXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'MEyPfLUZ0Mei4vjK' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 58}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'FDoM1wHnjJWYuyIv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'FEk9LuW1clQoDFQp' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "k3Y63rVoyNutSREt", "count": 100, "mmrMax": 0.5669293267855972, "mmrMean": 0.5417513485496271, "mmrMin": 0.7989097223790291, "mmrStdDev": 0.7576063835771164}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'wAPhROAp3nOvb1Dj' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 95, "party_attributes": {"nR45AF55SVfEpOZh": {}, "wwiJsJRvnAEffGAk": {}, "hIoEGDklXgDLOwwe": {}}, "party_id": "QzJJLgd7J8zLC5ZU", "party_members": [{"extra_attributes": {"NMZzZuQExycjAz9k": {}, "d02KdPNtA0bo9X3F": {}, "F9z4oUrefvdc0kD0": {}}, "user_id": "KiWU21AfTntRXnap"}, {"extra_attributes": {"FAQAC1nEYjUgUiOp": {}, "sXlWzXkRtjxH0X3t": {}, "CDvQ9bndUdl2hQs0": {}}, "user_id": "lK3UtFOHiJ3lMZxo"}, {"extra_attributes": {"6jt06JekcYmkOeG2": {}, "yLveyKVFgerIAdFo": {}, "wxGQ5FoCps1LMVvq": {}}, "user_id": "vr0szV8VIF6wkW7M"}], "ticket_created_at": 42, "ticket_id": "uGGG6HLN3ISSCkCl"}, {"first_ticket_created_at": 68, "party_attributes": {"LoYcQoxy9pC1t3Cm": {}, "xEBokLGo3pxiTMvr": {}, "zPsM3vclyurSSBiq": {}}, "party_id": "kBzBQYjllthNIeYf", "party_members": [{"extra_attributes": {"S9mNtwbP4whguoYP": {}, "jz7AaqTLdyThyKwl": {}, "OPXrhUD9H2LrsuUW": {}}, "user_id": "Ij8a3j8uVxAUbVgX"}, {"extra_attributes": {"CC4iN2NpMyuVgGfh": {}, "nXZd7RRmc4hRfGK2": {}, "lOKPwqgBJDZsBUga": {}}, "user_id": "aCkcbQZ1fc1JF5YF"}, {"extra_attributes": {"jRJpXZ6vWNIpceP4": {}, "1QsEf3hTVaxvdMnZ": {}, "Qfv8GHEt9woHrjEV": {}}, "user_id": "CyBhElNHEHpqy2q8"}], "ticket_created_at": 84, "ticket_id": "zmpFvcVrHteVfHRe"}, {"first_ticket_created_at": 80, "party_attributes": {"NeuWuFTxg4hVtQKO": {}, "ngLYxnqqwpWXeG5F": {}, "lmNRPCpMYku1Ah5c": {}}, "party_id": "hZEBaK6bOz51uboF", "party_members": [{"extra_attributes": {"B79SuGnEKwe7A3Ep": {}, "WD9RnpnDBMO0hkBR": {}, "EPYppzZkNXXaoHqS": {}}, "user_id": "hAhbPmHfqm6Hq7xY"}, {"extra_attributes": {"QLkm5Kfy6NBCATkk": {}, "b54YxSH6ToAEnygi": {}, "nTl5S3XEQtPP8Rvx": {}}, "user_id": "HKCrtzQq9P8WV1zK"}, {"extra_attributes": {"sgq4MdXRtjBmlLjT": {}, "dFrwaN6GxKprm5pB": {}, "3BzrAuqm82MvGwZA": {}}, "user_id": "tE2h8OtaVV1iidId"}], "ticket_created_at": 78, "ticket_id": "w51pGRIv6hnctoHE"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'Puw7XqDFW2BlHixS' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 32}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'flNCf467Gu6Dn0dC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'Q9C0IDwnvZfhaESa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'K7xuW1AQWjKoZtiJ' \
    --matchID '9sBXGFTnLRcSLAVf' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["hLbdwASDKlPveVAP", "gvVBJ1xs7Pc1VjPe", "QQOt8rgy1rtIWpra"], "party_id": "GMFbGFpjSW6ba0Mq", "user_id": "JbogFiKNrLiOsmRN"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'QnIjR6lz8GtaPfVC' \
    --matchID 'AHLqc5JuUgp4IKeS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'fTEb7QEq5GAnL4Ft' \
    --matchID 'M2SlWlIMKcIeTmXA' \
    --namespace $AB_NAMESPACE \
    --userID 'OcWtXMkBKH9gscC7' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '2FroZYJm8DCEGtV0' \
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
    --channelName 'AhIVb31UaL7JlLKP' \
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