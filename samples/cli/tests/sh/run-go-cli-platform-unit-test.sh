#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=316

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 listFulfillmentScripts
$ sample-apps Platform listFulfillmentScripts \
    >$TEMP_FILE 2>&1
update_status $? 'listFulfillmentScripts'
delete_file $TEMP_FILE

#- 2 testFulfillmentScriptEval
$ sample-apps Platform testFulfillmentScriptEval \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 getFulfillmentScript
$ sample-apps Platform getFulfillmentScript \
    --id 'SMNcoAAO' \
    >$TEMP_FILE 2>&1
update_status $? 'getFulfillmentScript'
delete_file $TEMP_FILE

#- 4 createFulfillmentScript
$ sample-apps Platform createFulfillmentScript \
    --body '{"grantDays": "jKNjfcYH"}' \
    --id 'm093aYgB' \
    >$TEMP_FILE 2>&1
update_status $? 'createFulfillmentScript'
delete_file $TEMP_FILE

#- 5 deleteFulfillmentScript
$ sample-apps Platform deleteFulfillmentScript \
    --id 'U1sqjyK0' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 updateFulfillmentScript
$ sample-apps Platform updateFulfillmentScript \
    --body '{"grantDays": "XH45PaRS"}' \
    --id 'OFQBtu23' \
    >$TEMP_FILE 2>&1
update_status $? 'updateFulfillmentScript'
delete_file $TEMP_FILE

#- 7 queryCampaigns
$ sample-apps Platform queryCampaigns \
    --namespace 'REZ8hRVX' \
    --limit '74' \
    --name 'GOvDdYiQ' \
    --offset '89' \
    --tag '9i7mV1C9' \
    >$TEMP_FILE 2>&1
update_status $? 'queryCampaigns'
delete_file $TEMP_FILE

#- 8 createCampaign
$ sample-apps Platform createCampaign \
    --body '{"description": "1pjG9gpx", "items": [{"extraSubscriptionDays": 75, "itemId": "6ycTQdvl", "itemName": "n2LAuSQW", "quantity": 61}], "maxRedeemCountPerCampaignPerUser": 99, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 62, "name": "E1YHo9m1", "redeemEnd": "1998-01-13T00:00:00Z", "redeemStart": "1974-09-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bNYqgUqs"], "type": "REDEMPTION"}' \
    --namespace 'ArFPiHUI' \
    >$TEMP_FILE 2>&1
update_status $? 'createCampaign'
delete_file $TEMP_FILE

#- 9 getCampaign
$ sample-apps Platform getCampaign \
    --campaignId 'vaCv8kU9' \
    --namespace 'dBBpdsJL' \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaign'
delete_file $TEMP_FILE

#- 10 updateCampaign
$ sample-apps Platform updateCampaign \
    --body '{"description": "hsVyExrk", "items": [{"extraSubscriptionDays": 46, "itemId": "oot0B7WO", "itemName": "fercZdpM", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 17, "maxRedeemCountPerCode": 58, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 88, "name": "fExaI3uz", "redeemEnd": "1989-05-29T00:00:00Z", "redeemStart": "1973-11-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Alt4hr7H"]}' \
    --campaignId 'mOYiBA5l' \
    --namespace 'tAOXmlG6' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCampaign'
delete_file $TEMP_FILE

#- 11 getCampaignDynamic
$ sample-apps Platform getCampaignDynamic \
    --campaignId 'eh1dTdoT' \
    --namespace 'FpBIcuC1' \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaignDynamic'
delete_file $TEMP_FILE

#- 12 getRootCategories
$ sample-apps Platform getRootCategories \
    --namespace 'dQY93OJn' \
    --storeId 'J6Te9vD8' \
    >$TEMP_FILE 2>&1
update_status $? 'getRootCategories'
delete_file $TEMP_FILE

#- 13 createCategory
$ sample-apps Platform createCategory \
    --body '{"categoryPath": "ldz7Hu8A", "localizationDisplayNames": {"D79kdWun": "vizU0q1p"}}' \
    --namespace 'HyhhERoG' \
    --storeId 'gdrysMiz' \
    >$TEMP_FILE 2>&1
update_status $? 'createCategory'
delete_file $TEMP_FILE

#- 14 listCategoriesBasic
$ sample-apps Platform listCategoriesBasic \
    --namespace 'BGSRdP2l' \
    --storeId '7DNSZ8Aq' \
    >$TEMP_FILE 2>&1
update_status $? 'listCategoriesBasic'
delete_file $TEMP_FILE

#- 15 getCategory
$ sample-apps Platform getCategory \
    --categoryPath '0XiPLQXS' \
    --namespace 'e07ZddOG' \
    --storeId 'TMlJjBwj' \
    >$TEMP_FILE 2>&1
update_status $? 'getCategory'
delete_file $TEMP_FILE

#- 16 updateCategory
$ sample-apps Platform updateCategory \
    --body '{"localizationDisplayNames": {"9HJHQKse": "EdSXRDSv"}}' \
    --categoryPath 'guauw1xT' \
    --namespace '7eMwSl9M' \
    --storeId 'LH0NnTJ2' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCategory'
delete_file $TEMP_FILE

#- 17 deleteCategory
$ sample-apps Platform deleteCategory \
    --categoryPath 'ulNzBvwJ' \
    --namespace 'aQa547Jl' \
    --storeId 'lvA8RWSp' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCategory'
delete_file $TEMP_FILE

#- 18 getChildCategories
$ sample-apps Platform getChildCategories \
    --categoryPath 'abUt7xk6' \
    --namespace 'QxyWhfqo' \
    --storeId 'WfJw2o8o' \
    >$TEMP_FILE 2>&1
update_status $? 'getChildCategories'
delete_file $TEMP_FILE

#- 19 getDescendantCategories
$ sample-apps Platform getDescendantCategories \
    --categoryPath 'WUqvPCZ2' \
    --namespace 'HzT7NXmW' \
    --storeId 'DlXsuNId' \
    >$TEMP_FILE 2>&1
update_status $? 'getDescendantCategories'
delete_file $TEMP_FILE

#- 20 queryCodes
$ sample-apps Platform queryCodes \
    --campaignId 'QJR5lsNO' \
    --namespace 'lvkfwaSb' \
    --activeOnly 'False' \
    --batchNo '37' \
    --code 'uLCgToxu' \
    --limit '94' \
    --offset '90' \
    >$TEMP_FILE 2>&1
update_status $? 'queryCodes'
delete_file $TEMP_FILE

#- 21 createCodes
$ sample-apps Platform createCodes \
    --body '{"quantity": 9}' \
    --campaignId 'kJgvg6h5' \
    --namespace 'HIpH0Dvi' \
    >$TEMP_FILE 2>&1
update_status $? 'createCodes'
delete_file $TEMP_FILE

#- 22 download
$ sample-apps Platform download \
    --campaignId 'plEk4vj3' \
    --namespace 'LDp4yqDt' \
    --batchNo '85' \
    >$TEMP_FILE 2>&1
update_status $? 'download'
delete_file $TEMP_FILE

#- 23 bulkDisableCodes
$ sample-apps Platform bulkDisableCodes \
    --campaignId 'UZDpxlHa' \
    --namespace 'sinGcjrk' \
    --batchNo '25' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkDisableCodes'
delete_file $TEMP_FILE

#- 24 bulkEnableCodes
$ sample-apps Platform bulkEnableCodes \
    --campaignId 'RMttgjDS' \
    --namespace 'aIVBmft3' \
    --batchNo '93' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkEnableCodes'
delete_file $TEMP_FILE

#- 25 queryRedeemHistory
$ sample-apps Platform queryRedeemHistory \
    --campaignId 'dg7p9PGm' \
    --namespace 'Y2H5kX4M' \
    --code 'sisSX28n' \
    --limit '53' \
    --offset '86' \
    --userId 'xWRpv5ou' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRedeemHistory'
delete_file $TEMP_FILE

#- 26 getCode
$ sample-apps Platform getCode \
    --code '5xtvd28O' \
    --namespace 'UfCt8UJC' \
    --redeemable 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'getCode'
delete_file $TEMP_FILE

#- 27 disableCode
$ sample-apps Platform disableCode \
    --code 'lNyj6HsT' \
    --namespace 'tX8P3lln' \
    >$TEMP_FILE 2>&1
update_status $? 'disableCode'
delete_file $TEMP_FILE

#- 28 enableCode
$ sample-apps Platform enableCode \
    --code 'aaS9lqyy' \
    --namespace 'gPcfkJIx' \
    >$TEMP_FILE 2>&1
update_status $? 'enableCode'
delete_file $TEMP_FILE

#- 29 listCurrencies
$ sample-apps Platform listCurrencies \
    --namespace 'fQZza8kN' \
    >$TEMP_FILE 2>&1
update_status $? 'listCurrencies'
delete_file $TEMP_FILE

#- 30 createCurrency
$ sample-apps Platform createCurrency \
    --body '{"currencyCode": "VbDxVMq7", "currencySymbol": "HJk0F89x", "currencyType": "VIRTUAL", "decimals": 5, "localizationDescriptions": {"3YVfaENt": "rl0pTKZT"}}' \
    --namespace 'XqzHuBMY' \
    >$TEMP_FILE 2>&1
update_status $? 'createCurrency'
delete_file $TEMP_FILE

#- 31 updateCurrency
$ sample-apps Platform updateCurrency \
    --body '{"localizationDescriptions": {"QSA2jz1Z": "OpdOjSyM"}}' \
    --currencyCode 'ddB41JuM' \
    --namespace 'f7RUyBHR' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCurrency'
delete_file $TEMP_FILE

#- 32 deleteCurrency
$ sample-apps Platform deleteCurrency \
    --currencyCode 'j8IiRimR' \
    --namespace 'llHT6Dc4' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCurrency'
delete_file $TEMP_FILE

#- 33 getCurrencyConfig
$ sample-apps Platform getCurrencyConfig \
    --currencyCode '0vFFA6gp' \
    --namespace 'U7EW3x1d' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencyConfig'
delete_file $TEMP_FILE

#- 34 getCurrencySummary
$ sample-apps Platform getCurrencySummary \
    --currencyCode 'Cpm55gOe' \
    --namespace 'qQIqcJVK' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencySummary'
delete_file $TEMP_FILE

#- 35 getDLCItemConfig
$ sample-apps Platform getDLCItemConfig \
    --namespace 'mBM1J1Ib' \
    >$TEMP_FILE 2>&1
update_status $? 'getDLCItemConfig'
delete_file $TEMP_FILE

#- 36 updateDLCItemConfig
$ sample-apps Platform updateDLCItemConfig \
    --body '{"data": [{"id": "uTrrkbmu", "rewards": [{"currency": {"currencyCode": "T1whOqmE", "namespace": "nDXIWrBP"}, "item": {"itemId": "lSay46mv", "itemSku": "71BAZAOj", "itemType": "tFJ2vmTj"}, "quantity": 39, "type": "CURRENCY"}]}]}' \
    --namespace 'dCkIsZoA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDLCItemConfig'
delete_file $TEMP_FILE

#- 37 deleteDLCItemConfig
$ sample-apps Platform deleteDLCItemConfig \
    --namespace 'rWwPHcyF' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDLCItemConfig'
delete_file $TEMP_FILE

#- 38 getPlatformDLCConfig
$ sample-apps Platform getPlatformDLCConfig \
    --namespace 'AdAtYciL' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlatformDLCConfig'
delete_file $TEMP_FILE

#- 39 updatePlatformDLCConfig
$ sample-apps Platform updatePlatformDLCConfig \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"gRwFRr0g": "wB9tz3vp"}}]}' \
    --namespace '99XVlV8r' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlatformDLCConfig'
delete_file $TEMP_FILE

#- 40 deletePlatformDLCConfig
$ sample-apps Platform deletePlatformDLCConfig \
    --namespace 'K3tE6n0s' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlatformDLCConfig'
delete_file $TEMP_FILE

#- 41 queryEntitlements
$ sample-apps Platform queryEntitlements \
    --namespace 'mip1tw3L' \
    --activeOnly 'False' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'qtv6JfPZ' \
    --itemId '["wcCVOXcV"]' \
    --limit '1' \
    --offset '90' \
    --userId 'mCwtD2lA' \
    >$TEMP_FILE 2>&1
update_status $? 'queryEntitlements'
delete_file $TEMP_FILE

#- 42 getEntitlement
$ sample-apps Platform getEntitlement \
    --entitlementId 'H01o6Ndc' \
    --namespace 'BIgzrDyW' \
    >$TEMP_FILE 2>&1
update_status $? 'getEntitlement'
delete_file $TEMP_FILE

#- 43 queryFulfillmentHistories
$ sample-apps Platform queryFulfillmentHistories \
    --namespace 'pFBYGmmB' \
    --limit '1' \
    --offset '44' \
    --status 'SUCCESS' \
    --userId 'oKyNpdAa' \
    >$TEMP_FILE 2>&1
update_status $? 'queryFulfillmentHistories'
delete_file $TEMP_FILE

#- 44 getAppleIAPConfig
$ sample-apps Platform getAppleIAPConfig \
    --namespace 'sm8xwUfz' \
    >$TEMP_FILE 2>&1
update_status $? 'getAppleIAPConfig'
delete_file $TEMP_FILE

#- 45 updateAppleIAPConfig
$ sample-apps Platform updateAppleIAPConfig \
    --body '{"bundleId": "OlQiZY4N", "password": "bOQXJ7uO"}' \
    --namespace 'TzNMvuq2' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAppleIAPConfig'
delete_file $TEMP_FILE

#- 46 deleteAppleIAPConfig
$ sample-apps Platform deleteAppleIAPConfig \
    --namespace 'tNl4CX4I' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 47 getEpicGamesIAPConfig
$ sample-apps Platform getEpicGamesIAPConfig \
    --namespace 'jiK4DEUJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 48 updateEpicGamesIAPConfig
$ sample-apps Platform updateEpicGamesIAPConfig \
    --body '{"sandboxId": "RVK3l9Eb"}' \
    --namespace '0R1XRb0R' \
    >$TEMP_FILE 2>&1
update_status $? 'updateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 49 deleteEpicGamesIAPConfig
$ sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace 'H8vS1sme' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 50 getGoogleIAPConfig
$ sample-apps Platform getGoogleIAPConfig \
    --namespace 'OlngrdTX' \
    >$TEMP_FILE 2>&1
update_status $? 'getGoogleIAPConfig'
delete_file $TEMP_FILE

#- 51 updateGoogleIAPConfig
$ sample-apps Platform updateGoogleIAPConfig \
    --body '{"applicationName": "CzaPBtkZ", "serviceAccountId": "Mio4wcyh"}' \
    --namespace 'loVS3rYp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 52 deleteGoogleIAPConfig
$ sample-apps Platform deleteGoogleIAPConfig \
    --namespace '8QtcEmCE' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 53 updateGoogleP12File
$ sample-apps Platform updateGoogleP12File \
    --file 'tmp.dat' \
    --namespace 'Vc75Ufey' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleP12File'
delete_file $TEMP_FILE

#- 54 getIAPItemConfig
$ sample-apps Platform getIAPItemConfig \
    --namespace 'pWjDNhzC' \
    >$TEMP_FILE 2>&1
update_status $? 'getIAPItemConfig'
delete_file $TEMP_FILE

#- 55 updateIAPItemConfig
$ sample-apps Platform updateIAPItemConfig \
    --body '{"data": [{"itemIdentity": "L5sWS2qw", "platformProductIdMap": {"O763iEkl": "kzLm88Lp"}}]}' \
    --namespace 'LuYRO3C5' \
    >$TEMP_FILE 2>&1
update_status $? 'updateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 deleteIAPItemConfig
$ sample-apps Platform deleteIAPItemConfig \
    --namespace '5yHpwK2J' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 getPlayStationIAPConfig
$ sample-apps Platform getPlayStationIAPConfig \
    --namespace 'aqenDGn7' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 updatePlaystationIAPConfig
$ sample-apps Platform updatePlaystationIAPConfig \
    --body '{"environment": "a2NUplWi"}' \
    --namespace 'Ljq06n6a' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 deletePlaystationIAPConfig
$ sample-apps Platform deletePlaystationIAPConfig \
    --namespace '0rW8Efkp' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 getStadiaIAPConfig
$ sample-apps Platform getStadiaIAPConfig \
    --namespace 'aXtwYZJa' \
    >$TEMP_FILE 2>&1
update_status $? 'getStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 deleteStadiaIAPConfig
$ sample-apps Platform deleteStadiaIAPConfig \
    --namespace 'Q4WbwNms' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 updateStadiaJsonConfigFile
$ sample-apps Platform updateStadiaJsonConfigFile \
    --file 'tmp.dat' \
    --namespace 'FYetjEur' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 getSteamIAPConfig
$ sample-apps Platform getSteamIAPConfig \
    --namespace 'H8eloJzN' \
    >$TEMP_FILE 2>&1
update_status $? 'getSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 updateSteamIAPConfig
$ sample-apps Platform updateSteamIAPConfig \
    --body '{"publisherAuthenticationKey": "KtRUaTz1"}' \
    --namespace 'ETdsmwzj' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 deleteSteamIAPConfig
$ sample-apps Platform deleteSteamIAPConfig \
    --namespace 'kkn9oiQl' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 getXblIAPConfig
$ sample-apps Platform getXblIAPConfig \
    --namespace '05g7cO3Z' \
    >$TEMP_FILE 2>&1
update_status $? 'getXblIAPConfig'
delete_file $TEMP_FILE

#- 67 updateXblIAPConfig
$ sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "Mb6Ojlo6"}' \
    --namespace 'DMNpP2qM' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblIAPConfig'
delete_file $TEMP_FILE

#- 68 deleteXblAPConfig
$ sample-apps Platform deleteXblAPConfig \
    --namespace 'rTQ1Upjf' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteXblAPConfig'
delete_file $TEMP_FILE

#- 69 updateXblBPCertFile
$ sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password 'U6wJhy1j' \
    --namespace 'OVkkUlS7' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblBPCertFile'
delete_file $TEMP_FILE

#- 70 syncInGameItem
$ sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "9527EZ25", "targetItemId": "Ia8uCeZF", "targetNamespace": "lLtEVpDA"}' \
    --namespace 'EbA82jy7' \
    --storeId '4lq0pDE5' \
    >$TEMP_FILE 2>&1
update_status $? 'syncInGameItem'
delete_file $TEMP_FILE

#- 71 createItem
$ sample-apps Platform createItem \
    --body '{"appId": "xRwh5b45", "appType": "GAME", "baseAppId": "bpcM7ScS", "boothName": "s3UOpAwI", "categoryPath": "p9rRtn1P", "clazz": "cCxdbume", "displayOrder": 13, "entitlementType": "DURABLE", "ext": {"EBWRQiW3": {}}, "features": ["KFfU8icH"], "images": [{"as": "4081gRB1", "caption": "GyLfLg4R", "height": 100, "imageUrl": "uEbgUDEc", "smallImageUrl": "JyIvsPwO", "width": 34}], "itemIds": ["0BmV5iFv"], "itemQty": {"fwFjTSmI": 61}, "itemType": "CODE", "listable": false, "localizations": {"LyLeUGmo": {"description": "mGX9sXTZ", "localExt": {"0v8pqLfc": {}}, "longDescription": "5SwGnReU", "title": "ULDX4QUI"}}, "maxCount": 3, "maxCountPerUser": 3, "name": "5nh68Zny", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 96, "fixedTrialCycles": 14, "graceDays": 78}, "regionData": {"BSFTtFrO": [{"currencyCode": "mjkFrFVA", "currencyNamespace": "8t0xF34X", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1996-03-28T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1993-03-05T00:00:00Z", "discountedPrice": 4, "expireAt": "1997-03-20T00:00:00Z", "price": 34, "purchaseAt": "1998-01-02T00:00:00Z", "trialPrice": 27}]}, "seasonType": "PASS", "sku": "o7UHCJK5", "stackable": true, "status": "ACTIVE", "tags": ["0aCvIq3a"], "targetCurrencyCode": "HVYIlewL", "targetNamespace": "RuHY83bG", "thumbnailUrl": "j0HTeeWX", "useCount": 23}' \
    --namespace 'IcRidqct' \
    --storeId 'DpygY0ax' \
    >$TEMP_FILE 2>&1
update_status $? 'createItem'
delete_file $TEMP_FILE

#- 72 getItemByAppId
$ sample-apps Platform getItemByAppId \
    --namespace '476ED4MM' \
    --activeOnly 'True' \
    --storeId '2JH0qhWI' \
    --appId 'wHWTgzJF' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemByAppId'
delete_file $TEMP_FILE

#- 73 queryItems
$ sample-apps Platform queryItems \
    --namespace 'RYw6t1IK' \
    --activeOnly 'False' \
    --appType 'DEMO' \
    --availableDate '46QmCidg' \
    --baseAppId 'dpP7RTC5' \
    --categoryPath '87lmUmBz' \
    --features 'iPZBnpOf' \
    --itemType 'CODE' \
    --limit '23' \
    --offset '22' \
    --region 'xfq0NsrS' \
    --sortBy 'jw5Hog0b' \
    --storeId 'lM1d5MSt' \
    --tags 'YGczLINl' \
    --targetNamespace 'EC0OEsE3' \
    >$TEMP_FILE 2>&1
update_status $? 'queryItems'
delete_file $TEMP_FILE

#- 74 listBasicItemsByFeatures
$ sample-apps Platform listBasicItemsByFeatures \
    --namespace 'yzIsUP0N' \
    --activeOnly 'False' \
    --features '["luOrGZTz"]' \
    >$TEMP_FILE 2>&1
update_status $? 'listBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 75 getItemBySku
$ sample-apps Platform getItemBySku \
    --namespace 'sLW7Fjfs' \
    --activeOnly 'False' \
    --storeId 'IkcZ38fU' \
    --sku 'EanjKHbX' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemBySku'
delete_file $TEMP_FILE

#- 76 getLocaleItemBySku
$ sample-apps Platform getLocaleItemBySku \
    --namespace 'fk1zxdzx' \
    --activeOnly 'False' \
    --language '0UXcRyHi' \
    --populateBundle 'True' \
    --region '8BzVWu1t' \
    --storeId 'OmhUtCgc' \
    --sku 'pvGrEbcZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItemBySku'
delete_file $TEMP_FILE

#- 77 getItemIdBySku
$ sample-apps Platform getItemIdBySku \
    --namespace 'UDExH1ta' \
    --activeOnly 'True' \
    --storeId 'OGXIHzMR' \
    --sku 'jMCtOJsE' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemIdBySku'
delete_file $TEMP_FILE

#- 78 bulkGetLocaleItems
$ sample-apps Platform bulkGetLocaleItems \
    --namespace 'ijlrbpyy' \
    --activeOnly 'True' \
    --language 'cQxVgJIj' \
    --region 'MZqcWfMl' \
    --storeId '6dqrpD4t' \
    --itemIds 'nc3ZRB3I' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetLocaleItems'
delete_file $TEMP_FILE

#- 79 searchItems
$ sample-apps Platform searchItems \
    --namespace 'kdtPfAJE' \
    --activeOnly 'False' \
    --limit '25' \
    --offset '44' \
    --storeId 'enJvQ8gr' \
    --keyword 'tQSv6EcA' \
    --language 'LcMIPms5' \
    >$TEMP_FILE 2>&1
update_status $? 'searchItems'
delete_file $TEMP_FILE

#- 80 queryUncategorizedItems
$ sample-apps Platform queryUncategorizedItems \
    --namespace 'bT51M4yk' \
    --activeOnly 'False' \
    --limit '89' \
    --offset '60' \
    --sortBy 'nGLvGvfu' \
    --storeId 'SyCTyjj4' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUncategorizedItems'
delete_file $TEMP_FILE

#- 81 getItem
$ sample-apps Platform getItem \
    --itemId 'mCaiuMGK' \
    --namespace 'OF5GJJoo' \
    --activeOnly 'False' \
    --storeId '3YU35QHG' \
    >$TEMP_FILE 2>&1
update_status $? 'getItem'
delete_file $TEMP_FILE

#- 82 updateItem
$ sample-apps Platform updateItem \
    --body '{"appId": "pBABnOlx", "appType": "DEMO", "baseAppId": "znICQVyq", "boothName": "Bg34WTtD", "categoryPath": "kn0rtn6t", "clazz": "0Yx4z12E", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"UQYCNTiD": {}}, "features": ["X4jE3M2I"], "images": [{"as": "sTHu8QwN", "caption": "yOlXfIWd", "height": 25, "imageUrl": "cq5T4SUc", "smallImageUrl": "7cWfCKK6", "width": 59}], "itemIds": ["ij1gFcen"], "itemQty": {"EMySPfhx": 55}, "itemType": "COINS", "listable": false, "localizations": {"DiTiAqFY": {"description": "mFKjaELm", "localExt": {"mll6oexI": {}}, "longDescription": "d1OKGUN2", "title": "Uznd7uVa"}}, "maxCount": 39, "maxCountPerUser": 48, "name": "vSYSV52b", "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 56, "fixedTrialCycles": 69, "graceDays": 11}, "regionData": {"4tsuu6Pk": [{"currencyCode": "am6tFSYF", "currencyNamespace": "t4ZxA2Pz", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1976-08-10T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-02-23T00:00:00Z", "discountedPrice": 14, "expireAt": "1977-05-13T00:00:00Z", "price": 40, "purchaseAt": "1980-10-14T00:00:00Z", "trialPrice": 48}]}, "seasonType": "TIER", "sku": "uV6uUvqM", "stackable": false, "status": "ACTIVE", "tags": ["EbxHNgJR"], "targetCurrencyCode": "iQExaunj", "targetNamespace": "dAqnHUz4", "thumbnailUrl": "4tx4O6ha", "useCount": 25}' \
    --itemId 'PwNoi071' \
    --namespace 'ezDK56JF' \
    --storeId 'IGe1IMUC' \
    >$TEMP_FILE 2>&1
update_status $? 'updateItem'
delete_file $TEMP_FILE

#- 83 deleteItem
$ sample-apps Platform deleteItem \
    --itemId 'LcN0DsaD' \
    --namespace '5FyBsFe9' \
    --storeId 'OYEJVsYf' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteItem'
delete_file $TEMP_FILE

#- 84 acquireItem
$ sample-apps Platform acquireItem \
    --body '{"count": 10, "orderNo": "mhyx6J25"}' \
    --itemId 'PrM4S3cB' \
    --namespace '8m17hEeL' \
    >$TEMP_FILE 2>&1
update_status $? 'acquireItem'
delete_file $TEMP_FILE

#- 85 getApp
$ sample-apps Platform getApp \
    --itemId 'LgoaYth6' \
    --namespace 'zcf8eA45' \
    --activeOnly 'True' \
    --storeId 'ObWejo9L' \
    >$TEMP_FILE 2>&1
update_status $? 'getApp'
delete_file $TEMP_FILE

#- 86 updateApp
$ sample-apps Platform updateApp \
    --body '{"carousel": [{"alt": "fGeegJMa", "previewUrl": "BGR6D1Zo", "thumbnailUrl": "ZEZQkJ8D", "type": "video", "url": "FnhdKvjF", "videoSource": "youtube"}], "developer": "FbSFlEWo", "forumUrl": "MPdgK5zn", "genres": ["FreeToPlay"], "localizations": {"hnFSpCTl": {"announcement": "DNBOcygv", "slogan": "v2LAgfBG"}}, "platformRequirements": {"VzanbKYs": [{"additionals": "B0gqJ8Vh", "directXVersion": "YSikJl2p", "diskSpace": "9rBx8N5e", "graphics": "gapqxDy4", "label": "cLfNjzzE", "osVersion": "ZYA8jIkM", "processor": "Jb7cZ2bP", "ram": "saLLpEBV", "soundCard": "EMk5AsKa"}]}, "platforms": ["IOS"], "players": ["LocalCoop"], "primaryGenre": "Casual", "publisher": "XkI3zdiR", "releaseDate": "1975-08-13T00:00:00Z", "websiteUrl": "5IbPit71"}' \
    --itemId 'JWlYCoi4' \
    --namespace 'nDfPu5V6' \
    --storeId 'QSYxEVOr' \
    >$TEMP_FILE 2>&1
update_status $? 'updateApp'
delete_file $TEMP_FILE

#- 87 disableItem
$ sample-apps Platform disableItem \
    --itemId 'yVuZYmgU' \
    --namespace 'eEPB5AGP' \
    --storeId 'gvk0Ztha' \
    >$TEMP_FILE 2>&1
update_status $? 'disableItem'
delete_file $TEMP_FILE

#- 88 getItemDynamicData
$ sample-apps Platform getItemDynamicData \
    --itemId 'j0EBA4az' \
    --namespace 'Rz0d56sm' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemDynamicData'
delete_file $TEMP_FILE

#- 89 enableItem
$ sample-apps Platform enableItem \
    --itemId 'obor4p1P' \
    --namespace 'lgQB9EcN' \
    --storeId 'GOeBRY6G' \
    >$TEMP_FILE 2>&1
update_status $? 'enableItem'
delete_file $TEMP_FILE

#- 90 featureItem
$ sample-apps Platform featureItem \
    --feature '5ae07deD' \
    --itemId 'LaZ8JCvb' \
    --namespace 'eTfW0hgz' \
    --storeId 'rabLJxEw' \
    >$TEMP_FILE 2>&1
update_status $? 'featureItem'
delete_file $TEMP_FILE

#- 91 defeatureItem
$ sample-apps Platform defeatureItem \
    --feature 'JrEBmQ64' \
    --itemId 'haNOzlGu' \
    --namespace '68UYyupj' \
    --storeId 'dDetnoT0' \
    >$TEMP_FILE 2>&1
update_status $? 'defeatureItem'
delete_file $TEMP_FILE

#- 92 getLocaleItem
$ sample-apps Platform getLocaleItem \
    --itemId 'rfWtVPwQ' \
    --namespace 'fq6V92gb' \
    --activeOnly 'False' \
    --language 'PouNdmP7' \
    --populateBundle 'False' \
    --region 'ckVnuDGv' \
    --storeId 'YIb1p5tc' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItem'
delete_file $TEMP_FILE

#- 93 returnItem
$ sample-apps Platform returnItem \
    --body '{"orderNo": "R5z8ZJLj"}' \
    --itemId 'SHcaR3X4' \
    --namespace 'tZmwr0Qm' \
    >$TEMP_FILE 2>&1
update_status $? 'returnItem'
delete_file $TEMP_FILE

#- 94 queryKeyGroups
$ sample-apps Platform queryKeyGroups \
    --namespace 'OnsEg49e' \
    --limit '98' \
    --name 'p0xQkZ2J' \
    --offset '18' \
    --tag 'uwWWy0tU' \
    >$TEMP_FILE 2>&1
update_status $? 'queryKeyGroups'
delete_file $TEMP_FILE

#- 95 createKeyGroup
$ sample-apps Platform createKeyGroup \
    --body '{"description": "11PCeSrv", "name": "ejUKwVfF", "status": "INACTIVE", "tags": ["7mkDzFBI"]}' \
    --namespace '1VwhkVSK' \
    >$TEMP_FILE 2>&1
update_status $? 'createKeyGroup'
delete_file $TEMP_FILE

#- 96 getKeyGroup
$ sample-apps Platform getKeyGroup \
    --keyGroupId 'DlNFOUHB' \
    --namespace 'JsvTsqk9' \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroup'
delete_file $TEMP_FILE

#- 97 updateKeyGroup
$ sample-apps Platform updateKeyGroup \
    --body '{"description": "hg4hj6nU", "name": "debW6Usk", "status": "ACTIVE", "tags": ["PkkZAk01"]}' \
    --keyGroupId 'f1KxCtWA' \
    --namespace 'DU2guN6U' \
    >$TEMP_FILE 2>&1
update_status $? 'updateKeyGroup'
delete_file $TEMP_FILE

#- 98 getKeyGroupDynamic
$ sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '9w13W1K9' \
    --namespace 'TZQ4qRLE' \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroupDynamic'
delete_file $TEMP_FILE

#- 99 listKeys
$ sample-apps Platform listKeys \
    --keyGroupId 'i5wowE36' \
    --namespace 'rfmM0CCs' \
    --limit '90' \
    --offset '82' \
    --status 'ACQUIRED' \
    >$TEMP_FILE 2>&1
update_status $? 'listKeys'
delete_file $TEMP_FILE

#- 100 uploadKeys
$ sample-apps Platform uploadKeys \
    --file 'tmp.dat' \
    --keyGroupId 'sY8WgwSx' \
    --namespace '1DI5GH9b' \
    >$TEMP_FILE 2>&1
update_status $? 'uploadKeys'
delete_file $TEMP_FILE

#- 101 queryOrders
$ sample-apps Platform queryOrders \
    --namespace 'v9ZTo2Hp' \
    --endTime 'A6pzjHpZ' \
    --limit '81' \
    --offset '61' \
    --orderNos '["9iLgRPJK"]' \
    --sortBy '3nBae3GO' \
    --startTime 'gbQrqra0' \
    --status 'REFUND_FAILED' \
    --withTotal 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'queryOrders'
delete_file $TEMP_FILE

#- 102 getOrderStatistics
$ sample-apps Platform getOrderStatistics \
    --namespace 'kfvOpY2r' \
    >$TEMP_FILE 2>&1
update_status $? 'getOrderStatistics'
delete_file $TEMP_FILE

#- 103 getOrder
$ sample-apps Platform getOrder \
    --namespace 'amp5lnBn' \
    --orderNo '6xmBkfMt' \
    >$TEMP_FILE 2>&1
update_status $? 'getOrder'
delete_file $TEMP_FILE

#- 104 refundOrder
$ sample-apps Platform refundOrder \
    --body '{"description": "C66hFq0k"}' \
    --namespace 'POkORm2X' \
    --orderNo 'jlNEE5ec' \
    >$TEMP_FILE 2>&1
update_status $? 'refundOrder'
delete_file $TEMP_FILE

#- 105 getPaymentCallbackConfig
$ sample-apps Platform getPaymentCallbackConfig \
    --namespace 'PzAmi0yS' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 106 updatePaymentCallbackConfig
$ sample-apps Platform updatePaymentCallbackConfig \
    --body '{"dryRun": false, "notifyUrl": "PloP1XkY", "privateKey": "K4MgIsDS"}' \
    --namespace 'FMPyMhyw' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 107 queryPaymentNotifications
$ sample-apps Platform queryPaymentNotifications \
    --namespace '1OLZPVww' \
    --endDate 'xH4BIDJu' \
    --externalId 'DoShMMft' \
    --limit '23' \
    --notificationSource 'CHECKOUT' \
    --notificationType '8N0VvChH' \
    --offset '51' \
    --paymentOrderNo '9urmt7QW' \
    --startDate 'vE8s6Uz8' \
    --status 'WARN' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentNotifications'
delete_file $TEMP_FILE

#- 108 queryPaymentOrders
$ sample-apps Platform queryPaymentOrders \
    --namespace 'RuYWDTtL' \
    --channel 'EXTERNAL' \
    --extTxId 'Cbb9S5Q1' \
    --limit '69' \
    --offset '94' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentOrders'
delete_file $TEMP_FILE

#- 109 createPaymentOrderByDedicated
$ sample-apps Platform createPaymentOrderByDedicated \
    --body '{"currencyCode": "GT88prRE", "currencyNamespace": "BgYOWdHJ", "customParameters": {"9JumohtU": {}}, "description": "13gf7TRi", "extOrderNo": "gNZj5w5y", "extUserId": "3HmK8QVO", "itemType": "APP", "language": "62eQZtbL", "metadata": {"LcF671WL": "tv38Hecc"}, "notifyUrl": "zopFmeRw", "omitNotification": false, "price": 5, "recurringPaymentOrderNo": "JBZyi3mL", "region": "C4KzekiS", "returnUrl": "zeyolnOQ", "sandbox": true, "sku": "0joVHgCy", "subscriptionId": "tC6lRG98", "targetNamespace": "YxnHbRdo", "targetUserId": "TKKeuSjf", "title": "Ze9i1osg"}' \
    --namespace 'hF1hzi1N' \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 110 listExtOrderNoByExtTxId
$ sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'l47syJ5i' \
    --extTxId 'bzSHZeCL' \
    >$TEMP_FILE 2>&1
update_status $? 'listExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 111 getPaymentOrder
$ sample-apps Platform getPaymentOrder \
    --namespace 'IvWPVRsd' \
    --paymentOrderNo 'EqA61yTr' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrder'
delete_file $TEMP_FILE

#- 112 chargePaymentOrder
$ sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "MgsycTgm", "paymentMethod": "Pzc20EuO", "paymentProvider": "WALLET"}' \
    --namespace 'MqGDlSZP' \
    --paymentOrderNo 'Y07rEVSj' \
    >$TEMP_FILE 2>&1
update_status $? 'chargePaymentOrder'
delete_file $TEMP_FILE

#- 113 refundPaymentOrderByDedicated
$ sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "zHjL6ZbX"}' \
    --namespace 'jG6DSmpp' \
    --paymentOrderNo '3op8htaR' \
    >$TEMP_FILE 2>&1
update_status $? 'refundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 114 simulatePaymentOrderNotification
$ sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 75, "currencyCode": "xtW4PvFk", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 38, "vat": 62}' \
    --namespace '1Le7cR7q' \
    --paymentOrderNo '6PWhZmmK' \
    >$TEMP_FILE 2>&1
update_status $? 'simulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 115 getPaymentOrderChargeStatus
$ sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'z41i1Tp7' \
    --paymentOrderNo '8FipJHah' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 116 createReward
$ sample-apps Platform createReward \
    --body '{"description": "ViJvLYW0", "eventTopic": "kdmlk2lu", "maxAwarded": 32, "maxAwardedPerUser": 88, "rewardCode": "OOA2VOZB", "rewardConditions": [{"condition": "oNbB98Pu", "conditionName": "SGykqFzP", "eventName": "wSMXT53b", "rewardItems": [{"duration": 54, "itemId": "uL38beOY", "quantity": 59}]}]}' \
    --namespace 'VuHZQ9LY' \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 117 queryRewards
$ sample-apps Platform queryRewards \
    --namespace 't6w23Wf8' \
    --eventTopic 'iEQo72sH' \
    --limit '0' \
    --offset '86' \
    --sortBy 'dcDlDyGc' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 118 exportRewards
$ sample-apps Platform exportRewards \
    --namespace 'sfIuI4Dv' \
    >$TEMP_FILE 2>&1
update_status $? 'exportRewards'
delete_file $TEMP_FILE

#- 119 importRewards
$ sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace '5lEJpK1A' \
    --replaceExisting 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'importRewards'
delete_file $TEMP_FILE

#- 120 getReward
$ sample-apps Platform getReward \
    --namespace 'RlzsrRXE' \
    --rewardId 'FZivQOHG' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 121 updateReward
$ sample-apps Platform updateReward \
    --body '{"description": "6wVicNra", "eventTopic": "tsvvHLmI", "maxAwarded": 28, "maxAwardedPerUser": 15, "rewardCode": "fNISLXMD", "rewardConditions": [{"condition": "WDdm5FE4", "conditionName": "lliQMnut", "eventName": "JbpEo4mU", "rewardItems": [{"duration": 79, "itemId": "HFtdml2x", "quantity": 79}]}]}' \
    --namespace 'viWacJc3' \
    --rewardId 'Fm7Z548u' \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 122 deleteReward
$ sample-apps Platform deleteReward \
    --namespace 'uKgoCBqS' \
    --rewardId '5uIdCbwC' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 123 checkEventCondition
$ sample-apps Platform checkEventCondition \
    --body '{"payload": {"eeq9ouEd": {}}}' \
    --namespace 'DtjOgsyp' \
    --rewardId 'Lkm2ZYew' \
    >$TEMP_FILE 2>&1
update_status $? 'checkEventCondition'
delete_file $TEMP_FILE

#- 124 listStores
$ sample-apps Platform listStores \
    --namespace '5H7Zm0gn' \
    >$TEMP_FILE 2>&1
update_status $? 'listStores'
delete_file $TEMP_FILE

#- 125 createStore
$ sample-apps Platform createStore \
    --body '{"defaultLanguage": "Yyj6MXf9", "defaultRegion": "G1ntyebv", "description": "oeHenAAL", "supportedLanguages": ["Kt7EfxIH"], "supportedRegions": ["446oUnP2"], "title": "S74unXwg"}' \
    --namespace '0JKqVWW1' \
    >$TEMP_FILE 2>&1
update_status $? 'createStore'
delete_file $TEMP_FILE

#- 126 importStore
$ sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'rjK1epwk' \
    --storeId 'AvcsYvbg' \
    >$TEMP_FILE 2>&1
update_status $? 'importStore'
delete_file $TEMP_FILE

#- 127 getPublishedStore
$ sample-apps Platform getPublishedStore \
    --namespace 'fBVPpTa8' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStore'
delete_file $TEMP_FILE

#- 128 deletePublishedStore
$ sample-apps Platform deletePublishedStore \
    --namespace 'Yuq7TKiN' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePublishedStore'
delete_file $TEMP_FILE

#- 129 getPublishedStoreBackup
$ sample-apps Platform getPublishedStoreBackup \
    --namespace 'Xmz7eMrM' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStoreBackup'
delete_file $TEMP_FILE

#- 130 rollbackPublishedStore
$ sample-apps Platform rollbackPublishedStore \
    --namespace 'D5TbaUxT' \
    >$TEMP_FILE 2>&1
update_status $? 'rollbackPublishedStore'
delete_file $TEMP_FILE

#- 131 getStore
$ sample-apps Platform getStore \
    --namespace 'CTng0xjt' \
    --storeId 'dBrjs3Ki' \
    >$TEMP_FILE 2>&1
update_status $? 'getStore'
delete_file $TEMP_FILE

#- 132 updateStore
$ sample-apps Platform updateStore \
    --body '{"defaultLanguage": "ykt2Ck2g", "defaultRegion": "OlSatECZ", "description": "2UgwQLqD", "supportedLanguages": ["qYSxTPuV"], "supportedRegions": ["lBqirdp3"], "title": "yxnsETl1"}' \
    --namespace 'SvhQudsj' \
    --storeId 'IhXdxiSo' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStore'
delete_file $TEMP_FILE

#- 133 deleteStore
$ sample-apps Platform deleteStore \
    --namespace 'WpnnxgX7' \
    --storeId 'BCPMqzQI' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStore'
delete_file $TEMP_FILE

#- 134 cloneStore
$ sample-apps Platform cloneStore \
    --namespace 'xibhpNYs' \
    --storeId 'HtdB3Ikj' \
    --targetStoreId 'uaZqhJil' \
    >$TEMP_FILE 2>&1
update_status $? 'cloneStore'
delete_file $TEMP_FILE

#- 135 exportStore
$ sample-apps Platform exportStore \
    --namespace 'rZkSSKgP' \
    --storeId '5rxCR77G' \
    >$TEMP_FILE 2>&1
update_status $? 'exportStore'
delete_file $TEMP_FILE

#- 136 querySubscriptions
$ sample-apps Platform querySubscriptions \
    --namespace '9d5CA1GO' \
    --chargeStatus 'CHARGED' \
    --itemId 'L9n0dbWD' \
    --limit '61' \
    --offset '40' \
    --sku 'pmdLQzPn' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'AcWArbkC' \
    >$TEMP_FILE 2>&1
update_status $? 'querySubscriptions'
delete_file $TEMP_FILE

#- 137 recurringChargeSubscription
$ sample-apps Platform recurringChargeSubscription \
    --namespace 'fdHIZb03' \
    --subscriptionId 'otqmBuS9' \
    >$TEMP_FILE 2>&1
update_status $? 'recurringChargeSubscription'
delete_file $TEMP_FILE

#- 138 getTicketDynamic
$ sample-apps Platform getTicketDynamic \
    --boothName 'V2pCZ23U' \
    --namespace 'Hmk0lpJ4' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketDynamic'
delete_file $TEMP_FILE

#- 139 decreaseTicketSale
$ sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "JLl01qi7"}' \
    --boothName 'L2oDUoVR' \
    --namespace 'Ub39j22P' \
    >$TEMP_FILE 2>&1
update_status $? 'decreaseTicketSale'
delete_file $TEMP_FILE

#- 140 getTicketBoothID
$ sample-apps Platform getTicketBoothID \
    --boothName '4Sp09cKm' \
    --namespace 'jRUbZVBV' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketBoothID'
delete_file $TEMP_FILE

#- 141 increaseTicketSale
$ sample-apps Platform increaseTicketSale \
    --body '{"count": 88, "orderNo": "7OK2Zrdc"}' \
    --boothName 'sckMekRO' \
    --namespace 'WZ2KUTqk' \
    >$TEMP_FILE 2>&1
update_status $? 'increaseTicketSale'
delete_file $TEMP_FILE

#- 142 anonymizeCampaign
$ sample-apps Platform anonymizeCampaign \
    --namespace 'K2eFaGLo' \
    --userId 'SmEEPbLy' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeCampaign'
delete_file $TEMP_FILE

#- 143 anonymizeEntitlement
$ sample-apps Platform anonymizeEntitlement \
    --namespace 'wJsyUie6' \
    --userId 'fZgLllUP' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeEntitlement'
delete_file $TEMP_FILE

#- 144 anonymizeFulfillment
$ sample-apps Platform anonymizeFulfillment \
    --namespace 'sO8lg46S' \
    --userId 'i7006vL2' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeFulfillment'
delete_file $TEMP_FILE

#- 145 anonymizeIntegration
$ sample-apps Platform anonymizeIntegration \
    --namespace 'w4aajDAO' \
    --userId 'x0iJjYle' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeIntegration'
delete_file $TEMP_FILE

#- 146 anonymizeOrder
$ sample-apps Platform anonymizeOrder \
    --namespace 'aktqv2Wk' \
    --userId 'ljQuD5mn' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeOrder'
delete_file $TEMP_FILE

#- 147 anonymizePayment
$ sample-apps Platform anonymizePayment \
    --namespace 'JONqHGq8' \
    --userId 'mB7mF2lM' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizePayment'
delete_file $TEMP_FILE

#- 148 anonymizeSubscription
$ sample-apps Platform anonymizeSubscription \
    --namespace 'FcaghFXJ' \
    --userId 'IJflRHFc' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeSubscription'
delete_file $TEMP_FILE

#- 149 anonymizeWallet
$ sample-apps Platform anonymizeWallet \
    --namespace 'sIqCy4xD' \
    --userId 'ifSSQ5On' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeWallet'
delete_file $TEMP_FILE

#- 150 queryUserEntitlements
$ sample-apps Platform queryUserEntitlements \
    --namespace '2ccEcl3x' \
    --userId 'eiO4bwF5' \
    --activeOnly 'False' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'xKM3qMce' \
    --itemId '["5tfLcpjF"]' \
    --limit '76' \
    --offset '72' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlements'
delete_file $TEMP_FILE

#- 151 grantUserEntitlement
$ sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1985-01-09T00:00:00Z", "grantedCode": "p0pEbLCL", "itemId": "FpHxMYF8", "itemNamespace": "36075xEp", "language": "zdnYtpja", "quantity": 17, "region": "g2isQZga", "source": "REWARD", "startDate": "1975-07-26T00:00:00Z", "storeId": "PiQRjYa8"}]' \
    --namespace 'fv5fIt22' \
    --userId 'tIZhjhgk' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserEntitlement'
delete_file $TEMP_FILE

#- 152 getUserAppEntitlementByAppId
$ sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'igW22zXM' \
    --userId 'WXfbcM0G' \
    --activeOnly 'True' \
    --appId 'LIbFCQgB' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 153 queryUserEntitlementsByAppType
$ sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'cLNT6iOQ' \
    --userId 'VYx5rW2g' \
    --activeOnly 'True' \
    --limit '69' \
    --offset '0' \
    --appType 'SOFTWARE' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 154 getUserEntitlementByItemId
$ sample-apps Platform getUserEntitlementByItemId \
    --namespace 'itSn3UDe' \
    --userId 'Kj97I4WY' \
    --activeOnly 'True' \
    --entitlementClazz 'CODE' \
    --itemId 'N7ktOBTr' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 155 getUserEntitlementBySku
$ sample-apps Platform getUserEntitlementBySku \
    --namespace 'aBxWRTVu' \
    --userId 'YEqGlKDw' \
    --activeOnly 'True' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'XiQcd9IW' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementBySku'
delete_file $TEMP_FILE

#- 156 existsAnyUserActiveEntitlement
$ sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace '8kiCKeQJ' \
    --userId 'WZBvcq1E' \
    --appIds '["TvWBxYZJ"]' \
    --itemIds '["h7B8gbnS"]' \
    --skus '["u9M2OxD2"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 157 existsAnyUserActiveEntitlementByItemIds
$ sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'udaeYpCX' \
    --userId 'YSMiy87C' \
    --itemIds '["TqEQBg36"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 158 getUserAppEntitlementOwnershipByAppId
$ sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'my3sY2cl' \
    --userId 'rDcain0c' \
    --appId 'OVF1zHwD' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 159 getUserEntitlementOwnershipByItemId
$ sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'TI0sJ1Q0' \
    --userId 'kphMTggS' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'cuAP7vU9' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 160 getUserEntitlementOwnershipBySku
$ sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace '71Czw2nb' \
    --userId 'g8C7Mvyw' \
    --entitlementClazz 'APP' \
    --sku 'u6MjOjuG' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 161 revokeUserEntitlements
$ sample-apps Platform revokeUserEntitlements \
    --namespace 'zo1Fz4tU' \
    --userId '0aSn98N8' \
    --entitlementIds 'qOUA0z92' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlements'
delete_file $TEMP_FILE

#- 162 getUserEntitlement
$ sample-apps Platform getUserEntitlement \
    --entitlementId 'RaDe8ngT' \
    --namespace '8LRQkMnG' \
    --userId '1LZyF2md' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlement'
delete_file $TEMP_FILE

#- 163 updateUserEntitlement
$ sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1996-11-02T00:00:00Z", "nullFieldList": ["fuTYTKsu"], "startDate": "1973-05-09T00:00:00Z", "status": "REVOKED", "useCount": 60}' \
    --entitlementId 'BNAV5BTe' \
    --namespace '6ec1zA92' \
    --userId 'URCLSGPm' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserEntitlement'
delete_file $TEMP_FILE

#- 164 consumeUserEntitlement
$ sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 86}' \
    --entitlementId 'BZWunHW7' \
    --namespace 'MYvr6QA7' \
    --userId 'Ppepc92H' \
    >$TEMP_FILE 2>&1
update_status $? 'consumeUserEntitlement'
delete_file $TEMP_FILE

#- 165 disableUserEntitlement
$ sample-apps Platform disableUserEntitlement \
    --entitlementId 'A94eACde' \
    --namespace 'yfUpgiPp' \
    --userId 'f8nxKJ3d' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserEntitlement'
delete_file $TEMP_FILE

#- 166 enableUserEntitlement
$ sample-apps Platform enableUserEntitlement \
    --entitlementId 'nmtPwa64' \
    --namespace 'Y4gPEKMh' \
    --userId 'hu9a6f3x' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserEntitlement'
delete_file $TEMP_FILE

#- 167 getUserEntitlementHistories
$ sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'JNtUlKLl' \
    --namespace 'IIAeHbm5' \
    --userId 'M6LsY1VM' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementHistories'
delete_file $TEMP_FILE

#- 168 revokeUserEntitlement
$ sample-apps Platform revokeUserEntitlement \
    --entitlementId 'uIEcRls6' \
    --namespace '8M3MPMRP' \
    --userId 'BepyyMz6' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlement'
delete_file $TEMP_FILE

#- 169 fulfillItem
$ sample-apps Platform fulfillItem \
    --body '{"duration": 51, "endDate": "1973-12-15T00:00:00Z", "itemId": "1pvTYYtD", "itemSku": "OiEi4RuE", "language": "cHCSGhpO", "order": {"currency": {"currencyCode": "ZQFlwOiu", "currencySymbol": "KGDFgK49", "currencyType": "VIRTUAL", "decimals": 73, "namespace": "nXks0m8A"}, "ext": {"NrcRal7t": {}}, "free": false}, "orderNo": "3fojA3h4", "quantity": 77, "region": "MW3AJ5zl", "source": "REFERRAL_BONUS", "startDate": "1986-08-09T00:00:00Z", "storeId": "wjvLYvmg"}' \
    --namespace '6avudQFF' \
    --userId '1CPNY9u2' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillItem'
delete_file $TEMP_FILE

#- 170 redeemCode
$ sample-apps Platform redeemCode \
    --body '{"code": "dVYdglOO", "language": "oCeK0kPK", "region": "mBqVux3l"}' \
    --namespace 'XcD8aert' \
    --userId 'AVCqs8XT' \
    >$TEMP_FILE 2>&1
update_status $? 'redeemCode'
delete_file $TEMP_FILE

#- 171 fulfillRewards
$ sample-apps Platform fulfillRewards \
    --body '{"rewards": [{"currency": {"currencyCode": "8xy3nJ06", "namespace": "KkseA0AR"}, "item": {"itemId": "j9ricfay", "itemSku": "vnhi8MDd", "itemType": "Y4WLHoaU"}, "quantity": 21, "type": "ITEM"}], "source": "ACHIEVEMENT"}' \
    --namespace '5egdmVE8' \
    --userId 'ImivNtQx' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillRewards'
delete_file $TEMP_FILE

#- 172 queryUserIAPOrders
$ sample-apps Platform queryUserIAPOrders \
    --namespace 'qWRKHohO' \
    --userId 'DoWOr98k' \
    --endTime 'jBUas9jj' \
    --limit '51' \
    --offset '63' \
    --productId 'rgiaGrcB' \
    --startTime '7dIOVKIP' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserIAPOrders'
delete_file $TEMP_FILE

#- 173 queryAllUserIAPOrders
$ sample-apps Platform queryAllUserIAPOrders \
    --namespace 'JHo5W8tK' \
    --userId 'H8ou9Sdb' \
    >$TEMP_FILE 2>&1
update_status $? 'queryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 174 mockFulfillIAPItem
$ sample-apps Platform mockFulfillIAPItem \
    --body '{"language": "xSXcrEFC", "productId": "wqeGNLdI", "region": "BRdliFQV", "type": "XBOX"}' \
    --namespace 'KEzVUWlU' \
    --userId 'WDs2x1EQ' \
    >$TEMP_FILE 2>&1
update_status $? 'mockFulfillIAPItem'
delete_file $TEMP_FILE

#- 175 queryUserOrders
$ sample-apps Platform queryUserOrders \
    --namespace 'U0oepEvc' \
    --userId 'jaSgEh6j' \
    --itemId 'JnFxinIH' \
    --limit '71' \
    --offset '28' \
    --status 'CHARGEBACK' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserOrders'
delete_file $TEMP_FILE

#- 176 countOfPurchasedItem
$ sample-apps Platform countOfPurchasedItem \
    --namespace 'q5Zznd5e' \
    --userId 'acobTsuR' \
    --itemId 'lhreQVFI' \
    >$TEMP_FILE 2>&1
update_status $? 'countOfPurchasedItem'
delete_file $TEMP_FILE

#- 177 getUserOrder
$ sample-apps Platform getUserOrder \
    --namespace 'D3o8hJWV' \
    --orderNo 'jKIOAw70' \
    --userId 'DvAHhSGW' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrder'
delete_file $TEMP_FILE

#- 178 updateUserOrderStatus
$ sample-apps Platform updateUserOrderStatus \
    --body '{"status": "FULFILL_FAILED", "statusReason": "zq1Za3IB"}' \
    --namespace 'C4vQFsUJ' \
    --orderNo 'PfiaJp1r' \
    --userId 't7OBgBCe' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserOrderStatus'
delete_file $TEMP_FILE

#- 179 fulfillUserOrder
$ sample-apps Platform fulfillUserOrder \
    --namespace '6N0eI65M' \
    --orderNo 'n5tngEYX' \
    --userId 'gPVT5CqX' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillUserOrder'
delete_file $TEMP_FILE

#- 180 getUserOrderGrant
$ sample-apps Platform getUserOrderGrant \
    --namespace 'DZBVMJyJ' \
    --orderNo 'eKFO92YD' \
    --userId 'taZvJoKS' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderGrant'
delete_file $TEMP_FILE

#- 181 getUserOrderHistories
$ sample-apps Platform getUserOrderHistories \
    --namespace '0OxyipZu' \
    --orderNo 'O4N9S2YC' \
    --userId 'gHa6XBcv' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderHistories'
delete_file $TEMP_FILE

#- 182 processUserOrderNotification
$ sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "GRYk5rUt"}, "authorisedTime": "1995-09-19T00:00:00Z", "chargebackReversedTime": "1985-04-18T00:00:00Z", "chargebackTime": "1974-04-11T00:00:00Z", "chargedTime": "1983-07-18T00:00:00Z", "createdTime": "1978-04-30T00:00:00Z", "currency": {"currencyCode": "V7tKNKYU", "currencySymbol": "QVBXymWc", "currencyType": "REAL", "decimals": 66, "namespace": "aFxYaGHU"}, "customParameters": {"pmBFyOrF": {}}, "extOrderNo": "KtxGNAi0", "extTxId": "fq4xChPL", "extUserId": "d2lOopc7", "issuedAt": "1995-04-19T00:00:00Z", "metadata": {"Vpdd6rCp": "yMrnH9YH"}, "namespace": "Xh7KnCVO", "nonceStr": "KY2zsBRG", "paymentMethod": "td8QY2OL", "paymentMethodFee": 2, "paymentOrderNo": "ijrvfr8h", "paymentProvider": "ADYEN", "paymentProviderFee": 26, "paymentStationUrl": "jWUWdMUX", "price": 67, "refundedTime": "1981-06-26T00:00:00Z", "salesTax": 30, "sandbox": false, "sku": "GLjdBxLM", "status": "CHARGED", "statusReason": "DAbTgmsE", "subscriptionId": "YEq2GkYK", "subtotalPrice": 43, "targetNamespace": "Ym9flXQ7", "targetUserId": "CQoemnQG", "tax": 6, "totalPrice": 66, "totalTax": 78, "txEndTime": "1994-11-02T00:00:00Z", "type": "9VEHTPqD", "userId": "hkcu5vnz", "vat": 65}' \
    --namespace 'iNMboBJH' \
    --orderNo 'ml0LJmpP' \
    --userId 'i4mqhrui' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserOrderNotification'
delete_file $TEMP_FILE

#- 183 downloadUserOrderReceipt
$ sample-apps Platform downloadUserOrderReceipt \
    --namespace 'CZLGGP5U' \
    --orderNo 'XkHNTMap' \
    --userId 'p5SbonsU' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 184 createUserPaymentOrder
$ sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "JKADr60E", "currencyNamespace": "kdFrpLsG", "customParameters": {"t9yTXWUS": {}}, "description": "CQcMsHN7", "extOrderNo": "reI22ks7", "extUserId": "I12tAZc8", "itemType": "CODE", "language": "xxLx9XQe", "metadata": {"qNWLm8cN": "JbYH5J4W"}, "notifyUrl": "iJLv9NvH", "omitNotification": true, "price": 39, "recurringPaymentOrderNo": "w2Mjcy9Z", "region": "L6Zs5Bu2", "returnUrl": "XYopLWZe", "sandbox": false, "sku": "tRpGgk1i", "subscriptionId": "seREzzRG", "title": "6z9wmuHd"}' \
    --namespace 'dyOdibI1' \
    --userId 'LVyqbdY8' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserPaymentOrder'
delete_file $TEMP_FILE

#- 185 refundUserPaymentOrder
$ sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "DGZKAuoI"}' \
    --namespace 'Kz3Pp3zL' \
    --paymentOrderNo 'WUxMzMtS' \
    --userId 'mMmZP8nG' \
    >$TEMP_FILE 2>&1
update_status $? 'refundUserPaymentOrder'
delete_file $TEMP_FILE

#- 186 applyUserRedemption
$ sample-apps Platform applyUserRedemption \
    --body '{"code": "0FoQP8q7", "orderNo": "aSsb85gA"}' \
    --namespace 'h9RD3ZzN' \
    --userId '6N1iJ8lt' \
    >$TEMP_FILE 2>&1
update_status $? 'applyUserRedemption'
delete_file $TEMP_FILE

#- 187 queryUserSubscriptions
$ sample-apps Platform queryUserSubscriptions \
    --namespace 't9IRqCfl' \
    --userId 'gln6r5f0' \
    --chargeStatus 'NEVER' \
    --itemId '5H6lCf3Q' \
    --limit '67' \
    --offset '1' \
    --sku '11hLLCgw' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserSubscriptions'
delete_file $TEMP_FILE

#- 188 getUserSubscriptionActivities
$ sample-apps Platform getUserSubscriptionActivities \
    --namespace '4LExdabD' \
    --userId '8g2cvHfM' \
    --excludeSystem 'True' \
    --limit '31' \
    --offset '59' \
    --subscriptionId 'A5xbjs3X' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 189 platformSubscribeSubscription
$ sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 86, "itemId": "dHUJ0GCm", "language": "flIXkgJ6", "reason": "zkTwoakq", "region": "7sEejFZ1", "source": "NtONXb9w"}' \
    --namespace '9hsQHszI' \
    --userId 'sfrlzKpQ' \
    >$TEMP_FILE 2>&1
update_status $? 'platformSubscribeSubscription'
delete_file $TEMP_FILE

#- 190 checkUserSubscriptionSubscribableByItemId
$ sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'dd58dZP5' \
    --userId 'RvrinNtv' \
    --itemId 'BtqFSkA6' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 191 getUserSubscription
$ sample-apps Platform getUserSubscription \
    --namespace '8mIVYJ5p' \
    --subscriptionId 'SVxBsLht' \
    --userId 'y3pecToX' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscription'
delete_file $TEMP_FILE

#- 192 deleteUserSubscription
$ sample-apps Platform deleteUserSubscription \
    --namespace 'A4M1oUFP' \
    --subscriptionId 'hgo7Z6mw' \
    --userId 'NC4FY69m' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSubscription'
delete_file $TEMP_FILE

#- 193 cancelSubscription
$ sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "oJNOGB83"}' \
    --namespace 'Ns6Hl5Po' \
    --subscriptionId 'ab6lKoVq' \
    --userId 'NBUzIxOf' \
    --force 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'cancelSubscription'
delete_file $TEMP_FILE

#- 194 grantDaysToSubscription
$ sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 23, "reason": "quS2q2Do"}' \
    --namespace 'Wr9zvFtK' \
    --subscriptionId 'a2mOAqOo' \
    --userId 'kV1plxQ2' \
    >$TEMP_FILE 2>&1
update_status $? 'grantDaysToSubscription'
delete_file $TEMP_FILE

#- 195 getUserSubscriptionBillingHistories
$ sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'YriTPfip' \
    --subscriptionId 'D67jI2hi' \
    --userId 'ZkrtLnh2' \
    --excludeFree 'False' \
    --limit '77' \
    --offset '46' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 196 processUserSubscriptionNotification
$ sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "kfNMPNtq"}, "authorisedTime": "1981-11-05T00:00:00Z", "chargebackReversedTime": "1983-01-11T00:00:00Z", "chargebackTime": "1993-04-14T00:00:00Z", "chargedTime": "1983-03-21T00:00:00Z", "createdTime": "1995-11-16T00:00:00Z", "currency": {"currencyCode": "ek83Igm1", "currencySymbol": "wkSWsYvA", "currencyType": "VIRTUAL", "decimals": 40, "namespace": "18obUdc8"}, "customParameters": {"mbvXcwcg": {}}, "extOrderNo": "MqOXMziX", "extTxId": "rVdsEc3C", "extUserId": "lFP3mJwu", "issuedAt": "1980-08-18T00:00:00Z", "metadata": {"BTe4kLcu": "qL40NYge"}, "namespace": "kRavpaGT", "nonceStr": "A9BTyCCy", "paymentMethod": "N4Fw9i6m", "paymentMethodFee": 68, "paymentOrderNo": "2W3tjjCq", "paymentProvider": "WXPAY", "paymentProviderFee": 100, "paymentStationUrl": "s01hEYzW", "price": 45, "refundedTime": "1998-05-06T00:00:00Z", "salesTax": 34, "sandbox": false, "sku": "xM0DPAXQ", "status": "REQUEST_FOR_INFORMATION", "statusReason": "NMP7j3xf", "subscriptionId": "PaoZaWFs", "subtotalPrice": 30, "targetNamespace": "kU5kn6Pl", "targetUserId": "PqD4Agfa", "tax": 37, "totalPrice": 55, "totalTax": 10, "txEndTime": "1972-04-04T00:00:00Z", "type": "BhZjZbLn", "userId": "mghKwPyV", "vat": 69}' \
    --namespace 'n3qaHP7K' \
    --subscriptionId 'NulyfrEN' \
    --userId 'VQkpcaWH' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 197 acquireUserTicket
$ sample-apps Platform acquireUserTicket \
    --body '{"count": 11, "orderNo": "6T2xOOlj"}' \
    --boothName 'n7c6c9ef' \
    --namespace 'JI02TZxr' \
    --userId 'gLBFJEkp' \
    >$TEMP_FILE 2>&1
update_status $? 'acquireUserTicket'
delete_file $TEMP_FILE

#- 198 checkWallet
$ sample-apps Platform checkWallet \
    --currencyCode 'hFz0h6Wp' \
    --namespace 'oVpVc2HB' \
    --userId 'Bmj6cEi0' \
    >$TEMP_FILE 2>&1
update_status $? 'checkWallet'
delete_file $TEMP_FILE

#- 199 creditUserWallet
$ sample-apps Platform creditUserWallet \
    --body '{"amount": 14, "reason": "Xl42ubCR", "source": "IAP"}' \
    --currencyCode 'y4GjKn5I' \
    --namespace 'tHXLDZqp' \
    --userId 'RhqnR742' \
    >$TEMP_FILE 2>&1
update_status $? 'creditUserWallet'
delete_file $TEMP_FILE

#- 200 payWithUserWallet
$ sample-apps Platform payWithUserWallet \
    --body '{"amount": 64}' \
    --currencyCode 'cbLuQOGM' \
    --namespace 'OEzmdjNh' \
    --userId 'T0S46kqy' \
    >$TEMP_FILE 2>&1
update_status $? 'payWithUserWallet'
delete_file $TEMP_FILE

#- 201 getUserWallet
$ sample-apps Platform getUserWallet \
    --namespace 'fMBSaZc4' \
    --userId 'SA16M8gQ' \
    --walletId 'CD7aBHWC' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserWallet'
delete_file $TEMP_FILE

#- 202 debitUserWallet
$ sample-apps Platform debitUserWallet \
    --body '{"amount": 8, "reason": "vNkfcQvl"}' \
    --namespace '4Oso7tx6' \
    --userId '5zXCiTfj' \
    --walletId 'orLFqTmI' \
    >$TEMP_FILE 2>&1
update_status $? 'debitUserWallet'
delete_file $TEMP_FILE

#- 203 disableUserWallet
$ sample-apps Platform disableUserWallet \
    --namespace 'UFUoonHB' \
    --userId 'I13SZFHf' \
    --walletId 'm0F8vS2B' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserWallet'
delete_file $TEMP_FILE

#- 204 enableUserWallet
$ sample-apps Platform enableUserWallet \
    --namespace 'rZ3nq88Y' \
    --userId 'SSD7zV0C' \
    --walletId '8FvVU3kR' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserWallet'
delete_file $TEMP_FILE

#- 205 listUserWalletTransactions
$ sample-apps Platform listUserWalletTransactions \
    --namespace 'XBGPXIdf' \
    --userId 't1biZHuh' \
    --walletId 'WyFPHdXc' \
    --limit '49' \
    --offset '42' \
    >$TEMP_FILE 2>&1
update_status $? 'listUserWalletTransactions'
delete_file $TEMP_FILE

#- 206 queryWallets
$ sample-apps Platform queryWallets \
    --namespace 'ZEhYeUSy' \
    --currencyCode '5Ukc65na' \
    --limit '82' \
    --offset '86' \
    --userId '8Xww9vq9' \
    >$TEMP_FILE 2>&1
update_status $? 'queryWallets'
delete_file $TEMP_FILE

#- 207 getWallet
$ sample-apps Platform getWallet \
    --namespace 'nMa2Btgw' \
    --walletId 'yuf2fjV3' \
    >$TEMP_FILE 2>&1
update_status $? 'getWallet'
delete_file $TEMP_FILE

#- 208 syncOrders
$ sample-apps Platform syncOrders \
    --nextEvaluatedKey '0SLxi7uy' \
    --end 'haeFtcO9' \
    --start 'XNy63QO9' \
    >$TEMP_FILE 2>&1
update_status $? 'syncOrders'
delete_file $TEMP_FILE

#- 209 testAdyenConfig
$ sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["vW0ck7TE"], "apiKey": "DE8LeEQB", "authoriseAsCapture": false, "blockedPaymentMethods": ["GPLiE6tH"], "liveEndpointUrlPrefix": "Cr0GPFvT", "merchantAccount": "0SAK91y5", "notificationHmacKey": "vCeBIJq0", "notificationPassword": "B9UcI6c5", "notificationUsername": "cre9ealH", "returnUrl": "OZphcLnc", "settings": "njnmyU8F"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfig'
delete_file $TEMP_FILE

#- 210 testAliPayConfig
$ sample-apps Platform testAliPayConfig \
    --body '{"appId": "XdCrskoF", "privateKey": "qnowq9La", "publicKey": "z1GLt5Mh", "returnUrl": "f8Z7ahmb"}' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfig'
delete_file $TEMP_FILE

#- 211 testCheckoutConfig
$ sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "2g7xAFfR", "secretKey": "RLUjfWS9"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfig'
delete_file $TEMP_FILE

#- 212 debugMatchedPaymentMerchantConfig
$ sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'ftIfHGe5' \
    --region 'bUTSXOv1' \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 213 testPayPalConfig
$ sample-apps Platform testPayPalConfig \
    --body '{"clientID": "2PMcRO6E", "clientSecret": "2Mkre5q7", "returnUrl": "FvaACp6h", "webHookId": "e0fzjkPN"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfig'
delete_file $TEMP_FILE

#- 214 testStripeConfig
$ sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["fgF6inIR"], "publishableKey": "sZ5hrqNz", "secretKey": "VszGVP5P", "webhookSecret": "1iwhcf30"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfig'
delete_file $TEMP_FILE

#- 215 testWxPayConfig
$ sample-apps Platform testWxPayConfig \
    --body '{"appId": "1KHRZHMG", "key": "y5vbfZvY", "mchid": "IFFctEKO", "returnUrl": "LxSRxe0w"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfig'
delete_file $TEMP_FILE

#- 216 testXsollaConfig
$ sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "mWBMcNiW", "flowCompletionUrl": "oobB6o6a", "merchantId": 23, "projectId": 90, "projectSecretKey": "QcP0EpE9"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfig'
delete_file $TEMP_FILE

#- 217 getPaymentMerchantConfig
$ sample-apps Platform getPaymentMerchantConfig \
    --id 'wGNVwkgf' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 218 updateAdyenConfig
$ sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["JJ2HIalf"], "apiKey": "zgRpTf9l", "authoriseAsCapture": true, "blockedPaymentMethods": ["F1JPBizX"], "liveEndpointUrlPrefix": "ZtrGe8Ly", "merchantAccount": "OH24nneZ", "notificationHmacKey": "HFeRld0b", "notificationPassword": "GA7JxWYz", "notificationUsername": "aEaimvok", "returnUrl": "cWX59kwi", "settings": "YHgHT6Iv"}' \
    --id 'd0fGpU20' \
    --sandbox 'False' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdyenConfig'
delete_file $TEMP_FILE

#- 219 testAdyenConfigById
$ sample-apps Platform testAdyenConfigById \
    --id 'lumQTFvr' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfigById'
delete_file $TEMP_FILE

#- 220 updateAliPayConfig
$ sample-apps Platform updateAliPayConfig \
    --body '{"appId": "RyYzaNmz", "privateKey": "3PjMx2T8", "publicKey": "9NTrFRUC", "returnUrl": "XFkruxeg"}' \
    --id 'pkcXCfzg' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAliPayConfig'
delete_file $TEMP_FILE

#- 221 testAliPayConfigById
$ sample-apps Platform testAliPayConfigById \
    --id 'v0WE5EQh' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfigById'
delete_file $TEMP_FILE

#- 222 updateCheckoutConfig
$ sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "omPS1E7c", "secretKey": "psLgr2zE"}' \
    --id 'njyRNjEC' \
    --sandbox 'True' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCheckoutConfig'
delete_file $TEMP_FILE

#- 223 testCheckoutConfigById
$ sample-apps Platform testCheckoutConfigById \
    --id 'cZvwwf8a' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfigById'
delete_file $TEMP_FILE

#- 224 updatePayPalConfig
$ sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "31mF4jlw", "clientSecret": "KyGxTF1l", "returnUrl": "5q1Np0sT", "webHookId": "1X8J2eAW"}' \
    --id 'Ozjmh9Uz' \
    --sandbox 'False' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePayPalConfig'
delete_file $TEMP_FILE

#- 225 testPayPalConfigById
$ sample-apps Platform testPayPalConfigById \
    --id 'hoo6xUmT' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfigById'
delete_file $TEMP_FILE

#- 226 updateStripeConfig
$ sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["eUnJFM7X"], "publishableKey": "hoDxGik2", "secretKey": "JSfZ64wW", "webhookSecret": "ePq6103P"}' \
    --id 'ONKIS7F9' \
    --sandbox 'False' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStripeConfig'
delete_file $TEMP_FILE

#- 227 testStripeConfigById
$ sample-apps Platform testStripeConfigById \
    --id 'W4R15tAs' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfigById'
delete_file $TEMP_FILE

#- 228 updateWxPayConfig
$ sample-apps Platform updateWxPayConfig \
    --body '{"appId": "G31CEyUO", "key": "uOZhmnHk", "mchid": "vek6Aa5k", "returnUrl": "Nnoclxs9"}' \
    --id 'kxcvIpV7' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfig'
delete_file $TEMP_FILE

#- 229 updateWxPayConfigCert
$ sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'CYfWKjY9' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfigCert'
delete_file $TEMP_FILE

#- 230 testWxPayConfigById
$ sample-apps Platform testWxPayConfigById \
    --id 'CsQYsGyh' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfigById'
delete_file $TEMP_FILE

#- 231 updateXsollaConfig
$ sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "EOntEked", "flowCompletionUrl": "M1A0bFqv", "merchantId": 18, "projectId": 46, "projectSecretKey": "bT3YuVda"}' \
    --id 'BN5RSjhc' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaConfig'
delete_file $TEMP_FILE

#- 232 testXsollaConfigById
$ sample-apps Platform testXsollaConfigById \
    --id 'uDvNrXL8' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfigById'
delete_file $TEMP_FILE

#- 233 updateXsollaUIConfig
$ sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    --id 'Z0hqJLjQ' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaUIConfig'
delete_file $TEMP_FILE

#- 234 queryPaymentProviderConfig
$ sample-apps Platform queryPaymentProviderConfig \
    --limit '92' \
    --namespace 'moYUnC84' \
    --offset '80' \
    --region 'BNuLZtof' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 235 createPaymentProviderConfig
$ sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "AaMpBQAr", "region": "U4RS0FQR", "sandboxTaxJarApiToken": "y5Qz5Vcy", "specials": ["XSOLLA"], "taxJarApiToken": "BpHjtvFw", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentProviderConfig'
delete_file $TEMP_FILE

#- 236 getAggregatePaymentProviders
$ sample-apps Platform getAggregatePaymentProviders \
    >$TEMP_FILE 2>&1
update_status $? 'getAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 237 debugMatchedPaymentProviderConfig
$ sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'qvpevcVX' \
    --region 'Txs9LTor' \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 getSpecialPaymentProviders
$ sample-apps Platform getSpecialPaymentProviders \
    >$TEMP_FILE 2>&1
update_status $? 'getSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 239 updatePaymentProviderConfig
$ sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "x23LhLy7", "region": "ds3g3BuH", "sandboxTaxJarApiToken": "TPF19dBY", "specials": ["PAYPAL"], "taxJarApiToken": "ws5Ya4eO", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --id 'W8HiLpTi' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 240 deletePaymentProviderConfig
$ sample-apps Platform deletePaymentProviderConfig \
    --id '1W63Hccg' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 241 getPaymentTaxConfig
$ sample-apps Platform getPaymentTaxConfig \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxConfig'
delete_file $TEMP_FILE

#- 242 updatePaymentTaxConfig
$ sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "M5kYu36J", "taxJarApiToken": "pTL55W4w", "taxJarEnabled": true, "taxJarProductCodesMapping": {"3KCyplY1": "ocKDCVaq"}}' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 243 syncPaymentOrders
$ sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'rVeegT3u' \
    --end 'GDIIcvuu' \
    --start 'okt8TC38' \
    >$TEMP_FILE 2>&1
update_status $? 'syncPaymentOrders'
delete_file $TEMP_FILE

#- 244 publicGetRootCategories
$ sample-apps Platform publicGetRootCategories \
    --namespace 'mYoUanQT' \
    --language '4Mmznv7r' \
    --storeId '2jthibge' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRootCategories'
delete_file $TEMP_FILE

#- 245 downloadCategories
$ sample-apps Platform downloadCategories \
    --namespace 'CLX41qyO' \
    --language 'iLgd8Wy7' \
    --storeId '39QHzw0T' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadCategories'
delete_file $TEMP_FILE

#- 246 publicGetCategory
$ sample-apps Platform publicGetCategory \
    --categoryPath 'Ezpd7TV5' \
    --namespace 'vhMM2i3D' \
    --language 'M6etfI7T' \
    --storeId 'zC3sKmts' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCategory'
delete_file $TEMP_FILE

#- 247 publicGetChildCategories
$ sample-apps Platform publicGetChildCategories \
    --categoryPath 'yEKdO6HN' \
    --namespace 'm3zGu71q' \
    --language 'TSSJEbWl' \
    --storeId 'ETp9XOCA' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetChildCategories'
delete_file $TEMP_FILE

#- 248 publicGetDescendantCategories
$ sample-apps Platform publicGetDescendantCategories \
    --categoryPath '1X3HHMTl' \
    --namespace 'akAWQfBu' \
    --language 'BAOCjBfY' \
    --storeId 'Ccplye2G' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetDescendantCategories'
delete_file $TEMP_FILE

#- 249 publicListCurrencies
$ sample-apps Platform publicListCurrencies \
    --namespace 'aPNzkrgB' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListCurrencies'
delete_file $TEMP_FILE

#- 250 publicGetItemByAppId
$ sample-apps Platform publicGetItemByAppId \
    --namespace 'H4icml6L' \
    --language '36Vg2F2Q' \
    --region '9aZDJg1O' \
    --storeId 'T8109ot7' \
    --appId '0TevJgsb' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemByAppId'
delete_file $TEMP_FILE

#- 251 publicQueryItems
$ sample-apps Platform publicQueryItems \
    --namespace '2PyFfJ6q' \
    --appType 'DEMO' \
    --baseAppId 'HABdGtV9' \
    --categoryPath 'jAPqon7U' \
    --features 'mLNy9PkF' \
    --itemType 'COINS' \
    --language 'lbWNcAxv' \
    --limit '40' \
    --offset '66' \
    --region 'DqJtYC7r' \
    --sortBy 'znwNdLhq' \
    --storeId 'XvXVnjvc' \
    --tags '0BMegJpW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryItems'
delete_file $TEMP_FILE

#- 252 publicGetItemBySku
$ sample-apps Platform publicGetItemBySku \
    --namespace '1ZeuhpLX' \
    --language '1BHZ4hnO' \
    --region 'mmyXu6Xt' \
    --storeId 'jNCqYk9T' \
    --sku 'PUKcDTfR' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemBySku'
delete_file $TEMP_FILE

#- 253 publicBulkGetItems
$ sample-apps Platform publicBulkGetItems \
    --namespace '7dpUEo2O' \
    --language 'e08HpeJB' \
    --region 'fG0nGZHe' \
    --storeId '5lw2TlkP' \
    --itemIds 'IxL9v4fp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetItems'
delete_file $TEMP_FILE

#- 254 publicSearchItems
$ sample-apps Platform publicSearchItems \
    --namespace 'Cd0Uk5h1' \
    --limit '21' \
    --offset '83' \
    --region '1pkkT08C' \
    --storeId 's6DdXZWo' \
    --keyword 'wBgZizMv' \
    --language 'wHszf84M' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchItems'
delete_file $TEMP_FILE

#- 255 publicGetApp
$ sample-apps Platform publicGetApp \
    --itemId 'AmayJJ6v' \
    --namespace 'zDTXxsyI' \
    --language 'aTgp0pwn' \
    --region 'EJL15kxO' \
    --storeId '4oVUPng5' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetApp'
delete_file $TEMP_FILE

#- 256 publicGetItemDynamicData
$ sample-apps Platform publicGetItemDynamicData \
    --itemId 'JsHAkI47' \
    --namespace 'jO1wuAFu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemDynamicData'
delete_file $TEMP_FILE

#- 257 publicGetItem
$ sample-apps Platform publicGetItem \
    --itemId 'ZcUwPteK' \
    --namespace 'dQgUTF33' \
    --language 'fYWZfQMA' \
    --populateBundle 'False' \
    --region 'ziThaE2b' \
    --storeId 'tn0up9Ge' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItem'
delete_file $TEMP_FILE

#- 258 getPaymentCustomization
$ sample-apps Platform getPaymentCustomization \
    --namespace 'TQ7XymDS' \
    --sandbox 'True' \
    --paymentProvider 'PAYPAL' \
    --region 'ZyFhIeqi' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCustomization'
delete_file $TEMP_FILE

#- 259 publicGetPaymentUrl
$ sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "NHtVSnhx", "paymentProvider": "WALLET", "returnUrl": "y8F6xF8M", "ui": "hbJAYEDN", "zipCode": "1xszppR6"}' \
    --namespace '9nsKAS5z' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentUrl'
delete_file $TEMP_FILE

#- 260 publicGetPaymentMethods
$ sample-apps Platform publicGetPaymentMethods \
    --namespace 'KsTRXd7b' \
    --paymentOrderNo '3v2fkZIk' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentMethods'
delete_file $TEMP_FILE

#- 261 publicGetUnpaidPaymentOrder
$ sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'r06ojUto' \
    --paymentOrderNo 'VJLGXeko' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 262 pay
$ sample-apps Platform pay \
    --body '{"token": "mvwD849m"}' \
    --namespace 'o5vIkDZY' \
    --paymentOrderNo 'rYEf1xYn' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'xHHXjFoX' \
    >$TEMP_FILE 2>&1
update_status $? 'pay'
delete_file $TEMP_FILE

#- 263 publicCheckPaymentOrderPaidStatus
$ sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'twKW6AOn' \
    --paymentOrderNo 'qnWCuXMW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 264 getPaymentPublicConfig
$ sample-apps Platform getPaymentPublicConfig \
    --namespace 'qG8fNprJ' \
    --sandbox 'True' \
    --paymentProvider 'PAYPAL' \
    --region 'AFexNou1' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentPublicConfig'
delete_file $TEMP_FILE

#- 265 publicGetQRCode
$ sample-apps Platform publicGetQRCode \
    --namespace 'AicsQjKx' \
    --code '5LjetHEw' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetQRCode'
delete_file $TEMP_FILE

#- 266 publicNormalizePaymentReturnUrl
$ sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace '0aCQpU6E' \
    --payerID 'GOW0VAI8' \
    --foreinginvoice '7DPH0fLL' \
    --invoiceId 'iUqzay0g' \
    --payload 'ET8T53yE' \
    --resultCode 'ej7DsqsT' \
    --status 'vNKAXqfq' \
    --token 'MJHGeHaN' \
    --type '2k1Eutm9' \
    --userId 'AAWDcDv3' \
    --orderNo 'ISBgZCAf' \
    --paymentOrderNo '2pWOWs4I' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'OHfiu4Hr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 267 getPaymentTaxValue
$ sample-apps Platform getPaymentTaxValue \
    --namespace 'aKYMtgBm' \
    --zipCode 'vCHMtF15' \
    --paymentOrderNo 'a7T0Ihey' \
    --paymentProvider 'WALLET' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxValue'
delete_file $TEMP_FILE

#- 268 getRewardByCode
$ sample-apps Platform getRewardByCode \
    --namespace 'iPE1WUR1' \
    --rewardCode 'PTFfJJ46' \
    >$TEMP_FILE 2>&1
update_status $? 'getRewardByCode'
delete_file $TEMP_FILE

#- 269 queryRewards1
$ sample-apps Platform queryRewards1 \
    --namespace 'kzfqapbB' \
    --eventTopic 'yIKoYzYt' \
    --limit '91' \
    --offset '97' \
    --sortBy 'JA3nFCDg' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards1'
delete_file $TEMP_FILE

#- 270 getReward1
$ sample-apps Platform getReward1 \
    --namespace 'WOpz3yPQ' \
    --rewardId 'fqbeVG7i' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward1'
delete_file $TEMP_FILE

#- 271 publicListStores
$ sample-apps Platform publicListStores \
    --namespace '4VTAhuFY' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListStores'
delete_file $TEMP_FILE

#- 272 publicExistsAnyMyActiveEntitlement
$ sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'hEgQBb9H' \
    --appIds '["ni6lDMj9"]' \
    --itemIds '["gvkBcQjQ"]' \
    --skus '["56RuAvUl"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 273 publicGetMyAppEntitlementOwnershipByAppId
$ sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'MWp8WGpZ' \
    --appId 'xCe0KsmX' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 274 publicGetMyEntitlementOwnershipByItemId
$ sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'tGBbKrV5' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ThQ52PYN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 275 publicGetMyEntitlementOwnershipBySku
$ sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'knBCjirw' \
    --entitlementClazz 'APP' \
    --sku 'mfMSl2bE' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 276 publicGetEntitlementOwnershipToken
$ sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'TuFLFOfd' \
    --appIds '["l0yRndbO"]' \
    --itemIds '["78R8ybYs"]' \
    --skus '["Hx3BIgGu"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 277 publicGetMyWallet
$ sample-apps Platform publicGetMyWallet \
    --currencyCode 'o817lZA5' \
    --namespace '8OI2LMYR' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyWallet'
delete_file $TEMP_FILE

#- 278 publicSyncPsnDlcInventory
$ sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 99}' \
    --namespace '16nfCJ83' \
    --userId '3JKRNcdp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 279 syncSteamDLC
$ sample-apps Platform syncSteamDLC \
    --body '{"appId": "uCxSDFWM", "steamId": "VcsOZlS0"}' \
    --namespace 'ulerU61d' \
    --userId 'rwLngbZx' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamDLC'
delete_file $TEMP_FILE

#- 280 syncXboxDLC
$ sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "OGxFwnmB"}' \
    --namespace '60ea7XIt' \
    --userId 'ZS8KIu9T' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxDLC'
delete_file $TEMP_FILE

#- 281 publicQueryUserEntitlements
$ sample-apps Platform publicQueryUserEntitlements \
    --namespace '604oPajg' \
    --userId 'yShKuLB7' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'ZiWVmc8P' \
    --itemId '["VwShVQz7"]' \
    --limit '62' \
    --offset '15' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 282 publicGetUserAppEntitlementByAppId
$ sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace '2oVVScVv' \
    --userId '3YTBM4te' \
    --appId 'OpqevsWv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 283 publicQueryUserEntitlementsByAppType
$ sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'MhiheE2K' \
    --userId 'M7Ctal5z' \
    --limit '14' \
    --offset '74' \
    --appType 'DLC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 284 publicGetUserEntitlementByItemId
$ sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'OYz1jFfu' \
    --userId '1y1d77D8' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'OfHyenhb' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 285 publicGetUserEntitlementBySku
$ sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'RZ4a9Ujj' \
    --userId 'jU0EggYL' \
    --entitlementClazz 'APP' \
    --sku 'GiEDZbDl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 286 publicExistsAnyUserActiveEntitlement
$ sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace '9ZeZH3M8' \
    --userId '7v0FhdKD' \
    --appIds '["EfXRhaO0"]' \
    --itemIds '["AYSqvcV2"]' \
    --skus '["LqfgCX28"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 287 publicGetUserAppEntitlementOwnershipByAppId
$ sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'Je4kyPQj' \
    --userId 'gDJNOEMt' \
    --appId 'dEtN4sEe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 288 publicGetUserEntitlementOwnershipByItemId
$ sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'bnQucgao' \
    --userId 'p5NEdhur' \
    --entitlementClazz 'APP' \
    --itemId 'NiUxnJUe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 289 publicGetUserEntitlementOwnershipBySku
$ sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'wUVhkGRR' \
    --userId 'TgLCb9ev' \
    --entitlementClazz 'MEDIA' \
    --sku 'wZywunLI' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 290 publicGetUserEntitlement
$ sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'mNhyZsb7' \
    --namespace 'YhhQbDxL' \
    --userId 'RKxzUtpK' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlement'
delete_file $TEMP_FILE

#- 291 publicConsumeUserEntitlement
$ sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 58}' \
    --entitlementId 'C8gl2otj' \
    --namespace 'UWKxgW6n' \
    --userId '8AJaeqxT' \
    >$TEMP_FILE 2>&1
update_status $? 'publicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 292 publicRedeemCode
$ sample-apps Platform publicRedeemCode \
    --body '{"code": "PgZKFi3S", "language": "BGlCD4ig", "region": "5ZRoJd1a"}' \
    --namespace 's1Wkfh3l' \
    --userId '8HyGWZTd' \
    >$TEMP_FILE 2>&1
update_status $? 'publicRedeemCode'
delete_file $TEMP_FILE

#- 293 publicFulfillAppleIAPItem
$ sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "mTxPUBFj", "productId": "TIIKcXlx", "receiptData": "PfdDyjJ0", "region": "wwrYeljM", "transactionId": "yoeb3gsM"}' \
    --namespace 'OMdqbt4P' \
    --userId 'nuFr18ij' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 294 syncEpicGamesInventory
$ sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "p3CmzrfV"}' \
    --namespace 'Ia1vi9ok' \
    --userId 'y2P7fIgB' \
    >$TEMP_FILE 2>&1
update_status $? 'syncEpicGamesInventory'
delete_file $TEMP_FILE

#- 295 publicFulfillGoogleIAPItem
$ sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"language": "RSBlxuko", "orderId": "OTCosjAX", "packageName": "o6ljBVW8", "productId": "r7nyNcVl", "purchaseTime": 54, "purchaseToken": "3bGHupBu", "region": "AL2avXKO"}' \
    --namespace 'jwGRJbZq' \
    --userId 'XgQ9azOr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 296 publicReconcilePlayStationStore
$ sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "eTsviZmg", "price": 0.19862507153736353, "productId": "l8Yr4wmg", "serviceLabel": 17}' \
    --namespace 'wIF5Zx5T' \
    --userId 'IIhBtL3z' \
    >$TEMP_FILE 2>&1
update_status $? 'publicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 297 syncStadiaEntitlement
$ sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "T6xRqyV0", "language": "tlLaMYL1", "region": "p95v9mOi", "stadiaPlayerId": "IFEdQ2RK"}' \
    --namespace 'eQy2WRzt' \
    --userId 'R5qztuhV' \
    >$TEMP_FILE 2>&1
update_status $? 'syncStadiaEntitlement'
delete_file $TEMP_FILE

#- 298 syncSteamInventory
$ sample-apps Platform syncSteamInventory \
    --body '{"appId": "aJDWx2Od", "currencyCode": "rUV7bhcK", "language": "GIOZcB6N", "price": 0.7646287090287336, "productId": "fXkYzes2", "region": "xHp1ufZN", "steamId": "xhbsaSFt"}' \
    --namespace 'TmbIf2hF' \
    --userId 'QRmsi02m' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamInventory'
delete_file $TEMP_FILE

#- 299 syncXboxInventory
$ sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "elJQkLtV", "price": 0.8566201304375997, "productId": "nPsmhFVP", "xstsToken": "tJTGig12"}' \
    --namespace 'OdDnxXuJ' \
    --userId 'oZgOG4tO' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxInventory'
delete_file $TEMP_FILE

#- 300 publicQueryUserOrders
$ sample-apps Platform publicQueryUserOrders \
    --namespace 'eWVMI9K1' \
    --userId 'eJ6xC2h6' \
    --itemId 'U8TgR2k2' \
    --limit '87' \
    --offset '20' \
    --status 'INIT' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserOrders'
delete_file $TEMP_FILE

#- 301 publicCreateUserOrder
$ sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "r8XbmQNu", "discountedPrice": 43, "ext": {"80Em9nuf": {}}, "itemId": "fLGUWnVB", "language": "QPhwwHR0", "price": 32, "quantity": 49, "region": "fFcSCdkf", "returnUrl": "e5eawFpd"}' \
    --namespace 'HeH5p8Zx' \
    --userId '8jy7nxGz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserOrder'
delete_file $TEMP_FILE

#- 302 publicGetUserOrder
$ sample-apps Platform publicGetUserOrder \
    --namespace 'OTBpmmju' \
    --orderNo 'EEEyDtwb' \
    --userId 'tA8xsmmc' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrder'
delete_file $TEMP_FILE

#- 303 publicCancelUserOrder
$ sample-apps Platform publicCancelUserOrder \
    --namespace 'aOLdFifU' \
    --orderNo 'k9p700jB' \
    --userId '0p4HpK8p' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserOrder'
delete_file $TEMP_FILE

#- 304 publicGetUserOrderHistories
$ sample-apps Platform publicGetUserOrderHistories \
    --namespace 'vufSxYM0' \
    --orderNo 'VkuqOKrh' \
    --userId 'vMwvD04U' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 305 publicDownloadUserOrderReceipt
$ sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'Y8ghvsmS' \
    --orderNo 'rrJzAi6F' \
    --userId 'OuhQIBAb' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 306 publicGetPaymentAccounts
$ sample-apps Platform publicGetPaymentAccounts \
    --namespace 'up1fpWsO' \
    --userId '6fW468fW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 307 publicDeletePaymentAccount
$ sample-apps Platform publicDeletePaymentAccount \
    --id 'xqRkJDjf' \
    --namespace 'NhYDgVm0' \
    --type 'paypal' \
    --userId 'aos4wyja' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 308 publicQueryUserSubscriptions
$ sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'PP6ClekQ' \
    --userId 'Gm25KYmF' \
    --chargeStatus 'NEVER' \
    --itemId 'Qr4xbV63' \
    --limit '13' \
    --offset '5' \
    --sku 'dU4vyIPJ' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 309 publicSubscribeSubscription
$ sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "Cj7UK5nE", "itemId": "mwsQtSfD", "language": "qA4CysEX", "region": "4VOy0n2E", "returnUrl": "kPBjC4ec", "source": "HwtSGzay"}' \
    --namespace 'UaDh3m2e' \
    --userId 'X31qVPH2' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubscribeSubscription'
delete_file $TEMP_FILE

#- 310 publicCheckUserSubscriptionSubscribableByItemId
$ sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'VHDznf57' \
    --userId 'fQ1PY5uD' \
    --itemId 'kQ8zpNRw' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 311 publicGetUserSubscription
$ sample-apps Platform publicGetUserSubscription \
    --namespace 'ycEAShpF' \
    --subscriptionId 'LpqAx1N5' \
    --userId 'IGebNuvy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscription'
delete_file $TEMP_FILE

#- 312 publicChangeSubscriptionBillingAccount
$ sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'rghVdsSw' \
    --subscriptionId 'Dc9NJRX9' \
    --userId 'ZdaC8sja' \
    >$TEMP_FILE 2>&1
update_status $? 'publicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 313 publicCancelSubscription
$ sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "ucGSSxZJ"}' \
    --namespace 'Pto04wTE' \
    --subscriptionId 'I8isXmyA' \
    --userId 'GW2rZ7bY' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelSubscription'
delete_file $TEMP_FILE

#- 314 publicGetUserSubscriptionBillingHistories
$ sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'vVW26Oay' \
    --subscriptionId 'sx72rwV3' \
    --userId 'MdXNVRDz' \
    --excludeFree 'True' \
    --limit '55' \
    --offset '2' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 315 publicGetWallet
$ sample-apps Platform publicGetWallet \
    --currencyCode 'flg7cD24' \
    --namespace '7c1XYYJf' \
    --userId '18StYu6w' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetWallet'
delete_file $TEMP_FILE

#- 316 publicListUserWalletTransactions
$ sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'b2We3Q6P' \
    --namespace 'm7RBkqWD' \
    --userId 'PEP4CWnZ' \
    --limit '71' \
    --offset '18' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT