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
echo "1..380"

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
    --body '{"context": {"item": {"appId": "GWjisWhE", "appType": "GAME", "baseAppId": "6QMNMzfq", "boothName": "yb7osA9n", "boundItemIds": ["aLkqmZir", "CpSOhCPG", "nQzFdkrE"], "categoryPath": "DjaqGw6n", "clazz": "qqnnqEQG", "createdAt": "1983-12-09T00:00:00Z", "description": "LIdczALw", "displayOrder": 23, "entitlementType": "CONSUMABLE", "ext": {"OnL3WX6s": {}, "HQ1zCkBu": {}, "ys1rlnBE": {}}, "features": ["pJYpyMpm", "bWs5U1Um", "bkSx1gBY"], "fresh": true, "images": [{"as": "ypUGFCau", "caption": "YSnfNq4h", "height": 57, "imageUrl": "iy8S3Bxe", "smallImageUrl": "6aBelxHl", "width": 25}, {"as": "v191E155", "caption": "WSasCfZ0", "height": 14, "imageUrl": "w6ESe4Wt", "smallImageUrl": "yexbKyZm", "width": 42}, {"as": "xUE7AEFM", "caption": "v6TgAjwU", "height": 90, "imageUrl": "8TD8V1QM", "smallImageUrl": "PlUDeCGj", "width": 57}], "itemId": "IZJzECvk", "itemIds": ["1pTaxx3C", "dAGQMpta", "tbIxQopX"], "itemQty": {"KjB9jhox": 11, "zGTkyMm2": 37, "CQXlNwEV": 3}, "itemType": "LOOTBOX", "language": "VsVXmHp1", "listable": true, "localExt": {"hJ4j3kND": {}, "IDo4WuLt": {}, "k7LSOBUm": {}}, "longDescription": "PPJzZc4m", "lootBoxConfig": {"rewardCount": 86, "rewards": [{"lootBoxItems": [{"count": 48, "itemId": "fnBvOT3g", "itemSku": "PvxSgZIC", "itemType": "M2iMBu2D"}, {"count": 91, "itemId": "3SwA5Pn1", "itemSku": "kvAb20qF", "itemType": "bvL3U9Br"}, {"count": 14, "itemId": "yriaBV75", "itemSku": "nNdzlkmn", "itemType": "CZWDbUQY"}], "name": "5vY1S0L8", "odds": 0.3169287925169345, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 23, "itemId": "x18VJrDJ", "itemSku": "qKmVN4mm", "itemType": "7q8JD1nD"}, {"count": 30, "itemId": "9EojaJPo", "itemSku": "xH2oS4xV", "itemType": "tgWXJE4P"}, {"count": 32, "itemId": "V1KRvuvR", "itemSku": "8wHyXR8Z", "itemType": "jN7wWWlx"}], "name": "fjg8vcEp", "odds": 0.01618587331274235, "type": "REWARD", "weight": 81}, {"lootBoxItems": [{"count": 26, "itemId": "sdezqZL0", "itemSku": "aAV4Rx3e", "itemType": "Rnd6WUOB"}, {"count": 0, "itemId": "ZYkagMj3", "itemSku": "a5XWlWqe", "itemType": "52qkOKPS"}, {"count": 0, "itemId": "OdsuH2jd", "itemSku": "PqT4njCf", "itemType": "nSRRkraK"}], "name": "0JuFmcoj", "odds": 0.6275297077540682, "type": "REWARD_GROUP", "weight": 30}]}, "maxCount": 34, "maxCountPerUser": 8, "name": "pvfzbvp1", "namespace": "17LDnXmp", "optionBoxConfig": {"boxItems": [{"count": 58, "itemId": "Ifqew1Ed", "itemSku": "iWn9KNoa", "itemType": "1ksdvcV6"}, {"count": 18, "itemId": "pEu1ZyHd", "itemSku": "ocxCBtdO", "itemType": "R039co8L"}, {"count": 11, "itemId": "pF2UfLE1", "itemSku": "Vw9BbrDL", "itemType": "ZaLJnaSa"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 24, "comparison": "isLessThan", "name": "lMvkf9xz", "predicateType": "SeasonTierPredicate", "value": "0BZu9599", "values": ["9qWia4py", "ArNHVQVB", "neHh1ciB"]}, {"anyOf": 88, "comparison": "includes", "name": "Ju6Ef7Hb", "predicateType": "SeasonTierPredicate", "value": "YtlADYTf", "values": ["u2jPn7SR", "q5JzmWvO", "X6XagOJL"]}, {"anyOf": 97, "comparison": "excludes", "name": "69V0zHa8", "predicateType": "SeasonTierPredicate", "value": "4VCb8Zj1", "values": ["5RQE7FQV", "o7gbfefd", "7DQHTcEL"]}]}, {"operator": "and", "predicates": [{"anyOf": 29, "comparison": "includes", "name": "aCm4oAOL", "predicateType": "EntitlementPredicate", "value": "HqyTtx1u", "values": ["8PCfaMOG", "bEPvwfRx", "WriZ4Vga"]}, {"anyOf": 80, "comparison": "is", "name": "xgNyiI1f", "predicateType": "SeasonPassPredicate", "value": "rroYEL4u", "values": ["J0VClUNc", "i85eSGpo", "nOXAslRN"]}, {"anyOf": 94, "comparison": "includes", "name": "Yq1RBKmK", "predicateType": "SeasonPassPredicate", "value": "wM8QADLx", "values": ["ff55zyYJ", "kYpess2F", "2I0VNqGF"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "includes", "name": "XwgrwOYM", "predicateType": "EntitlementPredicate", "value": "zo1vS8UY", "values": ["KGtsWEUf", "Zz1jXHBo", "a3nJDuPM"]}, {"anyOf": 75, "comparison": "isNot", "name": "SxRdZoY0", "predicateType": "EntitlementPredicate", "value": "TQuIrGUA", "values": ["KxAnmlxy", "WXLXkCN3", "CdejmACX"]}, {"anyOf": 67, "comparison": "isLessThan", "name": "0re7dSzN", "predicateType": "EntitlementPredicate", "value": "Au8sJxF4", "values": ["vUYpK3vi", "8YC0eyHi", "go7Pyb8T"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 60, "fixedTrialCycles": 3, "graceDays": 24}, "region": "6zCJh6sD", "regionData": [{"currencyCode": "XYwvinos", "currencyNamespace": "10VNhEC4", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1985-11-30T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-02-05T00:00:00Z", "discountedPrice": 51, "expireAt": "1997-07-28T00:00:00Z", "price": 42, "purchaseAt": "1986-01-11T00:00:00Z", "trialPrice": 70}, {"currencyCode": "B1gMmxAQ", "currencyNamespace": "0yzFlHGB", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1990-06-28T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1981-12-29T00:00:00Z", "discountedPrice": 28, "expireAt": "1983-08-26T00:00:00Z", "price": 32, "purchaseAt": "1990-06-05T00:00:00Z", "trialPrice": 3}, {"currencyCode": "c3Jqu88C", "currencyNamespace": "jRajAkbE", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1999-06-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1990-05-22T00:00:00Z", "discountedPrice": 35, "expireAt": "1980-10-08T00:00:00Z", "price": 29, "purchaseAt": "1987-10-14T00:00:00Z", "trialPrice": 28}], "seasonType": "PASS", "sku": "cVA0sf0Y", "stackable": false, "status": "ACTIVE", "tags": ["EmxZ5brB", "IrCtOrhK", "f6zEgyuu"], "targetCurrencyCode": "VkPAoX4M", "targetItemId": "qIJcxBcO", "targetNamespace": "dM6wU9AJ", "thumbnailUrl": "yhBFErDg", "title": "J07mdkRV", "updatedAt": "1983-03-05T00:00:00Z", "useCount": 93}, "namespace": "Jec6IkqT", "order": {"currency": {"currencyCode": "J3WMWCWO", "currencySymbol": "W5Eg066E", "currencyType": "VIRTUAL", "decimals": 12, "namespace": "IC8zrsPS"}, "ext": {"0mEPZGPx": {}, "Q2pZ2dB5": {}, "BThSMkRf": {}}, "free": false}, "source": "ACHIEVEMENT"}, "script": "m8vAajK6", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '5ZGvVX3b' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 't3P4lNtm' \
    --body '{"grantDays": "LmyY55ot"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'UhaGH8xF' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'qLTNIqxj' \
    --body '{"grantDays": "Yxf3rGTS"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Bc8gTTOF", "dryRun": false, "fulfillmentUrl": "Mr0Y8PFY", "itemType": "BUNDLE", "purchaseConditionUrl": "iOSKAc4F"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'vNI4uUAm' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '79REelG3' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'YT3AC7vg' \
    --body '{"clazz": "BvDTIqhN", "dryRun": false, "fulfillmentUrl": "phQK433h", "purchaseConditionUrl": "Ec3uszLO"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '9rp2HDUr' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'eYgyoQTw' \
    --offset '29' \
    --tag 'MgFuN757' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7Ba31Hyw", "items": [{"extraSubscriptionDays": 44, "itemId": "lt7BX9ei", "itemName": "SAW0WJAE", "quantity": 93}, {"extraSubscriptionDays": 5, "itemId": "3a1TXJSK", "itemName": "5vHSalgF", "quantity": 0}, {"extraSubscriptionDays": 27, "itemId": "bkHzFLZF", "itemName": "FujhsnYE", "quantity": 15}], "maxRedeemCountPerCampaignPerUser": 13, "maxRedeemCountPerCode": 44, "maxRedeemCountPerCodePerUser": 10, "maxSaleCount": 71, "name": "8aOJV2wN", "redeemEnd": "1992-04-15T00:00:00Z", "redeemStart": "1975-03-30T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["fJro2ITU", "ldXrjxfP", "rnp8CAJK"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Sxi1D4hb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'h0IHpt01' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "29BL9WRM", "items": [{"extraSubscriptionDays": 21, "itemId": "Gt0UQ2DX", "itemName": "u1jbvY8I", "quantity": 16}, {"extraSubscriptionDays": 3, "itemId": "amwzA9BI", "itemName": "v6F2GcRN", "quantity": 50}, {"extraSubscriptionDays": 98, "itemId": "Pd6tYlCS", "itemName": "sBYHo1T3", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 56, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 28, "maxSaleCount": 28, "name": "YFI34gds", "redeemEnd": "1985-12-02T00:00:00Z", "redeemStart": "1976-06-04T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["r7KZZn63", "XqzUCDFw", "B11dE9fO"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'HLsvXw0k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'xF4SqP2O' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ua2Jor5J' \
    --body '{"categoryPath": "FHtoeJdU", "localizationDisplayNames": {"ifcetykO": "bEz5oxTj", "ANLem8SC": "gWYL3Jg8", "zOumNads": "fO1LFJJH"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'Ca0vHtBE' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'edLbWvlH' \
    --namespace $AB_NAMESPACE \
    --storeId 'dEPgliVP' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '8eAmldNm' \
    --namespace $AB_NAMESPACE \
    --storeId 'glEsFadL' \
    --body '{"localizationDisplayNames": {"gnBDgNx9": "E9s5QOIQ", "5keBtV8a": "rfcF0Dkr", "en2oRUWx": "3o1awyEJ"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '8tjMLEmZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'NiigDjv6' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'BlwaGE9S' \
    --namespace $AB_NAMESPACE \
    --storeId 'avb0ly2U' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '1HPSImDM' \
    --namespace $AB_NAMESPACE \
    --storeId 'Aqwj0Q43' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'uxOIAbUj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '65' \
    --code 'y5kuaHH1' \
    --limit '63' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'ZaYNJtS9' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 86}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'dbE7yyn9' \
    --namespace $AB_NAMESPACE \
    --batchNo '69' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'z1Ayb3yp' \
    --namespace $AB_NAMESPACE \
    --batchNo '92' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'rCBK9qHW' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'C4wpofMC' \
    --namespace $AB_NAMESPACE \
    --code 't85J1KAA' \
    --limit '67' \
    --offset '6' \
    --userId '5xseHeol' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'yZQDErq6' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'HY8wth8R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Pkbgf9hY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 GetServicePluginConfig
samples/cli/sample-apps Platform getServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetServicePluginConfig' test.out

#- 37 UpdateServicePluginConfig
samples/cli/sample-apps Platform updateServicePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"grpcServerAddress": "qtv6mYyJ"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateServicePluginConfig' test.out

#- 38 DeleteServicePluginConfig
samples/cli/sample-apps Platform deleteServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteServicePluginConfig' test.out

#- 39 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BLBBJfhZ", "currencySymbol": "Fn7bxebT", "currencyType": "VIRTUAL", "decimals": 34, "localizationDescriptions": {"m4y9TGff": "XDgC5JXB", "QJYXLFEc": "Uacjr9iV", "ndFWSCbp": "bBhHMJzq"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'kjK3LtlO' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"EP0SKDbo": "SG1I6hVz", "LN4kGi2I": "H7pI0yEj", "hKusk5Z6": "UFkQMnCT"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'tMrR1a7Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Jxt2pvYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'WBGIakGQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetCurrencySummary' test.out

#- 45 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetDLCItemConfig' test.out

#- 46 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "p48LN8kD", "rewards": [{"currency": {"currencyCode": "I0GgDjEs", "namespace": "4DTvnxJz"}, "item": {"itemId": "68Eh0oSV", "itemSku": "iNQh55EC", "itemType": "tLenpmMm"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "ixwW2Fja", "namespace": "tBHlBEZi"}, "item": {"itemId": "7hviQaRA", "itemSku": "i7fAijpQ", "itemType": "K6e5swTt"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "3df30qZB", "namespace": "cXIPTLvf"}, "item": {"itemId": "BZql70os", "itemSku": "bYKuspsv", "itemType": "ek9FsgeY"}, "quantity": 69, "type": "CURRENCY"}]}, {"id": "rAG03Uv7", "rewards": [{"currency": {"currencyCode": "pre8aBdQ", "namespace": "3mgfTOtC"}, "item": {"itemId": "VB5osjsz", "itemSku": "AnpOrO9q", "itemType": "zagfrwwx"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "4QnEuzyy", "namespace": "utKzOOgA"}, "item": {"itemId": "c0gBKhp1", "itemSku": "vRRnbk6Y", "itemType": "JAFY3iYk"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "98KYWKAj", "namespace": "3pkrFo3l"}, "item": {"itemId": "XUCDNafI", "itemSku": "bC1qfqai", "itemType": "9JO0dHeS"}, "quantity": 86, "type": "ITEM"}]}, {"id": "PLWA3Nt1", "rewards": [{"currency": {"currencyCode": "G2IxCV6g", "namespace": "3n7M2I8V"}, "item": {"itemId": "bQ7hY0dJ", "itemSku": "W7qzy3zi", "itemType": "uxgo8FiF"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "LKOEoGQC", "namespace": "YUXMndX9"}, "item": {"itemId": "tyGBq64a", "itemSku": "9k1p6tej", "itemType": "rJC68vve"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "REbe625A", "namespace": "NUn0vFJ6"}, "item": {"itemId": "EZtZ7SvG", "itemSku": "sVxzaB3V", "itemType": "IBv7r5qn"}, "quantity": 99, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateDLCItemConfig' test.out

#- 47 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteDLCItemConfig' test.out

#- 48 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetPlatformDLCConfig' test.out

#- 49 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"XZvVYocu": "9wnOvgMk", "mIrG2dE7": "vcSsFnOr", "N1F39saX": "m2HH8igc"}}, {"platform": "PSN", "platformDlcIdMap": {"uZXXCwFZ": "sio25lpm", "fRPc1bgE": "dqz7O4vP", "hNewYevG": "weNMfmrY"}}, {"platform": "PSN", "platformDlcIdMap": {"gn5kvxS4": "7uOxf8Ej", "AfBXfrkH": "NWWPBD2b", "JstMMJqE": "sfFJvllV"}}]}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePlatformDLCConfig' test.out

#- 50 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeletePlatformDLCConfig' test.out

#- 51 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'GuxfbvXw' \
    --itemId '["whwOxaBF", "JHplU0a4", "cUi6e1hC"]' \
    --limit '41' \
    --offset '37' \
    --userId 'MUF33wZ5' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'J3sW2HPk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '35' \
    --status 'SUCCESS' \
    --userId 'fvFzwkkP' \
    > test.out 2>&1
eval_tap $? 53 'QueryFulfillmentHistories' test.out

#- 54 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetAppleIAPConfig' test.out

#- 55 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "bnj3WFp6", "password": "PZQY6iQB"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateAppleIAPConfig' test.out

#- 56 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteAppleIAPConfig' test.out

#- 57 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetEpicGamesIAPConfig' test.out

#- 58 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "djQBIqo0"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateEpicGamesIAPConfig' test.out

#- 59 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteEpicGamesIAPConfig' test.out

#- 60 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGoogleIAPConfig' test.out

#- 61 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "Ff1fqUrN", "serviceAccountId": "tp8VUSJD"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGoogleIAPConfig' test.out

#- 62 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGoogleIAPConfig' test.out

#- 63 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 63 'UpdateGoogleP12File' test.out

#- 64 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetIAPItemConfig' test.out

#- 65 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "Gnm6ZKri", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ElTagzpO": "Hf7xwSmc", "T7mFHqaB": "KgHmUkAK", "76E9mgkN": "UREAjDg3"}}, {"itemIdentity": "fh44p4Xl", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nG2Efxyg": "zhw0npF8", "zCYuhCGu": "ASRbvQuB", "eg59Iz3C": "aFJ063hR"}}, {"itemIdentity": "2rEiHrYw", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"a5wduJSi": "JvkaLmmY", "AkG2P546": "FJIONDzY", "ew6YQGNJ": "CMVMEz7g"}}]}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateIAPItemConfig' test.out

#- 66 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteIAPItemConfig' test.out

#- 67 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetPlayStationIAPConfig' test.out

#- 68 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "ESkDIOsB"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetStadiaIAPConfig' test.out

#- 71 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteStadiaIAPConfig' test.out

#- 72 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 72 'UpdateStadiaJsonConfigFile' test.out

#- 73 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "8UTjgJ0F", "publisherAuthenticationKey": "qLVl5ez1"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "NuFZ357F", "clientSecret": "NIBqb6sE", "organizationId": "BVnccFrF"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "BMf5gprQ"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'PHbhUJSH' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'lvdN98vm' \
    --itemId 'oKYGHvFy' \
    --itemType 'EXTENSION' \
    --endTime '2brDl7Qy' \
    --startTime 'x2vIypVM' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'WWHEhXFp' \
    --itemId 'ch7mikd3' \
    --itemType 'SEASON' \
    --endTime 'QSFT27aw' \
    --startTime 'uspixLAO' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'fNuSn2h6' \
    --body '{"categoryPath": "VzJsSEpW", "targetItemId": "z9k9TLET", "targetNamespace": "Xot6aC8P"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Qhaotuvd' \
    --body '{"appId": "ebY5pydC", "appType": "SOFTWARE", "baseAppId": "RyD6dlxl", "boothName": "YnD2PQ5w", "categoryPath": "qDbsSlSx", "clazz": "NZjZ2v6Y", "displayOrder": 86, "entitlementType": "CONSUMABLE", "ext": {"7wOZKCRu": {}, "rgThG3Vy": {}, "jlZXFLIj": {}}, "features": ["Xf0XZgBS", "2MvWIWAY", "UMAMcRFf"], "images": [{"as": "9J0JFpID", "caption": "hq1p0KVz", "height": 69, "imageUrl": "ZF4CYuGX", "smallImageUrl": "581XK129", "width": 31}, {"as": "hqPH160J", "caption": "8a4GTTpC", "height": 42, "imageUrl": "aApYysq0", "smallImageUrl": "qB7cZTvp", "width": 31}, {"as": "JAypPtRF", "caption": "81uBJEjU", "height": 23, "imageUrl": "CePJpphe", "smallImageUrl": "t8OKlhdA", "width": 77}], "itemIds": ["b0SI9hVp", "lnCMDhNj", "ItXartP3"], "itemQty": {"tR901JvP": 1, "iTGD9QS0": 15, "eyWPguVg": 48}, "itemType": "LOOTBOX", "listable": false, "localizations": {"0hFBDwYd": {"description": "gvJJeIEX", "localExt": {"aaHoZFoI": {}, "oKTwnNee": {}, "MYCAqdjP": {}}, "longDescription": "3mOmnbnC", "title": "8V9mpYP3"}, "e2NpYAEb": {"description": "CCBMhBz1", "localExt": {"xHMnKrik": {}, "eUTRM7US": {}, "7UrDuopX": {}}, "longDescription": "Bioj5BCH", "title": "Q2N6tbvZ"}, "Hr43UttQ": {"description": "lSmwmVdE", "localExt": {"veSftfA3": {}, "u5c0gnJt": {}, "capZuZZi": {}}, "longDescription": "ZLC60W2r", "title": "9x9wcsGb"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 96, "itemId": "0jmGVNer", "itemSku": "MXIHPEnm", "itemType": "oT216FC6"}, {"count": 61, "itemId": "Z5JxaPlP", "itemSku": "SrC1marD", "itemType": "p0Fogg4s"}, {"count": 93, "itemId": "gwhxYUzx", "itemSku": "r1RbQxif", "itemType": "y2wjOa1v"}], "name": "BHgSBMbO", "odds": 0.5261770499038975, "type": "REWARD", "weight": 58}, {"lootBoxItems": [{"count": 12, "itemId": "RkiFfY27", "itemSku": "jELLScNx", "itemType": "QSlkc4ub"}, {"count": 21, "itemId": "QXIT9gby", "itemSku": "wnmK2gxM", "itemType": "zNq3se7V"}, {"count": 27, "itemId": "L4j5GuXQ", "itemSku": "yU7LAHU6", "itemType": "vj0gFXEG"}], "name": "UmJIcTvP", "odds": 0.6411481309345407, "type": "REWARD", "weight": 62}, {"lootBoxItems": [{"count": 52, "itemId": "nsVbYs9H", "itemSku": "F6rqr1YG", "itemType": "Wgdpdc2l"}, {"count": 37, "itemId": "2Ka8nls3", "itemSku": "HQCeFpwT", "itemType": "x47ZTjHj"}, {"count": 98, "itemId": "lPhpI0Z1", "itemSku": "XH3zEIdf", "itemType": "mVXmqU47"}], "name": "mmhyr8t6", "odds": 0.9047411684315413, "type": "REWARD_GROUP", "weight": 6}]}, "maxCount": 100, "maxCountPerUser": 17, "name": "eBnt8T57", "optionBoxConfig": {"boxItems": [{"count": 91, "itemId": "LnIZa5YK", "itemSku": "67nVSp44", "itemType": "Z51k5WkH"}, {"count": 79, "itemId": "FmuAuHhc", "itemSku": "4Xi0QCux", "itemType": "fEP6IeU4"}, {"count": 37, "itemId": "k78XQpxz", "itemSku": "A8TPeCNG", "itemType": "rig8wyDp"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 52, "fixedTrialCycles": 86, "graceDays": 52}, "regionData": {"LBx4Qn7O": [{"currencyCode": "d5anv5DQ", "currencyNamespace": "o230dorg", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1988-02-26T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1997-10-12T00:00:00Z", "discountedPrice": 23, "expireAt": "1988-08-20T00:00:00Z", "price": 26, "purchaseAt": "1978-03-10T00:00:00Z", "trialPrice": 39}, {"currencyCode": "z7krSzgg", "currencyNamespace": "bQ9MR0Jn", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1982-09-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1994-02-18T00:00:00Z", "discountedPrice": 94, "expireAt": "1980-09-03T00:00:00Z", "price": 17, "purchaseAt": "1973-04-07T00:00:00Z", "trialPrice": 72}, {"currencyCode": "b5zLNhUx", "currencyNamespace": "0g0nM6OM", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1998-05-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-11-19T00:00:00Z", "discountedPrice": 21, "expireAt": "1987-01-29T00:00:00Z", "price": 54, "purchaseAt": "1978-02-20T00:00:00Z", "trialPrice": 72}], "dFApU2B4": [{"currencyCode": "fqC7xnIV", "currencyNamespace": "jSL2vPo3", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1997-09-28T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1988-12-14T00:00:00Z", "discountedPrice": 65, "expireAt": "1977-04-20T00:00:00Z", "price": 77, "purchaseAt": "1973-12-29T00:00:00Z", "trialPrice": 67}, {"currencyCode": "zf05sWbN", "currencyNamespace": "7MHYLI5m", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1989-11-04T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1975-03-30T00:00:00Z", "discountedPrice": 62, "expireAt": "1991-08-18T00:00:00Z", "price": 81, "purchaseAt": "1980-01-14T00:00:00Z", "trialPrice": 4}, {"currencyCode": "k5CKKsMg", "currencyNamespace": "HS94gKiY", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1977-08-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1978-12-01T00:00:00Z", "discountedPrice": 64, "expireAt": "1988-07-02T00:00:00Z", "price": 40, "purchaseAt": "1974-05-05T00:00:00Z", "trialPrice": 26}], "BzaxMcTF": [{"currencyCode": "busiASPb", "currencyNamespace": "6fEz0dD3", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1974-12-27T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1984-10-28T00:00:00Z", "discountedPrice": 4, "expireAt": "1988-02-19T00:00:00Z", "price": 76, "purchaseAt": "1983-01-13T00:00:00Z", "trialPrice": 87}, {"currencyCode": "zHQaFcMc", "currencyNamespace": "BsLNbcCb", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1978-08-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1994-09-28T00:00:00Z", "discountedPrice": 90, "expireAt": "1984-08-05T00:00:00Z", "price": 97, "purchaseAt": "1978-07-03T00:00:00Z", "trialPrice": 91}, {"currencyCode": "1VyXd1N1", "currencyNamespace": "MJdM52Sv", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1975-05-31T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-10-31T00:00:00Z", "discountedPrice": 48, "expireAt": "1989-02-16T00:00:00Z", "price": 18, "purchaseAt": "1990-02-27T00:00:00Z", "trialPrice": 74}]}, "seasonType": "PASS", "sku": "4WGCaN0f", "stackable": false, "status": "ACTIVE", "tags": ["2hh9wiYF", "5oL3JFS1", "SO13LBUs"], "targetCurrencyCode": "FntHDIzs", "targetNamespace": "Ml8HnIcx", "thumbnailUrl": "OFEIZzdr", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'KY7CiYC8' \
    --appId 'HGn61YWX' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'bOhwgmUf' \
    --baseAppId 'b8ZE0R3e' \
    --categoryPath 'hKkUhXNT' \
    --features 'cLWjqSLH' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --limit '94' \
    --offset '4' \
    --region 'XjWj1zti' \
    --sortBy '["createdAt", "name:asc", "displayOrder:desc"]' \
    --storeId 'HVLAwEBS' \
    --tags 'C14vCW9K' \
    --targetNamespace 'tx7mmR0Z' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["bAXGB28a", "ayK5FFjJ", "byuwiOn4"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qhxJfp0Q' \
    --sku 'TCCFlEaF' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'yrfFOIGH' \
    --populateBundle 'true' \
    --region 'izecR3oy' \
    --storeId 'sn4W2MOc' \
    --sku '24McCUBZ' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'w7njDfzn' \
    --sku '2gh5XT20' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["LiTFdGI4", "byzqvyr0", "nolcc8jX"]' \
    --storeId 'CNO9urvv' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'jNCHE9UC' \
    --region 'U2AHxIcS' \
    --storeId 't2E4ntKu' \
    --itemIds '5DpMlnX3' \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId '2LiEYaYw' \
    --body '{"itemIds": ["ixXD6lAe", "RnJaMlJ9", "SqqkHFky"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'INGAMEITEM' \
    --limit '65' \
    --offset '92' \
    --sortBy 'qF1Ysbit' \
    --storeId 'GfZiUbW1' \
    --keyword 'cMBcCVXr' \
    --language 'EgpUKMdh' \
    > test.out 2>&1
eval_tap $? 97 'SearchItems' test.out

#- 98 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '9' \
    --offset '38' \
    --sortBy '["createdAt", "name", "displayOrder:desc"]' \
    --storeId 'fvnVtNVZ' \
    > test.out 2>&1
eval_tap $? 98 'QueryUncategorizedItems' test.out

#- 99 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'OyWfROgQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'uVmblPob' \
    > test.out 2>&1
eval_tap $? 99 'GetItem' test.out

#- 100 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'BlOCwVzC' \
    --namespace $AB_NAMESPACE \
    --storeId 'wpvf65rw' \
    --body '{"appId": "zYFZ2nbE", "appType": "DLC", "baseAppId": "gPX2SdUF", "boothName": "vyXaDfP7", "categoryPath": "1I8Igm5M", "clazz": "pUkqM5R7", "displayOrder": 96, "entitlementType": "CONSUMABLE", "ext": {"aXvdKT54": {}, "XblFTkho": {}, "LCFkwgZi": {}}, "features": ["TxJM3skd", "1aeoSj3N", "D0eetEmg"], "images": [{"as": "y4nrRr7J", "caption": "ywRSWz97", "height": 63, "imageUrl": "r1oZxZg3", "smallImageUrl": "2Z0HbQov", "width": 56}, {"as": "pMI0vr1L", "caption": "rvYs1Nnf", "height": 6, "imageUrl": "lCdL7U2v", "smallImageUrl": "IVDNmHEF", "width": 4}, {"as": "wvSue8xH", "caption": "dDqIShdM", "height": 30, "imageUrl": "VupxvUrK", "smallImageUrl": "1iIQaNpz", "width": 62}], "itemIds": ["R7WvTZjW", "8jFeLFQE", "2JJ2g6Ra"], "itemQty": {"qlu9NY7U": 33, "yq5Df4nV": 62, "v5uYvsHY": 70}, "itemType": "MEDIA", "listable": true, "localizations": {"fTMdrwxb": {"description": "aNPNNiGt", "localExt": {"B8slZv4x": {}, "k30OJx0P": {}, "DRxnnOnz": {}}, "longDescription": "4sdWzc0U", "title": "ExCb0ChC"}, "q9chWOph": {"description": "QLF1ipHc", "localExt": {"K6Vut4mE": {}, "lha4oviN": {}, "uQ70jEbx": {}}, "longDescription": "ZzguAhyq", "title": "3ByL05Te"}, "DOxS9VwP": {"description": "n97SoAAa", "localExt": {"PnIZUv6U": {}, "ZiqJITFx": {}, "dZJ2lKEA": {}}, "longDescription": "WdA6NG45", "title": "67VeddPy"}}, "lootBoxConfig": {"rewardCount": 24, "rewards": [{"lootBoxItems": [{"count": 15, "itemId": "4smPnhBE", "itemSku": "S2cZSMjC", "itemType": "cjzEKh3u"}, {"count": 76, "itemId": "sQbMgGTa", "itemSku": "xw2mvWUX", "itemType": "OzstQEP3"}, {"count": 34, "itemId": "O9kWeLsX", "itemSku": "pm59gzek", "itemType": "i70TEdrz"}], "name": "VIaaYvdW", "odds": 0.7532964722592334, "type": "REWARD_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 82, "itemId": "ekgQf3Xh", "itemSku": "KCQKGsAx", "itemType": "asz9luuW"}, {"count": 81, "itemId": "4Na11EET", "itemSku": "UXFVeXXf", "itemType": "lK0Sop8x"}, {"count": 87, "itemId": "ILCYF0JD", "itemSku": "F2h1OBiP", "itemType": "H8bLcuVN"}], "name": "8uvq8KTl", "odds": 0.5819389507723297, "type": "REWARD", "weight": 44}, {"lootBoxItems": [{"count": 6, "itemId": "OlBtoce1", "itemSku": "y4fsTLbc", "itemType": "bX0yRDRf"}, {"count": 74, "itemId": "q1y9gZeX", "itemSku": "aGZaptOb", "itemType": "vRWVs5iW"}, {"count": 33, "itemId": "KAe2hZAw", "itemSku": "mkeExjDE", "itemType": "w25jYI9B"}], "name": "GMDgzEzd", "odds": 0.05250235672674386, "type": "REWARD_GROUP", "weight": 92}]}, "maxCount": 1, "maxCountPerUser": 47, "name": "lZJLncKa", "optionBoxConfig": {"boxItems": [{"count": 9, "itemId": "Yu7cGB7W", "itemSku": "y3tgIOiQ", "itemType": "yg3q6mVy"}, {"count": 41, "itemId": "ErN7wJKX", "itemSku": "mPLYrm9R", "itemType": "g9zqNU4b"}, {"count": 98, "itemId": "LnDrFhk9", "itemSku": "e1IS8UAq", "itemType": "AVnHcbSK"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 4, "graceDays": 62}, "regionData": {"1ZZzJdos": [{"currencyCode": "fk3rPLGx", "currencyNamespace": "yjupThcv", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1989-08-03T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-12-30T00:00:00Z", "discountedPrice": 21, "expireAt": "1996-02-28T00:00:00Z", "price": 45, "purchaseAt": "1988-11-29T00:00:00Z", "trialPrice": 45}, {"currencyCode": "7j8g81Yy", "currencyNamespace": "UQgjcQfW", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1987-05-24T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1978-05-07T00:00:00Z", "discountedPrice": 95, "expireAt": "1981-07-04T00:00:00Z", "price": 72, "purchaseAt": "1995-02-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "U5sel0sw", "currencyNamespace": "A25SZsu9", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1992-11-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-02-28T00:00:00Z", "discountedPrice": 38, "expireAt": "1994-07-07T00:00:00Z", "price": 66, "purchaseAt": "1994-03-19T00:00:00Z", "trialPrice": 6}], "53fOAgrx": [{"currencyCode": "qss57oO8", "currencyNamespace": "YvID9Z8K", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1971-05-30T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1976-04-21T00:00:00Z", "discountedPrice": 80, "expireAt": "1972-03-23T00:00:00Z", "price": 75, "purchaseAt": "1981-11-29T00:00:00Z", "trialPrice": 33}, {"currencyCode": "egyoX5BK", "currencyNamespace": "0srHAOc6", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1996-11-26T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1976-08-17T00:00:00Z", "discountedPrice": 37, "expireAt": "1986-09-28T00:00:00Z", "price": 3, "purchaseAt": "1998-02-20T00:00:00Z", "trialPrice": 18}, {"currencyCode": "IF0jzAZT", "currencyNamespace": "vUqdbbRc", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1996-09-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1973-01-22T00:00:00Z", "discountedPrice": 20, "expireAt": "1990-10-22T00:00:00Z", "price": 84, "purchaseAt": "1992-02-10T00:00:00Z", "trialPrice": 38}], "9dsKH7bZ": [{"currencyCode": "sTzvKsRD", "currencyNamespace": "nvVdiMjT", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1996-03-31T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1991-09-10T00:00:00Z", "discountedPrice": 14, "expireAt": "1978-02-28T00:00:00Z", "price": 68, "purchaseAt": "1988-09-04T00:00:00Z", "trialPrice": 22}, {"currencyCode": "xA6WzaVr", "currencyNamespace": "rrdcSYEf", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1979-10-22T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1981-10-23T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-06-10T00:00:00Z", "price": 86, "purchaseAt": "1985-12-02T00:00:00Z", "trialPrice": 33}, {"currencyCode": "OdBXXaaf", "currencyNamespace": "yFxih20p", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1999-12-16T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1985-04-17T00:00:00Z", "discountedPrice": 58, "expireAt": "1980-03-02T00:00:00Z", "price": 64, "purchaseAt": "1986-03-01T00:00:00Z", "trialPrice": 53}]}, "seasonType": "PASS", "sku": "7ErZcPMO", "stackable": true, "status": "ACTIVE", "tags": ["u2GHyn6B", "0ytz1IuE", "tYxwH0O1"], "targetCurrencyCode": "BNiXx8vW", "targetNamespace": "bLXVePZM", "thumbnailUrl": "xGqRBZ45", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItem' test.out

#- 101 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'b9wo42jl' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '41un5bQ9' \
    > test.out 2>&1
eval_tap $? 101 'DeleteItem' test.out

#- 102 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'gLw0qXpx' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 16, "orderNo": "14HP1KXD"}' \
    > test.out 2>&1
eval_tap $? 102 'AcquireItem' test.out

#- 103 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'biO7Vm9o' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'mPv05gDI' \
    > test.out 2>&1
eval_tap $? 103 'GetApp' test.out

#- 104 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'c1M2NedJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'gPdTiLqs' \
    --body '{"carousel": [{"alt": "R4wwwlnr", "previewUrl": "G9B8lHFK", "thumbnailUrl": "X7JaDei5", "type": "image", "url": "qtvfqy2o", "videoSource": "vimeo"}, {"alt": "CzqpTqDs", "previewUrl": "eb3BHddn", "thumbnailUrl": "tpA3a82M", "type": "image", "url": "jEQ0R6rC", "videoSource": "vimeo"}, {"alt": "QuwIKmGL", "previewUrl": "iAyBeFtx", "thumbnailUrl": "z3w9qq64", "type": "image", "url": "dcTvYEiX", "videoSource": "vimeo"}], "developer": "I75hweBo", "forumUrl": "rfLyCly7", "genres": ["Racing", "MassivelyMultiplayer", "Casual"], "localizations": {"VGPtfiBn": {"announcement": "YtErUaLf", "slogan": "V3ZLhFXs"}, "qMjrKC33": {"announcement": "ZhZ1GXNm", "slogan": "kznnkGT3"}, "WCdObU26": {"announcement": "b8ymvLD5", "slogan": "bc0HfDoi"}}, "platformRequirements": {"WjD6SRRJ": [{"additionals": "2GppKeM8", "directXVersion": "5q3t2sjQ", "diskSpace": "3w7mQTb0", "graphics": "woXV06P4", "label": "FiMXCyxj", "osVersion": "TqirP3uz", "processor": "KFnmFmkq", "ram": "MhecIDiI", "soundCard": "zTuicMSq"}, {"additionals": "cFIHMQqC", "directXVersion": "LJGTUE56", "diskSpace": "JDC2QJm2", "graphics": "cDtY1XYx", "label": "LKTCPwtQ", "osVersion": "CapzObZT", "processor": "jGNXbiml", "ram": "AaVCjJYf", "soundCard": "VjtleDZf"}, {"additionals": "GP0PUN29", "directXVersion": "ia4LRAO7", "diskSpace": "R1QFNW2X", "graphics": "8Z8S6Txo", "label": "bTqJwfYG", "osVersion": "xxGrohhe", "processor": "hc48rcEI", "ram": "iBDuQBgd", "soundCard": "7hSDR14w"}], "pBOmvnOe": [{"additionals": "l31aLQjx", "directXVersion": "0xagYZsA", "diskSpace": "ZBQLRYk8", "graphics": "dv9Fh1w1", "label": "v0AAu4xQ", "osVersion": "MKShETws", "processor": "f1z6z7L6", "ram": "AtLav0kv", "soundCard": "bQ8xim6R"}, {"additionals": "6phpD9hn", "directXVersion": "ur9llbIi", "diskSpace": "QEQifym9", "graphics": "GCLB59L2", "label": "GPEaNJFR", "osVersion": "aPgTzxTi", "processor": "ebcOn6em", "ram": "Njm59RMG", "soundCard": "Lg95oDet"}, {"additionals": "UQEhbnmw", "directXVersion": "68QyoOyE", "diskSpace": "6itjsFk2", "graphics": "kUgd9hTu", "label": "5Tgax5Gm", "osVersion": "MUAO4mak", "processor": "jeIoDaJc", "ram": "6HX3qbnp", "soundCard": "QAnOlVqF"}], "VElSe5P0": [{"additionals": "MY19eGNR", "directXVersion": "sdNj7aYb", "diskSpace": "MF85kJTo", "graphics": "evr8sYNK", "label": "b1IZMiiL", "osVersion": "cdboo1dE", "processor": "cZHjcK0X", "ram": "YUOk6bSo", "soundCard": "mrj7lIPw"}, {"additionals": "zIzIE0t8", "directXVersion": "QGlO2hD0", "diskSpace": "K2BEL6yo", "graphics": "XrZIggy5", "label": "w0P9HDUi", "osVersion": "z2v9N832", "processor": "pFlTF9PP", "ram": "bHrmLJwZ", "soundCard": "a3eje1kx"}, {"additionals": "6lU6Z0Xv", "directXVersion": "p23Y5qDf", "diskSpace": "x6VaIxFP", "graphics": "X2mtAlGx", "label": "GFPLEtwg", "osVersion": "acnAsH7B", "processor": "S7GYoxKt", "ram": "H9QaTdIV", "soundCard": "hQC7JvdM"}]}, "platforms": ["IOS", "MacOS", "Android"], "players": ["Multi", "LocalCoop", "LocalCoop"], "primaryGenre": "Action", "publisher": "zrKO4kfD", "releaseDate": "1997-10-29T00:00:00Z", "websiteUrl": "HFulkK3w"}' \
    > test.out 2>&1
eval_tap $? 104 'UpdateApp' test.out

#- 105 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'TV27HDb9' \
    --namespace $AB_NAMESPACE \
    --storeId 'a6cqPxmo' \
    > test.out 2>&1
eval_tap $? 105 'DisableItem' test.out

#- 106 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'cl86oyAK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetItemDynamicData' test.out

#- 107 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'sHb18VN3' \
    --namespace $AB_NAMESPACE \
    --storeId 'ctPU25jn' \
    > test.out 2>&1
eval_tap $? 107 'EnableItem' test.out

#- 108 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'K0vfhPAH' \
    --itemId 'dkjFHf51' \
    --namespace $AB_NAMESPACE \
    --storeId 'RzOfEi1b' \
    > test.out 2>&1
eval_tap $? 108 'FeatureItem' test.out

#- 109 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ilzBQh2y' \
    --itemId 'Xbz3i3g4' \
    --namespace $AB_NAMESPACE \
    --storeId 'jHPNtMmp' \
    > test.out 2>&1
eval_tap $? 109 'DefeatureItem' test.out

#- 110 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '1BPe4hp5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'H4sF5MUI' \
    --populateBundle 'false' \
    --region 'FQ40ZRAj' \
    --storeId '4WskwKHU' \
    > test.out 2>&1
eval_tap $? 110 'GetLocaleItem' test.out

#- 111 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'z1aDoSLf' \
    --namespace $AB_NAMESPACE \
    --storeId 'qVDM3cBs' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 71, "comparison": "isLessThanOrEqual", "name": "DBkr30Om", "predicateType": "EntitlementPredicate", "value": "euea0Ezm", "values": ["aOOWJaGN", "hMT3tdqh", "yEIyUdMU"]}, {"anyOf": 50, "comparison": "isGreaterThan", "name": "OkVZi51O", "predicateType": "EntitlementPredicate", "value": "6L99hSEI", "values": ["s5Mcq8rk", "yea33kfU", "mICTvmh1"]}, {"anyOf": 78, "comparison": "excludes", "name": "G8iGyZs1", "predicateType": "SeasonPassPredicate", "value": "31lyCYI6", "values": ["0FCCqBTi", "ljwUZT7k", "8fpPQRMK"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isNot", "name": "dfZi9HiH", "predicateType": "SeasonPassPredicate", "value": "kS4MaRiV", "values": ["4Odxjxwb", "RPfhJH0v", "hYGZOkfj"]}, {"anyOf": 68, "comparison": "excludes", "name": "erPFfCZ6", "predicateType": "EntitlementPredicate", "value": "NjzzQI00", "values": ["21KZ0Bkv", "KTmfRrak", "yKyEIxv4"]}, {"anyOf": 9, "comparison": "includes", "name": "kiKL57tz", "predicateType": "EntitlementPredicate", "value": "deZ7z9Zq", "values": ["LmKzdKfR", "Q2W2NVYK", "TAjcOcKE"]}]}, {"operator": "or", "predicates": [{"anyOf": 57, "comparison": "isNot", "name": "idJFUZDl", "predicateType": "EntitlementPredicate", "value": "U8obWkY9", "values": ["0ctIu6zK", "lTstVXEm", "Y8opgYqQ"]}, {"anyOf": 53, "comparison": "isGreaterThan", "name": "cTCU6ZrV", "predicateType": "SeasonPassPredicate", "value": "ABglgY9G", "values": ["sNxc1K3z", "54bDa7yM", "Uh9zPn7F"]}, {"anyOf": 67, "comparison": "isGreaterThan", "name": "YjfHHp9w", "predicateType": "EntitlementPredicate", "value": "aLVAuLdf", "values": ["1Inb2HPH", "diaPxq6c", "kdH4pXKb"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateItemPurchaseCondition' test.out

#- 112 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'Hd2KlfE5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "T9tXiJFx"}' \
    > test.out 2>&1
eval_tap $? 112 'ReturnItem' test.out

#- 113 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'zk3cDwx2' \
    --offset '2' \
    --tag 'vctNPU9e' \
    > test.out 2>&1
eval_tap $? 113 'QueryKeyGroups' test.out

#- 114 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5b6LVO2z", "name": "YOwq5Q3f", "status": "INACTIVE", "tags": ["0aIomg1b", "f45WMmGR", "SBF8O9Ah"]}' \
    > test.out 2>&1
eval_tap $? 114 'CreateKeyGroup' test.out

#- 115 GetKeyGroupByBoothName
eval_tap 0 115 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 116 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '19vVXeOn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroup' test.out

#- 117 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '3dct2GiJ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NTnhzJuq", "name": "QwD178cV", "status": "ACTIVE", "tags": ["SGr7u3xo", "h6TZkeqz", "26RuTGEy"]}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateKeyGroup' test.out

#- 118 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'GripEsCO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetKeyGroupDynamic' test.out

#- 119 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '1UVcErjv' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '61' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 119 'ListKeys' test.out

#- 120 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'x5ApiXEi' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 120 'UploadKeys' test.out

#- 121 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'NgcBkzlJ' \
    --limit '67' \
    --offset '9' \
    --orderNos '["17lKwd4E", "TjRfJb80", "QZXSbWG3"]' \
    --sortBy 'ZFglvBwC' \
    --startTime 'v5WaPOPs' \
    --status 'REFUND_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 121 'QueryOrders' test.out

#- 122 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetOrderStatistics' test.out

#- 123 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vpi7cKUM' \
    > test.out 2>&1
eval_tap $? 123 'GetOrder' test.out

#- 124 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'O0kkSihq' \
    --body '{"description": "gFyxCg9I"}' \
    > test.out 2>&1
eval_tap $? 124 'RefundOrder' test.out

#- 125 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 125 'GetPaymentCallbackConfig' test.out

#- 126 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "15jOuh1W", "privateKey": "A7JTLoLs"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdatePaymentCallbackConfig' test.out

#- 127 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'FB3nIfz1' \
    --externalId 'j9WFO3ZV' \
    --limit '99' \
    --notificationSource 'PAYPAL' \
    --notificationType 'sjzM97Ye' \
    --offset '90' \
    --paymentOrderNo 'X9BH6Gdh' \
    --startDate 'SLY7bjuD' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 127 'QueryPaymentNotifications' test.out

#- 128 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'Oc4P4frK' \
    --limit '2' \
    --offset '33' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentOrders' test.out

#- 129 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "RJPyAPAo", "currencyNamespace": "T0YmfQMp", "customParameters": {"I68HqPzi": {}, "YySstPdb": {}, "LCKUsMJt": {}}, "description": "btS38tLz", "extOrderNo": "UWaMN0u8", "extUserId": "PwAYuL4s", "itemType": "SUBSCRIPTION", "language": "CFqY_924", "metadata": {"4e6OCjyQ": "hXatvZP4", "FUj3U9Nl": "bBZtHxYG", "ZSbonHCz": "Pk1zWfqo"}, "notifyUrl": "UjK53m64", "omitNotification": true, "platform": "alPLIHX8", "price": 83, "recurringPaymentOrderNo": "WbS04zAD", "region": "FKDHFGia", "returnUrl": "nQvEQyiD", "sandbox": true, "sku": "us1xWz2E", "subscriptionId": "S1lyeOjt", "targetNamespace": "wtGCxPlK", "targetUserId": "mYKpMztl", "title": "07ufgCcS"}' \
    > test.out 2>&1
eval_tap $? 129 'CreatePaymentOrderByDedicated' test.out

#- 130 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '68pk4uIF' \
    > test.out 2>&1
eval_tap $? 130 'ListExtOrderNoByExtTxId' test.out

#- 131 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jmjTMhg4' \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrder' test.out

#- 132 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OSZcF8uE' \
    --body '{"extTxId": "3iKwXZST", "paymentMethod": "dOrd6GdT", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 132 'ChargePaymentOrder' test.out

#- 133 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kmAHx2O7' \
    --body '{"description": "B1TwlnBT"}' \
    > test.out 2>&1
eval_tap $? 133 'RefundPaymentOrderByDedicated' test.out

#- 134 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qh7lproQ' \
    --body '{"amount": 97, "currencyCode": "RhVelY26", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 89, "vat": 27}' \
    > test.out 2>&1
eval_tap $? 134 'SimulatePaymentOrderNotification' test.out

#- 135 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Pj4bEqY3' \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentOrderChargeStatus' test.out

#- 136 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 136 'GetPlatformWalletConfig' test.out

#- 137 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Twitch", "System"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdatePlatformWalletConfig' test.out

#- 138 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 138 'ResetPlatformWalletConfig' test.out

#- 139 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lH8VH8Ns", "eventTopic": "6xAi67jp", "maxAwarded": 57, "maxAwardedPerUser": 2, "namespaceExpression": "lwslozZC", "rewardCode": "L0k7YqjY", "rewardConditions": [{"condition": "5FCOjlBf", "conditionName": "yEd82XMu", "eventName": "0pfuKXZ3", "rewardItems": [{"duration": 97, "itemId": "AgDln2g1", "quantity": 38}, {"duration": 43, "itemId": "cvSW00Td", "quantity": 51}, {"duration": 39, "itemId": "VhB4MLpC", "quantity": 90}]}, {"condition": "g5j5P850", "conditionName": "S544j8oC", "eventName": "ObnPBB3p", "rewardItems": [{"duration": 43, "itemId": "oQeA2Og9", "quantity": 80}, {"duration": 46, "itemId": "uZRcWDP3", "quantity": 50}, {"duration": 76, "itemId": "YuwlHt3X", "quantity": 51}]}, {"condition": "79MxZGDs", "conditionName": "prwHosVs", "eventName": "qnTxLZtj", "rewardItems": [{"duration": 80, "itemId": "UzP8HzPt", "quantity": 76}, {"duration": 80, "itemId": "kdYbXW1e", "quantity": 51}, {"duration": 53, "itemId": "LtnFfWoe", "quantity": 15}]}], "userIdExpression": "kl9Fyz1h"}' \
    > test.out 2>&1
eval_tap $? 139 'CreateReward' test.out

#- 140 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '5pANkGsq' \
    --limit '8' \
    --offset '14' \
    --sortBy '["rewardCode:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 140 'QueryRewards' test.out

#- 141 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'ExportRewards' test.out

#- 142 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'ImportRewards' test.out

#- 143 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'UzwoZXsh' \
    > test.out 2>&1
eval_tap $? 143 'GetReward' test.out

#- 144 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'o5V4gUtl' \
    --body '{"description": "a5p18gOg", "eventTopic": "VaZ9vcrb", "maxAwarded": 20, "maxAwardedPerUser": 88, "namespaceExpression": "xgmsOmX3", "rewardCode": "eDzniGJh", "rewardConditions": [{"condition": "vbiN3kjb", "conditionName": "l7ELRa4Q", "eventName": "dP0T5NmG", "rewardItems": [{"duration": 38, "itemId": "jue3TxzN", "quantity": 41}, {"duration": 45, "itemId": "kiR0BcNi", "quantity": 5}, {"duration": 30, "itemId": "fxhHQnlp", "quantity": 95}]}, {"condition": "zSrp6M06", "conditionName": "rop1EKoC", "eventName": "FKizrTuf", "rewardItems": [{"duration": 100, "itemId": "eMnooqXh", "quantity": 19}, {"duration": 18, "itemId": "EW0QxykW", "quantity": 70}, {"duration": 47, "itemId": "Bzg5cLbN", "quantity": 51}]}, {"condition": "yQ60Z2wX", "conditionName": "s2npBaK0", "eventName": "RYlqX5eG", "rewardItems": [{"duration": 69, "itemId": "49tyx1HM", "quantity": 12}, {"duration": 47, "itemId": "uX6BMLtw", "quantity": 40}, {"duration": 91, "itemId": "ja0iR71E", "quantity": 45}]}], "userIdExpression": "OaUTQQzr"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateReward' test.out

#- 145 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'gobQ29q0' \
    > test.out 2>&1
eval_tap $? 145 'DeleteReward' test.out

#- 146 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'buz0zCWD' \
    --body '{"payload": {"ZHX2egsy": {}, "shIhTpLJ": {}, "BGJtAa9T": {}}}' \
    > test.out 2>&1
eval_tap $? 146 'CheckEventCondition' test.out

#- 147 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '4H3IJISu' \
    --body '{"conditionName": "uh7kriG2", "userId": "AhPcfVe6"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteRewardConditionRecord' test.out

#- 148 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'UAHsSJiV' \
    --limit '65' \
    --offset '7' \
    --start 'yRrRdsgP' \
    --storeId '5j12sMwn' \
    --viewId '7tcJ2S9E' \
    > test.out 2>&1
eval_tap $? 148 'QuerySections' test.out

#- 149 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'rWsICizS' \
    --body '{"active": true, "displayOrder": 98, "endDate": "1989-09-10T00:00:00Z", "ext": {"ptC6V1Cv": {}, "rCVfuQwv": {}, "oNGopZYb": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 1, "itemCount": 68, "rule": "SEQUENCE"}, "items": [{"id": "B36GpQNe", "sku": "0T5P569B"}, {"id": "Hm9hjXef", "sku": "fywKQXyk"}, {"id": "NFyedznn", "sku": "5FvPYA0v"}], "localizations": {"8kB2dy4A": {"description": "eOtMapC4", "localExt": {"V3lbob0Z": {}, "dtc3ZhMk": {}, "JXuVtBL9": {}}, "longDescription": "qm2T99rU", "title": "8ryinMsG"}, "8VSfi3en": {"description": "z26dr2Po", "localExt": {"mIbVCbq8": {}, "IflrmeHP": {}, "I4VessLo": {}}, "longDescription": "IS56z20m", "title": "R6VKfiZM"}, "ZZZYaZoB": {"description": "VhxhDKp4", "localExt": {"gc1mQuEQ": {}, "NzJWEHt9": {}, "mfLyxo5d": {}}, "longDescription": "PRlc4uDx", "title": "FXodC1Qy"}}, "name": "7ZxdXfiq", "rotationType": "NONE", "startDate": "1986-11-15T00:00:00Z", "viewId": "GJGOLJ7g"}' \
    > test.out 2>&1
eval_tap $? 149 'CreateSection' test.out

#- 150 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'E4hI75V6' \
    > test.out 2>&1
eval_tap $? 150 'PurgeExpiredSection' test.out

#- 151 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'e8w54gLq' \
    --storeId '41LukA4B' \
    > test.out 2>&1
eval_tap $? 151 'GetSection' test.out

#- 152 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6lqKqwf7' \
    --storeId 'Q2icr6yd' \
    --body '{"active": true, "displayOrder": 14, "endDate": "1990-08-10T00:00:00Z", "ext": {"K64fPodG": {}, "WZ1mV31k": {}, "ySsiaeGC": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 28, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "PMWblZQ2", "sku": "VuKNons9"}, {"id": "CLizOqHd", "sku": "frAtiJkf"}, {"id": "kV6XDDpH", "sku": "BcTAngjl"}], "localizations": {"P4aKeNYJ": {"description": "zxYQKLzI", "localExt": {"xCofcfiz": {}, "8daPgYiB": {}, "HXoEpNjR": {}}, "longDescription": "JVrKbpOv", "title": "z0BbYbN3"}, "ogBracV9": {"description": "UMDFc47q", "localExt": {"cSof9GKp": {}, "I9pPZC58": {}, "8zG9TCdx": {}}, "longDescription": "nlxzgaXz", "title": "ftME3WTK"}, "3LnbzjFY": {"description": "aFRTqA15", "localExt": {"CVgOLgWz": {}, "AvkEUACN": {}, "1XV94P0e": {}}, "longDescription": "pod0RfQc", "title": "tN3KfXUJ"}}, "name": "gmgcGW3e", "rotationType": "FIXED_PERIOD", "startDate": "1984-01-30T00:00:00Z", "viewId": "7f7ZvVrR"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSection' test.out

#- 153 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'qLkbPTKe' \
    --storeId '2lIrYDpb' \
    > test.out 2>&1
eval_tap $? 153 'DeleteSection' test.out

#- 154 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'ListStores' test.out

#- 155 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "uAbcqRYZ", "defaultRegion": "PekExDx6", "description": "TKcUfIH7", "supportedLanguages": ["tNOf03hU", "piDZSL1M", "6ArhPRYo"], "supportedRegions": ["AvawOzq7", "YYpgrhes", "lupE8Z0K"], "title": "pIk7W1Wh"}' \
    > test.out 2>&1
eval_tap $? 155 'CreateStore' test.out

#- 156 ImportStore
eval_tap 0 156 'ImportStore # SKIP deprecated' test.out

#- 157 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetPublishedStore' test.out

#- 158 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeletePublishedStore' test.out

#- 159 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetPublishedStoreBackup' test.out

#- 160 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'RollbackPublishedStore' test.out

#- 161 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'j6tgulMo' \
    > test.out 2>&1
eval_tap $? 161 'GetStore' test.out

#- 162 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'in0wkD7n' \
    --body '{"defaultLanguage": "UZTyecso", "defaultRegion": "7bxkywUV", "description": "BkyhirPe", "supportedLanguages": ["apGTQ4XN", "RWk17C3q", "SC9zgnzH"], "supportedRegions": ["zlbCT0NH", "fSmLM6Y2", "Gc2GjX3a"], "title": "AZPGE0A5"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateStore' test.out

#- 163 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NnogLduy' \
    > test.out 2>&1
eval_tap $? 163 'DeleteStore' test.out

#- 164 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '242WTvwL' \
    --action 'UPDATE' \
    --itemSku 'MPqhGynV' \
    --itemType 'EXTENSION' \
    --limit '23' \
    --offset '59' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'vJKHu3tm' \
    --updatedAtStart 'kwpJYn3T' \
    > test.out 2>&1
eval_tap $? 164 'QueryChanges' test.out

#- 165 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'TCqnSBDi' \
    > test.out 2>&1
eval_tap $? 165 'PublishAll' test.out

#- 166 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'DIjKH2GB' \
    > test.out 2>&1
eval_tap $? 166 'PublishSelected' test.out

#- 167 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'KB30lpDz' \
    > test.out 2>&1
eval_tap $? 167 'SelectAllRecords' test.out

#- 168 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'j0Ge9gp4' \
    --action 'DELETE' \
    --itemSku 'I3fXCVkl' \
    --itemType 'CODE' \
    --type 'STORE' \
    --updatedAtEnd 'SAHrmafg' \
    --updatedAtStart 'KE0KZYLQ' \
    > test.out 2>&1
eval_tap $? 168 'GetStatistic' test.out

#- 169 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xi46Xsrt' \
    > test.out 2>&1
eval_tap $? 169 'UnselectAllRecords' test.out

#- 170 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eG5Ws312' \
    --namespace $AB_NAMESPACE \
    --storeId '4zxT6D0p' \
    > test.out 2>&1
eval_tap $? 170 'SelectRecord' test.out

#- 171 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '0peHkwEg' \
    --namespace $AB_NAMESPACE \
    --storeId 'd9IHV7N7' \
    > test.out 2>&1
eval_tap $? 171 'UnselectRecord' test.out

#- 172 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '9PRhF8iz' \
    --targetStoreId 'bn7NaaqD' \
    > test.out 2>&1
eval_tap $? 172 'CloneStore' test.out

#- 173 ExportStore
eval_tap 0 173 'ExportStore # SKIP deprecated' test.out

#- 174 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId '5trOPdVS' \
    --limit '82' \
    --offset '43' \
    --sku 'b3iqFYYA' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'kDD5U068' \
    > test.out 2>&1
eval_tap $? 174 'QuerySubscriptions' test.out

#- 175 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WRsnWV0B' \
    > test.out 2>&1
eval_tap $? 175 'RecurringChargeSubscription' test.out

#- 176 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'CM517q9B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'GetTicketDynamic' test.out

#- 177 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'NRUItsKd' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "kTnuGKkU"}' \
    > test.out 2>&1
eval_tap $? 177 'DecreaseTicketSale' test.out

#- 178 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'oQshXqRf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetTicketBoothID' test.out

#- 179 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kp3MHnL9' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 80, "orderNo": "6w73d6Cs"}' \
    > test.out 2>&1
eval_tap $? 179 'IncreaseTicketSale' test.out

#- 180 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'N40VDiAT' \
    --body '{"achievements": [{"id": "cMUIRNOb", "value": 31}, {"id": "1rOxQR8j", "value": 97}, {"id": "eVbeD5O9", "value": 20}], "steamUserId": "y8lE23vc"}' \
    > test.out 2>&1
eval_tap $? 180 'UnlockSteamUserAchievement' test.out

#- 181 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ZO0Ahqaj' \
    --xboxUserId 'rwZ48eo5' \
    > test.out 2>&1
eval_tap $? 181 'GetXblUserAchievements' test.out

#- 182 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'l16232cn' \
    --body '{"achievements": [{"id": "wpFapviI", "percentComplete": 84}, {"id": "hIinoTk9", "percentComplete": 65}, {"id": "dxAvRr1t", "percentComplete": 94}], "serviceConfigId": "zZDtqv7G", "titleId": "wTffyWuy", "xboxUserId": "sAMcS7pP"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateXblUserAchievement' test.out

#- 183 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'QifjDImP' \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeCampaign' test.out

#- 184 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'cq4pdhy8' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeEntitlement' test.out

#- 185 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'YRG8SgIA' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeFulfillment' test.out

#- 186 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'TosQIHAL' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeIntegration' test.out

#- 187 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'i33a4hkG' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeOrder' test.out

#- 188 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'eRoJNbdT' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizePayment' test.out

#- 189 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rrzOfuCH' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeSubscription' test.out

#- 190 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'RuDtH6Is' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeWallet' test.out

#- 191 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '398tTSIB' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 191 'GetUserDLC' test.out

#- 192 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'v6SOzi8Y' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '5OW9EVyL' \
    --features '["jAF7zsnf", "cdgfJ8Z3", "LEZUkYgU"]' \
    --itemId '["SufBEqTV", "NTruu1WR", "2tYb45nP"]' \
    --limit '65' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlements' test.out

#- 193 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'lJHEZRJT' \
    --body '[{"endDate": "1989-04-08T00:00:00Z", "grantedCode": "me7C1KxL", "itemId": "qA7GtYNt", "itemNamespace": "R28UmWMT", "language": "uw-tnyx_887", "quantity": 46, "region": "Mb3bkGhV", "source": "OTHER", "startDate": "1978-07-16T00:00:00Z", "storeId": "LVv4tPte"}, {"endDate": "1990-07-10T00:00:00Z", "grantedCode": "ur5xLhk4", "itemId": "SjvcjsNA", "itemNamespace": "F0O22EBC", "language": "Tex-lW", "quantity": 56, "region": "kKkiWSE1", "source": "GIFT", "startDate": "1977-12-29T00:00:00Z", "storeId": "OIXspsix"}, {"endDate": "1977-11-11T00:00:00Z", "grantedCode": "vKvrgilm", "itemId": "CRfYYzFS", "itemNamespace": "2frJw7gD", "language": "aZ", "quantity": 92, "region": "9Y84AJQa", "source": "REWARD", "startDate": "1983-04-25T00:00:00Z", "storeId": "wSLULlQm"}]' \
    > test.out 2>&1
eval_tap $? 193 'GrantUserEntitlement' test.out

#- 194 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rrbMj7x6' \
    --activeOnly 'true' \
    --appId '0Ne4lhVx' \
    > test.out 2>&1
eval_tap $? 194 'GetUserAppEntitlementByAppId' test.out

#- 195 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'cMSo4Vny' \
    --activeOnly 'true' \
    --limit '5' \
    --offset '35' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlementsByAppType' test.out

#- 196 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gAc5sNe2' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'rst91uNm' \
    > test.out 2>&1
eval_tap $? 196 'GetUserEntitlementByItemId' test.out

#- 197 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Y1NUuP29' \
    --ids '["5RtrFMAf", "eHoRACBd", "CJ5qs5aH"]' \
    > test.out 2>&1
eval_tap $? 197 'GetUserActiveEntitlementsByItemIds' test.out

#- 198 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'SeTESbgq' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'bV0Mfz6d' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementBySku' test.out

#- 199 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JWXtqI8A' \
    --appIds '["ZMENM0xS", "76tZsvVe", "FyH8WGu2"]' \
    --itemIds '["mzdu7yBC", "rWv6uHwV", "PUlx48xh"]' \
    --skus '["otbn1R7h", "p6kl27vT", "z2CxFlMM"]' \
    > test.out 2>&1
eval_tap $? 199 'ExistsAnyUserActiveEntitlement' test.out

#- 200 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'okM2WeLw' \
    --itemIds '["LJSiEYdP", "5I4pTdll", "WNDhyyIA"]' \
    > test.out 2>&1
eval_tap $? 200 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 201 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4cJV7IhW' \
    --appId 'rS9u4Jr3' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 202 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BOhxMSOm' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ThH4hlak' \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementOwnershipByItemId' test.out

#- 203 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bw69MVXr' \
    --ids '["fkrX55ez", "0nZ9wgEw", "0JF7dWYf"]' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementOwnershipByItemIds' test.out

#- 204 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YJqhejx4' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'kmDCF6yH' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipBySku' test.out

#- 205 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U6bcevH5' \
    --entitlementIds 'bGtpWSi9' \
    > test.out 2>&1
eval_tap $? 205 'RevokeUserEntitlements' test.out

#- 206 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'UMnbgZUm' \
    --namespace $AB_NAMESPACE \
    --userId 'jciBZ4TL' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlement' test.out

#- 207 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'lmluAfpy' \
    --namespace $AB_NAMESPACE \
    --userId 'UQI6wAza' \
    --body '{"endDate": "1992-12-14T00:00:00Z", "nullFieldList": ["lFImN5Zw", "GPtgiojT", "2BqROAkJ"], "startDate": "1988-04-02T00:00:00Z", "status": "CONSUMED", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 207 'UpdateUserEntitlement' test.out

#- 208 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'y3hbnSSN' \
    --namespace $AB_NAMESPACE \
    --userId 'vtrdOF4H' \
    --body '{"options": ["fSBEqsIr", "aGKwkHOf", "Jyq3gHWi"], "requestId": "ak57KOwT", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 208 'ConsumeUserEntitlement' test.out

#- 209 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'hIoeD8hB' \
    --namespace $AB_NAMESPACE \
    --userId 'LRrhRqeo' \
    > test.out 2>&1
eval_tap $? 209 'DisableUserEntitlement' test.out

#- 210 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'gY4OWy1w' \
    --namespace $AB_NAMESPACE \
    --userId '89EE7m41' \
    > test.out 2>&1
eval_tap $? 210 'EnableUserEntitlement' test.out

#- 211 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'RQSvpqwP' \
    --namespace $AB_NAMESPACE \
    --userId 'ptF7l1wC' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementHistories' test.out

#- 212 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'PXelhjnF' \
    --namespace $AB_NAMESPACE \
    --userId 'h6SzFxVC' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserEntitlement' test.out

#- 213 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'VUbiDTPF' \
    --body '{"duration": 71, "endDate": "1972-01-28T00:00:00Z", "itemId": "3IVFpzQh", "itemSku": "6c2WuRTn", "language": "TBJxyfA6", "order": {"currency": {"currencyCode": "KYu3tR5J", "currencySymbol": "6zC08GRD", "currencyType": "REAL", "decimals": 71, "namespace": "BcvZD4yp"}, "ext": {"90aDCMvK": {}, "IoPLJqf9": {}, "oMasXOWY": {}}, "free": false}, "orderNo": "bXAOZsTS", "origin": "GooglePlay", "quantity": 96, "region": "cFlyfdMT", "source": "DLC", "startDate": "1978-08-12T00:00:00Z", "storeId": "ECzqb5dy"}' \
    > test.out 2>&1
eval_tap $? 213 'FulfillItem' test.out

#- 214 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'rSbXtPCh' \
    --body '{"code": "yC8Te1cR", "language": "xZRw_773", "region": "ZNdCImup"}' \
    > test.out 2>&1
eval_tap $? 214 'RedeemCode' test.out

#- 215 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '0XkYvbKg' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "B3HqGKM4", "namespace": "h2WnUgNf"}, "item": {"itemId": "DAHuffkD", "itemSku": "gJFtt9gz", "itemType": "kcIQkHz3"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "gxZOFxhE", "namespace": "LXHDq2zf"}, "item": {"itemId": "NGHcBNcw", "itemSku": "IZ7D5opu", "itemType": "ImGBgD6l"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "Q5PiiHQp", "namespace": "JaF0zEDr"}, "item": {"itemId": "ccrqzF0I", "itemSku": "F3kVembR", "itemType": "Jwnropmy"}, "quantity": 84, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillRewards' test.out

#- 216 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '1hez6iWP' \
    --endTime 'O1QJOL3Y' \
    --limit '2' \
    --offset '76' \
    --productId 'F4XOHkr8' \
    --startTime 'jeJgQuWs' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 216 'QueryUserIAPOrders' test.out

#- 217 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FPfWVHXi' \
    > test.out 2>&1
eval_tap $? 217 'QueryAllUserIAPOrders' test.out

#- 218 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TjCOneoO' \
    --endTime 'JDhTfCeB' \
    --limit '36' \
    --offset '80' \
    --startTime 'hKyn5opQ' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPConsumeHistory' test.out

#- 219 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zyqcBR4d' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Xou_ksMU", "productId": "JTCmqqka", "region": "7DybuJRV", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 219 'MockFulfillIAPItem' test.out

#- 220 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xVzLOLv8' \
    --itemId 'KScMtdS8' \
    --limit '88' \
    --offset '5' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserOrders' test.out

#- 221 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yjJqQjvS' \
    --body '{"currencyCode": "SahLL6l9", "currencyNamespace": "mhvG6MAG", "discountedPrice": 97, "ext": {"BWvoUvod": {}, "U9IRUOz8": {}, "uxGRvyq3": {}}, "itemId": "AECirjJc", "language": "SZjaGAWf", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 40, "quantity": 24, "region": "Rih0jGde", "returnUrl": "EjKRIHtJ", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 221 'AdminCreateUserOrder' test.out

#- 222 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'pVYBP4bc' \
    --itemId 'ezqhRIYT' \
    > test.out 2>&1
eval_tap $? 222 'CountOfPurchasedItem' test.out

#- 223 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1K5Cx4mh' \
    --userId 'Un5DL2Od' \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrder' test.out

#- 224 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'NQx89vz7' \
    --userId 'nuxzNDZ5' \
    --body '{"status": "CHARGED", "statusReason": "cB04qDZQ"}' \
    > test.out 2>&1
eval_tap $? 224 'UpdateUserOrderStatus' test.out

#- 225 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OAIwovxb' \
    --userId 'snwbGwmO' \
    > test.out 2>&1
eval_tap $? 225 'FulfillUserOrder' test.out

#- 226 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'IklgUjdH' \
    --userId 'WBXGqlPw' \
    > test.out 2>&1
eval_tap $? 226 'GetUserOrderGrant' test.out

#- 227 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Xq1JLbmK' \
    --userId 'EriZbnP4' \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrderHistories' test.out

#- 228 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'siWCJMgT' \
    --userId 'eDZXHGFE' \
    --body '{"additionalData": {"cardSummary": "UbnItvzt"}, "authorisedTime": "1978-08-26T00:00:00Z", "chargebackReversedTime": "1996-02-04T00:00:00Z", "chargebackTime": "1984-04-04T00:00:00Z", "chargedTime": "1994-12-01T00:00:00Z", "createdTime": "1991-01-04T00:00:00Z", "currency": {"currencyCode": "NehLZSM1", "currencySymbol": "Z8yXCQaK", "currencyType": "VIRTUAL", "decimals": 38, "namespace": "FTEHQljH"}, "customParameters": {"ob00S8ca": {}, "6erpPxHg": {}, "cY3LuKFi": {}}, "extOrderNo": "eePkjeK2", "extTxId": "bunWRGOd", "extUserId": "aUErwjq8", "issuedAt": "1986-04-10T00:00:00Z", "metadata": {"MACAoL5k": "FpedtFwa", "xCgUlUUO": "4qgyL0rO", "lbkYR1Wx": "wAYdhnFO"}, "namespace": "cIppTc3m", "nonceStr": "GfD1sbBi", "paymentMethod": "QgtFtb80", "paymentMethodFee": 63, "paymentOrderNo": "mCWTf0uA", "paymentProvider": "WALLET", "paymentProviderFee": 29, "paymentStationUrl": "7QFCIvRD", "price": 27, "refundedTime": "1996-01-20T00:00:00Z", "salesTax": 66, "sandbox": false, "sku": "RKoSaFw0", "status": "REFUNDING", "statusReason": "jV9va6QT", "subscriptionId": "8ZUAYVWz", "subtotalPrice": 84, "targetNamespace": "KQFz8ZXa", "targetUserId": "ZF94xfwy", "tax": 92, "totalPrice": 71, "totalTax": 55, "txEndTime": "1978-03-21T00:00:00Z", "type": "typCugNZ", "userId": "ULofgf94", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 228 'ProcessUserOrderNotification' test.out

#- 229 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'u13cK9RP' \
    --userId '3JFQTs4N' \
    > test.out 2>&1
eval_tap $? 229 'DownloadUserOrderReceipt' test.out

#- 230 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '2PcWSPbk' \
    --body '{"currencyCode": "PWS24H6m", "currencyNamespace": "x9DxnVGX", "customParameters": {"ES0egSpn": {}, "WZHkQZJR": {}, "QXmTy1mJ": {}}, "description": "7sjpyxbF", "extOrderNo": "oPG6x3Za", "extUserId": "jWLfYd2U", "itemType": "COINS", "language": "BTbj-CBct-127", "metadata": {"sODbnskW": "TJuUheYr", "gYFAofjG": "RNYUpTDZ", "iOzIVSZk": "YVW9htNe"}, "notifyUrl": "AfT6u5W7", "omitNotification": true, "platform": "vr8rMkHb", "price": 62, "recurringPaymentOrderNo": "OlV5xWKy", "region": "93D8JoIG", "returnUrl": "K990Z5dF", "sandbox": true, "sku": "3CZRCG8N", "subscriptionId": "D1eQphkU", "title": "OIafClPM"}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserPaymentOrder' test.out

#- 231 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sOD35bzv' \
    --userId 'BMWiVvnu' \
    --body '{"description": "c3EVcKa3"}' \
    > test.out 2>&1
eval_tap $? 231 'RefundUserPaymentOrder' test.out

#- 232 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Bmk8qcEE' \
    --body '{"code": "ixLkivNp", "orderNo": "rcxVCBTe"}' \
    > test.out 2>&1
eval_tap $? 232 'ApplyUserRedemption' test.out

#- 233 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'bW1ztDnf' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'lRUJ0DHe' \
    --limit '43' \
    --offset '56' \
    --sku 'ul9uU9Uj' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserSubscriptions' test.out

#- 234 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'RRNDR3Xc' \
    --excludeSystem 'false' \
    --limit '72' \
    --offset '45' \
    --subscriptionId 'lpvwPdt2' \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscriptionActivities' test.out

#- 235 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '7foW7ZP5' \
    --body '{"grantDays": 91, "itemId": "qI9Qq1Mc", "language": "9Si4xK9c", "reason": "uYg9b4eU", "region": "DjbaJcDL", "source": "FIkM38bI"}' \
    > test.out 2>&1
eval_tap $? 235 'PlatformSubscribeSubscription' test.out

#- 236 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fVtiMnwM' \
    --itemId 'blVotHsE' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 237 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZK2DWaEF' \
    --userId '6Ewzttat' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscription' test.out

#- 238 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fwO9wQB4' \
    --userId 'Ji6rG578' \
    > test.out 2>&1
eval_tap $? 238 'DeleteUserSubscription' test.out

#- 239 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pAq4B4kx' \
    --userId '8HGp7jJM' \
    --force 'true' \
    --body '{"immediate": false, "reason": "Jy1LXtvT"}' \
    > test.out 2>&1
eval_tap $? 239 'CancelSubscription' test.out

#- 240 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0QdNUK7D' \
    --userId 'KQxAgsN5' \
    --body '{"grantDays": 94, "reason": "OyqlJL20"}' \
    > test.out 2>&1
eval_tap $? 240 'GrantDaysToSubscription' test.out

#- 241 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4Jn0AOUI' \
    --userId 'zCtH6rHu' \
    --excludeFree 'false' \
    --limit '98' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionBillingHistories' test.out

#- 242 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1mNajlLd' \
    --userId '2aoS7kJc' \
    --body '{"additionalData": {"cardSummary": "0z0tLVG1"}, "authorisedTime": "1978-02-16T00:00:00Z", "chargebackReversedTime": "1984-01-15T00:00:00Z", "chargebackTime": "1982-10-02T00:00:00Z", "chargedTime": "1996-10-28T00:00:00Z", "createdTime": "1997-08-20T00:00:00Z", "currency": {"currencyCode": "HwWyOpdj", "currencySymbol": "4P5OOFyT", "currencyType": "REAL", "decimals": 21, "namespace": "Ii7vWxMo"}, "customParameters": {"wV8pgYLz": {}, "KxUi59qk": {}, "Ub9g2nH7": {}}, "extOrderNo": "62TIuf54", "extTxId": "u8hor7zZ", "extUserId": "5DPL0RX0", "issuedAt": "1994-06-23T00:00:00Z", "metadata": {"aD2jM7t1": "CztWMI95", "wvipuT89": "RpP6Rmac", "KQRULmxq": "RHFWIcuy"}, "namespace": "WnSAAHTU", "nonceStr": "tlFocOE2", "paymentMethod": "QJfwSeBs", "paymentMethodFee": 38, "paymentOrderNo": "oheXPb5Y", "paymentProvider": "XSOLLA", "paymentProviderFee": 34, "paymentStationUrl": "ulvn2r9H", "price": 85, "refundedTime": "1985-04-13T00:00:00Z", "salesTax": 92, "sandbox": true, "sku": "sf9yrAVM", "status": "CHARGEBACK", "statusReason": "avD0CSTx", "subscriptionId": "jAbCfPkF", "subtotalPrice": 64, "targetNamespace": "a2bGYpvD", "targetUserId": "1XE3hPU4", "tax": 41, "totalPrice": 22, "totalTax": 87, "txEndTime": "1987-02-20T00:00:00Z", "type": "FwKZ8Gke", "userId": "fEgCoAxs", "vat": 21}' \
    > test.out 2>&1
eval_tap $? 242 'ProcessUserSubscriptionNotification' test.out

#- 243 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'MaN00RuZ' \
    --namespace $AB_NAMESPACE \
    --userId 'cB4bteJM' \
    --body '{"count": 5, "orderNo": "CshxM7J9"}' \
    > test.out 2>&1
eval_tap $? 243 'AcquireUserTicket' test.out

#- 244 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'jVc11UZM' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserCurrencyWallets' test.out

#- 245 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'KQkT0JbL' \
    --namespace $AB_NAMESPACE \
    --userId 'miKIypbE' \
    --limit '34' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 245 'ListUserCurrencyTransactions' test.out

#- 246 CheckWallet
eval_tap 0 246 'CheckWallet # SKIP deprecated' test.out

#- 247 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'zp2o79qg' \
    --namespace $AB_NAMESPACE \
    --userId 'pEnKjphf' \
    --body '{"amount": 55, "expireAt": "1999-01-04T00:00:00Z", "origin": "Epic", "reason": "rYHWMWQ6", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 247 'CreditUserWallet' test.out

#- 248 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'GTbAIOEn' \
    --namespace $AB_NAMESPACE \
    --userId 'ewPqzXg4' \
    --body '{"amount": 100, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 248 'PayWithUserWallet' test.out

#- 249 GetUserWallet
eval_tap 0 249 'GetUserWallet # SKIP deprecated' test.out

#- 250 DebitUserWallet
eval_tap 0 250 'DebitUserWallet # SKIP deprecated' test.out

#- 251 DisableUserWallet
eval_tap 0 251 'DisableUserWallet # SKIP deprecated' test.out

#- 252 EnableUserWallet
eval_tap 0 252 'EnableUserWallet # SKIP deprecated' test.out

#- 253 ListUserWalletTransactions
eval_tap 0 253 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 254 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '1QgpCCnA' \
    > test.out 2>&1
eval_tap $? 254 'ListViews' test.out

#- 255 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'Awahb7Zv' \
    --body '{"displayOrder": 61, "localizations": {"Oh54kfu4": {"description": "I3aZSvXr", "localExt": {"zt24WH7I": {}, "2TobooGE": {}, "8bfUBp3i": {}}, "longDescription": "aWuvXYVL", "title": "Q558GS6i"}, "oeFkSYXO": {"description": "4PMCv98M", "localExt": {"U42iWhL0": {}, "GGcNi6Cz": {}, "wYfYqbSv": {}}, "longDescription": "nwzNrb34", "title": "5vgGuIxh"}, "FeDJpZjD": {"description": "HDOUuJKe", "localExt": {"1aiyxMAM": {}, "BnoUAXqP": {}, "GwEUIzJu": {}}, "longDescription": "2HWgRkLN", "title": "g7OlCB38"}}, "name": "foWVAr0p"}' \
    > test.out 2>&1
eval_tap $? 255 'CreateView' test.out

#- 256 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'BuApQs8n' \
    --storeId 'rpYMj1EN' \
    > test.out 2>&1
eval_tap $? 256 'GetView' test.out

#- 257 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'LY3WzrXi' \
    --storeId 'J7UZbKuv' \
    --body '{"displayOrder": 58, "localizations": {"AJQhcV8C": {"description": "CHSa1wp6", "localExt": {"y58Da3La": {}, "wvPvRxXq": {}, "IcLSx0fK": {}}, "longDescription": "FSyz5KGf", "title": "TSvbS15z"}, "yiWzstZY": {"description": "mVMWFvoG", "localExt": {"WD0LFEkY": {}, "Y7WgZPZg": {}, "M8ZheMog": {}}, "longDescription": "L9lTCpVX", "title": "ZSAQSBUt"}, "fjuav0Tm": {"description": "vRhxtqW8", "localExt": {"lPUn7gGI": {}, "7mZ138gP": {}, "916I9S5y": {}}, "longDescription": "9Gyc6jC0", "title": "xqa4ELTv"}}, "name": "vqkvew1c"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateView' test.out

#- 258 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ihskns4B' \
    --storeId 'hm4iMlRd' \
    > test.out 2>&1
eval_tap $? 258 'DeleteView' test.out

#- 259 QueryWallets
eval_tap 0 259 'QueryWallets # SKIP deprecated' test.out

#- 260 GetWallet
eval_tap 0 260 'GetWallet # SKIP deprecated' test.out

#- 261 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '2JIP3vmq' \
    --end 'x1IpMRVu' \
    --start 'RsYPU569' \
    > test.out 2>&1
eval_tap $? 261 'SyncOrders' test.out

#- 262 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["XY71fPti", "9Rb4eQTL", "cGkxcrfW"], "apiKey": "41YhUvFf", "authoriseAsCapture": true, "blockedPaymentMethods": ["XJQqp6Dh", "qZPQHNrB", "y6rz5FkX"], "clientKey": "o8kTAUIO", "dropInSettings": "L0dDivuu", "liveEndpointUrlPrefix": "Lfcmf42s", "merchantAccount": "IssHbsJQ", "notificationHmacKey": "F5lSB6u3", "notificationPassword": "wMpQZ3Ar", "notificationUsername": "CUCSKlK2", "returnUrl": "IAsU8j8o", "settings": "Zl4RrXzb"}' \
    > test.out 2>&1
eval_tap $? 262 'TestAdyenConfig' test.out

#- 263 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "HYmHRXms", "privateKey": "5nkfzuZZ", "publicKey": "RaDklerR", "returnUrl": "38PF5EXJ"}' \
    > test.out 2>&1
eval_tap $? 263 'TestAliPayConfig' test.out

#- 264 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "z1pOpyQJ", "secretKey": "tJEzSddr"}' \
    > test.out 2>&1
eval_tap $? 264 'TestCheckoutConfig' test.out

#- 265 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'mlzcRXlM' \
    --region 'gS0ihlEb' \
    > test.out 2>&1
eval_tap $? 265 'DebugMatchedPaymentMerchantConfig' test.out

#- 266 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "2gWu7aRF", "clientSecret": "oHg4r65R", "returnUrl": "OEfqzWID", "webHookId": "79ra9oSk"}' \
    > test.out 2>&1
eval_tap $? 266 'TestPayPalConfig' test.out

#- 267 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["AxiJlz5l", "OvbIhOJy", "C3bvajsc"], "publishableKey": "HXT6b5GB", "secretKey": "Sqlx7wjq", "webhookSecret": "qq4C4rNW"}' \
    > test.out 2>&1
eval_tap $? 267 'TestStripeConfig' test.out

#- 268 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "6vgTjkUF", "key": "San6l1HE", "mchid": "0Ct0ee2q", "returnUrl": "wZb2iXm1"}' \
    > test.out 2>&1
eval_tap $? 268 'TestWxPayConfig' test.out

#- 269 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ivJlGX1Y", "flowCompletionUrl": "to2Jg8Eh", "merchantId": 24, "projectId": 78, "projectSecretKey": "W8TinL0i"}' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfig' test.out

#- 270 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'KhCz7gwb' \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentMerchantConfig' test.out

#- 271 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'SSfTrdon' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["wtrNvpQl", "IJ8aYHEf", "k0wAkP8y"], "apiKey": "YkmrkGCt", "authoriseAsCapture": true, "blockedPaymentMethods": ["nEuVbJkI", "of8K2zqa", "TiKRUb7R"], "clientKey": "7DUpV8ee", "dropInSettings": "OWsjD0sE", "liveEndpointUrlPrefix": "FSBxANQl", "merchantAccount": "k8Kijovv", "notificationHmacKey": "Yjl3mEV0", "notificationPassword": "3eKwsUr8", "notificationUsername": "bAAxkVJ8", "returnUrl": "9h4vHqmb", "settings": "gTBlHgXJ"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateAdyenConfig' test.out

#- 272 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'q2U4N04D' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 272 'TestAdyenConfigById' test.out

#- 273 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'qDrYUxEZ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "ofwlMQkM", "privateKey": "OW0qbFk6", "publicKey": "ROVxOCXk", "returnUrl": "kEW4Eyg5"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateAliPayConfig' test.out

#- 274 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '6HD3zDQu' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 274 'TestAliPayConfigById' test.out

#- 275 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '4QyZ0T0A' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "k7PbGYCR", "secretKey": "QvCfeG7D"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateCheckoutConfig' test.out

#- 276 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '9KS8h2IZ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 276 'TestCheckoutConfigById' test.out

#- 277 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'nHMRIGRX' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "FnmPE1C7", "clientSecret": "WWqpC0af", "returnUrl": "4soeVfUU", "webHookId": "NbfrcppP"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdatePayPalConfig' test.out

#- 278 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'YpKmhq1s' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestPayPalConfigById' test.out

#- 279 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'pLDm5eUC' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["JdeBNuO1", "vdJTlfSZ", "ImjZRUCd"], "publishableKey": "nIZDgjyO", "secretKey": "daCrTaRY", "webhookSecret": "FnKca2V3"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateStripeConfig' test.out

#- 280 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'LCRbhWVe' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestStripeConfigById' test.out

#- 281 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'psCFMAbM' \
    --validate 'true' \
    --body '{"appId": "zbVsljBb", "key": "r8JYrDrF", "mchid": "j3qraRdz", "returnUrl": "sZn5h5MA"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdateWxPayConfig' test.out

#- 282 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'vRrs6xvo' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 282 'UpdateWxPayConfigCert' test.out

#- 283 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HBG30xQH' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfigById' test.out

#- 284 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'xdvDKP8G' \
    --validate 'false' \
    --body '{"apiKey": "gZ504KR1", "flowCompletionUrl": "U9Nf0vks", "merchantId": 40, "projectId": 42, "projectSecretKey": "2s2ykJPt"}' \
    > test.out 2>&1
eval_tap $? 284 'UpdateXsollaConfig' test.out

#- 285 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'STDDLUf2' \
    > test.out 2>&1
eval_tap $? 285 'TestXsollaConfigById' test.out

#- 286 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'fKnY59x7' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateXsollaUIConfig' test.out

#- 287 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '8' \
    --namespace 'koMiRkTt' \
    --offset '63' \
    --region 'LzwNrfNu' \
    > test.out 2>&1
eval_tap $? 287 'QueryPaymentProviderConfig' test.out

#- 288 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "0y9CEnn7", "region": "wuQtI2tp", "sandboxTaxJarApiToken": "oXPx2kvk", "specials": ["WXPAY", "WALLET", "WALLET"], "taxJarApiToken": "JPdcIXP6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 288 'CreatePaymentProviderConfig' test.out

#- 289 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 289 'GetAggregatePaymentProviders' test.out

#- 290 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '9KmTbEQZ' \
    --region 'qlGKXcJg' \
    > test.out 2>&1
eval_tap $? 290 'DebugMatchedPaymentProviderConfig' test.out

#- 291 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 291 'GetSpecialPaymentProviders' test.out

#- 292 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '8nVDLqF1' \
    --body '{"aggregate": "ADYEN", "namespace": "ugwZMC41", "region": "Wzc9ln6J", "sandboxTaxJarApiToken": "exjhtLhC", "specials": ["WALLET", "ADYEN", "WXPAY"], "taxJarApiToken": "twJ7fKi5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentProviderConfig' test.out

#- 293 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YYpfZ7y1' \
    > test.out 2>&1
eval_tap $? 293 'DeletePaymentProviderConfig' test.out

#- 294 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxConfig' test.out

#- 295 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "8gtDMWyq", "taxJarApiToken": "mfY6sYoW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"8tISHy6J": "RengVc92", "0cFK0QfE": "mcPL7PWG", "fefdXi7H": "26DYtBcy"}}' \
    > test.out 2>&1
eval_tap $? 295 'UpdatePaymentTaxConfig' test.out

#- 296 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '64DTDSjW' \
    --end 'k0M41s7a' \
    --start 'fkUlwayA' \
    > test.out 2>&1
eval_tap $? 296 'SyncPaymentOrders' test.out

#- 297 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'CMYMCcBc' \
    --storeId 'UDUu2mYt' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRootCategories' test.out

#- 298 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'sygKjDQe' \
    --storeId 't3b5Lvqn' \
    > test.out 2>&1
eval_tap $? 298 'DownloadCategories' test.out

#- 299 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QIGGE3lE' \
    --namespace $AB_NAMESPACE \
    --language 'a4KcVn2D' \
    --storeId 'J6F9ZKHk' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetCategory' test.out

#- 300 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'lO1lH6nB' \
    --namespace $AB_NAMESPACE \
    --language 'gykEaIfk' \
    --storeId 'Oklf88Q0' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetChildCategories' test.out

#- 301 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'H1Dg3utO' \
    --namespace $AB_NAMESPACE \
    --language 'OXC6Wp7g' \
    --storeId 'TYFxMWIw' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetDescendantCategories' test.out

#- 302 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 302 'PublicListCurrencies' test.out

#- 303 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'pnFxa4Fx' \
    --region 'LLtyDLkU' \
    --storeId '05ZCXB32' \
    --appId '8ZDLr4cF' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetItemByAppId' test.out

#- 304 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId '3mmqPAY6' \
    --categoryPath '3NrkNEx3' \
    --features '6NNlJApL' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --language 'JCvwrnhh' \
    --limit '57' \
    --offset '48' \
    --region 'BWmBDqzK' \
    --sortBy '["createdAt", "displayOrder:asc", "createdAt:desc"]' \
    --storeId 'w2tNP0wP' \
    --tags 'yFJwdDVc' \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryItems' test.out

#- 305 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'UDLwyyqG' \
    --region 'dpig4TLN' \
    --storeId 't8d6HFzw' \
    --sku 'Pz8pWlQm' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetItemBySku' test.out

#- 306 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'GLq1ZkfL' \
    --region 'zZGRK1MN' \
    --storeId 'ZJNwOcCz' \
    --itemIds 'E1GYFQAh' \
    > test.out 2>&1
eval_tap $? 306 'PublicBulkGetItems' test.out

#- 307 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["gATcHbJB", "f9YVTVVW", "ywn0EBE8"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicValidateItemPurchaseCondition' test.out

#- 308 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SEASON' \
    --limit '8' \
    --offset '63' \
    --region 'wmSqPDoU' \
    --storeId 'vUlBoCTn' \
    --keyword 'UWYpWI7g' \
    --language 'nFaSjIas' \
    > test.out 2>&1
eval_tap $? 308 'PublicSearchItems' test.out

#- 309 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'y3fBttQG' \
    --namespace $AB_NAMESPACE \
    --language 'Pb2VLYO3' \
    --region 'GfvXKThG' \
    --storeId 'NaOrRG4s' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetApp' test.out

#- 310 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'kbjBhjLk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemDynamicData' test.out

#- 311 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '2QYA1mWv' \
    --namespace $AB_NAMESPACE \
    --language 'JeMVGwyd' \
    --populateBundle 'false' \
    --region 'r8powU4E' \
    --storeId 'kUwRyr7b' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetItem' test.out

#- 312 GetPaymentCustomization
eval_tap 0 312 'GetPaymentCustomization # SKIP deprecated' test.out

#- 313 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "GSHQoG0e", "paymentProvider": "XSOLLA", "returnUrl": "K5lfwqig", "ui": "kcISZPhT", "zipCode": "ifY6B05p"}' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentUrl' test.out

#- 314 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sz7tiwav' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetPaymentMethods' test.out

#- 315 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zEWQ4rJU' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUnpaidPaymentOrder' test.out

#- 316 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'W31i9Bqh' \
    --paymentProvider 'WXPAY' \
    --zipCode 'NvRUN3Ag' \
    --body '{"token": "x3of1sgV"}' \
    > test.out 2>&1
eval_tap $? 316 'Pay' test.out

#- 317 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zfVQ1kVW' \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckPaymentOrderPaidStatus' test.out

#- 318 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'YdNymQKN' \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentPublicConfig' test.out

#- 319 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'TbIZYCTM' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetQRCode' test.out

#- 320 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'v6i0EgiO' \
    --foreinginvoice 'Y11buZ6S' \
    --invoiceId 'k4jYePYl' \
    --payload 'mEATaYyl' \
    --redirectResult 'AU2PK2yp' \
    --resultCode '6NHze1qC' \
    --sessionId 'AZz4NKi5' \
    --status 'zz7JBc4v' \
    --token 'haGCSUNr' \
    --type 'O7M3wErz' \
    --userId 'DJdxkSCd' \
    --orderNo '2emr5QiW' \
    --paymentOrderNo '08R6hdQV' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'IGdtLVJv' \
    > test.out 2>&1
eval_tap $? 320 'PublicNormalizePaymentReturnUrl' test.out

#- 321 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'LGipxDMj' \
    --paymentOrderNo 'myfRoN4S' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 321 'GetPaymentTaxValue' test.out

#- 322 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '5WuBvMAa' \
    > test.out 2>&1
eval_tap $? 322 'GetRewardByCode' test.out

#- 323 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ERlF0tUB' \
    --limit '23' \
    --offset '90' \
    --sortBy '["rewardCode:asc", "namespace:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 323 'QueryRewards1' test.out

#- 324 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'xN1Hy9sv' \
    > test.out 2>&1
eval_tap $? 324 'GetReward1' test.out

#- 325 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'PublicListStores' test.out

#- 326 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["qWaK4BUc", "6l6Z3j94", "aj242zp2"]' \
    --itemIds '["uZyDhLyW", "we2hzyTg", "xbcuWJBU"]' \
    --skus '["iuMbPIHe", "EjRQ8KvZ", "aCn8S2K6"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyMyActiveEntitlement' test.out

#- 327 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'AN9dH9Yt' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'GsNXw8NQ' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 329 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'HMdKlPWu' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 330 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["cYjVHLs2", "w3w7pBcG", "5VqpR4Xr"]' \
    --itemIds '["A5KSMWlE", "ISWbEkQO", "BDEAL12M"]' \
    --skus '["TXiRQ55F", "wryLdXWq", "FZ2n695z"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetEntitlementOwnershipToken' test.out

#- 331 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'GUQTX6lH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyWallet' test.out

#- 332 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CnqrrJI9' \
    --body '{"epicGamesJwtToken": "e1ZdicmQ"}' \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGameDLC' test.out

#- 333 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'DEMcuy7C' \
    --body '{"serviceLabel": 89}' \
    > test.out 2>&1
eval_tap $? 333 'PublicSyncPsnDlcInventory' test.out

#- 334 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '7mGpKHbr' \
    --body '{"serviceLabels": [74, 27, 12]}' \
    > test.out 2>&1
eval_tap $? 334 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 335 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'q154G2oQ' \
    --body '{"appId": "IwzzCWA6", "steamId": "JLBytJo0"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncSteamDLC' test.out

#- 336 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Jt5c7kGe' \
    --body '{"xstsToken": "Qz9GARnB"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxDLC' test.out

#- 337 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9Leaj5CQ' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'pZRZM9lm' \
    --features '["4Q9yN0ub", "yRhNYUn5", "GdytDQcT"]' \
    --itemId '["Kpy9B4Qw", "DnT5sq1T", "vitvtmAo"]' \
    --limit '25' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserEntitlements' test.out

#- 338 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Y3VexGgN' \
    --appId '9jvJ3QLB' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserAppEntitlementByAppId' test.out

#- 339 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'RB8hQm2o' \
    --limit '37' \
    --offset '9' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserEntitlementsByAppType' test.out

#- 340 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6EURTwIB' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'Eie8bVGx' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserEntitlementByItemId' test.out

#- 341 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OLPH4F6v' \
    --entitlementClazz 'MEDIA' \
    --sku '4HmTHH6C' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementBySku' test.out

#- 342 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rDcAcMiW' \
    --appIds '["Y3QLBiHf", "URooW6cG", "8tKnsW2w"]' \
    --itemIds '["pSa5bJsi", "3NrDf5Qd", "PbVsTr1w"]' \
    --skus '["ofojCNir", "LCTIy4U7", "vXLS32ms"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyUserActiveEntitlement' test.out

#- 343 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dZ0xfVQE' \
    --appId 'a1CKTfRS' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NncEzIMq' \
    --entitlementClazz 'CODE' \
    --itemId 'e5zEYbKW' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 345 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QiedO3CN' \
    --ids '["my6r5Ikw", "Skd87MVS", "Xba60kKH"]' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 346 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '1Yo3x6Be' \
    --entitlementClazz 'MEDIA' \
    --sku 'vw8Y1Ra5' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 347 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'UAYWOhCB' \
    --namespace $AB_NAMESPACE \
    --userId 'ShxApFkB' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlement' test.out

#- 348 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Y5WmhxTe' \
    --namespace $AB_NAMESPACE \
    --userId 'PPyRNLA6' \
    --body '{"options": ["KMK37pxX", "tR5SNf4V", "HQIr1iuI"], "requestId": "mmXJ9Gz2", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 348 'PublicConsumeUserEntitlement' test.out

#- 349 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'F56rPmly' \
    --body '{"code": "0l5f6gM1", "language": "icx-Ji", "region": "IIhnprlk"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicRedeemCode' test.out

#- 350 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'U4YEtcYT' \
    --body '{"excludeOldTransactions": true, "language": "Ojgw_288", "productId": "FDj5yTPb", "receiptData": "tKE0OG7h", "region": "qpU4GWqz", "transactionId": "fHTbWIcT"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicFulfillAppleIAPItem' test.out

#- 351 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '75ksIRME' \
    --body '{"epicGamesJwtToken": "TfNIKMP4"}' \
    > test.out 2>&1
eval_tap $? 351 'SyncEpicGamesInventory' test.out

#- 352 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '8iv0Iq2b' \
    --body '{"autoAck": true, "language": "CY-BnKA", "orderId": "Ty5q73Mk", "packageName": "dPJmpPAD", "productId": "Hhy4JMWC", "purchaseTime": 57, "purchaseToken": "gzfVriYy", "region": "uQxKP1h5"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicFulfillGoogleIAPItem' test.out

#- 353 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'C2IB1jEk' \
    --body '{"currencyCode": "oAaZjIXd", "price": 0.5963716687577028, "productId": "FCEmcTef", "serviceLabel": 78}' \
    > test.out 2>&1
eval_tap $? 353 'PublicReconcilePlayStationStore' test.out

#- 354 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'a4HQK5G8' \
    --body '{"currencyCode": "T3ibbrhx", "price": 0.938292225614217, "productId": "Zdwq4FGr", "serviceLabels": [2, 11, 74]}' \
    > test.out 2>&1
eval_tap $? 354 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 355 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kAxNVVcX' \
    --body '{"appId": "0HdjqkT0", "language": "hsi-JbCs_xM", "region": "xMB5YJNU", "stadiaPlayerId": "TuNnAccf"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncStadiaEntitlement' test.out

#- 356 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ccezLXJU' \
    --body '{"appId": "w6mKrnf9", "currencyCode": "kRoK1Abs", "language": "qs", "price": 0.8785193280477641, "productId": "iw9U0m0T", "region": "EAqgfuS9", "steamId": "8jzNGw73"}' \
    > test.out 2>&1
eval_tap $? 356 'SyncSteamInventory' test.out

#- 357 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'P7fLJGDF' \
    --body '{"gameId": "YN3qcUWI", "language": "xYP-744", "region": "zfKwbWji"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncTwitchDropsEntitlement' test.out

#- 358 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FY7Iyw8b' \
    --body '{"currencyCode": "K88qjgLF", "price": 0.7638038605022996, "productId": "BkOr327c", "xstsToken": "CGAWZV21"}' \
    > test.out 2>&1
eval_tap $? 358 'SyncXboxInventory' test.out

#- 359 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SDn4NEuU' \
    --itemId 'RQ4vCacV' \
    --limit '68' \
    --offset '19' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 359 'PublicQueryUserOrders' test.out

#- 360 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Kv3LRoPY' \
    --body '{"currencyCode": "AJlbUETR", "discountedPrice": 57, "ext": {"uTOrLScX": {}, "TXETO0cc": {}, "3vmh5tas": {}}, "itemId": "6f7YM3zf", "language": "ENt-Wi", "price": 51, "quantity": 10, "region": "ia4nwamg", "returnUrl": "nM1HDYDn"}' \
    > test.out 2>&1
eval_tap $? 360 'PublicCreateUserOrder' test.out

#- 361 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'FRG6ROX1' \
    --userId 'd6NT60Un' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserOrder' test.out

#- 362 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'aKBnhfYr' \
    --userId 'nY3mreVb' \
    > test.out 2>&1
eval_tap $? 362 'PublicCancelUserOrder' test.out

#- 363 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 't7ImRq0O' \
    --userId 'ktnxmCUz' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserOrderHistories' test.out

#- 364 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'gRsbDYOp' \
    --userId 'dVNN1kan' \
    > test.out 2>&1
eval_tap $? 364 'PublicDownloadUserOrderReceipt' test.out

#- 365 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'TiOvwIxv' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentAccounts' test.out

#- 366 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'WvcHCDTU' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'eHDciZIN' \
    > test.out 2>&1
eval_tap $? 366 'PublicDeletePaymentAccount' test.out

#- 367 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'h8I3mO8R' \
    --language 'azYbvxdx' \
    --region 'JFe7K1bP' \
    --storeId 'fC2KGWfr' \
    --viewId 'BA0953uJ' \
    > test.out 2>&1
eval_tap $? 367 'PublicListActiveSections' test.out

#- 368 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'W0CRxBq1' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '9bujOFXW' \
    --limit '42' \
    --offset '25' \
    --sku '3s5cAf8J' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 368 'PublicQueryUserSubscriptions' test.out

#- 369 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oKIFYBIy' \
    --body '{"currencyCode": "aO4HznCe", "itemId": "LqCBoSRY", "language": "hh-JlCG", "region": "HnHUnTzg", "returnUrl": "nrv28l48", "source": "W78oxSnA"}' \
    > test.out 2>&1
eval_tap $? 369 'PublicSubscribeSubscription' test.out

#- 370 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tdk97Cvl' \
    --itemId 'rF6vQXf7' \
    > test.out 2>&1
eval_tap $? 370 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 371 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PGZ5TsyC' \
    --userId 'x2t5PoHL' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscription' test.out

#- 372 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hKwiUzZU' \
    --userId '2jt6fWwU' \
    > test.out 2>&1
eval_tap $? 372 'PublicChangeSubscriptionBillingAccount' test.out

#- 373 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OQLF4BdO' \
    --userId 'LYnFFcAU' \
    --body '{"immediate": false, "reason": "v4AjmdP6"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicCancelSubscription' test.out

#- 374 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cZf64so6' \
    --userId 'Tcpl57qO' \
    --excludeFree 'true' \
    --limit '27' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscriptionBillingHistories' test.out

#- 375 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'L888als6' \
    --language '5bFCZx8K' \
    --storeId 'AZUPXNtP' \
    > test.out 2>&1
eval_tap $? 375 'PublicListViews' test.out

#- 376 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'oFZBjWLR' \
    --namespace $AB_NAMESPACE \
    --userId 'FeSBb1AX' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetWallet' test.out

#- 377 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'MMeCvg7f' \
    --namespace $AB_NAMESPACE \
    --userId 'wJVGongW' \
    --limit '58' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 377 'PublicListUserWalletTransactions' test.out

#- 378 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate '80pfnVDL' \
    --baseAppId 'wbr4q9C2' \
    --categoryPath 'epNCJdtd' \
    --features 'fATkhYrI' \
    --includeSubCategoryItem 'true' \
    --itemName 'xFF0FIAV' \
    --itemStatus 'ACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '20' \
    --offset '2' \
    --region '9xzllmm1' \
    --sortBy '["updatedAt:asc", "updatedAt:desc", "updatedAt"]' \
    --storeId 'gJP7gK4n' \
    --tags 'DbheODQ4' \
    --targetNamespace 'TnWZuETA' \
    > test.out 2>&1
eval_tap $? 378 'QueryItems1' test.out

#- 379 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DNiE4aAM' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 379 'ImportStore1' test.out

#- 380 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Q0FsJnaD' \
    --body '{"itemIds": ["S2zd4pZu", "LWcotciT", "mkdfsLhf"]}' \
    > test.out 2>&1
eval_tap $? 380 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE