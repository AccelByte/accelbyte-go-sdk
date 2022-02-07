#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=34

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

#- 1 getLeaderboardConfigurationsAdminV1
$ sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsAdminV1'
delete_file $TEMP_FILE

#- 2 createLeaderboardConfigurationAdminV1
$ sample-apps Leaderboard createLeaderboardConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 adminGetArchivedLeaderboardRankingDataV1Handler
$ sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 4 createArchivedLeaderboardRankingDataV1Handler
$ sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler -h \
    >$TEMP_FILE 2>&1
update_status $? 'createArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 5 deleteBulkLeaderboardConfigurationAdminV1
$ sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteBulkLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 6 getLeaderboardConfigurationAdminV1
$ sample-apps Leaderboard getLeaderboardConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 updateLeaderboardConfigurationAdminV1
$ sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 8 deleteLeaderboardConfigurationAdminV1
$ sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 9 getAllTimeLeaderboardRankingAdminV1
$ sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 10 getCurrentMonthLeaderboardRankingAdminV1
$ sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentMonthLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 11 getCurrentSeasonLeaderboardRankingAdminV1
$ sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeasonLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 12 getTodayLeaderboardRankingAdminV1
$ sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTodayLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 13 getUserRankingAdminV1
$ sample-apps Leaderboard getUserRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserRankingAdminV1'
delete_file $TEMP_FILE

#- 14 updateUserPointAdminV1
$ sample-apps Leaderboard updateUserPointAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserPointAdminV1'
delete_file $TEMP_FILE

#- 15 deleteUserRankingAdminV1
$ sample-apps Leaderboard deleteUserRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingAdminV1'
delete_file $TEMP_FILE

#- 16 getCurrentWeekLeaderboardRankingAdminV1
$ sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentWeekLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 17 deleteUserRankingsAdminV1
$ sample-apps Leaderboard deleteUserRankingsAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingsAdminV1'
delete_file $TEMP_FILE

#- 18 getUserLeaderboardRankingsAdminV1
$ sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserLeaderboardRankingsAdminV1'
delete_file $TEMP_FILE

#- 19 getLeaderboardConfigurationsPublicV1
$ sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsPublicV1'
delete_file $TEMP_FILE

#- 20 createLeaderboardConfigurationPublicV1
$ sample-apps Leaderboard createLeaderboardConfigurationPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createLeaderboardConfigurationPublicV1'
delete_file $TEMP_FILE

#- 21 getAllTimeLeaderboardRankingPublicV1
$ sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 22 getArchivedLeaderboardRankingDataV1Handler
$ sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler -h \
    >$TEMP_FILE 2>&1
update_status $? 'getArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 23 getCurrentMonthLeaderboardRankingPublicV1
$ sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentMonthLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 24 getCurrentSeasonLeaderboardRankingPublicV1
$ sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeasonLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 25 getTodayLeaderboardRankingPublicV1
$ sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTodayLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 26 getUserRankingPublicV1
$ sample-apps Leaderboard getUserRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserRankingPublicV1'
delete_file $TEMP_FILE

#- 27 deleteUserRankingPublicV1
$ sample-apps Leaderboard deleteUserRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingPublicV1'
delete_file $TEMP_FILE

#- 28 getCurrentWeekLeaderboardRankingPublicV1
$ sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentWeekLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 29 getHiddenUsersV2
$ sample-apps Leaderboard getHiddenUsersV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getHiddenUsersV2'
delete_file $TEMP_FILE

#- 30 getUserVisibilityStatusV2
$ sample-apps Leaderboard getUserVisibilityStatusV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 31 setUserLeaderboardVisibilityStatusV2
$ sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'setUserLeaderboardVisibilityStatusV2'
delete_file $TEMP_FILE

#- 32 setUserVisibilityStatusV2
$ sample-apps Leaderboard setUserVisibilityStatusV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'setUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 33 getLeaderboardConfigurationsPublicV2
$ sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsPublicV2'
delete_file $TEMP_FILE

#- 34 getAllTimeLeaderboardRankingPublicV2
$ sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingPublicV2'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT