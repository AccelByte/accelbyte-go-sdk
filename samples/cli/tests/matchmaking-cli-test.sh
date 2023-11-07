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
    --limit '51' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "tIatj31gB40XvdWF", "description": "zZfAiWHn0QglUs82", "find_match_timeout_seconds": 58, "game_mode": "7yodkYMAE5yMxhKC", "joinable": true, "max_delay_ms": 40, "region_expansion_range_ms": 55, "region_expansion_rate_ms": 99, "region_latency_initial_range_ms": 23, "region_latency_max_ms": 59, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 37, "min": 32, "name": "yp6RkkicCk2bIvgd"}, {"max": 67, "min": 22, "name": "utSdVTf1NfvbA3Vj"}, {"max": 8, "min": 94, "name": "09MGtgTzmuFAYlam"}], [{"max": 93, "min": 48, "name": "ElrONPHkOz1ZHv9x"}, {"max": 98, "min": 59, "name": "w0dV4fGfK7WvmtCz"}, {"max": 63, "min": 41, "name": "8Ob6vMC4M30MTykd"}], [{"max": 80, "min": 9, "name": "WgoRWkMqGkWw1zoM"}, {"max": 72, "min": 47, "name": "g6JDVCLP9fRNmoJY"}, {"max": 14, "min": 53, "name": "UMYEqdWymKown8Zl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 79}, "max_number": 75, "min_number": 54, "player_max_number": 69, "player_min_number": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 77, "min": 92, "name": "MEBbnYOVn6CRuyTa"}, {"max": 94, "min": 27, "name": "fYuvmP3D47KHTWgG"}, {"max": 8, "min": 12, "name": "A7OSohWYxJ5nZURt"}], [{"max": 34, "min": 83, "name": "kk4WLLfMClZd7Hsh"}, {"max": 96, "min": 38, "name": "luyzwct94GzAUxot"}, {"max": 12, "min": 78, "name": "Y6dsJzvQNoDa2I8V"}], [{"max": 52, "min": 56, "name": "8Cv8gwRFwZvUmvbh"}, {"max": 42, "min": 81, "name": "m6ecLGzyRGSuP220"}, {"max": 84, "min": 49, "name": "pna4pblz3kufPe2y"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 58}, "duration": 76, "max_number": 1, "min_number": 45, "player_max_number": 4, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 52, "min": 61, "name": "9unxj5sFAVh8i7NW"}, {"max": 76, "min": 87, "name": "l32v3RkMciCQTMDz"}, {"max": 22, "min": 88, "name": "jxaIU8BbV7JWkLnl"}], [{"max": 45, "min": 21, "name": "jAeNmsQxQ3cwR4ba"}, {"max": 28, "min": 0, "name": "IWXsj3nKRuzAc4ou"}, {"max": 56, "min": 74, "name": "JVmQZlurRmYmIteq"}], [{"max": 44, "min": 25, "name": "GQnnelei78snjCeA"}, {"max": 18, "min": 50, "name": "JKZGghJPekDHELtg"}, {"max": 82, "min": 51, "name": "nBkBj425lBY9vDog"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 80, "role_flexing_second": 9}, "duration": 47, "max_number": 27, "min_number": 23, "player_max_number": 97, "player_min_number": 33}, {"combination": {"alliances": [[{"max": 83, "min": 17, "name": "be6kHDvil2PGkaFo"}, {"max": 19, "min": 74, "name": "2UmOC4eLPbxFQBv1"}, {"max": 18, "min": 75, "name": "W2of72liVVEU7V82"}], [{"max": 7, "min": 39, "name": "fWdOPTSwMd9IoMc8"}, {"max": 61, "min": 0, "name": "Gwnya43mf4sxKqwt"}, {"max": 89, "min": 72, "name": "y1rgUXtBA2HFyQH0"}], [{"max": 90, "min": 12, "name": "H1KU0zjYqn45anRB"}, {"max": 46, "min": 71, "name": "MQlLp5Tf0SOf5YgA"}, {"max": 79, "min": 85, "name": "Ripcp7MFF5eLJF5J"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 45}, "duration": 88, "max_number": 10, "min_number": 72, "player_max_number": 23, "player_min_number": 32}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 46, "flex_flat_step_range": 78, "flex_immunity_count": 9, "flex_range_max": 32, "flex_rate_ms": 43, "flex_step_max": 59, "force_authority_match": false, "initial_step_range": 17, "mmr_max": 22, "mmr_mean": 36, "mmr_min": 94, "mmr_std_dev": 41, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "Idq6hZScISiqjkU1", "criteria": "OCNjZK1UyI8ZyN6e", "duration": 71, "reference": 0.41807153035814315}, {"attribute": "BChYnmwX9RDETwss", "criteria": "G8429JY21cI8FusR", "duration": 15, "reference": 0.4932583551717086}, {"attribute": "TTrsEvs3Pd1fUGY1", "criteria": "jxFbDoEqtJ4Tpmuu", "duration": 64, "reference": 0.3182613025193777}], "match_options": {"options": [{"name": "qs2tLnlJmSplKnKS", "type": "WQT8ZcV51bw7T8ZP"}, {"name": "sc0AkqIfppnNn3vi", "type": "tOQv7O9geuzU0g2J"}, {"name": "mPlxYctQBn1dB5gE", "type": "ZZArfkiu2yblv0iQ"}]}, "matching_rule": [{"attribute": "MNvfa3sa19IOfuGV", "criteria": "twbchSUDcnIgGZ0x", "reference": 0.9504973624584571}, {"attribute": "wLHjWZ6pon7YqwqU", "criteria": "1T0Q30IvnxxfbD2X", "reference": 0.30356946571457577}, {"attribute": "hvJavOMLgXx3R4jd", "criteria": "8FRZTU52TeRGstEW", "reference": 0.5414344541041805}], "rebalance_enable": false, "sub_game_modes": {"sTWWNuEk4rjojcFY": {"alliance": {"combination": {"alliances": [[{"max": 33, "min": 79, "name": "1iy0vVyxQdXcvCjk"}, {"max": 85, "min": 29, "name": "8aVAFnuBbc4eQY7k"}, {"max": 25, "min": 39, "name": "H4jKx0GWCOGB6vBE"}], [{"max": 5, "min": 82, "name": "5yHj4V7YO3Qm8QOx"}, {"max": 17, "min": 67, "name": "ZX6MAPbzk04JtDbH"}, {"max": 55, "min": 0, "name": "BTmlaVHE6mXNLX5h"}], [{"max": 55, "min": 9, "name": "Sk4Gr1u4beRAj1ct"}, {"max": 19, "min": 95, "name": "9leSSxegw8hSb2Cn"}, {"max": 7, "min": 29, "name": "O786mufnrJxqAL0o"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 37}, "max_number": 34, "min_number": 51, "player_max_number": 39, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 33, "min": 81, "name": "0QILwJtiQ9zjJzIT"}, {"max": 71, "min": 100, "name": "jHG399lRShvyVZ28"}, {"max": 45, "min": 70, "name": "FkkvcAZ59LcdBrYM"}], [{"max": 11, "min": 19, "name": "aTi8biFDYdAGImp2"}, {"max": 25, "min": 28, "name": "XsN2ik00hajEhqMh"}, {"max": 31, "min": 45, "name": "WqBD5LtwGbPTeFUo"}], [{"max": 71, "min": 6, "name": "qGDhThsPfHHzULmH"}, {"max": 0, "min": 99, "name": "6vDz7eAPZleNUAmK"}, {"max": 47, "min": 61, "name": "rJ5Xi8cVELuesd8m"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 3}, "duration": 41, "max_number": 54, "min_number": 8, "player_max_number": 36, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 3, "min": 81, "name": "lRtx1ev2FhMKrWMq"}, {"max": 47, "min": 65, "name": "HH2VJBGEWB7pOqr2"}, {"max": 61, "min": 46, "name": "rnHk0CKfwyF3efEV"}], [{"max": 48, "min": 2, "name": "S9TRwC4oyTkNztPy"}, {"max": 43, "min": 41, "name": "kL8eM1VBYXEvv7Bi"}, {"max": 36, "min": 76, "name": "c2uwflSYQFWDXZPy"}], [{"max": 7, "min": 46, "name": "rNS0qdcOlOfsNiLs"}, {"max": 54, "min": 17, "name": "pG6T8ioM68Xds9LF"}, {"max": 88, "min": 4, "name": "ccM87QEkcmxaFPkg"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 48}, "duration": 1, "max_number": 26, "min_number": 2, "player_max_number": 9, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 83, "min": 69, "name": "DURCApNjMiPEtCQB"}, {"max": 44, "min": 3, "name": "ZRzWU2nIxPnRe8z2"}, {"max": 68, "min": 11, "name": "4JhTvwlX84XjVDyf"}], [{"max": 95, "min": 49, "name": "rq8uMeXsySkHCSWI"}, {"max": 66, "min": 28, "name": "CAIaLydR0aja5kRl"}, {"max": 28, "min": 68, "name": "uLnDYYJwrkZg2uJq"}], [{"max": 10, "min": 43, "name": "8XQHVS25nbU4t771"}, {"max": 52, "min": 34, "name": "BGVgva6UwLgb1A4a"}, {"max": 69, "min": 89, "name": "rJ4F7HlDe6WPxRuK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 17}, "duration": 63, "max_number": 81, "min_number": 61, "player_max_number": 22, "player_min_number": 75}], "name": "cC17fuyzJLKD5TvK"}, "84JF96QMIXpuz0Ot": {"alliance": {"combination": {"alliances": [[{"max": 0, "min": 75, "name": "8WjwCEwmejHAabOt"}, {"max": 38, "min": 52, "name": "0C0nSeugZ5PwYOIl"}, {"max": 17, "min": 55, "name": "Lbjv05bsqVH76ITb"}], [{"max": 74, "min": 86, "name": "QyDh3T4qec7Ct6Q5"}, {"max": 76, "min": 38, "name": "bwwBfgpGuRmHjJXJ"}, {"max": 80, "min": 19, "name": "jqv53Bw9ZnR4i22q"}], [{"max": 42, "min": 70, "name": "VLdY2q9C75BNcK6M"}, {"max": 57, "min": 24, "name": "IiTKLpy8LRcSOtHy"}, {"max": 31, "min": 90, "name": "qpEJ6iBkcUaoswyZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 38}, "max_number": 19, "min_number": 93, "player_max_number": 83, "player_min_number": 87}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 33, "min": 31, "name": "3zPFg6SmduQtootE"}, {"max": 89, "min": 87, "name": "ONtSEpPO0aZKQywh"}, {"max": 38, "min": 9, "name": "6JxUn99lQeDUAgtH"}], [{"max": 67, "min": 0, "name": "VGr3dC1Vofjzk9A4"}, {"max": 75, "min": 77, "name": "5V3N0f7MRywm6tSs"}, {"max": 64, "min": 87, "name": "Ynk4ZoO6nOPLLNIx"}], [{"max": 7, "min": 10, "name": "3htiNhMLkeVt7hwK"}, {"max": 4, "min": 93, "name": "v9xlUrWHE7urTYLZ"}, {"max": 0, "min": 73, "name": "cNoc6mj99UV9uTia"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 24}, "duration": 0, "max_number": 71, "min_number": 89, "player_max_number": 7, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 79, "min": 6, "name": "nlrL5Z0jembN1j1d"}, {"max": 62, "min": 83, "name": "XuI8pGiLSmgOjkR7"}, {"max": 1, "min": 3, "name": "9H9PVAIq9xivf1en"}], [{"max": 91, "min": 44, "name": "3CK3o2mlnPZQodXU"}, {"max": 11, "min": 85, "name": "pueT4D6skNtJdHbt"}, {"max": 69, "min": 93, "name": "zr34XWUcVrMQr2TS"}], [{"max": 59, "min": 38, "name": "0AjUvw3nTIhibhfx"}, {"max": 56, "min": 63, "name": "r1y3khR6rIEi8F1H"}, {"max": 88, "min": 63, "name": "gVEInhIK1fwLJSZ4"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 53}, "duration": 14, "max_number": 88, "min_number": 33, "player_max_number": 39, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 66, "min": 25, "name": "3Mv22XtrcnVlraze"}, {"max": 96, "min": 73, "name": "zuoTNMYkPedi8SAo"}, {"max": 27, "min": 14, "name": "ODha2pa45C30MsZx"}], [{"max": 25, "min": 72, "name": "eb4A637iMSUs1U7R"}, {"max": 93, "min": 27, "name": "qq7AO21ON2BGIovx"}, {"max": 59, "min": 52, "name": "2d4sDl7fbz2LR51n"}], [{"max": 33, "min": 39, "name": "C8DCAjg1YepfS7zN"}, {"max": 47, "min": 62, "name": "jlOWKsBzkxQuWmng"}, {"max": 13, "min": 22, "name": "76OL7BUGBPDK0WRY"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 86}, "duration": 3, "max_number": 72, "min_number": 11, "player_max_number": 3, "player_min_number": 64}], "name": "cdpQMHiLQ1kWkQlz"}, "zeyacTfuomjiNFDW": {"alliance": {"combination": {"alliances": [[{"max": 22, "min": 0, "name": "a7GItZ0XyQDpp5Gh"}, {"max": 33, "min": 88, "name": "krk4KziXXpPKscCp"}, {"max": 98, "min": 42, "name": "1Xlfdvp7NobdlItj"}], [{"max": 10, "min": 11, "name": "QEToOKtx4kRsfzKx"}, {"max": 89, "min": 51, "name": "YlW6FRWqUQkr2lLR"}, {"max": 6, "min": 28, "name": "9m1ggf2M6qLbkuUb"}], [{"max": 47, "min": 25, "name": "TwfhSZHamFkiN1O7"}, {"max": 82, "min": 15, "name": "8EhnIY46bznNmF0Q"}, {"max": 11, "min": 35, "name": "H3QimbpgtZSIHpEj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 59}, "max_number": 82, "min_number": 84, "player_max_number": 64, "player_min_number": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 18, "name": "xeu9H89yJEbtk3in"}, {"max": 69, "min": 73, "name": "xx1lbIUt8Dmt3dBs"}, {"max": 38, "min": 91, "name": "avahdmxrUgYPBSDM"}], [{"max": 60, "min": 45, "name": "lxbdB1PKZfafD11z"}, {"max": 74, "min": 59, "name": "pfxi2rNDfepy4jGZ"}, {"max": 63, "min": 94, "name": "FASKQyJEZ6TcwkIK"}], [{"max": 92, "min": 71, "name": "NGBVovx3kXwxj08X"}, {"max": 2, "min": 96, "name": "dcC4vdTAjpCDtxh3"}, {"max": 92, "min": 100, "name": "SDjfoyoHPcnPYEkI"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 40}, "duration": 100, "max_number": 25, "min_number": 47, "player_max_number": 97, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 36, "min": 7, "name": "baNIFE4JKDEXb9sk"}, {"max": 47, "min": 15, "name": "Zhd7iZdr3AA3pM1R"}, {"max": 21, "min": 94, "name": "ltM9I7NtskXB0MjK"}], [{"max": 65, "min": 2, "name": "EW0FVkVprKMM5sMX"}, {"max": 62, "min": 13, "name": "8TKYTNdsupSMmfHD"}, {"max": 44, "min": 26, "name": "YMnrD5bEG1C2zC8g"}], [{"max": 57, "min": 99, "name": "N1n2IlkaCarS3vaO"}, {"max": 61, "min": 30, "name": "NKtUuK4vlSaHLyQ1"}, {"max": 20, "min": 34, "name": "djDmYTLUTFvkE6ww"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 12}, "duration": 69, "max_number": 27, "min_number": 23, "player_max_number": 87, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 41, "min": 69, "name": "383YWMVPObfcJutf"}, {"max": 51, "min": 95, "name": "aiOqjJ9UNjkohwup"}, {"max": 95, "min": 57, "name": "EOmxf52OPHtuzaoR"}], [{"max": 76, "min": 75, "name": "SjW4tokuFgz5vtue"}, {"max": 13, "min": 68, "name": "1ex6jH6bWUmpxJpq"}, {"max": 95, "min": 86, "name": "zq6U8qtL0rsZSnQJ"}], [{"max": 94, "min": 73, "name": "WqLlg2O0yBWDghOd"}, {"max": 42, "min": 14, "name": "VkITBpYelPrCTGXO"}, {"max": 54, "min": 19, "name": "nTYDE1UMoNObZ04X"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 93}, "duration": 90, "max_number": 96, "min_number": 64, "player_max_number": 70, "player_min_number": 56}], "name": "ilgPOfUCX49jp5Ag"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 5, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'jxyApODU7sIBsmPS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'bnLBesb1dX36hQ1A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "RQuf7t7hKMPmIFrE", "players": [{"results": [{"attribute": "Ju7ViTtwxDljVd2C", "value": 0.9897473022199982}, {"attribute": "etVxzEB5Q6xusKPg", "value": 0.6282798909754207}, {"attribute": "jyErOyI1bE7tOMtu", "value": 0.5731565726871147}], "user_id": "XKXFrEyMaN6xoIbb"}, {"results": [{"attribute": "cSWbyt0xlULv2c7O", "value": 0.04702655373145015}, {"attribute": "J7YHmzuAHl1Jrphq", "value": 0.610507637077587}, {"attribute": "FPkSfxtrnmkBk110", "value": 0.823521030861473}], "user_id": "p2bzo7kVeMK6axBo"}, {"results": [{"attribute": "CFJLVXe5AmKAzU2i", "value": 0.7110850201984402}, {"attribute": "PZH3oq9mRYWiBVeB", "value": 0.48455045213374603}, {"attribute": "m4vEmezaHtDyaxiO", "value": 0.18025023945570706}], "user_id": "x8UWMwRakfBFqgRV"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "rlLmWHEOjue4Isap"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "bGXxU1cJS9QEchUF", "client_version": "ezY1ycTIInnBdX1M", "deployment": "9OEItT7nfviyb5Xf", "error_code": 70, "error_message": "njrZOTeDxfToMN3z", "game_mode": "FiW3MCLoirlA8IsZ", "is_mock": "KTPbQDyZz9J35JNs", "joinable": true, "match_id": "tkTLOLBcTIYvzEio", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"RtkwXKRAneAHZjD3": {}, "LUlffXxwwIRL9cvw": {}, "A0k9Ldt2bBdxdFZT": {}}, "party_id": "bqdJaLKjHeC3iDcc", "party_members": [{"extra_attributes": {"jIBtFxeAz8KTrjRi": {}, "3e6moQBmPTs5L3oj": {}, "3jzvyVKTNkY9gSfz": {}}, "user_id": "tjZrOYSPkav6dc7x"}, {"extra_attributes": {"OJ4eBQI1N2BRpuse": {}, "F1jCXBhPhFgDQmMd": {}, "hUw5P2LRs1SGdc4E": {}}, "user_id": "VwTuoZw2BxKyoMbE"}, {"extra_attributes": {"hTkxFQgqmk6Dosvg": {}, "m1ifVBhbGOdi2CMU": {}, "94cWNtf9JsFtHwA9": {}}, "user_id": "EYfCR8aaRyU8cWTg"}], "ticket_created_at": 99, "ticket_id": "e4de9qp1yQ6QaAMq"}, {"first_ticket_created_at": 62, "party_attributes": {"f1jlTIRYx3puhieS": {}, "j4uct8vrX8qLMYMq": {}, "NQLMeSWieNSqJhDh": {}}, "party_id": "GlNwWSe9UvzRzhTu", "party_members": [{"extra_attributes": {"oYaFVL5UUR40odRd": {}, "8HgtX2R3IP1E74pv": {}, "ppPyI2ShAPkd3FZh": {}}, "user_id": "q5yri6LgryZYfHCx"}, {"extra_attributes": {"rn4n8hFIIBEf7qpm": {}, "DOWjjGq4HiNQrEwJ": {}, "9rrWNnumNLDLmPk7": {}}, "user_id": "kTT63DzNGgBNuvIm"}, {"extra_attributes": {"UPzpsBKj5gixD6po": {}, "720BBwjjYyURhERb": {}, "XBZNssbSBfBjjcsu": {}}, "user_id": "pr4042WJevcbsrbX"}], "ticket_created_at": 71, "ticket_id": "v9mimDLijhFpSjVV"}, {"first_ticket_created_at": 39, "party_attributes": {"f0nLYHLHN39rQW03": {}, "F0nmnTb7BMdwpal0": {}, "N80FHTdfCsz9xXpk": {}}, "party_id": "PEbKNmNhW8dQ8J87", "party_members": [{"extra_attributes": {"O4HtwOklTaYYOGdw": {}, "SBUsE7Yl10QoQNZF": {}, "UOkFlT7z0TpQie5y": {}}, "user_id": "PiIf8bZqOK96BKsG"}, {"extra_attributes": {"msUpCsWixAAQAGsr": {}, "UzzEmTnIjtUvFRgM": {}, "48LOTGB2CXIR9GQY": {}}, "user_id": "HdLzfJeyJBWVNnTl"}, {"extra_attributes": {"BMe6gh42E17vwLqA": {}, "gy92xmQayYmO5zBJ": {}, "DGED5qiu3vsMpvot": {}}, "user_id": "AVMBIQe5Oysb5gwS"}], "ticket_created_at": 43, "ticket_id": "k1yAf0MWApCjJIeY"}]}, {"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"VwJnj73iEZ2BKKTB": {}, "Ppq0loK90oWgDawT": {}, "Cxc0PmpRe2z47FAB": {}}, "party_id": "NTnGpwg633foh0Uo", "party_members": [{"extra_attributes": {"Gp7TFIeXxS7oP1cE": {}, "zhKYibaZvX4PH4J1": {}, "WBMKz0Q70ieJEM5H": {}}, "user_id": "rmKPA37OvLCMMStf"}, {"extra_attributes": {"3kmN5VaWo9PaAUsT": {}, "jv2Fh9mv2OTg1wwR": {}, "KJHubbD0AdKqVXUL": {}}, "user_id": "cewm7NmM9RRYYYln"}, {"extra_attributes": {"VC7sbOeQhklbFs48": {}, "epl7ExbEUUzttj8X": {}, "4zxel8VV1pVAKf8N": {}}, "user_id": "YrYLPUZlkbDto098"}], "ticket_created_at": 39, "ticket_id": "P5CaJyUcf0naksxA"}, {"first_ticket_created_at": 68, "party_attributes": {"cahqXFfUaDdzbBlh": {}, "Z7YmZDz4v6UWsWNd": {}, "fRAL20jI59sNp27G": {}}, "party_id": "XV7nOmVRQpPYybu5", "party_members": [{"extra_attributes": {"qfpByfeKL5hm3NnA": {}, "6EVbav4ALPNg69Jz": {}, "LWnEpYixPEmZnm1C": {}}, "user_id": "uUbqyox0fPcJkV9Y"}, {"extra_attributes": {"y1kqs0F4yrnEufpZ": {}, "HZG8JNyFp7TJEkH3": {}, "bhfJaztFZ5qqrxS4": {}}, "user_id": "QNZ7CunNWaJyZRa5"}, {"extra_attributes": {"6c2STRO6WxZlBUfg": {}, "Tx7PYSyd0BxoZGZd": {}, "eQKf0wb0S1BUYekn": {}}, "user_id": "oRXbx9m1lvMDTKbN"}], "ticket_created_at": 11, "ticket_id": "nHeaAyNMopxYj8rg"}, {"first_ticket_created_at": 20, "party_attributes": {"8k0gZSCQPKAeN1Jy": {}, "QdcUj2UVl2gneDYI": {}, "1Wy6EMs34Ky7K3o7": {}}, "party_id": "dI4cbCQCaGCsaUU8", "party_members": [{"extra_attributes": {"5Y126ZcJ03gjoa1X": {}, "YC0TwfIW4cbQ9786": {}, "xXExCQohw7OU1XTe": {}}, "user_id": "kPiXotnBQc5Lc01c"}, {"extra_attributes": {"1lRfdrLMp9IIlstU": {}, "OOV1p3kS3R86is17": {}, "aHGNLJPy70fwaZsV": {}}, "user_id": "696omkUZiT4XjAxP"}, {"extra_attributes": {"rDktR3M6dZU1HRjV": {}, "FgAipEqJkPiZlujj": {}, "ARq0yWA6B1v4Q5cq": {}}, "user_id": "z4uPbGOf1sMFLTm4"}], "ticket_created_at": 86, "ticket_id": "pSiQHcNTIbNAboMN"}]}, {"matching_parties": [{"first_ticket_created_at": 34, "party_attributes": {"OIBoJtZ8gZX6Sxo7": {}, "fjknlH5FKi4sImil": {}, "tGTZeD5qezKniMiK": {}}, "party_id": "nKMyofUPqhVpsGpt", "party_members": [{"extra_attributes": {"XOtLHzCJbgJ3NTUX": {}, "sMZYF3HCLyUo3Nlr": {}, "2v3JzfH9AOocTkUg": {}}, "user_id": "vi9jQb6Bx9HFHTNb"}, {"extra_attributes": {"x0HLkd2JTdPuTTAg": {}, "AUAKI1tqLJ20JwPZ": {}, "OxcPAhXW7t47FiTe": {}}, "user_id": "5Ht6mtRv0NIZEsRv"}, {"extra_attributes": {"HYT5Z0lR0IXAStY1": {}, "C093Pi1PoVjAxUFL": {}, "9eE2DSDrlb66sHDJ": {}}, "user_id": "rACQK7iFUWqlLxnF"}], "ticket_created_at": 26, "ticket_id": "aPZsUlM4mvpf3Lo6"}, {"first_ticket_created_at": 66, "party_attributes": {"J1piMrR0s9Mw1yXu": {}, "xut95e2HtDUWmr8D": {}, "oXpcF7csnNdrDxDw": {}}, "party_id": "dP3NR7yXP7Xn4yBm", "party_members": [{"extra_attributes": {"KfmzGx4iYq9x1gky": {}, "WXUZCsCShgZ89Ile": {}, "Z7TeSYEHfUMCnS2W": {}}, "user_id": "6pRzn5SAzt8SsoUq"}, {"extra_attributes": {"F5V3UipPKFEKSKqD": {}, "PF2I9NlRHocPLie6": {}, "HnAJEnJWkTbS7SLg": {}}, "user_id": "IiRxRRXZGqbqiL8v"}, {"extra_attributes": {"1m2aOLvEkpDWiY9i": {}, "DPVcqCcmleml4ZZy": {}, "8jNG13hJ31aWTlmq": {}}, "user_id": "KzpNghLiicX9RBA3"}], "ticket_created_at": 22, "ticket_id": "fb66fjz44FHiFEh1"}, {"first_ticket_created_at": 93, "party_attributes": {"2bnoDmZ7hAJKtuSw": {}, "MtlEYkEhzPbT5D4u": {}, "Fvx5oTnqk1FVWG0i": {}}, "party_id": "TLkFsXPTJYnlk0cB", "party_members": [{"extra_attributes": {"rs2RDNjhQb0BTWPK": {}, "rMR1x6V1IrwKXXK0": {}, "J6nBOyvAlV1phNEd": {}}, "user_id": "GN6QUho9602Zwycg"}, {"extra_attributes": {"Y5Fz8VPbfwaja8Ba": {}, "GbHLoMvk29PyXzLd": {}, "j1F882it4LD2LeqD": {}}, "user_id": "Ma1vSvu2my4tQZLC"}, {"extra_attributes": {"6Q6nw6lwVN3o1W93": {}, "Y8eGrTYMnsKYvuaw": {}, "O4TVdZxbGorAoihF": {}}, "user_id": "04FpNTqXQuIWm95G"}], "ticket_created_at": 26, "ticket_id": "EXJpKhmuiHMcPaFc"}]}], "namespace": "XxwoqyFW8Ajq14C6", "party_attributes": {"Dyn4DLqnPbcWrJeP": {}, "ZWqe0tWMXslHAEUh": {}, "g560P25knXbAYVpm": {}}, "party_id": "dhtLJMEwsy74uDwc", "queued_at": 23, "region": "f6cSbVAf5X5CAWfO", "server_name": "lBbKwJVtdnkjkkDP", "status": "rxpCVqx5EUtymnWV", "ticket_id": "8Uvvl6MHGEeO9H9X", "ticket_ids": ["tc6Ethm7kWOUaspC", "3pnJKYNqjPGvJAIT", "Esj6UmRVjI1CFvh3"], "updated_at": "1974-02-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "BKQ2vDN3lB7UKF2c"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'lW8zG46IjRYQkc08' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 32, "userID": "xt3XIwKRUoSGbh5y", "weight": 0.11186239311839863}' \
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
    --matchIDs 'nmAMxMSoMIzEA69s' \
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
    --strategy 'YRjaAYy55yyTD1oT' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'JQVHDNg8Eky0KjPD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Na0HC9GvEzKGX3dL' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "BYIFkryHlUMLUV2K", "description": "lhfOkl2m2nDWELW1", "findMatchTimeoutSeconds": 65, "joinable": false, "max_delay_ms": 62, "region_expansion_range_ms": 29, "region_expansion_rate_ms": 14, "region_latency_initial_range_ms": 61, "region_latency_max_ms": 48, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 90, "min": 47, "name": "bEQRHUrxI913CfR8"}, {"max": 11, "min": 1, "name": "KijbDvmPit2y9pi5"}, {"max": 75, "min": 43, "name": "NbU0uM2c0pQZhWTO"}], [{"max": 31, "min": 86, "name": "uwMqVTItgNNgrTpX"}, {"max": 17, "min": 84, "name": "V9Az4O6KXLMEssTg"}, {"max": 67, "min": 54, "name": "pVdS2ot4tribp5VT"}], [{"max": 50, "min": 53, "name": "tzKI07d9JWe50AdF"}, {"max": 66, "min": 77, "name": "sDnnd2Runt2uKNNT"}, {"max": 90, "min": 92, "name": "VdgZ6w9PtJ8iDa4v"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 35}, "maxNumber": 43, "minNumber": 24, "playerMaxNumber": 74, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 56, "min": 58, "name": "6RPRWxRpwhtChIBR"}, {"max": 19, "min": 11, "name": "tAqwAICYuVs09PuQ"}, {"max": 37, "min": 10, "name": "ReE8FakrmTHvU1hb"}], [{"max": 9, "min": 37, "name": "0edVp8lRkxeIyK00"}, {"max": 90, "min": 38, "name": "VqucaGCEAn72yeLe"}, {"max": 99, "min": 10, "name": "K6Ce8BK2WkLMuHZL"}], [{"max": 31, "min": 8, "name": "phnZ1lKma4HDVj3M"}, {"max": 73, "min": 100, "name": "B1IPjAcF4zPPf99c"}, {"max": 62, "min": 81, "name": "qLmwDHTutORA9vHR"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 55}, "duration": 20, "max_number": 30, "min_number": 42, "player_max_number": 0, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 27, "min": 58, "name": "vH4r0GMVztJqENY0"}, {"max": 6, "min": 46, "name": "nbBXbzbGZNOLuQkI"}, {"max": 50, "min": 79, "name": "ojuUoh0LJENhZj4Y"}], [{"max": 13, "min": 61, "name": "v00xJVmLkFM1I6PA"}, {"max": 31, "min": 29, "name": "jIAR71pFtWMKW6Rs"}, {"max": 34, "min": 9, "name": "97Yh7XImtSOiqdK1"}], [{"max": 7, "min": 78, "name": "KyQdLlFmkbn5p7wi"}, {"max": 81, "min": 37, "name": "IYxjMca1drl6XIf4"}, {"max": 92, "min": 69, "name": "vdCX3Gq5lbpQupTX"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 29}, "duration": 5, "max_number": 31, "min_number": 58, "player_max_number": 17, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 89, "min": 48, "name": "mVeF4LuwnA7v2xJ0"}, {"max": 67, "min": 67, "name": "2TeX0eLrDHTBLCzS"}, {"max": 88, "min": 28, "name": "vzylzXbySm3CTyaE"}], [{"max": 49, "min": 51, "name": "2NwZaL7AWdISPkxL"}, {"max": 89, "min": 75, "name": "ukjYthOtodOxw9RB"}, {"max": 79, "min": 77, "name": "xWQtz13V874Paw8l"}], [{"max": 56, "min": 31, "name": "wEzFiuTAABzoM6Mq"}, {"max": 71, "min": 29, "name": "scEOB5my7DKUViPi"}, {"max": 38, "min": 43, "name": "26FJ0JVCu7aTsdzc"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 65}, "duration": 25, "max_number": 21, "min_number": 27, "player_max_number": 50, "player_min_number": 53}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 82, "flex_flat_step_range": 87, "flex_immunity_count": 19, "flex_range_max": 90, "flex_rate_ms": 62, "flex_step_max": 2, "force_authority_match": true, "initial_step_range": 35, "mmr_max": 4, "mmr_mean": 24, "mmr_min": 72, "mmr_std_dev": 52, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "gLUJWLJoVk4zjjYV", "criteria": "3we7CDWIWNSRtGzW", "duration": 73, "reference": 0.7775278899926547}, {"attribute": "30D6QG7vy1fp5g5h", "criteria": "TLFTesbDcaCkoANa", "duration": 92, "reference": 0.9769396900570128}, {"attribute": "vtVEwqkR3kgDHsO7", "criteria": "60G1MXzTlzTNNlHR", "duration": 6, "reference": 0.9219032673857138}], "match_options": {"options": [{"name": "erKdftuSChHAMN4a", "type": "vYFcyilK2J1Ge2MG"}, {"name": "g7F18e7TPkKZqmlS", "type": "BKfLsbSMCEv2rRGw"}, {"name": "bnuqltEqoC7cbzCw", "type": "HnNwLUZQgpaoCkcn"}]}, "matchingRules": [{"attribute": "jJgxA2dwXoh6NRcA", "criteria": "u4bSlRp51PNMkwF3", "reference": 0.6027450213224793}, {"attribute": "brXzgxaMWcXag3Om", "criteria": "FuD6JqQWkgps9kTn", "reference": 0.7118779568587569}, {"attribute": "U6XCMkQojt71hprg", "criteria": "grLJvdOrg58KTqbX", "reference": 0.7820565716228821}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 33, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName '0h10mdGxTLzWBjtC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'NvMaoyvodp4HZ88u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'ku0uwLZoBSvvho4R' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 49}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'sWbF8fdQqqomvesG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'Mu2quTTKRl2Ixe7R' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "1vFFwaZYCJuhCSdF", "count": 65, "mmrMax": 0.17993877555104087, "mmrMean": 0.9705583378323925, "mmrMin": 0.29384434079919985, "mmrStdDev": 0.9738697316111934}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'wFlUN6Du3SAECqa4' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 49, "party_attributes": {"gdwyhrh1rL788AvU": {}, "dcJCv1QEUlMsrAHY": {}, "YdSXLn82VKfIhXWq": {}}, "party_id": "xOx7QkMgcNgn1iVj", "party_members": [{"extra_attributes": {"g18pK0trz4HdCbfA": {}, "fEfcaDAe0ZO3C4ba": {}, "FT6OtvOXDRCLL21T": {}}, "user_id": "ZbvuE25scVjWYtT7"}, {"extra_attributes": {"thToJJ3pMYoSUddq": {}, "UmAdcahon2tehF06": {}, "i356NocTm6STAxzH": {}}, "user_id": "YRkLYWbxCuDeIQtc"}, {"extra_attributes": {"MWE5eZn9paDJElKO": {}, "dvo2Yf68nRo0KNVJ": {}, "qyz2D8N8drchQ84Y": {}}, "user_id": "18Qufryifu2Yzq0A"}], "ticket_created_at": 23, "ticket_id": "tnCYCWkCqXWbTRXU"}, {"first_ticket_created_at": 20, "party_attributes": {"l5jIUcrJ6jmuS17b": {}, "nJsY8WFegOyQbwth": {}, "fISD7tjVNh9paTLm": {}}, "party_id": "YEwu4VDBtnigBJXu", "party_members": [{"extra_attributes": {"9tujjRJSmBdxGmXR": {}, "jWXgAkRLEpgVKLdo": {}, "ao190xzdkdEw2gMC": {}}, "user_id": "3jTCTwgJhaVtkngx"}, {"extra_attributes": {"z7zrKrOxGEEcyUs7": {}, "G5FXbCVgDop0zjSk": {}, "APjLm3H1eYM6Xt2l": {}}, "user_id": "h5ynMBSdQinY7rW2"}, {"extra_attributes": {"j2UqfxRJLSli2JS8": {}, "v6CIGsvKRTl1Ytdf": {}, "CbG0tcJ7iI754wDU": {}}, "user_id": "MzisDVL7aIEVhbxv"}], "ticket_created_at": 10, "ticket_id": "THbaCeDqnKaHVRiF"}, {"first_ticket_created_at": 82, "party_attributes": {"Q1ObPBg9hnitUj9T": {}, "U2kW9TXJbjQVcXJI": {}, "XVioF9wYsJ4Zvl5G": {}}, "party_id": "skZ3cByaqjlUzH5N", "party_members": [{"extra_attributes": {"rRlY2v6TaeFxgqMR": {}, "s7k44k1IDsSM6qaY": {}, "tqGI4F9ncnx6TAtN": {}}, "user_id": "JEQNjaVZXKs2KYdF"}, {"extra_attributes": {"1zG7Q8giWlJ84eBZ": {}, "8mxq91e6FTMeFMse": {}, "HWpbQ1JF2dAdLT1L": {}}, "user_id": "iu5e44n8e7vwJJCz"}, {"extra_attributes": {"TzAEjcUxkto26TQp": {}, "uYBh7xNMWgxOmfhD": {}, "qNLeVuCscURLon2f": {}}, "user_id": "wN7L1z83nVU45kxO"}], "ticket_created_at": 83, "ticket_id": "b1rgmuco3ACNVH0q"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'DakW6TAdtZJr4Y0c' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 56}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'mjg9pKMasAf6wj0Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'd4dFOUYq0tRl8eIb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'TzEQCFw19rs3DFgT' \
    --matchID '6nusBPji0A1S3EHv' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["72JRjRZv3m7FrMTi", "6KNkGyRZa1m3l4ZP", "dcDtPrDEC6mhQfp3"], "party_id": "rqPIeTUfouG2j9Kp", "user_id": "ac4p5ON4FUIg2xNp"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'EZmywLTCvDZa3gPx' \
    --matchID 'OAqk8rzBQvkkbReQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'eAllLWE2t6976t7N' \
    --matchID 'UjAtGfgoma9h4Kao' \
    --namespace $AB_NAMESPACE \
    --userID 'o308JoJE22KnDVzD' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'vaJEIH6RVo6kuVzN' \
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
    --channelName 'DeDxrzdyRLyBufa6' \
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