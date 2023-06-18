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
    --offset '50' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "v67PhO2QWeTNE1ke", "description": "59zIoMzdPz1Z8qfz", "find_match_timeout_seconds": 42, "game_mode": "UB7bmgh09eNznn3G", "joinable": true, "max_delay_ms": 2, "region_expansion_range_ms": 17, "region_expansion_rate_ms": 84, "region_latency_initial_range_ms": 35, "region_latency_max_ms": 35, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 60, "min": 4, "name": "rf7fGIzGlm6xz5hW"}, {"max": 84, "min": 65, "name": "d2YdrgmTvpGtp7Rv"}, {"max": 65, "min": 100, "name": "rZHd4ZjYTXpKzfSv"}], [{"max": 55, "min": 94, "name": "Z1twVzg0RYDEROly"}, {"max": 28, "min": 100, "name": "dqI66GhQOKnXCccc"}, {"max": 47, "min": 6, "name": "4FtPWVDzcZMQXZx4"}], [{"max": 24, "min": 39, "name": "foX9ZeaRIe5Hlcl6"}, {"max": 94, "min": 5, "name": "LJQoNsbVT3E9c0Hw"}, {"max": 67, "min": 100, "name": "d5ayPE8lBZ6z3wLM"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 30}, "max_number": 84, "min_number": 55, "player_max_number": 34, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 52, "name": "UE96OQXpcy4Z53D3"}, {"max": 4, "min": 3, "name": "fAONfK2RPl1XFD8D"}, {"max": 57, "min": 11, "name": "x0hIKah2bIy85adX"}], [{"max": 59, "min": 78, "name": "W9O7gOFHf6bSf0vO"}, {"max": 20, "min": 62, "name": "9hr6JgSffna2bQSY"}, {"max": 17, "min": 86, "name": "PowteIqCB196uk66"}], [{"max": 66, "min": 24, "name": "iHIOK7gQirwD2xpM"}, {"max": 70, "min": 88, "name": "XJsXOZBAAbi1CYH2"}, {"max": 50, "min": 0, "name": "RYheLNUeUxWV88oC"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 25}, "duration": 11, "max_number": 99, "min_number": 92, "player_max_number": 16, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 69, "min": 32, "name": "rQw3iSSxnkJ8raWc"}, {"max": 86, "min": 47, "name": "BmaaYLwqGqEYRD1M"}, {"max": 65, "min": 0, "name": "oGnK7IUZoFClup7n"}], [{"max": 67, "min": 26, "name": "mYnGTLVC1ykryCvJ"}, {"max": 57, "min": 30, "name": "Al7GXn9g95cFyRN9"}, {"max": 3, "min": 49, "name": "KKYibBo9jEcC0lOE"}], [{"max": 27, "min": 8, "name": "EO5HQZKWzGfUt4Mp"}, {"max": 72, "min": 75, "name": "bQnYUR4ujnVVds96"}, {"max": 39, "min": 74, "name": "pDWp34N15H6uKe8L"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 92}, "duration": 42, "max_number": 45, "min_number": 83, "player_max_number": 24, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 78, "min": 82, "name": "JtR3GG09AHHoJBs4"}, {"max": 11, "min": 60, "name": "gGj7eoJF4XyVJUFw"}, {"max": 0, "min": 21, "name": "s3MBqrh6NCljrNKu"}], [{"max": 36, "min": 20, "name": "3JjCCP9d4qNbU6D0"}, {"max": 12, "min": 46, "name": "Ae7RPQOFI9uia6QT"}, {"max": 76, "min": 27, "name": "NSQELzDkiG9W5Fxi"}], [{"max": 18, "min": 52, "name": "gf9ja0V186SSW7AQ"}, {"max": 46, "min": 80, "name": "uAiluKhmE0ckDAie"}, {"max": 83, "min": 85, "name": "W4Y199jWm3hFwTdK"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 59}, "duration": 2, "max_number": 16, "min_number": 50, "player_max_number": 43, "player_min_number": 50}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 92, "flex_flat_step_range": 15, "flex_immunity_count": 72, "flex_range_max": 70, "flex_rate_ms": 36, "flex_step_max": 86, "force_authority_match": false, "initial_step_range": 86, "mmr_max": 55, "mmr_mean": 98, "mmr_min": 80, "mmr_std_dev": 62, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "XFkePpcLjsQw02R1", "criteria": "ho1GPgd5G42usq9p", "duration": 17, "reference": 0.0724584299173957}, {"attribute": "wL4HjvQjRwlkvymw", "criteria": "EmZqPmvfOs307Ram", "duration": 61, "reference": 0.649403481311761}, {"attribute": "Uhkls9TyruIM3S6L", "criteria": "I4bmJlVG185TBTU4", "duration": 3, "reference": 0.7162712545031849}], "match_options": {"options": [{"name": "YjRgkC4JRdjCb2MC", "type": "Z7X09e5z0GXBDUTo"}, {"name": "qt7Ng6jV34yD8soC", "type": "GDDtuM7LfY4Mc8cS"}, {"name": "VsLLi1yoybKtFlU5", "type": "r1Ksj2tAUpvyNnyL"}]}, "matching_rule": [{"attribute": "EoQW1H49oaJtaI1P", "criteria": "ieTk7aqYezjWXCqZ", "reference": 0.22591281283986153}, {"attribute": "iLXgIRxNWXDboOi2", "criteria": "pckqlKLUTOPd9oQN", "reference": 0.13534639292655803}, {"attribute": "lqC6sZYTUy2OJ7UV", "criteria": "HmZy4kEnNBOh0s7q", "reference": 0.13831637959011012}], "rebalance_enable": false, "sub_game_modes": {"q5sa7qn5Ow4BQkPB": {"alliance": {"combination": {"alliances": [[{"max": 100, "min": 26, "name": "0IpvmSE2TuIrz3Sb"}, {"max": 96, "min": 47, "name": "g55RPFqg22yU0dvF"}, {"max": 51, "min": 83, "name": "87sBx0Q7hanlYgb2"}], [{"max": 83, "min": 40, "name": "NApu8VK5OZSdbPaM"}, {"max": 68, "min": 83, "name": "vXsZ2Iy6UW2fw55D"}, {"max": 12, "min": 38, "name": "StNNyw6h9aiBAbYG"}], [{"max": 74, "min": 1, "name": "MvOc96lAHQg7B2Io"}, {"max": 85, "min": 65, "name": "MvWiVOG3UJgeR0Ih"}, {"max": 47, "min": 60, "name": "R56wVDVFRy3uNMYX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 11}, "max_number": 21, "min_number": 63, "player_max_number": 99, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 16, "min": 55, "name": "kPfND0tcOJlOA5st"}, {"max": 42, "min": 85, "name": "YlptOz6G8BKXyflz"}, {"max": 61, "min": 69, "name": "shAX7D004RMeZaM3"}], [{"max": 24, "min": 40, "name": "887fWHCjJbtMGpOf"}, {"max": 49, "min": 78, "name": "9Rx60BoE9Y24BQ54"}, {"max": 92, "min": 51, "name": "H9i0HadliiZwrcbj"}], [{"max": 95, "min": 10, "name": "82L3ywhaJvUBeAAD"}, {"max": 18, "min": 50, "name": "bJrNnM2TadgzHnri"}, {"max": 39, "min": 8, "name": "54y7yrwjN5E736hl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 37}, "duration": 82, "max_number": 4, "min_number": 16, "player_max_number": 10, "player_min_number": 41}, {"combination": {"alliances": [[{"max": 7, "min": 72, "name": "aCkRRbzHi1P9sHRc"}, {"max": 80, "min": 22, "name": "69kRDYwcJ3mFp8s4"}, {"max": 10, "min": 16, "name": "BMM1JLMiFboIVBVX"}], [{"max": 70, "min": 18, "name": "QiuCeSImfumVFiMT"}, {"max": 4, "min": 5, "name": "shuLVZyfCNrS0bbZ"}, {"max": 64, "min": 33, "name": "wVhQki2j33zQ4Rfj"}], [{"max": 3, "min": 35, "name": "SVzl0R2xUeIO1UVH"}, {"max": 71, "min": 86, "name": "JXBYlfxkBjOq333c"}, {"max": 40, "min": 52, "name": "uXRtpV8eXrq81020"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 25}, "duration": 30, "max_number": 48, "min_number": 69, "player_max_number": 48, "player_min_number": 69}, {"combination": {"alliances": [[{"max": 77, "min": 94, "name": "jyj9nqeqZN0A1EVq"}, {"max": 25, "min": 11, "name": "631FOPkUojYWJJap"}, {"max": 69, "min": 61, "name": "SSq8oRORE8Z9kkJc"}], [{"max": 32, "min": 50, "name": "qXryZUsiV2qjcDH6"}, {"max": 40, "min": 77, "name": "S6Sr3iyIEuKZNtXr"}, {"max": 1, "min": 50, "name": "3PM26Rr8TUSxDWwv"}], [{"max": 9, "min": 18, "name": "hs6NZtixjC49RcY0"}, {"max": 27, "min": 55, "name": "WIu7DEcRaiDQuaSJ"}, {"max": 3, "min": 96, "name": "63UMx7c7a183hhbT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 43}, "duration": 31, "max_number": 59, "min_number": 97, "player_max_number": 28, "player_min_number": 81}], "name": "dYGxMUD55ELVytAv"}, "caymtUfDD6lHZLpB": {"alliance": {"combination": {"alliances": [[{"max": 22, "min": 99, "name": "gR8ql7Z24kGXOANP"}, {"max": 36, "min": 42, "name": "Vvtvy4fjTeFL7Vw3"}, {"max": 67, "min": 96, "name": "gwre9qQuLcW6FR7U"}], [{"max": 76, "min": 82, "name": "y2WvwunxNxSJCl0E"}, {"max": 67, "min": 83, "name": "cvMvWx4KeYqRsmH6"}, {"max": 56, "min": 41, "name": "ziaigC0dWsuVE6Su"}], [{"max": 53, "min": 69, "name": "CpNyb1RfF8CEB9Xx"}, {"max": 46, "min": 51, "name": "B9eriGswY6xlkoTC"}, {"max": 49, "min": 20, "name": "YjR25HcLDQu3U08H"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 75}, "max_number": 17, "min_number": 27, "player_max_number": 40, "player_min_number": 82}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 38, "min": 87, "name": "oCyeUVMpTslKjxOO"}, {"max": 88, "min": 98, "name": "v2Ce2HjcvT4bWgLA"}, {"max": 31, "min": 30, "name": "inOff8HVVnsOhgjL"}], [{"max": 7, "min": 89, "name": "aTkzbfQVwO72q856"}, {"max": 31, "min": 99, "name": "lk9j35GUnx2xhlb4"}, {"max": 95, "min": 25, "name": "P2j4SG4YvERfNzMy"}], [{"max": 11, "min": 8, "name": "RpcOurDN4MO11XhZ"}, {"max": 89, "min": 4, "name": "KhoLXE7gvNoRSuzL"}, {"max": 89, "min": 24, "name": "5PMKBm6PNxKtv9hx"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 71}, "duration": 9, "max_number": 59, "min_number": 13, "player_max_number": 43, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 53, "min": 10, "name": "OXm0mWD3O7FND8mI"}, {"max": 77, "min": 48, "name": "aNuNB4LHUSD3cle6"}, {"max": 73, "min": 60, "name": "jGW5qivkvkUgELm7"}], [{"max": 72, "min": 32, "name": "hLnYl5NRWo0TI6tA"}, {"max": 38, "min": 62, "name": "YLobEAdqBIzsVSIp"}, {"max": 55, "min": 77, "name": "4549SGYnSfz9hTna"}], [{"max": 59, "min": 42, "name": "SbIao98t4Uw1Yyci"}, {"max": 12, "min": 68, "name": "8HTPUCreUmeIGErk"}, {"max": 50, "min": 75, "name": "5AiZIHgQwZfuofv6"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 29}, "duration": 35, "max_number": 98, "min_number": 91, "player_max_number": 97, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 90, "min": 69, "name": "toGI9RCvyxdTLjXV"}, {"max": 5, "min": 16, "name": "6rvar7Ar6wucPXfL"}, {"max": 34, "min": 86, "name": "lTHHdys5FDoeDgJu"}], [{"max": 58, "min": 68, "name": "jJZ8JwwPoyNFfZl9"}, {"max": 82, "min": 95, "name": "LNp4QpVFEhxDEVt1"}, {"max": 83, "min": 91, "name": "weB6VXKSZ3RvlRXv"}], [{"max": 89, "min": 26, "name": "PXls2elcOWje9yga"}, {"max": 85, "min": 62, "name": "bnzXxZEXc84l1IrD"}, {"max": 55, "min": 85, "name": "ZPlRS31p5UJTe0Hj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 53}, "duration": 22, "max_number": 42, "min_number": 88, "player_max_number": 91, "player_min_number": 81}], "name": "Zn3Iy8kYbwoEPnkL"}, "OG08ea7G4nuJr0g4": {"alliance": {"combination": {"alliances": [[{"max": 79, "min": 49, "name": "fXsPBqmJlzQ7UTZz"}, {"max": 88, "min": 99, "name": "tUuK5CYgxXe2zaHL"}, {"max": 51, "min": 13, "name": "EOItmsAIA0vI8Xj2"}], [{"max": 9, "min": 74, "name": "kbjg5b8dzTzTt8se"}, {"max": 61, "min": 79, "name": "zfcpn2JRlrF1cugr"}, {"max": 98, "min": 16, "name": "u1psRpB7gbN5nNGS"}], [{"max": 84, "min": 69, "name": "9kdmCfO9Cr3p0VHZ"}, {"max": 57, "min": 92, "name": "B7KjkY627i6r4qVy"}, {"max": 68, "min": 50, "name": "9UZQiGEnTvs98k6m"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 38}, "max_number": 59, "min_number": 7, "player_max_number": 50, "player_min_number": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 55, "name": "bKXZGx5ZSdp1TKfj"}, {"max": 7, "min": 9, "name": "W22SahNcWY9mM1lJ"}, {"max": 71, "min": 41, "name": "lWnp2dzyl4JgzPlL"}], [{"max": 0, "min": 66, "name": "xJvGaiLqVdRUSycq"}, {"max": 39, "min": 98, "name": "h44C3Knh5oEYsbMy"}, {"max": 8, "min": 72, "name": "4zpXikSNXiasjXfC"}], [{"max": 79, "min": 57, "name": "bZvtoLlJEYtdiqrK"}, {"max": 54, "min": 54, "name": "ST0Jrf6jC2BqoHPq"}, {"max": 55, "min": 21, "name": "RpV8rOH78DQcrCmC"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 62}, "duration": 38, "max_number": 38, "min_number": 14, "player_max_number": 76, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 84, "min": 40, "name": "quHn2pLXHGDOpnFt"}, {"max": 72, "min": 77, "name": "3MaALFAIBi1C86sI"}, {"max": 27, "min": 1, "name": "YZ0CgcAbDPHoluFd"}], [{"max": 43, "min": 26, "name": "xhYU4CvDIcMSjqfL"}, {"max": 60, "min": 4, "name": "jsskZTWe7hvAxSM9"}, {"max": 4, "min": 86, "name": "0iTyamo6j53xrMuv"}], [{"max": 29, "min": 15, "name": "HVblWos9RA5wx68X"}, {"max": 12, "min": 61, "name": "ay9RBv9055O3Efw9"}, {"max": 38, "min": 17, "name": "tpQ4yChlZuMkMIX2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 5}, "duration": 9, "max_number": 95, "min_number": 33, "player_max_number": 49, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 45, "min": 18, "name": "UqsQTi4vFuN4Uag0"}, {"max": 36, "min": 94, "name": "17qhzN1fifYxY1X7"}, {"max": 27, "min": 5, "name": "eg99lWoZFx2Gduqg"}], [{"max": 3, "min": 54, "name": "DrSK6T05pW40N5tx"}, {"max": 19, "min": 52, "name": "cf5DLe3x1wamPvQn"}, {"max": 37, "min": 6, "name": "dbFiq9NrDjCxN1P6"}], [{"max": 34, "min": 23, "name": "nfaIcDuDCG9LjE8t"}, {"max": 74, "min": 62, "name": "xZElgSzKapfFtJv3"}, {"max": 59, "min": 60, "name": "P6zs4MmOvZdLsnKZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 57, "role_flexing_second": 96}, "duration": 97, "max_number": 22, "min_number": 50, "player_max_number": 14, "player_min_number": 42}], "name": "Vw7F26kJxKyOglxP"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 32, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName '6zhpaiXBl59f8fbD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'TNueoo89Pvlci9L6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "aJzbR0msax0NA8qT", "players": [{"results": [{"attribute": "M46fmoTWfj0olfOw", "value": 0.22360061858813862}, {"attribute": "OodOh14zuKCh8LgH", "value": 0.01729885815542309}, {"attribute": "SD3EOzop9wyw8Fem", "value": 0.14348830727696482}], "user_id": "dVyPS551detgnsIs"}, {"results": [{"attribute": "aH2thprOuKoDu7ue", "value": 0.9280791331933832}, {"attribute": "94i5XPogcFtJ6iR8", "value": 0.5710957104873412}, {"attribute": "cag2kWjcZ6pDP5or", "value": 0.077566595902825}], "user_id": "0jfrzS2euN0hiYHz"}, {"results": [{"attribute": "VXcwR8NgfCUsANFd", "value": 0.3180713834213432}, {"attribute": "efRRyK8Ic5Fienfx", "value": 0.7355358943434374}, {"attribute": "ieBiWNtAW7syNRgt", "value": 0.439932782642096}], "user_id": "a8yVk7Fn8iKlIJny"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "6OZmjzDzAvMNGpac"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "o2BdvuPSaDX3QQIP", "client_version": "Zq5fq9UyzFaAyh97", "deployment": "S0IZOZoTUrQuZklK", "error_code": 31, "error_message": "kPjwaq1KOKsu0Yfn", "game_mode": "ygwZXdSLOvkg6Lx1", "is_mock": "d6lobX90vDZQvMPF", "joinable": false, "match_id": "Sgfn9eeQAPAca44a", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"oi15APrFcOfIPLW5": {}, "6OjnYomIxgblwGDl": {}, "Gpa7l3rv2m3EZfqV": {}}, "party_id": "MAs2rj06hvM8BBKg", "party_members": [{"extra_attributes": {"Rr29WEiOUO3W2g5K": {}, "53XtW3P3MCcxqV4Z": {}, "47s5JGstP4eRV0Ud": {}}, "user_id": "UaBklHxeP12qxcY0"}, {"extra_attributes": {"WzELT9Loi2YW03HH": {}, "zAwRvUMJZDt1N5ih": {}, "lDm95tdIJmYi0E4G": {}}, "user_id": "UvDyxluIq188eYOU"}, {"extra_attributes": {"UPKyRlj9oxNg4aIa": {}, "sqb5ymWoSvy8vYSr": {}, "Djw5uOIXv6Zg1fTO": {}}, "user_id": "jMDmxmNGaNXCHNdt"}], "ticket_created_at": 44, "ticket_id": "WV5Q4SvrPLshw7q6"}, {"first_ticket_created_at": 4, "party_attributes": {"Rl0JckYSUA1xk1j6": {}, "yctYqlGtzXyz63BL": {}, "G9v0WSxSbfigiBn1": {}}, "party_id": "F3dXCt5EugsvE4AF", "party_members": [{"extra_attributes": {"MqPrL3bVpCXumNo1": {}, "LUtIpW8O0dghhrur": {}, "meprS0qhpFobbtQL": {}}, "user_id": "0rRD6Xyg2jyQzdWi"}, {"extra_attributes": {"hDomNAJSFWX4Ftw5": {}, "4gHXgzKG21uZ0gR0": {}, "uLmpGyzHpK6G0hs2": {}}, "user_id": "ZHVUGIT9dS8wsOBT"}, {"extra_attributes": {"8aak98Abj5sUg2iq": {}, "fdYIuz0nRvpeJSQH": {}, "TewBsi0p7kS2qmF2": {}}, "user_id": "jYTOSciadzZaoXBN"}], "ticket_created_at": 82, "ticket_id": "nzYw2M3vF60zjzI3"}, {"first_ticket_created_at": 31, "party_attributes": {"xOMgOhpWCDj3Pges": {}, "ujajo8x5Mc3bqci7": {}, "qmwkmcr0gzQxHkN0": {}}, "party_id": "K0GUj8SIcbiv8tYh", "party_members": [{"extra_attributes": {"txJbtWhqmGsi53TZ": {}, "9SxfcyjAfq9Vk8Ul": {}, "AFMuKVUQqIPZp6sJ": {}}, "user_id": "xMY3qsGtRWBUYQXt"}, {"extra_attributes": {"iVHAsGrWu3yLTJEf": {}, "Xfq3O9i16Djd3MGe": {}, "kRIdXraUMXLJukil": {}}, "user_id": "8QdogfjLVvFRnxYA"}, {"extra_attributes": {"ARFzc96m0EaRlokj": {}, "VgTB1nzFxZ32bVe5": {}, "9ch99ecp1iPCBSut": {}}, "user_id": "Qw4YUAIQbBMgWDXA"}], "ticket_created_at": 63, "ticket_id": "wJLZpunSCakn5eem"}]}, {"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"xtq5KeW4IjlbdVDi": {}, "jFej9rUc6NqUIsgt": {}, "aYIZjpQak6I4oWeF": {}}, "party_id": "qyetuT5ufYNXL4IP", "party_members": [{"extra_attributes": {"l9w3nwOgmqNt2SY1": {}, "WiyOzc34uNTMl1k7": {}, "cvIvRnpWnGBvhMaB": {}}, "user_id": "lwB4HZ07t5dHFhdO"}, {"extra_attributes": {"9HoREvEDx7fO0UA1": {}, "Rj3k9RIIp1HwslV8": {}, "rpQPzzWzCZNzfFrW": {}}, "user_id": "xoOV4e4ioQCtpVAs"}, {"extra_attributes": {"VpVDzTamYCYi1fuv": {}, "cjfUJQRsU0IJ3Kuu": {}, "AOouiBhSvlJ9ECJd": {}}, "user_id": "kh9HZEvAHpnafwVc"}], "ticket_created_at": 72, "ticket_id": "4VQvpjZuFz1Antr1"}, {"first_ticket_created_at": 82, "party_attributes": {"2BpWPPBtguCLBXA9": {}, "gAA5BksATTKFeAEw": {}, "A1iFZP80ZmcGrwyX": {}}, "party_id": "dimEV39e9uGPT5Ql", "party_members": [{"extra_attributes": {"chfb5rlBgPJspKtf": {}, "ulGRCFJLpxVs2ISj": {}, "NFAecwI0d5zZbD4C": {}}, "user_id": "WUiN1CNH9Lz9vzYh"}, {"extra_attributes": {"vpoXPLv8AjzKTW9w": {}, "aM938LEktK3la1Z5": {}, "2yhAtLPDdl10AmMD": {}}, "user_id": "F756lLBurISq9RoT"}, {"extra_attributes": {"dligzihpBrfwydYK": {}, "xsQrweWUKOAJ3rwR": {}, "f1fJlbzdKKvrxVpS": {}}, "user_id": "kzIzfAsuzESmrInp"}], "ticket_created_at": 46, "ticket_id": "mllDWxFI3Wawp5LC"}, {"first_ticket_created_at": 17, "party_attributes": {"Se775HT5jHdGScqj": {}, "WFBsN0N7H2sIexMt": {}, "ZZePTGp8bHolaY7B": {}}, "party_id": "KWBJpXfSQSu2nlPn", "party_members": [{"extra_attributes": {"o0nfTr9AVzYhCL5Z": {}, "SdLwQT6LUbIi9tsF": {}, "sI2bsmn1j8P3DyiM": {}}, "user_id": "xvU1dz7JITOqWHe3"}, {"extra_attributes": {"UjrWf26MZeU5Ih8a": {}, "rXEtesL8EbSjr3ya": {}, "t05wCFpSvTOBQsk6": {}}, "user_id": "2rflKkNUtKtr0alv"}, {"extra_attributes": {"FIVcJefa7EME0dke": {}, "PXq0wzfvllqWJ9YJ": {}, "IS78Nozw2FwpqGy9": {}}, "user_id": "3jerqZHiXKuXNrGe"}], "ticket_created_at": 95, "ticket_id": "E5MNouiwt1UslQ6u"}]}, {"matching_parties": [{"first_ticket_created_at": 14, "party_attributes": {"5LGWmUCDalsctD0v": {}, "oP6rfzlujU0Z0isU": {}, "ZsQP40xrXgUQ4dAa": {}}, "party_id": "na5ZYrL7aTLkEki7", "party_members": [{"extra_attributes": {"dXjKV0b2NrqDc49I": {}, "vqzQgKoGq2tynN1N": {}, "qhF6Zkk9L7KkKqLa": {}}, "user_id": "RyPE9ZofzmyYtBep"}, {"extra_attributes": {"qgWSHLDymNaH3Wnu": {}, "fLE2CmaZvjrONcLX": {}, "RXPzj964rXNWVv7U": {}}, "user_id": "l8zZegpRlnI1rXfL"}, {"extra_attributes": {"ZtpCX4lAsnZ5jqNM": {}, "zQFG3dwRx3BnedE1": {}, "7hx7BRGVOHtV1RSy": {}}, "user_id": "ilB40AYwD4nj7glW"}], "ticket_created_at": 89, "ticket_id": "AENyojEpXjwSm6XU"}, {"first_ticket_created_at": 92, "party_attributes": {"n1IrgqxZYmksETJ8": {}, "9kE3KtQnMjzul9Z1": {}, "8S4CmwdvyGQ7ugA6": {}}, "party_id": "Z9Qryw2XtFid0E6D", "party_members": [{"extra_attributes": {"tBp8Qku5sSVCiVji": {}, "MELRTrjH4sWjzcaM": {}, "W98PxmOr3DV1VWIU": {}}, "user_id": "UZWOKjuKGH2KTmAb"}, {"extra_attributes": {"bt7VACejwAc5T3Qs": {}, "QT0855fT2u9Yqxx8": {}, "TuvgEBsXjgByL9af": {}}, "user_id": "ww0OtzTsVMmM0kc0"}, {"extra_attributes": {"J5Q9wZpkh1st8V4k": {}, "pNBWlroZBUkFW2Vo": {}, "LXdGo4TcuMknujX2": {}}, "user_id": "88Asz9YBOTwNYegz"}], "ticket_created_at": 86, "ticket_id": "5nll4MdjKBGKHxjo"}, {"first_ticket_created_at": 47, "party_attributes": {"BfDHSVvEyz2om7kf": {}, "4ZrAUnucyX5Eypai": {}, "G70k136oS7d7ADQn": {}}, "party_id": "mXqGkAKaXYF1TJLm", "party_members": [{"extra_attributes": {"Wv58XiUsaGjNeKF8": {}, "VgZ7qA7bCaWc2iX5": {}, "mhG11eTM29ugJ4Gd": {}}, "user_id": "w3WgqYuZHvDivzny"}, {"extra_attributes": {"wkcIkeceqJdN3Jg3": {}, "n0TOzOwIIhzZijDE": {}, "2QFN5QKCe6FXNNlO": {}}, "user_id": "IhBKVp61fYSHQ9PL"}, {"extra_attributes": {"2b7v2ij4bZGg128D": {}, "paQzB4bpAcKs804w": {}, "xgze7HXSNNqzXd6I": {}}, "user_id": "xDjKX5SmnUM4muBW"}], "ticket_created_at": 10, "ticket_id": "f8nv861Rb8ovRWjh"}]}], "namespace": "WdZ5oYTaG5v4sOv5", "party_attributes": {"uxAQC4wc53JSfQ0I": {}, "jVU8lTHj7qV4Gbzf": {}, "69ApzepgPwjSLWFz": {}}, "party_id": "Nj6HtlljoeIdU0sH", "queued_at": 68, "region": "GMk9uoxsofcsHKgF", "server_name": "RnUXeGJVIruQcqhW", "status": "hr7YtC7kM02vdPz3", "ticket_id": "KmWVtuXbYM7gyLR8", "updated_at": "1998-01-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "uoKnhUADUqnWqSql"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'gXHuVZYIULdeAD6p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 26, "userID": "v1idQvuhow2YRMJz", "weight": 0.5737135021680824}' \
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
    --matchIDs 'l0QWEdt6QRG9MTcf' \
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
    --strategy 'sXeVGmBmCk5AUfLN' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'sS9q3izl6vNGxcJd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'IMVqKPVLQXrVMwyb' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "TI5aydHnwmrR89sj", "description": "pqD6emthhPzSb4Me", "findMatchTimeoutSeconds": 30, "joinable": false, "max_delay_ms": 91, "region_expansion_range_ms": 47, "region_expansion_rate_ms": 63, "region_latency_initial_range_ms": 77, "region_latency_max_ms": 27, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 58, "min": 10, "name": "TYxLBvnQO4PJWlfy"}, {"max": 1, "min": 90, "name": "tMB5q8qmczGPxtdr"}, {"max": 37, "min": 47, "name": "JirZu2aMJYhKLd4W"}], [{"max": 49, "min": 1, "name": "TPxHiMpnzChL2nBq"}, {"max": 19, "min": 83, "name": "FjdwTeedfpxy3YIv"}, {"max": 35, "min": 22, "name": "lQ9JaYgSozyEyZf5"}], [{"max": 21, "min": 65, "name": "MIrHTGgjIsrpCkji"}, {"max": 80, "min": 41, "name": "8FqhvpkNJ54A5mFk"}, {"max": 50, "min": 45, "name": "SOMGSTVffoA1YJKI"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 81}, "maxNumber": 34, "minNumber": 26, "playerMaxNumber": 65, "playerMinNumber": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 54, "min": 56, "name": "bjh8xoqLtSPsuVmi"}, {"max": 32, "min": 31, "name": "EzSDmmQIpmBborX5"}, {"max": 42, "min": 42, "name": "Eyza9mC7smKnlQqy"}], [{"max": 86, "min": 9, "name": "Iy0EyWzzVLtZbBLn"}, {"max": 70, "min": 74, "name": "zQU867DRh9HRPy4S"}, {"max": 41, "min": 53, "name": "lOYFiTada2ihqPG7"}], [{"max": 77, "min": 4, "name": "urgoVNU1tegWGEo1"}, {"max": 72, "min": 17, "name": "fN1jclW863AqXaMl"}, {"max": 30, "min": 81, "name": "gfcIqthTWQRFSvwd"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 100}, "duration": 35, "max_number": 52, "min_number": 45, "player_max_number": 24, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 58, "min": 52, "name": "4Xoe2tpAglddeWbh"}, {"max": 28, "min": 58, "name": "9nUpHfreLogux96V"}, {"max": 64, "min": 8, "name": "2WgUDUB2nt1juci0"}], [{"max": 15, "min": 47, "name": "VgqlJavLzH3ZYcde"}, {"max": 1, "min": 24, "name": "V2sHLQdpt8wkaGBk"}, {"max": 15, "min": 47, "name": "Bpro1YiWgmK5ogAg"}], [{"max": 100, "min": 71, "name": "Jt9ZCoVE3QT8T6oc"}, {"max": 36, "min": 58, "name": "3rMIUW1mRhzFssF3"}, {"max": 15, "min": 44, "name": "h9HsHydk8O1m5R0Y"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 13, "role_flexing_second": 5}, "duration": 42, "max_number": 81, "min_number": 48, "player_max_number": 63, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 5, "min": 13, "name": "cQxQt24s9XmB6yHT"}, {"max": 55, "min": 85, "name": "nbFfgXNhjMFCPmdq"}, {"max": 50, "min": 99, "name": "Po1IpuOrrKURWMUc"}], [{"max": 41, "min": 76, "name": "767g7YFcttXREpJw"}, {"max": 98, "min": 44, "name": "B7d0c8tqcaVYxjgQ"}, {"max": 48, "min": 81, "name": "PKEf83uhYEPDBLiM"}], [{"max": 50, "min": 56, "name": "r7w82pDoBkVcimus"}, {"max": 16, "min": 15, "name": "0zDvg66mMQXsSNx4"}, {"max": 35, "min": 48, "name": "AFpjawVRnzrSTzBP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 66}, "duration": 81, "max_number": 99, "min_number": 100, "player_max_number": 94, "player_min_number": 85}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 46, "flex_flat_step_range": 85, "flex_immunity_count": 59, "flex_range_max": 53, "flex_rate_ms": 54, "flex_step_max": 17, "force_authority_match": true, "initial_step_range": 33, "mmr_max": 4, "mmr_mean": 35, "mmr_min": 23, "mmr_std_dev": 57, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "fPqoDX0Mx5FrLDKK", "criteria": "GU4WKuv1bLAZubhn", "duration": 33, "reference": 0.7245562500573614}, {"attribute": "w48mzCCv7YlF8PBk", "criteria": "OQDlCVccTbeoOgRf", "duration": 56, "reference": 0.47572714452947396}, {"attribute": "4jytLzitOARLTaHe", "criteria": "kfcqib87dnm9KgbD", "duration": 49, "reference": 0.4549211842446428}], "match_options": {"options": [{"name": "BP2p7NtQBAQSHJYJ", "type": "C0NzdAAGRBdjSbWZ"}, {"name": "vRdmkRfPIwMLjZGG", "type": "ZEg5WMkNyR7ogyXM"}, {"name": "5hZfOZRPaARLiMN6", "type": "mguFTWNtg1XH6qc3"}]}, "matchingRules": [{"attribute": "uW0AKuJYofp1eeNC", "criteria": "y4AqEwInGEUsDFqw", "reference": 0.6098228559978325}, {"attribute": "kQ9MWlmFlg4BOncO", "criteria": "dJYmmdi24vsggh5S", "reference": 0.6020953821215044}, {"attribute": "3VqCnKIYx9MTLC9E", "criteria": "VBxorUFgDbhi0ODT", "reference": 0.7605806261366823}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 28, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName '7mz1XYTT6T3StLyz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'pKACYtDNVRglOMAC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'vSJTAUTbBdYa3jMG' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 50}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'PUH4uG7TvvfBVqN9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'cxau7PStQSmUhbab' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "OdPXrM95cyjR5uq7", "count": 58, "mmrMax": 0.4042260409375634, "mmrMean": 0.9852805315909248, "mmrMin": 0.4956357060501799, "mmrStdDev": 0.6634689179836221}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'IqnYuMzCTODYVYAY' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 19, "party_attributes": {"znvkWrwzl8TMIDKd": {}, "s7J6yLi7g49AYub6": {}, "3nOd2AAoR4ff8eLM": {}}, "party_id": "wTgcIwLHTsjjstYE", "party_members": [{"extra_attributes": {"VeiuIHFuf68DV78p": {}, "jZn0MNrtvMKt91Q9": {}, "G9ezfbatrT34ryQS": {}}, "user_id": "9G7srlmsWSeTMS47"}, {"extra_attributes": {"fbkbZRBZMNaKF0BU": {}, "mynf2XNhPHs2MVr4": {}, "CQeBPGio0R2686bA": {}}, "user_id": "UjHFD3KnjKGP4ant"}, {"extra_attributes": {"hcesoSEoRDKBIrig": {}, "glaQJP7RMoExUygo": {}, "JYeBBmlXNtucbTj0": {}}, "user_id": "RmlxrOhgtqw8rZpo"}], "ticket_created_at": 96, "ticket_id": "lkI9w9qFXf0s3DHZ"}, {"first_ticket_created_at": 78, "party_attributes": {"4zFXPNloNztCiwz4": {}, "vvWPIUiOGwhsRRbU": {}, "6zrA7r6umwGygHXt": {}}, "party_id": "SqAZARKSJkwiGg84", "party_members": [{"extra_attributes": {"lvomUMri5xlcrnPI": {}, "wK8WNtS01ZsTjEsw": {}, "sZ9AGAvpLFQgL8Sq": {}}, "user_id": "XB9Qr5VX0JGn6bNx"}, {"extra_attributes": {"XHwTvDLgXOfSG7Ay": {}, "LAcKoBKg51t7HQkt": {}, "nueWPhhmBiIirJfB": {}}, "user_id": "nAiMrlzrH8jIx4NW"}, {"extra_attributes": {"ZmEKBEubQvErTCwG": {}, "JqpwBHWaQlIspsiT": {}, "oxC3jt3K6lFXeEK8": {}}, "user_id": "b6XEeXHv42uCtbfO"}], "ticket_created_at": 57, "ticket_id": "Rsg0kYyL55ZNii1l"}, {"first_ticket_created_at": 89, "party_attributes": {"XBNCTyW0oQ5t9iot": {}, "9BcbdXcxLR9MXcwA": {}, "GeoF8CtTp1liyiMQ": {}}, "party_id": "fhfkHVGRRyM3pIzN", "party_members": [{"extra_attributes": {"ncS2Ykat7qd2NZw1": {}, "cxovwDLahRWTXA3L": {}, "jXOiVppfHkOGB3mu": {}}, "user_id": "FsQjcYUHxPk6o0xT"}, {"extra_attributes": {"T2E9LdHrqczIFWDl": {}, "DTae0jq89pOz50NO": {}, "LZ7AlJwNjDxSvOD0": {}}, "user_id": "kHrIwDcu6lJLiQfI"}, {"extra_attributes": {"cr513ChX6zKxPDHV": {}, "Gl6cFGPdgp62DRZ9": {}, "vOuAS9GuOA3Mgfx2": {}}, "user_id": "wUh9f2iGoPGhGbVq"}], "ticket_created_at": 80, "ticket_id": "bNsBVtlGBwxe49ak"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '7uLib5JIy1iEMwVa' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 37}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '3KboI5etuwliMvMB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'nbtfMZrO1TNaJr3v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'J2B7KUlaMe7zxE6T' \
    --matchID '3kERvKz3lJKdF1Wt' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["JFSA8awTrifPV1ZO", "eW2HRYGBile0cqFM", "nxysVb8O76pkeqDb"], "party_id": "s0Wy4wpF9W4knFU8", "user_id": "9sAED2MmqxFlOsTX"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'yqF8pGkbfJZX7yPw' \
    --matchID 'WfeckZNyn40teMKN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '0ZC6r1mYRMEqZqaD' \
    --matchID 'BcGyjaYj5muEHVHO' \
    --namespace $AB_NAMESPACE \
    --userID 'HL3fRhPnkz4Im3RB' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'ReVZYuccKgy6cCJK' \
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
    --channelName 'yGZpEf5eswMmzzwe' \
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