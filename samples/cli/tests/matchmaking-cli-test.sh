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
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --body '{"deployment": "pGlsQuJu", "description": "8vMf0IsJ", "find_match_timeout_seconds": 20, "game_mode": "Trd8IDcV", "joinable": true, "max_delay_ms": 98, "rule_set": {"alliance": {"max_number": 27, "min_number": 90, "player_max_number": 72, "player_min_number": 18}, "alliance_flexing_rule": [{"duration": 99, "max_number": 3, "min_number": 83, "player_max_number": 33, "player_min_number": 1}], "flexing_rule": [{"attribute": "miBxx9Cs", "criteria": "18EY84ek", "duration": 69, "reference": 0.3118167165996468}], "match_options": {"options": [{"name": "RzHU1oh5", "type": "70KQBVae"}]}, "matching_rule": [{"attribute": "wc72krSh", "criteria": "a68n3Yno", "reference": 0.40474847143186077}], "sub_game_modes": {"1C2KmIQT": {"alliance": {"max_number": 41, "min_number": 54, "player_max_number": 6, "player_min_number": 79}, "alliance_flexing_rule": [{"duration": 61, "max_number": 93, "min_number": 37, "player_max_number": 46, "player_min_number": 62}], "name": "b8CJ17M7"}}}, "session_queue_timeout_seconds": 59, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --namespace 'ECbZbygy' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'oarORoeN' \
    --namespace 'HSb8Rh3k' \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --body '{"match_id": "gs9qqJbn", "players": [{"results": [{"attribute": "QsoBgiVp", "value": 0.6437922712244237}], "user_id": "Cm3yvASU"}]}' \
    --namespace 'oxdxxFqm' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --body '{"match_id": "AGTJ8IEd"}' \
    --namespace 'agEtp4w2' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --body '{"channel": "9KOu9c19", "client_version": "R6XDqWHk", "deployment": "kP8npLEK", "game_mode": "MfjiX7jp", "joinable": false, "match_id": "VZk3IaQY", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 60, "party_attributes": {"mqGodOEG": {}}, "party_id": "t9gPOj0c", "party_members": [{"extra_attributes": {"6i0JkvIa": {}}, "user_id": "s73ucYnF"}]}]}], "namespace": "AJ3DK5T4", "party_attributes": {"Eogg0Y39": {}}, "party_id": "UoYlpv5b", "queued_at": 94, "region": "AgtsDhUT", "server_name": "DUscbQDj", "status": "bTQuPMz2", "updated_at": "1991-12-09T00:00:00Z"}' \
    --namespace 'lkyU89ZP' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --body '{"match_id": "Ow6zPFJ4"}' \
    --namespace '2cwmzBBS' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'MNcoAAOj' \
    --namespace 'KNjfcYHm' \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --body '{"playtime": 0, "userID": "YgBU1sqj", "weight": 0.3848021147182681}' \
    --namespace '0XH45PaR' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace 'SOFQBtu2' \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace '3REZ8hRV' \
    --matchIDs 'X7LGOvDd' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace 'YiQS9i7m' \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --file 'tmp.dat' \
    --strategy 'V1C91pjG' \
    --namespace '9gpxL6yc' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'TQdvln2L' \
    --namespace 'AuSQWEXL' \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --body '{"deployment": "6LFE1YHo", "description": "9m126ZWc", "findMatchTimeoutSeconds": 14, "joinable": true, "max_delay_ms": 97, "ruleSet": {"alliance": {"maxNumber": 43, "minNumber": 3, "playerMaxNumber": 79, "playerMinNumber": 33}, "alliance_flexing_rule": [{"duration": 12, "max_number": 92, "min_number": 33, "player_max_number": 37, "player_min_number": 22}], "flexingRules": [{"attribute": "ArFPiHUI", "criteria": "vaCv8kU9", "duration": 6, "reference": 0.4350794884136475}], "match_options": {"options": [{"name": "pdsJLhsV", "type": "yExrkxoo"}]}, "matchingRules": [{"attribute": "t0B7WOfe", "criteria": "rcZdpMci", "reference": 0.860706768410819}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 58, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    --channelName 'ExaI3uzL' \
    --namespace 'teMbFAlt' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '4hr7HmOY' \
    --namespace 'iBA5ltAO' \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'XmlG6eh1' \
    --namespace 'dTdoTFpB' \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --body '{"blocked_players": ["IcuC1dQY"], "party_id": "93OJnJ6T", "user_id": "e9vD8ldz"}' \
    --channelName '7Hu8AD79' \
    --matchID 'kdWunviz' \
    --namespace 'U0q1pHyh' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'hERoGgdr' \
    --matchID 'ysMizBGS' \
    --namespace 'RdP2l7DN' \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'SZ8Aq0Xi' \
    --matchID 'PLQXSe07' \
    --namespace 'ZddOGTMl' \
    --userID 'JjBwj9HJ' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace 'HQKseEdS' \
    --channel 'XRDSvgua' \
    --deleted 'True' \
    --matchID 'w1xT7eMw' \
    --partyID 'Sl9MLH0N' \
    --userID 'nTJ2ulNz' \
    --limit '55' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'wJaQa547' \
    --namespace 'JllvA8RW' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace 'SpabUt7x' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'k6QxyWhf' \
    --namespace 'qoWfJw2o' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace '8oWUqvPC' \
    --channel 'Z2HzT7NX' \
    --deleted 'False' \
    --matchID 'WDlXsuNI' \
    --partyID 'dQJR5lsN' \
    --userID 'OlvkfwaS' \
    --limit '2' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE