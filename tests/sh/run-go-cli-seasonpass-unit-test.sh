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

OPERATIONS_COUNT=38

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

#- 1 getPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'FtBxyZcD' \
    --namespace 'XBpGlsQu' \
    --seasonId 'Ju8vMf0I' \
    >$TEMP_FILE 2>&1
update_status $? 'getPass'
delete_file $TEMP_FILE

#- 2 deletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'sJkTrd8I' \
    --namespace 'DcV2zXnT' \
    --seasonId 'KjXY1bPq' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePass'
delete_file $TEMP_FILE

#- 3 updatePass
samples/cli/sample-apps Seasonpass updatePass \
    --body '{"displayOrder": 1, "autoEnroll": false, "passItemId": "iBxx9Cs1", "localizations": {"8EY84ekI": {"title": "tqRzHU1o", "description": "h570KQBV"}}, "images": [{"as": "aewc72kr", "caption": "Sha68n3Y", "height": 26, "width": 29, "imageUrl": "zp1C2KmI", "smallImageUrl": "QTuBdNEU"}]}' \
    --code 'sxFb8CJ1' \
    --namespace '7M7DJZaM' \
    --seasonId 'SxECbZby' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePass'
delete_file $TEMP_FILE

#- 4 queryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace 'gyoarORo' \
    --seasonId 'eNHSb8Rh' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPasses'
delete_file $TEMP_FILE

#- 5 createPass
samples/cli/sample-apps Seasonpass createPass \
    --body '{"code": "3kgs9qqJ", "displayOrder": 2, "autoEnroll": false, "passItemId": "QsoBgiVp", "localizations": {"P8Cm3yvA": {"title": "SUoxdxxF", "description": "qmAGTJ8I"}}, "images": [{"as": "EdagEtp4", "caption": "w29KOu9c", "height": 87, "width": 98, "imageUrl": "DqWHkkP8", "smallImageUrl": "npLEKMfj"}]}' \
    --namespace 'iX7jpkVZ' \
    --seasonId 'k3IaQYEm' \
    >$TEMP_FILE 2>&1
update_status $? 'createPass'
delete_file $TEMP_FILE

#- 6 getReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'qGodOEGt' \
    --namespace '9gPOj0c6' \
    --seasonId 'i0JkvIas' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 7 deleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '73ucYnFA' \
    --namespace 'J3DK5T4E' \
    --seasonId 'ogg0Y39U' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 8 updateReward
samples/cli/sample-apps Seasonpass updateReward \
    --body '{"type": "ITEM", "itemId": "Ylpv5bVA", "currency": {"namespace": "gtsDhUTD", "currencyCode": "UscbQDjb"}, "quantity": 91, "image": {"as": "QuPMz2PT", "caption": "RlkyU89Z", "height": 82, "width": 80, "imageUrl": "w6zPFJ42", "smallImageUrl": "cwmzBBSM"}, "nullFields": ["NcoAAOjK"]}' \
    --code 'NjfcYHm0' \
    --namespace '93aYgBU1' \
    --seasonId 'sqjyK0XH' \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 9 queryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace '45PaRSOF' \
    --seasonId 'QBtu23RE' \
    --q 'Z8hRVX7L' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 10 createReward
samples/cli/sample-apps Seasonpass createReward \
    --body '{"code": "GOvDdYiQ", "type": "ITEM", "itemId": "7mV1C91p", "currency": {"namespace": "jG9gpxL6", "currencyCode": "ycTQdvln"}, "quantity": 74, "image": {"as": "AuSQWEXL", "caption": "6LFE1YHo", "height": 25, "width": 96, "imageUrl": "c8hHtWvb", "smallImageUrl": "NYqgUqsl"}}' \
    --namespace 'ArFPiHUI' \
    --seasonId 'vaCv8kU9' \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 11 unpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace 'dBBpdsJL' \
    --seasonId 'hsVyExrk' \
    --force 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'unpublishSeason'
delete_file $TEMP_FILE

#- 12 getSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace 'oot0B7WO' \
    --seasonId 'fercZdpM' \
    >$TEMP_FILE 2>&1
update_status $? 'getSeason'
delete_file $TEMP_FILE

#- 13 deleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace 'ci37Ds7Y' \
    --seasonId 'SfExaI3u' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSeason'
delete_file $TEMP_FILE

#- 14 updateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --body '{"name": "zLteMbFA", "start": "1976-06-06T00:00:00Z", "end": "1999-02-22T00:00:00Z", "defaultLanguage": "r7HmOYiB", "defaultRequiredExp": 53, "draftStoreId": "5ltAOXml", "tierItemId": "G6eh1dTd", "autoClaim": false, "excessStrategy": {"method": "CURRENCY", "currency": "pBIcuC1d", "percentPerExp": 85}, "localizations": {"Y93OJnJ6": {"title": "Te9vD8ld", "description": "z7Hu8AD7"}}, "images": [{"as": "9kdWunvi", "caption": "zU0q1pHy", "height": 15, "width": 15, "imageUrl": "ERoGgdry", "smallImageUrl": "sMizBGSR"}]}' \
    --namespace 'dP2l7DNS' \
    --seasonId 'Z8Aq0XiP' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSeason'
delete_file $TEMP_FILE

#- 15 cloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --body '{"name": "LQXSe07Z", "start": "1972-01-27T00:00:00Z", "end": "1991-09-17T00:00:00Z"}' \
    --namespace 'TMlJjBwj' \
    --seasonId '9HJHQKse' \
    >$TEMP_FILE 2>&1
update_status $? 'cloneSeason'
delete_file $TEMP_FILE

#- 16 querySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace 'EdSXRDSv' \
    --limit '13' \
    --offset '41' \
    --status '["DRAFT"]' \
    >$TEMP_FILE 2>&1
update_status $? 'querySeasons'
delete_file $TEMP_FILE

#- 17 createSeason
samples/cli/sample-apps Seasonpass createSeason \
    --body '{"name": "uw1xT7eM", "start": "1982-12-17T00:00:00Z", "end": "1976-11-01T00:00:00Z", "defaultLanguage": "LH0NnTJ2", "defaultRequiredExp": 41, "draftStoreId": "lNzBvwJa", "tierItemId": "Qa547Jll", "autoClaim": true, "excessStrategy": {"method": "CURRENCY", "currency": "8RWSpabU", "percentPerExp": 39}, "localizations": {"7xk6QxyW": {"title": "hfqoWfJw", "description": "2o8oWUqv"}}, "images": [{"as": "PCZ2HzT7", "caption": "NXmWDlXs", "height": 41, "width": 79, "imageUrl": "IdQJR5ls", "smallImageUrl": "NOlvkfwa"}]}' \
    --namespace 'SbnsuLCg' \
    >$TEMP_FILE 2>&1
update_status $? 'createSeason'
delete_file $TEMP_FILE

#- 18 retireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace 'ToxuVTek' \
    --seasonId 'Jgvg6h5H' \
    --force 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'retireSeason'
delete_file $TEMP_FILE

#- 19 publishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace 'H0DviplE' \
    --seasonId 'k4vj3LDp' \
    >$TEMP_FILE 2>&1
update_status $? 'publishSeason'
delete_file $TEMP_FILE

#- 20 getCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace '4yqDt8QU' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeason'
delete_file $TEMP_FILE

#- 21 updateTier
samples/cli/sample-apps Seasonpass updateTier \
    --body '{"requiredExp": 59, "rewards": {"pxlHasin": ["GcjrkmRM"]}}' \
    --id 'ttgjDSaI' \
    --namespace 'VBmft3Ud' \
    --seasonId 'g7p9PGmY' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTier'
delete_file $TEMP_FILE

#- 22 deleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '2H5kX4Ms' \
    --namespace 'isSX28nA' \
    --seasonId 'RxWRpv5o' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTier'
delete_file $TEMP_FILE

#- 23 queryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace 'u5xtvd28' \
    --seasonId 'OUfCt8UJ' \
    --limit '57' \
    --offset '10' \
    >$TEMP_FILE 2>&1
update_status $? 'queryTiers'
delete_file $TEMP_FILE

#- 24 createTier
samples/cli/sample-apps Seasonpass createTier \
    --body '{"index": 23, "quantity": 79, "tier": {"requiredExp": 48, "rewards": {"j6HsTtX8": ["P3llnaaS"]}}}' \
    --namespace '9lqyygPc' \
    --seasonId 'fkJIxfQZ' \
    >$TEMP_FILE 2>&1
update_status $? 'createTier'
delete_file $TEMP_FILE

#- 25 existsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace 'za8kNVbD' \
    --userId 'xVMq7HJk' \
    --passCodes '["0F89xAc3"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 26 grantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --body '{"count": 100}' \
    --namespace 'VfaENtrl' \
    --userId '0pTKZTXq' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserTier'
delete_file $TEMP_FILE

#- 27 getUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace 'zHuBMYQS' \
    --seasonId 'A2jz1ZOp' \
    --userId 'dOjSyMdd' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSeason'
delete_file $TEMP_FILE

#- 28 checkSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --body '{"passItemId": "B41JuMf7", "tierItemId": "RUyBHRj8", "tierItemCount": 68}' \
    --namespace 'iRimRllH' \
    --userId 'T6Dc40vF' \
    >$TEMP_FILE 2>&1
update_status $? 'checkSeasonPurchasable'
delete_file $TEMP_FILE

#- 29 getCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace 'FA6gpU7E' \
    --userId 'W3x1dCpm' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 30 resetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace '55gOeqQI' \
    --userId 'qcJVKmBM' \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserSeason'
delete_file $TEMP_FILE

#- 31 grantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --body '{"passItemId": "1J1IbuTr", "passCode": "rkbmuT1w"}' \
    --namespace 'hOqmEnDX' \
    --userId 'IWrBPlSa' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserPass'
delete_file $TEMP_FILE

#- 32 getUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace 'y46mv71B' \
    --userId 'AZAOjtFJ' \
    --limit '42' \
    --offset '25' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 33 grantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --body '{"exp": 91}' \
    --namespace 'j7tT7TZH' \
    --userId 'WDdCkIsZ' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserExp'
delete_file $TEMP_FILE

#- 34 publicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace 'oArWwPHc' \
    --language 'yFAdAtYc' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentSeason'
delete_file $TEMP_FILE

#- 35 publicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --body '{"passCode": "iLIgRwFR", "tierIndex": 35, "rewardCode": "0gwB9tz3"}' \
    --namespace 'vp99XVlV' \
    --userId '8rK3tE6n' \
    >$TEMP_FILE 2>&1
update_status $? 'publicClaimUserReward'
delete_file $TEMP_FILE

#- 36 publicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace '0smip1tw' \
    --userId '3L7cUd9p' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 publicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace 'qtv6JfPZ' \
    --userId 'wcCVOXcV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 38 publicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace 'a80TmCwt' \
    --seasonId 'D2lAH01o' \
    --userId '6NdcBIgz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSeason'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT