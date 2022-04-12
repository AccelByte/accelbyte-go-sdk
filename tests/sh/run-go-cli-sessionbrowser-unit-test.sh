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

OPERATIONS_COUNT=15

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

#- 1 getTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace 'FtBxyZcD' \
    --sessionType 'XBpGlsQu' \
    >$TEMP_FILE 2>&1
update_status $? 'getTotalActiveSession'
delete_file $TEMP_FILE

#- 2 getActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace 'Ju8vMf0I' \
    --serverRegion 'sJkTrd8I' \
    --sessionId 'DcV2zXnT' \
    >$TEMP_FILE 2>&1
update_status $? 'getActiveCustomGameSessions'
delete_file $TEMP_FILE

#- 3 getActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace 'KjXY1bPq' \
    --matchId 'amiBxx9C' \
    --serverRegion 's18EY84e' \
    --sessionId 'kItqRzHU' \
    >$TEMP_FILE 2>&1
update_status $? 'getActiveMatchmakingGameSessions'
delete_file $TEMP_FILE

#- 4 adminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace '1oh570KQ' \
    --sessionID 'BVaewc72' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetSession'
delete_file $TEMP_FILE

#- 5 querySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace 'krSha68n' \
    --gameMode '3Ynozp1C' \
    --gameVersion '2KmIQTuB' \
    --joinable 'dNEUsxFb' \
    --limit '56' \
    --matchExist 'J17M7DJZ' \
    --matchId 'aMSxECbZ' \
    --offset '2' \
    --serverStatus 'ygyoarOR' \
    --userId 'oeNHSb8R' \
    --sessionType 'h3kgs9qq' \
    >$TEMP_FILE 2>&1
update_status $? 'querySession'
delete_file $TEMP_FILE

#- 6 createSession
samples/cli/sample-apps Sessionbrowser createSession \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 27, "current_player": 85, "map_name": "soBgiVpP", "max_internal_player": 56, "max_player": 24, "mode": "3yvASUox", "num_bot": 7, "password": "xxFqmAGT", "settings": {"J8IEdagE": {}}}, "game_version": "tp4w29KO", "namespace": "u9c19R6X", "session_type": "DqWHkkP8", "username": "npLEKMfj"}' \
    --namespace 'iX7jpkVZ' \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 7 getSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace 'k3IaQYEm' \
    --userIds 'qGodOEGt' \
    >$TEMP_FILE 2>&1
update_status $? 'getSessionByUserIDs'
delete_file $TEMP_FILE

#- 8 getSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace '9gPOj0c6' \
    --sessionID 'i0JkvIas' \
    >$TEMP_FILE 2>&1
update_status $? 'getSession'
delete_file $TEMP_FILE

#- 9 updateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --body '{"game_current_player": 40, "game_max_player": 4}' \
    --namespace 'YnFAJ3DK' \
    --sessionID '5T4Eogg0' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSession'
delete_file $TEMP_FILE

#- 10 deleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace 'Y39UoYlp' \
    --sessionID 'v5bVAgts' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 11 joinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --body '{"password": "DhUTDUsc"}' \
    --namespace 'bQDjbTQu' \
    --sessionID 'PMz2PTRl' \
    >$TEMP_FILE 2>&1
update_status $? 'joinSession'
delete_file $TEMP_FILE

#- 12 deleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace 'kyU89ZPO' \
    --sessionID 'w6zPFJ42' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSessionLocalDS'
delete_file $TEMP_FILE

#- 13 addPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --body '{"as_spectator": false, "user_id": "wmzBBSMN"}' \
    --namespace 'coAAOjKN' \
    --sessionID 'jfcYHm09' \
    >$TEMP_FILE 2>&1
update_status $? 'addPlayerToSession'
delete_file $TEMP_FILE

#- 14 removePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace '3aYgBU1s' \
    --sessionID 'qjyK0XH4' \
    --userID '5PaRSOFQ' \
    >$TEMP_FILE 2>&1
update_status $? 'removePlayerFromSession'
delete_file $TEMP_FILE

#- 15 getRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace 'Btu23REZ' \
    --userID '8hRVX7LG' \
    >$TEMP_FILE 2>&1
update_status $? 'getRecentPlayer'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT