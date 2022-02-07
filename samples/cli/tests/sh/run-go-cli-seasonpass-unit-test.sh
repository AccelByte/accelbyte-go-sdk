#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=38

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

#- 1 getPass
$ sample-apps Seasonpass getPass -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPass'
delete_file $TEMP_FILE

#- 2 deletePass
$ sample-apps Seasonpass deletePass -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePass'
delete_file $TEMP_FILE

#- 3 updatePass
$ sample-apps Seasonpass updatePass -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePass'
delete_file $TEMP_FILE

#- 4 queryPasses
$ sample-apps Seasonpass queryPasses -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryPasses'
delete_file $TEMP_FILE

#- 5 createPass
$ sample-apps Seasonpass createPass -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPass'
delete_file $TEMP_FILE

#- 6 getReward
$ sample-apps Seasonpass getReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 7 deleteReward
$ sample-apps Seasonpass deleteReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 8 updateReward
$ sample-apps Seasonpass updateReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 9 queryRewards
$ sample-apps Seasonpass queryRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 10 createReward
$ sample-apps Seasonpass createReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 11 unpublishSeason
$ sample-apps Seasonpass unpublishSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'unpublishSeason'
delete_file $TEMP_FILE

#- 12 getSeason
$ sample-apps Seasonpass getSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSeason'
delete_file $TEMP_FILE

#- 13 deleteSeason
$ sample-apps Seasonpass deleteSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSeason'
delete_file $TEMP_FILE

#- 14 updateSeason
$ sample-apps Seasonpass updateSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateSeason'
delete_file $TEMP_FILE

#- 15 cloneSeason
$ sample-apps Seasonpass cloneSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'cloneSeason'
delete_file $TEMP_FILE

#- 16 querySeasons
$ sample-apps Seasonpass querySeasons -h \
    >$TEMP_FILE 2>&1
update_status $? 'querySeasons'
delete_file $TEMP_FILE

#- 17 createSeason
$ sample-apps Seasonpass createSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'createSeason'
delete_file $TEMP_FILE

#- 18 retireSeason
$ sample-apps Seasonpass retireSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'retireSeason'
delete_file $TEMP_FILE

#- 19 publishSeason
$ sample-apps Seasonpass publishSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'publishSeason'
delete_file $TEMP_FILE

#- 20 getCurrentSeason
$ sample-apps Seasonpass getCurrentSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeason'
delete_file $TEMP_FILE

#- 21 updateTier
$ sample-apps Seasonpass updateTier -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateTier'
delete_file $TEMP_FILE

#- 22 deleteTier
$ sample-apps Seasonpass deleteTier -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTier'
delete_file $TEMP_FILE

#- 23 queryTiers
$ sample-apps Seasonpass queryTiers -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryTiers'
delete_file $TEMP_FILE

#- 24 createTier
$ sample-apps Seasonpass createTier -h \
    >$TEMP_FILE 2>&1
update_status $? 'createTier'
delete_file $TEMP_FILE

#- 25 existsAnyPassByPassCodes
$ sample-apps Seasonpass existsAnyPassByPassCodes -h \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 26 grantUserTier
$ sample-apps Seasonpass grantUserTier -h \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserTier'
delete_file $TEMP_FILE

#- 27 getUserSeason
$ sample-apps Seasonpass getUserSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSeason'
delete_file $TEMP_FILE

#- 28 checkSeasonPurchasable
$ sample-apps Seasonpass checkSeasonPurchasable -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkSeasonPurchasable'
delete_file $TEMP_FILE

#- 29 getCurrentUserSeasonProgression
$ sample-apps Seasonpass getCurrentUserSeasonProgression -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 30 resetUserSeason
$ sample-apps Seasonpass resetUserSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserSeason'
delete_file $TEMP_FILE

#- 31 grantUserPass
$ sample-apps Seasonpass grantUserPass -h \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserPass'
delete_file $TEMP_FILE

#- 32 getUserParticipatedSeasons
$ sample-apps Seasonpass getUserParticipatedSeasons -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 33 grantUserExp
$ sample-apps Seasonpass grantUserExp -h \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserExp'
delete_file $TEMP_FILE

#- 34 publicGetCurrentSeason
$ sample-apps Seasonpass publicGetCurrentSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentSeason'
delete_file $TEMP_FILE

#- 35 publicClaimUserReward
$ sample-apps Seasonpass publicClaimUserReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicClaimUserReward'
delete_file $TEMP_FILE

#- 36 publicGetCurrentUserSeason
$ sample-apps Seasonpass publicGetCurrentUserSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 publicBulkClaimUserRewards
$ sample-apps Seasonpass publicBulkClaimUserRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 38 publicGetUserSeason
$ sample-apps Seasonpass publicGetUserSeason -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSeason'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT