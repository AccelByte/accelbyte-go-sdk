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

OPERATIONS_COUNT=320

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

#- 1 listFulfillmentScripts
samples/cli/sample-apps Platform listFulfillmentScripts \
    >$TEMP_FILE 2>&1
update_status $? 'listFulfillmentScripts'
delete_file $TEMP_FILE

#- 2 testFulfillmentScriptEval
samples/cli/sample-apps Platform testFulfillmentScriptEval \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 getFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'SMNcoAAO' \
    >$TEMP_FILE 2>&1
update_status $? 'getFulfillmentScript'
delete_file $TEMP_FILE

#- 4 createFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --body '{"grantDays": "jKNjfcYH"}' \
    --id 'm093aYgB' \
    >$TEMP_FILE 2>&1
update_status $? 'createFulfillmentScript'
delete_file $TEMP_FILE

#- 5 deleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'U1sqjyK0' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 updateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --body '{"grantDays": "XH45PaRS"}' \
    --id 'OFQBtu23' \
    >$TEMP_FILE 2>&1
update_status $? 'updateFulfillmentScript'
delete_file $TEMP_FILE

#- 7 queryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace 'REZ8hRVX' \
    --limit '74' \
    --name 'GOvDdYiQ' \
    --offset '89' \
    --tag '9i7mV1C9' \
    >$TEMP_FILE 2>&1
update_status $? 'queryCampaigns'
delete_file $TEMP_FILE

#- 8 createCampaign
samples/cli/sample-apps Platform createCampaign \
    --body '{"description": "1pjG9gpx", "items": [{"extraSubscriptionDays": 75, "itemId": "6ycTQdvl", "itemName": "n2LAuSQW", "quantity": 61}], "maxRedeemCountPerCampaignPerUser": 99, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 62, "name": "E1YHo9m1", "redeemEnd": "1998-01-13T00:00:00Z", "redeemStart": "1974-09-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bNYqgUqs"], "type": "REDEMPTION"}' \
    --namespace 'ArFPiHUI' \
    >$TEMP_FILE 2>&1
update_status $? 'createCampaign'
delete_file $TEMP_FILE

#- 9 getCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'vaCv8kU9' \
    --namespace 'dBBpdsJL' \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaign'
delete_file $TEMP_FILE

#- 10 updateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --body '{"description": "hsVyExrk", "items": [{"extraSubscriptionDays": 46, "itemId": "oot0B7WO", "itemName": "fercZdpM", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 17, "maxRedeemCountPerCode": 58, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 88, "name": "fExaI3uz", "redeemEnd": "1989-05-29T00:00:00Z", "redeemStart": "1973-11-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Alt4hr7H"]}' \
    --campaignId 'mOYiBA5l' \
    --namespace 'tAOXmlG6' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCampaign'
delete_file $TEMP_FILE

#- 11 getCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'eh1dTdoT' \
    --namespace 'FpBIcuC1' \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaignDynamic'
delete_file $TEMP_FILE

#- 12 getRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace 'dQY93OJn' \
    --storeId 'J6Te9vD8' \
    >$TEMP_FILE 2>&1
update_status $? 'getRootCategories'
delete_file $TEMP_FILE

#- 13 createCategory
samples/cli/sample-apps Platform createCategory \
    --body '{"categoryPath": "ldz7Hu8A", "localizationDisplayNames": {"D79kdWun": "vizU0q1p"}}' \
    --namespace 'HyhhERoG' \
    --storeId 'gdrysMiz' \
    >$TEMP_FILE 2>&1
update_status $? 'createCategory'
delete_file $TEMP_FILE

#- 14 listCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace 'BGSRdP2l' \
    --storeId '7DNSZ8Aq' \
    >$TEMP_FILE 2>&1
update_status $? 'listCategoriesBasic'
delete_file $TEMP_FILE

#- 15 getCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '0XiPLQXS' \
    --namespace 'e07ZddOG' \
    --storeId 'TMlJjBwj' \
    >$TEMP_FILE 2>&1
update_status $? 'getCategory'
delete_file $TEMP_FILE

#- 16 updateCategory
samples/cli/sample-apps Platform updateCategory \
    --body '{"localizationDisplayNames": {"9HJHQKse": "EdSXRDSv"}}' \
    --categoryPath 'guauw1xT' \
    --namespace '7eMwSl9M' \
    --storeId 'LH0NnTJ2' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCategory'
delete_file $TEMP_FILE

#- 17 deleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ulNzBvwJ' \
    --namespace 'aQa547Jl' \
    --storeId 'lvA8RWSp' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCategory'
delete_file $TEMP_FILE

#- 18 getChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'abUt7xk6' \
    --namespace 'QxyWhfqo' \
    --storeId 'WfJw2o8o' \
    >$TEMP_FILE 2>&1
update_status $? 'getChildCategories'
delete_file $TEMP_FILE

#- 19 getDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'WUqvPCZ2' \
    --namespace 'HzT7NXmW' \
    --storeId 'DlXsuNId' \
    >$TEMP_FILE 2>&1
update_status $? 'getDescendantCategories'
delete_file $TEMP_FILE

#- 20 queryCodes
samples/cli/sample-apps Platform queryCodes \
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
samples/cli/sample-apps Platform createCodes \
    --body '{"quantity": 9}' \
    --campaignId 'kJgvg6h5' \
    --namespace 'HIpH0Dvi' \
    >$TEMP_FILE 2>&1
update_status $? 'createCodes'
delete_file $TEMP_FILE

#- 22 download
samples/cli/sample-apps Platform download \
    --campaignId 'plEk4vj3' \
    --namespace 'LDp4yqDt' \
    --batchNo '85' \
    >$TEMP_FILE 2>&1
update_status $? 'download'
delete_file $TEMP_FILE

#- 23 bulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'UZDpxlHa' \
    --namespace 'sinGcjrk' \
    --batchNo '25' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkDisableCodes'
delete_file $TEMP_FILE

#- 24 bulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'RMttgjDS' \
    --namespace 'aIVBmft3' \
    --batchNo '93' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkEnableCodes'
delete_file $TEMP_FILE

#- 25 queryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
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
samples/cli/sample-apps Platform getCode \
    --code '5xtvd28O' \
    --namespace 'UfCt8UJC' \
    --redeemable 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'getCode'
delete_file $TEMP_FILE

#- 27 disableCode
samples/cli/sample-apps Platform disableCode \
    --code 'lNyj6HsT' \
    --namespace 'tX8P3lln' \
    >$TEMP_FILE 2>&1
update_status $? 'disableCode'
delete_file $TEMP_FILE

#- 28 enableCode
samples/cli/sample-apps Platform enableCode \
    --code 'aaS9lqyy' \
    --namespace 'gPcfkJIx' \
    >$TEMP_FILE 2>&1
update_status $? 'enableCode'
delete_file $TEMP_FILE

#- 29 listCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace 'fQZza8kN' \
    >$TEMP_FILE 2>&1
update_status $? 'listCurrencies'
delete_file $TEMP_FILE

#- 30 createCurrency
samples/cli/sample-apps Platform createCurrency \
    --body '{"currencyCode": "VbDxVMq7", "currencySymbol": "HJk0F89x", "currencyType": "VIRTUAL", "decimals": 5, "localizationDescriptions": {"3YVfaENt": "rl0pTKZT"}}' \
    --namespace 'XqzHuBMY' \
    >$TEMP_FILE 2>&1
update_status $? 'createCurrency'
delete_file $TEMP_FILE

#- 31 updateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --body '{"localizationDescriptions": {"QSA2jz1Z": "OpdOjSyM"}}' \
    --currencyCode 'ddB41JuM' \
    --namespace 'f7RUyBHR' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCurrency'
delete_file $TEMP_FILE

#- 32 deleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'j8IiRimR' \
    --namespace 'llHT6Dc4' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCurrency'
delete_file $TEMP_FILE

#- 33 getCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '0vFFA6gp' \
    --namespace 'U7EW3x1d' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencyConfig'
delete_file $TEMP_FILE

#- 34 getCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Cpm55gOe' \
    --namespace 'qQIqcJVK' \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencySummary'
delete_file $TEMP_FILE

#- 35 getDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace 'mBM1J1Ib' \
    >$TEMP_FILE 2>&1
update_status $? 'getDLCItemConfig'
delete_file $TEMP_FILE

#- 36 updateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --body '{"data": [{"id": "uTrrkbmu", "rewards": [{"currency": {"currencyCode": "T1whOqmE", "namespace": "nDXIWrBP"}, "item": {"itemId": "lSay46mv", "itemSku": "71BAZAOj", "itemType": "tFJ2vmTj"}, "quantity": 39, "type": "CURRENCY"}]}]}' \
    --namespace 'dCkIsZoA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDLCItemConfig'
delete_file $TEMP_FILE

#- 37 deleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace 'rWwPHcyF' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDLCItemConfig'
delete_file $TEMP_FILE

#- 38 getPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace 'AdAtYciL' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlatformDLCConfig'
delete_file $TEMP_FILE

#- 39 updatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"gRwFRr0g": "wB9tz3vp"}}]}' \
    --namespace '99XVlV8r' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlatformDLCConfig'
delete_file $TEMP_FILE

#- 40 deletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace 'K3tE6n0s' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlatformDLCConfig'
delete_file $TEMP_FILE

#- 41 queryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
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
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'H01o6Ndc' \
    --namespace 'BIgzrDyW' \
    >$TEMP_FILE 2>&1
update_status $? 'getEntitlement'
delete_file $TEMP_FILE

#- 43 queryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace 'pFBYGmmB' \
    --limit '1' \
    --offset '44' \
    --status 'SUCCESS' \
    --userId 'oKyNpdAa' \
    >$TEMP_FILE 2>&1
update_status $? 'queryFulfillmentHistories'
delete_file $TEMP_FILE

#- 44 getAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace 'sm8xwUfz' \
    >$TEMP_FILE 2>&1
update_status $? 'getAppleIAPConfig'
delete_file $TEMP_FILE

#- 45 updateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --body '{"bundleId": "OlQiZY4N", "password": "bOQXJ7uO"}' \
    --namespace 'TzNMvuq2' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAppleIAPConfig'
delete_file $TEMP_FILE

#- 46 deleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace 'tNl4CX4I' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 47 getEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace 'jiK4DEUJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 48 updateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --body '{"sandboxId": "RVK3l9Eb"}' \
    --namespace '0R1XRb0R' \
    >$TEMP_FILE 2>&1
update_status $? 'updateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 49 deleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace 'H8vS1sme' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 50 getGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace 'OlngrdTX' \
    >$TEMP_FILE 2>&1
update_status $? 'getGoogleIAPConfig'
delete_file $TEMP_FILE

#- 51 updateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --body '{"applicationName": "CzaPBtkZ", "serviceAccountId": "Mio4wcyh"}' \
    --namespace 'loVS3rYp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 52 deleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace '8QtcEmCE' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 53 updateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --file 'tmp.dat' \
    --namespace 'Vc75Ufey' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleP12File'
delete_file $TEMP_FILE

#- 54 getIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace 'pWjDNhzC' \
    >$TEMP_FILE 2>&1
update_status $? 'getIAPItemConfig'
delete_file $TEMP_FILE

#- 55 updateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --body '{"data": [{"itemIdentity": "L5sWS2qw", "platformProductIdMap": {"O763iEkl": "kzLm88Lp"}}]}' \
    --namespace 'LuYRO3C5' \
    >$TEMP_FILE 2>&1
update_status $? 'updateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 deleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace '5yHpwK2J' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 getPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace 'aqenDGn7' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 updatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --body '{"environment": "a2NUplWi"}' \
    --namespace 'Ljq06n6a' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 deletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace '0rW8Efkp' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 getStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace 'aXtwYZJa' \
    >$TEMP_FILE 2>&1
update_status $? 'getStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 deleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace 'Q4WbwNms' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 updateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --file 'tmp.dat' \
    --namespace 'FYetjEur' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 getSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace 'H8eloJzN' \
    >$TEMP_FILE 2>&1
update_status $? 'getSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 updateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --body '{"publisherAuthenticationKey": "KtRUaTz1"}' \
    --namespace 'ETdsmwzj' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 deleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace 'kkn9oiQl' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 getTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace '05g7cO3Z' \
    >$TEMP_FILE 2>&1
update_status $? 'getTwitchIAPConfig'
delete_file $TEMP_FILE

#- 67 updateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --body '{"clientId": "Mb6Ojlo6", "clientSecret": "DMNpP2qM", "organizationId": "rTQ1Upjf"}' \
    --namespace 'U6wJhy1j' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTwitchIAPConfig'
delete_file $TEMP_FILE

#- 68 deleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'OVkkUlS7' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTwitchIAPConfig'
delete_file $TEMP_FILE

#- 69 getXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace '9527EZ25' \
    >$TEMP_FILE 2>&1
update_status $? 'getXblIAPConfig'
delete_file $TEMP_FILE

#- 70 updateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "Ia8uCeZF"}' \
    --namespace 'lLtEVpDA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblIAPConfig'
delete_file $TEMP_FILE

#- 71 deleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace 'EbA82jy7' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteXblAPConfig'
delete_file $TEMP_FILE

#- 72 updateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password '4lq0pDE5' \
    --namespace 'xRwh5b45' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblBPCertFile'
delete_file $TEMP_FILE

#- 73 syncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "ebpcM7Sc", "targetItemId": "Ss3UOpAw", "targetNamespace": "Ip9rRtn1"}' \
    --namespace 'PcCxdbum' \
    --storeId 'eYgOdEBW' \
    >$TEMP_FILE 2>&1
update_status $? 'syncInGameItem'
delete_file $TEMP_FILE

#- 74 createItem
samples/cli/sample-apps Platform createItem \
    --body '{"appId": "RQiW3KFf", "appType": "SOFTWARE", "baseAppId": "cH4081gR", "boothName": "B1GyLfLg", "categoryPath": "4RYuEbgU", "clazz": "DEcJyIvs", "displayOrder": 83, "entitlementType": "CONSUMABLE", "ext": {"Or0BmV5i": {}}, "features": ["FvfwFjTS"], "images": [{"as": "mIEqoLyL", "caption": "eUGmomGX", "height": 36, "imageUrl": "XTZ0v8pq", "smallImageUrl": "Lfc5SwGn", "width": 87}], "itemIds": ["eUULDX4Q"], "itemQty": {"UIbb5nh6": 26}, "itemType": "SEASON", "listable": true, "localizations": {"RvW9hNBS": {"description": "FTtFrOmj", "localExt": {"kFrFVA8t": {}}, "longDescription": "0xF34Xpt", "title": "6ZlTTic0"}}, "maxCount": 21, "maxCountPerUser": 34, "name": "2a0nI2oo", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 30, "fixedTrialCycles": 0, "graceDays": 57}, "regionData": {"vIq3aHVY": [{"currencyCode": "IlewLRuH", "currencyNamespace": "Y83bGj0H", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1995-03-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1972-12-17T00:00:00Z", "discountedPrice": 16, "expireAt": "1972-05-12T00:00:00Z", "price": 5, "purchaseAt": "1980-08-26T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "gY0ax476", "stackable": true, "status": "INACTIVE", "tags": ["4MMO9Tw2"], "targetCurrencyCode": "JH0qhWIw", "targetNamespace": "HWTgzJFR", "thumbnailUrl": "Yw6t1IKZ", "useCount": 74}' \
    --namespace 'O6V4Ode4' \
    --storeId '6QmCidgd' \
    >$TEMP_FILE 2>&1
update_status $? 'createItem'
delete_file $TEMP_FILE

#- 75 getItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace 'pP7RTC58' \
    --activeOnly 'False' \
    --storeId 'mUmBziPZ' \
    --appId 'BnpOfkll' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemByAppId'
delete_file $TEMP_FILE

#- 76 queryItems
samples/cli/sample-apps Platform queryItems \
    --namespace 'xfq0NsrS' \
    --activeOnly 'False' \
    --appType 'GAME' \
    --availableDate '5Hog0blM' \
    --baseAppId '1d5MStYG' \
    --categoryPath 'czLINlEC' \
    --features '0OEsE3yz' \
    --itemType 'INGAMEITEM' \
    --limit '92' \
    --offset '83' \
    --region '0NjluOrG' \
    --sortBy 'ZTzsLW7F' \
    --storeId 'jfs9nIkc' \
    --tags 'Z38fUEan' \
    --targetNamespace 'jKHbXfk1' \
    >$TEMP_FILE 2>&1
update_status $? 'queryItems'
delete_file $TEMP_FILE

#- 77 listBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace 'zxdzxg0U' \
    --activeOnly 'False' \
    --features '["RyHi3u8B"]' \
    >$TEMP_FILE 2>&1
update_status $? 'listBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 78 getItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace 'zVWu1tOm' \
    --activeOnly 'False' \
    --storeId 'UtCgcpvG' \
    --sku 'rEbcZUDE' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemBySku'
delete_file $TEMP_FILE

#- 79 getLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace 'xH1tayOG' \
    --activeOnly 'True' \
    --language 'MRjMCtOJ' \
    --populateBundle 'True' \
    --region 'Eijlrbpy' \
    --storeId 'yEcQxVgJ' \
    --sku 'IjMZqcWf' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItemBySku'
delete_file $TEMP_FILE

#- 80 getItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace 'Ml6dqrpD' \
    --activeOnly 'True' \
    --storeId 'nc3ZRB3I' \
    --sku 'kdtPfAJE' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemIdBySku'
delete_file $TEMP_FILE

#- 81 bulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace 'omwenJvQ' \
    --activeOnly 'False' \
    --language 'rtQSv6Ec' \
    --region 'ALcMIPms' \
    --storeId '5bT51M4y' \
    --itemIds 'ko8S0EnG' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetLocaleItems'
delete_file $TEMP_FILE

#- 82 searchItems
samples/cli/sample-apps Platform searchItems \
    --namespace 'LvGvfuSy' \
    --activeOnly 'True' \
    --limit '91' \
    --offset '49' \
    --storeId 'jj4mCaiu' \
    --keyword 'MGKOF5GJ' \
    --language 'JooSXUl3' \
    >$TEMP_FILE 2>&1
update_status $? 'searchItems'
delete_file $TEMP_FILE

#- 83 queryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace 'YU35QHGp' \
    --activeOnly 'True' \
    --limit '53' \
    --offset '54' \
    --sortBy 'nOlxDznI' \
    --storeId 'CQVyqBg3' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUncategorizedItems'
delete_file $TEMP_FILE

#- 84 getItem
samples/cli/sample-apps Platform getItem \
    --itemId '4WTtDkn0' \
    --namespace 'rtn6t0Yx' \
    --activeOnly 'True' \
    --storeId '12EaQ1rU' \
    >$TEMP_FILE 2>&1
update_status $? 'getItem'
delete_file $TEMP_FILE

#- 85 updateItem
samples/cli/sample-apps Platform updateItem \
    --body '{"appId": "QYCNTiDX", "appType": "SOFTWARE", "baseAppId": "E3M2IsTH", "boothName": "u8QwNyOl", "categoryPath": "XfIWd0mc", "clazz": "q5T4SUc7", "displayOrder": 5, "entitlementType": "DURABLE", "ext": {"CKK6Dij1": {}}, "features": ["gFcenEMy"], "images": [{"as": "SPfhxBen", "caption": "DiTiAqFY", "height": 24, "imageUrl": "FKjaELmm", "smallImageUrl": "ll6oexId", "width": 81}], "itemIds": ["KGUN2Uzn"], "itemQty": {"d7uVa7t1": 48}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"HifCIf4t": {"description": "suu6Pkam", "localExt": {"6tFSYFt4": {}}, "longDescription": "ZxA2PzZF", "title": "RkBNlg6h"}}, "maxCount": 26, "maxCountPerUser": 33, "name": "usKyZAuV", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 33, "fixedTrialCycles": 76, "graceDays": 23}, "regionData": {"V6UZMlEb": [{"currencyCode": "xHNgJRiQ", "currencyNamespace": "ExaunjdA", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1987-07-22T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1982-11-17T00:00:00Z", "discountedPrice": 15, "expireAt": "1971-04-12T00:00:00Z", "price": 83, "purchaseAt": "1982-11-10T00:00:00Z", "trialPrice": 29}]}, "seasonType": "PASS", "sku": "071ezDK5", "stackable": true, "status": "ACTIVE", "tags": ["1IMUCLcN"], "targetCurrencyCode": "0DsaD5Fy", "targetNamespace": "BsFe9OYE", "thumbnailUrl": "JVsYffmh", "useCount": 48}' \
    --itemId 'x6J25PrM' \
    --namespace '4S3cB8m1' \
    --storeId '7hEeLLgo' \
    >$TEMP_FILE 2>&1
update_status $? 'updateItem'
delete_file $TEMP_FILE

#- 86 deleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'aYth6zcf' \
    --namespace '8eA45OMv' \
    --storeId 'ObWejo9L' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteItem'
delete_file $TEMP_FILE

#- 87 acquireItem
samples/cli/sample-apps Platform acquireItem \
    --body '{"count": 10, "orderNo": "GeegJMaB"}' \
    --itemId 'GR6D1ZoZ' \
    --namespace 'EZQkJ8DS' \
    >$TEMP_FILE 2>&1
update_status $? 'acquireItem'
delete_file $TEMP_FILE

#- 88 getApp
samples/cli/sample-apps Platform getApp \
    --itemId 'qFnhdKvj' \
    --namespace 'FCFbSFlE' \
    --activeOnly 'False' \
    --storeId 'MPdgK5zn' \
    >$TEMP_FILE 2>&1
update_status $? 'getApp'
delete_file $TEMP_FILE

#- 89 updateApp
samples/cli/sample-apps Platform updateApp \
    --body '{"carousel": [{"alt": "62mhnFSp", "previewUrl": "CTlDNBOc", "thumbnailUrl": "ygvv2LAg", "type": "image", "url": "BGVzanbK", "videoSource": "youtube"}], "developer": "B0gqJ8Vh", "forumUrl": "YSikJl2p", "genres": ["Indie"], "localizations": {"Bx8N5ega": {"announcement": "pqxDy4cL", "slogan": "fNjzzEZY"}}, "platformRequirements": {"A8jIkMJb": [{"additionals": "7cZ2bPsa", "directXVersion": "LLpEBVEM", "diskSpace": "k5AsKaF2", "graphics": "P44lXkI3", "label": "zdiRiC5I", "osVersion": "bPit71JW", "processor": "lYCoi4nD", "ram": "fPu5V6QS", "soundCard": "YxEVOryV"}]}, "platforms": ["Linux"], "players": ["Multi"], "primaryGenre": "Adventure", "publisher": "UeEPB5AG", "releaseDate": "1991-02-16T00:00:00Z", "websiteUrl": "vk0Zthaj"}' \
    --itemId '0EBA4azR' \
    --namespace 'z0d56smo' \
    --storeId 'bor4p1Pl' \
    >$TEMP_FILE 2>&1
update_status $? 'updateApp'
delete_file $TEMP_FILE

#- 90 disableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'gQB9EcNG' \
    --namespace 'OeBRY6G5' \
    --storeId 'ae07deDL' \
    >$TEMP_FILE 2>&1
update_status $? 'disableItem'
delete_file $TEMP_FILE

#- 91 getItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'aZ8JCvbe' \
    --namespace 'TfW0hgzr' \
    >$TEMP_FILE 2>&1
update_status $? 'getItemDynamicData'
delete_file $TEMP_FILE

#- 92 enableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'abLJxEwJ' \
    --namespace 'rEBmQ64h' \
    --storeId 'aNOzlGu6' \
    >$TEMP_FILE 2>&1
update_status $? 'enableItem'
delete_file $TEMP_FILE

#- 93 featureItem
samples/cli/sample-apps Platform featureItem \
    --feature '8UYyupjd' \
    --itemId 'DetnoT0r' \
    --namespace 'fWtVPwQf' \
    --storeId 'q6V92gbf' \
    >$TEMP_FILE 2>&1
update_status $? 'featureItem'
delete_file $TEMP_FILE

#- 94 defeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'PouNdmP7' \
    --itemId 'fckVnuDG' \
    --namespace 'vYIb1p5t' \
    --storeId 'cR5z8ZJL' \
    >$TEMP_FILE 2>&1
update_status $? 'defeatureItem'
delete_file $TEMP_FILE

#- 95 getLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'jSHcaR3X' \
    --namespace '4tZmwr0Q' \
    --activeOnly 'False' \
    --language 'OnsEg49e' \
    --populateBundle 'False' \
    --region '0xQkZ2Jj' \
    --storeId 'uwWWy0tU' \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItem'
delete_file $TEMP_FILE

#- 96 returnItem
samples/cli/sample-apps Platform returnItem \
    --body '{"orderNo": "11PCeSrv"}' \
    --itemId 'ejUKwVfF' \
    --namespace '37Vr7mkD' \
    >$TEMP_FILE 2>&1
update_status $? 'returnItem'
delete_file $TEMP_FILE

#- 97 queryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace 'zFBI1Vwh' \
    --limit '21' \
    --name 'VSKDlNFO' \
    --offset '93' \
    --tag 'HBJsvTsq' \
    >$TEMP_FILE 2>&1
update_status $? 'queryKeyGroups'
delete_file $TEMP_FILE

#- 98 createKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --body '{"description": "k9hg4hj6", "name": "nUdebW6U", "status": "INACTIVE", "tags": ["kbPkkZAk"]}' \
    --namespace '01f1KxCt' \
    >$TEMP_FILE 2>&1
update_status $? 'createKeyGroup'
delete_file $TEMP_FILE

#- 99 getKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'WADU2guN' \
    --namespace '6U9w13W1' \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroup'
delete_file $TEMP_FILE

#- 100 updateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --body '{"description": "K9TZQ4qR", "name": "LEi5wowE", "status": "INACTIVE", "tags": ["fmM0CCs3"]}' \
    --keyGroupId '5TPUPLms' \
    --namespace 'Y8WgwSx1' \
    >$TEMP_FILE 2>&1
update_status $? 'updateKeyGroup'
delete_file $TEMP_FILE

#- 101 getKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'DI5GH9bv' \
    --namespace '9ZTo2HpA' \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroupDynamic'
delete_file $TEMP_FILE

#- 102 listKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '6pzjHpZO' \
    --namespace '0E9iLgRP' \
    --limit '70' \
    --offset '72' \
    --status 'ACQUIRED' \
    >$TEMP_FILE 2>&1
update_status $? 'listKeys'
delete_file $TEMP_FILE

#- 103 uploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --file 'tmp.dat' \
    --keyGroupId 'Bae3GOgb' \
    --namespace 'Qrqra0Pt' \
    >$TEMP_FILE 2>&1
update_status $? 'uploadKeys'
delete_file $TEMP_FILE

#- 104 queryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace 'kfvOpY2r' \
    --endTime 'amp5lnBn' \
    --limit '47' \
    --offset '24' \
    --orderNos '["BkfMtC66"]' \
    --sortBy 'hFq0kPOk' \
    --startTime 'ORm2XjlN' \
    --status 'INIT' \
    --withTotal 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'queryOrders'
delete_file $TEMP_FILE

#- 105 getOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace '5ecPzAmi' \
    >$TEMP_FILE 2>&1
update_status $? 'getOrderStatistics'
delete_file $TEMP_FILE

#- 106 getOrder
samples/cli/sample-apps Platform getOrder \
    --namespace '0ySJHfPl' \
    --orderNo 'oP1XkYK4' \
    >$TEMP_FILE 2>&1
update_status $? 'getOrder'
delete_file $TEMP_FILE

#- 107 refundOrder
samples/cli/sample-apps Platform refundOrder \
    --body '{"description": "MgIsDSFM"}' \
    --namespace 'PyMhyw1O' \
    --orderNo 'LZPVwwxH' \
    >$TEMP_FILE 2>&1
update_status $? 'refundOrder'
delete_file $TEMP_FILE

#- 108 getPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace '4BIDJuDo' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 109 updatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --body '{"dryRun": false, "notifyUrl": "MMftll8N", "privateKey": "0VvChHz9"}' \
    --namespace 'urmt7QWv' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 110 queryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace 'E8s6Uz8B' \
    --endDate 'RuYWDTtL' \
    --externalId '6MTTRkCb' \
    --limit '2' \
    --notificationSource 'PAYPAL' \
    --notificationType 'rREBgYOW' \
    --offset '7' \
    --paymentOrderNo 'HJ9Jumoh' \
    --startDate 'tU13gf7T' \
    --status 'IGNORED' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentNotifications'
delete_file $TEMP_FILE

#- 111 queryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace 'gNZj5w5y' \
    --channel 'EXTERNAL' \
    --extTxId 'K8QVOa62' \
    --limit '9' \
    --offset '85' \
    --status 'REQUEST_FOR_INFORMATION' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentOrders'
delete_file $TEMP_FILE

#- 112 createPaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --body '{"currencyCode": "tbLLcF67", "currencyNamespace": "1WLtv38H", "customParameters": {"ecczopFm": {}}, "description": "eRwpcJBZ", "extOrderNo": "yi3mLC4K", "extUserId": "zekiSzey", "itemType": "BUNDLE", "language": "lnOQt0jo", "metadata": {"VHgCytC6": "lRG98Yxn"}, "notifyUrl": "HbRdoTKK", "omitNotification": false, "price": 40, "recurringPaymentOrderNo": "SjfZe9i1", "region": "osghF1hz", "returnUrl": "i1Nl47sy", "sandbox": false, "sku": "bzSHZeCL", "subscriptionId": "IvWPVRsd", "targetNamespace": "EqA61yTr", "targetUserId": "MgsycTgm", "title": "Pzc20EuO"}' \
    --namespace '5dMqGDlS' \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 113 listExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'ZPY07rEV' \
    --extTxId 'SjzHjL6Z' \
    >$TEMP_FILE 2>&1
update_status $? 'listExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 114 getPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace 'bXjG6DSm' \
    --paymentOrderNo 'pp3op8ht' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrder'
delete_file $TEMP_FILE

#- 115 chargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "aRLxtW4P", "paymentMethod": "vFkESTUL", "paymentProvider": "WALLET"}' \
    --namespace 't5F1Le7c' \
    --paymentOrderNo 'R7q6PWhZ' \
    >$TEMP_FILE 2>&1
update_status $? 'chargePaymentOrder'
delete_file $TEMP_FILE

#- 116 refundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "mmKz41i1"}' \
    --namespace 'Tp78FipJ' \
    --paymentOrderNo 'HahViJvL' \
    >$TEMP_FILE 2>&1
update_status $? 'refundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 117 simulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 96, "currencyCode": "0kdmlk2l", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 88, "vat": 80}' \
    --namespace 'OA2VOZBo' \
    --paymentOrderNo 'NbB98PuS' \
    >$TEMP_FILE 2>&1
update_status $? 'simulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 118 getPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'GykqFzPw' \
    --paymentOrderNo 'SMXT53bB' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 119 createReward
samples/cli/sample-apps Platform createReward \
    --body '{"description": "uL38beOY", "eventTopic": "DVuHZQ9L", "maxAwarded": 100, "maxAwardedPerUser": 39, "namespaceExpression": "6w23Wf8i", "rewardCode": "EQo72sH0", "rewardConditions": [{"condition": "aRdcDlDy", "conditionName": "GcsfIuI4", "eventName": "Dv5lEJpK", "rewardItems": [{"duration": 53, "itemId": "yRlzsrRX", "quantity": 60}]}], "userIdExpression": "FZivQOHG"}' \
    --namespace '6wVicNra' \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 120 queryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace 'tsvvHLmI' \
    --eventTopic 'ohfNISLX' \
    --limit '77' \
    --offset '59' \
    --sortBy 'WDdm5FE4' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 121 exportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace 'lliQMnut' \
    >$TEMP_FILE 2>&1
update_status $? 'exportRewards'
delete_file $TEMP_FILE

#- 122 importRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'JbpEo4mU' \
    --replaceExisting 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'importRewards'
delete_file $TEMP_FILE

#- 123 getReward
samples/cli/sample-apps Platform getReward \
    --namespace 'tdml2xNv' \
    --rewardId 'iWacJc3F' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 124 updateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "m7Z548uu", "eventTopic": "KgoCBqS5", "maxAwarded": 40, "maxAwardedPerUser": 69, "namespaceExpression": "dCbwCeeq", "rewardCode": "9ouEdDtj", "rewardConditions": [{"condition": "OgsypLkm", "conditionName": "2ZYew5H7", "eventName": "Zm0gnYyj", "rewardItems": [{"duration": 76, "itemId": "Xf9G1nty", "quantity": 9}]}], "userIdExpression": "bvoeHenA"}' \
    --namespace 'ALKt7Efx' \
    --rewardId 'IH446oUn' \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 125 deleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'P2S74unX' \
    --rewardId 'wg0JKqVW' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 126 checkEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"W1rjK1ep": {}}}' \
    --namespace 'wkAvcsYv' \
    --rewardId 'bgfBVPpT' \
    >$TEMP_FILE 2>&1
update_status $? 'checkEventCondition'
delete_file $TEMP_FILE

#- 127 listStores
samples/cli/sample-apps Platform listStores \
    --namespace 'a8Yuq7TK' \
    >$TEMP_FILE 2>&1
update_status $? 'listStores'
delete_file $TEMP_FILE

#- 128 createStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "iNXmz7eM", "defaultRegion": "rMD5TbaU", "description": "xTCTng0x", "supportedLanguages": ["jtdBrjs3"], "supportedRegions": ["Kiykt2Ck"], "title": "2gOlSatE"}' \
    --namespace 'CZ2UgwQL' \
    >$TEMP_FILE 2>&1
update_status $? 'createStore'
delete_file $TEMP_FILE

#- 129 importStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'qDqYSxTP' \
    --storeId 'uVlBqird' \
    >$TEMP_FILE 2>&1
update_status $? 'importStore'
delete_file $TEMP_FILE

#- 130 getPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'p3yxnsET' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStore'
delete_file $TEMP_FILE

#- 131 deletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'l1SvhQud' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePublishedStore'
delete_file $TEMP_FILE

#- 132 getPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'sjIhXdxi' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStoreBackup'
delete_file $TEMP_FILE

#- 133 rollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'SoWpnnxg' \
    >$TEMP_FILE 2>&1
update_status $? 'rollbackPublishedStore'
delete_file $TEMP_FILE

#- 134 getStore
samples/cli/sample-apps Platform getStore \
    --namespace 'X7BCPMqz' \
    --storeId 'QIxibhpN' \
    >$TEMP_FILE 2>&1
update_status $? 'getStore'
delete_file $TEMP_FILE

#- 135 updateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "YsHtdB3I", "defaultRegion": "kjuaZqhJ", "description": "ilrZkSSK", "supportedLanguages": ["gP5rxCR7"], "supportedRegions": ["7G9d5CA1"], "title": "GORSbL9n"}' \
    --namespace '0dbWDEup' \
    --storeId 'mdLQzPnN' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStore'
delete_file $TEMP_FILE

#- 136 deleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'fBAcWArb' \
    --storeId 'kCfdHIZb' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStore'
delete_file $TEMP_FILE

#- 137 cloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace '03otqmBu' \
    --storeId 'S9V2pCZ2' \
    --targetStoreId '3UHmk0lp' \
    >$TEMP_FILE 2>&1
update_status $? 'cloneStore'
delete_file $TEMP_FILE

#- 138 exportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'J4JLl01q' \
    --storeId 'i7L2oDUo' \
    >$TEMP_FILE 2>&1
update_status $? 'exportStore'
delete_file $TEMP_FILE

#- 139 querySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'VRUb39j2' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '09cKmjRU' \
    --limit '3' \
    --offset '94' \
    --sku 'BVS7OK2Z' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'csckMekR' \
    >$TEMP_FILE 2>&1
update_status $? 'querySubscriptions'
delete_file $TEMP_FILE

#- 140 recurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'OWZ2KUTq' \
    --subscriptionId 'kK2eFaGL' \
    >$TEMP_FILE 2>&1
update_status $? 'recurringChargeSubscription'
delete_file $TEMP_FILE

#- 141 getTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'oSmEEPbL' \
    --namespace 'ywJsyUie' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketDynamic'
delete_file $TEMP_FILE

#- 142 decreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "6fZgLllU"}' \
    --boothName 'PsO8lg46' \
    --namespace 'Si7006vL' \
    >$TEMP_FILE 2>&1
update_status $? 'decreaseTicketSale'
delete_file $TEMP_FILE

#- 143 getTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '2w4aajDA' \
    --namespace 'Ox0iJjYl' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketBoothID'
delete_file $TEMP_FILE

#- 144 increaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 9, "orderNo": "aktqv2Wk"}' \
    --boothName 'ljQuD5mn' \
    --namespace 'JONqHGq8' \
    >$TEMP_FILE 2>&1
update_status $? 'increaseTicketSale'
delete_file $TEMP_FILE

#- 145 anonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'mB7mF2lM' \
    --userId 'FcaghFXJ' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeCampaign'
delete_file $TEMP_FILE

#- 146 anonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'IJflRHFc' \
    --userId 'sIqCy4xD' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeEntitlement'
delete_file $TEMP_FILE

#- 147 anonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'ifSSQ5On' \
    --userId '2ccEcl3x' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeFulfillment'
delete_file $TEMP_FILE

#- 148 anonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'eiO4bwF5' \
    --userId 'JOjGoGxK' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeIntegration'
delete_file $TEMP_FILE

#- 149 anonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'M3qMce5t' \
    --userId 'fLcpjFZM' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeOrder'
delete_file $TEMP_FILE

#- 150 anonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'KCbp0pEb' \
    --userId 'LCLFpHxM' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizePayment'
delete_file $TEMP_FILE

#- 151 anonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'YF836075' \
    --userId 'xEpzdnYt' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeSubscription'
delete_file $TEMP_FILE

#- 152 anonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace 'pja5ig2i' \
    --userId 'sQZga6Vy' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeWallet'
delete_file $TEMP_FILE

#- 153 queryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace '76izPiQR' \
    --userId 'jYa8fv5f' \
    --activeOnly 'True' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'Zhjhgkig' \
    --itemId '["W22zXMWX"]' \
    --limit '11' \
    --offset '2' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlements'
delete_file $TEMP_FILE

#- 154 grantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1972-11-06T00:00:00Z", "grantedCode": "0GIALIbF", "itemId": "CQgBcLNT", "itemNamespace": "6iOQVYx5", "language": "rW2gMsI1", "quantity": 0, "region": "YBitSn3U", "source": "GIFT", "startDate": "1973-10-18T00:00:00Z", "storeId": "j97I4WYX"}]' \
    --namespace 'LqjN7ktO' \
    --userId 'BTraBxWR' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserEntitlement'
delete_file $TEMP_FILE

#- 155 getUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'TVuYEqGl' \
    --userId 'KDwTKXBr' \
    --activeOnly 'False' \
    --appId 'Qcd9IW8k' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 156 queryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'iCKeQJWZ' \
    --userId 'Bvcq1ETv' \
    --activeOnly 'True' \
    --limit '46' \
    --offset '70' \
    --appType 'DEMO' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 157 getUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace '7B8gbnSu' \
    --userId '9M2OxD2u' \
    --activeOnly 'False' \
    --entitlementClazz 'APP' \
    --itemId 'eYpCXYSM' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 158 getUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'iy87CTqE' \
    --userId 'QBg36my3' \
    --activeOnly 'True' \
    --entitlementClazz 'APP' \
    --sku 'lrDcain0' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementBySku'
delete_file $TEMP_FILE

#- 159 existsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'cOVF1zHw' \
    --userId 'DTI0sJ1Q' \
    --appIds '["0kphMTgg"]' \
    --itemIds '["SP2SLcuA"]' \
    --skus '["P7vU971C"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 160 existsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'zw2nbg8C' \
    --userId '7Mvywhu6' \
    --itemIds '["MjOjuGzo"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 161 getUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace '1Fz4tU0a' \
    --userId 'Sn98N8qO' \
    --appId 'UA0z92Ra' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 162 getUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'De8ngT8L' \
    --userId 'RQkMnG1L' \
    --entitlementClazz 'MEDIA' \
    --itemId 'F2mdYY6Z' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 163 getUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'MfuTYTKs' \
    --userId 'ue48qBEB' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'AV5BTe6e' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 164 revokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'c1zA92UR' \
    --userId 'CLSGPmRB' \
    --entitlementIds 'ZWunHW7M' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlements'
delete_file $TEMP_FILE

#- 165 getUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Yvr6QA7P' \
    --namespace 'pepc92HA' \
    --userId '94eACdey' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlement'
delete_file $TEMP_FILE

#- 166 updateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1973-05-01T00:00:00Z", "nullFieldList": ["giPpf8nx"], "startDate": "1989-10-11T00:00:00Z", "status": "ACTIVE", "useCount": 26}' \
    --entitlementId 'mtPwa64Y' \
    --namespace '4gPEKMhh' \
    --userId 'u9a6f3xJ' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserEntitlement'
delete_file $TEMP_FILE

#- 167 consumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 78}' \
    --entitlementId 'tUlKLlII' \
    --namespace 'AeHbm5M6' \
    --userId 'LsY1VMuI' \
    >$TEMP_FILE 2>&1
update_status $? 'consumeUserEntitlement'
delete_file $TEMP_FILE

#- 168 disableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'EcRls68M' \
    --namespace '3MPMRPBe' \
    --userId 'pyyMz6zf' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserEntitlement'
delete_file $TEMP_FILE

#- 169 enableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'R1pvTYYt' \
    --namespace 'DOiEi4Ru' \
    --userId 'EcHCSGhp' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserEntitlement'
delete_file $TEMP_FILE

#- 170 getUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'OZQFlwOi' \
    --namespace 'uKGDFgK4' \
    --userId '9YuKnXks' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementHistories'
delete_file $TEMP_FILE

#- 171 revokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '0m8ANrcR' \
    --namespace 'al7ta3fo' \
    --userId 'jA3h4MMW' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlement'
delete_file $TEMP_FILE

#- 172 fulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 53, "endDate": "1988-07-22T00:00:00Z", "itemId": "lsFBwjvL", "itemSku": "Yvmg6avu", "language": "dQFF1CPN", "order": {"currency": {"currencyCode": "Y9u2dVYd", "currencySymbol": "glOOoCeK", "currencyType": "REAL", "decimals": 83, "namespace": "KmBqVux3"}, "ext": {"lXcD8aer": {}}, "free": true}, "orderNo": "AVCqs8XT", "quantity": 46, "region": "y3nJ06Kk", "source": "REFERRAL_BONUS", "startDate": "1973-07-31T00:00:00Z", "storeId": "0ARj9ric"}' \
    --namespace 'fayvnhi8' \
    --userId 'MDdY4WLH' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillItem'
delete_file $TEMP_FILE

#- 173 redeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "oaUkYnQp", "language": "5egdmVE8", "region": "ImivNtQx"}' \
    --namespace 'qWRKHohO' \
    --userId 'DoWOr98k' \
    >$TEMP_FILE 2>&1
update_status $? 'redeemCode'
delete_file $TEMP_FILE

#- 174 fulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"rewards": [{"currency": {"currencyCode": "jBUas9jj", "namespace": "z2FrgiaG"}, "item": {"itemId": "rcB7dIOV", "itemSku": "KIPSJJHo", "itemType": "5W8tKH8o"}, "quantity": 40, "type": "ITEM"}], "source": "PURCHASE"}' \
    --namespace 'xSXcrEFC' \
    --userId 'wqeGNLdI' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillRewards'
delete_file $TEMP_FILE

#- 175 queryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'BRdliFQV' \
    --userId 'MKEzVUWl' \
    --endTime 'UWDs2x1E' \
    --limit '85' \
    --offset '93' \
    --productId '0oepEvcj' \
    --startTime 'aSgEh6jJ' \
    --status 'FAILED' \
    --type 'XBOX' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserIAPOrders'
delete_file $TEMP_FILE

#- 176 queryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'xinIHJ1o' \
    --userId '7aq5Zznd' \
    >$TEMP_FILE 2>&1
update_status $? 'queryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 177 mockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"language": "5eacobTs", "productId": "uRlhreQV", "region": "FID3o8hJ", "type": "PLAYSTATION"}' \
    --namespace 'KIOAw70D' \
    --userId 'vAHhSGWU' \
    >$TEMP_FILE 2>&1
update_status $? 'mockFulfillIAPItem'
delete_file $TEMP_FILE

#- 178 queryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'vzq1Za3I' \
    --userId 'BC4vQFsU' \
    --itemId 'JPfiaJp1' \
    --limit '34' \
    --offset '38' \
    --status 'REFUND_FAILED' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserOrders'
delete_file $TEMP_FILE

#- 179 countOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'BgBCe6N0' \
    --userId 'eI65Mn5t' \
    --itemId 'ngEYXgPV' \
    >$TEMP_FILE 2>&1
update_status $? 'countOfPurchasedItem'
delete_file $TEMP_FILE

#- 180 getUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'T5CqXDZB' \
    --orderNo 'VMJyJeKF' \
    --userId 'O92YDtaZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrder'
delete_file $TEMP_FILE

#- 181 updateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "FULFILL_FAILED", "statusReason": "JoKS0Oxy"}' \
    --namespace 'ipZuO4N9' \
    --orderNo 'S2YCgHa6' \
    --userId 'XBcvGRYk' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserOrderStatus'
delete_file $TEMP_FILE

#- 182 fulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace '5rUtWHCn' \
    --orderNo 'hmzzppV7' \
    --userId 'tKNKYUQV' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillUserOrder'
delete_file $TEMP_FILE

#- 183 getUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace 'BXymWcNl' \
    --orderNo 'HaFxYaGH' \
    --userId 'UpmBFyOr' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderGrant'
delete_file $TEMP_FILE

#- 184 getUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'FKtxGNAi' \
    --orderNo '0fq4xChP' \
    --userId 'Ld2lOopc' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderHistories'
delete_file $TEMP_FILE

#- 185 processUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "7XoVpdd6"}, "authorisedTime": "1979-08-15T00:00:00Z", "chargebackReversedTime": "1978-07-11T00:00:00Z", "chargebackTime": "1990-05-16T00:00:00Z", "chargedTime": "1977-09-22T00:00:00Z", "createdTime": "1996-09-16T00:00:00Z", "currency": {"currencyCode": "Xh7KnCVO", "currencySymbol": "KY2zsBRG", "currencyType": "VIRTUAL", "decimals": 7, "namespace": "8QY2OLbi"}, "customParameters": {"jrvfr8hk": {}}, "extOrderNo": "njWUWdMU", "extTxId": "XHvw4pNl", "extUserId": "GLjdBxLM", "issuedAt": "1997-04-28T00:00:00Z", "metadata": {"DAbTgmsE": "YEq2GkYK"}, "namespace": "1vYm9flX", "nonceStr": "Q7CQoemn", "paymentMethod": "QG0dH0NV", "paymentMethodFee": 77, "paymentOrderNo": "9VEHTPqD", "paymentProvider": "XSOLLA", "paymentProviderFee": 20, "paymentStationUrl": "cu5vnz6G", "price": 16, "refundedTime": "1990-11-01T00:00:00Z", "salesTax": 2, "sandbox": false, "sku": "BJHml0LJ", "status": "CHARGED", "statusReason": "pPi4mqhr", "subscriptionId": "uiCZLGGP", "subtotalPrice": 93, "targetNamespace": "XkHNTMap", "targetUserId": "p5SbonsU", "tax": 71, "totalPrice": 72, "totalTax": 53, "txEndTime": "1985-05-17T00:00:00Z", "type": "60EkdFrp", "userId": "LsGt9yTX", "vat": 96}' \
    --namespace 'USCQcMsH' \
    --orderNo 'N7reI22k' \
    --userId 's7I12tAZ' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserOrderNotification'
delete_file $TEMP_FILE

#- 186 downloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'c8sxxLx9' \
    --orderNo 'XQeqNWLm' \
    --userId '8cNJbYH5' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 187 createUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "J4WiJLv9", "currencyNamespace": "NvHwtw2M", "customParameters": {"jcy9ZL6Z": {}}, "description": "s5Bu2XYo", "extOrderNo": "pLWZeUKJ", "extUserId": "JNftRpGg", "itemType": "INGAMEITEM", "language": "1iseREzz", "metadata": {"RG6z9wmu": "HddyOdib"}, "notifyUrl": "I1LVyqbd", "omitNotification": true, "price": 65, "recurringPaymentOrderNo": "ZKAuoIKz", "region": "3Pp3zLWU", "returnUrl": "xMzMtSmM", "sandbox": false, "sku": "ZP8nG0Fo", "subscriptionId": "QP8q7aSs", "title": "b85gAh9R"}' \
    --namespace 'D3ZzN6N1' \
    --userId 'iJ8ltt9I' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserPaymentOrder'
delete_file $TEMP_FILE

#- 188 refundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "RqCflgln"}' \
    --namespace '6r5f0s5H' \
    --paymentOrderNo '6lCf3QHa' \
    --userId '11hLLCgw' \
    >$TEMP_FILE 2>&1
update_status $? 'refundUserPaymentOrder'
delete_file $TEMP_FILE

#- 189 applyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "5av4LExd", "orderNo": "abD8g2cv"}' \
    --namespace 'HfMRupDA' \
    --userId '5xbjs3XR' \
    >$TEMP_FILE 2>&1
update_status $? 'applyUserRedemption'
delete_file $TEMP_FILE

#- 190 queryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace 'dHUJ0GCm' \
    --userId 'flIXkgJ6' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'kTwoakq7' \
    --limit '37' \
    --offset '60' \
    --sku 'ejFZ1NtO' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserSubscriptions'
delete_file $TEMP_FILE

#- 191 getUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace '9hsQHszI' \
    --userId 'sfrlzKpQ' \
    --excludeSystem 'False' \
    --limit '6' \
    --offset '7' \
    --subscriptionId 'ZP5Rvrin' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 192 platformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 78, "itemId": "tvBtqFSk", "language": "A68mIVYJ", "reason": "5pSVxBsL", "region": "hty3pecT", "source": "oXA4M1oU"}' \
    --namespace 'FPhgo7Z6' \
    --userId 'mwNC4FY6' \
    >$TEMP_FILE 2>&1
update_status $? 'platformSubscribeSubscription'
delete_file $TEMP_FILE

#- 193 checkUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace '9mM87joJ' \
    --userId 'NOGB83Ns' \
    --itemId '6Hl5Poab' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 194 getUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace '6lKoVqNB' \
    --subscriptionId 'UzIxOfgl' \
    --userId 'quS2q2Do' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscription'
delete_file $TEMP_FILE

#- 195 deleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'Wr9zvFtK' \
    --subscriptionId 'a2mOAqOo' \
    --userId 'kV1plxQ2' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSubscription'
delete_file $TEMP_FILE

#- 196 cancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": true, "reason": "iTPfipD6"}' \
    --namespace '7jI2hiZk' \
    --subscriptionId 'rtLnh2U1' \
    --userId 'RQlMxkfN' \
    --force 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'cancelSubscription'
delete_file $TEMP_FILE

#- 197 grantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 32, "reason": "v2TMz1b7"}' \
    --namespace 'SnzkXOek' \
    --subscriptionId '83Igm1wk' \
    --userId 'SWsYvAsu' \
    >$TEMP_FILE 2>&1
update_status $? 'grantDaysToSubscription'
delete_file $TEMP_FILE

#- 198 getUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace '18obUdc8' \
    --subscriptionId 'mbvXcwcg' \
    --userId 'MqOXMziX' \
    --excludeFree 'True' \
    --limit '94' \
    --offset '7' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 199 processUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "sEc3ClFP"}, "authorisedTime": "1998-04-05T00:00:00Z", "chargebackReversedTime": "1988-06-23T00:00:00Z", "chargebackTime": "1981-05-23T00:00:00Z", "chargedTime": "1985-08-04T00:00:00Z", "createdTime": "1993-01-30T00:00:00Z", "currency": {"currencyCode": "4kLcuqL4", "currencySymbol": "0NYgekRa", "currencyType": "VIRTUAL", "decimals": 30, "namespace": "aGTA9BTy"}, "customParameters": {"CCyN4Fw9": {}}, "extOrderNo": "i6mI2W3t", "extTxId": "jjCqPVyY", "extUserId": "s01hEYzW", "issuedAt": "1982-05-10T00:00:00Z", "metadata": {"rcxM0DPA": "XQBNMP7j"}, "namespace": "3xfPaoZa", "nonceStr": "WFspkU5k", "paymentMethod": "n6PlPqD4", "paymentMethodFee": 52, "paymentOrderNo": "gfasBfcl", "paymentProvider": "WXPAY", "paymentProviderFee": 14, "paymentStationUrl": "ZjZbLnmg", "price": 15, "refundedTime": "1989-06-27T00:00:00Z", "salesTax": 83, "sandbox": true, "sku": "VIn3qaHP", "status": "REFUNDING", "statusReason": "NulyfrEN", "subscriptionId": "VQkpcaWH", "subtotalPrice": 11, "targetNamespace": "6T2xOOlj", "targetUserId": "n7c6c9ef", "tax": 71, "totalPrice": 68, "totalTax": 91, "txEndTime": "1996-06-30T00:00:00Z", "type": "rgLBFJEk", "userId": "phFz0h6W", "vat": 31}' \
    --namespace 'oVpVc2HB' \
    --subscriptionId 'Bmj6cEi0' \
    --userId '2hXl42ub' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 200 acquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 57, "orderNo": "Rfy4GjKn"}' \
    --boothName '5ItHXLDZ' \
    --namespace 'qpRhqnR7' \
    --userId '42GcbLuQ' \
    >$TEMP_FILE 2>&1
update_status $? 'acquireUserTicket'
delete_file $TEMP_FILE

#- 201 checkWallet
samples/cli/sample-apps Platform checkWallet \
    --currencyCode 'OGMOEzmd' \
    --namespace 'jNhT0S46' \
    --userId 'kqyfMBSa' \
    >$TEMP_FILE 2>&1
update_status $? 'checkWallet'
delete_file $TEMP_FILE

#- 202 creditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 5, "reason": "4SA16M8g", "source": "GIFT"}' \
    --currencyCode 'D7aBHWCY' \
    --namespace 'evNkfcQv' \
    --userId 'l4Oso7tx' \
    >$TEMP_FILE 2>&1
update_status $? 'creditUserWallet'
delete_file $TEMP_FILE

#- 203 payWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 50}' \
    --currencyCode 'XCiTfjor' \
    --namespace 'LFqTmIUF' \
    --userId 'UoonHBI1' \
    >$TEMP_FILE 2>&1
update_status $? 'payWithUserWallet'
delete_file $TEMP_FILE

#- 204 getUserWallet
samples/cli/sample-apps Platform getUserWallet \
    --namespace '3SZFHfm0' \
    --userId 'F8vS2BrZ' \
    --walletId '3nq88YSS' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserWallet'
delete_file $TEMP_FILE

#- 205 debitUserWallet
samples/cli/sample-apps Platform debitUserWallet \
    --body '{"amount": 59, "reason": "7zV0C8Fv"}' \
    --namespace 'VU3kRXBG' \
    --userId 'PXIdft1b' \
    --walletId 'iZHuhWyF' \
    >$TEMP_FILE 2>&1
update_status $? 'debitUserWallet'
delete_file $TEMP_FILE

#- 206 disableUserWallet
samples/cli/sample-apps Platform disableUserWallet \
    --namespace 'PHdXcyvZ' \
    --userId 'EhYeUSy5' \
    --walletId 'Ukc65naP' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserWallet'
delete_file $TEMP_FILE

#- 207 enableUserWallet
samples/cli/sample-apps Platform enableUserWallet \
    --namespace '11R8Xww9' \
    --userId 'vq9nMa2B' \
    --walletId 'tgwyuf2f' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserWallet'
delete_file $TEMP_FILE

#- 208 listUserWalletTransactions
samples/cli/sample-apps Platform listUserWalletTransactions \
    --namespace 'jV30SLxi' \
    --userId '7uyhaeFt' \
    --walletId 'cO9XNy63' \
    --limit '85' \
    --offset '80' \
    >$TEMP_FILE 2>&1
update_status $? 'listUserWalletTransactions'
delete_file $TEMP_FILE

#- 209 queryWallets
samples/cli/sample-apps Platform queryWallets \
    --namespace '9vW0ck7T' \
    --currencyCode 'EDE8LeEQ' \
    --limit '54' \
    --offset '8' \
    --userId 'GPLiE6tH' \
    >$TEMP_FILE 2>&1
update_status $? 'queryWallets'
delete_file $TEMP_FILE

#- 210 getWallet
samples/cli/sample-apps Platform getWallet \
    --namespace 'Cr0GPFvT' \
    --walletId '0SAK91y5' \
    >$TEMP_FILE 2>&1
update_status $? 'getWallet'
delete_file $TEMP_FILE

#- 211 syncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'vCeBIJq0' \
    --end 'B9UcI6c5' \
    --start 'cre9ealH' \
    >$TEMP_FILE 2>&1
update_status $? 'syncOrders'
delete_file $TEMP_FILE

#- 212 testAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["OZphcLnc"], "apiKey": "njnmyU8F", "authoriseAsCapture": true, "blockedPaymentMethods": ["XdCrskoF"], "liveEndpointUrlPrefix": "qnowq9La", "merchantAccount": "z1GLt5Mh", "notificationHmacKey": "f8Z7ahmb", "notificationPassword": "VPm2g7xA", "notificationUsername": "FfRRLUjf", "returnUrl": "WS9sftIf", "settings": "HGe5bUTS"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfig'
delete_file $TEMP_FILE

#- 213 testAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "12PMcRO6", "privateKey": "E2Mkre5q", "publicKey": "7FvaACp6", "returnUrl": "he0fzjkP"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfig'
delete_file $TEMP_FILE

#- 214 testCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "fgF6inIR", "secretKey": "sZ5hrqNz"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfig'
delete_file $TEMP_FILE

#- 215 debugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'zGVP5P1i' \
    --region 'whcf30C1' \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 216 testPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "KHRZHMGy", "clientSecret": "5vbfZvYI", "returnUrl": "FFctEKOL", "webHookId": "xSRxe0wm"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfig'
delete_file $TEMP_FILE

#- 217 testStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["McNiWoob"], "publishableKey": "B6o6alTQ", "secretKey": "cP0EpE9w", "webhookSecret": "GNVwkgfJ"}' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfig'
delete_file $TEMP_FILE

#- 218 testWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "lfzgRpTf", "key": "9lxF1JPB", "mchid": "izXZtrGe", "returnUrl": "8LyOH24n"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfig'
delete_file $TEMP_FILE

#- 219 testXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "neZHFeRl", "flowCompletionUrl": "d0bGA7Jx", "merchantId": 97, "projectId": 100, "projectSecretKey": "zaEaimvo"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfig'
delete_file $TEMP_FILE

#- 220 getPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'kcWX59kw' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 221 updateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["iYHgHT6I"], "apiKey": "vd0fGpU2", "authoriseAsCapture": false, "blockedPaymentMethods": ["VRclumQT"], "liveEndpointUrlPrefix": "Fvr5rRyY", "merchantAccount": "zaNmz3Pj", "notificationHmacKey": "Mx2T89NT", "notificationPassword": "rFRUCXFk", "notificationUsername": "ruxegpkc", "returnUrl": "XCfzgcvv", "settings": "0WE5EQhc"}' \
    --id 'omPS1E7c' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdyenConfig'
delete_file $TEMP_FILE

#- 222 testAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Lgr2zEnj' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfigById'
delete_file $TEMP_FILE

#- 223 updateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "RNjEC3FM", "privateKey": "DcZvwwf8", "publicKey": "aU98In31", "returnUrl": "mF4jlwKy"}' \
    --id 'GxTF1l5q' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAliPayConfig'
delete_file $TEMP_FILE

#- 224 testAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'T1X8J2eA' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfigById'
delete_file $TEMP_FILE

#- 225 updateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "jmh9UzIf", "secretKey": "nhoo6xUm"}' \
    --id 'TleUnJFM' \
    --sandbox 'False' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCheckoutConfig'
delete_file $TEMP_FILE

#- 226 testCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'DxGik2JS' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfigById'
delete_file $TEMP_FILE

#- 227 updatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "Z64wWePq", "clientSecret": "6103PONK", "returnUrl": "IS7F9emW", "webHookId": "4R15tAsi"}' \
    --id 'G31CEyUO' \
    --sandbox 'True' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePayPalConfig'
delete_file $TEMP_FILE

#- 228 testPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'mnHkvek6' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfigById'
delete_file $TEMP_FILE

#- 229 updateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["a5kNnocl"], "publishableKey": "xs9kxcvI", "secretKey": "pV7mCYfW", "webhookSecret": "KjY9CsQY"}' \
    --id 'sGyhEOnt' \
    --sandbox 'True' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStripeConfig'
delete_file $TEMP_FILE

#- 230 testStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'edM1A0bF' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfigById'
delete_file $TEMP_FILE

#- 231 updateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "vjxbT3Yu", "key": "VdaBN5RS", "mchid": "jhcjuDvN", "returnUrl": "rXL845jf"}' \
    --id 'h5tZ0hqJ' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfig'
delete_file $TEMP_FILE

#- 232 updateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'QUmoYUnC' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfigCert'
delete_file $TEMP_FILE

#- 233 testWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '849OBNuL' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfigById'
delete_file $TEMP_FILE

#- 234 updateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "ZtofGAAa", "flowCompletionUrl": "MpBQArU4", "merchantId": 86, "projectId": 88, "projectSecretKey": "0FQRy5Qz"}' \
    --id '5VcyfBpH' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaConfig'
delete_file $TEMP_FILE

#- 235 testXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'tvFwKSJy' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfigById'
delete_file $TEMP_FILE

#- 236 updateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    --id 'evcVXTxs' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaUIConfig'
delete_file $TEMP_FILE

#- 237 queryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '75' \
    --namespace 'TorIyx23' \
    --offset '74' \
    --region 'hLy7ds3g' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 createPaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "uHTPF19d", "region": "BYFws5Ya", "sandboxTaxJarApiToken": "4eOwWqW8", "specials": ["ADYEN"], "taxJarApiToken": "LpTi1W63", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentProviderConfig'
delete_file $TEMP_FILE

#- 239 getAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    >$TEMP_FILE 2>&1
update_status $? 'getAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 240 debugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'gM5kYu36' \
    --region 'JpTL55W4' \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 241 getSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    >$TEMP_FILE 2>&1
update_status $? 'getSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 242 updatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "s3KCyplY", "region": "1ocKDCVa", "sandboxTaxJarApiToken": "qrVeegT3", "specials": ["ALIPAY"], "taxJarApiToken": "GDIIcvuu", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --id 't8TC38mY' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 243 deletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'oUanQT4M' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 244 getPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxConfig'
delete_file $TEMP_FILE

#- 245 updatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "mznv7r2j", "taxJarApiToken": "thibgeCL", "taxJarEnabled": true, "taxJarProductCodesMapping": {"yOiLgd8W": "y739QHzw"}}' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 246 syncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '0TEzpd7T' \
    --end 'V5vhMM2i' \
    --start '3DM6etfI' \
    >$TEMP_FILE 2>&1
update_status $? 'syncPaymentOrders'
delete_file $TEMP_FILE

#- 247 publicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace '7TzC3sKm' \
    --language 'tsyEKdO6' \
    --storeId 'HNm3zGu7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRootCategories'
delete_file $TEMP_FILE

#- 248 downloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace '1qTSSJEb' \
    --language 'WlETp9XO' \
    --storeId 'CA1X3HHM' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadCategories'
delete_file $TEMP_FILE

#- 249 publicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'TlakAWQf' \
    --namespace 'BuBAOCjB' \
    --language 'fYCcplye' \
    --storeId '2GaPNzkr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCategory'
delete_file $TEMP_FILE

#- 250 publicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'gBH4icml' \
    --namespace '6L36Vg2F' \
    --language '2Q9aZDJg' \
    --storeId '1OT8109o' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetChildCategories'
delete_file $TEMP_FILE

#- 251 publicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 't70TevJg' \
    --namespace 'sb2PyFfJ' \
    --language '6qcHABdG' \
    --storeId 'tV9jAPqo' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetDescendantCategories'
delete_file $TEMP_FILE

#- 252 publicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'n7UmLNy9' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListCurrencies'
delete_file $TEMP_FILE

#- 253 publicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'PkF9Snlb' \
    --language 'WNcAxv8u' \
    --region 'HDqJtYC7' \
    --storeId 'rznwNdLh' \
    --appId 'qXvXVnjv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemByAppId'
delete_file $TEMP_FILE

#- 254 publicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'c0BMegJp' \
    --appType 'DEMO' \
    --baseAppId 'uhpLX1BH' \
    --categoryPath 'Z4hnOmmy' \
    --features 'Xu6XtjNC' \
    --itemType 'INGAMEITEM' \
    --language 'Yk9TPUKc' \
    --limit '58' \
    --offset '91' \
    --region 'fR7dpUEo' \
    --sortBy '2Oe08Hpe' \
    --storeId 'JBfG0nGZ' \
    --tags 'He5lw2Tl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryItems'
delete_file $TEMP_FILE

#- 255 publicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'kPIxL9v4' \
    --language 'fpCd0Uk5' \
    --region 'h1kP1pkk' \
    --storeId 'T08Cs6Dd' \
    --sku 'XZWowBgZ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemBySku'
delete_file $TEMP_FILE

#- 256 publicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'izMvwHsz' \
    --language 'f84MAmay' \
    --region 'JJ6vzDTX' \
    --storeId 'xsyIaTgp' \
    --itemIds '0pwnEJL1' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetItems'
delete_file $TEMP_FILE

#- 257 publicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace '5kxO4oVU' \
    --limit '82' \
    --offset '27' \
    --region 'g5JsHAkI' \
    --storeId '47jO1wuA' \
    --keyword 'FuZcUwPt' \
    --language 'eKdQgUTF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchItems'
delete_file $TEMP_FILE

#- 258 publicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '33fYWZfQ' \
    --namespace 'MAnziTha' \
    --language 'E2btn0up' \
    --region '9GeTQ7Xy' \
    --storeId 'mDSQNYXN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetApp'
delete_file $TEMP_FILE

#- 259 publicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'EpZyFhIe' \
    --namespace 'qiNHtVSn' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemDynamicData'
delete_file $TEMP_FILE

#- 260 publicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'hxby8F6x' \
    --namespace 'F8MhbJAY' \
    --language 'EDN1xszp' \
    --populateBundle 'False' \
    --region 'R69nsKAS' \
    --storeId '5zKsTRXd' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItem'
delete_file $TEMP_FILE

#- 261 getPaymentCustomization
samples/cli/sample-apps Platform getPaymentCustomization \
    --namespace '7b3v2fkZ' \
    --sandbox 'False' \
    --paymentProvider 'STRIPE' \
    --region '06ojUtoV' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCustomization'
delete_file $TEMP_FILE

#- 262 publicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "JLGXekom", "paymentProvider": "ALIPAY", "returnUrl": "wD849mo5", "ui": "vIkDZYrY", "zipCode": "Ef1xYnlx"}' \
    --namespace 'HHXjFoXt' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentUrl'
delete_file $TEMP_FILE

#- 263 publicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'wKW6AOnq' \
    --paymentOrderNo 'nWCuXMWq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentMethods'
delete_file $TEMP_FILE

#- 264 publicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'G8fNprJx' \
    --paymentOrderNo '82nAFexN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 265 pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "ou1AicsQ"}' \
    --namespace 'jKx5Ljet' \
    --paymentOrderNo 'HEw0aCQp' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'GOW0VAI8' \
    >$TEMP_FILE 2>&1
update_status $? 'pay'
delete_file $TEMP_FILE

#- 266 publicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace '7DPH0fLL' \
    --paymentOrderNo 'iUqzay0g' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 267 getPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'ET8T53yE' \
    --sandbox 'False' \
    --paymentProvider 'CHECKOUT' \
    --region '7DsqsTvN' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentPublicConfig'
delete_file $TEMP_FILE

#- 268 publicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'KAXqfqMJ' \
    --code 'HGeHaN2k' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetQRCode'
delete_file $TEMP_FILE

#- 269 publicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace '1Eutm9AA' \
    --payerID 'WDcDv3IS' \
    --foreinginvoice 'BgZCAf2p' \
    --invoiceId 'WOWs4I2l' \
    --payload 'OHfiu4Hr' \
    --resultCode 'aKYMtgBm' \
    --status 'vCHMtF15' \
    --token 'a7T0Ihey' \
    --type 'wiPE1WUR' \
    --userId '1PTFfJJ4' \
    --orderNo '6kzfqapb' \
    --paymentOrderNo 'ByIKoYzY' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'TWJA3nFC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 270 getPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'DgWOpz3y' \
    --zipCode 'PQfqbeVG' \
    --paymentOrderNo '7i4VTAhu' \
    --paymentProvider 'XSOLLA' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxValue'
delete_file $TEMP_FILE

#- 271 getRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'YhEgQBb9' \
    --rewardCode 'Hni6lDMj' \
    >$TEMP_FILE 2>&1
update_status $? 'getRewardByCode'
delete_file $TEMP_FILE

#- 272 queryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace '9gvkBcQj' \
    --eventTopic 'Q56RuAvU' \
    --limit '22' \
    --offset '77' \
    --sortBy 'Wp8WGpZx' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards1'
delete_file $TEMP_FILE

#- 273 getReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'Ce0KsmXt' \
    --rewardId 'GBbKrV58' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward1'
delete_file $TEMP_FILE

#- 274 publicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'TIThQ52P' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListStores'
delete_file $TEMP_FILE

#- 275 publicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'YNknBCji' \
    --appIds '["rw4hmfMS"]' \
    --itemIds '["l2bETuFL"]' \
    --skus '["FOfdl0yR"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 276 publicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'ndbO78R8' \
    --appId 'ybYsHx3B' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 277 publicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'IgGuo817' \
    --entitlementClazz 'CODE' \
    --itemId 'ZA58OI2L' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 278 publicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'MYRX16nf' \
    --entitlementClazz 'MEDIA' \
    --sku 'J833JKRN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 279 publicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'cdpuCxSD' \
    --appIds '["FWMVcsOZ"]' \
    --itemIds '["lS0ulerU"]' \
    --skus '["61drwLng"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 280 publicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'bZxOGxFw' \
    --namespace 'nmB60ea7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyWallet'
delete_file $TEMP_FILE

#- 281 publicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 99}' \
    --namespace 'ItZS8KIu' \
    --userId '9T604oPa' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 282 syncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "jgyShKuL", "steamId": "B7pQLZiW"}' \
    --namespace 'Vmc8PVwS' \
    --userId 'hVQz7FY3' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamDLC'
delete_file $TEMP_FILE

#- 283 syncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "h2oVVScV"}' \
    --namespace 'v3YTBM4t' \
    --userId 'eOpqevsW' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxDLC'
delete_file $TEMP_FILE

#- 284 publicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'vMhiheE2' \
    --userId 'KM7Ctal5' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'LiOYz1jF' \
    --itemId '["fu1y1d77"]' \
    --limit '58' \
    --offset '78' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 285 publicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'OfHyenhb' \
    --userId 'RZ4a9Ujj' \
    --appId 'jU0EggYL' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 286 publicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'cGiEDZbD' \
    --userId 'l9ZeZH3M' \
    --limit '42' \
    --offset '62' \
    --appType 'DEMO' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 287 publicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'dKDEfXRh' \
    --userId 'aO0AYSqv' \
    --entitlementClazz 'APP' \
    --itemId 'V2LqfgCX' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 288 publicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace '28Je4kyP' \
    --userId 'QjgDJNOE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'tdEtN4sE' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 289 publicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'ebnQucga' \
    --userId 'op5NEdhu' \
    --appIds '["rScNiUxn"]' \
    --itemIds '["JUewUVhk"]' \
    --skus '["GRRTgLCb"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 290 publicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace '9evywZyw' \
    --userId 'unLImNhy' \
    --appId 'Zsb7YhhQ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 291 publicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'bDxLRKxz' \
    --userId 'UtpKDC8g' \
    --entitlementClazz 'CODE' \
    --itemId '2otjUWKx' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 292 publicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'gW6n8AJa' \
    --userId 'eqxTPgZK' \
    --entitlementClazz 'MEDIA' \
    --sku 'i3SBGlCD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 293 publicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '4ig5ZRoJ' \
    --namespace 'd1as1Wkf' \
    --userId 'h3l8HyGW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlement'
delete_file $TEMP_FILE

#- 294 publicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 91}' \
    --entitlementId 'dpmTxPUB' \
    --namespace 'FjTIIKcX' \
    --userId 'lxPfdDyj' \
    >$TEMP_FILE 2>&1
update_status $? 'publicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 295 publicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "J0wwrYel", "language": "jMyoeb3g", "region": "sMOMdqbt"}' \
    --namespace '4PnuFr18' \
    --userId 'ijp3Cmzr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicRedeemCode'
delete_file $TEMP_FILE

#- 296 publicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "VIa1vi9o", "productId": "ky2P7fIg", "receiptData": "BRSBlxuk", "region": "oOTCosjA", "transactionId": "Xo6ljBVW"}' \
    --namespace '8r7nyNcV' \
    --userId 'l6ZB3bGH' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 297 syncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "upBuAL2a"}' \
    --namespace 'vXKOjwGR' \
    --userId 'JbZqXgQ9' \
    >$TEMP_FILE 2>&1
update_status $? 'syncEpicGamesInventory'
delete_file $TEMP_FILE

#- 298 publicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"language": "azOreTsv", "orderId": "iZmgm0l8", "packageName": "Yr4wmgiw", "productId": "IF5Zx5TI", "purchaseTime": 69, "purchaseToken": "hBtL3zT6", "region": "xRqyV0tl"}' \
    --namespace 'LaMYL1p9' \
    --userId '5v9mOiIF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 299 publicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "EdQ2RKeQ", "price": 0.9918320803551977, "productId": "2WRztR5q", "serviceLabel": 51}' \
    --namespace 'tuhVaJDW' \
    --userId 'x2OdrUV7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 300 syncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "bhcKGIOZ", "language": "cB6NWffX", "region": "kYzes2xH", "stadiaPlayerId": "p1ufZNxh"}' \
    --namespace 'bsaSFtTm' \
    --userId 'bIf2hFQR' \
    >$TEMP_FILE 2>&1
update_status $? 'syncStadiaEntitlement'
delete_file $TEMP_FILE

#- 301 syncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "msi02mel", "currencyCode": "JQkLtV2Q", "language": "nPsmhFVP", "price": 0.308318730822543, "productId": "TGig12Od", "region": "DnxXuJoZ", "steamId": "gOG4tOeW"}' \
    --namespace 'VMI9K1eJ' \
    --userId '6xC2h6U8' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamInventory'
delete_file $TEMP_FILE

#- 302 syncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "TgR2k2Rk", "language": "Er8XbmQN", "region": "uv80Em9n"}' \
    --namespace 'uffLGUWn' \
    --userId 'VBQPhwwH' \
    >$TEMP_FILE 2>&1
update_status $? 'syncTwitchDropsEntitlement'
delete_file $TEMP_FILE

#- 303 syncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "R0qyfFcS", "price": 0.4394503463345676, "productId": "kfe5eawF", "xstsToken": "pdHeH5p8"}' \
    --namespace 'Zx8jy7nx' \
    --userId 'GzOTBpmm' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxInventory'
delete_file $TEMP_FILE

#- 304 publicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'juEEEyDt' \
    --userId 'wbtA8xsm' \
    --itemId 'mcaOLdFi' \
    --limit '11' \
    --offset '92' \
    --status 'CHARGED' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserOrders'
delete_file $TEMP_FILE

#- 305 publicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "9p700jB0", "discountedPrice": 31, "ext": {"4HpK8pvu": {}}, "itemId": "fSxYM0Vk", "language": "uqOKrhvM", "price": 45, "quantity": 42, "region": "D04UY8gh", "returnUrl": "vsmSrrJz"}' \
    --namespace 'Ai6FOuhQ' \
    --userId 'IBAbup1f' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserOrder'
delete_file $TEMP_FILE

#- 306 publicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'pWsO6fW4' \
    --orderNo '68fWxqRk' \
    --userId 'JDjfNhYD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrder'
delete_file $TEMP_FILE

#- 307 publicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'gVm0TCao' \
    --orderNo 's4wyjaPP' \
    --userId '6ClekQGm' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserOrder'
delete_file $TEMP_FILE

#- 308 publicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '25KYmFZx' \
    --orderNo 'Qr4xbV63' \
    --userId 'gcdU4vyI' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 309 publicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'PJeRjCj7' \
    --orderNo 'UK5nEmws' \
    --userId 'QtSfDqA4' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 310 publicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'CysEX4VO' \
    --userId 'y0n2EkPB' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 311 publicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'jC4ecHwt' \
    --namespace 'SGzayUaD' \
    --type 'card' \
    --userId '3m2eX31q' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 312 publicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'VPH2VHDz' \
    --userId 'nf57fQ1P' \
    --chargeStatus 'NEVER' \
    --itemId 'DkQ8zpNR' \
    --limit '44' \
    --offset '48' \
    --sku 'cEAShpFL' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 313 publicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "Ax1N5IGe", "itemId": "bNuvyrgh", "language": "VdsSwDc9", "region": "NJRX9Zda", "returnUrl": "C8sja1J7", "source": "eucGSSxZ"}' \
    --namespace 'JPto04wT' \
    --userId 'EI8isXmy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubscribeSubscription'
delete_file $TEMP_FILE

#- 314 publicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'AGW2rZ7b' \
    --userId 'YvVW26Oa' \
    --itemId 'ysx72rwV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 315 publicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace '3MdXNVRD' \
    --subscriptionId 'zT2sBbfl' \
    --userId 'g7cD247c' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscription'
delete_file $TEMP_FILE

#- 316 publicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace '1XYYJf18' \
    --subscriptionId 'StYu6wb2' \
    --userId 'We3Q6Pm7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 317 publicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": true, "reason": "kqWDPEP4"}' \
    --namespace 'CWnZJjXd' \
    --subscriptionId 'iUv9owF1' \
    --userId 'mQrc03W7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelSubscription'
delete_file $TEMP_FILE

#- 318 publicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'oOdpY5ZJ' \
    --subscriptionId 'ChQtpD2U' \
    --userId '9IQzA2ee' \
    --excludeFree 'True' \
    --limit '18' \
    --offset '33' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 319 publicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '3TfnJ6ry' \
    --namespace 'Q4wCg5It' \
    --userId 'n9TYOR2n' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetWallet'
delete_file $TEMP_FILE

#- 320 publicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '8qFjjSZx' \
    --namespace '0FeRdmgO' \
    --userId 'ta6pcKzS' \
    --limit '82' \
    --offset '10' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT