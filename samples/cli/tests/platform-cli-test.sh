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

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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
    --body '{"publisherAuthenticationKey": "Tz1ETdsm"}' \
    --namespace 'wzjkkn9o' \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace 'iQl05g7c' \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace 'O3ZMb6Oj' \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --body '{"clientId": "lo6DMNpP", "clientSecret": "2qMrTQ1U", "organizationId": "pjfU6wJh"}' \
    --namespace 'y1jOVkkU' \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'lS79527E' \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace 'Z25Ia8uC' \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "eZFlLtEV"}' \
    --namespace 'pDAEbA82' \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace 'jy74lq0p' \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password 'DE5xRwh5' \
    --namespace 'b45ebpcM' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "7ScSs3UO", "targetItemId": "pAwIp9rR", "targetNamespace": "tn1PcCxd"}' \
    --namespace 'bumeYgOd' \
    --storeId 'EBWRQiW3' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --body '{"appId": "KFfU8icH", "appType": "GAME", "baseAppId": "RB1GyLfL", "boothName": "g4RYuEbg", "categoryPath": "UDEcJyIv", "clazz": "sPwOr0Bm", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"FvfwFjTS": {}}, "features": ["mIEqoLyL"], "images": [{"as": "eUGmomGX", "caption": "9sXTZ0v8", "height": 30, "imageUrl": "qLfc5SwG", "smallImageUrl": "nReUULDX", "width": 85}], "itemIds": ["UIbb5nh6"], "itemQty": {"8ZnyUtRv": 96}, "itemType": "COINS", "listable": true, "localizations": {"SFTtFrOm": {"description": "jkFrFVA8", "localExt": {"t0xF34Xp": {}}, "longDescription": "t6ZlTTic", "title": "0kr2a0nI"}}, "maxCount": 28, "maxCountPerUser": 28, "name": "7UHCJK5s", "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 57, "fixedTrialCycles": 43, "graceDays": 69}, "regionData": {"q3aHVYIl": [{"currencyCode": "ewLRuHY8", "currencyNamespace": "3bGj0HTe", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1995-03-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1972-12-17T00:00:00Z", "discountedPrice": 16, "expireAt": "1972-05-12T00:00:00Z", "price": 5, "purchaseAt": "1980-08-26T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "gY0ax476", "stackable": true, "status": "INACTIVE", "tags": ["4MMO9Tw2"], "targetCurrencyCode": "JH0qhWIw", "targetNamespace": "HWTgzJFR", "thumbnailUrl": "Yw6t1IKZ", "useCount": 74}' \
    --namespace 'O6V4Ode4' \
    --storeId '6QmCidgd' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace 'pP7RTC58' \
    --activeOnly 'False' \
    --storeId 'mUmBziPZ' \
    --appId 'BnpOfkll' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
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
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace 'zxdzxg0U' \
    --activeOnly 'False' \
    --features '["RyHi3u8B"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace 'zVWu1tOm' \
    --activeOnly 'False' \
    --storeId 'UtCgcpvG' \
    --sku 'rEbcZUDE' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace 'xH1tayOG' \
    --activeOnly 'True' \
    --language 'MRjMCtOJ' \
    --populateBundle 'True' \
    --region 'Eijlrbpy' \
    --storeId 'yEcQxVgJ' \
    --sku 'IjMZqcWf' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace 'Ml6dqrpD' \
    --activeOnly 'True' \
    --storeId 'nc3ZRB3I' \
    --sku 'kdtPfAJE' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace 'omwenJvQ' \
    --sku '["8grtQSv6"]' \
    --storeId 'EcALcMIP' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace 'ms5bT51M' \
    --activeOnly 'True' \
    --language 'ko8S0EnG' \
    --region 'LvGvfuSy' \
    --storeId 'CTyjj4mC' \
    --itemIds 'aiuMGKOF' \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace '5GJJooSX' \
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
    --sortBy '4z12EaQ1' \
    --storeId 'rUQYCNTi' \
    > test.out 2>&1
eval_tap $? 85 'QueryUncategorizedItems' test.out

#- 86 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'DX4jE3M2' \
    --namespace 'IsTHu8Qw' \
    --activeOnly 'True' \
    --storeId 'OlXfIWd0' \
    > test.out 2>&1
eval_tap $? 86 'GetItem' test.out

#- 87 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --body '{"appId": "mcq5T4SU", "appType": "GAME", "baseAppId": "7cWfCKK6", "boothName": "Dij1gFce", "categoryPath": "nEMySPfh", "clazz": "xBenDiTi", "displayOrder": 52, "entitlementType": "CONSUMABLE", "ext": {"FYmFKjaE": {}}, "features": ["Lmmll6oe"], "images": [{"as": "xId1OKGU", "caption": "N2Uznd7u", "height": 94, "imageUrl": "a7t14yvS", "smallImageUrl": "YSV52bHi", "width": 11}], "itemIds": ["CIf4tsuu"], "itemQty": {"6Pkam6tF": 89}, "itemType": "MEDIA", "listable": true, "localizations": {"4ZxA2PzZ": {"description": "FRkBNlg6", "localExt": {"hn5qusKy": {}}, "longDescription": "ZAuV6uUv", "title": "qM0lV6UZ"}}, "maxCount": 77, "maxCountPerUser": 22, "name": "EbxHNgJR", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 1, "graceDays": 40}, "regionData": {"njdAqnHU": [{"currencyCode": "z44tx4O6", "currencyNamespace": "hamPwNoi", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-10-13T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1986-09-28T00:00:00Z", "discountedPrice": 65, "expireAt": "1973-10-04T00:00:00Z", "price": 76, "purchaseAt": "1994-08-11T00:00:00Z", "trialPrice": 74}]}, "seasonType": "PASS", "sku": "N0DsaD5F", "stackable": true, "status": "INACTIVE", "tags": ["sFe9OYEJ"], "targetCurrencyCode": "VsYffmhy", "targetNamespace": "x6J25PrM", "thumbnailUrl": "4S3cB8m1", "useCount": 15}' \
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
    --sortBy 'KgoCBqS5' \
    > test.out 2>&1
eval_tap $? 125 'QueryRewards' test.out

#- 126 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace 'uIdCbwCe' \
    > test.out 2>&1
eval_tap $? 126 'ExportRewards' test.out

#- 127 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'eq9ouEdD' \
    --replaceExisting 'True' \
    > test.out 2>&1
eval_tap $? 127 'ImportRewards' test.out

#- 128 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace 'jOgsypLk' \
    --rewardId 'm2ZYew5H' \
    > test.out 2>&1
eval_tap $? 128 'GetReward' test.out

#- 129 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "7Zm0gnYy", "eventTopic": "j6MXf9G1", "maxAwarded": 26, "maxAwardedPerUser": 39, "namespaceExpression": "yebvoeHe", "rewardCode": "nAALKt7E", "rewardConditions": [{"condition": "fxIH446o", "conditionName": "UnP2S74u", "eventName": "nXwg0JKq", "rewardItems": [{"duration": 94, "itemId": "WW1rjK1e", "quantity": 31}]}], "userIdExpression": "wkAvcsYv"}' \
    --namespace 'bgfBVPpT' \
    --rewardId 'a8Yuq7TK' \
    > test.out 2>&1
eval_tap $? 129 'UpdateReward' test.out

#- 130 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'iNXmz7eM' \
    --rewardId 'rMD5TbaU' \
    > test.out 2>&1
eval_tap $? 130 'DeleteReward' test.out

#- 131 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"xTCTng0x": {}}}' \
    --namespace 'jtdBrjs3' \
    --rewardId 'Kiykt2Ck' \
    > test.out 2>&1
eval_tap $? 131 'CheckEventCondition' test.out

#- 132 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace '2gOlSatE' \
    > test.out 2>&1
eval_tap $? 132 'ListStores' test.out

#- 133 CreateStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "CZ2UgwQL", "defaultRegion": "qDqYSxTP", "description": "uVlBqird", "supportedLanguages": ["p3yxnsET"], "supportedRegions": ["l1SvhQud"], "title": "sjIhXdxi"}' \
    --namespace 'SoWpnnxg' \
    > test.out 2>&1
eval_tap $? 133 'CreateStore' test.out

#- 134 ImportStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'X7BCPMqz' \
    --storeId 'QIxibhpN' \
    > test.out 2>&1
eval_tap $? 134 'ImportStore' test.out

#- 135 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'YsHtdB3I' \
    > test.out 2>&1
eval_tap $? 135 'GetPublishedStore' test.out

#- 136 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'kjuaZqhJ' \
    > test.out 2>&1
eval_tap $? 136 'DeletePublishedStore' test.out

#- 137 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'ilrZkSSK' \
    > test.out 2>&1
eval_tap $? 137 'GetPublishedStoreBackup' test.out

#- 138 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'gP5rxCR7' \
    > test.out 2>&1
eval_tap $? 138 'RollbackPublishedStore' test.out

#- 139 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace '7G9d5CA1' \
    --storeId 'GORSbL9n' \
    > test.out 2>&1
eval_tap $? 139 'GetStore' test.out

#- 140 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "0dbWDEup", "defaultRegion": "mdLQzPnN", "description": "fBAcWArb", "supportedLanguages": ["kCfdHIZb"], "supportedRegions": ["03otqmBu"], "title": "S9V2pCZ2"}' \
    --namespace '3UHmk0lp' \
    --storeId 'J4JLl01q' \
    > test.out 2>&1
eval_tap $? 140 'UpdateStore' test.out

#- 141 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'i7L2oDUo' \
    --storeId 'VRUb39j2' \
    > test.out 2>&1
eval_tap $? 141 'DeleteStore' test.out

#- 142 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace '2P4Sp09c' \
    --storeId 'KmjRUbZV' \
    --action 'DELETE' \
    --itemType 'INGAMEITEM' \
    --limit '6' \
    --offset '4' \
    --sortBy 'sckMekRO' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'K2eFaGLo' \
    --updatedAtStart 'SmEEPbLy' \
    > test.out 2>&1
eval_tap $? 142 'QueryChanges' test.out

#- 143 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace 'wJsyUie6' \
    --storeId 'fZgLllUP' \
    > test.out 2>&1
eval_tap $? 143 'PublishAll' test.out

#- 144 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace 'sO8lg46S' \
    --storeId 'i7006vL2' \
    --targetStoreId 'w4aajDAO' \
    > test.out 2>&1
eval_tap $? 144 'CloneStore' test.out

#- 145 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'x0iJjYle' \
    --storeId 'aktqv2Wk' \
    > test.out 2>&1
eval_tap $? 145 'ExportStore' test.out

#- 146 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'ljQuD5mn' \
    --chargeStatus 'SETUP' \
    --itemId 'ONqHGq8m' \
    --limit '55' \
    --offset '24' \
    --sku 'F2lMFcag' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'XJIJflRH' \
    > test.out 2>&1
eval_tap $? 146 'QuerySubscriptions' test.out

#- 147 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'FcsIqCy4' \
    --subscriptionId 'xDifSSQ5' \
    > test.out 2>&1
eval_tap $? 147 'RecurringChargeSubscription' test.out

#- 148 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'On2ccEcl' \
    --namespace '3xeiO4bw' \
    > test.out 2>&1
eval_tap $? 148 'GetTicketDynamic' test.out

#- 149 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "F5JOjGoG"}' \
    --boothName 'xKM3qMce' \
    --namespace '5tfLcpjF' \
    > test.out 2>&1
eval_tap $? 149 'DecreaseTicketSale' test.out

#- 150 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ZMKCbp0p' \
    --namespace 'EbLCLFpH' \
    > test.out 2>&1
eval_tap $? 150 'GetTicketBoothID' test.out

#- 151 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 47, "orderNo": "MYF83607"}' \
    --boothName '5xEpzdnY' \
    --namespace 'tpja5ig2' \
    > test.out 2>&1
eval_tap $? 151 'IncreaseTicketSale' test.out

#- 152 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'isQZga6V' \
    --userId 'y76izPiQ' \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeCampaign' test.out

#- 153 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'RjYa8fv5' \
    --userId 'fIt22tIZ' \
    > test.out 2>&1
eval_tap $? 153 'AnonymizeEntitlement' test.out

#- 154 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'hjhgkigW' \
    --userId '22zXMWXf' \
    > test.out 2>&1
eval_tap $? 154 'AnonymizeFulfillment' test.out

#- 155 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'bcM0GIAL' \
    --userId 'IbFCQgBc' \
    > test.out 2>&1
eval_tap $? 155 'AnonymizeIntegration' test.out

#- 156 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'LNT6iOQV' \
    --userId 'Yx5rW2gM' \
    > test.out 2>&1
eval_tap $? 156 'AnonymizeOrder' test.out

#- 157 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'sI1aYBit' \
    --userId 'Sn3UDeKj' \
    > test.out 2>&1
eval_tap $? 157 'AnonymizePayment' test.out

#- 158 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace '97I4WYXL' \
    --userId 'qjN7ktOB' \
    > test.out 2>&1
eval_tap $? 158 'AnonymizeSubscription' test.out

#- 159 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace 'TraBxWRT' \
    --userId 'VuYEqGlK' \
    > test.out 2>&1
eval_tap $? 159 'AnonymizeWallet' test.out

#- 160 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 'DwTKXBrX' \
    --userId 'iQcd9IW8' \
    --activeOnly 'False' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'KeQJWZBv' \
    --itemId '["cq1ETvWB"]' \
    --limit '46' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 160 'QueryUserEntitlements' test.out

#- 161 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1974-08-06T00:00:00Z", "grantedCode": "8gbnSu9M", "itemId": "2OxD2uda", "itemNamespace": "eYpCXYSM", "language": "Yc-GMYS", "quantity": 22, "region": "rDcain0c", "source": "GIFT", "startDate": "1997-07-20T00:00:00Z", "storeId": "HwDTI0sJ"}]' \
    --namespace '1Q0kphMT' \
    --userId 'ggSP2SLc' \
    > test.out 2>&1
eval_tap $? 161 'GrantUserEntitlement' test.out

#- 162 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'uAP7vU97' \
    --userId '1Czw2nbg' \
    --activeOnly 'True' \
    --appId '7Mvywhu6' \
    > test.out 2>&1
eval_tap $? 162 'GetUserAppEntitlementByAppId' test.out

#- 163 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'MjOjuGzo' \
    --userId '1Fz4tU0a' \
    --activeOnly 'False' \
    --limit '79' \
    --offset '33' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 163 'QueryUserEntitlementsByAppType' test.out

#- 164 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace '0z92RaDe' \
    --userId '8ngT8LRQ' \
    --activeOnly 'False' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'nG1LZyF2' \
    > test.out 2>&1
eval_tap $? 164 'GetUserEntitlementByItemId' test.out

#- 165 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'mdYY6ZMf' \
    --userId 'uTYTKsue' \
    --activeOnly 'True' \
    --entitlementClazz 'MEDIA' \
    --sku 'EBNAV5BT' \
    > test.out 2>&1
eval_tap $? 165 'GetUserEntitlementBySku' test.out

#- 166 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'e6ec1zA9' \
    --userId '2URCLSGP' \
    --appIds '["mRBZWunH"]' \
    --itemIds '["W7MYvr6Q"]' \
    --skus '["A7Ppepc9"]' \
    > test.out 2>&1
eval_tap $? 166 'ExistsAnyUserActiveEntitlement' test.out

#- 167 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace '2HA94eAC' \
    --userId 'deyfUpgi' \
    --itemIds '["Ppf8nxKJ"]' \
    > test.out 2>&1
eval_tap $? 167 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 168 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace '3dnmtPwa' \
    --userId '64Y4gPEK' \
    --appId 'Mhhu9a6f' \
    > test.out 2>&1
eval_tap $? 168 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 169 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace '3xJNtUlK' \
    --userId 'LlIIAeHb' \
    --entitlementClazz 'CODE' \
    --itemId '5M6LsY1V' \
    > test.out 2>&1
eval_tap $? 169 'GetUserEntitlementOwnershipByItemId' test.out

#- 170 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'MuIEcRls' \
    --userId '68M3MPMR' \
    --entitlementClazz 'MEDIA' \
    --sku 'epyyMz6z' \
    > test.out 2>&1
eval_tap $? 170 'GetUserEntitlementOwnershipBySku' test.out

#- 171 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'fR1pvTYY' \
    --userId 'tDOiEi4R' \
    --entitlementIds 'uEcHCSGh' \
    > test.out 2>&1
eval_tap $? 171 'RevokeUserEntitlements' test.out

#- 172 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'pOZQFlwO' \
    --namespace 'iuKGDFgK' \
    --userId '49YuKnXk' \
    > test.out 2>&1
eval_tap $? 172 'GetUserEntitlement' test.out

#- 173 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1980-04-05T00:00:00Z", "nullFieldList": ["8ANrcRal"], "startDate": "1980-01-04T00:00:00Z", "status": "ACTIVE", "useCount": 28}' \
    --entitlementId 'jA3h4MMW' \
    --namespace '3AJ5zlsF' \
    --userId 'BwjvLYvm' \
    > test.out 2>&1
eval_tap $? 173 'UpdateUserEntitlement' test.out

#- 174 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 12}' \
    --entitlementId '6avudQFF' \
    --namespace '1CPNY9u2' \
    --userId 'dVYdglOO' \
    > test.out 2>&1
eval_tap $? 174 'ConsumeUserEntitlement' test.out

#- 175 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'oCeK0kPK' \
    --namespace 'mBqVux3l' \
    --userId 'XcD8aert' \
    > test.out 2>&1
eval_tap $? 175 'DisableUserEntitlement' test.out

#- 176 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'AVCqs8XT' \
    --namespace '8xy3nJ06' \
    --userId 'KkseA0AR' \
    > test.out 2>&1
eval_tap $? 176 'EnableUserEntitlement' test.out

#- 177 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'j9ricfay' \
    --namespace 'vnhi8MDd' \
    --userId 'Y4WLHoaU' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementHistories' test.out

#- 178 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'kYnQp5eg' \
    --namespace 'dmVE8Imi' \
    --userId 'vNtQxqWR' \
    > test.out 2>&1
eval_tap $? 178 'RevokeUserEntitlement' test.out

#- 179 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 72, "endDate": "1987-04-22T00:00:00Z", "itemId": "hODoWOr9", "itemSku": "8kjBUas9", "language": "jjz2Frgi", "order": {"currency": {"currencyCode": "aGrcB7dI", "currencySymbol": "OVKIPSJJ", "currencyType": "REAL", "decimals": 97, "namespace": "8tKH8ou9"}, "ext": {"SdbxSXcr": {}}, "free": true}, "orderNo": "FCwqeGNL", "origin": "Playstation", "quantity": 68, "region": "BRdliFQV", "source": "OTHER", "startDate": "1989-08-29T00:00:00Z", "storeId": "zVUWlUWD"}' \
    --namespace 's2x1EQU0' \
    --userId 'oepEvcja' \
    > test.out 2>&1
eval_tap $? 179 'FulfillItem' test.out

#- 180 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "SgEh6jJn", "language": "XIN", "region": "q5Zznd5e"}' \
    --namespace 'acobTsuR' \
    --userId 'lhreQVFI' \
    > test.out 2>&1
eval_tap $? 180 'RedeemCode' test.out

#- 181 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "3o8hJWVj", "namespace": "KIOAw70D"}, "item": {"itemId": "vAHhSGWU", "itemSku": "vzq1Za3I", "itemType": "BC4vQFsU"}, "quantity": 71, "type": "ITEM"}], "source": "PROMOTION"}' \
    --namespace 'aJp1rt7O' \
    --userId 'BgBCe6N0' \
    > test.out 2>&1
eval_tap $? 181 'FulfillRewards' test.out

#- 182 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'eI65Mn5t' \
    --userId 'ngEYXgPV' \
    --endTime 'T5CqXDZB' \
    --limit '94' \
    --offset '76' \
    --productId 'JyJeKFO9' \
    --startTime '2YDtaZvJ' \
    --status 'FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserIAPOrders' test.out

#- 183 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'yipZuO4N' \
    --userId '9S2YCgHa' \
    > test.out 2>&1
eval_tap $? 183 'QueryAllUserIAPOrders' test.out

#- 184 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Vg-136", "productId": "zppV7tKN", "region": "KYUQVBXy", "type": "STEAM"}' \
    --namespace 'WcNlHaFx' \
    --userId 'YaGHUpmB' \
    > test.out 2>&1
eval_tap $? 184 'MockFulfillIAPItem' test.out

#- 185 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'FyOrFKtx' \
    --userId 'GNAi0fq4' \
    --itemId 'xChPLd2l' \
    --limit '81' \
    --offset '29' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserOrders' test.out

#- 186 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --body '{"currencyCode": "c7XoVpdd", "discountedPrice": 34, "ext": {"CpyMrnH9": {}}, "itemId": "YHXh7KnC", "language": "VOKY2zsB", "platform": "IOS", "price": 7, "quantity": 84, "region": "Y2OLbijr", "returnUrl": "vfr8hknj", "sandbox": false}' \
    --namespace 'MUXHvw4p' \
    --userId 'NlGLjdBx' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateUserOrder' test.out

#- 187 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'LM079pDA' \
    --userId 'bTgmsEYE' \
    --itemId 'q2GkYK1v' \
    > test.out 2>&1
eval_tap $? 187 'CountOfPurchasedItem' test.out

#- 188 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'Ym9flXQ7' \
    --orderNo 'CQoemnQG' \
    --userId '0dH0NVM9' \
    > test.out 2>&1
eval_tap $? 188 'GetUserOrder' test.out

#- 189 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "REFUNDED", "statusReason": "HTPqDhkc"}' \
    --namespace 'u5vnz6Gi' \
    --orderNo 'NMboBJHm' \
    --userId 'l0LJmpPi' \
    > test.out 2>&1
eval_tap $? 189 'UpdateUserOrderStatus' test.out

#- 190 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace '4mqhruiC' \
    --orderNo 'ZLGGP5UX' \
    --userId 'kHNTMapp' \
    > test.out 2>&1
eval_tap $? 190 'FulfillUserOrder' test.out

#- 191 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace '5SbonsUJ' \
    --orderNo 'KADr60Ek' \
    --userId 'dFrpLsGt' \
    > test.out 2>&1
eval_tap $? 191 'GetUserOrderGrant' test.out

#- 192 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace '9yTXWUSC' \
    --orderNo 'QcMsHN7r' \
    --userId 'eI22ks7I' \
    > test.out 2>&1
eval_tap $? 192 'GetUserOrderHistories' test.out

#- 193 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "12tAZc8s"}, "authorisedTime": "1982-07-05T00:00:00Z", "chargebackReversedTime": "1989-07-01T00:00:00Z", "chargebackTime": "1995-12-04T00:00:00Z", "chargedTime": "1973-05-10T00:00:00Z", "createdTime": "1990-10-23T00:00:00Z", "currency": {"currencyCode": "m8cNJbYH", "currencySymbol": "5J4WiJLv", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "wtw2Mjcy"}, "customParameters": {"9ZL6Zs5B": {}}, "extOrderNo": "u2XYopLW", "extTxId": "ZeUKJJNf", "extUserId": "tRpGgk1i", "issuedAt": "1980-02-05T00:00:00Z", "metadata": {"REzzRG6z": "9wmuHddy"}, "namespace": "OdibI1LV", "nonceStr": "yqbdY8DG", "paymentMethod": "ZKAuoIKz", "paymentMethodFee": 83, "paymentOrderNo": "p3zLWUxM", "paymentProvider": "WXPAY", "paymentProviderFee": 76, "paymentStationUrl": "tSmMmZP8", "price": 26, "refundedTime": "1987-09-09T00:00:00Z", "salesTax": 28, "sandbox": true, "sku": "7aSsb85g", "status": "REQUEST_FOR_INFORMATION", "statusReason": "h9RD3ZzN", "subscriptionId": "6N1iJ8lt", "subtotalPrice": 38, "targetNamespace": "9IRqCflg", "targetUserId": "ln6r5f0s", "tax": 66, "totalPrice": 22, "totalTax": 56, "txEndTime": "1973-12-07T00:00:00Z", "type": "Ha11hLLC", "userId": "gw5av4LE", "vat": 47}' \
    --namespace 'dabD8g2c' \
    --orderNo 'vHfMRupD' \
    --userId 'A5xbjs3X' \
    > test.out 2>&1
eval_tap $? 193 'ProcessUserOrderNotification' test.out

#- 194 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'RdHUJ0GC' \
    --orderNo 'mflIXkgJ' \
    --userId '6zkTwoak' \
    > test.out 2>&1
eval_tap $? 194 'DownloadUserOrderReceipt' test.out

#- 195 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "q7sEejFZ", "currencyNamespace": "1NtONXb9", "customParameters": {"w9hsQHsz": {}}, "description": "IsfrlzKp", "extOrderNo": "Qdd58dZP", "extUserId": "5RvrinNt", "itemType": "SUBSCRIPTION", "language": "TQf_bS", "metadata": {"Lhty3pec": "ToXA4M1o"}, "notifyUrl": "UFPhgo7Z", "omitNotification": false, "platform": "wNC4FY69", "price": 24, "recurringPaymentOrderNo": "M87joJNO", "region": "GB83Ns6H", "returnUrl": "l5Poab6l", "sandbox": false, "sku": "VqNBUzIx", "subscriptionId": "OfglquS2", "title": "q2DoWr9z"}' \
    --namespace 'vFtKa2mO' \
    --userId 'AqOokV1p' \
    > test.out 2>&1
eval_tap $? 195 'CreateUserPaymentOrder' test.out

#- 196 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "lxQ2YriT"}' \
    --namespace 'PfipD67j' \
    --paymentOrderNo 'I2hiZkrt' \
    --userId 'Lnh2U1RQ' \
    > test.out 2>&1
eval_tap $? 196 'RefundUserPaymentOrder' test.out

#- 197 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "lMxkfNMP", "orderNo": "Ntqv2TMz"}' \
    --namespace '1b7SnzkX' \
    --userId 'Oek83Igm' \
    > test.out 2>&1
eval_tap $? 197 'ApplyUserRedemption' test.out

#- 198 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace '1wkSWsYv' \
    --userId 'Asu18obU' \
    --chargeStatus 'CHARGED' \
    --itemId 'c8mbvXcw' \
    --limit '5' \
    --offset '13' \
    --sku 'MqOXMziX' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserSubscriptions' test.out

#- 199 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'sEc3ClFP' \
    --userId '3mJwusCB' \
    --excludeSystem 'False' \
    --limit '20' \
    --offset '74' \
    --subscriptionId 'cuqL40NY' \
    > test.out 2>&1
eval_tap $? 199 'GetUserSubscriptionActivities' test.out

#- 200 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 13, "itemId": "ekRavpaG", "language": "TA9BTyCC", "reason": "yN4Fw9i6", "region": "mI2W3tjj", "source": "CqPVyYs0"}' \
    --namespace '1hEYzWw3' \
    --userId 'qrcxM0DP' \
    > test.out 2>&1
eval_tap $? 200 'PlatformSubscribeSubscription' test.out

#- 201 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'AXQBNMP7' \
    --userId 'j3xfPaoZ' \
    --itemId 'aWFspkU5' \
    > test.out 2>&1
eval_tap $? 201 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 202 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'kn6PlPqD' \
    --subscriptionId '4AgfasBf' \
    --userId 'clBhZjZb' \
    > test.out 2>&1
eval_tap $? 202 'GetUserSubscription' test.out

#- 203 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'LnmghKwP' \
    --subscriptionId 'yVIn3qaH' \
    --userId 'P7KNulyf' \
    > test.out 2>&1
eval_tap $? 203 'DeleteUserSubscription' test.out

#- 204 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": true, "reason": "ENVQkpca"}' \
    --namespace 'WHf6T2xO' \
    --subscriptionId 'Oljn7c6c' \
    --userId '9efJI02T' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 204 'CancelSubscription' test.out

#- 205 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 35, "reason": "gLBFJEkp"}' \
    --namespace 'hFz0h6Wp' \
    --subscriptionId 'oVpVc2HB' \
    --userId 'Bmj6cEi0' \
    > test.out 2>&1
eval_tap $? 205 'GrantDaysToSubscription' test.out

#- 206 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace '2hXl42ub' \
    --subscriptionId 'CRfy4GjK' \
    --userId 'n5ItHXLD' \
    --excludeFree 'True' \
    --limit '31' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 206 'GetUserSubscriptionBillingHistories' test.out

#- 207 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "hqnR742G"}, "authorisedTime": "1972-01-10T00:00:00Z", "chargebackReversedTime": "1989-06-06T00:00:00Z", "chargebackTime": "1992-11-14T00:00:00Z", "chargedTime": "1987-10-31T00:00:00Z", "createdTime": "1991-08-30T00:00:00Z", "currency": {"currencyCode": "zmdjNhT0", "currencySymbol": "S46kqyfM", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "aZc4SA16"}, "customParameters": {"M8gQCD7a": {}}, "extOrderNo": "BHWCYevN", "extTxId": "kfcQvl4O", "extUserId": "so7tx65z", "issuedAt": "1995-08-14T00:00:00Z", "metadata": {"iTfjorLF": "qTmIUFUo"}, "namespace": "onHBI13S", "nonceStr": "ZFHfm0F8", "paymentMethod": "vS2BrZ3n", "paymentMethodFee": 32, "paymentOrderNo": "88YSSD7z", "paymentProvider": "PAYPAL", "paymentProviderFee": 62, "paymentStationUrl": "vVU3kRXB", "price": 65, "refundedTime": "1991-09-29T00:00:00Z", "salesTax": 6, "sandbox": false, "sku": "t1biZHuh", "status": "DELETED", "statusReason": "yFPHdXcy", "subscriptionId": "vZEhYeUS", "subtotalPrice": 48, "targetNamespace": "5Ukc65na", "targetUserId": "P11R8Xww", "tax": 43, "totalPrice": 32, "totalTax": 27, "txEndTime": "1989-12-28T00:00:00Z", "type": "2Btgwyuf", "userId": "2fjV30SL", "vat": 47}' \
    --namespace 'i7uyhaeF' \
    --subscriptionId 'tcO9XNy6' \
    --userId '3QO9vW0c' \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserSubscriptionNotification' test.out

#- 208 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 21, "orderNo": "7TEDE8Le"}' \
    --boothName 'EQBeGPLi' \
    --namespace 'E6tHCr0G' \
    --userId 'PFvT0SAK' \
    > test.out 2>&1
eval_tap $? 208 'AcquireUserTicket' test.out

#- 209 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace '91y5vCeB' \
    --userId 'IJq0B9Uc' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserCurrencyWallets' test.out

#- 210 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'I6c5cre9' \
    --namespace 'ealHOZph' \
    --userId 'cLncnjnm' \
    --limit '49' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 210 'ListUserCurrencyTransactions' test.out

#- 211 CheckWallet
samples/cli/sample-apps Platform checkWallet \
    --currencyCode '8FSxXdCr' \
    --namespace 'skoFqnow' \
    --userId 'q9Laz1GL' \
    --origin 'Other' \
    > test.out 2>&1
eval_tap $? 211 'CheckWallet' test.out

#- 212 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 76, "expireAt": "1974-02-15T00:00:00Z", "origin": "Playstation", "reason": "hmbVPm2g", "source": "REDEEM_CODE"}' \
    --currencyCode 'AFfRRLUj' \
    --namespace 'fWS9sftI' \
    --userId 'fHGe5bUT' \
    > test.out 2>&1
eval_tap $? 212 'CreditUserWallet' test.out

#- 213 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 88, "walletPlatform": "GooglePlay"}' \
    --currencyCode '12PMcRO6' \
    --namespace 'E2Mkre5q' \
    --userId '7FvaACp6' \
    > test.out 2>&1
eval_tap $? 213 'PayWithUserWallet' test.out

#- 214 GetUserWallet
samples/cli/sample-apps Platform getUserWallet \
    --namespace 'he0fzjkP' \
    --userId 'NNS0BfgF' \
    --walletId '6inIRsZ5' \
    > test.out 2>&1
eval_tap $? 214 'GetUserWallet' test.out

#- 215 DebitUserWallet
samples/cli/sample-apps Platform debitUserWallet \
    --body '{"amount": 15, "reason": "rqNzVszG"}' \
    --namespace 'VP5P1iwh' \
    --userId 'cf30C1KH' \
    --walletId 'RZHMGy5v' \
    > test.out 2>&1
eval_tap $? 215 'DebitUserWallet' test.out

#- 216 DisableUserWallet
samples/cli/sample-apps Platform disableUserWallet \
    --namespace 'bfZvYIFF' \
    --userId 'ctEKOLxS' \
    --walletId 'Rxe0wmWB' \
    > test.out 2>&1
eval_tap $? 216 'DisableUserWallet' test.out

#- 217 EnableUserWallet
samples/cli/sample-apps Platform enableUserWallet \
    --namespace 'McNiWoob' \
    --userId 'B6o6alTQ' \
    --walletId 'cP0EpE9w' \
    > test.out 2>&1
eval_tap $? 217 'EnableUserWallet' test.out

#- 218 ListUserWalletTransactions
samples/cli/sample-apps Platform listUserWalletTransactions \
    --namespace 'GNVwkgfJ' \
    --userId 'J2HIalfz' \
    --walletId 'gRpTf9lx' \
    --limit '62' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 218 'ListUserWalletTransactions' test.out

#- 219 QueryWallets
samples/cli/sample-apps Platform queryWallets \
    --namespace 'PBizXZtr' \
    --currencyCode 'Ge8LyOH2' \
    --limit '26' \
    --offset '26' \
    --origin 'GooglePlay' \
    --userId 'ZHFeRld0' \
    > test.out 2>&1
eval_tap $? 219 'QueryWallets' test.out

#- 220 GetWallet
samples/cli/sample-apps Platform getWallet \
    --namespace 'bGA7JxWY' \
    --walletId 'zaEaimvo' \
    > test.out 2>&1
eval_tap $? 220 'GetWallet' test.out

#- 221 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'kcWX59kw' \
    --end 'iYHgHT6I' \
    --start 'vd0fGpU2' \
    > test.out 2>&1
eval_tap $? 221 'SyncOrders' test.out

#- 222 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["09nVRclu"], "apiKey": "mQTFvr5r", "authoriseAsCapture": true, "blockedPaymentMethods": ["YzaNmz3P"], "clientKey": "jMx2T89N", "dropInSettings": "TrFRUCXF", "liveEndpointUrlPrefix": "kruxegpk", "merchantAccount": "cXCfzgcv", "notificationHmacKey": "v0WE5EQh", "notificationPassword": "comPS1E7", "notificationUsername": "cpsLgr2z", "returnUrl": "EnjyRNjE", "settings": "C3FMDcZv"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 222 'TestAdyenConfig' test.out

#- 223 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "wf8aU98I", "privateKey": "n31mF4jl", "publicKey": "wKyGxTF1", "returnUrl": "l5q1Np0s"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 223 'TestAliPayConfig' test.out

#- 224 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "AWOzjmh9", "secretKey": "UzIfnhoo"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 224 'TestCheckoutConfig' test.out

#- 225 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'UmTleUnJ' \
    --region 'FM7XhoDx' \
    > test.out 2>&1
eval_tap $? 225 'DebugMatchedPaymentMerchantConfig' test.out

#- 226 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "Gik2JSfZ", "clientSecret": "64wWePq6", "returnUrl": "103PONKI", "webHookId": "S7F9emW4"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 226 'TestPayPalConfig' test.out

#- 227 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["AsiG31CE"], "publishableKey": "yUOuOZhm", "secretKey": "nHkvek6A", "webhookSecret": "a5kNnocl"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 227 'TestStripeConfig' test.out

#- 228 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "s9kxcvIp", "key": "V7mCYfWK", "mchid": "jY9CsQYs", "returnUrl": "GyhEOntE"}' \
    > test.out 2>&1
eval_tap $? 228 'TestWxPayConfig' test.out

#- 229 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "kedM1A0b", "flowCompletionUrl": "FqvjxbT3", "merchantId": 100, "projectId": 41, "projectSecretKey": "VdaBN5RS"}' \
    > test.out 2>&1
eval_tap $? 229 'TestXsollaConfig' test.out

#- 230 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'jhcjuDvN' \
    > test.out 2>&1
eval_tap $? 230 'GetPaymentMerchantConfig' test.out

#- 231 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["rXL845jf"], "apiKey": "h5tZ0hqJ", "authoriseAsCapture": false, "blockedPaymentMethods": ["QUmoYUnC"], "clientKey": "849OBNuL", "dropInSettings": "ZtofGAAa", "liveEndpointUrlPrefix": "MpBQArU4", "merchantAccount": "RS0FQRy5", "notificationHmacKey": "Qz5VcyfB", "notificationPassword": "pHjtvFwK", "notificationUsername": "SJyZeqvp", "returnUrl": "evcVXTxs", "settings": "9LTorIyx"}' \
    --id '23LhLy7d' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 231 'UpdateAdyenConfig' test.out

#- 232 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '3BuHTPF1' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 232 'TestAdyenConfigById' test.out

#- 233 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "BYFws5Ya", "privateKey": "4eOwWqW8", "publicKey": "HiLpTi1W", "returnUrl": "63HccgM5"}' \
    --id 'kYu36JpT' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 233 'UpdateAliPayConfig' test.out

#- 234 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '3KCyplY1' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 234 'TestAliPayConfigById' test.out

#- 235 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "cKDCVaqr", "secretKey": "VeegT3uG"}' \
    --id 'DIIcvuuo' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 235 'UpdateCheckoutConfig' test.out

#- 236 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '8TC38mYo' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 236 'TestCheckoutConfigById' test.out

#- 237 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "nQT4Mmzn", "clientSecret": "v7r2jthi", "returnUrl": "bgeCLX41", "webHookId": "qyOiLgd8"}' \
    --id 'Wy739QHz' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 237 'UpdatePayPalConfig' test.out

#- 238 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'zpd7TV5v' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 238 'TestPayPalConfigById' test.out

#- 239 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["MM2i3DM6"], "publishableKey": "etfI7TzC", "secretKey": "3sKmtsyE", "webhookSecret": "KdO6HNm3"}' \
    --id 'zGu71qTS' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 239 'UpdateStripeConfig' test.out

#- 240 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'WlETp9XO' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfigById' test.out

#- 241 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "A1X3HHMT", "key": "lakAWQfB", "mchid": "uBAOCjBf", "returnUrl": "YCcplye2"}' \
    --id 'GaPNzkrg' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 241 'UpdateWxPayConfig' test.out

#- 242 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'H4icml6L' \
    > test.out 2>&1
eval_tap $? 242 'UpdateWxPayConfigCert' test.out

#- 243 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '36Vg2F2Q' \
    > test.out 2>&1
eval_tap $? 243 'TestWxPayConfigById' test.out

#- 244 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "9aZDJg1O", "flowCompletionUrl": "T8109ot7", "merchantId": 90, "projectId": 8, "projectSecretKey": "vJgsb2Py"}' \
    --id 'FfJ6qcHA' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 244 'UpdateXsollaConfig' test.out

#- 245 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'dGtV9jAP' \
    > test.out 2>&1
eval_tap $? 245 'TestXsollaConfigById' test.out

#- 246 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --id 'mLNy9PkF' \
    > test.out 2>&1
eval_tap $? 246 'UpdateXsollaUIConfig' test.out

#- 247 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '88' \
    --namespace 'nlbWNcAx' \
    --offset '43' \
    --region '8uHDqJtY' \
    > test.out 2>&1
eval_tap $? 247 'QueryPaymentProviderConfig' test.out

#- 248 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "7rznwNdL", "region": "hqXvXVnj", "sandboxTaxJarApiToken": "vc0BMegJ", "specials": ["STRIPE"], "taxJarApiToken": "W1ZeuhpL", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 248 'CreatePaymentProviderConfig' test.out

#- 249 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 249 'GetAggregatePaymentProviders' test.out

#- 250 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'nOmmyXu6' \
    --region 'XtjNCqYk' \
    > test.out 2>&1
eval_tap $? 250 'DebugMatchedPaymentProviderConfig' test.out

#- 251 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 251 'GetSpecialPaymentProviders' test.out

#- 252 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "DTfR7dpU", "region": "Eo2Oe08H", "sandboxTaxJarApiToken": "peJBfG0n", "specials": ["XSOLLA"], "taxJarApiToken": "5lw2TlkP", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --id '4fpCd0Uk' \
    > test.out 2>&1
eval_tap $? 252 'UpdatePaymentProviderConfig' test.out

#- 253 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '5h1kP1pk' \
    > test.out 2>&1
eval_tap $? 253 'DeletePaymentProviderConfig' test.out

#- 254 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentTaxConfig' test.out

#- 255 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "kT08Cs6D", "taxJarApiToken": "dXZWowBg", "taxJarEnabled": false, "taxJarProductCodesMapping": {"zMvwHszf": "84MAmayJ"}}' \
    > test.out 2>&1
eval_tap $? 255 'UpdatePaymentTaxConfig' test.out

#- 256 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'J6vzDTXx' \
    --end 'syIaTgp0' \
    --start 'pwnEJL15' \
    > test.out 2>&1
eval_tap $? 256 'SyncPaymentOrders' test.out

#- 257 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'kxO4oVUP' \
    --language 'ng5JsHAk' \
    --storeId 'I47jO1wu' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetRootCategories' test.out

#- 258 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'AFuZcUwP' \
    --language 'teKdQgUT' \
    --storeId 'F33fYWZf' \
    > test.out 2>&1
eval_tap $? 258 'DownloadCategories' test.out

#- 259 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QMAnziTh' \
    --namespace 'aE2btn0u' \
    --language 'p9GeTQ7X' \
    --storeId 'ymDSQNYX' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCategory' test.out

#- 260 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'NEpZyFhI' \
    --namespace 'eqiNHtVS' \
    --language 'nhxby8F6' \
    --storeId 'xF8MhbJA' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetChildCategories' test.out

#- 261 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'YEDN1xsz' \
    --namespace 'ppR69nsK' \
    --language 'AS5zKsTR' \
    --storeId 'Xd7b3v2f' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetDescendantCategories' test.out

#- 262 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'kZIkr06o' \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 262 'PublicListCurrencies' test.out

#- 263 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'UtoVJLGX' \
    --language 'ekomvwD8' \
    --region '49mo5vIk' \
    --storeId 'DZYrYEf1' \
    --appId 'xYnlxHHX' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetItemByAppId' test.out

#- 264 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'jFoXtwKW' \
    --appType 'SOFTWARE' \
    --baseAppId 'OnqnWCuX' \
    --categoryPath 'MWqG8fNp' \
    --features 'rJx82nAF' \
    --itemType 'BUNDLE' \
    --language 'xNou1Aic' \
    --limit '37' \
    --offset '85' \
    --region 'jKx5Ljet' \
    --sortBy 'HEw0aCQp' \
    --storeId 'U6EGOW0V' \
    --tags 'AI87DPH0' \
    > test.out 2>&1
eval_tap $? 264 'PublicQueryItems' test.out

#- 265 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'fLLiUqza' \
    --language 'y0gET8T5' \
    --region '3yEej7Ds' \
    --storeId 'qsTvNKAX' \
    --sku 'qfqMJHGe' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetItemBySku' test.out

#- 266 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'HaN2k1Eu' \
    --language 'tm9AAWDc' \
    --region 'Dv3ISBgZ' \
    --storeId 'CAf2pWOW' \
    --itemIds 's4I2lOHf' \
    > test.out 2>&1
eval_tap $? 266 'PublicBulkGetItems' test.out

#- 267 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'iu4HraKY' \
    --limit '77' \
    --offset '38' \
    --region 'gBmvCHMt' \
    --storeId 'F15a7T0I' \
    --keyword 'heywiPE1' \
    --language 'WUR1PTFf' \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchItems' test.out

#- 268 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'JJ46kzfq' \
    --namespace 'apbByIKo' \
    --language 'YzYtTWJA' \
    --region '3nFCDgWO' \
    --storeId 'pz3yPQfq' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetApp' test.out

#- 269 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'beVG7i4V' \
    --namespace 'TAhuFYhE' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetItemDynamicData' test.out

#- 270 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'gQBb9Hni' \
    --namespace '6lDMj9gv' \
    --language 'kBcQjQ56' \
    --populateBundle 'True' \
    --region 'AvUlMWp8' \
    --storeId 'WGpZxCe0' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetItem' test.out

#- 271 GetPaymentCustomization
eval_tap 0 271 'GetPaymentCustomization # SKIP deprecated' test.out

#- 272 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "KsmXtGBb", "paymentProvider": "CHECKOUT", "returnUrl": "V58TIThQ", "ui": "52PYNknB", "zipCode": "Cjirw4hm"}' \
    --namespace 'fMSl2bET' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetPaymentUrl' test.out

#- 273 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'uFLFOfdl' \
    --paymentOrderNo '0yRndbO7' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPaymentMethods' test.out

#- 274 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace '8R8ybYsH' \
    --paymentOrderNo 'x3BIgGuo' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUnpaidPaymentOrder' test.out

#- 275 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "817lZA58"}' \
    --namespace 'OI2LMYRX' \
    --paymentOrderNo '16nfCJ83' \
    --paymentProvider 'ADYEN' \
    --zipCode 'dpuCxSDF' \
    > test.out 2>&1
eval_tap $? 275 'Pay' test.out

#- 276 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'WMVcsOZl' \
    --paymentOrderNo 'S0ulerU6' \
    > test.out 2>&1
eval_tap $? 276 'PublicCheckPaymentOrderPaidStatus' test.out

#- 277 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace '1drwLngb' \
    --sandbox 'True' \
    --paymentProvider 'WALLET' \
    --region 'FwnmB60e' \
    > test.out 2>&1
eval_tap $? 277 'GetPaymentPublicConfig' test.out

#- 278 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'a7XItZS8' \
    --code 'KIu9T604' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetQRCode' test.out

#- 279 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'oPajgySh' \
    --payerID 'KuLB7pQL' \
    --foreinginvoice 'ZiWVmc8P' \
    --invoiceId 'VwShVQz7' \
    --payload 'FY3h2oVV' \
    --redirectResult 'ScVv3YTB' \
    --resultCode 'M4teOpqe' \
    --sessionId 'vsWvMhih' \
    --status 'eE2KM7Ct' \
    --token 'al5z7hLi' \
    --type 'OYz1jFfu' \
    --userId '1y1d77D8' \
    --orderNo 'ZNOfHyen' \
    --paymentOrderNo 'hbRZ4a9U' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'jjU0EggY' \
    > test.out 2>&1
eval_tap $? 279 'PublicNormalizePaymentReturnUrl' test.out

#- 280 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'LcGiEDZb' \
    --zipCode 'Dl9ZeZH3' \
    --paymentOrderNo 'M87v0Fhd' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxValue' test.out

#- 281 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'EfXRhaO0' \
    --rewardCode 'AYSqvcV2' \
    > test.out 2>&1
eval_tap $? 281 'GetRewardByCode' test.out

#- 282 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'LqfgCX28' \
    --eventTopic 'Je4kyPQj' \
    --limit '12' \
    --offset '58' \
    --sortBy 'JNOEMtdE' \
    > test.out 2>&1
eval_tap $? 282 'QueryRewards1' test.out

#- 283 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'tN4sEebn' \
    --rewardId 'Qucgaop5' \
    > test.out 2>&1
eval_tap $? 283 'GetReward1' test.out

#- 284 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'NEdhurSc' \
    > test.out 2>&1
eval_tap $? 284 'PublicListStores' test.out

#- 285 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'NiUxnJUe' \
    --appIds '["wUVhkGRR"]' \
    --itemIds '["TgLCb9ev"]' \
    --skus '["ywZywunL"]' \
    > test.out 2>&1
eval_tap $? 285 'PublicExistsAnyMyActiveEntitlement' test.out

#- 286 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'ImNhyZsb' \
    --appId '7YhhQbDx' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 287 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'LRKxzUtp' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'DC8gl2ot' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 288 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'jUWKxgW6' \
    --entitlementClazz 'CODE' \
    --sku '8AJaeqxT' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 289 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'PgZKFi3S' \
    --appIds '["BGlCD4ig"]' \
    --itemIds '["5ZRoJd1a"]' \
    --skus '["s1Wkfh3l"]' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetEntitlementOwnershipToken' test.out

#- 290 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '8HyGWZTd' \
    --namespace 'pmTxPUBF' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetMyWallet' test.out

#- 291 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 18}' \
    --namespace 'TIIKcXlx' \
    --userId 'PfdDyjJ0' \
    > test.out 2>&1
eval_tap $? 291 'PublicSyncPsnDlcInventory' test.out

#- 292 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "wwrYeljM", "steamId": "yoeb3gsM"}' \
    --namespace 'OMdqbt4P' \
    --userId 'nuFr18ij' \
    > test.out 2>&1
eval_tap $? 292 'SyncSteamDLC' test.out

#- 293 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "p3CmzrfV"}' \
    --namespace 'Ia1vi9ok' \
    --userId 'y2P7fIgB' \
    > test.out 2>&1
eval_tap $? 293 'SyncXboxDLC' test.out

#- 294 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'RSBlxuko' \
    --userId 'OTCosjAX' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'jBVW8r7n' \
    --itemId '["yNcVl6ZB"]' \
    --limit '3' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 294 'PublicQueryUserEntitlements' test.out

#- 295 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'HupBuAL2' \
    --userId 'avXKOjwG' \
    --appId 'RJbZqXgQ' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserAppEntitlementByAppId' test.out

#- 296 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace '9azOreTs' \
    --userId 'viZmgm0l' \
    --limit '100' \
    --offset '35' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 296 'PublicQueryUserEntitlementsByAppType' test.out

#- 297 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'mgiwIF5Z' \
    --userId 'x5TIIhBt' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '3zT6xRqy' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserEntitlementByItemId' test.out

#- 298 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'V0tlLaMY' \
    --userId 'L1p95v9m' \
    --entitlementClazz 'CODE' \
    --sku 'IFEdQ2RK' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserEntitlementBySku' test.out

#- 299 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'eQy2WRzt' \
    --userId 'R5qztuhV' \
    --appIds '["aJDWx2Od"]' \
    --itemIds '["rUV7bhcK"]' \
    --skus '["GIOZcB6N"]' \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyUserActiveEntitlement' test.out

#- 300 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'WffXkYze' \
    --userId 's2xHp1uf' \
    --appId 'ZNxhbsaS' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'FtTmbIf2' \
    --userId 'hFQRmsi0' \
    --entitlementClazz 'CODE' \
    --itemId 'elJQkLtV' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 302 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace '2QnPsmhF' \
    --userId 'VPtJTGig' \
    --entitlementClazz 'APP' \
    --sku 'DnxXuJoZ' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 303 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'gOG4tOeW' \
    --namespace 'VMI9K1eJ' \
    --userId '6xC2h6U8' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserEntitlement' test.out

#- 304 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 91}' \
    --entitlementId 'gR2k2RkE' \
    --namespace 'r8XbmQNu' \
    --userId 'v80Em9nu' \
    > test.out 2>&1
eval_tap $? 304 'PublicConsumeUserEntitlement' test.out

#- 305 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "ffLGUWnV", "language": "qpH-YFfC_EE", "region": "awFpdHeH"}' \
    --namespace '5p8Zx8jy' \
    --userId '7nxGzOTB' \
    > test.out 2>&1
eval_tap $? 305 'PublicRedeemCode' test.out

#- 306 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "MJ-eYdT_543", "productId": "mcaOLdFi", "receiptData": "fUk9p700", "region": "jB0p4HpK", "transactionId": "8pvufSxY"}' \
    --namespace 'M0VkuqOK' \
    --userId 'rhvMwvD0' \
    > test.out 2>&1
eval_tap $? 306 'PublicFulfillAppleIAPItem' test.out

#- 307 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "4UY8ghvs"}' \
    --namespace 'mSrrJzAi' \
    --userId '6FOuhQIB' \
    > test.out 2>&1
eval_tap $? 307 'SyncEpicGamesInventory' test.out

#- 308 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": true, "language": "UP", "orderId": "WsO6fW46", "packageName": "8fWxqRkJ", "productId": "DjfNhYDg", "purchaseTime": 95, "purchaseToken": "m0TCaos4", "region": "wyjaPP6C"}' \
    --namespace 'lekQGm25' \
    --userId 'KYmFZxQr' \
    > test.out 2>&1
eval_tap $? 308 'PublicFulfillGoogleIAPItem' test.out

#- 309 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "4xbV63gc", "price": 0.04883791304517049, "productId": "4vyIPJeR", "serviceLabel": 18}' \
    --namespace 'Cj7UK5nE' \
    --userId 'mwsQtSfD' \
    > test.out 2>&1
eval_tap $? 309 'PublicReconcilePlayStationStore' test.out

#- 310 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "qA4CysEX", "language": "oYNe_085", "region": "tSGzayUa", "stadiaPlayerId": "Dh3m2eX3"}' \
    --namespace '1qVPH2VH' \
    --userId 'Dznf57fQ' \
    > test.out 2>&1
eval_tap $? 310 'SyncStadiaEntitlement' test.out

#- 311 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "1PY5uDkQ", "currencyCode": "8zpNRwyc", "language": "asH_598", "price": 0.5141556119070819, "productId": "bNuvyrgh", "region": "VdsSwDc9", "steamId": "NJRX9Zda"}' \
    --namespace 'C8sja1J7' \
    --userId 'eucGSSxZ' \
    > test.out 2>&1
eval_tap $? 311 'SyncSteamInventory' test.out

#- 312 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "JPto04wT", "language": "iIS-506", "region": "sx72rwV3"}' \
    --namespace 'MdXNVRDz' \
    --userId 'T2sBbflg' \
    > test.out 2>&1
eval_tap $? 312 'SyncTwitchDropsEntitlement' test.out

#- 313 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "7cD247c1", "price": 0.7699983402559191, "productId": "YJf18StY", "xstsToken": "u6wb2We3"}' \
    --namespace 'Q6Pm7RBk' \
    --userId 'qWDPEP4C' \
    > test.out 2>&1
eval_tap $? 313 'SyncXboxInventory' test.out

#- 314 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'WnZJjXdi' \
    --userId 'Uv9owF1m' \
    --itemId 'Qrc03W7o' \
    --limit '80' \
    --offset '7' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 314 'PublicQueryUserOrders' test.out

#- 315 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "Y5ZJChQt", "discountedPrice": 31, "ext": {"D2U9IQzA": {}}, "itemId": "2eexjq3T", "language": "Nj-cGiT", "price": 90, "quantity": 100, "region": "OR2n8qFj", "returnUrl": "jSZx0FeR"}' \
    --namespace 'dmgOta6p' \
    --userId 'cKzSPfek' \
    > test.out 2>&1
eval_tap $? 315 'PublicCreateUserOrder' test.out

#- 316 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace '369fIM1t' \
    --orderNo 'cxwt2XqP' \
    --userId 'FaIxBgzR' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserOrder' test.out

#- 317 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'O8GKycdc' \
    --orderNo 'XuULpvuB' \
    --userId 'NRzUbH0h' \
    > test.out 2>&1
eval_tap $? 317 'PublicCancelUserOrder' test.out

#- 318 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace 'I7yCEyjK' \
    --orderNo 'XQPnomAs' \
    --userId 'HMpmDvt4' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserOrderHistories' test.out

#- 319 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'tkWavQ0j' \
    --orderNo 'o17Qq6AF' \
    --userId 'dE7URb19' \
    > test.out 2>&1
eval_tap $? 319 'PublicDownloadUserOrderReceipt' test.out

#- 320 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'BcvWfPxH' \
    --userId 'PQaUClyA' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetPaymentAccounts' test.out

#- 321 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'jfGkGwDs' \
    --namespace 'oo09NdZj' \
    --type 'card' \
    --userId 'jtl8XIGZ' \
    > test.out 2>&1
eval_tap $? 321 'PublicDeletePaymentAccount' test.out

#- 322 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'V3GBXIHx' \
    --userId 'WGX4iwwH' \
    --chargeStatus 'SETUP' \
    --itemId 'ohaKvD9n' \
    --limit '79' \
    --offset '9' \
    --sku 'Li2tRrcl' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserSubscriptions' test.out

#- 323 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "mkWcIpWl", "itemId": "bLNxQciS", "language": "oB", "region": "cE1VtVP5", "returnUrl": "yWKB3dhO", "source": "4E5cHbV6"}' \
    --namespace 'Tq3makni' \
    --userId 'WG9Atazn' \
    > test.out 2>&1
eval_tap $? 323 'PublicSubscribeSubscription' test.out

#- 324 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'HrmvF1mJ' \
    --userId 'Z3dLFxAk' \
    --itemId 'QrsQXCUj' \
    > test.out 2>&1
eval_tap $? 324 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 325 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'nXNZpacd' \
    --subscriptionId 'MfX6X3Zt' \
    --userId 'a5msSId5' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserSubscription' test.out

#- 326 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace '56xncCH3' \
    --subscriptionId '7zoQElCS' \
    --userId 'NpKYpjKm' \
    > test.out 2>&1
eval_tap $? 326 'PublicChangeSubscriptionBillingAccount' test.out

#- 327 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "0iBSA7vd"}' \
    --namespace 'LvUFJ7qN' \
    --subscriptionId '6ucqfJth' \
    --userId '42FD6A3k' \
    > test.out 2>&1
eval_tap $? 327 'PublicCancelSubscription' test.out

#- 328 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'chLvxRuU' \
    --subscriptionId 'LxDjXJ9B' \
    --userId 'FwEyGUCv' \
    --excludeFree 'True' \
    --limit '55' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserSubscriptionBillingHistories' test.out

#- 329 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'PmENb7in' \
    --namespace 'SCGzNuHp' \
    --userId 'ABtt9Ggp' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetWallet' test.out

#- 330 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'AZjcg8z9' \
    --namespace 'cH6u6SmV' \
    --userId 'FciDGufT' \
    --limit '20' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 330 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE