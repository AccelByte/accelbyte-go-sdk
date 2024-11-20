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
    --limit '57' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "KHPLemsehFDhnkKp", "description": "tV0UyOLWgb6rdJjk", "find_match_timeout_seconds": 97, "game_mode": "EpUFerbqPmLqo9Hp", "joinable": false, "max_delay_ms": 28, "region_expansion_range_ms": 11, "region_expansion_rate_ms": 17, "region_latency_initial_range_ms": 73, "region_latency_max_ms": 30, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 8, "name": "v9qSIDhZm5r0owaF"}, {"max": 16, "min": 98, "name": "CyDlKehxbJC6H6vY"}, {"max": 68, "min": 10, "name": "wG1sZvRL3zXKWoyJ"}], [{"max": 76, "min": 35, "name": "i0Z0V7YZiUGOuBTU"}, {"max": 24, "min": 93, "name": "UcNo8P8o4wuy09VL"}, {"max": 81, "min": 59, "name": "hvdaRiltHo6EMq0M"}], [{"max": 11, "min": 97, "name": "Ly2LxxLemPY9EWt3"}, {"max": 17, "min": 12, "name": "CnVLDbGLZhGCJS8O"}, {"max": 39, "min": 13, "name": "EzUL6QppSNRr8y5m"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 97}, "max_number": 97, "min_number": 55, "player_max_number": 75, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 22, "min": 13, "name": "0fh4Z81wPDIwZcPH"}, {"max": 6, "min": 29, "name": "UKb1WiD33NHJb9zg"}, {"max": 49, "min": 1, "name": "OyTWNbbx112cQNzv"}], [{"max": 71, "min": 99, "name": "5kP3WLYGdvg6rKaK"}, {"max": 65, "min": 83, "name": "qAUsbjZIAo39W6F8"}, {"max": 21, "min": 39, "name": "0HRI89O9iwmoZx85"}], [{"max": 41, "min": 99, "name": "rMpbxcVvLkiSQFlk"}, {"max": 84, "min": 72, "name": "zFUrVO1dYp6fEP2t"}, {"max": 22, "min": 9, "name": "Ywk3yTDkKM6r8E9O"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 42}, "duration": 21, "max_number": 83, "min_number": 82, "player_max_number": 96, "player_min_number": 25}, {"combination": {"alliances": [[{"max": 50, "min": 59, "name": "zVyzSRU0FIATJO0G"}, {"max": 13, "min": 34, "name": "rhv8TeQAsNAR8cbu"}, {"max": 84, "min": 90, "name": "FpEu6ut01VGTkvJw"}], [{"max": 29, "min": 11, "name": "iYs11FW3hf3rOL0A"}, {"max": 32, "min": 0, "name": "plw0NAi3pnKzb59r"}, {"max": 68, "min": 8, "name": "P57h07Z6FJym5sU8"}], [{"max": 15, "min": 31, "name": "BtQBayFMwkMYfkWZ"}, {"max": 67, "min": 86, "name": "kHPTrve7oRLLGkzb"}, {"max": 50, "min": 57, "name": "BIidU10DRqC7yKi6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 67}, "duration": 85, "max_number": 94, "min_number": 65, "player_max_number": 4, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 37, "min": 71, "name": "AuljmEyFPfGEcHE2"}, {"max": 34, "min": 45, "name": "SxtKqtNT3j8xrnuT"}, {"max": 14, "min": 7, "name": "COD19gLvXB3g25Xl"}], [{"max": 97, "min": 80, "name": "JAAjbdqcWYbEEbyd"}, {"max": 40, "min": 36, "name": "8sDOUgG4J25wHGNH"}, {"max": 70, "min": 72, "name": "V4jAkzZTZ3rCCAcp"}], [{"max": 77, "min": 63, "name": "1tpPtrHk6dSxdBA6"}, {"max": 38, "min": 3, "name": "JmNoUaXuP9Y4mfUj"}, {"max": 55, "min": 37, "name": "uxxlhyCTCD0Dp1hP"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 1}, "duration": 47, "max_number": 69, "min_number": 4, "player_max_number": 51, "player_min_number": 79}], "batch_size": 48, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 82, "flex_flat_step_range": 14, "flex_immunity_count": 30, "flex_range_max": 83, "flex_rate_ms": 98, "flex_step_max": 31, "force_authority_match": false, "initial_step_range": 90, "mmr_max": 52, "mmr_mean": 96, "mmr_min": 56, "mmr_std_dev": 85, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "xLnRTXbgWX1SlKFl", "criteria": "j9PC27Z5GzBYkq10", "duration": 63, "reference": 0.07830387021121821}, {"attribute": "Zw5TekJw9TTYZPG6", "criteria": "pFY6Ds8GJhD3grdh", "duration": 58, "reference": 0.13816046238518342}, {"attribute": "2VFq6HxV1AIs8UEF", "criteria": "tUh41Regc65MYRJX", "duration": 61, "reference": 0.4239639396367175}], "match_options": {"options": [{"name": "azvBQYl8wJgNSzrA", "type": "avfTeJf2jDxYDhZ3"}, {"name": "feU8zkembkBvKX3e", "type": "SRCxon42qZa9yVPc"}, {"name": "zGt6oPf27deFNna7", "type": "tgAAFU9KMXHtfUir"}]}, "matching_rule": [{"attribute": "MV5Ylrm94qMFgNB0", "criteria": "TxNGSYKBluR2IQE6", "reference": 0.26335689844741283}, {"attribute": "dn33xgvNtqJkpcDh", "criteria": "AQq67msIKf0IOIPo", "reference": 0.7467066351809745}, {"attribute": "OsTNDNYHETbMzKBF", "criteria": "KhuYypN4eBzBmztV", "reference": 0.6310595002736706}], "rebalance_enable": true, "sort_ticket": {"search_result": "wooKr7C4xlgG9kwP", "ticket_queue": "0eGspyVHiTfcTS7S"}, "sort_tickets": [{"search_result": "rz0yaGgGzRnnXs7l", "threshold": 86, "ticket_queue": "9FpEH8m0DfVcNQPO"}, {"search_result": "ywFNVUgnXmGHO7vM", "threshold": 96, "ticket_queue": "ZPPZj53sIhOwlRiM"}, {"search_result": "DgTMJiwVwxjewoDp", "threshold": 79, "ticket_queue": "1zytk9xwtz62E9q2"}], "sub_game_modes": {"I2DPC5JPoRDb6cQg": {"alliance": {"combination": {"alliances": [[{"max": 32, "min": 34, "name": "oUZKozLbDbQXs6HQ"}, {"max": 30, "min": 74, "name": "2nsmAzUj8vwfITSu"}, {"max": 92, "min": 19, "name": "C1RlOxyTZRRbNjdA"}], [{"max": 38, "min": 44, "name": "aG37O0cYRRB2tJp5"}, {"max": 78, "min": 29, "name": "cTyPKBl5GijRIGx1"}, {"max": 28, "min": 58, "name": "pPjZpxKL0Cd8T6ND"}], [{"max": 96, "min": 68, "name": "KIDus25KhPBJX8Pv"}, {"max": 26, "min": 67, "name": "8mwpFZDfFpoZ4tdk"}, {"max": 84, "min": 25, "name": "mb5AFVpui2z2NHVK"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 44}, "max_number": 16, "min_number": 97, "player_max_number": 98, "player_min_number": 9}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 11, "min": 29, "name": "HkYqstfvK5GYtMGv"}, {"max": 90, "min": 95, "name": "tuUy5Xa61A7th9LX"}, {"max": 79, "min": 98, "name": "AcH6dHHVGpwCnERQ"}], [{"max": 45, "min": 12, "name": "OrRmFzuGO2MLeqZw"}, {"max": 65, "min": 91, "name": "XtrYViyvAdoLmpxq"}, {"max": 99, "min": 73, "name": "Yfn2VIt8jklYxk4t"}], [{"max": 79, "min": 2, "name": "OxpFxCYB5BoPks6M"}, {"max": 88, "min": 54, "name": "TyC7dXcjIs8wfcJE"}, {"max": 16, "min": 26, "name": "W86ZEXOV0BS5YomU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 72}, "duration": 26, "max_number": 80, "min_number": 45, "player_max_number": 7, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 92, "min": 18, "name": "1Vy3FW16NqzJ5QAD"}, {"max": 33, "min": 24, "name": "BByU2qwS7X70hiHg"}, {"max": 93, "min": 29, "name": "J7BxBFMTjEufId6R"}], [{"max": 12, "min": 90, "name": "M6IFuSlovVmLKtrQ"}, {"max": 67, "min": 80, "name": "Mhffg6yBlShdX6FU"}, {"max": 79, "min": 41, "name": "i8dm3m06FNNIu2xJ"}], [{"max": 81, "min": 3, "name": "lqALSAha4MdYqdS3"}, {"max": 22, "min": 92, "name": "fuhJUJ933rNicERF"}, {"max": 65, "min": 35, "name": "mx5pWy3VJC4nIhtU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 75}, "duration": 42, "max_number": 4, "min_number": 1, "player_max_number": 25, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 83, "min": 85, "name": "PxqO67SNdApLagW3"}, {"max": 47, "min": 42, "name": "KsJtm7rb2veslonU"}, {"max": 88, "min": 11, "name": "i1G3N7yCE6h4hl7v"}], [{"max": 25, "min": 15, "name": "i3ia1Gcc6sXzxBZk"}, {"max": 73, "min": 92, "name": "DabhzjQwilVvFptp"}, {"max": 7, "min": 31, "name": "RFdiaieNfqOvcHOR"}], [{"max": 40, "min": 60, "name": "AK9OA4EIZ0mPLyvS"}, {"max": 31, "min": 47, "name": "TmKXrtPrVZVtxR8i"}, {"max": 66, "min": 4, "name": "dBAniRecoqL1tbjX"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 96}, "duration": 100, "max_number": 65, "min_number": 28, "player_max_number": 64, "player_min_number": 24}], "name": "EqIPYA6DOFmqSYab"}, "BSS9dMlLKZIUDwAt": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 61, "name": "lMI2DaXfI6zenbCl"}, {"max": 33, "min": 31, "name": "8c6EinqngS0CTaRC"}, {"max": 56, "min": 25, "name": "TIwoPpfEA3rXIp24"}], [{"max": 41, "min": 40, "name": "xyvYY5t6cBc6OjoZ"}, {"max": 60, "min": 85, "name": "rcaXtkFLYElXBM7g"}, {"max": 91, "min": 32, "name": "sqjysHcTLVjtN6dL"}], [{"max": 35, "min": 42, "name": "ppdaBiqkEUCgK5Mv"}, {"max": 90, "min": 57, "name": "g4r4XIzIULWiVNeg"}, {"max": 45, "min": 93, "name": "SQH5cJbKNpxpLejU"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 59}, "max_number": 71, "min_number": 93, "player_max_number": 73, "player_min_number": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 48, "min": 33, "name": "MDzG4lLR9MqLRccP"}, {"max": 99, "min": 91, "name": "5bubhBf9OWg81fHO"}, {"max": 74, "min": 36, "name": "gOGT9B6nCYpqXkFD"}], [{"max": 83, "min": 69, "name": "Abxx99jvYr9FNAq5"}, {"max": 55, "min": 95, "name": "6QmbmZINEJdurzZu"}, {"max": 97, "min": 73, "name": "esvqcngBnsP6R5Gc"}], [{"max": 12, "min": 99, "name": "1h6ANklXNsGlYrqg"}, {"max": 18, "min": 48, "name": "yqhapKtHEoVV8oYW"}, {"max": 99, "min": 95, "name": "TAE1xjzrKaqLIrJE"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 9}, "duration": 51, "max_number": 67, "min_number": 52, "player_max_number": 2, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 21, "min": 59, "name": "4cIKQROJyBEHtDDS"}, {"max": 50, "min": 68, "name": "BQBgmm3VL1SCnzFz"}, {"max": 6, "min": 99, "name": "JjicPxnSmizhP7tf"}], [{"max": 66, "min": 5, "name": "wklmPEUETtRmr1ts"}, {"max": 2, "min": 98, "name": "K0tvQItEQQP3tUxl"}, {"max": 90, "min": 39, "name": "dUKEF6vDUhZYLYnZ"}], [{"max": 17, "min": 95, "name": "NSH7ewLBFRW0KqIv"}, {"max": 10, "min": 61, "name": "amH5Og5DwFl1VfWk"}, {"max": 76, "min": 48, "name": "jXJVIbodqmRC8TS3"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 16}, "duration": 90, "max_number": 87, "min_number": 43, "player_max_number": 53, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 14, "min": 3, "name": "kvXRFrzJ9VJAeiXj"}, {"max": 0, "min": 35, "name": "xGNGtAEDC6plZ9SG"}, {"max": 9, "min": 81, "name": "p6Td4pHPiHVjFwIb"}], [{"max": 85, "min": 88, "name": "qP436enk0Rg6Zd3Y"}, {"max": 50, "min": 8, "name": "jdI0C52NEXmR4Czp"}, {"max": 11, "min": 99, "name": "8VLMaiWIh0JEtsub"}], [{"max": 68, "min": 42, "name": "xEDaCwLZmDHENAcc"}, {"max": 4, "min": 41, "name": "uH3Ulo3aWcwVxZE9"}, {"max": 93, "min": 85, "name": "54SvMlY357MZSN3c"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 98}, "duration": 8, "max_number": 96, "min_number": 74, "player_max_number": 95, "player_min_number": 2}], "name": "6j4VfYKTHWZGuaaW"}, "SdJLAebpTxpMspD3": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 68, "name": "lcsjPlWsq3yDrRHW"}, {"max": 90, "min": 33, "name": "HvVryYo2bRQ544Je"}, {"max": 37, "min": 86, "name": "D4TlXnn75HOhznJZ"}], [{"max": 75, "min": 100, "name": "qTU3oHOuV9chAQ60"}, {"max": 90, "min": 22, "name": "9OD2ML0rYHZ4B82x"}, {"max": 1, "min": 24, "name": "Y02mOVe0OAlsqqrr"}], [{"max": 26, "min": 62, "name": "I8WqRlzmKTVyB9QV"}, {"max": 18, "min": 35, "name": "aL6DR9eNvicoEVWz"}, {"max": 97, "min": 33, "name": "xMy1O3tUhZ1IhEPe"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 63}, "max_number": 44, "min_number": 18, "player_max_number": 50, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 89, "min": 63, "name": "KsCaxLWB8QpEcNYj"}, {"max": 48, "min": 74, "name": "mrm3OeSmBGfqUejg"}, {"max": 46, "min": 59, "name": "80FlgIBdgL5gzdus"}], [{"max": 82, "min": 73, "name": "VYvAuB4AYgDU9viI"}, {"max": 14, "min": 79, "name": "bJQp8TDWfMo5dpwk"}, {"max": 36, "min": 62, "name": "x7sGtCv1BxHjPmHP"}], [{"max": 28, "min": 27, "name": "yPvIp9oFhITVluzl"}, {"max": 53, "min": 97, "name": "kUh09BXSxie1Z211"}, {"max": 4, "min": 14, "name": "S1NYQlJVEApuow1y"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 32}, "duration": 89, "max_number": 41, "min_number": 38, "player_max_number": 7, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 3, "min": 6, "name": "pc1h718SlGN1HrN0"}, {"max": 26, "min": 39, "name": "1zi5c3mGjbI3I8oG"}, {"max": 2, "min": 53, "name": "shKah1wwpUL69lkf"}], [{"max": 57, "min": 98, "name": "iPoTukbNF5MNfbMy"}, {"max": 34, "min": 57, "name": "NepRsiTpIQ3zlG6j"}, {"max": 83, "min": 41, "name": "waN7omwxvoUTOe9x"}], [{"max": 13, "min": 2, "name": "P86NNIPQ18DM36O6"}, {"max": 12, "min": 86, "name": "bqgbWCDCMptKJt0E"}, {"max": 18, "min": 15, "name": "Jh0a7DxBBDUwN6bw"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 25}, "duration": 35, "max_number": 32, "min_number": 95, "player_max_number": 5, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 9, "min": 96, "name": "jsOWgWZtXeBzPSgt"}, {"max": 57, "min": 91, "name": "kyG4SYxZW3kbsdsw"}, {"max": 24, "min": 43, "name": "8DBVtAXtQen1AwPE"}], [{"max": 84, "min": 44, "name": "7eWmoUU4ihKlTLLE"}, {"max": 55, "min": 60, "name": "eQBp3Aq0i6UmxwuN"}, {"max": 85, "min": 89, "name": "lZhTD0tbKNnbltkV"}], [{"max": 48, "min": 39, "name": "pSdsm03z9pHPjJex"}, {"max": 84, "min": 45, "name": "ZK2wOTLSWnnNmQkT"}, {"max": 2, "min": 65, "name": "RdV2FnQdD9uTHrmB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 31}, "duration": 77, "max_number": 1, "min_number": 71, "player_max_number": 3, "player_min_number": 53}], "name": "zKXxsTuptOrGoLB1"}}, "ticket_flexing_selection": "SSnxG0cFt5kX89OE", "ticket_flexing_selections": [{"selection": "65zWllLCl2t42GBL", "threshold": 74}, {"selection": "mV55FiTH81CLFxuB", "threshold": 33}, {"selection": "FtEVnPxOF8KrbwLp", "threshold": 74}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 34, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'GjNoOKcRm4oUhy1h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'M3gf1Cixv1zvYpE0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "5Vcjf0Nfv1Ei0uLq", "players": [{"results": [{"attribute": "95Fl8h0iZ50uPenz", "value": 0.5407585510641282}, {"attribute": "jtLwVdFj7co6q46X", "value": 0.5053010163225918}, {"attribute": "CEcuDJZkqJbrYC26", "value": 0.646029172198734}], "user_id": "Q9honQXJuVYnCVMP"}, {"results": [{"attribute": "HC1bDDA4RBdxv4wO", "value": 0.6916047580675246}, {"attribute": "odsOGAkKCLhDQoO1", "value": 0.0130845822687915}, {"attribute": "U6XcbEB8alV4rTQ6", "value": 0.5601547417461977}], "user_id": "KtwXSUq8k6OUj4PV"}, {"results": [{"attribute": "QEdeqTrzfQ7LowV0", "value": 0.9831209994822625}, {"attribute": "hcFbdluIFVR63uJ1", "value": 0.7311946963777518}, {"attribute": "msEm2bwU0fDSfK7g", "value": 0.9981734207504388}], "user_id": "ZMSVTCqqaEsTjIod"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "3BWBQKZWnwOxRvue"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "yZa3XwYuKXLH3WKl", "client_version": "thPaKlkqeq3GJcLk", "deployment": "s0NmueqDgR0OjFYQ", "error_code": 46, "error_message": "p37CKuMvuVY8yRwj", "game_mode": "NbX5o8sra4l4lf8L", "is_mock": "hGOhCvlQsvVvbnKA", "joinable": true, "match_id": "ZEmx0HTXtQi2VZzu", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 42, "party_attributes": {"0dks8Sml01HasLKp": {}, "z32NgDNA84QfZq4X": {}, "giAXkbFJgZ5MmDTr": {}}, "party_id": "s9POE77m0mo94reY", "party_members": [{"extra_attributes": {"dz2rHO1U5OLEO1rk": {}, "CfzQ8OjQVDbd3Fa8": {}, "V9UgQHPXKoeS3FTI": {}}, "user_id": "eewcrH1YTTARktQP"}, {"extra_attributes": {"CHaED6j7gZ0uScFn": {}, "nAkoiVrxyVL2lMgT": {}, "fxqLpfleZ6B5zfE4": {}}, "user_id": "Njf1RgqwZsq9ieQx"}, {"extra_attributes": {"5sDQYrZ5DG4kYZIM": {}, "elMeQqK2XrdXvQiJ": {}, "LaOvoEIGBs9I8jlW": {}}, "user_id": "EsV4bxEOb27DeQLU"}], "ticket_created_at": 0, "ticket_id": "zNAvsYP8NAPL5AkN"}, {"first_ticket_created_at": 42, "party_attributes": {"IeDpz4pkTK3R5Xfr": {}, "j82oU2aDnMSIw0Kz": {}, "lwhn5R7GgXSkSD6Z": {}}, "party_id": "8iBIFCZndlM3MD5S", "party_members": [{"extra_attributes": {"mjQDnS8kYGw7JKXw": {}, "7k6GqbLVZUAeZyNB": {}, "kjvLv2uOon3wCB0F": {}}, "user_id": "iviXigLHLFcROoXl"}, {"extra_attributes": {"cXv58ey1TPoWs5xz": {}, "KzsdIr3epNYVYWtQ": {}, "hdiibH9REuJ8AHlI": {}}, "user_id": "dbH790VME4Uy2kV2"}, {"extra_attributes": {"lpcybgTkyh7cARHk": {}, "WsDFnwlTot0xufux": {}, "NWKYhgzMqMqucRO9": {}}, "user_id": "DPRB4XzfhP8q1rCA"}], "ticket_created_at": 82, "ticket_id": "rCbrf56H3ugOSqkg"}, {"first_ticket_created_at": 29, "party_attributes": {"xh6utB9n6q66OnEH": {}, "NyfboJFvqWT6ak4j": {}, "VhUt0hheslNoH94b": {}}, "party_id": "3PnZJtgnYn0mLxq0", "party_members": [{"extra_attributes": {"PcAf0higlsT3z6yt": {}, "Ht7T08a90HJICTaX": {}, "JObj7DuH3saj0ue8": {}}, "user_id": "csGZqYHZWIzfaRCt"}, {"extra_attributes": {"X7ELnTGNR4cyF97v": {}, "tfJVRFbgJA0SBlZw": {}, "3cfZ6Tes6xiR7m8i": {}}, "user_id": "lgOyAXF3ZL19F0DO"}, {"extra_attributes": {"4aGuwxO2C825L73i": {}, "ghvUi1keAkgRM6Fu": {}, "UpWERP9MDJul6AH4": {}}, "user_id": "VCbItvLV5sw5lmON"}], "ticket_created_at": 52, "ticket_id": "N1GjNKbpgUVb1Cw6"}]}, {"matching_parties": [{"first_ticket_created_at": 35, "party_attributes": {"WP492I6m3aOizBDL": {}, "fNa5b7Rmyh1MMJBT": {}, "VcoW0YouIhI0Mvdp": {}}, "party_id": "GkvdZC3PkLrgIuFI", "party_members": [{"extra_attributes": {"CIQX6ZQ8caAhsKgV": {}, "Wuckj6nTxQ3dKkFV": {}, "ud4sCu0X114tEOrM": {}}, "user_id": "MiFF4W4UXzFoexIT"}, {"extra_attributes": {"iOAFXsJp2B3coDjY": {}, "jykZ3dvCkBbv3ofL": {}, "Ft6FI8I2N6MNZEup": {}}, "user_id": "yR8s3DLxsPggrjzM"}, {"extra_attributes": {"dz8xv1WMKVJG7anJ": {}, "rB1nPxAMa9S300JQ": {}, "CM9wEoeOunOVJbRW": {}}, "user_id": "y8Z5ocu1z4XbmVmw"}], "ticket_created_at": 63, "ticket_id": "XBLM1LdC5EmptAf2"}, {"first_ticket_created_at": 21, "party_attributes": {"ldgPkuv3L2OYDaip": {}, "0XmjgGUuFkh3zdbi": {}, "6q70Xhmb5357Gk5j": {}}, "party_id": "l9EcdEwShLXcLC44", "party_members": [{"extra_attributes": {"OY20J0fUhkShnXAR": {}, "xOEDkphH0A6UPwBZ": {}, "PlmzY4fshRPNmG2q": {}}, "user_id": "wRj8mfj4ivXQwoPe"}, {"extra_attributes": {"rvvYuFJwtZ4ERp4B": {}, "7hNZ7pRySHYDQKUL": {}, "PNJCljt51oDYfD5Y": {}}, "user_id": "9ns9jlHKpuNZk8nS"}, {"extra_attributes": {"ZZ3iakvF7Kb6JD8v": {}, "wimI404BjgQrPREo": {}, "krETDrxK74o6eJVP": {}}, "user_id": "FoWz1f67ocSMXuWu"}], "ticket_created_at": 22, "ticket_id": "7PVqsxZ2a4jXiFQt"}, {"first_ticket_created_at": 20, "party_attributes": {"j96TCaMzbtPsCxD6": {}, "LVL3oZA5K8hQWNfU": {}, "1sldWopogRs0gcOv": {}}, "party_id": "ewXaRdJSUk9pFt1w", "party_members": [{"extra_attributes": {"kkaTZU7KfOj4X3dI": {}, "YJc8kwJyRsZv6t4t": {}, "EYb7SbFNwdUYrQ4l": {}}, "user_id": "4CffDvtIwFEXybA2"}, {"extra_attributes": {"PuYvYsg7FsCXVysW": {}, "aCNGNXBNrnuvyJxs": {}, "D2SngXtmFT25ms1a": {}}, "user_id": "pz268FhCOhwSvvBA"}, {"extra_attributes": {"PEyNnkVesQJaYARE": {}, "lWnPLRicxWiVdxNK": {}, "syBrcFpalb1hGnkx": {}}, "user_id": "i2YcUgm88jaUfWWf"}], "ticket_created_at": 42, "ticket_id": "gDCVn3319SonwTAJ"}]}, {"matching_parties": [{"first_ticket_created_at": 20, "party_attributes": {"WS9yMGlHLTT8eZZY": {}, "shk9b1RivZ4lqdbb": {}, "BVIeITEGtU8Tm5mz": {}}, "party_id": "2GOtg36VQe5trPj8", "party_members": [{"extra_attributes": {"ROcxiCNzJiYPsBWo": {}, "HzOASaMB4mt3Kzau": {}, "1v8L5RDujrrgxjLi": {}}, "user_id": "ugJYtctagQR901V2"}, {"extra_attributes": {"5PVzwk4bejvTlE6q": {}, "kSLLftXfdmL7kvxC": {}, "EUabBDWAH2Ro7hav": {}}, "user_id": "RLq3Fh002Eu6gZZW"}, {"extra_attributes": {"cVTG4HOCTzX25QsH": {}, "mGpTfYEDOw1H2P1s": {}, "eyj9rWv4yuTJtjFL": {}}, "user_id": "rP6iVPYnoKNxlFP1"}], "ticket_created_at": 31, "ticket_id": "gvA3hOjpIqjTV936"}, {"first_ticket_created_at": 29, "party_attributes": {"pafTdfdEODvRfNlt": {}, "twDXJxUkxGuum80L": {}, "FMlzOc9vpNF1ZslB": {}}, "party_id": "t4Cs6v83iAf2Jm8T", "party_members": [{"extra_attributes": {"6zbgHRX20bblyeCl": {}, "qEaeQ2JSTrTNLmsH": {}, "qoUszKyp5OmtRpWZ": {}}, "user_id": "HDgjAENuTXwLRyKX"}, {"extra_attributes": {"jLBtENvnIsFt3kjK": {}, "gJHMUe0DiXP3GIYF": {}, "9bEu5Stu0ROnwLsS": {}}, "user_id": "TLLCEDWnzPO12Bgp"}, {"extra_attributes": {"pQP89aCHpqCXgzdy": {}, "Bbhsgp9NYsnM6KSn": {}, "vnuWDJ6Mf80FPXCj": {}}, "user_id": "2Oq1ppDTHeXu6FtQ"}], "ticket_created_at": 42, "ticket_id": "JPoKWaRfebAVcrKZ"}, {"first_ticket_created_at": 24, "party_attributes": {"B9OaPf0J4TJMaVRZ": {}, "NPjBlTISizhpRZpv": {}, "e70jS8CEEmukGCZE": {}}, "party_id": "fHlZOmXzmAfRXCcz", "party_members": [{"extra_attributes": {"tfRxfiEkhU1848Lp": {}, "jk2IwRkoqGTzmk2z": {}, "REwBUh15TUlDkkjH": {}}, "user_id": "bgRHQ8ixcALUsIaL"}, {"extra_attributes": {"7rYPH3qDbB77jTto": {}, "k8oxWcLLPnQY15Ta": {}, "JgSnPVy3P0h42LhT": {}}, "user_id": "y3oV3QhaAv0kUUug"}, {"extra_attributes": {"FSM0xIY58NjD6byz": {}, "T9cl05sLz69AFlvb": {}, "aXlb078qC70sEXpb": {}}, "user_id": "FLPB2ryeuTVmpAqO"}], "ticket_created_at": 59, "ticket_id": "zGGRRxAxBV4lanm8"}]}], "namespace": "OetTSqQca50T4n6g", "party_attributes": {"0oUrdVKAun6wGsEJ": {}, "ocPdsSQwc05r0RND": {}, "0VCkuAATWicYlhdp": {}}, "party_id": "A73IXhm3AkETLG1B", "queued_at": 44, "region": "S2bJBKO9pF05axPm", "server_name": "6e41iXRt6Op3pbrc", "status": "OGs6IyzoJVnRuItp", "ticket_id": "nVGSn2Y5HU9c9TBJ", "ticket_ids": ["3DacMqyPluqCDwGv", "bnAPFv8i1gyu8IN6", "6D2syW7rFI76JWAt"], "updated_at": "1997-06-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Um91cEB3hi32vAiT"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'PuZ8kwvmajPShbWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 17, "userID": "5VQA4td8eCW4IlfU", "weight": 0.021227932760167212}' \
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
    --matchIDs 'qNi5qNmN2BMpTEUg' \
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
    --strategy 'PmDNkdIkgbPTTPI5' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Sz6SoDA9gnAYN5YK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'KH5FJwpooIklfOwV' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "zMYp5SCL8LzyjLHz", "description": "arIGAe74bP8SKnsw", "findMatchTimeoutSeconds": 52, "joinable": false, "max_delay_ms": 54, "region_expansion_range_ms": 98, "region_expansion_rate_ms": 55, "region_latency_initial_range_ms": 55, "region_latency_max_ms": 16, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 57, "min": 55, "name": "9g2x0zrSf5RZnXT0"}, {"max": 58, "min": 93, "name": "N76X26fvqfks0hdl"}, {"max": 76, "min": 20, "name": "J0bVQs1h4YXNyWVc"}], [{"max": 82, "min": 73, "name": "UrISgWKg3A5b0ccg"}, {"max": 44, "min": 41, "name": "5wuNpdR6dJq5kwtJ"}, {"max": 14, "min": 36, "name": "hIk1ffpKSr0r93Ki"}], [{"max": 76, "min": 56, "name": "Msi99GDEPjZoyK51"}, {"max": 29, "min": 79, "name": "0rg9v1PTsJkfKWNt"}, {"max": 29, "min": 33, "name": "OhDhvB2MnW2Mv8ZV"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 3}, "maxNumber": 59, "minNumber": 57, "playerMaxNumber": 86, "playerMinNumber": 13}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 2, "name": "P1sHQJybRWHBhuFL"}, {"max": 51, "min": 25, "name": "3QQwRLqGuTOpEhCL"}, {"max": 61, "min": 85, "name": "jhtLap9LCYj7XRmy"}], [{"max": 37, "min": 74, "name": "W9FeatEOXNoca9a1"}, {"max": 45, "min": 73, "name": "eIEuhf1Zh7bo1BDP"}, {"max": 80, "min": 81, "name": "vV1rlgXZygGuyzKQ"}], [{"max": 41, "min": 42, "name": "qLgluMVSL1kA3xXc"}, {"max": 91, "min": 59, "name": "N20vTMCD1I7cJ8VZ"}, {"max": 53, "min": 0, "name": "ac0NhJFeskWMwvpB"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 73}, "duration": 88, "max_number": 1, "min_number": 81, "player_max_number": 28, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 11, "min": 28, "name": "zRfhblm1ezSdi6Dx"}, {"max": 51, "min": 9, "name": "zzGiVuMV3JGt7v4P"}, {"max": 19, "min": 95, "name": "1PuiX7EE1zQzIirZ"}], [{"max": 41, "min": 46, "name": "1drwHj3d2lJXxPui"}, {"max": 55, "min": 100, "name": "F31iVehRwpltrzVH"}, {"max": 24, "min": 57, "name": "0iVCDe22fPGs6gqv"}], [{"max": 98, "min": 82, "name": "VOlPjJWvgZEeNfKx"}, {"max": 47, "min": 100, "name": "uSlfaK8714TT6NEm"}, {"max": 55, "min": 49, "name": "i0N9WTTXNv0lFYcK"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 38}, "duration": 73, "max_number": 79, "min_number": 47, "player_max_number": 34, "player_min_number": 69}, {"combination": {"alliances": [[{"max": 94, "min": 18, "name": "kzgb25fflJuSMDYI"}, {"max": 78, "min": 29, "name": "Z1t8KbtWxAlcAd4p"}, {"max": 63, "min": 89, "name": "bZzpRtSfFRhaC3ea"}], [{"max": 87, "min": 50, "name": "Ww4Z8mFY3nE2kijd"}, {"max": 60, "min": 49, "name": "uAislj63LkbzRwcW"}, {"max": 5, "min": 44, "name": "0grAjaqsYmKdNEeu"}], [{"max": 91, "min": 47, "name": "BuZfPjtiO02uFdrs"}, {"max": 66, "min": 66, "name": "ngmm5OvtFYrDfAyn"}, {"max": 73, "min": 7, "name": "YfAzJfXqJIaHtuD5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 13}, "duration": 0, "max_number": 36, "min_number": 89, "player_max_number": 90, "player_min_number": 18}], "batch_size": 35, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 89, "flex_flat_step_range": 48, "flex_immunity_count": 7, "flex_range_max": 55, "flex_rate_ms": 98, "flex_step_max": 26, "force_authority_match": true, "initial_step_range": 50, "mmr_max": 99, "mmr_mean": 25, "mmr_min": 18, "mmr_std_dev": 12, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "w6LAeg4lTrSmgaGI", "criteria": "n3twlwHHF3imUH6l", "duration": 76, "reference": 0.00034840763694976573}, {"attribute": "kOsKx1Gp9scz0AUj", "criteria": "WmL0Hsssc7zdxaJH", "duration": 56, "reference": 0.6060006138861516}, {"attribute": "14ZENac0w2xIq14M", "criteria": "stuRIrUDyphn3Piq", "duration": 71, "reference": 0.27486230961753255}], "match_options": {"options": [{"name": "y0xl5jh2Xbpc5GQM", "type": "zRCxKAF9CRymdFEj"}, {"name": "T79fhr0kZLE7M853", "type": "xBNdZs7mkapTS3xe"}, {"name": "5X5pAjNNmx7XL5fk", "type": "n0BxxdBZxuPYPo44"}]}, "matchingRules": [{"attribute": "jFH0OGtJnOhUCPwO", "criteria": "1pdCIWZMnVYcC8kf", "reference": 0.8485897727488553}, {"attribute": "7q9mkXt9pZu10809", "criteria": "D40Pb4cxuIEPuOfQ", "reference": 0.4454883092690193}, {"attribute": "x8m8gVhvJmfLx3TD", "criteria": "Zok5wNZvZOI8In8J", "reference": 0.6166167498861105}], "sort_ticket": {"search_result": "HJPh9QZXnoxi0RnV", "ticket_queue": "RXkt6Ga7n1MpCNyu"}, "sort_tickets": [{"search_result": "NK2xuqG9qTd63Byu", "threshold": 24, "ticket_queue": "Fvw71W6KwVBYxvec"}, {"search_result": "4DLV8F3fCC6oAY9o", "threshold": 4, "ticket_queue": "Frgu3suzaggiy3ST"}, {"search_result": "PYrV93EkAD6SqaVq", "threshold": 43, "ticket_queue": "VJ9UJGuyLT4ys3GQ"}], "sub_game_modes": {}, "ticket_flexing_selection": "3p5sN5hHLE7nCPs7", "ticket_flexing_selections": [{"selection": "6nLDW9UuIeEFpaW7", "threshold": 55}, {"selection": "ra58Dv0t1OdB4Fo1", "threshold": 76}, {"selection": "gGcQ2I4EXQ0LpyYV", "threshold": 73}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 82, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'eLmOrQWdcDDp745C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'usC6KFjfSwTxUENY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Tbcm7Ba2TVVh6EED' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 74}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'QyRoIXGfaDJtAQqs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'dT8htWMxqCbCwjxD' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "gIhiHUfLAgLpEZJy", "count": 74, "mmrMax": 0.5673128514617082, "mmrMean": 0.20635664434709455, "mmrMin": 0.5302400617763974, "mmrStdDev": 0.829467288360309}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'cnv8cdvfTIaCmvYN' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 74, "party_attributes": {"hfWh84fvlARNf2rR": {}, "GPE2bs1EK085VydK": {}, "LZE9pViJOlA718YB": {}}, "party_id": "z1gRKdxJejbZozAx", "party_members": [{"extra_attributes": {"Capw3uuiUoI2EoDO": {}, "5MUx7orAE6DFsWxK": {}, "3C0pFgvAienxOT7M": {}}, "user_id": "tmuB6tNKRcjo0htw"}, {"extra_attributes": {"mv2GYUyvIBUHF2fi": {}, "0FflEl3pFEMa9E55": {}, "TfWNKOhDq4k8EWRg": {}}, "user_id": "9ci4Nw47WHS5wnDy"}, {"extra_attributes": {"ykfF0NiqCsq003BX": {}, "OY5cizUxX1k9tpTR": {}, "QI38mrp5thfjILgm": {}}, "user_id": "OshFbtvCwB2rpfQl"}], "ticket_created_at": 86, "ticket_id": "BxsYuguVvsVTXv1E"}, {"first_ticket_created_at": 40, "party_attributes": {"knKEGOqe853L9HrN": {}, "y6Mq7Y41Uxy9RpF6": {}, "hVatuyluofa15PfN": {}}, "party_id": "Ft1ngvvFsNUEcT63", "party_members": [{"extra_attributes": {"Cmt8NaSSB5cDjfdy": {}, "Nk04mezHJ1ZeSOCN": {}, "IBj5f1rzOPgJUvBX": {}}, "user_id": "JbuSfgNh6gO1Iwfq"}, {"extra_attributes": {"aZxDc3vDy9hhSYtj": {}, "SnXg5JYn2FBIHXkQ": {}, "9gmxE4b6AMJvmeVa": {}}, "user_id": "a1dnoVBfHudTC3Za"}, {"extra_attributes": {"eH4zaypkhqEY4v5c": {}, "gU6mK2QznVXhgzmh": {}, "2rXR4l3bcaKNtFSk": {}}, "user_id": "zsC8icUOvcQMsJLU"}], "ticket_created_at": 95, "ticket_id": "cP08A7cBhA89pplQ"}, {"first_ticket_created_at": 5, "party_attributes": {"3i7se2zuXKzdXlGV": {}, "DhoINFdWSDgjAXnT": {}, "NX2M67duxPrV1jAo": {}}, "party_id": "8yA7Bw7GYi7ug3S3", "party_members": [{"extra_attributes": {"0INS46MvPIyGeDCh": {}, "QIetzSXs0FMQPKnl": {}, "xCvq8GAjB8fadFda": {}}, "user_id": "bBXsI7WCat2Ay93M"}, {"extra_attributes": {"mDn92akb6gKHVGTO": {}, "Q1q07nTDaYgE4BXN": {}, "BHowChIKUZEZWGUQ": {}}, "user_id": "DzDFxtzAhgJGlpcg"}, {"extra_attributes": {"d8lQfK4ScyJFuXY7": {}, "nMvGGJmD6vsY7wU9": {}, "N32dyLcgoDk62ASE": {}}, "user_id": "j2Qo2nNxRGHYuooz"}], "ticket_created_at": 68, "ticket_id": "OJEAogT4MrFqbWjq"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'WHJTOl01Dp9Eex6D' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 78}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'qbzqQBrKZ7TGwPIy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'AbqXHvblwPQ4sd0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'YHofzlaP2sebIVBo' \
    --matchID 'JxQ6wVHfUNv7Sfzj' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["cJGYCO6LmWg9KiAY", "45CrLNPzK5Afqg5a", "Fdl0jjhptWD6haj7"], "party_id": "iv88v26l3GWEdXZ8", "user_id": "hebfGTmjgtE42BaR"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'AinRIPnkgkOrAx9k' \
    --matchID 'Qq73zEFbNLgOskBf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'yLGxqxxphvo2AFqq' \
    --matchID 'wBccKqRniqa9B880' \
    --namespace $AB_NAMESPACE \
    --userID 'dugjHGADCeEa5jrj' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'HcHYlSeXX2WRKqqn' \
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
    --channelName '1qBuuJLko1DcGNke' \
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