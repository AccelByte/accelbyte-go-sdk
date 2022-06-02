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
echo "1..29"

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

#- 8 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --body '{"channel": "AGTJ8IEd", "client_version": "agEtp4w2", "deployment": "9KOu9c19", "game_mode": "R6XDqWHk", "joinable": false, "match_id": "P8npLEKM", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 11, "party_attributes": {"jiX7jpkV": {}}, "party_id": "Zk3IaQYE", "party_members": [{"extra_attributes": {"mqGodOEG": {}}, "user_id": "t9gPOj0c"}]}]}], "namespace": "6i0JkvIa", "party_attributes": {"s73ucYnF": {}}, "party_id": "AJ3DK5T4", "queued_at": 61, "region": "ogg0Y39U", "server_name": "oYlpv5bV", "status": "AgtsDhUT", "updated_at": "1985-05-25T00:00:00Z"}' \
    --namespace 'cbQDjbTQ' \
    > test.out 2>&1
eval_tap $? 8 'QueueSessionHandler' test.out

#- 9 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --body '{"match_id": "uPMz2PTR"}' \
    --namespace 'lkyU89ZP' \
    > test.out 2>&1
eval_tap $? 9 'DequeueSessionHandler' test.out

#- 10 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Ow6zPFJ4' \
    --namespace '2cwmzBBS' \
    > test.out 2>&1
eval_tap $? 10 'QuerySessionHandler' test.out

#- 11 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --body '{"playtime": 76, "userID": "NcoAAOjK", "weight": 0.6139831702720356}' \
    --namespace 'fcYHm093' \
    > test.out 2>&1
eval_tap $? 11 'UpdatePlayTimeWeight' test.out

#- 12 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace 'aYgBU1sq' \
    > test.out 2>&1
eval_tap $? 12 'GetAllPartyInAllChannel' test.out

#- 13 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace 'jyK0XH45' \
    --matchIDs 'PaRSOFQB' \
    > test.out 2>&1
eval_tap $? 13 'BulkGetSessions' test.out

#- 14 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace 'tu23REZ8' \
    > test.out 2>&1
eval_tap $? 14 'ExportChannels' test.out

#- 15 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --file 'tmp.dat' \
    --strategy 'hRVX7LGO' \
    --namespace 'vDdYiQS9' \
    > test.out 2>&1
eval_tap $? 15 'ImportChannels' test.out

#- 16 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'i7mV1C91' \
    --namespace 'pjG9gpxL' \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMatchmakingChannel' test.out

#- 17 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --body '{"deployment": "6ycTQdvl", "description": "n2LAuSQW", "findMatchTimeoutSeconds": 61, "joinable": true, "max_delay_ms": 60, "ruleSet": {"alliance": {"maxNumber": 67, "minNumber": 28, "playerMaxNumber": 25, "playerMinNumber": 96}, "alliance_flexing_rule": [{"duration": 4, "max_number": 14, "min_number": 66, "player_max_number": 38, "player_min_number": 97}], "flexingRules": [{"attribute": "vbNYqgUq", "criteria": "slArFPiH", "duration": 93, "reference": 0.5364079277230105}], "match_options": {"options": [{"name": "aCv8kU9d", "type": "BBpdsJLh"}]}, "matchingRules": [{"attribute": "sVyExrkx", "criteria": "oot0B7WO", "reference": 0.08041181467016356}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 35, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    --channelName 'pMci37Ds' \
    --namespace '7YSfExaI' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchmakingChannel' test.out

#- 18 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '3uzLteMb' \
    --namespace 'FAlt4hr7' \
    > test.out 2>&1
eval_tap $? 18 'GetAllPartyInChannel' test.out

#- 19 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'HmOYiBA5' \
    --namespace 'ltAOXmlG' \
    > test.out 2>&1
eval_tap $? 19 'GetAllSessionsInChannel' test.out

#- 20 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --body '{"blocked_players": ["6eh1dTdo"], "party_id": "TFpBIcuC", "user_id": "1dQY93OJ"}' \
    --channelName 'nJ6Te9vD' \
    --matchID '8ldz7Hu8' \
    --namespace 'AD79kdWu' \
    > test.out 2>&1
eval_tap $? 20 'AddUserIntoSessionInChannel' test.out

#- 21 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'nvizU0q1' \
    --matchID 'pHyhhERo' \
    --namespace 'GgdrysMi' \
    > test.out 2>&1
eval_tap $? 21 'DeleteSessionInChannel' test.out

#- 22 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'zBGSRdP2' \
    --matchID 'l7DNSZ8A' \
    --namespace 'q0XiPLQX' \
    --userID 'Se07ZddO' \
    > test.out 2>&1
eval_tap $? 22 'DeleteUserFromSessionInChannel' test.out

#- 23 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace 'GTMlJjBw' \
    --channel 'j9HJHQKs' \
    --deleted 'False' \
    --matchID 'EdSXRDSv' \
    --partyID 'guauw1xT' \
    --userID '7eMwSl9M' \
    --limit '75' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 23 'SearchSessions' test.out

#- 24 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID '0NnTJ2ul' \
    --namespace 'NzBvwJaQ' \
    > test.out 2>&1
eval_tap $? 24 'GetSessionHistoryDetailed' test.out

#- 25 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 25 'PublicGetMessages' test.out

#- 26 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace 'a547Jllv' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetAllMatchmakingChannel' test.out

#- 27 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'A8RWSpab' \
    --namespace 'Ut7xk6Qx' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetSingleMatchmakingChannel' test.out

#- 28 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace 'yWhfqoWf' \
    --channel 'Jw2o8oWU' \
    --deleted 'True' \
    --matchID 'vPCZ2HzT' \
    --partyID '7NXmWDlX' \
    --userID 'suNIdQJR' \
    --limit '23' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 28 'SearchSessionsV2' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE