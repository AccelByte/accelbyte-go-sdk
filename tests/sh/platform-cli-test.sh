#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

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
echo "1..323"

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

#- 138 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace '23UHmk0l' \
    --storeId 'pJ4JLl01' \
    --action 'DELETE' \
    --itemType 'CODE' \
    --limit '74' \
    --offset '29' \
    --sortBy 'DUoVRUb3' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd '4Sp09cKm' \
    --updatedAtStart 'jRUbZVBV' \
    > test.out 2>&1
eval_tap $? 138 'QueryChanges' test.out

#- 139 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace 'S7OK2Zrd' \
    --storeId 'csckMekR' \
    > test.out 2>&1
eval_tap $? 139 'PublishAll' test.out

#- 140 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace 'OWZ2KUTq' \
    --storeId 'kK2eFaGL' \
    --targetStoreId 'oSmEEPbL' \
    > test.out 2>&1
eval_tap $? 140 'CloneStore' test.out

#- 141 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'ywJsyUie' \
    --storeId '6fZgLllU' \
    > test.out 2>&1
eval_tap $? 141 'ExportStore' test.out

#- 142 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'PsO8lg46' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '7006vL2w' \
    --limit '0' \
    --offset '0' \
    --sku 'jDAOx0iJ' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'eaktqv2W' \
    > test.out 2>&1
eval_tap $? 142 'QuerySubscriptions' test.out

#- 143 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'kljQuD5m' \
    --subscriptionId 'nJONqHGq' \
    > test.out 2>&1
eval_tap $? 143 'RecurringChargeSubscription' test.out

#- 144 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '8mB7mF2l' \
    --namespace 'MFcaghFX' \
    > test.out 2>&1
eval_tap $? 144 'GetTicketDynamic' test.out

#- 145 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "JIJflRHF"}' \
    --boothName 'csIqCy4x' \
    --namespace 'DifSSQ5O' \
    > test.out 2>&1
eval_tap $? 145 'DecreaseTicketSale' test.out

#- 146 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'n2ccEcl3' \
    --namespace 'xeiO4bwF' \
    > test.out 2>&1
eval_tap $? 146 'GetTicketBoothID' test.out

#- 147 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 70, "orderNo": "OjGoGxKM"}' \
    --boothName '3qMce5tf' \
    --namespace 'LcpjFZMK' \
    > test.out 2>&1
eval_tap $? 147 'IncreaseTicketSale' test.out

#- 148 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'Cbp0pEbL' \
    --userId 'CLFpHxMY' \
    > test.out 2>&1
eval_tap $? 148 'AnonymizeCampaign' test.out

#- 149 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'F836075x' \
    --userId 'EpzdnYtp' \
    > test.out 2>&1
eval_tap $? 149 'AnonymizeEntitlement' test.out

#- 150 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'ja5ig2is' \
    --userId 'QZga6Vy7' \
    > test.out 2>&1
eval_tap $? 150 'AnonymizeFulfillment' test.out

#- 151 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace '6izPiQRj' \
    --userId 'Ya8fv5fI' \
    > test.out 2>&1
eval_tap $? 151 'AnonymizeIntegration' test.out

#- 152 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 't22tIZhj' \
    --userId 'hgkigW22' \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeOrder' test.out

#- 153 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'zXMWXfbc' \
    --userId 'M0GIALIb' \
    > test.out 2>&1
eval_tap $? 153 'AnonymizePayment' test.out

#- 154 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'FCQgBcLN' \
    --userId 'T6iOQVYx' \
    > test.out 2>&1
eval_tap $? 154 'AnonymizeSubscription' test.out

#- 155 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace '5rW2gMsI' \
    --userId '1aYBitSn' \
    > test.out 2>&1
eval_tap $? 155 'AnonymizeWallet' test.out

#- 156 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace '3UDeKj97' \
    --userId 'I4WYXLqj' \
    --activeOnly 'False' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'TraBxWRT' \
    --itemId '["VuYEqGlK"]' \
    --limit '58' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 156 'QueryUserEntitlements' test.out

#- 157 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1993-10-12T00:00:00Z", "grantedCode": "XBrXiQcd", "itemId": "9IW8kiCK", "itemNamespace": "eQJWZBvc", "language": "etV-bGBN-001", "quantity": 30, "region": "CXYSMiy8", "source": "GIFT", "startDate": "1993-05-08T00:00:00Z", "storeId": "EQBg36my"}]' \
    --namespace '3sY2clrD' \
    --userId 'cain0cOV' \
    > test.out 2>&1
eval_tap $? 157 'GrantUserEntitlement' test.out

#- 158 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'F1zHwDTI' \
    --userId '0sJ1Q0kp' \
    --activeOnly 'False' \
    --appId 'MTggSP2S' \
    > test.out 2>&1
eval_tap $? 158 'GetUserAppEntitlementByAppId' test.out

#- 159 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'LcuAP7vU' \
    --userId '971Czw2n' \
    --activeOnly 'False' \
    --limit '13' \
    --offset '56' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 159 'QueryUserEntitlementsByAppType' test.out

#- 160 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'ywhu6MjO' \
    --userId 'juGzo1Fz' \
    --activeOnly 'True' \
    --entitlementClazz 'APP' \
    --itemId 'Sn98N8qO' \
    > test.out 2>&1
eval_tap $? 160 'GetUserEntitlementByItemId' test.out

#- 161 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'UA0z92Ra' \
    --userId 'De8ngT8L' \
    --activeOnly 'False' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'nG1LZyF2' \
    > test.out 2>&1
eval_tap $? 161 'GetUserEntitlementBySku' test.out

#- 162 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'mdYY6ZMf' \
    --userId 'uTYTKsue' \
    --appIds '["48qBEBNA"]' \
    --itemIds '["V5BTe6ec"]' \
    --skus '["1zA92URC"]' \
    > test.out 2>&1
eval_tap $? 162 'ExistsAnyUserActiveEntitlement' test.out

#- 163 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'LSGPmRBZ' \
    --userId 'WunHW7MY' \
    --itemIds '["vr6QA7Pp"]' \
    > test.out 2>&1
eval_tap $? 163 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 164 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'epc92HA9' \
    --userId '4eACdeyf' \
    --appId 'UpgiPpf8' \
    > test.out 2>&1
eval_tap $? 164 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 165 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'nxKJ3dnm' \
    --userId 'tPwa64Y4' \
    --entitlementClazz 'APP' \
    --itemId 'PEKMhhu9' \
    > test.out 2>&1
eval_tap $? 165 'GetUserEntitlementOwnershipByItemId' test.out

#- 166 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'a6f3xJNt' \
    --userId 'UlKLlIIA' \
    --entitlementClazz 'APP' \
    --sku 'Hbm5M6Ls' \
    > test.out 2>&1
eval_tap $? 166 'GetUserEntitlementOwnershipBySku' test.out

#- 167 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'Y1VMuIEc' \
    --userId 'Rls68M3M' \
    --entitlementIds 'PMRPBepy' \
    > test.out 2>&1
eval_tap $? 167 'RevokeUserEntitlements' test.out

#- 168 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'yMz6zfR1' \
    --namespace 'pvTYYtDO' \
    --userId 'iEi4RuEc' \
    > test.out 2>&1
eval_tap $? 168 'GetUserEntitlement' test.out

#- 169 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1987-08-15T00:00:00Z", "nullFieldList": ["SGhpOZQF"], "startDate": "1976-07-01T00:00:00Z", "status": "INACTIVE", "useCount": 40}' \
    --entitlementId 'KGDFgK49' \
    --namespace 'YuKnXks0' \
    --userId 'm8ANrcRa' \
    > test.out 2>&1
eval_tap $? 169 'UpdateUserEntitlement' test.out

#- 170 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"useCount": 22}' \
    --entitlementId '7ta3fojA' \
    --namespace '3h4MMW3A' \
    --userId 'J5zlsFBw' \
    > test.out 2>&1
eval_tap $? 170 'ConsumeUserEntitlement' test.out

#- 171 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'jvLYvmg6' \
    --namespace 'avudQFF1' \
    --userId 'CPNY9u2d' \
    > test.out 2>&1
eval_tap $? 171 'DisableUserEntitlement' test.out

#- 172 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'VYdglOOo' \
    --namespace 'CeK0kPKm' \
    --userId 'BqVux3lX' \
    > test.out 2>&1
eval_tap $? 172 'EnableUserEntitlement' test.out

#- 173 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'cD8aertA' \
    --namespace 'VCqs8XT8' \
    --userId 'xy3nJ06K' \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementHistories' test.out

#- 174 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'kseA0ARj' \
    --namespace '9ricfayv' \
    --userId 'nhi8MDdY' \
    > test.out 2>&1
eval_tap $? 174 'RevokeUserEntitlement' test.out

#- 175 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 97, "endDate": "1989-09-25T00:00:00Z", "itemId": "oaUkYnQp", "itemSku": "5egdmVE8", "language": "ImivNtQx", "order": {"currency": {"currencyCode": "qWRKHohO", "currencySymbol": "DoWOr98k", "currencyType": "REAL", "decimals": 55, "namespace": "Uas9jjz2"}, "ext": {"FrgiaGrc": {}}, "free": true}, "orderNo": "7dIOVKIP", "quantity": 88, "region": "JJHo5W8t", "source": "OTHER", "startDate": "1987-04-26T00:00:00Z", "storeId": "u9SdbxSX"}' \
    --namespace 'crEFCwqe' \
    --userId 'GNLdIBRd' \
    > test.out 2>&1
eval_tap $? 175 'FulfillItem' test.out

#- 176 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "liFQVMKE", "language": "vuw-313", "region": "EvcjaSgE"}' \
    --namespace 'h6jJnFxi' \
    --userId 'nIHJ1o7a' \
    > test.out 2>&1
eval_tap $? 176 'RedeemCode' test.out

#- 177 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"rewards": [{"currency": {"currencyCode": "q5Zznd5e", "namespace": "acobTsuR"}, "item": {"itemId": "lhreQVFI", "itemSku": "D3o8hJWV", "itemType": "jKIOAw70"}, "quantity": 59, "type": "CURRENCY"}], "source": "REWARD"}' \
    --namespace 'HhSGWUvz' \
    --userId 'q1Za3IBC' \
    > test.out 2>&1
eval_tap $? 177 'FulfillRewards' test.out

#- 178 QueryUserIAPOrders
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
eval_tap $? 178 'QueryUserIAPOrders' test.out

#- 179 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'XDZBVMJy' \
    --userId 'JeKFO92Y' \
    > test.out 2>&1
eval_tap $? 179 'QueryAllUserIAPOrders' test.out

#- 180 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "AzV-zU", "productId": "O4N9S2YC", "region": "gHa6XBcv", "type": "PLAYSTATION"}' \
    --namespace '5rUtWHCn' \
    --userId 'hmzzppV7' \
    > test.out 2>&1
eval_tap $? 180 'MockFulfillIAPItem' test.out

#- 181 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'tKNKYUQV' \
    --userId 'BXymWcNl' \
    --itemId 'HaFxYaGH' \
    --limit '93' \
    --offset '31' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 181 'QueryUserOrders' test.out

#- 182 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'BFyOrFKt' \
    --userId 'xGNAi0fq' \
    --itemId '4xChPLd2' \
    > test.out 2>&1
eval_tap $? 182 'CountOfPurchasedItem' test.out

#- 183 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'lOopc7Xo' \
    --orderNo 'Vpdd6rCp' \
    --userId 'yMrnH9YH' \
    > test.out 2>&1
eval_tap $? 183 'GetUserOrder' test.out

#- 184 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "CHARGED", "statusReason": "7KnCVOKY"}' \
    --namespace '2zsBRGtd' \
    --orderNo '8QY2OLbi' \
    --userId 'jrvfr8hk' \
    > test.out 2>&1
eval_tap $? 184 'UpdateUserOrderStatus' test.out

#- 185 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'njWUWdMU' \
    --orderNo 'XHvw4pNl' \
    --userId 'GLjdBxLM' \
    > test.out 2>&1
eval_tap $? 185 'FulfillUserOrder' test.out

#- 186 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace '079pDAbT' \
    --orderNo 'gmsEYEq2' \
    --userId 'GkYK1vYm' \
    > test.out 2>&1
eval_tap $? 186 'GetUserOrderGrant' test.out

#- 187 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace '9flXQ7CQ' \
    --orderNo 'oemnQG0d' \
    --userId 'H0NVM9VE' \
    > test.out 2>&1
eval_tap $? 187 'GetUserOrderHistories' test.out

#- 188 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "HTPqDhkc"}, "authorisedTime": "1981-06-21T00:00:00Z", "chargebackReversedTime": "1977-07-26T00:00:00Z", "chargebackTime": "1987-03-05T00:00:00Z", "chargedTime": "1990-11-01T00:00:00Z", "createdTime": "1971-04-30T00:00:00Z", "currency": {"currencyCode": "BJHml0LJ", "currencySymbol": "mpPi4mqh", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "iCZLGGP5"}, "customParameters": {"UXkHNTMa": {}}, "extOrderNo": "pp5Sbons", "extTxId": "UJKADr60", "extUserId": "EkdFrpLs", "issuedAt": "1987-06-05T00:00:00Z", "metadata": {"9yTXWUSC": "QcMsHN7r"}, "namespace": "eI22ks7I", "nonceStr": "12tAZc8s", "paymentMethod": "xxLx9XQe", "paymentMethodFee": 32, "paymentOrderNo": "NWLm8cNJ", "paymentProvider": "WALLET", "paymentProviderFee": 100, "paymentStationUrl": "H5J4WiJL", "price": 42, "refundedTime": "1990-06-21T00:00:00Z", "salesTax": 67, "sandbox": true, "sku": "tw2Mjcy9", "status": "DELETED", "statusReason": "L6Zs5Bu2", "subscriptionId": "XYopLWZe", "subtotalPrice": 93, "targetNamespace": "KJJNftRp", "targetUserId": "Ggk1iseR", "tax": 61, "totalPrice": 51, "totalTax": 50, "txEndTime": "1992-09-12T00:00:00Z", "type": "6z9wmuHd", "userId": "dyOdibI1", "vat": 74}' \
    --namespace 'VyqbdY8D' \
    --orderNo 'GZKAuoIK' \
    --userId 'z3Pp3zLW' \
    > test.out 2>&1
eval_tap $? 188 'ProcessUserOrderNotification' test.out

#- 189 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'UxMzMtSm' \
    --orderNo 'MmZP8nG0' \
    --userId 'FoQP8q7a' \
    > test.out 2>&1
eval_tap $? 189 'DownloadUserOrderReceipt' test.out

#- 190 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "Ssb85gAh", "currencyNamespace": "9RD3ZzN6", "customParameters": {"N1iJ8ltt": {}}, "description": "9IRqCflg", "extOrderNo": "ln6r5f0s", "extUserId": "5H6lCf3Q", "itemType": "APP", "language": "ll_AVle_dG", "metadata": {"2cvHfMRu": "pDA5xbjs"}, "notifyUrl": "3XRdHUJ0", "omitNotification": true, "price": 25, "recurringPaymentOrderNo": "flIXkgJ6", "region": "zkTwoakq", "returnUrl": "7sEejFZ1", "sandbox": true, "sku": "ONXb9w9h", "subscriptionId": "sQHszIsf", "title": "rlzKpQdd"}' \
    --namespace '58dZP5Rv' \
    --userId 'rinNtvBt' \
    > test.out 2>&1
eval_tap $? 190 'CreateUserPaymentOrder' test.out

#- 191 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "qFSkA68m"}' \
    --namespace 'IVYJ5pSV' \
    --paymentOrderNo 'xBsLhty3' \
    --userId 'pecToXA4' \
    > test.out 2>&1
eval_tap $? 191 'RefundUserPaymentOrder' test.out

#- 192 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "M1oUFPhg", "orderNo": "o7Z6mwNC"}' \
    --namespace '4FY69mM8' \
    --userId '7joJNOGB' \
    > test.out 2>&1
eval_tap $? 192 'ApplyUserRedemption' test.out

#- 193 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace '83Ns6Hl5' \
    --userId 'Poab6lKo' \
    --chargeStatus 'NEVER' \
    --itemId 'NBUzIxOf' \
    --limit '13' \
    --offset '23' \
    --sku 'quS2q2Do' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 193 'QueryUserSubscriptions' test.out

#- 194 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'vFtKa2mO' \
    --userId 'AqOokV1p' \
    --excludeSystem 'False' \
    --limit '46' \
    --offset '84' \
    --subscriptionId '2YriTPfi' \
    > test.out 2>&1
eval_tap $? 194 'GetUserSubscriptionActivities' test.out

#- 195 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 30, "itemId": "D67jI2hi", "language": "ZkrtLnh2", "reason": "U1RQlMxk", "region": "fNMPNtqv", "source": "2TMz1b7S"}' \
    --namespace 'nzkXOek8' \
    --userId '3Igm1wkS' \
    > test.out 2>&1
eval_tap $? 195 'PlatformSubscribeSubscription' test.out

#- 196 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'WsYvAsu1' \
    --userId '8obUdc8m' \
    --itemId 'bvXcwcgM' \
    > test.out 2>&1
eval_tap $? 196 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 197 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'qOXMziXr' \
    --subscriptionId 'VdsEc3Cl' \
    --userId 'FP3mJwus' \
    > test.out 2>&1
eval_tap $? 197 'GetUserSubscription' test.out

#- 198 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'CBTe4kLc' \
    --subscriptionId 'uqL40NYg' \
    --userId 'ekRavpaG' \
    > test.out 2>&1
eval_tap $? 198 'DeleteUserSubscription' test.out

#- 199 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": true, "reason": "9BTyCCyN"}' \
    --namespace '4Fw9i6mI' \
    --subscriptionId '2W3tjjCq' \
    --userId 'PVyYs01h' \
    --force 'True' \
    > test.out 2>&1
eval_tap $? 199 'CancelSubscription' test.out

#- 200 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 100, "reason": "zWw3qrcx"}' \
    --namespace 'M0DPAXQB' \
    --subscriptionId 'NMP7j3xf' \
    --userId 'PaoZaWFs' \
    > test.out 2>&1
eval_tap $? 200 'GrantDaysToSubscription' test.out

#- 201 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'pkU5kn6P' \
    --subscriptionId 'lPqD4Agf' \
    --userId 'asBfclBh' \
    --excludeFree 'False' \
    --limit '3' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 201 'GetUserSubscriptionBillingHistories' test.out

#- 202 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "nmghKwPy"}, "authorisedTime": "1994-09-29T00:00:00Z", "chargebackReversedTime": "1977-05-10T00:00:00Z", "chargebackTime": "1971-09-29T00:00:00Z", "chargedTime": "1991-10-16T00:00:00Z", "createdTime": "1990-06-07T00:00:00Z", "currency": {"currencyCode": "lyfrENVQ", "currencySymbol": "kpcaWHf6", "currencyType": "VIRTUAL", "decimals": 81, "namespace": "Oljn7c6c"}, "customParameters": {"9efJI02T": {}}, "extOrderNo": "ZxrgLBFJ", "extTxId": "EkphFz0h", "extUserId": "6WpoVpVc", "issuedAt": "1998-09-20T00:00:00Z", "metadata": {"BBmj6cEi": "02hXl42u"}, "namespace": "bCRfy4Gj", "nonceStr": "Kn5ItHXL", "paymentMethod": "DZqpRhqn", "paymentMethodFee": 87, "paymentOrderNo": "742GcbLu", "paymentProvider": "PAYPAL", "paymentProviderFee": 50, "paymentStationUrl": "mdjNhT0S", "price": 20, "refundedTime": "1979-07-11T00:00:00Z", "salesTax": 11, "sandbox": true, "sku": "SaZc4SA1", "status": "REFUNDING", "statusReason": "8gQCD7aB", "subscriptionId": "HWCYevNk", "subtotalPrice": 11, "targetNamespace": "cQvl4Oso", "targetUserId": "7tx65zXC", "tax": 17, "totalPrice": 90, "totalTax": 10, "txEndTime": "1975-04-23T00:00:00Z", "type": "rLFqTmIU", "userId": "FUoonHBI", "vat": 89}' \
    --namespace 'ZFHfm0F8' \
    --subscriptionId 'vS2BrZ3n' \
    --userId 'q88YSSD7' \
    > test.out 2>&1
eval_tap $? 202 'ProcessUserSubscriptionNotification' test.out

#- 203 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 51, "orderNo": "V0C8FvVU"}' \
    --boothName '3kRXBGPX' \
    --namespace 'Idft1biZ' \
    --userId 'HuhWyFPH' \
    > test.out 2>&1
eval_tap $? 203 'AcquireUserTicket' test.out

#- 204 CheckWallet
samples/cli/sample-apps Platform checkWallet \
    --currencyCode 'dXcyvZEh' \
    --namespace 'YeUSy5Uk' \
    --userId 'c65naP11' \
    > test.out 2>&1
eval_tap $? 204 'CheckWallet' test.out

#- 205 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 86, "reason": "8Xww9vq9", "source": "ACHIEVEMENT"}' \
    --currencyCode 'Ma2Btgwy' \
    --namespace 'uf2fjV30' \
    --userId 'SLxi7uyh' \
    > test.out 2>&1
eval_tap $? 205 'CreditUserWallet' test.out

#- 206 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 0}' \
    --currencyCode 'eFtcO9XN' \
    --namespace 'y63QO9vW' \
    --userId '0ck7TEDE' \
    > test.out 2>&1
eval_tap $? 206 'PayWithUserWallet' test.out

#- 207 GetUserWallet
samples/cli/sample-apps Platform getUserWallet \
    --namespace '8LeEQBeG' \
    --userId 'PLiE6tHC' \
    --walletId 'r0GPFvT0' \
    > test.out 2>&1
eval_tap $? 207 'GetUserWallet' test.out

#- 208 DebitUserWallet
samples/cli/sample-apps Platform debitUserWallet \
    --body '{"amount": 88, "reason": "AK91y5vC"}' \
    --namespace 'eBIJq0B9' \
    --userId 'UcI6c5cr' \
    --walletId 'e9ealHOZ' \
    > test.out 2>&1
eval_tap $? 208 'DebitUserWallet' test.out

#- 209 DisableUserWallet
samples/cli/sample-apps Platform disableUserWallet \
    --namespace 'phcLncnj' \
    --userId 'nmyU8FSx' \
    --walletId 'XdCrskoF' \
    > test.out 2>&1
eval_tap $? 209 'DisableUserWallet' test.out

#- 210 EnableUserWallet
samples/cli/sample-apps Platform enableUserWallet \
    --namespace 'qnowq9La' \
    --userId 'z1GLt5Mh' \
    --walletId 'f8Z7ahmb' \
    > test.out 2>&1
eval_tap $? 210 'EnableUserWallet' test.out

#- 211 ListUserWalletTransactions
samples/cli/sample-apps Platform listUserWalletTransactions \
    --namespace 'VPm2g7xA' \
    --userId 'FfRRLUjf' \
    --walletId 'WS9sftIf' \
    --limit '66' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 211 'ListUserWalletTransactions' test.out

#- 212 QueryWallets
samples/cli/sample-apps Platform queryWallets \
    --namespace 'e5bUTSXO' \
    --currencyCode 'v12PMcRO' \
    --limit '60' \
    --offset '77' \
    --userId 'kre5q7Fv' \
    > test.out 2>&1
eval_tap $? 212 'QueryWallets' test.out

#- 213 GetWallet
samples/cli/sample-apps Platform getWallet \
    --namespace 'aACp6he0' \
    --walletId 'fzjkPNNS' \
    > test.out 2>&1
eval_tap $? 213 'GetWallet' test.out

#- 214 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '0BfgF6in' \
    --end 'IRsZ5hrq' \
    --start 'NzVszGVP' \
    > test.out 2>&1
eval_tap $? 214 'SyncOrders' test.out

#- 215 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["5P1iwhcf"], "apiKey": "30C1KHRZ", "authoriseAsCapture": true, "blockedPaymentMethods": ["5vbfZvYI"], "clientKey": "FFctEKOL", "dropInSettings": "xSRxe0wm", "liveEndpointUrlPrefix": "WBMcNiWo", "merchantAccount": "obB6o6al", "notificationHmacKey": "TQcP0EpE", "notificationPassword": "9wGNVwkg", "notificationUsername": "fJJ2HIal", "returnUrl": "fzgRpTf9", "settings": "lxF1JPBi"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 215 'TestAdyenConfig' test.out

#- 216 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "XZtrGe8L", "privateKey": "yOH24nne", "publicKey": "ZHFeRld0", "returnUrl": "bGA7JxWY"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 216 'TestAliPayConfig' test.out

#- 217 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "aEaimvok", "secretKey": "cWX59kwi"}' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 217 'TestCheckoutConfig' test.out

#- 218 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'HT6Ivd0f' \
    --region 'GpU209nV' \
    > test.out 2>&1
eval_tap $? 218 'DebugMatchedPaymentMerchantConfig' test.out

#- 219 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "RclumQTF", "clientSecret": "vr5rRyYz", "returnUrl": "aNmz3PjM", "webHookId": "x2T89NTr"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 219 'TestPayPalConfig' test.out

#- 220 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["RUCXFkru"], "publishableKey": "xegpkcXC", "secretKey": "fzgcvv0W", "webhookSecret": "E5EQhcom"}' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 220 'TestStripeConfig' test.out

#- 221 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "7cpsLgr2", "key": "zEnjyRNj", "mchid": "EC3FMDcZ", "returnUrl": "vwwf8aU9"}' \
    > test.out 2>&1
eval_tap $? 221 'TestWxPayConfig' test.out

#- 222 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "8In31mF4", "flowCompletionUrl": "jlwKyGxT", "merchantId": 63, "projectId": 23, "projectSecretKey": "5q1Np0sT"}' \
    > test.out 2>&1
eval_tap $? 222 'TestXsollaConfig' test.out

#- 223 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '1X8J2eAW' \
    > test.out 2>&1
eval_tap $? 223 'GetPaymentMerchantConfig' test.out

#- 224 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["Ozjmh9Uz"], "apiKey": "Ifnhoo6x", "authoriseAsCapture": false, "blockedPaymentMethods": ["TleUnJFM"], "clientKey": "7XhoDxGi", "dropInSettings": "k2JSfZ64", "liveEndpointUrlPrefix": "wWePq610", "merchantAccount": "3PONKIS7", "notificationHmacKey": "F9emW4R1", "notificationPassword": "5tAsiG31", "notificationUsername": "CEyUOuOZ", "returnUrl": "hmnHkvek", "settings": "6Aa5kNno"}' \
    --id 'clxs9kxc' \
    --sandbox 'True' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 224 'UpdateAdyenConfig' test.out

#- 225 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'V7mCYfWK' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 225 'TestAdyenConfigById' test.out

#- 226 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "Y9CsQYsG", "privateKey": "yhEOntEk", "publicKey": "edM1A0bF", "returnUrl": "qvjxbT3Y"}' \
    --id 'uVdaBN5R' \
    --sandbox 'False' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 226 'UpdateAliPayConfig' test.out

#- 227 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'cjuDvNrX' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 227 'TestAliPayConfigById' test.out

#- 228 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "fh5tZ0hq", "secretKey": "JLjQUmoY"}' \
    --id 'UnC849OB' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 228 'UpdateCheckoutConfig' test.out

#- 229 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'ofGAAaMp' \
    --sandbox 'True' \
    > test.out 2>&1
eval_tap $? 229 'TestCheckoutConfigById' test.out

#- 230 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "QArU4RS0", "clientSecret": "FQRy5Qz5", "returnUrl": "VcyfBpHj", "webHookId": "tvFwKSJy"}' \
    --id 'Zeqvpevc' \
    --sandbox 'True' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 230 'UpdatePayPalConfig' test.out

#- 231 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '9LTorIyx' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 231 'TestPayPalConfigById' test.out

#- 232 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["Ly7ds3g3"], "publishableKey": "BuHTPF19", "secretKey": "dBYFws5Y", "webhookSecret": "a4eOwWqW"}' \
    --id '8HiLpTi1' \
    --sandbox 'False' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 232 'UpdateStripeConfig' test.out

#- 233 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'gM5kYu36' \
    --sandbox 'False' \
    > test.out 2>&1
eval_tap $? 233 'TestStripeConfigById' test.out

#- 234 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "TL55W4ws", "key": "3KCyplY1", "mchid": "ocKDCVaq", "returnUrl": "rVeegT3u"}' \
    --id 'GDIIcvuu' \
    --validate 'False' \
    > test.out 2>&1
eval_tap $? 234 'UpdateWxPayConfig' test.out

#- 235 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'kt8TC38m' \
    > test.out 2>&1
eval_tap $? 235 'UpdateWxPayConfigCert' test.out

#- 236 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'YoUanQT4' \
    > test.out 2>&1
eval_tap $? 236 'TestWxPayConfigById' test.out

#- 237 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "Mmznv7r2", "flowCompletionUrl": "jthibgeC", "merchantId": 75, "projectId": 99, "projectSecretKey": "41qyOiLg"}' \
    --id 'd8Wy739Q' \
    --validate 'True' \
    > test.out 2>&1
eval_tap $? 237 'UpdateXsollaConfig' test.out

#- 238 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'w0TEzpd7' \
    > test.out 2>&1
eval_tap $? 238 'TestXsollaConfigById' test.out

#- 239 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    --id '2i3DM6et' \
    > test.out 2>&1
eval_tap $? 239 'UpdateXsollaUIConfig' test.out

#- 240 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '10' \
    --namespace 'I7TzC3sK' \
    --offset '24' \
    --region 'tsyEKdO6' \
    > test.out 2>&1
eval_tap $? 240 'QueryPaymentProviderConfig' test.out

#- 241 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "3zGu71qT", "region": "SSJEbWlE", "sandboxTaxJarApiToken": "Tp9XOCA1", "specials": ["ADYEN"], "taxJarApiToken": "akAWQfBu", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 241 'CreatePaymentProviderConfig' test.out

#- 242 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 242 'GetAggregatePaymentProviders' test.out

#- 243 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'OCjBfYCc' \
    --region 'plye2GaP' \
    > test.out 2>&1
eval_tap $? 243 'DebugMatchedPaymentProviderConfig' test.out

#- 244 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 244 'GetSpecialPaymentProviders' test.out

#- 245 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "krgBH4ic", "region": "ml6L36Vg", "sandboxTaxJarApiToken": "2F2Q9aZD", "specials": ["XSOLLA"], "taxJarApiToken": "1OT8109o", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --id 'vJgsb2Py' \
    > test.out 2>&1
eval_tap $? 245 'UpdatePaymentProviderConfig' test.out

#- 246 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'FfJ6qcHA' \
    > test.out 2>&1
eval_tap $? 246 'DeletePaymentProviderConfig' test.out

#- 247 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 247 'GetPaymentTaxConfig' test.out

#- 248 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "BdGtV9jA", "taxJarApiToken": "Pqon7UmL", "taxJarEnabled": true, "taxJarProductCodesMapping": {"9PkF9Snl": "bWNcAxv8"}}' \
    > test.out 2>&1
eval_tap $? 248 'UpdatePaymentTaxConfig' test.out

#- 249 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'uHDqJtYC' \
    --end '7rznwNdL' \
    --start 'hqXvXVnj' \
    > test.out 2>&1
eval_tap $? 249 'SyncPaymentOrders' test.out

#- 250 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'vc0BMegJ' \
    --language 'pW1Zeuhp' \
    --storeId 'LX1BHZ4h' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRootCategories' test.out

#- 251 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'nOmmyXu6' \
    --language 'XtjNCqYk' \
    --storeId '9TPUKcDT' \
    > test.out 2>&1
eval_tap $? 251 'DownloadCategories' test.out

#- 252 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'fR7dpUEo' \
    --namespace '2Oe08Hpe' \
    --language 'JBfG0nGZ' \
    --storeId 'He5lw2Tl' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetCategory' test.out

#- 253 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'kPIxL9v4' \
    --namespace 'fpCd0Uk5' \
    --language 'h1kP1pkk' \
    --storeId 'T08Cs6Dd' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetChildCategories' test.out

#- 254 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'XZWowBgZ' \
    --namespace 'izMvwHsz' \
    --language 'f84MAmay' \
    --storeId 'JJ6vzDTX' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetDescendantCategories' test.out

#- 255 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'xsyIaTgp' \
    > test.out 2>&1
eval_tap $? 255 'PublicListCurrencies' test.out

#- 256 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace '0pwnEJL1' \
    --language '5kxO4oVU' \
    --region 'Png5JsHA' \
    --storeId 'kI47jO1w' \
    --appId 'uAFuZcUw' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetItemByAppId' test.out

#- 257 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'PteKdQgU' \
    --appType 'SOFTWARE' \
    --baseAppId '33fYWZfQ' \
    --categoryPath 'MAnziTha' \
    --features 'E2btn0up' \
    --itemType 'BUNDLE' \
    --language 'TQ7XymDS' \
    --limit '84' \
    --offset '79' \
    --region 'YXNEpZyF' \
    --sortBy 'hIeqiNHt' \
    --storeId 'VSnhxby8' \
    --tags 'F6xF8Mhb' \
    > test.out 2>&1
eval_tap $? 257 'PublicQueryItems' test.out

#- 258 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'JAYEDN1x' \
    --language 'szppR69n' \
    --region 'sKAS5zKs' \
    --storeId 'TRXd7b3v' \
    --sku '2fkZIkr0' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetItemBySku' test.out

#- 259 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace '6ojUtoVJ' \
    --language 'LGXekomv' \
    --region 'wD849mo5' \
    --storeId 'vIkDZYrY' \
    --itemIds 'Ef1xYnlx' \
    > test.out 2>&1
eval_tap $? 259 'PublicBulkGetItems' test.out

#- 260 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'HHXjFoXt' \
    --limit '45' \
    --offset '73' \
    --region 'W6AOnqnW' \
    --storeId 'CuXMWqG8' \
    --keyword 'fNprJx82' \
    --language 'nAFexNou' \
    > test.out 2>&1
eval_tap $? 260 'PublicSearchItems' test.out

#- 261 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '1AicsQjK' \
    --namespace 'x5LjetHE' \
    --language 'w0aCQpU6' \
    --region 'EGOW0VAI' \
    --storeId '87DPH0fL' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetApp' test.out

#- 262 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'LiUqzay0' \
    --namespace 'gET8T53y' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetItemDynamicData' test.out

#- 263 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Eej7Dsqs' \
    --namespace 'TvNKAXqf' \
    --language 'qMJHGeHa' \
    --populateBundle 'False' \
    --region '1Eutm9AA' \
    --storeId 'WDcDv3IS' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetItem' test.out

#- 264 GetPaymentCustomization
eval_tap 0 264 'GetPaymentCustomization # SKIP deprecated' test.out

#- 265 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "BgZCAf2p", "paymentProvider": "CHECKOUT", "returnUrl": "4I2lOHfi", "ui": "u4HraKYM", "zipCode": "tgBmvCHM"}' \
    --namespace 'tF15a7T0' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetPaymentUrl' test.out

#- 266 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'IheywiPE' \
    --paymentOrderNo '1WUR1PTF' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetPaymentMethods' test.out

#- 267 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'fJJ46kzf' \
    --paymentOrderNo 'qapbByIK' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUnpaidPaymentOrder' test.out

#- 268 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "oYzYtTWJ"}' \
    --namespace 'A3nFCDgW' \
    --paymentOrderNo 'Opz3yPQf' \
    --paymentProvider 'STRIPE' \
    --zipCode 'beVG7i4V' \
    > test.out 2>&1
eval_tap $? 268 'Pay' test.out

#- 269 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'TAhuFYhE' \
    --paymentOrderNo 'gQBb9Hni' \
    > test.out 2>&1
eval_tap $? 269 'PublicCheckPaymentOrderPaidStatus' test.out

#- 270 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace '6lDMj9gv' \
    --sandbox 'False' \
    --paymentProvider 'WXPAY' \
    --region 'cQjQ56Ru' \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentPublicConfig' test.out

#- 271 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'AvUlMWp8' \
    --code 'WGpZxCe0' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetQRCode' test.out

#- 272 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'KsmXtGBb' \
    --payerID 'KrV58TIT' \
    --foreinginvoice 'hQ52PYNk' \
    --invoiceId 'nBCjirw4' \
    --payload 'hmfMSl2b' \
    --redirectResult 'ETuFLFOf' \
    --resultCode 'dl0yRndb' \
    --sessionId 'O78R8ybY' \
    --status 'sHx3BIgG' \
    --token 'uo817lZA' \
    --type '58OI2LMY' \
    --userId 'RX16nfCJ' \
    --orderNo '833JKRNc' \
    --paymentOrderNo 'dpuCxSDF' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'sOZlS0ul' \
    > test.out 2>&1
eval_tap $? 272 'PublicNormalizePaymentReturnUrl' test.out

#- 273 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'erU61drw' \
    --zipCode 'LngbZxOG' \
    --paymentOrderNo 'xFwnmB60' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 273 'GetPaymentTaxValue' test.out

#- 274 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'a7XItZS8' \
    --rewardCode 'KIu9T604' \
    > test.out 2>&1
eval_tap $? 274 'GetRewardByCode' test.out

#- 275 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'oPajgySh' \
    --eventTopic 'KuLB7pQL' \
    --limit '17' \
    --offset '97' \
    --sortBy 'Vmc8PVwS' \
    > test.out 2>&1
eval_tap $? 275 'QueryRewards1' test.out

#- 276 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'hVQz7FY3' \
    --rewardId 'h2oVVScV' \
    > test.out 2>&1
eval_tap $? 276 'GetReward1' test.out

#- 277 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'v3YTBM4t' \
    > test.out 2>&1
eval_tap $? 277 'PublicListStores' test.out

#- 278 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'eOpqevsW' \
    --appIds '["vMhiheE2"]' \
    --itemIds '["KM7Ctal5"]' \
    --skus '["z7hLiOYz"]' \
    > test.out 2>&1
eval_tap $? 278 'PublicExistsAnyMyActiveEntitlement' test.out

#- 279 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace '1jFfu1y1' \
    --appId 'd77D8ZNO' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 280 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'fHyenhbR' \
    --entitlementClazz 'APP' \
    --itemId '9UjjjU0E' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 281 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'ggYLcGiE' \
    --entitlementClazz 'MEDIA' \
    --sku 'ZbDl9ZeZ' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 282 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'H3M87v0F' \
    --appIds '["hdKDEfXR"]' \
    --itemIds '["haO0AYSq"]' \
    --skus '["vcV2Lqfg"]' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetEntitlementOwnershipToken' test.out

#- 283 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'CX28Je4k' \
    --namespace 'yPQjgDJN' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyWallet' test.out

#- 284 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 80}' \
    --namespace 'EMtdEtN4' \
    --userId 'sEebnQuc' \
    > test.out 2>&1
eval_tap $? 284 'PublicSyncPsnDlcInventory' test.out

#- 285 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "gaop5NEd", "steamId": "hurScNiU"}' \
    --namespace 'xnJUewUV' \
    --userId 'hkGRRTgL' \
    > test.out 2>&1
eval_tap $? 285 'SyncSteamDLC' test.out

#- 286 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "Cb9evywZ"}' \
    --namespace 'ywunLImN' \
    --userId 'hyZsb7Yh' \
    > test.out 2>&1
eval_tap $? 286 'SyncXboxDLC' test.out

#- 287 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'hQbDxLRK' \
    --userId 'xzUtpKDC' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName '2otjUWKx' \
    --itemId '["gW6n8AJa"]' \
    --limit '9' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryUserEntitlements' test.out

#- 288 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'xTPgZKFi' \
    --userId '3SBGlCD4' \
    --appId 'ig5ZRoJd' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserAppEntitlementByAppId' test.out

#- 289 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace '1as1Wkfh' \
    --userId '3l8HyGWZ' \
    --limit '91' \
    --offset '6' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 289 'PublicQueryUserEntitlementsByAppType' test.out

#- 290 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'mTxPUBFj' \
    --userId 'TIIKcXlx' \
    --entitlementClazz 'APP' \
    --itemId 'dDyjJ0ww' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserEntitlementByItemId' test.out

#- 291 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'rYeljMyo' \
    --userId 'eb3gsMOM' \
    --entitlementClazz 'APP' \
    --sku 'qbt4PnuF' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserEntitlementBySku' test.out

#- 292 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'r18ijp3C' \
    --userId 'mzrfVIa1' \
    --appIds '["vi9oky2P"]' \
    --itemIds '["7fIgBRSB"]' \
    --skus '["lxukoOTC"]' \
    > test.out 2>&1
eval_tap $? 292 'PublicExistsAnyUserActiveEntitlement' test.out

#- 293 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'osjAXo6l' \
    --userId 'jBVW8r7n' \
    --appId 'yNcVl6ZB' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 294 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace '3bGHupBu' \
    --userId 'AL2avXKO' \
    --entitlementClazz 'CODE' \
    --itemId 'wGRJbZqX' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 295 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'gQ9azOre' \
    --userId 'TsviZmgm' \
    --entitlementClazz 'CODE' \
    --sku '8Yr4wmgi' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 296 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'wIF5Zx5T' \
    --namespace 'IIhBtL3z' \
    --userId 'T6xRqyV0' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetUserEntitlement' test.out

#- 297 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"useCount": 38}' \
    --entitlementId 'lLaMYL1p' \
    --namespace '95v9mOiI' \
    --userId 'FEdQ2RKe' \
    > test.out 2>&1
eval_tap $? 297 'PublicConsumeUserEntitlement' test.out

#- 298 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "Qy2WRztR", "language": "ZTU", "region": "JDWx2Odr"}' \
    --namespace 'UV7bhcKG' \
    --userId 'IOZcB6NW' \
    > test.out 2>&1
eval_tap $? 298 'PublicRedeemCode' test.out

#- 299 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "xK_XhPU", "productId": "ZNxhbsaS", "receiptData": "FtTmbIf2", "region": "hFQRmsi0", "transactionId": "2melJQkL"}' \
    --namespace 'tV2QnPsm' \
    --userId 'hFVPtJTG' \
    > test.out 2>&1
eval_tap $? 299 'PublicFulfillAppleIAPItem' test.out

#- 300 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "ig12OdDn"}' \
    --namespace 'xXuJoZgO' \
    --userId 'G4tOeWVM' \
    > test.out 2>&1
eval_tap $? 300 'SyncEpicGamesInventory' test.out

#- 301 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": false, "language": "XcHu", "orderId": "2RkEr8Xb", "packageName": "mQNuv80E", "productId": "m9nuffLG", "purchaseTime": 93, "purchaseToken": "WnVBQPhw", "region": "wHR0qyfF"}' \
    --namespace 'cSCdkfe5' \
    --userId 'eawFpdHe' \
    > test.out 2>&1
eval_tap $? 301 'PublicFulfillGoogleIAPItem' test.out

#- 302 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "H5p8Zx8j", "price": 0.3817789922397513, "productId": "nxGzOTBp", "serviceLabel": 25}' \
    --namespace 'mjuEEEyD' \
    --userId 'twbtA8xs' \
    > test.out 2>&1
eval_tap $? 302 'PublicReconcilePlayStationStore' test.out

#- 303 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "mmcaOLdF", "language": "Fu", "region": "700jB0p4", "stadiaPlayerId": "HpK8pvuf"}' \
    --namespace 'SxYM0Vku' \
    --userId 'qOKrhvMw' \
    > test.out 2>&1
eval_tap $? 303 'SyncStadiaEntitlement' test.out

#- 304 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "vD04UY8g", "currencyCode": "hvsmSrrJ", "language": "aIf_aBUP", "price": 0.24411783927128183, "productId": "sO6fW468", "region": "fWxqRkJD", "steamId": "jfNhYDgV"}' \
    --namespace 'm0TCaos4' \
    --userId 'wyjaPP6C' \
    > test.out 2>&1
eval_tap $? 304 'SyncSteamInventory' test.out

#- 305 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "lekQGm25", "language": "yMfz-BvGC", "region": "U4vyIPJe"}' \
    --namespace 'RjCj7UK5' \
    --userId 'nEmwsQtS' \
    > test.out 2>&1
eval_tap $? 305 'SyncTwitchDropsEntitlement' test.out

#- 306 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "fDqA4Cys", "price": 0.475914014658104, "productId": "4VOy0n2E", "xstsToken": "kPBjC4ec"}' \
    --namespace 'HwtSGzay' \
    --userId 'UaDh3m2e' \
    > test.out 2>&1
eval_tap $? 306 'SyncXboxInventory' test.out

#- 307 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'X31qVPH2' \
    --userId 'VHDznf57' \
    --itemId 'fQ1PY5uD' \
    --limit '20' \
    --offset '84' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 307 'PublicQueryUserOrders' test.out

#- 308 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "pNRwycEA", "discountedPrice": 88, "ext": {"hpFLpqAx": {}}, "itemId": "1N5IGebN", "language": "VYR", "price": 94, "quantity": 6, "region": "sSwDc9NJ", "returnUrl": "RX9ZdaC8"}' \
    --namespace 'sja1J7eu' \
    --userId 'cGSSxZJP' \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateUserOrder' test.out

#- 309 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'to04wTEI' \
    --orderNo '8isXmyAG' \
    --userId 'W2rZ7bYv' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserOrder' test.out

#- 310 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'VW26Oays' \
    --orderNo 'x72rwV3M' \
    --userId 'dXNVRDzT' \
    > test.out 2>&1
eval_tap $? 310 'PublicCancelUserOrder' test.out

#- 311 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '2sBbflg7' \
    --orderNo 'cD247c1X' \
    --userId 'YYJf18St' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserOrderHistories' test.out

#- 312 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'Yu6wb2We' \
    --orderNo '3Q6Pm7RB' \
    --userId 'kqWDPEP4' \
    > test.out 2>&1
eval_tap $? 312 'PublicDownloadUserOrderReceipt' test.out

#- 313 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'CWnZJjXd' \
    --userId 'iUv9owF1' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentAccounts' test.out

#- 314 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'mQrc03W7' \
    --namespace 'oOdpY5ZJ' \
    --type 'paypal' \
    --userId 'hQtpD2U9' \
    > test.out 2>&1
eval_tap $? 314 'PublicDeletePaymentAccount' test.out

#- 315 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'IQzA2eex' \
    --userId 'jq3TfnJ6' \
    --chargeStatus 'NEVER' \
    --itemId 'yQ4wCg5I' \
    --limit '39' \
    --offset '27' \
    --sku '9TYOR2n8' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 315 'PublicQueryUserSubscriptions' test.out

#- 316 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "jjSZx0Fe", "itemId": "RdmgOta6", "language": "Ck_KFim_447", "region": "aIxBgzRO", "returnUrl": "8GKycdcX", "source": "uULpvuBN"}' \
    --namespace 'RzUbH0hI' \
    --userId '7yCEyjKX' \
    > test.out 2>&1
eval_tap $? 316 'PublicSubscribeSubscription' test.out

#- 317 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'QPnomAsH' \
    --userId 'MpmDvt4t' \
    --itemId 'kWavQ0jo' \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 318 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace '17Qq6AFd' \
    --subscriptionId 'E7URb19B' \
    --userId 'cvWfPxHP' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserSubscription' test.out

#- 319 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'QaUClyAj' \
    --subscriptionId 'fGkGwDso' \
    --userId 'o09NdZjN' \
    > test.out 2>&1
eval_tap $? 319 'PublicChangeSubscriptionBillingAccount' test.out

#- 320 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "jtl8XIGZ"}' \
    --namespace 'V3GBXIHx' \
    --subscriptionId 'WGX4iwwH' \
    --userId 'LohaKvD9' \
    > test.out 2>&1
eval_tap $? 320 'PublicCancelSubscription' test.out

#- 321 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'nNeLi2tR' \
    --subscriptionId 'rclM3o5F' \
    --userId 'mkWcIpWl' \
    --excludeFree 'False' \
    --limit '74' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserSubscriptionBillingHistories' test.out

#- 322 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'xQciSm2O' \
    --namespace 'biacE1Vt' \
    --userId 'VP5yWKB3' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetWallet' test.out

#- 323 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'dhO4E5cH' \
    --namespace 'bV6Tq3ma' \
    --userId 'kniWG9At' \
    --limit '1' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 323 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE