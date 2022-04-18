#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test-ws.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=90

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

#- 1 friendsStatusRequest
samples/cli/sample-apps --wsModeStandalone friendsStatusRequest \
    >$TEMP_FILE 2>&1
update_status $? 'friendsStatusRequest'
delete_file $TEMP_FILE

#- 2 partyInfoRequest
samples/cli/sample-apps --wsModeStandalone partyInfoRequest \
    >$TEMP_FILE 2>&1
update_status $? 'partyInfoRequest'
delete_file $TEMP_FILE

delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT