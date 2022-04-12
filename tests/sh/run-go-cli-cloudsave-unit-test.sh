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

OPERATIONS_COUNT=32

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

#- 1 adminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --body '{"set_by": "FtBxyZcD", "updatedAt": "XBpGlsQu", "value": {"Ju8vMf0I": {}}}' \
    --key 'sJkTrd8I' \
    --namespace 'DcV2zXnT' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 2 listGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace 'KjXY1bPq' \
    --query 'amiBxx9C' \
    --limit '36' \
    --offset '61' \
    >$TEMP_FILE 2>&1
update_status $? 'listGameRecordsHandlerV1'
delete_file $TEMP_FILE

#- 3 adminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Y84ekItq' \
    --namespace 'RzHU1oh5' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 4 adminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --body '{}' \
    --key '70KQBVae' \
    --namespace 'wc72krSh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 5 adminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --body '{}' \
    --key 'a68n3Yno' \
    --namespace 'zp1C2KmI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 6 adminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'QTuBdNEU' \
    --namespace 'sxFb8CJ1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 7 listPlayerRecordHandlerV1
update_status 0 'listPlayerRecordHandlerV1 (skipped deprecated)'

#- 8 adminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"set_by": "7M7DJZaM", "updatedAt": "SxECbZby", "value": {"gyoarORo": {}}}' \
    --key 'eNHSb8Rh' \
    --namespace '3kgs9qqJ' \
    --userId 'bnQsoBgi' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 9 adminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace 'VpP8Cm3y' \
    --userId 'vASUoxdx' \
    --limit '46' \
    --offset '63' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrievePlayerRecords'
delete_file $TEMP_FILE

#- 10 adminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'qmAGTJ8I' \
    --namespace 'EdagEtp4' \
    --userId 'w29KOu9c' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 11 adminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --body '{}' \
    --key '19R6XDqW' \
    --namespace 'HkkP8npL' \
    --userId 'EKMfjiX7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 12 adminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'jpkVZk3I' \
    --namespace 'aQYEmqGo' \
    --userId 'dOEGt9gP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 13 adminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'Oj0c6i0J' \
    --namespace 'kvIas73u' \
    --userId 'cYnFAJ3D' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 14 adminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'K5T4Eogg' \
    --namespace '0Y39UoYl' \
    --userId 'pv5bVAgt' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 15 adminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'sDhUTDUs' \
    --namespace 'cbQDjbTQ' \
    --userId 'uPMz2PTR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 16 adminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'lkyU89ZP' \
    --namespace 'Ow6zPFJ4' \
    --userId '2cwmzBBS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 17 adminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'MNcoAAOj' \
    --namespace 'KNjfcYHm' \
    --userId '093aYgBU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 18 putGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "1sqjyK0X", "value": {"H45PaRSO": {}}}' \
    --key 'FQBtu23R' \
    --namespace 'EZ8hRVX7' \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 19 getGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'LGOvDdYi' \
    --namespace 'QS9i7mV1' \
    >$TEMP_FILE 2>&1
update_status $? 'getGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 20 putGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --body '{}' \
    --key 'C91pjG9g' \
    --namespace 'pxL6ycTQ' \
    >$TEMP_FILE 2>&1
update_status $? 'putGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 21 postGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --body '{}' \
    --key 'dvln2LAu' \
    --namespace 'SQWEXL6L' \
    >$TEMP_FILE 2>&1
update_status $? 'postGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 22 deleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'FE1YHo9m' \
    --namespace '126ZWc8h' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 23 bulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --body '{"userIds": ["HtWvbNYq"]}' \
    --key 'gUqslArF' \
    --namespace 'PiHUIvaC' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 24 publicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'v8kU9dBB' \
    --namespace 'pdsJLhsV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 25 putPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "yExrkxoo", "value": {"t0B7WOfe": {}}}' \
    --key 'rcZdpMci' \
    --namespace '37Ds7YSf' \
    --userId 'ExaI3uzL' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 26 getPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'teMbFAlt' \
    --namespace '4hr7HmOY' \
    --userId 'iBA5ltAO' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 27 putPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'XmlG6eh1' \
    --namespace 'dTdoTFpB' \
    --userId 'IcuC1dQY' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 28 postPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --body '{}' \
    --key '93OJnJ6T' \
    --namespace 'e9vD8ldz' \
    --userId '7Hu8AD79' \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 29 deletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kdWunviz' \
    --namespace 'U0q1pHyh' \
    --userId 'hERoGgdr' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 30 getPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'ysMizBGS' \
    --namespace 'RdP2l7DN' \
    --userId 'SZ8Aq0Xi' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 31 putPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'PLQXSe07' \
    --namespace 'ZddOGTMl' \
    --userId 'JjBwj9HJ' \
    >$TEMP_FILE 2>&1
update_status $? 'putPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 32 postPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'HQKseEdS' \
    --namespace 'XRDSvgua' \
    --userId 'uw1xT7eM' \
    >$TEMP_FILE 2>&1
update_status $? 'postPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT