#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=14

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

#- 1 adminListAchievements
$ sample-apps Achievement adminListAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAchievements'
delete_file $TEMP_FILE

#- 2 adminCreateNewAchievement
$ sample-apps Achievement adminCreateNewAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateNewAchievement'
delete_file $TEMP_FILE

#- 3 exportAchievements
$ sample-apps Achievement exportAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportAchievements'
delete_file $TEMP_FILE

#- 4 importAchievements
$ sample-apps Achievement importAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'importAchievements'
delete_file $TEMP_FILE

#- 5 adminGetAchievement
$ sample-apps Achievement adminGetAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAchievement'
delete_file $TEMP_FILE

#- 6 adminUpdateAchievement
$ sample-apps Achievement adminUpdateAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAchievement'
delete_file $TEMP_FILE

#- 7 adminDeleteAchievement
$ sample-apps Achievement adminDeleteAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAchievement'
delete_file $TEMP_FILE

#- 8 adminUpdateAchievementListOrder
$ sample-apps Achievement adminUpdateAchievementListOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAchievementListOrder'
delete_file $TEMP_FILE

#- 9 adminListUserAchievements
$ sample-apps Achievement adminListUserAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserAchievements'
delete_file $TEMP_FILE

#- 10 adminUnlockAchievement
$ sample-apps Achievement adminUnlockAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUnlockAchievement'
delete_file $TEMP_FILE

#- 11 publicListAchievements
$ sample-apps Achievement publicListAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListAchievements'
delete_file $TEMP_FILE

#- 12 publicGetAchievement
$ sample-apps Achievement publicGetAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAchievement'
delete_file $TEMP_FILE

#- 13 publicListUserAchievements
$ sample-apps Achievement publicListUserAchievements -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserAchievements'
delete_file $TEMP_FILE

#- 14 publicUnlockAchievement
$ sample-apps Achievement publicUnlockAchievement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUnlockAchievement'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT