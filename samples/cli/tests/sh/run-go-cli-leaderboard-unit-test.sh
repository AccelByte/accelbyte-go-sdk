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

echo "go install github.com/AccelByte/sample-apps"
go install github.com/AccelByte/sample-apps
echo "Login..."
echo "sample-apps login -u 'admin' -p 'admin'"
sample-apps login -u 'admin' -p 'admin'
echo "1..$OPERATIONS_COUNT"

#- 1 getLeaderboardConfigurationsAdminV1
sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 \
    --namespace 'FtBxyZcD' \
    --isArchived 'True' \
    --isDeleted 'False' \
    --limit '65' \
    --offset '22' \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsAdminV1'
delete_file $TEMP_FILE

#- 2 createLeaderboardConfigurationAdminV1
sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "sQuJu8vM"}, "descending": false, "iconURL": "0IsJkTrd", "leaderboardCode": "8IDcV2zX", "monthly": {"resetDate": 27, "resetTime": "TKjXY1bP"}, "name": "qamiBxx9", "seasonPeriod": 57, "startTime": "s18EY84e", "statCode": "kItqRzHU", "weekly": {"resetDay": 28, "resetTime": "h570KQBV"}}' \
    --namespace 'aewc72kr' \
    >$TEMP_FILE 2>&1
update_status $? 'createLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 adminGetArchivedLeaderboardRankingDataV1Handler
sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace 'Sha68n3Y' \
    --slug 'nozp1C2K' \
    --leaderboardCodes 'mIQTuBdN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 4 createArchivedLeaderboardRankingDataV1Handler
sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --body '{"leaderboardCodes": ["EUsxFb8C"], "limit": 70, "slug": "17M7DJZa"}' \
    --namespace 'MSxECbZb' \
    >$TEMP_FILE 2>&1
update_status $? 'createArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 5 deleteBulkLeaderboardConfigurationAdminV1
sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --body '{"leaderboardCodes": ["ygyoarOR"]}' \
    --namespace 'oeNHSb8R' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteBulkLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 6 getLeaderboardConfigurationAdminV1
sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'h3kgs9qq' \
    --namespace 'JbnQsoBg' \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 updateLeaderboardConfigurationAdminV1
sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --body '{"daily": {"resetTime": "iVpP8Cm3"}, "descending": true, "iconURL": "vASUoxdx", "monthly": {"resetDate": 46, "resetTime": "FqmAGTJ8"}, "name": "IEdagEtp", "seasonPeriod": 44, "startTime": "29KOu9c1", "statCode": "9R6XDqWH", "weekly": {"resetDay": 20, "resetTime": "kP8npLEK"}}' \
    --leaderboardCode 'MfjiX7jp' \
    --namespace 'kVZk3IaQ' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 8 deleteLeaderboardConfigurationAdminV1
sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'YEmqGodO' \
    --namespace 'EGt9gPOj' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 9 getAllTimeLeaderboardRankingAdminV1
sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode '0c6i0Jkv' \
    --namespace 'Ias73ucY' \
    --limit '27' \
    --offset '63' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 10 getCurrentMonthLeaderboardRankingAdminV1
sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'AJ3DK5T4' \
    --namespace 'Eogg0Y39' \
    --limit '93' \
    --offset '29' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentMonthLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 11 getCurrentSeasonLeaderboardRankingAdminV1
sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'Ylpv5bVA' \
    --namespace 'gtsDhUTD' \
    --limit '93' \
    --offset '36' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeasonLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 12 getTodayLeaderboardRankingAdminV1
sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'cbQDjbTQ' \
    --namespace 'uPMz2PTR' \
    --limit '23' \
    --offset '21' \
    >$TEMP_FILE 2>&1
update_status $? 'getTodayLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 13 getUserRankingAdminV1
sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'yU89ZPOw' \
    --namespace '6zPFJ42c' \
    --userId 'wmzBBSMN' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserRankingAdminV1'
delete_file $TEMP_FILE

#- 14 updateUserPointAdminV1
sample-apps Leaderboard updateUserPointAdminV1 \
    --body '{"inc": 0.03649277405533169, "latestValue": 0.41676165470898596}' \
    --leaderboardCode 'OjKNjfcY' \
    --namespace 'Hm093aYg' \
    --userId 'BU1sqjyK' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserPointAdminV1'
delete_file $TEMP_FILE

#- 15 deleteUserRankingAdminV1
sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '0XH45PaR' \
    --namespace 'SOFQBtu2' \
    --userId '3REZ8hRV' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingAdminV1'
delete_file $TEMP_FILE

#- 16 getCurrentWeekLeaderboardRankingAdminV1
sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'X7LGOvDd' \
    --namespace 'YiQS9i7m' \
    --limit '94' \
    --offset '57' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentWeekLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 17 deleteUserRankingsAdminV1
sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace '91pjG9gp' \
    --userId 'xL6ycTQd' \
    --leaderboardCode '["vln2LAuS"]' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingsAdminV1'
delete_file $TEMP_FILE

#- 18 getUserLeaderboardRankingsAdminV1
sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace 'QWEXL6LF' \
    --userId 'E1YHo9m1' \
    --limit '96' \
    --offset '4' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserLeaderboardRankingsAdminV1'
delete_file $TEMP_FILE

#- 19 getLeaderboardConfigurationsPublicV1
sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace '8hHtWvbN' \
    --isArchived 'True' \
    --isDeleted 'False' \
    --limit '92' \
    --offset '33' \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsPublicV1'
delete_file $TEMP_FILE

#- 20 createLeaderboardConfigurationPublicV1
sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --body '{"daily": {"resetTime": "slArFPiH"}, "descending": true, "iconURL": "aCv8kU9d", "leaderboardCode": "BBpdsJLh", "monthly": {"resetDate": 37, "resetTime": "VyExrkxo"}, "name": "ot0B7WOf", "seasonPeriod": 8, "startTime": "rcZdpMci", "statCode": "37Ds7YSf", "weekly": {"resetDay": 61, "resetTime": "xaI3uzLt"}}' \
    --namespace 'eMbFAlt4' \
    >$TEMP_FILE 2>&1
update_status $? 'createLeaderboardConfigurationPublicV1'
delete_file $TEMP_FILE

#- 21 getAllTimeLeaderboardRankingPublicV1
sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'hr7HmOYi' \
    --namespace 'BA5ltAOX' \
    --limit '25' \
    --offset '22' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 22 getArchivedLeaderboardRankingDataV1Handler
sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'G6eh1dTd' \
    --namespace 'oTFpBIcu' \
    --slug 'C1dQY93O' \
    --leaderboardCodes 'JnJ6Te9v' \
    >$TEMP_FILE 2>&1
update_status $? 'getArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 23 getCurrentMonthLeaderboardRankingPublicV1
sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'D8ldz7Hu' \
    --namespace '8AD79kdW' \
    --limit '41' \
    --offset '26' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentMonthLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 24 getCurrentSeasonLeaderboardRankingPublicV1
sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'vizU0q1p' \
    --namespace 'HyhhERoG' \
    --limit '12' \
    --offset '7' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeasonLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 25 getTodayLeaderboardRankingPublicV1
sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'rysMizBG' \
    --namespace 'SRdP2l7D' \
    --limit '79' \
    --offset '89' \
    >$TEMP_FILE 2>&1
update_status $? 'getTodayLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 26 getUserRankingPublicV1
sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'Z8Aq0XiP' \
    --namespace 'LQXSe07Z' \
    --userId 'ddOGTMlJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserRankingPublicV1'
delete_file $TEMP_FILE

#- 27 deleteUserRankingPublicV1
sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'jBwj9HJH' \
    --namespace 'QKseEdSX' \
    --userId 'RDSvguau' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRankingPublicV1'
delete_file $TEMP_FILE

#- 28 getCurrentWeekLeaderboardRankingPublicV1
sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'w1xT7eMw' \
    --namespace 'Sl9MLH0N' \
    --limit '27' \
    --offset '91' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentWeekLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 29 getHiddenUsersV2
sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'J2ulNzBv' \
    --namespace 'wJaQa547' \
    --limit '71' \
    --offset '23' \
    >$TEMP_FILE 2>&1
update_status $? 'getHiddenUsersV2'
delete_file $TEMP_FILE

#- 30 getUserVisibilityStatusV2
sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'lvA8RWSp' \
    --namespace 'abUt7xk6' \
    --userId 'QxyWhfqo' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 31 setUserLeaderboardVisibilityStatusV2
sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --body '{"visibility": false}' \
    --leaderboardCode 'Jw2o8oWU' \
    --namespace 'qvPCZ2Hz' \
    --userId 'T7NXmWDl' \
    >$TEMP_FILE 2>&1
update_status $? 'setUserLeaderboardVisibilityStatusV2'
delete_file $TEMP_FILE

#- 32 setUserVisibilityStatusV2
sample-apps Leaderboard setUserVisibilityStatusV2 \
    --body '{"visibility": true}' \
    --namespace 'uNIdQJR5' \
    --userId 'lsNOlvkf' \
    >$TEMP_FILE 2>&1
update_status $? 'setUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 33 getLeaderboardConfigurationsPublicV2
sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace 'waSbnsuL' \
    --limit '57' \
    --offset '12' \
    >$TEMP_FILE 2>&1
update_status $? 'getLeaderboardConfigurationsPublicV2'
delete_file $TEMP_FILE

#- 34 getAllTimeLeaderboardRankingPublicV2
sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'ToxuVTek' \
    --namespace 'Jgvg6h5H' \
    --limit '68' \
    --offset '30' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllTimeLeaderboardRankingPublicV2'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT