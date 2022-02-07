#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=68

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

#- 1 getNamespaceSlotConfig
$ sample-apps Social getNamespaceSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 2 updateNamespaceSlotConfig
$ sample-apps Social updateNamespaceSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 3 deleteNamespaceSlotConfig
$ sample-apps Social deleteNamespaceSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 4 getUserSlotConfig
$ sample-apps Social getUserSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSlotConfig'
delete_file $TEMP_FILE

#- 5 updateUserSlotConfig
$ sample-apps Social updateUserSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserSlotConfig'
delete_file $TEMP_FILE

#- 6 deleteUserSlotConfig
$ sample-apps Social deleteUserSlotConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSlotConfig'
delete_file $TEMP_FILE

#- 7 getUserProfiles
$ sample-apps Social getUserProfiles -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserProfiles'
delete_file $TEMP_FILE

#- 8 getProfile
$ sample-apps Social getProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'getProfile'
delete_file $TEMP_FILE

#- 9 getUserNamespaceSlots
$ sample-apps Social getUserNamespaceSlots -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserNamespaceSlots'
delete_file $TEMP_FILE

#- 10 getSlotData
$ sample-apps Social getSlotData -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSlotData'
delete_file $TEMP_FILE

#- 11 publicGetUserGameProfiles
$ sample-apps Social publicGetUserGameProfiles -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserGameProfiles'
delete_file $TEMP_FILE

#- 12 publicGetUserProfiles
$ sample-apps Social publicGetUserProfiles -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserProfiles'
delete_file $TEMP_FILE

#- 13 publicCreateProfile
$ sample-apps Social publicCreateProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateProfile'
delete_file $TEMP_FILE

#- 14 publicGetProfile
$ sample-apps Social publicGetProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetProfile'
delete_file $TEMP_FILE

#- 15 publicUpdateProfile
$ sample-apps Social publicUpdateProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateProfile'
delete_file $TEMP_FILE

#- 16 publicDeleteProfile
$ sample-apps Social publicDeleteProfile -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeleteProfile'
delete_file $TEMP_FILE

#- 17 publicGetProfileAttribute
$ sample-apps Social publicGetProfileAttribute -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetProfileAttribute'
delete_file $TEMP_FILE

#- 18 publicUpdateAttribute
$ sample-apps Social publicUpdateAttribute -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateAttribute'
delete_file $TEMP_FILE

#- 19 publicGetUserNamespaceSlots
$ sample-apps Social publicGetUserNamespaceSlots -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 20 publicCreateUserNamespaceSlot
$ sample-apps Social publicCreateUserNamespaceSlot -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 21 publicGetSlotData
$ sample-apps Social publicGetSlotData -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetSlotData'
delete_file $TEMP_FILE

#- 22 publicUpdateUserNamespaceSlot
$ sample-apps Social publicUpdateUserNamespaceSlot -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 23 publicDeleteUserNamespaceSlot
$ sample-apps Social publicDeleteUserNamespaceSlot -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeleteUserNamespaceSlot'
delete_file $TEMP_FILE

#- 24 publicUpdateUserNamespaceSlotMetadata
$ sample-apps Social publicUpdateUserNamespaceSlotMetadata -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserNamespaceSlotMetadata'
delete_file $TEMP_FILE

#- 25 getGlobalStatItems
$ sample-apps Social getGlobalStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGlobalStatItems'
delete_file $TEMP_FILE

#- 26 bulkFetchStatItems
$ sample-apps Social bulkFetchStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkFetchStatItems'
delete_file $TEMP_FILE

#- 27 bulkIncUserStatItem
$ sample-apps Social bulkIncUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItem'
delete_file $TEMP_FILE

#- 28 bulkIncUserStatItemValue
$ sample-apps Social bulkIncUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 29 bulkResetUserStatItem
$ sample-apps Social bulkResetUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem'
delete_file $TEMP_FILE

#- 30 getStats
$ sample-apps Social getStats -h \
    >$TEMP_FILE 2>&1
update_status $? 'getStats'
delete_file $TEMP_FILE

#- 31 createStat
$ sample-apps Social createStat -h \
    >$TEMP_FILE 2>&1
update_status $? 'createStat'
delete_file $TEMP_FILE

#- 32 exportStats
$ sample-apps Social exportStats -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportStats'
delete_file $TEMP_FILE

#- 33 importStats
$ sample-apps Social importStats -h \
    >$TEMP_FILE 2>&1
update_status $? 'importStats'
delete_file $TEMP_FILE

#- 34 queryStats
$ sample-apps Social queryStats -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryStats'
delete_file $TEMP_FILE

#- 35 getStat
$ sample-apps Social getStat -h \
    >$TEMP_FILE 2>&1
update_status $? 'getStat'
delete_file $TEMP_FILE

#- 36 deleteStat
$ sample-apps Social deleteStat -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStat'
delete_file $TEMP_FILE

#- 37 updateStat
$ sample-apps Social updateStat -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateStat'
delete_file $TEMP_FILE

#- 38 getUserStatItems
$ sample-apps Social getUserStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserStatItems'
delete_file $TEMP_FILE

#- 39 bulkCreateUserStatItems
$ sample-apps Social bulkCreateUserStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 40 bulkIncUserStatItem1
$ sample-apps Social bulkIncUserStatItem1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 41 bulkIncUserStatItemValue1
$ sample-apps Social bulkIncUserStatItemValue1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue1'
delete_file $TEMP_FILE

#- 42 bulkResetUserStatItem1
$ sample-apps Social bulkResetUserStatItem1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem1'
delete_file $TEMP_FILE

#- 43 createUserStatItem
$ sample-apps Social createUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'createUserStatItem'
delete_file $TEMP_FILE

#- 44 deleteUserStatItems
$ sample-apps Social deleteUserStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems'
delete_file $TEMP_FILE

#- 45 incUserStatItemValue
$ sample-apps Social incUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'incUserStatItemValue'
delete_file $TEMP_FILE

#- 46 resetUserStatItemValue
$ sample-apps Social resetUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserStatItemValue'
delete_file $TEMP_FILE

#- 47 bulkFetchStatItems1
$ sample-apps Social bulkFetchStatItems1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkFetchStatItems1'
delete_file $TEMP_FILE

#- 48 publicBulkIncUserStatItem
$ sample-apps Social publicBulkIncUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItem'
delete_file $TEMP_FILE

#- 49 publicBulkIncUserStatItemValue
$ sample-apps Social publicBulkIncUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 50 bulkResetUserStatItem2
$ sample-apps Social bulkResetUserStatItem2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem2'
delete_file $TEMP_FILE

#- 51 createStat1
$ sample-apps Social createStat1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createStat1'
delete_file $TEMP_FILE

#- 52 publicQueryUserStatItems
$ sample-apps Social publicQueryUserStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserStatItems'
delete_file $TEMP_FILE

#- 53 publicBulkCreateUserStatItems
$ sample-apps Social publicBulkCreateUserStatItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 54 publicBulkIncUserStatItem1
$ sample-apps Social publicBulkIncUserStatItem1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 55 bulkIncUserStatItemValue2
$ sample-apps Social bulkIncUserStatItemValue2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkIncUserStatItemValue2'
delete_file $TEMP_FILE

#- 56 bulkResetUserStatItem3
$ sample-apps Social bulkResetUserStatItem3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkResetUserStatItem3'
delete_file $TEMP_FILE

#- 57 publicCreateUserStatItem
$ sample-apps Social publicCreateUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserStatItem'
delete_file $TEMP_FILE

#- 58 deleteUserStatItems1
$ sample-apps Social deleteUserStatItems1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems1'
delete_file $TEMP_FILE

#- 59 publicIncUserStatItem
$ sample-apps Social publicIncUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicIncUserStatItem'
delete_file $TEMP_FILE

#- 60 publicIncUserStatItemValue
$ sample-apps Social publicIncUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicIncUserStatItemValue'
delete_file $TEMP_FILE

#- 61 resetUserStatItemValue1
$ sample-apps Social resetUserStatItemValue1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserStatItemValue1'
delete_file $TEMP_FILE

#- 62 bulkUpdateUserStatItemV2
$ sample-apps Social bulkUpdateUserStatItemV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItemV2'
delete_file $TEMP_FILE

#- 63 bulkUpdateUserStatItem
$ sample-apps Social bulkUpdateUserStatItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem'
delete_file $TEMP_FILE

#- 64 deleteUserStatItems2
$ sample-apps Social deleteUserStatItems2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserStatItems2'
delete_file $TEMP_FILE

#- 65 updateUserStatItemValue
$ sample-apps Social updateUserStatItemValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserStatItemValue'
delete_file $TEMP_FILE

#- 66 bulkUpdateUserStatItem1
$ sample-apps Social bulkUpdateUserStatItem1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem1'
delete_file $TEMP_FILE

#- 67 bulkUpdateUserStatItem2
$ sample-apps Social bulkUpdateUserStatItem2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkUpdateUserStatItem2'
delete_file $TEMP_FILE

#- 68 updateUserStatItemValue1
$ sample-apps Social updateUserStatItemValue1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserStatItemValue1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT