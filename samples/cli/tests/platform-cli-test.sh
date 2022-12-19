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
echo "1..364"

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
    --body '{"context": {"item": {"appId": "OYrKZF4Z", "appType": "DEMO", "baseAppId": "AdCJwAj9", "boothName": "MjVRkbEU", "boundItemIds": ["DlGdhgXT", "eXScCfsE", "GLmeHulu"], "categoryPath": "yVNiAPZd", "clazz": "PEvL7Y90", "createdAt": "1993-07-22T00:00:00Z", "description": "70xJeMuo", "displayOrder": 5, "entitlementType": "CONSUMABLE", "ext": {"PBxYFHIi": {}, "ijJ3oBrX": {}, "QyJHPi2g": {}}, "features": ["kl1fimaS", "n4I7STWy", "sCl14TC4"], "fresh": true, "images": [{"as": "S4gGPTgE", "caption": "53MlikBz", "height": 50, "imageUrl": "RbFq6FYq", "smallImageUrl": "bzBO4ttO", "width": 94}, {"as": "Gj4TGAB8", "caption": "25mVlMmj", "height": 18, "imageUrl": "1qeFDDxM", "smallImageUrl": "ifqsRv6V", "width": 83}, {"as": "Ld7cHgnH", "caption": "F8acT4TL", "height": 56, "imageUrl": "iJJDVizB", "smallImageUrl": "tqna7Fda", "width": 85}], "itemId": "9VjNBjBZ", "itemIds": ["otEzNUEt", "I7G3NdEP", "GVB5AXmb"], "itemQty": {"XTqjWjQH": 28, "mhYWWnKj": 99, "GXlwKTZY": 16}, "itemType": "MEDIA", "language": "HH4UWt0s", "listable": true, "localExt": {"NZXC0mqr": {}, "AjDsopsq": {}, "tMJjb7sJ": {}}, "longDescription": "LmVElp9P", "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "lQwx3l6j", "itemSku": "OiqdhDJ2", "itemType": "M07nre40"}, {"count": 53, "itemId": "vbCHLdXe", "itemSku": "TzMXbJis", "itemType": "oztzskik"}, {"count": 98, "itemId": "8Km3PvE4", "itemSku": "ciOpEBIM", "itemType": "ZzdThDJY"}], "name": "Z8rj17wQ", "odds": 0.5023944087881093, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 57, "itemId": "VH4pCsFV", "itemSku": "kBms8sM0", "itemType": "0ZasKa1L"}, {"count": 1, "itemId": "5yFjL0UP", "itemSku": "e1c5sTyY", "itemType": "AV14jcQm"}, {"count": 72, "itemId": "SiPtDiy2", "itemSku": "uLctd7sU", "itemType": "VYkAHUFy"}], "name": "9LqEJGSa", "odds": 0.17574108908674935, "type": "PROBABILITY_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 54, "itemId": "UJCQnLTS", "itemSku": "Zl0eD1gY", "itemType": "En7lc2DG"}, {"count": 65, "itemId": "iLvAnxSZ", "itemSku": "z6JeRyVX", "itemType": "1nrzO3o8"}, {"count": 56, "itemId": "PsUTArKc", "itemSku": "2k994hLk", "itemType": "Woy2l4Ts"}], "name": "JJTwy1yB", "odds": 0.266842176109076, "type": "REWARD", "weight": 66}]}, "maxCount": 84, "maxCountPerUser": 69, "name": "UHVZof4g", "namespace": "qnQrhjnn", "optionBoxConfig": {"boxItems": [{"count": 71, "itemId": "aHQisPtt", "itemSku": "9zNGmx9G", "itemType": "HgJdED0I"}, {"count": 84, "itemId": "qiu4dpRt", "itemSku": "GaAqyUSb", "itemType": "ygXjT1Si"}, {"count": 49, "itemId": "yMNNRiIp", "itemSku": "Wpkghw0P", "itemType": "AIRtSGAn"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "is", "name": "IQ613G01", "predicateType": "SeasonTierPredicate", "value": "DbGt5hyd", "values": ["fRX6uw3S", "tNF0klJN", "x4ABQGXl"]}, {"anyOf": 15, "comparison": "includes", "name": "hXMQpJy8", "predicateType": "SeasonTierPredicate", "value": "Bp2BB9FZ", "values": ["2rSYNAxd", "OXh3jDFX", "wSLmNBVa"]}, {"anyOf": 51, "comparison": "isLessThan", "name": "Rgvrwg75", "predicateType": "SeasonPassPredicate", "value": "R45WaNDT", "values": ["VEu2aQOa", "R57lVnAG", "Po4sUJl1"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "includes", "name": "hul141xx", "predicateType": "SeasonPassPredicate", "value": "joBcCe9r", "values": ["0dhFVqVg", "tQ1IBlno", "pMePI4JO"]}, {"anyOf": 50, "comparison": "isLessThanOrEqual", "name": "kbQv3jWI", "predicateType": "SeasonPassPredicate", "value": "mScjs6VB", "values": ["Mqnv7vkO", "zdkMFPjy", "ne1AVNpt"]}, {"anyOf": 21, "comparison": "includes", "name": "VoGibh4X", "predicateType": "EntitlementPredicate", "value": "QGJRA0HI", "values": ["DOMJcRbR", "TS3EdpMX", "yqjUFRZq"]}]}, {"operator": "or", "predicates": [{"anyOf": 37, "comparison": "isNot", "name": "5NzJuLDC", "predicateType": "SeasonTierPredicate", "value": "kB2HCKGp", "values": ["SDup7Ren", "1WLEBixJ", "WzGHVrsp"]}, {"anyOf": 97, "comparison": "isLessThan", "name": "ZzzjaW4R", "predicateType": "SeasonTierPredicate", "value": "L7RguIn7", "values": ["6k0YwQzw", "JgauivKg", "qd0QvGoI"]}, {"anyOf": 58, "comparison": "isGreaterThan", "name": "ohXebTEi", "predicateType": "SeasonPassPredicate", "value": "ZHTRGrYP", "values": ["6RVqkBSh", "7nbqFMnh", "Z7aNxrSI"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 61, "fixedTrialCycles": 53, "graceDays": 72}, "region": "ja9Ia0Vx", "regionData": [{"currencyCode": "zcmT1Uoe", "currencyNamespace": "bcYbyM96", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1986-08-21T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1983-01-08T00:00:00Z", "discountedPrice": 10, "expireAt": "1999-07-30T00:00:00Z", "price": 95, "purchaseAt": "1980-07-13T00:00:00Z", "trialPrice": 6}, {"currencyCode": "lgZ2yJ6T", "currencyNamespace": "4NmATo2A", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1997-07-05T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1979-06-09T00:00:00Z", "discountedPrice": 53, "expireAt": "1997-08-21T00:00:00Z", "price": 21, "purchaseAt": "1987-11-04T00:00:00Z", "trialPrice": 37}, {"currencyCode": "mUyG5jdR", "currencyNamespace": "iM7sFf7f", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1994-09-15T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1989-11-12T00:00:00Z", "discountedPrice": 43, "expireAt": "1980-07-23T00:00:00Z", "price": 54, "purchaseAt": "1992-10-07T00:00:00Z", "trialPrice": 61}], "seasonType": "PASS", "sku": "FMxDbU4N", "stackable": false, "status": "INACTIVE", "tags": ["2KO8GyAv", "j1DEJ3HD", "u02aBKEr"], "targetCurrencyCode": "jwr7OHaU", "targetItemId": "AuvAu5NR", "targetNamespace": "obXQJw3Y", "thumbnailUrl": "EPpmEYti", "title": "QlujxTNj", "updatedAt": "1981-02-01T00:00:00Z", "useCount": 59}, "namespace": "W1MJeqNU", "order": {"currency": {"currencyCode": "Guqt8Ul6", "currencySymbol": "sdxBBFNk", "currencyType": "REAL", "decimals": 29, "namespace": "VK5Glmdx"}, "ext": {"w3nuznWb": {}, "0osqPtO0": {}, "8NJ4xUds": {}}, "free": true}, "source": "OTHER"}, "script": "RWb0YM5u", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'wAWQMy27' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'pWJTJnJR' \
    --body '{"grantDays": "bKrDfofx"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'FPuLDS2g' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'FjolF7QD' \
    --body '{"grantDays": "2TGngX8l"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HBG1wZcK", "dryRun": false, "fulfillmentUrl": "8yQpmKCU", "itemType": "COINS", "purchaseConditionUrl": "Y5EZt6QI"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'pIkpXI0X' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '2KcyRNWl' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'm0FnMNu3' \
    --body '{"clazz": "wOfDxXaZ", "dryRun": true, "fulfillmentUrl": "9ppDBPX1", "purchaseConditionUrl": "TWurJPPS"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '2vbmqHrw' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'wh9kCweU' \
    --offset '21' \
    --tag 'NhJMCVJj' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "H4CWjR5r", "items": [{"extraSubscriptionDays": 89, "itemId": "GtB0jJRf", "itemName": "35SF4m6e", "quantity": 14}, {"extraSubscriptionDays": 22, "itemId": "fiqfSogD", "itemName": "7hstcg3c", "quantity": 1}, {"extraSubscriptionDays": 56, "itemId": "9mWDG0Fl", "itemName": "QxO8on9R", "quantity": 59}], "maxRedeemCountPerCampaignPerUser": 31, "maxRedeemCountPerCode": 57, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 83, "name": "t510f8Wo", "redeemEnd": "1989-08-18T00:00:00Z", "redeemStart": "1971-12-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["qlJPuWSp", "uVC6HeNn", "Ryh6eOji"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '7igyUKRA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'dk3dIIot' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zpa5WqWV", "items": [{"extraSubscriptionDays": 57, "itemId": "Hb5ZMd7V", "itemName": "NHIkyK5P", "quantity": 14}, {"extraSubscriptionDays": 48, "itemId": "Xukx2q8P", "itemName": "QX2GJ9qn", "quantity": 14}, {"extraSubscriptionDays": 42, "itemId": "fOhIG8aa", "itemName": "6sESD6mF", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 60, "maxRedeemCountPerCode": 20, "maxRedeemCountPerCodePerUser": 0, "maxSaleCount": 38, "name": "j0DzwbGw", "redeemEnd": "1978-12-22T00:00:00Z", "redeemStart": "1975-06-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["wMLUr65u", "fre8yzCS", "LIPiBj6B"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'rbR7jl0x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'Ct0YKqPx' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'YaMjvO67' \
    --body '{"categoryPath": "n7psIuO9", "localizationDisplayNames": {"cjzSk2Ab": "O3tYuBgO", "rXjDwSWy": "s8j4WMRE", "1GKgjpWN": "Z1TzHJgq"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '82r4g466' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'pW0XU9sW' \
    --namespace $AB_NAMESPACE \
    --storeId 'XAImZzaN' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 's2uElLxz' \
    --namespace $AB_NAMESPACE \
    --storeId 'NyLA1EoB' \
    --body '{"localizationDisplayNames": {"miwRwHj7": "gkR98oXu", "vtgu5TMp": "CzzAHomL", "8W1QnJod": "2UFL6sKc"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'PAHmZsSZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'uuoWeq91' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '1dkcBS2Y' \
    --namespace $AB_NAMESPACE \
    --storeId 'eyNLaUct' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'QU5EW8zS' \
    --namespace $AB_NAMESPACE \
    --storeId 'FAJA8DVy' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'PMYb2jiQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '69' \
    --code 'rU3azjwY' \
    --limit '63' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'F9VHR4TU' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 93}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'yzEFPkmv' \
    --namespace $AB_NAMESPACE \
    --batchNo '18' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Wd4PtTmZ' \
    --namespace $AB_NAMESPACE \
    --batchNo '65' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '5vQq0Okp' \
    --namespace $AB_NAMESPACE \
    --batchNo '8' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'mF0FJQq7' \
    --namespace $AB_NAMESPACE \
    --code 'AJOh6g3F' \
    --limit '33' \
    --offset '72' \
    --userId 'wjU8p5OJ' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'EuLkcMfU' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'IvS7wG6p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Th4fW6Id' \
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
    --body '{"currencyCode": "6Rfvirkb", "currencySymbol": "fVviekT2", "currencyType": "REAL", "decimals": 65, "localizationDescriptions": {"gCaGeONQ": "MOlZqJMC", "4tRxVmSz": "oY03jrFT", "OimURy7t": "t6liNT6g"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'BBCIR5mN' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"xiXt5Asn": "1hyAqogY", "25Ew7lNS": "vDuTDU8v", "bht77jEI": "PTzCgB0n"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'iDwUJxH7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'NQ8UqAA7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'LtmpYzbj' \
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
    --body '{"data": [{"id": "515StE9i", "rewards": [{"currency": {"currencyCode": "Z2u7CIl8", "namespace": "ij561XdN"}, "item": {"itemId": "NPt4irlt", "itemSku": "1A9HSzrp", "itemType": "r9RsOjF6"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "LtTC8c04", "namespace": "tDcXHKJn"}, "item": {"itemId": "h0zRAlBZ", "itemSku": "b7t16GTO", "itemType": "mtU67yX0"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "OzHWHjge", "namespace": "aQi8VyBV"}, "item": {"itemId": "DoU5BCsx", "itemSku": "ZqNNkhux", "itemType": "rakh1VAW"}, "quantity": 0, "type": "CURRENCY"}]}, {"id": "l3FuX0cE", "rewards": [{"currency": {"currencyCode": "TnTLI9bV", "namespace": "wFfWkjyA"}, "item": {"itemId": "cJHrRC29", "itemSku": "RHM4mRBw", "itemType": "xZcRekoo"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "KXaOPXMO", "namespace": "SgHoIjrY"}, "item": {"itemId": "bXrb7Stu", "itemSku": "1fKwSnSA", "itemType": "gAJ9ecFU"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "pmVLyoO7", "namespace": "6Osz571O"}, "item": {"itemId": "15IO4ZK8", "itemSku": "60ho9Xu7", "itemType": "c3JV2KMA"}, "quantity": 77, "type": "CURRENCY"}]}, {"id": "n9WoKsKQ", "rewards": [{"currency": {"currencyCode": "O8mwiIEw", "namespace": "mvGQ0DnE"}, "item": {"itemId": "0HOvG0sA", "itemSku": "wVpdFdcZ", "itemType": "57OM9dGd"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "qtmcMhIW", "namespace": "GrAFZjtN"}, "item": {"itemId": "m0D0r5H7", "itemSku": "W0ogJJ7p", "itemType": "jVRJW7TT"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "JbjRze3P", "namespace": "Mo4fex2R"}, "item": {"itemId": "MG31KZBX", "itemSku": "aR2iNqka", "itemType": "QtXlpN8c"}, "quantity": 98, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"pRn82OrA": "A8KmhIHG", "CZSb0kzZ": "GDfICr11", "pY57eJRL": "V2Tw1G5k"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"Vt7j1AVh": "UqCELgu0", "SIB8xoUj": "VDzEVMNP", "qtQxmCsd": "PFmQWgPK"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"K5QZFQP9": "pLuJO1SK", "V5GjAEA6": "7maEQwVZ", "1OzHvOJM": "dzjVvYmM"}}]}' \
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
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '87zknJ5l' \
    --itemId '["IJ09o7SO", "qfGVM54C", "HcWe4Qwx"]' \
    --limit '71' \
    --offset '44' \
    --userId 'UhpXIEOh' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'HoXXneel' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '83' \
    --status 'SUCCESS' \
    --userId 'OtCq9xw0' \
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
    --body '{"bundleId": "xZoijEVK", "password": "AzCL6E4F"}' \
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
    --body '{"sandboxId": "dX6GCIKI"}' \
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
    --body '{"applicationName": "41XRhMEb", "serviceAccountId": "x2BO1wsJ"}' \
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
    --body '{"data": [{"itemIdentity": "IUCyXoSP", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"KnlDHorQ": "q1DI8aq9", "IBOPJtGd": "A1SBcsY3", "qU0mdX54": "pZPohgYB"}}, {"itemIdentity": "YSFbzIlq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"MM4Al71n": "2hNw33YD", "K93NHFSM": "cTiMKXwS", "lgMJSTSu": "6THCMsaI"}}, {"itemIdentity": "rCZau0QV", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DWDNEhJY": "Z9eE2nun", "BVuOpRpX": "a3TXEAjY", "ZZXZA6AD": "gATifFXe"}}]}' \
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
    --body '{"environment": "WekCRRlg"}' \
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
    --body '{"appId": "we79Lceb", "publisherAuthenticationKey": "xvW3fG55"}' \
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
    --body '{"clientId": "FM9SNbPh", "clientSecret": "A0A3XpiZ", "organizationId": "5hh2CzAl"}' \
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
    --body '{"relyingPartyCert": "qsL2y1jH"}' \
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
    --password 'Hu78k0yI' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'oySxBsiX' \
    --itemId 'nyqliuuJ' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'YB8u4uI7' \
    --startTime 'kfGdhk26' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'a46ETTZ0' \
    --itemId 'OaazRwU5' \
    --itemType 'EXTENSION' \
    --endTime 'f7GSgvw5' \
    --startTime 'yQZccGJy' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iQN6Wkan' \
    --body '{"categoryPath": "vW4Wp4xr", "targetItemId": "5Nr7qD0r", "targetNamespace": "6K3YXyzD"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Wqw55DSw' \
    --body '{"appId": "j6cB0RKS", "appType": "DLC", "baseAppId": "IIreqNBL", "boothName": "Iaed6p8J", "categoryPath": "pVbKaOvV", "clazz": "p01fMMTN", "displayOrder": 13, "entitlementType": "CONSUMABLE", "ext": {"Dx1rhze1": {}, "e8xVMBul": {}, "rMaH4QYf": {}}, "features": ["0IywiRAm", "3R6pVoCp", "wWVNCRtn"], "images": [{"as": "UEBIgP5q", "caption": "WYNzQO8r", "height": 83, "imageUrl": "xgyJz8FS", "smallImageUrl": "FqbyNRmD", "width": 24}, {"as": "BRtitbme", "caption": "GrnaLMbr", "height": 96, "imageUrl": "SFeg5bk8", "smallImageUrl": "r4Frn7Jg", "width": 61}, {"as": "aGatl6nL", "caption": "griSYAh7", "height": 60, "imageUrl": "sDKiqccL", "smallImageUrl": "RXabFLyw", "width": 99}], "itemIds": ["FRl2efyY", "uGYPg3hE", "Nt86LUkp"], "itemQty": {"laK1aJar": 21, "7kEJ1dwj": 92, "VmGnv7XJ": 29}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"Sk3X1Zfy": {"description": "HCtNCt5V", "localExt": {"GEAQ8Cpp": {}, "gMNym5lQ": {}, "Y2S3aQdY": {}}, "longDescription": "35QcEU9U", "title": "UcWNzwHs"}, "ZjtuWiEg": {"description": "LXcXdF2U", "localExt": {"5lZyHY9H": {}, "rbxpxeGD": {}, "k6qlTnRm": {}}, "longDescription": "kdR35EZz", "title": "sL2QltWF"}, "cR0yuttq": {"description": "N6uuoKlk", "localExt": {"0SGDcfPT": {}, "Zhn5kM7l": {}, "Ktu81oDl": {}}, "longDescription": "hW0UuEEV", "title": "SSz3agvu"}}, "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 79, "itemId": "9kuaHEx3", "itemSku": "j6SENjiE", "itemType": "5Rafuabl"}, {"count": 77, "itemId": "hGgZ13db", "itemSku": "vBfv7i6g", "itemType": "QrwWGdJH"}, {"count": 89, "itemId": "zhIZgSdd", "itemSku": "rA8GiNTt", "itemType": "IUpHZXCZ"}], "name": "m4OqP1LX", "odds": 0.8728798338157536, "type": "REWARD_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 2, "itemId": "2jjQKpcR", "itemSku": "F3um046F", "itemType": "gMnjNqVV"}, {"count": 76, "itemId": "n1kSq6nM", "itemSku": "EI2ggHLI", "itemType": "odGyWzTd"}, {"count": 16, "itemId": "9IYS80Rt", "itemSku": "elhXFnYC", "itemType": "tK5rs0ag"}], "name": "2enSwV9d", "odds": 0.28892279866331816, "type": "REWARD", "weight": 95}, {"lootBoxItems": [{"count": 91, "itemId": "afA9KnaM", "itemSku": "r6YKDpRl", "itemType": "TMSl9ZKM"}, {"count": 51, "itemId": "WRGoxtqN", "itemSku": "5B8hyVRh", "itemType": "pV5fN66J"}, {"count": 41, "itemId": "FqhFgIor", "itemSku": "yYy7UGGS", "itemType": "W4b1Lkva"}], "name": "K9QcU8Ya", "odds": 0.5686773609799306, "type": "PROBABILITY_GROUP", "weight": 94}]}, "maxCount": 10, "maxCountPerUser": 65, "name": "lRn47vmi", "optionBoxConfig": {"boxItems": [{"count": 12, "itemId": "P8VdStYh", "itemSku": "zvPpy2m4", "itemType": "yTKkT9ud"}, {"count": 66, "itemId": "c3PcABcD", "itemSku": "OKDvSBO0", "itemType": "e2S0SFKr"}, {"count": 34, "itemId": "gMTC6n4I", "itemSku": "BanVZ2Td", "itemType": "Br0AdqDU"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 48, "fixedTrialCycles": 37, "graceDays": 15}, "regionData": {"W5qnCxCW": [{"currencyCode": "oHk8aIZt", "currencyNamespace": "ZdIX5rY5", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1983-01-04T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1981-04-12T00:00:00Z", "discountedPrice": 74, "expireAt": "1994-08-21T00:00:00Z", "price": 83, "purchaseAt": "1992-01-09T00:00:00Z", "trialPrice": 81}, {"currencyCode": "ohHLVfiu", "currencyNamespace": "JXljz3bl", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1979-12-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1995-09-10T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-03-26T00:00:00Z", "price": 1, "purchaseAt": "1974-04-06T00:00:00Z", "trialPrice": 93}, {"currencyCode": "PrXCow17", "currencyNamespace": "eJ0BguT0", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1982-01-04T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1993-04-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1972-01-09T00:00:00Z", "price": 37, "purchaseAt": "1996-04-05T00:00:00Z", "trialPrice": 35}], "Vhv5N0sY": [{"currencyCode": "ghb3VkEg", "currencyNamespace": "JPzfiUHb", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1972-11-19T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1987-09-21T00:00:00Z", "discountedPrice": 61, "expireAt": "1982-11-11T00:00:00Z", "price": 14, "purchaseAt": "1976-05-31T00:00:00Z", "trialPrice": 26}, {"currencyCode": "HWzgDasa", "currencyNamespace": "eL4ldCkW", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1998-07-16T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1976-01-23T00:00:00Z", "discountedPrice": 91, "expireAt": "1974-09-25T00:00:00Z", "price": 91, "purchaseAt": "1971-12-21T00:00:00Z", "trialPrice": 28}, {"currencyCode": "5jfZS5xF", "currencyNamespace": "RdTYIMBf", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1995-01-12T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1971-03-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1990-07-09T00:00:00Z", "price": 19, "purchaseAt": "1987-07-20T00:00:00Z", "trialPrice": 100}], "P4xH81hK": [{"currencyCode": "tNEJ3HHy", "currencyNamespace": "aR0wnroT", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1976-05-23T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1984-04-30T00:00:00Z", "discountedPrice": 70, "expireAt": "1982-08-04T00:00:00Z", "price": 7, "purchaseAt": "1971-10-31T00:00:00Z", "trialPrice": 92}, {"currencyCode": "xo0wVZE4", "currencyNamespace": "R4YhZxYq", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1998-01-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1995-01-24T00:00:00Z", "discountedPrice": 60, "expireAt": "1998-03-09T00:00:00Z", "price": 45, "purchaseAt": "1986-02-01T00:00:00Z", "trialPrice": 42}, {"currencyCode": "dQhYvV1b", "currencyNamespace": "af7C0khO", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1990-08-01T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1976-09-03T00:00:00Z", "discountedPrice": 41, "expireAt": "1976-03-08T00:00:00Z", "price": 13, "purchaseAt": "1995-09-19T00:00:00Z", "trialPrice": 97}]}, "seasonType": "TIER", "sku": "0DOJEtZt", "stackable": false, "status": "INACTIVE", "tags": ["eHiGgYMh", "BIBT4G0K", "uZ9IOuHj"], "targetCurrencyCode": "QRoKEDSR", "targetNamespace": "c6myHbbi", "thumbnailUrl": "a7mbSZ9W", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'PggMEKV6' \
    --appId 'CiRPQouR' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'nXiDZvNB' \
    --baseAppId 'ToThX9es' \
    --categoryPath 'gPnmpGmJ' \
    --features 'eQ55sQSf' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '90' \
    --offset '61' \
    --region 'cJQ2GL3t' \
    --sortBy '["displayOrder:asc", "name:desc"]' \
    --storeId 'OLZLjgzY' \
    --tags 'Kktw3RPZ' \
    --targetNamespace 'DhwLjNIm' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["qOIVu2JH", "nfrcg51w", "Np5BO5Yb"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '8XebJFVY' \
    --sku 'rBEFelB2' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '06WWg06H' \
    --populateBundle 'true' \
    --region '0q0c9SHu' \
    --storeId 'jSfG0Mgr' \
    --sku 'sPSnVwxa' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'JATAyvIE' \
    --sku 'q0NSoxNG' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["62DhfJPA", "XVTKKNuq", "uOGkRCoc"]' \
    --storeId 'wNdr42CV' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'VZpprqoi' \
    --region 'FuCuFGKt' \
    --storeId 'KU8mcneU' \
    --itemIds '7BoUiB8I' \
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
    --userId 'WNOq9l0R' \
    --body '{"itemIds": ["NZ7K5IYR", "3tg1VbAE", "Eat3CeYA"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '86' \
    --offset '73' \
    --sortBy 'qaFGLNo4' \
    --storeId 'r3rr3n1z' \
    --keyword 'qowqsjgQ' \
    --language 'CgKnP8aL' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '86' \
    --offset '22' \
    --sortBy '["createdAt", "displayOrder:desc", "updatedAt:desc"]' \
    --storeId 'IcDx0OFc' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'orBAc3iY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'bPh1HbVw' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Z7PkOaAZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'HsAgcDNP' \
    --body '{"appId": "6ZqV0jg0", "appType": "DEMO", "baseAppId": "s9tFlFIW", "boothName": "ZUIrRQQp", "categoryPath": "YIsOlryS", "clazz": "Vk6JAxFj", "displayOrder": 14, "entitlementType": "CONSUMABLE", "ext": {"gUENOLpA": {}, "CmGEaOUQ": {}, "wL7c5ktC": {}}, "features": ["kLtEMYs8", "GBnsBFVy", "qFb4d7sp"], "images": [{"as": "EKCCHORc", "caption": "jyQReV9O", "height": 84, "imageUrl": "hNjj3hDQ", "smallImageUrl": "xk2dwvmZ", "width": 8}, {"as": "q8IAi2qU", "caption": "8CDdSBu8", "height": 54, "imageUrl": "c3J1vGfP", "smallImageUrl": "mTRxVKNL", "width": 50}, {"as": "qkCD141E", "caption": "9ZpkYVFC", "height": 88, "imageUrl": "Fc4DwrDU", "smallImageUrl": "0JlkVoa9", "width": 94}], "itemIds": ["4HGGFctk", "AoPEGEiR", "kD1po2Mf"], "itemQty": {"j0M4rEcF": 22, "ABMPdAFw": 21, "gLbmIixm": 24}, "itemType": "SEASON", "listable": false, "localizations": {"PEXMvm8t": {"description": "hVRmbpNJ", "localExt": {"QEJ7cbQ6": {}, "UJE20xtm": {}, "2QSCc8Dy": {}}, "longDescription": "MhBC4gav", "title": "mzE84YsC"}, "jXeokn1e": {"description": "h2lsXazh", "localExt": {"dl1OFuaG": {}, "RUMnegEw": {}, "vxx4xM5t": {}}, "longDescription": "NzpXk5Sd", "title": "iGNqb2lG"}, "vxUkP1C4": {"description": "qBpRYr4L", "localExt": {"nDwwkQyA": {}, "oZ0j9nVY": {}, "RtDNq4xY": {}}, "longDescription": "3I6O70go", "title": "NkhStxS0"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 57, "itemId": "UrUfbroi", "itemSku": "Qt15rFJD", "itemType": "GZIA466A"}, {"count": 59, "itemId": "8B5kryd2", "itemSku": "8fEQjPS2", "itemType": "ZygIRAUe"}, {"count": 38, "itemId": "aqsFb9k8", "itemSku": "Qmhqy8L7", "itemType": "PL6xCRFw"}], "name": "LTjEphf6", "odds": 0.9218816630359803, "type": "REWARD_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 13, "itemId": "Ktb1PCo3", "itemSku": "pwSXFXsz", "itemType": "XcOVsXvR"}, {"count": 78, "itemId": "RKzf8975", "itemSku": "QF4PUFPV", "itemType": "xvgysXl4"}, {"count": 14, "itemId": "bKnbpskO", "itemSku": "pt9OSXIe", "itemType": "k7hy7MsB"}], "name": "2GPL0t3u", "odds": 0.7216699429626288, "type": "PROBABILITY_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 43, "itemId": "PoJTX5HN", "itemSku": "7uwausZb", "itemType": "SGEKkRBz"}, {"count": 79, "itemId": "AmOQoAjC", "itemSku": "WilHckpi", "itemType": "N5LwnLnu"}, {"count": 81, "itemId": "Et9tVy9d", "itemSku": "Zz7rnQo9", "itemType": "bYwWHpD6"}], "name": "UDi0WSMk", "odds": 0.20713519985500373, "type": "PROBABILITY_GROUP", "weight": 7}]}, "maxCount": 95, "maxCountPerUser": 99, "name": "3tKglonF", "optionBoxConfig": {"boxItems": [{"count": 12, "itemId": "dpZJQTwm", "itemSku": "bNyrBMrw", "itemType": "AJ643CJV"}, {"count": 2, "itemId": "8Amm1VL1", "itemSku": "RXyl4lZB", "itemType": "HmvbFsNg"}, {"count": 53, "itemId": "r1Hp9RcO", "itemSku": "d0pCE569", "itemType": "qTfzHm6U"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 74, "fixedTrialCycles": 93, "graceDays": 64}, "regionData": {"dkONOG08": [{"currencyCode": "IP0fN5gB", "currencyNamespace": "Rjb5wEZ1", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1983-01-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1971-10-27T00:00:00Z", "discountedPrice": 73, "expireAt": "1977-10-20T00:00:00Z", "price": 19, "purchaseAt": "1985-02-16T00:00:00Z", "trialPrice": 39}, {"currencyCode": "b1O4SFsF", "currencyNamespace": "ZHEwtTNT", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1994-07-16T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1984-03-16T00:00:00Z", "discountedPrice": 34, "expireAt": "1991-10-25T00:00:00Z", "price": 27, "purchaseAt": "1998-03-18T00:00:00Z", "trialPrice": 74}, {"currencyCode": "wyxdi7pS", "currencyNamespace": "ci3APl5n", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1991-05-07T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1991-11-10T00:00:00Z", "discountedPrice": 40, "expireAt": "1977-03-21T00:00:00Z", "price": 59, "purchaseAt": "1986-03-18T00:00:00Z", "trialPrice": 54}], "DKSHN1yW": [{"currencyCode": "jclg1vzB", "currencyNamespace": "Bw2nEms6", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1990-04-07T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1994-09-02T00:00:00Z", "discountedPrice": 64, "expireAt": "1977-02-05T00:00:00Z", "price": 50, "purchaseAt": "1972-06-08T00:00:00Z", "trialPrice": 17}, {"currencyCode": "09z2LWss", "currencyNamespace": "hw6oJrLL", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1995-10-05T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1972-02-27T00:00:00Z", "discountedPrice": 36, "expireAt": "1983-08-03T00:00:00Z", "price": 6, "purchaseAt": "1974-10-09T00:00:00Z", "trialPrice": 38}, {"currencyCode": "zCtcM5k6", "currencyNamespace": "3tNFLui5", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1997-09-21T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1994-10-29T00:00:00Z", "discountedPrice": 54, "expireAt": "1999-03-06T00:00:00Z", "price": 84, "purchaseAt": "1978-02-27T00:00:00Z", "trialPrice": 69}], "UUcdd8Xx": [{"currencyCode": "XNo34DAo", "currencyNamespace": "7WFeePGo", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1988-11-24T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-03-10T00:00:00Z", "discountedPrice": 45, "expireAt": "1997-09-30T00:00:00Z", "price": 64, "purchaseAt": "1997-07-10T00:00:00Z", "trialPrice": 44}, {"currencyCode": "pt6IZXD0", "currencyNamespace": "pQv8dWHq", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1997-11-09T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1986-12-09T00:00:00Z", "discountedPrice": 67, "expireAt": "1976-03-24T00:00:00Z", "price": 5, "purchaseAt": "1977-01-27T00:00:00Z", "trialPrice": 54}, {"currencyCode": "O5o5CBdy", "currencyNamespace": "wXUCuwoi", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1990-12-10T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1995-07-22T00:00:00Z", "discountedPrice": 56, "expireAt": "1988-07-16T00:00:00Z", "price": 19, "purchaseAt": "1979-08-09T00:00:00Z", "trialPrice": 5}]}, "seasonType": "TIER", "sku": "ZOSHyJuo", "stackable": true, "status": "INACTIVE", "tags": ["mwVFW1BN", "MCuzHUBP", "kaDcyjbg"], "targetCurrencyCode": "yCpFFzrj", "targetNamespace": "jvuIhYw0", "thumbnailUrl": "Vuj0zuqC", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '8xhI8LDE' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'JgIBxZwP' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '1GV4p57i' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 2, "orderNo": "p5Kyfo1K"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'n5gklX9e' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ids14iDX' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'DmEDX5xs' \
    --namespace $AB_NAMESPACE \
    --storeId 'LbbJrPYA' \
    --body '{"carousel": [{"alt": "v7AGZUBu", "previewUrl": "H7KMTcPz", "thumbnailUrl": "XdGBEIVf", "type": "video", "url": "kW5EEMcL", "videoSource": "youtube"}, {"alt": "wvo7NELj", "previewUrl": "RbTlnQwv", "thumbnailUrl": "oq7tJo8i", "type": "video", "url": "QwWOJvKn", "videoSource": "generic"}, {"alt": "5aT3GsGV", "previewUrl": "kpiWWcL7", "thumbnailUrl": "cIvwilHT", "type": "image", "url": "kiDUHeun", "videoSource": "vimeo"}], "developer": "zKMkLqv8", "forumUrl": "sOIC23Xk", "genres": ["RPG", "RPG", "Action"], "localizations": {"cuslDVuy": {"announcement": "TgX9fu6N", "slogan": "RnnOPo4Q"}, "wg8vzC8b": {"announcement": "m3ZmVAkL", "slogan": "1lyrd4cU"}, "N5tCc8Zk": {"announcement": "BWKduUVU", "slogan": "F2ht0kZG"}}, "platformRequirements": {"yyJQgW68": [{"additionals": "EMn2rbEB", "directXVersion": "m7CNmM4Q", "diskSpace": "QtAMveXh", "graphics": "cxraOozT", "label": "1xGYL0jl", "osVersion": "4LVNZmuC", "processor": "3VCIjByY", "ram": "hbOoBDq4", "soundCard": "L7onSGn0"}, {"additionals": "ZHT1ICJl", "directXVersion": "tum8ZWV0", "diskSpace": "WCMHgwrA", "graphics": "nrhkej5p", "label": "iwiNCTpO", "osVersion": "eWvgz0Oj", "processor": "uiDqQmmz", "ram": "ENBnXQ94", "soundCard": "acoXVL2P"}, {"additionals": "yF5jNEgo", "directXVersion": "suRL2wkT", "diskSpace": "6P5sJT4g", "graphics": "m1koHdA5", "label": "qOgErUCP", "osVersion": "1MJc9dJz", "processor": "zdhU6Er8", "ram": "BuNknxz2", "soundCard": "aUwZMwZW"}], "Lq7ZXTZt": [{"additionals": "3hzV09jN", "directXVersion": "PuKwSism", "diskSpace": "xg2zpZz8", "graphics": "598pv1U9", "label": "ppVO0cjh", "osVersion": "0VWTyqe7", "processor": "o3NvCWRN", "ram": "c2n6pKRD", "soundCard": "uYzrA8rT"}, {"additionals": "J7xUI7P3", "directXVersion": "nLi1CAw4", "diskSpace": "h0ESbX7T", "graphics": "yaSQYfeE", "label": "hkGURcMo", "osVersion": "sH2cvVFR", "processor": "VupcnPyC", "ram": "tlqzuq1Q", "soundCard": "evAzRyrr"}, {"additionals": "DasHUiW5", "directXVersion": "Wl6zpC1e", "diskSpace": "0R76M4PN", "graphics": "lAjU6Rim", "label": "2Dq9Zukr", "osVersion": "QLFJQAwm", "processor": "yq2MsCtZ", "ram": "Z0cNFRUM", "soundCard": "BfITadJR"}], "pgDohKPr": [{"additionals": "uCOfiNxc", "directXVersion": "wNWLTtqh", "diskSpace": "UI4MRzI5", "graphics": "OehP34VP", "label": "w5wsexfk", "osVersion": "LS5AA0RL", "processor": "yVffSU3x", "ram": "oIBvyc46", "soundCard": "LaLiY2LS"}, {"additionals": "uU4jfTDe", "directXVersion": "UR540UK3", "diskSpace": "NXKq9fzN", "graphics": "M9lLFvya", "label": "lRTxBch2", "osVersion": "ES2Cg1ez", "processor": "jSswd2rY", "ram": "3MnxBIgA", "soundCard": "JgUr6Fs4"}, {"additionals": "3CLjLv1j", "directXVersion": "2xSdWwzk", "diskSpace": "R1tX2aAu", "graphics": "HM6ILPmM", "label": "eWWYdtLz", "osVersion": "SeqAnlC2", "processor": "ZVC1mJzM", "ram": "8K5AlHyB", "soundCard": "omxGlKM1"}]}, "platforms": ["Linux", "IOS", "MacOS"], "players": ["Coop", "Multi", "Coop"], "primaryGenre": "RPG", "publisher": "CvwGJNFs", "releaseDate": "1979-06-13T00:00:00Z", "websiteUrl": "7wyvpDuN"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'lSCEeqhG' \
    --namespace $AB_NAMESPACE \
    --storeId 'tL34I9yU' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'sTSWaTTP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '1FdgKGVQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZAyFF4Zp' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'r5etd0Tc' \
    --itemId 'z0w4omcR' \
    --namespace $AB_NAMESPACE \
    --storeId 'g4k6kAtl' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'OUFbsFEt' \
    --itemId 'JNOjA8em' \
    --namespace $AB_NAMESPACE \
    --storeId 'hf6l6hk9' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'FnBc4UPU' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'HWAU1XCh' \
    --populateBundle 'false' \
    --region 'fnH0Lc8y' \
    --storeId 'LCNgRLSL' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'pUyc89VF' \
    --namespace $AB_NAMESPACE \
    --storeId 'TjHiGo5H' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 55, "comparison": "excludes", "name": "xHj5FOTL", "predicateType": "EntitlementPredicate", "value": "OSPruvZ6", "values": ["B04V0OfN", "UJqHOsX5", "sbqt2mhL"]}, {"anyOf": 44, "comparison": "is", "name": "AY82Kdwk", "predicateType": "EntitlementPredicate", "value": "fZdMGYTU", "values": ["IjzQSWM2", "eV4TmgHa", "xBOVJfZF"]}, {"anyOf": 52, "comparison": "isNot", "name": "cX8SlxYW", "predicateType": "SeasonPassPredicate", "value": "477zeTi2", "values": ["FzilPz1f", "BMsoZ85Y", "YAtR3EKI"]}]}, {"operator": "and", "predicates": [{"anyOf": 43, "comparison": "excludes", "name": "xGByciqW", "predicateType": "SeasonPassPredicate", "value": "lwqwlK6M", "values": ["ni0Riw2z", "H2VZib6h", "tErLTAWG"]}, {"anyOf": 25, "comparison": "isGreaterThanOrEqual", "name": "TGIg9R7r", "predicateType": "SeasonTierPredicate", "value": "fDZfSJ2W", "values": ["zfCfQTad", "AuIoHkpT", "4CLpmkrg"]}, {"anyOf": 33, "comparison": "includes", "name": "vtDRWgdu", "predicateType": "SeasonTierPredicate", "value": "tM6sTmCB", "values": ["94uFjz7R", "j1syxi9W", "VZCqDYc5"]}]}, {"operator": "or", "predicates": [{"anyOf": 85, "comparison": "isGreaterThanOrEqual", "name": "AqShPRpj", "predicateType": "SeasonTierPredicate", "value": "fUOJezP9", "values": ["tlbZoFPr", "WJ4irEXj", "Xo3LuZZH"]}, {"anyOf": 63, "comparison": "is", "name": "jkpVt62o", "predicateType": "SeasonPassPredicate", "value": "S1otR7Vf", "values": ["D9z7tv6K", "2bonqbgG", "iDd0CNe1"]}, {"anyOf": 30, "comparison": "isNot", "name": "vS2jwE1X", "predicateType": "SeasonTierPredicate", "value": "mDPH6n90", "values": ["E2AJstBl", "OUuHuDSJ", "Cso5kbYx"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'MDX38Lo5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "xUfZBcec"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'sab1m4Ew' \
    --offset '37' \
    --tag 'TKBtuVF2' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6cjHSHuR", "name": "Odlr5njZ", "status": "ACTIVE", "tags": ["aZ9cIbDg", "VciwAirU", "ajAp6DCk"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'YSihvFlP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'gXLqNhEd' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LaZ0DGWf", "name": "sfxaEJSa", "status": "ACTIVE", "tags": ["xrp459RU", "g09e9AKC", "5YJAL02C"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'wW83Ho5d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'vOaHlYxG' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '52' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'f2SVts8H' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '6EJO6OBg' \
    --limit '66' \
    --offset '7' \
    --orderNos '["ze93N3Ta", "1POzDsSz", "Al8M2jvG"]' \
    --sortBy 'dHYYBWmg' \
    --startTime 'r3iK4sF9' \
    --status 'FULFILL_FAILED' \
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
    --orderNo 'bbZb9ZWv' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'w1OzI9bM' \
    --body '{"description": "5blLA1ti"}' \
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
    --body '{"dryRun": true, "notifyUrl": "wjKQG2sR", "privateKey": "CBCIYXBT"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'RiDOLNQC' \
    --externalId 'UpOc7TRk' \
    --limit '57' \
    --notificationSource 'WALLET' \
    --notificationType 'vhTJyLJQ' \
    --offset '13' \
    --paymentOrderNo 'fBlhLXDs' \
    --startDate '2slavkbI' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'sU2hqB10' \
    --limit '79' \
    --offset '43' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "et7hAXJ4", "currencyNamespace": "Aw0lNcoR", "customParameters": {"5Y1yUkMh": {}, "PU49PQJ5": {}, "Lde0ZoLG": {}}, "description": "8raS6W6P", "extOrderNo": "D3j6pkgo", "extUserId": "8fUcEvGm", "itemType": "CODE", "language": "cD_wnrK", "metadata": {"He78DpAZ": "UGCokyCk", "xNzofNEa": "osYFE1nZ", "SyhKZuJ8": "jtSmdkJc"}, "notifyUrl": "1lOE9P2D", "omitNotification": true, "platform": "yynJaYwb", "price": 50, "recurringPaymentOrderNo": "yj0EAEAt", "region": "2NaGBKiX", "returnUrl": "W87SnWZo", "sandbox": true, "sku": "32ZSeDAQ", "subscriptionId": "amybIBkk", "targetNamespace": "cc2LF12N", "targetUserId": "rb3SZbh2", "title": "uiziYVGY"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'MGJNAVyt' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'plVrh34D' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ROzHb5Bs' \
    --body '{"extTxId": "JpzVxUGK", "paymentMethod": "FyN1DmeZ", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BR9ftAOZ' \
    --body '{"description": "UR9gWRIr"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WozputAl' \
    --body '{"amount": 1, "currencyCode": "ZGNjYFj3", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 21, "vat": 34}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'x6PLi7HJ' \
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
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Other", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6qekbGgJ", "eventTopic": "x7fGaWd5", "maxAwarded": 72, "maxAwardedPerUser": 24, "namespaceExpression": "5gKXlc6F", "rewardCode": "hc1zJh2g", "rewardConditions": [{"condition": "M6Sr9Ozn", "conditionName": "JLIEqcvP", "eventName": "Ibi839Tp", "rewardItems": [{"duration": 90, "itemId": "z7cE1Gtp", "quantity": 92}, {"duration": 12, "itemId": "UWhgutKm", "quantity": 65}, {"duration": 57, "itemId": "NMqHCxBP", "quantity": 76}]}, {"condition": "DlI8CclO", "conditionName": "ulX10RRM", "eventName": "sk4cg3wW", "rewardItems": [{"duration": 51, "itemId": "2nS1mXFQ", "quantity": 83}, {"duration": 48, "itemId": "v676NShC", "quantity": 63}, {"duration": 48, "itemId": "IlPvF32f", "quantity": 52}]}, {"condition": "CdpOHgCX", "conditionName": "cmiYsCkE", "eventName": "DtJrmY98", "rewardItems": [{"duration": 89, "itemId": "10Z8wTbN", "quantity": 83}, {"duration": 80, "itemId": "2JrQWQvL", "quantity": 86}, {"duration": 36, "itemId": "TobgatKB", "quantity": 69}]}], "userIdExpression": "HoQVoxCZ"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Lf7l5hlO' \
    --limit '75' \
    --offset '72' \
    --sortBy '["namespace:desc", "rewardCode:asc", "namespace:asc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '3eq9QEVK' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'na7nBIpw' \
    --body '{"description": "GMNfrNMO", "eventTopic": "4NqWu7f5", "maxAwarded": 48, "maxAwardedPerUser": 13, "namespaceExpression": "IArN9BYu", "rewardCode": "uTCfngKH", "rewardConditions": [{"condition": "E9f7KzFN", "conditionName": "eWAevWSn", "eventName": "FICF8Mg8", "rewardItems": [{"duration": 32, "itemId": "AVZKOB3c", "quantity": 29}, {"duration": 95, "itemId": "bbDTFU6K", "quantity": 17}, {"duration": 70, "itemId": "qpdRYZME", "quantity": 36}]}, {"condition": "69fzBrZR", "conditionName": "LpJC1y2x", "eventName": "FD2OiGiI", "rewardItems": [{"duration": 7, "itemId": "ii2dqvVq", "quantity": 10}, {"duration": 87, "itemId": "7D1VHJhQ", "quantity": 68}, {"duration": 37, "itemId": "zoPIx8el", "quantity": 88}]}, {"condition": "WYz9RYuJ", "conditionName": "DJd0dR1L", "eventName": "sRw8Q5M3", "rewardItems": [{"duration": 100, "itemId": "WgybPvR6", "quantity": 37}, {"duration": 62, "itemId": "g7VxJH11", "quantity": 100}, {"duration": 49, "itemId": "MOWjhvOx", "quantity": 88}]}], "userIdExpression": "YEX3wjia"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BtpHdgJu' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'N1OFVTs1' \
    --body '{"payload": {"qS6H85LE": {}, "SOJ89pOG": {}, "UqVKK2Jc": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '73806nK4' \
    --body '{"conditionName": "kj7kJHRF", "userId": "hAe3pqLK"}' \
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
    --body '{"defaultLanguage": "29JL5vvw", "defaultRegion": "2d9Ubd73", "description": "2oT8o2Ur", "supportedLanguages": ["iX6uPRmp", "tpAktVsr", "3SwDzC5f"], "supportedRegions": ["o5heiaL6", "KN4Qrt3k", "3Jl64vko"], "title": "gm9izhO6"}' \
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
    --storeId '2JAQgCKA' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'IpWBiqsF' \
    --body '{"defaultLanguage": "MEcGaPgU", "defaultRegion": "c2yVoUsD", "description": "Ij4XoXTE", "supportedLanguages": ["EN0mOwcp", "LEiqvMJ0", "yQtmvTqR"], "supportedRegions": ["x70ss0Bo", "Zpc71hi8", "Oln8xXiN"], "title": "eiP6WrbC"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '8AxPhPp0' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'm5cBiqjM' \
    --action 'UPDATE' \
    --itemSku 'oLxQBiTV' \
    --itemType 'MEDIA' \
    --limit '6' \
    --offset '56' \
    --selected 'false' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'WrC8L6dY' \
    --updatedAtStart 'WJyCIFnW' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'INJ3kTtN' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'pMSJhC8z' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'dnzQNd6B' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 're1zpk4g' \
    --action 'UPDATE' \
    --itemSku 'P74dx9Ni' \
    --itemType 'CODE' \
    --type 'CATEGORY' \
    --updatedAtEnd 'v1UKmvO2' \
    --updatedAtStart 'a2yt8Abz' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'mwhElehh' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eSIC8RF7' \
    --namespace $AB_NAMESPACE \
    --storeId 'AQWOlfg2' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '8nTzyngm' \
    --namespace $AB_NAMESPACE \
    --storeId 'qCtTR8SG' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '5SZhG3Zh' \
    --targetStoreId 'kc5zHWIH' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'EjhjS62F' \
    --limit '76' \
    --offset '64' \
    --sku 'GMA67DKS' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'QhXh99WL' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kmI5biUk' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'TWZb2tka' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'SNnBqFj5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "7JZ4z0Cm"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'yi3kHgvw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'DItrJJeB' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 22, "orderNo": "Z6sT6Q1y"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'iDgndvr3' \
    --body '{"achievements": [{"id": "Am84ygFw", "value": 5}, {"id": "vzcWq3xR", "value": 60}, {"id": "9p2Xrs42", "value": 26}], "steamUserId": "3wkluyAA"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GNW3cxuP' \
    --xboxUserId 'aTG5PHgF' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'J8lMuzZI' \
    --body '{"achievements": [{"id": "Nq8oXXBn", "percentComplete": 0}, {"id": "LrpLTwY0", "percentComplete": 4}, {"id": "ErrOrKUd", "percentComplete": 1}], "serviceConfigId": "DdJG0Jns", "titleId": "RSZrbRhU", "xboxUserId": "cAzfbzT0"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'CYchhEex' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4yozPnOM' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'VnczBkiQ' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'xuUElRPv' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ps7ADjbq' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'MqFJjfsH' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Waf2vYGL' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '2MbpTIVJ' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '6Hx1LrOC' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 182 'GetUserDLC' test.out

#- 183 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'AoxOIaTA' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'dsIRTVYQ' \
    --features '["6UEIlcSX", "oYrM95p4", "LqTr2mMa"]' \
    --itemId '["trzvsFqA", "3Ti9V5R9", "ijGOmz2R"]' \
    --limit '69' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 183 'QueryUserEntitlements' test.out

#- 184 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'u2Dmcj96' \
    --body '[{"endDate": "1993-08-31T00:00:00Z", "grantedCode": "l5uFoeX0", "itemId": "m7OVhrJl", "itemNamespace": "1HAyXVti", "language": "UgYZ-yQns", "quantity": 14, "region": "GcO26pBR", "source": "ACHIEVEMENT", "startDate": "1993-10-18T00:00:00Z", "storeId": "cIGrAVNl"}, {"endDate": "1984-04-15T00:00:00Z", "grantedCode": "7qOv4bN5", "itemId": "vmRKPmXj", "itemNamespace": "88KSjyBd", "language": "fD-JEGg_639", "quantity": 35, "region": "ZMvCv1VQ", "source": "REDEEM_CODE", "startDate": "1999-09-28T00:00:00Z", "storeId": "kyCrl3ZC"}, {"endDate": "1986-06-24T00:00:00Z", "grantedCode": "cqfvb1O4", "itemId": "wuDJ8UTG", "itemNamespace": "ntK9FyuT", "language": "Lf-xj", "quantity": 15, "region": "ZiORZO3B", "source": "REDEEM_CODE", "startDate": "1996-07-28T00:00:00Z", "storeId": "bnz4mlro"}]' \
    > test.out 2>&1
eval_tap $? 184 'GrantUserEntitlement' test.out

#- 185 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'DRqTGlzy' \
    --activeOnly 'false' \
    --appId 'VHS49z63' \
    > test.out 2>&1
eval_tap $? 185 'GetUserAppEntitlementByAppId' test.out

#- 186 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'l7Z1leTg' \
    --activeOnly 'false' \
    --limit '100' \
    --offset '7' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 186 'QueryUserEntitlementsByAppType' test.out

#- 187 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zyqE0QUm' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'zXLW7eo1' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementByItemId' test.out

#- 188 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'e70ADBL0' \
    --ids '["qzPrAQu9", "We7Slj71", "tpK9tx8h"]' \
    > test.out 2>&1
eval_tap $? 188 'GetUserActiveEntitlementsByItemIds' test.out

#- 189 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'R1AbjHZ8' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --sku '445ztJjt' \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementBySku' test.out

#- 190 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5YROhqP9' \
    --appIds '["4HCvPZ5N", "vXvEStPl", "qhqYCrEW"]' \
    --itemIds '["5uLsMCL3", "7oabkqid", "0jhYBGhH"]' \
    --skus '["BGw7heFe", "F49bp23y", "cmvKxDbD"]' \
    > test.out 2>&1
eval_tap $? 190 'ExistsAnyUserActiveEntitlement' test.out

#- 191 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fkevfH9G' \
    --itemIds '["9IxR22mJ", "YlDYv0YK", "rTHaXrlZ"]' \
    > test.out 2>&1
eval_tap $? 191 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 192 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'teqQP2r3' \
    --appId 'qssQGMtN' \
    > test.out 2>&1
eval_tap $? 192 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 193 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'aatdsxIv' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'swnaFmGi' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipByItemId' test.out

#- 194 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JEj6UdLM' \
    --ids '["qR7mcKZ4", "jUi7ySPH", "lifUGp5H"]' \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlementOwnershipByItemIds' test.out

#- 195 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jknYkEvi' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'nBFCbz8F' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlementOwnershipBySku' test.out

#- 196 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Gb3SMeFy' \
    --entitlementIds 'YvDyBm0v' \
    > test.out 2>&1
eval_tap $? 196 'RevokeUserEntitlements' test.out

#- 197 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2GM9E0c2' \
    --namespace $AB_NAMESPACE \
    --userId 'YhieTGXT' \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlement' test.out

#- 198 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'xsbqD1M5' \
    --namespace $AB_NAMESPACE \
    --userId 'DBbbTL52' \
    --body '{"endDate": "1987-08-31T00:00:00Z", "nullFieldList": ["EUkGksHp", "20yvFt3Q", "WS1qLSY6"], "startDate": "1986-07-28T00:00:00Z", "status": "INACTIVE", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserEntitlement' test.out

#- 199 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '32NbI1cN' \
    --namespace $AB_NAMESPACE \
    --userId '6w8zOCZb' \
    --body '{"options": ["pLaiL5Ah", "HM68eGUg", "WYoHzRqe"], "requestId": "tEGF5mHu", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 199 'ConsumeUserEntitlement' test.out

#- 200 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'GkI7TMQo' \
    --namespace $AB_NAMESPACE \
    --userId '4MumTQHw' \
    > test.out 2>&1
eval_tap $? 200 'DisableUserEntitlement' test.out

#- 201 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'BtRDlijo' \
    --namespace $AB_NAMESPACE \
    --userId 'sEJ6WjXc' \
    > test.out 2>&1
eval_tap $? 201 'EnableUserEntitlement' test.out

#- 202 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '3kssnANK' \
    --namespace $AB_NAMESPACE \
    --userId 'RAQfVhoT' \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementHistories' test.out

#- 203 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'BOgmLHL6' \
    --namespace $AB_NAMESPACE \
    --userId 'NrSNEtRu' \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserEntitlement' test.out

#- 204 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'f3G2zoh4' \
    --body '{"duration": 26, "endDate": "1980-04-17T00:00:00Z", "itemId": "ezpKgiU6", "itemSku": "BEEyPrfM", "language": "KuUBK7Kp", "order": {"currency": {"currencyCode": "LEtLffjY", "currencySymbol": "IBlGgYod", "currencyType": "REAL", "decimals": 13, "namespace": "EyzBEbqi"}, "ext": {"M6aCiUjH": {}, "YHAZtsP8": {}, "HRwNPdti": {}}, "free": true}, "orderNo": "x691V2gI", "origin": "System", "quantity": 49, "region": "KYZOiPgA", "source": "DLC", "startDate": "1993-04-01T00:00:00Z", "storeId": "mSjhQbm0"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillItem' test.out

#- 205 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Vv0yT33d' \
    --body '{"code": "t3y1pZcU", "language": "VpkS", "region": "r3n35Prx"}' \
    > test.out 2>&1
eval_tap $? 205 'RedeemCode' test.out

#- 206 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'yttKgOUl' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "0Pj998eS", "namespace": "WeR21zl7"}, "item": {"itemId": "7PKE9Jt4", "itemSku": "dP1C2XQv", "itemType": "VwxCEOMP"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "Ibnq0Luw", "namespace": "H1NW4QUe"}, "item": {"itemId": "FcSUyqDq", "itemSku": "AnFV55RU", "itemType": "AiLQ9KZq"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "HShjSoON", "namespace": "hw4I7awi"}, "item": {"itemId": "6uDUgcJP", "itemSku": "bUehuMqh", "itemType": "QWAP0si7"}, "quantity": 16, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 206 'FulfillRewards' test.out

#- 207 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nfNwAbCm' \
    --endTime 'ViUEq1VB' \
    --limit '80' \
    --offset '2' \
    --productId 'OWNC0DlH' \
    --startTime 'ziq0WzBm' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPOrders' test.out

#- 208 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qqu4tYRG' \
    > test.out 2>&1
eval_tap $? 208 'QueryAllUserIAPOrders' test.out

#- 209 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '869egqFg' \
    --endTime 'y07hIirS' \
    --limit '63' \
    --offset '89' \
    --startTime 'mUz9NcAM' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserIAPConsumeHistory' test.out

#- 210 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tT9wBwmj' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ON_ncEA", "productId": "VtHo8LhD", "region": "x0v9voLK", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 210 'MockFulfillIAPItem' test.out

#- 211 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yyu6znYe' \
    --itemId 'aBfiShBp' \
    --limit '54' \
    --offset '9' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 211 'QueryUserOrders' test.out

#- 212 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2GumNjRQ' \
    --body '{"currencyCode": "Ezgtfm1N", "currencyNamespace": "zUVY3Kn9", "discountedPrice": 20, "ext": {"5DqyoY34": {}, "Ilhv8mNe": {}, "eOqlZ2l6": {}}, "itemId": "BZ8buCnA", "language": "r0oz8bP5", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 55, "quantity": 10, "region": "Xd8l4hLt", "returnUrl": "ck03XDDC", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateUserOrder' test.out

#- 213 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '72JijiI9' \
    --itemId 'wroRgV1C' \
    > test.out 2>&1
eval_tap $? 213 'CountOfPurchasedItem' test.out

#- 214 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'h2Px6RL4' \
    --userId 'S9lz6lz1' \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrder' test.out

#- 215 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'ywEpOJ6B' \
    --userId 'XZX78T30' \
    --body '{"status": "CHARGED", "statusReason": "kaf1Xema"}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserOrderStatus' test.out

#- 216 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TcDv4VbK' \
    --userId 'id4R7vFu' \
    > test.out 2>&1
eval_tap $? 216 'FulfillUserOrder' test.out

#- 217 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'tjuxreST' \
    --userId 'oOG3rkfS' \
    > test.out 2>&1
eval_tap $? 217 'GetUserOrderGrant' test.out

#- 218 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'zMALBPSg' \
    --userId 'FvOJ2bi7' \
    > test.out 2>&1
eval_tap $? 218 'GetUserOrderHistories' test.out

#- 219 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'R7dV1Bhb' \
    --userId 'E4aLDoj7' \
    --body '{"additionalData": {"cardSummary": "JgyuxhRt"}, "authorisedTime": "1990-01-11T00:00:00Z", "chargebackReversedTime": "1977-11-29T00:00:00Z", "chargebackTime": "1992-10-25T00:00:00Z", "chargedTime": "1978-01-25T00:00:00Z", "createdTime": "1992-03-09T00:00:00Z", "currency": {"currencyCode": "6KJEau3V", "currencySymbol": "r8eWHeDr", "currencyType": "VIRTUAL", "decimals": 75, "namespace": "NJkshWGF"}, "customParameters": {"npC7BpHF": {}, "swtaBfTC": {}, "0U0Lxu2R": {}}, "extOrderNo": "8Y8iTjni", "extTxId": "CwUYJk9W", "extUserId": "NZisLGWl", "issuedAt": "1995-11-13T00:00:00Z", "metadata": {"iYS58y3q": "n1AkHdHG", "yzHV9l7G": "nt85rouq", "HMhYqNbl": "5RH5hYlQ"}, "namespace": "kPClZn9Z", "nonceStr": "Cn6B6vU2", "paymentMethod": "BViWWg6a", "paymentMethodFee": 10, "paymentOrderNo": "yj7PgWa4", "paymentProvider": "XSOLLA", "paymentProviderFee": 74, "paymentStationUrl": "EIktdjVa", "price": 51, "refundedTime": "1978-05-22T00:00:00Z", "salesTax": 93, "sandbox": false, "sku": "Jl4fBpOM", "status": "REQUEST_FOR_INFORMATION", "statusReason": "KVI1MrkP", "subscriptionId": "VeTunZEi", "subtotalPrice": 9, "targetNamespace": "WDegZCHF", "targetUserId": "soQ6lxLI", "tax": 58, "totalPrice": 94, "totalTax": 34, "txEndTime": "1972-02-07T00:00:00Z", "type": "Y2Xa6bnv", "userId": "ZsG9T6OF", "vat": 100}' \
    > test.out 2>&1
eval_tap $? 219 'ProcessUserOrderNotification' test.out

#- 220 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'L7VS5gmT' \
    --userId 'pt8123Cm' \
    > test.out 2>&1
eval_tap $? 220 'DownloadUserOrderReceipt' test.out

#- 221 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'BT9NdX6L' \
    --body '{"currencyCode": "zndQh0HS", "currencyNamespace": "bTkaDY4Z", "customParameters": {"QsexFPW4": {}, "eTRo5iTq": {}, "UXR2siCU": {}}, "description": "yURtpTxj", "extOrderNo": "21m5xHi2", "extUserId": "Eb2zDxeK", "itemType": "SUBSCRIPTION", "language": "wyhL", "metadata": {"OyJlZidM": "i74sxVp3", "rzdOF6nw": "dIoLRZN2", "cpJIH1CQ": "uAIUkACY"}, "notifyUrl": "gfZys3ZJ", "omitNotification": true, "platform": "RH4WFdit", "price": 50, "recurringPaymentOrderNo": "tfVCAgDb", "region": "LmMWRHjO", "returnUrl": "joA72zoC", "sandbox": false, "sku": "BmwL4o7v", "subscriptionId": "PVWqaTE2", "title": "WO4bIPeL"}' \
    > test.out 2>&1
eval_tap $? 221 'CreateUserPaymentOrder' test.out

#- 222 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rgwW5qvP' \
    --userId 'vZhuy6Y8' \
    --body '{"description": "WS0u0g7p"}' \
    > test.out 2>&1
eval_tap $? 222 'RefundUserPaymentOrder' test.out

#- 223 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'w72YxcnO' \
    --body '{"code": "lPybnbxO", "orderNo": "cXAGBGdj"}' \
    > test.out 2>&1
eval_tap $? 223 'ApplyUserRedemption' test.out

#- 224 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'bvfhytfm' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'iRyfd9Fz' \
    --limit '7' \
    --offset '78' \
    --sku 'wArfFzIZ' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserSubscriptions' test.out

#- 225 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'gahWiVT2' \
    --excludeSystem 'true' \
    --limit '26' \
    --offset '35' \
    --subscriptionId 'mQ7xel5R' \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscriptionActivities' test.out

#- 226 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'x4xCX9n0' \
    --body '{"grantDays": 97, "itemId": "V8BaqXBB", "language": "iNjikV6V", "reason": "3R3wIMb2", "region": "Vr8xvD8A", "source": "d7A83AR3"}' \
    > test.out 2>&1
eval_tap $? 226 'PlatformSubscribeSubscription' test.out

#- 227 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hjh61CIl' \
    --itemId 'hGmB2tje' \
    > test.out 2>&1
eval_tap $? 227 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 228 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xl2HCcGm' \
    --userId 'nydx0ku1' \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscription' test.out

#- 229 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ccGv09z8' \
    --userId 'BTWpCtl2' \
    > test.out 2>&1
eval_tap $? 229 'DeleteUserSubscription' test.out

#- 230 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GacnKOql' \
    --userId 'HsWl0W3P' \
    --force 'true' \
    --body '{"immediate": false, "reason": "7RM8LVep"}' \
    > test.out 2>&1
eval_tap $? 230 'CancelSubscription' test.out

#- 231 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cZ52g4La' \
    --userId 'UGfr730p' \
    --body '{"grantDays": 32, "reason": "S8uBdLbx"}' \
    > test.out 2>&1
eval_tap $? 231 'GrantDaysToSubscription' test.out

#- 232 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VIsFAqIv' \
    --userId '0cXNEz8X' \
    --excludeFree 'false' \
    --limit '30' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 232 'GetUserSubscriptionBillingHistories' test.out

#- 233 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DAMa6F6q' \
    --userId 'anucsEbp' \
    --body '{"additionalData": {"cardSummary": "5DFz6bZ6"}, "authorisedTime": "1997-10-15T00:00:00Z", "chargebackReversedTime": "1995-11-04T00:00:00Z", "chargebackTime": "1975-07-16T00:00:00Z", "chargedTime": "1982-05-23T00:00:00Z", "createdTime": "1975-11-11T00:00:00Z", "currency": {"currencyCode": "BiDWwHlG", "currencySymbol": "bNiWr79G", "currencyType": "VIRTUAL", "decimals": 90, "namespace": "fC3tZwii"}, "customParameters": {"4bDSorXu": {}, "LV2Wb7kq": {}, "MzYGpXD3": {}}, "extOrderNo": "1UI306z9", "extTxId": "NTZ4F37M", "extUserId": "XGZfEvlI", "issuedAt": "1985-08-08T00:00:00Z", "metadata": {"VVMYKUvc": "ZlBchCOy", "tfMa7Ph1": "sPfPcxaW", "CwuUvRjD": "Gxv4mKjz"}, "namespace": "mABEh2zY", "nonceStr": "6IwiC1e7", "paymentMethod": "Tfkj1EMv", "paymentMethodFee": 89, "paymentOrderNo": "Jw4eYNbX", "paymentProvider": "WXPAY", "paymentProviderFee": 90, "paymentStationUrl": "ogOvH4ou", "price": 95, "refundedTime": "1986-01-27T00:00:00Z", "salesTax": 31, "sandbox": true, "sku": "pVt0zGw3", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "0Dil2fjv", "subscriptionId": "aaOfnWb3", "subtotalPrice": 32, "targetNamespace": "st5Nv9x8", "targetUserId": "c4tpd7hB", "tax": 61, "totalPrice": 66, "totalTax": 6, "txEndTime": "1975-03-22T00:00:00Z", "type": "lnn17pSS", "userId": "ioXO2waA", "vat": 96}' \
    > test.out 2>&1
eval_tap $? 233 'ProcessUserSubscriptionNotification' test.out

#- 234 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'IcyPanag' \
    --namespace $AB_NAMESPACE \
    --userId 'AuqUqNIh' \
    --body '{"count": 35, "orderNo": "LKLT0aNr"}' \
    > test.out 2>&1
eval_tap $? 234 'AcquireUserTicket' test.out

#- 235 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Gp0kLRHf' \
    > test.out 2>&1
eval_tap $? 235 'QueryUserCurrencyWallets' test.out

#- 236 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '9U7Vb9ob' \
    --namespace $AB_NAMESPACE \
    --userId 'wB5HFtd0' \
    --limit '84' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 236 'ListUserCurrencyTransactions' test.out

#- 237 CheckWallet
eval_tap 0 237 'CheckWallet # SKIP deprecated' test.out

#- 238 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '6zdfG4kP' \
    --namespace $AB_NAMESPACE \
    --userId 'A3hM5Nip' \
    --body '{"amount": 52, "expireAt": "1981-08-25T00:00:00Z", "origin": "Stadia", "reason": "DlUGMUYL", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 238 'CreditUserWallet' test.out

#- 239 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Q76gV131' \
    --namespace $AB_NAMESPACE \
    --userId '9P0e43P8' \
    --body '{"amount": 97, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 239 'PayWithUserWallet' test.out

#- 240 GetUserWallet
eval_tap 0 240 'GetUserWallet # SKIP deprecated' test.out

#- 241 DebitUserWallet
eval_tap 0 241 'DebitUserWallet # SKIP deprecated' test.out

#- 242 DisableUserWallet
eval_tap 0 242 'DisableUserWallet # SKIP deprecated' test.out

#- 243 EnableUserWallet
eval_tap 0 243 'EnableUserWallet # SKIP deprecated' test.out

#- 244 ListUserWalletTransactions
eval_tap 0 244 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 245 QueryWallets
eval_tap 0 245 'QueryWallets # SKIP deprecated' test.out

#- 246 GetWallet
eval_tap 0 246 'GetWallet # SKIP deprecated' test.out

#- 247 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'LlRoqWZT' \
    --end '9FKIXhgT' \
    --start 'CnhXWBFR' \
    > test.out 2>&1
eval_tap $? 247 'SyncOrders' test.out

#- 248 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["SdYb8Lf5", "i3dk14KG", "I068WPjU"], "apiKey": "uVtQswqa", "authoriseAsCapture": false, "blockedPaymentMethods": ["bZoW8RLH", "dALRnR5e", "spzoizz8"], "clientKey": "5ylZwZTL", "dropInSettings": "fEGmLt5O", "liveEndpointUrlPrefix": "AVf78NwV", "merchantAccount": "8lgAUWV6", "notificationHmacKey": "jJdv6vNY", "notificationPassword": "lUoCYXlS", "notificationUsername": "DCdfjcO3", "returnUrl": "xlHqyqfX", "settings": "OQk4v8gC"}' \
    > test.out 2>&1
eval_tap $? 248 'TestAdyenConfig' test.out

#- 249 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "gb03X1sE", "privateKey": "gukuNvAw", "publicKey": "2fZeST4B", "returnUrl": "RVTl2UMr"}' \
    > test.out 2>&1
eval_tap $? 249 'TestAliPayConfig' test.out

#- 250 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "SJtMlsHf", "secretKey": "Wa2Lz6vX"}' \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfig' test.out

#- 251 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'oBkZZilO' \
    --region 'QiT6YB3O' \
    > test.out 2>&1
eval_tap $? 251 'DebugMatchedPaymentMerchantConfig' test.out

#- 252 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "yRCfhlWA", "clientSecret": "iC5a7Ne5", "returnUrl": "nn21Gf62", "webHookId": "NSSgcba7"}' \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfig' test.out

#- 253 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["cqarRwGZ", "NNHTRVX2", "jUPOwQhm"], "publishableKey": "5QusUr6g", "secretKey": "DZOjtFsx", "webhookSecret": "C5QJujH4"}' \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfig' test.out

#- 254 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "r6daY8IM", "key": "K0e3CyHN", "mchid": "4HnW4rJ3", "returnUrl": "7UQDtVih"}' \
    > test.out 2>&1
eval_tap $? 254 'TestWxPayConfig' test.out

#- 255 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "S7u37w8n", "flowCompletionUrl": "Ojtz0Gz1", "merchantId": 16, "projectId": 17, "projectSecretKey": "hFfgLPZe"}' \
    > test.out 2>&1
eval_tap $? 255 'TestXsollaConfig' test.out

#- 256 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'KpUIO0V4' \
    > test.out 2>&1
eval_tap $? 256 'GetPaymentMerchantConfig' test.out

#- 257 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'BUdM7g6t' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["WDayPkNH", "lcBXdeRv", "Tufuw3SZ"], "apiKey": "r59P2zDt", "authoriseAsCapture": true, "blockedPaymentMethods": ["Pm1QPQ6B", "YJdXpBJc", "EU9LF6nG"], "clientKey": "Yzu9DQSS", "dropInSettings": "NUxYsgpf", "liveEndpointUrlPrefix": "xURovNcs", "merchantAccount": "qAs9t8hi", "notificationHmacKey": "lzi0uZW1", "notificationPassword": "oxh37r04", "notificationUsername": "eJ2EumZS", "returnUrl": "rLgr68GA", "settings": "mxJ65ofO"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAdyenConfig' test.out

#- 258 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Er2eD22t' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 258 'TestAdyenConfigById' test.out

#- 259 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'xzIXvW3i' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "0WiHJrOh", "privateKey": "doXcgEO5", "publicKey": "BvEPk1j1", "returnUrl": "9kIoLwXe"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateAliPayConfig' test.out

#- 260 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'TAQYFpLp' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestAliPayConfigById' test.out

#- 261 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'il5tr29W' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "4pV22ZiI", "secretKey": "LhNufPJr"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateCheckoutConfig' test.out

#- 262 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '81IJ7ABi' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 262 'TestCheckoutConfigById' test.out

#- 263 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'vC4yrSXM' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "QdErVSRB", "clientSecret": "f0OC6ggZ", "returnUrl": "viZ4mmS3", "webHookId": "Sym6r16W"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdatePayPalConfig' test.out

#- 264 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'jGKlGe9b' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 264 'TestPayPalConfigById' test.out

#- 265 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '6l1GdOpU' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["yJenGthm", "GIr365X8", "3HdwIfAD"], "publishableKey": "eYUam57i", "secretKey": "liROtQyG", "webhookSecret": "NnLlWxqt"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateStripeConfig' test.out

#- 266 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'd6dyl226' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 266 'TestStripeConfigById' test.out

#- 267 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'DmGnw8QK' \
    --validate 'true' \
    --body '{"appId": "Y7MhtoGV", "key": "496FdmfQ", "mchid": "KCIxcPlh", "returnUrl": "4toZ1OPT"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateWxPayConfig' test.out

#- 268 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ADjqcKbO' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 268 'UpdateWxPayConfigCert' test.out

#- 269 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '6xDJ2al1' \
    > test.out 2>&1
eval_tap $? 269 'TestWxPayConfigById' test.out

#- 270 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'aZZCZWrQ' \
    --validate 'true' \
    --body '{"apiKey": "3Xq0SXux", "flowCompletionUrl": "uNskadii", "merchantId": 85, "projectId": 59, "projectSecretKey": "SdTH2YRk"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaConfig' test.out

#- 271 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'V1MlyVCR' \
    > test.out 2>&1
eval_tap $? 271 'TestXsollaConfigById' test.out

#- 272 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '0yN4t3Kv' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 272 'UpdateXsollaUIConfig' test.out

#- 273 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '15' \
    --namespace 'sKth6Vui' \
    --offset '100' \
    --region 'tpNhSCnf' \
    > test.out 2>&1
eval_tap $? 273 'QueryPaymentProviderConfig' test.out

#- 274 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "sItQlj0K", "region": "vce8MFnj", "sandboxTaxJarApiToken": "u1fsL1aW", "specials": ["ALIPAY", "ADYEN", "ALIPAY"], "taxJarApiToken": "2njXx4Nt", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 274 'CreatePaymentProviderConfig' test.out

#- 275 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetAggregatePaymentProviders' test.out

#- 276 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'GCh88RL7' \
    --region 'UvBl6tR5' \
    > test.out 2>&1
eval_tap $? 276 'DebugMatchedPaymentProviderConfig' test.out

#- 277 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 277 'GetSpecialPaymentProviders' test.out

#- 278 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'AKEAoxM1' \
    --body '{"aggregate": "ADYEN", "namespace": "mslamMtB", "region": "OqpiotMS", "sandboxTaxJarApiToken": "CEru1aVP", "specials": ["STRIPE", "ADYEN", "ADYEN"], "taxJarApiToken": "6TMufTyh", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentProviderConfig' test.out

#- 279 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YsVI3Cvp' \
    > test.out 2>&1
eval_tap $? 279 'DeletePaymentProviderConfig' test.out

#- 280 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxConfig' test.out

#- 281 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "SIaxQByW", "taxJarApiToken": "q7tqqbAb", "taxJarEnabled": false, "taxJarProductCodesMapping": {"1iwlWp6l": "35hu9DSM", "Z3YRVJzN": "MUQtAe0F", "E2eGqebc": "fVolEzyM"}}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePaymentTaxConfig' test.out

#- 282 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'd1DQh2LY' \
    --end 'SPYZckAF' \
    --start '6wzXQe1P' \
    > test.out 2>&1
eval_tap $? 282 'SyncPaymentOrders' test.out

#- 283 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'cLcMG0uM' \
    --storeId 'gSvloSy2' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRootCategories' test.out

#- 284 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'JcuEeMP9' \
    --storeId 'QV4QLjpC' \
    > test.out 2>&1
eval_tap $? 284 'DownloadCategories' test.out

#- 285 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'yhA6ELX6' \
    --namespace $AB_NAMESPACE \
    --language 'AqfJUGSj' \
    --storeId 'ewhmNGau' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetCategory' test.out

#- 286 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'IWE0Kmic' \
    --namespace $AB_NAMESPACE \
    --language '7gK20Gh8' \
    --storeId '90CDPgg0' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetChildCategories' test.out

#- 287 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'OMPhs820' \
    --namespace $AB_NAMESPACE \
    --language '4zyNjV9W' \
    --storeId 'IzFgxlXj' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetDescendantCategories' test.out

#- 288 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 288 'PublicListCurrencies' test.out

#- 289 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'qSmjvEUQ' \
    --region '505cE5Eu' \
    --storeId 'VVYn3pxL' \
    --appId 'Y3Ggi7og' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemByAppId' test.out

#- 290 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'LRWIYsxw' \
    --categoryPath 'RXOvOAAv' \
    --features '2QgfbiB2' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language 'rUArPoag' \
    --limit '84' \
    --offset '30' \
    --region '9eeLVlBa' \
    --sortBy '["displayOrder:desc", "createdAt:desc", "name:asc"]' \
    --storeId 'GcDZTmDB' \
    --tags 'RBKr2V8T' \
    > test.out 2>&1
eval_tap $? 290 'PublicQueryItems' test.out

#- 291 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'IRZRM2q5' \
    --region '4T3yRFzc' \
    --storeId 'DfKfdSy8' \
    --sku 'SVzsgZws' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItemBySku' test.out

#- 292 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'CO0kFzS0' \
    --region 'RlX5VB6t' \
    --storeId 'qR5cdDcH' \
    --itemIds 'uNglJIHC' \
    > test.out 2>&1
eval_tap $? 292 'PublicBulkGetItems' test.out

#- 293 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["ohKWvz8E", "SpYwwVrn", "pCFQI1zT"]}' \
    > test.out 2>&1
eval_tap $? 293 'PublicValidateItemPurchaseCondition' test.out

#- 294 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'LOOTBOX' \
    --limit '79' \
    --offset '41' \
    --region 'FM0omr23' \
    --storeId 'gNjAfAPR' \
    --keyword 'PKJD1nT4' \
    --language 'RNp6uis9' \
    > test.out 2>&1
eval_tap $? 294 'PublicSearchItems' test.out

#- 295 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'G8lr6VKb' \
    --namespace $AB_NAMESPACE \
    --language '7Dlk32JF' \
    --region 'AJBs6gxl' \
    --storeId 'OQCQByka' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetApp' test.out

#- 296 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'JXdQNl22' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 296 'PublicGetItemDynamicData' test.out

#- 297 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ifuBzZX5' \
    --namespace $AB_NAMESPACE \
    --language 'bKSXatq2' \
    --populateBundle 'false' \
    --region 'pAo0qQtL' \
    --storeId 'YfTbl4Cz' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetItem' test.out

#- 298 GetPaymentCustomization
eval_tap 0 298 'GetPaymentCustomization # SKIP deprecated' test.out

#- 299 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "TyJUB4tF", "paymentProvider": "XSOLLA", "returnUrl": "Z76LIt2G", "ui": "NxXs5KQa", "zipCode": "Slj03gnm"}' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetPaymentUrl' test.out

#- 300 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zz9kbrtZ' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetPaymentMethods' test.out

#- 301 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'H2QSHXFm' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUnpaidPaymentOrder' test.out

#- 302 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YDagriaW' \
    --paymentProvider 'ALIPAY' \
    --zipCode '3c2wHh7a' \
    --body '{"token": "YkHM5BoX"}' \
    > test.out 2>&1
eval_tap $? 302 'Pay' test.out

#- 303 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'N6aSBoFk' \
    > test.out 2>&1
eval_tap $? 303 'PublicCheckPaymentOrderPaidStatus' test.out

#- 304 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'n7jCq6C3' \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentPublicConfig' test.out

#- 305 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Pk75k8Mh' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetQRCode' test.out

#- 306 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Bcs5mOYw' \
    --foreinginvoice 'vcv8l69t' \
    --invoiceId 'ccIVOTrM' \
    --payload 'cZ2YbdAi' \
    --redirectResult 'XKyIggne' \
    --resultCode 'B037XBRZ' \
    --sessionId 'yLzk7l3N' \
    --status '7aDfb4JD' \
    --token 'C6GfS1js' \
    --type 'rALlXd01' \
    --userId 'Ry1udIJe' \
    --orderNo '0Ncb7UWz' \
    --paymentOrderNo 'NhNGhA4S' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'Dg0Wb0C4' \
    > test.out 2>&1
eval_tap $? 306 'PublicNormalizePaymentReturnUrl' test.out

#- 307 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'IytEdi0l' \
    --paymentOrderNo '2aWxb4P9' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 307 'GetPaymentTaxValue' test.out

#- 308 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'l85aZUbX' \
    > test.out 2>&1
eval_tap $? 308 'GetRewardByCode' test.out

#- 309 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'z6NrOgcl' \
    --limit '15' \
    --offset '30' \
    --sortBy '["rewardCode:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 309 'QueryRewards1' test.out

#- 310 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '4iWwQ9RE' \
    > test.out 2>&1
eval_tap $? 310 'GetReward1' test.out

#- 311 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicListStores' test.out

#- 312 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["LqktIG7I", "UMICgji7", "FUlbQKtj"]' \
    --itemIds '["jxcfw4SB", "oNd2Mrgm", "4RzwPsuK"]' \
    --skus '["3jYw8qOh", "eUgvn3iV", "LhqRFZqZ"]' \
    > test.out 2>&1
eval_tap $? 312 'PublicExistsAnyMyActiveEntitlement' test.out

#- 313 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'NhEFAvn3' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 314 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'Jxc1H5tC' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 315 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'v0Y0shRx' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 316 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["PCAYL1Yf", "SlKYkgxe", "sPeXn3fa"]' \
    --itemIds '["UoXdgqA9", "JjXuDZJj", "9zficyYD"]' \
    --skus '["dv7b6sY9", "t5UJX8OZ", "Bs7Z3CfI"]' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetEntitlementOwnershipToken' test.out

#- 317 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'WApnWM6s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'PublicGetMyWallet' test.out

#- 318 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'y2EBziq6' \
    --body '{"epicGamesJwtToken": "fjpyYsCJ"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncEpicGameDLC' test.out

#- 319 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Jqgxri6F' \
    --body '{"serviceLabel": 65}' \
    > test.out 2>&1
eval_tap $? 319 'PublicSyncPsnDlcInventory' test.out

#- 320 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'IpMFFaqK' \
    --body '{"serviceLabels": [97, 91, 84]}' \
    > test.out 2>&1
eval_tap $? 320 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 321 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ESTxTzc4' \
    --body '{"appId": "ZAg2N4GU", "steamId": "7AKto3OW"}' \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamDLC' test.out

#- 322 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'nrfMDY2Z' \
    --body '{"xstsToken": "wvV8cZHd"}' \
    > test.out 2>&1
eval_tap $? 322 'SyncXboxDLC' test.out

#- 323 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'r54xmfkE' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'xWOP4JDy' \
    --features '["kNFs7xHu", "53PORHgv", "9P1r4DVF"]' \
    --itemId '["F1u12ZiG", "pnr8kXJu", "JhcSfN8W"]' \
    --limit '42' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlements' test.out

#- 324 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HSCg7DAx' \
    --appId 'eszhZNSt' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementByAppId' test.out

#- 325 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'fbDK3tbE' \
    --limit '16' \
    --offset '69' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 325 'PublicQueryUserEntitlementsByAppType' test.out

#- 326 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wMGkmQX7' \
    --entitlementClazz 'CODE' \
    --itemId 'IJ3UrGUf' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementByItemId' test.out

#- 327 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'F6Bj6KLb' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'kFRmC44y' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementBySku' test.out

#- 328 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mdL0wffc' \
    --appIds '["JmuA2L02", "tu7GdMg8", "qt1NsbCA"]' \
    --itemIds '["NKxybESP", "yNw3eotG", "euvjdoaK"]' \
    --skus '["mhZXvwLN", "cKfVbY4N", "WHfgdtT1"]' \
    > test.out 2>&1
eval_tap $? 328 'PublicExistsAnyUserActiveEntitlement' test.out

#- 329 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '3xPQLDjx' \
    --appId 'XQr7taUC' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 330 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Y8UqV9mn' \
    --entitlementClazz 'APP' \
    --itemId '65CCMM93' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 331 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JEs1z5gS' \
    --ids '["g7WqSgim", "G0mk44Jp", "WIGxKzao"]' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 332 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'SN0fHqSU' \
    --entitlementClazz 'CODE' \
    --sku 'h7oegj4k' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 333 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Z4QBJSl5' \
    --namespace $AB_NAMESPACE \
    --userId 'HX2GTwxD' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserEntitlement' test.out

#- 334 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'KjyjpHBC' \
    --namespace $AB_NAMESPACE \
    --userId 'fIGWOUl1' \
    --body '{"options": ["6nygKaj0", "JAA0uRC0", "Sn98ddMb"], "requestId": "uqpUg87S", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 334 'PublicConsumeUserEntitlement' test.out

#- 335 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'DgNtP3rh' \
    --body '{"code": "11Hr82F0", "language": "zE_MrwG_111", "region": "xpknO7CZ"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicRedeemCode' test.out

#- 336 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'l5X3G2OJ' \
    --body '{"excludeOldTransactions": false, "language": "vlQV_NSyx", "productId": "Dbjm0Z4J", "receiptData": "5YmQId1Z", "region": "9kKXhCWl", "transactionId": "KFoiHAxd"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillAppleIAPItem' test.out

#- 337 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '5CU7RDdf' \
    --body '{"epicGamesJwtToken": "fLVCZSKw"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncEpicGamesInventory' test.out

#- 338 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6e6aMxOr' \
    --body '{"autoAck": true, "language": "Am_gJnY", "orderId": "oou7Fvtp", "packageName": "kUVIxNQX", "productId": "bHCvqrJA", "purchaseTime": 26, "purchaseToken": "PVFN9sxH", "region": "aXSbIXSD"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicFulfillGoogleIAPItem' test.out

#- 339 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'URGrGqxG' \
    --body '{"currencyCode": "pB1OrhV5", "price": 0.7335457760549359, "productId": "VeGQhLBn", "serviceLabel": 23}' \
    > test.out 2>&1
eval_tap $? 339 'PublicReconcilePlayStationStore' test.out

#- 340 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'vdXK5SaE' \
    --body '{"currencyCode": "RZGaDAhz", "price": 0.7823132079142773, "productId": "iQ3WQ1fj", "serviceLabels": [43, 26, 83]}' \
    > test.out 2>&1
eval_tap $? 340 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 341 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2gts11oA' \
    --body '{"appId": "JDNiRliS", "language": "OY_ilrE-VY", "region": "eFwv65d7", "stadiaPlayerId": "ZadCb0yZ"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncStadiaEntitlement' test.out

#- 342 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WDPKF7YL' \
    --body '{"appId": "dtnT3tF3", "currencyCode": "EEeznv4h", "language": "TF", "price": 0.4133468358344786, "productId": "HeHTFmiQ", "region": "GKlJSGCL", "steamId": "wywsrqw0"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncSteamInventory' test.out

#- 343 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'x2H67t6I' \
    --body '{"gameId": "n0NrKDBf", "language": "XQ", "region": "aNKOT0B7"}' \
    > test.out 2>&1
eval_tap $? 343 'SyncTwitchDropsEntitlement' test.out

#- 344 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '6rzcEl1G' \
    --body '{"currencyCode": "hyyL7UBS", "price": 0.6478010353430104, "productId": "1fARhplk", "xstsToken": "kT0b1Mqi"}' \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxInventory' test.out

#- 345 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nfxLnEOb' \
    --itemId 'aj6Tpf12' \
    --limit '54' \
    --offset '23' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserOrders' test.out

#- 346 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2fya3Qmf' \
    --body '{"currencyCode": "It2tVswN", "discountedPrice": 97, "ext": {"jgvTyXio": {}, "xJUIcNdc": {}, "driY3nNo": {}}, "itemId": "arMheqbZ", "language": "eu-zkzm", "price": 37, "quantity": 96, "region": "iXk0mueF", "returnUrl": "NcE2A1Sj"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserOrder' test.out

#- 347 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nLup4er2' \
    --userId 'nURJYI1s' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrder' test.out

#- 348 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'QNA9d17x' \
    --userId 'qJaPv3kh' \
    > test.out 2>&1
eval_tap $? 348 'PublicCancelUserOrder' test.out

#- 349 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'MT3V04Rf' \
    --userId '92K3sXet' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserOrderHistories' test.out

#- 350 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'swRLzrPJ' \
    --userId 'czQIZrXX' \
    > test.out 2>&1
eval_tap $? 350 'PublicDownloadUserOrderReceipt' test.out

#- 351 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kdPhBztw' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentAccounts' test.out

#- 352 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'p9oSqMnK' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'tnpn02NL' \
    > test.out 2>&1
eval_tap $? 352 'PublicDeletePaymentAccount' test.out

#- 353 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'cqK8NQu6' \
    --chargeStatus 'SETUP' \
    --itemId 'xZ8h70qA' \
    --limit '66' \
    --offset '27' \
    --sku 'jm6zjFjC' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserSubscriptions' test.out

#- 354 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'AilHtEAV' \
    --body '{"currencyCode": "qknU47lR", "itemId": "uMIiOPee", "language": "MmW-Vj", "region": "aCuG7kNy", "returnUrl": "5R1QWY2B", "source": "4tnk7QgH"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicSubscribeSubscription' test.out

#- 355 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'f8ODJtPC' \
    --itemId 'd0luclWJ' \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 356 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LPXQXJIT' \
    --userId 'RT2Ylnl2' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserSubscription' test.out

#- 357 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'H7XlmyvP' \
    --userId 'bmR8Ytv6' \
    > test.out 2>&1
eval_tap $? 357 'PublicChangeSubscriptionBillingAccount' test.out

#- 358 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'o7gdi7oS' \
    --userId 'enS7E0An' \
    --body '{"immediate": false, "reason": "KABOQjzH"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicCancelSubscription' test.out

#- 359 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XrvkLuv4' \
    --userId 'bgJkLuvJ' \
    --excludeFree 'false' \
    --limit '25' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserSubscriptionBillingHistories' test.out

#- 360 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'p1Pg43BV' \
    --namespace $AB_NAMESPACE \
    --userId 'cOJWrvxE' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetWallet' test.out

#- 361 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'uJgBbuuj' \
    --namespace $AB_NAMESPACE \
    --userId 'SxOGFX4z' \
    --limit '77' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 361 'PublicListUserWalletTransactions' test.out

#- 362 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'Xeg99D4P' \
    --baseAppId 'MpLtgzYp' \
    --categoryPath '4EMdQA32' \
    --features '9sCcFN0u' \
    --includeSubCategoryItem 'true' \
    --itemName 'evK87HmG' \
    --itemStatus 'INACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '64' \
    --offset '14' \
    --region 'Lo1GHKVr' \
    --sortBy '["createdAt", "createdAt:desc", "displayOrder"]' \
    --storeId 'iBRB5dyJ' \
    --tags 'BT9YwD7u' \
    --targetNamespace 'Z3udQW4N' \
    > test.out 2>&1
eval_tap $? 362 'QueryItems1' test.out

#- 363 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'bFJsH204' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'ImportStore1' test.out

#- 364 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'E0AOdFAJ' \
    --body '{"itemIds": ["e3VAXhpy", "LFoSq0OX", "34XBpexC"]}' \
    > test.out 2>&1
eval_tap $? 364 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE