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
    --body '{"data": [{"itemIdentity": "L5sWS2qw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"EklkzLm8": "8LpLuYRO"}}]}' \
    --namespace '3C55yHpw' \
    >$TEMP_FILE 2>&1
update_status $? 'updateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 deleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace 'K2JaqenD' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 getPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace 'Gn7a2NUp' \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 updatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --body '{"environment": "lWiLjq06"}' \
    --namespace 'n6a0rW8E' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 deletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace 'fkpaXtwY' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 getStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace 'ZJaQ4Wbw' \
    >$TEMP_FILE 2>&1
update_status $? 'getStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 deleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace 'NmsFYetj' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 updateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --file 'tmp.dat' \
    --namespace 'EurH8elo' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 getSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace 'JzNKtRUa' \
    >$TEMP_FILE 2>&1
update_status $? 'getSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 updateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --body '{"publisherAuthenticationKey": "Tz1ETdsm"}' \
    --namespace 'wzjkkn9o' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 deleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace 'iQl05g7c' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 getTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace 'O3ZMb6Oj' \
    >$TEMP_FILE 2>&1
update_status $? 'getTwitchIAPConfig'
delete_file $TEMP_FILE

#- 67 updateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --body '{"clientId": "lo6DMNpP", "clientSecret": "2qMrTQ1U", "organizationId": "pjfU6wJh"}' \
    --namespace 'y1jOVkkU' \
    >$TEMP_FILE 2>&1
update_status $? 'updateTwitchIAPConfig'
delete_file $TEMP_FILE

#- 68 deleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'lS79527E' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteTwitchIAPConfig'
delete_file $TEMP_FILE

#- 69 getXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace 'Z25Ia8uC' \
    >$TEMP_FILE 2>&1
update_status $? 'getXblIAPConfig'
delete_file $TEMP_FILE

#- 70 updateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "eZFlLtEV"}' \
    --namespace 'pDAEbA82' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblIAPConfig'
delete_file $TEMP_FILE

#- 71 deleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace 'jy74lq0p' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteXblAPConfig'
delete_file $TEMP_FILE

#- 72 updateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password 'DE5xRwh5' \
    --namespace 'b45ebpcM' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblBPCertFile'
delete_file $TEMP_FILE

#- 73 syncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "7ScSs3UO", "targetItemId": "pAwIp9rR", "targetNamespace": "tn1PcCxd"}' \
    --namespace 'bumeYgOd' \
    --storeId 'EBWRQiW3' \
    >$TEMP_FILE 2>&1
update_status $? 'syncInGameItem'
delete_file $TEMP_FILE

#- 74 createItem
samples/cli/sample-apps Platform createItem \
    --body '{"appId": "KFfU8icH", "appType": "GAME", "baseAppId": "RB1GyLfL", "boothName": "g4RYuEbg", "categoryPath": "UDEcJyIv", "clazz": "sPwOr0Bm", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"FvfwFjTS": {}}, "features": ["mIEqoLyL"], "images": [{"as": "eUGmomGX", "caption": "9sXTZ0v8", "height": 30, "imageUrl": "qLfc5SwG", "smallImageUrl": "nReUULDX", "width": 85}], "itemIds": ["UIbb5nh6"], "itemQty": {"8ZnyUtRv": 96}, "itemType": "COINS", "listable": true, "localizations": {"SFTtFrOm": {"description": "jkFrFVA8", "localExt": {"t0xF34Xp": {}}, "longDescription": "t6ZlTTic", "title": "0kr2a0nI"}}, "maxCount": 28, "maxCountPerUser": 28, "name": "7UHCJK5s", "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 57, "fixedTrialCycles": 43, "graceDays": 69}, "regionData": {"q3aHVYIl": [{"currencyCode": "ewLRuHY8", "currencyNamespace": "3bGj0HTe", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1995-03-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1972-12-17T00:00:00Z", "discountedPrice": 16, "expireAt": "1972-05-12T00:00:00Z", "price": 5, "purchaseAt": "1980-08-26T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "gY0ax476", "stackable": true, "status": "INACTIVE", "tags": ["4MMO9Tw2"], "targetCurrencyCode": "JH0qhWIw", "targetNamespace": "HWTgzJFR", "thumbnailUrl": "Yw6t1IKZ", "useCount": 74}' \
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
    --body '{"currencyCode": "tbLLcF67", "currencyNamespace": "1WLtv38H", "customParameters": {"ecczopFm": {}}, "description": "eRwpcJBZ", "extOrderNo": "yi3mLC4K", "extUserId": "zekiSzey", "itemType": "BUNDLE", "language": "No_vhGc-853", "metadata": {"HbRdoTKK": "euSjfZe9"}, "notifyUrl": "i1osghF1", "omitNotification": false, "price": 51, "recurringPaymentOrderNo": "i1Nl47sy", "region": "J5ibzSHZ", "returnUrl": "eCLIvWPV", "sandbox": true, "sku": "dEqA61yT", "subscriptionId": "rMgsycTg", "targetNamespace": "mPzc20Eu", "targetUserId": "O5dMqGDl", "title": "SZPY07rE"}' \
    --namespace 'VSjzHjL6' \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 113 listExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'ZbXjG6DS' \
    --extTxId 'mpp3op8h' \
    >$TEMP_FILE 2>&1
update_status $? 'listExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 114 getPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace 'taRLxtW4' \
    --paymentOrderNo 'PvFkESTU' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrder'
delete_file $TEMP_FILE

#- 115 chargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "Lat5F1Le", "paymentMethod": "7cR7q6PW", "paymentProvider": "XSOLLA"}' \
    --namespace 'ZmmKz41i' \
    --paymentOrderNo '1Tp78Fip' \
    >$TEMP_FILE 2>&1
update_status $? 'chargePaymentOrder'
delete_file $TEMP_FILE

#- 116 refundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "JHahViJv"}' \
    --namespace 'LYW0kdml' \
    --paymentOrderNo 'k2luqSOO' \
    >$TEMP_FILE 2>&1
update_status $? 'refundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 117 simulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 53, "currencyCode": "2VOZBoNb", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 88, "vat": 65}' \
    --namespace 'ykqFzPwS' \
    --paymentOrderNo 'MXT53bBu' \
    >$TEMP_FILE 2>&1
update_status $? 'simulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 118 getPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'L38beOYD' \
    --paymentOrderNo 'VuHZQ9LY' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 119 createReward
samples/cli/sample-apps Platform createReward \
    --body '{"description": "t6w23Wf8", "eventTopic": "iEQo72sH", "maxAwarded": 0, "maxAwardedPerUser": 86, "namespaceExpression": "dcDlDyGc", "rewardCode": "sfIuI4Dv", "rewardConditions": [{"condition": "5lEJpK1A", "conditionName": "yRlzsrRX", "eventName": "EFZivQOH", "rewardItems": [{"duration": 64, "itemId": "6wVicNra", "quantity": 38}]}], "userIdExpression": "svvHLmIo"}' \
    --namespace 'hfNISLXM' \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 120 queryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace 'DWDdm5FE' \
    --eventTopic '4lliQMnu' \
    --limit '38' \
    --offset '71' \
    --sortBy 'bpEo4mUN' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 121 exportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace 'HFtdml2x' \
    >$TEMP_FILE 2>&1
update_status $? 'exportRewards'
delete_file $TEMP_FILE

#- 122 importRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'NviWacJc' \
    --replaceExisting 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'importRewards'
delete_file $TEMP_FILE

#- 123 getReward
samples/cli/sample-apps Platform getReward \
    --namespace 'm7Z548uu' \
    --rewardId 'KgoCBqS5' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 124 updateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "uIdCbwCe", "eventTopic": "eq9ouEdD", "maxAwarded": 39, "maxAwardedPerUser": 19, "namespaceExpression": "OgsypLkm", "rewardCode": "2ZYew5H7", "rewardConditions": [{"condition": "Zm0gnYyj", "conditionName": "6MXf9G1n", "eventName": "tyebvoeH", "rewardItems": [{"duration": 9, "itemId": "nAALKt7E", "quantity": 11}]}], "userIdExpression": "xIH446oU"}' \
    --namespace 'nP2S74un' \
    --rewardId 'Xwg0JKqV' \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 125 deleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'WW1rjK1e' \
    --rewardId 'pwkAvcsY' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 126 checkEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"vbgfBVPp": {}}}' \
    --namespace 'Ta8Yuq7T' \
    --rewardId 'KiNXmz7e' \
    >$TEMP_FILE 2>&1
update_status $? 'checkEventCondition'
delete_file $TEMP_FILE

#- 127 listStores
samples/cli/sample-apps Platform listStores \
    --namespace 'MrMD5Tba' \
    >$TEMP_FILE 2>&1
update_status $? 'listStores'
delete_file $TEMP_FILE

#- 128 createStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "UxTCTng0", "defaultRegion": "xjtdBrjs", "description": "3Kiykt2C", "supportedLanguages": ["k2gOlSat"], "supportedRegions": ["ECZ2UgwQ"], "title": "LqDqYSxT"}' \
    --namespace 'PuVlBqir' \
    >$TEMP_FILE 2>&1
update_status $? 'createStore'
delete_file $TEMP_FILE

#- 129 importStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'dp3yxnsE' \
    --storeId 'Tl1SvhQu' \
    >$TEMP_FILE 2>&1
update_status $? 'importStore'
delete_file $TEMP_FILE

#- 130 getPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'dsjIhXdx' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStore'
delete_file $TEMP_FILE

#- 131 deletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'iSoWpnnx' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePublishedStore'
delete_file $TEMP_FILE

#- 132 getPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'gX7BCPMq' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStoreBackup'
delete_file $TEMP_FILE

#- 133 rollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'zQIxibhp' \
    >$TEMP_FILE 2>&1
update_status $? 'rollbackPublishedStore'
delete_file $TEMP_FILE

#- 134 getStore
samples/cli/sample-apps Platform getStore \
    --namespace 'NYsHtdB3' \
    --storeId 'IkjuaZqh' \
    >$TEMP_FILE 2>&1
update_status $? 'getStore'
delete_file $TEMP_FILE

#- 135 updateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "JilrZkSS", "defaultRegion": "KgP5rxCR", "description": "77G9d5CA", "supportedLanguages": ["1GORSbL9"], "supportedRegions": ["n0dbWDEu"], "title": "pmdLQzPn"}' \
    --namespace 'NfBAcWAr' \
    --storeId 'bkCfdHIZ' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStore'
delete_file $TEMP_FILE

#- 136 deleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'b03otqmB' \
    --storeId 'uS9V2pCZ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStore'
delete_file $TEMP_FILE

#- 137 cloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace '23UHmk0l' \
    --storeId 'pJ4JLl01' \
    --targetStoreId 'qi7L2oDU' \
    >$TEMP_FILE 2>&1
update_status $? 'cloneStore'
delete_file $TEMP_FILE

#- 138 exportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'oVRUb39j' \
    --storeId '22P4Sp09' \
    >$TEMP_FILE 2>&1
update_status $? 'exportStore'
delete_file $TEMP_FILE

#- 139 querySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'cKmjRUbZ' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'VS7OK2Zr' \
    --limit '6' \
    --offset '4' \
    --sku 'sckMekRO' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'K2eFaGLo' \
    >$TEMP_FILE 2>&1
update_status $? 'querySubscriptions'
delete_file $TEMP_FILE

#- 140 recurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'SmEEPbLy' \
    --subscriptionId 'wJsyUie6' \
    >$TEMP_FILE 2>&1
update_status $? 'recurringChargeSubscription'
delete_file $TEMP_FILE

#- 141 getTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fZgLllUP' \
    --namespace 'sO8lg46S' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketDynamic'
delete_file $TEMP_FILE

#- 142 decreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "i7006vL2"}' \
    --boothName 'w4aajDAO' \
    --namespace 'x0iJjYle' \
    >$TEMP_FILE 2>&1
update_status $? 'decreaseTicketSale'
delete_file $TEMP_FILE

#- 143 getTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'aktqv2Wk' \
    --namespace 'ljQuD5mn' \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketBoothID'
delete_file $TEMP_FILE

#- 144 increaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 70, "orderNo": "ONqHGq8m"}' \
    --boothName 'B7mF2lMF' \
    --namespace 'caghFXJI' \
    >$TEMP_FILE 2>&1
update_status $? 'increaseTicketSale'
delete_file $TEMP_FILE

#- 145 anonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'JflRHFcs' \
    --userId 'IqCy4xDi' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeCampaign'
delete_file $TEMP_FILE

#- 146 anonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'fSSQ5On2' \
    --userId 'ccEcl3xe' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeEntitlement'
delete_file $TEMP_FILE

#- 147 anonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'iO4bwF5J' \
    --userId 'OjGoGxKM' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeFulfillment'
delete_file $TEMP_FILE

#- 148 anonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace '3qMce5tf' \
    --userId 'LcpjFZMK' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeIntegration'
delete_file $TEMP_FILE

#- 149 anonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'Cbp0pEbL' \
    --userId 'CLFpHxMY' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeOrder'
delete_file $TEMP_FILE

#- 150 anonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'F836075x' \
    --userId 'EpzdnYtp' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizePayment'
delete_file $TEMP_FILE

#- 151 anonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'ja5ig2is' \
    --userId 'QZga6Vy7' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeSubscription'
delete_file $TEMP_FILE

#- 152 anonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace '6izPiQRj' \
    --userId 'Ya8fv5fI' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeWallet'
delete_file $TEMP_FILE

#- 153 queryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 't22tIZhj' \
    --userId 'hgkigW22' \
    --activeOnly 'True' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'cM0GIALI' \
    --itemId '["bFCQgBcL"]' \
    --limit '78' \
    --offset '90' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlements'
delete_file $TEMP_FILE

#- 154 grantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1975-11-20T00:00:00Z", "grantedCode": "QVYx5rW2", "itemId": "gMsI1aYB", "itemNamespace": "itSn3UDe", "language": "Jiwy_Tobt_574", "quantity": 64, "region": "lKDwTKXB", "source": "REFERRAL_BONUS", "startDate": "1995-03-07T00:00:00Z", "storeId": "Qcd9IW8k"}]' \
    --namespace 'iCKeQJWZ' \
    --userId 'Bvcq1ETv' \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserEntitlement'
delete_file $TEMP_FILE

#- 155 getUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'WBxYZJh7' \
    --userId 'B8gbnSu9' \
    --activeOnly 'True' \
    --appId 'D2udaeYp' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 156 queryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'CXYSMiy8' \
    --userId '7CTqEQBg' \
    --activeOnly 'False' \
    --limit '48' \
    --offset '36' \
    --appType 'DEMO' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 157 getUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'lrDcain0' \
    --userId 'cOVF1zHw' \
    --activeOnly 'True' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '0sJ1Q0kp' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 158 getUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'hMTggSP2' \
    --userId 'SLcuAP7v' \
    --activeOnly 'True' \
    --entitlementClazz 'MEDIA' \
    --sku 'w2nbg8C7' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementBySku'
delete_file $TEMP_FILE

#- 159 existsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'Mvywhu6M' \
    --userId 'jOjuGzo1' \
    --appIds '["Fz4tU0aS"]' \
    --itemIds '["n98N8qOU"]' \
    --skus '["A0z92RaD"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 160 existsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'e8ngT8LR' \
    --userId 'QkMnG1LZ' \
    --itemIds '["yF2mdYY6"]' \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 161 getUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'ZMfuTYTK' \
    --userId 'sue48qBE' \
    --appId 'BNAV5BTe' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 162 getUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace '6ec1zA92' \
    --userId 'URCLSGPm' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ZWunHW7M' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 163 getUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'Yvr6QA7P' \
    --userId 'pepc92HA' \
    --entitlementClazz 'APP' \
    --sku 'ACdeyfUp' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 164 revokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'giPpf8nx' \
    --userId 'KJ3dnmtP' \
    --entitlementIds 'wa64Y4gP' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlements'
delete_file $TEMP_FILE

#- 165 getUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'EKMhhu9a' \
    --namespace '6f3xJNtU' \
    --userId 'lKLlIIAe' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlement'
delete_file $TEMP_FILE

#- 166 updateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1987-01-11T00:00:00Z", "nullFieldList": ["m5M6LsY1"], "startDate": "1994-10-27T00:00:00Z", "status": "CONSUMED", "useCount": 68}' \
    --entitlementId 'EcRls68M' \
    --namespace '3MPMRPBe' \
    --userId 'pyyMz6zf' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserEntitlement'
delete_file $TEMP_FILE

#- 167 consumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 87}' \
    --entitlementId '1pvTYYtD' \
    --namespace 'OiEi4RuE' \
    --userId 'cHCSGhpO' \
    >$TEMP_FILE 2>&1
update_status $? 'consumeUserEntitlement'
delete_file $TEMP_FILE

#- 168 disableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'ZQFlwOiu' \
    --namespace 'KGDFgK49' \
    --userId 'YuKnXks0' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserEntitlement'
delete_file $TEMP_FILE

#- 169 enableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'm8ANrcRa' \
    --namespace 'l7ta3foj' \
    --userId 'A3h4MMW3' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserEntitlement'
delete_file $TEMP_FILE

#- 170 getUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'AJ5zlsFB' \
    --namespace 'wjvLYvmg' \
    --userId '6avudQFF' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementHistories'
delete_file $TEMP_FILE

#- 171 revokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '1CPNY9u2' \
    --namespace 'dVYdglOO' \
    --userId 'oCeK0kPK' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlement'
delete_file $TEMP_FILE

#- 172 fulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 25, "endDate": "1984-05-09T00:00:00Z", "itemId": "Vux3lXcD", "itemSku": "8aertAVC", "language": "qs8XT8xy", "order": {"currency": {"currencyCode": "3nJ06Kks", "currencySymbol": "eA0ARj9r", "currencyType": "REAL", "decimals": 5, "namespace": "fayvnhi8"}, "ext": {"MDdY4WLH": {}}, "free": false}, "orderNo": "aUkYnQp5", "quantity": 9, "region": "gdmVE8Im", "source": "PROMOTION", "startDate": "1981-11-07T00:00:00Z", "storeId": "tQxqWRKH"}' \
    --namespace 'ohODoWOr' \
    --userId '98kjBUas' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillItem'
delete_file $TEMP_FILE

#- 173 redeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "9jjz2Frg", "language": "Ag_Diov", "region": "5W8tKH8o"}' \
    --namespace 'u9SdbxSX' \
    --userId 'crEFCwqe' \
    >$TEMP_FILE 2>&1
update_status $? 'redeemCode'
delete_file $TEMP_FILE

#- 174 fulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"rewards": [{"currency": {"currencyCode": "GNLdIBRd", "namespace": "liFQVMKE"}, "item": {"itemId": "zVUWlUWD", "itemSku": "s2x1EQU0", "itemType": "oepEvcja"}, "quantity": 88, "type": "ITEM"}], "source": "GIFT"}' \
    --namespace 'h6jJnFxi' \
    --userId 'nIHJ1o7a' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillRewards'
delete_file $TEMP_FILE

#- 175 queryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'q5Zznd5e' \
    --userId 'acobTsuR' \
    --endTime 'lhreQVFI' \
    --limit '59' \
    --offset '29' \
    --productId '8hJWVjKI' \
    --startTime 'OAw70DvA' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserIAPOrders'
delete_file $TEMP_FILE

#- 176 queryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'SGWUvzq1' \
    --userId 'Za3IBC4v' \
    >$TEMP_FILE 2>&1
update_status $? 'queryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 177 mockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "ujp", "productId": "aJp1rt7O", "region": "BgBCe6N0", "type": "GOOGLE"}' \
    --namespace 'I65Mn5tn' \
    --userId 'gEYXgPVT' \
    >$TEMP_FILE 2>&1
update_status $? 'mockFulfillIAPItem'
delete_file $TEMP_FILE

#- 178 queryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace '5CqXDZBV' \
    --userId 'MJyJeKFO' \
    --itemId '92YDtaZv' \
    --limit '71' \
    --offset '28' \
    --status 'REFUNDING' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserOrders'
delete_file $TEMP_FILE

#- 179 countOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'S0OxyipZ' \
    --userId 'uO4N9S2Y' \
    --itemId 'CgHa6XBc' \
    >$TEMP_FILE 2>&1
update_status $? 'countOfPurchasedItem'
delete_file $TEMP_FILE

#- 180 getUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'vGRYk5rU' \
    --orderNo 'tWHCnhmz' \
    --userId 'zppV7tKN' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrder'
delete_file $TEMP_FILE

#- 181 updateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "CLOSED", "statusReason": "YUQVBXym"}' \
    --namespace 'WcNlHaFx' \
    --orderNo 'YaGHUpmB' \
    --userId 'FyOrFKtx' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserOrderStatus'
delete_file $TEMP_FILE

#- 182 fulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'GNAi0fq4' \
    --orderNo 'xChPLd2l' \
    --userId 'Oopc7XoV' \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillUserOrder'
delete_file $TEMP_FILE

#- 183 getUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace 'pdd6rCpy' \
    --orderNo 'MrnH9YHX' \
    --userId 'h7KnCVOK' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderGrant'
delete_file $TEMP_FILE

#- 184 getUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'Y2zsBRGt' \
    --orderNo 'd8QY2OLb' \
    --userId 'ijrvfr8h' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderHistories'
delete_file $TEMP_FILE

#- 185 processUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "knjWUWdM"}, "authorisedTime": "1994-09-24T00:00:00Z", "chargebackReversedTime": "1981-06-26T00:00:00Z", "chargebackTime": "1999-04-28T00:00:00Z", "chargedTime": "1990-04-01T00:00:00Z", "createdTime": "1987-10-27T00:00:00Z", "currency": {"currencyCode": "jdBxLM07", "currencySymbol": "9pDAbTgm", "currencyType": "VIRTUAL", "decimals": 61, "namespace": "YEq2GkYK"}, "customParameters": {"1vYm9flX": {}}, "extOrderNo": "Q7CQoemn", "extTxId": "QG0dH0NV", "extUserId": "M9VEHTPq", "issuedAt": "1985-02-26T00:00:00Z", "metadata": {"kcu5vnz6": "GiNMboBJ"}, "namespace": "Hml0LJmp", "nonceStr": "Pi4mqhru", "paymentMethod": "iCZLGGP5", "paymentMethodFee": 93, "paymentOrderNo": "XkHNTMap", "paymentProvider": "STRIPE", "paymentProviderFee": 88, "paymentStationUrl": "bonsUJKA", "price": 58, "refundedTime": "1979-09-02T00:00:00Z", "salesTax": 21, "sandbox": false, "sku": "FrpLsGt9", "status": "REQUEST_FOR_INFORMATION", "statusReason": "TXWUSCQc", "subscriptionId": "MsHN7reI", "subtotalPrice": 21, "targetNamespace": "s7I12tAZ", "targetUserId": "c8sxxLx9", "tax": 98, "totalPrice": 85, "totalTax": 8, "txEndTime": "1979-11-12T00:00:00Z", "type": "WLm8cNJb", "userId": "YH5J4WiJ", "vat": 74}' \
    --namespace 'v9NvHwtw' \
    --orderNo '2Mjcy9ZL' \
    --userId '6Zs5Bu2X' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserOrderNotification'
delete_file $TEMP_FILE

#- 186 downloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'YopLWZeU' \
    --orderNo 'KJJNftRp' \
    --userId 'Ggk1iseR' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 187 createUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "EzzRG6z9", "currencyNamespace": "wmuHddyO", "customParameters": {"dibI1LVy": {}}, "description": "qbdY8DGZ", "extOrderNo": "KAuoIKz3", "extUserId": "Pp3zLWUx", "itemType": "SEASON", "language": "TsMm", "metadata": {"G0FoQP8q": "7aSsb85g"}, "notifyUrl": "Ah9RD3Zz", "omitNotification": false, "price": 70, "recurringPaymentOrderNo": "8ltt9IRq", "region": "Cflgln6r", "returnUrl": "5f0s5H6l", "sandbox": true, "sku": "f3QHa11h", "subscriptionId": "LLCgw5av", "title": "4LExdabD"}' \
    --namespace '8g2cvHfM' \
    --userId 'RupDA5xb' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserPaymentOrder'
delete_file $TEMP_FILE

#- 188 refundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "js3XRdHU"}' \
    --namespace 'J0GCmflI' \
    --paymentOrderNo 'XkgJ6zkT' \
    --userId 'woakq7sE' \
    >$TEMP_FILE 2>&1
update_status $? 'refundUserPaymentOrder'
delete_file $TEMP_FILE

#- 189 applyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "ejFZ1NtO", "orderNo": "NXb9w9hs"}' \
    --namespace 'QHszIsfr' \
    --userId 'lzKpQdd5' \
    >$TEMP_FILE 2>&1
update_status $? 'applyUserRedemption'
delete_file $TEMP_FILE

#- 190 queryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace '8dZP5Rvr' \
    --userId 'inNtvBtq' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'SkA68mIV' \
    --limit '70' \
    --offset '31' \
    --sku 'SVxBsLht' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserSubscriptions'
delete_file $TEMP_FILE

#- 191 getUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'ecToXA4M' \
    --userId '1oUFPhgo' \
    --excludeSystem 'False' \
    --limit '44' \
    --offset '78' \
    --subscriptionId 'C4FY69mM' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 192 platformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 19, "itemId": "oJNOGB83", "language": "Ns6Hl5Po", "reason": "ab6lKoVq", "region": "NBUzIxOf", "source": "glquS2q2"}' \
    --namespace 'DoWr9zvF' \
    --userId 'tKa2mOAq' \
    >$TEMP_FILE 2>&1
update_status $? 'platformSubscribeSubscription'
delete_file $TEMP_FILE

#- 193 checkUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'OokV1plx' \
    --userId 'Q2YriTPf' \
    --itemId 'ipD67jI2' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 194 getUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'hiZkrtLn' \
    --subscriptionId 'h2U1RQlM' \
    --userId 'xkfNMPNt' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscription'
delete_file $TEMP_FILE

#- 195 deleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'qv2TMz1b' \
    --subscriptionId '7SnzkXOe' \
    --userId 'k83Igm1w' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSubscription'
delete_file $TEMP_FILE

#- 196 cancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "SWsYvAsu"}' \
    --namespace '18obUdc8' \
    --subscriptionId 'mbvXcwcg' \
    --userId 'MqOXMziX' \
    --force 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'cancelSubscription'
delete_file $TEMP_FILE

#- 197 grantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 94, "reason": "dsEc3ClF"}' \
    --namespace 'P3mJwusC' \
    --subscriptionId 'BTe4kLcu' \
    --userId 'qL40NYge' \
    >$TEMP_FILE 2>&1
update_status $? 'grantDaysToSubscription'
delete_file $TEMP_FILE

#- 198 getUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'kRavpaGT' \
    --subscriptionId 'A9BTyCCy' \
    --userId 'N4Fw9i6m' \
    --excludeFree 'True' \
    --limit '19' \
    --offset '18' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 199 processUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "CqPVyYs0"}, "authorisedTime": "1997-02-23T00:00:00Z", "chargebackReversedTime": "1986-07-21T00:00:00Z", "chargebackTime": "1995-06-25T00:00:00Z", "chargedTime": "1998-05-06T00:00:00Z", "createdTime": "1979-01-16T00:00:00Z", "currency": {"currencyCode": "xM0DPAXQ", "currencySymbol": "BNMP7j3x", "currencyType": "REAL", "decimals": 83, "namespace": "aoZaWFsp"}, "customParameters": {"kU5kn6Pl": {}}, "extOrderNo": "PqD4Agfa", "extTxId": "sBfclBhZ", "extUserId": "jZbLnmgh", "issuedAt": "1989-06-27T00:00:00Z", "metadata": {"PyVIn3qa": "HP7KNuly"}, "namespace": "frENVQkp", "nonceStr": "caWHf6T2", "paymentMethod": "xOOljn7c", "paymentMethodFee": 4, "paymentOrderNo": "9efJI02T", "paymentProvider": "ALIPAY", "paymentProviderFee": 35, "paymentStationUrl": "gLBFJEkp", "price": 14, "refundedTime": "1986-07-23T00:00:00Z", "salesTax": 15, "sandbox": false, "sku": "oVpVc2HB", "status": "REQUEST_FOR_INFORMATION", "statusReason": "mj6cEi02", "subscriptionId": "hXl42ubC", "subtotalPrice": 87, "targetNamespace": "fy4GjKn5", "targetUserId": "ItHXLDZq", "tax": 31, "totalPrice": 87, "totalTax": 15, "txEndTime": "1979-04-20T00:00:00Z", "type": "R742GcbL", "userId": "uQOGMOEz", "vat": 24}' \
    --namespace 'djNhT0S4' \
    --subscriptionId '6kqyfMBS' \
    --userId 'aZc4SA16' \
    >$TEMP_FILE 2>&1
update_status $? 'processUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 200 acquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 77, "orderNo": "8gQCD7aB"}' \
    --boothName 'HWCYevNk' \
    --namespace 'fcQvl4Os' \
    --userId 'o7tx65zX' \
    >$TEMP_FILE 2>&1
update_status $? 'acquireUserTicket'
delete_file $TEMP_FILE

#- 201 checkWallet
samples/cli/sample-apps Platform checkWallet \
    --currencyCode 'CiTfjorL' \
    --namespace 'FqTmIUFU' \
    --userId 'oonHBI13' \
    >$TEMP_FILE 2>&1
update_status $? 'checkWallet'
delete_file $TEMP_FILE

#- 202 creditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 89, "reason": "ZFHfm0F8", "source": "REDEEM_CODE"}' \
    --currencyCode 'S2BrZ3nq' \
    --namespace '88YSSD7z' \
    --userId 'V0C8FvVU' \
    >$TEMP_FILE 2>&1
update_status $? 'creditUserWallet'
delete_file $TEMP_FILE

#- 203 payWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 21}' \
    --currencyCode 'RXBGPXId' \
    --namespace 'ft1biZHu' \
    --userId 'hWyFPHdX' \
    >$TEMP_FILE 2>&1
update_status $? 'payWithUserWallet'
delete_file $TEMP_FILE

#- 204 getUserWallet
samples/cli/sample-apps Platform getUserWallet \
    --namespace 'cyvZEhYe' \
    --userId 'USy5Ukc6' \
    --walletId '5naP11R8' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserWallet'
delete_file $TEMP_FILE

#- 205 debitUserWallet
samples/cli/sample-apps Platform debitUserWallet \
    --body '{"amount": 98, "reason": "ww9vq9nM"}' \
    --namespace 'a2Btgwyu' \
    --userId 'f2fjV30S' \
    --walletId 'Lxi7uyha' \
    >$TEMP_FILE 2>&1
update_status $? 'debitUserWallet'
delete_file $TEMP_FILE

#- 206 disableUserWallet
samples/cli/sample-apps Platform disableUserWallet \
    --namespace 'eFtcO9XN' \
    --userId 'y63QO9vW' \
    --walletId '0ck7TEDE' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserWallet'
delete_file $TEMP_FILE

#- 207 enableUserWallet
samples/cli/sample-apps Platform enableUserWallet \
    --namespace '8LeEQBeG' \
    --userId 'PLiE6tHC' \
    --walletId 'r0GPFvT0' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserWallet'
delete_file $TEMP_FILE

#- 208 listUserWalletTransactions
samples/cli/sample-apps Platform listUserWalletTransactions \
    --namespace 'SAK91y5v' \
    --userId 'CeBIJq0B' \
    --walletId '9UcI6c5c' \
    --limit '34' \
    --offset '9' \
    >$TEMP_FILE 2>&1
update_status $? 'listUserWalletTransactions'
delete_file $TEMP_FILE

#- 209 queryWallets
samples/cli/sample-apps Platform queryWallets \
    --namespace '9ealHOZp' \
    --currencyCode 'hcLncnjn' \
    --limit '25' \
    --offset '49' \
    --userId 'U8FSxXdC' \
    >$TEMP_FILE 2>&1
update_status $? 'queryWallets'
delete_file $TEMP_FILE

#- 210 getWallet
samples/cli/sample-apps Platform getWallet \
    --namespace 'rskoFqno' \
    --walletId 'wq9Laz1G' \
    >$TEMP_FILE 2>&1
update_status $? 'getWallet'
delete_file $TEMP_FILE

#- 211 syncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'Lt5Mhf8Z' \
    --end '7ahmbVPm' \
    --start '2g7xAFfR' \
    >$TEMP_FILE 2>&1
update_status $? 'syncOrders'
delete_file $TEMP_FILE

#- 212 testAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["RLUjfWS9"], "apiKey": "sftIfHGe", "authoriseAsCapture": false, "blockedPaymentMethods": ["UTSXOv12"], "clientKey": "PMcRO6E2", "dropInSettings": "Mkre5q7F", "liveEndpointUrlPrefix": "vaACp6he", "merchantAccount": "0fzjkPNN", "notificationHmacKey": "S0BfgF6i", "notificationPassword": "nIRsZ5hr", "notificationUsername": "qNzVszGV", "returnUrl": "P5P1iwhc", "settings": "f30C1KHR"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfig'
delete_file $TEMP_FILE

#- 213 testAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "5vbfZvYI", "privateKey": "FFctEKOL", "publicKey": "xSRxe0wm", "returnUrl": "WBMcNiWo"}' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfig'
delete_file $TEMP_FILE

#- 214 testCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "bB6o6alT", "secretKey": "QcP0EpE9"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfig'
delete_file $TEMP_FILE

#- 215 debugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'GNVwkgfJ' \
    --region 'J2HIalfz' \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 216 testPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "gRpTf9lx", "clientSecret": "F1JPBizX", "returnUrl": "ZtrGe8Ly", "webHookId": "OH24nneZ"}' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfig'
delete_file $TEMP_FILE

#- 217 testStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["eRld0bGA"], "publishableKey": "7JxWYzaE", "secretKey": "aimvokcW", "webhookSecret": "X59kwiYH"}' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfig'
delete_file $TEMP_FILE

#- 218 testWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "HT6Ivd0f", "key": "GpU209nV", "mchid": "RclumQTF", "returnUrl": "vr5rRyYz"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfig'
delete_file $TEMP_FILE

#- 219 testXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "aNmz3PjM", "flowCompletionUrl": "x2T89NTr", "merchantId": 62, "projectId": 87, "projectSecretKey": "UCXFkrux"}' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfig'
delete_file $TEMP_FILE

#- 220 getPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'egpkcXCf' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 221 updateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["zgcvv0WE"], "apiKey": "5EQhcomP", "authoriseAsCapture": true, "blockedPaymentMethods": ["7cpsLgr2"], "clientKey": "zEnjyRNj", "dropInSettings": "EC3FMDcZ", "liveEndpointUrlPrefix": "vwwf8aU9", "merchantAccount": "8In31mF4", "notificationHmacKey": "jlwKyGxT", "notificationPassword": "F1l5q1Np", "notificationUsername": "0sT1X8J2", "returnUrl": "eAWOzjmh", "settings": "9UzIfnho"}' \
    --id 'o6xUmTle' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdyenConfig'
delete_file $TEMP_FILE

#- 222 testAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'M7XhoDxG' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfigById'
delete_file $TEMP_FILE

#- 223 updateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "k2JSfZ64", "privateKey": "wWePq610", "publicKey": "3PONKIS7", "returnUrl": "F9emW4R1"}' \
    --id '5tAsiG31' \
    --sandbox 'True' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateAliPayConfig'
delete_file $TEMP_FILE

#- 224 testAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'yUOuOZhm' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfigById'
delete_file $TEMP_FILE

#- 225 updateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "Hkvek6Aa", "secretKey": "5kNnoclx"}' \
    --id 's9kxcvIp' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCheckoutConfig'
delete_file $TEMP_FILE

#- 226 testCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'YfWKjY9C' \
    --sandbox 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfigById'
delete_file $TEMP_FILE

#- 227 updatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "QYsGyhEO", "clientSecret": "ntEkedM1", "returnUrl": "A0bFqvjx", "webHookId": "bT3YuVda"}' \
    --id 'BN5RSjhc' \
    --sandbox 'False' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePayPalConfig'
delete_file $TEMP_FILE

#- 228 testPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'DvNrXL84' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfigById'
delete_file $TEMP_FILE

#- 229 updateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["fh5tZ0hq"], "publishableKey": "JLjQUmoY", "secretKey": "UnC849OB", "webhookSecret": "NuLZtofG"}' \
    --id 'AAaMpBQA' \
    --sandbox 'True' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateStripeConfig'
delete_file $TEMP_FILE

#- 230 testStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'QRy5Qz5V' \
    --sandbox 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfigById'
delete_file $TEMP_FILE

#- 231 updateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "yfBpHjtv", "key": "FwKSJyZe", "mchid": "qvpevcVX", "returnUrl": "Txs9LTor"}' \
    --id 'Iyx23LhL' \
    --validate 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfig'
delete_file $TEMP_FILE

#- 232 updateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id '7ds3g3Bu' \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfigCert'
delete_file $TEMP_FILE

#- 233 testWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HTPF19dB' \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfigById'
delete_file $TEMP_FILE

#- 234 updateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "YFws5Ya4", "flowCompletionUrl": "eOwWqW8H", "merchantId": 16, "projectId": 75, "projectSecretKey": "pTi1W63H"}' \
    --id 'ccgM5kYu' \
    --validate 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaConfig'
delete_file $TEMP_FILE

#- 235 testXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'TL55W4ws' \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfigById'
delete_file $TEMP_FILE

#- 236 updateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    --id 'Y1ocKDCV' \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaUIConfig'
delete_file $TEMP_FILE

#- 237 queryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'qrVeegT3' \
    --offset '40' \
    --region 'GDIIcvuu' \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 createPaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "kt8TC38m", "region": "YoUanQT4", "sandboxTaxJarApiToken": "Mmznv7r2", "specials": ["ADYEN"], "taxJarApiToken": "thibgeCL", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
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
    --namespace 'OiLgd8Wy' \
    --region '739QHzw0' \
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
    --body '{"aggregate": "ADYEN", "namespace": "zpd7TV5v", "region": "hMM2i3DM", "sandboxTaxJarApiToken": "6etfI7Tz", "specials": ["PAYPAL"], "taxJarApiToken": "3sKmtsyE", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --id '3zGu71qT' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 243 deletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'SSJEbWlE' \
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
    --body '{"sandboxTaxJarApiToken": "Tp9XOCA1", "taxJarApiToken": "X3HHMTla", "taxJarEnabled": false, "taxJarProductCodesMapping": {"AWQfBuBA": "OCjBfYCc"}}' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 246 syncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'plye2GaP' \
    --end 'NzkrgBH4' \
    --start 'icml6L36' \
    >$TEMP_FILE 2>&1
update_status $? 'syncPaymentOrders'
delete_file $TEMP_FILE

#- 247 publicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'Vg2F2Q9a' \
    --language 'ZDJg1OT8' \
    --storeId '109ot70T' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRootCategories'
delete_file $TEMP_FILE

#- 248 downloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'evJgsb2P' \
    --language 'yFfJ6qcH' \
    --storeId 'ABdGtV9j' \
    >$TEMP_FILE 2>&1
update_status $? 'downloadCategories'
delete_file $TEMP_FILE

#- 249 publicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'APqon7Um' \
    --namespace 'LNy9PkF9' \
    --language 'SnlbWNcA' \
    --storeId 'xv8uHDqJ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCategory'
delete_file $TEMP_FILE

#- 250 publicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'tYC7rznw' \
    --namespace 'NdLhqXvX' \
    --language 'Vnjvc0BM' \
    --storeId 'egJpW1Ze' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetChildCategories'
delete_file $TEMP_FILE

#- 251 publicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'uhpLX1BH' \
    --namespace 'Z4hnOmmy' \
    --language 'Xu6XtjNC' \
    --storeId 'qYk9TPUK' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetDescendantCategories'
delete_file $TEMP_FILE

#- 252 publicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'cDTfR7dp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListCurrencies'
delete_file $TEMP_FILE

#- 253 publicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'UEo2Oe08' \
    --language 'HpeJBfG0' \
    --region 'nGZHe5lw' \
    --storeId '2TlkPIxL' \
    --appId '9v4fpCd0' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemByAppId'
delete_file $TEMP_FILE

#- 254 publicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'Uk5h1kP1' \
    --appType 'DLC' \
    --baseAppId 'kkT08Cs6' \
    --categoryPath 'DdXZWowB' \
    --features 'gZizMvwH' \
    --itemType 'INGAMEITEM' \
    --language 'zf84MAma' \
    --limit '48' \
    --offset '70' \
    --region 'J6vzDTXx' \
    --sortBy 'syIaTgp0' \
    --storeId 'pwnEJL15' \
    --tags 'kxO4oVUP' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryItems'
delete_file $TEMP_FILE

#- 255 publicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'ng5JsHAk' \
    --language 'I47jO1wu' \
    --region 'AFuZcUwP' \
    --storeId 'teKdQgUT' \
    --sku 'F33fYWZf' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemBySku'
delete_file $TEMP_FILE

#- 256 publicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'QMAnziTh' \
    --language 'aE2btn0u' \
    --region 'p9GeTQ7X' \
    --storeId 'ymDSQNYX' \
    --itemIds 'NEpZyFhI' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetItems'
delete_file $TEMP_FILE

#- 257 publicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'eqiNHtVS' \
    --limit '27' \
    --offset '14' \
    --region 'xby8F6xF' \
    --storeId '8MhbJAYE' \
    --keyword 'DN1xszpp' \
    --language 'R69nsKAS' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchItems'
delete_file $TEMP_FILE

#- 258 publicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '5zKsTRXd' \
    --namespace '7b3v2fkZ' \
    --language 'Ikr06ojU' \
    --region 'toVJLGXe' \
    --storeId 'komvwD84' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetApp'
delete_file $TEMP_FILE

#- 259 publicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '9mo5vIkD' \
    --namespace 'ZYrYEf1x' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemDynamicData'
delete_file $TEMP_FILE

#- 260 publicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'YnlxHHXj' \
    --namespace 'FoXtwKW6' \
    --language 'AOnqnWCu' \
    --populateBundle 'True' \
    --region 'G8fNprJx' \
    --storeId '82nAFexN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItem'
delete_file $TEMP_FILE

#- 261 getPaymentCustomization
update_status 0 'getPaymentCustomization (skipped deprecated)'

#- 262 publicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "ou1AicsQ", "paymentProvider": "ADYEN", "returnUrl": "Kx5LjetH", "ui": "Ew0aCQpU", "zipCode": "6EGOW0VA"}' \
    --namespace 'I87DPH0f' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentUrl'
delete_file $TEMP_FILE

#- 263 publicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'LLiUqzay' \
    --paymentOrderNo '0gET8T53' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentMethods'
delete_file $TEMP_FILE

#- 264 publicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'yEej7Dsq' \
    --paymentOrderNo 'sTvNKAXq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 265 pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "fqMJHGeH"}' \
    --namespace 'aN2k1Eut' \
    --paymentOrderNo 'm9AAWDcD' \
    --paymentProvider 'WALLET' \
    --zipCode '3ISBgZCA' \
    >$TEMP_FILE 2>&1
update_status $? 'pay'
delete_file $TEMP_FILE

#- 266 publicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'f2pWOWs4' \
    --paymentOrderNo 'I2lOHfiu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 267 getPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace '4HraKYMt' \
    --sandbox 'False' \
    --paymentProvider 'WXPAY' \
    --region 'mvCHMtF1' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentPublicConfig'
delete_file $TEMP_FILE

#- 268 publicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace '5a7T0Ihe' \
    --code 'ywiPE1WU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetQRCode'
delete_file $TEMP_FILE

#- 269 publicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'R1PTFfJJ' \
    --payerID '46kzfqap' \
    --foreinginvoice 'bByIKoYz' \
    --invoiceId 'YtTWJA3n' \
    --payload 'FCDgWOpz' \
    --redirectResult '3yPQfqbe' \
    --resultCode 'VG7i4VTA' \
    --sessionId 'huFYhEgQ' \
    --status 'Bb9Hni6l' \
    --token 'DMj9gvkB' \
    --type 'cQjQ56Ru' \
    --userId 'AvUlMWp8' \
    --orderNo 'WGpZxCe0' \
    --paymentOrderNo 'KsmXtGBb' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'V58TIThQ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 270 getPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace '52PYNknB' \
    --zipCode 'Cjirw4hm' \
    --paymentOrderNo 'fMSl2bET' \
    --paymentProvider 'WALLET' \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxValue'
delete_file $TEMP_FILE

#- 271 getRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'FLFOfdl0' \
    --rewardCode 'yRndbO78' \
    >$TEMP_FILE 2>&1
update_status $? 'getRewardByCode'
delete_file $TEMP_FILE

#- 272 queryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'R8ybYsHx' \
    --eventTopic '3BIgGuo8' \
    --limit '23' \
    --offset '53' \
    --sortBy '58OI2LMY' \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards1'
delete_file $TEMP_FILE

#- 273 getReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'RX16nfCJ' \
    --rewardId '833JKRNc' \
    >$TEMP_FILE 2>&1
update_status $? 'getReward1'
delete_file $TEMP_FILE

#- 274 publicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'dpuCxSDF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListStores'
delete_file $TEMP_FILE

#- 275 publicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'WMVcsOZl' \
    --appIds '["S0ulerU6"]' \
    --itemIds '["1drwLngb"]' \
    --skus '["ZxOGxFwn"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 276 publicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'mB60ea7X' \
    --appId 'ItZS8KIu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 277 publicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace '9T604oPa' \
    --entitlementClazz 'CODE' \
    --itemId 'gyShKuLB' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 278 publicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace '7pQLZiWV' \
    --entitlementClazz 'CODE' \
    --sku 'c8PVwShV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 279 publicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'Qz7FY3h2' \
    --appIds '["oVVScVv3"]' \
    --itemIds '["YTBM4teO"]' \
    --skus '["pqevsWvM"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 280 publicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'hiheE2KM' \
    --namespace '7Ctal5z7' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyWallet'
delete_file $TEMP_FILE

#- 281 publicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 14}' \
    --namespace 'LiOYz1jF' \
    --userId 'fu1y1d77' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 282 syncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "D8ZNOfHy", "steamId": "enhbRZ4a"}' \
    --namespace '9UjjjU0E' \
    --userId 'ggYLcGiE' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamDLC'
delete_file $TEMP_FILE

#- 283 syncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "DZbDl9Ze"}' \
    --namespace 'ZH3M87v0' \
    --userId 'FhdKDEfX' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxDLC'
delete_file $TEMP_FILE

#- 284 publicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'RhaO0AYS' \
    --userId 'qvcV2Lqf' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'X28Je4ky' \
    --itemId '["PQjgDJNO"]' \
    --limit '61' \
    --offset '76' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 285 publicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'tdEtN4sE' \
    --userId 'ebnQucga' \
    --appId 'op5NEdhu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 286 publicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'rScNiUxn' \
    --userId 'JUewUVhk' \
    --limit '64' \
    --offset '87' \
    --appType 'DEMO' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 287 publicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'LCb9evyw' \
    --userId 'ZywunLIm' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'hyZsb7Yh' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 288 publicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'hQbDxLRK' \
    --userId 'xzUtpKDC' \
    --entitlementClazz 'APP' \
    --sku 'l2otjUWK' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 289 publicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'xgW6n8AJ' \
    --userId 'aeqxTPgZ' \
    --appIds '["KFi3SBGl"]' \
    --itemIds '["CD4ig5ZR"]' \
    --skus '["oJd1as1W"]' \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 290 publicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'kfh3l8Hy' \
    --userId 'GWZTdpmT' \
    --appId 'xPUBFjTI' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 291 publicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'IKcXlxPf' \
    --userId 'dDyjJ0ww' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'YeljMyoe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 292 publicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'b3gsMOMd' \
    --userId 'qbt4PnuF' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '18ijp3Cm' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 293 publicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'zrfVIa1v' \
    --namespace 'i9oky2P7' \
    --userId 'fIgBRSBl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlement'
delete_file $TEMP_FILE

#- 294 publicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 46}' \
    --entitlementId 'ukoOTCos' \
    --namespace 'jAXo6ljB' \
    --userId 'VW8r7nyN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 295 publicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "cVl6ZB3b", "language": "hUPb-Vxko", "region": "wGRJbZqX"}' \
    --namespace 'gQ9azOre' \
    --userId 'TsviZmgm' \
    >$TEMP_FILE 2>&1
update_status $? 'publicRedeemCode'
delete_file $TEMP_FILE

#- 296 publicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "WMG-649", "productId": "3zT6xRqy", "receiptData": "V0tlLaMY", "region": "L1p95v9m", "transactionId": "OiIFEdQ2"}' \
    --namespace 'RKeQy2WR' \
    --userId 'ztR5qztu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 297 syncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "hVaJDWx2"}' \
    --namespace 'OdrUV7bh' \
    --userId 'cKGIOZcB' \
    >$TEMP_FILE 2>&1
update_status $? 'syncEpicGamesInventory'
delete_file $TEMP_FILE

#- 298 publicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": false, "language": "xK_XhPU", "orderId": "ZNxhbsaS", "packageName": "FtTmbIf2", "productId": "hFQRmsi0", "purchaseTime": 25, "purchaseToken": "elJQkLtV", "region": "2QnPsmhF"}' \
    --namespace 'VPtJTGig' \
    --userId '12OdDnxX' \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 299 publicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "uJoZgOG4", "price": 0.3073435175433483, "productId": "eWVMI9K1", "serviceLabel": 8}' \
    --namespace 'J6xC2h6U' \
    --userId '8TgR2k2R' \
    >$TEMP_FILE 2>&1
update_status $? 'publicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 300 syncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "kEr8XbmQ", "language": "UVeM_vb", "region": "QPhwwHR0", "stadiaPlayerId": "qyfFcSCd"}' \
    --namespace 'kfe5eawF' \
    --userId 'pdHeH5p8' \
    >$TEMP_FILE 2>&1
update_status $? 'syncStadiaEntitlement'
delete_file $TEMP_FILE

#- 301 syncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "Zx8jy7nx", "currencyCode": "GzOTBpmm", "language": "Ue-dTWB-330", "price": 0.013041918173782974, "productId": "LdFifUk9", "region": "p700jB0p", "steamId": "4HpK8pvu"}' \
    --namespace 'fSxYM0Vk' \
    --userId 'uqOKrhvM' \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamInventory'
delete_file $TEMP_FILE

#- 302 syncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "wvD04UY8", "language": "HV_RjZa", "region": "6FOuhQIB"}' \
    --namespace 'Abup1fpW' \
    --userId 'sO6fW468' \
    >$TEMP_FILE 2>&1
update_status $? 'syncTwitchDropsEntitlement'
delete_file $TEMP_FILE

#- 303 syncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "fWxqRkJD", "price": 0.14145640345472266, "productId": "NhYDgVm0", "xstsToken": "TCaos4wy"}' \
    --namespace 'jaPP6Cle' \
    --userId 'kQGm25KY' \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxInventory'
delete_file $TEMP_FILE

#- 304 publicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'mFZxQr4x' \
    --userId 'bV63gcdU' \
    --itemId '4vyIPJeR' \
    --limit '18' \
    --offset '56' \
    --status 'CHARGED' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserOrders'
delete_file $TEMP_FILE

#- 305 publicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "7UK5nEmw", "discountedPrice": 37, "ext": {"QtSfDqA4": {}}, "itemId": "CysEX4VO", "language": "NeK_EChW-uA", "price": 59, "quantity": 15, "region": "3m2eX31q", "returnUrl": "VPH2VHDz"}' \
    --namespace 'nf57fQ1P' \
    --userId 'Y5uDkQ8z' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserOrder'
delete_file $TEMP_FILE

#- 306 publicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'pNRwycEA' \
    --orderNo 'ShpFLpqA' \
    --userId 'x1N5IGeb' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrder'
delete_file $TEMP_FILE

#- 307 publicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'NuvyrghV' \
    --orderNo 'dsSwDc9N' \
    --userId 'JRX9ZdaC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserOrder'
delete_file $TEMP_FILE

#- 308 publicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '8sja1J7e' \
    --orderNo 'ucGSSxZJ' \
    --userId 'Pto04wTE' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 309 publicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'I8isXmyA' \
    --orderNo 'GW2rZ7bY' \
    --userId 'vVW26Oay' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 310 publicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'sx72rwV3' \
    --userId 'MdXNVRDz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 311 publicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'T2sBbflg' \
    --namespace '7cD247c1' \
    --type 'card' \
    --userId '18StYu6w' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 312 publicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'b2We3Q6P' \
    --userId 'm7RBkqWD' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'P4CWnZJj' \
    --limit '99' \
    --offset '7' \
    --sku 'iUv9owF1' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 313 publicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "c03W7oOd", "itemId": "pY5ZJChQ", "language": "Pdu-EXJQ", "region": "nJ6ryQ4w", "returnUrl": "Cg5Itn9T", "source": "YOR2n8qF"}' \
    --namespace 'jjSZx0Fe' \
    --userId 'RdmgOta6' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubscribeSubscription'
delete_file $TEMP_FILE

#- 314 publicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'pcKzSPfe' \
    --userId 'k369fIM1' \
    --itemId 'tcxwt2Xq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 315 publicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'PFaIxBgz' \
    --subscriptionId 'RO8GKycd' \
    --userId 'cXuULpvu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscription'
delete_file $TEMP_FILE

#- 316 publicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'BNRzUbH0' \
    --subscriptionId 'hI7yCEyj' \
    --userId 'KXQPnomA' \
    >$TEMP_FILE 2>&1
update_status $? 'publicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 317 publicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": true, "reason": "HMpmDvt4"}' \
    --namespace 'tkWavQ0j' \
    --subscriptionId 'o17Qq6AF' \
    --userId 'dE7URb19' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelSubscription'
delete_file $TEMP_FILE

#- 318 publicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'BcvWfPxH' \
    --subscriptionId 'PQaUClyA' \
    --userId 'jfGkGwDs' \
    --excludeFree 'False' \
    --limit '28' \
    --offset '79' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 319 publicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'dZjNjjtl' \
    --namespace '8XIGZV3G' \
    --userId 'BXIHxWGX' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetWallet'
delete_file $TEMP_FILE

#- 320 publicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '4iwwHLoh' \
    --namespace 'aKvD9nNe' \
    --userId 'Li2tRrcl' \
    --limit '77' \
    --offset '28' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT