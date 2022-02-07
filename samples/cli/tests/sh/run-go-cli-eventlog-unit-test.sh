#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=32

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
$ sample-apps Eventlog queryEventStreamHandler -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryEventStreamHandler'
delete_file $TEMP_FILE

#- 30 getEventSpecificUserV2Handler
$ sample-apps Eventlog getEventSpecificUserV2Handler -h \
    >$TEMP_FILE 2>&1
update_status $? 'getEventSpecificUserV2Handler'
delete_file $TEMP_FILE

#- 31 getPublicEditHistory
$ sample-apps Eventlog getPublicEditHistory -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPublicEditHistory'
delete_file $TEMP_FILE

#- 32 getUserEventsV2Public
$ sample-apps Eventlog getUserEventsV2Public -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEventsV2Public'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT