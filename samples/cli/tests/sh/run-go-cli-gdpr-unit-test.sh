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

OPERATIONS_COUNT=20

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

#- 1 adminGetListDeletionDataRequest
sample-apps Gdpr adminGetListDeletionDataRequest \
    --namespace 'FtBxyZcD' \
    --after 'XBpGlsQu' \
    --before 'Ju8vMf0I' \
    --limit '36' \
    --offset '71' \
    --requestDate 'kTrd8IDc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListDeletionDataRequest'
delete_file $TEMP_FILE

#- 2 getAdminEmailConfiguration
sample-apps Gdpr getAdminEmailConfiguration \
    --namespace 'V2zXnTKj' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 3 updateAdminEmailConfiguration
sample-apps Gdpr updateAdminEmailConfiguration \
    --body '["XY1bPqam"]' \
    --namespace 'iBxx9Cs1' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 4 saveAdminEmailConfiguration
sample-apps Gdpr saveAdminEmailConfiguration \
    --body '["8EY84ekI"]' \
    --namespace 'tqRzHU1o' \
    >$TEMP_FILE 2>&1
update_status $? 'saveAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 5 deleteAdminEmailConfiguration
sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace 'h570KQBV' \
    --emails '["aewc72kr"]' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 6 adminGetListPersonalDataRequest
sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace 'Sha68n3Y' \
    --limit '26' \
    --offset '29' \
    --requestDate 'zp1C2KmI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListPersonalDataRequest'
delete_file $TEMP_FILE

#- 7 adminGetUserAccountDeletionRequest
sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace 'QTuBdNEU' \
    --userId 'sxFb8CJ1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 8 adminSubmitUserAccountDeletionRequest
sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace '7M7DJZaM' \
    --userId 'SxECbZby' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 9 adminCancelUserAccountDeletionRequest
sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace 'gyoarORo' \
    --userId 'eNHSb8Rh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 10 adminGetUserPersonalDataRequests
sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace '3kgs9qqJ' \
    --userId 'bnQsoBgi' \
    --limit '95' \
    --offset '31' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 11 adminRequestDataRetrieval
sample-apps Gdpr adminRequestDataRetrieval \
    --password 'P8Cm3yvA' \
    --namespace 'SUoxdxxF' \
    --userId 'qmAGTJ8I' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRequestDataRetrieval'
delete_file $TEMP_FILE

#- 12 adminCancelUserPersonalDataRequest
sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace 'EdagEtp4' \
    --requestDate 'w29KOu9c' \
    --userId '19R6XDqW' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 13 adminGeneratePersonalDataURL
sample-apps Gdpr adminGeneratePersonalDataURL \
    --password 'HkkP8npL' \
    --namespace 'EKMfjiX7' \
    --requestDate 'jpkVZk3I' \
    --userId 'aQYEmqGo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGeneratePersonalDataURL'
delete_file $TEMP_FILE

#- 14 publicSubmitUserAccountDeletionRequest
sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --password 'dOEGt9gP' \
    --namespace 'Oj0c6i0J' \
    --userId 'kvIas73u' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 15 publicCancelUserAccountDeletionRequest
sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace 'cYnFAJ3D' \
    --userId 'K5T4Eogg' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 16 publicGetUserAccountDeletionStatus
sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace '0Y39UoYl' \
    --userId 'pv5bVAgt' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAccountDeletionStatus'
delete_file $TEMP_FILE

#- 17 publicGetUserPersonalDataRequests
sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace 'sDhUTDUs' \
    --userId 'cbQDjbTQ' \
    --limit '41' \
    --offset '83' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 18 publicRequestDataRetrieval
sample-apps Gdpr publicRequestDataRetrieval \
    --password 'Mz2PTRlk' \
    --namespace 'yU89ZPOw' \
    --userId '6zPFJ42c' \
    >$TEMP_FILE 2>&1
update_status $? 'publicRequestDataRetrieval'
delete_file $TEMP_FILE

#- 19 publicCancelUserPersonalDataRequest
sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace 'wmzBBSMN' \
    --requestDate 'coAAOjKN' \
    --userId 'jfcYHm09' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 20 publicGeneratePersonalDataURL
sample-apps Gdpr publicGeneratePersonalDataURL \
    --password '3aYgBU1s' \
    --namespace 'qjyK0XH4' \
    --requestDate '5PaRSOFQ' \
    --userId 'Btu23REZ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGeneratePersonalDataURL'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT