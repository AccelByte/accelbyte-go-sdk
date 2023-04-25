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
echo "1..30"

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
    --limit '46' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "jI0Wj16aspkFFtzv", "description": "25gxHefFREMjEVX4", "find_match_timeout_seconds": 40, "game_mode": "ewMlXn2bkcRQChab", "joinable": false, "max_delay_ms": 28, "region_expansion_rate_ms": 3, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 49, "min": 87, "name": "xoMx9agcXnlCIUxq"}, {"max": 25, "min": 29, "name": "Teo7CAEzMrhQzZGI"}, {"max": 85, "min": 8, "name": "cWh6NdXvyrc1o2Au"}], [{"max": 29, "min": 88, "name": "2qn40JbVM1G6wXIk"}, {"max": 9, "min": 71, "name": "RPbBAvwo0ADgZGgd"}, {"max": 71, "min": 86, "name": "DK3NLfa1dsSZvIS9"}], [{"max": 29, "min": 56, "name": "irS6HPj3dQqQbrSh"}, {"max": 37, "min": 74, "name": "u0tv9xJ6THUlK2o8"}, {"max": 41, "min": 39, "name": "gsYU194ORNjAKfiT"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 14}, "max_number": 10, "min_number": 49, "player_max_number": 59, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 57, "name": "P6ErB3172HQEksvu"}, {"max": 17, "min": 72, "name": "Jp2y44YdrVKLgecA"}, {"max": 13, "min": 36, "name": "H8WfYBjpBLI88C5o"}], [{"max": 74, "min": 58, "name": "yhVvJd5cZ9WPiGZE"}, {"max": 38, "min": 17, "name": "GwiZLfkGZi9fvioq"}, {"max": 84, "min": 63, "name": "4Nfd3JNlPo4v8S2t"}], [{"max": 92, "min": 67, "name": "kcgU6K3ACSdpHIDs"}, {"max": 76, "min": 26, "name": "A7aj9eZql9ZfMeLd"}, {"max": 95, "min": 40, "name": "CpCpvvVg5UqD6OAA"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 6}, "duration": 35, "max_number": 55, "min_number": 75, "player_max_number": 38, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 90, "min": 22, "name": "IZESiJLqoj9Y2Ux4"}, {"max": 35, "min": 94, "name": "v1pqNt4p1Earp1vb"}, {"max": 99, "min": 49, "name": "L5g44K55fjY7xu77"}], [{"max": 33, "min": 70, "name": "RFwEyH5Zsjd1J5nZ"}, {"max": 45, "min": 97, "name": "GNEKiIgsNHAk9OxI"}, {"max": 25, "min": 44, "name": "NE5tdwmMrMeX3ucL"}], [{"max": 78, "min": 75, "name": "HDk2meCpYtphgbq2"}, {"max": 14, "min": 81, "name": "beR1ooAR9QX1o8xt"}, {"max": 7, "min": 7, "name": "N3eg7NLNfYs2pjQF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 21}, "duration": 77, "max_number": 19, "min_number": 2, "player_max_number": 32, "player_min_number": 22}, {"combination": {"alliances": [[{"max": 98, "min": 46, "name": "teU0FlIcE6fLfxEb"}, {"max": 66, "min": 15, "name": "9LXnX8CXopPIHkcC"}, {"max": 88, "min": 80, "name": "4BvEWiQnQ4NGriJU"}], [{"max": 74, "min": 60, "name": "mifHRCRL0NmQNDj0"}, {"max": 8, "min": 26, "name": "cVnhujHtUxlWL7yd"}, {"max": 77, "min": 87, "name": "OyHvZ9qyctcvp5eH"}], [{"max": 90, "min": 95, "name": "b14SfQj4j2VT5e9F"}, {"max": 99, "min": 72, "name": "9SqsA3Ghi0VDyPEw"}, {"max": 13, "min": 53, "name": "ijtqbYxOWoc718M3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 42}, "duration": 34, "max_number": 91, "min_number": 31, "player_max_number": 34, "player_min_number": 69}], "flexing_rule": [{"attribute": "eUJCXVigWZb6616f", "criteria": "8Hi7jLMCDLZmTLjl", "duration": 38, "reference": 0.775226479011252}, {"attribute": "LpZUdv2oJSOdJn42", "criteria": "Ipy1eahqNOwSIa6C", "duration": 34, "reference": 0.49830902061347426}, {"attribute": "icfVPaGQ3PEK82uI", "criteria": "IPloM0Yd5REzAhOh", "duration": 78, "reference": 0.4381488801836648}], "match_options": {"options": [{"name": "vqnGc8K4gJchfqeW", "type": "vewzQISWFTt9Zq0D"}, {"name": "lv2epPRo91qFyzOW", "type": "baR7o4UxzWvgrPxw"}, {"name": "4LLBbz9QAaJN9iDL", "type": "CginG6J09qn8mbkT"}]}, "matching_rule": [{"attribute": "BczLS5XlBp4oRkfO", "criteria": "GzPErJ9Ksm443q1v", "reference": 0.6661384923848023}, {"attribute": "rIdRLmOqdccFpeqa", "criteria": "HIoCRxvVA5PMnLrf", "reference": 0.5279042487057237}, {"attribute": "FOuP2TKHJBT0p7KM", "criteria": "H6DYRZLAYN6nC2Sj", "reference": 0.4759540553506778}], "rebalance_enable": true, "sub_game_modes": {"ksIDEtVeejvKSEYT": {"alliance": {"combination": {"alliances": [[{"max": 76, "min": 2, "name": "nWDe1UPafYICSTCw"}, {"max": 81, "min": 89, "name": "2u2PBXtPVpAMn4Pt"}, {"max": 22, "min": 65, "name": "u3apMElj8lRGfQrv"}], [{"max": 66, "min": 68, "name": "lv3cpaQgc4O07QIt"}, {"max": 52, "min": 9, "name": "1v6w7xS6om3RUtE3"}, {"max": 51, "min": 92, "name": "adLM9ogounwbC9TC"}], [{"max": 23, "min": 55, "name": "nxQJhhp0EQXgMK4H"}, {"max": 2, "min": 92, "name": "7rol21EmamrdEORV"}, {"max": 85, "min": 23, "name": "HVoJhaeaXDkLEtij"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 6}, "max_number": 32, "min_number": 65, "player_max_number": 0, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 53, "name": "q4YQo26vP2fYLORz"}, {"max": 23, "min": 68, "name": "myozyaPpPSqD8Txt"}, {"max": 78, "min": 55, "name": "BoTlrbUB3gdE8FI7"}], [{"max": 48, "min": 11, "name": "99knLT3KtFp0nlaP"}, {"max": 82, "min": 28, "name": "5f1UwltEew6M4pzB"}, {"max": 93, "min": 87, "name": "iI7LOohKWTuLpnHh"}], [{"max": 50, "min": 9, "name": "tvSncN9NpU3AMQgL"}, {"max": 44, "min": 25, "name": "zu3Rjlfo02apOfTX"}, {"max": 2, "min": 22, "name": "0bnTzUNV1zdmxKZ1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 79}, "duration": 59, "max_number": 1, "min_number": 92, "player_max_number": 38, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 83, "min": 80, "name": "IJmOBt6DNdoeVPBr"}, {"max": 50, "min": 5, "name": "xWJyntQh8NFqoYLG"}, {"max": 34, "min": 84, "name": "EVE06KjzlcaIokjX"}], [{"max": 69, "min": 23, "name": "HgyrmM9QBUcTqtsj"}, {"max": 17, "min": 20, "name": "KNh3rqqQyzOAV2iF"}, {"max": 30, "min": 6, "name": "HQXjxT21Joew4FmI"}], [{"max": 65, "min": 49, "name": "0LtXJ208qP7s0M2j"}, {"max": 35, "min": 69, "name": "ZPMAwHzzIc5225Bd"}, {"max": 17, "min": 32, "name": "lvXOUsjHSaaOnXja"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 89}, "duration": 31, "max_number": 83, "min_number": 56, "player_max_number": 54, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 14, "min": 15, "name": "VNOa0sa3UAdAOeyc"}, {"max": 65, "min": 23, "name": "hBP7ER91FC5py97c"}, {"max": 66, "min": 52, "name": "fGKgVTn8eR7hXV6z"}], [{"max": 37, "min": 64, "name": "ODAJnCBtMggneZ4a"}, {"max": 14, "min": 96, "name": "7Lx0IS6GS2knALXp"}, {"max": 81, "min": 9, "name": "0JBTrrHR1IKMK90n"}], [{"max": 94, "min": 87, "name": "STWZo20aKFZIl4k0"}, {"max": 4, "min": 90, "name": "UAcmDAjkhRM2QZJI"}, {"max": 25, "min": 69, "name": "rgYJ467MmS3Y9sCU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 22}, "duration": 19, "max_number": 34, "min_number": 57, "player_max_number": 25, "player_min_number": 36}], "name": "aFQEYH4UPRMzbika"}, "6yqxik0tJlcxsQMx": {"alliance": {"combination": {"alliances": [[{"max": 21, "min": 39, "name": "6PTUCTRUl2Qvllgl"}, {"max": 7, "min": 52, "name": "SOXTxtskOvTVwcES"}, {"max": 38, "min": 53, "name": "bBOqovMi1pe3zkic"}], [{"max": 88, "min": 84, "name": "As298HQEfPsp7Tdo"}, {"max": 65, "min": 92, "name": "hBKwwc1hVl5uCqEC"}, {"max": 85, "min": 44, "name": "b7qLPnfDQxXlAQW5"}], [{"max": 71, "min": 83, "name": "xfoPAwggzXA9Z3PY"}, {"max": 14, "min": 54, "name": "WvJ3n7zXSyZo0Hue"}, {"max": 55, "min": 35, "name": "iqOf2uffLPsLmc9n"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 9}, "max_number": 50, "min_number": 12, "player_max_number": 89, "player_min_number": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 14, "min": 87, "name": "etZeqhcjftAWZXCl"}, {"max": 91, "min": 66, "name": "8Ci2LWCHIzWRnhps"}, {"max": 61, "min": 59, "name": "SdIgkvbcD9fNUnV8"}], [{"max": 31, "min": 33, "name": "U81cyg6pwYngyAdH"}, {"max": 81, "min": 81, "name": "Y7ZsTS20AVn8pb2G"}, {"max": 43, "min": 59, "name": "tctXCMay0qqMQAIS"}], [{"max": 98, "min": 2, "name": "UxuLX6WDFN5TwGvd"}, {"max": 78, "min": 6, "name": "9qddV0Z4ekONCmif"}, {"max": 51, "min": 76, "name": "SElj8tQqc1CxSerA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 33}, "duration": 20, "max_number": 59, "min_number": 35, "player_max_number": 21, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 93, "min": 55, "name": "lN1G8iTxZn8fxnTh"}, {"max": 35, "min": 3, "name": "hyyBGPsRUdcrtgsp"}, {"max": 79, "min": 70, "name": "uilAsxIncOb9SYG1"}], [{"max": 80, "min": 97, "name": "NsxL84HKIjj3s6CA"}, {"max": 41, "min": 7, "name": "P8h7W16nubATljO2"}, {"max": 90, "min": 18, "name": "uRHCzt6KS310Nlu8"}], [{"max": 44, "min": 28, "name": "b82v6472AXX4fARm"}, {"max": 45, "min": 72, "name": "heeHsg8R4VVleIWA"}, {"max": 33, "min": 60, "name": "sdhI7392lRjrMJWR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 73}, "duration": 82, "max_number": 20, "min_number": 37, "player_max_number": 53, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 91, "min": 66, "name": "7pNNaFoPdsGx06Hw"}, {"max": 99, "min": 93, "name": "N02ddUPm1fbNa8dm"}, {"max": 5, "min": 85, "name": "5bWzTHFrvhCBXAW6"}], [{"max": 86, "min": 54, "name": "1DWFypi7rweyQBEG"}, {"max": 12, "min": 85, "name": "TgcmBAd0FuAEs6kP"}, {"max": 80, "min": 13, "name": "rDvKOCcAYyNvT7wm"}], [{"max": 15, "min": 47, "name": "0qnbxkFcLzcsi6A3"}, {"max": 94, "min": 57, "name": "sX1ND3sLeYM9JhY4"}, {"max": 14, "min": 82, "name": "8pmmwE35VwcN5aLv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 2}, "duration": 28, "max_number": 15, "min_number": 60, "player_max_number": 46, "player_min_number": 16}], "name": "KyQO9FVUQxsNFJww"}, "stCjksY4IhKEFPoq": {"alliance": {"combination": {"alliances": [[{"max": 97, "min": 44, "name": "GsJ04xiejz3s1x2K"}, {"max": 47, "min": 39, "name": "DqFJTojM82O4C4E0"}, {"max": 34, "min": 83, "name": "y1Jeshw0UHLiADq7"}], [{"max": 71, "min": 95, "name": "LZty9ktm9QhnRkCd"}, {"max": 93, "min": 1, "name": "fXyJOjVnV3FyhHzf"}, {"max": 42, "min": 61, "name": "O9JaoOY5q3kivVTj"}], [{"max": 8, "min": 39, "name": "dk95S9q1EOt2kz27"}, {"max": 93, "min": 32, "name": "nSohq6nsMye0V9Oc"}, {"max": 39, "min": 28, "name": "DCDKxF5ac9GA23we"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 91}, "max_number": 84, "min_number": 98, "player_max_number": 100, "player_min_number": 45}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 78, "min": 100, "name": "p5g84liawSpKLdqs"}, {"max": 97, "min": 72, "name": "rRpz2YfPcHFMmdpV"}, {"max": 36, "min": 62, "name": "yeZfDY6p4HIM0DNA"}], [{"max": 64, "min": 18, "name": "YGjIAQF5h6vrOnOT"}, {"max": 45, "min": 19, "name": "RPhruuM1Y2pRBFUg"}, {"max": 78, "min": 2, "name": "tYH1CE3LbyEkXD7S"}], [{"max": 20, "min": 54, "name": "BVbOUetxFXGcoM6D"}, {"max": 50, "min": 27, "name": "J9JPcxKIn54ukKVz"}, {"max": 26, "min": 98, "name": "NFvTrNDZsNbEvMoz"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 43}, "duration": 91, "max_number": 62, "min_number": 95, "player_max_number": 62, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 95, "min": 51, "name": "fKz6f3eXAczm6mzq"}, {"max": 49, "min": 62, "name": "2nLCcJAKiKs47NA8"}, {"max": 68, "min": 27, "name": "6jiERzH6HI60fxyj"}], [{"max": 7, "min": 65, "name": "8exchL1t83vqxNiy"}, {"max": 62, "min": 34, "name": "vpYfgyIoiAGVTZiy"}, {"max": 87, "min": 20, "name": "zVp69x1KNRkyzPZJ"}], [{"max": 49, "min": 97, "name": "Cw0ht5p4Wy9qs2aH"}, {"max": 58, "min": 22, "name": "NXJz0lkQWJiSNB41"}, {"max": 69, "min": 82, "name": "QGYyDqFpPegC7WXz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 24}, "duration": 44, "max_number": 82, "min_number": 86, "player_max_number": 27, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 47, "min": 72, "name": "kSHfCzAN3gY0VHGU"}, {"max": 32, "min": 87, "name": "W1hJwc2ZHGYLwQCm"}, {"max": 92, "min": 4, "name": "5DFXOKYeZm5pMTpf"}], [{"max": 39, "min": 28, "name": "gIAeqwWt9VqY0OT6"}, {"max": 78, "min": 83, "name": "jaykuSehZSyv7zJa"}, {"max": 92, "min": 43, "name": "jO3Pcy6W5zPMa0PV"}], [{"max": 32, "min": 49, "name": "GLQCqalyXvBzyrus"}, {"max": 33, "min": 44, "name": "lkC2oYYpe6tbSnv4"}, {"max": 57, "min": 66, "name": "iGlflXxjobFIkQ4Z"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 3}, "duration": 56, "max_number": 34, "min_number": 90, "player_max_number": 85, "player_min_number": 24}], "name": "UVDyRXHvAT0mb4ta"}}}, "session_queue_timeout_seconds": 89, "social_matchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'YWQEZ7dDT4tlkikB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "9ST7gbTaxsffL6pw", "players": [{"results": [{"attribute": "bx0yi1mmQbAXD75a", "value": 0.357763329660316}, {"attribute": "rMTGuh5uHGBsMyAE", "value": 0.010670340264296918}, {"attribute": "zoQn8gv7eC9NLuLq", "value": 0.059417411956498634}], "user_id": "Vh8LSp3BMADgOVQs"}, {"results": [{"attribute": "NEMyfYsA8rzhbEQ9", "value": 0.9942181565950641}, {"attribute": "6TuSMOj3w6FjLU6T", "value": 0.6953605473903549}, {"attribute": "rasBzWhglYphWP0k", "value": 0.5416269680681797}], "user_id": "0V6fy1TWrNItgahx"}, {"results": [{"attribute": "fTn9KA22iv8TcvUH", "value": 0.2600664423658684}, {"attribute": "yYQE0zlkGaqJNLKr", "value": 0.38953471736524314}, {"attribute": "vwuQ9pUzuVJdTzM6", "value": 0.9096047414558652}], "user_id": "6GWUor5O9O0tPJIQ"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "MXH85SGL1t4atwLf"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "uoX54iClURR1McWT", "client_version": "vhkBzgzRtwtNRiyr", "deployment": "pJgwk0A89Stly4Jp", "error_code": 3, "error_message": "cFezAbenofQikiyt", "game_mode": "9qPKDUBTq8jBirTN", "joinable": false, "match_id": "EgYvYm687sbUSuNd", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 49, "party_attributes": {"MA9oNne8PVfuaqE0": {}, "RBIKGowwHO7d7i0s": {}, "dAp9jmStFugYcOw6": {}}, "party_id": "YC0wyfvkIxMwRVQL", "party_members": [{"extra_attributes": {"zTt8MqE7FmTf1zku": {}, "isAJw5kcCRWtFGHM": {}, "g5MiNJlGPa3Eklf4": {}}, "user_id": "y8Zm2SCvWqRksF4d"}, {"extra_attributes": {"wX01Z6nJQAeG7lLQ": {}, "VLjZyl3IDY7pdPKB": {}, "767f9eAz3LHUhQ8t": {}}, "user_id": "A7pLZN1syS38oScM"}, {"extra_attributes": {"KX5rX4qxJNSlmEXq": {}, "zE6g3fOhnqAEFMlx": {}, "tvlLziYqdFNi2tXy": {}}, "user_id": "G6XiN3DZLT618rBM"}], "ticket_created_at": 79, "ticket_id": "0cChmxx4G52GVJrk"}, {"first_ticket_created_at": 64, "party_attributes": {"QijfNIUPNtiotnZV": {}, "vJHhszrjwZPd05RO": {}, "dCDegaIRVTHEZwmP": {}}, "party_id": "OULXEz5EADMXl3RK", "party_members": [{"extra_attributes": {"QOKoRUxywX5Gf1cn": {}, "xTiAiABm9Rca86dm": {}, "FVeNeYqixtdWxyPP": {}}, "user_id": "XDtXBgRdAEaLy0Xz"}, {"extra_attributes": {"5RmGCUYZY1UPDkYT": {}, "UbsfwTv2yEvPT4xv": {}, "3ntWT4MQ7suEXMqF": {}}, "user_id": "Qn9vxamZRdHB1BRc"}, {"extra_attributes": {"NUFKZs7YgdlrDjm6": {}, "JQxAEQhLg6Cme2ou": {}, "KjzBzTcqIMdnkwo3": {}}, "user_id": "Pd0B2KmLfhHVbsmx"}], "ticket_created_at": 24, "ticket_id": "16kCIR3VZoytFHZc"}, {"first_ticket_created_at": 21, "party_attributes": {"imvQEfOYcxm7LjUf": {}, "vFJq2KZ0XxA1PojQ": {}, "lGKNGgTiztWtuV5w": {}}, "party_id": "2MnHZ43TwL44GGmc", "party_members": [{"extra_attributes": {"pe1D8hkcmsu5Slve": {}, "rNIWxuLGX9n1gzce": {}, "DHbJOaTp2eYC4VRn": {}}, "user_id": "LH0XMJn0uLwtQAR8"}, {"extra_attributes": {"pqiRerbCHuksIv18": {}, "ima7hFnf8j0fPRiL": {}, "ENHb010dJEeVznzR": {}}, "user_id": "MRlgRNDhVYeznZvM"}, {"extra_attributes": {"eqp5eW9aGNir1Uek": {}, "srOYHDOqXVZL4B1j": {}, "OoSADcTk2242eM8M": {}}, "user_id": "N7bdH01uRzO7WPIi"}], "ticket_created_at": 7, "ticket_id": "RsOtRb9M2d5eEyzD"}]}, {"matching_parties": [{"first_ticket_created_at": 12, "party_attributes": {"sgHRscrPqWehY75L": {}, "J9BiS524JYue5Akf": {}, "f68d73YIAad65Xxb": {}}, "party_id": "62Cj6UGNig91DoRK", "party_members": [{"extra_attributes": {"6NZU4dFcLiQYSqeb": {}, "Ttl107OKbk8iEy6N": {}, "wKmL1211IVC9n587": {}}, "user_id": "lTIU6YX3qyk1bWPc"}, {"extra_attributes": {"IpmCXa5K5w3jXTna": {}, "P3f5qSv8TPjzfyZE": {}, "Fn97ri3V3GclOScY": {}}, "user_id": "ezm3SPMowc8xpdAZ"}, {"extra_attributes": {"wL4sgUG09zCGZavu": {}, "wzDHAj2QAPr564Xh": {}, "rED9U00VmaGaeNGI": {}}, "user_id": "VhIr9n5YXYLR3ANH"}], "ticket_created_at": 20, "ticket_id": "yzkG1qfRpu1jopd3"}, {"first_ticket_created_at": 69, "party_attributes": {"wQas97uyDNmK0AyZ": {}, "6NsA3QxZN6OQZQMG": {}, "IGI3qyZDUl2cz5TJ": {}}, "party_id": "Oq24NFU3vGwbCNlg", "party_members": [{"extra_attributes": {"Zda3fjRAbHJ2tcyf": {}, "5TJHvgc0sbmLNPfD": {}, "lb9ltI7ACQATKcwF": {}}, "user_id": "6RJH4js6WOecOw2Z"}, {"extra_attributes": {"h1QbS1mvurJugceL": {}, "oEQ1fCEPFCcIzUgS": {}, "FINRz4i35fAZCmK6": {}}, "user_id": "iXBfiXKPZhjir8wf"}, {"extra_attributes": {"s7rpMvUHhdO2SxHf": {}, "FjkPiwCDP502HqVW": {}, "AIww7WorB1sR9YFr": {}}, "user_id": "QNrvFCJOIgOutanX"}], "ticket_created_at": 31, "ticket_id": "mMKF9fiW4V4R2Iy2"}, {"first_ticket_created_at": 28, "party_attributes": {"a6jPmsEhS7nSHGKd": {}, "f7C76BPxKJV4DKz1": {}, "85wcGFZLH5jctHlB": {}}, "party_id": "AbrXSjYFuPARDyqq", "party_members": [{"extra_attributes": {"u9qmxhfwZsgYz3Pu": {}, "64uItbC1b1Tj7P3w": {}, "uOwrEZJqNug2csEU": {}}, "user_id": "uOukhwtGcvYVO6Kp"}, {"extra_attributes": {"UpJhvbvCQ86wY67A": {}, "WuBcqsPZym1n55gw": {}, "YHRAEIzVzaHdgaSe": {}}, "user_id": "juvDEY9gCJM6D0HN"}, {"extra_attributes": {"0UotmEG9RPdwfGtz": {}, "9hWFxJvWRlJYdzWD": {}, "naH4BNmRFmsrda7Q": {}}, "user_id": "KWhL09xCW5ClTTbF"}], "ticket_created_at": 69, "ticket_id": "1VIQbz59WA3d6gKq"}]}, {"matching_parties": [{"first_ticket_created_at": 33, "party_attributes": {"CHHiJuIzw0UXGo8q": {}, "uzLjaUR1nVAP33dq": {}, "7BeBa35WQoHorrQn": {}}, "party_id": "zH9XiZZOkg10552E", "party_members": [{"extra_attributes": {"jmsuMwd6wU8D5IJV": {}, "NN3yzmuMxCCESkhv": {}, "FiJEtDXkIGx7I8zc": {}}, "user_id": "VpqYJMvkITFmNIRf"}, {"extra_attributes": {"wxwDDS7LTbPTxskC": {}, "AR8QsyWsoSqX1opY": {}, "D1txflrsX2KejWFh": {}}, "user_id": "FbHUHgwhJzQVV7UD"}, {"extra_attributes": {"txqK78TY4Q1npjxJ": {}, "xJe8L3oCoBhILji6": {}, "4MY8h9GQSGW0zVTe": {}}, "user_id": "p3E3TFJb75heR4Jl"}], "ticket_created_at": 20, "ticket_id": "K229Vwqxt9oFlC4L"}, {"first_ticket_created_at": 34, "party_attributes": {"PyiNCn1saxlO9rB0": {}, "HwO3U2r3VrRdAbfo": {}, "g0luCk4vAOxEgyB8": {}}, "party_id": "QuKT8iVgViCSzlbe", "party_members": [{"extra_attributes": {"DQeVPlaPum2sOgZb": {}, "BzXhwFdaFeu6tRZC": {}, "r21AQEYEybc7O0TV": {}}, "user_id": "5rFjTfiQVfA3z9Ow"}, {"extra_attributes": {"kp6q2274cNaMu2X1": {}, "YLtXiIERqJtS6gJO": {}, "NjJ8GuMZV0GdD1aA": {}}, "user_id": "wUfhM1bBn6kepeEA"}, {"extra_attributes": {"j3s3Ud5ynYo99PVu": {}, "jYbSoHdnhfTnMMRH": {}, "UARFTwlQNR1EEfr0": {}}, "user_id": "xxl7FsHXQZYyJhDe"}], "ticket_created_at": 15, "ticket_id": "CCYhDNGxp1rnx6cS"}, {"first_ticket_created_at": 84, "party_attributes": {"9nyPFTwppqiWZa5r": {}, "ulUsPZiOt9KtvxXY": {}, "lv7ONmZAyBVbHxsE": {}}, "party_id": "x0DiZGETmM6a9hOk", "party_members": [{"extra_attributes": {"pBgfd7t8iXAxd4ed": {}, "YJpYQubxJ1lrEec3": {}, "HZQH7xgpjGYZlE2t": {}}, "user_id": "oHxpYkQ33skqMD25"}, {"extra_attributes": {"KZDbIXGEst8qgNCo": {}, "n9pFkuloHsLDGYXo": {}, "IyGbRTiiTGZ4MpmE": {}}, "user_id": "d45wDkeumow57GTp"}, {"extra_attributes": {"w8E7uExPcIXIMkNz": {}, "GSxxCnox5WnEUWUP": {}, "YmSoOSd9cjHzIjuS": {}}, "user_id": "RZJAyWfBSr5knhcK"}], "ticket_created_at": 70, "ticket_id": "M0v7V9ZRptZriDA4"}]}], "namespace": "mNQNCRuLWGzLNsty", "party_attributes": {"a8ZX5jO00ooKhH2d": {}, "5PCw3evVyPxEDOym": {}, "WbjunWg3yHsuIWLi": {}}, "party_id": "cTcLofS3MgUCS5fZ", "queued_at": 1, "region": "VW0Onxw6CdZAfYvB", "server_name": "sRA4Q2J66ElS5pHb", "status": "LwDuGGYF13c1IkdZ", "ticket_id": "29dCqXqW8ksGrplz", "updated_at": "1977-04-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "YzZoZVQq1t2YYztE"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'oJoWMs4fv6CNd78f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 4, "userID": "gbzi1YrXKzVcrvbu", "weight": 0.26141305594994957}' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'pWtwH1QyWw1X5gdj' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'aGZJNTG2699R3OJZ' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'xfL9XUEDtkh0gShH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'io7vZ2zyvbIHZAQc' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "g4H6i8AHi2el1jHN", "description": "5eCoh7t96o1uDTY5", "findMatchTimeoutSeconds": 52, "joinable": true, "max_delay_ms": 37, "region_expansion_rate_ms": 70, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 71, "min": 25, "name": "03t2oHZN5OrMdCLH"}, {"max": 4, "min": 51, "name": "HlNnKhgOYFprLAa6"}, {"max": 52, "min": 48, "name": "w4Ye0Rc9a57fQc11"}], [{"max": 77, "min": 37, "name": "nhx30DDQ2WGnNtcR"}, {"max": 69, "min": 58, "name": "WY3S6ngwO5a34l8L"}, {"max": 54, "min": 45, "name": "JECZJ2qQRigTgD1n"}], [{"max": 31, "min": 98, "name": "4IiY83KrJrEqM6DL"}, {"max": 3, "min": 49, "name": "1UhutbBrnRIOdDLG"}, {"max": 11, "min": 59, "name": "Mgc4gcCaoxxX5EOf"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 4}, "maxNumber": 19, "minNumber": 71, "playerMaxNumber": 93, "playerMinNumber": 28}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 40, "min": 93, "name": "YeB3OKZXRj27OrHe"}, {"max": 78, "min": 5, "name": "bdN8044IKHNBAvzQ"}, {"max": 2, "min": 52, "name": "1JNLEVwdjEhWZdF7"}], [{"max": 41, "min": 58, "name": "jQJvqtHrHwauAtCM"}, {"max": 34, "min": 11, "name": "KiCX2FPjMKD6jqML"}, {"max": 10, "min": 30, "name": "faAkJBkOOUU3tD5o"}], [{"max": 65, "min": 38, "name": "GkUz7rwXCOHMbkbj"}, {"max": 38, "min": 45, "name": "YQwDnaYVVpmRP6Ip"}, {"max": 48, "min": 70, "name": "AE5FOxiCQ5MI20Gm"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 87}, "duration": 96, "max_number": 12, "min_number": 73, "player_max_number": 87, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 59, "min": 71, "name": "rx1BL1n7Zcnsi0jd"}, {"max": 90, "min": 89, "name": "ZoZCQkY3j7KSGpha"}, {"max": 93, "min": 57, "name": "yjVBr5db0RbRFZn7"}], [{"max": 41, "min": 25, "name": "D4BXWRnaOz4GiG6O"}, {"max": 73, "min": 20, "name": "U7xSz1JtntyjpLdK"}, {"max": 23, "min": 72, "name": "EnJnHNblLNO1Prz1"}], [{"max": 5, "min": 43, "name": "1IRuHJXltykCmrm9"}, {"max": 32, "min": 47, "name": "JyKZJzDdCCwf3BJV"}, {"max": 98, "min": 76, "name": "kLUDY16e2khvaQE0"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 47}, "duration": 92, "max_number": 59, "min_number": 64, "player_max_number": 29, "player_min_number": 0}, {"combination": {"alliances": [[{"max": 5, "min": 71, "name": "7EgimdpIFeYnKuvu"}, {"max": 9, "min": 12, "name": "eLZp8UpqRQ1Gdhen"}, {"max": 26, "min": 71, "name": "ZY9B0biXzBCWFLYF"}], [{"max": 5, "min": 25, "name": "Hq9oC5h0eOkrLKym"}, {"max": 26, "min": 14, "name": "9uyJYr4ykOE0Td40"}, {"max": 1, "min": 55, "name": "NZKkGVNvDIg9kMAk"}], [{"max": 76, "min": 35, "name": "YCjVHXghcwpiT8D1"}, {"max": 34, "min": 13, "name": "95arN9I8o9xwzVeI"}, {"max": 49, "min": 3, "name": "pWAbVBALKqNrXaRG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 50}, "duration": 74, "max_number": 22, "min_number": 53, "player_max_number": 46, "player_min_number": 53}], "flexingRules": [{"attribute": "LtLJi5BpArcckwYR", "criteria": "NKtoDkD4InBGxGHV", "duration": 8, "reference": 0.4166791875063981}, {"attribute": "46QJu4kSOEGaAsso", "criteria": "RVTRQO77uNLpMEqI", "duration": 83, "reference": 0.7686329474617861}, {"attribute": "smPSc3OHj4kBLHDL", "criteria": "FI6pfMNkoWtg14Mq", "duration": 75, "reference": 0.8232282653544236}], "match_options": {"options": [{"name": "eJSxBlvI4goW9vBO", "type": "6ZKEuLBcR5dm2RoQ"}, {"name": "MOS3I9q9KjNaD1Vx", "type": "jafHAcEBBB9TJFK4"}, {"name": "FYRLTWwwFGBqTQgu", "type": "ZnboWPKJjyNsjAav"}]}, "matchingRules": [{"attribute": "yIxImHJ3TcPQnlQK", "criteria": "cHJRaBYjVAOP8OK8", "reference": 0.7159019694333429}, {"attribute": "1n1gHmFjBsDTVT1r", "criteria": "qFA57Knn6pPKUB9R", "reference": 0.6850605044252978}, {"attribute": "rt9U1B3XlFVLOCbP", "criteria": "fBre5I28gmVPv6aJ", "reference": 0.4079132719590812}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 65, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '2q5pGGvu3HWn0rxH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'aXFV0vtxQKJkGofr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'wcghS8NkcnYFdggo' \
    --matchID 'l1OeNBnk2u7MN64W' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["eRpuLblTXQ7vpOjc", "cEPPf3CrITXX8VZt", "Np6dIlFox2A1SF1R"], "party_id": "sncmIANAaXjsjcKc", "user_id": "i5x2Cn139GLsFZwv"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'pF0hK08AMF11ydph' \
    --matchID 'ADn6F1aQcTqZG0lw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'YVA3SwbRl3WQlkWv' \
    --matchID 'BEIn6FS0g8HZnOTb' \
    --namespace $AB_NAMESPACE \
    --userID 'fuE3seR8Ecyemglb' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
eval_tap 0 24 'SearchSessions # SKIP deprecated' test.out

#- 25 GetSessionHistoryDetailed
eval_tap 0 25 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'ACxqtP7C426R8FX0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
eval_tap 0 29 'SearchSessionsV2 # SKIP deprecated' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE