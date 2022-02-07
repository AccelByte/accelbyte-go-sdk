#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=28

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"
export NAMESPACE="test"

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 getHealthcheckInfo
$ sample-apps Matchmaking getHealthcheckInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'getHealthcheckInfo'
delete_file $TEMP_FILE

#- 2 handlerV3Healthz
$ sample-apps Matchmaking handlerV3Healthz -h \
    >$TEMP_FILE 2>&1
update_status $? 'handlerV3Healthz'
delete_file $TEMP_FILE

#- 3 getAllChannelsHandler
$ sample-apps Matchmaking getAllChannelsHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllChannelsHandler'
delete_file $TEMP_FILE

#- 4 createChannelHandler
$ sample-apps Matchmaking createChannelHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'createChannelHandler'
delete_file $TEMP_FILE

#- 5 deleteChannelHandler
$ sample-apps Matchmaking deleteChannelHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteChannelHandler'
delete_file $TEMP_FILE

#- 6 storeMatchResults
$ sample-apps Matchmaking storeMatchResults -h \
    >$TEMP_FILE 2>&1
update_status $? 'storeMatchResults'
delete_file $TEMP_FILE

#- 7 queueSessionHandler
$ sample-apps Matchmaking queueSessionHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'queueSessionHandler'
delete_file $TEMP_FILE

#- 8 dequeueSessionHandler
$ sample-apps Matchmaking dequeueSessionHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'dequeueSessionHandler'
delete_file $TEMP_FILE

#- 9 querySessionHandler
$ sample-apps Matchmaking querySessionHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'querySessionHandler'
delete_file $TEMP_FILE

#- 10 updatePlayTimeWeight
$ sample-apps Matchmaking updatePlayTimeWeight -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlayTimeWeight'
delete_file $TEMP_FILE

#- 11 getAllPartyInAllChannel
$ sample-apps Matchmaking getAllPartyInAllChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPartyInAllChannel'
delete_file $TEMP_FILE

#- 12 bulkGetSessions
$ sample-apps Matchmaking bulkGetSessions -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetSessions'
delete_file $TEMP_FILE

#- 13 exportChannels
$ sample-apps Matchmaking exportChannels -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportChannels'
delete_file $TEMP_FILE

#- 14 importChannels
$ sample-apps Matchmaking importChannels -h \
    >$TEMP_FILE 2>&1
update_status $? 'importChannels'
delete_file $TEMP_FILE

#- 15 getSingleMatchmakingChannel
$ sample-apps Matchmaking getSingleMatchmakingChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 16 updateMatchmakingChannel
$ sample-apps Matchmaking updateMatchmakingChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMatchmakingChannel'
delete_file $TEMP_FILE

#- 17 getAllPartyInChannel
$ sample-apps Matchmaking getAllPartyInChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPartyInChannel'
delete_file $TEMP_FILE

#- 18 getAllSessionsInChannel
$ sample-apps Matchmaking getAllSessionsInChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllSessionsInChannel'
delete_file $TEMP_FILE

#- 19 addUserIntoSessionInChannel
$ sample-apps Matchmaking addUserIntoSessionInChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'addUserIntoSessionInChannel'
delete_file $TEMP_FILE

#- 20 deleteSessionInChannel
$ sample-apps Matchmaking deleteSessionInChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSessionInChannel'
delete_file $TEMP_FILE

#- 21 deleteUserFromSessionInChannel
$ sample-apps Matchmaking deleteUserFromSessionInChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserFromSessionInChannel'
delete_file $TEMP_FILE

#- 22 searchSessions
$ sample-apps Matchmaking searchSessions -h \
    >$TEMP_FILE 2>&1
update_status $? 'searchSessions'
delete_file $TEMP_FILE

#- 23 getSessionHistoryDetailed
$ sample-apps Matchmaking getSessionHistoryDetailed -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSessionHistoryDetailed'
delete_file $TEMP_FILE

#- 24 publicGetMessages
$ sample-apps Matchmaking publicGetMessages -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

#- 25 publicGetAllMatchmakingChannel
$ sample-apps Matchmaking publicGetAllMatchmakingChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAllMatchmakingChannel'
delete_file $TEMP_FILE

#- 26 publicGetSingleMatchmakingChannel
$ sample-apps Matchmaking publicGetSingleMatchmakingChannel -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 27 searchSessionsV2
$ sample-apps Matchmaking searchSessionsV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'searchSessionsV2'
delete_file $TEMP_FILE

#- 28 versionCheckHandler
$ sample-apps Matchmaking versionCheckHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'versionCheckHandler'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT