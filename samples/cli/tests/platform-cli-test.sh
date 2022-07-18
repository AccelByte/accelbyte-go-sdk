#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..340"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListFulfillmentScripts
samples/cli/sample-apps Platform listFulfillmentScripts \
    > test.out 2>&1
eval_tap $? 2 'ListFulfillmentScripts' test.out

#- 3 TestFulfillmentScriptEval
samples/cli/sample-apps Platform testFulfillmentScriptEval \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "SOFTWARE", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "BUNDLE", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "REDEEM_CODE"}, "script": "J42cwmzB", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'SMNcoAAO' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --body '{"grantDays": "jKNjfcYH"}' \
    --id 'm093aYgB' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'U1sqjyK0' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --body '{"grantDays": "XH45PaRS"}' \
    --id 'OFQBtu23' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace 'REZ8hRVX' \
    --limit '74' \
    --name 'GOvDdYiQ' \
    --offset '89' \
    --tag '9i7mV1C9' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --body '{"description": "1pjG9gpx", "items": [{"extraSubscriptionDays": 75, "itemId": "6ycTQdvl", "itemName": "n2LAuSQW", "quantity": 61}], "maxRedeemCountPerCampaignPerUser": 99, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 62, "name": "E1YHo9m1", "redeemEnd": "1998-01-13T00:00:00Z", "redeemStart": "1974-09-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bNYqgUqs"], "type": "REDEMPTION"}' \
    --namespace 'ArFPiHUI' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'vaCv8kU9' \
    --namespace 'dBBpdsJL' \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --body '{"description": "hsVyExrk", "items": [{"extraSubscriptionDays": 46, "itemId": "oot0B7WO", "itemName": "fercZdpM", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 17, "maxRedeemCountPerCode": 58, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 88, "name": "fExaI3uz", "redeemEnd": "1989-05-29T00:00:00Z", "redeemStart": "1973-11-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Alt4hr7H"]}' \
    --campaignId 'mOYiBA5l' \
    --namespace 'tAOXmlG6' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'eh1dTdoT' \
    --namespace 'FpBIcuC1' \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace 'dQY93OJn' \
    --storeId 'J6Te9vD8' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --body '{"categoryPath": "ldz7Hu8A", "localizationDisplayNames": {"D79kdWun": "vizU0q1p"}}' \
    --namespace 'HyhhERoG' \
    --storeId 'gdrysMiz' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace 'BGSRdP2l' \
    --storeId '7DNSZ8Aq' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '0XiPLQXS' \
    --namespace 'e07ZddOG' \
    --storeId 'TMlJjBwj' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --body '{"localizationDisplayNames": {"9HJHQKse": "EdSXRDSv"}}' \
    --categoryPath 'guauw1xT' \
    --namespace '7eMwSl9M' \
    --storeId 'LH0NnTJ2' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ulNzBvwJ' \
    --namespace 'aQa547Jl' \
    --storeId 'lvA8RWSp' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'abUt7xk6' \
    --namespace 'QxyWhfqo' \
    --storeId 'WfJw2o8o' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'WUqvPCZ2' \
    --namespace 'HzT7NXmW' \
    --storeId 'DlXsuNId' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'QJR5lsNO' \
    --namespace 'lvkfwaSb' \
    --activeOnly 'False' \
    --batchNo '37' \
    --code 'uLCgToxu' \
    --limit '94' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --body '{"quantity": 9}' \
    --campaignId 'kJgvg6h5' \
    --namespace 'HIpH0Dvi' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId 'plEk4vj3' \
    --namespace 'LDp4yqDt' \
    --batchNo '85' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'UZDpxlHa' \
    --namespace 'sinGcjrk' \
    --batchNo '25' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'RMttgjDS' \
    --namespace 'aIVBmft3' \
    --batchNo '93' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'dg7p9PGm' \
    --namespace 'Y2H5kX4M' \
    --code 'sisSX28n' \
    --limit '53' \
    --offset '86' \
    --userId 'xWRpv5ou' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code '5xtvd28O' \
    --namespace 'UfCt8UJC' \
    --redeemable 'False' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'lNyj6HsT' \
    --namespace 'tX8P3lln' \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'aaS9lqyy' \
    --namespace 'gPcfkJIx' \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace 'fQZza8kN' \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --body '{"currencyCode": "DxVMq7HJ", "currencySymbol": "k0F89xAc", "currencyType": "REAL", "decimals": 0, "localizationDescriptions": {"ENtrl0pT": "KZTXqzHu"}}' \
    --namespace 'BMYQSA2j' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --body '{"localizationDescriptions": {"z1ZOpdOj": "SyMddB41"}}' \
    --currencyCode 'JuMf7RUy' \
    --namespace 'BHRj8IiR' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'imRllHT6' \
    --namespace 'Dc40vFFA' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '6gpU7EW3' \
    --namespace 'x1dCpm55' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'gOeqQIqc' \
    --namespace 'JVKmBM1J' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace '1IbuTrrk' \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --body '{"data": [{"id": "bmuT1whO", "rewards": [{"currency": {"currencyCode": "qmEnDXIW", "namespace": "rBPlSay4"}, "item": {"itemId": "6mv71BAZ", "itemSku": "AOjtFJ2v", "itemType": "mTj7tT7T"}, "quantity": 67, "type": "ITEM"}]}]}' \
    --namespace 'dCkIsZoA' \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace 'rWwPHcyF' \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace 'AdAtYciL' \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"RwFRr0gw": "B9tz3vp9"}}]}' \
    --namespace '9XVlV8rK' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace '3tE6n0sm' \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace 'ip1tw3L7' \
    --activeOnly 'False' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'qtv6JfPZ' \
    --itemId '["wcCVOXcV"]' \
    --limit '1' \
    --offset '90' \
    --userId 'mCwtD2lA' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'H01o6Ndc' \
    --namespace 'BIgzrDyW' \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace 'pFBYGmmB' \
    --limit '1' \
    --offset '44' \
    --status 'SUCCESS' \
    --userId 'oKyNpdAa' \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace 'sm8xwUfz' \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --body '{"bundleId": "OlQiZY4N", "password": "bOQXJ7uO"}' \
    --namespace 'TzNMvuq2' \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace 'tNl4CX4I' \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace 'jiK4DEUJ' \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --body '{"sandboxId": "RVK3l9Eb"}' \
    --namespace '0R1XRb0R' \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace 'H8vS1sme' \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace 'OlngrdTX' \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --body '{"applicationName": "CzaPBtkZ", "serviceAccountId": "Mio4wcyh"}' \
    --namespace 'loVS3rYp' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace '8QtcEmCE' \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --file 'tmp.dat' \
    --namespace 'Vc75Ufey' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace 'pWjDNhzC' \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --body '{"data": [{"itemIdentity": "L5sWS2qw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"EklkzLm8": "8LpLuYRO"}}]}' \
    --namespace '3C55yHpw' \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace 'K2JaqenD' \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace 'Gn7a2NUp' \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --body '{"environment": "lWiLjq06"}' \
    --namespace 'n6a0rW8E' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace 'fkpaXtwY' \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace 'ZJaQ4Wbw' \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace 'NmsFYetj' \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --file 'tmp.dat' \
    --namespace 'EurH8elo' \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace 'JzNKtRUa' \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --body '{"appId": "Tz1ETdsm", "publisherAuthenticationKey": "wzjkkn9o"}' \
    --namespace 'iQl05g7c' \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace 'O3ZMb6Oj' \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace 'lo6DMNpP' \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --body '{"clientId": "2qMrTQ1U", "clientSecret": "pjfU6wJh", "organizationId": "y1jOVkkU"}' \
    --namespace 'lS79527E' \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'Z25Ia8uC' \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace 'eZFlLtEV' \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "pDAEbA82"}' \
    --namespace 'jy74lq0p' \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace 'DE5xRwh5' \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password 'b45ebpcM' \
    --namespace '7ScSs3UO' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "pAwIp9rR", "targetItemId": "tn1PcCxd", "targetNamespace": "bumeYgOd"}' \
    --namespace 'EBWRQiW3' \
    --storeId 'KFfU8icH' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --body '{"appId": "4081gRB1", "appType": "SOFTWARE", "baseAppId": "LfLg4RYu", "boothName": "EbgUDEcJ", "categoryPath": "yIvsPwOr", "clazz": "0BmV5iFv", "displayOrder": 10, "entitlementType": "DURABLE", "ext": {"FjTSmIEq": {}}, "features": ["oLyLeUGm"], "images": [{"as": "omGX9sXT", "caption": "Z0v8pqLf", "height": 4, "imageUrl": "5SwGnReU", "smallImageUrl": "ULDX4QUI", "width": 3}], "itemIds": ["b5nh68Zn"], "itemQty": {"yUtRvW9h": 78}, "itemType": "SEASON", "listable": true, "localizations": {"TtFrOmjk": {"description": "FrFVA8t0", "localExt": {"xF34Xpt6": {}}, "longDescription": "ZlTTic0k", "title": "r2a0nI2o"}}, "maxCount": 28, "maxCountPerUser": 92, "name": "HCJK5sp0", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 43, "fixedTrialCycles": 69, "graceDays": 33}, "regionData": {"3aHVYIle": [{"currencyCode": "wLRuHY83", "currencyNamespace": "bGj0HTee", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1972-12-17T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1972-05-12T00:00:00Z", "discountedPrice": 5, "expireAt": "1980-08-26T00:00:00Z", "price": 30, "purchaseAt": "1983-02-21T00:00:00Z", "trialPrice": 100}]}, "seasonType": "PASS", "sku": "x476ED4M", "stackable": true, "status": "INACTIVE", "tags": ["hWIwHWTg"], "targetCurrencyCode": "zJFRYw6t", "targetNamespace": "1IKZLO6V", "thumbnailUrl": "4Ode46Qm", "useCount": 57}' \
    --namespace 'idgdpP7R' \
    --storeId 'TC587lmU' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace 'mBziPZBn' \
    --activeOnly 'False' \
    --storeId 'Ofkllxfq' \
    --appId '0NsrSjw5' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace 'Hog0blM1' \
    --activeOnly 'False' \
    --appType 'GAME' \
    --availableDate 'YGczLINl' \
    --baseAppId 'EC0OEsE3' \
    --categoryPath 'yzIsUP0N' \
    --features 'jluOrGZT' \
    --itemType 'SEASON' \
    --limit '36' \
    --offset '74' \
    --region 'W7Fjfs9n' \
    --sortBy '["updatedAt:desc"]' \
    --storeId 'kcZ38fUE' \
    --tags 'anjKHbXf' \
    --targetNamespace 'k1zxdzxg' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace '0UXcRyHi' \
    --activeOnly 'True' \
    --features '["8BzVWu1t"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace 'OmhUtCgc' \
    --activeOnly 'False' \
    --storeId 'vGrEbcZU' \
    --sku 'DExH1tay' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace 'OGXIHzMR' \
    --activeOnly 'False' \
    --language 'MCtOJsEi' \
    --populateBundle 'False' \
    --region 'lrbpyyEc' \
    --storeId 'QxVgJIjM' \
    --sku 'ZqcWfMl6' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace 'dqrpD4tn' \
    --activeOnly 'False' \
    --storeId '3ZRB3Ikd' \
    --sku 'tPfAJEom' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace 'wenJvQ8g' \
    --sku '["rtQSv6Ec"]' \
    --storeId 'ALcMIPms' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace '5bT51M4y' \
    --activeOnly 'False' \
    --language 'o8S0EnGL' \
    --region 'vGvfuSyC' \
    --storeId 'Tyjj4mCa' \
    --itemIds 'iuMGKOF5' \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace 'GJJooSXU' \
    --activeOnly 'False' \
    --limit '93' \
    --offset '84' \
    --storeId 'HGpBABnO' \
    --keyword 'lxDznICQ' \
    --language 'VyqBg34W' \
    > test.out 2>&1
eval_tap $? 84 'SearchItems' test.out

#- 85 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace 'TtDkn0rt' \
    --activeOnly 'False' \
    --limit '39' \
    --offset '47' \
    --sortBy '["updatedAt"]' \
    --storeId '12EaQ1rU' \
    > test.out 2>&1
eval_tap $? 85 'QueryUncategorizedItems' test.out

#- 86 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'QYCNTiDX' \
    --namespace '4jE3M2Is' \
    --activeOnly 'True' \
    --storeId '8QwNyOlX' \
    > test.out 2>&1
eval_tap $? 86 'GetItem' test.out

#- 87 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --body '{"appId": "fIWd0mcq", "appType": "DEMO", "baseAppId": "7cWfCKK6", "boothName": "Dij1gFce", "categoryPath": "nEMySPfh", "clazz": "xBenDiTi", "displayOrder": 52, "entitlementType": "DURABLE", "ext": {"FYmFKjaE": {}}, "features": ["Lmmll6oe"], "images": [{"as": "xId1OKGU", "caption": "N2Uznd7u", "height": 94, "imageUrl": "a7t14yvS", "smallImageUrl": "YSV52bHi", "width": 11}], "itemIds": ["CIf4tsuu"], "itemQty": {"6Pkam6tF": 89}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"4ZxA2PzZ": {"description": "FRkBNlg6", "localExt": {"hn5qusKy": {}}, "longDescription": "ZAuV6uUv", "title": "qM0lV6UZ"}}, "maxCount": 77, "maxCountPerUser": 22, "name": "EbxHNgJR", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 1, "graceDays": 40}, "regionData": {"njdAqnHU": [{"currencyCode": "z44tx4O6", "currencyNamespace": "hamPwNoi", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-10-13T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1986-09-28T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-10-04T00:00:00Z", "price": 76, "purchaseAt": "1994-08-11T00:00:00Z", "trialPrice": 74}]}, "seasonType": "PASS", "sku": "N0DsaD5F", "stackable": true, "status": "INACTIVE", "tags": ["sFe9OYEJ"], "targetCurrencyCode": "VsYffmhy", "targetNamespace": "x6J25PrM", "thumbnailUrl": "4S3cB8m1", "useCount": 15}' \
    --itemId 'EeLLgoaY' \
    --namespace 'th6zcf8e' \
    --storeId 'A45OMvOb' \
    > test.out 2>&1
eval_tap $? 87 'UpdateItem' test.out

#- 88 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Wejo9LfG' \
    --namespace 'eegJMaBG' \
    --storeId 'R6D1ZoZE' \
    > test.out 2>&1
eval_tap $? 88 'DeleteItem' test.out

#- 89 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --body '{"count": 85, "orderNo": "kJ8DSqFn"}' \
    --itemId 'hdKvjFCF' \
    --namespace 'bSFlEWoM' \
    > test.out 2>&1
eval_tap $? 89 'AcquireItem' test.out

#- 90 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'PdgK5zn6' \
    --namespace '2mhnFSpC' \
    --activeOnly 'False' \
    --storeId 'DNBOcygv' \
    > test.out 2>&1
eval_tap $? 90 'GetApp' test.out

#- 91 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --body '{"carousel": [{"alt": "v2LAgfBG", "previewUrl": "VzanbKYs", "thumbnailUrl": "B0gqJ8Vh", "type": "image", "url": "kJl2p9rB", "videoSource": "vimeo"}], "developer": "8N5egapq", "forumUrl": "xDy4cLfN", "genres": ["Casual"], "localizations": {"zzEZYA8j": {"announcement": "IkMJb7cZ", "slogan": "2bPsaLLp"}}, "platformRequirements": {"EBVEMk5A": [{"additionals": "sKaF2P44", "directXVersion": "lXkI3zdi", "diskSpace": "RiC5IbPi", "graphics": "t71JWlYC", "label": "oi4nDfPu", "osVersion": "5V6QSYxE", "processor": "VOryVuZY", "ram": "mgUeEPB5", "soundCard": "AGPgvk0Z"}]}, "platforms": ["Linux"], "players": ["Coop"], "primaryGenre": "Action", "publisher": "j0EBA4az", "releaseDate": "1992-07-19T00:00:00Z", "websiteUrl": "0d56smob"}' \
    --itemId 'or4p1Plg' \
    --namespace 'QB9EcNGO' \
    --storeId 'eBRY6G5a' \
    > test.out 2>&1
eval_tap $? 91 'UpdateApp' test.out

#- 92 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'e07deDLa' \
    --namespace 'Z8JCvbeT' \
    --storeId 'fW0hgzra' \
    > test.out 2>&1
eval_tap $? 92 'DisableItem' test.out

#- 93 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'bLJxEwJr' \
    --namespace 'EBmQ64ha' \
    > test.out 2>&1
eval_tap $? 93 'GetItemDynamicData' test.out

#- 94 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'NOzlGu68' \
    --namespace 'UYyupjdD' \
    --storeId 'etnoT0rf' \
    > test.out 2>&1
eval_tap $? 94 'EnableItem' test.out

#- 95 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'WtVPwQfq' \
    --itemId '6V92gbfP' \
    --namespace 'ouNdmP7f' \
    --storeId 'ckVnuDGv' \
    > test.out 2>&1
eval_tap $? 95 'FeatureItem' test.out

#- 96 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'YIb1p5tc' \
    --itemId 'R5z8ZJLj' \
    --namespace 'SHcaR3X4' \
    --storeId 'tZmwr0Qm' \
    > test.out 2>&1
eval_tap $? 96 'DefeatureItem' test.out

#- 97 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'OnsEg49e' \
    --namespace 'Xp0xQkZ2' \
    --activeOnly 'False' \
    --language 'uwWWy0tU' \
    --populateBundle 'True' \
    --region 'eSrvejUK' \
    --storeId 'wVfF37Vr' \
    > test.out 2>&1
eval_tap $? 97 'GetLocaleItem' test.out

#- 98 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --body '{"orderNo": "7mkDzFBI"}' \
    --itemId '1VwhkVSK' \
    --namespace 'DlNFOUHB' \
    > test.out 2>&1
eval_tap $? 98 'ReturnItem' test.out

#- 99 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace 'JsvTsqk9' \
    --limit '15' \
    --name 'g4hj6nUd' \
    --offset '9' \
    --tag 'bW6UskbP' \
    > test.out 2>&1
eval_tap $? 99 'QueryKeyGroups' test.out

#- 100 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --body '{"description": "kkZAk01f", "name": "1KxCtWAD", "status": "ACTIVE", "tags": ["uN6U9w13"]}' \
    --namespace 'W1K9TZQ4' \
    > test.out 2>&1
eval_tap $? 100 'CreateKeyGroup' test.out

#- 101 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'qRLEi5wo' \
    --namespace 'wE36rfmM' \
    > test.out 2>&1
eval_tap $? 101 'GetKeyGroup' test.out

#- 102 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --body '{"description": "0CCs35TP", "name": "UPLmsY8W", "status": "ACTIVE", "tags": ["wSx1DI5G"]}' \
    --keyGroupId 'H9bv9ZTo' \
    --namespace '2HpA6pzj' \
    > test.out 2>&1
eval_tap $? 102 'UpdateKeyGroup' test.out

#- 103 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'HpZO0E9i' \
    --namespace 'LgRPJK3n' \
    > test.out 2>&1
eval_tap $? 103 'GetKeyGroupDynamic' test.out

#- 104 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Bae3GOgb' \
    --namespace 'Qrqra0Pt' \
    --limit '21' \
    --offset '11' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 104 'ListKeys' test.out

#- 105 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --file 'tmp.dat' \
    --keyGroupId 'OpY2ramp' \
    --namespace '5lnBn6xm' \
    > test.out 2>&1
eval_tap $? 105 'UploadKeys' test.out

#- 106 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace 'BkfMtC66' \
    --endTime 'hFq0kPOk' \
    --limit '80' \
    --offset '87' \
    --orderNos '["m2XjlNEE"]' \
    --sortBy '5ecPzAmi' \
    --startTime '0ySJHfPl' \
    --status 'CLOSED' \
    --withTotal 'False' \
    > test.out 2>&1
eval_tap $? 106 'QueryOrders' test.out

#- 107 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace 'YK4MgIsD' \
    > test.out 2>&1
eval_tap $? 107 'GetOrderStatistics' test.out

#- 108 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace 'SFMPyMhy' \
    --orderNo 'w1OLZPVw' \
    > test.out 2>&1
eval_tap $? 108 'GetOrder' test.out

#- 109 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --body '{"description": "wxH4BIDJ"}' \
    --namespace 'uDoShMMf' \
    --orderNo 'tll8N0Vv' \
    > test.out 2>&1
eval_tap $? 109 'RefundOrder' test.out

#- 110 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace 'ChHz9urm' \
    > test.out 2>&1
eval_tap $? 110 'GetPaymentCallbackConfig' test.out

#- 111 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --body '{"dryRun": true, "notifyUrl": "7QWvE8s6", "privateKey": "Uz8BRuYW"}' \
    --namespace 'DTtL6MTT' \
    > test.out 2>&1
eval_tap $? 111 'UpdatePaymentCallbackConfig' test.out

#- 112 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace 'RkCbb9S5' \
    --endDate 'Q1IVHGT8' \
    --externalId '8prREBgY' \
    --limit '80' \
    --notificationSource 'ADYEN' \
    --notificationType 'HJ9Jumoh' \
    --offset '39' \
    --paymentOrderNo 'U13gf7TR' \
    --startDate 'igNZj5w5' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 112 'QueryPaymentNotifications' test.out

#- 113 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace '3HmK8QVO' \
    --channel 'EXTERNAL' \
    --extTxId '62eQZtbL' \
    --limit '74' \
    --offset '4' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 113 'QueryPaymentOrders' test.out

#- 114 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --body '{"currencyCode": "671WLtv3", "currencyNamespace": "8Hecczop", "customParameters": {"FmeRwpcJ": {}}, "description": "BZyi3mLC", "extOrderNo": "4KzekiSz", "extUserId": "eyolnOQt", "itemType": "CODE", "language": "vh-285", "metadata": {"nHbRdoTK": "KeuSjfZe"}, "notifyUrl": "9i1osghF", "omitNotification": false, "platform": "zi1Nl47s", "price": 48, "recurringPaymentOrderNo": "J5ibzSHZ", "region": "eCLIvWPV", "returnUrl": "RsdEqA61", "sandbox": true, "sku": "TrMgsycT", "subscriptionId": "gmPzc20E", "targetNamespace": "uO5dMqGD", "targetUserId": "lSZPY07r", "title": "EVSjzHjL"}' \
    --namespace '6ZbXjG6D' \
    > test.out 2>&1
eval_tap $? 114 'CreatePaymentOrderByDedicated' test.out

#- 115 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'Smpp3op8' \
    --extTxId 'htaRLxtW' \
    > test.out 2>&1
eval_tap $? 115 'ListExtOrderNoByExtTxId' test.out

#- 116 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace '4PvFkEST' \
    --paymentOrderNo 'ULat5F1L' \
    > test.out 2>&1
eval_tap $? 116 'GetPaymentOrder' test.out

#- 117 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "e7cR7q6P", "paymentMethod": "WhZmmKz4", "paymentProvider": "CHECKOUT"}' \
    --namespace '1Tp78Fip' \
    --paymentOrderNo 'JHahViJv' \
    > test.out 2>&1
eval_tap $? 117 'ChargePaymentOrder' test.out

#- 118 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "LYW0kdml"}' \
    --namespace 'k2luqSOO' \
    --paymentOrderNo 'A2VOZBoN' \
    > test.out 2>&1
eval_tap $? 118 'RefundPaymentOrderByDedicated' test.out

#- 119 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 3, "currencyCode": "B98PuSGy", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 63, "vat": 51}' \
    --namespace 'PwSMXT53' \
    --paymentOrderNo 'bBuL38be' \
    > test.out 2>&1
eval_tap $? 119 'SimulatePaymentOrderNotification' test.out

#- 120 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'OYDVuHZQ' \
    --paymentOrderNo '9LYt6w23' \
    > test.out 2>&1
eval_tap $? 120 'GetPaymentOrderChargeStatus' test.out

#- 121 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace 'Wf8iEQo7' \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 121 'GetPlatformWalletConfig' test.out

#- 122 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --body '{"allowedBalanceOrigins": ["System"]}' \
    --namespace '0aRdcDlD' \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 122 'UpdatePlatformWalletConfig' test.out

#- 123 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace 'GcsfIuI4' \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 123 'ResetPlatformWalletConfig' test.out

#- 124 CreateReward
samples/cli/sample-apps Platform createReward \
    --body '{"description": "v5lEJpK1", "eventTopic": "AyRlzsrR", "maxAwarded": 99, "maxAwardedPerUser": 60, "namespaceExpression": "FZivQOHG", "rewardCode": "6wVicNra", "rewardConditions": [{"condition": "tsvvHLmI", "conditionName": "ohfNISLX", "eventName": "MDWDdm5F", "rewardItems": [{"duration": 61, "itemId": "4lliQMnu", "quantity": 38}]}], "userIdExpression": "JbpEo4mU"}' \
    --namespace 'NHFtdml2' \
    > test.out 2>&1
eval_tap $? 124 'CreateReward' test.out

#- 125 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace 'xNviWacJ' \
    --eventTopic 'c3Fm7Z54' \
    --limit '40' \
    --offset '41' \
    --sortBy '["rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 125 'QueryRewards' test.out

#- 126 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace 'goCBqS5u' \
    > test.out 2>&1
eval_tap $? 126 'ExportRewards' test.out

#- 127 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'IdCbwCee' \
    --replaceExisting 'True' \
    > test.out 2>&1
eval_tap $? 127 'ImportRewards' test.out

#- 128 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace '9ouEdDtj' \
    --rewardId 'OgsypLkm' \
    > test.out 2>&1
eval_tap $? 128 'GetReward' test.out

#- 129 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "2ZYew5H7", "eventTopic": "Zm0gnYyj", "maxAwarded": 76, "maxAwardedPerUser": 99, "namespaceExpression": "f9G1ntye", "rewardCode": "bvoeHenA", "rewardConditions": [{"condition": "ALKt7Efx", "conditionName": "IH446oUn", "eventName": "P2S74unX", "rewardItems": [{"duration": 44, "itemId": "g0JKqVWW", "quantity": 34}]}], "userIdExpression": "jK1epwkA"}' \
    --namespace 'vcsYvbgf' \
    --rewardId 'BVPpTa8Y' \
    > test.out 2>&1
eval_tap $? 129 'UpdateReward' test.out

#- 130 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'uq7TKiNX' \
    --rewardId 'mz7eMrMD' \
    > test.out 2>&1
eval_tap $? 130 'DeleteReward' test.out

#- 131 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"5TbaUxTC": {}}}' \
    --namespace 'Tng0xjtd' \
    --rewardId 'Brjs3Kiy' \
    > test.out 2>&1
eval_tap $? 131 'CheckEventCondition' test.out

#- 132 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace 'kt2Ck2gO' \
    > test.out 2>&1
eval_tap $? 132 'ListStores' test.out

#- 133 CreateStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "lSatECZ2", "defaultRegion": "UgwQLqDq", "description": "YSxTPuVl", "supportedLanguages": ["Bqirdp3y"], "supportedRegions": ["xnsETl1S"], "title": "vhQudsjI"}' \
    --namespace 'hXdxiSoW' \
    > test.out 2>&1
eval_tap $? 133 'CreateStore' test.out

#- 134 ImportStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'pnnxgX7B' \
    --storeId 'CPMqzQIx' \
    > test.out 2>&1
eval_tap $? 134 'ImportStore' test.out

#- 135 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'ibhpNYsH' \
    > test.out 2>&1
eval_tap $? 135 'GetPublishedStore' test.out

#- 136 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'tdB3Ikju' \
    > test.out 2>&1
eval_tap $? 136 'DeletePublishedStore' test.out

#- 137 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'aZqhJilr' \
    > test.out 2>&1
eval_tap $? 137 'GetPublishedStoreBackup' test.out

#- 138 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'ZkSSKgP5' \
    > test.out 2>&1
eval_tap $? 138 'RollbackPublishedStore' test.out

#- 139 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace 'rxCR77G9' \
    --storeId 'd5CA1GOR' \
    > test.out 2>&1
eval_tap $? 139 'GetStore' test.out

#- 140 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "SbL9n0db", "defaultRegion": "WDEupmdL", "description": "QzPnNfBA", "supportedLanguages": ["cWArbkCf"], "supportedRegions": ["dHIZb03o"], "title": "tqmBuS9V"}' \
    --namespace '2pCZ23UH' \
    --storeId 'mk0lpJ4J' \
    > test.out 2>&1
eval_tap $? 140 'UpdateStore' test.out

#- 141 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'Ll01qi7L' \
    --storeId '2oDUoVRU' \
    > test.out 2>&1
eval_tap $? 141 'DeleteStore' test.out

#- 142 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace 'b39j22P4' \
    --storeId 'Sp09cKmj' \
    --action 'UPDATE' \
    --itemSku 'UbZVBVS7' \
    --itemType 'INGAMEITEM' \
    --limit '6' \
    --offset '4' \
    --selected 'True' \
    --sortBy '["createdAt"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'ekROWZ2K' \
    --updatedAtStart 'UTqkK2eF' \
    > test.out 2>&1
eval_tap $? 142 'QueryChanges' test.out

#- 143 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace 'aGLoSmEE' \
    --storeId 'PbLywJsy' \
    > test.out 2>&1
eval_tap $? 143 'PublishAll' test.out

#- 144 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace 'Uie6fZgL' \
    --storeId 'llUPsO8l' \
    > test.out 2>&1
eval_tap $? 144 'PublishSelected' test.out

#- 145 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace 'g46Si700' \
    --storeId '6vL2w4aa' \
    > test.out 2>&1
eval_tap $? 145 'SelectAllRecords' test.out

#- 146 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace 'jDAOx0iJ' \
    --storeId 'jYleaktq' \
    --action 'DELETE' \
    --itemSku '2WkljQuD' \
    --itemType 'COINS' \
    --type 'CATEGORY' \
    --updatedAtEnd 'JONqHGq8' \
    --updatedAtStart 'mB7mF2lM' \
    > test.out 2>&1
eval_tap $? 146 'GetStatistic' test.out

#- 147 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace 'FcaghFXJ' \
    --storeId 'IJflRHFc' \
    > test.out 2>&1
eval_tap $? 147 'UnselectAllRecords' test.out

#- 148 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'sIqCy4xD' \
    --namespace 'ifSSQ5On' \
    --storeId '2ccEcl3x' \
    > test.out 2>&1
eval_tap $? 148 'SelectRecord' test.out

#- 149 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'eiO4bwF5' \
    --namespace 'JOjGoGxK' \
    --storeId 'M3qMce5t' \
    > test.out 2>&1
eval_tap $? 149 'UnselectRecord' test.out

#- 150 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace 'fLcpjFZM' \
    --storeId 'KCbp0pEb' \
    --targetStoreId 'LCLFpHxM' \
    > test.out 2>&1
eval_tap $? 150 'CloneStore' test.out

#- 151 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'YF836075' \
    --storeId 'xEpzdnYt' \
    > test.out 2>&1
eval_tap $? 151 'ExportStore' test.out

#- 152 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'pja5ig2i' \
    --chargeStatus 'NEVER' \
    --itemId 'QZga6Vy7' \
    --limit '16' \
    --offset '51' \
    --sku 'PiQRjYa8' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId '5fIt22tI' \
    > test.out 2>&1
eval_tap $? 152 'QuerySubscriptions' test.out

#- 153 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'Zhjhgkig' \
    --subscriptionId 'W22zXMWX' \
    > test.out 2>&1
eval_tap $? 153 'RecurringChargeSubscription' test.out

#- 154 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fbcM0GIA' \
    --namespace 'LIbFCQgB' \
    > test.out 2>&1
eval_tap $? 154 'GetTicketDynamic' test.out

#- 155 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "cLNT6iOQ"}' \
    --boothName 'VYx5rW2g' \
    --namespace 'MsI1aYBi' \
    > test.out 2>&1
eval_tap $? 155 'DecreaseTicketSale' test.out

#- 156 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'tSn3UDeK' \
    --namespace 'j97I4WYX' \
    > test.out 2>&1
eval_tap $? 156 'GetTicketBoothID' test.out

#- 157 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 74, "orderNo": "qjN7ktOB"}' \
    --boothName 'TraBxWRT' \
    --namespace 'VuYEqGlK' \
    > test.out 2>&1
eval_tap $? 157 'IncreaseTicketSale' test.out

#- 158 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --body '{"achievements": [{"id": "DwTKXBrX", "value": 17}], "steamUserId": "Qcd9IW8k"}' \
    --namespace 'iCKeQJWZ' \
    --userId 'Bvcq1ETv' \
    > test.out 2>&1
eval_tap $? 158 'UnlockSteamUserAchievement' test.out

#- 159 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace 'WBxYZJh7' \
    --userId 'B8gbnSu9' \
    --xboxUserId 'M2OxD2ud' \
    > test.out 2>&1
eval_tap $? 159 'GetXblUserAchievements' test.out

#- 160 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --body '{"achievements": [{"id": "aeYpCXYS", "percentComplete": 77}], "serviceConfigId": "iy87CTqE", "titleId": "QBg36my3", "xboxUserId": "sY2clrDc"}' \
    --namespace 'ain0cOVF' \
    --userId '1zHwDTI0' \
    > test.out 2>&1
eval_tap $? 160 'UpdateXblUserAchievement' test.out

#- 161 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'sJ1Q0kph' \
    --userId 'MTggSP2S' \
    > test.out 2>&1
eval_tap $? 161 'AnonymizeCampaign' test.out

#- 162 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'LcuAP7vU' \
    --userId '971Czw2n' \
    > test.out 2>&1
eval_tap $? 162 'AnonymizeEntitlement' test.out

#- 163 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'bg8C7Mvy' \
    --userId 'whu6MjOj' \
    > test.out 2>&1
eval_tap $? 163 'AnonymizeFulfillment' test.out

#- 164 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'uGzo1Fz4' \
    --userId 'tU0aSn98' \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeIntegration' test.out

#- 165 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'N8qOUA0z' \
    --userId '92RaDe8n' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeOrder' test.out

#- 166 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'gT8LRQkM' \
    --userId 'nG1LZyF2' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizePayment' test.out

#- 167 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'mdYY6ZMf' \
    --userId 'uTYTKsue' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeSubscription' test.out

#- 168 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace '48qBEBNA' \
    --userId 'V5BTe6ec' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeWallet' test.out

#- 169 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace '1zA92URC' \
    --userId 'LSGPmRBZ' \
    --activeOnly 'True' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'W7MYvr6Q' \
    --itemId '["A7Ppepc9"]' \
    --limit '67' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 169 'QueryUserEntitlements' test.out

#- 170 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1999-01-28T00:00:00Z", "grantedCode": "ACdeyfUp", "itemId": "giPpf8nx", "itemNamespace": "KJ3dnmtP", "language": "AyG_UAFX_Eh", "quantity": 3, "region": "m5M6LsY1", "source": "PURCHASE", "startDate": "1988-08-31T00:00:00Z", "storeId": "cRls68M3"}]' \
    --namespace 'MPMRPBep' \
    --userId 'yyMz6zfR' \
    > test.out 2>&1
eval_tap $? 170 'GrantUserEntitlement' test.out

#- 171 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace '1pvTYYtD' \
    --userId 'OiEi4RuE' \
    --activeOnly 'False' \
    --appId 'HCSGhpOZ' \
    > test.out 2>&1
eval_tap $? 171 'GetUserAppEntitlementByAppId' test.out

#- 172 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'QFlwOiuK' \
    --userId 'GDFgK49Y' \
    --activeOnly 'True' \
    --limit '73' \
    --offset '27' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 172 'QueryUserEntitlementsByAppType' test.out

#- 173 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 's0m8ANrc' \
    --userId 'Ral7ta3f' \
    --activeOnly 'False' \
    --entitlementClazz 'CODE' \
    --itemId 'A3h4MMW3' \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementByItemId' test.out

#- 174 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'AJ5zlsFB' \
    --userId 'wjvLYvmg' \
    --activeOnly 'False' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'udQFF1CP' \
    > test.out 2>&1
eval_tap $? 174 'GetUserEntitlementBySku' test.out

#- 175 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'NY9u2dVY' \
    --userId 'dglOOoCe' \
    --appIds '["K0kPKmBq"]' \
    --itemIds '["Vux3lXcD"]' \
    --skus '["8aertAVC"]' \
    > test.out 2>&1
eval_tap $? 175 'ExistsAnyUserActiveEntitlement' test.out

#- 176 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'qs8XT8xy' \
    --userId '3nJ06Kks' \
    --itemIds '["eA0ARj9r"]' \
    > test.out 2>&1
eval_tap $? 176 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 177 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'icfayvnh' \
    --userId 'i8MDdY4W' \
    --appId 'LHoaUkYn' \
    > test.out 2>&1
eval_tap $? 177 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 178 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'Qp5egdmV' \
    --userId 'E8ImivNt' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'qWRKHohO' \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementOwnershipByItemId' test.out

#- 179 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'DoWOr98k' \
    --userId 'jBUas9jj' \
    --entitlementClazz 'MEDIA' \
    --sku '2FrgiaGr' \
    > test.out 2>&1
eval_tap $? 179 'GetUserEntitlementOwnershipBySku' test.out

#- 180 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'cB7dIOVK' \
    --userId 'IPSJJHo5' \
    --entitlementIds 'W8tKH8ou' \
    > test.out 2>&1
eval_tap $? 180 'RevokeUserEntitlements' test.out

#- 181 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '9SdbxSXc' \
    --namespace 'rEFCwqeG' \
    --userId 'NLdIBRdl' \
    > test.out 2>&1
eval_tap $? 181 'GetUserEntitlement' test.out

#- 182 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1975-09-08T00:00:00Z", "nullFieldList": ["QVMKEzVU"], "startDate": "1995-03-28T00:00:00Z", "status": "REVOKED", "useCount": 36}' \
    --entitlementId '2x1EQU0o' \
    --namespace 'epEvcjaS' \
    --userId 'gEh6jJnF' \
    > test.out 2>&1
eval_tap $? 182 'UpdateUserEntitlement' test.out

#- 183 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 47}' \
    --entitlementId 'inIHJ1o7' \
    --namespace 'aq5Zznd5' \
    --userId 'eacobTsu' \
    > test.out 2>&1
eval_tap $? 183 'ConsumeUserEntitlement' test.out

#- 184 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'RlhreQVF' \
    --namespace 'ID3o8hJW' \
    --userId 'VjKIOAw7' \
    > test.out 2>&1
eval_tap $? 184 'DisableUserEntitlement' test.out

#- 185 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '0DvAHhSG' \
    --namespace 'WUvzq1Za' \
    --userId '3IBC4vQF' \
    > test.out 2>&1
eval_tap $? 185 'EnableUserEntitlement' test.out

#- 186 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'sUJPfiaJ' \
    --namespace 'p1rt7OBg' \
    --userId 'BCe6N0eI' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementHistories' test.out

#- 187 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '65Mn5tng' \
    --namespace 'EYXgPVT5' \
    --userId 'CqXDZBVM' \
    > test.out 2>&1
eval_tap $? 187 'RevokeUserEntitlement' test.out

#- 188 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 71, "endDate": "1983-10-11T00:00:00Z", "itemId": "eKFO92YD", "itemSku": "taZvJoKS", "language": "0OxyipZu", "order": {"currency": {"currencyCode": "O4N9S2YC", "currencySymbol": "gHa6XBcv", "currencyType": "REAL", "decimals": 34, "namespace": "UtWHCnhm"}, "ext": {"zzppV7tK": {}}, "free": true}, "orderNo": "XymWcNlH", "origin": "Epic", "quantity": 62, "region": "xYaGHUpm", "source": "PURCHASE", "startDate": "1986-07-16T00:00:00Z", "storeId": "OrFKtxGN"}' \
    --namespace 'Ai0fq4xC' \
    --userId 'hPLd2lOo' \
    > test.out 2>&1
eval_tap $? 188 'FulfillItem' test.out

#- 189 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "pc7XoVpd", "language": "Rc-kN", "region": "CVOKY2zs"}' \
    --namespace 'BRGtd8QY' \
    --userId '2OLbijrv' \
    > test.out 2>&1
eval_tap $? 189 'RedeemCode' test.out

#- 190 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "r8hknjWU", "namespace": "WdMUXHvw"}, "item": {"itemId": "4pNlGLjd", "itemSku": "BxLM079p", "itemType": "DAbTgmsE"}, "quantity": 100, "type": "ITEM"}], "source": "OTHER"}' \
    --namespace '2GkYK1vY' \
    --userId 'm9flXQ7C' \
    > test.out 2>&1
eval_tap $? 190 'FulfillRewards' test.out

#- 191 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'QoemnQG0' \
    --userId 'dH0NVM9V' \
    --endTime 'EHTPqDhk' \
    --limit '4' \
    --offset '40' \
    --productId '5vnz6GiN' \
    --startTime 'MboBJHml' \
    --status 'VERIFIED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 191 'QueryUserIAPOrders' test.out

#- 192 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'pPi4mqhr' \
    --userId 'uiCZLGGP' \
    > test.out 2>&1
eval_tap $? 192 'QueryAllUserIAPOrders' test.out

#- 193 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ntmA", "productId": "5SbonsUJ", "region": "KADr60Ek", "type": "APPLE"}' \
    --namespace 'FrpLsGt9' \
    --userId 'yTXWUSCQ' \
    > test.out 2>&1
eval_tap $? 193 'MockFulfillIAPItem' test.out

#- 194 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'cMsHN7re' \
    --userId 'I22ks7I1' \
    --itemId '2tAZc8sx' \
    --limit '46' \
    --offset '74' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserOrders' test.out

#- 195 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --body '{"currencyCode": "9XQeqNWL", "currencyNamespace": "m8cNJbYH", "discountedPrice": 71, "ext": {"4WiJLv9N": {}}, "itemId": "vHwtw2Mj", "language": "cy9ZL6Zs", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 98, "quantity": 100, "region": "opLWZeUK", "returnUrl": "JJNftRpG", "sandbox": false}' \
    --namespace 'k1iseREz' \
    --userId 'zRG6z9wm' \
    > test.out 2>&1
eval_tap $? 195 'AdminCreateUserOrder' test.out

#- 196 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'uHddyOdi' \
    --userId 'bI1LVyqb' \
    --itemId 'dY8DGZKA' \
    > test.out 2>&1
eval_tap $? 196 'CountOfPurchasedItem' test.out

#- 197 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'uoIKz3Pp' \
    --orderNo '3zLWUxMz' \
    --userId 'MtSmMmZP' \
    > test.out 2>&1
eval_tap $? 197 'GetUserOrder' test.out

#- 198 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "CLOSED", "statusReason": "G0FoQP8q"}' \
    --namespace '7aSsb85g' \
    --orderNo 'Ah9RD3Zz' \
    --userId 'N6N1iJ8l' \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserOrderStatus' test.out

#- 199 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'tt9IRqCf' \
    --orderNo 'lgln6r5f' \
    --userId '0s5H6lCf' \
    > test.out 2>&1
eval_tap $? 199 'FulfillUserOrder' test.out

#- 200 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace '3QHa11hL' \
    --orderNo 'LCgw5av4' \
    --userId 'LExdabD8' \
    > test.out 2>&1
eval_tap $? 200 'GetUserOrderGrant' test.out

#- 201 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'g2cvHfMR' \
    --orderNo 'upDA5xbj' \
    --userId 's3XRdHUJ' \
    > test.out 2>&1
eval_tap $? 201 'GetUserOrderHistories' test.out

#- 202 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "0GCmflIX"}, "authorisedTime": "1976-02-19T00:00:00Z", "chargebackReversedTime": "1988-07-18T00:00:00Z", "chargebackTime": "1976-12-30T00:00:00Z", "chargedTime": "1982-04-26T00:00:00Z", "createdTime": "1971-03-26T00:00:00Z", "currency": {"currencyCode": "q7sEejFZ", "currencySymbol": "1NtONXb9", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "sQHszIsf"}, "customParameters": {"rlzKpQdd": {}}, "extOrderNo": "58dZP5Rv", "extTxId": "rinNtvBt", "extUserId": "qFSkA68m", "issuedAt": "1988-10-05T00:00:00Z", "metadata": {"5pSVxBsL": "hty3pecT"}, "namespace": "oXA4M1oU", "nonceStr": "FPhgo7Z6", "paymentMethod": "mwNC4FY6", "paymentMethodFee": 24, "paymentOrderNo": "M87joJNO", "paymentProvider": "WXPAY", "paymentProviderFee": 79, "paymentStationUrl": "s6Hl5Poa", "price": 2, "refundedTime": "1976-10-20T00:00:00Z", "salesTax": 29, "sandbox": true, "sku": "NBUzIxOf", "status": "AUTHORISE_FAILED", "statusReason": "lquS2q2D", "subscriptionId": "oWr9zvFt", "subtotalPrice": 72, "targetNamespace": "a2mOAqOo", "targetUserId": "kV1plxQ2", "tax": 34, "totalPrice": 17, "totalTax": 91, "txEndTime": "1991-02-10T00:00:00Z", "type": "ipD67jI2", "userId": "hiZkrtLn", "vat": 15}' \
    --namespace '2U1RQlMx' \
    --orderNo 'kfNMPNtq' \
    --userId 'v2TMz1b7' \
    > test.out 2>&1
eval_tap $? 202 'ProcessUserOrderNotification' test.out

#- 203 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'SnzkXOek' \
    --orderNo '83Igm1wk' \
    --userId 'SWsYvAsu' \
    > test.out 2>&1
eval_tap $? 203 'DownloadUserOrderReceipt' test.out

#- 204 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "18obUdc8", "currencyNamespace": "mbvXcwcg", "customParameters": {"MqOXMziX": {}}, "description": "rVdsEc3C", "extOrderNo": "lFP3mJwu", "extUserId": "sCBTe4kL", "itemType": "APP", "language": "Qln", "metadata": {"kRavpaGT": "A9BTyCCy"}, "notifyUrl": "N4Fw9i6m", "omitNotification": true, "platform": "jjCqPVyY", "price": 36, "recurringPaymentOrderNo": "01hEYzWw", "region": "3qrcxM0D", "returnUrl": "PAXQBNMP", "sandbox": false, "sku": "3xfPaoZa", "subscriptionId": "WFspkU5k", "title": "n6PlPqD4"}' \
    --namespace 'AgfasBfc' \
    --userId 'lBhZjZbL' \
    > test.out 2>&1
eval_tap $? 204 'CreateUserPaymentOrder' test.out

#- 205 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "nmghKwPy"}' \
    --namespace 'VIn3qaHP' \
    --paymentOrderNo '7KNulyfr' \
    --userId 'ENVQkpca' \
    > test.out 2>&1
eval_tap $? 205 'RefundUserPaymentOrder' test.out

#- 206 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "WHf6T2xO", "orderNo": "Oljn7c6c"}' \
    --namespace '9efJI02T' \
    --userId 'ZxrgLBFJ' \
    > test.out 2>&1
eval_tap $? 206 'ApplyUserRedemption' test.out

#- 207 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace 'EkphFz0h' \
    --userId '6WpoVpVc' \
    --chargeStatus 'SETUP' \
    --itemId 'BBmj6cEi' \
    --limit '14' \
    --offset '98' \
    --sku 'l42ubCRf' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserSubscriptions' test.out

#- 208 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'Kn5ItHXL' \
    --userId 'DZqpRhqn' \
    --excludeSystem 'False' \
    --limit '2' \
    --offset '74' \
    --subscriptionId 'uQOGMOEz' \
    > test.out 2>&1
eval_tap $? 208 'GetUserSubscriptionActivities' test.out

#- 209 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 24, "itemId": "djNhT0S4", "language": "6kqyfMBS", "reason": "aZc4SA16", "region": "M8gQCD7a", "source": "BHWCYevN"}' \
    --namespace 'kfcQvl4O' \
    --userId 'so7tx65z' \
    > test.out 2>&1
eval_tap $? 209 'PlatformSubscribeSubscription' test.out

#- 210 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'XCiTfjor' \
    --userId 'LFqTmIUF' \
    --itemId 'UoonHBI1' \
    > test.out 2>&1
eval_tap $? 210 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 211 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace '3SZFHfm0' \
    --subscriptionId 'F8vS2BrZ' \
    --userId '3nq88YSS' \
    > test.out 2>&1
eval_tap $? 211 'GetUserSubscription' test.out

#- 212 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'D7zV0C8F' \
    --subscriptionId 'vVU3kRXB' \
    --userId 'GPXIdft1' \
    > test.out 2>&1
eval_tap $? 212 'DeleteUserSubscription' test.out

#- 213 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "iZHuhWyF"}' \
    --namespace 'PHdXcyvZ' \
    --subscriptionId 'EhYeUSy5' \
    --userId 'Ukc65naP' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 213 'CancelSubscription' test.out

#- 214 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 45, "reason": "9vq9nMa2"}' \
    --namespace 'Btgwyuf2' \
    --subscriptionId 'fjV30SLx' \
    --userId 'i7uyhaeF' \
    > test.out 2>&1
eval_tap $? 214 'GrantDaysToSubscription' test.out

#- 215 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'tcO9XNy6' \
    --subscriptionId '3QO9vW0c' \
    --userId 'k7TEDE8L' \
    --excludeFree 'False' \
    --limit '61' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 215 'GetUserSubscriptionBillingHistories' test.out

#- 216 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "BeGPLiE6"}, "authorisedTime": "1980-09-26T00:00:00Z", "chargebackReversedTime": "1985-05-19T00:00:00Z", "chargebackTime": "1997-09-09T00:00:00Z", "chargedTime": "1991-09-04T00:00:00Z", "createdTime": "1981-12-18T00:00:00Z", "currency": {"currencyCode": "AK91y5vC", "currencySymbol": "eBIJq0B9", "currencyType": "REAL", "decimals": 68, "namespace": "6c5cre9e"}, "customParameters": {"alHOZphc": {}}, "extOrderNo": "Lncnjnmy", "extTxId": "U8FSxXdC", "extUserId": "rskoFqno", "issuedAt": "1982-05-11T00:00:00Z", "metadata": {"9Laz1GLt": "5Mhf8Z7a"}, "namespace": "hmbVPm2g", "nonceStr": "7xAFfRRL", "paymentMethod": "UjfWS9sf", "paymentMethodFee": 39, "paymentOrderNo": "IfHGe5bU", "paymentProvider": "WALLET", "paymentProviderFee": 82, "paymentStationUrl": "McRO6E2M", "price": 21, "refundedTime": "1979-02-07T00:00:00Z", "salesTax": 32, "sandbox": true, "sku": "vaACp6he", "status": "AUTHORISE_FAILED", "statusReason": "zjkPNNS0", "subscriptionId": "BfgF6inI", "subtotalPrice": 86, "targetNamespace": "sZ5hrqNz", "targetUserId": "VszGVP5P", "tax": 16, "totalPrice": 44, "totalTax": 14, "txEndTime": "1972-02-16T00:00:00Z", "type": "30C1KHRZ", "userId": "HMGy5vbf", "vat": 43}' \
    --namespace 'YIFFctEK' \
    --subscriptionId 'OLxSRxe0' \
    --userId 'wmWBMcNi' \
    > test.out 2>&1
eval_tap $? 216 'ProcessUserSubscriptionNotification' test.out

#- 217 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 96, "orderNo": "oobB6o6a"}' \
    --boothName 'lTQcP0Ep' \
    --namespace 'E9wGNVwk' \
    --userId 'gfJJ2HIa' \
    > test.out 2>&1
eval_tap $? 217 'AcquireUserTicket' test.out

#- 218 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace 'lfzgRpTf' \
    --userId '9lxF1JPB' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserCurrencyWallets' test.out

#- 219 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'izXZtrGe' \
    --namespace '8LyOH24n' \
    --userId 'neZHFeRl' \
    --limit '7' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 219 'ListUserCurrencyTransactions' test.out

#- 220 CheckWallet
eval_tap 0 220 'CheckWallet # SKIP deprecated' test.out

#- 221 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 65, "expireAt": "1984-10-08T00:00:00Z", "origin": "Playstation", "reason": "WYzaEaim", "source": "PROMOTION"}' \
    --currencyCode 'okcWX59k' \
    --namespace 'wiYHgHT6' \
    --userId 'Ivd0fGpU' \
    > test.out 2>&1
eval_tap $? 221 'CreditUserWallet' test.out

#- 222 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 27, "walletPlatform": "Epic"}' \
    --currencyCode 'lumQTFvr' \
    --namespace '5rRyYzaN' \
    --userId 'mz3PjMx2' \
    > test.out 2>&1
eval_tap $? 222 'PayWithUserWallet' test.out

#- 223 GetUserWallet
eval_tap 0 223 'GetUserWallet # SKIP deprecated' test.out

#- 224 DebitUserWallet
eval_tap 0 224 'DebitUserWallet # SKIP deprecated' test.out

#- 225 DisableUserWallet
eval_tap 0 225 'DisableUserWallet # SKIP deprecated' test.out

#- 226 EnableUserWallet
eval_tap 0 226 'EnableUserWallet # SKIP deprecated' test.out

#- 227 ListUserWalletTransactions
eval_tap 0 227 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 228 QueryWallets
eval_tap 0 228 'QueryWallets # SKIP deprecated' test.out

#- 229 GetWallet
eval_tap 0 229 'GetWallet # SKIP deprecated' test.out

#- 230 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'T89NTrFR' \
    --end 'UCXFkrux' \
    --start 'egpkcXCf' \
    > test.out 2>&1
eval_tap $? 230 'SyncOrders' test.out

#- 231 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["zgcvv0WE"], "apiKey": "5EQhcomP", "authoriseAsCapture": true, "blockedPaymentMethods": ["7cpsLgr2"], "clientKey": "zEnjyRNj", "dropInSettings": "EC3FMDcZ", "liveEndpointUrlPrefix": "vwwf8aU9", "merchantAccount": "8In31mF4", "notificationHmacKey": "jlwKyGxT", "notificationPassword": "F1l5q1Np", "notificationUsername": "0sT1X8J2", "returnUrl": "eAWOzjmh", "settings": "9UzIfnho"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 231 'TestAdyenConfig' test.out

#- 232 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "6xUmTleU", "privateKey": "nJFM7Xho", "publicKey": "DxGik2JS", "returnUrl": "fZ64wWeP"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 232 'TestAliPayConfig' test.out

#- 233 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "6103PONK", "secretKey": "IS7F9emW"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 233 'TestCheckoutConfig' test.out

#- 234 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'AsiG31CE' \
    --region 'yUOuOZhm' \
    > test.out 2>&1
eval_tap $? 234 'DebugMatchedPaymentMerchantConfig' test.out

#- 235 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "nHkvek6A", "clientSecret": "a5kNnocl", "returnUrl": "xs9kxcvI", "webHookId": "pV7mCYfW"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 235 'TestPayPalConfig' test.out

#- 236 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["Y9CsQYsG"], "publishableKey": "yhEOntEk", "secretKey": "edM1A0bF", "webhookSecret": "qvjxbT3Y"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 236 'TestStripeConfig' test.out

#- 237 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "VdaBN5RS", "key": "jhcjuDvN", "mchid": "rXL845jf", "returnUrl": "h5tZ0hqJ"}' \
    > test.out 2>&1
eval_tap $? 237 'TestWxPayConfig' test.out

#- 238 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "LjQUmoYU", "flowCompletionUrl": "nC849OBN", "merchantId": 40, "projectId": 75, "projectSecretKey": "ZtofGAAa"}' \
    > test.out 2>&1
eval_tap $? 238 'TestXsollaConfig' test.out

#- 239 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'MpBQArU4' \
    > test.out 2>&1
eval_tap $? 239 'GetPaymentMerchantConfig' test.out

#- 240 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["RS0FQRy5"], "apiKey": "Qz5VcyfB", "authoriseAsCapture": false, "blockedPaymentMethods": ["HjtvFwKS"], "clientKey": "JyZeqvpe", "dropInSettings": "vcVXTxs9", "liveEndpointUrlPrefix": "LTorIyx2", "merchantAccount": "3LhLy7ds", "notificationHmacKey": "3g3BuHTP", "notificationPassword": "F19dBYFw", "notificationUsername": "s5Ya4eOw", "returnUrl": "WqW8HiLp", "settings": "Ti1W63Hc"}' \
    --id 'cgM5kYu3' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 240 'UpdateAdyenConfig' test.out

#- 241 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 's3KCyplY' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 241 'TestAdyenConfigById' test.out

#- 242 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "cKDCVaqr", "privateKey": "VeegT3uG", "publicKey": "DIIcvuuo", "returnUrl": "kt8TC38m"}' \
    --id 'YoUanQT4' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 242 'UpdateAliPayConfig' test.out

#- 243 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'nv7r2jth' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 243 'TestAliPayConfigById' test.out

#- 244 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "bgeCLX41", "secretKey": "qyOiLgd8"}' \
    --id 'Wy739QHz' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 244 'UpdateCheckoutConfig' test.out

#- 245 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'zpd7TV5v' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 245 'TestCheckoutConfigById' test.out

#- 246 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "MM2i3DM6", "clientSecret": "etfI7TzC", "returnUrl": "3sKmtsyE", "webHookId": "KdO6HNm3"}' \
    --id 'zGu71qTS' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 246 'UpdatePayPalConfig' test.out

#- 247 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'WlETp9XO' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 247 'TestPayPalConfigById' test.out

#- 248 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["A1X3HHMT"], "publishableKey": "lakAWQfB", "secretKey": "uBAOCjBf", "webhookSecret": "YCcplye2"}' \
    --id 'GaPNzkrg' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 248 'UpdateStripeConfig' test.out

#- 249 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'cml6L36V' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 249 'TestStripeConfigById' test.out

#- 250 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "2F2Q9aZD", "key": "Jg1OT810", "mchid": "9ot70Tev", "returnUrl": "Jgsb2PyF"}' \
    --id 'fJ6qcHAB' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 250 'UpdateWxPayConfig' test.out

#- 251 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'GtV9jAPq' \
    > test.out 2>&1
eval_tap $? 251 'UpdateWxPayConfigCert' test.out

#- 252 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'on7UmLNy' \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfigById' test.out

#- 253 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "9PkF9Snl", "flowCompletionUrl": "bWNcAxv8", "merchantId": 40, "projectId": 66, "projectSecretKey": "DqJtYC7r"}' \
    --id 'znwNdLhq' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 253 'UpdateXsollaConfig' test.out

#- 254 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'XVnjvc0B' \
    > test.out 2>&1
eval_tap $? 254 'TestXsollaConfigById' test.out

#- 255 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    --id 'W1ZeuhpL' \
    > test.out 2>&1
eval_tap $? 255 'UpdateXsollaUIConfig' test.out

#- 256 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '99' \
    --namespace '1BHZ4hnO' \
    --offset '25' \
    --region 'myXu6Xtj' \
    > test.out 2>&1
eval_tap $? 256 'QueryPaymentProviderConfig' test.out

#- 257 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "qYk9TPUK", "region": "cDTfR7dp", "sandboxTaxJarApiToken": "UEo2Oe08", "specials": ["PAYPAL"], "taxJarApiToken": "eJBfG0nG", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 257 'CreatePaymentProviderConfig' test.out

#- 258 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 258 'GetAggregatePaymentProviders' test.out

#- 259 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'w2TlkPIx' \
    --region 'L9v4fpCd' \
    > test.out 2>&1
eval_tap $? 259 'DebugMatchedPaymentProviderConfig' test.out

#- 260 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 260 'GetSpecialPaymentProviders' test.out

#- 261 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "5h1kP1pk", "region": "kT08Cs6D", "sandboxTaxJarApiToken": "dXZWowBg", "specials": ["CHECKOUT"], "taxJarApiToken": "zMvwHszf", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --id 'ayJJ6vzD' \
    > test.out 2>&1
eval_tap $? 261 'UpdatePaymentProviderConfig' test.out

#- 262 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'TXxsyIaT' \
    > test.out 2>&1
eval_tap $? 262 'DeletePaymentProviderConfig' test.out

#- 263 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 263 'GetPaymentTaxConfig' test.out

#- 264 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "gp0pwnEJ", "taxJarApiToken": "L15kxO4o", "taxJarEnabled": false, "taxJarProductCodesMapping": {"g5JsHAkI": "47jO1wuA"}}' \
    > test.out 2>&1
eval_tap $? 264 'UpdatePaymentTaxConfig' test.out

#- 265 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'FuZcUwPt' \
    --end 'eKdQgUTF' \
    --start '33fYWZfQ' \
    > test.out 2>&1
eval_tap $? 265 'SyncPaymentOrders' test.out

#- 266 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'MAnziTha' \
    --language 'E2btn0up' \
    --storeId '9GeTQ7Xy' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetRootCategories' test.out

#- 267 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'mDSQNYXN' \
    --language 'EpZyFhIe' \
    --storeId 'qiNHtVSn' \
    > test.out 2>&1
eval_tap $? 267 'DownloadCategories' test.out

#- 268 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'hxby8F6x' \
    --namespace 'F8MhbJAY' \
    --language 'EDN1xszp' \
    --storeId 'pR69nsKA' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetCategory' test.out

#- 269 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'S5zKsTRX' \
    --namespace 'd7b3v2fk' \
    --language 'ZIkr06oj' \
    --storeId 'UtoVJLGX' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetChildCategories' test.out

#- 270 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'ekomvwD8' \
    --namespace '49mo5vIk' \
    --language 'DZYrYEf1' \
    --storeId 'xYnlxHHX' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetDescendantCategories' test.out

#- 271 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'jFoXtwKW' \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 271 'PublicListCurrencies' test.out

#- 272 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'OnqnWCuX' \
    --language 'MWqG8fNp' \
    --region 'rJx82nAF' \
    --storeId 'exNou1Ai' \
    --appId 'csQjKx5L' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetItemByAppId' test.out

#- 273 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'jetHEw0a' \
    --appType 'SOFTWARE' \
    --baseAppId 'QpU6EGOW' \
    --categoryPath '0VAI87DP' \
    --features 'H0fLLiUq' \
    --itemType 'SEASON' \
    --language 'ay0gET8T' \
    --limit '48' \
    --offset '61' \
    --region 'ej7DsqsT' \
    --sortBy '["createdAt:desc"]' \
    --storeId 'NKAXqfqM' \
    --tags 'JHGeHaN2' \
    > test.out 2>&1
eval_tap $? 273 'PublicQueryItems' test.out

#- 274 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'k1Eutm9A' \
    --language 'AWDcDv3I' \
    --region 'SBgZCAf2' \
    --storeId 'pWOWs4I2' \
    --sku 'lOHfiu4H' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetItemBySku' test.out

#- 275 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'raKYMtgB' \
    --language 'mvCHMtF1' \
    --region '5a7T0Ihe' \
    --storeId 'ywiPE1WU' \
    --itemIds 'R1PTFfJJ' \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetItems' test.out

#- 276 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace '46kzfqap' \
    --limit '3' \
    --offset '55' \
    --region 'yIKoYzYt' \
    --storeId 'TWJA3nFC' \
    --keyword 'DgWOpz3y' \
    --language 'PQfqbeVG' \
    > test.out 2>&1
eval_tap $? 276 'PublicSearchItems' test.out

#- 277 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '7i4VTAhu' \
    --namespace 'FYhEgQBb' \
    --language '9Hni6lDM' \
    --region 'j9gvkBcQ' \
    --storeId 'jQ56RuAv' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetApp' test.out

#- 278 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'UlMWp8WG' \
    --namespace 'pZxCe0Ks' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItemDynamicData' test.out

#- 279 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'mXtGBbKr' \
    --namespace 'V58TIThQ' \
    --language '52PYNknB' \
    --populateBundle 'True' \
    --region 'jirw4hmf' \
    --storeId 'MSl2bETu' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItem' test.out

#- 280 GetPaymentCustomization
eval_tap 0 280 'GetPaymentCustomization # SKIP deprecated' test.out

#- 281 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "FLFOfdl0", "paymentProvider": "WXPAY", "returnUrl": "RndbO78R", "ui": "8ybYsHx3", "zipCode": "BIgGuo81"}' \
    --namespace '7lZA58OI' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPaymentUrl' test.out

#- 282 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace '2LMYRX16' \
    --paymentOrderNo 'nfCJ833J' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPaymentMethods' test.out

#- 283 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'KRNcdpuC' \
    --paymentOrderNo 'xSDFWMVc' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUnpaidPaymentOrder' test.out

#- 284 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "sOZlS0ul"}' \
    --namespace 'erU61drw' \
    --paymentOrderNo 'LngbZxOG' \
    --paymentProvider 'WALLET' \
    --zipCode 'FwnmB60e' \
    > test.out 2>&1
eval_tap $? 284 'Pay' test.out

#- 285 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'a7XItZS8' \
    --paymentOrderNo 'KIu9T604' \
    > test.out 2>&1
eval_tap $? 285 'PublicCheckPaymentOrderPaidStatus' test.out

#- 286 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'oPajgySh' \
    --sandbox 'True' \
    --paymentProvider 'WXPAY' \
    --region '7pQLZiWV' \
    > test.out 2>&1
eval_tap $? 286 'GetPaymentPublicConfig' test.out

#- 287 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'mc8PVwSh' \
    --code 'VQz7FY3h' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetQRCode' test.out

#- 288 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace '2oVVScVv' \
    --payerID '3YTBM4te' \
    --foreinginvoice 'OpqevsWv' \
    --invoiceId 'MhiheE2K' \
    --payload 'M7Ctal5z' \
    --redirectResult '7hLiOYz1' \
    --resultCode 'jFfu1y1d' \
    --sessionId '77D8ZNOf' \
    --status 'HyenhbRZ' \
    --token '4a9UjjjU' \
    --type '0EggYLcG' \
    --userId 'iEDZbDl9' \
    --orderNo 'ZeZH3M87' \
    --paymentOrderNo 'v0FhdKDE' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'XRhaO0AY' \
    > test.out 2>&1
eval_tap $? 288 'PublicNormalizePaymentReturnUrl' test.out

#- 289 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'SqvcV2Lq' \
    --zipCode 'fgCX28Je' \
    --paymentOrderNo '4kyPQjgD' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 289 'GetPaymentTaxValue' test.out

#- 290 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'MtdEtN4s' \
    --rewardCode 'EebnQucg' \
    > test.out 2>&1
eval_tap $? 290 'GetRewardByCode' test.out

#- 291 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'aop5NEdh' \
    --eventTopic 'urScNiUx' \
    --limit '26' \
    --offset '71' \
    --sortBy '["rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 291 'QueryRewards1' test.out

#- 292 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'ewUVhkGR' \
    --rewardId 'RTgLCb9e' \
    > test.out 2>&1
eval_tap $? 292 'GetReward1' test.out

#- 293 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'vywZywun' \
    > test.out 2>&1
eval_tap $? 293 'PublicListStores' test.out

#- 294 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'LImNhyZs' \
    --appIds '["b7YhhQbD"]' \
    --itemIds '["xLRKxzUt"]' \
    --skus '["pKDC8gl2"]' \
    > test.out 2>&1
eval_tap $? 294 'PublicExistsAnyMyActiveEntitlement' test.out

#- 295 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'otjUWKxg' \
    --appId 'W6n8AJae' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 296 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'qxTPgZKF' \
    --entitlementClazz 'CODE' \
    --itemId '3SBGlCD4' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 297 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'ig5ZRoJd' \
    --entitlementClazz 'APP' \
    --sku 's1Wkfh3l' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 298 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace '8HyGWZTd' \
    --appIds '["pmTxPUBF"]' \
    --itemIds '["jTIIKcXl"]' \
    --skus '["xPfdDyjJ"]' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetEntitlementOwnershipToken' test.out

#- 299 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '0wwrYelj' \
    --namespace 'Myoeb3gs' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetMyWallet' test.out

#- 300 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --body '{"epicGamesJwtToken": "MOMdqbt4"}' \
    --namespace 'PnuFr18i' \
    --userId 'jp3Cmzrf' \
    > test.out 2>&1
eval_tap $? 300 'SyncEpicGameDLC' test.out

#- 301 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 95}' \
    --namespace 'Ia1vi9ok' \
    --userId 'y2P7fIgB' \
    > test.out 2>&1
eval_tap $? 301 'PublicSyncPsnDlcInventory' test.out

#- 302 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "RSBlxuko", "steamId": "OTCosjAX"}' \
    --namespace 'o6ljBVW8' \
    --userId 'r7nyNcVl' \
    > test.out 2>&1
eval_tap $? 302 'SyncSteamDLC' test.out

#- 303 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "6ZB3bGHu"}' \
    --namespace 'pBuAL2av' \
    --userId 'XKOjwGRJ' \
    > test.out 2>&1
eval_tap $? 303 'SyncXboxDLC' test.out

#- 304 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'bZqXgQ9a' \
    --userId 'zOreTsvi' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'm0l8Yr4w' \
    --itemId '["mgiwIF5Z"]' \
    --limit '47' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryUserEntitlements' test.out

#- 305 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'IIhBtL3z' \
    --userId 'T6xRqyV0' \
    --appId 'tlLaMYL1' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserAppEntitlementByAppId' test.out

#- 306 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'p95v9mOi' \
    --userId 'IFEdQ2RK' \
    --limit '8' \
    --offset '85' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 306 'PublicQueryUserEntitlementsByAppType' test.out

#- 307 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace '2WRztR5q' \
    --userId 'ztuhVaJD' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '2OdrUV7b' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserEntitlementByItemId' test.out

#- 308 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'hcKGIOZc' \
    --userId 'B6NWffXk' \
    --entitlementClazz 'MEDIA' \
    --sku 'es2xHp1u' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserEntitlementBySku' test.out

#- 309 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'fZNxhbsa' \
    --userId 'SFtTmbIf' \
    --appIds '["2hFQRmsi"]' \
    --itemIds '["02melJQk"]' \
    --skus '["LtV2QnPs"]' \
    > test.out 2>&1
eval_tap $? 309 'PublicExistsAnyUserActiveEntitlement' test.out

#- 310 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'mhFVPtJT' \
    --userId 'Gig12OdD' \
    --appId 'nxXuJoZg' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 311 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'OG4tOeWV' \
    --userId 'MI9K1eJ6' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'C2h6U8Tg' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 312 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'R2k2RkEr' \
    --userId '8XbmQNuv' \
    --entitlementClazz 'MEDIA' \
    --sku 'm9nuffLG' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 313 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'UWnVBQPh' \
    --namespace 'wwHR0qyf' \
    --userId 'FcSCdkfe' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlement' test.out

#- 314 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 9}' \
    --entitlementId 'awFpdHeH' \
    --namespace '5p8Zx8jy' \
    --userId '7nxGzOTB' \
    > test.out 2>&1
eval_tap $? 314 'PublicConsumeUserEntitlement' test.out

#- 315 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "pmmjuEEE", "language": "dTW-330", "region": "aOLdFifU"}' \
    --namespace 'k9p700jB' \
    --userId '0p4HpK8p' \
    > test.out 2>&1
eval_tap $? 315 'PublicRedeemCode' test.out

#- 316 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": true, "language": "FsX-595", "productId": "vD04UY8g", "receiptData": "hvsmSrrJ", "region": "zAi6FOuh", "transactionId": "QIBAbup1"}' \
    --namespace 'fpWsO6fW' \
    --userId '468fWxqR' \
    > test.out 2>&1
eval_tap $? 316 'PublicFulfillAppleIAPItem' test.out

#- 317 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "kJDjfNhY"}' \
    --namespace 'DgVm0TCa' \
    --userId 'os4wyjaP' \
    > test.out 2>&1
eval_tap $? 317 'SyncEpicGamesInventory' test.out

#- 318 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": true, "language": "EK", "orderId": "FZxQr4xb", "packageName": "V63gcdU4", "productId": "vyIPJeRj", "purchaseTime": 56, "purchaseToken": "j7UK5nEm", "region": "wsQtSfDq"}' \
    --namespace 'A4CysEX4' \
    --userId 'VOy0n2Ek' \
    > test.out 2>&1
eval_tap $? 318 'PublicFulfillGoogleIAPItem' test.out

#- 319 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "PBjC4ecH", "price": 0.3463267706730443, "productId": "SGzayUaD", "serviceLabel": 15}' \
    --namespace '3m2eX31q' \
    --userId 'VPH2VHDz' \
    > test.out 2>&1
eval_tap $? 319 'PublicReconcilePlayStationStore' test.out

#- 320 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "nf57fQ1P", "language": "dKq_YCea", "region": "pFLpqAx1", "stadiaPlayerId": "N5IGebNu"}' \
    --namespace 'vyrghVds' \
    --userId 'SwDc9NJR' \
    > test.out 2>&1
eval_tap $? 320 'SyncStadiaEntitlement' test.out

#- 321 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "X9ZdaC8s", "currencyCode": "ja1J7euc", "language": "ssXz_teiI_840", "price": 0.7934202949590055, "productId": "VW26Oays", "region": "x72rwV3M", "steamId": "dXNVRDzT"}' \
    --namespace '2sBbflg7' \
    --userId 'cD247c1X' \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamInventory' test.out

#- 322 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "YYJf18St", "language": "WBw", "region": "7RBkqWDP"}' \
    --namespace 'EP4CWnZJ' \
    --userId 'jXdiUv9o' \
    > test.out 2>&1
eval_tap $? 322 'SyncTwitchDropsEntitlement' test.out

#- 323 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "wF1mQrc0", "price": 0.8676303010886293, "productId": "7oOdpY5Z", "xstsToken": "JChQtpD2"}' \
    --namespace 'U9IQzA2e' \
    --userId 'exjq3Tfn' \
    > test.out 2>&1
eval_tap $? 323 'SyncXboxInventory' test.out

#- 324 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'J6ryQ4wC' \
    --userId 'g5Itn9TY' \
    --itemId 'OR2n8qFj' \
    --limit '19' \
    --offset '89' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 324 'PublicQueryUserOrders' test.out

#- 325 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "0FeRdmgO", "discountedPrice": 39, "ext": {"a6pcKzSP": {}}, "itemId": "fek369fI", "language": "TCXW-AiXb", "price": 50, "quantity": 86, "region": "O8GKycdc", "returnUrl": "XuULpvuB"}' \
    --namespace 'NRzUbH0h' \
    --userId 'I7yCEyjK' \
    > test.out 2>&1
eval_tap $? 325 'PublicCreateUserOrder' test.out

#- 326 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'XQPnomAs' \
    --orderNo 'HMpmDvt4' \
    --userId 'tkWavQ0j' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserOrder' test.out

#- 327 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'o17Qq6AF' \
    --orderNo 'dE7URb19' \
    --userId 'BcvWfPxH' \
    > test.out 2>&1
eval_tap $? 327 'PublicCancelUserOrder' test.out

#- 328 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace 'PQaUClyA' \
    --orderNo 'jfGkGwDs' \
    --userId 'oo09NdZj' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserOrderHistories' test.out

#- 329 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'Njjtl8XI' \
    --orderNo 'GZV3GBXI' \
    --userId 'HxWGX4iw' \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadUserOrderReceipt' test.out

#- 330 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'wHLohaKv' \
    --userId 'D9nNeLi2' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentAccounts' test.out

#- 331 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'tRrclM3o' \
    --namespace '5FmkWcIp' \
    --type 'card' \
    --userId 'bLNxQciS' \
    > test.out 2>&1
eval_tap $? 331 'PublicDeletePaymentAccount' test.out

#- 332 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'm2ObiacE' \
    --userId '1VtVP5yW' \
    --chargeStatus 'SETUP' \
    --itemId 'B3dhO4E5' \
    --limit '5' \
    --offset '67' \
    --sku 'bV6Tq3ma' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 332 'PublicQueryUserSubscriptions' test.out

#- 333 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "iWG9Ataz", "itemId": "nHrmvF1m", "language": "zDlf-qRSq_AC", "region": "dMfX6X3Z", "returnUrl": "ta5msSId", "source": "556xncCH"}' \
    --namespace '37zoQElC' \
    --userId 'SNpKYpjK' \
    > test.out 2>&1
eval_tap $? 333 'PublicSubscribeSubscription' test.out

#- 334 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'mIIb0iBS' \
    --userId 'A7vdLvUF' \
    --itemId 'J7qN6ucq' \
    > test.out 2>&1
eval_tap $? 334 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 335 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'fJth42FD' \
    --subscriptionId '6A3kchLv' \
    --userId 'xRuULxDj' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserSubscription' test.out

#- 336 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'XJ9BFwEy' \
    --subscriptionId 'GUCv8O9E' \
    --userId 'BlPmENb7' \
    > test.out 2>&1
eval_tap $? 336 'PublicChangeSubscriptionBillingAccount' test.out

#- 337 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "nSCGzNuH"}' \
    --namespace 'pABtt9Gg' \
    --subscriptionId 'pAZjcg8z' \
    --userId '9cH6u6Sm' \
    > test.out 2>&1
eval_tap $? 337 'PublicCancelSubscription' test.out

#- 338 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'VFciDGuf' \
    --subscriptionId 'TZk7gk6n' \
    --userId 'ZZgUCWs5' \
    --excludeFree 'False' \
    --limit '11' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserSubscriptionBillingHistories' test.out

#- 339 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'AnrsypCR' \
    --namespace 'QfPhfO9E' \
    --userId 'amej28Ju' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetWallet' test.out

#- 340 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'm6vaoBRu' \
    --namespace 'MFZbZvy6' \
    --userId 'mJ2jHxdp' \
    --limit '33' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 340 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE