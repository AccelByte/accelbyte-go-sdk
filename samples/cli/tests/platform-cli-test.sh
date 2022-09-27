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
echo "1..356"

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
    --body '{"context": {"item": {"appId": "NAqlmRdX", "appType": "DEMO", "baseAppId": "P5EsheDL", "boothName": "m7L9hPp5", "boundItemIds": ["8kCJYYCY", "69LOhIs9", "5Bho7rMR"], "categoryPath": "8dKr8vlW", "clazz": "j236rsCs", "createdAt": "1995-05-27T00:00:00Z", "description": "4MoprMHe", "displayOrder": 37, "entitlementType": "CONSUMABLE", "ext": {"eq3QKTGV": {}, "I3YgbSQQ": {}, "oK9SS2rt": {}}, "features": ["LqbD69lv", "JbeW6KXX", "euAATKEo"], "fresh": false, "images": [{"as": "NV1j2cK3", "caption": "rHiGk9u7", "height": 97, "imageUrl": "M0R668be", "smallImageUrl": "8mTqeX9S", "width": 56}, {"as": "1OTZvyXo", "caption": "uHGQecYR", "height": 13, "imageUrl": "ekTOK4XC", "smallImageUrl": "33yTIYxe", "width": 11}, {"as": "ir4S5fjJ", "caption": "9YpIgv16", "height": 84, "imageUrl": "vxFDJ5gG", "smallImageUrl": "TlCKuWyk", "width": 38}], "itemId": "YXiFCiAK", "itemIds": ["B7nOYMpB", "wV6LcYCM", "lmxklTu3"], "itemQty": {"J6c2U09r": 52, "soFeuZQg": 17, "xDeOPW0X": 51}, "itemType": "EXTENSION", "language": "ralJP8Rl", "listable": false, "localExt": {"6rIYCxCu": {}, "HmjQKBEB": {}, "C1dF8pWa": {}}, "longDescription": "L7vY4tKe", "maxCount": 53, "maxCountPerUser": 50, "name": "GojSr9Iw", "namespace": "QeFEuDLK", "optionBoxConfig": {"boxItems": [{"count": 76, "itemId": "9ewMkh5Q", "itemSku": "8MlSyojB"}, {"count": 17, "itemId": "L3kUEudR", "itemSku": "79lPbXCd"}, {"count": 14, "itemId": "IgLPJe9W", "itemSku": "8LNoZQjW"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 2, "comparison": "isLessThanOrEqual", "name": "MHvzhXzd", "predicateType": "SeasonPassPredicate", "value": "J6PADrKx", "values": ["Rlnrt2VR", "ZwdyopwX", "LkW0c2TC"]}, {"anyOf": 29, "comparison": "isLessThanOrEqual", "name": "xYPl154I", "predicateType": "EntitlementPredicate", "value": "jr3FOqmn", "values": ["4CM37ag0", "HllY8Ibo", "lbzAaOmF"]}, {"anyOf": 39, "comparison": "excludes", "name": "3XdeAkWX", "predicateType": "EntitlementPredicate", "value": "5cIIdfnf", "values": ["c4Z7QkIX", "qYRqOejd", "gvrb0Mml"]}]}, {"operator": "or", "predicates": [{"anyOf": 29, "comparison": "isNot", "name": "ESCALozg", "predicateType": "EntitlementPredicate", "value": "c6zcnFlH", "values": ["gGohDvxz", "yLI3JMWd", "dqn9nDSR"]}, {"anyOf": 48, "comparison": "isGreaterThan", "name": "YJJC0yke", "predicateType": "SeasonTierPredicate", "value": "OC3pdmUN", "values": ["OEcQrNt3", "uRIfIRlr", "PJkmQYEM"]}, {"anyOf": 89, "comparison": "includes", "name": "gKApXOJI", "predicateType": "EntitlementPredicate", "value": "SyAFBBEx", "values": ["ynSAkGks", "YeVGyAE2", "LAWxMDX7"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "isLessThanOrEqual", "name": "eKPk6zVs", "predicateType": "SeasonTierPredicate", "value": "px0Hojva", "values": ["59tBZfqu", "Po9uTAQ4", "T3iFgnJX"]}, {"anyOf": 6, "comparison": "includes", "name": "AIW1hKFd", "predicateType": "SeasonTierPredicate", "value": "G98rYv0l", "values": ["f1U5W3JI", "NHxni7nW", "CKSArKge"]}, {"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "jr2wSmeC", "predicateType": "EntitlementPredicate", "value": "RNH6bNVk", "values": ["t4EMuzPE", "kA5Q1wZJ", "nXJCInGY"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 2, "fixedTrialCycles": 38, "graceDays": 9}, "region": "M4Yzw7rA", "regionData": [{"currencyCode": "vZ8zFf9o", "currencyNamespace": "gPVihcvm", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1977-11-23T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1979-05-16T00:00:00Z", "discountedPrice": 13, "expireAt": "1997-10-28T00:00:00Z", "price": 95, "purchaseAt": "1982-08-07T00:00:00Z", "trialPrice": 65}, {"currencyCode": "nL7QLU3P", "currencyNamespace": "qopkgm2L", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1992-07-23T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1988-07-28T00:00:00Z", "discountedPrice": 51, "expireAt": "1974-01-14T00:00:00Z", "price": 29, "purchaseAt": "1996-06-01T00:00:00Z", "trialPrice": 31}, {"currencyCode": "mCWgTrjs", "currencyNamespace": "UayFKPIe", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1999-02-09T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1990-10-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1990-07-13T00:00:00Z", "price": 3, "purchaseAt": "1978-08-14T00:00:00Z", "trialPrice": 43}], "seasonType": "TIER", "sku": "2RAeQWRK", "stackable": true, "status": "INACTIVE", "tags": ["CuttWqq7", "J7eynSqI", "jLoxiuU3"], "targetCurrencyCode": "WEq2MX8e", "targetItemId": "3N8DJeZb", "targetNamespace": "Lc0IVzeh", "thumbnailUrl": "BQc6CNoW", "title": "v4oDI7QW", "updatedAt": "1995-07-21T00:00:00Z", "useCount": 10}, "namespace": "X4LgW8zI", "order": {"currency": {"currencyCode": "gE70v3DL", "currencySymbol": "5w2tkSll", "currencyType": "REAL", "decimals": 10, "namespace": "8lgQEV5K"}, "ext": {"S7L4it7l": {}, "g0Oe5byQ": {}, "FQ5OcNOQ": {}}, "free": true}, "source": "OTHER"}, "script": "zlh865A0", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'UJEv3QnY' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'spN8ESH1' \
    --body '{"grantDays": "vRE6qBe6"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'vWKYP07j' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'lqEORoi4' \
    --body '{"grantDays": "7jzwBqTl"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "sDRgZALm", "dryRun": true, "fulfillmentUrl": "UvCzj64h", "itemType": "INGAMEITEM", "purchaseConditionUrl": "YeEF0mGt"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'R4OHaDTs' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'SCJagITL' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'G6hKTlAu' \
    --body '{"clazz": "d46p4glD", "dryRun": true, "fulfillmentUrl": "kwJtLvqi", "purchaseConditionUrl": "wxN0SRvS"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'qwuOgCfw' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name 'ZRTJMSb5' \
    --offset '37' \
    --tag 'rAEyngb3' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "18gw84sT", "items": [{"extraSubscriptionDays": 33, "itemId": "kL50yUrj", "itemName": "pVOh3dDN", "quantity": 56}, {"extraSubscriptionDays": 14, "itemId": "Hb4CPwi8", "itemName": "zcXNaM2h", "quantity": 21}, {"extraSubscriptionDays": 39, "itemId": "EzffJOIP", "itemName": "8KsWevyM", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 59, "maxRedeemCountPerCode": 34, "maxRedeemCountPerCodePerUser": 81, "maxSaleCount": 48, "name": "BzakLIpL", "redeemEnd": "1990-01-30T00:00:00Z", "redeemStart": "1981-02-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["NsaS0WfG", "YNOK3rSt", "fxhGGNdR"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'nRLi4FPX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '7xzmPMKd' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8cfu1Y92", "items": [{"extraSubscriptionDays": 25, "itemId": "OnE3UNt1", "itemName": "KLQ6nriu", "quantity": 49}, {"extraSubscriptionDays": 47, "itemId": "MvRGJ0zm", "itemName": "2HEdXcEo", "quantity": 71}, {"extraSubscriptionDays": 30, "itemId": "eBzRvzww", "itemName": "YgskffYh", "quantity": 40}], "maxRedeemCountPerCampaignPerUser": 6, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 83, "name": "EaKWsGhR", "redeemEnd": "1976-04-13T00:00:00Z", "redeemStart": "1986-11-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["wmsMXKGO", "8KjqzUjn", "1kNWYb9S"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'r2PbbsYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'uHtNVGLt' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'KKhOveg7' \
    --body '{"categoryPath": "zYn79iwC", "localizationDisplayNames": {"JTAsJdLg": "5zGzaaxk", "XzPGcXXT": "4T3IXkgb", "WTHbsuvg": "a55yj4Qu"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'PZnUpbbQ' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'ToQBQb1x' \
    --namespace $AB_NAMESPACE \
    --storeId 'GPhK3BiC' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'lSBGgoyA' \
    --namespace $AB_NAMESPACE \
    --storeId 'aCnzcRwi' \
    --body '{"localizationDisplayNames": {"gsJ9M8wu": "IzLEdkDa", "v49VZH9u": "AkokWgOa", "vkl441kq": "q6lYgQTi"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'ZaTdk51y' \
    --namespace $AB_NAMESPACE \
    --storeId 'k0BouMZ4' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '4HZTOScr' \
    --namespace $AB_NAMESPACE \
    --storeId 'A9siRGfW' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '1QCAklMD' \
    --namespace $AB_NAMESPACE \
    --storeId 'LKAczaxM' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'kq8vAR9j' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '76' \
    --code '8HuYQUhy' \
    --limit '86' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'wj9BCEQl' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 67}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'b2ZqgRbC' \
    --namespace $AB_NAMESPACE \
    --batchNo '62' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'r0MXodQI' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'j3Uva2Gu' \
    --namespace $AB_NAMESPACE \
    --batchNo '35' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '1LQccvDz' \
    --namespace $AB_NAMESPACE \
    --code 'CIR8cKNv' \
    --limit '35' \
    --offset '100' \
    --userId 'svSjrzMr' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'MKpsRkM6' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'taPjzIBN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Niwwza7h' \
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
    --body '{"currencyCode": "lR5yxKLD", "currencySymbol": "VlwpbVae", "currencyType": "VIRTUAL", "decimals": 76, "localizationDescriptions": {"ZlT17mUo": "hjMf6Thl", "UgiEAaZP": "HRO7H92m", "sl7dihou": "XyydAEg8"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'qrNkEhKR' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"BD3AKjXh": "ic9lbDug", "LfhIoTB0": "lWzVvo6Q", "DNx7UTT9": "T7YpblNo"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'YuQcx7x9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'FhC8Niji' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'oxc0EBxB' \
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
    --body '{"data": [{"id": "9g2B2fYc", "rewards": [{"currency": {"currencyCode": "4m7zRpW9", "namespace": "Iy5Jj6wR"}, "item": {"itemId": "LkJfGQp6", "itemSku": "neLizEvq", "itemType": "4ycl5tnH"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "Mn6QxZE9", "namespace": "0WKGhX00"}, "item": {"itemId": "afwBUKpg", "itemSku": "Kbp47oh7", "itemType": "775TeTKt"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "t0M3b7CT", "namespace": "TosQCYEA"}, "item": {"itemId": "0JvqHYKJ", "itemSku": "bggSWImZ", "itemType": "VfFe5UmX"}, "quantity": 99, "type": "ITEM"}]}, {"id": "18K3siWa", "rewards": [{"currency": {"currencyCode": "xlsDiJcE", "namespace": "1bB6wmj1"}, "item": {"itemId": "SJ5CwtOg", "itemSku": "4C1SE0Ma", "itemType": "rnG9NrR7"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "lcttn8hM", "namespace": "AocIuJNn"}, "item": {"itemId": "9d6sMRr4", "itemSku": "yY9vLG0s", "itemType": "cOg13aIx"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "o7NDXNgz", "namespace": "ZgFF9erM"}, "item": {"itemId": "UKgyuaB5", "itemSku": "ohWyNwyj", "itemType": "aGuHzPCd"}, "quantity": 69, "type": "ITEM"}]}, {"id": "kjglpWZt", "rewards": [{"currency": {"currencyCode": "92hp4k5f", "namespace": "2CJtCCk4"}, "item": {"itemId": "mh1D6w1V", "itemSku": "Nejfq3ei", "itemType": "oFiK1hdR"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "DCkng1Y3", "namespace": "ufJ59Qpw"}, "item": {"itemId": "KWYeeddz", "itemSku": "weCPwEGz", "itemType": "AAc4SPvk"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "UFC55eJE", "namespace": "SCcq1fR8"}, "item": {"itemId": "PvIs4Irk", "itemSku": "0BkhAZdH", "itemType": "D7xQ59zo"}, "quantity": 73, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"qckxfctB": "RJxYXVBN", "AJjVsC4X": "lVEJRuwL", "hdC1IJtW": "EVg2VVoK"}}, {"platform": "XBOX", "platformDlcIdMap": {"ryC0VFy6": "culzmS5W", "Pnp1q9S1": "1h3QBgQZ", "JxrN9Ger": "dJM3SpSG"}}, {"platform": "PSN", "platformDlcIdMap": {"HwmkJZBp": "uXSXPSYW", "rlhAQCsI": "uI8xladO", "Bjo5QHox": "RR1cRf7q"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '2DkZ6HC4' \
    --itemId '["N0ZGG7wp", "zR1QQsKG", "3o3Kn83K"]' \
    --limit '79' \
    --offset '87' \
    --userId 'FtOomOZX' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Zw0dEtMU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '97' \
    --status 'FAIL' \
    --userId 'AW5LVGPf' \
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
    --body '{"bundleId": "8qt8Wlq7", "password": "4tS9LFfd"}' \
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
    --body '{"sandboxId": "ishz1tZJ"}' \
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
    --body '{"applicationName": "hN8wpQNu", "serviceAccountId": "M6Yjyodb"}' \
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
    --body '{"data": [{"itemIdentity": "JaWtnETP", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ZHDuvTkS": "BIPdoybL", "ifjDBAm3": "KFnWfGml", "Hy2rtcmM": "WZIeycZ3"}}, {"itemIdentity": "TBNT0tfa", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ZiG9qKjW": "dZnoaZDp", "y5vxNUV3": "Vg3w3UM3", "POhFnpiT": "lA2SxrpF"}}, {"itemIdentity": "sNqmppnr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4xKP7OMd": "AGAySalh", "I1OgqJTP": "HrZrNXno", "09m3ZnHd": "sz34mrOf"}}]}' \
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
    --body '{"environment": "nxTEMq1G"}' \
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
    --body '{"appId": "Y8smvXHY", "publisherAuthenticationKey": "iIvgxkB8"}' \
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
    --body '{"clientId": "kRlFn30r", "clientSecret": "CrZQhgHW", "organizationId": "8chP8Pkv"}' \
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
    --body '{"relyingPartyCert": "fUpZzdUN"}' \
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
    --password 'FVbPovGU' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'hHQNXEF9' \
    --itemId 'mD1FJMp0' \
    --itemType 'MEDIA' \
    --endTime 'tY3f7IPG' \
    --startTime 'ozEMW39I' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'M0UARTto' \
    --itemId 'fvbh4CE2' \
    --itemType 'APP' \
    --endTime 'iStLGfOb' \
    --startTime 'VgIiSlM9' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '8W1Szatu' \
    --body '{"categoryPath": "vG8XhJxQ", "targetItemId": "G3qXvHec", "targetNamespace": "LjkYX9cD"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Wv9oSxIa' \
    --body '{"appId": "XO3h0Z8b", "appType": "DEMO", "baseAppId": "3DwiycZ5", "boothName": "XNM9eCIl", "categoryPath": "YUEmqVmu", "clazz": "VLqkcqw3", "displayOrder": 58, "entitlementType": "DURABLE", "ext": {"8brWQaeK": {}, "Ak5LjFVl": {}, "Wqhx5Tb8": {}}, "features": ["fA8AwOLQ", "RiFVAVN5", "p7QPV5kD"], "images": [{"as": "YmMFKtzQ", "caption": "ym0TiEhx", "height": 5, "imageUrl": "emWGW7mC", "smallImageUrl": "zA56JYYD", "width": 13}, {"as": "rEn9iA8y", "caption": "Rv0o87HP", "height": 6, "imageUrl": "7vouzJpA", "smallImageUrl": "5XrvZM3Z", "width": 94}, {"as": "d08ykkw8", "caption": "oKvcQkMw", "height": 45, "imageUrl": "qQEW8UhN", "smallImageUrl": "yusFYD0u", "width": 58}], "itemIds": ["GbX1oLjQ", "nYxFlIvH", "nrPB6Zu6"], "itemQty": {"OEZcrwPe": 64, "lWdJkJbM": 81, "yD0E1s6B": 22}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"WQS5B7jx": {"description": "5Zb2mIV6", "localExt": {"tSc2ZnrR": {}, "b5gk48nX": {}, "YxQFCigu": {}}, "longDescription": "X0nPHAl4", "title": "m7LhfVT3"}, "uBQ92zOg": {"description": "z92Fu6jV", "localExt": {"D5GfmwFi": {}, "5b6KXJql": {}, "LzaaymQK": {}}, "longDescription": "1fgyOyJk", "title": "NQxKMa56"}, "lWo1FBCv": {"description": "kuRhBNHi", "localExt": {"lp1ECngQ": {}, "BIlST81r": {}, "WPYccejY": {}}, "longDescription": "xovFCFXJ", "title": "OUyqhoHj"}}, "maxCount": 10, "maxCountPerUser": 54, "name": "CHxrNG5Z", "optionBoxConfig": {"boxItems": [{"count": 39, "itemId": "vtDFW7Y5", "itemSku": "5JyCowI0"}, {"count": 95, "itemId": "5IUlmAYr", "itemSku": "73ttULTM"}, {"count": 74, "itemId": "9RjUvwoS", "itemSku": "bbb6YimF"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 11, "fixedTrialCycles": 1, "graceDays": 83}, "regionData": {"WdKGSgbi": [{"currencyCode": "NBrAG90D", "currencyNamespace": "UfGIznRS", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1980-01-31T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-04-27T00:00:00Z", "discountedPrice": 35, "expireAt": "1990-07-26T00:00:00Z", "price": 59, "purchaseAt": "1982-04-08T00:00:00Z", "trialPrice": 20}, {"currencyCode": "ODdvMz0M", "currencyNamespace": "wIMHcfm9", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1974-06-14T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1993-06-11T00:00:00Z", "discountedPrice": 28, "expireAt": "1990-09-06T00:00:00Z", "price": 39, "purchaseAt": "1976-09-15T00:00:00Z", "trialPrice": 71}, {"currencyCode": "APaxOsCG", "currencyNamespace": "ZLiEe6tL", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1994-07-26T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1976-06-16T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-04-05T00:00:00Z", "price": 71, "purchaseAt": "1983-03-31T00:00:00Z", "trialPrice": 7}], "gC6LguhH": [{"currencyCode": "tNbudKsd", "currencyNamespace": "6opJz1XI", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1980-05-08T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1985-05-09T00:00:00Z", "discountedPrice": 80, "expireAt": "1997-07-09T00:00:00Z", "price": 34, "purchaseAt": "1990-03-09T00:00:00Z", "trialPrice": 9}, {"currencyCode": "sV9IRHDf", "currencyNamespace": "T9Zn9vSv", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1999-06-16T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-05-19T00:00:00Z", "discountedPrice": 41, "expireAt": "1972-01-11T00:00:00Z", "price": 55, "purchaseAt": "1995-11-14T00:00:00Z", "trialPrice": 43}, {"currencyCode": "YLOJ5An0", "currencyNamespace": "9wXezGbE", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1985-01-10T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1983-08-04T00:00:00Z", "discountedPrice": 7, "expireAt": "1997-06-16T00:00:00Z", "price": 49, "purchaseAt": "1974-08-11T00:00:00Z", "trialPrice": 97}], "gFaJ6z6C": [{"currencyCode": "9HPdXvDG", "currencyNamespace": "fEVfNRxi", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1979-03-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1994-06-05T00:00:00Z", "discountedPrice": 10, "expireAt": "1985-06-28T00:00:00Z", "price": 23, "purchaseAt": "1972-01-18T00:00:00Z", "trialPrice": 96}, {"currencyCode": "46N0x2Xz", "currencyNamespace": "YI5OC3Mb", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1989-01-24T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1997-05-17T00:00:00Z", "discountedPrice": 5, "expireAt": "1997-03-30T00:00:00Z", "price": 96, "purchaseAt": "1997-01-29T00:00:00Z", "trialPrice": 40}, {"currencyCode": "4rXInZab", "currencyNamespace": "7MSCkfVf", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1986-11-20T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1976-10-02T00:00:00Z", "discountedPrice": 23, "expireAt": "1986-09-19T00:00:00Z", "price": 86, "purchaseAt": "1999-09-07T00:00:00Z", "trialPrice": 49}]}, "seasonType": "PASS", "sku": "Z31rz9Dj", "stackable": false, "status": "ACTIVE", "tags": ["LAonMi6X", "PBbOXrQt", "KCMJMMdR"], "targetCurrencyCode": "li2BWgKX", "targetNamespace": "Qs5VZAw9", "thumbnailUrl": "wMCjVkr4", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'n7fXDWUF' \
    --appId 'ykoWARsU' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'jyaK5PzA' \
    --baseAppId 'IS8dhsyL' \
    --categoryPath 'yoF3nJq5' \
    --features '9AsVPcl6' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --limit '24' \
    --offset '87' \
    --region 'CaZi4mUU' \
    --sortBy '["updatedAt:desc", "createdAt"]' \
    --storeId 'krQDBrmu' \
    --tags 'aGswl9jg' \
    --targetNamespace 'FELEGUR1' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["GIa7o9wz", "8nLYTcgD", "85QDhGrt"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'YnVr0x04' \
    --sku 'CyZV1Eur' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Byte6aig' \
    --populateBundle 'false' \
    --region 'czfzLA9f' \
    --storeId 'AgrW3PCA' \
    --sku 'Oo9W2hHD' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HEshkaXD' \
    --sku 'zj87H3cV' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["vl8aeI9h", "Q2BC6MXr", "vQEPO81C"]' \
    --storeId '8ZOHDMDO' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'VyhDOwCQ' \
    --region '0unuMNLd' \
    --storeId '0JMp2yNb' \
    --itemIds 'gO14sF7p' \
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
    --userId 'ni9294M7' \
    --body '{"itemIds": ["5Z2hv8iF", "m50mr2jG", "T8ZvnevR"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'COINS' \
    --limit '68' \
    --offset '9' \
    --storeId 'cK5PfQDg' \
    --keyword '7IA7ocR8' \
    --language 'IL1ICdVG' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '45' \
    --offset '89' \
    --sortBy '["updatedAt:asc", "createdAt"]' \
    --storeId 'toY62scY' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '54cMZohr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Dr2PXg0u' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'YTsYeDO3' \
    --namespace $AB_NAMESPACE \
    --storeId 'NXYp9ykb' \
    --body '{"appId": "w1Y05LhS", "appType": "SOFTWARE", "baseAppId": "3wwm9YIT", "boothName": "7QdkMYAy", "categoryPath": "PsQOj4RK", "clazz": "vbZwsB4Y", "displayOrder": 26, "entitlementType": "CONSUMABLE", "ext": {"40CYQ6XS": {}, "o69cPgMo": {}, "LgoZGBUw": {}}, "features": ["v0LWvYbG", "rW2GOxzi", "AB9xIxUA"], "images": [{"as": "58z9LIYS", "caption": "opW1Clfl", "height": 61, "imageUrl": "Rpawz4PM", "smallImageUrl": "hG52YS5T", "width": 85}, {"as": "vKfxwekt", "caption": "UpIHnrOG", "height": 70, "imageUrl": "F28DcH4o", "smallImageUrl": "9zWVD0uk", "width": 90}, {"as": "tJSQfxV5", "caption": "Oe5zXWcm", "height": 4, "imageUrl": "laV8DQCT", "smallImageUrl": "8vy6Eavh", "width": 59}], "itemIds": ["FVLw3hsx", "nVd1RcWB", "byY6yFWH"], "itemQty": {"k46P8whZ": 75, "SaTjoGkp": 67, "77udB0ob": 38}, "itemType": "CODE", "listable": false, "localizations": {"NYxGpmEq": {"description": "Zg54c665", "localExt": {"Sn6KkSd1": {}, "Ttisz1rY": {}, "6znQRY7z": {}}, "longDescription": "q6Z0YqEX", "title": "ItgkKueg"}, "eWQu1vHZ": {"description": "48jZ4ctA", "localExt": {"MKV1FKJL": {}, "Mnn62GgP": {}, "YWvAxIoH": {}}, "longDescription": "CDJr3Nsp", "title": "6AHD3PdA"}, "NSPbO81d": {"description": "fGorb5Oz", "localExt": {"iQIpJJYW": {}, "qXNzQCFQ": {}, "I3DriVOW": {}}, "longDescription": "vXh8L7DU", "title": "MRk7OX68"}}, "maxCount": 70, "maxCountPerUser": 43, "name": "chSKWjHV", "optionBoxConfig": {"boxItems": [{"count": 93, "itemId": "vGjxj4Rt", "itemSku": "Phj9tDPm"}, {"count": 55, "itemId": "PEeB4btb", "itemSku": "7tFZE5FR"}, {"count": 84, "itemId": "7mymnIlg", "itemSku": "3x683ZWa"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 27, "fixedTrialCycles": 15, "graceDays": 4}, "regionData": {"bVoiGlxg": [{"currencyCode": "h8zMUMwS", "currencyNamespace": "G7d5a2Eo", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-10-25T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1984-06-03T00:00:00Z", "discountedPrice": 48, "expireAt": "1975-08-10T00:00:00Z", "price": 30, "purchaseAt": "1977-09-01T00:00:00Z", "trialPrice": 66}, {"currencyCode": "ZmYJtycN", "currencyNamespace": "QLaM22RQ", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1985-10-07T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1975-04-18T00:00:00Z", "discountedPrice": 39, "expireAt": "1975-12-22T00:00:00Z", "price": 76, "purchaseAt": "1986-01-28T00:00:00Z", "trialPrice": 36}, {"currencyCode": "vCHvinal", "currencyNamespace": "5vMGzrPk", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1992-04-09T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1971-09-24T00:00:00Z", "discountedPrice": 37, "expireAt": "1998-01-23T00:00:00Z", "price": 54, "purchaseAt": "1971-05-15T00:00:00Z", "trialPrice": 18}], "nKSzN2ZI": [{"currencyCode": "FiQzbCBr", "currencyNamespace": "xbHpbEIj", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1990-06-02T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1971-08-17T00:00:00Z", "discountedPrice": 83, "expireAt": "1997-03-17T00:00:00Z", "price": 77, "purchaseAt": "1992-12-12T00:00:00Z", "trialPrice": 21}, {"currencyCode": "ho24OVhI", "currencyNamespace": "7BBXMEpC", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1991-11-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1995-07-22T00:00:00Z", "discountedPrice": 42, "expireAt": "1974-08-12T00:00:00Z", "price": 65, "purchaseAt": "1976-03-20T00:00:00Z", "trialPrice": 7}, {"currencyCode": "x5GYyKXN", "currencyNamespace": "3hhB3ovF", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1988-06-03T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1972-05-18T00:00:00Z", "discountedPrice": 57, "expireAt": "1996-05-17T00:00:00Z", "price": 92, "purchaseAt": "1993-10-05T00:00:00Z", "trialPrice": 38}], "pV5xpTdz": [{"currencyCode": "4c2PMXGd", "currencyNamespace": "miqrQHQv", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1988-05-12T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1973-11-17T00:00:00Z", "discountedPrice": 36, "expireAt": "1971-04-25T00:00:00Z", "price": 94, "purchaseAt": "1982-12-19T00:00:00Z", "trialPrice": 74}, {"currencyCode": "arOx1Pnd", "currencyNamespace": "i7pxtu24", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1996-05-15T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1973-10-20T00:00:00Z", "discountedPrice": 90, "expireAt": "1979-03-05T00:00:00Z", "price": 9, "purchaseAt": "1999-03-18T00:00:00Z", "trialPrice": 8}, {"currencyCode": "TRbG8jKz", "currencyNamespace": "lpqPKPB0", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-12-17T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1971-09-20T00:00:00Z", "discountedPrice": 44, "expireAt": "1986-12-10T00:00:00Z", "price": 83, "purchaseAt": "1992-07-15T00:00:00Z", "trialPrice": 35}]}, "seasonType": "TIER", "sku": "aAGZP3MX", "stackable": false, "status": "ACTIVE", "tags": ["g5tOU1PJ", "nKhW0SFu", "ciaXpl2c"], "targetCurrencyCode": "rLuYBWjD", "targetNamespace": "MW6auGjY", "thumbnailUrl": "IG5jUwM1", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'lLjCW7Oz' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId '5hRLBxiC' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '033ny0fR' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 34, "orderNo": "bT2wf2oF"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Wmw6G9OF' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Qg8P9sCP' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'ZyQvdsbm' \
    --namespace $AB_NAMESPACE \
    --storeId 'qoPp453u' \
    --body '{"carousel": [{"alt": "P7VZvReY", "previewUrl": "KgpDDylZ", "thumbnailUrl": "jrqWwiUp", "type": "image", "url": "qYhtL4On", "videoSource": "vimeo"}, {"alt": "gSgkiGFa", "previewUrl": "x8XlcOND", "thumbnailUrl": "oEuheM20", "type": "video", "url": "WV0ef2Il", "videoSource": "vimeo"}, {"alt": "G6mAmFI9", "previewUrl": "JWFv2jeb", "thumbnailUrl": "Vms991Xy", "type": "image", "url": "bYKadhJq", "videoSource": "youtube"}], "developer": "YP9D5zR8", "forumUrl": "qwQrxAFN", "genres": ["Indie", "Strategy", "Sports"], "localizations": {"a05XJBpp": {"announcement": "oANlC2gg", "slogan": "nUQYGw7P"}, "EvBoYinP": {"announcement": "FKgmeYHF", "slogan": "RVVXPUGU"}, "GcOIju31": {"announcement": "tcT1ZMD7", "slogan": "w0KQZk0V"}}, "platformRequirements": {"jDhmdrVP": [{"additionals": "v321IXCn", "directXVersion": "Cm2ZoPkH", "diskSpace": "qAR8NLBB", "graphics": "1yw2DZEl", "label": "T4XmRiwJ", "osVersion": "M9BYIywA", "processor": "GAltk1rz", "ram": "HVJnhZhP", "soundCard": "XAnKv7Kg"}, {"additionals": "XtmAobrr", "directXVersion": "KLEYlq1h", "diskSpace": "pnE4DLsU", "graphics": "uoSuReuT", "label": "AoQaTZfK", "osVersion": "yQ5bXY5W", "processor": "WIRKfsvs", "ram": "SVcBtrNW", "soundCard": "E7ghKpHx"}, {"additionals": "sMqbwicq", "directXVersion": "H9eDxu35", "diskSpace": "PUCbSfpN", "graphics": "zKfvYMab", "label": "rqqBx6Vw", "osVersion": "gH6yZ4mM", "processor": "GgHAOXiv", "ram": "GGAzBmTo", "soundCard": "XtLNqd0i"}], "f6mLRYMk": [{"additionals": "3A6msKzU", "directXVersion": "hoSmNdNx", "diskSpace": "LKfIYRYc", "graphics": "mnSkWKjk", "label": "MYNQOwaI", "osVersion": "L5tQWgjh", "processor": "WpR0AVkl", "ram": "Cc4OM9DM", "soundCard": "ZCI52fDG"}, {"additionals": "7OCkWAze", "directXVersion": "GJsxDKh8", "diskSpace": "4JyePXEM", "graphics": "I4Vxjlsh", "label": "eiU6rE7o", "osVersion": "xjUAzTtZ", "processor": "Lnhy0OKp", "ram": "b37m8vSa", "soundCard": "mxF2NxFM"}, {"additionals": "3TLtTfjB", "directXVersion": "gYJHSiXg", "diskSpace": "O1vGajqm", "graphics": "aKr1pGlS", "label": "MofCcFZN", "osVersion": "PgsjTGj0", "processor": "lEOivdHn", "ram": "qUxF6CbV", "soundCard": "50rUJ1XJ"}], "Vb8IHobk": [{"additionals": "74sVFzJY", "directXVersion": "ibddgRZE", "diskSpace": "IH7qRVv1", "graphics": "33fTZvQc", "label": "BhhHcB6g", "osVersion": "rMRbvbMj", "processor": "7ULEUqLX", "ram": "lsedWDLK", "soundCard": "GUj3b6Pn"}, {"additionals": "HJ7zFFkW", "directXVersion": "3dlRDMvl", "diskSpace": "88DbIipd", "graphics": "BkXRlm0o", "label": "97WJVroo", "osVersion": "Ut1qbmeM", "processor": "GiIa3wLD", "ram": "jfCOqMNG", "soundCard": "zr4KvW2E"}, {"additionals": "H95bsdLC", "directXVersion": "m5WjIbTd", "diskSpace": "fyGn3rBl", "graphics": "wrCODn6t", "label": "iVZ3hzMx", "osVersion": "hy1tzA9e", "processor": "SHgn5yEt", "ram": "3hSSF7ie", "soundCard": "09MsH5T7"}]}, "platforms": ["Android", "Linux", "MacOS"], "players": ["Coop", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "Strategy", "publisher": "D4QHSaPa", "releaseDate": "1990-12-06T00:00:00Z", "websiteUrl": "O5rWNq4d"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '8SFxLjDO' \
    --namespace $AB_NAMESPACE \
    --storeId 'zvrk76eP' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '3jYe9D4x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Go6UE90x' \
    --namespace $AB_NAMESPACE \
    --storeId 'HUcac8w5' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'UZewEQOq' \
    --itemId 'lLKgj6BC' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZVIcKcT1' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'wejb3h6V' \
    --itemId 'stXGglMa' \
    --namespace $AB_NAMESPACE \
    --storeId 'HhOs4rVJ' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'TA6eMzKD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'OxCeq9bH' \
    --populateBundle 'true' \
    --region '62QLzEgx' \
    --storeId 'XV2o51oH' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'PZNsmdOa' \
    --namespace $AB_NAMESPACE \
    --storeId 'AGFs6pLk' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 52, "comparison": "isGreaterThanOrEqual", "name": "6qkqr7PV", "predicateType": "EntitlementPredicate", "value": "07QQNJcO", "values": ["ZEQ2myQo", "teboLyMt", "6i6PUZFh"]}, {"anyOf": 37, "comparison": "is", "name": "uvxzU9EL", "predicateType": "EntitlementPredicate", "value": "UVEZIuSA", "values": ["cnIdrgg6", "BAegdphC", "lyc4qGlQ"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "aaEPXeJt", "predicateType": "SeasonTierPredicate", "value": "3GehSqxa", "values": ["rK9ieDTQ", "HxLvkM9W", "G6HJzcvu"]}]}, {"operator": "or", "predicates": [{"anyOf": 59, "comparison": "isGreaterThan", "name": "0PR04UlN", "predicateType": "SeasonTierPredicate", "value": "ahQwuj9Q", "values": ["tjeslVWQ", "3iKb20Kw", "J8gqPAyo"]}, {"anyOf": 43, "comparison": "isGreaterThan", "name": "FxHVfyMy", "predicateType": "EntitlementPredicate", "value": "pQOVDV05", "values": ["WcHu8TV8", "qq0F7eAb", "Xtduy6LC"]}, {"anyOf": 84, "comparison": "is", "name": "3yFlRA4C", "predicateType": "SeasonTierPredicate", "value": "MmAB06tB", "values": ["G1d5YDs0", "Ggsv3QYb", "BFpsKAsg"]}]}, {"operator": "and", "predicates": [{"anyOf": 42, "comparison": "isLessThan", "name": "3x9gwU7o", "predicateType": "EntitlementPredicate", "value": "GlUWY9Ev", "values": ["JJV58PTv", "qme0GEID", "9Wb9ezx2"]}, {"anyOf": 49, "comparison": "is", "name": "JcrPLnjw", "predicateType": "SeasonTierPredicate", "value": "AGoYiCgT", "values": ["suoU0CCh", "BclcPjyK", "KZNVd8GK"]}, {"anyOf": 93, "comparison": "isNot", "name": "Z5YxUirB", "predicateType": "SeasonTierPredicate", "value": "TbW5b6M5", "values": ["0631tTRP", "guxQvQwz", "QUUgPPjw"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'I51KKOhh' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "6gW61A7K"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'njr8IYi0' \
    --offset '96' \
    --tag 'zpbLdiMp' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9Qw4ALwr", "name": "DitPsXYh", "status": "INACTIVE", "tags": ["X3MGuX7k", "9b2QSsIT", "khUg57AL"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'jjxEWiFN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroup' test.out

#- 113 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'H7ZYg86u' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mSSdKTsr", "name": "WsI0Jb6f", "status": "INACTIVE", "tags": ["984xaNU1", "5S7aqpWX", "ObKZorEK"]}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateKeyGroup' test.out

#- 114 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'IWz39Iya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroupDynamic' test.out

#- 115 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'JjPksP9d' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '9' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 115 'ListKeys' test.out

#- 116 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'iEPjfBHz' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 116 'UploadKeys' test.out

#- 117 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'JmDa92q7' \
    --limit '80' \
    --offset '73' \
    --orderNos '["a12QQodZ", "zJXv4lmU", "ELNMs6ix"]' \
    --sortBy 'Z0nvtf6A' \
    --startTime 'BfYLzWO2' \
    --status 'CHARGED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 117 'QueryOrders' test.out

#- 118 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetOrderStatistics' test.out

#- 119 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'quDL5z6j' \
    > test.out 2>&1
eval_tap $? 119 'GetOrder' test.out

#- 120 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'raP6uNgX' \
    --body '{"description": "Xk9h14d6"}' \
    > test.out 2>&1
eval_tap $? 120 'RefundOrder' test.out

#- 121 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetPaymentCallbackConfig' test.out

#- 122 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "zwAmPEoX", "privateKey": "Qr8hJjZI"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdatePaymentCallbackConfig' test.out

#- 123 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'PFPiTc62' \
    --externalId 'J41ugxDs' \
    --limit '85' \
    --notificationSource 'WXPAY' \
    --notificationType 'X3Zu2NvI' \
    --offset '88' \
    --paymentOrderNo 'KL21sDeD' \
    --startDate 'hs51Y6kv' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 123 'QueryPaymentNotifications' test.out

#- 124 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'rHrHautT' \
    --limit '1' \
    --offset '100' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentOrders' test.out

#- 125 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "1H2slqyH", "currencyNamespace": "tQxy0htA", "customParameters": {"oss0NQrE": {}, "cWrCiNOU": {}, "oXyDTbNI": {}}, "description": "zM1yEJqq", "extOrderNo": "zHn3Zd0i", "extUserId": "X7OMm4dH", "itemType": "APP", "language": "Nj", "metadata": {"hQrnHTny": "2z10zTrs", "zy4OiKXS": "SMjka4dl", "zj9MQcSd": "DyPSOVKS"}, "notifyUrl": "mx08s6F4", "omitNotification": true, "platform": "yPUuAjUR", "price": 85, "recurringPaymentOrderNo": "ubmYWG49", "region": "qrfZgM6r", "returnUrl": "oYRcdWEZ", "sandbox": false, "sku": "P0gSOUfj", "subscriptionId": "9Z7vpV00", "targetNamespace": "Op6yY1q3", "targetUserId": "dwaovqxw", "title": "V2ov1VJO"}' \
    > test.out 2>&1
eval_tap $? 125 'CreatePaymentOrderByDedicated' test.out

#- 126 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'JWPIWnRm' \
    > test.out 2>&1
eval_tap $? 126 'ListExtOrderNoByExtTxId' test.out

#- 127 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Y1TjUu8k' \
    > test.out 2>&1
eval_tap $? 127 'GetPaymentOrder' test.out

#- 128 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xZd71MVz' \
    --body '{"extTxId": "ujDMhjqS", "paymentMethod": "SzqBRgLc", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 128 'ChargePaymentOrder' test.out

#- 129 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'z2pRGolK' \
    --body '{"description": "pto6vsZ7"}' \
    > test.out 2>&1
eval_tap $? 129 'RefundPaymentOrderByDedicated' test.out

#- 130 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UoL4Hk5u' \
    --body '{"amount": 33, "currencyCode": "duJh1btK", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 17, "vat": 20}' \
    > test.out 2>&1
eval_tap $? 130 'SimulatePaymentOrderNotification' test.out

#- 131 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '537jZgNB' \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrderChargeStatus' test.out

#- 132 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 132 'GetPlatformWalletConfig' test.out

#- 133 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Epic", "Other", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 133 'UpdatePlatformWalletConfig' test.out

#- 134 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 134 'ResetPlatformWalletConfig' test.out

#- 135 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ftDCZV8e", "eventTopic": "Il4sTFYP", "maxAwarded": 56, "maxAwardedPerUser": 68, "namespaceExpression": "QGSNpeih", "rewardCode": "q0zXCMbg", "rewardConditions": [{"condition": "8s94ygK7", "conditionName": "nUOfwV4a", "eventName": "9uY4xGQb", "rewardItems": [{"duration": 4, "itemId": "wYYSs5uE", "quantity": 80}, {"duration": 51, "itemId": "G3lmi2Ke", "quantity": 55}, {"duration": 94, "itemId": "lsaYUjVd", "quantity": 18}]}, {"condition": "UugApoSL", "conditionName": "Zeztp4P1", "eventName": "amEpjIxQ", "rewardItems": [{"duration": 63, "itemId": "8Cl96Ryb", "quantity": 80}, {"duration": 1, "itemId": "VARwpoCB", "quantity": 31}, {"duration": 65, "itemId": "ZXzIppyz", "quantity": 9}]}, {"condition": "kc14ZrIn", "conditionName": "vMCe5rHQ", "eventName": "zAFdEx1M", "rewardItems": [{"duration": 79, "itemId": "00HcPW04", "quantity": 24}, {"duration": 79, "itemId": "TRSObFg2", "quantity": 35}, {"duration": 78, "itemId": "aMMwcmsv", "quantity": 95}]}], "userIdExpression": "GUno3Gjf"}' \
    > test.out 2>&1
eval_tap $? 135 'CreateReward' test.out

#- 136 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'X0m2QvQq' \
    --limit '18' \
    --offset '34' \
    --sortBy '["namespace:asc", "namespace:desc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 136 'QueryRewards' test.out

#- 137 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'ExportRewards' test.out

#- 138 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'ImportRewards' test.out

#- 139 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HknDFwhT' \
    > test.out 2>&1
eval_tap $? 139 'GetReward' test.out

#- 140 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'o2mGwamQ' \
    --body '{"description": "2OpPh1pE", "eventTopic": "jHdLgMvJ", "maxAwarded": 74, "maxAwardedPerUser": 70, "namespaceExpression": "p6e8pT5s", "rewardCode": "WbzHCYnx", "rewardConditions": [{"condition": "fHAmc7gd", "conditionName": "evfHOpNa", "eventName": "HyMsECXC", "rewardItems": [{"duration": 85, "itemId": "7WH5VsGJ", "quantity": 47}, {"duration": 31, "itemId": "jcwF35w8", "quantity": 36}, {"duration": 95, "itemId": "YhOvg4Nc", "quantity": 75}]}, {"condition": "expmyjTq", "conditionName": "5JoU5vL0", "eventName": "CSOtAFTk", "rewardItems": [{"duration": 57, "itemId": "55UJLXZC", "quantity": 19}, {"duration": 65, "itemId": "0povvNhP", "quantity": 34}, {"duration": 7, "itemId": "phsL5AAV", "quantity": 77}]}, {"condition": "6X9D6vsD", "conditionName": "4vBmGbxb", "eventName": "TSmarq04", "rewardItems": [{"duration": 27, "itemId": "lanwNDPW", "quantity": 30}, {"duration": 97, "itemId": "fg7cgNwK", "quantity": 73}, {"duration": 20, "itemId": "OOsaxhb2", "quantity": 83}]}], "userIdExpression": "EliCmK8s"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateReward' test.out

#- 141 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Qr8yashs' \
    > test.out 2>&1
eval_tap $? 141 'DeleteReward' test.out

#- 142 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'gWQY1QiA' \
    --body '{"payload": {"fNP4PIc4": {}, "gXsdV02Q": {}, "1UFNExw5": {}}}' \
    > test.out 2>&1
eval_tap $? 142 'CheckEventCondition' test.out

#- 143 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'cvyFsbwK' \
    --body '{"conditionName": "BNhVMqs8", "userId": "zYEft8Eb"}' \
    > test.out 2>&1
eval_tap $? 143 'DeleteRewardConditionRecord' test.out

#- 144 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'ListStores' test.out

#- 145 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "GqQC96Ly", "defaultRegion": "fiKwiAys", "description": "VAITYZzg", "supportedLanguages": ["74KQpuaR", "BPWooOjJ", "xk3a33tc"], "supportedRegions": ["cs4kHMxe", "Om1tSZor", "lsEJBO30"], "title": "JVtgmRPa"}' \
    > test.out 2>&1
eval_tap $? 145 'CreateStore' test.out

#- 146 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ygdPXOjK' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 146 'ImportStore' test.out

#- 147 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPublishedStore' test.out

#- 148 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'DeletePublishedStore' test.out

#- 149 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPublishedStoreBackup' test.out

#- 150 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 150 'RollbackPublishedStore' test.out

#- 151 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Miev3vq8' \
    > test.out 2>&1
eval_tap $? 151 'GetStore' test.out

#- 152 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'wZjQkmCc' \
    --body '{"defaultLanguage": "6KlF4Qi3", "defaultRegion": "625tEYlz", "description": "biIO8pQJ", "supportedLanguages": ["JKtNMFgU", "qPd6YMYJ", "AOAoeT6X"], "supportedRegions": ["IxR9tgOy", "cyxsaVMz", "B1s4fa6r"], "title": "3BhAjUdo"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateStore' test.out

#- 153 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nWRbryfm' \
    > test.out 2>&1
eval_tap $? 153 'DeleteStore' test.out

#- 154 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '7KOGmZ8t' \
    --action 'DELETE' \
    --itemSku 'oFNrCfNC' \
    --itemType 'BUNDLE' \
    --limit '75' \
    --offset '39' \
    --selected 'true' \
    --sortBy '["updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'C5Qem1pB' \
    --updatedAtStart 'fqPWMwhN' \
    > test.out 2>&1
eval_tap $? 154 'QueryChanges' test.out

#- 155 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'ySRi7dei' \
    > test.out 2>&1
eval_tap $? 155 'PublishAll' test.out

#- 156 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'XWpB1x1F' \
    > test.out 2>&1
eval_tap $? 156 'PublishSelected' test.out

#- 157 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'p1WPFUCV' \
    > test.out 2>&1
eval_tap $? 157 'SelectAllRecords' test.out

#- 158 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'aY5HUsET' \
    --action 'UPDATE' \
    --itemSku 'gCRpco0O' \
    --itemType 'APP' \
    --type 'STORE' \
    --updatedAtEnd 'L05QrCLZ' \
    --updatedAtStart 'PWkBJsKv' \
    > test.out 2>&1
eval_tap $? 158 'GetStatistic' test.out

#- 159 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'rvoIETUm' \
    > test.out 2>&1
eval_tap $? 159 'UnselectAllRecords' test.out

#- 160 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'Nqw5rwvb' \
    --namespace $AB_NAMESPACE \
    --storeId 'zVLOSFLH' \
    > test.out 2>&1
eval_tap $? 160 'SelectRecord' test.out

#- 161 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'N9SdbN37' \
    --namespace $AB_NAMESPACE \
    --storeId 'QFGhHVQh' \
    > test.out 2>&1
eval_tap $? 161 'UnselectRecord' test.out

#- 162 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TaJXHxhO' \
    --targetStoreId 'dDccXV8H' \
    > test.out 2>&1
eval_tap $? 162 'CloneStore' test.out

#- 163 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jKNi8PBr' \
    > test.out 2>&1
eval_tap $? 163 'ExportStore' test.out

#- 164 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'R91FnTEb' \
    --limit '66' \
    --offset '81' \
    --sku 'vRVUkkaV' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId '9U90Wq76' \
    > test.out 2>&1
eval_tap $? 164 'QuerySubscriptions' test.out

#- 165 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FkUZJbAI' \
    > test.out 2>&1
eval_tap $? 165 'RecurringChargeSubscription' test.out

#- 166 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'TufAVQAq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 166 'GetTicketDynamic' test.out

#- 167 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ZJfSm1lc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "caWIh6Ca"}' \
    > test.out 2>&1
eval_tap $? 167 'DecreaseTicketSale' test.out

#- 168 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '88iUY4PF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 168 'GetTicketBoothID' test.out

#- 169 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'qR4VCTuP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 15, "orderNo": "FBUtr0CP"}' \
    > test.out 2>&1
eval_tap $? 169 'IncreaseTicketSale' test.out

#- 170 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lg8XCCYe' \
    --body '{"achievements": [{"id": "IJbOoCbX", "value": 21}, {"id": "Gr9IrAnD", "value": 0}, {"id": "LNugbIvN", "value": 39}], "steamUserId": "PIAn9DgE"}' \
    > test.out 2>&1
eval_tap $? 170 'UnlockSteamUserAchievement' test.out

#- 171 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'T5WanSXL' \
    --xboxUserId 'Kzd2F3jI' \
    > test.out 2>&1
eval_tap $? 171 'GetXblUserAchievements' test.out

#- 172 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IBMyrdMB' \
    --body '{"achievements": [{"id": "sIWwISfS", "percentComplete": 20}, {"id": "qjaZnhq8", "percentComplete": 26}, {"id": "gwnkXXKw", "percentComplete": 45}], "serviceConfigId": "To7bxHCY", "titleId": "9AQITi4L", "xboxUserId": "Xrmvxx3X"}' \
    > test.out 2>&1
eval_tap $? 172 'UpdateXblUserAchievement' test.out

#- 173 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Ry8at9H9' \
    > test.out 2>&1
eval_tap $? 173 'AnonymizeCampaign' test.out

#- 174 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '0qZMLiWn' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeEntitlement' test.out

#- 175 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'J0mxzIQx' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeFulfillment' test.out

#- 176 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'tvl7m3fh' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeIntegration' test.out

#- 177 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '76CIsAT5' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeOrder' test.out

#- 178 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'AlVIMI6Y' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizePayment' test.out

#- 179 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'COkc1ntl' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizeSubscription' test.out

#- 180 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'M1Vr73OQ' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeWallet' test.out

#- 181 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9jioZb9Z' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'JCliHCqX' \
    --features '["Z6G9VNY4", "pWkQZqza", "IIo9LKU6"]' \
    --itemId '["RUXM9G37", "E32H7Ble", "cmYiDatK"]' \
    --limit '27' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 181 'QueryUserEntitlements' test.out

#- 182 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'adfTn3Py' \
    --body '[{"endDate": "1990-09-26T00:00:00Z", "grantedCode": "8h8KNR9s", "itemId": "8GQHZ3rR", "itemNamespace": "sbk0LtDP", "language": "GKi_rWSK", "quantity": 19, "region": "M4JZog3B", "source": "ACHIEVEMENT", "startDate": "1991-07-05T00:00:00Z", "storeId": "Lsbng2yX"}, {"endDate": "1973-07-17T00:00:00Z", "grantedCode": "wzsthyXU", "itemId": "vrE1nypO", "itemNamespace": "7Y5FndaT", "language": "xnvl", "quantity": 12, "region": "YEw8DusJ", "source": "GIFT", "startDate": "1975-04-25T00:00:00Z", "storeId": "Ax2JWOql"}, {"endDate": "1989-05-04T00:00:00Z", "grantedCode": "1PFDvDks", "itemId": "BfTtSUsi", "itemNamespace": "njoxp2wJ", "language": "ZW_466", "quantity": 49, "region": "GLlGM4Bt", "source": "REDEEM_CODE", "startDate": "1986-03-14T00:00:00Z", "storeId": "QioVbsrI"}]' \
    > test.out 2>&1
eval_tap $? 182 'GrantUserEntitlement' test.out

#- 183 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rg1woXxS' \
    --activeOnly 'false' \
    --appId 'RrpFL7hi' \
    > test.out 2>&1
eval_tap $? 183 'GetUserAppEntitlementByAppId' test.out

#- 184 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '7jJaIdij' \
    --activeOnly 'false' \
    --limit '24' \
    --offset '78' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 184 'QueryUserEntitlementsByAppType' test.out

#- 185 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'yD51xGkn' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --itemId '3HSZgNsn' \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlementByItemId' test.out

#- 186 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '2R1assf7' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'MF4D3Xwz' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementBySku' test.out

#- 187 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YCyWTOn7' \
    --appIds '["wsHdni9N", "S3z4cA3o", "48VipyHt"]' \
    --itemIds '["T53IuAFZ", "AZiKkU7e", "AsAr6Mrw"]' \
    --skus '["5NLQltIQ", "dW5rJrv1", "lhIpBYX1"]' \
    > test.out 2>&1
eval_tap $? 187 'ExistsAnyUserActiveEntitlement' test.out

#- 188 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LVOhFz6E' \
    --itemIds '["n1PVVur8", "GElcPks4", "Nyfwr7NQ"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 189 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tJQrsw1G' \
    --appId '3JAe00xO' \
    > test.out 2>&1
eval_tap $? 189 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 190 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SkEIAs2v' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'xLGCyK7j' \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementOwnershipByItemId' test.out

#- 191 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '6eZH3XhI' \
    --ids '["jvgiWfqg", "XIpbEe5x", "8MRW3MUj"]' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemIds' test.out

#- 192 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hQgXm7DV' \
    --entitlementClazz 'CODE' \
    --sku 'kpzRLtKD' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipBySku' test.out

#- 193 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'srNXWaYZ' \
    --entitlementIds 'fW84smJ4' \
    > test.out 2>&1
eval_tap $? 193 'RevokeUserEntitlements' test.out

#- 194 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'a5gu1E16' \
    --namespace $AB_NAMESPACE \
    --userId 'uK63yX1G' \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlement' test.out

#- 195 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Qeg0TXaC' \
    --namespace $AB_NAMESPACE \
    --userId 'sCkoCh0N' \
    --body '{"endDate": "1983-08-07T00:00:00Z", "nullFieldList": ["K8xblZVm", "kr92QA34", "xVdJkaO4"], "startDate": "1984-12-16T00:00:00Z", "status": "CONSUMED", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateUserEntitlement' test.out

#- 196 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'RVJYHxRI' \
    --namespace $AB_NAMESPACE \
    --userId 'rx7r0Ley' \
    --body '{"options": ["7pdMGDCt", "7bxSsGAl", "OhRzDbJB"], "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 196 'ConsumeUserEntitlement' test.out

#- 197 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '2Qbi7cVz' \
    --namespace $AB_NAMESPACE \
    --userId 'FZopuJRI' \
    > test.out 2>&1
eval_tap $? 197 'DisableUserEntitlement' test.out

#- 198 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'U7O1rrdj' \
    --namespace $AB_NAMESPACE \
    --userId 'yNw8EXOa' \
    > test.out 2>&1
eval_tap $? 198 'EnableUserEntitlement' test.out

#- 199 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'hyJtQGnz' \
    --namespace $AB_NAMESPACE \
    --userId 'LHr0tUMT' \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementHistories' test.out

#- 200 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '5ykYfHKu' \
    --namespace $AB_NAMESPACE \
    --userId 'xGH2bcwL' \
    > test.out 2>&1
eval_tap $? 200 'RevokeUserEntitlement' test.out

#- 201 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Tz6u9AqE' \
    --body '{"duration": 11, "endDate": "1984-08-24T00:00:00Z", "itemId": "aitByqDX", "itemSku": "OTtvVoaO", "language": "MkpCBG77", "order": {"currency": {"currencyCode": "TDoRxSYV", "currencySymbol": "yVPfcZcG", "currencyType": "REAL", "decimals": 54, "namespace": "grXd0oOo"}, "ext": {"KdkIm4FC": {}, "iwFGbSPD": {}, "DmhBYgJf": {}}, "free": false}, "orderNo": "4zYjkVM8", "origin": "GooglePlay", "quantity": 14, "region": "fsEcevEs", "source": "PURCHASE", "startDate": "1989-12-17T00:00:00Z", "storeId": "J7rncnrR"}' \
    > test.out 2>&1
eval_tap $? 201 'FulfillItem' test.out

#- 202 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'EvDpU0vy' \
    --body '{"code": "r5SNieTu", "language": "lCB-oO", "region": "WhDtzaFD"}' \
    > test.out 2>&1
eval_tap $? 202 'RedeemCode' test.out

#- 203 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dr9rBXhM' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "lIommBDt", "namespace": "MkXzz1lg"}, "item": {"itemId": "XyptQuKk", "itemSku": "liLujzC8", "itemType": "OnSVCrys"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "7kpDEv1I", "namespace": "oGLxjQ1p"}, "item": {"itemId": "IOBrYzxj", "itemSku": "47szr2UW", "itemType": "d7C31N7L"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "lwsMtbOa", "namespace": "H9tMMdFP"}, "item": {"itemId": "UkPBqeKZ", "itemSku": "FVrZz7kl", "itemType": "E2ZcVrIu"}, "quantity": 3, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 203 'FulfillRewards' test.out

#- 204 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'quRq49Mw' \
    --endTime 'lKh5aoXM' \
    --limit '41' \
    --offset '19' \
    --productId '8BAixP9m' \
    --startTime 'h47AWhLj' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 204 'QueryUserIAPOrders' test.out

#- 205 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'bxwHDkXm' \
    > test.out 2>&1
eval_tap $? 205 'QueryAllUserIAPOrders' test.out

#- 206 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vCogkefD' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Ts_Gx", "productId": "2kAbiIWO", "region": "OEsz3n83", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 206 'MockFulfillIAPItem' test.out

#- 207 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Cd64KUbZ' \
    --itemId 'BV4YCmjD' \
    --limit '23' \
    --offset '0' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserOrders' test.out

#- 208 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CtEhrMyl' \
    --body '{"currencyCode": "utBhfJrc", "currencyNamespace": "CiJqUHXq", "discountedPrice": 79, "ext": {"wh0YfpxO": {}, "uMnzIjtS": {}, "sacmm1oF": {}}, "itemId": "PGbBpM1v", "language": "h0FmNznK", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 24, "quantity": 74, "region": "90YygvrQ", "returnUrl": "1lEUvfsV", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 208 'AdminCreateUserOrder' test.out

#- 209 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'VWRurqU9' \
    --itemId '4Pn9exfr' \
    > test.out 2>&1
eval_tap $? 209 'CountOfPurchasedItem' test.out

#- 210 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BlfbVjqe' \
    --userId 'UKRPNx80' \
    > test.out 2>&1
eval_tap $? 210 'GetUserOrder' test.out

#- 211 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'FxYZ9eB5' \
    --userId '7mtU1RSZ' \
    --body '{"status": "DELETED", "statusReason": "oIeEsRPa"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateUserOrderStatus' test.out

#- 212 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3EWaci6O' \
    --userId 'Ek2DGY67' \
    > test.out 2>&1
eval_tap $? 212 'FulfillUserOrder' test.out

#- 213 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'hgIm2Np8' \
    --userId '0ymfOVTF' \
    > test.out 2>&1
eval_tap $? 213 'GetUserOrderGrant' test.out

#- 214 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '2ISq0Te9' \
    --userId '6rZvlUBR' \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrderHistories' test.out

#- 215 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'cSHJXiAn' \
    --userId 'HYTWRzm4' \
    --body '{"additionalData": {"cardSummary": "7fYQq2d6"}, "authorisedTime": "1991-02-24T00:00:00Z", "chargebackReversedTime": "1997-07-25T00:00:00Z", "chargebackTime": "1974-07-16T00:00:00Z", "chargedTime": "1980-08-09T00:00:00Z", "createdTime": "1981-07-11T00:00:00Z", "currency": {"currencyCode": "dSiNxdkA", "currencySymbol": "JAJumGTa", "currencyType": "VIRTUAL", "decimals": 27, "namespace": "IcRBuPYi"}, "customParameters": {"3xGjuozU": {}, "Gda5CSZL": {}, "4z9bSrhd": {}}, "extOrderNo": "ZGHrrowp", "extTxId": "AsFL6W9P", "extUserId": "MicS1M9h", "issuedAt": "1997-01-11T00:00:00Z", "metadata": {"T5nRjfO8": "ePpzsTPv", "qUceG7Yc": "bIq1oDWx", "zt4KaLC9": "3YWj2p8b"}, "namespace": "h9ou9CpH", "nonceStr": "KE4aqZ99", "paymentMethod": "UDzvb0Nq", "paymentMethodFee": 43, "paymentOrderNo": "LWIHAXXf", "paymentProvider": "WALLET", "paymentProviderFee": 72, "paymentStationUrl": "tpHp6wi7", "price": 50, "refundedTime": "1983-11-01T00:00:00Z", "salesTax": 11, "sandbox": true, "sku": "S1CaPx7S", "status": "AUTHORISE_FAILED", "statusReason": "8otm5nda", "subscriptionId": "78vJzM2l", "subtotalPrice": 36, "targetNamespace": "1zg4xlkB", "targetUserId": "8bGuS2bW", "tax": 29, "totalPrice": 69, "totalTax": 7, "txEndTime": "1993-06-19T00:00:00Z", "type": "6CcUtPWV", "userId": "kNHWQHnd", "vat": 24}' \
    > test.out 2>&1
eval_tap $? 215 'ProcessUserOrderNotification' test.out

#- 216 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'brWFPapT' \
    --userId '28exeRFJ' \
    > test.out 2>&1
eval_tap $? 216 'DownloadUserOrderReceipt' test.out

#- 217 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'PwIdQv6O' \
    --body '{"currencyCode": "vu5xtmGt", "currencyNamespace": "v2shLHjq", "customParameters": {"Dz364aLr": {}, "xUdVykQ1": {}, "Uijf37kY": {}}, "description": "1WKM9Yyh", "extOrderNo": "Ek24t8Sx", "extUserId": "RVDw2SRS", "itemType": "CODE", "language": "hV", "metadata": {"bepw5Fx5": "VDyWNjvd", "LUU8eLxY": "iOPN9cLg", "a326OL3Z": "r76kfgs0"}, "notifyUrl": "xkPPYFsv", "omitNotification": false, "platform": "ERJkuobK", "price": 21, "recurringPaymentOrderNo": "HEIwHYc2", "region": "eRWMsQEe", "returnUrl": "DGAP0Hmw", "sandbox": false, "sku": "Y58cnrIT", "subscriptionId": "U2OyV4e5", "title": "gzmRWU3j"}' \
    > test.out 2>&1
eval_tap $? 217 'CreateUserPaymentOrder' test.out

#- 218 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7INg1A6N' \
    --userId 'oMAVguTh' \
    --body '{"description": "7Tratt1T"}' \
    > test.out 2>&1
eval_tap $? 218 'RefundUserPaymentOrder' test.out

#- 219 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'FMXLZ0wK' \
    --body '{"code": "XiU3fwZu", "orderNo": "KuTDboMj"}' \
    > test.out 2>&1
eval_tap $? 219 'ApplyUserRedemption' test.out

#- 220 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'RKByJURT' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'kqyTTLEG' \
    --limit '88' \
    --offset '23' \
    --sku '0p3ussvG' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserSubscriptions' test.out

#- 221 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '0YA8FpzK' \
    --excludeSystem 'true' \
    --limit '92' \
    --offset '91' \
    --subscriptionId 'KUdElbDp' \
    > test.out 2>&1
eval_tap $? 221 'GetUserSubscriptionActivities' test.out

#- 222 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'j93qtFe2' \
    --body '{"grantDays": 15, "itemId": "cIii42NR", "language": "z3VHsXws", "reason": "6wvm2Htq", "region": "oJYrAhUa", "source": "nW6vaZl2"}' \
    > test.out 2>&1
eval_tap $? 222 'PlatformSubscribeSubscription' test.out

#- 223 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GtAFPI7I' \
    --itemId 'gGjRZg40' \
    > test.out 2>&1
eval_tap $? 223 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 224 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 's1roVIIi' \
    --userId 'b8ocomQL' \
    > test.out 2>&1
eval_tap $? 224 'GetUserSubscription' test.out

#- 225 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ddlcDaGP' \
    --userId 'ThjdvLa4' \
    > test.out 2>&1
eval_tap $? 225 'DeleteUserSubscription' test.out

#- 226 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eNSrij27' \
    --userId 'sHpKeDBh' \
    --force 'true' \
    --body '{"immediate": false, "reason": "pFGW6Krz"}' \
    > test.out 2>&1
eval_tap $? 226 'CancelSubscription' test.out

#- 227 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DuqgJ4rB' \
    --userId 'JvMQxW2X' \
    --body '{"grantDays": 90, "reason": "kNT8LIRk"}' \
    > test.out 2>&1
eval_tap $? 227 'GrantDaysToSubscription' test.out

#- 228 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4qQKasUF' \
    --userId 'oFtT0BVV' \
    --excludeFree 'true' \
    --limit '9' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscriptionBillingHistories' test.out

#- 229 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'in1l4iBU' \
    --userId 'znrA2UR6' \
    --body '{"additionalData": {"cardSummary": "twI5NdnN"}, "authorisedTime": "1998-09-30T00:00:00Z", "chargebackReversedTime": "1979-09-11T00:00:00Z", "chargebackTime": "1995-07-11T00:00:00Z", "chargedTime": "1987-06-27T00:00:00Z", "createdTime": "1976-02-21T00:00:00Z", "currency": {"currencyCode": "MTXQ33yn", "currencySymbol": "fyR5ibrc", "currencyType": "REAL", "decimals": 43, "namespace": "RXVJkBJn"}, "customParameters": {"qbQp6Ag8": {}, "n5tL7SuS": {}, "UcrcjAdC": {}}, "extOrderNo": "lFTl6ZCl", "extTxId": "9ViZt88V", "extUserId": "Po5iDZNI", "issuedAt": "1990-09-23T00:00:00Z", "metadata": {"Q1b9TPSr": "beKJCxXO", "OsquxOsq": "unsby9No", "XyX6ppEn": "pqejb3ye"}, "namespace": "yldLbhwF", "nonceStr": "IuS0v6pr", "paymentMethod": "ebGSABJg", "paymentMethodFee": 94, "paymentOrderNo": "sx5CYHai", "paymentProvider": "CHECKOUT", "paymentProviderFee": 81, "paymentStationUrl": "hciGi1AB", "price": 73, "refundedTime": "1974-06-30T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "3zPxUWeW", "status": "REQUEST_FOR_INFORMATION", "statusReason": "Qz1chbDQ", "subscriptionId": "AtO00GOM", "subtotalPrice": 77, "targetNamespace": "Kd7i2sYm", "targetUserId": "LykltBCY", "tax": 26, "totalPrice": 90, "totalTax": 66, "txEndTime": "1972-11-23T00:00:00Z", "type": "U6tlMCL1", "userId": "EXr8lL3g", "vat": 2}' \
    > test.out 2>&1
eval_tap $? 229 'ProcessUserSubscriptionNotification' test.out

#- 230 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '4DKZDz9u' \
    --namespace $AB_NAMESPACE \
    --userId 'dg08NjPM' \
    --body '{"count": 90, "orderNo": "MSU89VEA"}' \
    > test.out 2>&1
eval_tap $? 230 'AcquireUserTicket' test.out

#- 231 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'oEhaIm95' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserCurrencyWallets' test.out

#- 232 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '3UWZ1H82' \
    --namespace $AB_NAMESPACE \
    --userId 'AQM2ksI4' \
    --limit '75' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 232 'ListUserCurrencyTransactions' test.out

#- 233 CheckWallet
eval_tap 0 233 'CheckWallet # SKIP deprecated' test.out

#- 234 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'As7YuK3z' \
    --namespace $AB_NAMESPACE \
    --userId '8gYbPplO' \
    --body '{"amount": 67, "expireAt": "1994-07-30T00:00:00Z", "origin": "Nintendo", "reason": "sDUbQPRv", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 234 'CreditUserWallet' test.out

#- 235 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'w7jHsQTh' \
    --namespace $AB_NAMESPACE \
    --userId 'cuK0jCse' \
    --body '{"amount": 56, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 235 'PayWithUserWallet' test.out

#- 236 GetUserWallet
eval_tap 0 236 'GetUserWallet # SKIP deprecated' test.out

#- 237 DebitUserWallet
eval_tap 0 237 'DebitUserWallet # SKIP deprecated' test.out

#- 238 DisableUserWallet
eval_tap 0 238 'DisableUserWallet # SKIP deprecated' test.out

#- 239 EnableUserWallet
eval_tap 0 239 'EnableUserWallet # SKIP deprecated' test.out

#- 240 ListUserWalletTransactions
eval_tap 0 240 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 241 QueryWallets
eval_tap 0 241 'QueryWallets # SKIP deprecated' test.out

#- 242 GetWallet
eval_tap 0 242 'GetWallet # SKIP deprecated' test.out

#- 243 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'W9rw3AUj' \
    --end '4wG7B1Hi' \
    --start 'ojHlim9G' \
    > test.out 2>&1
eval_tap $? 243 'SyncOrders' test.out

#- 244 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["P8lyxrnI", "1ouCVVuX", "oyXfdmcr"], "apiKey": "KKd8fAhd", "authoriseAsCapture": true, "blockedPaymentMethods": ["yun3KXr3", "xTLrpWG8", "n8FfnUES"], "clientKey": "lT3WU2Br", "dropInSettings": "ix4p6Jxq", "liveEndpointUrlPrefix": "of9HCswG", "merchantAccount": "zGvw9l2T", "notificationHmacKey": "V3Xpqyvn", "notificationPassword": "eF4zFRw9", "notificationUsername": "eCrQoJ0u", "returnUrl": "xP6hMRHF", "settings": "anLmrLPE"}' \
    > test.out 2>&1
eval_tap $? 244 'TestAdyenConfig' test.out

#- 245 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "WBcz2doc", "privateKey": "BakrTjZ3", "publicKey": "6PfdvGvK", "returnUrl": "LEHtYVhb"}' \
    > test.out 2>&1
eval_tap $? 245 'TestAliPayConfig' test.out

#- 246 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "lUaJVQFG", "secretKey": "wt0dV02h"}' \
    > test.out 2>&1
eval_tap $? 246 'TestCheckoutConfig' test.out

#- 247 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'tLLY40JP' \
    --region 'LId4uSyv' \
    > test.out 2>&1
eval_tap $? 247 'DebugMatchedPaymentMerchantConfig' test.out

#- 248 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "TQB4PTGv", "clientSecret": "bU9JEqUU", "returnUrl": "ngBNxCIy", "webHookId": "iwgbgXeC"}' \
    > test.out 2>&1
eval_tap $? 248 'TestPayPalConfig' test.out

#- 249 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["etsbtW4A", "27e1VnEp", "zm3TUkhZ"], "publishableKey": "fQzceACk", "secretKey": "INagu962", "webhookSecret": "XoLuAbnk"}' \
    > test.out 2>&1
eval_tap $? 249 'TestStripeConfig' test.out

#- 250 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "rptvV92k", "key": "HmXQF1zF", "mchid": "prDKWFmB", "returnUrl": "5x6wqD85"}' \
    > test.out 2>&1
eval_tap $? 250 'TestWxPayConfig' test.out

#- 251 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "n5c4ZP34", "flowCompletionUrl": "esfLCVwd", "merchantId": 67, "projectId": 94, "projectSecretKey": "7b7RCnnZ"}' \
    > test.out 2>&1
eval_tap $? 251 'TestXsollaConfig' test.out

#- 252 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'ommcYdDM' \
    > test.out 2>&1
eval_tap $? 252 'GetPaymentMerchantConfig' test.out

#- 253 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '17QyfTBD' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["8oIJmpoB", "DH47jnux", "IwTLY6sI"], "apiKey": "B9yW6KGV", "authoriseAsCapture": false, "blockedPaymentMethods": ["pwgyeNMx", "2qdsnFwV", "ujzDALq7"], "clientKey": "vDG5entq", "dropInSettings": "XNI8g1iK", "liveEndpointUrlPrefix": "gzJoCb9f", "merchantAccount": "u4Fu3riX", "notificationHmacKey": "OX6TykWI", "notificationPassword": "O3McTEPa", "notificationUsername": "MfiUVHLB", "returnUrl": "zsNeQOKH", "settings": "RybMb9Xn"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateAdyenConfig' test.out

#- 254 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '1k6OXPqd' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 254 'TestAdyenConfigById' test.out

#- 255 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '3eYCfZTZ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "um8SPlNq", "privateKey": "MOANItAZ", "publicKey": "PrcWJlkX", "returnUrl": "0ClpgFK8"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAliPayConfig' test.out

#- 256 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'VYNOLG4M' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestAliPayConfigById' test.out

#- 257 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'OAqgbgHk' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "6vcpDsMR", "secretKey": "1iMV9Cvw"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateCheckoutConfig' test.out

#- 258 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'UufEWVdo' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 258 'TestCheckoutConfigById' test.out

#- 259 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'zHiTRReQ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "RQBMVJxP", "clientSecret": "gURZEXzf", "returnUrl": "mPZreisx", "webHookId": "h3tW8j8L"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdatePayPalConfig' test.out

#- 260 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'HYphEI7u' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestPayPalConfigById' test.out

#- 261 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '7LTj3kZ9' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["fnV1h2T8", "Sx3ZC6AL", "0vBhfBkR"], "publishableKey": "a43dYcac", "secretKey": "s8vn8B8o", "webhookSecret": "DZGqchLS"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateStripeConfig' test.out

#- 262 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'zV0NgdK2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestStripeConfigById' test.out

#- 263 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'fDM77aS1' \
    --validate 'true' \
    --body '{"appId": "rlO8zoIn", "key": "dJHVYkG7", "mchid": "HUGwm2eU", "returnUrl": "RuHUU6MZ"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateWxPayConfig' test.out

#- 264 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'aBx4X75V' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 264 'UpdateWxPayConfigCert' test.out

#- 265 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Ngg0SyXo' \
    > test.out 2>&1
eval_tap $? 265 'TestWxPayConfigById' test.out

#- 266 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '690g2YwY' \
    --validate 'false' \
    --body '{"apiKey": "Xd0wUeoO", "flowCompletionUrl": "UCbQjudF", "merchantId": 86, "projectId": 80, "projectSecretKey": "IObcXpFO"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateXsollaConfig' test.out

#- 267 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '5uV4OiEF' \
    > test.out 2>&1
eval_tap $? 267 'TestXsollaConfigById' test.out

#- 268 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'ADPyMbpi' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaUIConfig' test.out

#- 269 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '95' \
    --namespace 's6kONBip' \
    --offset '84' \
    --region 'h9IabTQ3' \
    > test.out 2>&1
eval_tap $? 269 'QueryPaymentProviderConfig' test.out

#- 270 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "xIHEXEBa", "region": "nihOoxBu", "sandboxTaxJarApiToken": "pBOHadmb", "specials": ["ALIPAY", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "xvBfqJNU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 270 'CreatePaymentProviderConfig' test.out

#- 271 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 271 'GetAggregatePaymentProviders' test.out

#- 272 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '5bNLON83' \
    --region 'V8qcGIWE' \
    > test.out 2>&1
eval_tap $? 272 'DebugMatchedPaymentProviderConfig' test.out

#- 273 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetSpecialPaymentProviders' test.out

#- 274 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '1UvVj43Q' \
    --body '{"aggregate": "ADYEN", "namespace": "Iv4fG93l", "region": "iHv6Sc3p", "sandboxTaxJarApiToken": "K2ilXmvP", "specials": ["PAYPAL", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "pPIYToYg", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 274 'UpdatePaymentProviderConfig' test.out

#- 275 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'E0pxAYep' \
    > test.out 2>&1
eval_tap $? 275 'DeletePaymentProviderConfig' test.out

#- 276 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 276 'GetPaymentTaxConfig' test.out

#- 277 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "k6qoiQu1", "taxJarApiToken": "IyOKXFSK", "taxJarEnabled": false, "taxJarProductCodesMapping": {"TZCOMFoq": "e3xlUDad", "MrdsAMaU": "HnlwE5dE", "UdHQAMEU": "NVUPDgQO"}}' \
    > test.out 2>&1
eval_tap $? 277 'UpdatePaymentTaxConfig' test.out

#- 278 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'w8sTNW3E' \
    --end 'FHoHcd75' \
    --start 'iY6qwtSQ' \
    > test.out 2>&1
eval_tap $? 278 'SyncPaymentOrders' test.out

#- 279 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'P2juQ0dG' \
    --storeId '6bj5jkS3' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetRootCategories' test.out

#- 280 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ZU0Meiy2' \
    --storeId 'UZiY6NFm' \
    > test.out 2>&1
eval_tap $? 280 'DownloadCategories' test.out

#- 281 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'iTOSQ8UU' \
    --namespace $AB_NAMESPACE \
    --language 'DlIa0F0W' \
    --storeId 'SsUPyLWo' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetCategory' test.out

#- 282 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'QnqbStI5' \
    --namespace $AB_NAMESPACE \
    --language 'MryB3I4Y' \
    --storeId 'dBn074Du' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetChildCategories' test.out

#- 283 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'x5HvXoUd' \
    --namespace $AB_NAMESPACE \
    --language 'sxJK7Ko5' \
    --storeId 'gceZxohZ' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetDescendantCategories' test.out

#- 284 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 284 'PublicListCurrencies' test.out

#- 285 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '5b7Vgpxj' \
    --region 'fiuAznD3' \
    --storeId 'yNCWgTmT' \
    --appId 'UX1cFYIn' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItemByAppId' test.out

#- 286 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId '6ne4xnKW' \
    --categoryPath 'HUR2C0ag' \
    --features 'wS5Qh8jd' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --language 'C6zBQPtt' \
    --limit '100' \
    --offset '1' \
    --region 'U0CW84RC' \
    --sortBy '["updatedAt:asc", "name:desc", "createdAt"]' \
    --storeId 'er305xgX' \
    --tags 'B5jWyWfJ' \
    > test.out 2>&1
eval_tap $? 286 'PublicQueryItems' test.out

#- 287 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'ilhy2Zst' \
    --region 'RJfQy3Jz' \
    --storeId 'InUchw7f' \
    --sku 'wAFmpycF' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemBySku' test.out

#- 288 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'TAOQ4yaX' \
    --region 'FxSiQXKI' \
    --storeId 'EUT2hfr7' \
    --itemIds 'diiGnYJ6' \
    > test.out 2>&1
eval_tap $? 288 'PublicBulkGetItems' test.out

#- 289 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["IkggcvqE", "xsjI1GmA", "uVUbAKCF"]}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateItemPurchaseCondition' test.out

#- 290 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '69' \
    --offset '28' \
    --region '2i1OOoCv' \
    --storeId 'YhwBpEzk' \
    --keyword 'KfbikojB' \
    --language 'XtKuKKRc' \
    > test.out 2>&1
eval_tap $? 290 'PublicSearchItems' test.out

#- 291 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'rDL7K8Qp' \
    --namespace $AB_NAMESPACE \
    --language 'BrIJorPF' \
    --region 'JFuPtWsv' \
    --storeId 'jHMMfD5m' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetApp' test.out

#- 292 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'hm5EgSXJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'PublicGetItemDynamicData' test.out

#- 293 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '0TeXKo6n' \
    --namespace $AB_NAMESPACE \
    --language '3JKpvovS' \
    --populateBundle 'true' \
    --region 'eKEtJP7c' \
    --storeId 'gcuT3nPl' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetItem' test.out

#- 294 GetPaymentCustomization
eval_tap 0 294 'GetPaymentCustomization # SKIP deprecated' test.out

#- 295 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "D1j0uPbL", "paymentProvider": "WALLET", "returnUrl": "OSqHAkbx", "ui": "SdMrNIrv", "zipCode": "zuOBK2v1"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetPaymentUrl' test.out

#- 296 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'h9uFWcDR' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetPaymentMethods' test.out

#- 297 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'I4J5rtb7' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUnpaidPaymentOrder' test.out

#- 298 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O7LL6o7q' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'tSuIENqD' \
    --body '{"token": "nQgIXw01"}' \
    > test.out 2>&1
eval_tap $? 298 'Pay' test.out

#- 299 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LPoSLVuc' \
    > test.out 2>&1
eval_tap $? 299 'PublicCheckPaymentOrderPaidStatus' test.out

#- 300 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'F5OLt3zf' \
    > test.out 2>&1
eval_tap $? 300 'GetPaymentPublicConfig' test.out

#- 301 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'C3zVjfxo' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetQRCode' test.out

#- 302 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'lMXCAlp2' \
    --foreinginvoice 'IiiILvQl' \
    --invoiceId 'Q6QfOS3v' \
    --payload 'cZh1FumC' \
    --redirectResult '7fc1cHon' \
    --resultCode 'ApzLGU3B' \
    --sessionId 'QTRmUK6E' \
    --status 'H4EXgtVk' \
    --token 'ZXu0sHZg' \
    --type 'vrWLTg14' \
    --userId 'lSj5Jwmk' \
    --orderNo 'vApgASfp' \
    --paymentOrderNo 'uwssk6qC' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'Mj5xBm1o' \
    > test.out 2>&1
eval_tap $? 302 'PublicNormalizePaymentReturnUrl' test.out

#- 303 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'fMPRt4xl' \
    --paymentOrderNo 'PjHjuJns' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 303 'GetPaymentTaxValue' test.out

#- 304 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '26P4iH36' \
    > test.out 2>&1
eval_tap $? 304 'GetRewardByCode' test.out

#- 305 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'hf9PD4c3' \
    --limit '35' \
    --offset '76' \
    --sortBy '["namespace:desc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 305 'QueryRewards1' test.out

#- 306 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'NMXFSbk2' \
    > test.out 2>&1
eval_tap $? 306 'GetReward1' test.out

#- 307 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'PublicListStores' test.out

#- 308 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["h4qRhehb", "jw6NEQu9", "d4EArMxk"]' \
    --itemIds '["JMSQz6qN", "arX3d5Tb", "fPnVW747"]' \
    --skus '["q4kDfQ7B", "vfF6oz03", "UBm5eKpg"]' \
    > test.out 2>&1
eval_tap $? 308 'PublicExistsAnyMyActiveEntitlement' test.out

#- 309 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'o4i6wpCq' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 310 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId '6Ks4xqnw' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 311 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'KNONJiIB' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 312 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["yZr0Vw8n", "cTmnYOWE", "Y3Qjtty5"]' \
    --itemIds '["0Hhkxkok", "jzZiFu56", "67CIWUT3"]' \
    --skus '["eOdNdWdS", "cIlE3wQC", "o2eYRi41"]' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetEntitlementOwnershipToken' test.out

#- 313 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'AyYMDFJj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyWallet' test.out

#- 314 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YvFA9Ikz' \
    --body '{"epicGamesJwtToken": "QbIeQ88k"}' \
    > test.out 2>&1
eval_tap $? 314 'SyncEpicGameDLC' test.out

#- 315 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ThqJZgoB' \
    --body '{"serviceLabel": 31}' \
    > test.out 2>&1
eval_tap $? 315 'PublicSyncPsnDlcInventory' test.out

#- 316 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'XkY4Ipsy' \
    --body '{"appId": "iAoQ7Nvw", "steamId": "NuunBo8N"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncSteamDLC' test.out

#- 317 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HEbaq9Ze' \
    --body '{"xstsToken": "43PYC66M"}' \
    > test.out 2>&1
eval_tap $? 317 'SyncXboxDLC' test.out

#- 318 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1UrJTHMZ' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'RAS3psav' \
    --features '["SexzyjTp", "TN0qZIEn", "nPosjdOM"]' \
    --itemId '["HjRPXW5g", "4BzFBt3u", "VbPuxvcr"]' \
    --limit '43' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 318 'PublicQueryUserEntitlements' test.out

#- 319 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wlbEwyEd' \
    --appId 'm0d856Wi' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserAppEntitlementByAppId' test.out

#- 320 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'H2O6secx' \
    --limit '50' \
    --offset '29' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlementsByAppType' test.out

#- 321 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'M3hPJhoy' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'QzjT4BCE' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserEntitlementByItemId' test.out

#- 322 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'tqMgibX1' \
    --entitlementClazz 'CODE' \
    --sku 'MtKN9xt6' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserEntitlementBySku' test.out

#- 323 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'eIAQisnF' \
    --appIds '["6jgEwAzp", "5y55ZOQV", "TqwWZkcz"]' \
    --itemIds '["BsBcumMx", "z5q5DSie", "yfcLfBEH"]' \
    --skus '["HLtA3Ycx", "lg7g5x5X", "hwPmaeQN"]' \
    > test.out 2>&1
eval_tap $? 323 'PublicExistsAnyUserActiveEntitlement' test.out

#- 324 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2Vg5w3hK' \
    --appId 'TB11tX84' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 325 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gThzu8r1' \
    --entitlementClazz 'MEDIA' \
    --itemId '9soSkBMh' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 326 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'r5UdfGHf' \
    --ids '["9nCJjTxy", "3SwxsEWZ", "Gqh6r9IF"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 327 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'dGMQ3oOj' \
    --entitlementClazz 'MEDIA' \
    --sku '4FIln0ph' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 328 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'yygAfrOs' \
    --namespace $AB_NAMESPACE \
    --userId 'vDEFmXlZ' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlement' test.out

#- 329 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'ghdjmJJM' \
    --namespace $AB_NAMESPACE \
    --userId 'BCGrcZWM' \
    --body '{"options": ["E9nMvsaq", "N2pvS133", "SPzZsu1m"], "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 329 'PublicConsumeUserEntitlement' test.out

#- 330 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'RkTrleoQ' \
    --body '{"code": "ajMzQgJW", "language": "mFqL", "region": "qy98lj4M"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicRedeemCode' test.out

#- 331 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'nQLG8CnJ' \
    --body '{"excludeOldTransactions": true, "language": "sJS", "productId": "TxaAkK5Q", "receiptData": "0tztDjYD", "region": "7F0pAvLY", "transactionId": "cRwUzM2G"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicFulfillAppleIAPItem' test.out

#- 332 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZBUfBgL0' \
    --body '{"epicGamesJwtToken": "mmLE62Qa"}' \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGamesInventory' test.out

#- 333 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'I9YNrjjD' \
    --body '{"autoAck": false, "language": "FOzy_QSDW_365", "orderId": "Xbji3JyN", "packageName": "YeVRelGR", "productId": "RDr8LF66", "purchaseTime": 11, "purchaseToken": "S64UqGxv", "region": "z1kgtdRx"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillGoogleIAPItem' test.out

#- 334 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'RbyNqidT' \
    --body '{"currencyCode": "GJ2EfvVQ", "price": 0.29615682397263343, "productId": "UaixYnLt", "serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 334 'PublicReconcilePlayStationStore' test.out

#- 335 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'DJPwJD6g' \
    --body '{"appId": "gGx7KUb1", "language": "nr", "region": "geJbDgiK", "stadiaPlayerId": "o6x2NGk7"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncStadiaEntitlement' test.out

#- 336 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QOLgZT2O' \
    --body '{"appId": "cYrop8BN", "currencyCode": "mxZEV6zV", "language": "XMFh_Xp", "price": 0.6781695860470403, "productId": "A6RsPPvN", "region": "ROBVWiql", "steamId": "mCG9DOGs"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncSteamInventory' test.out

#- 337 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rkoxDiPe' \
    --body '{"gameId": "XEoiyGj7", "language": "MQd-Pimf-283", "region": "9ycO5iOb"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncTwitchDropsEntitlement' test.out

#- 338 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pjVDI6xk' \
    --body '{"currencyCode": "YLl3NVzN", "price": 0.9924508841981786, "productId": "WaNXuE50", "xstsToken": "aZVtShki"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncXboxInventory' test.out

#- 339 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wugyFvvO' \
    --itemId 'TAicREY4' \
    --limit '85' \
    --offset '29' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserOrders' test.out

#- 340 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'F3mWdReB' \
    --body '{"currencyCode": "xDIfZqSY", "discountedPrice": 87, "ext": {"tfVMOoke": {}, "ORfIoQkl": {}, "T9RrchxH": {}}, "itemId": "QapJagV1", "language": "lnvU-sU", "price": 51, "quantity": 18, "region": "BG9qqjSK", "returnUrl": "FbOAYJnn"}' \
    > test.out 2>&1
eval_tap $? 340 'PublicCreateUserOrder' test.out

#- 341 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Pi5oaAwn' \
    --userId 'lxkS8WtM' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserOrder' test.out

#- 342 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'U2jFKygu' \
    --userId 'ARC2cTkd' \
    > test.out 2>&1
eval_tap $? 342 'PublicCancelUserOrder' test.out

#- 343 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'cx1cXYgg' \
    --userId 'yOH24Q1x' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrderHistories' test.out

#- 344 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'GKmr7D3g' \
    --userId 't0eaiB37' \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadUserOrderReceipt' test.out

#- 345 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'JRujgqNz' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentAccounts' test.out

#- 346 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'BmbyebdN' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'OGGv17h0' \
    > test.out 2>&1
eval_tap $? 346 'PublicDeletePaymentAccount' test.out

#- 347 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MMwtqLc6' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'flRagxBs' \
    --limit '67' \
    --offset '3' \
    --sku '7qTbYb1y' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserSubscriptions' test.out

#- 348 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'hGuoorNB' \
    --body '{"currencyCode": "c8SkST7g", "itemId": "wWm7GGwk", "language": "ogh_Rl", "region": "pBbJUCAV", "returnUrl": "68cnT4IB", "source": "TKET0KqC"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicSubscribeSubscription' test.out

#- 349 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5tZHGLJj' \
    --itemId 'KseIWG7P' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 350 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UEw29fIS' \
    --userId 'zlvDERIH' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserSubscription' test.out

#- 351 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iVLT3My0' \
    --userId '7ZlO1a82' \
    > test.out 2>&1
eval_tap $? 351 'PublicChangeSubscriptionBillingAccount' test.out

#- 352 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EyMFqJsj' \
    --userId 'CCLaFgV3' \
    --body '{"immediate": true, "reason": "cRQpcyZu"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicCancelSubscription' test.out

#- 353 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rwNSMkai' \
    --userId '5lBqPitV' \
    --excludeFree 'false' \
    --limit '49' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserSubscriptionBillingHistories' test.out

#- 354 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'EVBek1aW' \
    --namespace $AB_NAMESPACE \
    --userId 'nrysJS9b' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetWallet' test.out

#- 355 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'rUqcAsBr' \
    --namespace $AB_NAMESPACE \
    --userId 'Mq90Pf76' \
    --limit '51' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 355 'PublicListUserWalletTransactions' test.out

#- 356 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate '0vsKxxGM' \
    --baseAppId 'sNA0TdQ5' \
    --categoryPath 'f3G55d5a' \
    --features 'tyDYqdkP' \
    --includeSubCategoryItem 'true' \
    --itemStatus 'INACTIVE' \
    --itemType 'COINS' \
    --limit '65' \
    --offset '25' \
    --region 'gfmEHGd4' \
    --sortBy '["updatedAt:desc", "createdAt"]' \
    --storeId 'ka8CzZtH' \
    --tags 'XnZ6nyEU' \
    --targetNamespace 'UtZArBWJ' \
    > test.out 2>&1
eval_tap $? 356 'QueryItems1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE