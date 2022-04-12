#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..321"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

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
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --body '{"currencyCode": "VbDxVMq7", "currencySymbol": "HJk0F89x", "currencyType": "VIRTUAL", "decimals": 5, "localizationDescriptions": {"3YVfaENt": "rl0pTKZT"}}' \
    --namespace 'XqzHuBMY' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --body '{"localizationDescriptions": {"QSA2jz1Z": "OpdOjSyM"}}' \
    --currencyCode 'ddB41JuM' \
    --namespace 'f7RUyBHR' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'j8IiRimR' \
    --namespace 'llHT6Dc4' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '0vFFA6gp' \
    --namespace 'U7EW3x1d' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Cpm55gOe' \
    --namespace 'qQIqcJVK' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace 'mBM1J1Ib' \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --body '{"data": [{"id": "uTrrkbmu", "rewards": [{"currency": {"currencyCode": "T1whOqmE", "namespace": "nDXIWrBP"}, "item": {"itemId": "lSay46mv", "itemSku": "71BAZAOj", "itemType": "tFJ2vmTj"}, "quantity": 39, "type": "CURRENCY"}]}]}' \
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

#- 82 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace 'omwenJvQ' \
    --activeOnly 'False' \
    --language 'rtQSv6Ec' \
    --region 'ALcMIPms' \
    --storeId '5bT51M4y' \
    --itemIds 'ko8S0EnG' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetLocaleItems' test.out

#- 83 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace 'LvGvfuSy' \
    --activeOnly 'True' \
    --limit '91' \
    --offset '49' \
    --storeId 'jj4mCaiu' \
    --keyword 'MGKOF5GJ' \
    --language 'JooSXUl3' \
    > test.out 2>&1
eval_tap $? 83 'SearchItems' test.out

#- 84 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace 'YU35QHGp' \
    --activeOnly 'True' \
    --limit '53' \
    --offset '54' \
    --sortBy 'nOlxDznI' \
    --storeId 'CQVyqBg3' \
    > test.out 2>&1
eval_tap $? 84 'QueryUncategorizedItems' test.out

#- 85 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '4WTtDkn0' \
    --namespace 'rtn6t0Yx' \
    --activeOnly 'True' \
    --storeId '12EaQ1rU' \
    > test.out 2>&1
eval_tap $? 85 'GetItem' test.out

#- 86 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --body '{"appId": "QYCNTiDX", "appType": "SOFTWARE", "baseAppId": "E3M2IsTH", "boothName": "u8QwNyOl", "categoryPath": "XfIWd0mc", "clazz": "q5T4SUc7", "displayOrder": 5, "entitlementType": "DURABLE", "ext": {"CKK6Dij1": {}}, "features": ["gFcenEMy"], "images": [{"as": "SPfhxBen", "caption": "DiTiAqFY", "height": 24, "imageUrl": "FKjaELmm", "smallImageUrl": "ll6oexId", "width": 81}], "itemIds": ["KGUN2Uzn"], "itemQty": {"d7uVa7t1": 48}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"HifCIf4t": {"description": "suu6Pkam", "localExt": {"6tFSYFt4": {}}, "longDescription": "ZxA2PzZF", "title": "RkBNlg6h"}}, "maxCount": 26, "maxCountPerUser": 33, "name": "usKyZAuV", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 33, "fixedTrialCycles": 76, "graceDays": 23}, "regionData": {"V6UZMlEb": [{"currencyCode": "xHNgJRiQ", "currencyNamespace": "ExaunjdA", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1987-07-22T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1982-11-17T00:00:00Z", "discountedPrice": 15, "expireAt": "1971-04-12T00:00:00Z", "price": 83, "purchaseAt": "1982-11-10T00:00:00Z", "trialPrice": 29}]}, "seasonType": "PASS", "sku": "071ezDK5", "stackable": true, "status": "ACTIVE", "tags": ["1IMUCLcN"], "targetCurrencyCode": "0DsaD5Fy", "targetNamespace": "BsFe9OYE", "thumbnailUrl": "JVsYffmh", "useCount": 48}' \
    --itemId 'x6J25PrM' \
    --namespace '4S3cB8m1' \
    --storeId '7hEeLLgo' \
    > test.out 2>&1
eval_tap $? 86 'UpdateItem' test.out

#- 87 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'aYth6zcf' \
    --namespace '8eA45OMv' \
    --storeId 'ObWejo9L' \
    > test.out 2>&1
eval_tap $? 87 'DeleteItem' test.out

#- 88 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --body '{"count": 10, "orderNo": "GeegJMaB"}' \
    --itemId 'GR6D1ZoZ' \
    --namespace 'EZQkJ8DS' \
    > test.out 2>&1
eval_tap $? 88 'AcquireItem' test.out

#- 89 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'qFnhdKvj' \
    --namespace 'FCFbSFlE' \
    --activeOnly 'False' \
    --storeId 'MPdgK5zn' \
    > test.out 2>&1
eval_tap $? 89 'GetApp' test.out

#- 90 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --body '{"carousel": [{"alt": "62mhnFSp", "previewUrl": "CTlDNBOc", "thumbnailUrl": "ygvv2LAg", "type": "image", "url": "BGVzanbK", "videoSource": "youtube"}], "developer": "B0gqJ8Vh", "forumUrl": "YSikJl2p", "genres": ["Indie"], "localizations": {"Bx8N5ega": {"announcement": "pqxDy4cL", "slogan": "fNjzzEZY"}}, "platformRequirements": {"A8jIkMJb": [{"additionals": "7cZ2bPsa", "directXVersion": "LLpEBVEM", "diskSpace": "k5AsKaF2", "graphics": "P44lXkI3", "label": "zdiRiC5I", "osVersion": "bPit71JW", "processor": "lYCoi4nD", "ram": "fPu5V6QS", "soundCard": "YxEVOryV"}]}, "platforms": ["Linux"], "players": ["Multi"], "primaryGenre": "Adventure", "publisher": "UeEPB5AG", "releaseDate": "1991-02-16T00:00:00Z", "websiteUrl": "vk0Zthaj"}' \
    --itemId '0EBA4azR' \
    --namespace 'z0d56smo' \
    --storeId 'bor4p1Pl' \
    > test.out 2>&1
eval_tap $? 90 'UpdateApp' test.out

#- 91 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'gQB9EcNG' \
    --namespace 'OeBRY6G5' \
    --storeId 'ae07deDL' \
    > test.out 2>&1
eval_tap $? 91 'DisableItem' test.out

#- 92 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'aZ8JCvbe' \
    --namespace 'TfW0hgzr' \
    > test.out 2>&1
eval_tap $? 92 'GetItemDynamicData' test.out

#- 93 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'abLJxEwJ' \
    --namespace 'rEBmQ64h' \
    --storeId 'aNOzlGu6' \
    > test.out 2>&1
eval_tap $? 93 'EnableItem' test.out

#- 94 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '8UYyupjd' \
    --itemId 'DetnoT0r' \
    --namespace 'fWtVPwQf' \
    --storeId 'q6V92gbf' \
    > test.out 2>&1
eval_tap $? 94 'FeatureItem' test.out

#- 95 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'PouNdmP7' \
    --itemId 'fckVnuDG' \
    --namespace 'vYIb1p5t' \
    --storeId 'cR5z8ZJL' \
    > test.out 2>&1
eval_tap $? 95 'DefeatureItem' test.out

#- 96 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'jSHcaR3X' \
    --namespace '4tZmwr0Q' \
    --activeOnly 'False' \
    --language 'OnsEg49e' \
    --populateBundle 'False' \
    --region '0xQkZ2Jj' \
    --storeId 'uwWWy0tU' \
    > test.out 2>&1
eval_tap $? 96 'GetLocaleItem' test.out

#- 97 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --body '{"orderNo": "11PCeSrv"}' \
    --itemId 'ejUKwVfF' \
    --namespace '37Vr7mkD' \
    > test.out 2>&1
eval_tap $? 97 'ReturnItem' test.out

#- 98 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace 'zFBI1Vwh' \
    --limit '21' \
    --name 'VSKDlNFO' \
    --offset '93' \
    --tag 'HBJsvTsq' \
    > test.out 2>&1
eval_tap $? 98 'QueryKeyGroups' test.out

#- 99 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --body '{"description": "k9hg4hj6", "name": "nUdebW6U", "status": "INACTIVE", "tags": ["kbPkkZAk"]}' \
    --namespace '01f1KxCt' \
    > test.out 2>&1
eval_tap $? 99 'CreateKeyGroup' test.out

#- 100 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'WADU2guN' \
    --namespace '6U9w13W1' \
    > test.out 2>&1
eval_tap $? 100 'GetKeyGroup' test.out

#- 101 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --body '{"description": "K9TZQ4qR", "name": "LEi5wowE", "status": "INACTIVE", "tags": ["fmM0CCs3"]}' \
    --keyGroupId '5TPUPLms' \
    --namespace 'Y8WgwSx1' \
    > test.out 2>&1
eval_tap $? 101 'UpdateKeyGroup' test.out

#- 102 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'DI5GH9bv' \
    --namespace '9ZTo2HpA' \
    > test.out 2>&1
eval_tap $? 102 'GetKeyGroupDynamic' test.out

#- 103 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '6pzjHpZO' \
    --namespace '0E9iLgRP' \
    --limit '70' \
    --offset '72' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 103 'ListKeys' test.out

#- 104 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --file 'tmp.dat' \
    --keyGroupId 'Bae3GOgb' \
    --namespace 'Qrqra0Pt' \
    > test.out 2>&1
eval_tap $? 104 'UploadKeys' test.out

#- 105 QueryOrders
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
    > test.out 2>&1
eval_tap $? 105 'QueryOrders' test.out

#- 106 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace '5ecPzAmi' \
    > test.out 2>&1
eval_tap $? 106 'GetOrderStatistics' test.out

#- 107 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace '0ySJHfPl' \
    --orderNo 'oP1XkYK4' \
    > test.out 2>&1
eval_tap $? 107 'GetOrder' test.out

#- 108 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --body '{"description": "MgIsDSFM"}' \
    --namespace 'PyMhyw1O' \
    --orderNo 'LZPVwwxH' \
    > test.out 2>&1
eval_tap $? 108 'RefundOrder' test.out

#- 109 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace '4BIDJuDo' \
    > test.out 2>&1
eval_tap $? 109 'GetPaymentCallbackConfig' test.out

#- 110 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --body '{"dryRun": false, "notifyUrl": "MMftll8N", "privateKey": "0VvChHz9"}' \
    --namespace 'urmt7QWv' \
    > test.out 2>&1
eval_tap $? 110 'UpdatePaymentCallbackConfig' test.out

#- 111 QueryPaymentNotifications
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
    > test.out 2>&1
eval_tap $? 111 'QueryPaymentNotifications' test.out

#- 112 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace 'gNZj5w5y' \
    --channel 'EXTERNAL' \
    --extTxId 'K8QVOa62' \
    --limit '9' \
    --offset '85' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 112 'QueryPaymentOrders' test.out

#- 113 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --body '{"currencyCode": "tbLLcF67", "currencyNamespace": "1WLtv38H", "customParameters": {"ecczopFm": {}}, "description": "eRwpcJBZ", "extOrderNo": "yi3mLC4K", "extUserId": "zekiSzey", "itemType": "BUNDLE", "language": "No_vhGc-853", "metadata": {"HbRdoTKK": "euSjfZe9"}, "notifyUrl": "i1osghF1", "omitNotification": false, "price": 51, "recurringPaymentOrderNo": "i1Nl47sy", "region": "J5ibzSHZ", "returnUrl": "eCLIvWPV", "sandbox": true, "sku": "dEqA61yT", "subscriptionId": "rMgsycTg", "targetNamespace": "mPzc20Eu", "targetUserId": "O5dMqGDl", "title": "SZPY07rE"}' \
    --namespace 'VSjzHjL6' \
    > test.out 2>&1
eval_tap $? 113 'CreatePaymentOrderByDedicated' test.out

#- 114 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'ZbXjG6DS' \
    --extTxId 'mpp3op8h' \
    > test.out 2>&1
eval_tap $? 114 'ListExtOrderNoByExtTxId' test.out

#- 115 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace 'taRLxtW4' \
    --paymentOrderNo 'PvFkESTU' \
    > test.out 2>&1
eval_tap $? 115 'GetPaymentOrder' test.out

#- 116 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "Lat5F1Le", "paymentMethod": "7cR7q6PW", "paymentProvider": "XSOLLA"}' \
    --namespace 'ZmmKz41i' \
    --paymentOrderNo '1Tp78Fip' \
    > test.out 2>&1
eval_tap $? 116 'ChargePaymentOrder' test.out

#- 117 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "JHahViJv"}' \
    --namespace 'LYW0kdml' \
    --paymentOrderNo 'k2luqSOO' \
    > test.out 2>&1
eval_tap $? 117 'RefundPaymentOrderByDedicated' test.out

#- 118 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 53, "currencyCode": "2VOZBoNb", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 88, "vat": 65}' \
    --namespace 'ykqFzPwS' \
    --paymentOrderNo 'MXT53bBu' \
    > test.out 2>&1
eval_tap $? 118 'SimulatePaymentOrderNotification' test.out

#- 119 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'L38beOYD' \
    --paymentOrderNo 'VuHZQ9LY' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrderChargeStatus' test.out

#- 120 CreateReward
samples/cli/sample-apps Platform createReward \
    --body '{"description": "t6w23Wf8", "eventTopic": "iEQo72sH", "maxAwarded": 0, "maxAwardedPerUser": 86, "namespaceExpression": "dcDlDyGc", "rewardCode": "sfIuI4Dv", "rewardConditions": [{"condition": "5lEJpK1A", "conditionName": "yRlzsrRX", "eventName": "EFZivQOH", "rewardItems": [{"duration": 64, "itemId": "6wVicNra", "quantity": 38}]}], "userIdExpression": "svvHLmIo"}' \
    --namespace 'hfNISLXM' \
    > test.out 2>&1
eval_tap $? 120 'CreateReward' test.out

#- 121 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace 'DWDdm5FE' \
    --eventTopic '4lliQMnu' \
    --limit '38' \
    --offset '71' \
    --sortBy 'bpEo4mUN' \
    > test.out 2>&1
eval_tap $? 121 'QueryRewards' test.out

#- 122 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace 'HFtdml2x' \
    > test.out 2>&1
eval_tap $? 122 'ExportRewards' test.out

#- 123 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'NviWacJc' \
    --replaceExisting 'True' \
    > test.out 2>&1
eval_tap $? 123 'ImportRewards' test.out

#- 124 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace 'm7Z548uu' \
    --rewardId 'KgoCBqS5' \
    > test.out 2>&1
eval_tap $? 124 'GetReward' test.out

#- 125 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "uIdCbwCe", "eventTopic": "eq9ouEdD", "maxAwarded": 39, "maxAwardedPerUser": 19, "namespaceExpression": "OgsypLkm", "rewardCode": "2ZYew5H7", "rewardConditions": [{"condition": "Zm0gnYyj", "conditionName": "6MXf9G1n", "eventName": "tyebvoeH", "rewardItems": [{"duration": 9, "itemId": "nAALKt7E", "quantity": 11}]}], "userIdExpression": "xIH446oU"}' \
    --namespace 'nP2S74un' \
    --rewardId 'Xwg0JKqV' \
    > test.out 2>&1
eval_tap $? 125 'UpdateReward' test.out

#- 126 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'WW1rjK1e' \
    --rewardId 'pwkAvcsY' \
    > test.out 2>&1
eval_tap $? 126 'DeleteReward' test.out

#- 127 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"vbgfBVPp": {}}}' \
    --namespace 'Ta8Yuq7T' \
    --rewardId 'KiNXmz7e' \
    > test.out 2>&1
eval_tap $? 127 'CheckEventCondition' test.out

#- 128 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace 'MrMD5Tba' \
    > test.out 2>&1
eval_tap $? 128 'ListStores' test.out

#- 129 CreateStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "UxTCTng0", "defaultRegion": "xjtdBrjs", "description": "3Kiykt2C", "supportedLanguages": ["k2gOlSat"], "supportedRegions": ["ECZ2UgwQ"], "title": "LqDqYSxT"}' \
    --namespace 'PuVlBqir' \
    > test.out 2>&1
eval_tap $? 129 'CreateStore' test.out

#- 130 ImportStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'dp3yxnsE' \
    --storeId 'Tl1SvhQu' \
    > test.out 2>&1
eval_tap $? 130 'ImportStore' test.out

#- 131 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'dsjIhXdx' \
    > test.out 2>&1
eval_tap $? 131 'GetPublishedStore' test.out

#- 132 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'iSoWpnnx' \
    > test.out 2>&1
eval_tap $? 132 'DeletePublishedStore' test.out

#- 133 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'gX7BCPMq' \
    > test.out 2>&1
eval_tap $? 133 'GetPublishedStoreBackup' test.out

#- 134 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'zQIxibhp' \
    > test.out 2>&1
eval_tap $? 134 'RollbackPublishedStore' test.out

#- 135 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace 'NYsHtdB3' \
    --storeId 'IkjuaZqh' \
    > test.out 2>&1
eval_tap $? 135 'GetStore' test.out

#- 136 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "JilrZkSS", "defaultRegion": "KgP5rxCR", "description": "77G9d5CA", "supportedLanguages": ["1GORSbL9"], "supportedRegions": ["n0dbWDEu"], "title": "pmdLQzPn"}' \
    --namespace 'NfBAcWAr' \
    --storeId 'bkCfdHIZ' \
    > test.out 2>&1
eval_tap $? 136 'UpdateStore' test.out

#- 137 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'b03otqmB' \
    --storeId 'uS9V2pCZ' \
    > test.out 2>&1
eval_tap $? 137 'DeleteStore' test.out

#- 138 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace '23UHmk0l' \
    --storeId 'pJ4JLl01' \
    --targetStoreId 'qi7L2oDU' \
    > test.out 2>&1
eval_tap $? 138 'CloneStore' test.out

#- 139 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'oVRUb39j' \
    --storeId '22P4Sp09' \
    > test.out 2>&1
eval_tap $? 139 'ExportStore' test.out

#- 140 QuerySubscriptions
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
    > test.out 2>&1
eval_tap $? 140 'QuerySubscriptions' test.out

#- 141 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'SmEEPbLy' \
    --subscriptionId 'wJsyUie6' \
    > test.out 2>&1
eval_tap $? 141 'RecurringChargeSubscription' test.out

#- 142 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fZgLllUP' \
    --namespace 'sO8lg46S' \
    > test.out 2>&1
eval_tap $? 142 'GetTicketDynamic' test.out

#- 143 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "i7006vL2"}' \
    --boothName 'w4aajDAO' \
    --namespace 'x0iJjYle' \
    > test.out 2>&1
eval_tap $? 143 'DecreaseTicketSale' test.out

#- 144 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'aktqv2Wk' \
    --namespace 'ljQuD5mn' \
    > test.out 2>&1
eval_tap $? 144 'GetTicketBoothID' test.out

#- 145 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 70, "orderNo": "ONqHGq8m"}' \
    --boothName 'B7mF2lMF' \
    --namespace 'caghFXJI' \
    > test.out 2>&1
eval_tap $? 145 'IncreaseTicketSale' test.out

#- 146 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'JflRHFcs' \
    --userId 'IqCy4xDi' \
    > test.out 2>&1
eval_tap $? 146 'AnonymizeCampaign' test.out

#- 147 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'fSSQ5On2' \
    --userId 'ccEcl3xe' \
    > test.out 2>&1
eval_tap $? 147 'AnonymizeEntitlement' test.out

#- 148 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'iO4bwF5J' \
    --userId 'OjGoGxKM' \
    > test.out 2>&1
eval_tap $? 148 'AnonymizeFulfillment' test.out

#- 149 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace '3qMce5tf' \
    --userId 'LcpjFZMK' \
    > test.out 2>&1
eval_tap $? 149 'AnonymizeIntegration' test.out

#- 150 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'Cbp0pEbL' \
    --userId 'CLFpHxMY' \
    > test.out 2>&1
eval_tap $? 150 'AnonymizeOrder' test.out

#- 151 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'F836075x' \
    --userId 'EpzdnYtp' \
    > test.out 2>&1
eval_tap $? 151 'AnonymizePayment' test.out

#- 152 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'ja5ig2is' \
    --userId 'QZga6Vy7' \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeSubscription' test.out

#- 153 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace '6izPiQRj' \
    --userId 'Ya8fv5fI' \
    > test.out 2>&1
eval_tap $? 153 'AnonymizeWallet' test.out

#- 154 QueryUserEntitlements
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
    > test.out 2>&1
eval_tap $? 154 'QueryUserEntitlements' test.out

#- 155 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1975-11-20T00:00:00Z", "grantedCode": "QVYx5rW2", "itemId": "gMsI1aYB", "itemNamespace": "itSn3UDe", "language": "Jiwy_Tobt_574", "quantity": 64, "region": "lKDwTKXB", "source": "REFERRAL_BONUS", "startDate": "1995-03-07T00:00:00Z", "storeId": "Qcd9IW8k"}]' \
    --namespace 'iCKeQJWZ' \
    --userId 'Bvcq1ETv' \
    > test.out 2>&1
eval_tap $? 155 'GrantUserEntitlement' test.out

#- 156 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'WBxYZJh7' \
    --userId 'B8gbnSu9' \
    --activeOnly 'True' \
    --appId 'D2udaeYp' \
    > test.out 2>&1
eval_tap $? 156 'GetUserAppEntitlementByAppId' test.out

#- 157 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'CXYSMiy8' \
    --userId '7CTqEQBg' \
    --activeOnly 'False' \
    --limit '48' \
    --offset '36' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 157 'QueryUserEntitlementsByAppType' test.out

#- 158 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'lrDcain0' \
    --userId 'cOVF1zHw' \
    --activeOnly 'True' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '0sJ1Q0kp' \
    > test.out 2>&1
eval_tap $? 158 'GetUserEntitlementByItemId' test.out

#- 159 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'hMTggSP2' \
    --userId 'SLcuAP7v' \
    --activeOnly 'True' \
    --entitlementClazz 'MEDIA' \
    --sku 'w2nbg8C7' \
    > test.out 2>&1
eval_tap $? 159 'GetUserEntitlementBySku' test.out

#- 160 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'Mvywhu6M' \
    --userId 'jOjuGzo1' \
    --appIds '["Fz4tU0aS"]' \
    --itemIds '["n98N8qOU"]' \
    --skus '["A0z92RaD"]' \
    > test.out 2>&1
eval_tap $? 160 'ExistsAnyUserActiveEntitlement' test.out

#- 161 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'e8ngT8LR' \
    --userId 'QkMnG1LZ' \
    --itemIds '["yF2mdYY6"]' \
    > test.out 2>&1
eval_tap $? 161 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 162 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'ZMfuTYTK' \
    --userId 'sue48qBE' \
    --appId 'BNAV5BTe' \
    > test.out 2>&1
eval_tap $? 162 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 163 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace '6ec1zA92' \
    --userId 'URCLSGPm' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ZWunHW7M' \
    > test.out 2>&1
eval_tap $? 163 'GetUserEntitlementOwnershipByItemId' test.out

#- 164 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'Yvr6QA7P' \
    --userId 'pepc92HA' \
    --entitlementClazz 'APP' \
    --sku 'ACdeyfUp' \
    > test.out 2>&1
eval_tap $? 164 'GetUserEntitlementOwnershipBySku' test.out

#- 165 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'giPpf8nx' \
    --userId 'KJ3dnmtP' \
    --entitlementIds 'wa64Y4gP' \
    > test.out 2>&1
eval_tap $? 165 'RevokeUserEntitlements' test.out

#- 166 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'EKMhhu9a' \
    --namespace '6f3xJNtU' \
    --userId 'lKLlIIAe' \
    > test.out 2>&1
eval_tap $? 166 'GetUserEntitlement' test.out

#- 167 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1987-01-11T00:00:00Z", "nullFieldList": ["m5M6LsY1"], "startDate": "1994-10-27T00:00:00Z", "status": "CONSUMED", "useCount": 68}' \
    --entitlementId 'EcRls68M' \
    --namespace '3MPMRPBe' \
    --userId 'pyyMz6zf' \
    > test.out 2>&1
eval_tap $? 167 'UpdateUserEntitlement' test.out

#- 168 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 87}' \
    --entitlementId '1pvTYYtD' \
    --namespace 'OiEi4RuE' \
    --userId 'cHCSGhpO' \
    > test.out 2>&1
eval_tap $? 168 'ConsumeUserEntitlement' test.out

#- 169 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'ZQFlwOiu' \
    --namespace 'KGDFgK49' \
    --userId 'YuKnXks0' \
    > test.out 2>&1
eval_tap $? 169 'DisableUserEntitlement' test.out

#- 170 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'm8ANrcRa' \
    --namespace 'l7ta3foj' \
    --userId 'A3h4MMW3' \
    > test.out 2>&1
eval_tap $? 170 'EnableUserEntitlement' test.out

#- 171 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'AJ5zlsFB' \
    --namespace 'wjvLYvmg' \
    --userId '6avudQFF' \
    > test.out 2>&1
eval_tap $? 171 'GetUserEntitlementHistories' test.out

#- 172 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '1CPNY9u2' \
    --namespace 'dVYdglOO' \
    --userId 'oCeK0kPK' \
    > test.out 2>&1
eval_tap $? 172 'RevokeUserEntitlement' test.out

#- 173 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 25, "endDate": "1984-05-09T00:00:00Z", "itemId": "Vux3lXcD", "itemSku": "8aertAVC", "language": "qs8XT8xy", "order": {"currency": {"currencyCode": "3nJ06Kks", "currencySymbol": "eA0ARj9r", "currencyType": "REAL", "decimals": 5, "namespace": "fayvnhi8"}, "ext": {"MDdY4WLH": {}}, "free": false}, "orderNo": "aUkYnQp5", "quantity": 9, "region": "gdmVE8Im", "source": "PROMOTION", "startDate": "1981-11-07T00:00:00Z", "storeId": "tQxqWRKH"}' \
    --namespace 'ohODoWOr' \
    --userId '98kjBUas' \
    > test.out 2>&1
eval_tap $? 173 'FulfillItem' test.out

#- 174 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "9jjz2Frg", "language": "Ag_Diov", "region": "5W8tKH8o"}' \
    --namespace 'u9SdbxSX' \
    --userId 'crEFCwqe' \
    > test.out 2>&1
eval_tap $? 174 'RedeemCode' test.out

#- 175 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"rewards": [{"currency": {"currencyCode": "GNLdIBRd", "namespace": "liFQVMKE"}, "item": {"itemId": "zVUWlUWD", "itemSku": "s2x1EQU0", "itemType": "oepEvcja"}, "quantity": 88, "type": "ITEM"}], "source": "GIFT"}' \
    --namespace 'h6jJnFxi' \
    --userId 'nIHJ1o7a' \
    > test.out 2>&1
eval_tap $? 175 'FulfillRewards' test.out

#- 176 QueryUserIAPOrders
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
    > test.out 2>&1
eval_tap $? 176 'QueryUserIAPOrders' test.out

#- 177 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'SGWUvzq1' \
    --userId 'Za3IBC4v' \
    > test.out 2>&1
eval_tap $? 177 'QueryAllUserIAPOrders' test.out

#- 178 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "ujp", "productId": "aJp1rt7O", "region": "BgBCe6N0", "type": "GOOGLE"}' \
    --namespace 'I65Mn5tn' \
    --userId 'gEYXgPVT' \
    > test.out 2>&1
eval_tap $? 178 'MockFulfillIAPItem' test.out

#- 179 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace '5CqXDZBV' \
    --userId 'MJyJeKFO' \
    --itemId '92YDtaZv' \
    --limit '71' \
    --offset '28' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 179 'QueryUserOrders' test.out

#- 180 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'S0OxyipZ' \
    --userId 'uO4N9S2Y' \
    --itemId 'CgHa6XBc' \
    > test.out 2>&1
eval_tap $? 180 'CountOfPurchasedItem' test.out

#- 181 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'vGRYk5rU' \
    --orderNo 'tWHCnhmz' \
    --userId 'zppV7tKN' \
    > test.out 2>&1
eval_tap $? 181 'GetUserOrder' test.out

#- 182 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "CLOSED", "statusReason": "YUQVBXym"}' \
    --namespace 'WcNlHaFx' \
    --orderNo 'YaGHUpmB' \
    --userId 'FyOrFKtx' \
    > test.out 2>&1
eval_tap $? 182 'UpdateUserOrderStatus' test.out

#- 183 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'GNAi0fq4' \
    --orderNo 'xChPLd2l' \
    --userId 'Oopc7XoV' \
    > test.out 2>&1
eval_tap $? 183 'FulfillUserOrder' test.out

#- 184 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace 'pdd6rCpy' \
    --orderNo 'MrnH9YHX' \
    --userId 'h7KnCVOK' \
    > test.out 2>&1
eval_tap $? 184 'GetUserOrderGrant' test.out

#- 185 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'Y2zsBRGt' \
    --orderNo 'd8QY2OLb' \
    --userId 'ijrvfr8h' \
    > test.out 2>&1
eval_tap $? 185 'GetUserOrderHistories' test.out

#- 186 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "knjWUWdM"}, "authorisedTime": "1994-09-24T00:00:00Z", "chargebackReversedTime": "1981-06-26T00:00:00Z", "chargebackTime": "1999-04-28T00:00:00Z", "chargedTime": "1990-04-01T00:00:00Z", "createdTime": "1987-10-27T00:00:00Z", "currency": {"currencyCode": "jdBxLM07", "currencySymbol": "9pDAbTgm", "currencyType": "VIRTUAL", "decimals": 61, "namespace": "YEq2GkYK"}, "customParameters": {"1vYm9flX": {}}, "extOrderNo": "Q7CQoemn", "extTxId": "QG0dH0NV", "extUserId": "M9VEHTPq", "issuedAt": "1985-02-26T00:00:00Z", "metadata": {"kcu5vnz6": "GiNMboBJ"}, "namespace": "Hml0LJmp", "nonceStr": "Pi4mqhru", "paymentMethod": "iCZLGGP5", "paymentMethodFee": 93, "paymentOrderNo": "XkHNTMap", "paymentProvider": "STRIPE", "paymentProviderFee": 88, "paymentStationUrl": "bonsUJKA", "price": 58, "refundedTime": "1979-09-02T00:00:00Z", "salesTax": 21, "sandbox": false, "sku": "FrpLsGt9", "status": "REQUEST_FOR_INFORMATION", "statusReason": "TXWUSCQc", "subscriptionId": "MsHN7reI", "subtotalPrice": 21, "targetNamespace": "s7I12tAZ", "targetUserId": "c8sxxLx9", "tax": 98, "totalPrice": 85, "totalTax": 8, "txEndTime": "1979-11-12T00:00:00Z", "type": "WLm8cNJb", "userId": "YH5J4WiJ", "vat": 74}' \
    --namespace 'v9NvHwtw' \
    --orderNo '2Mjcy9ZL' \
    --userId '6Zs5Bu2X' \
    > test.out 2>&1
eval_tap $? 186 'ProcessUserOrderNotification' test.out

#- 187 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'YopLWZeU' \
    --orderNo 'KJJNftRp' \
    --userId 'Ggk1iseR' \
    > test.out 2>&1
eval_tap $? 187 'DownloadUserOrderReceipt' test.out

#- 188 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "EzzRG6z9", "currencyNamespace": "wmuHddyO", "customParameters": {"dibI1LVy": {}}, "description": "qbdY8DGZ", "extOrderNo": "KAuoIKz3", "extUserId": "Pp3zLWUx", "itemType": "SEASON", "language": "TsMm", "metadata": {"G0FoQP8q": "7aSsb85g"}, "notifyUrl": "Ah9RD3Zz", "omitNotification": false, "price": 70, "recurringPaymentOrderNo": "8ltt9IRq", "region": "Cflgln6r", "returnUrl": "5f0s5H6l", "sandbox": true, "sku": "f3QHa11h", "subscriptionId": "LLCgw5av", "title": "4LExdabD"}' \
    --namespace '8g2cvHfM' \
    --userId 'RupDA5xb' \
    > test.out 2>&1
eval_tap $? 188 'CreateUserPaymentOrder' test.out

#- 189 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "js3XRdHU"}' \
    --namespace 'J0GCmflI' \
    --paymentOrderNo 'XkgJ6zkT' \
    --userId 'woakq7sE' \
    > test.out 2>&1
eval_tap $? 189 'RefundUserPaymentOrder' test.out

#- 190 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "ejFZ1NtO", "orderNo": "NXb9w9hs"}' \
    --namespace 'QHszIsfr' \
    --userId 'lzKpQdd5' \
    > test.out 2>&1
eval_tap $? 190 'ApplyUserRedemption' test.out

#- 191 QueryUserSubscriptions
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
    > test.out 2>&1
eval_tap $? 191 'QueryUserSubscriptions' test.out

#- 192 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'ecToXA4M' \
    --userId '1oUFPhgo' \
    --excludeSystem 'False' \
    --limit '44' \
    --offset '78' \
    --subscriptionId 'C4FY69mM' \
    > test.out 2>&1
eval_tap $? 192 'GetUserSubscriptionActivities' test.out

#- 193 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 19, "itemId": "oJNOGB83", "language": "Ns6Hl5Po", "reason": "ab6lKoVq", "region": "NBUzIxOf", "source": "glquS2q2"}' \
    --namespace 'DoWr9zvF' \
    --userId 'tKa2mOAq' \
    > test.out 2>&1
eval_tap $? 193 'PlatformSubscribeSubscription' test.out

#- 194 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'OokV1plx' \
    --userId 'Q2YriTPf' \
    --itemId 'ipD67jI2' \
    > test.out 2>&1
eval_tap $? 194 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 195 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'hiZkrtLn' \
    --subscriptionId 'h2U1RQlM' \
    --userId 'xkfNMPNt' \
    > test.out 2>&1
eval_tap $? 195 'GetUserSubscription' test.out

#- 196 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'qv2TMz1b' \
    --subscriptionId '7SnzkXOe' \
    --userId 'k83Igm1w' \
    > test.out 2>&1
eval_tap $? 196 'DeleteUserSubscription' test.out

#- 197 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "SWsYvAsu"}' \
    --namespace '18obUdc8' \
    --subscriptionId 'mbvXcwcg' \
    --userId 'MqOXMziX' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 197 'CancelSubscription' test.out

#- 198 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 94, "reason": "dsEc3ClF"}' \
    --namespace 'P3mJwusC' \
    --subscriptionId 'BTe4kLcu' \
    --userId 'qL40NYge' \
    > test.out 2>&1
eval_tap $? 198 'GrantDaysToSubscription' test.out

#- 199 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'kRavpaGT' \
    --subscriptionId 'A9BTyCCy' \
    --userId 'N4Fw9i6m' \
    --excludeFree 'True' \
    --limit '19' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 199 'GetUserSubscriptionBillingHistories' test.out

#- 200 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "CqPVyYs0"}, "authorisedTime": "1997-02-23T00:00:00Z", "chargebackReversedTime": "1986-07-21T00:00:00Z", "chargebackTime": "1995-06-25T00:00:00Z", "chargedTime": "1998-05-06T00:00:00Z", "createdTime": "1979-01-16T00:00:00Z", "currency": {"currencyCode": "xM0DPAXQ", "currencySymbol": "BNMP7j3x", "currencyType": "REAL", "decimals": 83, "namespace": "aoZaWFsp"}, "customParameters": {"kU5kn6Pl": {}}, "extOrderNo": "PqD4Agfa", "extTxId": "sBfclBhZ", "extUserId": "jZbLnmgh", "issuedAt": "1989-06-27T00:00:00Z", "metadata": {"PyVIn3qa": "HP7KNuly"}, "namespace": "frENVQkp", "nonceStr": "caWHf6T2", "paymentMethod": "xOOljn7c", "paymentMethodFee": 4, "paymentOrderNo": "9efJI02T", "paymentProvider": "ALIPAY", "paymentProviderFee": 35, "paymentStationUrl": "gLBFJEkp", "price": 14, "refundedTime": "1986-07-23T00:00:00Z", "salesTax": 15, "sandbox": false, "sku": "oVpVc2HB", "status": "REQUEST_FOR_INFORMATION", "statusReason": "mj6cEi02", "subscriptionId": "hXl42ubC", "subtotalPrice": 87, "targetNamespace": "fy4GjKn5", "targetUserId": "ItHXLDZq", "tax": 31, "totalPrice": 87, "totalTax": 15, "txEndTime": "1979-04-20T00:00:00Z", "type": "R742GcbL", "userId": "uQOGMOEz", "vat": 24}' \
    --namespace 'djNhT0S4' \
    --subscriptionId '6kqyfMBS' \
    --userId 'aZc4SA16' \
    > test.out 2>&1
eval_tap $? 200 'ProcessUserSubscriptionNotification' test.out

#- 201 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 77, "orderNo": "8gQCD7aB"}' \
    --boothName 'HWCYevNk' \
    --namespace 'fcQvl4Os' \
    --userId 'o7tx65zX' \
    > test.out 2>&1
eval_tap $? 201 'AcquireUserTicket' test.out

#- 202 CheckWallet
samples/cli/sample-apps Platform checkWallet \
    --currencyCode 'CiTfjorL' \
    --namespace 'FqTmIUFU' \
    --userId 'oonHBI13' \
    > test.out 2>&1
eval_tap $? 202 'CheckWallet' test.out

#- 203 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 89, "reason": "ZFHfm0F8", "source": "REDEEM_CODE"}' \
    --currencyCode 'S2BrZ3nq' \
    --namespace '88YSSD7z' \
    --userId 'V0C8FvVU' \
    > test.out 2>&1
eval_tap $? 203 'CreditUserWallet' test.out

#- 204 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 21}' \
    --currencyCode 'RXBGPXId' \
    --namespace 'ft1biZHu' \
    --userId 'hWyFPHdX' \
    > test.out 2>&1
eval_tap $? 204 'PayWithUserWallet' test.out

#- 205 GetUserWallet
samples/cli/sample-apps Platform getUserWallet \
    --namespace 'cyvZEhYe' \
    --userId 'USy5Ukc6' \
    --walletId '5naP11R8' \
    > test.out 2>&1
eval_tap $? 205 'GetUserWallet' test.out

#- 206 DebitUserWallet
samples/cli/sample-apps Platform debitUserWallet \
    --body '{"amount": 98, "reason": "ww9vq9nM"}' \
    --namespace 'a2Btgwyu' \
    --userId 'f2fjV30S' \
    --walletId 'Lxi7uyha' \
    > test.out 2>&1
eval_tap $? 206 'DebitUserWallet' test.out

#- 207 DisableUserWallet
samples/cli/sample-apps Platform disableUserWallet \
    --namespace 'eFtcO9XN' \
    --userId 'y63QO9vW' \
    --walletId '0ck7TEDE' \
    > test.out 2>&1
eval_tap $? 207 'DisableUserWallet' test.out

#- 208 EnableUserWallet
samples/cli/sample-apps Platform enableUserWallet \
    --namespace '8LeEQBeG' \
    --userId 'PLiE6tHC' \
    --walletId 'r0GPFvT0' \
    > test.out 2>&1
eval_tap $? 208 'EnableUserWallet' test.out

#- 209 ListUserWalletTransactions
samples/cli/sample-apps Platform listUserWalletTransactions \
    --namespace 'SAK91y5v' \
    --userId 'CeBIJq0B' \
    --walletId '9UcI6c5c' \
    --limit '34' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 209 'ListUserWalletTransactions' test.out

#- 210 QueryWallets
samples/cli/sample-apps Platform queryWallets \
    --namespace '9ealHOZp' \
    --currencyCode 'hcLncnjn' \
    --limit '25' \
    --offset '49' \
    --userId 'U8FSxXdC' \
    > test.out 2>&1
eval_tap $? 210 'QueryWallets' test.out

#- 211 GetWallet
samples/cli/sample-apps Platform getWallet \
    --namespace 'rskoFqno' \
    --walletId 'wq9Laz1G' \
    > test.out 2>&1
eval_tap $? 211 'GetWallet' test.out

#- 212 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'Lt5Mhf8Z' \
    --end '7ahmbVPm' \
    --start '2g7xAFfR' \
    > test.out 2>&1
eval_tap $? 212 'SyncOrders' test.out

#- 213 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["RLUjfWS9"], "apiKey": "sftIfHGe", "authoriseAsCapture": false, "blockedPaymentMethods": ["UTSXOv12"], "clientKey": "PMcRO6E2", "dropInSettings": "Mkre5q7F", "liveEndpointUrlPrefix": "vaACp6he", "merchantAccount": "0fzjkPNN", "notificationHmacKey": "S0BfgF6i", "notificationPassword": "nIRsZ5hr", "notificationUsername": "qNzVszGV", "returnUrl": "P5P1iwhc", "settings": "f30C1KHR"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 213 'TestAdyenConfig' test.out

#- 214 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "5vbfZvYI", "privateKey": "FFctEKOL", "publicKey": "xSRxe0wm", "returnUrl": "WBMcNiWo"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 214 'TestAliPayConfig' test.out

#- 215 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "bB6o6alT", "secretKey": "QcP0EpE9"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 215 'TestCheckoutConfig' test.out

#- 216 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'GNVwkgfJ' \
    --region 'J2HIalfz' \
    > test.out 2>&1
eval_tap $? 216 'DebugMatchedPaymentMerchantConfig' test.out

#- 217 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "gRpTf9lx", "clientSecret": "F1JPBizX", "returnUrl": "ZtrGe8Ly", "webHookId": "OH24nneZ"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 217 'TestPayPalConfig' test.out

#- 218 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["eRld0bGA"], "publishableKey": "7JxWYzaE", "secretKey": "aimvokcW", "webhookSecret": "X59kwiYH"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 218 'TestStripeConfig' test.out

#- 219 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "HT6Ivd0f", "key": "GpU209nV", "mchid": "RclumQTF", "returnUrl": "vr5rRyYz"}' \
    > test.out 2>&1
eval_tap $? 219 'TestWxPayConfig' test.out

#- 220 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "aNmz3PjM", "flowCompletionUrl": "x2T89NTr", "merchantId": 62, "projectId": 87, "projectSecretKey": "UCXFkrux"}' \
    > test.out 2>&1
eval_tap $? 220 'TestXsollaConfig' test.out

#- 221 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'egpkcXCf' \
    > test.out 2>&1
eval_tap $? 221 'GetPaymentMerchantConfig' test.out

#- 222 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["zgcvv0WE"], "apiKey": "5EQhcomP", "authoriseAsCapture": true, "blockedPaymentMethods": ["7cpsLgr2"], "clientKey": "zEnjyRNj", "dropInSettings": "EC3FMDcZ", "liveEndpointUrlPrefix": "vwwf8aU9", "merchantAccount": "8In31mF4", "notificationHmacKey": "jlwKyGxT", "notificationPassword": "F1l5q1Np", "notificationUsername": "0sT1X8J2", "returnUrl": "eAWOzjmh", "settings": "9UzIfnho"}' \
    --id 'o6xUmTle' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 222 'UpdateAdyenConfig' test.out

#- 223 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'M7XhoDxG' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 223 'TestAdyenConfigById' test.out

#- 224 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "k2JSfZ64", "privateKey": "wWePq610", "publicKey": "3PONKIS7", "returnUrl": "F9emW4R1"}' \
    --id '5tAsiG31' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 224 'UpdateAliPayConfig' test.out

#- 225 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'yUOuOZhm' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 225 'TestAliPayConfigById' test.out

#- 226 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "Hkvek6Aa", "secretKey": "5kNnoclx"}' \
    --id 's9kxcvIp' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 226 'UpdateCheckoutConfig' test.out

#- 227 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'YfWKjY9C' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 227 'TestCheckoutConfigById' test.out

#- 228 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "QYsGyhEO", "clientSecret": "ntEkedM1", "returnUrl": "A0bFqvjx", "webHookId": "bT3YuVda"}' \
    --id 'BN5RSjhc' \
    --sandbox 'False' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 228 'UpdatePayPalConfig' test.out

#- 229 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'DvNrXL84' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 229 'TestPayPalConfigById' test.out

#- 230 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["fh5tZ0hq"], "publishableKey": "JLjQUmoY", "secretKey": "UnC849OB", "webhookSecret": "NuLZtofG"}' \
    --id 'AAaMpBQA' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 230 'UpdateStripeConfig' test.out

#- 231 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'QRy5Qz5V' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 231 'TestStripeConfigById' test.out

#- 232 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "yfBpHjtv", "key": "FwKSJyZe", "mchid": "qvpevcVX", "returnUrl": "Txs9LTor"}' \
    --id 'Iyx23LhL' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 232 'UpdateWxPayConfig' test.out

#- 233 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id '7ds3g3Bu' \
    > test.out 2>&1
eval_tap $? 233 'UpdateWxPayConfigCert' test.out

#- 234 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HTPF19dB' \
    > test.out 2>&1
eval_tap $? 234 'TestWxPayConfigById' test.out

#- 235 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "YFws5Ya4", "flowCompletionUrl": "eOwWqW8H", "merchantId": 16, "projectId": 75, "projectSecretKey": "pTi1W63H"}' \
    --id 'ccgM5kYu' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 235 'UpdateXsollaConfig' test.out

#- 236 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'TL55W4ws' \
    > test.out 2>&1
eval_tap $? 236 'TestXsollaConfigById' test.out

#- 237 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    --id 'Y1ocKDCV' \
    > test.out 2>&1
eval_tap $? 237 'UpdateXsollaUIConfig' test.out

#- 238 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'qrVeegT3' \
    --offset '40' \
    --region 'GDIIcvuu' \
    > test.out 2>&1
eval_tap $? 238 'QueryPaymentProviderConfig' test.out

#- 239 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "kt8TC38m", "region": "YoUanQT4", "sandboxTaxJarApiToken": "Mmznv7r2", "specials": ["ADYEN"], "taxJarApiToken": "thibgeCL", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 239 'CreatePaymentProviderConfig' test.out

#- 240 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 240 'GetAggregatePaymentProviders' test.out

#- 241 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'OiLgd8Wy' \
    --region '739QHzw0' \
    > test.out 2>&1
eval_tap $? 241 'DebugMatchedPaymentProviderConfig' test.out

#- 242 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 242 'GetSpecialPaymentProviders' test.out

#- 243 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "zpd7TV5v", "region": "hMM2i3DM", "sandboxTaxJarApiToken": "6etfI7Tz", "specials": ["PAYPAL"], "taxJarApiToken": "3sKmtsyE", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --id '3zGu71qT' \
    > test.out 2>&1
eval_tap $? 243 'UpdatePaymentProviderConfig' test.out

#- 244 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'SSJEbWlE' \
    > test.out 2>&1
eval_tap $? 244 'DeletePaymentProviderConfig' test.out

#- 245 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 245 'GetPaymentTaxConfig' test.out

#- 246 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Tp9XOCA1", "taxJarApiToken": "X3HHMTla", "taxJarEnabled": false, "taxJarProductCodesMapping": {"AWQfBuBA": "OCjBfYCc"}}' \
    > test.out 2>&1
eval_tap $? 246 'UpdatePaymentTaxConfig' test.out

#- 247 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'plye2GaP' \
    --end 'NzkrgBH4' \
    --start 'icml6L36' \
    > test.out 2>&1
eval_tap $? 247 'SyncPaymentOrders' test.out

#- 248 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'Vg2F2Q9a' \
    --language 'ZDJg1OT8' \
    --storeId '109ot70T' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetRootCategories' test.out

#- 249 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'evJgsb2P' \
    --language 'yFfJ6qcH' \
    --storeId 'ABdGtV9j' \
    > test.out 2>&1
eval_tap $? 249 'DownloadCategories' test.out

#- 250 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'APqon7Um' \
    --namespace 'LNy9PkF9' \
    --language 'SnlbWNcA' \
    --storeId 'xv8uHDqJ' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCategory' test.out

#- 251 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'tYC7rznw' \
    --namespace 'NdLhqXvX' \
    --language 'Vnjvc0BM' \
    --storeId 'egJpW1Ze' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetChildCategories' test.out

#- 252 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'uhpLX1BH' \
    --namespace 'Z4hnOmmy' \
    --language 'Xu6XtjNC' \
    --storeId 'qYk9TPUK' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetDescendantCategories' test.out

#- 253 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'cDTfR7dp' \
    > test.out 2>&1
eval_tap $? 253 'PublicListCurrencies' test.out

#- 254 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'UEo2Oe08' \
    --language 'HpeJBfG0' \
    --region 'nGZHe5lw' \
    --storeId '2TlkPIxL' \
    --appId '9v4fpCd0' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetItemByAppId' test.out

#- 255 PublicQueryItems
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
    > test.out 2>&1
eval_tap $? 255 'PublicQueryItems' test.out

#- 256 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'ng5JsHAk' \
    --language 'I47jO1wu' \
    --region 'AFuZcUwP' \
    --storeId 'teKdQgUT' \
    --sku 'F33fYWZf' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetItemBySku' test.out

#- 257 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'QMAnziTh' \
    --language 'aE2btn0u' \
    --region 'p9GeTQ7X' \
    --storeId 'ymDSQNYX' \
    --itemIds 'NEpZyFhI' \
    > test.out 2>&1
eval_tap $? 257 'PublicBulkGetItems' test.out

#- 258 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'eqiNHtVS' \
    --limit '27' \
    --offset '14' \
    --region 'xby8F6xF' \
    --storeId '8MhbJAYE' \
    --keyword 'DN1xszpp' \
    --language 'R69nsKAS' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchItems' test.out

#- 259 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '5zKsTRXd' \
    --namespace '7b3v2fkZ' \
    --language 'Ikr06ojU' \
    --region 'toVJLGXe' \
    --storeId 'komvwD84' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetApp' test.out

#- 260 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '9mo5vIkD' \
    --namespace 'ZYrYEf1x' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetItemDynamicData' test.out

#- 261 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'YnlxHHXj' \
    --namespace 'FoXtwKW6' \
    --language 'AOnqnWCu' \
    --populateBundle 'True' \
    --region 'G8fNprJx' \
    --storeId '82nAFexN' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetItem' test.out

#- 262 GetPaymentCustomization
eval_tap 0 262 'GetPaymentCustomization # SKIP deprecated' test.out

#- 263 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "ou1AicsQ", "paymentProvider": "ADYEN", "returnUrl": "Kx5LjetH", "ui": "Ew0aCQpU", "zipCode": "6EGOW0VA"}' \
    --namespace 'I87DPH0f' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetPaymentUrl' test.out

#- 264 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'LLiUqzay' \
    --paymentOrderNo '0gET8T53' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetPaymentMethods' test.out

#- 265 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'yEej7Dsq' \
    --paymentOrderNo 'sTvNKAXq' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUnpaidPaymentOrder' test.out

#- 266 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "fqMJHGeH"}' \
    --namespace 'aN2k1Eut' \
    --paymentOrderNo 'm9AAWDcD' \
    --paymentProvider 'WALLET' \
    --zipCode '3ISBgZCA' \
    > test.out 2>&1
eval_tap $? 266 'Pay' test.out

#- 267 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'f2pWOWs4' \
    --paymentOrderNo 'I2lOHfiu' \
    > test.out 2>&1
eval_tap $? 267 'PublicCheckPaymentOrderPaidStatus' test.out

#- 268 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace '4HraKYMt' \
    --sandbox 'False' \
    --paymentProvider 'WXPAY' \
    --region 'mvCHMtF1' \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentPublicConfig' test.out

#- 269 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace '5a7T0Ihe' \
    --code 'ywiPE1WU' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetQRCode' test.out

#- 270 PublicNormalizePaymentReturnUrl
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
    > test.out 2>&1
eval_tap $? 270 'PublicNormalizePaymentReturnUrl' test.out

#- 271 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace '52PYNknB' \
    --zipCode 'Cjirw4hm' \
    --paymentOrderNo 'fMSl2bET' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 271 'GetPaymentTaxValue' test.out

#- 272 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'FLFOfdl0' \
    --rewardCode 'yRndbO78' \
    > test.out 2>&1
eval_tap $? 272 'GetRewardByCode' test.out

#- 273 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'R8ybYsHx' \
    --eventTopic '3BIgGuo8' \
    --limit '23' \
    --offset '53' \
    --sortBy '58OI2LMY' \
    > test.out 2>&1
eval_tap $? 273 'QueryRewards1' test.out

#- 274 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'RX16nfCJ' \
    --rewardId '833JKRNc' \
    > test.out 2>&1
eval_tap $? 274 'GetReward1' test.out

#- 275 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'dpuCxSDF' \
    > test.out 2>&1
eval_tap $? 275 'PublicListStores' test.out

#- 276 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'WMVcsOZl' \
    --appIds '["S0ulerU6"]' \
    --itemIds '["1drwLngb"]' \
    --skus '["ZxOGxFwn"]' \
    > test.out 2>&1
eval_tap $? 276 'PublicExistsAnyMyActiveEntitlement' test.out

#- 277 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'mB60ea7X' \
    --appId 'ItZS8KIu' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 278 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace '9T604oPa' \
    --entitlementClazz 'CODE' \
    --itemId 'gyShKuLB' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 279 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace '7pQLZiWV' \
    --entitlementClazz 'CODE' \
    --sku 'c8PVwShV' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 280 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'Qz7FY3h2' \
    --appIds '["oVVScVv3"]' \
    --itemIds '["YTBM4teO"]' \
    --skus '["pqevsWvM"]' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetEntitlementOwnershipToken' test.out

#- 281 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'hiheE2KM' \
    --namespace '7Ctal5z7' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetMyWallet' test.out

#- 282 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 14}' \
    --namespace 'LiOYz1jF' \
    --userId 'fu1y1d77' \
    > test.out 2>&1
eval_tap $? 282 'PublicSyncPsnDlcInventory' test.out

#- 283 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "D8ZNOfHy", "steamId": "enhbRZ4a"}' \
    --namespace '9UjjjU0E' \
    --userId 'ggYLcGiE' \
    > test.out 2>&1
eval_tap $? 283 'SyncSteamDLC' test.out

#- 284 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "DZbDl9Ze"}' \
    --namespace 'ZH3M87v0' \
    --userId 'FhdKDEfX' \
    > test.out 2>&1
eval_tap $? 284 'SyncXboxDLC' test.out

#- 285 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'RhaO0AYS' \
    --userId 'qvcV2Lqf' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'X28Je4ky' \
    --itemId '["PQjgDJNO"]' \
    --limit '61' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 285 'PublicQueryUserEntitlements' test.out

#- 286 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'tdEtN4sE' \
    --userId 'ebnQucga' \
    --appId 'op5NEdhu' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetUserAppEntitlementByAppId' test.out

#- 287 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'rScNiUxn' \
    --userId 'JUewUVhk' \
    --limit '64' \
    --offset '87' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryUserEntitlementsByAppType' test.out

#- 288 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'LCb9evyw' \
    --userId 'ZywunLIm' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'hyZsb7Yh' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserEntitlementByItemId' test.out

#- 289 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'hQbDxLRK' \
    --userId 'xzUtpKDC' \
    --entitlementClazz 'APP' \
    --sku 'l2otjUWK' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserEntitlementBySku' test.out

#- 290 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'xgW6n8AJ' \
    --userId 'aeqxTPgZ' \
    --appIds '["KFi3SBGl"]' \
    --itemIds '["CD4ig5ZR"]' \
    --skus '["oJd1as1W"]' \
    > test.out 2>&1
eval_tap $? 290 'PublicExistsAnyUserActiveEntitlement' test.out

#- 291 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'kfh3l8Hy' \
    --userId 'GWZTdpmT' \
    --appId 'xPUBFjTI' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 292 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'IKcXlxPf' \
    --userId 'dDyjJ0ww' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'YeljMyoe' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 293 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'b3gsMOMd' \
    --userId 'qbt4PnuF' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '18ijp3Cm' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 294 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'zrfVIa1v' \
    --namespace 'i9oky2P7' \
    --userId 'fIgBRSBl' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserEntitlement' test.out

#- 295 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 46}' \
    --entitlementId 'ukoOTCos' \
    --namespace 'jAXo6ljB' \
    --userId 'VW8r7nyN' \
    > test.out 2>&1
eval_tap $? 295 'PublicConsumeUserEntitlement' test.out

#- 296 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "cVl6ZB3b", "language": "hUPb-Vxko", "region": "wGRJbZqX"}' \
    --namespace 'gQ9azOre' \
    --userId 'TsviZmgm' \
    > test.out 2>&1
eval_tap $? 296 'PublicRedeemCode' test.out

#- 297 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "WMG-649", "productId": "3zT6xRqy", "receiptData": "V0tlLaMY", "region": "L1p95v9m", "transactionId": "OiIFEdQ2"}' \
    --namespace 'RKeQy2WR' \
    --userId 'ztR5qztu' \
    > test.out 2>&1
eval_tap $? 297 'PublicFulfillAppleIAPItem' test.out

#- 298 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "hVaJDWx2"}' \
    --namespace 'OdrUV7bh' \
    --userId 'cKGIOZcB' \
    > test.out 2>&1
eval_tap $? 298 'SyncEpicGamesInventory' test.out

#- 299 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": false, "language": "xK_XhPU", "orderId": "ZNxhbsaS", "packageName": "FtTmbIf2", "productId": "hFQRmsi0", "purchaseTime": 25, "purchaseToken": "elJQkLtV", "region": "2QnPsmhF"}' \
    --namespace 'VPtJTGig' \
    --userId '12OdDnxX' \
    > test.out 2>&1
eval_tap $? 299 'PublicFulfillGoogleIAPItem' test.out

#- 300 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "uJoZgOG4", "price": 0.3073435175433483, "productId": "eWVMI9K1", "serviceLabel": 8}' \
    --namespace 'J6xC2h6U' \
    --userId '8TgR2k2R' \
    > test.out 2>&1
eval_tap $? 300 'PublicReconcilePlayStationStore' test.out

#- 301 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "kEr8XbmQ", "language": "UVeM_vb", "region": "QPhwwHR0", "stadiaPlayerId": "qyfFcSCd"}' \
    --namespace 'kfe5eawF' \
    --userId 'pdHeH5p8' \
    > test.out 2>&1
eval_tap $? 301 'SyncStadiaEntitlement' test.out

#- 302 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "Zx8jy7nx", "currencyCode": "GzOTBpmm", "language": "Ue-dTWB-330", "price": 0.013041918173782974, "productId": "LdFifUk9", "region": "p700jB0p", "steamId": "4HpK8pvu"}' \
    --namespace 'fSxYM0Vk' \
    --userId 'uqOKrhvM' \
    > test.out 2>&1
eval_tap $? 302 'SyncSteamInventory' test.out

#- 303 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "wvD04UY8", "language": "HV_RjZa", "region": "6FOuhQIB"}' \
    --namespace 'Abup1fpW' \
    --userId 'sO6fW468' \
    > test.out 2>&1
eval_tap $? 303 'SyncTwitchDropsEntitlement' test.out

#- 304 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "fWxqRkJD", "price": 0.14145640345472266, "productId": "NhYDgVm0", "xstsToken": "TCaos4wy"}' \
    --namespace 'jaPP6Cle' \
    --userId 'kQGm25KY' \
    > test.out 2>&1
eval_tap $? 304 'SyncXboxInventory' test.out

#- 305 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'mFZxQr4x' \
    --userId 'bV63gcdU' \
    --itemId '4vyIPJeR' \
    --limit '18' \
    --offset '56' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 305 'PublicQueryUserOrders' test.out

#- 306 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "7UK5nEmw", "discountedPrice": 37, "ext": {"QtSfDqA4": {}}, "itemId": "CysEX4VO", "language": "NeK_EChW-uA", "price": 59, "quantity": 15, "region": "3m2eX31q", "returnUrl": "VPH2VHDz"}' \
    --namespace 'nf57fQ1P' \
    --userId 'Y5uDkQ8z' \
    > test.out 2>&1
eval_tap $? 306 'PublicCreateUserOrder' test.out

#- 307 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'pNRwycEA' \
    --orderNo 'ShpFLpqA' \
    --userId 'x1N5IGeb' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserOrder' test.out

#- 308 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'NuvyrghV' \
    --orderNo 'dsSwDc9N' \
    --userId 'JRX9ZdaC' \
    > test.out 2>&1
eval_tap $? 308 'PublicCancelUserOrder' test.out

#- 309 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '8sja1J7e' \
    --orderNo 'ucGSSxZJ' \
    --userId 'Pto04wTE' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserOrderHistories' test.out

#- 310 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'I8isXmyA' \
    --orderNo 'GW2rZ7bY' \
    --userId 'vVW26Oay' \
    > test.out 2>&1
eval_tap $? 310 'PublicDownloadUserOrderReceipt' test.out

#- 311 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'sx72rwV3' \
    --userId 'MdXNVRDz' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetPaymentAccounts' test.out

#- 312 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'T2sBbflg' \
    --namespace '7cD247c1' \
    --type 'card' \
    --userId '18StYu6w' \
    > test.out 2>&1
eval_tap $? 312 'PublicDeletePaymentAccount' test.out

#- 313 PublicQueryUserSubscriptions
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
    > test.out 2>&1
eval_tap $? 313 'PublicQueryUserSubscriptions' test.out

#- 314 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "c03W7oOd", "itemId": "pY5ZJChQ", "language": "Pdu-EXJQ", "region": "nJ6ryQ4w", "returnUrl": "Cg5Itn9T", "source": "YOR2n8qF"}' \
    --namespace 'jjSZx0Fe' \
    --userId 'RdmgOta6' \
    > test.out 2>&1
eval_tap $? 314 'PublicSubscribeSubscription' test.out

#- 315 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'pcKzSPfe' \
    --userId 'k369fIM1' \
    --itemId 'tcxwt2Xq' \
    > test.out 2>&1
eval_tap $? 315 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 316 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'PFaIxBgz' \
    --subscriptionId 'RO8GKycd' \
    --userId 'cXuULpvu' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserSubscription' test.out

#- 317 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'BNRzUbH0' \
    --subscriptionId 'hI7yCEyj' \
    --userId 'KXQPnomA' \
    > test.out 2>&1
eval_tap $? 317 'PublicChangeSubscriptionBillingAccount' test.out

#- 318 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": true, "reason": "HMpmDvt4"}' \
    --namespace 'tkWavQ0j' \
    --subscriptionId 'o17Qq6AF' \
    --userId 'dE7URb19' \
    > test.out 2>&1
eval_tap $? 318 'PublicCancelSubscription' test.out

#- 319 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'BcvWfPxH' \
    --subscriptionId 'PQaUClyA' \
    --userId 'jfGkGwDs' \
    --excludeFree 'False' \
    --limit '28' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserSubscriptionBillingHistories' test.out

#- 320 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'dZjNjjtl' \
    --namespace '8XIGZV3G' \
    --userId 'BXIHxWGX' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetWallet' test.out

#- 321 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '4iwwHLoh' \
    --namespace 'aKvD9nNe' \
    --userId 'Li2tRrcl' \
    --limit '77' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 321 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE