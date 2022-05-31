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
echo "1..330"

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
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
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
    --body '{"data": [{"id": "bmuT1whO", "rewards": [{"currency": {"currencyCode": "qmEnDXIW", "namespace": "rBPlSay4"}, "item": {"itemId": "6mv71BAZ", "itemSku": "AOjtFJ2v", "itemType": "mTj7tT7T"}, "quantity": 67, "type": "CURRENCY"}]}]}' \
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
    --body '{"appId": "4081gRB1", "appType": "DEMO", "baseAppId": "LfLg4RYu", "boothName": "EbgUDEcJ", "categoryPath": "yIvsPwOr", "clazz": "0BmV5iFv", "displayOrder": 10, "entitlementType": "CONSUMABLE", "ext": {"FjTSmIEq": {}}, "features": ["oLyLeUGm"], "images": [{"as": "omGX9sXT", "caption": "Z0v8pqLf", "height": 4, "imageUrl": "5SwGnReU", "smallImageUrl": "ULDX4QUI", "width": 3}], "itemIds": ["b5nh68Zn"], "itemQty": {"yUtRvW9h": 78}, "itemType": "SEASON", "listable": true, "localizations": {"TtFrOmjk": {"description": "FrFVA8t0", "localExt": {"xF34Xpt6": {}}, "longDescription": "ZlTTic0k", "title": "r2a0nI2o"}}, "maxCount": 28, "maxCountPerUser": 92, "name": "HCJK5sp0", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 43, "fixedTrialCycles": 69, "graceDays": 33}, "regionData": {"3aHVYIle": [{"currencyCode": "wLRuHY83", "currencyNamespace": "bGj0HTee", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1972-12-17T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1972-05-12T00:00:00Z", "discountedPrice": 5, "expireAt": "1980-08-26T00:00:00Z", "price": 30, "purchaseAt": "1983-02-21T00:00:00Z", "trialPrice": 100}]}, "seasonType": "PASS", "sku": "x476ED4M", "stackable": true, "status": "INACTIVE", "tags": ["hWIwHWTg"], "targetCurrencyCode": "zJFRYw6t", "targetNamespace": "1IKZLO6V", "thumbnailUrl": "4Ode46Qm", "useCount": 57}' \
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
    --body '{"appId": "fIWd0mcq", "appType": "GAME", "baseAppId": "7cWfCKK6", "boothName": "Dij1gFce", "categoryPath": "nEMySPfh", "clazz": "xBenDiTi", "displayOrder": 52, "entitlementType": "CONSUMABLE", "ext": {"FYmFKjaE": {}}, "features": ["Lmmll6oe"], "images": [{"as": "xId1OKGU", "caption": "N2Uznd7u", "height": 94, "imageUrl": "a7t14yvS", "smallImageUrl": "YSV52bHi", "width": 11}], "itemIds": ["CIf4tsuu"], "itemQty": {"6Pkam6tF": 89}, "itemType": "MEDIA", "listable": true, "localizations": {"4ZxA2PzZ": {"description": "FRkBNlg6", "localExt": {"hn5qusKy": {}}, "longDescription": "ZAuV6uUv", "title": "qM0lV6UZ"}}, "maxCount": 77, "maxCountPerUser": 22, "name": "EbxHNgJR", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 1, "graceDays": 40}, "regionData": {"njdAqnHU": [{"currencyCode": "z44tx4O6", "currencyNamespace": "hamPwNoi", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-10-13T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1986-09-28T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-10-04T00:00:00Z", "price": 76, "purchaseAt": "1994-08-11T00:00:00Z", "trialPrice": 74}]}, "seasonType": "PASS", "sku": "N0DsaD5F", "stackable": true, "status": "INACTIVE", "tags": ["sFe9OYEJ"], "targetCurrencyCode": "VsYffmhy", "targetNamespace": "x6J25PrM", "thumbnailUrl": "4S3cB8m1", "useCount": 15}' \
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
    --body '{"carousel": [{"alt": "v2LAgfBG", "previewUrl": "VzanbKYs", "thumbnailUrl": "B0gqJ8Vh", "type": "image", "url": "kJl2p9rB", "videoSource": "youtube"}], "developer": "8N5egapq", "forumUrl": "xDy4cLfN", "genres": ["Casual"], "localizations": {"zzEZYA8j": {"announcement": "IkMJb7cZ", "slogan": "2bPsaLLp"}}, "platformRequirements": {"EBVEMk5A": [{"additionals": "sKaF2P44", "directXVersion": "lXkI3zdi", "diskSpace": "RiC5IbPi", "graphics": "t71JWlYC", "label": "oi4nDfPu", "osVersion": "5V6QSYxE", "processor": "VOryVuZY", "ram": "mgUeEPB5", "soundCard": "AGPgvk0Z"}]}, "platforms": ["Linux"], "players": ["Single"], "primaryGenre": "Action", "publisher": "j0EBA4az", "releaseDate": "1992-07-19T00:00:00Z", "websiteUrl": "0d56smob"}' \
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
    --body '{"currencyCode": "671WLtv3", "currencyNamespace": "8Hecczop", "customParameters": {"FmeRwpcJ": {}}, "description": "BZyi3mLC", "extOrderNo": "4KzekiSz", "extUserId": "eyolnOQt", "itemType": "INGAMEITEM", "language": "vh-285", "metadata": {"nHbRdoTK": "KeuSjfZe"}, "notifyUrl": "9i1osghF", "omitNotification": false, "platform": "zi1Nl47s", "price": 48, "recurringPaymentOrderNo": "J5ibzSHZ", "region": "eCLIvWPV", "returnUrl": "RsdEqA61", "sandbox": true, "sku": "TrMgsycT", "subscriptionId": "gmPzc20E", "targetNamespace": "uO5dMqGD", "targetUserId": "lSZPY07r", "title": "EVSjzHjL"}' \
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
    --body '{"extTxId": "e7cR7q6P", "paymentMethod": "WhZmmKz4", "paymentProvider": "ADYEN"}' \
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
    --body '{"amount": 3, "currencyCode": "B98PuSGy", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 63, "vat": 51}' \
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
    --body '{"allowedBalanceOrigins": ["Nintendo"]}' \
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
    --itemType 'APP' \
    --limit '94' \
    --offset '55' \
    --sortBy '["updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'csckMekR' \
    --updatedAtStart 'OWZ2KUTq' \
    > test.out 2>&1
eval_tap $? 142 'QueryChanges' test.out

#- 143 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace 'kK2eFaGL' \
    --storeId 'oSmEEPbL' \
    > test.out 2>&1
eval_tap $? 143 'PublishAll' test.out

#- 144 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace 'ywJsyUie' \
    --storeId '6fZgLllU' \
    --targetStoreId 'PsO8lg46' \
    > test.out 2>&1
eval_tap $? 144 'CloneStore' test.out

#- 145 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'Si7006vL' \
    --storeId '2w4aajDA' \
    > test.out 2>&1
eval_tap $? 145 'ExportStore' test.out

#- 146 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'Ox0iJjYl' \
    --chargeStatus 'CHARGED' \
    --itemId 'aktqv2Wk' \
    --limit '22' \
    --offset '18' \
    --sku 'QuD5mnJO' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId '8mB7mF2l' \
    > test.out 2>&1
eval_tap $? 146 'QuerySubscriptions' test.out

#- 147 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'MFcaghFX' \
    --subscriptionId 'JIJflRHF' \
    > test.out 2>&1
eval_tap $? 147 'RecurringChargeSubscription' test.out

#- 148 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'csIqCy4x' \
    --namespace 'DifSSQ5O' \
    > test.out 2>&1
eval_tap $? 148 'GetTicketDynamic' test.out

#- 149 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "n2ccEcl3"}' \
    --boothName 'xeiO4bwF' \
    --namespace '5JOjGoGx' \
    > test.out 2>&1
eval_tap $? 149 'DecreaseTicketSale' test.out

#- 150 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'KM3qMce5' \
    --namespace 'tfLcpjFZ' \
    > test.out 2>&1
eval_tap $? 150 'GetTicketBoothID' test.out

#- 151 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 76, "orderNo": "KCbp0pEb"}' \
    --boothName 'LCLFpHxM' \
    --namespace 'YF836075' \
    > test.out 2>&1
eval_tap $? 151 'IncreaseTicketSale' test.out

#- 152 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'xEpzdnYt' \
    --userId 'pja5ig2i' \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeCampaign' test.out

#- 153 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'sQZga6Vy' \
    --userId '76izPiQR' \
    > test.out 2>&1
eval_tap $? 153 'AnonymizeEntitlement' test.out

#- 154 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'jYa8fv5f' \
    --userId 'It22tIZh' \
    > test.out 2>&1
eval_tap $? 154 'AnonymizeFulfillment' test.out

#- 155 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'jhgkigW2' \
    --userId '2zXMWXfb' \
    > test.out 2>&1
eval_tap $? 155 'AnonymizeIntegration' test.out

#- 156 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'cM0GIALI' \
    --userId 'bFCQgBcL' \
    > test.out 2>&1
eval_tap $? 156 'AnonymizeOrder' test.out

#- 157 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'NT6iOQVY' \
    --userId 'x5rW2gMs' \
    > test.out 2>&1
eval_tap $? 157 'AnonymizePayment' test.out

#- 158 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'I1aYBitS' \
    --userId 'n3UDeKj9' \
    > test.out 2>&1
eval_tap $? 158 'AnonymizeSubscription' test.out

#- 159 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace '7I4WYXLq' \
    --userId 'jN7ktOBT' \
    > test.out 2>&1
eval_tap $? 159 'AnonymizeWallet' test.out

#- 160 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 'raBxWRTV' \
    --userId 'uYEqGlKD' \
    --activeOnly 'True' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'XiQcd9IW' \
    --itemId '["8kiCKeQJ"]' \
    --limit '96' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 160 'QueryUserEntitlements' test.out

#- 161 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1981-01-21T00:00:00Z", "grantedCode": "q1ETvWBx", "itemId": "YZJh7B8g", "itemNamespace": "bnSu9M2O", "language": "dUD", "quantity": 30, "region": "CXYSMiy8", "source": "GIFT", "startDate": "1993-05-08T00:00:00Z", "storeId": "EQBg36my"}]' \
    --namespace '3sY2clrD' \
    --userId 'cain0cOV' \
    > test.out 2>&1
eval_tap $? 161 'GrantUserEntitlement' test.out

#- 162 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'F1zHwDTI' \
    --userId '0sJ1Q0kp' \
    --activeOnly 'False' \
    --appId 'MTggSP2S' \
    > test.out 2>&1
eval_tap $? 162 'GetUserAppEntitlementByAppId' test.out

#- 163 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'LcuAP7vU' \
    --userId '971Czw2n' \
    --activeOnly 'False' \
    --limit '13' \
    --offset '56' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 163 'QueryUserEntitlementsByAppType' test.out

#- 164 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'ywhu6MjO' \
    --userId 'juGzo1Fz' \
    --activeOnly 'True' \
    --entitlementClazz 'APP' \
    --itemId 'Sn98N8qO' \
    > test.out 2>&1
eval_tap $? 164 'GetUserEntitlementByItemId' test.out

#- 165 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'UA0z92Ra' \
    --userId 'De8ngT8L' \
    --activeOnly 'False' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'nG1LZyF2' \
    > test.out 2>&1
eval_tap $? 165 'GetUserEntitlementBySku' test.out

#- 166 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'mdYY6ZMf' \
    --userId 'uTYTKsue' \
    --appIds '["48qBEBNA"]' \
    --itemIds '["V5BTe6ec"]' \
    --skus '["1zA92URC"]' \
    > test.out 2>&1
eval_tap $? 166 'ExistsAnyUserActiveEntitlement' test.out

#- 167 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'LSGPmRBZ' \
    --userId 'WunHW7MY' \
    --itemIds '["vr6QA7Pp"]' \
    > test.out 2>&1
eval_tap $? 167 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 168 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'epc92HA9' \
    --userId '4eACdeyf' \
    --appId 'UpgiPpf8' \
    > test.out 2>&1
eval_tap $? 168 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 169 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'nxKJ3dnm' \
    --userId 'tPwa64Y4' \
    --entitlementClazz 'APP' \
    --itemId 'PEKMhhu9' \
    > test.out 2>&1
eval_tap $? 169 'GetUserEntitlementOwnershipByItemId' test.out

#- 170 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'a6f3xJNt' \
    --userId 'UlKLlIIA' \
    --entitlementClazz 'APP' \
    --sku 'Hbm5M6Ls' \
    > test.out 2>&1
eval_tap $? 170 'GetUserEntitlementOwnershipBySku' test.out

#- 171 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'Y1VMuIEc' \
    --userId 'Rls68M3M' \
    --entitlementIds 'PMRPBepy' \
    > test.out 2>&1
eval_tap $? 171 'RevokeUserEntitlements' test.out

#- 172 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'yMz6zfR1' \
    --namespace 'pvTYYtDO' \
    --userId 'iEi4RuEc' \
    > test.out 2>&1
eval_tap $? 172 'GetUserEntitlement' test.out

#- 173 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1987-08-15T00:00:00Z", "nullFieldList": ["SGhpOZQF"], "startDate": "1976-07-01T00:00:00Z", "status": "INACTIVE", "useCount": 40}' \
    --entitlementId 'KGDFgK49' \
    --namespace 'YuKnXks0' \
    --userId 'm8ANrcRa' \
    > test.out 2>&1
eval_tap $? 173 'UpdateUserEntitlement' test.out

#- 174 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 22}' \
    --entitlementId '7ta3fojA' \
    --namespace '3h4MMW3A' \
    --userId 'J5zlsFBw' \
    > test.out 2>&1
eval_tap $? 174 'ConsumeUserEntitlement' test.out

#- 175 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'jvLYvmg6' \
    --namespace 'avudQFF1' \
    --userId 'CPNY9u2d' \
    > test.out 2>&1
eval_tap $? 175 'DisableUserEntitlement' test.out

#- 176 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'VYdglOOo' \
    --namespace 'CeK0kPKm' \
    --userId 'BqVux3lX' \
    > test.out 2>&1
eval_tap $? 176 'EnableUserEntitlement' test.out

#- 177 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'cD8aertA' \
    --namespace 'VCqs8XT8' \
    --userId 'xy3nJ06K' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementHistories' test.out

#- 178 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'kseA0ARj' \
    --namespace '9ricfayv' \
    --userId 'nhi8MDdY' \
    > test.out 2>&1
eval_tap $? 178 'RevokeUserEntitlement' test.out

#- 179 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 97, "endDate": "1989-09-25T00:00:00Z", "itemId": "oaUkYnQp", "itemSku": "5egdmVE8", "language": "ImivNtQx", "order": {"currency": {"currencyCode": "qWRKHohO", "currencySymbol": "DoWOr98k", "currencyType": "REAL", "decimals": 55, "namespace": "Uas9jjz2"}, "ext": {"FrgiaGrc": {}}, "free": true}, "orderNo": "7dIOVKIP", "origin": "Nintendo", "quantity": 71, "region": "Ho5W8tKH", "source": "ACHIEVEMENT", "startDate": "1981-12-21T00:00:00Z", "storeId": "dbxSXcrE"}' \
    --namespace 'FCwqeGNL' \
    --userId 'dIBRdliF' \
    > test.out 2>&1
eval_tap $? 179 'FulfillItem' test.out

#- 180 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "QVMKEzVU", "language": "uw-equO", "region": "pEvcjaSg"}' \
    --namespace 'Eh6jJnFx' \
    --userId 'inIHJ1o7' \
    > test.out 2>&1
eval_tap $? 180 'RedeemCode' test.out

#- 181 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "q5Zznd5e", "namespace": "acobTsuR"}, "item": {"itemId": "lhreQVFI", "itemSku": "D3o8hJWV", "itemType": "jKIOAw70"}, "quantity": 59, "type": "CURRENCY"}], "source": "REWARD"}' \
    --namespace 'HhSGWUvz' \
    --userId 'q1Za3IBC' \
    > test.out 2>&1
eval_tap $? 181 'FulfillRewards' test.out

#- 182 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace '4vQFsUJP' \
    --userId 'fiaJp1rt' \
    --endTime '7OBgBCe6' \
    --limit '78' \
    --offset '9' \
    --productId 'I65Mn5tn' \
    --startTime 'gEYXgPVT' \
    --status 'FULFILLED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserIAPOrders' test.out

#- 183 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'XDZBVMJy' \
    --userId 'JeKFO92Y' \
    > test.out 2>&1
eval_tap $? 183 'QueryAllUserIAPOrders' test.out

#- 184 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "AzV-zU", "productId": "O4N9S2YC", "region": "gHa6XBcv", "type": "PLAYSTATION"}' \
    --namespace '5rUtWHCn' \
    --userId 'hmzzppV7' \
    > test.out 2>&1
eval_tap $? 184 'MockFulfillIAPItem' test.out

#- 185 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'tKNKYUQV' \
    --userId 'BXymWcNl' \
    --itemId 'HaFxYaGH' \
    --limit '93' \
    --offset '31' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserOrders' test.out

#- 186 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --body '{"currencyCode": "BFyOrFKt", "discountedPrice": 46, "ext": {"GNAi0fq4": {}}, "itemId": "xChPLd2l", "language": "Oopc7XoV", "platform": "Epic", "price": 7, "quantity": 7, "region": "6rCpyMrn", "returnUrl": "H9YHXh7K", "sandbox": false}' \
    --namespace 'CVOKY2zs' \
    --userId 'BRGtd8QY' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateUserOrder' test.out

#- 187 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace '2OLbijrv' \
    --userId 'fr8hknjW' \
    --itemId 'UWdMUXHv' \
    > test.out 2>&1
eval_tap $? 187 'CountOfPurchasedItem' test.out

#- 188 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'w4pNlGLj' \
    --orderNo 'dBxLM079' \
    --userId 'pDAbTgms' \
    > test.out 2>&1
eval_tap $? 188 'GetUserOrder' test.out

#- 189 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "REFUNDED", "statusReason": "YEq2GkYK"}' \
    --namespace '1vYm9flX' \
    --orderNo 'Q7CQoemn' \
    --userId 'QG0dH0NV' \
    > test.out 2>&1
eval_tap $? 189 'UpdateUserOrderStatus' test.out

#- 190 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'M9VEHTPq' \
    --orderNo 'Dhkcu5vn' \
    --userId 'z6GiNMbo' \
    > test.out 2>&1
eval_tap $? 190 'FulfillUserOrder' test.out

#- 191 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace 'BJHml0LJ' \
    --orderNo 'mpPi4mqh' \
    --userId 'ruiCZLGG' \
    > test.out 2>&1
eval_tap $? 191 'GetUserOrderGrant' test.out

#- 192 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'P5UXkHNT' \
    --orderNo 'Mapp5Sbo' \
    --userId 'nsUJKADr' \
    > test.out 2>&1
eval_tap $? 192 'GetUserOrderHistories' test.out

#- 193 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "60EkdFrp"}, "authorisedTime": "1989-05-27T00:00:00Z", "chargebackReversedTime": "1987-06-05T00:00:00Z", "chargebackTime": "1983-12-17T00:00:00Z", "chargedTime": "1985-12-04T00:00:00Z", "createdTime": "1972-11-08T00:00:00Z", "currency": {"currencyCode": "sHN7reI2", "currencySymbol": "2ks7I12t", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "8sxxLx9X"}, "customParameters": {"QeqNWLm8": {}}, "extOrderNo": "cNJbYH5J", "extTxId": "4WiJLv9N", "extUserId": "vHwtw2Mj", "issuedAt": "1972-07-12T00:00:00Z", "metadata": {"9ZL6Zs5B": "u2XYopLW"}, "namespace": "ZeUKJJNf", "nonceStr": "tRpGgk1i", "paymentMethod": "seREzzRG", "paymentMethodFee": 51, "paymentOrderNo": "9wmuHddy", "paymentProvider": "WALLET", "paymentProviderFee": 16, "paymentStationUrl": "bI1LVyqb", "price": 7, "refundedTime": "1996-08-18T00:00:00Z", "salesTax": 65, "sandbox": true, "sku": "uoIKz3Pp", "status": "REQUEST_FOR_INFORMATION", "statusReason": "LWUxMzMt", "subscriptionId": "SmMmZP8n", "subtotalPrice": 64, "targetNamespace": "0FoQP8q7", "targetUserId": "aSsb85gA", "tax": 15, "totalPrice": 86, "totalTax": 58, "txEndTime": "1998-07-18T00:00:00Z", "type": "N6N1iJ8l", "userId": "tt9IRqCf", "vat": 23}' \
    --namespace 'gln6r5f0' \
    --orderNo 's5H6lCf3' \
    --userId 'QHa11hLL' \
    > test.out 2>&1
eval_tap $? 193 'ProcessUserOrderNotification' test.out

#- 194 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'Cgw5av4L' \
    --orderNo 'ExdabD8g' \
    --userId '2cvHfMRu' \
    > test.out 2>&1
eval_tap $? 194 'DownloadUserOrderReceipt' test.out

#- 195 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "pDA5xbjs", "currencyNamespace": "3XRdHUJ0", "customParameters": {"GCmflIXk": {}}, "description": "gJ6zkTwo", "extOrderNo": "akq7sEej", "extUserId": "FZ1NtONX", "itemType": "APP", "language": "HSq-FRLZ", "metadata": {"Qdd58dZP": "5RvrinNt"}, "notifyUrl": "vBtqFSkA", "omitNotification": false, "platform": "IVYJ5pSV", "price": 46, "recurringPaymentOrderNo": "BsLhty3p", "region": "ecToXA4M", "returnUrl": "1oUFPhgo", "sandbox": false, "sku": "wNC4FY69", "subscriptionId": "mM87joJN", "title": "OGB83Ns6"}' \
    --namespace 'Hl5Poab6' \
    --userId 'lKoVqNBU' \
    > test.out 2>&1
eval_tap $? 195 'CreateUserPaymentOrder' test.out

#- 196 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "zIxOfglq"}' \
    --namespace 'uS2q2DoW' \
    --paymentOrderNo 'r9zvFtKa' \
    --userId '2mOAqOok' \
    > test.out 2>&1
eval_tap $? 196 'RefundUserPaymentOrder' test.out

#- 197 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "V1plxQ2Y", "orderNo": "riTPfipD"}' \
    --namespace '67jI2hiZ' \
    --userId 'krtLnh2U' \
    > test.out 2>&1
eval_tap $? 197 'ApplyUserRedemption' test.out

#- 198 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace '1RQlMxkf' \
    --userId 'NMPNtqv2' \
    --chargeStatus 'SETUP' \
    --itemId 'z1b7Snzk' \
    --limit '99' \
    --offset '81' \
    --sku 'ek83Igm1' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserSubscriptions' test.out

#- 199 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'SWsYvAsu' \
    --userId '18obUdc8' \
    --excludeSystem 'False' \
    --limit '2' \
    --offset '43' \
    --subscriptionId 'XcwcgMqO' \
    > test.out 2>&1
eval_tap $? 199 'GetUserSubscriptionActivities' test.out

#- 200 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 98, "itemId": "MziXrVds", "language": "Ec3ClFP3", "reason": "mJwusCBT", "region": "e4kLcuqL", "source": "40NYgekR"}' \
    --namespace 'avpaGTA9' \
    --userId 'BTyCCyN4' \
    > test.out 2>&1
eval_tap $? 200 'PlatformSubscribeSubscription' test.out

#- 201 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'Fw9i6mI2' \
    --userId 'W3tjjCqP' \
    --itemId 'VyYs01hE' \
    > test.out 2>&1
eval_tap $? 201 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 202 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'YzWw3qrc' \
    --subscriptionId 'xM0DPAXQ' \
    --userId 'BNMP7j3x' \
    > test.out 2>&1
eval_tap $? 202 'GetUserSubscription' test.out

#- 203 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'fPaoZaWF' \
    --subscriptionId 'spkU5kn6' \
    --userId 'PlPqD4Ag' \
    > test.out 2>&1
eval_tap $? 203 'DeleteUserSubscription' test.out

#- 204 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "asBfclBh"}' \
    --namespace 'ZjZbLnmg' \
    --subscriptionId 'hKwPyVIn' \
    --userId '3qaHP7KN' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 204 'CancelSubscription' test.out

#- 205 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 23, "reason": "yfrENVQk"}' \
    --namespace 'pcaWHf6T' \
    --subscriptionId '2xOOljn7' \
    --userId 'c6c9efJI' \
    > test.out 2>&1
eval_tap $? 205 'GrantDaysToSubscription' test.out

#- 206 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace '02TZxrgL' \
    --subscriptionId 'BFJEkphF' \
    --userId 'z0h6WpoV' \
    --excludeFree 'False' \
    --limit '95' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 206 'GetUserSubscriptionBillingHistories' test.out

#- 207 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "2HBBmj6c"}, "authorisedTime": "1986-03-09T00:00:00Z", "chargebackReversedTime": "1997-02-22T00:00:00Z", "chargebackTime": "1995-03-30T00:00:00Z", "chargedTime": "1999-06-08T00:00:00Z", "createdTime": "1971-08-18T00:00:00Z", "currency": {"currencyCode": "Rfy4GjKn", "currencySymbol": "5ItHXLDZ", "currencyType": "VIRTUAL", "decimals": 31, "namespace": "RhqnR742"}, "customParameters": {"GcbLuQOG": {}}, "extOrderNo": "MOEzmdjN", "extTxId": "hT0S46kq", "extUserId": "yfMBSaZc", "issuedAt": "1999-12-19T00:00:00Z", "metadata": {"A16M8gQC": "D7aBHWCY"}, "namespace": "evNkfcQv", "nonceStr": "l4Oso7tx", "paymentMethod": "65zXCiTf", "paymentMethodFee": 18, "paymentOrderNo": "orLFqTmI", "paymentProvider": "PAYPAL", "paymentProviderFee": 92, "paymentStationUrl": "oonHBI13", "price": 89, "refundedTime": "1996-09-03T00:00:00Z", "salesTax": 66, "sandbox": false, "sku": "m0F8vS2B", "status": "CHARGE_FAILED", "statusReason": "Z3nq88YS", "subscriptionId": "SD7zV0C8", "subtotalPrice": 62, "targetNamespace": "vVU3kRXB", "targetUserId": "GPXIdft1", "tax": 3, "totalPrice": 17, "totalTax": 67, "txEndTime": "1981-03-03T00:00:00Z", "type": "WyFPHdXc", "userId": "yvZEhYeU", "vat": 88}' \
    --namespace 'y5Ukc65n' \
    --subscriptionId 'aP11R8Xw' \
    --userId 'w9vq9nMa' \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserSubscriptionNotification' test.out

#- 208 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 54, "orderNo": "tgwyuf2f"}' \
    --boothName 'jV30SLxi' \
    --namespace '7uyhaeFt' \
    --userId 'cO9XNy63' \
    > test.out 2>&1
eval_tap $? 208 'AcquireUserTicket' test.out

#- 209 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace 'QO9vW0ck' \
    --userId '7TEDE8Le' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserCurrencyWallets' test.out

#- 210 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'EQBeGPLi' \
    --namespace 'E6tHCr0G' \
    --userId 'PFvT0SAK' \
    --limit '48' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 210 'ListUserCurrencyTransactions' test.out

#- 211 CheckWallet
eval_tap 0 211 'CheckWallet # SKIP deprecated' test.out

#- 212 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 57, "expireAt": "1973-08-07T00:00:00Z", "origin": "Nintendo", "reason": "Jq0B9UcI", "source": "PURCHASE"}' \
    --currencyCode '5cre9eal' \
    --namespace 'HOZphcLn' \
    --userId 'cnjnmyU8' \
    > test.out 2>&1
eval_tap $? 212 'CreditUserWallet' test.out

#- 213 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 63, "walletPlatform": "GooglePlay"}' \
    --currencyCode 'XdCrskoF' \
    --namespace 'qnowq9La' \
    --userId 'z1GLt5Mh' \
    > test.out 2>&1
eval_tap $? 213 'PayWithUserWallet' test.out

#- 214 GetUserWallet
eval_tap 0 214 'GetUserWallet # SKIP deprecated' test.out

#- 215 DebitUserWallet
eval_tap 0 215 'DebitUserWallet # SKIP deprecated' test.out

#- 216 DisableUserWallet
eval_tap 0 216 'DisableUserWallet # SKIP deprecated' test.out

#- 217 EnableUserWallet
eval_tap 0 217 'EnableUserWallet # SKIP deprecated' test.out

#- 218 ListUserWalletTransactions
eval_tap 0 218 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 219 QueryWallets
eval_tap 0 219 'QueryWallets # SKIP deprecated' test.out

#- 220 GetWallet
eval_tap 0 220 'GetWallet # SKIP deprecated' test.out

#- 221 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'f8Z7ahmb' \
    --end 'VPm2g7xA' \
    --start 'FfRRLUjf' \
    > test.out 2>&1
eval_tap $? 221 'SyncOrders' test.out

#- 222 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["WS9sftIf"], "apiKey": "HGe5bUTS", "authoriseAsCapture": true, "blockedPaymentMethods": ["12PMcRO6"], "clientKey": "E2Mkre5q", "dropInSettings": "7FvaACp6", "liveEndpointUrlPrefix": "he0fzjkP", "merchantAccount": "NNS0BfgF", "notificationHmacKey": "6inIRsZ5", "notificationPassword": "hrqNzVsz", "notificationUsername": "GVP5P1iw", "returnUrl": "hcf30C1K", "settings": "HRZHMGy5"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 222 'TestAdyenConfig' test.out

#- 223 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "bfZvYIFF", "privateKey": "ctEKOLxS", "publicKey": "Rxe0wmWB", "returnUrl": "McNiWoob"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 223 'TestAliPayConfig' test.out

#- 224 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "6o6alTQc", "secretKey": "P0EpE9wG"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 224 'TestCheckoutConfig' test.out

#- 225 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'kgfJJ2HI' \
    --region 'alfzgRpT' \
    > test.out 2>&1
eval_tap $? 225 'DebugMatchedPaymentMerchantConfig' test.out

#- 226 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "f9lxF1JP", "clientSecret": "BizXZtrG", "returnUrl": "e8LyOH24", "webHookId": "nneZHFeR"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 226 'TestPayPalConfig' test.out

#- 227 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["d0bGA7Jx"], "publishableKey": "WYzaEaim", "secretKey": "vokcWX59", "webhookSecret": "kwiYHgHT"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 227 'TestStripeConfig' test.out

#- 228 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "d0fGpU20", "key": "9nVRclum", "mchid": "QTFvr5rR", "returnUrl": "yYzaNmz3"}' \
    > test.out 2>&1
eval_tap $? 228 'TestWxPayConfig' test.out

#- 229 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "PjMx2T89", "flowCompletionUrl": "NTrFRUCX", "merchantId": 63, "projectId": 20, "projectSecretKey": "ruxegpkc"}' \
    > test.out 2>&1
eval_tap $? 229 'TestXsollaConfig' test.out

#- 230 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'XCfzgcvv' \
    > test.out 2>&1
eval_tap $? 230 'GetPaymentMerchantConfig' test.out

#- 231 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["0WE5EQhc"], "apiKey": "omPS1E7c", "authoriseAsCapture": false, "blockedPaymentMethods": ["sLgr2zEn"], "clientKey": "jyRNjEC3", "dropInSettings": "FMDcZvww", "liveEndpointUrlPrefix": "f8aU98In", "merchantAccount": "31mF4jlw", "notificationHmacKey": "KyGxTF1l", "notificationPassword": "5q1Np0sT", "notificationUsername": "1X8J2eAW", "returnUrl": "Ozjmh9Uz", "settings": "Ifnhoo6x"}' \
    --id 'UmTleUnJ' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 231 'UpdateAdyenConfig' test.out

#- 232 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'oDxGik2J' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 232 'TestAdyenConfigById' test.out

#- 233 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "Z64wWePq", "privateKey": "6103PONK", "publicKey": "IS7F9emW", "returnUrl": "4R15tAsi"}' \
    --id 'G31CEyUO' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 233 'UpdateAliPayConfig' test.out

#- 234 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'mnHkvek6' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 234 'TestAliPayConfigById' test.out

#- 235 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "a5kNnocl", "secretKey": "xs9kxcvI"}' \
    --id 'pV7mCYfW' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 235 'UpdateCheckoutConfig' test.out

#- 236 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'sQYsGyhE' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 236 'TestCheckoutConfigById' test.out

#- 237 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "tEkedM1A", "clientSecret": "0bFqvjxb", "returnUrl": "T3YuVdaB", "webHookId": "N5RSjhcj"}' \
    --id 'uDvNrXL8' \
    --sandbox 'False' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 237 'UpdatePayPalConfig' test.out

#- 238 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'h5tZ0hqJ' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 238 'TestPayPalConfigById' test.out

#- 239 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["QUmoYUnC"], "publishableKey": "849OBNuL", "secretKey": "ZtofGAAa", "webhookSecret": "MpBQArU4"}' \
    --id 'RS0FQRy5' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 239 'UpdateStripeConfig' test.out

#- 240 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'yfBpHjtv' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfigById' test.out

#- 241 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "wKSJyZeq", "key": "vpevcVXT", "mchid": "xs9LTorI", "returnUrl": "yx23LhLy"}' \
    --id '7ds3g3Bu' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 241 'UpdateWxPayConfig' test.out

#- 242 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id '19dBYFws' \
    > test.out 2>&1
eval_tap $? 242 'UpdateWxPayConfigCert' test.out

#- 243 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '5Ya4eOwW' \
    > test.out 2>&1
eval_tap $? 243 'TestWxPayConfigById' test.out

#- 244 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "qW8HiLpT", "flowCompletionUrl": "i1W63Hcc", "merchantId": 13, "projectId": 77, "projectSecretKey": "5kYu36Jp"}' \
    --id 'TL55W4ws' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 244 'UpdateXsollaConfig' test.out

#- 245 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'yplY1ocK' \
    > test.out 2>&1
eval_tap $? 245 'TestXsollaConfigById' test.out

#- 246 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    --id 'qrVeegT3' \
    > test.out 2>&1
eval_tap $? 246 'UpdateXsollaUIConfig' test.out

#- 247 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '40' \
    --namespace 'GDIIcvuu' \
    --offset '28' \
    --region 'kt8TC38m' \
    > test.out 2>&1
eval_tap $? 247 'QueryPaymentProviderConfig' test.out

#- 248 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "UanQT4Mm", "region": "znv7r2jt", "sandboxTaxJarApiToken": "hibgeCLX", "specials": ["CHECKOUT"], "taxJarApiToken": "yOiLgd8W", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 248 'CreatePaymentProviderConfig' test.out

#- 249 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 249 'GetAggregatePaymentProviders' test.out

#- 250 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'w0TEzpd7' \
    --region 'TV5vhMM2' \
    > test.out 2>&1
eval_tap $? 250 'DebugMatchedPaymentProviderConfig' test.out

#- 251 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 251 'GetSpecialPaymentProviders' test.out

#- 252 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "3DM6etfI", "region": "7TzC3sKm", "sandboxTaxJarApiToken": "tsyEKdO6", "specials": ["STRIPE"], "taxJarApiToken": "3zGu71qT", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --id 'WlETp9XO' \
    > test.out 2>&1
eval_tap $? 252 'UpdatePaymentProviderConfig' test.out

#- 253 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'CA1X3HHM' \
    > test.out 2>&1
eval_tap $? 253 'DeletePaymentProviderConfig' test.out

#- 254 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentTaxConfig' test.out

#- 255 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "TlakAWQf", "taxJarApiToken": "BuBAOCjB", "taxJarEnabled": false, "taxJarProductCodesMapping": {"YCcplye2": "GaPNzkrg"}}' \
    > test.out 2>&1
eval_tap $? 255 'UpdatePaymentTaxConfig' test.out

#- 256 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'BH4icml6' \
    --end 'L36Vg2F2' \
    --start 'Q9aZDJg1' \
    > test.out 2>&1
eval_tap $? 256 'SyncPaymentOrders' test.out

#- 257 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'OT8109ot' \
    --language '70TevJgs' \
    --storeId 'b2PyFfJ6' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetRootCategories' test.out

#- 258 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'qcHABdGt' \
    --language 'V9jAPqon' \
    --storeId '7UmLNy9P' \
    > test.out 2>&1
eval_tap $? 258 'DownloadCategories' test.out

#- 259 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'kF9SnlbW' \
    --namespace 'NcAxv8uH' \
    --language 'DqJtYC7r' \
    --storeId 'znwNdLhq' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCategory' test.out

#- 260 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'XvXVnjvc' \
    --namespace '0BMegJpW' \
    --language '1ZeuhpLX' \
    --storeId '1BHZ4hnO' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetChildCategories' test.out

#- 261 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'mmyXu6Xt' \
    --namespace 'jNCqYk9T' \
    --language 'PUKcDTfR' \
    --storeId '7dpUEo2O' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetDescendantCategories' test.out

#- 262 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'e08HpeJB' \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 262 'PublicListCurrencies' test.out

#- 263 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'G0nGZHe5' \
    --language 'lw2TlkPI' \
    --region 'xL9v4fpC' \
    --storeId 'd0Uk5h1k' \
    --appId 'P1pkkT08' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetItemByAppId' test.out

#- 264 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'Cs6DdXZW' \
    --appType 'DLC' \
    --baseAppId 'wBgZizMv' \
    --categoryPath 'wHszf84M' \
    --features 'AmayJJ6v' \
    --itemType 'SEASON' \
    --language 'DTXxsyIa' \
    --limit '90' \
    --offset '12' \
    --region 'p0pwnEJL' \
    --sortBy '["name:desc"]' \
    --storeId 'xO4oVUPn' \
    --tags 'g5JsHAkI' \
    > test.out 2>&1
eval_tap $? 264 'PublicQueryItems' test.out

#- 265 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace '47jO1wuA' \
    --language 'FuZcUwPt' \
    --region 'eKdQgUTF' \
    --storeId '33fYWZfQ' \
    --sku 'MAnziTha' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetItemBySku' test.out

#- 266 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'E2btn0up' \
    --language '9GeTQ7Xy' \
    --region 'mDSQNYXN' \
    --storeId 'EpZyFhIe' \
    --itemIds 'qiNHtVSn' \
    > test.out 2>&1
eval_tap $? 266 'PublicBulkGetItems' test.out

#- 267 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'hxby8F6x' \
    --limit '62' \
    --offset '77' \
    --region 'hbJAYEDN' \
    --storeId '1xszppR6' \
    --keyword '9nsKAS5z' \
    --language 'KsTRXd7b' \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchItems' test.out

#- 268 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '3v2fkZIk' \
    --namespace 'r06ojUto' \
    --language 'VJLGXeko' \
    --region 'mvwD849m' \
    --storeId 'o5vIkDZY' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetApp' test.out

#- 269 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'rYEf1xYn' \
    --namespace 'lxHHXjFo' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetItemDynamicData' test.out

#- 270 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'XtwKW6AO' \
    --namespace 'nqnWCuXM' \
    --language 'WqG8fNpr' \
    --populateBundle 'True' \
    --region '82nAFexN' \
    --storeId 'ou1AicsQ' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetItem' test.out

#- 271 GetPaymentCustomization
eval_tap 0 271 'GetPaymentCustomization # SKIP deprecated' test.out

#- 272 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "jKx5Ljet", "paymentProvider": "PAYPAL", "returnUrl": "w0aCQpU6", "ui": "EGOW0VAI", "zipCode": "87DPH0fL"}' \
    --namespace 'LiUqzay0' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetPaymentUrl' test.out

#- 273 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'gET8T53y' \
    --paymentOrderNo 'Eej7Dsqs' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPaymentMethods' test.out

#- 274 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'TvNKAXqf' \
    --paymentOrderNo 'qMJHGeHa' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUnpaidPaymentOrder' test.out

#- 275 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "N2k1Eutm"}' \
    --namespace '9AAWDcDv' \
    --paymentOrderNo '3ISBgZCA' \
    --paymentProvider 'ALIPAY' \
    --zipCode '2pWOWs4I' \
    > test.out 2>&1
eval_tap $? 275 'Pay' test.out

#- 276 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace '2lOHfiu4' \
    --paymentOrderNo 'HraKYMtg' \
    > test.out 2>&1
eval_tap $? 276 'PublicCheckPaymentOrderPaidStatus' test.out

#- 277 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'BmvCHMtF' \
    --sandbox 'False' \
    --paymentProvider 'ALIPAY' \
    --region 'eywiPE1W' \
    > test.out 2>&1
eval_tap $? 277 'GetPaymentPublicConfig' test.out

#- 278 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'UR1PTFfJ' \
    --code 'J46kzfqa' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetQRCode' test.out

#- 279 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'pbByIKoY' \
    --payerID 'zYtTWJA3' \
    --foreinginvoice 'nFCDgWOp' \
    --invoiceId 'z3yPQfqb' \
    --payload 'eVG7i4VT' \
    --redirectResult 'AhuFYhEg' \
    --resultCode 'QBb9Hni6' \
    --sessionId 'lDMj9gvk' \
    --status 'BcQjQ56R' \
    --token 'uAvUlMWp' \
    --type '8WGpZxCe' \
    --userId '0KsmXtGB' \
    --orderNo 'bKrV58TI' \
    --paymentOrderNo 'ThQ52PYN' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'nBCjirw4' \
    > test.out 2>&1
eval_tap $? 279 'PublicNormalizePaymentReturnUrl' test.out

#- 280 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'hmfMSl2b' \
    --zipCode 'ETuFLFOf' \
    --paymentOrderNo 'dl0yRndb' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxValue' test.out

#- 281 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'bYsHx3BI' \
    --rewardCode 'gGuo817l' \
    > test.out 2>&1
eval_tap $? 281 'GetRewardByCode' test.out

#- 282 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'ZA58OI2L' \
    --eventTopic 'MYRX16nf' \
    --limit '56' \
    --offset '70' \
    --sortBy '["rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 282 'QueryRewards1' test.out

#- 283 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'KRNcdpuC' \
    --rewardId 'xSDFWMVc' \
    > test.out 2>&1
eval_tap $? 283 'GetReward1' test.out

#- 284 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'sOZlS0ul' \
    > test.out 2>&1
eval_tap $? 284 'PublicListStores' test.out

#- 285 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'erU61drw' \
    --appIds '["LngbZxOG"]' \
    --itemIds '["xFwnmB60"]' \
    --skus '["ea7XItZS"]' \
    > test.out 2>&1
eval_tap $? 285 'PublicExistsAnyMyActiveEntitlement' test.out

#- 286 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace '8KIu9T60' \
    --appId '4oPajgyS' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 287 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'hKuLB7pQ' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ZiWVmc8P' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 288 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'VwShVQz7' \
    --entitlementClazz 'MEDIA' \
    --sku 'Y3h2oVVS' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 289 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'cVv3YTBM' \
    --appIds '["4teOpqev"]' \
    --itemIds '["sWvMhihe"]' \
    --skus '["E2KM7Cta"]' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetEntitlementOwnershipToken' test.out

#- 290 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'l5z7hLiO' \
    --namespace 'Yz1jFfu1' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetMyWallet' test.out

#- 291 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 49}' \
    --namespace '1d77D8ZN' \
    --userId 'OfHyenhb' \
    > test.out 2>&1
eval_tap $? 291 'PublicSyncPsnDlcInventory' test.out

#- 292 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "RZ4a9Ujj", "steamId": "jU0EggYL"}' \
    --namespace 'cGiEDZbD' \
    --userId 'l9ZeZH3M' \
    > test.out 2>&1
eval_tap $? 292 'SyncSteamDLC' test.out

#- 293 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "87v0FhdK"}' \
    --namespace 'DEfXRhaO' \
    --userId '0AYSqvcV' \
    > test.out 2>&1
eval_tap $? 293 'SyncXboxDLC' test.out

#- 294 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace '2LqfgCX2' \
    --userId '8Je4kyPQ' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'DJNOEMtd' \
    --itemId '["EtN4sEeb"]' \
    --limit '27' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 294 'PublicQueryUserEntitlements' test.out

#- 295 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'ucgaop5N' \
    --userId 'EdhurScN' \
    --appId 'iUxnJUew' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserAppEntitlementByAppId' test.out

#- 296 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'UVhkGRRT' \
    --userId 'gLCb9evy' \
    --limit '45' \
    --offset '48' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 296 'PublicQueryUserEntitlementsByAppType' test.out

#- 297 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'unLImNhy' \
    --userId 'Zsb7YhhQ' \
    --entitlementClazz 'APP' \
    --itemId 'DxLRKxzU' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserEntitlementByItemId' test.out

#- 298 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'tpKDC8gl' \
    --userId '2otjUWKx' \
    --entitlementClazz 'APP' \
    --sku 'W6n8AJae' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserEntitlementBySku' test.out

#- 299 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'qxTPgZKF' \
    --userId 'i3SBGlCD' \
    --appIds '["4ig5ZRoJ"]' \
    --itemIds '["d1as1Wkf"]' \
    --skus '["h3l8HyGW"]' \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyUserActiveEntitlement' test.out

#- 300 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'ZTdpmTxP' \
    --userId 'UBFjTIIK' \
    --appId 'cXlxPfdD' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'yjJ0wwrY' \
    --userId 'eljMyoeb' \
    --entitlementClazz 'APP' \
    --itemId 'sMOMdqbt' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 302 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace '4PnuFr18' \
    --userId 'ijp3Cmzr' \
    --entitlementClazz 'APP' \
    --sku 'VIa1vi9o' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 303 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ky2P7fIg' \
    --namespace 'BRSBlxuk' \
    --userId 'oOTCosjA' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserEntitlement' test.out

#- 304 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 98}' \
    --entitlementId 'o6ljBVW8' \
    --namespace 'r7nyNcVl' \
    --userId '6ZB3bGHu' \
    > test.out 2>&1
eval_tap $? 304 'PublicConsumeUserEntitlement' test.out

#- 305 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "pBuAL2av", "language": "oJWg_oR", "region": "eTsviZmg"}' \
    --namespace 'm0l8Yr4w' \
    --userId 'mgiwIF5Z' \
    > test.out 2>&1
eval_tap $? 305 'PublicRedeemCode' test.out

#- 306 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": true, "language": "iiHb-rQYv_VM", "productId": "OiIFEdQ2", "receiptData": "RKeQy2WR", "region": "ztR5qztu", "transactionId": "hVaJDWx2"}' \
    --namespace 'OdrUV7bh' \
    --userId 'cKGIOZcB' \
    > test.out 2>&1
eval_tap $? 306 'PublicFulfillAppleIAPItem' test.out

#- 307 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "6NWffXkY"}' \
    --namespace 'zes2xHp1' \
    --userId 'ufZNxhbs' \
    > test.out 2>&1
eval_tap $? 307 'SyncEpicGamesInventory' test.out

#- 308 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": false, "language": "fTtM", "orderId": "2hFQRmsi", "packageName": "02melJQk", "productId": "LtV2QnPs", "purchaseTime": 24, "purchaseToken": "hFVPtJTG", "region": "ig12OdDn"}' \
    --namespace 'xXuJoZgO' \
    --userId 'G4tOeWVM' \
    > test.out 2>&1
eval_tap $? 308 'PublicFulfillGoogleIAPItem' test.out

#- 309 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "I9K1eJ6x", "price": 0.4468417976694462, "productId": "h6U8TgR2", "serviceLabel": 21}' \
    --namespace '2RkEr8Xb' \
    --userId 'mQNuv80E' \
    > test.out 2>&1
eval_tap $? 309 'PublicReconcilePlayStationStore' test.out

#- 310 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "m9nuffLG", "language": "wNvb-170", "region": "SCdkfe5e", "stadiaPlayerId": "awFpdHeH"}' \
    --namespace '5p8Zx8jy' \
    --userId '7nxGzOTB' \
    > test.out 2>&1
eval_tap $? 310 'SyncStadiaEntitlement' test.out

#- 311 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "pmmjuEEE", "currencyCode": "yDtwbtA8", "language": "SMM", "price": 0.6260470716925389, "productId": "dFifUk9p", "region": "700jB0p4", "steamId": "HpK8pvuf"}' \
    --namespace 'SxYM0Vku' \
    --userId 'qOKrhvMw' \
    > test.out 2>&1
eval_tap $? 311 'SyncSteamInventory' test.out

#- 312 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "vD04UY8g", "language": "VS-275", "region": "hQIBAbup"}' \
    --namespace '1fpWsO6f' \
    --userId 'W468fWxq' \
    > test.out 2>&1
eval_tap $? 312 'SyncTwitchDropsEntitlement' test.out

#- 313 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "RkJDjfNh", "price": 0.7953310642820162, "productId": "gVm0TCao", "xstsToken": "s4wyjaPP"}' \
    --namespace '6ClekQGm' \
    --userId '25KYmFZx' \
    > test.out 2>&1
eval_tap $? 313 'SyncXboxInventory' test.out

#- 314 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'Qr4xbV63' \
    --userId 'gcdU4vyI' \
    --itemId 'PJeRjCj7' \
    --limit '92' \
    --offset '73' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 314 'PublicQueryUserOrders' test.out

#- 315 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "EmwsQtSf", "discountedPrice": 59, "ext": {"qA4CysEX": {}}, "itemId": "4VOy0n2E", "language": "pb_Ts", "price": 64, "quantity": 51, "region": "ayUaDh3m", "returnUrl": "2eX31qVP"}' \
    --namespace 'H2VHDznf' \
    --userId '57fQ1PY5' \
    > test.out 2>&1
eval_tap $? 315 'PublicCreateUserOrder' test.out

#- 316 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'uDkQ8zpN' \
    --orderNo 'RwycEASh' \
    --userId 'pFLpqAx1' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserOrder' test.out

#- 317 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'N5IGebNu' \
    --orderNo 'vyrghVds' \
    --userId 'SwDc9NJR' \
    > test.out 2>&1
eval_tap $? 317 'PublicCancelUserOrder' test.out

#- 318 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace 'X9ZdaC8s' \
    --orderNo 'ja1J7euc' \
    --userId 'GSSxZJPt' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserOrderHistories' test.out

#- 319 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'o04wTEI8' \
    --orderNo 'isXmyAGW' \
    --userId '2rZ7bYvV' \
    > test.out 2>&1
eval_tap $? 319 'PublicDownloadUserOrderReceipt' test.out

#- 320 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'W26Oaysx' \
    --userId '72rwV3Md' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetPaymentAccounts' test.out

#- 321 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'XNVRDzT2' \
    --namespace 'sBbflg7c' \
    --type 'paypal' \
    --userId '247c1XYY' \
    > test.out 2>&1
eval_tap $? 321 'PublicDeletePaymentAccount' test.out

#- 322 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'Jf18StYu' \
    --userId '6wb2We3Q' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '7RBkqWDP' \
    --limit '61' \
    --offset '82' \
    --sku '4CWnZJjX' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserSubscriptions' test.out

#- 323 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "Uv9owF1m", "itemId": "Qrc03W7o", "language": "DPyz_Pdui-XJ", "region": "q3TfnJ6r", "returnUrl": "yQ4wCg5I", "source": "tn9TYOR2"}' \
    --namespace 'n8qFjjSZ' \
    --userId 'x0FeRdmg' \
    > test.out 2>&1
eval_tap $? 323 'PublicSubscribeSubscription' test.out

#- 324 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'Ota6pcKz' \
    --userId 'SPfek369' \
    --itemId 'fIM1tcxw' \
    > test.out 2>&1
eval_tap $? 324 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 325 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 't2XqPFaI' \
    --subscriptionId 'xBgzRO8G' \
    --userId 'KycdcXuU' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserSubscription' test.out

#- 326 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'LpvuBNRz' \
    --subscriptionId 'UbH0hI7y' \
    --userId 'CEyjKXQP' \
    > test.out 2>&1
eval_tap $? 326 'PublicChangeSubscriptionBillingAccount' test.out

#- 327 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "omAsHMpm"}' \
    --namespace 'Dvt4tkWa' \
    --subscriptionId 'vQ0jo17Q' \
    --userId 'q6AFdE7U' \
    > test.out 2>&1
eval_tap $? 327 'PublicCancelSubscription' test.out

#- 328 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'Rb19BcvW' \
    --subscriptionId 'fPxHPQaU' \
    --userId 'ClyAjfGk' \
    --excludeFree 'True' \
    --limit '59' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserSubscriptionBillingHistories' test.out

#- 329 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'oo09NdZj' \
    --namespace 'Njjtl8XI' \
    --userId 'GZV3GBXI' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetWallet' test.out

#- 330 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'HxWGX4iw' \
    --namespace 'wHLohaKv' \
    --userId 'D9nNeLi2' \
    --limit '38' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 330 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE