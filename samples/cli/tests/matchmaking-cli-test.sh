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
    --namespace 'R1NOqvC3' \
    --limit '5' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --body '{"deployment": "hAFTosOE", "description": "lPh0a2S3", "find_match_timeout_seconds": 28, "game_mode": "SUJo2NE1", "joinable": true, "max_delay_ms": 100, "rule_set": {"alliance": {"max_number": 32, "min_number": 89, "player_max_number": 81, "player_min_number": 13}, "alliance_flexing_rule": [{"duration": 100, "max_number": 96, "min_number": 100, "player_max_number": 1, "player_min_number": 8}, {"duration": 32, "max_number": 93, "min_number": 18, "player_max_number": 11, "player_min_number": 56}, {"duration": 85, "max_number": 70, "min_number": 97, "player_max_number": 12, "player_min_number": 53}], "flexing_rule": [{"attribute": "JUhuAZfP", "criteria": "zkPEpBRX", "duration": 57, "reference": 0.5004967542408472}, {"attribute": "HUHECeDT", "criteria": "aqWM03ls", "duration": 38, "reference": 0.8317272904138734}, {"attribute": "F1Z2e8iH", "criteria": "V6svMDro", "duration": 85, "reference": 0.40163771125768266}], "match_options": {"options": [{"name": "gxfZivao", "type": "VZmcPBSS"}, {"name": "IYQO8YuM", "type": "QeLaDHyl"}, {"name": "YslSdAzW", "type": "fEMHIVex"}]}, "matching_rule": [{"attribute": "JQgL2272", "criteria": "33Wv3OPx", "reference": 0.3491637938513269}, {"attribute": "ueKocPwE", "criteria": "F5UF0AUI", "reference": 0.6110217910528124}, {"attribute": "0oIHzW2Y", "criteria": "3SKNq7l8", "reference": 0.9972937396352572}], "sub_game_modes": {"tpbPDqKI": {"alliance": {"max_number": 82, "min_number": 5, "player_max_number": 95, "player_min_number": 41}, "alliance_flexing_rule": [{"duration": 66, "max_number": 67, "min_number": 65, "player_max_number": 80, "player_min_number": 72}, {"duration": 91, "max_number": 4, "min_number": 70, "player_max_number": 18, "player_min_number": 74}, {"duration": 89, "max_number": 59, "min_number": 72, "player_max_number": 55, "player_min_number": 85}], "name": "uFVDm1Ho"}, "pirxqdfU": {"alliance": {"max_number": 25, "min_number": 96, "player_max_number": 77, "player_min_number": 19}, "alliance_flexing_rule": [{"duration": 51, "max_number": 21, "min_number": 40, "player_max_number": 6, "player_min_number": 84}, {"duration": 96, "max_number": 64, "min_number": 55, "player_max_number": 65, "player_min_number": 54}, {"duration": 100, "max_number": 90, "min_number": 42, "player_max_number": 80, "player_min_number": 40}], "name": "tI4MWWLh"}, "QT8jZE1A": {"alliance": {"max_number": 47, "min_number": 33, "player_max_number": 78, "player_min_number": 13}, "alliance_flexing_rule": [{"duration": 97, "max_number": 75, "min_number": 32, "player_max_number": 45, "player_min_number": 44}, {"duration": 7, "max_number": 55, "min_number": 4, "player_max_number": 98, "player_min_number": 42}, {"duration": 67, "max_number": 0, "min_number": 37, "player_max_number": 55, "player_min_number": 20}], "name": "Qx18qjEG"}}}, "session_queue_timeout_seconds": 24, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --namespace '9bBREOe4' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'c5NFvsO3' \
    --namespace '2YgjZXJj' \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --body '{"match_id": "rR5RAq9i", "players": [{"results": [{"attribute": "e7tdtbVs", "value": 0.2786494511494213}, {"attribute": "fWLbrXli", "value": 0.5515249871182794}, {"attribute": "9iPwgaej", "value": 0.602696062188934}], "user_id": "HnDnp74V"}, {"results": [{"attribute": "TGtE05Jk", "value": 0.04858246102146524}, {"attribute": "dGLxRmpJ", "value": 0.22004627935600363}, {"attribute": "Zc8utZ5d", "value": 1.8804023553142812e-05}], "user_id": "q5Vu3U0g"}, {"results": [{"attribute": "b9wdC8QX", "value": 0.8753339412458567}, {"attribute": "PIboHAXd", "value": 0.22863124162708215}, {"attribute": "dOUzLn4h", "value": 0.41741087997428417}], "user_id": "If83oxYq"}]}' \
    --namespace 'EKqCdRIR' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --body '{"match_id": "7kKM0bQH"}' \
    --namespace 'tWXc8DVg' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --body '{"channel": "yqENyGHU", "client_version": "pYITcJGg", "deployment": "BVrEbECN", "game_mode": "BpjteudD", "joinable": false, "match_id": "AyjLGEpE", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 76, "party_attributes": {"T24r6f0B": {}, "q1YMqT1y": {}, "ljKr5VtN": {}}, "party_id": "yvdmA8k9", "party_members": [{"extra_attributes": {"rEm7vTmQ": {}, "wR8NnPLQ": {}, "Tdbl8AP8": {}}, "user_id": "Gzb2Nv9a"}, {"extra_attributes": {"UYdqWJNh": {}, "2Eqm2nIk": {}, "OqtwZsEp": {}}, "user_id": "BcSEgGn8"}, {"extra_attributes": {"ESOPfLW1": {}, "Ro2EWag7": {}, "R6k73emW": {}}, "user_id": "LzebZzWK"}]}, {"first_ticket_created_at": 39, "party_attributes": {"PVZuxpeM": {}, "1eGEdCFW": {}, "mrh7z5XK": {}}, "party_id": "My5uFcDI", "party_members": [{"extra_attributes": {"zmzYlXHb": {}, "VlzzFoyU": {}, "yUftV945": {}}, "user_id": "pQuxhwKk"}, {"extra_attributes": {"WREfWa6F": {}, "V2uNiDUT": {}, "EmtROz8n": {}}, "user_id": "7SbkTajO"}, {"extra_attributes": {"eAv5QNQF": {}, "vcHtrXcX": {}, "Wjphjrun": {}}, "user_id": "dMvE20rj"}]}, {"first_ticket_created_at": 77, "party_attributes": {"XNYMkgCW": {}, "PGVjmUrw": {}, "tBghlXvC": {}}, "party_id": "qkClM7pf", "party_members": [{"extra_attributes": {"1pM91S48": {}, "9EYjl5eJ": {}, "dC5nh80J": {}}, "user_id": "NrMrKj0W"}, {"extra_attributes": {"VZqPBhrE": {}, "xKgGoyM1": {}, "rXdlaPZM": {}}, "user_id": "yi4AGPwK"}, {"extra_attributes": {"O4ULdeNZ": {}, "HCo6v88I": {}, "LVMdkY3E": {}}, "user_id": "WdaszDKX"}]}]}, {"matching_parties": [{"first_ticket_created_at": 75, "party_attributes": {"v06rEB88": {}, "2tae51hp": {}, "LF9jy15x": {}}, "party_id": "ilaVF3xJ", "party_members": [{"extra_attributes": {"Euk8jmxu": {}, "ou3E9uwl": {}, "NMEjVeeA": {}}, "user_id": "bf3O20Si"}, {"extra_attributes": {"KQKNo5G2": {}, "CyiwMTCe": {}, "z54TBnPA": {}}, "user_id": "oSnnK2ai"}, {"extra_attributes": {"9zJFfoz2": {}, "VJwLkVay": {}, "RP5DFX9T": {}}, "user_id": "2Loxi6ud"}]}, {"first_ticket_created_at": 70, "party_attributes": {"Poqc4Zku": {}, "1ZK97eKw": {}, "jI3JFFv8": {}}, "party_id": "jRVRDIh0", "party_members": [{"extra_attributes": {"yQvFROHK": {}, "E7L8Geoe": {}, "5dOIYBVo": {}}, "user_id": "8829PThL"}, {"extra_attributes": {"dr5S4D8I": {}, "Y0v4XSzm": {}, "3wSdRHCk": {}}, "user_id": "4FbqkkGz"}, {"extra_attributes": {"eEv3f902": {}, "NQLXGsKK": {}, "yfozL12c": {}}, "user_id": "B08iihaK"}]}, {"first_ticket_created_at": 18, "party_attributes": {"jc3yl8qg": {}, "EUvD5C9x": {}, "zAw7dqQV": {}}, "party_id": "EF7ijdx3", "party_members": [{"extra_attributes": {"woCURMaR": {}, "TGufgDUc": {}, "2Ym7XDtb": {}}, "user_id": "wFRYYwKk"}, {"extra_attributes": {"G0MjThBy": {}, "RXPPzwEN": {}, "imePAcM1": {}}, "user_id": "9ATB9NZ7"}, {"extra_attributes": {"PvYjSsWq": {}, "9fatsxUo": {}, "MrO9l2tz": {}}, "user_id": "9MHufPP9"}]}]}, {"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"Mo0MYERP": {}, "GzNMffDi": {}, "LEmJTxSK": {}}, "party_id": "yYr3Csl2", "party_members": [{"extra_attributes": {"0i91oHdn": {}, "7oGVcHmr": {}, "6KpHc34w": {}}, "user_id": "JziDz33V"}, {"extra_attributes": {"zEcef59o": {}, "RAJXLiz6": {}, "eGOUt1ke": {}}, "user_id": "Ei4xL2OF"}, {"extra_attributes": {"J4e4eIVs": {}, "gtxg1452": {}, "3VYEhwHG": {}}, "user_id": "lBGN2DzH"}]}, {"first_ticket_created_at": 20, "party_attributes": {"aCKE4j5V": {}, "05mPZQMN": {}, "j8giNmXr": {}}, "party_id": "ylLdMKYg", "party_members": [{"extra_attributes": {"RotKaxXe": {}, "Elk0izCd": {}, "84mXZkmG": {}}, "user_id": "JKCqSspr"}, {"extra_attributes": {"ypWWfaad": {}, "Ge1LIzJ7": {}, "a0YP8cMa": {}}, "user_id": "hK8ZH8MP"}, {"extra_attributes": {"zTIZ5ER5": {}, "gm6X71CX": {}, "iJZHWMOr": {}}, "user_id": "tblVNPJu"}]}, {"first_ticket_created_at": 57, "party_attributes": {"4Gph6rol": {}, "JXrUHRMI": {}, "k2sw8oap": {}}, "party_id": "PszNE9bJ", "party_members": [{"extra_attributes": {"VXzNTagC": {}, "ieQUKp7l": {}, "30XMqOH7": {}}, "user_id": "TPaco667"}, {"extra_attributes": {"b9P7oGxN": {}, "LUR6nuEf": {}, "mg506w3N": {}}, "user_id": "ude6Gdug"}, {"extra_attributes": {"INiCIQ0I": {}, "orimS2LQ": {}, "dY1v2koU": {}}, "user_id": "PHmX9qUy"}]}]}], "namespace": "E3nafV5W", "party_attributes": {"btxk57kb": {}, "0yhh5vuX": {}, "oqgkR1gW": {}}, "party_id": "igssaH8t", "queued_at": 49, "region": "lmyvfV8V", "server_name": "bF22KnOM", "status": "6DIY8A6l", "updated_at": "1973-03-22T00:00:00Z"}' \
    --namespace '3rff8MmQ' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --body '{"match_id": "iYptBzP3"}' \
    --namespace 'Gq4QXQDL' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '9oOY6FB9' \
    --namespace '7BrfwlYQ' \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --body '{"playtime": 54, "userID": "vNtg4DT4", "weight": 0.2684102438272329}' \
    --namespace 'EyL4PzdX' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace '53jA6WSJ' \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace '8mBQMk2y' \
    --matchIDs 'f04cSlZZ' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace 'Qw9z1w5t' \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --file 'tmp.dat' \
    --strategy 'BfPyxBHr' \
    --namespace 'IZupVwpR' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'It4cbmvm' \
    --namespace 'WYilj3yh' \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --body '{"deployment": "p9WsDFRQ", "description": "B5qjYbCv", "findMatchTimeoutSeconds": 23, "joinable": false, "max_delay_ms": 22, "ruleSet": {"alliance": {"maxNumber": 60, "minNumber": 22, "playerMaxNumber": 72, "playerMinNumber": 69}, "alliance_flexing_rule": [{"duration": 21, "max_number": 71, "min_number": 70, "player_max_number": 76, "player_min_number": 9}, {"duration": 45, "max_number": 94, "min_number": 29, "player_max_number": 86, "player_min_number": 97}, {"duration": 11, "max_number": 61, "min_number": 86, "player_max_number": 54, "player_min_number": 31}], "flexingRules": [{"attribute": "Ys1siOCQ", "criteria": "G9YAXgrz", "duration": 86, "reference": 0.22229335813972428}, {"attribute": "qTVsqreV", "criteria": "RkOPyFnT", "duration": 98, "reference": 0.2638180690574017}, {"attribute": "eUKKNKWs", "criteria": "IzHrvl7I", "duration": 38, "reference": 0.054644448581503746}], "match_options": {"options": [{"name": "ZVn6HL30", "type": "Aw0vEYS6"}, {"name": "LBz49aXb", "type": "MRaRIewr"}, {"name": "fsUQeiaJ", "type": "t0o1xNmf"}]}, "matchingRules": [{"attribute": "TVy8Eg4r", "criteria": "EMwwrKRb", "reference": 0.8942812557552687}, {"attribute": "6FflISDe", "criteria": "bd4t9yuk", "reference": 0.5490926024012138}, {"attribute": "w0BgGuQj", "criteria": "8TC7xRHt", "reference": 0.28531006180073415}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 55, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    --channelName 'jN68q6SF' \
    --namespace 'fU28ilyY' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'BYC3mwqD' \
    --namespace 'q3xpz2AG' \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'VZhbehRm' \
    --namespace 'vLPO4VTJ' \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --body '{"blocked_players": ["CU0XM2PZ", "hxnWLjuS", "WYTKUKiH"], "party_id": "qzlyt5vH", "user_id": "TskHet69"}' \
    --channelName 'Gh094NGS' \
    --matchID 'OxGyzO34' \
    --namespace '10SAiVQp' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'AY80L97h' \
    --matchID 'Qp3ctQkd' \
    --namespace '744Rp4f2' \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'vvggmmpP' \
    --matchID '3sTjwQRR' \
    --namespace 'vdFfX8kK' \
    --userID 'vKsrCAWn' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace 'RF0becGr' \
    --channel 'Ae7zamGf' \
    --deleted 'true' \
    --matchID 'BnLAbMnM' \
    --partyID 'ZQ1p3f3d' \
    --userID 'BnAiyygl' \
    --limit '46' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'J0yy6WT9' \
    --namespace 'hg8FJjgx' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace 'zaBHK5aN' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'XxYPKB61' \
    --namespace 'XGqgAvlR' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace 'c0x5jDHP' \
    --channel 'KKk31QE9' \
    --deleted 'false' \
    --matchID 'RHvevv6U' \
    --partyID 'MeOEmWnh' \
    --userID 'HsEtXg1k' \
    --limit '89' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE