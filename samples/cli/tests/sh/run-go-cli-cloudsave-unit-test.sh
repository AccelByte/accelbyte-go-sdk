#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=30

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

#- 1 listGameRecordsHandlerV1
$ sample-apps Cloudsave listGameRecordsHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'listGameRecordsHandlerV1'
delete_file $TEMP_FILE

#- 2 adminGetGameRecordHandlerV1
$ sample-apps Cloudsave adminGetGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 3 adminPutGameRecordHandlerV1
$ sample-apps Cloudsave adminPutGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 4 adminPostGameRecordHandlerV1
$ sample-apps Cloudsave adminPostGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 5 adminDeleteGameRecordHandlerV1
$ sample-apps Cloudsave adminDeleteGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 6 listPlayerRecordHandlerV1
update_status 0 'listPlayerRecordHandlerV1 (skipped deprecated)'

#- 7 adminRetrievePlayerRecords
$ sample-apps Cloudsave adminRetrievePlayerRecords -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrievePlayerRecords'
delete_file $TEMP_FILE

#- 8 adminGetPlayerRecordHandlerV1
$ sample-apps Cloudsave adminGetPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 9 adminPutPlayerRecordHandlerV1
$ sample-apps Cloudsave adminPutPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 10 adminPostPlayerRecordHandlerV1
$ sample-apps Cloudsave adminPostPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 11 adminDeletePlayerRecordHandlerV1
$ sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 12 adminGetPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 13 adminPutPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 14 adminPostPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 15 adminDeletePlayerPublicRecordHandlerV1
$ sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 16 putGameRecordConcurrentHandlerV1
$ sample-apps Cloudsave putGameRecordConcurrentHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 17 getGameRecordHandlerV1
$ sample-apps Cloudsave getGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 18 putGameRecordHandlerV1
$ sample-apps Cloudsave putGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 19 postGameRecordHandlerV1
$ sample-apps Cloudsave postGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'postGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 20 deleteGameRecordHandlerV1
$ sample-apps Cloudsave deleteGameRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 21 bulkGetPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 22 publicDeletePlayerPublicRecordHandlerV1
$ sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 23 putPlayerPublicRecordConcurrentHandlerV1
$ sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 24 getPlayerRecordHandlerV1
$ sample-apps Cloudsave getPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 25 putPlayerRecordHandlerV1
$ sample-apps Cloudsave putPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 26 postPlayerRecordHandlerV1
$ sample-apps Cloudsave postPlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 27 deletePlayerRecordHandlerV1
$ sample-apps Cloudsave deletePlayerRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 28 getPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave getPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 29 putPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave putPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 30 postPlayerPublicRecordHandlerV1
$ sample-apps Cloudsave postPlayerPublicRecordHandlerV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT