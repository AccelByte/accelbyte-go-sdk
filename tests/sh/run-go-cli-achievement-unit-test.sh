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

OPERATIONS_COUNT=14

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
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 adminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    --sortBy 'pGlsQuJu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAchievements'
delete_file $TEMP_FILE

#- 2 adminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --body '{"achievementCode": "8vMf0IsJ", "defaultLanguage": "kTrd8IDc", "description": {"V2zXnTKj": "XY1bPqam"}, "goalValue": 0.13454254286494316, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "9Cs18EY8", "url": "4ekItqRz"}], "name": {"HU1oh570": "KQBVaewc"}, "statCode": "72krSha6", "tags": ["8n3Ynozp"], "unlockedIcons": [{"slug": "1C2KmIQT", "url": "uBdNEUsx"}]}' \
    --namespace 'Fb8CJ17M' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateNewAchievement'
delete_file $TEMP_FILE

#- 3 exportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace '7DJZaMSx' \
    >$TEMP_FILE 2>&1
update_status $? 'exportAchievements'
delete_file $TEMP_FILE

#- 4 importAchievements
samples/cli/sample-apps Achievement importAchievements \
    --file 'tmp.dat' \
    --strategy 'ECbZbygy' \
    --namespace 'oarORoeN' \
    >$TEMP_FILE 2>&1
update_status $? 'importAchievements'
delete_file $TEMP_FILE

#- 5 adminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'HSb8Rh3k' \
    --namespace 'gs9qqJbn' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAchievement'
delete_file $TEMP_FILE

#- 6 adminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --body '{"defaultLanguage": "QsoBgiVp", "description": {"P8Cm3yvA": "SUoxdxxF"}, "goalValue": 0.25046182566340336, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "dagEtp4w", "url": "29KOu9c1"}], "name": {"9R6XDqWH": "kkP8npLE"}, "statCode": "KMfjiX7j", "tags": ["pkVZk3Ia"], "unlockedIcons": [{"slug": "QYEmqGod", "url": "OEGt9gPO"}]}' \
    --achievementCode 'j0c6i0Jk' \
    --namespace 'vIas73uc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAchievement'
delete_file $TEMP_FILE

#- 7 adminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'YnFAJ3DK' \
    --namespace '5T4Eogg0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteAchievement'
delete_file $TEMP_FILE

#- 8 adminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --body '{"targetOrder": 100}' \
    --achievementCode '39UoYlpv' \
    --namespace '5bVAgtsD' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAchievementListOrder'
delete_file $TEMP_FILE

#- 9 adminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace 'hUTDUscb' \
    --userId 'QDjbTQuP' \
    --limit '76' \
    --offset '51' \
    --preferUnlocked 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserAchievements'
delete_file $TEMP_FILE

#- 10 adminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'kyU89ZPO' \
    --namespace 'w6zPFJ42' \
    --userId 'cwmzBBSM' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUnlockAchievement'
delete_file $TEMP_FILE

#- 11 publicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace 'NcoAAOjK' \
    --limit '78' \
    --offset '18' \
    --sortBy 'fcYHm093' \
    --language 'aYgBU1sq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListAchievements'
delete_file $TEMP_FILE

#- 12 publicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'jyK0XH45' \
    --namespace 'PaRSOFQB' \
    --language 'tu23REZ8' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAchievement'
delete_file $TEMP_FILE

#- 13 publicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace 'hRVX7LGO' \
    --userId 'vDdYiQS9' \
    --limit '16' \
    --offset '24' \
    --preferUnlocked 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserAchievements'
delete_file $TEMP_FILE

#- 14 publicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '91pjG9gp' \
    --namespace 'xL6ycTQd' \
    --userId 'vln2LAuS' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUnlockAchievement'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT