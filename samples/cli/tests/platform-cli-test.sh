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
echo "1..360"

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
    --body '{"context": {"item": {"appId": "KOiFhhkY", "appType": "DLC", "baseAppId": "gl6bDW6F", "boothName": "kdnQUab2", "boundItemIds": ["cJEj0N6y", "yMHeIq02", "axR9WXlf"], "categoryPath": "Lv4iJ3NY", "clazz": "t1z6yfgz", "createdAt": "1986-09-07T00:00:00Z", "description": "wvlzDWNk", "displayOrder": 28, "entitlementType": "DURABLE", "ext": {"Hfb4xTlr": {}, "P9B8ckwq": {}, "bxE1yiqc": {}}, "features": ["nJNVWy4z", "GUS39XJN", "U7orJaGq"], "fresh": false, "images": [{"as": "kYUlRdf2", "caption": "g7nAbt8H", "height": 29, "imageUrl": "HGaTxGFF", "smallImageUrl": "ZWoVAQS6", "width": 12}, {"as": "A9OFlssT", "caption": "9b66M9L1", "height": 21, "imageUrl": "zGs6MZua", "smallImageUrl": "ukCt1ub8", "width": 17}, {"as": "AYkIiu0z", "caption": "82xqnYLt", "height": 38, "imageUrl": "9mqHIecy", "smallImageUrl": "Ym7Km67C", "width": 38}], "itemId": "xJa2Lnj9", "itemIds": ["hjeRU0mr", "UpXt6Qym", "23yvkMxw"], "itemQty": {"2OEqaIyo": 62, "eTIvjVoi": 99, "jYdTSIo2": 49}, "itemType": "CODE", "language": "TUPDkct1", "listable": true, "localExt": {"ayNYZVdl": {}, "56RdMS3C": {}, "TvtTiiD3": {}}, "longDescription": "88lmJVHS", "maxCount": 3, "maxCountPerUser": 84, "name": "Dv7km66V", "namespace": "mkQtYkdn", "optionBoxConfig": {"boxItems": [{"count": 16, "itemId": "FOqIXLSL", "itemSku": "coNeOtXc"}, {"count": 92, "itemId": "SFTeR2gB", "itemSku": "BNcTXYVO"}, {"count": 14, "itemId": "aptXtvbV", "itemSku": "gZxtHu5D"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 48, "comparison": "includes", "name": "YnXlV4fX", "predicateType": "SeasonTierPredicate", "value": "bOwrH9o2", "values": ["C26XydSd", "YpvsA23Y", "yhaM6Tz9"]}, {"anyOf": 44, "comparison": "isNot", "name": "zQK1O5KO", "predicateType": "SeasonPassPredicate", "value": "9mog37Rn", "values": ["JAgrbsVU", "vaVBRWHK", "Fa2ZWOzg"]}, {"anyOf": 96, "comparison": "excludes", "name": "Ay47mNxO", "predicateType": "SeasonTierPredicate", "value": "38wPeqZT", "values": ["Z75xurAv", "eHe2aRpt", "Jz5w6Y9u"]}]}, {"operator": "or", "predicates": [{"anyOf": 21, "comparison": "is", "name": "t106uLuT", "predicateType": "EntitlementPredicate", "value": "lLt4DVwB", "values": ["jeSKrqH8", "BXkXfleM", "CkvW3Tuo"]}, {"anyOf": 82, "comparison": "isGreaterThanOrEqual", "name": "qLHCCZMf", "predicateType": "SeasonPassPredicate", "value": "zwznnx6d", "values": ["BAxuMrWT", "i4ATrxHD", "qOZVGHpm"]}, {"anyOf": 58, "comparison": "isGreaterThan", "name": "mhqCd62T", "predicateType": "SeasonTierPredicate", "value": "TttReEdU", "values": ["QvsPAj85", "uYQSpcWz", "GRimmYaf"]}]}, {"operator": "or", "predicates": [{"anyOf": 19, "comparison": "includes", "name": "ATYcSlgg", "predicateType": "SeasonTierPredicate", "value": "sdaNOpXv", "values": ["bOTmDrVH", "GutkEtOA", "64khpOQZ"]}, {"anyOf": 26, "comparison": "includes", "name": "876FMpol", "predicateType": "SeasonTierPredicate", "value": "E2FVv3ZF", "values": ["GWjBNNVL", "C4GneLzh", "JEr86956"]}, {"anyOf": 55, "comparison": "isNot", "name": "CqWJyQEo", "predicateType": "EntitlementPredicate", "value": "P4bbgSPq", "values": ["RQvxCXua", "Wl6wBNhh", "VUPtvXmA"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 36, "fixedTrialCycles": 84, "graceDays": 0}, "region": "9Jnh6GEQ", "regionData": [{"currencyCode": "1Cv5gtVm", "currencyNamespace": "Nj7XWzLp", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1972-09-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1988-02-23T00:00:00Z", "discountedPrice": 4, "expireAt": "1988-09-16T00:00:00Z", "price": 63, "purchaseAt": "1995-02-23T00:00:00Z", "trialPrice": 3}, {"currencyCode": "ojUKqcgO", "currencyNamespace": "DyI5CIbR", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1974-07-26T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1975-08-03T00:00:00Z", "discountedPrice": 59, "expireAt": "1997-09-19T00:00:00Z", "price": 48, "purchaseAt": "1982-10-22T00:00:00Z", "trialPrice": 42}, {"currencyCode": "OwHbvMSV", "currencyNamespace": "shyzV8Nx", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1980-06-30T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1992-08-02T00:00:00Z", "discountedPrice": 78, "expireAt": "1994-06-08T00:00:00Z", "price": 4, "purchaseAt": "1988-08-04T00:00:00Z", "trialPrice": 95}], "seasonType": "TIER", "sku": "ZbrHgfE7", "stackable": false, "status": "ACTIVE", "tags": ["ynC155pW", "OZcZ8qYu", "CvXNio8p"], "targetCurrencyCode": "RlPBF5Mj", "targetItemId": "5H56fxE2", "targetNamespace": "0pYziVeO", "thumbnailUrl": "X6jLo1LE", "title": "lllHpr16", "updatedAt": "1976-03-06T00:00:00Z", "useCount": 66}, "namespace": "GYF8o8DA", "order": {"currency": {"currencyCode": "RWB7Akhk", "currencySymbol": "RC87SC6j", "currencyType": "REAL", "decimals": 42, "namespace": "iGyjAqmg"}, "ext": {"m2M3wg8W": {}, "BB0qq59T": {}, "WCVG6q62": {}}, "free": true}, "source": "DLC"}, "script": "HuOr6lf5", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '6VK37DyT' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'oOlW6h12' \
    --body '{"grantDays": "ye8Y2Ted"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '1ap3J6ww' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'j8vqiqEv' \
    --body '{"grantDays": "fGubTMkx"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "2DBSXTPv", "dryRun": false, "fulfillmentUrl": "w3yql4MH", "itemType": "MEDIA", "purchaseConditionUrl": "sOqXedFx"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '3xmKntXl' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'NXcdQBvR' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '2MJOZWto' \
    --body '{"clazz": "DVRZkx1S", "dryRun": false, "fulfillmentUrl": "WLFUjVux", "purchaseConditionUrl": "yi5HogOw"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'pqSAuh7A' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'vHAaidtK' \
    --offset '77' \
    --tag 'cB0V3gvN' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Sh3Ym0RG", "items": [{"extraSubscriptionDays": 95, "itemId": "A3YCJ1iU", "itemName": "bhOsrkoy", "quantity": 99}, {"extraSubscriptionDays": 80, "itemId": "vGMF5365", "itemName": "wYrJrQfE", "quantity": 8}, {"extraSubscriptionDays": 84, "itemId": "5pUuaec7", "itemName": "PLs1iqbm", "quantity": 20}], "maxRedeemCountPerCampaignPerUser": 8, "maxRedeemCountPerCode": 29, "maxRedeemCountPerCodePerUser": 34, "maxSaleCount": 54, "name": "Y82MmjQb", "redeemEnd": "1973-12-08T00:00:00Z", "redeemStart": "1993-08-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["3cJtC5Sx", "oRPQ67hG", "4PznAXN1"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'cMtzgVaa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'lbPs1Z0T' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Ns4xeFjW", "items": [{"extraSubscriptionDays": 39, "itemId": "SzVCWGF3", "itemName": "r1HNBa8P", "quantity": 32}, {"extraSubscriptionDays": 90, "itemId": "1Q3IhEVx", "itemName": "HsfKkc5v", "quantity": 2}, {"extraSubscriptionDays": 65, "itemId": "ue0bUilO", "itemName": "1lwRi0bM", "quantity": 27}], "maxRedeemCountPerCampaignPerUser": 86, "maxRedeemCountPerCode": 96, "maxRedeemCountPerCodePerUser": 8, "maxSaleCount": 67, "name": "iXzoPIRD", "redeemEnd": "1994-12-31T00:00:00Z", "redeemStart": "1986-12-08T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["H40lF0Gc", "b7KGbXaC", "6JfZ3zGT"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'N98L6H1k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'YSHXQIoK' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'SDZPoJFy' \
    --body '{"categoryPath": "AsP545GZ", "localizationDisplayNames": {"RAHYRk2C": "Inq8ZrWN", "Kz0On3ff": "nDt6Lpuy", "zHqqSKwg": "jeqlJDSL"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '2o4numQa' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'zlV6HSql' \
    --namespace $AB_NAMESPACE \
    --storeId 'e4iweUo5' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'YLUiUi05' \
    --namespace $AB_NAMESPACE \
    --storeId 'gNIBkIhQ' \
    --body '{"localizationDisplayNames": {"UJoOkLpO": "YoboQe0P", "45bqxuuw": "HZqKH4Pn", "jPW2DMF1": "xmXTC0z4"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'vRLrKcSM' \
    --namespace $AB_NAMESPACE \
    --storeId 'KDqgpQ7v' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'OjEof2gT' \
    --namespace $AB_NAMESPACE \
    --storeId 'oM19CjdK' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'MS4LBm1c' \
    --namespace $AB_NAMESPACE \
    --storeId '9N6nG6b6' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'hviv2ZDz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '47' \
    --code 'Nh0i2ZV2' \
    --limit '27' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Qzmh0Hsw' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 65}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'gJbktYIA' \
    --namespace $AB_NAMESPACE \
    --batchNo '6' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'j4ZVwG14' \
    --namespace $AB_NAMESPACE \
    --batchNo '48' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Zg6RgT5G' \
    --namespace $AB_NAMESPACE \
    --batchNo '91' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'XqDjKz8O' \
    --namespace $AB_NAMESPACE \
    --code 'utl8tbws' \
    --limit '41' \
    --offset '13' \
    --userId 'ed1bCaFx' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'QLWMg4nt' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '8zsnEkb1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '2jIHtcO1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "tdvFIVOb", "currencySymbol": "dIFK8t5p", "currencyType": "REAL", "decimals": 94, "localizationDescriptions": {"Xmx2OlqP": "b2sCltmJ", "zgUFmIYR": "36VzLqsS", "3oXg6x6C": "jd7R84Fx"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'GqODTMpl' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"5LEAxkiG": "XhemoHhz", "IdQpPlbv": "EWSsGXrE", "bFcUr8BW": "O75hIiXv"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'KES3It55' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'PMxO2fPc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'CXVwoPbT' \
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
    --body '{"data": [{"id": "bgRJx4nE", "rewards": [{"currency": {"currencyCode": "b5KJjzpI", "namespace": "P2DGrcEQ"}, "item": {"itemId": "YjDOYhWQ", "itemSku": "blOnAJIG", "itemType": "o9q1h1CM"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "QothrGhJ", "namespace": "kOrFugYP"}, "item": {"itemId": "2RDX9rVm", "itemSku": "CBc4YyyX", "itemType": "wJZZsET6"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "13zULGcn", "namespace": "26bDwaNP"}, "item": {"itemId": "r14x3zce", "itemSku": "qnaTTvCq", "itemType": "HRqPp5zv"}, "quantity": 25, "type": "CURRENCY"}]}, {"id": "ygPHa6Rh", "rewards": [{"currency": {"currencyCode": "PILhzo0X", "namespace": "wv4KnTmB"}, "item": {"itemId": "7Z9rmSHQ", "itemSku": "bpvteclf", "itemType": "BWKs3HUF"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "BJt11q1S", "namespace": "ZVetCXRH"}, "item": {"itemId": "BaGUjVAo", "itemSku": "zMjGWpxL", "itemType": "erfQo5Gu"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"currencyCode": "1mxRaaI4", "namespace": "uYmsNIF7"}, "item": {"itemId": "0q2aMznY", "itemSku": "fJBBqbbz", "itemType": "61rqBvji"}, "quantity": 92, "type": "ITEM"}]}, {"id": "FCxV1UkD", "rewards": [{"currency": {"currencyCode": "WwGXJ0hv", "namespace": "1121Ccok"}, "item": {"itemId": "tnmwWdWa", "itemSku": "Gq4rKcYE", "itemType": "R4raomcC"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "hcGgZFG5", "namespace": "OQZR6uX9"}, "item": {"itemId": "B2G9LoGB", "itemSku": "DPUuhbn8", "itemType": "0SaUG7gZ"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "E6PnMbHt", "namespace": "42mPMvK4"}, "item": {"itemId": "2wGWktBu", "itemSku": "qsG37VfH", "itemType": "lgr67SaC"}, "quantity": 66, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"DTOOnYaY": "ams6Gc2m", "zANTlW8i": "ldNW0z2g", "haeSbcYw": "Bejkrh8D"}}, {"platform": "PSN", "platformDlcIdMap": {"fGOuGRgS": "b4t4lwMu", "sYj4a3ui": "NR2eavfv", "3r8W614C": "VW3sh8S8"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"vb0Tsy6O": "LFDJf6p9", "3Ga3GjVA": "52S8seEH", "8doM58Xr": "FbezzPSV"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'dETCutRL' \
    --itemId '["JCe7bthc", "EpfVQuMB", "YLoS9LT4"]' \
    --limit '17' \
    --offset '36' \
    --userId 'tIoT1Etl' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'PBCaSAM6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '68' \
    --status 'SUCCESS' \
    --userId '5YCq2wOK' \
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
    --body '{"bundleId": "aYG2k93g", "password": "xZ1Q8Z0f"}' \
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
    --body '{"sandboxId": "zArPjx2n"}' \
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
    --body '{"applicationName": "HdpETz7a", "serviceAccountId": "X27CLB5T"}' \
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
    --body '{"data": [{"itemIdentity": "6BgUn62e", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"AmYfMQe3": "ceokR2Ni", "NLPvwp18": "xwAReoHt", "dVAJhtEv": "tIaUTsk6"}}, {"itemIdentity": "Sr818A7k", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4kVxfkbh": "CozyGLqE", "CsAUdyhy": "x1NhkKFq", "bnZhcGM8": "xhKqXTDQ"}}, {"itemIdentity": "JFaTlajG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"CijNGhHf": "5hGSVpm3", "nPR7h4pd": "Fj5Fj9PC", "vuBwziu6": "Ui9d8HdX"}}]}' \
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
    --body '{"environment": "pH3XDXeS"}' \
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
    --body '{"appId": "QFX8RPyL", "publisherAuthenticationKey": "hFkeQrcM"}' \
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
    --body '{"clientId": "oeor6XuE", "clientSecret": "w2boNZo1", "organizationId": "qtVVOExn"}' \
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
    --body '{"relyingPartyCert": "vRvrvWX2"}' \
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
    --password 'cAGpmdUP' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'kg3bPVF3' \
    --itemId 'dZnxDxbW' \
    --itemType 'SEASON' \
    --endTime 'RVfc3Pxw' \
    --startTime 'cXPr8jhv' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'w2urBXdq' \
    --itemId 'LKRVIclZ' \
    --itemType 'OPTIONBOX' \
    --endTime 'OZwxWdlb' \
    --startTime 'zsmFDv1I' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'K3TtO2LL' \
    --body '{"categoryPath": "qcfxswXw", "targetItemId": "TGIPg8dp", "targetNamespace": "IYqliLr1"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qSyxR3Ed' \
    --body '{"appId": "A3tfz6qt", "appType": "GAME", "baseAppId": "sgKlOERb", "boothName": "1ol1G0RZ", "categoryPath": "uLPqZQk8", "clazz": "YAfqLWm9", "displayOrder": 69, "entitlementType": "DURABLE", "ext": {"ACLojBiB": {}, "LirxHwz5": {}, "MfxFQXdT": {}}, "features": ["opT0yvTp", "POCl2msA", "Wf7rxX9X"], "images": [{"as": "DSuelsNb", "caption": "cQ2zqv2E", "height": 85, "imageUrl": "OTVBS94J", "smallImageUrl": "u26mzfEW", "width": 20}, {"as": "khvED19d", "caption": "TmzblE3A", "height": 93, "imageUrl": "psyX1pnq", "smallImageUrl": "3qJxLrhV", "width": 91}, {"as": "TqjhOanb", "caption": "NpXIkHMM", "height": 20, "imageUrl": "GtEqIh9O", "smallImageUrl": "wGBt8G3D", "width": 22}], "itemIds": ["2zrUnHKS", "qEVE8Kr6", "4Q1dNhun"], "itemQty": {"Npy0gUNG": 37, "IOodWCj1": 92, "eEsM8BLE": 95}, "itemType": "BUNDLE", "listable": false, "localizations": {"kVWkvmYE": {"description": "v4D4G3RC", "localExt": {"fP87qBgG": {}, "2k0biGgo": {}, "WGXuOIU1": {}}, "longDescription": "DDW2I5p5", "title": "gpIMHOZz"}, "f4fcvcBZ": {"description": "MdrIcMWa", "localExt": {"tA2hVz5R": {}, "qaS1yh0c": {}, "EdLxL5st": {}}, "longDescription": "KzNOAyvo", "title": "Ls9T1yPE"}, "ta3Udysr": {"description": "F11JRHQY", "localExt": {"372bfPKp": {}, "88tzF0Mf": {}, "XH09V53a": {}}, "longDescription": "k46PlA39", "title": "nFZbj1iD"}}, "maxCount": 32, "maxCountPerUser": 5, "name": "W5l9oFJC", "optionBoxConfig": {"boxItems": [{"count": 27, "itemId": "mNqqeD5S", "itemSku": "idj69KOm"}, {"count": 17, "itemId": "f7jnVoyV", "itemSku": "pCc25WUK"}, {"count": 69, "itemId": "txoTqHeq", "itemSku": "WeVRBkWA"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 84, "fixedTrialCycles": 12, "graceDays": 23}, "regionData": {"J3fH4PUj": [{"currencyCode": "Y6l9xGOW", "currencyNamespace": "coeWxgSy", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1978-03-13T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-11-19T00:00:00Z", "discountedPrice": 6, "expireAt": "1978-08-14T00:00:00Z", "price": 0, "purchaseAt": "1991-11-03T00:00:00Z", "trialPrice": 89}, {"currencyCode": "4G9EEj56", "currencyNamespace": "JJRgeQ9Z", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1994-03-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1999-04-20T00:00:00Z", "discountedPrice": 3, "expireAt": "1985-06-25T00:00:00Z", "price": 38, "purchaseAt": "1985-05-03T00:00:00Z", "trialPrice": 59}, {"currencyCode": "gkciTvFe", "currencyNamespace": "fMLwHiZJ", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1971-08-11T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1998-04-10T00:00:00Z", "discountedPrice": 49, "expireAt": "1987-12-08T00:00:00Z", "price": 91, "purchaseAt": "1990-12-13T00:00:00Z", "trialPrice": 32}], "nGiXuoeG": [{"currencyCode": "zsuqLP0t", "currencyNamespace": "udwmuxGk", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1976-10-01T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1985-06-07T00:00:00Z", "discountedPrice": 65, "expireAt": "1985-12-24T00:00:00Z", "price": 61, "purchaseAt": "1989-12-16T00:00:00Z", "trialPrice": 65}, {"currencyCode": "SM9Ewf9b", "currencyNamespace": "m4QhyDrj", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1978-02-20T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1979-09-26T00:00:00Z", "discountedPrice": 51, "expireAt": "1992-04-07T00:00:00Z", "price": 15, "purchaseAt": "1974-03-27T00:00:00Z", "trialPrice": 66}, {"currencyCode": "7Asjyhjc", "currencyNamespace": "rRyzjeWb", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1981-12-23T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1984-06-16T00:00:00Z", "discountedPrice": 0, "expireAt": "1981-07-17T00:00:00Z", "price": 19, "purchaseAt": "1977-11-11T00:00:00Z", "trialPrice": 28}], "cPHS81cJ": [{"currencyCode": "o4p1mXtr", "currencyNamespace": "xVS6xxdZ", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1975-02-19T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1977-03-15T00:00:00Z", "discountedPrice": 37, "expireAt": "1974-10-29T00:00:00Z", "price": 25, "purchaseAt": "1975-02-27T00:00:00Z", "trialPrice": 27}, {"currencyCode": "4dLzyLUe", "currencyNamespace": "L9YjEh2j", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1992-06-02T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1993-09-04T00:00:00Z", "discountedPrice": 85, "expireAt": "1972-03-26T00:00:00Z", "price": 92, "purchaseAt": "1995-08-09T00:00:00Z", "trialPrice": 84}, {"currencyCode": "JhysNzTr", "currencyNamespace": "sbnWXlXJ", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1987-05-14T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1986-03-04T00:00:00Z", "discountedPrice": 30, "expireAt": "1981-05-14T00:00:00Z", "price": 90, "purchaseAt": "1974-06-23T00:00:00Z", "trialPrice": 82}]}, "seasonType": "PASS", "sku": "2cIUOqpj", "stackable": true, "status": "INACTIVE", "tags": ["uGbHF0Ju", "y7gZuqvv", "CS2xAV1X"], "targetCurrencyCode": "tOP1QLrA", "targetNamespace": "DrMEIc1i", "thumbnailUrl": "odTNZVq8", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '442ereQK' \
    --appId 'H5DMlbh5' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'XHkdxio3' \
    --baseAppId '7nhm60BV' \
    --categoryPath 'eBYDqGYU' \
    --features '2ZimzW3k' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --limit '93' \
    --offset '1' \
    --region 'zbLt9yhF' \
    --sortBy '["name:asc", "displayOrder:desc", "createdAt"]' \
    --storeId 'knDcZD5c' \
    --tags 'rnUCaBBO' \
    --targetNamespace 'GOiN3oPV' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["3pE2Oa7I", "SRufhW0U", "pged4ZKk"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'UaevNakT' \
    --sku 'eIp4LdcM' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'WvmkJriS' \
    --populateBundle 'false' \
    --region '9MvxQhPb' \
    --storeId 'UmU9kITv' \
    --sku 'ngQEwOgM' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'eK7liPxH' \
    --sku 'FmrUTNJ6' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["iEzZwlQC", "qvNNVxoV", "QMaYG66g"]' \
    --storeId 'qvCX7b72' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Tidi6UoV' \
    --region 'UlEvW259' \
    --storeId 'GKiibFvd' \
    --itemIds 'EHb8QSs7' \
    > test.out 2>&1
eval_tap $? 91 'BulkGetLocaleItems' test.out

#- 92 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetAvailablePredicateTypes' test.out

#- 93 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'WwWrrjq9' \
    --body '{"itemIds": ["BeVaEUPl", "7lYfOUe9", "NGS3Pzit"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'INGAMEITEM' \
    --limit '16' \
    --offset '72' \
    --sortBy '4uP6LPoU' \
    --storeId 'WRhKGkc1' \
    --keyword 'X1XfqMod' \
    --language 'z87hqkJW' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '24' \
    --offset '7' \
    --sortBy '["displayOrder:desc", "createdAt:desc"]' \
    --storeId 'JBCmHyHJ' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'PGVzcvuv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Fj6kbxpg' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'n6ogpbDw' \
    --namespace $AB_NAMESPACE \
    --storeId 'YN1qC40M' \
    --body '{"appId": "cbDpNWgK", "appType": "DLC", "baseAppId": "BittpZLy", "boothName": "Uzz2yTmQ", "categoryPath": "YaZl8P8Z", "clazz": "2Vwfp6Jz", "displayOrder": 42, "entitlementType": "CONSUMABLE", "ext": {"2umhZZ3u": {}, "PP8Gt4wC": {}, "ONZzprZm": {}}, "features": ["PBPcz5wv", "K3IWyuoT", "h6d1xO8J"], "images": [{"as": "SRybNi6E", "caption": "WtzsZvwF", "height": 36, "imageUrl": "TvOc3lDY", "smallImageUrl": "TuaCkwom", "width": 13}, {"as": "mzwmjkfL", "caption": "I6tzSXO6", "height": 65, "imageUrl": "zuACCAvw", "smallImageUrl": "4zlr12Nh", "width": 40}, {"as": "E5EahmZ6", "caption": "1Ov6rLG6", "height": 25, "imageUrl": "MEgriiHq", "smallImageUrl": "cHqrG6fP", "width": 28}], "itemIds": ["O1OTR5XS", "WP00LrOh", "wqJfcM89"], "itemQty": {"tCUL6qDB": 82, "JSqe1OkT": 87, "YVaHaTUs": 69}, "itemType": "BUNDLE", "listable": true, "localizations": {"vPfWFBo7": {"description": "QDebgmrL", "localExt": {"OMKc6MiU": {}, "YQdtOZX0": {}, "Kv5dn82K": {}}, "longDescription": "5LTX6sOy", "title": "JdZL7tNu"}, "6Hxhi4im": {"description": "UxWxdNCD", "localExt": {"QTqdgN6R": {}, "1WrYJev1": {}, "LnxumU7P": {}}, "longDescription": "FYqR0coF", "title": "6Ag6w4AN"}, "3vG46Tfl": {"description": "LPmBD6kf", "localExt": {"BLQbxcfn": {}, "Xo3nAIFn": {}, "7AbwDrOM": {}}, "longDescription": "SHE55cJe", "title": "SJ8PD0v2"}}, "maxCount": 85, "maxCountPerUser": 5, "name": "kbOucoMr", "optionBoxConfig": {"boxItems": [{"count": 44, "itemId": "en6jQMDn", "itemSku": "U1h6jwPl"}, {"count": 69, "itemId": "rcJ366IG", "itemSku": "wSBnbbuh"}, {"count": 94, "itemId": "yFz7JOyk", "itemSku": "K7XjTnTu"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 1, "fixedTrialCycles": 80, "graceDays": 89}, "regionData": {"x33Wy7o2": [{"currencyCode": "IM37s3kp", "currencyNamespace": "Ho7VzANA", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1977-03-09T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1998-03-19T00:00:00Z", "discountedPrice": 60, "expireAt": "1972-03-21T00:00:00Z", "price": 76, "purchaseAt": "1988-12-05T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Xoz8whOv", "currencyNamespace": "ApjpneLP", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1980-01-09T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-08-25T00:00:00Z", "discountedPrice": 4, "expireAt": "1991-05-15T00:00:00Z", "price": 6, "purchaseAt": "1997-06-10T00:00:00Z", "trialPrice": 68}, {"currencyCode": "ekCBbGKE", "currencyNamespace": "NrpCbkn3", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1981-06-08T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1992-05-30T00:00:00Z", "discountedPrice": 82, "expireAt": "1972-11-28T00:00:00Z", "price": 99, "purchaseAt": "1975-09-19T00:00:00Z", "trialPrice": 77}], "g23YYyop": [{"currencyCode": "lz3vISSL", "currencyNamespace": "tz8qoELu", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1989-05-08T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1975-02-09T00:00:00Z", "discountedPrice": 54, "expireAt": "1996-04-29T00:00:00Z", "price": 71, "purchaseAt": "1981-02-14T00:00:00Z", "trialPrice": 91}, {"currencyCode": "sMuuFZLe", "currencyNamespace": "fVvXaxLa", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-04-28T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-05-17T00:00:00Z", "discountedPrice": 44, "expireAt": "1975-10-04T00:00:00Z", "price": 96, "purchaseAt": "1988-11-16T00:00:00Z", "trialPrice": 78}, {"currencyCode": "GvbNZ36Y", "currencyNamespace": "2YcQTHJt", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1985-11-09T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1974-10-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1991-09-28T00:00:00Z", "price": 79, "purchaseAt": "1977-12-23T00:00:00Z", "trialPrice": 18}], "hThCFu7g": [{"currencyCode": "gpVQGVKu", "currencyNamespace": "XEymf0cD", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1999-08-21T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1994-05-31T00:00:00Z", "discountedPrice": 56, "expireAt": "1988-01-09T00:00:00Z", "price": 9, "purchaseAt": "1986-11-29T00:00:00Z", "trialPrice": 18}, {"currencyCode": "02GeHfXt", "currencyNamespace": "ByRGNGEd", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1979-09-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1989-06-02T00:00:00Z", "discountedPrice": 90, "expireAt": "1991-06-26T00:00:00Z", "price": 33, "purchaseAt": "1975-11-10T00:00:00Z", "trialPrice": 1}, {"currencyCode": "kDLY2kj7", "currencyNamespace": "3F5RDpL7", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1990-12-28T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1975-08-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1989-04-25T00:00:00Z", "price": 76, "purchaseAt": "1982-09-16T00:00:00Z", "trialPrice": 50}]}, "seasonType": "TIER", "sku": "gKBxSX1f", "stackable": true, "status": "INACTIVE", "tags": ["3RjiXdQf", "5Q01ULQf", "RD0rzPg1"], "targetCurrencyCode": "ZGbwXNXq", "targetNamespace": "44xp7GuD", "thumbnailUrl": "OE8dRG2B", "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Y5qSbNMu' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'vRKe2i8o' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'oefR3PJw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 92, "orderNo": "eY6cQQPr"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'evEwdsGg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ijpPardj' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'ZE1kbd1m' \
    --namespace $AB_NAMESPACE \
    --storeId 'gGAa0P8w' \
    --body '{"carousel": [{"alt": "cAE1GGFZ", "previewUrl": "htPVAfo7", "thumbnailUrl": "dYlvx9A2", "type": "video", "url": "i5QtTF4W", "videoSource": "generic"}, {"alt": "dIkKuPvr", "previewUrl": "RuSmyVTi", "thumbnailUrl": "GZMOsVyM", "type": "image", "url": "nSsqVPzt", "videoSource": "youtube"}, {"alt": "cFhSU0VX", "previewUrl": "bn9GgHqx", "thumbnailUrl": "ui3pkPLG", "type": "image", "url": "EIOWkGtU", "videoSource": "youtube"}], "developer": "4i7rfsyf", "forumUrl": "cQ1DXbux", "genres": ["Strategy", "Casual", "Action"], "localizations": {"6ptq7clL": {"announcement": "YOJEf5gQ", "slogan": "Pr0KTyD2"}, "tqWhvebo": {"announcement": "lh79aA7i", "slogan": "jqKEEve7"}, "HcO0yxGM": {"announcement": "Tiv9mrU0", "slogan": "ZOoFiTHo"}}, "platformRequirements": {"C2bxKE1t": [{"additionals": "Ixrqmn5x", "directXVersion": "a7fURO9T", "diskSpace": "ElCXPRyY", "graphics": "eYE08a9f", "label": "R71aw3lP", "osVersion": "h5vIoYI6", "processor": "eWC7hbJ4", "ram": "2FslsyJq", "soundCard": "7VPEfMWC"}, {"additionals": "xfxrwOXM", "directXVersion": "CTOGABHX", "diskSpace": "mxVq5u6L", "graphics": "00ARhjMa", "label": "iCXvgL1Y", "osVersion": "3lWxzrSS", "processor": "eg7rKPuB", "ram": "kV115Xq1", "soundCard": "oVqE9WME"}, {"additionals": "TeBWFio5", "directXVersion": "wgNRswgH", "diskSpace": "VxfcF7rV", "graphics": "f0W8jEOj", "label": "z3PoThYC", "osVersion": "fDqqlVdJ", "processor": "vZOOBfVe", "ram": "xXV41w54", "soundCard": "HDzTJsfA"}], "C6Acy5M7": [{"additionals": "qoDKTlEy", "directXVersion": "gOsQ83fg", "diskSpace": "AR9TUyoo", "graphics": "yaFIX356", "label": "L4X2P5m0", "osVersion": "Oe54UDz5", "processor": "XcbIbu7S", "ram": "5KtFd6RX", "soundCard": "E4Xz9b7U"}, {"additionals": "aRfz2kgw", "directXVersion": "rGj8o99w", "diskSpace": "piXXIBqx", "graphics": "a1op6dph", "label": "nw4UgfNb", "osVersion": "qaVozyck", "processor": "bkynOHWA", "ram": "Wb2PAsZg", "soundCard": "aiycO8BX"}, {"additionals": "nC1mZPNt", "directXVersion": "XIN9385t", "diskSpace": "8qMnOJwU", "graphics": "LFL9ycOn", "label": "NV3FBz6P", "osVersion": "pheZEGjc", "processor": "1igbNTTu", "ram": "F8OmnJcu", "soundCard": "NSz6HxtN"}], "CNYz7Vkc": [{"additionals": "PVYsc8o6", "directXVersion": "qfUPShwE", "diskSpace": "kP9ZS78x", "graphics": "ffYCrG9S", "label": "QohHq0w1", "osVersion": "VlUXGLgF", "processor": "dHuaCAGo", "ram": "NLjrezQK", "soundCard": "SgAxJdr8"}, {"additionals": "YNxQ0Pml", "directXVersion": "zRmgzn2H", "diskSpace": "k10PScYP", "graphics": "OBHRT0mP", "label": "z22HsIC7", "osVersion": "qA8IPy9Y", "processor": "1PwInf8J", "ram": "30KjPngY", "soundCard": "vRE4zwys"}, {"additionals": "OS7mo0B7", "directXVersion": "bCuNLpPm", "diskSpace": "N1o8yME7", "graphics": "EGE5ZtVX", "label": "aVhgj6aw", "osVersion": "OJH5RHPC", "processor": "YCGSWvyO", "ram": "MlRYfbC3", "soundCard": "91QXLqKA"}]}, "platforms": ["MacOS", "Linux", "Android"], "players": ["Multi", "MMO", "CrossPlatformMulti"], "primaryGenre": "Sports", "publisher": "z1BbrjCm", "releaseDate": "1974-06-25T00:00:00Z", "websiteUrl": "u2yuxZgH"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'R4UUUTT7' \
    --namespace $AB_NAMESPACE \
    --storeId 'DOOL38Nv' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'J8CYwtkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '28KXMUlx' \
    --namespace $AB_NAMESPACE \
    --storeId '3CRflcx0' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'sQtwEKSH' \
    --itemId 'r5QtUfpr' \
    --namespace $AB_NAMESPACE \
    --storeId 'dlF9x1Az' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'JNluuK4b' \
    --itemId 'r7pFbDN9' \
    --namespace $AB_NAMESPACE \
    --storeId 'O7R7k9tx' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'en8hoTAq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '4jkUird1' \
    --populateBundle 'true' \
    --region 'ClsEREj6' \
    --storeId 'B0O3BP7L' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'W8ukDjVh' \
    --namespace $AB_NAMESPACE \
    --storeId 'lARO9a8l' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 44, "comparison": "excludes", "name": "bP51vJuW", "predicateType": "EntitlementPredicate", "value": "NYVigEzi", "values": ["ycda0CF6", "bzzmfbLe", "jzMjWVxG"]}, {"anyOf": 41, "comparison": "isGreaterThan", "name": "CEKxQis8", "predicateType": "EntitlementPredicate", "value": "s6erbJJF", "values": ["cbDUNy06", "Z5FPEstG", "aUaWSgUI"]}, {"anyOf": 18, "comparison": "isLessThan", "name": "qDeOyBLm", "predicateType": "SeasonPassPredicate", "value": "A3l7QOXq", "values": ["WgwoWdFw", "QLuUKAOS", "LobJbd2v"]}]}, {"operator": "and", "predicates": [{"anyOf": 59, "comparison": "isLessThan", "name": "5GNuxuaM", "predicateType": "EntitlementPredicate", "value": "RWX1ZVZr", "values": ["OBwcsPnT", "eh3C3lFL", "UEurDYhF"]}, {"anyOf": 17, "comparison": "is", "name": "OHHKPk13", "predicateType": "SeasonPassPredicate", "value": "iP2XVVyH", "values": ["pKJ8H4kW", "YsT4toir", "sXofA4TI"]}, {"anyOf": 17, "comparison": "excludes", "name": "aqX50M4c", "predicateType": "SeasonTierPredicate", "value": "cjA2qn2H", "values": ["6JsUs2nw", "HiabyyJ9", "3xgj3mUs"]}]}, {"operator": "and", "predicates": [{"anyOf": 59, "comparison": "excludes", "name": "mij35Q6b", "predicateType": "SeasonTierPredicate", "value": "WhMv0OiI", "values": ["XFHHN1AU", "XxpJ0eXC", "zp4zrpUi"]}, {"anyOf": 47, "comparison": "is", "name": "FmZ2VRth", "predicateType": "SeasonPassPredicate", "value": "jdkeJ0uM", "values": ["L1Cjpbxg", "pqIfx9Qz", "VQa4S1o2"]}, {"anyOf": 44, "comparison": "includes", "name": "Oq6Al7a7", "predicateType": "SeasonTierPredicate", "value": "keInfrNV", "values": ["QdU1uYCV", "GiIwzzL4", "QZQdnO3H"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'bWLju5sO' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "H85QGmHT"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'f6TT7Hwk' \
    --offset '91' \
    --tag 'aocuVr2M' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eyAWW3cv", "name": "gvGIKLYU", "status": "INACTIVE", "tags": ["fzik98FS", "Z0AOIVdO", "MB8CTKO2"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'fJwZhPHY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'BPIVYTDZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "i7qhjuxI", "name": "6sB9zaGV", "status": "INACTIVE", "tags": ["n9oPqXZc", "HezzcKm8", "wlmFYCZU"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'IpFk7EIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'aQs0U7ai' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '56' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'JRgR5msn' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'VHaIBUpq' \
    --limit '57' \
    --offset '38' \
    --orderNos '["TqYme9g0", "ngTfC4BP", "ascei7I1"]' \
    --sortBy 'cTjwn2II' \
    --startTime '012NrnSC' \
    --status 'CLOSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 118 'QueryOrders' test.out

#- 119 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetOrderStatistics' test.out

#- 120 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mxd0VjJN' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SChUYS1x' \
    --body '{"description": "itC3ZL1t"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundOrder' test.out

#- 122 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetPaymentCallbackConfig' test.out

#- 123 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "ZPHMzkTv", "privateKey": "aSrWNTIW"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'cP1o9wKz' \
    --externalId 'VUkpcYqG' \
    --limit '37' \
    --notificationSource 'ADYEN' \
    --notificationType '9L2FXRSm' \
    --offset '2' \
    --paymentOrderNo 'hrOP0LgL' \
    --startDate 'sJzJGRna' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'zXiag1ko' \
    --limit '2' \
    --offset '8' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "H0tCWvyK", "currencyNamespace": "rFMw0LFG", "customParameters": {"7ozrx8qC": {}, "xsiG7mty": {}, "xqVNm05r": {}}, "description": "TFVyBrvH", "extOrderNo": "XyiwuaRF", "extUserId": "6ZYHDIgE", "itemType": "MEDIA", "language": "DaF", "metadata": {"x5bOcQk3": "x2FNHCRM", "nosM7KEy": "lLuxFF7A", "Hvn67umV": "E0DAKJTo"}, "notifyUrl": "Uwm6Fuxd", "omitNotification": false, "platform": "FdBLn2KD", "price": 69, "recurringPaymentOrderNo": "GDLUI2qL", "region": "8HTe0zyp", "returnUrl": "SFHSglXh", "sandbox": false, "sku": "iwnmGPIN", "subscriptionId": "Fi9qAo9D", "targetNamespace": "3y4lBQy3", "targetUserId": "qx1o9FZS", "title": "MoOv5rf3"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '8SGDlw9q' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Z5eQR0Ry' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kkPvwpGb' \
    --body '{"extTxId": "oKACazmm", "paymentMethod": "OziLzmFW", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'tYSqi4M6' \
    --body '{"description": "ei4YF3zJ"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FGkDzPiP' \
    --body '{"amount": 69, "currencyCode": "PFsBzKZS", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 19, "vat": 22}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VmRhp0vU' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Other", "Stadia", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eeSLwMLW", "eventTopic": "C7vZocCj", "maxAwarded": 50, "maxAwardedPerUser": 78, "namespaceExpression": "3i3mUPbX", "rewardCode": "Yyu5fSPI", "rewardConditions": [{"condition": "OFpfbzdG", "conditionName": "JOmt7Ej8", "eventName": "XRoP5OFd", "rewardItems": [{"duration": 11, "itemId": "y6iAbBpC", "quantity": 48}, {"duration": 48, "itemId": "u2mWbDZ3", "quantity": 3}, {"duration": 69, "itemId": "XczE3D9W", "quantity": 23}]}, {"condition": "BYVSiYLh", "conditionName": "Y4usqwIr", "eventName": "NuWVRcaT", "rewardItems": [{"duration": 55, "itemId": "JX5ZKoW2", "quantity": 7}, {"duration": 76, "itemId": "pmWM7HB0", "quantity": 89}, {"duration": 78, "itemId": "zMPhuH6a", "quantity": 10}]}, {"condition": "x7JD2hwl", "conditionName": "I0YafPa7", "eventName": "pKzrMrO8", "rewardItems": [{"duration": 51, "itemId": "3eLJN3hd", "quantity": 48}, {"duration": 67, "itemId": "em5lUo9z", "quantity": 43}, {"duration": 40, "itemId": "31N6QDp1", "quantity": 29}]}], "userIdExpression": "4LvTgps3"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'BEI83w8r' \
    --limit '27' \
    --offset '61' \
    --sortBy '["namespace", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 137 'QueryRewards' test.out

#- 138 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'ExportRewards' test.out

#- 139 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Vl8TS7b7' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'WteDmnYM' \
    --body '{"description": "umrJ0EEv", "eventTopic": "DCiTu343", "maxAwarded": 83, "maxAwardedPerUser": 23, "namespaceExpression": "tSXZGdKa", "rewardCode": "4gEK9gUV", "rewardConditions": [{"condition": "Fw10kJhG", "conditionName": "WOhT8CmW", "eventName": "ADXa2Fby", "rewardItems": [{"duration": 59, "itemId": "UQiDzXur", "quantity": 36}, {"duration": 89, "itemId": "7R0T8qze", "quantity": 9}, {"duration": 5, "itemId": "Qxkk5yWM", "quantity": 49}]}, {"condition": "yGW29MrM", "conditionName": "MB31rcCQ", "eventName": "KqAuoh0d", "rewardItems": [{"duration": 46, "itemId": "62x6wdu1", "quantity": 0}, {"duration": 42, "itemId": "yfQ359Hw", "quantity": 61}, {"duration": 81, "itemId": "Z00db8KR", "quantity": 76}]}, {"condition": "eS84e1pw", "conditionName": "iqvrQMyA", "eventName": "VTo2qm5Z", "rewardItems": [{"duration": 51, "itemId": "eLADDWwv", "quantity": 15}, {"duration": 20, "itemId": "2xwiIrp3", "quantity": 71}, {"duration": 85, "itemId": "S7CIacQU", "quantity": 64}]}], "userIdExpression": "T0xtjnww"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '8eCEZORk' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'e21EmV9v' \
    --body '{"payload": {"RW2RLqgw": {}, "EpztNQbs": {}, "zru0T1m5": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'j8hcifU4' \
    --body '{"conditionName": "US3BEHmH", "userId": "av62NgVi"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteRewardConditionRecord' test.out

#- 145 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'ListStores' test.out

#- 146 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "Uv6uxaY7", "defaultRegion": "4sH9kdZb", "description": "5JrCi77N", "supportedLanguages": ["QfKZqDQF", "h8h2sigd", "L0AiZSSU"], "supportedRegions": ["lpE4i90f", "W2TL9he5", "ZyiqudcG"], "title": "w07vizhm"}' \
    > test.out 2>&1
eval_tap $? 146 'CreateStore' test.out

#- 147 ImportStore
eval_tap 0 147 'ImportStore # SKIP deprecated' test.out

#- 148 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetPublishedStore' test.out

#- 149 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'DeletePublishedStore' test.out

#- 150 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 150 'GetPublishedStoreBackup' test.out

#- 151 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'RollbackPublishedStore' test.out

#- 152 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UsavmTy2' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '4WcmUJDH' \
    --body '{"defaultLanguage": "P33pI15t", "defaultRegion": "nBWvHFa1", "description": "wGzPmn4Q", "supportedLanguages": ["6xHZtatH", "KVH5Y6un", "Z3r8OBfP"], "supportedRegions": ["GNkGlsBR", "lZogtCIY", "XPOFVSHZ"], "title": "ydFAFm8h"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Edm8B5o0' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'H1uI9fYQ' \
    --action 'UPDATE' \
    --itemSku 'e6rK5EiN' \
    --itemType 'MEDIA' \
    --limit '17' \
    --offset '94' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "updatedAt:desc", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'AmzVGavL' \
    --updatedAtStart '86X1pOGL' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '1hUxa8Pt' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'AisJnmdM' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'D2HcfP3Q' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'IhUi7m7B' \
    --action 'UPDATE' \
    --itemSku 'M9kRaslp' \
    --itemType 'BUNDLE' \
    --type 'CATEGORY' \
    --updatedAtEnd '7rKBNc9t' \
    --updatedAtStart 'KFAXh4mF' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '37YqbuSB' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '7EI4pnrj' \
    --namespace $AB_NAMESPACE \
    --storeId 'zPfZNlhX' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'ar7zYWRh' \
    --namespace $AB_NAMESPACE \
    --storeId '5F5cKubW' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '6bFGPCxo' \
    --targetStoreId 'VW9OCjDe' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'RjZFtmXL' \
    --limit '37' \
    --offset '66' \
    --sku 'nudTpjgm' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'ECKTMnJX' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yip2OOAC' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'zM2pGFn7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'X76fhNqK' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "PXcOsot0"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'EMuz7T39' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'ZACcBEVe' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 78, "orderNo": "pjIO6SaV"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NLKRBnLH' \
    --body '{"achievements": [{"id": "wkmISE60", "value": 18}, {"id": "INzUijTk", "value": 77}, {"id": "uFlgWOBA", "value": 17}], "steamUserId": "L5a6kMXz"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'abEcO0VQ' \
    --xboxUserId 'i9Pl8ErM' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nhuNMrYx' \
    --body '{"achievements": [{"id": "suSyLfky", "percentComplete": 34}, {"id": "pcnJrene", "percentComplete": 17}, {"id": "KFOmfH33", "percentComplete": 32}], "serviceConfigId": "Zt2qxBh2", "titleId": "deYuNDK9", "xboxUserId": "nphlGeIb"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 't2zYlcFb' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5YBCCuIT' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'pYnIgBJV' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'PZihQ1CF' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kjGBiQKN' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'sUBhSgMH' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ZIochoaP' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'AGNhaqzP' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZApjrrZn' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'kU8Q2iOs' \
    --features '["elBxwaRY", "bt6Q7tZF", "h1QyTKgP"]' \
    --itemId '["oO5vibbS", "y2Obgi8T", "K2BGGilG"]' \
    --limit '84' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'NtE1EEMa' \
    --body '[{"endDate": "1991-02-26T00:00:00Z", "grantedCode": "PtdOBZwl", "itemId": "atd4nBMn", "itemNamespace": "bn9kT3TY", "language": "TzgD", "quantity": 99, "region": "q2fLyTVF", "source": "IAP", "startDate": "1980-08-19T00:00:00Z", "storeId": "bt2BtMhu"}, {"endDate": "1987-01-15T00:00:00Z", "grantedCode": "ybogiZci", "itemId": "YQMSuIsU", "itemNamespace": "WILQO4M9", "language": "omU_759", "quantity": 100, "region": "sWLtQdL7", "source": "GIFT", "startDate": "1996-05-12T00:00:00Z", "storeId": "YM4q6fgK"}, {"endDate": "1988-01-31T00:00:00Z", "grantedCode": "Cog5qd2l", "itemId": "IECoZ4Yt", "itemNamespace": "OPsTeE2p", "language": "Vg_091", "quantity": 11, "region": "lI0gCcH0", "source": "PROMOTION", "startDate": "1971-12-15T00:00:00Z", "storeId": "s98eVQMe"}]' \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'L6RUdBbX' \
    --activeOnly 'true' \
    --appId 'iqH569Us' \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '2Rw3HNns' \
    --activeOnly 'true' \
    --limit '61' \
    --offset '50' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'c0kqQoM8' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'nyeFsVh8' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '5c8eoyOc' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'lZV18nox' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'edCiF5Yn' \
    --appIds '["gvMQLV5T", "zo8y02Ba", "A7lxaxkJ"]' \
    --itemIds '["N9iSxP2r", "k4UgRkzP", "IHIfWV5O"]' \
    --skus '["ELPHCOYF", "xjsF7Sxl", "25aNQmTZ"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'IsxnFqOz' \
    --itemIds '["Tb5o3ikX", "87g798R8", "89p6R1wU"]' \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BRfyCPjZ' \
    --appId 'hPT0KP46' \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XCCM7VXd' \
    --entitlementClazz 'MEDIA' \
    --itemId '0S6joQDn' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 't1Dusec3' \
    --ids '["0WUj1ViT", "F0cUhY6E", "8n56h8M1"]' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'val2R5ju' \
    --entitlementClazz 'CODE' \
    --sku 'lBlGdTZU' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'kPEL2RFP' \
    --entitlementIds 'nISpjsM4' \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2Fxa8Xc5' \
    --namespace $AB_NAMESPACE \
    --userId 'IDmNv22C' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'XoBPWUAv' \
    --namespace $AB_NAMESPACE \
    --userId 'ijzYm5hC' \
    --body '{"endDate": "1976-10-14T00:00:00Z", "nullFieldList": ["gbgi1sN1", "nkgMS5S9", "eFwmvuD9"], "startDate": "1985-05-15T00:00:00Z", "status": "ACTIVE", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'CjpSsHm2' \
    --namespace $AB_NAMESPACE \
    --userId 'Jzxq02Um' \
    --body '{"options": ["JP5lltj5", "JcG5STY9", "M3hXJ0fo"], "requestId": "Wp71VSzR", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'mVg0uzek' \
    --namespace $AB_NAMESPACE \
    --userId 'eYISeSSi' \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '7In89wjn' \
    --namespace $AB_NAMESPACE \
    --userId 'BaPNIAKA' \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '3WWkxVaa' \
    --namespace $AB_NAMESPACE \
    --userId 'Eo8EbnAE' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '7dH12haY' \
    --namespace $AB_NAMESPACE \
    --userId '4leRPruO' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'oRprS7qj' \
    --body '{"duration": 95, "endDate": "1974-08-29T00:00:00Z", "itemId": "LNBmLnLA", "itemSku": "LyrRUeuM", "language": "5t7GAGnF", "order": {"currency": {"currencyCode": "GKmg2swh", "currencySymbol": "xiVhfKx6", "currencyType": "REAL", "decimals": 56, "namespace": "gLEtyjXk"}, "ext": {"UJ3DTUgO": {}, "xhckshvQ": {}, "ZZGoHThA": {}}, "free": false}, "orderNo": "U8g9ZS6H", "origin": "Epic", "quantity": 49, "region": "HHWnGp3G", "source": "REDEEM_CODE", "startDate": "1992-07-24T00:00:00Z", "storeId": "mlOiXYQs"}' \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'GmXCO545' \
    --body '{"code": "i04eKIqo", "language": "XFwQ_siwc", "region": "9neGNDke"}' \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'VGFoAfC3' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "C2vQXHV5", "namespace": "KaPK9Ret"}, "item": {"itemId": "O43JhIBY", "itemSku": "tTIi7otA", "itemType": "sz0O5mN8"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "Z0Dthtg5", "namespace": "8AbKPON0"}, "item": {"itemId": "z1782jsM", "itemSku": "ZKlw4KOp", "itemType": "JcBptcpM"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "6yPtHe1X", "namespace": "vu5kQroP"}, "item": {"itemId": "wVVTzO8A", "itemSku": "jGgsYCg1", "itemType": "kZXSfndy"}, "quantity": 94, "type": "ITEM"}], "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pa1Uuujg' \
    --endTime 'PSB69Npd' \
    --limit '54' \
    --offset '92' \
    --productId '7joxa2TS' \
    --startTime 'MF9hdn5x' \
    --status 'FAILED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Qdyeog8t' \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'wJNfjeSd' \
    --endTime 'klxrQjwt' \
    --limit '23' \
    --offset '43' \
    --startTime '65IeNfxv' \
    --status 'FAIL' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'moa3H4Qj' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "wgdy_op", "productId": "Yg6Z1J4T", "region": "VfKHVzLP", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'D6gQC5Bi' \
    --itemId '1RqjFROn' \
    --limit '65' \
    --offset '36' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'DNR3CW5Q' \
    --body '{"currencyCode": "yQu8BeMF", "currencyNamespace": "1jjGKtJZ", "discountedPrice": 8, "ext": {"icDuddcm": {}, "W0dAXpGw": {}, "tgKAiuZr": {}}, "itemId": "WmxfE2dP", "language": "R34xr3kU", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 53, "quantity": 70, "region": "590jdtBv", "returnUrl": "ritojaou", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'OR9h558l' \
    --itemId 'yvqdnUGm' \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6Sq4cJU8' \
    --userId 'K3jyeFhV' \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'HLXr125s' \
    --userId '21chthan' \
    --body '{"status": "DELETED", "statusReason": "i0QZlliD"}' \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wmliTqOh' \
    --userId 'Nsck0SJy' \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'OqgNUMVp' \
    --userId 'KFvqLtov' \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '1Y5ImImh' \
    --userId 'pxUTzKhH' \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'yEgBR4Xc' \
    --userId 'IJCGfdh9' \
    --body '{"additionalData": {"cardSummary": "hpGfCPKQ"}, "authorisedTime": "1982-11-09T00:00:00Z", "chargebackReversedTime": "1995-04-18T00:00:00Z", "chargebackTime": "1980-07-19T00:00:00Z", "chargedTime": "1985-03-10T00:00:00Z", "createdTime": "1981-03-01T00:00:00Z", "currency": {"currencyCode": "dOQ0TPW5", "currencySymbol": "fmoHdQ8T", "currencyType": "VIRTUAL", "decimals": 22, "namespace": "1GiT3dp6"}, "customParameters": {"YV90e7lv": {}, "UiDLKFrf": {}, "0p39naxe": {}}, "extOrderNo": "56OeiQCN", "extTxId": "CgSgCGOo", "extUserId": "jCHGAO8g", "issuedAt": "1996-02-27T00:00:00Z", "metadata": {"VkuLwmMo": "1yqWgCFr", "vge7bsVN": "zcyBubd4", "pKZRHWgi": "1nJkHBBy"}, "namespace": "za2yE7cu", "nonceStr": "tmaNU1mv", "paymentMethod": "bYPcvldI", "paymentMethodFee": 98, "paymentOrderNo": "qByvxyEk", "paymentProvider": "XSOLLA", "paymentProviderFee": 78, "paymentStationUrl": "2ftTgpxX", "price": 6, "refundedTime": "1995-09-11T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "xxQqhIy5", "status": "REFUNDED", "statusReason": "eczSGs1e", "subscriptionId": "cVI96Ew0", "subtotalPrice": 90, "targetNamespace": "NgwaQ4nO", "targetUserId": "YnPG2Sc3", "tax": 21, "totalPrice": 33, "totalTax": 73, "txEndTime": "1986-05-09T00:00:00Z", "type": "pRB78aSP", "userId": "i6OC0l0y", "vat": 47}' \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ph4q1L7u' \
    --userId 'D1qMqd2M' \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'i82R2HlG' \
    --body '{"currencyCode": "8zcuNyHW", "currencyNamespace": "PqZYPunv", "customParameters": {"sHD0AYfK": {}, "TtIZ01OP": {}, "o67Y5JOH": {}}, "description": "nrxyr4N0", "extOrderNo": "ZRycnfkQ", "extUserId": "6k6oiY1Z", "itemType": "MEDIA", "language": "Ex_sIWa-226", "metadata": {"g81fWhXa": "HIYeRf8G", "9jgxqGYy": "8NLiEOVH", "0MaWwele": "eaLaMhU7"}, "notifyUrl": "L2YVNrKf", "omitNotification": false, "platform": "As2SPD54", "price": 11, "recurringPaymentOrderNo": "FPCxWfme", "region": "RQWMek3L", "returnUrl": "drjOA6zm", "sandbox": true, "sku": "08iz6aLt", "subscriptionId": "iPTxBld1", "title": "NI0akL7u"}' \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SU3VJK1J' \
    --userId 'wimhlGi6' \
    --body '{"description": "m9NZP1wy"}' \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'APi864mO' \
    --body '{"code": "BnUnH97I", "orderNo": "tCUdwOgk"}' \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'zNX13Q3I' \
    --chargeStatus 'NEVER' \
    --itemId 'an7zPEos' \
    --limit '70' \
    --offset '12' \
    --sku 'z7Sp2k8J' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'lM6SGU1r' \
    --excludeSystem 'false' \
    --limit '64' \
    --offset '34' \
    --subscriptionId 'oTSR7yGc' \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'd5sXXpn1' \
    --body '{"grantDays": 87, "itemId": "Nnv5Wuzz", "language": "s3LJ9jeO", "reason": "fGbhXqLF", "region": "8Py6PcAC", "source": "ZQhvCv3H"}' \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ODzh3NoV' \
    --itemId 'B6iuZyY1' \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jXVKRzmI' \
    --userId 'nBVk75KQ' \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qQLLgv2k' \
    --userId 'VCJwl1yw' \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PGJ6Tf2q' \
    --userId 'lAne6aV7' \
    --force 'true' \
    --body '{"immediate": true, "reason": "iGSnHjOS"}' \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RWSpQsqW' \
    --userId 'QFeVjCr5' \
    --body '{"grantDays": 66, "reason": "JVQkJP0q"}' \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SoayxxMl' \
    --userId 'xBzyHUjG' \
    --excludeFree 'false' \
    --limit '19' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ylKV6BKh' \
    --userId 'bq7MSIPi' \
    --body '{"additionalData": {"cardSummary": "uDBJzTMe"}, "authorisedTime": "1979-05-11T00:00:00Z", "chargebackReversedTime": "1971-07-10T00:00:00Z", "chargebackTime": "1999-08-31T00:00:00Z", "chargedTime": "1980-09-06T00:00:00Z", "createdTime": "1978-08-02T00:00:00Z", "currency": {"currencyCode": "UdFv9piJ", "currencySymbol": "PEN8CEky", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "VWtMEBMH"}, "customParameters": {"PMyxLbxV": {}, "pMfQrGmr": {}, "TqbbWpBK": {}}, "extOrderNo": "UxARbmJ0", "extTxId": "MPE4e5pq", "extUserId": "PFw7HttH", "issuedAt": "1993-11-02T00:00:00Z", "metadata": {"l79vP72S": "Xmm8b34U", "6mz4DcZQ": "DXCY9F2C", "Fz8KClII": "JdkCAcU8"}, "namespace": "Ks75JIWh", "nonceStr": "WkVQcDNY", "paymentMethod": "KZEm7nlQ", "paymentMethodFee": 69, "paymentOrderNo": "sUz22ogX", "paymentProvider": "WALLET", "paymentProviderFee": 54, "paymentStationUrl": "dEAf1lAO", "price": 66, "refundedTime": "1988-06-12T00:00:00Z", "salesTax": 92, "sandbox": true, "sku": "tP1QlNY7", "status": "REQUEST_FOR_INFORMATION", "statusReason": "cJgSHNsW", "subscriptionId": "gtChCFZk", "subtotalPrice": 0, "targetNamespace": "fRmH0rNA", "targetUserId": "FEXauEDU", "tax": 9, "totalPrice": 87, "totalTax": 18, "txEndTime": "1989-06-01T00:00:00Z", "type": "I7sxUD2C", "userId": "WnHImq7c", "vat": 24}' \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'I5ijHsQi' \
    --namespace $AB_NAMESPACE \
    --userId '87lDeS9a' \
    --body '{"count": 6, "orderNo": "g3WLMtJe"}' \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'WYhespYm' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'hHdjwzOH' \
    --namespace $AB_NAMESPACE \
    --userId 'ALkQFLHr' \
    --limit '12' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'NfKM1ZVW' \
    --namespace $AB_NAMESPACE \
    --userId 'IIlKmjas' \
    --body '{"amount": 61, "expireAt": "1997-03-07T00:00:00Z", "origin": "GooglePlay", "reason": "CDMZmbZx", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'm1K4BR76' \
    --namespace $AB_NAMESPACE \
    --userId 'yXQtk4VK' \
    --body '{"amount": 75, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 237 'PayWithUserWallet' test.out

#- 238 GetUserWallet
eval_tap 0 238 'GetUserWallet # SKIP deprecated' test.out

#- 239 DebitUserWallet
eval_tap 0 239 'DebitUserWallet # SKIP deprecated' test.out

#- 240 DisableUserWallet
eval_tap 0 240 'DisableUserWallet # SKIP deprecated' test.out

#- 241 EnableUserWallet
eval_tap 0 241 'EnableUserWallet # SKIP deprecated' test.out

#- 242 ListUserWalletTransactions
eval_tap 0 242 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 243 QueryWallets
eval_tap 0 243 'QueryWallets # SKIP deprecated' test.out

#- 244 GetWallet
eval_tap 0 244 'GetWallet # SKIP deprecated' test.out

#- 245 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'f1y724eq' \
    --end 'NNlcjKu0' \
    --start 'zT39CyY1' \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["fj9m2TwH", "jbo1O4Cj", "Cm2zmwQR"], "apiKey": "lb9OktP4", "authoriseAsCapture": false, "blockedPaymentMethods": ["icSc63fJ", "YXiib8O6", "px2mTIRx"], "clientKey": "njmWfxWY", "dropInSettings": "RZd0faLL", "liveEndpointUrlPrefix": "D8liI5uK", "merchantAccount": "71NYrc8P", "notificationHmacKey": "ej82A1wu", "notificationPassword": "TuUeXbXA", "notificationUsername": "MdshE9GH", "returnUrl": "izxXMZFZ", "settings": "Yx2sqA3J"}' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "FYpOSTtT", "privateKey": "cF2h6mmP", "publicKey": "yWARL20a", "returnUrl": "dFDqBVcH"}' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "p5SgcHhB", "secretKey": "zJw3hIHI"}' \
    > test.out 2>&1
eval_tap $? 248 'TestCheckoutConfig' test.out

#- 249 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'MShel0ll' \
    --region 'Hd4ARPh9' \
    > test.out 2>&1
eval_tap $? 249 'DebugMatchedPaymentMerchantConfig' test.out

#- 250 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "K6CKXZSZ", "clientSecret": "eB0fomQ3", "returnUrl": "DTy1GgmL", "webHookId": "DR5vh3t0"}' \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["wRIIotIx", "jGp8GKAo", "UB9LLyFV"], "publishableKey": "9mxIzMFR", "secretKey": "9d63xvmH", "webhookSecret": "DCtEp56F"}' \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "UlDFPkvp", "key": "IBNZwnQm", "mchid": "9IoCav4z", "returnUrl": "AnxWDYlk"}' \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "dpUjqjwl", "flowCompletionUrl": "ypLGeh4n", "merchantId": 94, "projectId": 36, "projectSecretKey": "9olgkBG4"}' \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'XqllhgWy' \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 's4cG1o8y' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["z4iluPRL", "c934YgbZ", "CYkvhH4X"], "apiKey": "4eIctGeK", "authoriseAsCapture": true, "blockedPaymentMethods": ["YmG41gxL", "TUWikHFd", "LAGTbio3"], "clientKey": "6TrnLTTq", "dropInSettings": "DVhKSDhi", "liveEndpointUrlPrefix": "bNW1tLSN", "merchantAccount": "6ctLxb79", "notificationHmacKey": "zwVz2KXf", "notificationPassword": "tFR9ij9j", "notificationUsername": "38HXN4jF", "returnUrl": "hWf2YdTN", "settings": "blSfUbcF"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'h0zmmwer' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'XMlj9NNZ' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "S2c56Z7V", "privateKey": "pTiRNEQQ", "publicKey": "o0ArxG5f", "returnUrl": "NyQvg1XA"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ZDi4z7qR' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'xn8r2oVb' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "omxuUr4T", "secretKey": "uPNuTBeb"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'tQkvF5Ed' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'H6hy0Dy2' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "QAkYNvMl", "clientSecret": "lBmJ20UI", "returnUrl": "rU5hrx4u", "webHookId": "wZiIUMTx"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'P88bZhMW' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'kbuwdzir' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["WjyRxI1G", "9lA8e6ch", "o2WZ81TK"], "publishableKey": "A7xV4lyq", "secretKey": "EMU0p2qL", "webhookSecret": "jekP93dV"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'ea8x11sH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'fyiNXcys' \
    --validate 'true' \
    --body '{"appId": "4vEUKzQN", "key": "ccYAHzCk", "mchid": "7573ptic", "returnUrl": "GIbXCSPs"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'OfFyCrwV' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'VC6TJCwE' \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'iXSklXZ6' \
    --validate 'true' \
    --body '{"apiKey": "ui2DSPVo", "flowCompletionUrl": "HhTInxFw", "merchantId": 12, "projectId": 42, "projectSecretKey": "pXV0NZF4"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '56wZ11uz' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'eAjFX4vv' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaUIConfig' test.out

#- 271 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '87' \
    --namespace '96AT9idf' \
    --offset '6' \
    --region 'FcjU9fg4' \
    > test.out 2>&1
eval_tap $? 271 'QueryPaymentProviderConfig' test.out

#- 272 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "5UKkVaHn", "region": "EO6ylcp2", "sandboxTaxJarApiToken": "2oOkf2Is", "specials": ["XSOLLA", "ADYEN", "PAYPAL"], "taxJarApiToken": "BP2pMFHC", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 272 'CreatePaymentProviderConfig' test.out

#- 273 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetAggregatePaymentProviders' test.out

#- 274 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'QopaRAzX' \
    --region '9lCdnZfZ' \
    > test.out 2>&1
eval_tap $? 274 'DebugMatchedPaymentProviderConfig' test.out

#- 275 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetSpecialPaymentProviders' test.out

#- 276 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '7WaXitEZ' \
    --body '{"aggregate": "ADYEN", "namespace": "GmVslf87", "region": "ZfVPl2eZ", "sandboxTaxJarApiToken": "N4MCUtov", "specials": ["WALLET", "STRIPE", "CHECKOUT"], "taxJarApiToken": "cJQ4EOTA", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '2V7S8nSa' \
    > test.out 2>&1
eval_tap $? 277 'DeletePaymentProviderConfig' test.out

#- 278 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentTaxConfig' test.out

#- 279 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "M5A4HMgx", "taxJarApiToken": "SVkg4S1c", "taxJarEnabled": true, "taxJarProductCodesMapping": {"KtXGqEeV": "xMJOlCe6", "DXf6Jw8M": "MYkvg5yf", "5muHBmm4": "cY9Jt8JQ"}}' \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'gQ33P5Ou' \
    --end 'URSjeKKI' \
    --start 'owbtZ2ZY' \
    > test.out 2>&1
eval_tap $? 280 'SyncPaymentOrders' test.out

#- 281 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'jUxKlRSr' \
    --storeId 'OrydZeVD' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRootCategories' test.out

#- 282 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'pTm6BrPX' \
    --storeId 'KZx9rL8P' \
    > test.out 2>&1
eval_tap $? 282 'DownloadCategories' test.out

#- 283 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'tIrb2E9H' \
    --namespace $AB_NAMESPACE \
    --language 'ot6DUuZQ' \
    --storeId '1PN0taLa' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'kMyaypvm' \
    --namespace $AB_NAMESPACE \
    --language 'QCL1Vu50' \
    --storeId '1pSOzcFO' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Uv2L7xS3' \
    --namespace $AB_NAMESPACE \
    --language 'pgRk1JJy' \
    --storeId 'YT84pWKM' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetDescendantCategories' test.out

#- 286 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 286 'PublicListCurrencies' test.out

#- 287 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'GiqN889b' \
    --region 'EmUMNj7m' \
    --storeId 'Vm9nRtDW' \
    --appId 'DIgON0ZQ' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemByAppId' test.out

#- 288 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'CKH24DgA' \
    --categoryPath 'U19ewypU' \
    --features 'XFysDjoM' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language '5C5qzk70' \
    --limit '67' \
    --offset '32' \
    --region '9XHUMLrB' \
    --sortBy '["displayOrder:desc", "updatedAt:asc"]' \
    --storeId '5J2OgeCU' \
    --tags 'lDRbjt51' \
    > test.out 2>&1
eval_tap $? 288 'PublicQueryItems' test.out

#- 289 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'VbXkRzE6' \
    --region 'SDay1nqH' \
    --storeId 'L0s7nxlS' \
    --sku '9hucAHOL' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'EHbkBAQY' \
    --region 'kZ02rVRl' \
    --storeId 'CoL5Bnq2' \
    --itemIds 'dvh97ni3' \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Qid9U1nN", "6YpdxR7v", "H3k15ouQ"]}' \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '32' \
    --offset '29' \
    --region 'LKvSPlvm' \
    --storeId 'ZUcuQ7xV' \
    --keyword 'gxzED2U1' \
    --language 'ZZa8EpWa' \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '7mXL5yuo' \
    --namespace $AB_NAMESPACE \
    --language 'bgWKxxju' \
    --region 'ZDxCOWyQ' \
    --storeId 'TLWJdxgj' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'x63Rau4B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'kXCsjXap' \
    --namespace $AB_NAMESPACE \
    --language 'Cd5moAii' \
    --populateBundle 'false' \
    --region 'W6L5rQ6v' \
    --storeId 'GB9OTJJp' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "EM0nfOCr", "paymentProvider": "WXPAY", "returnUrl": "CWMsUUF9", "ui": "nNYJ5kgt", "zipCode": "B6D0Mb98"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PBXEtkic' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'f1EOrEB5' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QbYNYKAO' \
    --paymentProvider 'STRIPE' \
    --zipCode 'mSLHwWWD' \
    --body '{"token": "SuUXiVuL"}' \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4Qqxbjnj' \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'OrqskDZl' \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'mkv4QiKs' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'ZPoxMv0y' \
    --foreinginvoice 'j3CoPfJp' \
    --invoiceId '5VOIg1OF' \
    --payload 'hXutxMOb' \
    --redirectResult 'GJrTWm7f' \
    --resultCode 'B8ytMpzA' \
    --sessionId '7AVb1NTI' \
    --status 'wfX1XGYZ' \
    --token 'CjRuUwHH' \
    --type 's7RE6lOE' \
    --userId '7L4xOOKj' \
    --orderNo 'xlDc49mj' \
    --paymentOrderNo 'khbptVIx' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'dlXYalRF' \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '6fVN4dMa' \
    --paymentOrderNo 'CJNs9BjZ' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'wnlrLWbX' \
    > test.out 2>&1
eval_tap $? 306 'GetRewardByCode' test.out

#- 307 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'sVbqPUZy' \
    --limit '78' \
    --offset '59' \
    --sortBy '["rewardCode", "namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 307 'QueryRewards1' test.out

#- 308 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'FfLFDNIE' \
    > test.out 2>&1
eval_tap $? 308 'GetReward1' test.out

#- 309 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'PublicListStores' test.out

#- 310 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["SNAG0ydy", "gPNTZaIO", "piLaVYkf"]' \
    --itemIds '["hjO8USpp", "geL3cyO7", "UToO7701"]' \
    --skus '["wteHcD5l", "Ro4BOzP0", "Ccvmyu9D"]' \
    > test.out 2>&1
eval_tap $? 310 'PublicExistsAnyMyActiveEntitlement' test.out

#- 311 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Aaa62fz7' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId '9xbYRYP0' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'VZyIheTr' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 314 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["IiGP27GK", "Q4Eevflx", "F2asQg05"]' \
    --itemIds '["BuvwLgZi", "qINbNgdG", "XUIYYreB"]' \
    --skus '["65PsnS6c", "18DEWSU5", "EF3pszW8"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetEntitlementOwnershipToken' test.out

#- 315 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '5JUAn3OJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'exye6oBn' \
    --body '{"epicGamesJwtToken": "AvgAuoOw"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bRDlXmkx' \
    --body '{"serviceLabel": 58}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tZ3tE3XY' \
    --body '{"appId": "wwrax75y", "steamId": "nTTHECt4"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncSteamDLC' test.out

#- 319 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '5VPvZuma' \
    --body '{"xstsToken": "z2k3yRRM"}' \
    > test.out 2>&1
eval_tap $? 319 'SyncXboxDLC' test.out

#- 320 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '10bMrcja' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'fuWkzD4c' \
    --features '["DDW3JdXO", "SzToIfwy", "IrYFMK9A"]' \
    --itemId '["ovOwIJxb", "yiCFGygm", "TIPmOFlm"]' \
    --limit '13' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlements' test.out

#- 321 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'F5R3ya4O' \
    --appId 'ftiMKGcT' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserAppEntitlementByAppId' test.out

#- 322 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'MqkfmpNH' \
    --limit '34' \
    --offset '5' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserEntitlementsByAppType' test.out

#- 323 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jAFpIrfp' \
    --entitlementClazz 'CODE' \
    --itemId 'uPkhhGxV' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementByItemId' test.out

#- 324 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'LtwwM9VE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'W9bRuMf3' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementBySku' test.out

#- 325 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jpHtnkj8' \
    --appIds '["KxKhsoZa", "09w8H4cX", "OUoJHIW6"]' \
    --itemIds '["2JLaRPA9", "gCZ3XodT", "VluqbcE9"]' \
    --skus '["LGdZUIoQ", "bhTLbzMF", "ZW8WSX3s"]' \
    > test.out 2>&1
eval_tap $? 325 'PublicExistsAnyUserActiveEntitlement' test.out

#- 326 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'RFUdGZz1' \
    --appId 'yy0hhR2i' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fdSm86sm' \
    --entitlementClazz 'CODE' \
    --itemId 'nmIGCnON' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vkZof3be' \
    --ids '["okQ8Zxp3", "h8L850Bb", "jnzHYbM9"]' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 329 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'E52HfUnz' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '0MDJjxPT' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 330 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'q4anDa4Y' \
    --namespace $AB_NAMESPACE \
    --userId 'f0DwGHCa' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlement' test.out

#- 331 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'tygxg5dw' \
    --namespace $AB_NAMESPACE \
    --userId 'FfvFMVLN' \
    --body '{"options": ["zTncycKn", "9M833hiF", "ZwsOJcyk"], "requestId": "h3CxDcbw", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 331 'PublicConsumeUserEntitlement' test.out

#- 332 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'DMD3cxfy' \
    --body '{"code": "yh5kbtKp", "language": "PMCE_789", "region": "DIZ4QgpZ"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicRedeemCode' test.out

#- 333 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kf6Gv02U' \
    --body '{"excludeOldTransactions": true, "language": "Dh-bOYA", "productId": "8XpxQH98", "receiptData": "NPeUHFxZ", "region": "S2dyB2JL", "transactionId": "wqfsRzxb"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillAppleIAPItem' test.out

#- 334 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Hjm7OaOi' \
    --body '{"epicGamesJwtToken": "3obEzuIJ"}' \
    > test.out 2>&1
eval_tap $? 334 'SyncEpicGamesInventory' test.out

#- 335 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'GPY9sUIu' \
    --body '{"autoAck": true, "language": "glrc", "orderId": "WL7syvOD", "packageName": "I0MEkPj1", "productId": "CMD1HFtr", "purchaseTime": 66, "purchaseToken": "DDdxgMGw", "region": "B9zNxAYN"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicFulfillGoogleIAPItem' test.out

#- 336 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'VRJXM7Zn' \
    --body '{"currencyCode": "BchSiNBA", "price": 0.4437050686427588, "productId": "dChHSwFD", "serviceLabel": 65}' \
    > test.out 2>&1
eval_tap $? 336 'PublicReconcilePlayStationStore' test.out

#- 337 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YTaO2z8F' \
    --body '{"appId": "qcbZQ49L", "language": "rlPk-WFuv", "region": "EUFhNQis", "stadiaPlayerId": "txhQyt90"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncStadiaEntitlement' test.out

#- 338 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'kdfOzK5R' \
    --body '{"appId": "4aWW2rJC", "currencyCode": "uLhWbcnt", "language": "HXN-wenu", "price": 0.8604468313042171, "productId": "DY6Fix29", "region": "R09jE67R", "steamId": "jEqo0ApB"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncSteamInventory' test.out

#- 339 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TbI5PnFu' \
    --body '{"gameId": "jrYJqzNo", "language": "mv-oPeR", "region": "tXHW59cl"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncTwitchDropsEntitlement' test.out

#- 340 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'wjLfQ00s' \
    --body '{"currencyCode": "edOXoFtg", "price": 0.5685906700378527, "productId": "diiGQNwV", "xstsToken": "6Zqd1ZEv"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxInventory' test.out

#- 341 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'diQGFh2S' \
    --itemId '7tZl7Q2W' \
    --limit '40' \
    --offset '92' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserOrders' test.out

#- 342 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kZ1EyqcS' \
    --body '{"currencyCode": "UcRDhCjc", "discountedPrice": 67, "ext": {"Hn1FboaE": {}, "ibqbYnGX": {}, "RPCUDqP8": {}}, "itemId": "8rKrqQ5B", "language": "As", "price": 33, "quantity": 81, "region": "mJghyMa6", "returnUrl": "SvBdBTTZ"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserOrder' test.out

#- 343 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AlQR4x2J' \
    --userId 'EBMyOhz8' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrder' test.out

#- 344 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7DLZNSUS' \
    --userId 'c4cA0ciA' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelUserOrder' test.out

#- 345 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'uGJ6FRqJ' \
    --userId 'CXkWIpug' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrderHistories' test.out

#- 346 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Q7wz9pQO' \
    --userId 'v3APcRJM' \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadUserOrderReceipt' test.out

#- 347 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'e3wMsFf5' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetPaymentAccounts' test.out

#- 348 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'uovoouPu' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'a98ga2jN' \
    > test.out 2>&1
eval_tap $? 348 'PublicDeletePaymentAccount' test.out

#- 349 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'C0jDVFab' \
    --chargeStatus 'SETUP' \
    --itemId 'FaPhhX4s' \
    --limit '25' \
    --offset '85' \
    --sku 'ieg3tBhn' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserSubscriptions' test.out

#- 350 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'IZ4ybjj2' \
    --body '{"currencyCode": "lDuqSf4S", "itemId": "XxNNR8e3", "language": "afy_209", "region": "nO7ienTb", "returnUrl": "JXGG2hg6", "source": "cVo7bjf6"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSubscribeSubscription' test.out

#- 351 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GAgrktzn' \
    --itemId 'eiJSTq8Z' \
    > test.out 2>&1
eval_tap $? 351 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 352 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WX9SqDUA' \
    --userId 'nwc4euBX' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserSubscription' test.out

#- 353 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jQ2GRsyK' \
    --userId '3xKXISVR' \
    > test.out 2>&1
eval_tap $? 353 'PublicChangeSubscriptionBillingAccount' test.out

#- 354 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kSjTL7Vp' \
    --userId '8qXfboXl' \
    --body '{"immediate": true, "reason": "ZLSb8cnb"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicCancelSubscription' test.out

#- 355 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gSBu79PE' \
    --userId 'GRCmBP4s' \
    --excludeFree 'false' \
    --limit '8' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserSubscriptionBillingHistories' test.out

#- 356 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Co9Z2FyE' \
    --namespace $AB_NAMESPACE \
    --userId 'mKFvsBIM' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetWallet' test.out

#- 357 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'zT9gom2p' \
    --namespace $AB_NAMESPACE \
    --userId 'OM38c5Hj' \
    --limit '70' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 357 'PublicListUserWalletTransactions' test.out

#- 358 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate '449cvocq' \
    --baseAppId '7oIFeYxR' \
    --categoryPath '7NXCqbJH' \
    --features 'TIK5XByh' \
    --includeSubCategoryItem 'true' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '59' \
    --offset '14' \
    --region 'jMSTdDzW' \
    --sortBy '["name", "createdAt", "name:desc"]' \
    --storeId 'UKchkogp' \
    --tags 'MHzJjIXg' \
    --targetNamespace 'l5e2lgTY' \
    > test.out 2>&1
eval_tap $? 358 'QueryItems1' test.out

#- 359 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'B8a9uHWC' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 359 'ImportStore1' test.out

#- 360 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'xIutPjxR' \
    --body '{"itemIds": ["NBfL4mbU", "vWNXLrar", "3txjCmSy"]}' \
    > test.out 2>&1
eval_tap $? 360 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE