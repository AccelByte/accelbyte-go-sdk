#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=28

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 getHealthcheckInfo
samples/cli/sample-apps Matchmaking getHealthcheckInfo \
    >$TEMP_FILE 2>&1
update_status $? 'getHealthcheckInfo'
delete_file $TEMP_FILE

#- 2 handlerV3Healthz
samples/cli/sample-apps Matchmaking handlerV3Healthz \
    >$TEMP_FILE 2>&1
update_status $? 'handlerV3Healthz'
delete_file $TEMP_FILE

#- 3 getAllChannelsHandler
samples/cli/sample-apps Matchmaking getAllChannelsHandler \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllChannelsHandler'
delete_file $TEMP_FILE

#- 4 createChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --body '{"deployment": "pGlsQuJu", "description": "8vMf0IsJ", "find_match_timeout_seconds": 20, "game_mode": "Trd8IDcV", "joinable": true, "max_delay_ms": 98, "rule_set": {"alliance": {"max_number": 27, "min_number": 90, "player_max_number": 72, "player_min_number": 18}, "alliance_flexing_rule": [{"duration": 99, "max_number": 3, "min_number": 83, "player_max_number": 33, "player_min_number": 1}], "flexing_rule": [{"attribute": "miBxx9Cs", "criteria": "18EY84ek", "duration": 69, "reference": 0.3118167165996468}], "match_options": {"options": [{"name": "RzHU1oh5", "type": "70KQBVae"}]}, "matching_rule": [{"attribute": "wc72krSh", "criteria": "a68n3Yno", "reference": 0.40474847143186077}], "sub_game_modes": {"1C2KmIQT": {"alliance": {"max_number": 41, "min_number": 54, "player_max_number": 6, "player_min_number": 79}, "alliance_flexing_rule": [{"duration": 61, "max_number": 93, "min_number": 37, "player_max_number": 46, "player_min_number": 62}], "name": "b8CJ17M7"}}}, "session_queue_timeout_seconds": 59, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --namespace 'ECbZbygy' \
    >$TEMP_FILE 2>&1
update_status $? 'createChannelHandler'
delete_file $TEMP_FILE

#- 5 deleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'oarORoeN' \
    --namespace 'HSb8Rh3k' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteChannelHandler'
delete_file $TEMP_FILE

#- 6 storeMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --body '{"match_id": "gs9qqJbn", "players": [{"results": [{"attribute": "QsoBgiVp", "value": 0.6437922712244237}], "user_id": "Cm3yvASU"}]}' \
    --namespace 'oxdxxFqm' \
    >$TEMP_FILE 2>&1
update_status $? 'storeMatchResults'
delete_file $TEMP_FILE

#- 7 queueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --body '{"channel": "AGTJ8IEd", "client_version": "agEtp4w2", "deployment": "9KOu9c19", "game_mode": "R6XDqWHk", "joinable": false, "match_id": "P8npLEKM", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 11, "party_attributes": {"jiX7jpkV": {}}, "party_id": "Zk3IaQYE", "party_members": [{"extra_attributes": {"mqGodOEG": {}}, "user_id": "t9gPOj0c"}]}]}], "namespace": "6i0JkvIa", "party_attributes": {"s73ucYnF": {}}, "party_id": "AJ3DK5T4", "queued_at": 61, "region": "ogg0Y39U", "server_name": "oYlpv5bV", "status": "AgtsDhUT", "updated_at": "1985-05-25T00:00:00Z"}' \
    --namespace 'cbQDjbTQ' \
    >$TEMP_FILE 2>&1
update_status $? 'queueSessionHandler'
delete_file $TEMP_FILE

#- 8 dequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --body '{"match_id": "uPMz2PTR"}' \
    --namespace 'lkyU89ZP' \
    >$TEMP_FILE 2>&1
update_status $? 'dequeueSessionHandler'
delete_file $TEMP_FILE

#- 9 querySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Ow6zPFJ4' \
    --namespace '2cwmzBBS' \
    >$TEMP_FILE 2>&1
update_status $? 'querySessionHandler'
delete_file $TEMP_FILE

#- 10 updatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --body '{"playtime": 76, "userID": "NcoAAOjK", "weight": 0.6139831702720356}' \
    --namespace 'fcYHm093' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlayTimeWeight'
delete_file $TEMP_FILE

#- 11 getAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace 'aYgBU1sq' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPartyInAllChannel'
delete_file $TEMP_FILE

#- 12 bulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace 'jyK0XH45' \
    --matchIDs 'PaRSOFQB' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetSessions'
delete_file $TEMP_FILE

#- 13 exportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace 'tu23REZ8' \
    >$TEMP_FILE 2>&1
update_status $? 'exportChannels'
delete_file $TEMP_FILE

#- 14 importChannels
samples/cli/sample-apps Matchmaking importChannels \
    --file 'tmp.dat' \
    --strategy 'hRVX7LGO' \
    --namespace 'vDdYiQS9' \
    >$TEMP_FILE 2>&1
update_status $? 'importChannels'
delete_file $TEMP_FILE

#- 15 getSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'i7mV1C91' \
    --namespace 'pjG9gpxL' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 16 updateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --body '{"deployment": "6ycTQdvl", "description": "n2LAuSQW", "findMatchTimeoutSeconds": 61, "joinable": true, "max_delay_ms": 60, "ruleSet": {"alliance": {"maxNumber": 67, "minNumber": 28, "playerMaxNumber": 25, "playerMinNumber": 96}, "alliance_flexing_rule": [{"duration": 4, "max_number": 14, "min_number": 66, "player_max_number": 38, "player_min_number": 97}], "flexingRules": [{"attribute": "vbNYqgUq", "criteria": "slArFPiH", "duration": 93, "reference": 0.5364079277230105}], "match_options": {"options": [{"name": "aCv8kU9d", "type": "BBpdsJLh"}]}, "matchingRules": [{"attribute": "sVyExrkx", "criteria": "oot0B7WO", "reference": 0.08041181467016356}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 35, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    --channelName 'pMci37Ds' \
    --namespace '7YSfExaI' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMatchmakingChannel'
delete_file $TEMP_FILE

#- 17 getAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '3uzLteMb' \
    --namespace 'FAlt4hr7' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPartyInChannel'
delete_file $TEMP_FILE

#- 18 getAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'HmOYiBA5' \
    --namespace 'ltAOXmlG' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllSessionsInChannel'
delete_file $TEMP_FILE

#- 19 addUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --body '{"blocked_players": ["6eh1dTdo"], "party_id": "TFpBIcuC", "user_id": "1dQY93OJ"}' \
    --channelName 'nJ6Te9vD' \
    --matchID '8ldz7Hu8' \
    --namespace 'AD79kdWu' \
    >$TEMP_FILE 2>&1
update_status $? 'addUserIntoSessionInChannel'
delete_file $TEMP_FILE

#- 20 deleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'nvizU0q1' \
    --matchID 'pHyhhERo' \
    --namespace 'GgdrysMi' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSessionInChannel'
delete_file $TEMP_FILE

#- 21 deleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'zBGSRdP2' \
    --matchID 'l7DNSZ8A' \
    --namespace 'q0XiPLQX' \
    --userID 'Se07ZddO' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserFromSessionInChannel'
delete_file $TEMP_FILE

#- 22 searchSessions
samples/cli/sample-apps Matchmaking searchSessions \
    --namespace 'GTMlJjBw' \
    --channel 'j9HJHQKs' \
    --deleted 'False' \
    --matchID 'EdSXRDSv' \
    --partyID 'guauw1xT' \
    --userID '7eMwSl9M' \
    --limit '0.5925349259478901' \
    --offset '0.8181702317094851' \
    >$TEMP_FILE 2>&1
update_status $? 'searchSessions'
delete_file $TEMP_FILE

#- 23 getSessionHistoryDetailed
samples/cli/sample-apps Matchmaking getSessionHistoryDetailed \
    --matchID 'nTJ2ulNz' \
    --namespace 'BvwJaQa5' \
    >$TEMP_FILE 2>&1
update_status $? 'getSessionHistoryDetailed'
delete_file $TEMP_FILE

#- 24 publicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

#- 25 publicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace '47JllvA8' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAllMatchmakingChannel'
delete_file $TEMP_FILE

#- 26 publicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'RWSpabUt' \
    --namespace '7xk6QxyW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 27 searchSessionsV2
samples/cli/sample-apps Matchmaking searchSessionsV2 \
    --namespace 'hfqoWfJw' \
    --channel '2o8oWUqv' \
    --deleted 'True' \
    --matchID 'Z2HzT7NX' \
    --partyID 'mWDlXsuN' \
    --userID 'IdQJR5ls' \
    --limit '0.6107156845446877' \
    --offset '0.18480602905898835' \
    >$TEMP_FILE 2>&1
update_status $? 'searchSessionsV2'
delete_file $TEMP_FILE

#- 28 versionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    >$TEMP_FILE 2>&1
update_status $? 'versionCheckHandler'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT