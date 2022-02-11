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
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 agentTypeDescriptionHandler
update_status 0 'agentTypeDescriptionHandler (skipped deprecated)'

#- 2 specificAgentTypeDescriptionHandler
update_status 0 'specificAgentTypeDescriptionHandler (skipped deprecated)'

#- 3 eventIDDescriptionHandler
update_status 0 'eventIDDescriptionHandler (skipped deprecated)'

#- 4 specificEventIDDescriptionHandler
update_status 0 'specificEventIDDescriptionHandler (skipped deprecated)'

#- 5 eventLevelDescriptionHandler
update_status 0 'eventLevelDescriptionHandler (skipped deprecated)'

#- 6 specificEventLevelDescriptionHandler
update_status 0 'specificEventLevelDescriptionHandler (skipped deprecated)'

#- 7 eventTypeDescriptionHandler
update_status 0 'eventTypeDescriptionHandler (skipped deprecated)'

#- 8 specificEventTypeDescriptionHandler
update_status 0 'specificEventTypeDescriptionHandler (skipped deprecated)'

#- 9 uxNameDescriptionHandler
update_status 0 'uxNameDescriptionHandler (skipped deprecated)'

#- 10 specificUXDescriptionHandler
update_status 0 'specificUXDescriptionHandler (skipped deprecated)'

#- 11 getEventByNamespaceHandler
update_status 0 'getEventByNamespaceHandler (skipped deprecated)'

#- 12 postEventHandler
update_status 0 'postEventHandler (skipped deprecated)'

#- 13 getEventByEventIDHandler
update_status 0 'getEventByEventIDHandler (skipped deprecated)'

#- 14 getEventByEventTypeHandler
update_status 0 'getEventByEventTypeHandler (skipped deprecated)'

#- 15 getEventByEventTypeAndEventIDHandler
update_status 0 'getEventByEventTypeAndEventIDHandler (skipped deprecated)'

#- 16 getEventByUserIDHandler
update_status 0 'getEventByUserIDHandler (skipped deprecated)'

#- 17 getUserActivitiesHandler
update_status 0 'getUserActivitiesHandler (skipped deprecated)'

#- 18 deleteUserActivitiesHandler
update_status 0 'deleteUserActivitiesHandler (skipped deprecated)'

#- 19 getEventByUserIDAndEventIDHandler
update_status 0 'getEventByUserIDAndEventIDHandler (skipped deprecated)'

#- 20 getEventByUserIDAndEventTypeHandler
update_status 0 'getEventByUserIDAndEventTypeHandler (skipped deprecated)'

#- 21 getEventByUserEventIDAndEventTypeHandler
update_status 0 'getEventByUserEventIDAndEventTypeHandler (skipped deprecated)'

#- 22 lastUserActivityTimeHandler
update_status 0 'lastUserActivityTimeHandler (skipped deprecated)'

#- 23 getRegisteredEventsHandler
update_status 0 'getRegisteredEventsHandler (skipped deprecated)'

#- 24 registerEventHandler
update_status 0 'registerEventHandler (skipped deprecated)'

#- 25 getRegisteredEventIDHandler
update_status 0 'getRegisteredEventIDHandler (skipped deprecated)'

#- 26 updateEventRegistryHandler
update_status 0 'updateEventRegistryHandler (skipped deprecated)'

#- 27 unregisterEventIDHandler
update_status 0 'unregisterEventIDHandler (skipped deprecated)'

#- 28 getRegisteredEventsByEventTypeHandler
update_status 0 'getRegisteredEventsByEventTypeHandler (skipped deprecated)'

#- 29 queryEventStreamHandler
samples/cli/sample-apps Eventlog queryEventStreamHandler \
    --body '{"clientId": "FtBxyZcD", "eventName": "XBpGlsQu", "payloadQuery": {"Ju8vMf0I": {}}, "sessionId": "sJkTrd8I", "traceId": "DcV2zXnT", "userId": "KjXY1bPq", "version": 1}' \
    --namespace 'miBxx9Cs' \
    --endDate '18EY84ek' \
    --offset '0.5428278320418053' \
    --pageSize '0.25442449510879916' \
    --startDate 'zHU1oh57' \
    >$TEMP_FILE 2>&1
update_status $? 'queryEventStreamHandler'
delete_file $TEMP_FILE

#- 30 getEventSpecificUserV2Handler
samples/cli/sample-apps Eventlog getEventSpecificUserV2Handler \
    --namespace '0KQBVaew' \
    --userId 'c72krSha' \
    --endDate '68n3Ynoz' \
    --eventName 'p1C2KmIQ' \
    --offset '0.7164070183072041' \
    --pageSize '0.4293248358893298' \
    --startDate 'NEUsxFb8' \
    >$TEMP_FILE 2>&1
update_status $? 'getEventSpecificUserV2Handler'
delete_file $TEMP_FILE

#- 31 getPublicEditHistory
samples/cli/sample-apps Eventlog getPublicEditHistory \
    --namespace 'CJ17M7DJ' \
    --userId 'ZaMSxECb' \
    --endDate 'Zbygyoar' \
    --offset '0.6376922479490184' \
    --pageSize '0.22708694688930686' \
    --startDate 'NHSb8Rh3' \
    --type 'kgs9qqJb' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublicEditHistory'
delete_file $TEMP_FILE

#- 32 getUserEventsV2Public
samples/cli/sample-apps Eventlog getUserEventsV2Public \
    --namespace 'nQsoBgiV' \
    --userId 'pP8Cm3yv' \
    --endDate 'ASUoxdxx' \
    --eventName 'FqmAGTJ8' \
    --offset '0.5377505606123282' \
    --pageSize '0.051312908636605536' \
    --startDate 'gEtp4w29' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEventsV2Public'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT