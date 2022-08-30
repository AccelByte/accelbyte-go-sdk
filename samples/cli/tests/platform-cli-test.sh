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
echo "1..354"

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
    --body '{"context": {"item": {"appId": "cxESA1km", "appType": "GAME", "baseAppId": "G0yJrAHb", "boothName": "v4wTBaXa", "boundItemIds": ["NyZquuSE", "o3M9zXLI", "lwEnIfOW"], "categoryPath": "XmOrnoJD", "clazz": "FW2rOgA1", "createdAt": "1987-01-22T00:00:00Z", "description": "zloCmQt2", "displayOrder": 3, "entitlementType": "CONSUMABLE", "ext": {"wLjCpMZd": {}, "B2e8cdKY": {}, "VRlOXKcR": {}}, "features": ["rqWGorBv", "gKj3bNpJ", "ERgth8Bh"], "fresh": true, "images": [{"as": "gH9jdb82", "caption": "V3sGhl5N", "height": 51, "imageUrl": "Bx89XmFq", "smallImageUrl": "6PFPzBUn", "width": 77}, {"as": "CCQsU6PF", "caption": "E83NuTGw", "height": 83, "imageUrl": "6kZ164ZD", "smallImageUrl": "CvApHok1", "width": 17}, {"as": "Su2WnnqE", "caption": "fpzcJFCY", "height": 53, "imageUrl": "xGtJ7my3", "smallImageUrl": "TqzcA4Fb", "width": 68}], "itemId": "2fd0gWhX", "itemIds": ["FwHa8Ljp", "hLxlfQjY", "mM0Nhm5y"], "itemQty": {"4D75hR7V": 19, "Szw4Qv6c": 34, "kt5b31ug": 26}, "itemType": "BUNDLE", "language": "v9E4zHc9", "listable": true, "localExt": {"EQ5TFL15": {}, "ZZDzOdtq": {}, "KeVUAXqy": {}}, "longDescription": "ht8zawpg", "maxCount": 45, "maxCountPerUser": 60, "name": "XmwVyip2", "namespace": "6QlMZydP", "optionBoxConfig": {"boxItems": [{"count": 91, "itemId": "2yL3jXWd", "itemSku": "A8WbMPgk"}, {"count": 47, "itemId": "jbzo1I1e", "itemSku": "cmsGaG2e"}, {"count": 25, "itemId": "upfpGmuh", "itemSku": "UYAovFdV"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 53, "comparison": "excludes", "name": "e8gthbk2", "predicateType": "SeasonPassPredicate", "value": "xkTnDBlG", "values": ["DMWQ2L8j", "zo8nmrxD", "5kYi2z7Q"]}, {"anyOf": 16, "comparison": "is", "name": "GyHM641N", "predicateType": "SeasonTierPredicate", "value": "p0iee1wG", "values": ["MXJX34xy", "ZGa97wEm", "3XrOhKe9"]}, {"anyOf": 72, "comparison": "isLessThan", "name": "f7NFJkv2", "predicateType": "EntitlementPredicate", "value": "G6w5h4Qq", "values": ["rhGBbUPC", "rHdvPS2K", "m0eT66hc"]}]}, {"operator": "or", "predicates": [{"anyOf": 7, "comparison": "isLessThan", "name": "TpOUb0uC", "predicateType": "SeasonPassPredicate", "value": "HWrOOHkj", "values": ["YEzqYrpo", "C2IcRkTR", "e33tJa52"]}, {"anyOf": 96, "comparison": "isGreaterThan", "name": "aa7Byv6I", "predicateType": "EntitlementPredicate", "value": "lmqWfAQu", "values": ["ZdMKsvUy", "7dOk9HFX", "tDNIYMvS"]}, {"anyOf": 75, "comparison": "isGreaterThan", "name": "xrxsHnIR", "predicateType": "EntitlementPredicate", "value": "T641kKxY", "values": ["tZnxAWHL", "mBFNqCsT", "tRsMM5aI"]}]}, {"operator": "or", "predicates": [{"anyOf": 46, "comparison": "is", "name": "pGZ5tktw", "predicateType": "SeasonTierPredicate", "value": "aMmkYW6J", "values": ["vv3WXeMs", "91oPBVGs", "2dImb68R"]}, {"anyOf": 13, "comparison": "is", "name": "9bxVmBch", "predicateType": "EntitlementPredicate", "value": "8cabWFwp", "values": ["FY2ZxsS2", "tkNGq9XW", "2sLpvdNd"]}, {"anyOf": 56, "comparison": "is", "name": "OsQrWeOG", "predicateType": "SeasonPassPredicate", "value": "5PvNVYbX", "values": ["MrAlpoB9", "4d5aOFF7", "5OTKsNTf"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 97, "fixedTrialCycles": 41, "graceDays": 77}, "region": "U98CluTm", "regionData": [{"currencyCode": "bMByrmKx", "currencyNamespace": "bu2zgLk5", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1983-03-12T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1972-12-23T00:00:00Z", "discountedPrice": 59, "expireAt": "1972-02-13T00:00:00Z", "price": 98, "purchaseAt": "1992-03-30T00:00:00Z", "trialPrice": 62}, {"currencyCode": "UWOHwS2Y", "currencyNamespace": "2J3x53IU", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1972-03-19T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-07-22T00:00:00Z", "discountedPrice": 9, "expireAt": "1985-04-15T00:00:00Z", "price": 48, "purchaseAt": "1977-02-27T00:00:00Z", "trialPrice": 62}, {"currencyCode": "gN63Ytil", "currencyNamespace": "tLO4h0LH", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1990-04-01T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-02-15T00:00:00Z", "discountedPrice": 63, "expireAt": "1987-10-29T00:00:00Z", "price": 96, "purchaseAt": "1985-09-21T00:00:00Z", "trialPrice": 84}], "seasonType": "PASS", "sku": "qXNG97H3", "stackable": false, "status": "ACTIVE", "tags": ["FIl8Q81W", "Iwe5BzxI", "NbaesuAN"], "targetCurrencyCode": "JLs5ulEN", "targetItemId": "VuTjH5Zy", "targetNamespace": "ps87mGbH", "thumbnailUrl": "1jRj7H6r", "title": "gnRSE8xu", "updatedAt": "1972-08-01T00:00:00Z", "useCount": 70}, "namespace": "BtT0emt9", "order": {"currency": {"currencyCode": "csFc5ERX", "currencySymbol": "VrhEwelj", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "qIrhF84l"}, "ext": {"3gRdfsRh": {}, "XTqp9BP6": {}, "oTjJk3Vi": {}}, "free": false}, "source": "PROMOTION"}, "script": "DaSI2nkG", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'syWGXkws' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'tHLL7eMC' \
    --body '{"grantDays": "hAJDbU1g"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'CuMTwSj1' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '2y7Cjpf4' \
    --body '{"grantDays": "FVk3jvJi"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "0wL5eT90", "dryRun": true, "fulfillmentUrl": "okJTnRL9", "itemType": "EXTENSION", "purchaseConditionUrl": "0yuzPXCr"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'FD54Ah6K' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'RsHJnxoD' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'xShr6OwL' \
    --body '{"clazz": "n4Jqb7RJ", "dryRun": true, "fulfillmentUrl": "TSn4fO3r", "purchaseConditionUrl": "vWGZJdqC"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'hU7STv3C' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'WwAB54kD' \
    --offset '50' \
    --tag 'RUzYtJrZ' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "TJqXkFm6", "items": [{"extraSubscriptionDays": 44, "itemId": "mm62iuem", "itemName": "0lpI85Yg", "quantity": 60}, {"extraSubscriptionDays": 28, "itemId": "SZYPW88M", "itemName": "3S3utag1", "quantity": 7}, {"extraSubscriptionDays": 90, "itemId": "60dyT7co", "itemName": "btDJXIGW", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 29, "maxRedeemCountPerCodePerUser": 63, "maxSaleCount": 81, "name": "xDs9vmCY", "redeemEnd": "1983-02-03T00:00:00Z", "redeemStart": "1993-01-21T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["DaK7TwO0", "UCtDOxHH", "MnwAp6Um"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'GLdmClU3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'UNnRyFVv' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OScRfBOV", "items": [{"extraSubscriptionDays": 56, "itemId": "gZR9Vg2H", "itemName": "Ska4bj2f", "quantity": 59}, {"extraSubscriptionDays": 45, "itemId": "6F4keqqS", "itemName": "fptN1fOj", "quantity": 33}, {"extraSubscriptionDays": 41, "itemId": "tns8ZE1J", "itemName": "1RonAtSu", "quantity": 27}], "maxRedeemCountPerCampaignPerUser": 58, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 76, "name": "dROgQTJa", "redeemEnd": "1993-02-27T00:00:00Z", "redeemStart": "1999-03-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["w5xgwXSO", "UE9KngEe", "TG0kp5yq"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'qAdgAHNq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'xdd10i9W' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '9aAAxZsX' \
    --body '{"categoryPath": "L7dYLNry", "localizationDisplayNames": {"iscpFMcB": "AZAhshFR", "gYyb3Bgy": "vSCYDhOX", "INHtYlSd": "fPb11jf5"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '0rSkiJBu' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'YU4fJK8J' \
    --namespace $AB_NAMESPACE \
    --storeId 'Za5Dk6b9' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '314lkxLI' \
    --namespace $AB_NAMESPACE \
    --storeId 'A2IVecgP' \
    --body '{"localizationDisplayNames": {"7a6Bh3sf": "2fMRUQ3T", "UqKtkq57": "RgYJyhS3", "EOiPrHSB": "TikuVBor"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'v3VzCTQX' \
    --namespace $AB_NAMESPACE \
    --storeId '0M784C4Q' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'alqlfM1L' \
    --namespace $AB_NAMESPACE \
    --storeId '7JpVzHi5' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '9P0Ps8jI' \
    --namespace $AB_NAMESPACE \
    --storeId 'X3xZd3R3' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'X9d1EoPx' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '69' \
    --code 'rEonVWlp' \
    --limit '99' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'vOFx4SoD' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 42}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'HfyTfsKX' \
    --namespace $AB_NAMESPACE \
    --batchNo '44' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Zd8pixt7' \
    --namespace $AB_NAMESPACE \
    --batchNo '28' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'mR0E2eH1' \
    --namespace $AB_NAMESPACE \
    --batchNo '49' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'u8aUFEUI' \
    --namespace $AB_NAMESPACE \
    --code 'xpswTFEd' \
    --limit '1' \
    --offset '67' \
    --userId 'Ta5efBIE' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code '7uWUZ9Wm' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'lfFUnpPb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'idXjcHWI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "prGHZgbJ", "currencySymbol": "OzdMkSeg", "currencyType": "REAL", "decimals": 66, "localizationDescriptions": {"4bebFWUb": "aLP0VXth", "DfbWPLMO": "haFUD6bW", "hrPFI9uj": "Wxlu4SR0"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'niYNdtOC' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"uU2hDA8N": "8NbE6lPh", "FmePO73D": "oFwSgXTu", "b2D2C8p2": "pVX1l7Kj"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '3Se2qyW6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'YCyxmS9T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'mLTkzUol' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetCurrencySummary' test.out

#- 42 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetDLCItemConfig' test.out

#- 43 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "l64B7edC", "rewards": [{"currency": {"currencyCode": "0LVzCGhK", "namespace": "XT6Y4bju"}, "item": {"itemId": "T6t0ZS31", "itemSku": "2TKwqUvH", "itemType": "wpVxmm3c"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "VIaHPPqA", "namespace": "7e0IUjyb"}, "item": {"itemId": "GUOvvbcM", "itemSku": "WkRruEzk", "itemType": "2Tz9NXoG"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "YyxZg9xv", "namespace": "XnFFTaT3"}, "item": {"itemId": "o9TwEZFs", "itemSku": "jNA2WK2B", "itemType": "89o85IOA"}, "quantity": 5, "type": "ITEM"}]}, {"id": "4JcRxt0S", "rewards": [{"currency": {"currencyCode": "OckRfNFo", "namespace": "z2MjX68V"}, "item": {"itemId": "CHqNuKZo", "itemSku": "SXSxLXbK", "itemType": "BeOLvbiy"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "KO8bmJZf", "namespace": "1WkTeS3x"}, "item": {"itemId": "AuUL91yO", "itemSku": "gEcWT1Xh", "itemType": "x26TyySO"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"currencyCode": "i23nUE0R", "namespace": "5NRl5vgs"}, "item": {"itemId": "Exjh9DxT", "itemSku": "QhboaqXr", "itemType": "RoTcOvEp"}, "quantity": 54, "type": "CURRENCY"}]}, {"id": "UEqyi3Tn", "rewards": [{"currency": {"currencyCode": "BtcGvbUi", "namespace": "mnSOHWMW"}, "item": {"itemId": "vFlBOmoA", "itemSku": "YX48MbzW", "itemType": "vepOGl2q"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "nWu4aPQY", "namespace": "vX3S0b1U"}, "item": {"itemId": "ne1B3CC0", "itemSku": "IfC6wJs4", "itemType": "zyZsTqM6"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "Av4yMono", "namespace": "wD1Ue5qo"}, "item": {"itemId": "qT4GFaXU", "itemSku": "oyT272ox", "itemType": "4gmtqSc9"}, "quantity": 74, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateDLCItemConfig' test.out

#- 44 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteDLCItemConfig' test.out

#- 45 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetPlatformDLCConfig' test.out

#- 46 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"BcI28IfK": "2C3efpVa", "jKekSNvT": "bvpZJlbK", "O2C1NLiV": "EwMqXzoh"}}, {"platform": "STEAM", "platformDlcIdMap": {"m9vuGyM8": "R9TNAkPY", "QYyZ80Xk": "meUP8FMy", "XTZ1v106": "0TNTFKTp"}}, {"platform": "STEAM", "platformDlcIdMap": {"Ikj6nsXe": "ei07g7Ck", "S49n0QAo": "qSOtkMVX", "xHz1VhD5": "cV6U6mvq"}}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdatePlatformDLCConfig' test.out

#- 47 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeletePlatformDLCConfig' test.out

#- 48 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'H7fyK6No' \
    --itemId '["TOyiS8SO", "U3Nm3cCq", "W62K45SK"]' \
    --limit '70' \
    --offset '0' \
    --userId 'oNYomydb' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Z5eWwo6N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '52' \
    --status 'FAIL' \
    --userId '5xxsYdZp' \
    > test.out 2>&1
eval_tap $? 50 'QueryFulfillmentHistories' test.out

#- 51 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetAppleIAPConfig' test.out

#- 52 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "dNRyeQl4", "password": "cb6V97DT"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateAppleIAPConfig' test.out

#- 53 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'DeleteAppleIAPConfig' test.out

#- 54 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetEpicGamesIAPConfig' test.out

#- 55 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "mVvqo3nU"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateEpicGamesIAPConfig' test.out

#- 56 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteEpicGamesIAPConfig' test.out

#- 57 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetGoogleIAPConfig' test.out

#- 58 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "PZN9hl6H", "serviceAccountId": "wMfkVPkJ"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGoogleIAPConfig' test.out

#- 59 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteGoogleIAPConfig' test.out

#- 60 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGoogleP12File' test.out

#- 61 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetIAPItemConfig' test.out

#- 62 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "t18IPPlD", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"chs6zFNP": "UgBXWvef", "b4aJgZrL": "ybVdp79V", "XIz1z7zY": "fJQzpgcI"}}, {"itemIdentity": "vWvncfDM", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"TsRlUfuz": "flSo564B", "X5bM3Z62": "qpqA44kK", "p2ccor8Q": "Y2InYc9S"}}, {"itemIdentity": "VlYzpL7T", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"NQSKm634": "WYfLpYGf", "nXZswFKv": "XfPdi3Yj", "e2Q4jgcc": "fXb74MnP"}}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateIAPItemConfig' test.out

#- 63 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteIAPItemConfig' test.out

#- 64 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetPlayStationIAPConfig' test.out

#- 65 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "Arjs6WLu"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdatePlaystationIAPConfig' test.out

#- 66 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeletePlaystationIAPConfig' test.out

#- 67 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStadiaIAPConfig' test.out

#- 68 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteStadiaIAPConfig' test.out

#- 69 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 69 'UpdateStadiaJsonConfigFile' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "8COrwkXo", "publisherAuthenticationKey": "ofmJjLGA"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateSteamIAPConfig' test.out

#- 72 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteSteamIAPConfig' test.out

#- 73 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetTwitchIAPConfig' test.out

#- 74 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "ttKwArsi", "clientSecret": "AFjVzA2g", "organizationId": "yeHYUIGx"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateTwitchIAPConfig' test.out

#- 75 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteTwitchIAPConfig' test.out

#- 76 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetXblIAPConfig' test.out

#- 77 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "l6pFFITN"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateXblIAPConfig' test.out

#- 78 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteXblAPConfig' test.out

#- 79 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'rcMKBGPz' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'g6R9bakF' \
    --body '{"categoryPath": "cg6Mz0aK", "targetItemId": "oVHCTnTA", "targetNamespace": "CpsKwKsG"}' \
    > test.out 2>&1
eval_tap $? 80 'SyncInGameItem' test.out

#- 81 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TOmINqxD' \
    --body '{"appId": "HgTlEzfg", "appType": "DLC", "baseAppId": "gO8iQ0rv", "boothName": "2hhTuqJM", "categoryPath": "bdCkUsdd", "clazz": "CO2tIk68", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"8bT7NTS1": {}, "Yat8PGYl": {}, "eealy7Wh": {}}, "features": ["ZIxnFHAS", "NOuw59uJ", "SrbPcaAb"], "images": [{"as": "KPUfnKXt", "caption": "wpseiE87", "height": 74, "imageUrl": "YNYpMW8q", "smallImageUrl": "O0wq6SoB", "width": 35}, {"as": "CKI0v6Pq", "caption": "UefRlAYT", "height": 42, "imageUrl": "124Prpxt", "smallImageUrl": "1fr9Pmf3", "width": 25}, {"as": "H0JXCxRt", "caption": "JMJWgs90", "height": 33, "imageUrl": "E86sVk3O", "smallImageUrl": "Uw5CRFzI", "width": 24}], "itemIds": ["o1yNf1oy", "BXmL9XpW", "HdXIToqB"], "itemQty": {"aUAlkaFJ": 71, "AjlLgtsK": 22, "fAqODtpQ": 51}, "itemType": "EXTENSION", "listable": false, "localizations": {"24SNQi6G": {"description": "2lQsaNYr", "localExt": {"3OgwFiA9": {}, "OR8ePT6S": {}, "GTKxtEwl": {}}, "longDescription": "MJbt0ANa", "title": "w3LyhW35"}, "7TDLmTtp": {"description": "XJHh6UXH", "localExt": {"gUqSAeAC": {}, "7qDEx8K7": {}, "YuBnFTc5": {}}, "longDescription": "3ylJq4M5", "title": "Hxt6VW6Y"}, "w7E5cPdO": {"description": "fJ9fNttn", "localExt": {"0BeQWIRr": {}, "QwjabrF8": {}, "P2KdzC6X": {}}, "longDescription": "zBLgwTvA", "title": "b7JtuJi0"}}, "maxCount": 47, "maxCountPerUser": 64, "name": "uiXby0CO", "optionBoxConfig": {"boxItems": [{"count": 73, "itemId": "dMGK0hLn", "itemSku": "5AUtf3xj"}, {"count": 14, "itemId": "hMhIGOTd", "itemSku": "iPO1yojP"}, {"count": 4, "itemId": "QbOiNdUO", "itemSku": "5sgAFPz9"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 31, "fixedTrialCycles": 83, "graceDays": 8}, "regionData": {"y5HSjlvO": [{"currencyCode": "5cMvFjUl", "currencyNamespace": "tWeLPcKB", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1976-06-07T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1987-01-30T00:00:00Z", "discountedPrice": 22, "expireAt": "1986-04-14T00:00:00Z", "price": 97, "purchaseAt": "1986-09-27T00:00:00Z", "trialPrice": 74}, {"currencyCode": "VMrnj4Lg", "currencyNamespace": "wnQQtJAv", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1988-03-22T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1976-03-07T00:00:00Z", "discountedPrice": 4, "expireAt": "1988-06-16T00:00:00Z", "price": 34, "purchaseAt": "1992-08-02T00:00:00Z", "trialPrice": 55}, {"currencyCode": "YNZkt4cg", "currencyNamespace": "NMI14ULq", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1996-03-21T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1979-09-29T00:00:00Z", "discountedPrice": 43, "expireAt": "1983-07-01T00:00:00Z", "price": 16, "purchaseAt": "1976-11-11T00:00:00Z", "trialPrice": 83}], "9PKkvtiS": [{"currencyCode": "RoJcG0py", "currencyNamespace": "7DbFAliq", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1992-08-19T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-08-09T00:00:00Z", "discountedPrice": 3, "expireAt": "1994-02-28T00:00:00Z", "price": 93, "purchaseAt": "1981-01-18T00:00:00Z", "trialPrice": 43}, {"currencyCode": "OnZj3Gkb", "currencyNamespace": "Vms71Km3", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1992-11-19T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1977-08-01T00:00:00Z", "discountedPrice": 46, "expireAt": "1989-04-26T00:00:00Z", "price": 12, "purchaseAt": "1983-07-15T00:00:00Z", "trialPrice": 92}, {"currencyCode": "NEfpVPQq", "currencyNamespace": "8KqNFrmW", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1980-06-05T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1984-03-31T00:00:00Z", "discountedPrice": 13, "expireAt": "1993-06-04T00:00:00Z", "price": 58, "purchaseAt": "1977-02-08T00:00:00Z", "trialPrice": 90}], "AFpjB2sj": [{"currencyCode": "Clu4tfGr", "currencyNamespace": "8RC71Tue", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1979-08-01T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1997-01-05T00:00:00Z", "discountedPrice": 34, "expireAt": "1975-10-19T00:00:00Z", "price": 71, "purchaseAt": "1995-07-03T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Grdv6NM1", "currencyNamespace": "esJyynqY", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1993-07-06T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1973-06-13T00:00:00Z", "discountedPrice": 24, "expireAt": "1983-05-14T00:00:00Z", "price": 20, "purchaseAt": "1989-10-18T00:00:00Z", "trialPrice": 6}, {"currencyCode": "6AgW34zW", "currencyNamespace": "LQm7I62W", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1987-04-24T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1989-11-08T00:00:00Z", "discountedPrice": 52, "expireAt": "1996-07-01T00:00:00Z", "price": 48, "purchaseAt": "1974-04-19T00:00:00Z", "trialPrice": 56}]}, "seasonType": "PASS", "sku": "cHyrFHjN", "stackable": true, "status": "INACTIVE", "tags": ["ea99gW2a", "CkYmb9Fq", "gF94E0xl"], "targetCurrencyCode": "wd91dMjh", "targetNamespace": "TbtLGnNo", "thumbnailUrl": "wDIiCUS8", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 81 'CreateItem' test.out

#- 82 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'J9uYdmDf' \
    --appId 'IIBxPySR' \
    > test.out 2>&1
eval_tap $? 82 'GetItemByAppId' test.out

#- 83 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'c99V1Wpl' \
    --baseAppId 'QqkpKYXw' \
    --categoryPath 'CUpjwRPL' \
    --features 'QAENpLC6' \
    --itemType 'SUBSCRIPTION' \
    --limit '9' \
    --offset '75' \
    --region 'r8OHQm96' \
    --sortBy '["name:asc", "displayOrder:desc"]' \
    --storeId 'qQJG3lHk' \
    --tags 'R2S3xPbR' \
    --targetNamespace 'hUs2yCGv' \
    > test.out 2>&1
eval_tap $? 83 'QueryItems' test.out

#- 84 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["zboZfcij", "uEah704B", "9MmtRnlc"]' \
    > test.out 2>&1
eval_tap $? 84 'ListBasicItemsByFeatures' test.out

#- 85 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fIBaW8Vw' \
    --sku '52xMlZSm' \
    > test.out 2>&1
eval_tap $? 85 'GetItemBySku' test.out

#- 86 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Jwde5imW' \
    --populateBundle 'true' \
    --region 'mSCGK0LV' \
    --storeId '0GDv4a9M' \
    --sku 'pUI0OxO5' \
    > test.out 2>&1
eval_tap $? 86 'GetLocaleItemBySku' test.out

#- 87 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Y1IzkbP8' \
    --sku '0AX71GIO' \
    > test.out 2>&1
eval_tap $? 87 'GetItemIdBySku' test.out

#- 88 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["Vin5Tdoo", "sAgsuC8I", "dhF785Xg"]' \
    --storeId 'l5EKgWfo' \
    > test.out 2>&1
eval_tap $? 88 'GetBulkItemIdBySkus' test.out

#- 89 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'l3WZQHLi' \
    --region 'bHa3STrM' \
    --storeId 'TCjtTidI' \
    --itemIds 'Xe6VruIZ' \
    > test.out 2>&1
eval_tap $? 89 'BulkGetLocaleItems' test.out

#- 90 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetAvailablePredicateTypes' test.out

#- 91 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'wLdGjPrh' \
    --body '{"itemIds": ["r03mg1Qe", "bZlCgIbO", "lmdfIr7C"]}' \
    > test.out 2>&1
eval_tap $? 91 'ValidateItemPurchaseCondition' test.out

#- 92 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'BUNDLE' \
    --limit '88' \
    --offset '28' \
    --storeId 'JFDMJVkr' \
    --keyword 'RtkGqiR7' \
    --language 'yyNXM8dJ' \
    > test.out 2>&1
eval_tap $? 92 'SearchItems' test.out

#- 93 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '63' \
    --offset '51' \
    --sortBy '["name:asc", "name:desc", "displayOrder:asc"]' \
    --storeId 'ollnsRtW' \
    > test.out 2>&1
eval_tap $? 93 'QueryUncategorizedItems' test.out

#- 94 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'c41dNoVQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FblF8oHI' \
    > test.out 2>&1
eval_tap $? 94 'GetItem' test.out

#- 95 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'ITmjoUKu' \
    --namespace $AB_NAMESPACE \
    --storeId 'jmsdDC80' \
    --body '{"appId": "V5DFCsJF", "appType": "SOFTWARE", "baseAppId": "Pc7vlplG", "boothName": "hsG1lMLp", "categoryPath": "fprtxism", "clazz": "89R1nkcb", "displayOrder": 9, "entitlementType": "DURABLE", "ext": {"iSR8KVuo": {}, "FfpITkX2": {}, "DeOLkTjQ": {}}, "features": ["IjgI6zi2", "PrTUS0EF", "hmvjebMX"], "images": [{"as": "lq1m4iKb", "caption": "PRvvA8Gx", "height": 36, "imageUrl": "2WGFMvRV", "smallImageUrl": "mrA3Jmnp", "width": 24}, {"as": "W226lgcY", "caption": "pTBQCYOD", "height": 41, "imageUrl": "kut6bIIL", "smallImageUrl": "XaLX1eRT", "width": 18}, {"as": "Unb6PrZE", "caption": "F3iFQnwq", "height": 31, "imageUrl": "GOJ9uY9G", "smallImageUrl": "YuhRYypU", "width": 81}], "itemIds": ["pZubN9Pt", "YnKfj9l3", "nDppcE28"], "itemQty": {"nFewEJga": 84, "OtPUsFsk": 26, "Ctu0YK1Z": 21}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"xIacZdcT": {"description": "2li7yb4w", "localExt": {"S5bh5sUR": {}, "go6om8wi": {}, "cji2IQYF": {}}, "longDescription": "wlBvZqNN", "title": "4kk0NX3G"}, "00X68lna": {"description": "tAghT8lg", "localExt": {"qF4mUlnh": {}, "5eruCju6": {}, "StCsZ65x": {}}, "longDescription": "YeiUFQB0", "title": "bef8wXqa"}, "VWZTmO5f": {"description": "WHJvCX9h", "localExt": {"YSGMM1aj": {}, "I6O7yIO3": {}, "CJen4hiH": {}}, "longDescription": "Uha7FSus", "title": "5R0pB1bR"}}, "maxCount": 50, "maxCountPerUser": 16, "name": "KSFNwSHu", "optionBoxConfig": {"boxItems": [{"count": 70, "itemId": "4SsIu70p", "itemSku": "5r9AKNUS"}, {"count": 8, "itemId": "MWX8zbn3", "itemSku": "7uNwnKdo"}, {"count": 8, "itemId": "mKXjt7X7", "itemSku": "GDztTmgC"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 5, "fixedTrialCycles": 93, "graceDays": 79}, "regionData": {"wpIr8lqr": [{"currencyCode": "5xv2Ikqi", "currencyNamespace": "5MngwtSW", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1989-05-13T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1978-07-20T00:00:00Z", "discountedPrice": 86, "expireAt": "1990-05-15T00:00:00Z", "price": 30, "purchaseAt": "1996-04-21T00:00:00Z", "trialPrice": 36}, {"currencyCode": "IGzGa5OD", "currencyNamespace": "Tjts91fZ", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1979-02-09T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1995-12-06T00:00:00Z", "discountedPrice": 6, "expireAt": "1989-04-16T00:00:00Z", "price": 72, "purchaseAt": "1986-01-13T00:00:00Z", "trialPrice": 29}, {"currencyCode": "ujH8y6sF", "currencyNamespace": "EOU2ct9K", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1984-03-10T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1989-10-04T00:00:00Z", "discountedPrice": 18, "expireAt": "1972-11-15T00:00:00Z", "price": 82, "purchaseAt": "1986-07-02T00:00:00Z", "trialPrice": 63}], "p2zF9S3S": [{"currencyCode": "oARkpDC1", "currencyNamespace": "SBWwWu0J", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1992-05-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1999-01-27T00:00:00Z", "discountedPrice": 30, "expireAt": "1978-05-21T00:00:00Z", "price": 79, "purchaseAt": "1979-06-22T00:00:00Z", "trialPrice": 77}, {"currencyCode": "USyY8ChM", "currencyNamespace": "sIHQmEqW", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1985-09-26T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1975-05-21T00:00:00Z", "discountedPrice": 41, "expireAt": "1981-04-16T00:00:00Z", "price": 58, "purchaseAt": "1973-11-04T00:00:00Z", "trialPrice": 12}, {"currencyCode": "Y0UgxNR5", "currencyNamespace": "HqrqqrR6", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1972-05-16T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1984-02-19T00:00:00Z", "discountedPrice": 48, "expireAt": "1994-05-29T00:00:00Z", "price": 17, "purchaseAt": "1971-10-04T00:00:00Z", "trialPrice": 2}], "ZMZPBEb3": [{"currencyCode": "d2JK1FY9", "currencyNamespace": "oKWRQWfu", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1982-04-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1990-07-07T00:00:00Z", "discountedPrice": 70, "expireAt": "1983-05-24T00:00:00Z", "price": 92, "purchaseAt": "1971-04-15T00:00:00Z", "trialPrice": 91}, {"currencyCode": "sM7yyH4w", "currencyNamespace": "vYnuQZUs", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1990-06-05T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1998-01-12T00:00:00Z", "discountedPrice": 55, "expireAt": "1993-07-20T00:00:00Z", "price": 51, "purchaseAt": "1974-12-21T00:00:00Z", "trialPrice": 65}, {"currencyCode": "GySjcsNP", "currencyNamespace": "sJ2qPDZN", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1985-06-21T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1989-10-28T00:00:00Z", "discountedPrice": 46, "expireAt": "1971-07-01T00:00:00Z", "price": 63, "purchaseAt": "1999-08-12T00:00:00Z", "trialPrice": 0}]}, "seasonType": "TIER", "sku": "FKG403DA", "stackable": true, "status": "ACTIVE", "tags": ["WoSSpLty", "VAPpGUTh", "5kyZwb76"], "targetCurrencyCode": "oVlxgb2m", "targetNamespace": "gIvFoY6C", "thumbnailUrl": "kQxvypEw", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateItem' test.out

#- 96 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'kZjU8yy3' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'kVhyEP7w' \
    > test.out 2>&1
eval_tap $? 96 'DeleteItem' test.out

#- 97 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'r0IDRjGw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 47, "orderNo": "4tPYNUOX"}' \
    > test.out 2>&1
eval_tap $? 97 'AcquireItem' test.out

#- 98 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'cGEycx47' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XCqEB2oy' \
    > test.out 2>&1
eval_tap $? 98 'GetApp' test.out

#- 99 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'teu4Paof' \
    --namespace $AB_NAMESPACE \
    --storeId 'RR4SKbgU' \
    --body '{"carousel": [{"alt": "eiUyv1KX", "previewUrl": "DqVqpImU", "thumbnailUrl": "dk97maJT", "type": "image", "url": "wDMPqM0R", "videoSource": "youtube"}, {"alt": "2PnCUR45", "previewUrl": "xFOa191E", "thumbnailUrl": "JzVyHVQq", "type": "video", "url": "4d9lLniG", "videoSource": "youtube"}, {"alt": "tVo5cbfO", "previewUrl": "dWVt1AjL", "thumbnailUrl": "ngw5yJ6Z", "type": "image", "url": "wzEcq92r", "videoSource": "youtube"}], "developer": "q6Do4sAU", "forumUrl": "Hk0xkfnG", "genres": ["RPG", "Sports", "Action"], "localizations": {"CcWyMxOE": {"announcement": "Fqg1b1iW", "slogan": "y9f9pjUG"}, "BOlBEO2N": {"announcement": "EM5zkEIs", "slogan": "ukHlRcq7"}, "Q7eRongP": {"announcement": "E2hrb4IM", "slogan": "fbwjzXWB"}}, "platformRequirements": {"sVneSob1": [{"additionals": "9CilNbVr", "directXVersion": "4t6ULZGd", "diskSpace": "NmjEowkF", "graphics": "cDQvt34z", "label": "Koy2MkUC", "osVersion": "7uF8JaCS", "processor": "O4mC2VVq", "ram": "X4NtsScP", "soundCard": "cDy4VKKD"}, {"additionals": "5ZzK6MOn", "directXVersion": "olvgor1t", "diskSpace": "NOqO05h3", "graphics": "O8PZ2NZu", "label": "eoh001zS", "osVersion": "cwZv2Ub4", "processor": "OlyPyuAF", "ram": "4XjYg2l8", "soundCard": "MORpTfca"}, {"additionals": "8p5qhJoe", "directXVersion": "xOxcP4fc", "diskSpace": "7ZIs9BL0", "graphics": "jULgxvTp", "label": "Uhe2QoxA", "osVersion": "KDYYDlp7", "processor": "uFanVBNK", "ram": "Co3az6it", "soundCard": "EPPukk0w"}], "HEAoRPVm": [{"additionals": "u43iAp6z", "directXVersion": "FlJxobAf", "diskSpace": "8mjiMVRf", "graphics": "8GgSYIp8", "label": "aX5XqQDc", "osVersion": "IKYCYudd", "processor": "3Yts0Y0w", "ram": "7LhJFsrF", "soundCard": "uQqzrKZc"}, {"additionals": "fBpn8CSV", "directXVersion": "7uuPLq0J", "diskSpace": "2BfYPZjH", "graphics": "pZBJ0t42", "label": "pq2zqe7Q", "osVersion": "mBe5lTl6", "processor": "7S16hMFY", "ram": "Dhfsqtmg", "soundCard": "coWBN0eN"}, {"additionals": "EC0xCRSC", "directXVersion": "edVQ2f1U", "diskSpace": "3frgRoxB", "graphics": "BZzokJT6", "label": "4LSrug8V", "osVersion": "4ztf9xOM", "processor": "KtcI5BLH", "ram": "xNYf2eKn", "soundCard": "T59EtLMF"}], "QpwJUW66": [{"additionals": "fPhGzJMu", "directXVersion": "pFme2WsN", "diskSpace": "njBuP6XC", "graphics": "JGwgivFX", "label": "MPHLOO3G", "osVersion": "2ro4kQvM", "processor": "Gim8uMOs", "ram": "dTj9eCq8", "soundCard": "RmtK60Mi"}, {"additionals": "soK60Hnz", "directXVersion": "cq5Bo4xJ", "diskSpace": "Vyxc5aDj", "graphics": "wTukAH13", "label": "7h88ovDS", "osVersion": "484zE5wG", "processor": "U2OHg76W", "ram": "NyLHR5IZ", "soundCard": "Gv0WSbWM"}, {"additionals": "MBo0vi7m", "directXVersion": "NMAS2WZV", "diskSpace": "TLvTbp2S", "graphics": "9RVQzWsI", "label": "L5Oe2peA", "osVersion": "IGWOO8yU", "processor": "XTjn5ym0", "ram": "K3gInPKb", "soundCard": "2IiCKUBd"}]}, "platforms": ["Android", "MacOS", "MacOS"], "players": ["Multi", "LocalCoop", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "Jj9wGYic", "releaseDate": "1989-06-10T00:00:00Z", "websiteUrl": "BmHvPH4F"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateApp' test.out

#- 100 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'pvxE91Uh' \
    --namespace $AB_NAMESPACE \
    --storeId 'GQyTiwcr' \
    > test.out 2>&1
eval_tap $? 100 'DisableItem' test.out

#- 101 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'YGfgfs7N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetItemDynamicData' test.out

#- 102 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'csz2wTeZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'bRKLFUWA' \
    > test.out 2>&1
eval_tap $? 102 'EnableItem' test.out

#- 103 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'fKsNoCPF' \
    --itemId 'yynvSM97' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZGU8mbE3' \
    > test.out 2>&1
eval_tap $? 103 'FeatureItem' test.out

#- 104 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Bav92lja' \
    --itemId 'DrfE1MNW' \
    --namespace $AB_NAMESPACE \
    --storeId '8NKF7rQC' \
    > test.out 2>&1
eval_tap $? 104 'DefeatureItem' test.out

#- 105 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '0rdWPfZD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'mKrFDyYX' \
    --populateBundle 'true' \
    --region 'WTm97ec6' \
    --storeId 'sSF8uo3W' \
    > test.out 2>&1
eval_tap $? 105 'GetLocaleItem' test.out

#- 106 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '83yfVOEm' \
    --namespace $AB_NAMESPACE \
    --storeId 'qCAbsUIY' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 99, "comparison": "isNot", "name": "GCQSy2Iw", "predicateType": "SeasonPassPredicate", "value": "CXQZEfKR", "values": ["JmwwmQGX", "KaOhYlqg", "sWXKukyh"]}, {"anyOf": 15, "comparison": "isGreaterThanOrEqual", "name": "StZU9YG3", "predicateType": "SeasonTierPredicate", "value": "kSZ2f5rI", "values": ["P2bd9uOK", "ELZKoPno", "gtJ9WKMB"]}, {"anyOf": 41, "comparison": "isLessThanOrEqual", "name": "JWnhoSGe", "predicateType": "SeasonTierPredicate", "value": "upXpw7qG", "values": ["VT06xw1H", "srxxUqrx", "b3LhuZJH"]}]}, {"operator": "and", "predicates": [{"anyOf": 98, "comparison": "isLessThanOrEqual", "name": "b5e6nXZ5", "predicateType": "SeasonPassPredicate", "value": "rLDFCAPQ", "values": ["H5sWKfzn", "9rv30BoG", "ZifzVnY2"]}, {"anyOf": 46, "comparison": "isNot", "name": "z8ZVK1qJ", "predicateType": "SeasonTierPredicate", "value": "PpZtKmHQ", "values": ["mInDqjAd", "HhbBjeWR", "43WrQekc"]}, {"anyOf": 39, "comparison": "isLessThan", "name": "1KciHeFA", "predicateType": "SeasonPassPredicate", "value": "hbRyhGYs", "values": ["WkjdrFTm", "FHj1ZtlL", "7ZiHbBbM"]}]}, {"operator": "and", "predicates": [{"anyOf": 17, "comparison": "excludes", "name": "weg5sMU6", "predicateType": "SeasonPassPredicate", "value": "jVtdpFlx", "values": ["OQGkzuA8", "Zh9zRkQD", "HlnbFNnN"]}, {"anyOf": 42, "comparison": "isLessThanOrEqual", "name": "3xZAB2Dp", "predicateType": "SeasonPassPredicate", "value": "FnYucdqQ", "values": ["Crty7uLc", "DhpDT0es", "NWzNgMmp"]}, {"anyOf": 78, "comparison": "includes", "name": "TPbuqSyG", "predicateType": "SeasonPassPredicate", "value": "vZQdU5pz", "values": ["NqAgr2Rg", "vf4N4mUD", "Mth0V199"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateItemPurchaseCondition' test.out

#- 107 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '8q5q3Elb' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "2yz1r0Cx"}' \
    > test.out 2>&1
eval_tap $? 107 'ReturnItem' test.out

#- 108 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name '4SnDVWMC' \
    --offset '86' \
    --tag 'qUcRj3gL' \
    > test.out 2>&1
eval_tap $? 108 'QueryKeyGroups' test.out

#- 109 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hEBevqdi", "name": "L23dhrwU", "status": "INACTIVE", "tags": ["yEiJNgLz", "gVTn0W1k", "R25UzNCw"]}' \
    > test.out 2>&1
eval_tap $? 109 'CreateKeyGroup' test.out

#- 110 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'MJFWxmGK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetKeyGroup' test.out

#- 111 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '5gdGg23J' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8rAahWfE", "name": "ahdtMCg5", "status": "INACTIVE", "tags": ["z3tVBp9k", "d256yj9c", "ezKN3X0f"]}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateKeyGroup' test.out

#- 112 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Ab0WLSAS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupDynamic' test.out

#- 113 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'BUkok7vl' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '78' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 113 'ListKeys' test.out

#- 114 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'UDiWPyaT' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 114 'UploadKeys' test.out

#- 115 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'db3FxFED' \
    --limit '28' \
    --offset '1' \
    --orderNos '["vzlnPorG", "T8mnVs2L", "ud84KibC"]' \
    --sortBy 'NAjU2zo9' \
    --startTime 'cJ4X19sT' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 115 'QueryOrders' test.out

#- 116 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetOrderStatistics' test.out

#- 117 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nWlO2auO' \
    > test.out 2>&1
eval_tap $? 117 'GetOrder' test.out

#- 118 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sATIvCg9' \
    --body '{"description": "Y4Uv3fMm"}' \
    > test.out 2>&1
eval_tap $? 118 'RefundOrder' test.out

#- 119 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentCallbackConfig' test.out

#- 120 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "kYlfEDPr", "privateKey": "y3j8iSSg"}' \
    > test.out 2>&1
eval_tap $? 120 'UpdatePaymentCallbackConfig' test.out

#- 121 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Q23f3L7Y' \
    --externalId 'd1V1fecP' \
    --limit '73' \
    --notificationSource 'PAYPAL' \
    --notificationType 'VUKPF9e2' \
    --offset '71' \
    --paymentOrderNo 'kMCAvXWh' \
    --startDate 'GKFh3yth' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 121 'QueryPaymentNotifications' test.out

#- 122 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'yRn4TBlL' \
    --limit '64' \
    --offset '54' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 122 'QueryPaymentOrders' test.out

#- 123 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Aoyc8K7Z", "currencyNamespace": "YG5PHiuN", "customParameters": {"ylLLUP6J": {}, "SeETGcK4": {}, "aVo2yG3E": {}}, "description": "Op9ElEnE", "extOrderNo": "sf0sxxHm", "extUserId": "blug3Ffx", "itemType": "CODE", "language": "xF_zX", "metadata": {"zHTeyGfS": "zuD7TgfB", "J6kYxBDx": "KHweU3aG", "XPVxlXDG": "cD0XDumZ"}, "notifyUrl": "gHJfVsJD", "omitNotification": false, "platform": "5jqhXCeK", "price": 74, "recurringPaymentOrderNo": "JGpyeTwR", "region": "4a3IC2y2", "returnUrl": "tRYmK82a", "sandbox": true, "sku": "q9cYPI1i", "subscriptionId": "XmmuY9vY", "targetNamespace": "4qJcfCsU", "targetUserId": "VL1RqftE", "title": "4VnveyPY"}' \
    > test.out 2>&1
eval_tap $? 123 'CreatePaymentOrderByDedicated' test.out

#- 124 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'aPYCDAL8' \
    > test.out 2>&1
eval_tap $? 124 'ListExtOrderNoByExtTxId' test.out

#- 125 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'j0o7CJfX' \
    > test.out 2>&1
eval_tap $? 125 'GetPaymentOrder' test.out

#- 126 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TPwH52Uo' \
    --body '{"extTxId": "7htTzsxr", "paymentMethod": "1SZg8oUx", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 126 'ChargePaymentOrder' test.out

#- 127 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'w73MMWHO' \
    --body '{"description": "r4vFyW4E"}' \
    > test.out 2>&1
eval_tap $? 127 'RefundPaymentOrderByDedicated' test.out

#- 128 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'brSS8TZD' \
    --body '{"amount": 44, "currencyCode": "lzm74wdw", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 95, "vat": 70}' \
    > test.out 2>&1
eval_tap $? 128 'SimulatePaymentOrderNotification' test.out

#- 129 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PvccbfMH' \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrderChargeStatus' test.out

#- 130 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 130 'GetPlatformWalletConfig' test.out

#- 131 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Other", "Other", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 131 'UpdatePlatformWalletConfig' test.out

#- 132 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 132 'ResetPlatformWalletConfig' test.out

#- 133 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UYILX6Ar", "eventTopic": "NGPGiauo", "maxAwarded": 88, "maxAwardedPerUser": 71, "namespaceExpression": "EWO14Wsz", "rewardCode": "3XFPVXkE", "rewardConditions": [{"condition": "5nEAxxzu", "conditionName": "0VPo9Y18", "eventName": "GbrAEr5c", "rewardItems": [{"duration": 59, "itemId": "sXhpXsuy", "quantity": 36}, {"duration": 15, "itemId": "6YbRBoxI", "quantity": 73}, {"duration": 26, "itemId": "MlCRdWDF", "quantity": 40}]}, {"condition": "Y2cwEUs4", "conditionName": "wOCuLMyM", "eventName": "C0Mq4wLe", "rewardItems": [{"duration": 23, "itemId": "iaEvJuLF", "quantity": 15}, {"duration": 32, "itemId": "uZsiEsOV", "quantity": 76}, {"duration": 70, "itemId": "fX5X3KlW", "quantity": 80}]}, {"condition": "RjZy9mPX", "conditionName": "TtdRS8SQ", "eventName": "4QzZpIoJ", "rewardItems": [{"duration": 25, "itemId": "TyL2OzL7", "quantity": 6}, {"duration": 68, "itemId": "Q2HOyMVf", "quantity": 10}, {"duration": 95, "itemId": "TK5CmkfU", "quantity": 57}]}], "userIdExpression": "AbAFTkw7"}' \
    > test.out 2>&1
eval_tap $? 133 'CreateReward' test.out

#- 134 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 't3QPHC9N' \
    --limit '24' \
    --offset '60' \
    --sortBy '["namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 134 'QueryRewards' test.out

#- 135 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'ExportRewards' test.out

#- 136 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 136 'ImportRewards' test.out

#- 137 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'm73DIWmF' \
    > test.out 2>&1
eval_tap $? 137 'GetReward' test.out

#- 138 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'QhdzskvO' \
    --body '{"description": "M8mEmPoR", "eventTopic": "sZ2vgCsW", "maxAwarded": 77, "maxAwardedPerUser": 15, "namespaceExpression": "ONJVMuiM", "rewardCode": "0sARRhQ9", "rewardConditions": [{"condition": "YtDFxzun", "conditionName": "HsPVh8Ek", "eventName": "svwsUfrw", "rewardItems": [{"duration": 23, "itemId": "SHLzJSfI", "quantity": 16}, {"duration": 23, "itemId": "DE9H5RUV", "quantity": 18}, {"duration": 20, "itemId": "BIPHfR3n", "quantity": 71}]}, {"condition": "sATfh5co", "conditionName": "w6IsRR9t", "eventName": "oeicNGkI", "rewardItems": [{"duration": 75, "itemId": "TX3xdECo", "quantity": 87}, {"duration": 33, "itemId": "s1z9pogA", "quantity": 6}, {"duration": 8, "itemId": "JpdEvsnu", "quantity": 79}]}, {"condition": "HDD2VGz8", "conditionName": "8B8maiHF", "eventName": "VidoqlXv", "rewardItems": [{"duration": 99, "itemId": "SJrc1bRS", "quantity": 19}, {"duration": 47, "itemId": "6hFqcLk4", "quantity": 88}, {"duration": 56, "itemId": "RyZCkjN0", "quantity": 43}]}], "userIdExpression": "9zxP0o7g"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateReward' test.out

#- 139 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'aQxX2anQ' \
    > test.out 2>&1
eval_tap $? 139 'DeleteReward' test.out

#- 140 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'hKkTSNH6' \
    --body '{"payload": {"NfZwBlrB": {}, "hcJNuDMX": {}, "2n8eyi2n": {}}}' \
    > test.out 2>&1
eval_tap $? 140 'CheckEventCondition' test.out

#- 141 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'yW6Ljx7t' \
    --body '{"conditionName": "gl3LN3tg", "userId": "EDLV3SSB"}' \
    > test.out 2>&1
eval_tap $? 141 'DeleteRewardConditionRecord' test.out

#- 142 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'ListStores' test.out

#- 143 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "pxtzoIdx", "defaultRegion": "yYsFqvgb", "description": "uiFT52zj", "supportedLanguages": ["x7bY9Nix", "z9L3DEed", "g244mT1P"], "supportedRegions": ["GMPCpAPs", "rEWXixXR", "lJG8xIgS"], "title": "Kw6AVfSZ"}' \
    > test.out 2>&1
eval_tap $? 143 'CreateStore' test.out

#- 144 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'iQWxfeBw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 144 'ImportStore' test.out

#- 145 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetPublishedStore' test.out

#- 146 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'DeletePublishedStore' test.out

#- 147 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPublishedStoreBackup' test.out

#- 148 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'RollbackPublishedStore' test.out

#- 149 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GLnyRUcL' \
    > test.out 2>&1
eval_tap $? 149 'GetStore' test.out

#- 150 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'CPZXhOsk' \
    --body '{"defaultLanguage": "P3dIynA6", "defaultRegion": "PQcABqAh", "description": "DOeZ3q7M", "supportedLanguages": ["jt0xEJbR", "ixiFyvOY", "54nDv1N6"], "supportedRegions": ["L2rAf0uJ", "c1Hgjbhp", "c40WN9V3"], "title": "iPndCqL3"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateStore' test.out

#- 151 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'c3bYKELA' \
    > test.out 2>&1
eval_tap $? 151 'DeleteStore' test.out

#- 152 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'e0q2OuWQ' \
    --action 'DELETE' \
    --itemSku 'zFg7GpJt' \
    --itemType 'APP' \
    --limit '82' \
    --offset '60' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'W5eSIBsZ' \
    --updatedAtStart 'z94a4BwM' \
    > test.out 2>&1
eval_tap $? 152 'QueryChanges' test.out

#- 153 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'c34InNCX' \
    > test.out 2>&1
eval_tap $? 153 'PublishAll' test.out

#- 154 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'jja1o7tK' \
    > test.out 2>&1
eval_tap $? 154 'PublishSelected' test.out

#- 155 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '16zG2Noa' \
    > test.out 2>&1
eval_tap $? 155 'SelectAllRecords' test.out

#- 156 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'xOw3nrfF' \
    --action 'DELETE' \
    --itemSku 'rluBly27' \
    --itemType 'SUBSCRIPTION' \
    --type 'STORE' \
    --updatedAtEnd 'CQOrS9pv' \
    --updatedAtStart 'LkeEzYpO' \
    > test.out 2>&1
eval_tap $? 156 'GetStatistic' test.out

#- 157 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'RtCE9l2g' \
    > test.out 2>&1
eval_tap $? 157 'UnselectAllRecords' test.out

#- 158 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'UgtUFGgT' \
    --namespace $AB_NAMESPACE \
    --storeId 'zrQ48xGN' \
    > test.out 2>&1
eval_tap $? 158 'SelectRecord' test.out

#- 159 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'InEujvkA' \
    --namespace $AB_NAMESPACE \
    --storeId '7aaYzd78' \
    > test.out 2>&1
eval_tap $? 159 'UnselectRecord' test.out

#- 160 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'iqKB6ufK' \
    --targetStoreId 'bCVfPHe5' \
    > test.out 2>&1
eval_tap $? 160 'CloneStore' test.out

#- 161 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId 'lUzEF61C' \
    > test.out 2>&1
eval_tap $? 161 'ExportStore' test.out

#- 162 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'tubzfGPt' \
    --limit '59' \
    --offset '96' \
    --sku 'EtY494RL' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'Nv1SVBQU' \
    > test.out 2>&1
eval_tap $? 162 'QuerySubscriptions' test.out

#- 163 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '89yYx0dD' \
    > test.out 2>&1
eval_tap $? 163 'RecurringChargeSubscription' test.out

#- 164 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'XJfhPK7v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetTicketDynamic' test.out

#- 165 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'DlStkbgk' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "awUaBbi0"}' \
    > test.out 2>&1
eval_tap $? 165 'DecreaseTicketSale' test.out

#- 166 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'i0FxNZTV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 166 'GetTicketBoothID' test.out

#- 167 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '2Um2Y4FU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 35, "orderNo": "vNr5GHCc"}' \
    > test.out 2>&1
eval_tap $? 167 'IncreaseTicketSale' test.out

#- 168 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '3rSswlBx' \
    --body '{"achievements": [{"id": "BAHrodjk", "value": 33}, {"id": "i6QBnES5", "value": 66}, {"id": "1shq747H", "value": 44}], "steamUserId": "8DcK3LNN"}' \
    > test.out 2>&1
eval_tap $? 168 'UnlockSteamUserAchievement' test.out

#- 169 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'RNfLwkLo' \
    --xboxUserId 'JyeFQNyI' \
    > test.out 2>&1
eval_tap $? 169 'GetXblUserAchievements' test.out

#- 170 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'vrsVsklH' \
    --body '{"achievements": [{"id": "9Bl4dKSk", "percentComplete": 8}, {"id": "TFViWMSr", "percentComplete": 18}, {"id": "TEYlYDaF", "percentComplete": 74}], "serviceConfigId": "GxyX0NFr", "titleId": "1LDKOzcY", "xboxUserId": "UUwegzr1"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateXblUserAchievement' test.out

#- 171 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'fMWYfMjp' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeCampaign' test.out

#- 172 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nmDJ9nod' \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeEntitlement' test.out

#- 173 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'QVao5UMx' \
    > test.out 2>&1
eval_tap $? 173 'AnonymizeFulfillment' test.out

#- 174 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'y2HxMvRJ' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeIntegration' test.out

#- 175 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'z0dYx5c1' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeOrder' test.out

#- 176 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '0qFX0inn' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizePayment' test.out

#- 177 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'eQsS0aZx' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeSubscription' test.out

#- 178 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'McmQ864H' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeWallet' test.out

#- 179 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'IfkFqYVJ' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName '7sB53rDF' \
    --features '["YUK9Ct5e", "OZX1wuCA", "D5Ukh82b"]' \
    --itemId '["nA6fpITl", "P50Pr6Z9", "EcBMrkVV"]' \
    --limit '43' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 179 'QueryUserEntitlements' test.out

#- 180 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'b0Ei6smA' \
    --body '[{"endDate": "1994-12-09T00:00:00Z", "grantedCode": "3cWlkQPy", "itemId": "TX7Qkpwi", "itemNamespace": "DEk8kclz", "language": "TR-soVV", "quantity": 3, "region": "zYkRobY1", "source": "REFERRAL_BONUS", "startDate": "1983-03-19T00:00:00Z", "storeId": "qLLVyKab"}, {"endDate": "1985-04-12T00:00:00Z", "grantedCode": "3SYWgZNw", "itemId": "r6PUrgRQ", "itemNamespace": "mOZVsoad", "language": "ViRP_625", "quantity": 12, "region": "32VJzHvK", "source": "REWARD", "startDate": "1979-01-20T00:00:00Z", "storeId": "AXx2g8lb"}, {"endDate": "1987-09-03T00:00:00Z", "grantedCode": "dXBoBHf2", "itemId": "UOsTjQ71", "itemNamespace": "fcqn4mVW", "language": "lEa", "quantity": 5, "region": "ZDPv167O", "source": "ACHIEVEMENT", "startDate": "1998-07-09T00:00:00Z", "storeId": "WXkxGvvf"}]' \
    > test.out 2>&1
eval_tap $? 180 'GrantUserEntitlement' test.out

#- 181 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'L6OyRWVX' \
    --activeOnly 'true' \
    --appId 'u7IZ4Sj0' \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementByAppId' test.out

#- 182 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Cl869Z31' \
    --activeOnly 'true' \
    --limit '69' \
    --offset '11' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlementsByAppType' test.out

#- 183 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ZQalEIBL' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --itemId 'awiHoIjj' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementByItemId' test.out

#- 184 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YITThDSo' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '5iyBpmX4' \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementBySku' test.out

#- 185 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Q6s2K7mR' \
    --appIds '["hJw1j9Ts", "inv7sKCe", "SC4ZR7TB"]' \
    --itemIds '["ODOG2tJq", "ToS5s58m", "8258qJe2"]' \
    --skus '["HBBbrY84", "Oo8JLmPv", "35ohluPE"]' \
    > test.out 2>&1
eval_tap $? 185 'ExistsAnyUserActiveEntitlement' test.out

#- 186 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5h1FAIPe' \
    --itemIds '["1Rnqa9Cj", "BGS10akf", "YbrwknjO"]' \
    > test.out 2>&1
eval_tap $? 186 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 187 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BcjihKFL' \
    --appId 'qh7Irt0a' \
    > test.out 2>&1
eval_tap $? 187 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 188 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'cxZhK6P3' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '5DIwfZFv' \
    > test.out 2>&1
eval_tap $? 188 'GetUserEntitlementOwnershipByItemId' test.out

#- 189 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ffelmmfL' \
    --ids '["UBo9OyNz", "p0D5OZgS", "nLRXXsfX"]' \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementOwnershipByItemIds' test.out

#- 190 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '6KBxvWfJ' \
    --entitlementClazz 'CODE' \
    --sku 'nSw7xgvj' \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementOwnershipBySku' test.out

#- 191 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Cg7TWvyn' \
    --entitlementIds 'DpH2N3CY' \
    > test.out 2>&1
eval_tap $? 191 'RevokeUserEntitlements' test.out

#- 192 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'qGH44v3E' \
    --namespace $AB_NAMESPACE \
    --userId 'v4aDgoTR' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlement' test.out

#- 193 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Mv53wiYM' \
    --namespace $AB_NAMESPACE \
    --userId 'IHAAcdfR' \
    --body '{"endDate": "1998-09-27T00:00:00Z", "nullFieldList": ["oWLlc1KT", "unlwLqFI", "CjtgMRgu"], "startDate": "1992-07-22T00:00:00Z", "status": "ACTIVE", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateUserEntitlement' test.out

#- 194 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'qgR5LYLc' \
    --namespace $AB_NAMESPACE \
    --userId 'USDU3sKO' \
    --body '{"options": ["TN812lBf", "p0Q30pL5", "YS9K138z"], "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 194 'ConsumeUserEntitlement' test.out

#- 195 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'g9O3Hwda' \
    --namespace $AB_NAMESPACE \
    --userId 'Bk8SyZnX' \
    > test.out 2>&1
eval_tap $? 195 'DisableUserEntitlement' test.out

#- 196 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'viREW5ce' \
    --namespace $AB_NAMESPACE \
    --userId 'tSXEh6Zs' \
    > test.out 2>&1
eval_tap $? 196 'EnableUserEntitlement' test.out

#- 197 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'EMA0VhBX' \
    --namespace $AB_NAMESPACE \
    --userId 'l3w88aOB' \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlementHistories' test.out

#- 198 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'XS1fWJTF' \
    --namespace $AB_NAMESPACE \
    --userId 'zv0vAeFR' \
    > test.out 2>&1
eval_tap $? 198 'RevokeUserEntitlement' test.out

#- 199 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'J5rGfiGh' \
    --body '{"duration": 90, "endDate": "1990-11-15T00:00:00Z", "itemId": "rMU9DHsZ", "itemSku": "hy0Uqqk9", "language": "ne0RNz1y", "order": {"currency": {"currencyCode": "Xnh8n3gN", "currencySymbol": "9uKgXzIm", "currencyType": "REAL", "decimals": 85, "namespace": "jmQtiVRi"}, "ext": {"Vbn1ie2P": {}, "lRX4UTpW": {}, "aaLt0ozi": {}}, "free": true}, "orderNo": "oES5RIHA", "origin": "GooglePlay", "quantity": 17, "region": "7zzklZLy", "source": "GIFT", "startDate": "1986-06-19T00:00:00Z", "storeId": "sOnfDgN1"}' \
    > test.out 2>&1
eval_tap $? 199 'FulfillItem' test.out

#- 200 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'yxMRnwOJ' \
    --body '{"code": "3bJfr7wC", "language": "eK-629", "region": "XWX03tHV"}' \
    > test.out 2>&1
eval_tap $? 200 'RedeemCode' test.out

#- 201 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '1CmAbKVd' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "NFaO09lY", "namespace": "IlcBdpQ6"}, "item": {"itemId": "snwL1j3F", "itemSku": "kr6QLIHo", "itemType": "GFUNjKax"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "2OUPnhJP", "namespace": "tElemevj"}, "item": {"itemId": "VwkwuLvl", "itemSku": "Q8MaNOWv", "itemType": "rgMtuVjC"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "kh3ERzui", "namespace": "SUXYsY3U"}, "item": {"itemId": "YLqp56sQ", "itemSku": "iDhlwSUr", "itemType": "CQdiC4Fv"}, "quantity": 89, "type": "ITEM"}], "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 201 'FulfillRewards' test.out

#- 202 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'EJ9F4VY3' \
    --endTime 'naHeVQFu' \
    --limit '90' \
    --offset '60' \
    --productId 'ULug8UWz' \
    --startTime 'aTvP3N5R' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserIAPOrders' test.out

#- 203 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'HLXUxwIn' \
    > test.out 2>&1
eval_tap $? 203 'QueryAllUserIAPOrders' test.out

#- 204 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'rAW9PMyF' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "gZau_wKdC-324", "productId": "CLxqbPka", "region": "mjwsj1JO", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 204 'MockFulfillIAPItem' test.out

#- 205 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ZD3GIHJA' \
    --itemId '8OovfxZb' \
    --limit '19' \
    --offset '27' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserOrders' test.out

#- 206 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'RcQkw3Gv' \
    --body '{"currencyCode": "NCHz5R2t", "currencyNamespace": "iIUbquP3", "discountedPrice": 6, "ext": {"UxrC0ols": {}, "JBoaYyeF": {}, "QjZmh2Sp": {}}, "itemId": "YmzvBGbg", "language": "G84u4XPc", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 68, "quantity": 73, "region": "9mby2Z7o", "returnUrl": "b1G761s8", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 206 'AdminCreateUserOrder' test.out

#- 207 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'A7QZHMW2' \
    --itemId 'CoEJ6s4c' \
    > test.out 2>&1
eval_tap $? 207 'CountOfPurchasedItem' test.out

#- 208 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UP1De43d' \
    --userId 't2LAGvGx' \
    > test.out 2>&1
eval_tap $? 208 'GetUserOrder' test.out

#- 209 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'vAQxDExh' \
    --userId 'LR8ToINN' \
    --body '{"status": "INIT", "statusReason": "taV560B3"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserOrderStatus' test.out

#- 210 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'INx9Jup9' \
    --userId 'jrT2iRPd' \
    > test.out 2>&1
eval_tap $? 210 'FulfillUserOrder' test.out

#- 211 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'HkHE6jgR' \
    --userId 'Ij2AgO20' \
    > test.out 2>&1
eval_tap $? 211 'GetUserOrderGrant' test.out

#- 212 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'iEesRT9B' \
    --userId 'bhR5DCCp' \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrderHistories' test.out

#- 213 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'fB3Ssm8n' \
    --userId 'lJvEquuA' \
    --body '{"additionalData": {"cardSummary": "QuJHgSfe"}, "authorisedTime": "1986-01-24T00:00:00Z", "chargebackReversedTime": "1979-06-03T00:00:00Z", "chargebackTime": "1998-06-18T00:00:00Z", "chargedTime": "1987-11-27T00:00:00Z", "createdTime": "1979-05-04T00:00:00Z", "currency": {"currencyCode": "B8nDVCFp", "currencySymbol": "oSIIxcGl", "currencyType": "VIRTUAL", "decimals": 12, "namespace": "9HDLPmEv"}, "customParameters": {"Ajpd6atf": {}, "X0cFBN55": {}, "q4iwKylf": {}}, "extOrderNo": "ra7ES5t3", "extTxId": "MYcy3bdS", "extUserId": "bfswLjIR", "issuedAt": "1978-06-30T00:00:00Z", "metadata": {"E4lmjLti": "AcIlX0D9", "ur2m5asL": "kn7LIxo2", "ueolgk5J": "a4wZGOBr"}, "namespace": "abjMHHcA", "nonceStr": "sbyMOS3L", "paymentMethod": "DSja1WrD", "paymentMethodFee": 17, "paymentOrderNo": "uEZKd89D", "paymentProvider": "ADYEN", "paymentProviderFee": 77, "paymentStationUrl": "yMIbN85k", "price": 11, "refundedTime": "1977-10-09T00:00:00Z", "salesTax": 22, "sandbox": false, "sku": "xSqgM1pD", "status": "REQUEST_FOR_INFORMATION", "statusReason": "MXFyZVyX", "subscriptionId": "4UjnB5Si", "subtotalPrice": 59, "targetNamespace": "bl8mfSwF", "targetUserId": "mcsw2oCO", "tax": 32, "totalPrice": 26, "totalTax": 17, "txEndTime": "1998-12-23T00:00:00Z", "type": "DFrMuFi9", "userId": "DnafIUkv", "vat": 52}' \
    > test.out 2>&1
eval_tap $? 213 'ProcessUserOrderNotification' test.out

#- 214 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'TYT9QlFK' \
    --userId 'E4C7LYWe' \
    > test.out 2>&1
eval_tap $? 214 'DownloadUserOrderReceipt' test.out

#- 215 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '9B3NeHru' \
    --body '{"currencyCode": "bQ694mXy", "currencyNamespace": "nc5LZYKg", "customParameters": {"k5QKyhei": {}, "tsgR2ZbX": {}, "4az7zvA7": {}}, "description": "Gye4frdM", "extOrderNo": "fVlCAjFo", "extUserId": "bo78zgIl", "itemType": "OPTIONBOX", "language": "iz", "metadata": {"EURsodNJ": "6LCjN8h0", "Ohhm5JUU": "6eMB2NkM", "VLkjXyXz": "ooJefZcD"}, "notifyUrl": "OyXzZzl0", "omitNotification": false, "platform": "IyZqCtNz", "price": 28, "recurringPaymentOrderNo": "C9HPeL4v", "region": "bXDDjRri", "returnUrl": "8ZIiTN5v", "sandbox": true, "sku": "yUUwS8Yo", "subscriptionId": "emD4O2o2", "title": "wVIT2YSS"}' \
    > test.out 2>&1
eval_tap $? 215 'CreateUserPaymentOrder' test.out

#- 216 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iwicO3Sa' \
    --userId 'uWyPMoxP' \
    --body '{"description": "aeh2kwtT"}' \
    > test.out 2>&1
eval_tap $? 216 'RefundUserPaymentOrder' test.out

#- 217 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fhdzWAR4' \
    --body '{"code": "nD5q7eu7", "orderNo": "mZiaBnEs"}' \
    > test.out 2>&1
eval_tap $? 217 'ApplyUserRedemption' test.out

#- 218 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'cYEoptcl' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'WCavFVmp' \
    --limit '55' \
    --offset '98' \
    --sku '7uimUVIO' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserSubscriptions' test.out

#- 219 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'BLOT0oWS' \
    --excludeSystem 'true' \
    --limit '29' \
    --offset '89' \
    --subscriptionId 'NSD5Zp1K' \
    > test.out 2>&1
eval_tap $? 219 'GetUserSubscriptionActivities' test.out

#- 220 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'At37m9QS' \
    --body '{"grantDays": 100, "itemId": "vSx5yrzA", "language": "O7KXsB6K", "reason": "PYYrvU5o", "region": "VbdNBpz5", "source": "kEh5nbQn"}' \
    > test.out 2>&1
eval_tap $? 220 'PlatformSubscribeSubscription' test.out

#- 221 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ZviBE45M' \
    --itemId 'HrZ9fROT' \
    > test.out 2>&1
eval_tap $? 221 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 222 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rHf1M7Tn' \
    --userId 'ykyFyVpg' \
    > test.out 2>&1
eval_tap $? 222 'GetUserSubscription' test.out

#- 223 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qz23CSvs' \
    --userId '2QymmdaV' \
    > test.out 2>&1
eval_tap $? 223 'DeleteUserSubscription' test.out

#- 224 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l0tLqiLQ' \
    --userId 'sOvVguh7' \
    --force 'true' \
    --body '{"immediate": false, "reason": "6BDFEjse"}' \
    > test.out 2>&1
eval_tap $? 224 'CancelSubscription' test.out

#- 225 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kM1kxOoP' \
    --userId '7VVRKAhT' \
    --body '{"grantDays": 20, "reason": "FTrlufU3"}' \
    > test.out 2>&1
eval_tap $? 225 'GrantDaysToSubscription' test.out

#- 226 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pfX6DGfd' \
    --userId 'BFAqtOsA' \
    --excludeFree 'true' \
    --limit '10' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscriptionBillingHistories' test.out

#- 227 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NwmO4man' \
    --userId '52t7YQUY' \
    --body '{"additionalData": {"cardSummary": "R3IMLKbK"}, "authorisedTime": "1990-08-26T00:00:00Z", "chargebackReversedTime": "1972-08-09T00:00:00Z", "chargebackTime": "1973-03-29T00:00:00Z", "chargedTime": "1974-10-30T00:00:00Z", "createdTime": "1988-03-02T00:00:00Z", "currency": {"currencyCode": "FSjxsTQ7", "currencySymbol": "AkBjtmUG", "currencyType": "VIRTUAL", "decimals": 1, "namespace": "JPHcM1RC"}, "customParameters": {"chG4shYz": {}, "FlFt9aRD": {}, "ynAqtSCj": {}}, "extOrderNo": "wbhW988L", "extTxId": "2NE8leXY", "extUserId": "2XMGNUXM", "issuedAt": "1980-11-22T00:00:00Z", "metadata": {"8KZQnIot": "iYUjGKRn", "6RjJQ5n8": "esYatG5D", "nX84p8gw": "SWXGtwb0"}, "namespace": "QgQ6xSzz", "nonceStr": "JVeTG7QJ", "paymentMethod": "YpFlbHPc", "paymentMethodFee": 55, "paymentOrderNo": "X2nyijRL", "paymentProvider": "PAYPAL", "paymentProviderFee": 35, "paymentStationUrl": "Wtnd0OYR", "price": 5, "refundedTime": "1997-02-09T00:00:00Z", "salesTax": 44, "sandbox": true, "sku": "UwkVVYrt", "status": "REFUND_FAILED", "statusReason": "2QfroY5T", "subscriptionId": "Bd33cQwb", "subtotalPrice": 67, "targetNamespace": "wlXiFI9O", "targetUserId": "orif4oTj", "tax": 5, "totalPrice": 68, "totalTax": 66, "txEndTime": "1992-10-28T00:00:00Z", "type": "UMWDZa80", "userId": "93lRzc2o", "vat": 99}' \
    > test.out 2>&1
eval_tap $? 227 'ProcessUserSubscriptionNotification' test.out

#- 228 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'H4JPy9GD' \
    --namespace $AB_NAMESPACE \
    --userId '5rD3qzas' \
    --body '{"count": 44, "orderNo": "v7mVc13C"}' \
    > test.out 2>&1
eval_tap $? 228 'AcquireUserTicket' test.out

#- 229 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'B2zs3cIK' \
    > test.out 2>&1
eval_tap $? 229 'QueryUserCurrencyWallets' test.out

#- 230 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '7diqUruO' \
    --namespace $AB_NAMESPACE \
    --userId 'wIxnB3wi' \
    --limit '57' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 230 'ListUserCurrencyTransactions' test.out

#- 231 CheckWallet
eval_tap 0 231 'CheckWallet # SKIP deprecated' test.out

#- 232 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'wZzT450h' \
    --namespace $AB_NAMESPACE \
    --userId 'kcyfpVkQ' \
    --body '{"amount": 96, "expireAt": "1987-02-19T00:00:00Z", "origin": "GooglePlay", "reason": "SbXOVQGz", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 232 'CreditUserWallet' test.out

#- 233 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'q2yIb9Yf' \
    --namespace $AB_NAMESPACE \
    --userId 'dwkdHPuQ' \
    --body '{"amount": 9, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 233 'PayWithUserWallet' test.out

#- 234 GetUserWallet
eval_tap 0 234 'GetUserWallet # SKIP deprecated' test.out

#- 235 DebitUserWallet
eval_tap 0 235 'DebitUserWallet # SKIP deprecated' test.out

#- 236 DisableUserWallet
eval_tap 0 236 'DisableUserWallet # SKIP deprecated' test.out

#- 237 EnableUserWallet
eval_tap 0 237 'EnableUserWallet # SKIP deprecated' test.out

#- 238 ListUserWalletTransactions
eval_tap 0 238 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 239 QueryWallets
eval_tap 0 239 'QueryWallets # SKIP deprecated' test.out

#- 240 GetWallet
eval_tap 0 240 'GetWallet # SKIP deprecated' test.out

#- 241 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'zlempyBx' \
    --end 'du6Lay3O' \
    --start 'b9Vh2p53' \
    > test.out 2>&1
eval_tap $? 241 'SyncOrders' test.out

#- 242 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["S6il3CCw", "hjPP6pEq", "ejSj1FWr"], "apiKey": "UuonaKbL", "authoriseAsCapture": true, "blockedPaymentMethods": ["iA1W6XwX", "EOzax0dX", "U8zUlun3"], "clientKey": "LECzuGI0", "dropInSettings": "S4asyCDq", "liveEndpointUrlPrefix": "VFEvyKEc", "merchantAccount": "0HARwRlP", "notificationHmacKey": "Fb3Tmshq", "notificationPassword": "DXSmn3L3", "notificationUsername": "LIgLxJNh", "returnUrl": "rpzsk1sQ", "settings": "OklviL0A"}' \
    > test.out 2>&1
eval_tap $? 242 'TestAdyenConfig' test.out

#- 243 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "1CMgEjjf", "privateKey": "jhx9DaM8", "publicKey": "CG8byxHQ", "returnUrl": "0dAFIrD8"}' \
    > test.out 2>&1
eval_tap $? 243 'TestAliPayConfig' test.out

#- 244 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "AAoMh8xl", "secretKey": "71CR9d4c"}' \
    > test.out 2>&1
eval_tap $? 244 'TestCheckoutConfig' test.out

#- 245 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'sl57YxPR' \
    --region '5z7mVrVN' \
    > test.out 2>&1
eval_tap $? 245 'DebugMatchedPaymentMerchantConfig' test.out

#- 246 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "jCoOBFQA", "clientSecret": "bOZ9xl85", "returnUrl": "qSU70tfb", "webHookId": "rXznY02o"}' \
    > test.out 2>&1
eval_tap $? 246 'TestPayPalConfig' test.out

#- 247 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["MhKdwfLF", "Pvkmg3aU", "STprByZ7"], "publishableKey": "oJeG7F6A", "secretKey": "v6S2AfgD", "webhookSecret": "Mc216cTz"}' \
    > test.out 2>&1
eval_tap $? 247 'TestStripeConfig' test.out

#- 248 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "SuRrM4ut", "key": "uYUbGB4X", "mchid": "t8KsoGaD", "returnUrl": "ADhUMLWX"}' \
    > test.out 2>&1
eval_tap $? 248 'TestWxPayConfig' test.out

#- 249 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "leDb6Tyk", "flowCompletionUrl": "NGEQ1qZQ", "merchantId": 17, "projectId": 58, "projectSecretKey": "AHKLavbY"}' \
    > test.out 2>&1
eval_tap $? 249 'TestXsollaConfig' test.out

#- 250 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'NUhFj8dJ' \
    > test.out 2>&1
eval_tap $? 250 'GetPaymentMerchantConfig' test.out

#- 251 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'UPScH3DQ' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["55Dqn0En", "i2zW1f7p", "v0egReke"], "apiKey": "lEpEscIQ", "authoriseAsCapture": false, "blockedPaymentMethods": ["qjQ754Bd", "PxI5s3vr", "THp27Hr6"], "clientKey": "bWewzeCI", "dropInSettings": "4xgSQPoW", "liveEndpointUrlPrefix": "0oHIgoO9", "merchantAccount": "yHUXNj2o", "notificationHmacKey": "3S0wp7gL", "notificationPassword": "sR29gGMg", "notificationUsername": "hS51S2yr", "returnUrl": "HaLHjbe5", "settings": "fuwLrNMO"}' \
    > test.out 2>&1
eval_tap $? 251 'UpdateAdyenConfig' test.out

#- 252 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'kYRWK3PK' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 252 'TestAdyenConfigById' test.out

#- 253 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Fey1Ut8S' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "XZZQUr5t", "privateKey": "XrJWHIZi", "publicKey": "aINBH5Oh", "returnUrl": "HG70jdat"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateAliPayConfig' test.out

#- 254 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'DWqsmOYL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 254 'TestAliPayConfigById' test.out

#- 255 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'cRZNJqcj' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "Yl1HhIQR", "secretKey": "3zcM2uS8"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateCheckoutConfig' test.out

#- 256 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '48yrbGtV' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestCheckoutConfigById' test.out

#- 257 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'DNtDFOBL' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "7vpQL00V", "clientSecret": "SqVTfccU", "returnUrl": "TaLMvTyn", "webHookId": "kv00vfBL"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdatePayPalConfig' test.out

#- 258 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Fbxc3O0q' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 258 'TestPayPalConfigById' test.out

#- 259 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '9J6c24S7' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["4Cesfy1W", "JUzc41IH", "DK1dSImU"], "publishableKey": "TtE4QgPr", "secretKey": "SwxZ4ZJj", "webhookSecret": "R5NrwyfM"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateStripeConfig' test.out

#- 260 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '2TNru7l1' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 260 'TestStripeConfigById' test.out

#- 261 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'IntdByek' \
    --validate 'true' \
    --body '{"appId": "lR7QIJva", "key": "sfIQyVxd", "mchid": "ZKZnTMy6", "returnUrl": "uypswQLx"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateWxPayConfig' test.out

#- 262 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'jB7fqeji' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 262 'UpdateWxPayConfigCert' test.out

#- 263 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'bJOMqz8Q' \
    > test.out 2>&1
eval_tap $? 263 'TestWxPayConfigById' test.out

#- 264 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '6GNagjR1' \
    --validate 'false' \
    --body '{"apiKey": "sDVAzoF2", "flowCompletionUrl": "VucuVWWu", "merchantId": 61, "projectId": 14, "projectSecretKey": "GqF6pWfp"}' \
    > test.out 2>&1
eval_tap $? 264 'UpdateXsollaConfig' test.out

#- 265 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '0zLX5ZaY' \
    > test.out 2>&1
eval_tap $? 265 'TestXsollaConfigById' test.out

#- 266 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'I7pRGhif' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateXsollaUIConfig' test.out

#- 267 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '29' \
    --namespace 'EQ9H5kMV' \
    --offset '66' \
    --region '2LA4WOBN' \
    > test.out 2>&1
eval_tap $? 267 'QueryPaymentProviderConfig' test.out

#- 268 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "BUgymFU9", "region": "ijhuAq7A", "sandboxTaxJarApiToken": "gw0SDWIi", "specials": ["WXPAY", "STRIPE", "STRIPE"], "taxJarApiToken": "1euvsllJ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 268 'CreatePaymentProviderConfig' test.out

#- 269 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 269 'GetAggregatePaymentProviders' test.out

#- 270 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'fBpiPojQ' \
    --region '3p6VKCTD' \
    > test.out 2>&1
eval_tap $? 270 'DebugMatchedPaymentProviderConfig' test.out

#- 271 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 271 'GetSpecialPaymentProviders' test.out

#- 272 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '1D06WSh9' \
    --body '{"aggregate": "XSOLLA", "namespace": "gTgDLLYQ", "region": "X6n2HbOS", "sandboxTaxJarApiToken": "K61886cm", "specials": ["CHECKOUT", "STRIPE", "CHECKOUT"], "taxJarApiToken": "pTtAc7BK", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 272 'UpdatePaymentProviderConfig' test.out

#- 273 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'PkcKUQo3' \
    > test.out 2>&1
eval_tap $? 273 'DeletePaymentProviderConfig' test.out

#- 274 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentTaxConfig' test.out

#- 275 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "V7sVJ9fW", "taxJarApiToken": "plzeF9pO", "taxJarEnabled": true, "taxJarProductCodesMapping": {"DwvidzxY": "w1yoUChC", "jzgBLEhr": "IQVroLE1", "Zpl1fcY3": "ILzOaeqj"}}' \
    > test.out 2>&1
eval_tap $? 275 'UpdatePaymentTaxConfig' test.out

#- 276 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'CnJFvbDl' \
    --end 'V3LQCJOZ' \
    --start 'snbOy5ve' \
    > test.out 2>&1
eval_tap $? 276 'SyncPaymentOrders' test.out

#- 277 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'kDZp8CCN' \
    --storeId '4WBwjJ04' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetRootCategories' test.out

#- 278 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '0am9DFj2' \
    --storeId 'vdZBhBVy' \
    > test.out 2>&1
eval_tap $? 278 'DownloadCategories' test.out

#- 279 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'M0ZwNyh3' \
    --namespace $AB_NAMESPACE \
    --language 'h0eTTzNV' \
    --storeId 'ygy3h6o3' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetCategory' test.out

#- 280 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '8Boy8GIm' \
    --namespace $AB_NAMESPACE \
    --language 'PjYcgZuw' \
    --storeId 'WFb16mWM' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetChildCategories' test.out

#- 281 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'FpEq8UAy' \
    --namespace $AB_NAMESPACE \
    --language 's4R4FGZC' \
    --storeId 'fdOzVY8m' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetDescendantCategories' test.out

#- 282 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 282 'PublicListCurrencies' test.out

#- 283 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'yd1ggEvJ' \
    --region 'OwAivBiX' \
    --storeId 'vI1udJGv' \
    --appId 'pqywpoih' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetItemByAppId' test.out

#- 284 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'zCDeDGCe' \
    --categoryPath 'eyIKVehS' \
    --features 'E8QiCfK9' \
    --itemType 'BUNDLE' \
    --language '1SDiQsZU' \
    --limit '78' \
    --offset '20' \
    --region 'EBNiGOYu' \
    --sortBy '["updatedAt", "name:desc", "displayOrder"]' \
    --storeId 'ow71IDKz' \
    --tags 'BSLfwAaN' \
    > test.out 2>&1
eval_tap $? 284 'PublicQueryItems' test.out

#- 285 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'a5x9NYmi' \
    --region 'hjQki9cf' \
    --storeId 's4YIkduS' \
    --sku 'Rd6MZ5jr' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItemBySku' test.out

#- 286 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'PDDQ2Uvw' \
    --region 'OIlIIcPx' \
    --storeId 'FirtplGV' \
    --itemIds 'AyblAbjM' \
    > test.out 2>&1
eval_tap $? 286 'PublicBulkGetItems' test.out

#- 287 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["v3PBX1ck", "mwUeAHIX", "mST58ody"]}' \
    > test.out 2>&1
eval_tap $? 287 'PublicValidateItemPurchaseCondition' test.out

#- 288 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '75' \
    --offset '29' \
    --region 'eqRFeXrJ' \
    --storeId 'wze8jhYD' \
    --keyword 'YvDGLSZ9' \
    --language 'ug0yCgHZ' \
    > test.out 2>&1
eval_tap $? 288 'PublicSearchItems' test.out

#- 289 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'lw0KO4wx' \
    --namespace $AB_NAMESPACE \
    --language 'JpjglmzG' \
    --region 'jIwsFwkF' \
    --storeId 'VZFycbu0' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetApp' test.out

#- 290 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'wBaw0ksv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'PublicGetItemDynamicData' test.out

#- 291 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'yOnrDH7a' \
    --namespace $AB_NAMESPACE \
    --language 'TKei4KlQ' \
    --populateBundle 'false' \
    --region 'zyfkwpYS' \
    --storeId 'D55jriSd' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItem' test.out

#- 292 GetPaymentCustomization
eval_tap 0 292 'GetPaymentCustomization # SKIP deprecated' test.out

#- 293 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "DXeHZG2U", "paymentProvider": "STRIPE", "returnUrl": "H8oWsJkN", "ui": "9caLRuyN", "zipCode": "ofroGoxA"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPaymentUrl' test.out

#- 294 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9UpWO0HH' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetPaymentMethods' test.out

#- 295 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nBg1BJkb' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUnpaidPaymentOrder' test.out

#- 296 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'n5X2Ht40' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'LzsS0cMG' \
    --body '{"token": "KRXm1m3O"}' \
    > test.out 2>&1
eval_tap $? 296 'Pay' test.out

#- 297 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xD2Bw1wu' \
    > test.out 2>&1
eval_tap $? 297 'PublicCheckPaymentOrderPaidStatus' test.out

#- 298 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region 'sXUoyHSv' \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentPublicConfig' test.out

#- 299 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'CCDwdK2o' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetQRCode' test.out

#- 300 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'XWS4kgya' \
    --foreinginvoice 'DRqXwGAk' \
    --invoiceId 'b8YYDAI6' \
    --payload 'V5GpZec5' \
    --redirectResult '4jhiPbnW' \
    --resultCode 'zsA1WMjP' \
    --sessionId 'PCYCYZHG' \
    --status '2cSe1xuj' \
    --token 'wsc5yvLC' \
    --type '5eDqBDoD' \
    --userId 'NAzGcoxE' \
    --orderNo 'SAHA1ZBT' \
    --paymentOrderNo '1XKw9fi7' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'mVFTpgyZ' \
    > test.out 2>&1
eval_tap $? 300 'PublicNormalizePaymentReturnUrl' test.out

#- 301 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'FE3ljjYn' \
    --paymentOrderNo 'IUHK89lh' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentTaxValue' test.out

#- 302 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'uZNVTos3' \
    > test.out 2>&1
eval_tap $? 302 'GetRewardByCode' test.out

#- 303 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'fUTxUWAh' \
    --limit '18' \
    --offset '16' \
    --sortBy '["rewardCode", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 303 'QueryRewards1' test.out

#- 304 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'xtkZaqQT' \
    > test.out 2>&1
eval_tap $? 304 'GetReward1' test.out

#- 305 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'PublicListStores' test.out

#- 306 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["NxJEI7sY", "dWRm9chJ", "8baI4SY3"]' \
    --itemIds '["uM1QfhBs", "p8Y8R8s1", "uyD5bS1V"]' \
    --skus '["3Gt4GhEY", "5RX0fgsr", "NVVhGwvl"]' \
    > test.out 2>&1
eval_tap $? 306 'PublicExistsAnyMyActiveEntitlement' test.out

#- 307 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'I4MOXg0Q' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 308 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'GtaBhXMq' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 309 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'QzIt7SmQ' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 310 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["e8uNZjct", "adUZAs32", "vWCvG336"]' \
    --itemIds '["lEfC4WBm", "YV86Y7RT", "0Lky2Bn5"]' \
    --skus '["wbFj3q4b", "xce3JbcR", "NUOPHDYl"]' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetEntitlementOwnershipToken' test.out

#- 311 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'zD5Czexi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyWallet' test.out

#- 312 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'QOtK9VlZ' \
    --body '{"epicGamesJwtToken": "28jP1rTE"}' \
    > test.out 2>&1
eval_tap $? 312 'SyncEpicGameDLC' test.out

#- 313 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sxAgtj7B' \
    --body '{"serviceLabel": 72}' \
    > test.out 2>&1
eval_tap $? 313 'PublicSyncPsnDlcInventory' test.out

#- 314 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oO1zV0dy' \
    --body '{"appId": "GpvcDgSm", "steamId": "W0PF8Jy8"}' \
    > test.out 2>&1
eval_tap $? 314 'SyncSteamDLC' test.out

#- 315 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'f4Kdu4y3' \
    --body '{"xstsToken": "1Cj9KUem"}' \
    > test.out 2>&1
eval_tap $? 315 'SyncXboxDLC' test.out

#- 316 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'eOovXyBF' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'vlPhAZBe' \
    --features '["871SZtai", "ESAas9Hr", "RVetbz23"]' \
    --itemId '["udH0uGem", "iRhdKyh8", "O9dVSVrD"]' \
    --limit '83' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 316 'PublicQueryUserEntitlements' test.out

#- 317 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'CctGOXcB' \
    --appId 'VUhlNPa1' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserAppEntitlementByAppId' test.out

#- 318 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'd4S2UXMc' \
    --limit '59' \
    --offset '34' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 318 'PublicQueryUserEntitlementsByAppType' test.out

#- 319 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PrukjbVc' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '2DaqsQuz' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementByItemId' test.out

#- 320 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'XeXGFTNY' \
    --entitlementClazz 'APP' \
    --sku '232e5bj4' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlementBySku' test.out

#- 321 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rAicIg00' \
    --appIds '["sVWHnhjJ", "5JxQF9XE", "PxanrzZz"]' \
    --itemIds '["k7owORB0", "J13oc7Ef", "nAH9x8a2"]' \
    --skus '["l4USrJan", "dvlSAA69", "jaOkKNhk"]' \
    > test.out 2>&1
eval_tap $? 321 'PublicExistsAnyUserActiveEntitlement' test.out

#- 322 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 's3MROGMK' \
    --appId 'Reit5CTg' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 323 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Sg9rQZZs' \
    --entitlementClazz 'APP' \
    --itemId 'NVtzSnIa' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 324 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ywP74Q43' \
    --ids '["HWw8hT3V", "RdYfP3L8", "jrpX6eSB"]' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 325 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZoA2h3X0' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'n3HtgAl8' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 326 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'mL4ZcKXI' \
    --namespace $AB_NAMESPACE \
    --userId 'goYptC5r' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlement' test.out

#- 327 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'wCrSZmoT' \
    --namespace $AB_NAMESPACE \
    --userId 'BGqIjtUU' \
    --body '{"options": ["ZQwHBT8i", "QiyRAcQ5", "XDqD2pll"], "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 327 'PublicConsumeUserEntitlement' test.out

#- 328 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '2ynNsp2b' \
    --body '{"code": "wjZrBMvG", "language": "De-deOw_194", "region": "5YmwRp2A"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicRedeemCode' test.out

#- 329 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'z3EFTZFF' \
    --body '{"excludeOldTransactions": true, "language": "JmaT-eiOX-Fs", "productId": "BGjJ7A9b", "receiptData": "mx2qYuMb", "region": "fIR3GrKH", "transactionId": "u14dU8dP"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicFulfillAppleIAPItem' test.out

#- 330 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '1g1ilWuj' \
    --body '{"epicGamesJwtToken": "PmHyQDPX"}' \
    > test.out 2>&1
eval_tap $? 330 'SyncEpicGamesInventory' test.out

#- 331 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '21GmcXr0' \
    --body '{"autoAck": false, "language": "LR-cvjO", "orderId": "PmYnP5ws", "packageName": "FX7KhAfm", "productId": "Oz8Uh7T4", "purchaseTime": 80, "purchaseToken": "5J1M2pjx", "region": "uQgFHRH9"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicFulfillGoogleIAPItem' test.out

#- 332 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'XYbAlWB2' \
    --body '{"currencyCode": "QfxDM8y6", "price": 0.17272318858038815, "productId": "jLW6z7KM", "serviceLabel": 8}' \
    > test.out 2>&1
eval_tap $? 332 'PublicReconcilePlayStationStore' test.out

#- 333 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BOHMhPW8' \
    --body '{"appId": "FFh61Aec", "language": "tQM", "region": "XvVu7rZz", "stadiaPlayerId": "i0ZM82hP"}' \
    > test.out 2>&1
eval_tap $? 333 'SyncStadiaEntitlement' test.out

#- 334 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'X8fUvMUq' \
    --body '{"appId": "O6qTLqZo", "currencyCode": "aBK6SOxB", "language": "vhZk-qqqi", "price": 0.7345415748278553, "productId": "HghF22Y4", "region": "AFIgsF5m", "steamId": "8cBwSvpc"}' \
    > test.out 2>&1
eval_tap $? 334 'SyncSteamInventory' test.out

#- 335 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SLttr0vi' \
    --body '{"gameId": "3rvbbm5c", "language": "oL_538", "region": "SB1hRp52"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncTwitchDropsEntitlement' test.out

#- 336 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xn8NzocA' \
    --body '{"currencyCode": "jRwYGEWx", "price": 0.46659064717558596, "productId": "ArXzOtZt", "xstsToken": "seBuLgyN"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxInventory' test.out

#- 337 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WVLEnS5v' \
    --itemId 'gIsMloTf' \
    --limit '81' \
    --offset '23' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserOrders' test.out

#- 338 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CzYva5Oc' \
    --body '{"currencyCode": "Q2TLGlbC", "discountedPrice": 15, "ext": {"duV3MUgS": {}, "bStdwRJw": {}, "F73kmUEp": {}}, "itemId": "F2LbeEYX", "language": "QC-zSPG-146", "price": 13, "quantity": 14, "region": "zvr38V8o", "returnUrl": "RIDbN0Pb"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicCreateUserOrder' test.out

#- 339 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KAy13OPv' \
    --userId 'UyVCO0ve' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetUserOrder' test.out

#- 340 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4WioJmNk' \
    --userId '7LDZB9MK' \
    > test.out 2>&1
eval_tap $? 340 'PublicCancelUserOrder' test.out

#- 341 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'RRZrjQti' \
    --userId 'h41ApOig' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserOrderHistories' test.out

#- 342 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'YM8MEoI6' \
    --userId 'VOSJblUY' \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadUserOrderReceipt' test.out

#- 343 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Q3au7KMI' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetPaymentAccounts' test.out

#- 344 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'mSEHrjsU' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'UtHiyIaT' \
    > test.out 2>&1
eval_tap $? 344 'PublicDeletePaymentAccount' test.out

#- 345 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'kGXjlwYK' \
    --chargeStatus 'CHARGED' \
    --itemId 'GQAF3NZT' \
    --limit '78' \
    --offset '57' \
    --sku 'j6boqgHP' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserSubscriptions' test.out

#- 346 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '18RGjtlz' \
    --body '{"currencyCode": "edDAtjQ3", "itemId": "7A6xePJu", "language": "DGIH-Gaib-358", "region": "UPscX75w", "returnUrl": "YT6jJOg4", "source": "tWg9t5CP"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicSubscribeSubscription' test.out

#- 347 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VOAyR8z7' \
    --itemId 'NKiPNJyz' \
    > test.out 2>&1
eval_tap $? 347 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 348 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EsM3vJmI' \
    --userId 'Bm5LcuiR' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserSubscription' test.out

#- 349 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'p03zOkMh' \
    --userId 'ydCTBQUb' \
    > test.out 2>&1
eval_tap $? 349 'PublicChangeSubscriptionBillingAccount' test.out

#- 350 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3onCPEjS' \
    --userId 'mAqAd3Jf' \
    --body '{"immediate": true, "reason": "svlY3466"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicCancelSubscription' test.out

#- 351 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'V0eXdy1Z' \
    --userId 'ehtCOv6p' \
    --excludeFree 'true' \
    --limit '22' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserSubscriptionBillingHistories' test.out

#- 352 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'BzRK4bnx' \
    --namespace $AB_NAMESPACE \
    --userId 'ft4biz3b' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetWallet' test.out

#- 353 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'OO4RNXOn' \
    --namespace $AB_NAMESPACE \
    --userId 'L0QlLgXm' \
    --limit '31' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 353 'PublicListUserWalletTransactions' test.out

#- 354 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'IQBiCP8u' \
    --baseAppId 'UdAi3N9S' \
    --categoryPath 'Ua9o0c1j' \
    --features 't4HvDHB1' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '39' \
    --offset '33' \
    --region 'RLIj1p9h' \
    --sortBy 'yFtF1gMC' \
    --storeId '6UixRTqV' \
    --tags 'b2PONCwC' \
    --targetNamespace 'JGILrdT7' \
    > test.out 2>&1
eval_tap $? 354 'QueryItems1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE