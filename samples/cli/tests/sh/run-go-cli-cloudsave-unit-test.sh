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

echo "go install github.com/AccelByte/sample-apps"
go install github.com/AccelByte/sample-apps
echo "Login..."
echo "sample-apps login -u 'admin' -p 'admin'"
sample-apps login -u 'admin' -p 'admin'
echo "1..$OPERATIONS_COUNT"

#- 1 listGameRecordsHandlerV1
sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace 'FtBxyZcD' \
    --query 'XBpGlsQu' \
    --limit '71' \
    --offset '41' \
    >$TEMP_FILE 2>&1
update_status $? 'listGameRecordsHandlerV1'
delete_file $TEMP_FILE

#- 2 adminGetGameRecordHandlerV1
sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '8vMf0IsJ' \
    --namespace 'kTrd8IDc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 3 adminPutGameRecordHandlerV1
sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --body '{}' \
    --key 'V2zXnTKj' \
    --namespace 'XY1bPqam' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 4 adminPostGameRecordHandlerV1
sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --body '{}' \
    --key 'iBxx9Cs1' \
    --namespace '8EY84ekI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 5 adminDeleteGameRecordHandlerV1
sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'tqRzHU1o' \
    --namespace 'h570KQBV' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 6 listPlayerRecordHandlerV1
update_status 0 'listPlayerRecordHandlerV1 (skipped deprecated)'

#- 7 adminRetrievePlayerRecords
sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace 'aewc72kr' \
    --userId 'Sha68n3Y' \
    --limit '26' \
    --offset '29' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrievePlayerRecords'
delete_file $TEMP_FILE

#- 8 adminGetPlayerRecordHandlerV1
sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'zp1C2KmI' \
    --namespace 'QTuBdNEU' \
    --userId 'sxFb8CJ1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 9 adminPutPlayerRecordHandlerV1
sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --body '{}' \
    --key '7M7DJZaM' \
    --namespace 'SxECbZby' \
    --userId 'gyoarORo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 10 adminPostPlayerRecordHandlerV1
sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'eNHSb8Rh' \
    --namespace '3kgs9qqJ' \
    --userId 'bnQsoBgi' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 11 adminDeletePlayerRecordHandlerV1
sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'VpP8Cm3y' \
    --namespace 'vASUoxdx' \
    --userId 'xFqmAGTJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 12 adminGetPlayerPublicRecordHandlerV1
sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '8IEdagEt' \
    --namespace 'p4w29KOu' \
    --userId '9c19R6XD' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 13 adminPutPlayerPublicRecordHandlerV1
sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'qWHkkP8n' \
    --namespace 'pLEKMfji' \
    --userId 'X7jpkVZk' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 14 adminPostPlayerPublicRecordHandlerV1
sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key '3IaQYEmq' \
    --namespace 'GodOEGt9' \
    --userId 'gPOj0c6i' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 15 adminDeletePlayerPublicRecordHandlerV1
sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '0JkvIas7' \
    --namespace '3ucYnFAJ' \
    --userId '3DK5T4Eo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 16 putGameRecordConcurrentHandlerV1
sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "gg0Y39Uo", "value": {"Ylpv5bVA": {}}}' \
    --key 'gtsDhUTD' \
    --namespace 'UscbQDjb' \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 17 getGameRecordHandlerV1
sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'TQuPMz2P' \
    --namespace 'TRlkyU89' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 18 putGameRecordHandlerV1
sample-apps Cloudsave putGameRecordHandlerV1 \
    --body '{}' \
    --key 'ZPOw6zPF' \
    --namespace 'J42cwmzB' \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 19 postGameRecordHandlerV1
sample-apps Cloudsave postGameRecordHandlerV1 \
    --body '{}' \
    --key 'BSMNcoAA' \
    --namespace 'OjKNjfcY' \
    >$TEMP_FILE 2>&1
update_status $? 'postGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 20 deleteGameRecordHandlerV1
sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Hm093aYg' \
    --namespace 'BU1sqjyK' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 21 bulkGetPlayerPublicRecordHandlerV1
sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --body '{"userIds": ["0XH45PaR"]}' \
    --key 'SOFQBtu2' \
    --namespace '3REZ8hRV' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 22 publicDeletePlayerPublicRecordHandlerV1
sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'X7LGOvDd' \
    --namespace 'YiQS9i7m' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 23 putPlayerPublicRecordConcurrentHandlerV1
sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "V1C91pjG", "value": {"9gpxL6yc": {}}}' \
    --key 'TQdvln2L' \
    --namespace 'AuSQWEXL' \
    --userId '6LFE1YHo' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 24 getPlayerRecordHandlerV1
sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '9m126ZWc' \
    --namespace '8hHtWvbN' \
    --userId 'YqgUqslA' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 25 putPlayerRecordHandlerV1
sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'rFPiHUIv' \
    --namespace 'aCv8kU9d' \
    --userId 'BBpdsJLh' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 26 postPlayerRecordHandlerV1
sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'sVyExrkx' \
    --namespace 'oot0B7WO' \
    --userId 'fercZdpM' \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 27 deletePlayerRecordHandlerV1
sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'ci37Ds7Y' \
    --namespace 'SfExaI3u' \
    --userId 'zLteMbFA' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 28 getPlayerPublicRecordHandlerV1
sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'lt4hr7Hm' \
    --namespace 'OYiBA5lt' \
    --userId 'AOXmlG6e' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 29 putPlayerPublicRecordHandlerV1
sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'h1dTdoTF' \
    --namespace 'pBIcuC1d' \
    --userId 'QY93OJnJ' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 30 postPlayerPublicRecordHandlerV1
sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key '6Te9vD8l' \
    --namespace 'dz7Hu8AD' \
    --userId '79kdWunv' \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT