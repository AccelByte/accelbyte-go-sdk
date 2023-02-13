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
    --limit '12' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "b52EKNhx", "description": "a18A566G", "find_match_timeout_seconds": 28, "game_mode": "TfXlt71z", "joinable": false, "max_delay_ms": 15, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 23, "min": 26, "name": "1eP1PCbQ"}, {"max": 55, "min": 69, "name": "0VvNk9cF"}, {"max": 4, "min": 46, "name": "wDhGvTID"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 36}, "max_number": 79, "min_number": 51, "player_max_number": 75, "player_min_number": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 19, "min": 87, "name": "G3tW0AXR"}, {"max": 93, "min": 70, "name": "zMJJvcYI"}, {"max": 69, "min": 67, "name": "Q27RXrYm"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 52}, "duration": 37, "max_number": 12, "min_number": 31, "player_max_number": 96, "player_min_number": 45}, {"combination": {"alliances": [{"max": 12, "min": 78, "name": "WnJFOcMy"}, {"max": 85, "min": 68, "name": "xhXx1uVQ"}, {"max": 22, "min": 23, "name": "LlY6paEp"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 73}, "duration": 76, "max_number": 17, "min_number": 70, "player_max_number": 79, "player_min_number": 95}, {"combination": {"alliances": [{"max": 67, "min": 56, "name": "SmEBScIh"}, {"max": 13, "min": 42, "name": "ISF8TuZ4"}, {"max": 53, "min": 43, "name": "hEjKrizQ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 77}, "duration": 29, "max_number": 59, "min_number": 50, "player_max_number": 15, "player_min_number": 93}], "flexing_rule": [{"attribute": "HPTHYxAY", "criteria": "Tmjk0vKY", "duration": 100, "reference": 0.5892936715218725}, {"attribute": "xxKfu9cs", "criteria": "HTnf7wCU", "duration": 25, "reference": 0.9216832671673688}, {"attribute": "lTQDNQPq", "criteria": "RmGIEPpq", "duration": 40, "reference": 0.6261538278916335}], "match_options": {"options": [{"name": "nvYuNK4V", "type": "BsZsPBYE"}, {"name": "7QLKpDHd", "type": "pGJWwNhU"}, {"name": "UdCEGEjG", "type": "QXkQD87m"}]}, "matching_rule": [{"attribute": "DFsQRwFX", "criteria": "aRCtBghb", "reference": 0.04691534731434355}, {"attribute": "8kaQO0mx", "criteria": "TCnOdkZt", "reference": 0.7449872498853533}, {"attribute": "aTszFPkE", "criteria": "DqzNHNnE", "reference": 0.2156200148985129}], "rebalance_enable": false, "sub_game_modes": {"FSDuVLL6": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 34, "name": "z78siNiq"}, {"max": 71, "min": 99, "name": "MtXGtP7L"}, {"max": 55, "min": 29, "name": "K2Zty6Rp"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 64}, "max_number": 52, "min_number": 5, "player_max_number": 43, "player_min_number": 44}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 28, "min": 41, "name": "IR2PYxf8"}, {"max": 63, "min": 63, "name": "OPbaJVyJ"}, {"max": 75, "min": 70, "name": "Uv8rwlGh"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 11}, "duration": 37, "max_number": 83, "min_number": 68, "player_max_number": 56, "player_min_number": 1}, {"combination": {"alliances": [{"max": 42, "min": 7, "name": "YmJzyAjx"}, {"max": 30, "min": 60, "name": "84QbLEvO"}, {"max": 19, "min": 80, "name": "6BUPaIk8"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 23}, "duration": 49, "max_number": 30, "min_number": 10, "player_max_number": 89, "player_min_number": 34}, {"combination": {"alliances": [{"max": 14, "min": 81, "name": "VpiBhWxP"}, {"max": 58, "min": 91, "name": "OyMaPzJ8"}, {"max": 66, "min": 71, "name": "TJl4zpGk"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 3}, "duration": 91, "max_number": 21, "min_number": 53, "player_max_number": 30, "player_min_number": 99}], "name": "d3CHqIIX"}, "x85kpen6": {"alliance": {"combination": {"alliances": [{"max": 64, "min": 77, "name": "XOLF4Z9G"}, {"max": 96, "min": 17, "name": "bW6QyFfM"}, {"max": 29, "min": 80, "name": "J7tefWaG"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 15}, "max_number": 69, "min_number": 45, "player_max_number": 24, "player_min_number": 20}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 80, "min": 28, "name": "sqho63os"}, {"max": 21, "min": 5, "name": "IHGHp8Ep"}, {"max": 46, "min": 25, "name": "R4A0cVod"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 98}, "duration": 21, "max_number": 68, "min_number": 59, "player_max_number": 37, "player_min_number": 5}, {"combination": {"alliances": [{"max": 73, "min": 50, "name": "9ipDa3KH"}, {"max": 89, "min": 16, "name": "wyAeATPS"}, {"max": 4, "min": 19, "name": "IXrycsQR"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 72}, "duration": 63, "max_number": 18, "min_number": 55, "player_max_number": 63, "player_min_number": 5}, {"combination": {"alliances": [{"max": 75, "min": 51, "name": "7dioJ1qY"}, {"max": 59, "min": 66, "name": "sJ2DCCSi"}, {"max": 4, "min": 22, "name": "0t9qbIvT"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 7}, "duration": 76, "max_number": 13, "min_number": 33, "player_max_number": 57, "player_min_number": 90}], "name": "FOX0oe2Z"}, "asIpkJMs": {"alliance": {"combination": {"alliances": [{"max": 52, "min": 84, "name": "t3zG2AWY"}, {"max": 43, "min": 10, "name": "MI2EnLrO"}, {"max": 27, "min": 66, "name": "dvFmHrdE"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 96}, "max_number": 39, "min_number": 54, "player_max_number": 69, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 45, "name": "441Khe7d"}, {"max": 79, "min": 52, "name": "DojEmS7p"}, {"max": 95, "min": 93, "name": "3c0y6fhH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 91}, "duration": 17, "max_number": 30, "min_number": 62, "player_max_number": 30, "player_min_number": 32}, {"combination": {"alliances": [{"max": 95, "min": 50, "name": "zvKujVNZ"}, {"max": 91, "min": 25, "name": "2I0idteB"}, {"max": 90, "min": 14, "name": "VizbUtz6"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 77}, "duration": 26, "max_number": 6, "min_number": 9, "player_max_number": 32, "player_min_number": 43}, {"combination": {"alliances": [{"max": 22, "min": 89, "name": "nbmPJOdC"}, {"max": 98, "min": 51, "name": "AbwsXod0"}, {"max": 95, "min": 22, "name": "10lw2FNd"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 9}, "duration": 86, "max_number": 48, "min_number": 36, "player_max_number": 34, "player_min_number": 77}], "name": "nU7fpXJJ"}}}, "session_queue_timeout_seconds": 95, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'ZnOxlrYx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "TKcgw17R", "players": [{"results": [{"attribute": "zwgrsw51", "value": 0.23579744244600032}, {"attribute": "Y38HhxaZ", "value": 0.9550175152751443}, {"attribute": "BQqZP6pT", "value": 0.14595187248774832}], "user_id": "Z1LVYlvo"}, {"results": [{"attribute": "qYr3pHfd", "value": 0.1456695921692499}, {"attribute": "nrAT2dZs", "value": 0.14632211642924675}, {"attribute": "JjXj2Fmr", "value": 0.11887654206752551}], "user_id": "z46vanK4"}, {"results": [{"attribute": "tQEZSuAw", "value": 0.22401190661509263}, {"attribute": "2TXekYaL", "value": 0.4861398702733738}, {"attribute": "zM3iLIX5", "value": 0.3814307690790888}], "user_id": "jDnz89vI"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "sfQRe0i8"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "tuCqyxnO", "client_version": "aSbAbxk5", "deployment": "FFt7daaq", "error_code": 17, "error_message": "9tskpVXk", "game_mode": "7EPJ7RRQ", "joinable": false, "match_id": "vBzzU9dV", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"FmL2doZa": {}, "NtZ5eSic": {}, "DqwrxpUU": {}}, "party_id": "X5yCDAIN", "party_members": [{"extra_attributes": {"ANmo0ygz": {}, "Bd7Cv0Fs": {}, "j3Ej3n6F": {}}, "user_id": "tSq89Qdr"}, {"extra_attributes": {"oyWqdlJv": {}, "qAE4w8qL": {}, "sZN56h6g": {}}, "user_id": "ObrF8XZG"}, {"extra_attributes": {"3YYWGPC6": {}, "I5JzgjcJ": {}, "hGerg9pX": {}}, "user_id": "gFFX2BxE"}], "ticket_created_at": 16, "ticket_id": "oJcm6RYs"}, {"first_ticket_created_at": 61, "party_attributes": {"LnBJ9TSD": {}, "1q0wz2Yb": {}, "S9Zqvoth": {}}, "party_id": "bwbjSlFj", "party_members": [{"extra_attributes": {"mb6N41Yq": {}, "vqe04VrZ": {}, "Vowhfr58": {}}, "user_id": "v39hlCEM"}, {"extra_attributes": {"qFwQISXT": {}, "kltGpTXs": {}, "xkduHj6o": {}}, "user_id": "IZY27PoU"}, {"extra_attributes": {"vaRODYZ0": {}, "pGYzhse4": {}, "bIK3oH0u": {}}, "user_id": "o0OK7O0i"}], "ticket_created_at": 78, "ticket_id": "29FQhY8b"}, {"first_ticket_created_at": 66, "party_attributes": {"asurUVVj": {}, "Eb8EdWbc": {}, "xDsNzmPZ": {}}, "party_id": "ZEkW1W9Q", "party_members": [{"extra_attributes": {"0h3QYA7z": {}, "SoThIdB4": {}, "HWYY5k2w": {}}, "user_id": "qg92dPMd"}, {"extra_attributes": {"DReij3c6": {}, "L8gk5HRv": {}, "jqoAuA5Q": {}}, "user_id": "QdFtLhQA"}, {"extra_attributes": {"HlInkLj5": {}, "7YQLASpV": {}, "vgY1PHjZ": {}}, "user_id": "XLyr2WIV"}], "ticket_created_at": 51, "ticket_id": "3vnudmhZ"}]}, {"matching_parties": [{"first_ticket_created_at": 63, "party_attributes": {"OXdEDHST": {}, "ZJ1AFdzF": {}, "ojaEZxcN": {}}, "party_id": "zH1xZ4MH", "party_members": [{"extra_attributes": {"VG2AQFo1": {}, "C1WmIOIn": {}, "4ckXFXpo": {}}, "user_id": "1kNp4QCO"}, {"extra_attributes": {"9lNZIdOi": {}, "SaOWBlDm": {}, "RwTZdaOw": {}}, "user_id": "iX9tOxdT"}, {"extra_attributes": {"MsyWsz8J": {}, "Gw9UvBAW": {}, "vytjHJhy": {}}, "user_id": "VONotC1z"}], "ticket_created_at": 21, "ticket_id": "b1kIW6Tu"}, {"first_ticket_created_at": 47, "party_attributes": {"IZqoTjUt": {}, "Xcerc5Lv": {}, "RqBipwH5": {}}, "party_id": "tyaXwDE5", "party_members": [{"extra_attributes": {"ZA4wERpt": {}, "KFJyzgeq": {}, "qFGK631o": {}}, "user_id": "1X8ksZBN"}, {"extra_attributes": {"Yu6Hh4Dy": {}, "yO6XtTYl": {}, "6hr71gPe": {}}, "user_id": "FQ7wyjD4"}, {"extra_attributes": {"WKZ4f47m": {}, "N70BSDTN": {}, "JleOkN00": {}}, "user_id": "pxQZDVVd"}], "ticket_created_at": 44, "ticket_id": "0GpIVogh"}, {"first_ticket_created_at": 69, "party_attributes": {"KRKPOKzO": {}, "4nSO4OlH": {}, "qMlz2Ujw": {}}, "party_id": "9SujvZTr", "party_members": [{"extra_attributes": {"yGxBOf5v": {}, "juutGV0H": {}, "6yLbkBVh": {}}, "user_id": "WEM4AlLM"}, {"extra_attributes": {"UeM9Dozy": {}, "LR4fTxtO": {}, "3pfVXgKb": {}}, "user_id": "BJlLMNWW"}, {"extra_attributes": {"MiZpYZ4o": {}, "YiMSu9WR": {}, "wfHpLSi4": {}}, "user_id": "MBByi9Qx"}], "ticket_created_at": 42, "ticket_id": "sl1W7VRW"}]}, {"matching_parties": [{"first_ticket_created_at": 42, "party_attributes": {"UUWXjqS4": {}, "taAdri6x": {}, "NZZj2Ekd": {}}, "party_id": "66bEu7EQ", "party_members": [{"extra_attributes": {"O2BNa8gc": {}, "b1tNgXPS": {}, "UyFCO4q7": {}}, "user_id": "wjXqyumW"}, {"extra_attributes": {"POXC0gMb": {}, "pssY8gBo": {}, "wk0dxtDd": {}}, "user_id": "sI0SRDk7"}, {"extra_attributes": {"zTfrknxU": {}, "t89ZcUDo": {}, "KZ0JwFHw": {}}, "user_id": "6xtboLpU"}], "ticket_created_at": 75, "ticket_id": "hkwlq1Ar"}, {"first_ticket_created_at": 72, "party_attributes": {"z9DQB0Dg": {}, "uvEQaugO": {}, "Iod7Jf3b": {}}, "party_id": "NusJPyvZ", "party_members": [{"extra_attributes": {"RfhDZWmh": {}, "ySCs1ihz": {}, "dLtiqIpX": {}}, "user_id": "NRN58tuV"}, {"extra_attributes": {"6DnTgcGD": {}, "xMi9pO5E": {}, "WB1Lmwxu": {}}, "user_id": "TDzihsSe"}, {"extra_attributes": {"BXZQL2kQ": {}, "k8qdgvC2": {}, "Tu3gybYF": {}}, "user_id": "cpEJvhUQ"}], "ticket_created_at": 41, "ticket_id": "PvOeDjbU"}, {"first_ticket_created_at": 68, "party_attributes": {"ttdZlqar": {}, "NTloRx7z": {}, "qDfh0eTv": {}}, "party_id": "UQq8y7P4", "party_members": [{"extra_attributes": {"NblmS9hi": {}, "VAgmXVq4": {}, "Y9G9vkQc": {}}, "user_id": "48MpHHA2"}, {"extra_attributes": {"raNEBTvR": {}, "4qOSGgBa": {}, "fsVMx8CC": {}}, "user_id": "hw3lZCEY"}, {"extra_attributes": {"6ezYJXva": {}, "JsMcU3J7": {}, "5jaL7SJ2": {}}, "user_id": "XA3jzZQu"}], "ticket_created_at": 99, "ticket_id": "7zSunYaT"}]}], "namespace": "dbuEEzNB", "party_attributes": {"wpKYFKLm": {}, "d0LKDINm": {}, "4f1Vwxd0": {}}, "party_id": "zBOAYxeR", "queued_at": 23, "region": "nqSuHsgS", "server_name": "8VYJhKLw", "status": "xxbp2LTr", "ticket_id": "mQf2YhEF", "updated_at": "1983-08-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "O3mQ7WIx"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'RVBz9yG3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 15, "userID": "JurPR3Qh", "weight": 0.6507088157520904}' \
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
    --matchIDs 'psoX9jdv' \
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
    --strategy 'qUgweLKs' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'BizJFfyt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'z37eqWLf' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "am56lBM8", "description": "kHUL9ivq", "findMatchTimeoutSeconds": 15, "joinable": true, "max_delay_ms": 48, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 47, "min": 4, "name": "0Y444DFW"}, {"max": 71, "min": 76, "name": "Yq8rZaJ8"}, {"max": 67, "min": 9, "name": "UqRN6jlV"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 47}, "maxNumber": 12, "minNumber": 28, "playerMaxNumber": 4, "playerMinNumber": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 73, "min": 47, "name": "929ifd1A"}, {"max": 53, "min": 70, "name": "k4CDB5Ri"}, {"max": 25, "min": 83, "name": "QrJmkZpP"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 87}, "duration": 75, "max_number": 17, "min_number": 42, "player_max_number": 4, "player_min_number": 87}, {"combination": {"alliances": [{"max": 77, "min": 56, "name": "XyymgsfN"}, {"max": 46, "min": 50, "name": "NlqudAXd"}, {"max": 1, "min": 85, "name": "l9aKHC75"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 65}, "duration": 61, "max_number": 86, "min_number": 81, "player_max_number": 57, "player_min_number": 55}, {"combination": {"alliances": [{"max": 25, "min": 62, "name": "oiO5VQ4j"}, {"max": 32, "min": 99, "name": "7wKdwS0R"}, {"max": 14, "min": 67, "name": "kZUwVlt7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 53}, "duration": 33, "max_number": 24, "min_number": 18, "player_max_number": 42, "player_min_number": 13}], "flexingRules": [{"attribute": "40E35QmO", "criteria": "XAXNZLce", "duration": 44, "reference": 0.9810954401628211}, {"attribute": "1QIqlZiR", "criteria": "1KbKpbDS", "duration": 55, "reference": 0.5386508602852941}, {"attribute": "qvZbssD4", "criteria": "HKWy9YAI", "duration": 7, "reference": 0.7735881810430347}], "match_options": {"options": [{"name": "IyipNKxZ", "type": "GplPfdBd"}, {"name": "e4Za9a4c", "type": "BY146DEm"}, {"name": "xa06AbwD", "type": "EZGIrlQf"}]}, "matchingRules": [{"attribute": "2wwrgz1J", "criteria": "mSqU9V0b", "reference": 0.12391011067967506}, {"attribute": "uU4QKAto", "criteria": "5yxtZAzC", "reference": 0.990679571633013}, {"attribute": "88BgD8qa", "criteria": "2evjM1f8", "reference": 0.7372853686005005}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 8, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'E8qYFKle' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'cujdp7Xx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'dTSYQw9s' \
    --matchID '3nm2JbwO' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["0fTRGIem", "d6vaXIm7", "UHKRtSfQ"], "party_id": "xi8sYCZo", "user_id": "mG0GPSo8"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'fJDt2iuH' \
    --matchID 'KsbiWvkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'cNYPi6Wi' \
    --matchID 'qWjnESf4' \
    --namespace $AB_NAMESPACE \
    --userID 'TLQxk7EK' \
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
    --channelName 'HkOIqRXj' \
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