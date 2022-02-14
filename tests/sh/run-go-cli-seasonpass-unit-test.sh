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

OPERATIONS_COUNT=39

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

#- 1 querySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    --status '["DRAFT"]' \
    >$TEMP_FILE 2>&1
update_status $? 'querySeasons'
delete_file $TEMP_FILE

#- 2 createSeason
samples/cli/sample-apps Seasonpass createSeason \
    --body '{"autoClaim": false, "defaultLanguage": "sQuJu8vM", "defaultRequiredExp": 10, "draftStoreId": "0IsJkTrd", "end": "1988-08-24T00:00:00Z", "excessStrategy": {"currency": "cV2zXnTK", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "Y1bPqami", "caption": "Bxx9Cs18", "height": 61, "imageUrl": "Y84ekItq", "smallImageUrl": "RzHU1oh5", "width": 72}], "localizations": {"QBVaewc7": {"description": "2krSha68", "title": "n3Ynozp1"}}, "name": "C2KmIQTu", "start": "1984-01-23T00:00:00Z", "tierItemId": "NEUsxFb8"}' \
    --namespace 'CJ17M7DJ' \
    >$TEMP_FILE 2>&1
update_status $? 'createSeason'
delete_file $TEMP_FILE

#- 3 getCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace 'ZaMSxECb' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentSeason'
delete_file $TEMP_FILE

#- 4 getSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace 'Zbygyoar' \
    --seasonId 'ORoeNHSb' \
    >$TEMP_FILE 2>&1
update_status $? 'getSeason'
delete_file $TEMP_FILE

#- 5 deleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace '8Rh3kgs9' \
    --seasonId 'qqJbnQso' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSeason'
delete_file $TEMP_FILE

#- 6 updateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --body '{"autoClaim": true, "defaultLanguage": "giVpP8Cm", "defaultRequiredExp": 49, "draftStoreId": "vASUoxdx", "end": "1982-09-09T00:00:00Z", "excessStrategy": {"currency": "qmAGTJ8I", "method": "CURRENCY", "percentPerExp": 6}, "images": [{"as": "agEtp4w2", "caption": "9KOu9c19", "height": 87, "imageUrl": "6XDqWHkk", "smallImageUrl": "P8npLEKM", "width": 11}], "localizations": {"jiX7jpkV": {"description": "Zk3IaQYE", "title": "mqGodOEG"}}, "name": "t9gPOj0c", "start": "1975-10-10T00:00:00Z", "tierItemId": "kvIas73u"}' \
    --namespace 'cYnFAJ3D' \
    --seasonId 'K5T4Eogg' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSeason'
delete_file $TEMP_FILE

#- 7 cloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --body '{"end": "1997-04-22T00:00:00Z", "name": "Ylpv5bVA", "start": "1974-06-05T00:00:00Z"}' \
    --namespace 'sDhUTDUs' \
    --seasonId 'cbQDjbTQ' \
    >$TEMP_FILE 2>&1
update_status $? 'cloneSeason'
delete_file $TEMP_FILE

#- 8 queryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace 'uPMz2PTR' \
    --seasonId 'lkyU89ZP' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPasses'
delete_file $TEMP_FILE

#- 9 createPass
samples/cli/sample-apps Seasonpass createPass \
    --body '{"autoEnroll": true, "code": "6zPFJ42c", "displayOrder": 45, "images": [{"as": "mzBBSMNc", "caption": "oAAOjKNj", "height": 11, "imageUrl": "cYHm093a", "smallImageUrl": "YgBU1sqj", "width": 49}], "localizations": {"K0XH45Pa": {"description": "RSOFQBtu", "title": "23REZ8hR"}}, "passItemId": "VX7LGOvD"}' \
    --namespace 'dYiQS9i7' \
    --seasonId 'mV1C91pj' \
    >$TEMP_FILE 2>&1
update_status $? 'createPass'
delete_file $TEMP_FILE

#- 10 getPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'G9gpxL6y' \
    --namespace 'cTQdvln2' \
    --seasonId 'LAuSQWEX' \
    >$TEMP_FILE 2>&1
update_status $? 'getPass'
delete_file $TEMP_FILE

#- 11 deletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'L6LFE1YH' \
    --namespace 'o9m126ZW' \
    --seasonId 'c8hHtWvb' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePass'
delete_file $TEMP_FILE

#- 12 updatePass
samples/cli/sample-apps Seasonpass updatePass \
    --body '{"autoEnroll": true, "displayOrder": 12, "images": [{"as": "UqslArFP", "caption": "iHUIvaCv", "height": 20, "imageUrl": "U9dBBpds", "smallImageUrl": "JLhsVyEx", "width": 35}], "localizations": {"kxoot0B7": {"description": "WOfercZd", "title": "pMci37Ds"}}, "passItemId": "7YSfExaI"}' \
    --code '3uzLteMb' \
    --namespace 'FAlt4hr7' \
    --seasonId 'HmOYiBA5' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePass'
delete_file $TEMP_FILE

#- 13 publishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace 'ltAOXmlG' \
    --seasonId '6eh1dTdo' \
    >$TEMP_FILE 2>&1
update_status $? 'publishSeason'
delete_file $TEMP_FILE

#- 14 retireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace 'TFpBIcuC' \
    --seasonId '1dQY93OJ' \
    --force 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'retireSeason'
delete_file $TEMP_FILE

#- 15 queryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace 'J6Te9vD8' \
    --seasonId 'ldz7Hu8A' \
    --q 'D79kdWun' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 16 createReward
samples/cli/sample-apps Seasonpass createReward \
    --body '{"code": "vizU0q1p", "currency": {"currencyCode": "HyhhERoG", "namespace": "gdrysMiz"}, "image": {"as": "BGSRdP2l", "caption": "7DNSZ8Aq", "height": 98, "imageUrl": "iPLQXSe0", "smallImageUrl": "7ZddOGTM", "width": 23}, "itemId": "JjBwj9HJ", "quantity": 66, "type": "CURRENCY"}' \
    --namespace 'eEdSXRDS' \
    --seasonId 'vguauw1x' \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 17 getReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'T7eMwSl9' \
    --namespace 'MLH0NnTJ' \
    --seasonId '2ulNzBvw' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 18 deleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'JaQa547J' \
    --namespace 'llvA8RWS' \
    --seasonId 'pabUt7xk' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 19 updateReward
samples/cli/sample-apps Seasonpass updateReward \
    --body '{"currency": {"currencyCode": "6QxyWhfq", "namespace": "oWfJw2o8"}, "image": {"as": "oWUqvPCZ", "caption": "2HzT7NXm", "height": 96, "imageUrl": "DlXsuNId", "smallImageUrl": "QJR5lsNO", "width": 23}, "itemId": "vkfwaSbn", "nullFields": ["suLCgTox"], "quantity": 41, "type": "ITEM"}' \
    --code 'kJgvg6h5' \
    --namespace 'HIpH0Dvi' \
    --seasonId 'plEk4vj3' \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 20 queryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace 'LDp4yqDt' \
    --seasonId '8QUZDpxl' \
    --limit '67' \
    --offset '1' \
    >$TEMP_FILE 2>&1
update_status $? 'queryTiers'
delete_file $TEMP_FILE

#- 21 createTier
samples/cli/sample-apps Seasonpass createTier \
    --body '{"index": 36, "quantity": 16, "tier": {"requiredExp": 27, "rewards": {"GcjrkmRM": ["ttgjDSaI"]}}}' \
    --namespace 'VBmft3Ud' \
    --seasonId 'g7p9PGmY' \
    >$TEMP_FILE 2>&1
update_status $? 'createTier'
delete_file $TEMP_FILE

#- 22 updateTier
samples/cli/sample-apps Seasonpass updateTier \
    --body '{"requiredExp": 67, "rewards": {"5kX4Msis": ["SX28nARx"]}}' \
    --id 'WRpv5ou5' \
    --namespace 'xtvd28OU' \
    --seasonId 'fCt8UJC5' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTier'
delete_file $TEMP_FILE

#- 23 deleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'flNyj6Hs' \
    --namespace 'TtX8P3ll' \
    --seasonId 'naaS9lqy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTier'
delete_file $TEMP_FILE

#- 24 reorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --body '{"newIndex": 48}' \
    --id 'gPcfkJIx' \
    --namespace 'fQZza8kN' \
    --seasonId 'VbDxVMq7' \
    >$TEMP_FILE 2>&1
update_status $? 'reorderTier'
delete_file $TEMP_FILE

#- 25 unpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace 'HJk0F89x' \
    --seasonId 'Ac3YVfaE' \
    --force 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'unpublishSeason'
delete_file $TEMP_FILE

#- 26 getUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace 'rl0pTKZT' \
    --userId 'XqzHuBMY' \
    --limit '85' \
    --offset '88' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 27 grantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --body '{"exp": 52}' \
    --namespace '2jz1ZOpd' \
    --userId 'OjSyMddB' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserExp'
delete_file $TEMP_FILE

#- 28 grantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --body '{"passCode": "41JuMf7R", "passItemId": "UyBHRj8I"}' \
    --namespace 'iRimRllH' \
    --userId 'T6Dc40vF' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserPass'
delete_file $TEMP_FILE

#- 29 existsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace 'FA6gpU7E' \
    --userId 'W3x1dCpm' \
    --passCodes '["55gOeqQI"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 30 getCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace 'qcJVKmBM' \
    --userId '1J1IbuTr' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 31 checkSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --body '{"passItemId": "rkbmuT1w", "tierItemCount": 15, "tierItemId": "OqmEnDXI"}' \
    --namespace 'WrBPlSay' \
    --userId '46mv71BA' \
    >$TEMP_FILE 2>&1
update_status $? 'checkSeasonPurchasable'
delete_file $TEMP_FILE

#- 32 resetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace 'ZAOjtFJ2' \
    --userId 'vmTj7tT7' \
    >$TEMP_FILE 2>&1
update_status $? 'resetUserSeason'
delete_file $TEMP_FILE

#- 33 grantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --body '{"count": 90}' \
    --namespace 'ZHWDdCkI' \
    --userId 'sZoArWwP' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserTier'
delete_file $TEMP_FILE

#- 34 getUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace 'HcyFAdAt' \
    --seasonId 'YciLIgRw' \
    --userId 'FRr0gwB9' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSeason'
delete_file $TEMP_FILE

#- 35 publicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace 'tz3vp99X' \
    --language 'VlV8rK3t' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentSeason'
delete_file $TEMP_FILE

#- 36 publicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace 'E6n0smip' \
    --userId '1tw3L7cU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 publicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --body '{"passCode": "d9pqtv6J", "rewardCode": "fPZwcCVO", "tierIndex": 98}' \
    --namespace 'cVa80TmC' \
    --userId 'wtD2lAH0' \
    >$TEMP_FILE 2>&1
update_status $? 'publicClaimUserReward'
delete_file $TEMP_FILE

#- 38 publicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace '1o6NdcBI' \
    --userId 'gzrDyWpF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 39 publicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace 'BYGmmBaw' \
    --seasonId 'MyoKyNpd' \
    --userId 'Aasm8xwU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSeason'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT