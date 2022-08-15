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
    --limit '56' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "GOyM28Rz", "description": "FSuxhPQJ", "find_match_timeout_seconds": 1, "game_mode": "82fsjFUG", "joinable": true, "max_delay_ms": 100, "rule_set": {"alliance": {"max_number": 92, "min_number": 26, "player_max_number": 11, "player_min_number": 97}, "alliance_flexing_rule": [{"duration": 39, "max_number": 29, "min_number": 48, "player_max_number": 25, "player_min_number": 10}, {"duration": 39, "max_number": 21, "min_number": 98, "player_max_number": 25, "player_min_number": 13}, {"duration": 62, "max_number": 33, "min_number": 87, "player_max_number": 97, "player_min_number": 35}], "flexing_rule": [{"attribute": "9t89Oj7N", "criteria": "wtqemzjC", "duration": 62, "reference": 0.6926834854732608}, {"attribute": "q1SY8wiM", "criteria": "1ulwWmbZ", "duration": 33, "reference": 0.6122201465919608}, {"attribute": "u8xal4Po", "criteria": "EHsHo0Ww", "duration": 58, "reference": 0.48875668964002217}], "match_options": {"options": [{"name": "AATsPQSy", "type": "zGetey09"}, {"name": "XmzEeLou", "type": "1T5ZgIZK"}, {"name": "9VGp1RR7", "type": "pTULdIR1"}]}, "matching_rule": [{"attribute": "2UX7T7OH", "criteria": "xw1b9eAv", "reference": 0.6592464152158686}, {"attribute": "42uYnP0c", "criteria": "6AXJiZ5Q", "reference": 0.9049221911011416}, {"attribute": "J609HXVS", "criteria": "uUqkV8ZS", "reference": 0.9242133871572388}], "sub_game_modes": {"azYMiICN": {"alliance": {"max_number": 7, "min_number": 47, "player_max_number": 24, "player_min_number": 4}, "alliance_flexing_rule": [{"duration": 91, "max_number": 93, "min_number": 98, "player_max_number": 57, "player_min_number": 98}, {"duration": 82, "max_number": 32, "min_number": 53, "player_max_number": 48, "player_min_number": 51}, {"duration": 91, "max_number": 12, "min_number": 15, "player_max_number": 72, "player_min_number": 73}], "name": "to754I7t"}, "whq61o0E": {"alliance": {"max_number": 17, "min_number": 58, "player_max_number": 47, "player_min_number": 97}, "alliance_flexing_rule": [{"duration": 21, "max_number": 51, "min_number": 28, "player_max_number": 25, "player_min_number": 53}, {"duration": 92, "max_number": 69, "min_number": 86, "player_max_number": 52, "player_min_number": 8}, {"duration": 82, "max_number": 98, "min_number": 94, "player_max_number": 41, "player_min_number": 63}], "name": "YpZ1W4xK"}, "CO3J8Llq": {"alliance": {"max_number": 39, "min_number": 16, "player_max_number": 9, "player_min_number": 90}, "alliance_flexing_rule": [{"duration": 27, "max_number": 6, "min_number": 52, "player_max_number": 63, "player_min_number": 48}, {"duration": 51, "max_number": 44, "min_number": 25, "player_max_number": 17, "player_min_number": 48}, {"duration": 2, "max_number": 92, "min_number": 99, "player_max_number": 75, "player_min_number": 43}], "name": "fSQvg75M"}}}, "session_queue_timeout_seconds": 91, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'JdeRmOw4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "RduAtPy6", "players": [{"results": [{"attribute": "0OkAIJNB", "value": 0.240965926681446}, {"attribute": "cA89W7dq", "value": 0.543633733015445}, {"attribute": "V5XlOUTD", "value": 0.9741488560909297}], "user_id": "jNIt6mPV"}, {"results": [{"attribute": "KfmvN8Xz", "value": 0.11984421966155401}, {"attribute": "igJWYZs7", "value": 0.38876982053400044}, {"attribute": "A5grSDgn", "value": 0.20369963312192296}], "user_id": "ZjJEsAwd"}, {"results": [{"attribute": "uJ8KhglX", "value": 0.47344147382896984}, {"attribute": "q6cGmNig", "value": 0.050576026655373085}, {"attribute": "sSa9oBxH", "value": 0.1267016042067688}], "user_id": "4ygnTtib"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "9EMBKz3d"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "0wv2VC29", "client_version": "m0Osgmrk", "deployment": "Q0PFSZsR", "game_mode": "V4uKigWj", "joinable": true, "match_id": "4oRdtlpv", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 25, "party_attributes": {"ypD3LmLk": {}, "I3bjwJaV": {}, "QDMfOxcH": {}}, "party_id": "pVJwQaEU", "party_members": [{"extra_attributes": {"V4JWy82g": {}, "mfrGB09X": {}, "2xzwrbe0": {}}, "user_id": "tRnVNijn"}, {"extra_attributes": {"LljCTSGJ": {}, "878UCL7L": {}, "cnxuQAnb": {}}, "user_id": "XguAuWBR"}, {"extra_attributes": {"JQRkPki6": {}, "LxJ0Nc7g": {}, "kLwktpmy": {}}, "user_id": "Xbd8ecK1"}]}, {"first_ticket_created_at": 72, "party_attributes": {"2xWJbg7H": {}, "sTpmxPAJ": {}, "GosMZUd8": {}}, "party_id": "KNlr1cuc", "party_members": [{"extra_attributes": {"zQpJCstU": {}, "rTrWN6WX": {}, "qRoYON50": {}}, "user_id": "QoNiTFzM"}, {"extra_attributes": {"4W22LTJT": {}, "1T7fWHJ0": {}, "7svydqYn": {}}, "user_id": "Xtp2NseC"}, {"extra_attributes": {"4TecltEA": {}, "Qrpg6ZQL": {}, "HrRpnzXg": {}}, "user_id": "i4Jxjtkj"}]}, {"first_ticket_created_at": 58, "party_attributes": {"oRLSQo70": {}, "qqBow7ZF": {}, "Gjq92RZh": {}}, "party_id": "A29vpOYd", "party_members": [{"extra_attributes": {"uZAZ1UcA": {}, "bBlfqz0Z": {}, "xodDFN7A": {}}, "user_id": "fWjvJFjV"}, {"extra_attributes": {"4aGTCdGI": {}, "SXMMR3F9": {}, "88zXtZfA": {}}, "user_id": "hTy3fwBP"}, {"extra_attributes": {"pfpWWy8u": {}, "s6tAUwwZ": {}, "3rM8KFzK": {}}, "user_id": "UVk0bctl"}]}]}, {"matching_parties": [{"first_ticket_created_at": 46, "party_attributes": {"R8jk2exy": {}, "9TDovKHa": {}, "JmzIfnMR": {}}, "party_id": "W8rPjzqf", "party_members": [{"extra_attributes": {"mTeIeTIq": {}, "sHW6aGQf": {}, "3XQNAmRl": {}}, "user_id": "AoV3ZB0y"}, {"extra_attributes": {"HNfrnB5G": {}, "itJnoYT8": {}, "mrikqEjU": {}}, "user_id": "QW0wrCYc"}, {"extra_attributes": {"4HqBfP5z": {}, "l7oJzm45": {}, "35RQGJXW": {}}, "user_id": "uDaRGFNm"}]}, {"first_ticket_created_at": 74, "party_attributes": {"GFO2dNRv": {}, "LB91mzUM": {}, "bBKq5Vi6": {}}, "party_id": "8cuEH5o8", "party_members": [{"extra_attributes": {"vtngnzIQ": {}, "jDeyHzVq": {}, "SrSXzhRl": {}}, "user_id": "1pz0OaYz"}, {"extra_attributes": {"H1ShrOjj": {}, "G0Yne1bg": {}, "fdmgWalv": {}}, "user_id": "fgtEwD96"}, {"extra_attributes": {"OhMtsSf5": {}, "HzL2OOoL": {}, "iIWoGO38": {}}, "user_id": "KGL91rtJ"}]}, {"first_ticket_created_at": 91, "party_attributes": {"xLUQgBTZ": {}, "tF9w1cci": {}, "GCRjw9hG": {}}, "party_id": "OhEQDoGr", "party_members": [{"extra_attributes": {"6nhZB55k": {}, "k0VthZJv": {}, "V808K3UR": {}}, "user_id": "3B0dj3Z8"}, {"extra_attributes": {"0EDysck3": {}, "XXJNi6iJ": {}, "7b5YfxRu": {}}, "user_id": "wcktdGHf"}, {"extra_attributes": {"veL1hVRo": {}, "XmfMTBxW": {}, "yELjioDr": {}}, "user_id": "WYGxtahI"}]}]}, {"matching_parties": [{"first_ticket_created_at": 61, "party_attributes": {"tlqWBLuI": {}, "JLUo7Bp9": {}, "nKVbmCJK": {}}, "party_id": "MpRmb0vc", "party_members": [{"extra_attributes": {"PB0OVowS": {}, "QYHrFztX": {}, "tNDLiLZY": {}}, "user_id": "ueUrPvAk"}, {"extra_attributes": {"tgjb8zEt": {}, "o7iHUHMT": {}, "rEZt5U5R": {}}, "user_id": "92AZTOtc"}, {"extra_attributes": {"nHw2ivII": {}, "XCJPazo8": {}, "em1g0KI1": {}}, "user_id": "JUzpJ5Fs"}]}, {"first_ticket_created_at": 85, "party_attributes": {"YicoLYNc": {}, "pZaadN5H": {}, "137Qi97E": {}}, "party_id": "FoJLzhXb", "party_members": [{"extra_attributes": {"1P6804Cv": {}, "1zvWo2yY": {}, "b5fRhGuE": {}}, "user_id": "YMQBewJJ"}, {"extra_attributes": {"PgAMoyOs": {}, "EHTsFwTt": {}, "QHXXXDxJ": {}}, "user_id": "9FNRXg7p"}, {"extra_attributes": {"m2156Qke": {}, "DWZ41DOi": {}, "NMxc0qNJ": {}}, "user_id": "XCpXxKgM"}]}, {"first_ticket_created_at": 12, "party_attributes": {"v2U6oRys": {}, "rT7iMzDV": {}, "PlM7vB7c": {}}, "party_id": "UU9w6Gpw", "party_members": [{"extra_attributes": {"aytc9ZLf": {}, "d5sffuMf": {}, "zUwDwXRP": {}}, "user_id": "ofalp12I"}, {"extra_attributes": {"Rzl3D8zA": {}, "hDyYzj1P": {}, "SE6XmREV": {}}, "user_id": "NZNtT7iv"}, {"extra_attributes": {"GULYrzFI": {}, "rvKAUxdG": {}, "1yVMQHE7": {}}, "user_id": "dr7fzHZn"}]}]}], "namespace": "GeVOT9OH", "party_attributes": {"uB7pfpbf": {}, "Y8dCCDlR": {}, "IV48lEeX": {}}, "party_id": "vXkJCEeo", "queued_at": 85, "region": "aRhutyRY", "server_name": "PA1bKLPl", "status": "wQYnMhBv", "updated_at": "1977-11-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "w7gxsGBZ"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'OQJvrLW2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 59, "userID": "krytAIPe", "weight": 0.4619756919949919}' \
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
    --matchIDs 'TUBQ9Yba' \
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
    --strategy 'rGn0Ml6y' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'wnGQmQef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'VLaPAvZx' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "VNYIC7Qe", "description": "yASunX4s", "findMatchTimeoutSeconds": 36, "joinable": true, "max_delay_ms": 91, "ruleSet": {"alliance": {"maxNumber": 98, "minNumber": 6, "playerMaxNumber": 98, "playerMinNumber": 67}, "alliance_flexing_rule": [{"duration": 9, "max_number": 4, "min_number": 71, "player_max_number": 7, "player_min_number": 37}, {"duration": 14, "max_number": 96, "min_number": 30, "player_max_number": 17, "player_min_number": 45}, {"duration": 42, "max_number": 98, "min_number": 14, "player_max_number": 10, "player_min_number": 39}], "flexingRules": [{"attribute": "BpvoqwXT", "criteria": "wqjTXDAX", "duration": 58, "reference": 0.33855536252133667}, {"attribute": "ozKT7WfP", "criteria": "ucF9m2Hv", "duration": 55, "reference": 0.5654237150975451}, {"attribute": "SdM8kzoG", "criteria": "vhDUgVCz", "duration": 41, "reference": 0.9314613146081339}], "match_options": {"options": [{"name": "KYApcUMn", "type": "vFZJ7iWr"}, {"name": "hpl6ZNhS", "type": "IgTbW1KI"}, {"name": "q9EUAil5", "type": "SsKzPRgm"}]}, "matchingRules": [{"attribute": "Oy3hr1Nh", "criteria": "6gjUVx7W", "reference": 0.12985894311500645}, {"attribute": "IvKrC7fK", "criteria": "hUnX9lxO", "reference": 0.7296407599482893}, {"attribute": "VY5hiEjk", "criteria": "10KFqymb", "reference": 0.432682120307589}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 54, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'XxstAHXb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'lXebb8Wl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'iOBbtz5S' \
    --matchID 'SEpEpQ66' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["IRaEOwhT", "P6jzjqDw", "W7Z0AkiC"], "party_id": "KA1WLEBN", "user_id": "KOv8YsJ1"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'oKgeZIP6' \
    --matchID 'NnTlroEP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'ZDDCRYPC' \
    --matchID 'x0ERItsJ' \
    --namespace $AB_NAMESPACE \
    --userID 'yRj2jJ9N' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace $AB_NAMESPACE \
    --channel 'FD4Fe8Ow' \
    --deleted 'false' \
    --matchID 'MXvNjr6Q' \
    --partyID 'xe40NrOF' \
    --userID 'ue7zeusQ' \
    --limit '69' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'C6HPa2af' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

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
    --channelName 'CGiaWlEc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'SFUR5dAg' \
    --deleted 'true' \
    --matchID 'bMbOfjVk' \
    --partyID 'jvetybOH' \
    --userID 'cu3W83mo' \
    --limit '19' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE