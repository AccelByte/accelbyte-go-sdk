#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=15

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

#- 1 getTotalActiveSession
$ sample-apps Sessionbrowser getTotalActiveSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTotalActiveSession'
delete_file $TEMP_FILE

#- 2 getActiveCustomGameSessions
$ sample-apps Sessionbrowser getActiveCustomGameSessions -h \
    >$TEMP_FILE 2>&1
update_status $? 'getActiveCustomGameSessions'
delete_file $TEMP_FILE

#- 3 getActiveMatchmakingGameSessions
$ sample-apps Sessionbrowser getActiveMatchmakingGameSessions -h \
    >$TEMP_FILE 2>&1
update_status $? 'getActiveMatchmakingGameSessions'
delete_file $TEMP_FILE

#- 4 adminGetSession
$ sample-apps Sessionbrowser adminGetSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetSession'
delete_file $TEMP_FILE

#- 5 querySession
$ sample-apps Sessionbrowser querySession -h \
    >$TEMP_FILE 2>&1
update_status $? 'querySession'
delete_file $TEMP_FILE

#- 6 createSession
$ sample-apps Sessionbrowser createSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 7 getSessionByUserIDs
$ sample-apps Sessionbrowser getSessionByUserIDs -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSessionByUserIDs'
delete_file $TEMP_FILE

#- 8 getSession
$ sample-apps Sessionbrowser getSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSession'
delete_file $TEMP_FILE

#- 9 updateSession
$ sample-apps Sessionbrowser updateSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateSession'
delete_file $TEMP_FILE

#- 10 deleteSession
$ sample-apps Sessionbrowser deleteSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 11 joinSession
$ sample-apps Sessionbrowser joinSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'joinSession'
delete_file $TEMP_FILE

#- 12 deleteSessionLocalDS
$ sample-apps Sessionbrowser deleteSessionLocalDS -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSessionLocalDS'
delete_file $TEMP_FILE

#- 13 addPlayerToSession
$ sample-apps Sessionbrowser addPlayerToSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'addPlayerToSession'
delete_file $TEMP_FILE

#- 14 removePlayerFromSession
$ sample-apps Sessionbrowser removePlayerFromSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'removePlayerFromSession'
delete_file $TEMP_FILE

#- 15 getRecentPlayer
$ sample-apps Sessionbrowser getRecentPlayer -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRecentPlayer'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT