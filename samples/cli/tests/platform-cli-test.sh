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
echo "1..347"

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
    --body '{"context": {"item": {"appId": "ATZnvUXR", "appType": "GAME", "baseAppId": "NfEAZ49q", "boothName": "s9Qhsf8D", "boundItemIds": ["7xsBOAJb", "a0WGVkQy", "a2vKweB1"], "categoryPath": "qXtP3qqt", "clazz": "dkco40pd", "createdAt": "1987-08-26T00:00:00Z", "description": "vUuRgXIa", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"l0DX9vRu": {}, "pP3J0F8V": {}, "sPijmgaM": {}}, "features": ["Y2qjAoLS", "25H5BmMS", "nrnGOuqs"], "fresh": false, "images": [{"as": "rSF94y7U", "caption": "A5yazteK", "height": 25, "imageUrl": "9RhFpSlx", "smallImageUrl": "nTDI3r72", "width": 97}, {"as": "1Vq0uaO0", "caption": "vbwfCigS", "height": 83, "imageUrl": "SI5rbpwY", "smallImageUrl": "pnXWOlWk", "width": 72}, {"as": "FjDa80Yp", "caption": "NJ68CWEy", "height": 33, "imageUrl": "p3m1vszg", "smallImageUrl": "34qnegRM", "width": 60}], "itemId": "6dEWCP36", "itemIds": ["NLCPx2Gu", "m3kspXrL", "HXEdkk4b"], "itemQty": {"BSOady0p": 0, "ti7wvN5D": 62, "9GNl6nlV": 52}, "itemType": "COINS", "language": "jddMnCzJ", "listable": true, "localExt": {"eEE0zU8V": {}, "NV8Qgmpd": {}, "oXpjgsK6": {}}, "longDescription": "JF3KT7y1", "maxCount": 13, "maxCountPerUser": 31, "name": "stQyExUf", "namespace": "cV6KdgAb", "optionBoxConfig": {"boxItems": [{"count": 97, "itemId": "HSKsfDky", "itemSku": "qZM85YeC"}, {"count": 43, "itemId": "Z4Mf5NES", "itemSku": "nsEW65M2"}, {"count": 87, "itemId": "Ict9538k", "itemSku": "DWkDhHKR"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "is", "name": "yH25DS8g", "predicateType": "SeasonTierPredicate", "value": "adZyopif", "values": ["JaxTHQC9", "pJe02STv", "qRBEf21l"]}, {"anyOf": 10, "comparison": "isNot", "name": "USE9IiJC", "predicateType": "EntitlementPredicate", "value": "MrTzzO4P", "values": ["77KKNpDv", "kWUzQ6r7", "CcMYM4p6"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "BxkTreok", "predicateType": "EntitlementPredicate", "value": "6GTR6re6", "values": ["puO7irFK", "Vm9UL0YM", "lsyJBPOK"]}]}, {"operator": "and", "predicates": [{"anyOf": 63, "comparison": "isGreaterThan", "name": "L5s8JKyd", "predicateType": "SeasonPassPredicate", "value": "iFhTXivI", "values": ["khj1RYEY", "XOlrgp7t", "2sqTLwWB"]}, {"anyOf": 58, "comparison": "isGreaterThan", "name": "fIWFezQ9", "predicateType": "SeasonPassPredicate", "value": "oSNoNF5e", "values": ["7zf1k2YR", "ZtA8sGq3", "vJrWNhnw"]}, {"anyOf": 76, "comparison": "isNot", "name": "rSZjeJbq", "predicateType": "SeasonTierPredicate", "value": "asI1NGDJ", "values": ["RF3CE200", "eR276bR7", "5RAFExLU"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "isGreaterThan", "name": "trS576tD", "predicateType": "SeasonTierPredicate", "value": "CfDwDrXW", "values": ["v4vwzNeh", "5IUOOalE", "QuieLaNH"]}, {"anyOf": 55, "comparison": "isLessThanOrEqual", "name": "Br3iNOBi", "predicateType": "EntitlementPredicate", "value": "tMhtqWOe", "values": ["mmmOn7jl", "EvnKx4oi", "Xobs0nml"]}, {"anyOf": 31, "comparison": "includes", "name": "Yb7hxBPl", "predicateType": "EntitlementPredicate", "value": "mYpxfWoS", "values": ["eBnaFqt2", "vSzWL1jk", "wEg1fTVA"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 85, "fixedTrialCycles": 49, "graceDays": 43}, "region": "JBCGUf0u", "regionData": [{"currencyCode": "H1lpd0aK", "currencyNamespace": "GflHa6h7", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1973-08-11T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1986-12-13T00:00:00Z", "discountedPrice": 54, "expireAt": "1998-11-28T00:00:00Z", "price": 58, "purchaseAt": "1984-12-29T00:00:00Z", "trialPrice": 77}, {"currencyCode": "xNlKkvw4", "currencyNamespace": "wSY8Nvy2", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1980-08-15T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1974-11-21T00:00:00Z", "discountedPrice": 33, "expireAt": "1989-08-25T00:00:00Z", "price": 93, "purchaseAt": "1977-06-28T00:00:00Z", "trialPrice": 43}, {"currencyCode": "vDzqRJvN", "currencyNamespace": "CxojcxJ3", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1971-09-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1972-02-01T00:00:00Z", "discountedPrice": 58, "expireAt": "1992-01-03T00:00:00Z", "price": 8, "purchaseAt": "1987-06-04T00:00:00Z", "trialPrice": 26}], "seasonType": "PASS", "sku": "IZ1dobYb", "stackable": true, "status": "ACTIVE", "tags": ["4a1Mp6qG", "0sLW7aDw", "YXximH9e"], "targetCurrencyCode": "NEavMToo", "targetItemId": "APgP12OT", "targetNamespace": "1HNUpZZF", "thumbnailUrl": "ISsxPJF9", "title": "OZXaukVv", "updatedAt": "1971-07-20T00:00:00Z", "useCount": 1}, "namespace": "8RKGpVce", "order": {"currency": {"currencyCode": "gG9Ak7b5", "currencySymbol": "WxVZblCJ", "currencyType": "REAL", "decimals": 41, "namespace": "u0u78jvt"}, "ext": {"EJKbe83L": {}, "IGga8oHl": {}, "dgkXZkXV": {}}, "free": true}, "source": "OTHER"}, "script": "G1mwOBFp", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '9kNHoGkP' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'fGEQ42rb' \
    --body '{"grantDays": "ZpLxMJPE"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'nIC0h7xo' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ynMz6oLL' \
    --body '{"grantDays": "8Pc81obI"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --name 'uAAOaHZI' \
    --offset '27' \
    --tag 'b5rrpONw' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PehQWbIT", "items": [{"extraSubscriptionDays": 10, "itemId": "rK1jY4Ir", "itemName": "tWGvcct2", "quantity": 1}, {"extraSubscriptionDays": 23, "itemId": "ccWUbTmk", "itemName": "LtZixtNy", "quantity": 52}, {"extraSubscriptionDays": 74, "itemId": "rRAOMsGg", "itemName": "dOHmwBG6", "quantity": 84}], "maxRedeemCountPerCampaignPerUser": 7, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 60, "maxSaleCount": 7, "name": "YdIY8liS", "redeemEnd": "1979-04-24T00:00:00Z", "redeemStart": "1987-07-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["6wOiQOGU", "2SkpNmgq", "F4jWsflL"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '7ezZta3u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'WubisvLy' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Q5jzf0jc", "items": [{"extraSubscriptionDays": 91, "itemId": "1TcmcDQB", "itemName": "7rAnTVvy", "quantity": 68}, {"extraSubscriptionDays": 7, "itemId": "Aw8MfdqE", "itemName": "kfZN0aUH", "quantity": 12}, {"extraSubscriptionDays": 65, "itemId": "hcCvNIlF", "itemName": "QheE7lbZ", "quantity": 91}], "maxRedeemCountPerCampaignPerUser": 12, "maxRedeemCountPerCode": 36, "maxRedeemCountPerCodePerUser": 62, "maxSaleCount": 50, "name": "SpKHcnUO", "redeemEnd": "1993-04-13T00:00:00Z", "redeemStart": "1983-10-15T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["eIrfX28E", "TFZIX6Wi", "3PXppjFB"]}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'P4OUZ1Nc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId '6uUojk7t' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ld4NXmdm' \
    --body '{"categoryPath": "q89QqSP5", "localizationDisplayNames": {"vICL5hVS": "GHrVOWtH", "9DUgTo6U": "MIuvxIoH", "cqWdmjwe": "yuHGcQBq"}}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'vqtKIYkF' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'qcMR9ZQQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'IziZNb3X' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'zfgmYq5Q' \
    --namespace $AB_NAMESPACE \
    --storeId 'WBx75OIx' \
    --body '{"localizationDisplayNames": {"6K29llgE": "kGSq8kru", "blL34pc4": "kTeBoqm0", "GE9HSatY": "mHC4NHNj"}}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'eerPzCsK' \
    --namespace $AB_NAMESPACE \
    --storeId 'TXWcUrgw' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'b9VwZ6F3' \
    --namespace $AB_NAMESPACE \
    --storeId 'O01gzoiG' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'hYvfJHNv' \
    --namespace $AB_NAMESPACE \
    --storeId 'E8U4b4mf' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'RUlpAm5m' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '48' \
    --code '3CYFrsg8' \
    --limit '48' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'DXHXY94T' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 50}' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId '36WL9OiX' \
    --namespace $AB_NAMESPACE \
    --batchNo '81' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Ok89qud9' \
    --namespace $AB_NAMESPACE \
    --batchNo '47' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'xGJurcKM' \
    --namespace $AB_NAMESPACE \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'CXyGzbdp' \
    --namespace $AB_NAMESPACE \
    --code 'RP6CwXpN' \
    --limit '38' \
    --offset '77' \
    --userId '0V0iFNJg' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'h6LMkNQg' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'zB83WP4v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Cbno8QpY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "sKVAN8CK", "currencySymbol": "BZKyLfHg", "currencyType": "REAL", "decimals": 22, "localizationDescriptions": {"CLW7LpqI": "al7RK9pW", "aY3wpB4s": "l7GJgta0", "HdNGYvEv": "pevfJthn"}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 's5V60Tra' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"r4Hp84La": "71mZKoIr", "POWJDKyu": "81UktlKv", "vLbKVnJO": "gwJJ8bzW"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'GU78QSOS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Vjzm0JNl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'd78MMnFD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "qJMoTp6f", "rewards": [{"currency": {"currencyCode": "Jcbv6R63", "namespace": "AA3veX8D"}, "item": {"itemId": "TIzMfTw5", "itemSku": "mFkXkYgP", "itemType": "BIH2Jyvl"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "8voh0sB0", "namespace": "YmgrNANN"}, "item": {"itemId": "10AVYaz6", "itemSku": "KKSbikd3", "itemType": "yswowqGB"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "g8xnD7Df", "namespace": "PtGfQin7"}, "item": {"itemId": "tenCzL6x", "itemSku": "gkn8e5gy", "itemType": "ZHcig0Gd"}, "quantity": 56, "type": "ITEM"}]}, {"id": "mtEw9RM3", "rewards": [{"currency": {"currencyCode": "k7WGqBoE", "namespace": "XVn5NOnR"}, "item": {"itemId": "gpRijKI4", "itemSku": "gc6CHvah", "itemType": "avfzfx7b"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "zJtac5FK", "namespace": "vU9HNTWe"}, "item": {"itemId": "RW7mXUlr", "itemSku": "GoHN5aen", "itemType": "KqWi68ZY"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "c2FmSss3", "namespace": "BVb7P6gw"}, "item": {"itemId": "tjKt7TjY", "itemSku": "f1voPW6y", "itemType": "KL4OZBUx"}, "quantity": 16, "type": "CURRENCY"}]}, {"id": "Us4Y1cQ3", "rewards": [{"currency": {"currencyCode": "gMYzHaDa", "namespace": "4LofG4uq"}, "item": {"itemId": "xahxWZBw", "itemSku": "6d4fm0ms", "itemType": "8xJyuQjv"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "kOymoIwK", "namespace": "kw3KLNIA"}, "item": {"itemId": "yyoV2lhI", "itemSku": "SCcwiTdO", "itemType": "a5zmr3xm"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "TfkKSoBX", "namespace": "aCxsCVp0"}, "item": {"itemId": "yL661Upc", "itemSku": "XNuHabtF", "itemType": "vBpu4F2R"}, "quantity": 59, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Pwi2vJk8": "jEZ8FqJt", "LzBswD1q": "2jOzWxr7", "c5N1bhcE": "NZ6MH0zS"}}, {"platform": "PSN", "platformDlcIdMap": {"7sMGy4d3": "09nEcupQ", "FJlztrRV": "ibWApJxz", "RuO6ERK0": "NWquI4oG"}}, {"platform": "STEAM", "platformDlcIdMap": {"843UL0tp": "nMxWXlTz", "vxFv4WIn": "P2TAMfX3", "Sf5uoX19": "Et8i1rJO"}}]}' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '1Fwsx7cT' \
    --itemId '["UBxJK3JW", "pYEahnXY", "TrwDUXBR"]' \
    --limit '69' \
    --offset '54' \
    --userId 'ay4F5fL9' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'nznvjhl0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '95' \
    --status 'SUCCESS' \
    --userId 'Ph4rSzKE' \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "dAA4ve8m", "password": "34Z80wrT"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "gPvWP4Ab"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "h3sqNpXv", "serviceAccountId": "CDucIZ88"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "VDJpuaL4", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"YB4PaLBJ": "VeoTuRY0", "z7P4R3MM": "Ig72nIfm", "j2jg3qp6": "xbvID5O8"}}, {"itemIdentity": "8MguDRYL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"aD2RQTqV": "FEghB7fd", "WG0f7Gdb": "QLN5X64R", "IXRj4F3G": "1FFo8tBg"}}, {"itemIdentity": "6h8rn9IK", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ComGQwDq": "cqRbjJgB", "Ms0kIk0U": "lVufmPkc", "8WrBIPOi": "2g1VwQb1"}}]}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "0ZYOOuk0"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "TQjFy1eS", "publisherAuthenticationKey": "5vWKOHjq"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "5RIbHUsX", "clientSecret": "4TmJk2oJ", "organizationId": "abejSHDV"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "ABTE3kUn"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password '054NsNKu' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'mr8GKIMd' \
    --body '{"categoryPath": "WTV4Sjax", "targetItemId": "8IWMXSMD", "targetNamespace": "oiN6WZBY"}' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'pYhxbLiY' \
    --body '{"appId": "yUSnbXOo", "appType": "DLC", "baseAppId": "QIwBH4K7", "boothName": "2LcIy1JB", "categoryPath": "lu8VqMEA", "clazz": "rm1zN5AN", "displayOrder": 77, "entitlementType": "DURABLE", "ext": {"dVXTZMz3": {}, "nmYKflH1": {}, "cgW2Cn9R": {}}, "features": ["A3lA7awO", "mtQiEVyC", "GJEANjka"], "images": [{"as": "7D1unubj", "caption": "JbwIDU8o", "height": 15, "imageUrl": "fBvjaXgJ", "smallImageUrl": "QqNXjMqf", "width": 56}, {"as": "JUFjchuq", "caption": "zb5yXrMD", "height": 25, "imageUrl": "fPC7n5S4", "smallImageUrl": "Lb74ETgt", "width": 98}, {"as": "8VUbUs9o", "caption": "9QGodEmR", "height": 83, "imageUrl": "86httWE9", "smallImageUrl": "PpulLVBf", "width": 87}], "itemIds": ["td86zxau", "VPumq0Wt", "XOTMZLR2"], "itemQty": {"xHjPcSuR": 75, "R3KICleL": 62, "9Kytr0V4": 20}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"n1mqCYVQ": {"description": "RjC4YR1o", "localExt": {"nRIW642g": {}, "Medf3YEx": {}, "kwQp9gy0": {}}, "longDescription": "VjQjhfVA", "title": "UuLttFnS"}, "B2XUMnYW": {"description": "rDiY5MNw", "localExt": {"xqCOGP0t": {}, "EhHAwPVq": {}, "wnxTGNQr": {}}, "longDescription": "1o2Jycnv", "title": "LYQ9Wgu4"}, "Q9X747an": {"description": "zyHWqbCn", "localExt": {"ek0AfzFL": {}, "lYILPl2U": {}, "7awRcoJ7": {}}, "longDescription": "LtKpeZSY", "title": "Mbatekv6"}}, "maxCount": 40, "maxCountPerUser": 10, "name": "V3MGg4GI", "optionBoxConfig": {"boxItems": [{"count": 37, "itemId": "jEqHxvFw", "itemSku": "3YJmc7Zk"}, {"count": 43, "itemId": "k3OIzFAm", "itemSku": "ZQuONorc"}, {"count": 30, "itemId": "5vrrKhVj", "itemSku": "SBEGLs1H"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 6, "graceDays": 78}, "regionData": {"ORECyn8V": [{"currencyCode": "9kGpKdTK", "currencyNamespace": "cRss2KGW", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1975-09-09T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1980-05-26T00:00:00Z", "discountedPrice": 36, "expireAt": "1990-10-13T00:00:00Z", "price": 15, "purchaseAt": "1993-01-28T00:00:00Z", "trialPrice": 20}, {"currencyCode": "8Ly2tOL8", "currencyNamespace": "6ZSsTbgL", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1980-08-21T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1973-05-31T00:00:00Z", "discountedPrice": 94, "expireAt": "1986-03-29T00:00:00Z", "price": 56, "purchaseAt": "1987-07-24T00:00:00Z", "trialPrice": 29}, {"currencyCode": "HRXmvXvn", "currencyNamespace": "JCo7gzAC", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1979-01-20T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-01-15T00:00:00Z", "discountedPrice": 27, "expireAt": "1984-09-30T00:00:00Z", "price": 49, "purchaseAt": "1987-03-17T00:00:00Z", "trialPrice": 83}], "ZaYbMCG1": [{"currencyCode": "wQ6Lzo1Q", "currencyNamespace": "BRRC5wFD", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1980-06-11T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1979-09-23T00:00:00Z", "discountedPrice": 84, "expireAt": "1977-12-03T00:00:00Z", "price": 71, "purchaseAt": "1991-08-16T00:00:00Z", "trialPrice": 86}, {"currencyCode": "Bugun1b2", "currencyNamespace": "lwul9NFa", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1981-12-13T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-02-24T00:00:00Z", "discountedPrice": 90, "expireAt": "1983-04-27T00:00:00Z", "price": 69, "purchaseAt": "1981-10-29T00:00:00Z", "trialPrice": 61}, {"currencyCode": "yif0XekQ", "currencyNamespace": "q5h6Vz3b", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1976-09-06T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1994-06-22T00:00:00Z", "discountedPrice": 82, "expireAt": "1992-05-28T00:00:00Z", "price": 75, "purchaseAt": "1975-06-21T00:00:00Z", "trialPrice": 89}], "eUJScDf0": [{"currencyCode": "9kkqqZbV", "currencyNamespace": "xl2w2jQV", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1991-10-07T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1990-08-01T00:00:00Z", "discountedPrice": 98, "expireAt": "1993-09-12T00:00:00Z", "price": 96, "purchaseAt": "1989-02-05T00:00:00Z", "trialPrice": 55}, {"currencyCode": "DaDAhyzq", "currencyNamespace": "kMI6WAfA", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1990-02-08T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1987-08-11T00:00:00Z", "discountedPrice": 6, "expireAt": "1998-02-06T00:00:00Z", "price": 27, "purchaseAt": "1983-03-15T00:00:00Z", "trialPrice": 97}, {"currencyCode": "7Fs6amif", "currencyNamespace": "Nxls4bOa", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1981-06-24T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1991-02-18T00:00:00Z", "discountedPrice": 3, "expireAt": "1974-08-19T00:00:00Z", "price": 70, "purchaseAt": "1990-09-05T00:00:00Z", "trialPrice": 16}]}, "seasonType": "PASS", "sku": "rrG2LRFy", "stackable": false, "status": "ACTIVE", "tags": ["qrUuoI57", "0i043q6W", "GeSSPDLW"], "targetCurrencyCode": "hl3b4LHQ", "targetNamespace": "eVOUKwWB", "thumbnailUrl": "NthYncAd", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'okoqMXjy' \
    --appId 'H5upTm9L' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'bpU2QCl4' \
    --baseAppId 'WYbAlLod' \
    --categoryPath 'd1oAGMsL' \
    --features 'ggYGWYHG' \
    --itemType 'BUNDLE' \
    --limit '6' \
    --offset '38' \
    --region 'k01kCvr8' \
    --sortBy '["updatedAt:asc", "displayOrder", "createdAt:asc"]' \
    --storeId 'YNDSVbcy' \
    --tags 'VxivwC2S' \
    --targetNamespace 'LUJ7NRza' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["1wJo5NnM", "XD4zSjhq", "masKkmyj"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ggSsaNDk' \
    --sku 'Dy12gwXZ' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'YAkjVblx' \
    --populateBundle 'true' \
    --region 'u4u4Ilzb' \
    --storeId 'KwoJIaHw' \
    --sku 'Wg0KoO6r' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'vpEOo37t' \
    --sku 'i6zmBfnT' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["XPFHOlfV", "pbV6r9Vx", "8JQgfznD"]' \
    --storeId 'mPNavC5k' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'iK3U4wI4' \
    --region '6kxF2Rje' \
    --storeId 'RiBmO792' \
    --itemIds 'nR74lA8Y' \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetAvailablePredicateTypes' test.out

#- 85 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'A7FMkiSO' \
    --body '{"itemIds": ["KA0puct0", "NHOMBdot", "FQtAv8UB"]}' \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '77' \
    --offset '1' \
    --storeId 'fDFsqj4Q' \
    --keyword 'u1wakapU' \
    --language 'W2GfKjV4' \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '50' \
    --offset '35' \
    --sortBy '["displayOrder", "createdAt", "createdAt:asc"]' \
    --storeId 'g5bgd2CW' \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'rllsfzEn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HZrpyyvd' \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'XsgeFIR6' \
    --namespace $AB_NAMESPACE \
    --storeId 'jg562U6Q' \
    --body '{"appId": "mFZBFj1m", "appType": "DEMO", "baseAppId": "PqTa2n1Q", "boothName": "tyh9sB44", "categoryPath": "rFqUeeLu", "clazz": "S1cHPm0q", "displayOrder": 58, "entitlementType": "CONSUMABLE", "ext": {"1scrbTCS": {}, "ClXrgDJq": {}, "f2P8P2jr": {}}, "features": ["gJWzQa1H", "9xpbNDRy", "iXmaE46J"], "images": [{"as": "CpCwhECh", "caption": "L0qzxchO", "height": 2, "imageUrl": "8fsJL7HA", "smallImageUrl": "aHikIDYQ", "width": 35}, {"as": "TH9uePUm", "caption": "MNeqU9l7", "height": 83, "imageUrl": "l2niLSWw", "smallImageUrl": "YwknpH9u", "width": 11}, {"as": "TM9VVFkY", "caption": "dvbPjJ3T", "height": 89, "imageUrl": "CclpiWg7", "smallImageUrl": "1eDWTNrA", "width": 27}], "itemIds": ["0ccTqtM9", "zqAwQnQv", "eL6mFbGe"], "itemQty": {"KYLHKFhw": 92, "bf0ORT9v": 23, "nZqDMurI": 51}, "itemType": "CODE", "listable": true, "localizations": {"iuC7UQa0": {"description": "3ttDpS7o", "localExt": {"uNtFZCD3": {}, "oflOHbtC": {}, "gjDhdEBC": {}}, "longDescription": "3OxReZMa", "title": "B13WamDD"}, "vXGSQFXV": {"description": "pfKdShgt", "localExt": {"E3k1VvH1": {}, "oshmi0qy": {}, "EoYiK3Zn": {}}, "longDescription": "LOULy9or", "title": "LVih4ecn"}, "ol4UYlw4": {"description": "XILcPKRT", "localExt": {"JBa8ycgw": {}, "7Pn4Vh4r": {}, "ZeBf80hQ": {}}, "longDescription": "nRDYH4jX", "title": "hv0LpmbW"}}, "maxCount": 49, "maxCountPerUser": 3, "name": "dp8aDnMv", "optionBoxConfig": {"boxItems": [{"count": 81, "itemId": "dLgvikBd", "itemSku": "khnavxiW"}, {"count": 31, "itemId": "dD3s9x8c", "itemSku": "tn3NcgtV"}, {"count": 19, "itemId": "FQSNlNOf", "itemSku": "2EtqKaL9"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 56, "fixedTrialCycles": 25, "graceDays": 67}, "regionData": {"3P1OLysw": [{"currencyCode": "IDeP17uS", "currencyNamespace": "IzxfC5c1", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1995-11-30T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1982-07-27T00:00:00Z", "discountedPrice": 67, "expireAt": "1991-02-21T00:00:00Z", "price": 74, "purchaseAt": "1999-11-01T00:00:00Z", "trialPrice": 97}, {"currencyCode": "xECaRvHL", "currencyNamespace": "y7gSkYsv", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1995-01-13T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-06-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1981-05-30T00:00:00Z", "price": 19, "purchaseAt": "1980-08-11T00:00:00Z", "trialPrice": 91}, {"currencyCode": "Us5rR6Bo", "currencyNamespace": "iisI3lcu", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1979-01-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1984-05-31T00:00:00Z", "discountedPrice": 58, "expireAt": "1981-03-04T00:00:00Z", "price": 52, "purchaseAt": "1972-08-19T00:00:00Z", "trialPrice": 97}], "IYKxrOiY": [{"currencyCode": "YmBjaxXA", "currencyNamespace": "RjrHfjT0", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1984-01-16T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1995-10-06T00:00:00Z", "discountedPrice": 54, "expireAt": "1981-01-14T00:00:00Z", "price": 50, "purchaseAt": "1998-10-07T00:00:00Z", "trialPrice": 21}, {"currencyCode": "simFPFOl", "currencyNamespace": "HdK6JQuy", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1988-03-15T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1973-02-10T00:00:00Z", "discountedPrice": 18, "expireAt": "1975-10-17T00:00:00Z", "price": 70, "purchaseAt": "1995-09-12T00:00:00Z", "trialPrice": 0}, {"currencyCode": "23v6t4qx", "currencyNamespace": "WynPSiC3", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1990-06-28T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1989-08-09T00:00:00Z", "discountedPrice": 4, "expireAt": "1984-07-16T00:00:00Z", "price": 100, "purchaseAt": "1980-06-20T00:00:00Z", "trialPrice": 61}], "zCCGmOh4": [{"currencyCode": "TtW4RJYa", "currencyNamespace": "TYJoPDdm", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1991-04-29T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1971-12-27T00:00:00Z", "discountedPrice": 62, "expireAt": "1978-12-15T00:00:00Z", "price": 35, "purchaseAt": "1998-02-11T00:00:00Z", "trialPrice": 89}, {"currencyCode": "ZiwSVsyV", "currencyNamespace": "aZOt3h8y", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1991-12-18T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1977-01-14T00:00:00Z", "discountedPrice": 1, "expireAt": "1995-08-16T00:00:00Z", "price": 37, "purchaseAt": "1987-06-13T00:00:00Z", "trialPrice": 54}, {"currencyCode": "7TFilk9Q", "currencyNamespace": "4eKHo76N", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1999-05-06T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1979-03-02T00:00:00Z", "discountedPrice": 22, "expireAt": "1993-01-06T00:00:00Z", "price": 89, "purchaseAt": "1993-11-30T00:00:00Z", "trialPrice": 72}]}, "seasonType": "TIER", "sku": "VT4s5xKm", "stackable": false, "status": "ACTIVE", "tags": ["rdsYddal", "ub72nb1j", "u7EHYcn1"], "targetCurrencyCode": "3TW3kyIe", "targetNamespace": "5upbvLDg", "thumbnailUrl": "liH8o4Bf", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'WHqtvsaJ' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'NQOMSvxk' \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Du87AuOi' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 38, "orderNo": "i2byrwZC"}' \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'nkBNmP9c' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'HPrVdOll' \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'LIE6u4Ut' \
    --namespace $AB_NAMESPACE \
    --storeId 'eU98H20R' \
    --body '{"carousel": [{"alt": "HMFmfLhw", "previewUrl": "aSo7sur3", "thumbnailUrl": "HJKHKGVJ", "type": "image", "url": "SBIVOYvB", "videoSource": "youtube"}, {"alt": "ZNimksL1", "previewUrl": "bALJLx0U", "thumbnailUrl": "tI9JZ76J", "type": "video", "url": "y73OpzsR", "videoSource": "generic"}, {"alt": "3A3Jmu7Y", "previewUrl": "xsRvctWl", "thumbnailUrl": "jlTIBzUA", "type": "image", "url": "sCHzShaf", "videoSource": "youtube"}], "developer": "RFhWxAX5", "forumUrl": "hAfE2BGp", "genres": ["Strategy", "Simulation", "Action"], "localizations": {"OaAIW9Oo": {"announcement": "kWvw6Ji7", "slogan": "B53lYYV3"}, "6L69NYOz": {"announcement": "GcBmK9xR", "slogan": "SGLvBpFb"}, "1OU6GZ97": {"announcement": "r6FUxzLA", "slogan": "99sldLeU"}}, "platformRequirements": {"Vh2eyO3k": [{"additionals": "O2wlwAeX", "directXVersion": "CSo08yWl", "diskSpace": "jaYtnycx", "graphics": "mYm39yHe", "label": "jQpgF1Fk", "osVersion": "a9aPPfLG", "processor": "IDkBcv09", "ram": "MzCWadYs", "soundCard": "593SoWWf"}, {"additionals": "PInMlJ3C", "directXVersion": "YG36hmCp", "diskSpace": "TlvNanID", "graphics": "Q82aqzVj", "label": "rauyKi1J", "osVersion": "oqkAbXif", "processor": "Q7xL8XVz", "ram": "jNFVWegP", "soundCard": "RLGGdgiO"}, {"additionals": "OHshZpxk", "directXVersion": "yw4Wvtw7", "diskSpace": "BrTswB4V", "graphics": "k0Mq5Ydl", "label": "IjOoevA7", "osVersion": "76tdGZ0Y", "processor": "Jx6l8bTQ", "ram": "IjYratF6", "soundCard": "DMzlecxV"}], "GUjKOwrS": [{"additionals": "9hXXDnaU", "directXVersion": "GTjwyO4E", "diskSpace": "6mrqWxKk", "graphics": "aBpHEGV0", "label": "o2FRngqY", "osVersion": "TEy76ybE", "processor": "NkYjgAod", "ram": "ugykf5sI", "soundCard": "eWdqUz8E"}, {"additionals": "LfwL8g9w", "directXVersion": "C9Xw7cxW", "diskSpace": "bz52LzVh", "graphics": "gmtdMhCk", "label": "BnkJdUPb", "osVersion": "HcZi2ccK", "processor": "FmTDl0oM", "ram": "lYnjlpvb", "soundCard": "Y62n6GzI"}, {"additionals": "FTylVIxW", "directXVersion": "agmLAWmf", "diskSpace": "P3AEKaPd", "graphics": "Pewtclyy", "label": "eRNzpx0z", "osVersion": "f2wYrSo6", "processor": "41IJZzxn", "ram": "OLDoje7g", "soundCard": "CCaY2tdR"}], "OwEsH9HA": [{"additionals": "zBsXcllo", "directXVersion": "1C0Pm4zu", "diskSpace": "xid6PWd6", "graphics": "Gd9A9M3N", "label": "rK44gHxk", "osVersion": "vVe1IJZh", "processor": "g4piKiQ3", "ram": "MeTJW0Ed", "soundCard": "HCMBtLog"}, {"additionals": "MM9XPc3J", "directXVersion": "EbJq8c10", "diskSpace": "aeHIyGKK", "graphics": "mObbBjy7", "label": "IhJFvPbZ", "osVersion": "XYjePXKS", "processor": "ibB1MkTX", "ram": "M3qJELZV", "soundCard": "A4TOqBif"}, {"additionals": "lgBcyFtg", "directXVersion": "dH4KMv71", "diskSpace": "DmXliY8D", "graphics": "Y4vk5WFF", "label": "5ByHKE43", "osVersion": "7KjeXOjp", "processor": "MwMEdc4t", "ram": "au9CnbuI", "soundCard": "vwjX7JPQ"}]}, "platforms": ["MacOS", "Windows", "Android"], "players": ["Coop", "Multi", "Single"], "primaryGenre": "Action", "publisher": "Vxsx2D7b", "releaseDate": "1975-11-01T00:00:00Z", "websiteUrl": "vRHu537u"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'hkwArwUR' \
    --namespace $AB_NAMESPACE \
    --storeId '7rSiNCc6' \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'seqYkoFz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'hRUc8BgX' \
    --namespace $AB_NAMESPACE \
    --storeId 'Vl3B8CPL' \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'eSkJwhOR' \
    --itemId 'cBGzn7fn' \
    --namespace $AB_NAMESPACE \
    --storeId 'ecpOESpM' \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'o7gPXcKQ' \
    --itemId 'yAzoaal7' \
    --namespace $AB_NAMESPACE \
    --storeId 'a0BtnuYh' \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'MP2XQd63' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'q7MIWZwy' \
    --populateBundle 'true' \
    --region 'bvHmFkmg' \
    --storeId 'sGva2Dv4' \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'EiDNmilp' \
    --namespace $AB_NAMESPACE \
    --storeId 'x4eZ8JnI' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 32, "comparison": "isLessThanOrEqual", "name": "Ztzmotnb", "predicateType": "SeasonPassPredicate", "value": "ubvGybwd", "values": ["ggBLoRyS", "vhjoGdTl", "FQXKE51V"]}, {"anyOf": 38, "comparison": "isLessThanOrEqual", "name": "rEDHmPhX", "predicateType": "EntitlementPredicate", "value": "ETH9ZSkE", "values": ["9abhl9CS", "98i8nF1a", "hrJ4VXbV"]}, {"anyOf": 82, "comparison": "is", "name": "ZJjq7xSQ", "predicateType": "SeasonPassPredicate", "value": "2b2K86t9", "values": ["cD9zua5e", "TXwyeVjO", "PAC9umqz"]}]}, {"operator": "and", "predicates": [{"anyOf": 87, "comparison": "isLessThanOrEqual", "name": "Fx0QPSm4", "predicateType": "SeasonPassPredicate", "value": "iaH0cQZy", "values": ["jr5Zocug", "BVXYT6Sz", "Cn48dMhQ"]}, {"anyOf": 52, "comparison": "isNot", "name": "JrzI3ZDn", "predicateType": "EntitlementPredicate", "value": "oGBen1XF", "values": ["hLgY4odE", "wjC6oaCe", "TlXBUjVn"]}, {"anyOf": 73, "comparison": "isLessThan", "name": "V2bMqPcW", "predicateType": "SeasonPassPredicate", "value": "N74H3y3c", "values": ["zJAIZpGe", "poQLOd92", "h46dx7hb"]}]}, {"operator": "and", "predicates": [{"anyOf": 48, "comparison": "isLessThanOrEqual", "name": "lcHq7krQ", "predicateType": "SeasonPassPredicate", "value": "pFMR5lRz", "values": ["RU1lERnU", "WHojczzy", "RQFjGSC8"]}, {"anyOf": 77, "comparison": "isLessThan", "name": "OE82Zerh", "predicateType": "SeasonPassPredicate", "value": "5SdyC9wG", "values": ["9iSB4xs8", "khOi7uZ8", "k8gS6yuR"]}, {"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "uIz3yJhG", "predicateType": "SeasonTierPredicate", "value": "1NnVJswB", "values": ["62zM4Uix", "9m2uhAal", "0clJ7URE"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'K1pM0Pk7' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "0nTPaUqM"}' \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'k7e4b4fA' \
    --offset '93' \
    --tag '2mcXXsfO' \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p0KFDIpJ", "name": "UvMtcXd5", "status": "ACTIVE", "tags": ["qmhVvlxd", "Tm0hS1pi", "Dc4b4NNI"]}' \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'xe4x5QJD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'mX4Tsg9l' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9RocO3vy", "name": "Aff13YdT", "status": "ACTIVE", "tags": ["guxgxTZQ", "y7VjPP4T", "1SlLLJCn"]}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'QHGbRtli' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '1C23NS7T' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '73' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'MRsyEZJA' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'hVtkXIg5' \
    --limit '39' \
    --offset '29' \
    --orderNos '["QkrFEwz7", "riHRdFsf", "zU7TtIv7"]' \
    --sortBy 'lvqM1aYp' \
    --startTime 'GJ3HwDEA' \
    --status 'CLOSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 109 'QueryOrders' test.out

#- 110 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetOrderStatistics' test.out

#- 111 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'O7AwA4Qp' \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VXbSDjsJ' \
    --body '{"description": "v6zrLJtL"}' \
    > test.out 2>&1
eval_tap $? 112 'RefundOrder' test.out

#- 113 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetPaymentCallbackConfig' test.out

#- 114 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "RYoPsMk3", "privateKey": "dYdeq1SB"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'gy7cIrI2' \
    --externalId 'XXTMe8iA' \
    --limit '91' \
    --notificationSource 'XSOLLA' \
    --notificationType 'TABRwxNV' \
    --offset '81' \
    --paymentOrderNo 'dfF3XMg2' \
    --startDate 'h5AsMRvP' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'DNE8KY6e' \
    --limit '7' \
    --offset '70' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "7mFImigO", "currencyNamespace": "QJ8NsnY0", "customParameters": {"wjv8w819": {}, "nvEtDoZL": {}, "1zmnf9dY": {}}, "description": "9GphVu2a", "extOrderNo": "VnByvKF5", "extUserId": "HjRhYXka", "itemType": "CODE", "language": "Py-ecIK", "metadata": {"8ialgSzX": "g25OWacJ", "y6ytCa3w": "jkkFFy1Z", "3xzPKJLG": "9JJleeK7"}, "notifyUrl": "l49SnKZR", "omitNotification": false, "platform": "2QuAuJ5x", "price": 100, "recurringPaymentOrderNo": "fwTsjrav", "region": "G94tMsp4", "returnUrl": "ABTIgszX", "sandbox": true, "sku": "MvE83mxn", "subscriptionId": "sRx59sxF", "targetNamespace": "4mWqcnNZ", "targetUserId": "98AjflYJ", "title": "VJ3DCTdj"}' \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ZAVO2UdW' \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CGEcyIc5' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vtV00Pml' \
    --body '{"extTxId": "fIJrCOBU", "paymentMethod": "IAtbvmwG", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8JK5UGcO' \
    --body '{"description": "qKfUVDtM"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'g6M9Z6xw' \
    --body '{"amount": 75, "currencyCode": "nJ9y5dJm", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 76, "vat": 70}' \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zgo81JkN' \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "IOS", "System"]}' \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fAbx8M16", "eventTopic": "NqNcYmSL", "maxAwarded": 37, "maxAwardedPerUser": 44, "namespaceExpression": "XUlq4LT7", "rewardCode": "sz32atbn", "rewardConditions": [{"condition": "hsooVw5G", "conditionName": "55zyVX9z", "eventName": "jjPei1Qn", "rewardItems": [{"duration": 10, "itemId": "nRb3sLAF", "quantity": 0}, {"duration": 43, "itemId": "t4HQYuuk", "quantity": 64}, {"duration": 35, "itemId": "Ul3qKnVb", "quantity": 73}]}, {"condition": "MtNa88x8", "conditionName": "g23YEeAx", "eventName": "7qULE4ho", "rewardItems": [{"duration": 28, "itemId": "zWvCalOK", "quantity": 95}, {"duration": 96, "itemId": "oi2wXEwD", "quantity": 70}, {"duration": 96, "itemId": "4MDmOBPO", "quantity": 25}]}, {"condition": "8Ej0Gl7G", "conditionName": "aBEtdGma", "eventName": "xaTDcvrZ", "rewardItems": [{"duration": 76, "itemId": "JTLtgQRF", "quantity": 15}, {"duration": 61, "itemId": "dvatOsMo", "quantity": 78}, {"duration": 40, "itemId": "G5YV08Rz", "quantity": 21}]}], "userIdExpression": "y6VrWn0d"}' \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 's9BwhdPV' \
    --limit '22' \
    --offset '67' \
    --sortBy '["namespace:desc", "namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 128 'QueryRewards' test.out

#- 129 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'ExportRewards' test.out

#- 130 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 130 'ImportRewards' test.out

#- 131 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '2ZWeEAKX' \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'YhOyYjxv' \
    --body '{"description": "qzFGRb9a", "eventTopic": "jhoreXvi", "maxAwarded": 58, "maxAwardedPerUser": 53, "namespaceExpression": "AAfa8j2R", "rewardCode": "RxaI2pw5", "rewardConditions": [{"condition": "NiEdH4vI", "conditionName": "5X2CuHpL", "eventName": "MZhAcMvf", "rewardItems": [{"duration": 3, "itemId": "e2jLDZu8", "quantity": 95}, {"duration": 56, "itemId": "Zpl98AKn", "quantity": 24}, {"duration": 5, "itemId": "dSIXn5rl", "quantity": 18}]}, {"condition": "SZaV8N2M", "conditionName": "p2fHjfUq", "eventName": "PRh3sPUL", "rewardItems": [{"duration": 71, "itemId": "DVOGvEen", "quantity": 49}, {"duration": 90, "itemId": "upqhMk0n", "quantity": 82}, {"duration": 93, "itemId": "FXTMaeSZ", "quantity": 75}]}, {"condition": "5ftd0uSn", "conditionName": "usA6LcER", "eventName": "hMqbdAoQ", "rewardItems": [{"duration": 95, "itemId": "blQNkVMT", "quantity": 75}, {"duration": 79, "itemId": "JCdQdNGc", "quantity": 4}, {"duration": 69, "itemId": "xqEhYuf9", "quantity": 63}]}], "userIdExpression": "69bv05uO"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wWdWNLIh' \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'IHFI37IS' \
    --body '{"payload": {"4v6rZ7LW": {}, "lNkwC3wt": {}, "stgYMmq6": {}}}' \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'm1sRj53l' \
    --body '{"conditionName": "jAtgc8fs", "userId": "Nk9dYAO6"}' \
    > test.out 2>&1
eval_tap $? 135 'DeleteRewardConditionRecord' test.out

#- 136 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'ListStores' test.out

#- 137 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "WsGA2BWM", "defaultRegion": "QlDXgM9W", "description": "7WzMBaRM", "supportedLanguages": ["osFofKe9", "A1eRXBJ3", "3agdaZHQ"], "supportedRegions": ["LebJ6g1O", "V8d8qVsp", "sKueNfco"], "title": "JWYdSLsU"}' \
    > test.out 2>&1
eval_tap $? 137 'CreateStore' test.out

#- 138 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'XbcbnIj8' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'ImportStore' test.out

#- 139 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'GetPublishedStore' test.out

#- 140 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'DeletePublishedStore' test.out

#- 141 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'GetPublishedStoreBackup' test.out

#- 142 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'RollbackPublishedStore' test.out

#- 143 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ABazt77O' \
    > test.out 2>&1
eval_tap $? 143 'GetStore' test.out

#- 144 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'v7bkmrG7' \
    --body '{"defaultLanguage": "0d5wBhXl", "defaultRegion": "8xv0dj1v", "description": "6zpeI0HQ", "supportedLanguages": ["Z7w7h1jJ", "D2eZR5E8", "KWvVUl33"], "supportedRegions": ["PMX9kNsz", "kFYYznkI", "nUg40Q6M"], "title": "M74SAGUx"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateStore' test.out

#- 145 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '49bkQbFq' \
    > test.out 2>&1
eval_tap $? 145 'DeleteStore' test.out

#- 146 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'opTf74np' \
    --action 'DELETE' \
    --itemSku 'oACfh6yh' \
    --itemType 'COINS' \
    --limit '52' \
    --offset '16' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'fPp1B1Gk' \
    --updatedAtStart '2XgrExSL' \
    > test.out 2>&1
eval_tap $? 146 'QueryChanges' test.out

#- 147 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'MwqiIuE9' \
    > test.out 2>&1
eval_tap $? 147 'PublishAll' test.out

#- 148 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'DUtxmR13' \
    > test.out 2>&1
eval_tap $? 148 'PublishSelected' test.out

#- 149 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'zphuxpgO' \
    > test.out 2>&1
eval_tap $? 149 'SelectAllRecords' test.out

#- 150 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'OKvmC9fz' \
    --action 'UPDATE' \
    --itemSku 'cXHE0vVL' \
    --itemType 'MEDIA' \
    --type 'STORE' \
    --updatedAtEnd 'HDk7xdJw' \
    --updatedAtStart 'k9F8tukd' \
    > test.out 2>&1
eval_tap $? 150 'GetStatistic' test.out

#- 151 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3tYz4ZkE' \
    > test.out 2>&1
eval_tap $? 151 'UnselectAllRecords' test.out

#- 152 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '9oUUmCBv' \
    --namespace $AB_NAMESPACE \
    --storeId '9cTewh8t' \
    > test.out 2>&1
eval_tap $? 152 'SelectRecord' test.out

#- 153 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Vz9eST6O' \
    --namespace $AB_NAMESPACE \
    --storeId 'gTECkGMC' \
    > test.out 2>&1
eval_tap $? 153 'UnselectRecord' test.out

#- 154 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Svr4LlYQ' \
    --targetStoreId 'wBTz3Bb7' \
    > test.out 2>&1
eval_tap $? 154 'CloneStore' test.out

#- 155 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId '6FH8MzrC' \
    > test.out 2>&1
eval_tap $? 155 'ExportStore' test.out

#- 156 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId '84nwjzim' \
    --limit '79' \
    --offset '40' \
    --sku 'tguBtd16' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'eYhMnb81' \
    > test.out 2>&1
eval_tap $? 156 'QuerySubscriptions' test.out

#- 157 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'B4AhpYqk' \
    > test.out 2>&1
eval_tap $? 157 'RecurringChargeSubscription' test.out

#- 158 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'oefFQ5Jk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetTicketDynamic' test.out

#- 159 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '3diTqLcK' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DWapVqVN"}' \
    > test.out 2>&1
eval_tap $? 159 'DecreaseTicketSale' test.out

#- 160 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'xrq96NED' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetTicketBoothID' test.out

#- 161 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 's3dnMB5J' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "X77JzzxK"}' \
    > test.out 2>&1
eval_tap $? 161 'IncreaseTicketSale' test.out

#- 162 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'I6StHX8W' \
    --body '{"achievements": [{"id": "yS4ALMr6", "value": 28}, {"id": "bYzHeiZf", "value": 88}, {"id": "3eXgzg9g", "value": 35}], "steamUserId": "rtDwrblH"}' \
    > test.out 2>&1
eval_tap $? 162 'UnlockSteamUserAchievement' test.out

#- 163 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'yPl1Fpip' \
    --xboxUserId 'lrJI7bAv' \
    > test.out 2>&1
eval_tap $? 163 'GetXblUserAchievements' test.out

#- 164 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 't3I71tip' \
    --body '{"achievements": [{"id": "7tpydF3Z", "percentComplete": 19}, {"id": "8LyXp4Wc", "percentComplete": 40}, {"id": "HAGZ4fHH", "percentComplete": 92}], "serviceConfigId": "5G6qUfaE", "titleId": "QDponxzi", "xboxUserId": "wIuppY5b"}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateXblUserAchievement' test.out

#- 165 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'eyZ90UVG' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeCampaign' test.out

#- 166 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dOT2dY3T' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeEntitlement' test.out

#- 167 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '77HCi5M6' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeFulfillment' test.out

#- 168 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'g7jVMlBv' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeIntegration' test.out

#- 169 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UggNbLyn' \
    > test.out 2>&1
eval_tap $? 169 'AnonymizeOrder' test.out

#- 170 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'JNY4pmRD' \
    > test.out 2>&1
eval_tap $? 170 'AnonymizePayment' test.out

#- 171 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0Fqdwo0B' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeSubscription' test.out

#- 172 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'i1kQBHrF' \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeWallet' test.out

#- 173 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aOrE3CEy' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName '7RDSKiOh' \
    --features '["NXWxPjgj", "0lNd05hA", "9VBjEqQG"]' \
    --itemId '["M6aaSD9K", "3Gniya6N", "HdJmetvR"]' \
    --limit '15' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 173 'QueryUserEntitlements' test.out

#- 174 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HoerIBE8' \
    --body '[{"endDate": "1974-01-11T00:00:00Z", "grantedCode": "qiLmxmqF", "itemId": "gwBCgqCo", "itemNamespace": "f7dZzA7G", "language": "clcV_HWTH", "quantity": 74, "region": "abfPeHE5", "source": "REDEEM_CODE", "startDate": "1996-09-26T00:00:00Z", "storeId": "tcN9IVFz"}, {"endDate": "1991-10-18T00:00:00Z", "grantedCode": "S1Vi3w6E", "itemId": "iNArn1P1", "itemNamespace": "jnqjOmmj", "language": "aTBi", "quantity": 58, "region": "LtZoiLZp", "source": "ACHIEVEMENT", "startDate": "1975-04-30T00:00:00Z", "storeId": "U58evv2Q"}, {"endDate": "1984-10-01T00:00:00Z", "grantedCode": "5BGrxAdO", "itemId": "XpS9lSRp", "itemNamespace": "hhiUd9DG", "language": "ujj", "quantity": 67, "region": "XwLwLSCo", "source": "PURCHASE", "startDate": "1985-08-27T00:00:00Z", "storeId": "JF5ULtnV"}]' \
    > test.out 2>&1
eval_tap $? 174 'GrantUserEntitlement' test.out

#- 175 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'SdSsnlX6' \
    --activeOnly 'true' \
    --appId '6ggcYw1g' \
    > test.out 2>&1
eval_tap $? 175 'GetUserAppEntitlementByAppId' test.out

#- 176 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'RkyfQHmQ' \
    --activeOnly 'false' \
    --limit '33' \
    --offset '32' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 176 'QueryUserEntitlementsByAppType' test.out

#- 177 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ahqHJLNX' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --itemId 'Fwr11t0c' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementByItemId' test.out

#- 178 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'TxADXP5V' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'EduXI3iR' \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementBySku' test.out

#- 179 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IgNSVAWB' \
    --appIds '["GufnOOh0", "8YhiQPXX", "lphnYJVE"]' \
    --itemIds '["jWKlMIzJ", "INUC1bow", "X2d0aNGo"]' \
    --skus '["KEaZuHeN", "lDceJV7C", "lzLzMnmR"]' \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlement' test.out

#- 180 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'egocL1BL' \
    --itemIds '["D1Je5A3o", "6QXsppv8", "z6ZDs4Wa"]' \
    > test.out 2>&1
eval_tap $? 180 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 181 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '391Q0nGy' \
    --appId 'nSXhtsLx' \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 182 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XLnZu8dZ' \
    --entitlementClazz 'MEDIA' \
    --itemId 'MLkBjHLE' \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemId' test.out

#- 183 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gz7BsqlW' \
    --ids '["BguUl4EE", "t7e4vQTz", "Vli7ruP2"]' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipByItemIds' test.out

#- 184 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'TlaZKjxt' \
    --entitlementClazz 'APP' \
    --sku 'u3PEPZUt' \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementOwnershipBySku' test.out

#- 185 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'abkhNMnL' \
    --entitlementIds 'ieiwvIuY' \
    > test.out 2>&1
eval_tap $? 185 'RevokeUserEntitlements' test.out

#- 186 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'wJLUHKhY' \
    --namespace $AB_NAMESPACE \
    --userId '7SAnjYJ4' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlement' test.out

#- 187 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'LrfPLNdL' \
    --namespace $AB_NAMESPACE \
    --userId 'R6SKW8cG' \
    --body '{"endDate": "1984-11-18T00:00:00Z", "nullFieldList": ["11b55pkY", "qKhXaan4", "2jJHkGHG"], "startDate": "1973-01-04T00:00:00Z", "status": "ACTIVE", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateUserEntitlement' test.out

#- 188 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '0C9j1sc1' \
    --namespace $AB_NAMESPACE \
    --userId '2kSotsyH' \
    --body '{"options": ["pfuzUakA", "OOhaU4im", "ovwnIw2m"], "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 188 'ConsumeUserEntitlement' test.out

#- 189 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'vn0jNE09' \
    --namespace $AB_NAMESPACE \
    --userId 'GN8JDzIq' \
    > test.out 2>&1
eval_tap $? 189 'DisableUserEntitlement' test.out

#- 190 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'NJZNiNJF' \
    --namespace $AB_NAMESPACE \
    --userId '2UD8XTsC' \
    > test.out 2>&1
eval_tap $? 190 'EnableUserEntitlement' test.out

#- 191 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '2HvVvxZo' \
    --namespace $AB_NAMESPACE \
    --userId 'nPhR7voR' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementHistories' test.out

#- 192 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'KpTe3yRb' \
    --namespace $AB_NAMESPACE \
    --userId 'BIEJxYIw' \
    > test.out 2>&1
eval_tap $? 192 'RevokeUserEntitlement' test.out

#- 193 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'bT2rGjAh' \
    --body '{"duration": 13, "endDate": "1984-11-19T00:00:00Z", "itemId": "0z7MLjR7", "itemSku": "buEE8Z7S", "language": "Mg6ZerkF", "order": {"currency": {"currencyCode": "q8nTGkY3", "currencySymbol": "UKDOqF6i", "currencyType": "REAL", "decimals": 73, "namespace": "2cw5YGVe"}, "ext": {"qyjZ7UZm": {}, "olzAPEYP": {}, "J8WHV1dE": {}}, "free": true}, "orderNo": "BpHq4g79", "origin": "Twitch", "quantity": 69, "region": "n8OOib82", "source": "IAP", "startDate": "1990-04-23T00:00:00Z", "storeId": "lOcpg9Gv"}' \
    > test.out 2>&1
eval_tap $? 193 'FulfillItem' test.out

#- 194 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'L84bFuOE' \
    --body '{"code": "DL7WF2qb", "language": "YiXi_182", "region": "p88mQL51"}' \
    > test.out 2>&1
eval_tap $? 194 'RedeemCode' test.out

#- 195 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '6lRTGP96' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "wjDcMDdY", "namespace": "p81dnVsI"}, "item": {"itemId": "R3n9mFH0", "itemSku": "wOYeDIV4", "itemType": "P53hNTEn"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "5vI6qYlw", "namespace": "TutnTcCG"}, "item": {"itemId": "ipFX9bh3", "itemSku": "6O3zsfee", "itemType": "XnM8upws"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "FIvSKy11", "namespace": "qloY6h9h"}, "item": {"itemId": "bYchCYpF", "itemSku": "Uv1Kixky", "itemType": "4cMbAqyK"}, "quantity": 97, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 195 'FulfillRewards' test.out

#- 196 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gl8YZ7Pz' \
    --endTime 'k3GqjP6Y' \
    --limit '20' \
    --offset '91' \
    --productId '0FgRROyt' \
    --startTime 'drjWUpHm' \
    --status 'FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 196 'QueryUserIAPOrders' test.out

#- 197 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9dHuM00L' \
    > test.out 2>&1
eval_tap $? 197 'QueryAllUserIAPOrders' test.out

#- 198 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'bLCk4yAK' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "oEH", "productId": "d6ZMYikI", "region": "SKI92M0F", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 198 'MockFulfillIAPItem' test.out

#- 199 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Y4RcZ7WV' \
    --itemId 'bkbx0SnR' \
    --limit '13' \
    --offset '36' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserOrders' test.out

#- 200 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kGEtC376' \
    --body '{"currencyCode": "oGntgmXl", "currencyNamespace": "ACnB8Pyq", "discountedPrice": 18, "ext": {"k0tOQpa0": {}, "SJLneMbR": {}, "144MeCXL": {}}, "itemId": "opwFAxsy", "language": "QcfVwGH3", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 14, "quantity": 28, "region": "93U75QSs", "returnUrl": "XfnlXHSx", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 200 'AdminCreateUserOrder' test.out

#- 201 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZUXJD2kE' \
    --itemId 'ZsOKauUB' \
    > test.out 2>&1
eval_tap $? 201 'CountOfPurchasedItem' test.out

#- 202 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0OK7xBhz' \
    --userId 'Q9mUTQ12' \
    > test.out 2>&1
eval_tap $? 202 'GetUserOrder' test.out

#- 203 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '5GKk6Qzq' \
    --userId 'RJN8y8Bh' \
    --body '{"status": "REFUNDED", "statusReason": "xx9s86zK"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateUserOrderStatus' test.out

#- 204 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GnuCmUH9' \
    --userId 'uuLF8utM' \
    > test.out 2>&1
eval_tap $? 204 'FulfillUserOrder' test.out

#- 205 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'pcfNWfTL' \
    --userId 'uRn6iGY4' \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderGrant' test.out

#- 206 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'jyLyMWcM' \
    --userId 'vtKIU7hF' \
    > test.out 2>&1
eval_tap $? 206 'GetUserOrderHistories' test.out

#- 207 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'LHKE7OpY' \
    --userId 'ngeAwsfF' \
    --body '{"additionalData": {"cardSummary": "dkah4m5K"}, "authorisedTime": "1985-02-24T00:00:00Z", "chargebackReversedTime": "1994-01-29T00:00:00Z", "chargebackTime": "1986-12-11T00:00:00Z", "chargedTime": "1998-02-01T00:00:00Z", "createdTime": "1985-08-21T00:00:00Z", "currency": {"currencyCode": "4Ipm8mkE", "currencySymbol": "xrk4rCv2", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "vm9qJf6I"}, "customParameters": {"LytZfr7b": {}, "SNr9wONY": {}, "o9uSQe5t": {}}, "extOrderNo": "KGFHsKI3", "extTxId": "yNCb3JMw", "extUserId": "wZqvMTmI", "issuedAt": "1985-02-14T00:00:00Z", "metadata": {"9FhPry6t": "faKXTSD2", "EJyTFYDg": "1sojCRWF", "Jg7l0QR1": "ALQDoGBa"}, "namespace": "gVJXzwds", "nonceStr": "thlMMxO9", "paymentMethod": "uJCVdNDV", "paymentMethodFee": 13, "paymentOrderNo": "yfqpfJ1S", "paymentProvider": "PAYPAL", "paymentProviderFee": 19, "paymentStationUrl": "WPLWIuLz", "price": 40, "refundedTime": "1983-09-27T00:00:00Z", "salesTax": 42, "sandbox": false, "sku": "tuSgIgvr", "status": "REFUNDING", "statusReason": "UUWc90RI", "subscriptionId": "XW901p03", "subtotalPrice": 94, "targetNamespace": "joovKE1w", "targetUserId": "zKsMVKL7", "tax": 98, "totalPrice": 58, "totalTax": 18, "txEndTime": "1971-09-07T00:00:00Z", "type": "pkNNRmFU", "userId": "oCOBZv8x", "vat": 20}' \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserOrderNotification' test.out

#- 208 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZoyhaW45' \
    --userId '4rycBP9o' \
    > test.out 2>&1
eval_tap $? 208 'DownloadUserOrderReceipt' test.out

#- 209 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'R9UWbBOl' \
    --body '{"currencyCode": "aOKqeD5b", "currencyNamespace": "kw6RZRnT", "customParameters": {"wZH5ZBsi": {}, "400oGsix": {}, "m1NKtsud": {}}, "description": "kfKrbsgI", "extOrderNo": "YZwzuqx9", "extUserId": "QHTgHU3B", "itemType": "SEASON", "language": "Nx", "metadata": {"SdlV3XRd": "HwAJnHbz", "L5kfH9AX": "8vRvBpo7", "9IteyltL": "tdRJPKk8"}, "notifyUrl": "lEmk65ua", "omitNotification": true, "platform": "6fokc2GD", "price": 17, "recurringPaymentOrderNo": "cSuvjS4w", "region": "OLyXoUT6", "returnUrl": "M9RMqKD1", "sandbox": true, "sku": "acrtynsZ", "subscriptionId": "x5Gx86a3", "title": "rnM8ivCS"}' \
    > test.out 2>&1
eval_tap $? 209 'CreateUserPaymentOrder' test.out

#- 210 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UZb39j9A' \
    --userId '12rCHUsv' \
    --body '{"description": "rDg8xvqm"}' \
    > test.out 2>&1
eval_tap $? 210 'RefundUserPaymentOrder' test.out

#- 211 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'p4nHbJea' \
    --body '{"code": "rGXL8ynS", "orderNo": "JltmpOuE"}' \
    > test.out 2>&1
eval_tap $? 211 'ApplyUserRedemption' test.out

#- 212 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'zMAexonp' \
    --chargeStatus 'CHARGED' \
    --itemId 'JGJSWMFm' \
    --limit '32' \
    --offset '65' \
    --sku 'uzaCDai7' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 212 'QueryUserSubscriptions' test.out

#- 213 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'gisx98Kf' \
    --excludeSystem 'false' \
    --limit '22' \
    --offset '56' \
    --subscriptionId 'yWABV7Zu' \
    > test.out 2>&1
eval_tap $? 213 'GetUserSubscriptionActivities' test.out

#- 214 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'eyH0zE2V' \
    --body '{"grantDays": 67, "itemId": "AGHQzhx6", "language": "L5wMOcE1", "reason": "MgAhu5qb", "region": "Exo7m6RO", "source": "LqV0CFV2"}' \
    > test.out 2>&1
eval_tap $? 214 'PlatformSubscribeSubscription' test.out

#- 215 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'g7FCi0uy' \
    --itemId 'S7cQMNf9' \
    > test.out 2>&1
eval_tap $? 215 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 216 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'STlsLd74' \
    --userId 'Uvvi4Obz' \
    > test.out 2>&1
eval_tap $? 216 'GetUserSubscription' test.out

#- 217 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DoqM8aym' \
    --userId 'Bt6G5LF8' \
    > test.out 2>&1
eval_tap $? 217 'DeleteUserSubscription' test.out

#- 218 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b1CvPl1V' \
    --userId '1suxzT6P' \
    --force 'false' \
    --body '{"immediate": false, "reason": "0LxEQgMi"}' \
    > test.out 2>&1
eval_tap $? 218 'CancelSubscription' test.out

#- 219 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uARqQcHQ' \
    --userId 'jVwwuO5B' \
    --body '{"grantDays": 77, "reason": "D2FvcNBn"}' \
    > test.out 2>&1
eval_tap $? 219 'GrantDaysToSubscription' test.out

#- 220 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kxG0uDj6' \
    --userId 'VCS0mlb3' \
    --excludeFree 'false' \
    --limit '96' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 220 'GetUserSubscriptionBillingHistories' test.out

#- 221 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'v8XvKRl6' \
    --userId 'TfndwlhQ' \
    --body '{"additionalData": {"cardSummary": "nmiV4PLb"}, "authorisedTime": "1973-11-22T00:00:00Z", "chargebackReversedTime": "1989-09-05T00:00:00Z", "chargebackTime": "1994-01-04T00:00:00Z", "chargedTime": "1997-01-22T00:00:00Z", "createdTime": "1997-11-04T00:00:00Z", "currency": {"currencyCode": "6x88Ah7e", "currencySymbol": "98CnWJI6", "currencyType": "REAL", "decimals": 41, "namespace": "px6c26py"}, "customParameters": {"MIYWAlQF": {}, "0xUq9J86": {}, "syuPzN3d": {}}, "extOrderNo": "1964ZoPU", "extTxId": "GgDrh9Qh", "extUserId": "HPgInpg0", "issuedAt": "1988-10-15T00:00:00Z", "metadata": {"lNg3gOPp": "sWyC6dnh", "1zKaAkNV": "4JK5uhW1", "2xARP5JX": "If06rbWW"}, "namespace": "3MzhtHHH", "nonceStr": "qm1T3syJ", "paymentMethod": "6GRoH0b0", "paymentMethodFee": 32, "paymentOrderNo": "iNZgNPso", "paymentProvider": "XSOLLA", "paymentProviderFee": 24, "paymentStationUrl": "8ii81It8", "price": 96, "refundedTime": "1978-07-03T00:00:00Z", "salesTax": 32, "sandbox": true, "sku": "bH9JLaHH", "status": "AUTHORISED", "statusReason": "spFvdx8S", "subscriptionId": "BNgr6U8k", "subtotalPrice": 42, "targetNamespace": "uonmn3Zr", "targetUserId": "xPFBeUiw", "tax": 28, "totalPrice": 85, "totalTax": 80, "txEndTime": "1992-04-17T00:00:00Z", "type": "YEodTWwi", "userId": "NWsujpCR", "vat": 71}' \
    > test.out 2>&1
eval_tap $? 221 'ProcessUserSubscriptionNotification' test.out

#- 222 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'RZ4OQ8cN' \
    --namespace $AB_NAMESPACE \
    --userId 'Zl8QsHQH' \
    --body '{"count": 100, "orderNo": "DwIA3IsH"}' \
    > test.out 2>&1
eval_tap $? 222 'AcquireUserTicket' test.out

#- 223 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'WywTdm5Q' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserCurrencyWallets' test.out

#- 224 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '4k8dkZW6' \
    --namespace $AB_NAMESPACE \
    --userId '8qbLfaqz' \
    --limit '74' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 224 'ListUserCurrencyTransactions' test.out

#- 225 CheckWallet
eval_tap 0 225 'CheckWallet # SKIP deprecated' test.out

#- 226 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'NdlbKFtA' \
    --namespace $AB_NAMESPACE \
    --userId 'tW5sYKeU' \
    --body '{"amount": 42, "expireAt": "1985-05-05T00:00:00Z", "origin": "Twitch", "reason": "E7sHuVsP", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 226 'CreditUserWallet' test.out

#- 227 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '8kSwwZZS' \
    --namespace $AB_NAMESPACE \
    --userId 'CU9iCmIA' \
    --body '{"amount": 79, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 227 'PayWithUserWallet' test.out

#- 228 GetUserWallet
eval_tap 0 228 'GetUserWallet # SKIP deprecated' test.out

#- 229 DebitUserWallet
eval_tap 0 229 'DebitUserWallet # SKIP deprecated' test.out

#- 230 DisableUserWallet
eval_tap 0 230 'DisableUserWallet # SKIP deprecated' test.out

#- 231 EnableUserWallet
eval_tap 0 231 'EnableUserWallet # SKIP deprecated' test.out

#- 232 ListUserWalletTransactions
eval_tap 0 232 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 233 QueryWallets
eval_tap 0 233 'QueryWallets # SKIP deprecated' test.out

#- 234 GetWallet
eval_tap 0 234 'GetWallet # SKIP deprecated' test.out

#- 235 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'RJ4PTfxV' \
    --end 'CZ5IzguT' \
    --start 'AlTz2T1r' \
    > test.out 2>&1
eval_tap $? 235 'SyncOrders' test.out

#- 236 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["awBGUNIF", "vC8maKTH", "vCqYftec"], "apiKey": "qjWo9CsH", "authoriseAsCapture": false, "blockedPaymentMethods": ["BHhXW4f8", "AW8sudDK", "M1KglSnR"], "clientKey": "EYz9P7sU", "dropInSettings": "R3c1DVQg", "liveEndpointUrlPrefix": "60pPN3vq", "merchantAccount": "S9Oi246n", "notificationHmacKey": "hxymDQwH", "notificationPassword": "EjHJSaNk", "notificationUsername": "20LsInw4", "returnUrl": "bVnIh7Fc", "settings": "RmhtQSlw"}' \
    > test.out 2>&1
eval_tap $? 236 'TestAdyenConfig' test.out

#- 237 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "hJrrrria", "privateKey": "ffAcgQ84", "publicKey": "hO15vbAx", "returnUrl": "Yb5PfBe3"}' \
    > test.out 2>&1
eval_tap $? 237 'TestAliPayConfig' test.out

#- 238 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "ncApNWjm", "secretKey": "rmHIygnN"}' \
    > test.out 2>&1
eval_tap $? 238 'TestCheckoutConfig' test.out

#- 239 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'euMLqRB2' \
    --region 'P5pT9Jg6' \
    > test.out 2>&1
eval_tap $? 239 'DebugMatchedPaymentMerchantConfig' test.out

#- 240 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "Erk85oIK", "clientSecret": "PFqWQxlY", "returnUrl": "Metq8Zzd", "webHookId": "Y6gdLPHt"}' \
    > test.out 2>&1
eval_tap $? 240 'TestPayPalConfig' test.out

#- 241 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["Goq25YMM", "avjtWTnW", "oeE1ZfIE"], "publishableKey": "cefEW1PB", "secretKey": "cEQ2710z", "webhookSecret": "0fGLhENl"}' \
    > test.out 2>&1
eval_tap $? 241 'TestStripeConfig' test.out

#- 242 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "SmExEt0z", "key": "kDpDRgux", "mchid": "QC34Szdp", "returnUrl": "J9kgYa9D"}' \
    > test.out 2>&1
eval_tap $? 242 'TestWxPayConfig' test.out

#- 243 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "z8SxCRn4", "flowCompletionUrl": "7jykadAw", "merchantId": 8, "projectId": 62, "projectSecretKey": "CascFtkx"}' \
    > test.out 2>&1
eval_tap $? 243 'TestXsollaConfig' test.out

#- 244 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '0Yv2PEHW' \
    > test.out 2>&1
eval_tap $? 244 'GetPaymentMerchantConfig' test.out

#- 245 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'gux7NFdC' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["50rVniYW", "BT4gRzhN", "7BmfT1FS"], "apiKey": "RjF9umec", "authoriseAsCapture": true, "blockedPaymentMethods": ["A5e4LhhE", "TWvX85Ab", "BhV5tYzb"], "clientKey": "cpT7dnO2", "dropInSettings": "xE42cseU", "liveEndpointUrlPrefix": "XgVn7hPa", "merchantAccount": "Wyz4IT2t", "notificationHmacKey": "PrUxVIBc", "notificationPassword": "upFWUHp2", "notificationUsername": "t2x9Bnyd", "returnUrl": "449LFd9t", "settings": "xEyuWwXK"}' \
    > test.out 2>&1
eval_tap $? 245 'UpdateAdyenConfig' test.out

#- 246 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '2ahGnOgQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfigById' test.out

#- 247 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Xt2paUry' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "lI91j55N", "privateKey": "RzA8ZX2F", "publicKey": "OzfAkA7S", "returnUrl": "YbP1egwU"}' \
    > test.out 2>&1
eval_tap $? 247 'UpdateAliPayConfig' test.out

#- 248 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '3KF8GCUo' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 248 'TestAliPayConfigById' test.out

#- 249 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 't44H5uzq' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "ENOm4xwh", "secretKey": "RPpkiRZH"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateCheckoutConfig' test.out

#- 250 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'fWa86SdK' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfigById' test.out

#- 251 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'JAFfJtll' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "vCnGD2nY", "clientSecret": "tAdWnqlF", "returnUrl": "DhhxWV6Y", "webHookId": "CQkoehnu"}' \
    > test.out 2>&1
eval_tap $? 251 'UpdatePayPalConfig' test.out

#- 252 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'KUS8IIgi' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfigById' test.out

#- 253 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '7Vm9HSYv' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["a8cgJK6l", "v9lUIc0y", "gq3Ehx9d"], "publishableKey": "gNHnKDFD", "secretKey": "EM1TxeK3", "webhookSecret": "nmWyA79O"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateStripeConfig' test.out

#- 254 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'v095hni8' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 254 'TestStripeConfigById' test.out

#- 255 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'XIwjpuDH' \
    --validate 'false' \
    --body '{"appId": "UwE5nkU8", "key": "yaESDxw6", "mchid": "XCCwcd8m", "returnUrl": "ukP3WoGX"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfig' test.out

#- 256 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'vj9IHnn8' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 256 'UpdateWxPayConfigCert' test.out

#- 257 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ZEwAeAxw' \
    > test.out 2>&1
eval_tap $? 257 'TestWxPayConfigById' test.out

#- 258 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'T2zEvh0s' \
    --validate 'false' \
    --body '{"apiKey": "719EymSp", "flowCompletionUrl": "BI9ap38j", "merchantId": 21, "projectId": 53, "projectSecretKey": "8W4DAEqf"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateXsollaConfig' test.out

#- 259 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'cwFxOy5D' \
    > test.out 2>&1
eval_tap $? 259 'TestXsollaConfigById' test.out

#- 260 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'rpcqA0Ab' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 260 'UpdateXsollaUIConfig' test.out

#- 261 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '21' \
    --namespace '6B2M91Qf' \
    --offset '14' \
    --region 'xVAn1hYm' \
    > test.out 2>&1
eval_tap $? 261 'QueryPaymentProviderConfig' test.out

#- 262 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "a01aWHB6", "region": "CZWKyRsC", "sandboxTaxJarApiToken": "uCJdLXCA", "specials": ["PAYPAL", "CHECKOUT", "ADYEN"], "taxJarApiToken": "cA33f9JW", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 262 'CreatePaymentProviderConfig' test.out

#- 263 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 263 'GetAggregatePaymentProviders' test.out

#- 264 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'z7eS65M3' \
    --region 'UJ2FrPQ2' \
    > test.out 2>&1
eval_tap $? 264 'DebugMatchedPaymentProviderConfig' test.out

#- 265 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 265 'GetSpecialPaymentProviders' test.out

#- 266 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'ePImy2kk' \
    --body '{"aggregate": "ADYEN", "namespace": "Jjsvhjjo", "region": "vQetZGCT", "sandboxTaxJarApiToken": "raQfkJSr", "specials": ["CHECKOUT", "XSOLLA", "WXPAY"], "taxJarApiToken": "b9P9nXJb", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 266 'UpdatePaymentProviderConfig' test.out

#- 267 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'gKq71g6P' \
    > test.out 2>&1
eval_tap $? 267 'DeletePaymentProviderConfig' test.out

#- 268 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentTaxConfig' test.out

#- 269 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "RfC47f8X", "taxJarApiToken": "VowFYfc0", "taxJarEnabled": true, "taxJarProductCodesMapping": {"oWqep1R9": "rn0f1gzl", "APkfVd81": "31fb93MI", "uVYGFLqS": "OD17TIwQ"}}' \
    > test.out 2>&1
eval_tap $? 269 'UpdatePaymentTaxConfig' test.out

#- 270 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'TvAlUlXg' \
    --end '8KmFAC9j' \
    --start '4F9mW4JA' \
    > test.out 2>&1
eval_tap $? 270 'SyncPaymentOrders' test.out

#- 271 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'f8Vmwf6p' \
    --storeId 'oxhi6EIs' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRootCategories' test.out

#- 272 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'Ih3vA2TU' \
    --storeId 'MfFcvGTm' \
    > test.out 2>&1
eval_tap $? 272 'DownloadCategories' test.out

#- 273 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'K50ufTyf' \
    --namespace $AB_NAMESPACE \
    --language 'qvn02zji' \
    --storeId 'jG05PjiH' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCategory' test.out

#- 274 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'E3mp0wL2' \
    --namespace $AB_NAMESPACE \
    --language 't4aE52SU' \
    --storeId 'xcYiv6uD' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetChildCategories' test.out

#- 275 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'yeacYaLf' \
    --namespace $AB_NAMESPACE \
    --language 'WAsi3qpF' \
    --storeId 'rvNOsjJK' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetDescendantCategories' test.out

#- 276 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 276 'PublicListCurrencies' test.out

#- 277 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'G7SUsGEE' \
    --region 'dnokqVZo' \
    --storeId 'WLroBta1' \
    --appId 'XbnVDxBH' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemByAppId' test.out

#- 278 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'fJjg6MRJ' \
    --categoryPath '0xAr6i1j' \
    --features 'IoEeXYJ0' \
    --itemType 'COINS' \
    --language 'NSjSyxbf' \
    --limit '74' \
    --offset '99' \
    --region 'jjE6oOa4' \
    --sortBy '["createdAt:desc", "name:desc", "createdAt:asc"]' \
    --storeId 'Z52RaoJJ' \
    --tags 'JuVOTWji' \
    > test.out 2>&1
eval_tap $? 278 'PublicQueryItems' test.out

#- 279 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'eHSl7pO3' \
    --region '6huaBtxX' \
    --storeId 'U1tH5ECN' \
    --sku 'oNwQS3Xs' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItemBySku' test.out

#- 280 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'rxc79nnY' \
    --region '3SjqI9kb' \
    --storeId 'g7N3ICG4' \
    --itemIds 'WdqJBRm7' \
    > test.out 2>&1
eval_tap $? 280 'PublicBulkGetItems' test.out

#- 281 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["OGSZvOvJ", "pJ8oToWS", "JopnBZKD"]}' \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateItemPurchaseCondition' test.out

#- 282 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '43' \
    --offset '33' \
    --region 'XLuzG3DP' \
    --storeId 'VfbYHf2p' \
    --keyword 'dXl7xqx2' \
    --language '6nYqGS3X' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchItems' test.out

#- 283 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'cBg8FQcn' \
    --namespace $AB_NAMESPACE \
    --language 'lwhdkru6' \
    --region 'MJvmYaMf' \
    --storeId 'mYFdOdwZ' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetApp' test.out

#- 284 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'Zjk22zfc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItemDynamicData' test.out

#- 285 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ZgLadFdy' \
    --namespace $AB_NAMESPACE \
    --language '0F6aiAU0' \
    --populateBundle 'false' \
    --region 'Z9RIWE9b' \
    --storeId 'SZivkOI8' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItem' test.out

#- 286 GetPaymentCustomization
eval_tap 0 286 'GetPaymentCustomization # SKIP deprecated' test.out

#- 287 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "ymAs3AXr", "paymentProvider": "ADYEN", "returnUrl": "KYEPAAgU", "ui": "WmNhWTkt", "zipCode": "7VMeqVAK"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentUrl' test.out

#- 288 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5xSO81It' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPaymentMethods' test.out

#- 289 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KSMwRduG' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUnpaidPaymentOrder' test.out

#- 290 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1b769n1o' \
    --paymentProvider 'ADYEN' \
    --zipCode 'zMlKo2la' \
    --body '{"token": "k8FHQ2gq"}' \
    > test.out 2>&1
eval_tap $? 290 'Pay' test.out

#- 291 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pXxkH6gx' \
    > test.out 2>&1
eval_tap $? 291 'PublicCheckPaymentOrderPaidStatus' test.out

#- 292 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'f9DeljGB' \
    > test.out 2>&1
eval_tap $? 292 'GetPaymentPublicConfig' test.out

#- 293 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '8Ke9s0nc' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetQRCode' test.out

#- 294 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'tcmmfLrG' \
    --foreinginvoice 'Ho0EfHJJ' \
    --invoiceId '277nOI9V' \
    --payload 'RAR40d2H' \
    --redirectResult 'awwpgd2Z' \
    --resultCode 'TguAjMCq' \
    --sessionId '32tn6oci' \
    --status 'nK7UnesS' \
    --token 'n25HbSDe' \
    --type 'SeHn9ZBF' \
    --userId 'mWfS6d02' \
    --orderNo 'Tmz4H8Ex' \
    --paymentOrderNo 'PPexnr51' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'gdpaDgXU' \
    > test.out 2>&1
eval_tap $? 294 'PublicNormalizePaymentReturnUrl' test.out

#- 295 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'E6jjFVlO' \
    --paymentOrderNo 'u2IfH3a0' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 295 'GetPaymentTaxValue' test.out

#- 296 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'FS7jzAX4' \
    > test.out 2>&1
eval_tap $? 296 'GetRewardByCode' test.out

#- 297 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'uYYoMPSR' \
    --limit '28' \
    --offset '88' \
    --sortBy '["rewardCode:asc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 297 'QueryRewards1' test.out

#- 298 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'GbpfzlTT' \
    > test.out 2>&1
eval_tap $? 298 'GetReward1' test.out

#- 299 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'PublicListStores' test.out

#- 300 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["9S1K0kA2", "R4dbVl0T", "IFMN99Ez"]' \
    --itemIds '["9a7PNQQz", "R2vAb4ZX", "LWIdzR8r"]' \
    --skus '["3Fdw6emT", "KdSfjjlz", "wdRHOTT7"]' \
    > test.out 2>&1
eval_tap $? 300 'PublicExistsAnyMyActiveEntitlement' test.out

#- 301 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'J4l0DxHd' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 302 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'pXCOYd4l' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 303 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'QDVdWAZk' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 304 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["5A9FaZSY", "NQKerzrf", "0V3lyzhS"]' \
    --itemIds '["8yyOJTpB", "9JttMUlt", "eZFYcvxb"]' \
    --skus '["qWM8Q5Th", "WxrhR1lz", "bJOmeCIq"]' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetEntitlementOwnershipToken' test.out

#- 305 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'jRoGBBji' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'PublicGetMyWallet' test.out

#- 306 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Q2fCCIai' \
    --body '{"epicGamesJwtToken": "rAFxVNIn"}' \
    > test.out 2>&1
eval_tap $? 306 'SyncEpicGameDLC' test.out

#- 307 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'wk0RQTOc' \
    --body '{"serviceLabel": 28}' \
    > test.out 2>&1
eval_tap $? 307 'PublicSyncPsnDlcInventory' test.out

#- 308 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'rEO2lcYm' \
    --body '{"appId": "x9IArF27", "steamId": "VFKJ22dG"}' \
    > test.out 2>&1
eval_tap $? 308 'SyncSteamDLC' test.out

#- 309 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '9eFDqhxQ' \
    --body '{"xstsToken": "xNUlJY1N"}' \
    > test.out 2>&1
eval_tap $? 309 'SyncXboxDLC' test.out

#- 310 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'cQ8Ciy1q' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '5zd7cmRx' \
    --features '["0Db2zu3F", "r7isQGyO", "jzq0ffom"]' \
    --itemId '["Q6Jakelr", "MGMmO5up", "u88fMoMh"]' \
    --limit '24' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 310 'PublicQueryUserEntitlements' test.out

#- 311 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'u63Nq8Ql' \
    --appId '0mwyoSyF' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserAppEntitlementByAppId' test.out

#- 312 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'b2UX09ki' \
    --limit '41' \
    --offset '5' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 312 'PublicQueryUserEntitlementsByAppType' test.out

#- 313 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5hQ7FWFy' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '0SQLzGAG' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementByItemId' test.out

#- 314 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YKpeuGBH' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'H5qNOEFt' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserEntitlementBySku' test.out

#- 315 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'njARxzBb' \
    --appIds '["SAstaVZ0", "dc6CqtqS", "yERr33Sz"]' \
    --itemIds '["zDcPnTze", "Doosxy9B", "dfUdgd51"]' \
    --skus '["60OsD5Wq", "PyrOjfqA", "NQE5lwvS"]' \
    > test.out 2>&1
eval_tap $? 315 'PublicExistsAnyUserActiveEntitlement' test.out

#- 316 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6phnu97m' \
    --appId 'P0zxAyCX' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NCvADRMt' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'Zuj47rN0' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 318 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'UnLwnZek' \
    --ids '["fTpSypQ6", "xOPtlVQD", "0VIHOz0h"]' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 319 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'bKqKcvj3' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '7eDc1vgZ' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 320 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'cwidH9lH' \
    --namespace $AB_NAMESPACE \
    --userId 'utd5nvEr' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlement' test.out

#- 321 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'QWqrrYI3' \
    --namespace $AB_NAMESPACE \
    --userId 'aawFoP72' \
    --body '{"options": ["eDMO2oIL", "omiIFDJP", "c3GKa1iH"], "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 321 'PublicConsumeUserEntitlement' test.out

#- 322 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'vkNpw3Va' \
    --body '{"code": "FdbvVYvM", "language": "Fnp-qMfn-bV", "region": "yMqEsCTe"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicRedeemCode' test.out

#- 323 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'k30OBLcl' \
    --body '{"excludeOldTransactions": true, "language": "BB-vRFD", "productId": "Kv8pWV8X", "receiptData": "Oprv5TlL", "region": "hRldcxhj", "transactionId": "zTcIHpeN"}' \
    > test.out 2>&1
eval_tap $? 323 'PublicFulfillAppleIAPItem' test.out

#- 324 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bjDr8wxF' \
    --body '{"epicGamesJwtToken": "e9Gcs2CI"}' \
    > test.out 2>&1
eval_tap $? 324 'SyncEpicGamesInventory' test.out

#- 325 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'HM1TOL08' \
    --body '{"autoAck": true, "language": "NY", "orderId": "HQ6K0teX", "packageName": "Eor52xib", "productId": "eljf706N", "purchaseTime": 38, "purchaseToken": "9XBSzwuJ", "region": "CWQhVRmp"}' \
    > test.out 2>&1
eval_tap $? 325 'PublicFulfillGoogleIAPItem' test.out

#- 326 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'x31H6hy3' \
    --body '{"currencyCode": "xdmByuw4", "price": 0.3067766562634675, "productId": "zQfoEEeV", "serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 326 'PublicReconcilePlayStationStore' test.out

#- 327 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BSHM8PWo' \
    --body '{"appId": "it1AJ5BU", "language": "xE_HEFx", "region": "nqBFls04", "stadiaPlayerId": "3oFUFQ8T"}' \
    > test.out 2>&1
eval_tap $? 327 'SyncStadiaEntitlement' test.out

#- 328 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '4fiyyDK2' \
    --body '{"appId": "HCibA8ds", "currencyCode": "njlJokJr", "language": "Yqyb-hvnS-UD", "price": 0.837907245873538, "productId": "ZLaUidep", "region": "iqCQKhRb", "steamId": "xlmosaHd"}' \
    > test.out 2>&1
eval_tap $? 328 'SyncSteamInventory' test.out

#- 329 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Rtj6xwvj' \
    --body '{"gameId": "kwwJk1Gk", "language": "Qo", "region": "VY2b7gUM"}' \
    > test.out 2>&1
eval_tap $? 329 'SyncTwitchDropsEntitlement' test.out

#- 330 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '9zRE4OGm' \
    --body '{"currencyCode": "VDuaBAey", "price": 0.32085618807366667, "productId": "CzFqlImx", "xstsToken": "qWzEzT3M"}' \
    > test.out 2>&1
eval_tap $? 330 'SyncXboxInventory' test.out

#- 331 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'sQ0J2WAq' \
    --itemId 'g4Khfkbf' \
    --limit '9' \
    --offset '66' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 331 'PublicQueryUserOrders' test.out

#- 332 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gMzx3KRN' \
    --body '{"currencyCode": "PHPaEbSt", "discountedPrice": 48, "ext": {"nvrjP7v4": {}, "LmwyU4jY": {}, "xt9el3Wf": {}}, "itemId": "5FCbm5rk", "language": "jV_Rviw_978", "price": 99, "quantity": 58, "region": "dpJ1XuoO", "returnUrl": "fmNFEXI1"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserOrder' test.out

#- 333 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3anJtYzH' \
    --userId 'JR5w4Nh5' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserOrder' test.out

#- 334 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EgaSOtvU' \
    --userId 'l25ct9pu' \
    > test.out 2>&1
eval_tap $? 334 'PublicCancelUserOrder' test.out

#- 335 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '5zVW6geV' \
    --userId 'ufqMhyDX' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserOrderHistories' test.out

#- 336 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'lxGaDJ3D' \
    --userId '1XQFHqkF' \
    > test.out 2>&1
eval_tap $? 336 'PublicDownloadUserOrderReceipt' test.out

#- 337 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '30FCLqxY' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetPaymentAccounts' test.out

#- 338 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'WD7uiQqQ' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'TlYwPdB5' \
    > test.out 2>&1
eval_tap $? 338 'PublicDeletePaymentAccount' test.out

#- 339 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'T3dpYvBd' \
    --chargeStatus 'CHARGED' \
    --itemId 'FrrsYjyG' \
    --limit '29' \
    --offset '15' \
    --sku 'P5WfXSFx' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserSubscriptions' test.out

#- 340 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EOrNUBgu' \
    --body '{"currencyCode": "PfviRnzf", "itemId": "AYvEIJbh", "language": "RTzi-750", "region": "7OzhwocO", "returnUrl": "NcFiMdPF", "source": "pKZ6n2zC"}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSubscribeSubscription' test.out

#- 341 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XKLhTks5' \
    --itemId 'ypr6RxK1' \
    > test.out 2>&1
eval_tap $? 341 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 342 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uBnSmDfZ' \
    --userId '7ykyb2yz' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserSubscription' test.out

#- 343 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KKqqwilM' \
    --userId 'fmTy4Upz' \
    > test.out 2>&1
eval_tap $? 343 'PublicChangeSubscriptionBillingAccount' test.out

#- 344 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bixUclem' \
    --userId 'DdJIfNjS' \
    --body '{"immediate": false, "reason": "Ne2wuD5z"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelSubscription' test.out

#- 345 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FEuK0cNA' \
    --userId 'KwKTRoUQ' \
    --excludeFree 'true' \
    --limit '59' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserSubscriptionBillingHistories' test.out

#- 346 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'yejJcQx2' \
    --namespace $AB_NAMESPACE \
    --userId 'dHYtK3bE' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetWallet' test.out

#- 347 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '0bnSd6dc' \
    --namespace $AB_NAMESPACE \
    --userId 'Tuc9mlMC' \
    --limit '9' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 347 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE