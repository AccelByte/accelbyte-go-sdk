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
echo "1..338"

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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"gRwFRr0g": "wB9tz3vp"}}]}' \
    --namespace '99XVlV8r' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace 'K3tE6n0s' \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
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

#- 159 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --body '{"achievements": [{"id": "WBxYZJh7", "percentComplete": 54}], "serviceConfigId": "8gbnSu9M", "titleId": "2OxD2uda", "xboxUserId": "eYpCXYSM"}' \
    --namespace 'iy87CTqE' \
    --userId 'QBg36my3' \
    > test.out 2>&1
eval_tap $? 159 'UpdateXblUserAchievement' test.out

#- 160 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'sY2clrDc' \
    --userId 'ain0cOVF' \
    > test.out 2>&1
eval_tap $? 160 'AnonymizeCampaign' test.out

#- 161 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace '1zHwDTI0' \
    --userId 'sJ1Q0kph' \
    > test.out 2>&1
eval_tap $? 161 'AnonymizeEntitlement' test.out

#- 162 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'MTggSP2S' \
    --userId 'LcuAP7vU' \
    > test.out 2>&1
eval_tap $? 162 'AnonymizeFulfillment' test.out

#- 163 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace '971Czw2n' \
    --userId 'bg8C7Mvy' \
    > test.out 2>&1
eval_tap $? 163 'AnonymizeIntegration' test.out

#- 164 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'whu6MjOj' \
    --userId 'uGzo1Fz4' \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeOrder' test.out

#- 165 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'tU0aSn98' \
    --userId 'N8qOUA0z' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizePayment' test.out

#- 166 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace '92RaDe8n' \
    --userId 'gT8LRQkM' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeSubscription' test.out

#- 167 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace 'nG1LZyF2' \
    --userId 'mdYY6ZMf' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeWallet' test.out

#- 168 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 'uTYTKsue' \
    --userId '48qBEBNA' \
    --activeOnly 'True' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'c1zA92UR' \
    --itemId '["CLSGPmRB"]' \
    --limit '97' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 168 'QueryUserEntitlements' test.out

#- 169 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1977-09-28T00:00:00Z", "grantedCode": "W7MYvr6Q", "itemId": "A7Ppepc9", "itemNamespace": "2HA94eAC", "language": "EY", "quantity": 13, "region": "iPpf8nxK", "source": "REWARD", "startDate": "1998-01-24T00:00:00Z", "storeId": "nmtPwa64"}]' \
    --namespace 'Y4gPEKMh' \
    --userId 'hu9a6f3x' \
    > test.out 2>&1
eval_tap $? 169 'GrantUserEntitlement' test.out

#- 170 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'JNtUlKLl' \
    --userId 'IIAeHbm5' \
    --activeOnly 'True' \
    --appId 'Y1VMuIEc' \
    > test.out 2>&1
eval_tap $? 170 'GetUserAppEntitlementByAppId' test.out

#- 171 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'Rls68M3M' \
    --userId 'PMRPBepy' \
    --activeOnly 'True' \
    --limit '76' \
    --offset '51' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 171 'QueryUserEntitlementsByAppType' test.out

#- 172 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'fR1pvTYY' \
    --userId 'tDOiEi4R' \
    --activeOnly 'True' \
    --entitlementClazz 'MEDIA' \
    --itemId 'cHCSGhpO' \
    > test.out 2>&1
eval_tap $? 172 'GetUserEntitlementByItemId' test.out

#- 173 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'ZQFlwOiu' \
    --userId 'KGDFgK49' \
    --activeOnly 'True' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'nXks0m8A' \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementBySku' test.out

#- 174 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'NrcRal7t' \
    --userId 'a3fojA3h' \
    --appIds '["4MMW3AJ5"]' \
    --itemIds '["zlsFBwjv"]' \
    --skus '["LYvmg6av"]' \
    > test.out 2>&1
eval_tap $? 174 'ExistsAnyUserActiveEntitlement' test.out

#- 175 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'udQFF1CP' \
    --userId 'NY9u2dVY' \
    --itemIds '["dglOOoCe"]' \
    > test.out 2>&1
eval_tap $? 175 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 176 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'K0kPKmBq' \
    --userId 'Vux3lXcD' \
    --appId '8aertAVC' \
    > test.out 2>&1
eval_tap $? 176 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 177 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'qs8XT8xy' \
    --userId '3nJ06Kks' \
    --entitlementClazz 'APP' \
    --itemId 'A0ARj9ri' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementOwnershipByItemId' test.out

#- 178 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'cfayvnhi' \
    --userId '8MDdY4WL' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'oaUkYnQp' \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementOwnershipBySku' test.out

#- 179 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace '5egdmVE8' \
    --userId 'ImivNtQx' \
    --entitlementIds 'qWRKHohO' \
    > test.out 2>&1
eval_tap $? 179 'RevokeUserEntitlements' test.out

#- 180 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'DoWOr98k' \
    --namespace 'jBUas9jj' \
    --userId 'z2FrgiaG' \
    > test.out 2>&1
eval_tap $? 180 'GetUserEntitlement' test.out

#- 181 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1979-01-18T00:00:00Z", "nullFieldList": ["B7dIOVKI"], "startDate": "1991-12-15T00:00:00Z", "status": "CONSUMED", "useCount": 97}' \
    --entitlementId '8tKH8ou9' \
    --namespace 'SdbxSXcr' \
    --userId 'EFCwqeGN' \
    > test.out 2>&1
eval_tap $? 181 'UpdateUserEntitlement' test.out

#- 182 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 74}' \
    --entitlementId 'dIBRdliF' \
    --namespace 'QVMKEzVU' \
    --userId 'WlUWDs2x' \
    > test.out 2>&1
eval_tap $? 182 'ConsumeUserEntitlement' test.out

#- 183 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '1EQU0oep' \
    --namespace 'EvcjaSgE' \
    --userId 'h6jJnFxi' \
    > test.out 2>&1
eval_tap $? 183 'DisableUserEntitlement' test.out

#- 184 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'nIHJ1o7a' \
    --namespace 'q5Zznd5e' \
    --userId 'acobTsuR' \
    > test.out 2>&1
eval_tap $? 184 'EnableUserEntitlement' test.out

#- 185 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'lhreQVFI' \
    --namespace 'D3o8hJWV' \
    --userId 'jKIOAw70' \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlementHistories' test.out

#- 186 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'DvAHhSGW' \
    --namespace 'Uvzq1Za3' \
    --userId 'IBC4vQFs' \
    > test.out 2>&1
eval_tap $? 186 'RevokeUserEntitlement' test.out

#- 187 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 92, "endDate": "1988-11-27T00:00:00Z", "itemId": "fiaJp1rt", "itemSku": "7OBgBCe6", "language": "N0eI65Mn", "order": {"currency": {"currencyCode": "5tngEYXg", "currencySymbol": "PVT5CqXD", "currencyType": "VIRTUAL", "decimals": 94, "namespace": "MJyJeKFO"}, "ext": {"92YDtaZv": {}}, "free": false}, "orderNo": "KS0Oxyip", "origin": "Playstation", "quantity": 81, "region": "4N9S2YCg", "source": "REFERRAL_BONUS", "startDate": "1971-08-06T00:00:00Z", "storeId": "cvGRYk5r"}' \
    --namespace 'UtWHCnhm' \
    --userId 'zzppV7tK' \
    > test.out 2>&1
eval_tap $? 187 'FulfillItem' test.out

#- 188 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "NKYUQVBX", "language": "MwC", "region": "FxYaGHUp"}' \
    --namespace 'mBFyOrFK' \
    --userId 'txGNAi0f' \
    > test.out 2>&1
eval_tap $? 188 'RedeemCode' test.out

#- 189 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "4xChPLd2", "namespace": "lOopc7Xo"}, "item": {"itemId": "Vpdd6rCp", "itemSku": "yMrnH9YH", "itemType": "Xh7KnCVO"}, "quantity": 73, "type": "ITEM"}], "source": "OTHER"}' \
    --namespace 'BRGtd8QY' \
    --userId '2OLbijrv' \
    > test.out 2>&1
eval_tap $? 189 'FulfillRewards' test.out

#- 190 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'fr8hknjW' \
    --userId 'UWdMUXHv' \
    --endTime 'w4pNlGLj' \
    --limit '6' \
    --offset '54' \
    --productId 'xLM079pD' \
    --startTime 'AbTgmsEY' \
    --status 'FULFILLED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 190 'QueryUserIAPOrders' test.out

#- 191 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace '2GkYK1vY' \
    --userId 'm9flXQ7C' \
    > test.out 2>&1
eval_tap $? 191 'QueryAllUserIAPOrders' test.out

#- 192 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_ID", "language": "MN-205", "productId": "5vnz6GiN", "region": "MboBJHml", "type": "PLAYSTATION"}' \
    --namespace 'pPi4mqhr' \
    --userId 'uiCZLGGP' \
    > test.out 2>&1
eval_tap $? 192 'MockFulfillIAPItem' test.out

#- 193 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace '5UXkHNTM' \
    --userId 'app5Sbon' \
    --itemId 'sUJKADr6' \
    --limit '61' \
    --offset '21' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 193 'QueryUserOrders' test.out

#- 194 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --body '{"currencyCode": "FrpLsGt9", "discountedPrice": 49, "ext": {"TXWUSCQc": {}}, "itemId": "MsHN7reI", "language": "22ks7I12", "platform": "Other", "price": 52, "quantity": 5, "region": "8sxxLx9X", "returnUrl": "QeqNWLm8", "sandbox": false}' \
    --namespace 'NJbYH5J4' \
    --userId 'WiJLv9Nv' \
    > test.out 2>&1
eval_tap $? 194 'AdminCreateUserOrder' test.out

#- 195 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'Hwtw2Mjc' \
    --userId 'y9ZL6Zs5' \
    --itemId 'Bu2XYopL' \
    > test.out 2>&1
eval_tap $? 195 'CountOfPurchasedItem' test.out

#- 196 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'WZeUKJJN' \
    --orderNo 'ftRpGgk1' \
    --userId 'iseREzzR' \
    > test.out 2>&1
eval_tap $? 196 'GetUserOrder' test.out

#- 197 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "REFUNDED", "statusReason": "6z9wmuHd"}' \
    --namespace 'dyOdibI1' \
    --orderNo 'LVyqbdY8' \
    --userId 'DGZKAuoI' \
    > test.out 2>&1
eval_tap $? 197 'UpdateUserOrderStatus' test.out

#- 198 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'Kz3Pp3zL' \
    --orderNo 'WUxMzMtS' \
    --userId 'mMmZP8nG' \
    > test.out 2>&1
eval_tap $? 198 'FulfillUserOrder' test.out

#- 199 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace '0FoQP8q7' \
    --orderNo 'aSsb85gA' \
    --userId 'h9RD3ZzN' \
    > test.out 2>&1
eval_tap $? 199 'GetUserOrderGrant' test.out

#- 200 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace '6N1iJ8lt' \
    --orderNo 't9IRqCfl' \
    --userId 'gln6r5f0' \
    > test.out 2>&1
eval_tap $? 200 'GetUserOrderHistories' test.out

#- 201 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "s5H6lCf3"}, "authorisedTime": "1992-09-22T00:00:00Z", "chargebackReversedTime": "1971-02-27T00:00:00Z", "chargebackTime": "1989-10-21T00:00:00Z", "chargedTime": "1985-02-17T00:00:00Z", "createdTime": "1982-01-05T00:00:00Z", "currency": {"currencyCode": "v4LExdab", "currencySymbol": "D8g2cvHf", "currencyType": "VIRTUAL", "decimals": 31, "namespace": "DA5xbjs3"}, "customParameters": {"XRdHUJ0G": {}}, "extOrderNo": "CmflIXkg", "extTxId": "J6zkTwoa", "extUserId": "kq7sEejF", "issuedAt": "1996-11-03T00:00:00Z", "metadata": {"tONXb9w9": "hsQHszIs"}, "namespace": "frlzKpQd", "nonceStr": "d58dZP5R", "paymentMethod": "vrinNtvB", "paymentMethodFee": 39, "paymentOrderNo": "qFSkA68m", "paymentProvider": "PAYPAL", "paymentProviderFee": 89, "paymentStationUrl": "VxBsLhty", "price": 30, "refundedTime": "1973-01-20T00:00:00Z", "salesTax": 91, "sandbox": false, "sku": "XA4M1oUF", "status": "REFUNDING", "statusReason": "hgo7Z6mw", "subscriptionId": "NC4FY69m", "subtotalPrice": 76, "targetNamespace": "87joJNOG", "targetUserId": "B83Ns6Hl", "tax": 82, "totalPrice": 28, "totalTax": 0, "txEndTime": "1971-04-01T00:00:00Z", "type": "KoVqNBUz", "userId": "IxOfglqu", "vat": 89}' \
    --namespace '2q2DoWr9' \
    --orderNo 'zvFtKa2m' \
    --userId 'OAqOokV1' \
    > test.out 2>&1
eval_tap $? 201 'ProcessUserOrderNotification' test.out

#- 202 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'plxQ2Yri' \
    --orderNo 'TPfipD67' \
    --userId 'jI2hiZkr' \
    > test.out 2>&1
eval_tap $? 202 'DownloadUserOrderReceipt' test.out

#- 203 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "tLnh2U1R", "currencyNamespace": "QlMxkfNM", "customParameters": {"PNtqv2TM": {}}, "description": "z1b7Snzk", "extOrderNo": "XOek83Ig", "extUserId": "m1wkSWsY", "itemType": "MEDIA", "language": "SUO", "metadata": {"c8mbvXcw": "cgMqOXMz"}, "notifyUrl": "iXrVdsEc", "omitNotification": true, "platform": "lFP3mJwu", "price": 36, "recurringPaymentOrderNo": "CBTe4kLc", "region": "uqL40NYg", "returnUrl": "ekRavpaG", "sandbox": true, "sku": "9BTyCCyN", "subscriptionId": "4Fw9i6mI", "title": "2W3tjjCq"}' \
    --namespace 'PVyYs01h' \
    --userId 'EYzWw3qr' \
    > test.out 2>&1
eval_tap $? 203 'CreateUserPaymentOrder' test.out

#- 204 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "cxM0DPAX"}' \
    --namespace 'QBNMP7j3' \
    --paymentOrderNo 'xfPaoZaW' \
    --userId 'FspkU5kn' \
    > test.out 2>&1
eval_tap $? 204 'RefundUserPaymentOrder' test.out

#- 205 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "6PlPqD4A", "orderNo": "gfasBfcl"}' \
    --namespace 'BhZjZbLn' \
    --userId 'mghKwPyV' \
    > test.out 2>&1
eval_tap $? 205 'ApplyUserRedemption' test.out

#- 206 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace 'In3qaHP7' \
    --userId 'KNulyfrE' \
    --chargeStatus 'SETUP' \
    --itemId 'VQkpcaWH' \
    --limit '11' \
    --offset '90' \
    --sku '2xOOljn7' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 206 'QueryUserSubscriptions' test.out

#- 207 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace '9efJI02T' \
    --userId 'ZxrgLBFJ' \
    --excludeSystem 'True' \
    --limit '20' \
    --offset '31' \
    --subscriptionId 'hFz0h6Wp' \
    > test.out 2>&1
eval_tap $? 207 'GetUserSubscriptionActivities' test.out

#- 208 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 28, "itemId": "VpVc2HBB", "language": "mj6cEi02", "reason": "hXl42ubC", "region": "Rfy4GjKn", "source": "5ItHXLDZ"}' \
    --namespace 'qpRhqnR7' \
    --userId '42GcbLuQ' \
    > test.out 2>&1
eval_tap $? 208 'PlatformSubscribeSubscription' test.out

#- 209 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'OGMOEzmd' \
    --userId 'jNhT0S46' \
    --itemId 'kqyfMBSa' \
    > test.out 2>&1
eval_tap $? 209 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 210 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'Zc4SA16M' \
    --subscriptionId '8gQCD7aB' \
    --userId 'HWCYevNk' \
    > test.out 2>&1
eval_tap $? 210 'GetUserSubscription' test.out

#- 211 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'fcQvl4Os' \
    --subscriptionId 'o7tx65zX' \
    --userId 'CiTfjorL' \
    > test.out 2>&1
eval_tap $? 211 'DeleteUserSubscription' test.out

#- 212 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": true, "reason": "qTmIUFUo"}' \
    --namespace 'onHBI13S' \
    --subscriptionId 'ZFHfm0F8' \
    --userId 'vS2BrZ3n' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 212 'CancelSubscription' test.out

#- 213 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 100, "reason": "SSD7zV0C"}' \
    --namespace '8FvVU3kR' \
    --subscriptionId 'XBGPXIdf' \
    --userId 't1biZHuh' \
    > test.out 2>&1
eval_tap $? 213 'GrantDaysToSubscription' test.out

#- 214 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'WyFPHdXc' \
    --subscriptionId 'yvZEhYeU' \
    --userId 'Sy5Ukc65' \
    --excludeFree 'False' \
    --limit '0' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 214 'GetUserSubscriptionBillingHistories' test.out

#- 215 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "11R8Xww9"}, "authorisedTime": "1981-05-09T00:00:00Z", "chargebackReversedTime": "1977-10-31T00:00:00Z", "chargebackTime": "1971-08-09T00:00:00Z", "chargedTime": "1980-02-24T00:00:00Z", "createdTime": "1982-07-11T00:00:00Z", "currency": {"currencyCode": "uf2fjV30", "currencySymbol": "SLxi7uyh", "currencyType": "REAL", "decimals": 9, "namespace": "FtcO9XNy"}, "customParameters": {"63QO9vW0": {}}, "extOrderNo": "ck7TEDE8", "extTxId": "LeEQBeGP", "extUserId": "LiE6tHCr", "issuedAt": "1997-09-09T00:00:00Z", "metadata": {"PFvT0SAK": "91y5vCeB"}, "namespace": "IJq0B9Uc", "nonceStr": "I6c5cre9", "paymentMethod": "ealHOZph", "paymentMethodFee": 4, "paymentOrderNo": "Lncnjnmy", "paymentProvider": "XSOLLA", "paymentProviderFee": 89, "paymentStationUrl": "xXdCrsko", "price": 63, "refundedTime": "1979-04-20T00:00:00Z", "salesTax": 28, "sandbox": true, "sku": "q9Laz1GL", "status": "CHARGED", "statusReason": "5Mhf8Z7a", "subscriptionId": "hmbVPm2g", "subtotalPrice": 46, "targetNamespace": "AFfRRLUj", "targetUserId": "fWS9sftI", "tax": 10, "totalPrice": 66, "totalTax": 64, "txEndTime": "1973-01-10T00:00:00Z", "type": "UTSXOv12", "userId": "PMcRO6E2", "vat": 77}' \
    --namespace 'kre5q7Fv' \
    --subscriptionId 'aACp6he0' \
    --userId 'fzjkPNNS' \
    > test.out 2>&1
eval_tap $? 215 'ProcessUserSubscriptionNotification' test.out

#- 216 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 54, "orderNo": "fgF6inIR"}' \
    --boothName 'sZ5hrqNz' \
    --namespace 'VszGVP5P' \
    --userId '1iwhcf30' \
    > test.out 2>&1
eval_tap $? 216 'AcquireUserTicket' test.out

#- 217 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace 'C1KHRZHM' \
    --userId 'Gy5vbfZv' \
    > test.out 2>&1
eval_tap $? 217 'QueryUserCurrencyWallets' test.out

#- 218 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'YIFFctEK' \
    --namespace 'OLxSRxe0' \
    --userId 'wmWBMcNi' \
    --limit '96' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 218 'ListUserCurrencyTransactions' test.out

#- 219 CheckWallet
eval_tap 0 219 'CheckWallet # SKIP deprecated' test.out

#- 220 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 29, "expireAt": "1971-08-09T00:00:00Z", "origin": "Nintendo", "reason": "6alTQcP0", "source": "REDEEM_CODE"}' \
    --currencyCode 'pE9wGNVw' \
    --namespace 'kgfJJ2HI' \
    --userId 'alfzgRpT' \
    > test.out 2>&1
eval_tap $? 220 'CreditUserWallet' test.out

#- 221 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 11, "walletPlatform": "IOS"}' \
    --currencyCode 'xF1JPBiz' \
    --namespace 'XZtrGe8L' \
    --userId 'yOH24nne' \
    > test.out 2>&1
eval_tap $? 221 'PayWithUserWallet' test.out

#- 222 GetUserWallet
eval_tap 0 222 'GetUserWallet # SKIP deprecated' test.out

#- 223 DebitUserWallet
eval_tap 0 223 'DebitUserWallet # SKIP deprecated' test.out

#- 224 DisableUserWallet
eval_tap 0 224 'DisableUserWallet # SKIP deprecated' test.out

#- 225 EnableUserWallet
eval_tap 0 225 'EnableUserWallet # SKIP deprecated' test.out

#- 226 ListUserWalletTransactions
eval_tap 0 226 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 227 QueryWallets
eval_tap 0 227 'QueryWallets # SKIP deprecated' test.out

#- 228 GetWallet
eval_tap 0 228 'GetWallet # SKIP deprecated' test.out

#- 229 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'ZHFeRld0' \
    --end 'bGA7JxWY' \
    --start 'zaEaimvo' \
    > test.out 2>&1
eval_tap $? 229 'SyncOrders' test.out

#- 230 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["kcWX59kw"], "apiKey": "iYHgHT6I", "authoriseAsCapture": true, "blockedPaymentMethods": ["d0fGpU20"], "clientKey": "9nVRclum", "dropInSettings": "QTFvr5rR", "liveEndpointUrlPrefix": "yYzaNmz3", "merchantAccount": "PjMx2T89", "notificationHmacKey": "NTrFRUCX", "notificationPassword": "Fkruxegp", "notificationUsername": "kcXCfzgc", "returnUrl": "vv0WE5EQ", "settings": "hcomPS1E"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 230 'TestAdyenConfig' test.out

#- 231 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "psLgr2zE", "privateKey": "njyRNjEC", "publicKey": "3FMDcZvw", "returnUrl": "wf8aU98I"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 231 'TestAliPayConfig' test.out

#- 232 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "31mF4jlw", "secretKey": "KyGxTF1l"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 232 'TestCheckoutConfig' test.out

#- 233 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '1Np0sT1X' \
    --region '8J2eAWOz' \
    > test.out 2>&1
eval_tap $? 233 'DebugMatchedPaymentMerchantConfig' test.out

#- 234 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "jmh9UzIf", "clientSecret": "nhoo6xUm", "returnUrl": "TleUnJFM", "webHookId": "7XhoDxGi"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 234 'TestPayPalConfig' test.out

#- 235 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["2JSfZ64w"], "publishableKey": "WePq6103", "secretKey": "PONKIS7F", "webhookSecret": "9emW4R15"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 235 'TestStripeConfig' test.out

#- 236 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "AsiG31CE", "key": "yUOuOZhm", "mchid": "nHkvek6A", "returnUrl": "a5kNnocl"}' \
    > test.out 2>&1
eval_tap $? 236 'TestWxPayConfig' test.out

#- 237 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "xs9kxcvI", "flowCompletionUrl": "pV7mCYfW", "merchantId": 73, "projectId": 19, "projectSecretKey": "Y9CsQYsG"}' \
    > test.out 2>&1
eval_tap $? 237 'TestXsollaConfig' test.out

#- 238 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'yhEOntEk' \
    > test.out 2>&1
eval_tap $? 238 'GetPaymentMerchantConfig' test.out

#- 239 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["edM1A0bF"], "apiKey": "qvjxbT3Y", "authoriseAsCapture": true, "blockedPaymentMethods": ["VdaBN5RS"], "clientKey": "jhcjuDvN", "dropInSettings": "rXL845jf", "liveEndpointUrlPrefix": "h5tZ0hqJ", "merchantAccount": "LjQUmoYU", "notificationHmacKey": "nC849OBN", "notificationPassword": "uLZtofGA", "notificationUsername": "AaMpBQAr", "returnUrl": "U4RS0FQR", "settings": "y5Qz5Vcy"}' \
    --id 'fBpHjtvF' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 239 'UpdateAdyenConfig' test.out

#- 240 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Zeqvpevc' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 240 'TestAdyenConfigById' test.out

#- 241 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "s9LTorIy", "privateKey": "x23LhLy7", "publicKey": "ds3g3BuH", "returnUrl": "TPF19dBY"}' \
    --id 'Fws5Ya4e' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 241 'UpdateAliPayConfig' test.out

#- 242 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'W8HiLpTi' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 242 'TestAliPayConfigById' test.out

#- 243 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "cgM5kYu3", "secretKey": "6JpTL55W"}' \
    --id '4ws3KCyp' \
    --sandbox 'False' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 243 'UpdateCheckoutConfig' test.out

#- 244 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'cKDCVaqr' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 244 'TestCheckoutConfigById' test.out

#- 245 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "egT3uGDI", "clientSecret": "Icvuuokt", "returnUrl": "8TC38mYo", "webHookId": "UanQT4Mm"}' \
    --id 'znv7r2jt' \
    --sandbox 'False' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 245 'UpdatePayPalConfig' test.out

#- 246 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'bgeCLX41' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 246 'TestPayPalConfigById' test.out

#- 247 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["yOiLgd8W"], "publishableKey": "y739QHzw", "secretKey": "0TEzpd7T", "webhookSecret": "V5vhMM2i"}' \
    --id '3DM6etfI' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 247 'UpdateStripeConfig' test.out

#- 248 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '3sKmtsyE' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 248 'TestStripeConfigById' test.out

#- 249 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "O6HNm3zG", "key": "u71qTSSJ", "mchid": "EbWlETp9", "returnUrl": "XOCA1X3H"}' \
    --id 'HMTlakAW' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 249 'UpdateWxPayConfig' test.out

#- 250 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'BuBAOCjB' \
    > test.out 2>&1
eval_tap $? 250 'UpdateWxPayConfigCert' test.out

#- 251 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'fYCcplye' \
    > test.out 2>&1
eval_tap $? 251 'TestWxPayConfigById' test.out

#- 252 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "2GaPNzkr", "flowCompletionUrl": "gBH4icml", "merchantId": 74, "projectId": 94, "projectSecretKey": "g2F2Q9aZ"}' \
    --id 'DJg1OT81' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 252 'UpdateXsollaConfig' test.out

#- 253 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 't70TevJg' \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfigById' test.out

#- 254 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    --id 'FfJ6qcHA' \
    > test.out 2>&1
eval_tap $? 254 'UpdateXsollaUIConfig' test.out

#- 255 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '55' \
    --namespace 'dGtV9jAP' \
    --offset '33' \
    --region 'on7UmLNy' \
    > test.out 2>&1
eval_tap $? 255 'QueryPaymentProviderConfig' test.out

#- 256 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "F9SnlbWN", "region": "cAxv8uHD", "sandboxTaxJarApiToken": "qJtYC7rz", "specials": ["PAYPAL"], "taxJarApiToken": "wNdLhqXv", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 256 'CreatePaymentProviderConfig' test.out

#- 257 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 257 'GetAggregatePaymentProviders' test.out

#- 258 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'vc0BMegJ' \
    --region 'pW1Zeuhp' \
    > test.out 2>&1
eval_tap $? 258 'DebugMatchedPaymentProviderConfig' test.out

#- 259 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 259 'GetSpecialPaymentProviders' test.out

#- 260 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "HZ4hnOmm", "region": "yXu6XtjN", "sandboxTaxJarApiToken": "CqYk9TPU", "specials": ["ADYEN"], "taxJarApiToken": "DTfR7dpU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --id '2Oe08Hpe' \
    > test.out 2>&1
eval_tap $? 260 'UpdatePaymentProviderConfig' test.out

#- 261 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'JBfG0nGZ' \
    > test.out 2>&1
eval_tap $? 261 'DeletePaymentProviderConfig' test.out

#- 262 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 262 'GetPaymentTaxConfig' test.out

#- 263 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "He5lw2Tl", "taxJarApiToken": "kPIxL9v4", "taxJarEnabled": false, "taxJarProductCodesMapping": {"pCd0Uk5h": "1kP1pkkT"}}' \
    > test.out 2>&1
eval_tap $? 263 'UpdatePaymentTaxConfig' test.out

#- 264 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '08Cs6DdX' \
    --end 'ZWowBgZi' \
    --start 'zMvwHszf' \
    > test.out 2>&1
eval_tap $? 264 'SyncPaymentOrders' test.out

#- 265 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace '84MAmayJ' \
    --language 'J6vzDTXx' \
    --storeId 'syIaTgp0' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRootCategories' test.out

#- 266 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'pwnEJL15' \
    --language 'kxO4oVUP' \
    --storeId 'ng5JsHAk' \
    > test.out 2>&1
eval_tap $? 266 'DownloadCategories' test.out

#- 267 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'I47jO1wu' \
    --namespace 'AFuZcUwP' \
    --language 'teKdQgUT' \
    --storeId 'F33fYWZf' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCategory' test.out

#- 268 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'QMAnziTh' \
    --namespace 'aE2btn0u' \
    --language 'p9GeTQ7X' \
    --storeId 'ymDSQNYX' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetChildCategories' test.out

#- 269 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'NEpZyFhI' \
    --namespace 'eqiNHtVS' \
    --language 'nhxby8F6' \
    --storeId 'xF8MhbJA' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetDescendantCategories' test.out

#- 270 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'YEDN1xsz' \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 270 'PublicListCurrencies' test.out

#- 271 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'pR69nsKA' \
    --language 'S5zKsTRX' \
    --region 'd7b3v2fk' \
    --storeId 'ZIkr06oj' \
    --appId 'UtoVJLGX' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetItemByAppId' test.out

#- 272 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'ekomvwD8' \
    --appType 'DLC' \
    --baseAppId 'o5vIkDZY' \
    --categoryPath 'rYEf1xYn' \
    --features 'lxHHXjFo' \
    --itemType 'INGAMEITEM' \
    --language 'wKW6AOnq' \
    --limit '26' \
    --offset '96' \
    --region 'CuXMWqG8' \
    --sortBy '["name:asc"]' \
    --storeId 'NprJx82n' \
    --tags 'AFexNou1' \
    > test.out 2>&1
eval_tap $? 272 'PublicQueryItems' test.out

#- 273 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'AicsQjKx' \
    --language '5LjetHEw' \
    --region '0aCQpU6E' \
    --storeId 'GOW0VAI8' \
    --sku '7DPH0fLL' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetItemBySku' test.out

#- 274 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'iUqzay0g' \
    --language 'ET8T53yE' \
    --region 'ej7DsqsT' \
    --storeId 'vNKAXqfq' \
    --itemIds 'MJHGeHaN' \
    > test.out 2>&1
eval_tap $? 274 'PublicBulkGetItems' test.out

#- 275 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace '2k1Eutm9' \
    --limit '52' \
    --offset '53' \
    --region 'WDcDv3IS' \
    --storeId 'BgZCAf2p' \
    --keyword 'WOWs4I2l' \
    --language 'OHfiu4Hr' \
    > test.out 2>&1
eval_tap $? 275 'PublicSearchItems' test.out

#- 276 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'aKYMtgBm' \
    --namespace 'vCHMtF15' \
    --language 'a7T0Ihey' \
    --region 'wiPE1WUR' \
    --storeId '1PTFfJJ4' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetApp' test.out

#- 277 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '6kzfqapb' \
    --namespace 'ByIKoYzY' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemDynamicData' test.out

#- 278 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'tTWJA3nF' \
    --namespace 'CDgWOpz3' \
    --language 'yPQfqbeV' \
    --populateBundle 'False' \
    --region '4VTAhuFY' \
    --storeId 'hEgQBb9H' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItem' test.out

#- 279 GetPaymentCustomization
eval_tap 0 279 'GetPaymentCustomization # SKIP deprecated' test.out

#- 280 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "ni6lDMj9", "paymentProvider": "ALIPAY", "returnUrl": "vkBcQjQ5", "ui": "6RuAvUlM", "zipCode": "Wp8WGpZx"}' \
    --namespace 'Ce0KsmXt' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetPaymentUrl' test.out

#- 281 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'GBbKrV58' \
    --paymentOrderNo 'TIThQ52P' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPaymentMethods' test.out

#- 282 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'YNknBCji' \
    --paymentOrderNo 'rw4hmfMS' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUnpaidPaymentOrder' test.out

#- 283 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "l2bETuFL"}' \
    --namespace 'FOfdl0yR' \
    --paymentOrderNo 'ndbO78R8' \
    --paymentProvider 'WXPAY' \
    --zipCode 'bYsHx3BI' \
    > test.out 2>&1
eval_tap $? 283 'Pay' test.out

#- 284 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'gGuo817l' \
    --paymentOrderNo 'ZA58OI2L' \
    > test.out 2>&1
eval_tap $? 284 'PublicCheckPaymentOrderPaidStatus' test.out

#- 285 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'MYRX16nf' \
    --sandbox 'True' \
    --paymentProvider 'ADYEN' \
    --region 'dpuCxSDF' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentPublicConfig' test.out

#- 286 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'WMVcsOZl' \
    --code 'S0ulerU6' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetQRCode' test.out

#- 287 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace '1drwLngb' \
    --payerID 'ZxOGxFwn' \
    --foreinginvoice 'mB60ea7X' \
    --invoiceId 'ItZS8KIu' \
    --payload '9T604oPa' \
    --redirectResult 'jgyShKuL' \
    --resultCode 'B7pQLZiW' \
    --sessionId 'Vmc8PVwS' \
    --status 'hVQz7FY3' \
    --token 'h2oVVScV' \
    --type 'v3YTBM4t' \
    --userId 'eOpqevsW' \
    --orderNo 'vMhiheE2' \
    --paymentOrderNo 'KM7Ctal5' \
    --paymentProvider 'WXPAY' \
    --returnUrl '7hLiOYz1' \
    > test.out 2>&1
eval_tap $? 287 'PublicNormalizePaymentReturnUrl' test.out

#- 288 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'jFfu1y1d' \
    --zipCode '77D8ZNOf' \
    --paymentOrderNo 'HyenhbRZ' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 288 'GetPaymentTaxValue' test.out

#- 289 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace '9UjjjU0E' \
    --rewardCode 'ggYLcGiE' \
    > test.out 2>&1
eval_tap $? 289 'GetRewardByCode' test.out

#- 290 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'DZbDl9Ze' \
    --eventTopic 'ZH3M87v0' \
    --limit '62' \
    --offset '14' \
    --sortBy '["namespace"]' \
    > test.out 2>&1
eval_tap $? 290 'QueryRewards1' test.out

#- 291 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'KDEfXRha' \
    --rewardId 'O0AYSqvc' \
    > test.out 2>&1
eval_tap $? 291 'GetReward1' test.out

#- 292 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'V2LqfgCX' \
    > test.out 2>&1
eval_tap $? 292 'PublicListStores' test.out

#- 293 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace '28Je4kyP' \
    --appIds '["QjgDJNOE"]' \
    --itemIds '["MtdEtN4s"]' \
    --skus '["EebnQucg"]' \
    > test.out 2>&1
eval_tap $? 293 'PublicExistsAnyMyActiveEntitlement' test.out

#- 294 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'aop5NEdh' \
    --appId 'urScNiUx' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 295 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'nJUewUVh' \
    --entitlementClazz 'CODE' \
    --itemId 'GRRTgLCb' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 296 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace '9evywZyw' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'nLImNhyZ' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 297 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'sb7YhhQb' \
    --appIds '["DxLRKxzU"]' \
    --itemIds '["tpKDC8gl"]' \
    --skus '["2otjUWKx"]' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetEntitlementOwnershipToken' test.out

#- 298 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'gW6n8AJa' \
    --namespace 'eqxTPgZK' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyWallet' test.out

#- 299 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 63}' \
    --namespace 'i3SBGlCD' \
    --userId '4ig5ZRoJ' \
    > test.out 2>&1
eval_tap $? 299 'PublicSyncPsnDlcInventory' test.out

#- 300 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "d1as1Wkf", "steamId": "h3l8HyGW"}' \
    --namespace 'ZTdpmTxP' \
    --userId 'UBFjTIIK' \
    > test.out 2>&1
eval_tap $? 300 'SyncSteamDLC' test.out

#- 301 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "cXlxPfdD"}' \
    --namespace 'yjJ0wwrY' \
    --userId 'eljMyoeb' \
    > test.out 2>&1
eval_tap $? 301 'SyncXboxDLC' test.out

#- 302 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace '3gsMOMdq' \
    --userId 'bt4PnuFr' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'p3CmzrfV' \
    --itemId '["Ia1vi9ok"]' \
    --limit '48' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 302 'PublicQueryUserEntitlements' test.out

#- 303 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace '7fIgBRSB' \
    --userId 'lxukoOTC' \
    --appId 'osjAXo6l' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserAppEntitlementByAppId' test.out

#- 304 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'jBVW8r7n' \
    --userId 'yNcVl6ZB' \
    --limit '3' \
    --offset '64' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryUserEntitlementsByAppType' test.out

#- 305 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'pBuAL2av' \
    --userId 'XKOjwGRJ' \
    --entitlementClazz 'APP' \
    --itemId 'ZqXgQ9az' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserEntitlementByItemId' test.out

#- 306 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'OreTsviZ' \
    --userId 'mgm0l8Yr' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'mgiwIF5Z' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserEntitlementBySku' test.out

#- 307 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'x5TIIhBt' \
    --userId 'L3zT6xRq' \
    --appIds '["yV0tlLaM"]' \
    --itemIds '["YL1p95v9"]' \
    --skus '["mOiIFEdQ"]' \
    > test.out 2>&1
eval_tap $? 307 'PublicExistsAnyUserActiveEntitlement' test.out

#- 308 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace '2RKeQy2W' \
    --userId 'RztR5qzt' \
    --appId 'uhVaJDWx' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 309 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace '2OdrUV7b' \
    --userId 'hcKGIOZc' \
    --entitlementClazz 'MEDIA' \
    --itemId '6NWffXkY' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 310 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'zes2xHp1' \
    --userId 'ufZNxhbs' \
    --entitlementClazz 'APP' \
    --sku 'SFtTmbIf' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 311 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '2hFQRmsi' \
    --namespace '02melJQk' \
    --userId 'LtV2QnPs' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserEntitlement' test.out

#- 312 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 24}' \
    --entitlementId 'hFVPtJTG' \
    --namespace 'ig12OdDn' \
    --userId 'xXuJoZgO' \
    > test.out 2>&1
eval_tap $? 312 'PublicConsumeUserEntitlement' test.out

#- 313 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "G4tOeWVM", "language": "kEjX_rKrK-qn", "region": "uv80Em9n"}' \
    --namespace 'uffLGUWn' \
    --userId 'VBQPhwwH' \
    > test.out 2>&1
eval_tap $? 313 'PublicRedeemCode' test.out

#- 314 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": true, "language": "FfC_FEEA-hE", "productId": "H5p8Zx8j", "receiptData": "y7nxGzOT", "region": "BpmmjuEE", "transactionId": "EyDtwbtA"}' \
    --namespace '8xsmmcaO' \
    --userId 'LdFifUk9' \
    > test.out 2>&1
eval_tap $? 314 'PublicFulfillAppleIAPItem' test.out

#- 315 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "p700jB0p"}' \
    --namespace '4HpK8pvu' \
    --userId 'fSxYM0Vk' \
    > test.out 2>&1
eval_tap $? 315 'SyncEpicGamesInventory' test.out

#- 316 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": true, "language": "okR-115", "orderId": "smSrrJzA", "packageName": "i6FOuhQI", "productId": "BAbup1fp", "purchaseTime": 96, "purchaseToken": "sO6fW468", "region": "fWxqRkJD"}' \
    --namespace 'jfNhYDgV' \
    --userId 'm0TCaos4' \
    > test.out 2>&1
eval_tap $? 316 'PublicFulfillGoogleIAPItem' test.out

#- 317 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "wyjaPP6C", "price": 0.18130798685698657, "productId": "kQGm25KY", "serviceLabel": 25}' \
    --namespace 'FZxQr4xb' \
    --userId 'V63gcdU4' \
    > test.out 2>&1
eval_tap $? 317 'PublicReconcilePlayStationStore' test.out

#- 318 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "vyIPJeRj", "language": "Juk_417", "region": "qA4CysEX", "stadiaPlayerId": "4VOy0n2E"}' \
    --namespace 'kPBjC4ec' \
    --userId 'HwtSGzay' \
    > test.out 2>&1
eval_tap $? 318 'SyncStadiaEntitlement' test.out

#- 319 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "UaDh3m2e", "currencyCode": "X31qVPH2", "language": "hdZN", "price": 0.6686164798722917, "productId": "PY5uDkQ8", "region": "zpNRwycE", "steamId": "AShpFLpq"}' \
    --namespace 'Ax1N5IGe' \
    --userId 'bNuvyrgh' \
    > test.out 2>&1
eval_tap $? 319 'SyncSteamInventory' test.out

#- 320 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "VdsSwDc9", "language": "jrxz", "region": "C8sja1J7"}' \
    --namespace 'eucGSSxZ' \
    --userId 'JPto04wT' \
    > test.out 2>&1
eval_tap $? 320 'SyncTwitchDropsEntitlement' test.out

#- 321 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "EI8isXmy", "price": 0.40703429655865375, "productId": "W2rZ7bYv", "xstsToken": "VW26Oays"}' \
    --namespace 'x72rwV3M' \
    --userId 'dXNVRDzT' \
    > test.out 2>&1
eval_tap $? 321 'SyncXboxInventory' test.out

#- 322 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace '2sBbflg7' \
    --userId 'cD247c1X' \
    --itemId 'YYJf18St' \
    --limit '100' \
    --offset '40' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserOrders' test.out

#- 323 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "b2We3Q6P", "discountedPrice": 24, "ext": {"7RBkqWDP": {}}, "itemId": "EP4CWnZJ", "language": "xD_340", "price": 96, "quantity": 29, "region": "OdpY5ZJC", "returnUrl": "hQtpD2U9"}' \
    --namespace 'IQzA2eex' \
    --userId 'jq3TfnJ6' \
    > test.out 2>&1
eval_tap $? 323 'PublicCreateUserOrder' test.out

#- 324 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'ryQ4wCg5' \
    --orderNo 'Itn9TYOR' \
    --userId '2n8qFjjS' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserOrder' test.out

#- 325 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'Zx0FeRdm' \
    --orderNo 'gOta6pcK' \
    --userId 'zSPfek36' \
    > test.out 2>&1
eval_tap $? 325 'PublicCancelUserOrder' test.out

#- 326 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '9fIM1tcx' \
    --orderNo 'wt2XqPFa' \
    --userId 'IxBgzRO8' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserOrderHistories' test.out

#- 327 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'GKycdcXu' \
    --orderNo 'ULpvuBNR' \
    --userId 'zUbH0hI7' \
    > test.out 2>&1
eval_tap $? 327 'PublicDownloadUserOrderReceipt' test.out

#- 328 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'yCEyjKXQ' \
    --userId 'PnomAsHM' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentAccounts' test.out

#- 329 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'pmDvt4tk' \
    --namespace 'WavQ0jo1' \
    --type 'paypal' \
    --userId '6AFdE7UR' \
    > test.out 2>&1
eval_tap $? 329 'PublicDeletePaymentAccount' test.out

#- 330 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'b19BcvWf' \
    --userId 'PxHPQaUC' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'yAjfGkGw' \
    --limit '59' \
    --offset '37' \
    --sku 'oo09NdZj' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 330 'PublicQueryUserSubscriptions' test.out

#- 331 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "tl8XIGZV", "itemId": "3GBXIHxW", "language": "xIWW", "region": "aKvD9nNe", "returnUrl": "Li2tRrcl", "source": "M3o5FmkW"}' \
    --namespace 'cIpWlbLN' \
    --userId 'xQciSm2O' \
    > test.out 2>&1
eval_tap $? 331 'PublicSubscribeSubscription' test.out

#- 332 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'biacE1Vt' \
    --userId 'VP5yWKB3' \
    --itemId 'dhO4E5cH' \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 333 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'bV6Tq3ma' \
    --subscriptionId 'kniWG9At' \
    --userId 'aznHrmvF' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserSubscription' test.out

#- 334 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace '1mJZ3dLF' \
    --subscriptionId 'xAkQrsQX' \
    --userId 'CUjnXNZp' \
    > test.out 2>&1
eval_tap $? 334 'PublicChangeSubscriptionBillingAccount' test.out

#- 335 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "cdMfX6X3"}' \
    --namespace 'Zta5msSI' \
    --subscriptionId 'd556xncC' \
    --userId 'H37zoQEl' \
    > test.out 2>&1
eval_tap $? 335 'PublicCancelSubscription' test.out

#- 336 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'CSNpKYpj' \
    --subscriptionId 'KmIIb0iB' \
    --userId 'SA7vdLvU' \
    --excludeFree 'True' \
    --limit '70' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetUserSubscriptionBillingHistories' test.out

#- 337 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'N6ucqfJt' \
    --namespace 'h42FD6A3' \
    --userId 'kchLvxRu' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetWallet' test.out

#- 338 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ULxDjXJ9' \
    --namespace 'BFwEyGUC' \
    --userId 'v8O9EBlP' \
    --limit '25' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 338 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE