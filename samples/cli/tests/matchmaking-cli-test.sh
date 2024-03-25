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
    --offset '90' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "JXQbQJQ3Sth8jpB1", "description": "QfSVcCHRFHjvsZ3J", "find_match_timeout_seconds": 37, "game_mode": "U1skJVuXb0JM1uu1", "joinable": true, "max_delay_ms": 1, "region_expansion_range_ms": 73, "region_expansion_rate_ms": 46, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 5, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 29, "min": 21, "name": "6Cf3Mm1b3D4UfxcN"}, {"max": 28, "min": 6, "name": "A23cbwb0C9xq1NMe"}, {"max": 74, "min": 67, "name": "xbqDDtkPRDAkKQOB"}], [{"max": 23, "min": 35, "name": "jZAM0FV2h23lCUun"}, {"max": 26, "min": 74, "name": "X7o1oVLkxbS7koqK"}, {"max": 48, "min": 58, "name": "mC20z2v6wOIKqPGF"}], [{"max": 57, "min": 67, "name": "Ywoo2MsKoIVzqGug"}, {"max": 59, "min": 96, "name": "1gavXwAzo4AAS0x3"}, {"max": 24, "min": 51, "name": "8TmsoaDaoyMTXXnz"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 43, "role_flexing_second": 44}, "max_number": 43, "min_number": 7, "player_max_number": 51, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 64, "min": 21, "name": "QJv6QvefCirKolmq"}, {"max": 70, "min": 77, "name": "EZjkgZwfqAyyq8R9"}, {"max": 7, "min": 83, "name": "FkoUEkN2AgdYDafO"}], [{"max": 89, "min": 35, "name": "566AvdlurTyx0aov"}, {"max": 51, "min": 39, "name": "xRZFaJzmEUObJYPK"}, {"max": 53, "min": 2, "name": "fc4GtwxEZNMhGtvi"}], [{"max": 77, "min": 3, "name": "FdWinPb6vdszZePr"}, {"max": 9, "min": 33, "name": "RqVAFbbOR4xVNv1r"}, {"max": 75, "min": 49, "name": "hnSFa5udwngBsOtp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 47}, "duration": 51, "max_number": 86, "min_number": 4, "player_max_number": 0, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 48, "min": 71, "name": "njuBCn34yduploSK"}, {"max": 90, "min": 0, "name": "GJzM97vdGoYkd9pr"}, {"max": 50, "min": 64, "name": "Kqs0MwZ6BqL2z1q6"}], [{"max": 4, "min": 98, "name": "Uvcioh6VFhR27FSQ"}, {"max": 11, "min": 39, "name": "qernQJjWOl2nZpCR"}, {"max": 1, "min": 66, "name": "4eYsmePOw88RtjSc"}], [{"max": 97, "min": 51, "name": "dIJrBCUB8AvpUUnL"}, {"max": 63, "min": 15, "name": "WJMsh97sXtZGETtW"}, {"max": 48, "min": 73, "name": "RqfmSY8UqFssXBiu"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 34}, "duration": 56, "max_number": 4, "min_number": 10, "player_max_number": 66, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 39, "min": 23, "name": "aITZkwVLXF0HY6Vo"}, {"max": 33, "min": 46, "name": "ykiWkTGTqhYgfz0y"}, {"max": 62, "min": 19, "name": "yIYyeX4yfOJ7EvVi"}], [{"max": 33, "min": 11, "name": "Awd9s1cGYedT6o6Y"}, {"max": 73, "min": 95, "name": "ESyEO4HVeGG3rYo8"}, {"max": 2, "min": 67, "name": "sulKWe1AKVi9vfc5"}], [{"max": 89, "min": 5, "name": "yjeNMb5fgQY9FDmx"}, {"max": 50, "min": 17, "name": "OSEtzRvMFRF3O5UH"}, {"max": 90, "min": 66, "name": "BbVEizNUIzHfLQ20"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 84}, "duration": 88, "max_number": 1, "min_number": 84, "player_max_number": 84, "player_min_number": 92}], "batch_size": 98, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 50, "flex_flat_step_range": 77, "flex_immunity_count": 23, "flex_range_max": 64, "flex_rate_ms": 31, "flex_step_max": 29, "force_authority_match": true, "initial_step_range": 39, "mmr_max": 0, "mmr_mean": 0, "mmr_min": 31, "mmr_std_dev": 84, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "DtF1YkUWrtXN2M7B", "criteria": "cEt270wOVCWGxmvm", "duration": 72, "reference": 0.9154454106283504}, {"attribute": "yvBfTYHyV9ZVDzru", "criteria": "oBBHzyWDfvfrzE8y", "duration": 58, "reference": 0.3917691693579848}, {"attribute": "pRh4v1dfTxYZVTKs", "criteria": "utPykXNbksxgg8VT", "duration": 81, "reference": 0.2975183390297359}], "match_options": {"options": [{"name": "okKU4HyJZ6kdq4QY", "type": "nCu45vUeyXPZw2tR"}, {"name": "JAiXfP2jkbnFoknX", "type": "O7Ttr9ZpoHyMsIBK"}, {"name": "xaJLuwd3WoI9UsWj", "type": "Wpy2CkjLxCpNnMED"}]}, "matching_rule": [{"attribute": "V0BCAqaRQEUS9Msg", "criteria": "tPyx8Oqt2ghSicjZ", "reference": 0.7060520998204883}, {"attribute": "Djb7PJcaoHHajgC5", "criteria": "3nlEtpxdzsjLMEah", "reference": 0.11022008740462275}, {"attribute": "LRdMhnXSsy7OvsRo", "criteria": "GBCkmZHFSBhWPkjO", "reference": 0.5507660973961959}], "rebalance_enable": false, "sort_ticket": {"search_result": "8l1FgZLaQ20eONTP", "ticket_queue": "QEjk3IrpdfBE6Vyh"}, "sort_tickets": [{"search_result": "40wvVLdoJJigfs2S", "threshold": 15, "ticket_queue": "mEhjqxSOdWX5R5Jw"}, {"search_result": "WUEPSW9fAVGkctR7", "threshold": 33, "ticket_queue": "Opi6DdOSvrmvRSgS"}, {"search_result": "Rr2JZbkhRaG1WQM2", "threshold": 14, "ticket_queue": "hV6MJEFHrnjbdrXq"}], "sub_game_modes": {"ryU6jR49Nbo25vOv": {"alliance": {"combination": {"alliances": [[{"max": 14, "min": 20, "name": "3JPtjfPCHBRMzXWF"}, {"max": 5, "min": 82, "name": "v6ksnpHKICrkdMfU"}, {"max": 72, "min": 45, "name": "WcVLHmAzp3Ug0Osr"}], [{"max": 19, "min": 37, "name": "yprh9cf5O2pZlISl"}, {"max": 9, "min": 78, "name": "pZim2T1IraJcVt4h"}, {"max": 55, "min": 17, "name": "glWMIalaTzDFJFcB"}], [{"max": 81, "min": 24, "name": "noj0ziSAHLRiPtTk"}, {"max": 73, "min": 83, "name": "9LydGnwN0kR8KFJB"}, {"max": 20, "min": 82, "name": "QonizGKlxponijXZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 1}, "max_number": 87, "min_number": 31, "player_max_number": 33, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 20, "min": 51, "name": "VGxGtsfJwz8lYbgP"}, {"max": 7, "min": 0, "name": "wD4umUOnZcdNptY1"}, {"max": 21, "min": 21, "name": "IZDbLOmaMmEGvWt3"}], [{"max": 44, "min": 13, "name": "dEJS6u0ciSzu1qjW"}, {"max": 11, "min": 71, "name": "RswdUinRPEoOtEj8"}, {"max": 33, "min": 98, "name": "lJyy1rJrZ2Ycva09"}], [{"max": 67, "min": 34, "name": "29s9yboThVLoNaKj"}, {"max": 25, "min": 93, "name": "eX2mdZf7vrzCpq9L"}, {"max": 89, "min": 51, "name": "QAuEOn2fJYCow7An"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 6}, "duration": 65, "max_number": 66, "min_number": 62, "player_max_number": 77, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 62, "min": 95, "name": "h5s5hlURdpznbqSh"}, {"max": 62, "min": 24, "name": "FYN2jR3kySREVCzT"}, {"max": 91, "min": 78, "name": "wXGRTJaIQqx450eJ"}], [{"max": 92, "min": 91, "name": "fQn6e22HG6YTYzT0"}, {"max": 59, "min": 53, "name": "a3JIEVrXgwQxUxfH"}, {"max": 21, "min": 76, "name": "pA6AuTnPrX2RdABU"}], [{"max": 55, "min": 48, "name": "vMdTgjDj1sZZYzON"}, {"max": 7, "min": 55, "name": "j9p42fu6sjlvOWUu"}, {"max": 14, "min": 23, "name": "nW2JMLbfQ8jd6wiA"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 24}, "duration": 51, "max_number": 60, "min_number": 13, "player_max_number": 82, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 40, "min": 24, "name": "yz0E3KFjo9fYyRru"}, {"max": 44, "min": 86, "name": "xBnM6V4OY8K6Ss03"}, {"max": 53, "min": 12, "name": "zUv9CqC5jw1edSAS"}], [{"max": 51, "min": 4, "name": "BtcNvprwH9mCHBQL"}, {"max": 52, "min": 40, "name": "0Z7DMcpDr3Hu21XB"}, {"max": 73, "min": 58, "name": "egoHa5Nodk98qkDq"}], [{"max": 12, "min": 92, "name": "kLydEWQrXZm05JvV"}, {"max": 70, "min": 36, "name": "5ZfUf5ZrIawK692z"}, {"max": 38, "min": 76, "name": "dJtzttaWTYjLrXIA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 50}, "duration": 88, "max_number": 45, "min_number": 52, "player_max_number": 89, "player_min_number": 43}], "name": "PvC4ZP5tQWKy0cy1"}, "Veb4ffzsdNMMH5w1": {"alliance": {"combination": {"alliances": [[{"max": 39, "min": 10, "name": "0DRNtePoWMnpmraN"}, {"max": 12, "min": 27, "name": "qxVThKvPpNZ9QPlJ"}, {"max": 12, "min": 12, "name": "u5dsXzGFNmKWzzWB"}], [{"max": 41, "min": 72, "name": "GZk79KTekK5r5ccG"}, {"max": 13, "min": 53, "name": "XpCH021c7hbZQB0O"}, {"max": 82, "min": 37, "name": "M0iaQ0JQtpNwVlXl"}], [{"max": 77, "min": 0, "name": "m15yPHhgDYhzqeZ7"}, {"max": 55, "min": 31, "name": "GJFOBfa7s2WYjpPW"}, {"max": 8, "min": 2, "name": "aOI7gElQVzLT2ojA"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 46}, "max_number": 58, "min_number": 37, "player_max_number": 86, "player_min_number": 87}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 95, "min": 21, "name": "Fo2RC1xmtRchs83O"}, {"max": 69, "min": 46, "name": "ECsAn16xNQjfYYnu"}, {"max": 52, "min": 11, "name": "OAub81TBWHDEXwGQ"}], [{"max": 66, "min": 80, "name": "uUjAzn6tgByhrKQn"}, {"max": 53, "min": 70, "name": "PMjUB94v31HREGce"}, {"max": 9, "min": 68, "name": "wkgHpGfrWDctsqwZ"}], [{"max": 23, "min": 36, "name": "53srZTOkFOOFLUNz"}, {"max": 78, "min": 15, "name": "MxQc6oSxiAJdyJQ8"}, {"max": 79, "min": 60, "name": "7owK1CArCR3gf0o0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 25}, "duration": 41, "max_number": 26, "min_number": 80, "player_max_number": 56, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 90, "min": 43, "name": "1PzjFkPGpdZE3WXc"}, {"max": 57, "min": 50, "name": "ASkFxc629rKeb0ki"}, {"max": 38, "min": 19, "name": "nJ0m3fbtNfLbf2gS"}], [{"max": 79, "min": 26, "name": "FEK9IxY9zLdwFAtp"}, {"max": 69, "min": 69, "name": "ZzR6TnWJNTK1Tqe4"}, {"max": 96, "min": 16, "name": "qTIaTGfAqO6XbNXL"}], [{"max": 41, "min": 13, "name": "lbobNWaCr3kAirSI"}, {"max": 26, "min": 87, "name": "qKgi8Aeau9He2LOu"}, {"max": 28, "min": 8, "name": "KLIgnlGJMnUDZRQ6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 81}, "duration": 62, "max_number": 56, "min_number": 1, "player_max_number": 97, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 90, "min": 20, "name": "oppUTBDI6YivrDNX"}, {"max": 68, "min": 91, "name": "8ISYn0m3HaII7tv7"}, {"max": 16, "min": 45, "name": "zYVH6nH5csw99dVN"}], [{"max": 93, "min": 93, "name": "QgnR5NGNyDwVnvE9"}, {"max": 14, "min": 42, "name": "2OUg9VgXWSMryPAZ"}, {"max": 1, "min": 29, "name": "7StYTUuqD2fQUl7S"}], [{"max": 8, "min": 23, "name": "lGi7U92S16nKBaJZ"}, {"max": 57, "min": 6, "name": "gtGEpYHsGlYEiL4o"}, {"max": 40, "min": 43, "name": "D4FlwR7zBOVQ6LqV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 72}, "duration": 50, "max_number": 89, "min_number": 5, "player_max_number": 73, "player_min_number": 31}], "name": "yo8OtdXDYq3tOREV"}, "24CYAujzJN7d5OfU": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 21, "name": "bqtZi1UZ5zcY1jz1"}, {"max": 73, "min": 30, "name": "dPdaDEXfdbgFbynY"}, {"max": 68, "min": 40, "name": "7vm3RqlYREe8rkHP"}], [{"max": 19, "min": 90, "name": "jpARA5wQWIztku2w"}, {"max": 38, "min": 76, "name": "q200gWvvr0mP0Irm"}, {"max": 40, "min": 100, "name": "FD3WKc76ozNaPZnP"}], [{"max": 8, "min": 21, "name": "9pIFeSLC948rpA8d"}, {"max": 95, "min": 41, "name": "40KQf6MLCwe7s0QP"}, {"max": 87, "min": 75, "name": "jzI8ZahQ5OMkvdas"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 63}, "max_number": 11, "min_number": 93, "player_max_number": 94, "player_min_number": 27}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 29, "min": 87, "name": "CMxu7VXCnQQyaQIx"}, {"max": 9, "min": 16, "name": "xZKQ2r8crvk527Ho"}, {"max": 84, "min": 23, "name": "B5JnyOYVvXZecJEu"}], [{"max": 49, "min": 57, "name": "8TKYTtUU6aM3Kyws"}, {"max": 88, "min": 18, "name": "nsNorq9KwslHRccS"}, {"max": 13, "min": 64, "name": "83zec4zJxjVxJ0zl"}], [{"max": 27, "min": 43, "name": "PDjqYBHcxERlo1S5"}, {"max": 86, "min": 27, "name": "NWki4GyTqm7PCutn"}, {"max": 71, "min": 27, "name": "amLjCriFPSmnTCid"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 97}, "duration": 75, "max_number": 18, "min_number": 13, "player_max_number": 38, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 89, "min": 38, "name": "9x44zz7KyC0yqzpV"}, {"max": 98, "min": 88, "name": "hioaAXPX1ftYfbEY"}, {"max": 79, "min": 59, "name": "thCKqTrZeuA5qgKM"}], [{"max": 6, "min": 70, "name": "8bRk0tsF98nT1Rys"}, {"max": 13, "min": 70, "name": "n3XG4WCjKRji9Xss"}, {"max": 2, "min": 69, "name": "ZLiz3RymMPZ5C8gZ"}], [{"max": 76, "min": 69, "name": "AY6IAnNyiOhQ7nzz"}, {"max": 64, "min": 86, "name": "BJ2Ik7FoKiMPVxIK"}, {"max": 58, "min": 70, "name": "Ce7Vmee7XjuSedwQ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 21}, "duration": 54, "max_number": 48, "min_number": 97, "player_max_number": 41, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 83, "min": 19, "name": "hhNCcr0XCAmsvLDG"}, {"max": 0, "min": 34, "name": "8BY9IRLSwUQnCGky"}, {"max": 0, "min": 27, "name": "nIAv0Gbn7q3v2put"}], [{"max": 33, "min": 80, "name": "MM6K3qZE8E1yu6ZJ"}, {"max": 86, "min": 87, "name": "p1dtkEJgnPTyKwvu"}, {"max": 71, "min": 13, "name": "wrYi8b0OoMoOgX4u"}], [{"max": 33, "min": 17, "name": "WHLGVFjSTioBaCGQ"}, {"max": 23, "min": 43, "name": "5HuC2Ym2itkSL4AX"}, {"max": 12, "min": 16, "name": "nY3HaZg7hPALctVC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 28}, "duration": 12, "max_number": 52, "min_number": 15, "player_max_number": 8, "player_min_number": 71}], "name": "v11i6sB0ehLEBoOG"}}, "ticket_flexing_selection": "Ekx9h5RA7LRVpvpG", "ticket_flexing_selections": [{"selection": "2tuzjEm5Ij6XGR1C", "threshold": 92}, {"selection": "H6zSmuFdG0CpU0DA", "threshold": 88}, {"selection": "CALsXELHB5aeVbnS", "threshold": 66}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 70, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'jl5D78OKXD3VWSKb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'Kg7I1isWMlqourAN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "oqtLSFczaCYdZ3VP", "players": [{"results": [{"attribute": "8DDM0HDFUb18sKRZ", "value": 0.8205739466175087}, {"attribute": "q6W41R0afgh0cVGN", "value": 0.42129882636022065}, {"attribute": "GuLVzBjeHqP0LSIa", "value": 0.5718246694441045}], "user_id": "V9YQoh4rhshUmJDD"}, {"results": [{"attribute": "7MAkigOQ1Ojtv6a6", "value": 0.6164382853756302}, {"attribute": "wPqXTwHYyLpYKtoP", "value": 0.3321019436305196}, {"attribute": "uXq3zz5dxHSqUCPw", "value": 0.1968911395339097}], "user_id": "DB7epEeCfJUNi5kz"}, {"results": [{"attribute": "TtqLtzhMMm9AdiOM", "value": 0.3887118110132586}, {"attribute": "5li7EFkOTQ0lHwgH", "value": 0.26938641438838795}, {"attribute": "KS6ATwoBx0kN16zP", "value": 0.8188388722232247}], "user_id": "uLaC7wJNBCUdRT89"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "rOc38jwrUlklzNSd"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "QoglZnowL3BTgGhf", "client_version": "eTVFJPdWRW4Qp1ht", "deployment": "fpXxeyr0mb5E74lr", "error_code": 25, "error_message": "18128pAxeSYj45xV", "game_mode": "OC73VWYrkSdOLPyj", "is_mock": "6sgl5aNT7ex1ePzd", "joinable": false, "match_id": "EII3Cd2l1wsqud2r", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"mpqZyxkIHxzEBQsW": {}, "Iv4h1egMqBoxvVoA": {}, "AI77G0v4bq2TDdlG": {}}, "party_id": "PoTxKF3Qn6iuYcsk", "party_members": [{"extra_attributes": {"XOi6gG8OTgGlp9B9": {}, "b8tceJAvNueqZPRA": {}, "YTl35NriiCDXenRl": {}}, "user_id": "KN62J7fGLiD7WWfm"}, {"extra_attributes": {"KDgD5Gpfl1Re6ou1": {}, "zcroF4UNptohfPkI": {}, "lsYJthHWzfKe5xrM": {}}, "user_id": "Q01nqlT0H2Dl9wch"}, {"extra_attributes": {"zbe75XGfrqE1FNX2": {}, "tHOOA3DCKk322IFC": {}, "ltpMiz1qnNEVLmhb": {}}, "user_id": "u2BcgLOWgzfSJlF5"}], "ticket_created_at": 72, "ticket_id": "zBdcOJLwYaYW2PVn"}, {"first_ticket_created_at": 79, "party_attributes": {"ISwj7Ro7lpdzocTM": {}, "aYmApOt4mQt8iFVB": {}, "HAaxpYzhgBf37Cra": {}}, "party_id": "EchsaOGthShjYyvu", "party_members": [{"extra_attributes": {"J7AM9TJYupCWlcSQ": {}, "PdIgoHnVdyRRVGkN": {}, "UIoKI5HtedJubPPM": {}}, "user_id": "gc677YEo3dOJtOe6"}, {"extra_attributes": {"nyw01jZQScC7yYPm": {}, "J0W6aczfaPUmfYug": {}, "FGZZ3jgdfscK1TD6": {}}, "user_id": "2pbDk3FOIJ2E6EMi"}, {"extra_attributes": {"bj559SGc6Xjw13ze": {}, "Y0JXN9O0UQGVWpST": {}, "wy1SKqOqcAEvHVJb": {}}, "user_id": "8tOPSDo7PKLiMFfF"}], "ticket_created_at": 19, "ticket_id": "MTohW3JR8NVoTgg9"}, {"first_ticket_created_at": 3, "party_attributes": {"XDsDiGyGtPDM2QWl": {}, "IbhCDdoxsmjlSmmz": {}, "EqH8rMRFn2nshyvB": {}}, "party_id": "LVJnuRrrOgqPwSIU", "party_members": [{"extra_attributes": {"ruPgL08gTAgOwrN0": {}, "UzeD9uzwlPxHwJ8e": {}, "oHvhnwjeKg1d5v65": {}}, "user_id": "zeAXJXsH4Lpjm48H"}, {"extra_attributes": {"pElmDxPE8i699WVh": {}, "6nVXQvipWISTEzs5": {}, "QN4V3s08wEM09a9D": {}}, "user_id": "Z8xDbafBYg3NVC9M"}, {"extra_attributes": {"IQV8pv8QiAX1h17n": {}, "ArcAznp2l4AlzViF": {}, "yPQ4FXNI6cafqgDX": {}}, "user_id": "SfcUlTh63IJWa3bf"}], "ticket_created_at": 84, "ticket_id": "sYwJpiQOA1GsZB6u"}]}, {"matching_parties": [{"first_ticket_created_at": 11, "party_attributes": {"GBubEjq9M2RCw3Y2": {}, "cuLz9ynWI5MqrWvr": {}, "Kb1ozJLrjkqQitJn": {}}, "party_id": "R2y7EDzHWZtdgtTV", "party_members": [{"extra_attributes": {"KGLMTvWy908YBmPV": {}, "9iuoKCr9rnOj0WEL": {}, "hj3aQqoIW1BwuxIU": {}}, "user_id": "9yqEYGOkeFbd6Dft"}, {"extra_attributes": {"JJ1pDz6sx7ADXK9A": {}, "bSrA46tf661yrK0X": {}, "liaiiseHmA3bKhiS": {}}, "user_id": "E6LblwYxAsXhYkVG"}, {"extra_attributes": {"8CmiiVJu1BuA0BMN": {}, "S6qjzlHgdQV5P5X0": {}, "XVYP6JCwt9Duc9Cz": {}}, "user_id": "VsjwkLMbJq3sC9OD"}], "ticket_created_at": 49, "ticket_id": "zSCrp9TCJIJSWt4x"}, {"first_ticket_created_at": 70, "party_attributes": {"nABXIzSQWnF98MHO": {}, "ziNIiYNfMavhOoRe": {}, "QU5FtDb1pvimWAx9": {}}, "party_id": "xuEiIxsX3PWWChL2", "party_members": [{"extra_attributes": {"59eZY2GPGSIQa6sC": {}, "T8xHbeaSxn3GOpHb": {}, "tV4gsoBcJoNsJ3RJ": {}}, "user_id": "PLcLVsSIQ6SwCgge"}, {"extra_attributes": {"qMxLyqt7fNmyuCUk": {}, "9rU72kurjL5cvnzl": {}, "a94vfHieoYC6gglm": {}}, "user_id": "Zo4l0zIHXipqeMXx"}, {"extra_attributes": {"I0gy65ugtp5fvqCd": {}, "S7ptDVBI5oGGtMgw": {}, "FBZtfa4LcPsh53aH": {}}, "user_id": "m5cohMyaUAgmD8nw"}], "ticket_created_at": 81, "ticket_id": "qBZ9jnz8vSsoFZRE"}, {"first_ticket_created_at": 22, "party_attributes": {"OkdIWDInaTgU1ifK": {}, "wmvdYeKK0RRpjtdW": {}, "biCxwIOaBPeme4ns": {}}, "party_id": "vzgf6Km4w3UeVfOS", "party_members": [{"extra_attributes": {"UmIsXvBCDFVbWXXr": {}, "5fpA9GsPqMLvYVyr": {}, "xerAWSifFtpCxCaI": {}}, "user_id": "4JgxQTBDCWpZEgKl"}, {"extra_attributes": {"4Lx5XJVZQQnCzwqj": {}, "XvPJVatsFNOUusoI": {}, "OjNdAb4AxAP1ALfb": {}}, "user_id": "IqTeeXQudUIUX8aR"}, {"extra_attributes": {"CNF3oqd84m8P4gfk": {}, "FaWQxWirsCDKc94M": {}, "HVqcZroiKdiqGfR9": {}}, "user_id": "WyLGyKUqsw56NlrR"}], "ticket_created_at": 36, "ticket_id": "XJQMkUuXeAdYVNEB"}]}, {"matching_parties": [{"first_ticket_created_at": 22, "party_attributes": {"yPPzSOiQaAQGrhmV": {}, "pL4OAMnAq5IoQfbb": {}, "xBN9Q0uTO9pGXeCF": {}}, "party_id": "fwbmTBJzSSWdya7v", "party_members": [{"extra_attributes": {"wMQHAXE05mWZ9hdO": {}, "433vXwxq7LbQ7CYX": {}, "gvPiEt4DOHW6z2Zr": {}}, "user_id": "12n4pZrdMaac8ppQ"}, {"extra_attributes": {"iCSC67aCf5nRSu3D": {}, "C9sHjVdUN9vnKsDJ": {}, "wzH4h0pg5QKoTreN": {}}, "user_id": "fEPwjObmzkodsNrU"}, {"extra_attributes": {"FqaXgzwkAuNy5as2": {}, "kYUolyaPspwEkNYt": {}, "geCYHDSgD5CDGv82": {}}, "user_id": "Zb3Lceo8AbFnRRlC"}], "ticket_created_at": 64, "ticket_id": "Z04A3TSgOXh23VTZ"}, {"first_ticket_created_at": 11, "party_attributes": {"T55eV3qgBbyr6m0l": {}, "uVpNTlL9qijWtaVD": {}, "pgbGQezWVULRCUrg": {}}, "party_id": "knp47wwvoihCf36v", "party_members": [{"extra_attributes": {"gGCoNTDgnh7DbReJ": {}, "ERFXyIb6KvB7f2qN": {}, "GYjJaNqklWbaRnWP": {}}, "user_id": "RsJcEIXSg8Sdzd4z"}, {"extra_attributes": {"YKreoTnyKaH41LEH": {}, "gkpUAEJ2zQvuf7aN": {}, "lLrqGXygFqrsNgg3": {}}, "user_id": "rPuArKoHpK3UaApv"}, {"extra_attributes": {"WPC8DfH10nuxjz58": {}, "zFMrmMpVy6OCGgtX": {}, "UeoxgE8qkoKbBfZm": {}}, "user_id": "OgxwBokj03soMwLm"}], "ticket_created_at": 0, "ticket_id": "L5CUELCPs4jQtAzE"}, {"first_ticket_created_at": 78, "party_attributes": {"BCALVI86GfO6kdBt": {}, "XWJDpY9oZU4Eyyvl": {}, "X9WLE32tUxOCok34": {}}, "party_id": "ulRgA17WqHpXAEiw", "party_members": [{"extra_attributes": {"la2UOwkZHlgQC6qp": {}, "5hlMM0NkI8FtS3yq": {}, "9b4Ah0scCqOrROXH": {}}, "user_id": "h8mshbFddWfkwIOq"}, {"extra_attributes": {"WUZdxVYs1IeDmxUC": {}, "uhitZtcQNCZX50NA": {}, "9BxBKDNzzOlxRfv8": {}}, "user_id": "ZZ9cMIe8ITjzvsl1"}, {"extra_attributes": {"2wd5D9jsgPlTcYw2": {}, "sL77q3Y2bK9b79y6": {}, "g1GyoD1pzTu6gdCH": {}}, "user_id": "DRKWNlz0knbK6FAr"}], "ticket_created_at": 9, "ticket_id": "Nzr3xnSYZ42CQ9A1"}]}], "namespace": "pSPwoWde6iKC24mt", "party_attributes": {"ryHTEIB1DWQ07VAl": {}, "QhobDtUGYKqOBuwV": {}, "4K28VajzcLLsKKTq": {}}, "party_id": "gZrPJ8PuSCLIZjYW", "queued_at": 24, "region": "2B7sOhnH6vrTfEzS", "server_name": "NTHMMLpCWwrUbFhm", "status": "OBvs7wWb3tUstkcc", "ticket_id": "5QrG5WfIRNyM62jj", "ticket_ids": ["DAswQlBw9fKfWf0M", "2ZdThyuowVuRtuCT", "nJ881eD1WXbHbUdn"], "updated_at": "1994-12-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "r9Va85K6UUZfhd3m"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'H0vPoYGq1BlUQI3d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 48, "userID": "vBErdzfeWj4A2NOS", "weight": 0.4644645621543382}' \
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
    --matchIDs 'jVoWdsQpEC4zIvMX' \
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
    --strategy 'LmyVkQaFgMYXjvJW' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'SB4ThQBpjT1Pu5H0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'hFZH4oddz7wv7Bf6' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "KvTSDUEdZS60IqwP", "description": "oUfXiztkjTJMcTkE", "findMatchTimeoutSeconds": 69, "joinable": true, "max_delay_ms": 89, "region_expansion_range_ms": 81, "region_expansion_rate_ms": 64, "region_latency_initial_range_ms": 3, "region_latency_max_ms": 65, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 53, "min": 5, "name": "IUSreB8ZjdoPSzYe"}, {"max": 9, "min": 18, "name": "w7nhnFeuUU3TYhjG"}, {"max": 57, "min": 31, "name": "V2WbpGBML0xx6L2u"}], [{"max": 52, "min": 75, "name": "wgMcsPlLLnVnnsZq"}, {"max": 73, "min": 25, "name": "v1rqfsAwbpFDuRex"}, {"max": 42, "min": 68, "name": "gSMrjof4pWjpllOp"}], [{"max": 54, "min": 15, "name": "cctK4mFlqgd79cql"}, {"max": 24, "min": 8, "name": "BvB20F3dE80sEr8M"}, {"max": 7, "min": 58, "name": "WuWaxXCC0kPOvpPZ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 16}, "maxNumber": 10, "minNumber": 26, "playerMaxNumber": 85, "playerMinNumber": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 6, "min": 66, "name": "arjrVdMZkuz5B6Gi"}, {"max": 20, "min": 46, "name": "PVsBlllZ30jJ5TM9"}, {"max": 40, "min": 91, "name": "Fcs7OQo6deQA1oji"}], [{"max": 90, "min": 33, "name": "Oy7RQwQzlHwS4LQO"}, {"max": 63, "min": 26, "name": "MVTaozNvq6eBVEJy"}, {"max": 22, "min": 67, "name": "4tu74dXOSvuGhcya"}], [{"max": 53, "min": 77, "name": "VsdArjhGnvou2I3Y"}, {"max": 36, "min": 13, "name": "kc3RSblbLTUciUBs"}, {"max": 75, "min": 64, "name": "yNKwfNf0JiwkG3O8"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 100}, "duration": 18, "max_number": 11, "min_number": 12, "player_max_number": 42, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 60, "min": 63, "name": "a7hst7D3jxOPYjAQ"}, {"max": 61, "min": 60, "name": "BKCQJzPKOAkVgTkR"}, {"max": 84, "min": 78, "name": "Bh8qUQJ95qGGrysA"}], [{"max": 16, "min": 54, "name": "WFcC1QHCw1Wk6OQm"}, {"max": 4, "min": 54, "name": "yFCTRpO9rWPD5BAj"}, {"max": 58, "min": 87, "name": "Z8sRcOC9K23YgI8H"}], [{"max": 18, "min": 15, "name": "qQUal5WLOvhzIaHr"}, {"max": 55, "min": 57, "name": "wa90WKNj47BwjWzB"}, {"max": 6, "min": 1, "name": "K0NI6tZObkgdF8eV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 39}, "duration": 100, "max_number": 72, "min_number": 64, "player_max_number": 53, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 11, "min": 26, "name": "wYSTVBOK23MQBauD"}, {"max": 9, "min": 41, "name": "gkM6UCeSP58Pyhvx"}, {"max": 23, "min": 96, "name": "sJEStGzF2NIgTLAk"}], [{"max": 15, "min": 42, "name": "afPsn5dFLRfO7pPu"}, {"max": 55, "min": 12, "name": "RNgtc3IYQiEHLqRL"}, {"max": 79, "min": 17, "name": "pr0jhGhMtoRPBYwU"}], [{"max": 90, "min": 91, "name": "X0wmfPWR6thnPqNS"}, {"max": 70, "min": 9, "name": "cSWRgJ1l1gSTOxez"}, {"max": 10, "min": 40, "name": "gL8Py21OKIT7Jn05"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 74}, "duration": 3, "max_number": 8, "min_number": 52, "player_max_number": 46, "player_min_number": 59}], "batch_size": 46, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 2, "flex_flat_step_range": 17, "flex_immunity_count": 59, "flex_range_max": 67, "flex_rate_ms": 50, "flex_step_max": 11, "force_authority_match": true, "initial_step_range": 24, "mmr_max": 31, "mmr_mean": 57, "mmr_min": 84, "mmr_std_dev": 99, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "BNAMH7R7mHBRHr26", "criteria": "SHNDRABLsyUQXLSE", "duration": 88, "reference": 0.1615073327653228}, {"attribute": "SoeK9WI47L64Pqo3", "criteria": "BYfo0vjlBokwF474", "duration": 51, "reference": 0.21598669359619205}, {"attribute": "bJ8ceBAQ9RYBV3HD", "criteria": "lovqFGbbS9f3TDlW", "duration": 70, "reference": 0.8608087917121536}], "match_options": {"options": [{"name": "sdCBoQHSLOeKKtxQ", "type": "bbLZuy1V1dH5i4wN"}, {"name": "fRv0OtO65e9gOQhA", "type": "RqLatIvhBMlG6pXQ"}, {"name": "Qw1Lvc6X58v2d3Ry", "type": "EEijDpYj6BEBAOho"}]}, "matchingRules": [{"attribute": "hZQI6H9ppYlzBDSK", "criteria": "iL4KqtV6cyLq6Lh9", "reference": 0.10901170382176473}, {"attribute": "B9idJDfZ392OOVCj", "criteria": "P4tYZrutI1YiBwQV", "reference": 0.7145526071890352}, {"attribute": "6r0UQ0VF2WxMDYb6", "criteria": "Vq3c8LWMvea2SFW2", "reference": 0.09602761722381281}], "sort_ticket": {"search_result": "CtQVUxVLuwCWGCoT", "ticket_queue": "xMkzrNRaOCCKaPYb"}, "sort_tickets": [{"search_result": "P9f3AEw7RPoqF8mA", "threshold": 7, "ticket_queue": "Nc9AA0LQh9ovhsvT"}, {"search_result": "eNLV1HGCh7w3GnA9", "threshold": 45, "ticket_queue": "jIwx25GeVk1vO8uz"}, {"search_result": "KgH5oqRZ9xBhu2ND", "threshold": 36, "ticket_queue": "uw5ChlOPnJXCTHi3"}], "sub_game_modes": {}, "ticket_flexing_selection": "cOYTwvJ94edwxrT6", "ticket_flexing_selections": [{"selection": "o81JSO00IvQDv7Qi", "threshold": 27}, {"selection": "XIPpMzetYVVHAa6V", "threshold": 44}, {"selection": "PxZpboH7RxBE4VkZ", "threshold": 25}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 1, "socialMatchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'X4F3g8svrrlDCeSD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'EKLj0m3Wbli1ajZ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Our4fChyM5fHkWkd' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 29}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '3iUKz4NKMBZD43Ir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'yks4IuJheaEyytcv' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "6tbZH4gdPUJRGWxs", "count": 43, "mmrMax": 0.16390661346502677, "mmrMean": 0.39173148296974614, "mmrMin": 0.6304099940208797, "mmrStdDev": 0.5818345991276814}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'xy0hn2Qa2E8mibw8' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 77, "party_attributes": {"OfQ8roneByx8JkNq": {}, "4z0OFygGUiLAS29X": {}, "8g6NRrsyydf8HJR0": {}}, "party_id": "6dlY0AmXqr7Orc0D", "party_members": [{"extra_attributes": {"1fZFDerofwiHVbMn": {}, "MSbWLdVlBwDxO7tj": {}, "jXujBjoqxyLRdBAv": {}}, "user_id": "FQsEx4GHPghnux0q"}, {"extra_attributes": {"RG4JijDJnBlSg3YK": {}, "chMCRz2jLQtfhw8M": {}, "G0botK63E9TMFYpo": {}}, "user_id": "TD7VYgcoopiANkQh"}, {"extra_attributes": {"x0a5FlNv1xVpgPJ6": {}, "DQeIO3bVApEAViql": {}, "xYXVM95Ihb9QGQjF": {}}, "user_id": "hR4a4TySM20dmUNP"}], "ticket_created_at": 34, "ticket_id": "yU9WRdmVrBtWJSsX"}, {"first_ticket_created_at": 11, "party_attributes": {"Zx3pTmSAwaNgZVWY": {}, "mJRVeyPGe2fK2yBI": {}, "1RBgnzYCOLJ36EEA": {}}, "party_id": "pcqc2S8C1d2OqTIe", "party_members": [{"extra_attributes": {"DUAgJrr6gNnZcd6B": {}, "1Duxo5dZHscawoQ9": {}, "A41CQtVCYrKIFBPj": {}}, "user_id": "8IaDRdSBs6UPX5mF"}, {"extra_attributes": {"eZqFWf5wTQoutn3k": {}, "x50sEZU1AoPUs1KH": {}, "TuHy2Gt3gMlffssT": {}}, "user_id": "oaQ8bEo8hNejFoFS"}, {"extra_attributes": {"AIqi6HQloyv51PTa": {}, "VE1Z0zFl4Mgy3iUG": {}, "5p2VKtVt4TxThHTb": {}}, "user_id": "r3EhkZrlL1ZkNnav"}], "ticket_created_at": 4, "ticket_id": "ul0RWUWVv8sKgB95"}, {"first_ticket_created_at": 4, "party_attributes": {"HALp7dCQoRtZ4A3p": {}, "YmBdeg0okQcnN2jx": {}, "cLcKi6QOhx8SXaMk": {}}, "party_id": "b2anaWw0zIaAoRID", "party_members": [{"extra_attributes": {"50TidU6BRNA4HvmN": {}, "ufzabxOtTHKVUV8b": {}, "kPLQTnDF1hzduOIE": {}}, "user_id": "XKzz5jowVugDERoK"}, {"extra_attributes": {"dXbhlIki6A94hgEV": {}, "bvxIZXsHnZUPyCGF": {}, "71xTgXMISSkZf8et": {}}, "user_id": "oqVPOnixVL5lxtzW"}, {"extra_attributes": {"rekY0OKbYtyyO4vP": {}, "oZYmwBlaTPyG0IiA": {}, "6ba1klkgz3p7Vt0i": {}}, "user_id": "MQHaE0ddMqc43xlH"}], "ticket_created_at": 40, "ticket_id": "zlnrc5TKrCTBxJ4c"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'EDNftiapTacM2v9J' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 85}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'S9LCGsfmo2t5UKaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'LxLwRJJZzZPnFtG0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'kz30vFWXoDJVuPZE' \
    --matchID 'B1GenLXmSst6C0kY' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["wUod3upxsvqqeVMb", "zbMwOar4uGWT22mf", "8Fb1s6HjelhMuwoq"], "party_id": "NrfGVhZBFa4Ge7yN", "user_id": "K6ZoyThNB2plTZ7s"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '1a9RdOXzysE3kjqe' \
    --matchID 'Typ3PdlNOk5OV3ZW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'eysJtYxI1hFpFuON' \
    --matchID 'BGLeqk9o1Wu2cJAn' \
    --namespace $AB_NAMESPACE \
    --userID '8SS95OQZW4agUpYF' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'bfgRYph0THODaphR' \
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
    --channelName 'DPWuOQ8hZ6lSY0cF' \
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