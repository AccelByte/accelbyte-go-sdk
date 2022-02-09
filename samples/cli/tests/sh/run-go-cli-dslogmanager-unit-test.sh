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

OPERATIONS_COUNT=6

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

echo "go install github.com/AccelByte/sample-apps"
go install github.com/AccelByte/sample-apps
#rm -f $TEMP_TOKEN
#echo "\"{"\"access_token"\":"\"foo"\"}"\" >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 listTerminatedServers
sample-apps Dslogmanager listTerminatedServers \
    --namespace 'FtBxyZcD' \
    --deployment 'XBpGlsQu' \
    --endDate 'Ju8vMf0I' \
    --gameMode 'sJkTrd8I' \
    --limit '59' \
    --next 'cV2zXnTK' \
    --partyId 'jXY1bPqa' \
    --podName 'miBxx9Cs' \
    --previous '18EY84ek' \
    --provider 'ItqRzHU1' \
    --region 'oh570KQB' \
    --sessionId 'Vaewc72k' \
    --startDate 'rSha68n3' \
    --userId 'Ynozp1C2' \
    >$TEMP_FILE 2>&1
update_status $? 'listTerminatedServers'
delete_file $TEMP_FILE

#- 2 downloadServerLogs
sample-apps Dslogmanager downloadServerLogs \
    --namespace 'KmIQTuBd' \
    --podName 'NEUsxFb8' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadServerLogs'
delete_file $TEMP_FILE

#- 3 checkServerLogs
sample-apps Dslogmanager checkServerLogs \
    --namespace 'CJ17M7DJ' \
    --podName 'ZaMSxECb' \
    >$TEMP_FILE 2>&1
update_status $? 'checkServerLogs'
delete_file $TEMP_FILE

#- 4 batchDownloadServerLogs
sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Zbygyoar", "namespace": "ORoeNHSb", "pod_name": "8Rh3kgs9"}]}' \
    >$TEMP_FILE 2>&1
update_status $? 'batchDownloadServerLogs'
delete_file $TEMP_FILE

#- 5 listAllTerminatedServers
sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'qqJbnQso' \
    --endDate 'BgiVpP8C' \
    --gameMode 'm3yvASUo' \
    --limit '47' \
    --namespace 'dxxFqmAG' \
    --next 'TJ8IEdag' \
    --partyId 'Etp4w29K' \
    --podName 'Ou9c19R6' \
    --previous 'XDqWHkkP' \
    --provider '8npLEKMf' \
    --region 'jiX7jpkV' \
    --sessionId 'Zk3IaQYE' \
    --startDate 'mqGodOEG' \
    --userId 't9gPOj0c' \
    >$TEMP_FILE 2>&1
update_status $? 'listAllTerminatedServers'
delete_file $TEMP_FILE

#- 6 publicGetMessages
sample-apps Dslogmanager publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT