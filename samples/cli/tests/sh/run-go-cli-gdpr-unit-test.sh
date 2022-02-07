#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=20

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

#- 1 adminGetListDeletionDataRequest
$ sample-apps Gdpr adminGetListDeletionDataRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListDeletionDataRequest'
delete_file $TEMP_FILE

#- 2 getAdminEmailConfiguration
$ sample-apps Gdpr getAdminEmailConfiguration -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 3 updateAdminEmailConfiguration
$ sample-apps Gdpr updateAdminEmailConfiguration -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 4 saveAdminEmailConfiguration
$ sample-apps Gdpr saveAdminEmailConfiguration -h \
    >$TEMP_FILE 2>&1
update_status $? 'saveAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 5 deleteAdminEmailConfiguration
$ sample-apps Gdpr deleteAdminEmailConfiguration -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 6 adminGetListPersonalDataRequest
$ sample-apps Gdpr adminGetListPersonalDataRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListPersonalDataRequest'
delete_file $TEMP_FILE

#- 7 adminGetUserAccountDeletionRequest
$ sample-apps Gdpr adminGetUserAccountDeletionRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 8 adminSubmitUserAccountDeletionRequest
$ sample-apps Gdpr adminSubmitUserAccountDeletionRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 9 adminCancelUserAccountDeletionRequest
$ sample-apps Gdpr adminCancelUserAccountDeletionRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 10 adminGetUserPersonalDataRequests
$ sample-apps Gdpr adminGetUserPersonalDataRequests -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 11 adminRequestDataRetrieval
$ sample-apps Gdpr adminRequestDataRetrieval -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRequestDataRetrieval'
delete_file $TEMP_FILE

#- 12 adminCancelUserPersonalDataRequest
$ sample-apps Gdpr adminCancelUserPersonalDataRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 13 adminGeneratePersonalDataURL
$ sample-apps Gdpr adminGeneratePersonalDataURL -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGeneratePersonalDataURL'
delete_file $TEMP_FILE

#- 14 publicSubmitUserAccountDeletionRequest
$ sample-apps Gdpr publicSubmitUserAccountDeletionRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 15 publicCancelUserAccountDeletionRequest
$ sample-apps Gdpr publicCancelUserAccountDeletionRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 16 publicGetUserAccountDeletionStatus
$ sample-apps Gdpr publicGetUserAccountDeletionStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAccountDeletionStatus'
delete_file $TEMP_FILE

#- 17 publicGetUserPersonalDataRequests
$ sample-apps Gdpr publicGetUserPersonalDataRequests -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 18 publicRequestDataRetrieval
$ sample-apps Gdpr publicRequestDataRetrieval -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicRequestDataRetrieval'
delete_file $TEMP_FILE

#- 19 publicCancelUserPersonalDataRequest
$ sample-apps Gdpr publicCancelUserPersonalDataRequest -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 20 publicGeneratePersonalDataURL
$ sample-apps Gdpr publicGeneratePersonalDataURL -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratePersonalDataURL'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT