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
    --limit '37' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "BuzpFWWX", "description": "B6lorzQO", "find_match_timeout_seconds": 98, "game_mode": "NPw1Q0hF", "joinable": false, "max_delay_ms": 78, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 58, "min": 17, "name": "2TekfsIl"}, {"max": 25, "min": 21, "name": "fQ3CBQvH"}, {"max": 18, "min": 95, "name": "rJIY9fFC"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 66}, "max_number": 59, "min_number": 1, "player_max_number": 2, "player_min_number": 1}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 5, "name": "AxsMMjkB"}, {"max": 83, "min": 14, "name": "y4RbwZpj"}, {"max": 74, "min": 21, "name": "6ZgeYqXd"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 0}, "duration": 26, "max_number": 78, "min_number": 19, "player_max_number": 25, "player_min_number": 62}, {"combination": {"alliances": [{"max": 95, "min": 17, "name": "ivCJlOHP"}, {"max": 11, "min": 49, "name": "cCfMf6r4"}, {"max": 29, "min": 74, "name": "eY5kxAtn"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 98}, "duration": 91, "max_number": 6, "min_number": 5, "player_max_number": 93, "player_min_number": 27}, {"combination": {"alliances": [{"max": 47, "min": 71, "name": "O1fHGK2x"}, {"max": 15, "min": 30, "name": "pwnNtU7C"}, {"max": 85, "min": 19, "name": "0ypHBSIB"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 80}, "duration": 42, "max_number": 55, "min_number": 43, "player_max_number": 37, "player_min_number": 49}], "flexing_rule": [{"attribute": "Pj6pqn9e", "criteria": "hu2cwVh8", "duration": 46, "reference": 0.500325454913276}, {"attribute": "etmHwo4i", "criteria": "PweFhnYB", "duration": 45, "reference": 0.8861027201593557}, {"attribute": "80DUyqpI", "criteria": "o9gQWv9V", "duration": 3, "reference": 0.023261861632443814}], "match_options": {"options": [{"name": "Yq1hvZHc", "type": "XZR7NJvu"}, {"name": "W0PQQvPk", "type": "ofOotDdy"}, {"name": "Nf7twBmJ", "type": "YPylM7DH"}]}, "matching_rule": [{"attribute": "AqxgDqLB", "criteria": "JOYOjoOF", "reference": 0.599784923529113}, {"attribute": "mgYbpL5G", "criteria": "cIpN9H5f", "reference": 0.8650536449327846}, {"attribute": "oUUkECyU", "criteria": "sns1khXh", "reference": 0.8215759439595947}], "rebalance_enable": true, "sub_game_modes": {"JMfYOEQH": {"alliance": {"combination": {"alliances": [{"max": 40, "min": 96, "name": "o0GE1GFx"}, {"max": 92, "min": 54, "name": "u6LM9yx4"}, {"max": 69, "min": 17, "name": "pY0bh3IM"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 54}, "max_number": 58, "min_number": 5, "player_max_number": 98, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 43, "min": 57, "name": "09PR3afx"}, {"max": 89, "min": 28, "name": "HwiDr8ic"}, {"max": 1, "min": 29, "name": "9nAolC8B"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 96}, "duration": 87, "max_number": 15, "min_number": 1, "player_max_number": 9, "player_min_number": 3}, {"combination": {"alliances": [{"max": 61, "min": 60, "name": "BCrSWwLe"}, {"max": 94, "min": 72, "name": "oInoAw9i"}, {"max": 63, "min": 40, "name": "MKPLQrLQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 12}, "duration": 53, "max_number": 89, "min_number": 64, "player_max_number": 97, "player_min_number": 16}, {"combination": {"alliances": [{"max": 19, "min": 98, "name": "ZaXWSvbR"}, {"max": 18, "min": 32, "name": "Kkx91ccr"}, {"max": 17, "min": 53, "name": "5d9LymAg"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 76}, "duration": 100, "max_number": 87, "min_number": 11, "player_max_number": 25, "player_min_number": 81}], "name": "QxI3MafW"}, "MbawFM9I": {"alliance": {"combination": {"alliances": [{"max": 95, "min": 100, "name": "Mg1UP7ed"}, {"max": 39, "min": 34, "name": "BLHDAh0l"}, {"max": 35, "min": 62, "name": "RNm4GO7T"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 46}, "max_number": 11, "min_number": 10, "player_max_number": 95, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 19, "min": 46, "name": "WYsz5Zjk"}, {"max": 98, "min": 58, "name": "0YM8Mz2I"}, {"max": 2, "min": 92, "name": "h78e40b1"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 27}, "duration": 78, "max_number": 51, "min_number": 88, "player_max_number": 84, "player_min_number": 26}, {"combination": {"alliances": [{"max": 86, "min": 76, "name": "fJ7VEwQU"}, {"max": 87, "min": 10, "name": "JpTF0ONI"}, {"max": 29, "min": 99, "name": "0qkQ3up6"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 84}, "duration": 77, "max_number": 84, "min_number": 47, "player_max_number": 38, "player_min_number": 26}, {"combination": {"alliances": [{"max": 62, "min": 92, "name": "xI3TQaaW"}, {"max": 14, "min": 24, "name": "fsJmdHbr"}, {"max": 67, "min": 59, "name": "i0tv7j6j"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 40}, "duration": 45, "max_number": 78, "min_number": 16, "player_max_number": 30, "player_min_number": 64}], "name": "6ItzAvts"}, "odbN829V": {"alliance": {"combination": {"alliances": [{"max": 63, "min": 70, "name": "nuNMDMhC"}, {"max": 17, "min": 7, "name": "cvNOFiSx"}, {"max": 83, "min": 68, "name": "FwL2Na6s"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 90}, "max_number": 77, "min_number": 83, "player_max_number": 92, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 74, "min": 61, "name": "3XoIKcQ5"}, {"max": 72, "min": 26, "name": "27BAUUgV"}, {"max": 7, "min": 68, "name": "XP5UW7jP"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 60}, "duration": 94, "max_number": 89, "min_number": 58, "player_max_number": 92, "player_min_number": 51}, {"combination": {"alliances": [{"max": 7, "min": 52, "name": "IzctuD3i"}, {"max": 25, "min": 90, "name": "D6qXtNS0"}, {"max": 80, "min": 28, "name": "J0Kuf1Eo"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 9}, "duration": 1, "max_number": 90, "min_number": 24, "player_max_number": 41, "player_min_number": 95}, {"combination": {"alliances": [{"max": 9, "min": 56, "name": "ozVK73mD"}, {"max": 66, "min": 76, "name": "Qn1uozc9"}, {"max": 88, "min": 82, "name": "ZpGIRXjJ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 42}, "duration": 46, "max_number": 24, "min_number": 28, "player_max_number": 24, "player_min_number": 42}], "name": "hCH1UtiY"}}}, "session_queue_timeout_seconds": 79, "social_matchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'VStWjPDl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "W45VZj08", "players": [{"results": [{"attribute": "lenlAkNC", "value": 0.16106278859658973}, {"attribute": "6ht7CRnR", "value": 0.3249363980740021}, {"attribute": "NhJZlJkm", "value": 0.06308102839130691}], "user_id": "WTG0YQ2s"}, {"results": [{"attribute": "e9pZhyg2", "value": 0.25381917341826743}, {"attribute": "dFCGss6g", "value": 0.0060765546917730395}, {"attribute": "wF4Az7uK", "value": 0.12176048522404637}], "user_id": "qqTL9Jq2"}, {"results": [{"attribute": "jBiUgDQ8", "value": 0.7978361452451888}, {"attribute": "PQ7QDyQr", "value": 0.31177214078219784}, {"attribute": "Qi0u6iMr", "value": 0.607173394544732}], "user_id": "p9AkjhiY"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "LOEFUhBz"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "1jV4yhnW", "client_version": "rfxgeQ4t", "deployment": "mD3KdEiY", "error_code": 87, "error_message": "FUllB5Hp", "game_mode": "ZDz5Lsdt", "joinable": false, "match_id": "ypEotPpz", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"MVzwL5G1": {}, "XcjtKeix": {}, "wY1lLe60": {}}, "party_id": "DE7qDl7C", "party_members": [{"extra_attributes": {"NAJVDMd4": {}, "Eir0nNZl": {}, "SW49gb93": {}}, "user_id": "rBmu1SRG"}, {"extra_attributes": {"2cOFiAyd": {}, "mEteV2gD": {}, "8oYKQQGP": {}}, "user_id": "v3q3opiz"}, {"extra_attributes": {"M9Mqnep3": {}, "w0ConJ80": {}, "eMOHyKDw": {}}, "user_id": "GJ0GkYSh"}], "ticket_id": "RxHpQLpB"}, {"first_ticket_created_at": 51, "party_attributes": {"WSG4VhVF": {}, "HEJDRDlx": {}, "EyIAjSfv": {}}, "party_id": "b6LG5THO", "party_members": [{"extra_attributes": {"GlYYv0iu": {}, "Sh5imcpJ": {}, "WHT6GQWH": {}}, "user_id": "HwJdsH2C"}, {"extra_attributes": {"ZTBRlB7p": {}, "S6HgODOl": {}, "vDp8rP7M": {}}, "user_id": "wj7GThBQ"}, {"extra_attributes": {"chiUgsUk": {}, "4XZZftdf": {}, "lJIssY6w": {}}, "user_id": "dAdb6P06"}], "ticket_id": "UhfP5djE"}, {"first_ticket_created_at": 45, "party_attributes": {"2AKs8aZn": {}, "6HnyYCKm": {}, "2dci03NR": {}}, "party_id": "k26QoSYa", "party_members": [{"extra_attributes": {"PakHnZjU": {}, "l5gMddw2": {}, "HmiLsqXr": {}}, "user_id": "5TQU9lsa"}, {"extra_attributes": {"brmWfdJA": {}, "maEwwVxX": {}, "IRNbGX1K": {}}, "user_id": "f7hj8q7f"}, {"extra_attributes": {"CAgT4Hyj": {}, "SzD2lvrl": {}, "p1LK1d8T": {}}, "user_id": "zHHRInqx"}], "ticket_id": "5D0hIhp5"}]}, {"matching_parties": [{"first_ticket_created_at": 14, "party_attributes": {"ktOprPHZ": {}, "DWu9zSGy": {}, "iOrT1o63": {}}, "party_id": "E9zBmq9p", "party_members": [{"extra_attributes": {"Pmg0DHaV": {}, "eqxEJvhZ": {}, "K0hSznZu": {}}, "user_id": "fBsMCAwB"}, {"extra_attributes": {"wCKr0aBe": {}, "Ja1MLLz7": {}, "QFCP27IN": {}}, "user_id": "IStCrBOD"}, {"extra_attributes": {"En90Gw9C": {}, "9G5EXDx4": {}, "Uyh6wZb8": {}}, "user_id": "Nnm2j2Dw"}], "ticket_id": "DannjlIX"}, {"first_ticket_created_at": 32, "party_attributes": {"W95CqkYh": {}, "a6D4Pk8E": {}, "gBPifLdC": {}}, "party_id": "0MWDPY53", "party_members": [{"extra_attributes": {"O16xNjSL": {}, "EJ7JlW5L": {}, "BdhNp2lU": {}}, "user_id": "Ld3QU0Kd"}, {"extra_attributes": {"MBZmJzVS": {}, "45QCaaRM": {}, "QFhJxVbJ": {}}, "user_id": "GfJIu6Zs"}, {"extra_attributes": {"VZrSQjHx": {}, "GuShKpWz": {}, "X9pK8jlh": {}}, "user_id": "ekWSXT7Z"}], "ticket_id": "PGTujuW7"}, {"first_ticket_created_at": 88, "party_attributes": {"OVKvsM2L": {}, "BMctiGB9": {}, "egiujKyJ": {}}, "party_id": "V7eicjLp", "party_members": [{"extra_attributes": {"yOWFrz8C": {}, "SnNkMn8U": {}, "DgYwHAtZ": {}}, "user_id": "8uEcBtXU"}, {"extra_attributes": {"qLbAJP6m": {}, "CiUlKE0z": {}, "1T06U0oF": {}}, "user_id": "IR1IZlhb"}, {"extra_attributes": {"PhU9TYVu": {}, "c4jgjKNb": {}, "P42ngtPD": {}}, "user_id": "WHtESxpa"}], "ticket_id": "XVRNceWQ"}]}, {"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"cgZixYr3": {}, "JgpbHRC2": {}, "O49Nzmvr": {}}, "party_id": "TEYSyBKq", "party_members": [{"extra_attributes": {"o2KFjG0G": {}, "eLUrZqXB": {}, "TuQWp7yr": {}}, "user_id": "kmDU0JhX"}, {"extra_attributes": {"vRtkenbL": {}, "N7uCmCVm": {}, "ZXjV1mIj": {}}, "user_id": "quaSF8yk"}, {"extra_attributes": {"5y8C1hAZ": {}, "mlR4IudW": {}, "exiise08": {}}, "user_id": "7WtzKOft"}], "ticket_id": "O8uoja31"}, {"first_ticket_created_at": 30, "party_attributes": {"WZhA0yBy": {}, "ERGwUml4": {}, "T0Wu5FCH": {}}, "party_id": "zdrtWBsk", "party_members": [{"extra_attributes": {"cIpMKkt6": {}, "xNwwohDp": {}, "gZf9K5Lr": {}}, "user_id": "9SF92Ebk"}, {"extra_attributes": {"aMm0FnBe": {}, "YjSfqcvM": {}, "kIcD9Rbf": {}}, "user_id": "EBDEAX8E"}, {"extra_attributes": {"L57XVbVL": {}, "9i96jkLF": {}, "YmeKBj9N": {}}, "user_id": "zNHZf8R1"}], "ticket_id": "KUFRJttS"}, {"first_ticket_created_at": 28, "party_attributes": {"VVsxnGKj": {}, "kOqtd7ho": {}, "y5C6DKFH": {}}, "party_id": "wrBP2Fcg", "party_members": [{"extra_attributes": {"nO9uOBpb": {}, "MKWtxoXM": {}, "VttfjjPy": {}}, "user_id": "Bb1ntn3L"}, {"extra_attributes": {"c5qAPR9A": {}, "gDIpVtno": {}, "GYaLkV5J": {}}, "user_id": "9nmjfgFZ"}, {"extra_attributes": {"17d2S50m": {}, "iBVDVlqa": {}, "ZxK7uBJU": {}}, "user_id": "67dFI4XU"}], "ticket_id": "ezf0MBBi"}]}], "namespace": "vmckjVCM", "party_attributes": {"0Y39YJBE": {}, "tcDznK19": {}, "RyIzbGEp": {}}, "party_id": "smboZsDb", "queued_at": 72, "region": "38FzUA46", "server_name": "bbLhCYm8", "status": "HW8k6V3l", "ticket_id": "LSd55m1i", "updated_at": "1984-07-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "iKYdxIW6"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'UOgrCvfa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 51, "userID": "YQM7Xc3L", "weight": 0.3790589571166457}' \
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
    --matchIDs 'pWPd46Re' \
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
    --strategy 'n8eqA2hA' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '3Jgmd0Mk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'kmdUkr5R' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "2QWASZl0", "description": "7764TggQ", "findMatchTimeoutSeconds": 26, "joinable": false, "max_delay_ms": 76, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 18, "name": "vHcH4i3S"}, {"max": 39, "min": 76, "name": "udAN5nWi"}, {"max": 78, "min": 84, "name": "OeFts0WX"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 80}, "maxNumber": 28, "minNumber": 28, "playerMaxNumber": 94, "playerMinNumber": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 98, "name": "hgBIwKQV"}, {"max": 17, "min": 7, "name": "aEMdQXSt"}, {"max": 31, "min": 9, "name": "OJHfdTSY"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 34}, "duration": 62, "max_number": 1, "min_number": 95, "player_max_number": 18, "player_min_number": 61}, {"combination": {"alliances": [{"max": 69, "min": 26, "name": "iAEYhVgQ"}, {"max": 58, "min": 53, "name": "NjG37TrB"}, {"max": 79, "min": 42, "name": "5cfbUw6C"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 44}, "duration": 58, "max_number": 86, "min_number": 36, "player_max_number": 9, "player_min_number": 86}, {"combination": {"alliances": [{"max": 25, "min": 63, "name": "iifbYNny"}, {"max": 16, "min": 21, "name": "XdJzrHPv"}, {"max": 15, "min": 2, "name": "nmPwdblT"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 7}, "duration": 89, "max_number": 44, "min_number": 29, "player_max_number": 17, "player_min_number": 75}], "flexingRules": [{"attribute": "PVs7OVrg", "criteria": "UKIsvFvm", "duration": 57, "reference": 0.9882136140480184}, {"attribute": "OWkott1V", "criteria": "kCRo9K3s", "duration": 100, "reference": 0.32482245422714573}, {"attribute": "rqFArQQL", "criteria": "fy30bwmw", "duration": 47, "reference": 0.15879339171087992}], "match_options": {"options": [{"name": "uxVhJrPk", "type": "QGnNFwnn"}, {"name": "H7Zxb7CT", "type": "a1oIggAC"}, {"name": "oVp5euf6", "type": "Ra0vIXOk"}]}, "matchingRules": [{"attribute": "j8MfmFkZ", "criteria": "LIdm2u4X", "reference": 0.32067138034925025}, {"attribute": "rLdHvWLH", "criteria": "CED3sEth", "reference": 0.2443212565812365}, {"attribute": "GWE6EbPm", "criteria": "H3jUqhn9", "reference": 0.1814624246952261}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 19, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'jcMFBl3a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'SvxjOCSm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'NloO9dCJ' \
    --matchID 'GTVC4NQ0' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["VtnkMyqw", "u5OuoJES", "owLgMcBf"], "party_id": "OuDq2hkT", "user_id": "cjo00c1k"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'g60X7cj7' \
    --matchID 'AftLZKu9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '37tijlgA' \
    --matchID 'pC4glGeH' \
    --namespace $AB_NAMESPACE \
    --userID '6uAeDDAl' \
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
    --channelName 'keg2wPpP' \
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