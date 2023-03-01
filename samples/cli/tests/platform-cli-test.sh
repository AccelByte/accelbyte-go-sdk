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
echo "1..383"

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
    --body '{"context": {"item": {"appId": "RKPDnpRN", "appType": "GAME", "baseAppId": "o26yTUTY", "boothName": "68nJzYAc", "boundItemIds": ["pQQQ9vfw", "Uem8eifU", "jaAclulE"], "categoryPath": "knoQHc7n", "clazz": "EbOdoV1P", "createdAt": "1995-05-16T00:00:00Z", "description": "smY8O7d6", "displayOrder": 54, "entitlementType": "DURABLE", "ext": {"PIeuD6Oo": {}, "HZ3jz2Gq": {}, "QpnuOoKr": {}}, "features": ["Q9B71PfT", "gdhLZafi", "lA9IgI58"], "fresh": true, "images": [{"as": "ngOLMWy1", "caption": "SSe158Xf", "height": 73, "imageUrl": "8EROzNBP", "smallImageUrl": "fdptWgdn", "width": 77}, {"as": "tVIwfhs1", "caption": "a0egY24v", "height": 54, "imageUrl": "BfVn2BB0", "smallImageUrl": "cpGG7TBL", "width": 17}, {"as": "zV1doKpe", "caption": "OAfXgFK9", "height": 27, "imageUrl": "icxkmtwP", "smallImageUrl": "xnzCY9Av", "width": 19}], "itemId": "MPC8olB0", "itemIds": ["IenohjkQ", "l0NqYShx", "UNcNjHTa"], "itemQty": {"Sm5krEk8": 22, "asEOHkng": 52, "iBbBdEMo": 54}, "itemType": "SUBSCRIPTION", "language": "458W5sOp", "listable": true, "localExt": {"9B47PAOm": {}, "M89o6owu": {}, "9JnqQsqm": {}}, "longDescription": "5HYZ1iMr", "lootBoxConfig": {"rewardCount": 73, "rewards": [{"lootBoxItems": [{"count": 10, "itemId": "Xa7TQlc1", "itemSku": "sL7y3c1l", "itemType": "z3AkB6oo"}, {"count": 71, "itemId": "MRjJc2Hp", "itemSku": "s4qgjAY8", "itemType": "WgJ5E39J"}, {"count": 26, "itemId": "QHxHrfkB", "itemSku": "qownEHz3", "itemType": "00oEIGGW"}], "name": "6EiW8sTF", "odds": 0.3507199963965516, "type": "PROBABILITY_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 35, "itemId": "DthP94KX", "itemSku": "azRqBtJV", "itemType": "CQGaxAOk"}, {"count": 19, "itemId": "Hamvqgbc", "itemSku": "fa07weWw", "itemType": "eOoKKZVU"}, {"count": 73, "itemId": "c7GX3UJW", "itemSku": "QAUFO9m3", "itemType": "ZJfXHHrD"}], "name": "kawkaVKt", "odds": 0.17843678296979726, "type": "REWARD_GROUP", "weight": 44}, {"lootBoxItems": [{"count": 13, "itemId": "ic4NMxhv", "itemSku": "CcVeSJVm", "itemType": "BnZKvg1z"}, {"count": 72, "itemId": "BgRGBoPD", "itemSku": "jUWxD3vg", "itemType": "t4A5JrWi"}, {"count": 69, "itemId": "GyHS2onb", "itemSku": "Y9cav14G", "itemType": "r3BtHOC6"}], "name": "LJjUTrEA", "odds": 0.9372292998375737, "type": "PROBABILITY_GROUP", "weight": 73}], "rollFunction": "DEFAULT"}, "maxCount": 98, "maxCountPerUser": 51, "name": "3UFRVfrT", "namespace": "MJYQFLF3", "optionBoxConfig": {"boxItems": [{"count": 38, "itemId": "XcmdlE9F", "itemSku": "gEdT5mLJ", "itemType": "WaHfHL0K"}, {"count": 87, "itemId": "AWtK7OIS", "itemSku": "e168oIvE", "itemType": "as5v8uVP"}, {"count": 57, "itemId": "vk6mBbgj", "itemSku": "UTBZ6TCd", "itemType": "ceAoUJ47"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 8, "comparison": "isGreaterThanOrEqual", "name": "A7gziQBp", "predicateType": "SeasonTierPredicate", "value": "42Qb8EKR", "values": ["jZhlObpl", "PBjN7fru", "b7JmvJeP"]}, {"anyOf": 56, "comparison": "isGreaterThan", "name": "njfgyd6B", "predicateType": "SeasonTierPredicate", "value": "nSCwql2d", "values": ["G5HVNEUI", "RBdA1VaE", "ULJdW8ZD"]}, {"anyOf": 81, "comparison": "isLessThanOrEqual", "name": "U6fy0Y7b", "predicateType": "SeasonPassPredicate", "value": "Qo9u99m1", "values": ["arUwMXar", "1VjXxD48", "LOrKUUm7"]}]}, {"operator": "and", "predicates": [{"anyOf": 31, "comparison": "isGreaterThan", "name": "mYzn4nMJ", "predicateType": "SeasonTierPredicate", "value": "3gpTsGNE", "values": ["vICFa3pp", "dPy2bz1t", "G6FRPOxL"]}, {"anyOf": 91, "comparison": "isGreaterThan", "name": "c6qGBra1", "predicateType": "EntitlementPredicate", "value": "jktgRoBC", "values": ["MrADOdGQ", "lCIa75AZ", "DG2D1pbz"]}, {"anyOf": 94, "comparison": "isNot", "name": "t0ysWObZ", "predicateType": "SeasonTierPredicate", "value": "sBNyEMxk", "values": ["Rhltiluf", "PIRu6kLb", "xnsJd6u6"]}]}, {"operator": "and", "predicates": [{"anyOf": 18, "comparison": "includes", "name": "1mhhsHfc", "predicateType": "SeasonTierPredicate", "value": "OnuzizJq", "values": ["TS3LGD0D", "vXY733JV", "1EsC364T"]}, {"anyOf": 51, "comparison": "isGreaterThan", "name": "4myWEo0p", "predicateType": "EntitlementPredicate", "value": "UcTQOPM2", "values": ["hdgnBaZS", "y2F5ZZsY", "mShNVt84"]}, {"anyOf": 37, "comparison": "isGreaterThan", "name": "I8trS6oN", "predicateType": "SeasonPassPredicate", "value": "M7OpJbDC", "values": ["ydZmbvY1", "LXw3X59r", "W63TLBa6"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 27, "fixedTrialCycles": 17, "graceDays": 62}, "region": "HTm64KDu", "regionData": [{"currencyCode": "WBqZlqN0", "currencyNamespace": "zbiHnwht", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1977-11-14T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-11-06T00:00:00Z", "discountedPrice": 78, "expireAt": "1984-08-26T00:00:00Z", "price": 81, "purchaseAt": "1999-07-29T00:00:00Z", "trialPrice": 60}, {"currencyCode": "UYgWWnlK", "currencyNamespace": "cPfGFOnB", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1989-11-30T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1976-05-27T00:00:00Z", "discountedPrice": 80, "expireAt": "1983-03-05T00:00:00Z", "price": 83, "purchaseAt": "1997-03-28T00:00:00Z", "trialPrice": 71}, {"currencyCode": "IKbRXxKT", "currencyNamespace": "d1dNiRWJ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1994-04-25T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-03-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1972-05-06T00:00:00Z", "price": 84, "purchaseAt": "1978-10-27T00:00:00Z", "trialPrice": 37}], "seasonType": "TIER", "sku": "17QPxZQG", "stackable": false, "status": "ACTIVE", "tags": ["M0ZaIOaw", "eVTk5g0Y", "ncRumbBf"], "targetCurrencyCode": "1NpsxyJd", "targetItemId": "eL9Uxjos", "targetNamespace": "KMDFyVx1", "thumbnailUrl": "3TCCWPXn", "title": "eHHRScMQ", "updatedAt": "1997-11-06T00:00:00Z", "useCount": 48}, "namespace": "6R9fGk9B", "order": {"currency": {"currencyCode": "DWDK59nF", "currencySymbol": "NYsEYU4s", "currencyType": "VIRTUAL", "decimals": 87, "namespace": "NJvIt2bK"}, "ext": {"F3ERd6Si": {}, "q3N1J9Oc": {}, "pjG8iqxA": {}}, "free": true}, "source": "PROMOTION"}, "script": "SZ8DDzpY", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'hDK8Eham' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'i8kUtTA2' \
    --body '{"grantDays": "toiWkECz"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'C2Kf8COQ' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ygDVGxw4' \
    --body '{"grantDays": "POfvs1RR"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "mC650hZZ", "dryRun": true, "fulfillmentUrl": "ttniiNdr", "itemType": "OPTIONBOX", "purchaseConditionUrl": "2tWahSqk"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'LASVd9Tq' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'tY9gggyS' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'GmUU6jDB' \
    --body '{"clazz": "MN5NTV83", "dryRun": false, "fulfillmentUrl": "TYAvy0IU", "purchaseConditionUrl": "uJAZj0gr"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'TYzkN3lk' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --name '7hEisJST' \
    --offset '77' \
    --tag 'GahXSDzD' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GcU9hAbY", "items": [{"extraSubscriptionDays": 60, "itemId": "40IgvjMp", "itemName": "i9F2xTID", "quantity": 48}, {"extraSubscriptionDays": 24, "itemId": "kzkPsjCZ", "itemName": "hN8SJnj9", "quantity": 50}, {"extraSubscriptionDays": 32, "itemId": "9N17gcAp", "itemName": "wtVQkXUr", "quantity": 52}], "maxRedeemCountPerCampaignPerUser": 72, "maxRedeemCountPerCode": 34, "maxRedeemCountPerCodePerUser": 84, "maxSaleCount": 94, "name": "bq7vhvYm", "redeemEnd": "1984-12-11T00:00:00Z", "redeemStart": "1998-11-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["aBICIOxv", "Boemjyks", "bcKj7Ggt"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'TMgRXQaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'iEdEgLhH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dXbYd2HV", "items": [{"extraSubscriptionDays": 8, "itemId": "czXct48D", "itemName": "bJAUQGFu", "quantity": 88}, {"extraSubscriptionDays": 18, "itemId": "czeCMv9H", "itemName": "pnmNGSK8", "quantity": 40}, {"extraSubscriptionDays": 43, "itemId": "B8eNkbO7", "itemName": "AruuJBKb", "quantity": 11}], "maxRedeemCountPerCampaignPerUser": 14, "maxRedeemCountPerCode": 20, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 57, "name": "PDzCJBca", "redeemEnd": "1976-07-04T00:00:00Z", "redeemStart": "1981-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Dv0C2sAp", "UPZBcoAi", "B2jqoWGY"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '4CnnoMr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'Y6llIk3V' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Xx93gmjm' \
    --body '{"categoryPath": "8QDRcr9L", "localizationDisplayNames": {"7cyQWQ9v": "jUoNaiaE", "z4HO0ZLj": "ntPkigQ7", "BXLCCXbm": "yK7GMj67"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'op48HJ19' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '2Dwmb4xm' \
    --namespace $AB_NAMESPACE \
    --storeId '7weWD8gd' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'uMmpESDO' \
    --namespace $AB_NAMESPACE \
    --storeId 'xyIGXiJq' \
    --body '{"localizationDisplayNames": {"TlGgzDDL": "LwC0TbRE", "DHCLroGC": "MH2yj4Yr", "dkhkSwy0": "ZNUSel9K"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Tg3rjnFD' \
    --namespace $AB_NAMESPACE \
    --storeId '0HfwIky4' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'NlSZZTf0' \
    --namespace $AB_NAMESPACE \
    --storeId 'yXMktwa1' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'RIGpRISj' \
    --namespace $AB_NAMESPACE \
    --storeId '57jq82kB' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'I0HSyzZg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '56' \
    --code '654w5iwF' \
    --limit '42' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'ldkQrcU5' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 43}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'SKSy8EqM' \
    --namespace $AB_NAMESPACE \
    --batchNo '5' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'dxF5j0fN' \
    --namespace $AB_NAMESPACE \
    --batchNo '11' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'qCpmjW8A' \
    --namespace $AB_NAMESPACE \
    --batchNo '27' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'FnH5gJza' \
    --namespace $AB_NAMESPACE \
    --code 'wILBXF7M' \
    --limit '99' \
    --offset '90' \
    --userId 'xM60gnFP' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'oRKqRwy8' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'vNTZdS27' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'TvnYqHPu' \
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
    --body '{"grpcServerAddress": "o4CDZiG0"}' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "xi2V6wMp", "currencySymbol": "YxoHdVlg", "currencyType": "REAL", "decimals": 36, "localizationDescriptions": {"XEhxVRqI": "nSgjgiGM", "VAVnMHAQ": "qnPaUx1K", "PYdqN4bU": "1T3FL9vB"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Sq5HoDfR' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"v31TnsHA": "BlJjKKIt", "PfYjK5AY": "igdlkXug", "DFZltRga": "ZELjcTBU"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'xeMLFYWo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'cLZk5thz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'A0HdSQ6q' \
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
    --body '{"data": [{"id": "ImoLVJzR", "rewards": [{"currency": {"currencyCode": "bVn5SCRy", "namespace": "sUo1xF3m"}, "item": {"itemId": "L5nUz9xX", "itemSku": "QZYOTvEk", "itemType": "8z212L19"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "yuNUYvZb", "namespace": "bu1Lc6gF"}, "item": {"itemId": "ISpTRDyy", "itemSku": "GK3WY8P7", "itemType": "pHaJPQ9K"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "gI8TFvjd", "namespace": "2KlnXPPD"}, "item": {"itemId": "1mfSI4hS", "itemSku": "dowVJpY2", "itemType": "aAIPofiU"}, "quantity": 35, "type": "CURRENCY"}]}, {"id": "4D3gVJLj", "rewards": [{"currency": {"currencyCode": "xFmcfsUZ", "namespace": "f1280t8C"}, "item": {"itemId": "P8p9Jw4r", "itemSku": "yvYvoIyT", "itemType": "rJAoCHqg"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "O6GNArIv", "namespace": "fZpA9MFy"}, "item": {"itemId": "hodw5A0y", "itemSku": "TCIHFmWB", "itemType": "yRbYxA95"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "bL5N8D5V", "namespace": "Wtk983wQ"}, "item": {"itemId": "OvlhUR33", "itemSku": "ZhqyYj5P", "itemType": "zwHlBAKn"}, "quantity": 44, "type": "ITEM"}]}, {"id": "aYNTqunT", "rewards": [{"currency": {"currencyCode": "Ddsfrhmd", "namespace": "lU6qnF0N"}, "item": {"itemId": "w5JAz5ck", "itemSku": "3Zj41JEh", "itemType": "BiPs0TZQ"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "uywKeTbn", "namespace": "V3YkspiQ"}, "item": {"itemId": "6jmzP4Jq", "itemSku": "T5mctMP1", "itemType": "WaYU2nBl"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "Ef1lu1Le", "namespace": "mpfsOYCY"}, "item": {"itemId": "YPIqJsO0", "itemSku": "SWECkp4v", "itemType": "aYgVNGf8"}, "quantity": 11, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"3XOL9g9d": "dx2DsjVf", "ZCwGuA92": "YX9Aqds1", "eaDwc6OF": "grd3Gd4I"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"q3eaIzds": "N4GhNkP1", "qpMjrbA8": "049pcBbh", "Q95WXvYs": "YnN0aXWO"}}, {"platform": "XBOX", "platformDlcIdMap": {"e70DoR2D": "N8YpN40T", "RD0Vtojp": "d6cyKQcc", "qyBR202R": "MiMxbXB6"}}]}' \
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
    --entitlementClazz 'CODE' \
    --entitlementName 'lXKOtfPu' \
    --itemId '["XEU8WrEU", "HXXfPP6m", "tPdkKjg3"]' \
    --limit '16' \
    --offset '12' \
    --userId 'pIg6G3Jq' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'EEhp2MUx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '29' \
    --status 'FAIL' \
    --userId 'j0ZLwrmZ' \
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
    --body '{"bundleId": "VLC6DO9O", "password": "PEFbackb"}' \
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
    --body '{"sandboxId": "c4RjTJv4"}' \
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
    --body '{"applicationName": "GgTQTf3Q", "serviceAccountId": "17ZWEIJ9"}' \
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
    --body '{"data": [{"itemIdentity": "j0TaWjTB", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"YWEgvW2m": "EqRLw4vX", "4BWmJQ37": "5DltmYbi", "OPGWDjRD": "Y9gD3ztO"}}, {"itemIdentity": "XoPIlQDI", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"FnU1Hiun": "JPHlpg6C", "M3Z8w2oR": "IklvO8Nx", "tpk7i8Z9": "uCvhUCFW"}}, {"itemIdentity": "MiNTHjns", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"hRQ50Fk5": "SehCIMdU", "GGvm6OSk": "Del0XSQP", "5FSTrjzQ": "YQa6mNQ4"}}]}' \
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
    --body '{"environment": "Zm2IIEcg"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "GTa6ZJ0v", "publisherAuthenticationKey": "zAlUOTbl"}' \
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
    --body '{"clientId": "V8MaXvJC", "clientSecret": "yHIr3EID", "organizationId": "UrwXcCL1"}' \
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
    --body '{"relyingPartyCert": "6hHG025Q"}' \
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
    --password 'X9wngGvM' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'jTe1Ucy5' \
    --itemId 'FAUMX9IQ' \
    --itemType 'LOOTBOX' \
    --endTime 'DYytVXPg' \
    --startTime 'RnhdGDtP' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'LunYohma' \
    --itemId 'UHlIH9pZ' \
    --itemType 'LOOTBOX' \
    --endTime 'szp5rpgU' \
    --startTime 'D5cTLgmD' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Olht4Bki' \
    --body '{"categoryPath": "Ra8KM3z6", "targetItemId": "Is4d3seD", "targetNamespace": "yLSrUV8S"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'n9zZiyy8' \
    --body '{"appId": "FGLQ6DSQ", "appType": "DLC", "baseAppId": "H7h1AAVB", "boothName": "XBuREVVY", "categoryPath": "n8MtXVLc", "clazz": "u2sBQBna", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"2E3MeVR7": {}, "eRPUQtgJ": {}, "YLesOVZ3": {}}, "features": ["ujSAAPT9", "jIEKAk7m", "3HvApKsJ"], "images": [{"as": "oNpYG4IA", "caption": "BYWltZ3f", "height": 51, "imageUrl": "Wp3S4XYR", "smallImageUrl": "e9WiskPV", "width": 39}, {"as": "ORuHZ7Ii", "caption": "fDM1Yw5f", "height": 43, "imageUrl": "LEB53oBW", "smallImageUrl": "rM6GjcoS", "width": 30}, {"as": "2yONpsim", "caption": "j0C0zYKP", "height": 79, "imageUrl": "1tvP2zAn", "smallImageUrl": "zZlimbKZ", "width": 65}], "itemIds": ["Kb5E2DJV", "B24sW7Vl", "cZHNWnaM"], "itemQty": {"7GBbfTY3": 94, "ucNfMMys": 95, "es77Ao5H": 58}, "itemType": "MEDIA", "listable": true, "localizations": {"nb1Dvs1v": {"description": "t5KqnMDY", "localExt": {"FAp5mvDE": {}, "iSbWlAIJ": {}, "Lx4bWz0x": {}}, "longDescription": "hGHbWrDP", "title": "utXD6NyK"}, "l1g6RSo1": {"description": "TMQukeqI", "localExt": {"JIeNTo1y": {}, "CoBddLac": {}, "o6RNR75w": {}}, "longDescription": "Z2y1qnwM", "title": "ylAyXmGy"}, "DbCSbbjK": {"description": "Rtulbxcq", "localExt": {"NnJL2Ts0": {}, "LlfIc0kf": {}, "MBidl4V3": {}}, "longDescription": "qPN4PINq", "title": "29biZMmI"}}, "lootBoxConfig": {"rewardCount": 1, "rewards": [{"lootBoxItems": [{"count": 30, "itemId": "rf3W1cbj", "itemSku": "AC6EICMO", "itemType": "XGrAtn4M"}, {"count": 50, "itemId": "pHSI22CR", "itemSku": "kaszmAPo", "itemType": "pdDcAExg"}, {"count": 8, "itemId": "aHW0VKZy", "itemSku": "Qy7YiOfa", "itemType": "woOz95nY"}], "name": "F6rroz4Z", "odds": 0.3061842875162193, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 73, "itemId": "uIWunXim", "itemSku": "bfXWsLb5", "itemType": "WHg9Oe7W"}, {"count": 65, "itemId": "IqwYH0JL", "itemSku": "MqKoLmGd", "itemType": "8Pju1SLv"}, {"count": 84, "itemId": "r1jlZV7a", "itemSku": "6bEvzQNZ", "itemType": "W0AYJHib"}], "name": "E06yzAt8", "odds": 0.7552059667007671, "type": "REWARD_GROUP", "weight": 30}, {"lootBoxItems": [{"count": 98, "itemId": "ihKWzRg3", "itemSku": "0dmG7WPM", "itemType": "OgFP2OQN"}, {"count": 20, "itemId": "1pEybg3g", "itemSku": "890zXuWX", "itemType": "72dBkEsH"}, {"count": 51, "itemId": "y7uqFoTe", "itemSku": "1kc5PIfD", "itemType": "HnvrUXBa"}], "name": "EnqaMrce", "odds": 0.4616438509749248, "type": "REWARD", "weight": 94}], "rollFunction": "DEFAULT"}, "maxCount": 95, "maxCountPerUser": 0, "name": "UuGJ9P3O", "optionBoxConfig": {"boxItems": [{"count": 79, "itemId": "uav2p8dI", "itemSku": "9iVToZNy", "itemType": "jxsneajs"}, {"count": 4, "itemId": "JrJPbUki", "itemSku": "2EbdbWLZ", "itemType": "Vw30Uae8"}, {"count": 72, "itemId": "f6ZkBnAb", "itemSku": "aDLbJjMn", "itemType": "L129Yeyz"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 35, "fixedTrialCycles": 65, "graceDays": 85}, "regionData": {"xSNHOoCV": [{"currencyCode": "WIYgK3mS", "currencyNamespace": "9RlgmQyk", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1972-05-03T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1972-09-21T00:00:00Z", "discountedPrice": 43, "expireAt": "1994-07-31T00:00:00Z", "price": 59, "purchaseAt": "1984-10-29T00:00:00Z", "trialPrice": 72}, {"currencyCode": "sHGUDcho", "currencyNamespace": "tQ4WiTNx", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1983-12-21T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1979-02-13T00:00:00Z", "discountedPrice": 70, "expireAt": "1979-12-31T00:00:00Z", "price": 28, "purchaseAt": "1980-09-10T00:00:00Z", "trialPrice": 84}, {"currencyCode": "U6eHcjai", "currencyNamespace": "Ycopxk3Z", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1998-09-11T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1971-07-26T00:00:00Z", "discountedPrice": 62, "expireAt": "1998-10-07T00:00:00Z", "price": 63, "purchaseAt": "1998-04-06T00:00:00Z", "trialPrice": 10}], "S8XD78Qe": [{"currencyCode": "8HIY8Nen", "currencyNamespace": "GfM0kQfG", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1971-08-15T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-02-19T00:00:00Z", "discountedPrice": 7, "expireAt": "1983-11-08T00:00:00Z", "price": 38, "purchaseAt": "1984-12-06T00:00:00Z", "trialPrice": 34}, {"currencyCode": "qhi1opB8", "currencyNamespace": "TRuOpqZA", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1998-10-31T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-09-10T00:00:00Z", "discountedPrice": 54, "expireAt": "1985-08-09T00:00:00Z", "price": 55, "purchaseAt": "1992-05-22T00:00:00Z", "trialPrice": 59}, {"currencyCode": "cfBZnrOn", "currencyNamespace": "s9C2rgFo", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1994-03-14T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1983-06-11T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-01-06T00:00:00Z", "price": 59, "purchaseAt": "1996-06-23T00:00:00Z", "trialPrice": 46}], "11Xbit7K": [{"currencyCode": "wYtP3ImO", "currencyNamespace": "qEfv7qXq", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1995-01-13T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1988-07-14T00:00:00Z", "discountedPrice": 19, "expireAt": "1999-09-09T00:00:00Z", "price": 87, "purchaseAt": "1992-08-09T00:00:00Z", "trialPrice": 15}, {"currencyCode": "iSVRZuKC", "currencyNamespace": "spbtyGNx", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1984-12-26T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1982-03-25T00:00:00Z", "discountedPrice": 37, "expireAt": "1972-02-23T00:00:00Z", "price": 65, "purchaseAt": "1984-04-05T00:00:00Z", "trialPrice": 50}, {"currencyCode": "eQvyNNkx", "currencyNamespace": "ovtSWSfQ", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1993-09-29T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1974-06-20T00:00:00Z", "discountedPrice": 76, "expireAt": "1978-03-31T00:00:00Z", "price": 24, "purchaseAt": "1980-02-21T00:00:00Z", "trialPrice": 33}]}, "seasonType": "TIER", "sku": "ZzRuygid", "stackable": true, "status": "INACTIVE", "tags": ["IlXo2MGM", "3cjieVul", "Aiec0MRD"], "targetCurrencyCode": "JVyWLCQG", "targetNamespace": "wnKtntbC", "thumbnailUrl": "cwjWYUZ5", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XPXNKdxH' \
    --appId 'Q56doiqN' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'PCbqVV01' \
    --baseAppId 'vWXgZmf8' \
    --categoryPath 'H559X81q' \
    --features 'ARK4wp6h' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --limit '86' \
    --offset '70' \
    --region 'MulItKW5' \
    --sortBy '["name:desc", "updatedAt", "displayOrder:asc"]' \
    --storeId 'RBON5noq' \
    --tags 'GebvLjyx' \
    --targetNamespace 'JzDroXTZ' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["roZZtjc7", "obDuVJYG", "ohz6xlCd"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zCsHRDKF' \
    --sku 'iMDEeYsQ' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '1i0LIf0A' \
    --populateBundle 'false' \
    --region 'xR5WsQwm' \
    --storeId 'Xk21YbhG' \
    --sku 'FSOcKuor' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'S11zgfSk' \
    --sku '6CWvHWK5' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["pVTntBbU", "jN2usZwg", "uyAm9YTh"]' \
    --storeId 'kaI4S6ip' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'QH3MG4GA' \
    --region '423fYomL' \
    --storeId 'NJ5P0FYV' \
    --itemIds '7kF4sumQ' \
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
    --userId 'LJm4wVqt' \
    --body '{"itemIds": ["EZcGhaDX", "0hjGrl4k", "Baw51hkT"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SEASON' \
    --limit '54' \
    --offset '49' \
    --sortBy 'Pxsfwm6V' \
    --storeId 'qreQKqPG' \
    --keyword 'OKx6Dddw' \
    --language 'JXCtvIGO' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '13' \
    --offset '62' \
    --sortBy '["createdAt:asc", "createdAt", "displayOrder:asc"]' \
    --storeId 'NJXuM1qU' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'rdOpI7eZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'TtTjwTi9' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'QCTWx9Nt' \
    --namespace $AB_NAMESPACE \
    --storeId 'KUnYb8Xu' \
    --body '{"appId": "pHqDjdnS", "appType": "SOFTWARE", "baseAppId": "GYPCsgBq", "boothName": "Fnz7VSkg", "categoryPath": "3PaJsywx", "clazz": "vqxdm5qn", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"rb0YzCs9": {}, "UAwkglwD": {}, "zfG7SC0K": {}}, "features": ["vQ8s4UAP", "T2Ult2EQ", "QFcDRqMU"], "images": [{"as": "tZu4pg2m", "caption": "B8kTaKbk", "height": 56, "imageUrl": "HRLPbPXN", "smallImageUrl": "BACwXVXX", "width": 61}, {"as": "yTxNHIyq", "caption": "Zw9Q7OIj", "height": 27, "imageUrl": "agMfbHJo", "smallImageUrl": "mPk71lKJ", "width": 40}, {"as": "ALk5LQVx", "caption": "oSFaoPKJ", "height": 81, "imageUrl": "1QC9w8ke", "smallImageUrl": "XdDNdtJZ", "width": 100}], "itemIds": ["okjzO8Ni", "WKuQ4f5H", "BavUgGZ2"], "itemQty": {"qYEqdGUW": 36, "xXYs8VKm": 73, "uXnAjQGs": 68}, "itemType": "SEASON", "listable": true, "localizations": {"sKSRavlN": {"description": "HUP2lWH8", "localExt": {"4PRAJih5": {}, "9jCYVdr8": {}, "B85HhTPF": {}}, "longDescription": "xiVUnzuk", "title": "x2jFd6NA"}, "wx1eO4Fq": {"description": "Bb5QKCcT", "localExt": {"Fl2Cqvxt": {}, "JTkmRXpa": {}, "1oenILOp": {}}, "longDescription": "NEKSy1Oy", "title": "3EHRtFi8"}, "kwbj8So5": {"description": "mFokNavW", "localExt": {"nIuq9JKc": {}, "sduictS4": {}, "lawDSnf4": {}}, "longDescription": "7svGx39s", "title": "OvgoYcek"}}, "lootBoxConfig": {"rewardCount": 14, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "EmjCRZlJ", "itemSku": "KjiSzOhl", "itemType": "52ZXqKxO"}, {"count": 68, "itemId": "FFW4djkT", "itemSku": "C6gLW2P2", "itemType": "madEzbjr"}, {"count": 59, "itemId": "xANrpGK7", "itemSku": "EG4vUHcq", "itemType": "W4rLOzIQ"}], "name": "pm0ZIwfI", "odds": 0.5293526435513823, "type": "REWARD", "weight": 7}, {"lootBoxItems": [{"count": 43, "itemId": "PFJ0Zalm", "itemSku": "kr3gpygi", "itemType": "FxG76nxO"}, {"count": 95, "itemId": "l7XFLEce", "itemSku": "Bv3TqIJY", "itemType": "zgJqNJxP"}, {"count": 10, "itemId": "BfV58oIT", "itemSku": "sJTDygA3", "itemType": "a3m1fauw"}], "name": "uvnkdnV1", "odds": 0.3666230151739447, "type": "REWARD_GROUP", "weight": 31}, {"lootBoxItems": [{"count": 54, "itemId": "gKliN5B2", "itemSku": "BR0kdoT1", "itemType": "2GHYKeo1"}, {"count": 47, "itemId": "J2NLjHMn", "itemSku": "9sQBWP3B", "itemType": "kicHYdjL"}, {"count": 75, "itemId": "kHesWLCZ", "itemSku": "7aCuBS5b", "itemType": "8s9OBUg8"}], "name": "S0dpfPZT", "odds": 0.06385320750445633, "type": "PROBABILITY_GROUP", "weight": 22}], "rollFunction": "CUSTOM"}, "maxCount": 12, "maxCountPerUser": 26, "name": "1NLz5ySh", "optionBoxConfig": {"boxItems": [{"count": 61, "itemId": "F2IyOnvu", "itemSku": "mjrmcJN4", "itemType": "2Bx00C2z"}, {"count": 49, "itemId": "DP1twpSb", "itemSku": "Qoo6O3Wo", "itemType": "KsYOZoz0"}, {"count": 73, "itemId": "r7cETCYn", "itemSku": "M370kJ1M", "itemType": "6wMQc04N"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 28, "fixedTrialCycles": 70, "graceDays": 45}, "regionData": {"DF0PEpbN": [{"currencyCode": "BlFDZcN4", "currencyNamespace": "eaedocQA", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1974-09-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1980-11-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1997-10-30T00:00:00Z", "price": 22, "purchaseAt": "1991-07-28T00:00:00Z", "trialPrice": 43}, {"currencyCode": "RcIKJY97", "currencyNamespace": "ZMMiOv2N", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1981-04-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1997-05-06T00:00:00Z", "discountedPrice": 89, "expireAt": "1974-02-16T00:00:00Z", "price": 10, "purchaseAt": "1981-12-31T00:00:00Z", "trialPrice": 17}, {"currencyCode": "7myP3lfj", "currencyNamespace": "id14O3ij", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1997-12-20T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-03-08T00:00:00Z", "discountedPrice": 14, "expireAt": "1982-04-17T00:00:00Z", "price": 35, "purchaseAt": "1982-10-29T00:00:00Z", "trialPrice": 59}], "MVAhZFaM": [{"currencyCode": "WKfPGIn6", "currencyNamespace": "447SDOC0", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1978-05-20T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1982-06-30T00:00:00Z", "discountedPrice": 46, "expireAt": "1987-11-15T00:00:00Z", "price": 88, "purchaseAt": "1981-05-16T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6o7LlYtA", "currencyNamespace": "pM9j3G3k", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1991-10-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1989-02-11T00:00:00Z", "discountedPrice": 61, "expireAt": "1985-05-24T00:00:00Z", "price": 10, "purchaseAt": "1977-12-01T00:00:00Z", "trialPrice": 11}, {"currencyCode": "PgbJucLH", "currencyNamespace": "ecvigdI5", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1999-06-18T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1995-03-27T00:00:00Z", "discountedPrice": 78, "expireAt": "1985-11-17T00:00:00Z", "price": 59, "purchaseAt": "1994-03-10T00:00:00Z", "trialPrice": 20}], "dfhdylOb": [{"currencyCode": "7dc0EFaF", "currencyNamespace": "hqiCJZfd", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1985-03-28T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-08-14T00:00:00Z", "discountedPrice": 89, "expireAt": "1975-12-29T00:00:00Z", "price": 89, "purchaseAt": "1994-11-16T00:00:00Z", "trialPrice": 10}, {"currencyCode": "ITEtvDRo", "currencyNamespace": "N98ttLDf", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1984-04-05T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1976-02-06T00:00:00Z", "discountedPrice": 42, "expireAt": "1987-04-13T00:00:00Z", "price": 16, "purchaseAt": "1995-04-27T00:00:00Z", "trialPrice": 99}, {"currencyCode": "K0lZRDbG", "currencyNamespace": "djDkyLlV", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1987-05-10T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1997-08-18T00:00:00Z", "discountedPrice": 15, "expireAt": "1985-04-28T00:00:00Z", "price": 7, "purchaseAt": "1994-12-14T00:00:00Z", "trialPrice": 82}]}, "seasonType": "PASS", "sku": "rne4wQzb", "stackable": false, "status": "ACTIVE", "tags": ["enMbUySi", "0mp4l0Cc", "bj2L3f9x"], "targetCurrencyCode": "gGFVG5OS", "targetNamespace": "G3fXEjqV", "thumbnailUrl": "tyXeSVvE", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '2v74zCiv' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '1sn4mnWF' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'wSw2PI3C' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 42, "orderNo": "swhZWw9A"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'C93TYhem' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HN8B7BUL' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'EVGekmNd' \
    --namespace $AB_NAMESPACE \
    --storeId 'yx6t25gB' \
    --body '{"carousel": [{"alt": "plG1uMb8", "previewUrl": "Srz82yA6", "thumbnailUrl": "03mmjkm3", "type": "image", "url": "86rpsPpf", "videoSource": "generic"}, {"alt": "RzMnT9ex", "previewUrl": "OU3NCIrS", "thumbnailUrl": "Fw0guNt5", "type": "image", "url": "AJ8ZjMxS", "videoSource": "vimeo"}, {"alt": "6o3fX1Dz", "previewUrl": "f13fKnZu", "thumbnailUrl": "YqCVOerk", "type": "image", "url": "axmqq0d1", "videoSource": "generic"}], "developer": "HqqMMWzZ", "forumUrl": "0Cnjav3Y", "genres": ["Sports", "Indie", "Strategy"], "localizations": {"NpYZEhsv": {"announcement": "20tVkJtj", "slogan": "gmd73Wi7"}, "rj12h3Xq": {"announcement": "bvS2OtRs", "slogan": "t7GUTTV0"}, "H1TcVZFC": {"announcement": "TN8h9gWr", "slogan": "qUWjT8hb"}}, "platformRequirements": {"sBRqyXzs": [{"additionals": "c2m1ek1Y", "directXVersion": "2XC4glXp", "diskSpace": "H2mRyfLF", "graphics": "W4X4iQJv", "label": "5EFbqPn6", "osVersion": "ciTfBhNk", "processor": "f2lsev87", "ram": "Yq25H97D", "soundCard": "mDvqNOUl"}, {"additionals": "bTiAp4cy", "directXVersion": "E5s0lK0W", "diskSpace": "RqP3BBfE", "graphics": "s3JysBHd", "label": "jSnjbTgi", "osVersion": "Rhb8oaqv", "processor": "BhjQHr7F", "ram": "k7EKnoFE", "soundCard": "VXaBaCIV"}, {"additionals": "BUSG9RrB", "directXVersion": "OX8iiEh8", "diskSpace": "dMmVRmUV", "graphics": "m5Cr7TP4", "label": "Oui2pAym", "osVersion": "c3Qm6wkd", "processor": "AbfcHh1u", "ram": "hliihgu5", "soundCard": "cCusUJrx"}], "wdaluphe": [{"additionals": "sgD2u09B", "directXVersion": "G4YSlZHj", "diskSpace": "NclnDZwf", "graphics": "elFzKeXF", "label": "ln8FgTD0", "osVersion": "yYkjUbNv", "processor": "CpIO2KEU", "ram": "o33GinpL", "soundCard": "IdlOQX3j"}, {"additionals": "X157lZhP", "directXVersion": "WKPYuuGE", "diskSpace": "cSdykSWD", "graphics": "FLcLhpfu", "label": "bDr788Le", "osVersion": "i56CkajS", "processor": "70EwuDhn", "ram": "zlcvSBu6", "soundCard": "gOWPaw2F"}, {"additionals": "EXxDUBYw", "directXVersion": "5jMS89hZ", "diskSpace": "9ncWr6UW", "graphics": "JVtsxRib", "label": "NXreGY8T", "osVersion": "azvwbNjm", "processor": "QnAz7tjg", "ram": "wePzZTzd", "soundCard": "6dYmk39O"}], "seCy205R": [{"additionals": "8VypOCoW", "directXVersion": "93byucBb", "diskSpace": "tSiYRHSv", "graphics": "Y4euSJhA", "label": "rnZHKJ24", "osVersion": "90LKhgI3", "processor": "pBF0ZDKp", "ram": "pcCS575R", "soundCard": "6a525fVo"}, {"additionals": "qbjhP820", "directXVersion": "x3JC7cel", "diskSpace": "gMh0F685", "graphics": "ZwigpBlF", "label": "D44vW8a0", "osVersion": "aKaQwqkk", "processor": "NFUsiHez", "ram": "Mj6DRVGs", "soundCard": "HKrsxrDi"}, {"additionals": "1SXZbbNj", "directXVersion": "nioFeeRC", "diskSpace": "RR6rrbWc", "graphics": "bFFGvzIy", "label": "O9dRQix9", "osVersion": "QOnQe0pg", "processor": "osmjs0k2", "ram": "b1qLDoUN", "soundCard": "BEjIPRr9"}]}, "platforms": ["MacOS", "Windows", "Android"], "players": ["LocalCoop", "Multi", "LocalCoop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "yygJt1zQ", "releaseDate": "1981-05-07T00:00:00Z", "websiteUrl": "tcS0O017"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'jkiIOIPZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ua28IEQO' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'XYdbK7zp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Czgpg1MJ' \
    --namespace $AB_NAMESPACE \
    --storeId '1m9Bmoek' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '60nfP7sW' \
    --itemId 'qddj3l8K' \
    --namespace $AB_NAMESPACE \
    --storeId 'iODdMUTH' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'N9P1I7eK' \
    --itemId 'ciMVwGLY' \
    --namespace $AB_NAMESPACE \
    --storeId 'bQTtXCdD' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'dwvwylKr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Vc8LY9lg' \
    --populateBundle 'false' \
    --region 'Ekgxm209' \
    --storeId '2i23LfIh' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sWMQdCs3' \
    --namespace $AB_NAMESPACE \
    --storeId 'SzZIzFAE' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isLessThan", "name": "s5bGIOTs", "predicateType": "SeasonTierPredicate", "value": "mOSvOZ27", "values": ["OHhc9ub9", "XCKePvis", "ON4JWADJ"]}, {"anyOf": 98, "comparison": "isLessThanOrEqual", "name": "ozNMxMFx", "predicateType": "SeasonTierPredicate", "value": "d883iPti", "values": ["KpbWolDA", "eDsYNx0z", "D44OSRDY"]}, {"anyOf": 29, "comparison": "isGreaterThan", "name": "OcHswTHl", "predicateType": "SeasonTierPredicate", "value": "Nl8NDvLu", "values": ["i878rIh8", "RsBLlaZg", "A74gdJ1j"]}]}, {"operator": "and", "predicates": [{"anyOf": 8, "comparison": "isLessThanOrEqual", "name": "EPSqcN0H", "predicateType": "EntitlementPredicate", "value": "SjBzYt6b", "values": ["anycN7uG", "IuewXvBV", "vZ9p53qC"]}, {"anyOf": 19, "comparison": "isNot", "name": "RP66ScN5", "predicateType": "SeasonPassPredicate", "value": "rdbyjUC9", "values": ["8zst3vZc", "z5IaKvkU", "Dmn5ebZd"]}, {"anyOf": 38, "comparison": "excludes", "name": "DIQHFzVF", "predicateType": "EntitlementPredicate", "value": "KAIQUt4U", "values": ["KBWtgISQ", "1COHS3do", "2MAZD0XL"]}]}, {"operator": "or", "predicates": [{"anyOf": 56, "comparison": "isNot", "name": "ozKSdVTl", "predicateType": "SeasonTierPredicate", "value": "sw7oPmEX", "values": ["5WvVKRX9", "TPa99x3L", "jUoyCiaw"]}, {"anyOf": 57, "comparison": "isGreaterThan", "name": "wvWn9tpP", "predicateType": "SeasonPassPredicate", "value": "TSLX3hq0", "values": ["NIwjz72w", "w3DxWoKM", "xfcwysso"]}, {"anyOf": 60, "comparison": "isGreaterThan", "name": "nNTM0RkY", "predicateType": "EntitlementPredicate", "value": "sd5obUN3", "values": ["caZkipem", "HQp23MFx", "47fitDER"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ri909j5E' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "CbHCHrsx"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --name 'tfXEUoEp' \
    --offset '49' \
    --tag 'HAjx451W' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MxKhIrG2", "name": "RSc8Ui3x", "status": "ACTIVE", "tags": ["oVFUO8Oc", "OARwoPYO", "a2RWb1rq"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'rJRxdbFH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'IuYEjOf3' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6cgyC4ll", "name": "wg7tlFkU", "status": "INACTIVE", "tags": ["CUYxjoL1", "loMGIKHG", "raMiUB6w"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'LqtataCJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '79XQwizV' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '87' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'yyUugMNj' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'arq3yMkB' \
    --limit '56' \
    --offset '97' \
    --orderNos '["Wo9zqlsp", "ZonAHr9x", "dyLRcelj"]' \
    --sortBy 'V8lclV2s' \
    --startTime 'UpgDtRTT' \
    --status 'FULFILLED' \
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
    --orderNo '6SZGoYpu' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hnbUEZgU' \
    --body '{"description": "35wTkFMP"}' \
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
    --body '{"dryRun": false, "notifyUrl": "cXuCpthP", "privateKey": "xsqFaGTD"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'aGVjoYtF' \
    --externalId 'adw9ULh7' \
    --limit '32' \
    --notificationSource 'XSOLLA' \
    --notificationType 'YE3XniDk' \
    --offset '8' \
    --paymentOrderNo '43gTn7Fc' \
    --startDate '5hazNb5k' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'DP0JYyVe' \
    --limit '60' \
    --offset '94' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Us4GxeBf", "currencyNamespace": "C8iH6Ubm", "customParameters": {"iwhoxs38": {}, "hMQk6BjU": {}, "NG4NYh1U": {}}, "description": "Z9SkAJi9", "extOrderNo": "P2KasCkv", "extUserId": "WVzzhEsN", "itemType": "INGAMEITEM", "language": "ORjW", "metadata": {"6P8wUsLq": "6pVonn2m", "XMZELVcc": "Scrnt7LU", "42kdkF4E": "68ojicjL"}, "notifyUrl": "jjyZDTnZ", "omitNotification": false, "platform": "xo5lp7YK", "price": 65, "recurringPaymentOrderNo": "08aehXKR", "region": "IkYxmBX0", "returnUrl": "jkPcAuOp", "sandbox": true, "sku": "tEsBWMht", "subscriptionId": "hqM6mhP6", "targetNamespace": "Jsb2gQ6Z", "targetUserId": "z7cACD3V", "title": "lXH4wCze"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'T1RgcB9c' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mAc6cqoU' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WCeeiEFw' \
    --body '{"extTxId": "DTFaUMIQ", "paymentMethod": "FHvNrcTM", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pVVLsweh' \
    --body '{"description": "w1IStuap"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2pnRKDZP' \
    --body '{"amount": 24, "currencyCode": "8jVKFWV1", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 75, "vat": 30}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2xWIpz2v' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Twitch", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 GetPaymentCallbackConfig1
samples/cli/sample-apps Platform getPaymentCallbackConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentCallbackConfig1' test.out

#- 137 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateRevocationConfig' test.out

#- 138 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'DeleteRevocationConfig' test.out

#- 139 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'otDfsS9n' \
    --limit '75' \
    --offset '88' \
    --source 'OTHER' \
    --startTime 'XkozsN5i' \
    --status 'SUCCESS' \
    --transactionId '991QVH3J' \
    --userId 'bcYq8cwL' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "v5amypSj", "eventTopic": "Ba2E0SvJ", "maxAwarded": 34, "maxAwardedPerUser": 17, "namespaceExpression": "p86KYgvz", "rewardCode": "VUV1zSfq", "rewardConditions": [{"condition": "OZ8eq2do", "conditionName": "FMMklrcP", "eventName": "W98LV8f1", "rewardItems": [{"duration": 5, "itemId": "gBi663Cg", "quantity": 46}, {"duration": 39, "itemId": "qJBA2DPl", "quantity": 51}, {"duration": 14, "itemId": "I9fXbWt5", "quantity": 89}]}, {"condition": "2GLHeSw8", "conditionName": "aLloHLKy", "eventName": "x3ZfDkgD", "rewardItems": [{"duration": 16, "itemId": "Ochw1PtU", "quantity": 20}, {"duration": 60, "itemId": "58nMHLfr", "quantity": 90}, {"duration": 8, "itemId": "ClpGBkfF", "quantity": 33}]}, {"condition": "sugUdnhL", "conditionName": "VljtX2B7", "eventName": "KfkdVjmr", "rewardItems": [{"duration": 64, "itemId": "XPzfN97L", "quantity": 4}, {"duration": 76, "itemId": "UG2S2eIW", "quantity": 30}, {"duration": 96, "itemId": "edMtVFvc", "quantity": 75}]}], "userIdExpression": "MyesqLby"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Z4UGOJSh' \
    --limit '87' \
    --offset '99' \
    --sortBy '["namespace:asc", "rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 141 'QueryRewards' test.out

#- 142 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'ExportRewards' test.out

#- 143 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 143 'ImportRewards' test.out

#- 144 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'IQwFut8s' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'fuHqqUAB' \
    --body '{"description": "gd9yfCkz", "eventTopic": "pgY08O6B", "maxAwarded": 91, "maxAwardedPerUser": 98, "namespaceExpression": "O1PwU1k0", "rewardCode": "nFyvWdWe", "rewardConditions": [{"condition": "JZleKRQG", "conditionName": "5bPtmnZY", "eventName": "xVissk9V", "rewardItems": [{"duration": 44, "itemId": "hi01R3UB", "quantity": 73}, {"duration": 2, "itemId": "1YKM43R4", "quantity": 8}, {"duration": 65, "itemId": "cFEcSMSE", "quantity": 7}]}, {"condition": "am4DSALP", "conditionName": "ecsmLGFQ", "eventName": "f7l0N4Qi", "rewardItems": [{"duration": 2, "itemId": "IflIWkBI", "quantity": 6}, {"duration": 85, "itemId": "OF6r1Juk", "quantity": 39}, {"duration": 17, "itemId": "0sIO7739", "quantity": 56}]}, {"condition": "SSF6YZu9", "conditionName": "MrmIeXBT", "eventName": "eKIVd0Db", "rewardItems": [{"duration": 28, "itemId": "6ZW9Ty3v", "quantity": 73}, {"duration": 20, "itemId": "PUD7j8d2", "quantity": 39}, {"duration": 76, "itemId": "BBSuuq9U", "quantity": 66}]}], "userIdExpression": "mHJK2rUM"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'XRVNLZi8' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'kg5iKUpk' \
    --body '{"payload": {"7JToRVdH": {}, "I2AP64WD": {}, "VLH132RQ": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'MMNfWHEi' \
    --body '{"conditionName": "NQ0QleuI", "userId": "pAiSQrgw"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'xri3gxXH' \
    --limit '93' \
    --offset '67' \
    --start 'm9fVgtOZ' \
    --storeId 'b4YBEGEv' \
    --viewId 'BwdWgcav' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4PpRgSXJ' \
    --body '{"active": true, "displayOrder": 44, "endDate": "1987-10-08T00:00:00Z", "ext": {"glCeQX6c": {}, "J4ugA9d0": {}, "VYdgXmBz": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 21, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "98CNFCJs", "sku": "F24cwwCc"}, {"id": "60WyQcm8", "sku": "I5t1bUck"}, {"id": "YL2Yofzb", "sku": "T3JMwNyg"}], "localizations": {"bleCeq6l": {"description": "LvIqCq7F", "localExt": {"X2rzbNCT": {}, "bZTTEjwF": {}, "D8rSr9Dn": {}}, "longDescription": "clUjSttK", "title": "yRc90UCG"}, "wEqm6Zh9": {"description": "0SEB0eeK", "localExt": {"QcdW7U2e": {}, "SQfgjP3l": {}, "JLa7u1hR": {}}, "longDescription": "nwXDQAG0", "title": "zLuwga6W"}, "LyVbzfyA": {"description": "TNUGXGYI", "localExt": {"yjZIX0kz": {}, "cPD1XwHF": {}, "G67osTno": {}}, "longDescription": "Mp35nhJF", "title": "WkyoPa1P"}}, "name": "2ivgpLrx", "rotationType": "CUSTOM", "startDate": "1973-12-07T00:00:00Z", "viewId": "5LXahWnI"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'qnVmn4FO' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'QadZ1UWf' \
    --storeId 'uJOpTFdA' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ITjNrSfr' \
    --storeId '2hDfCHWQ' \
    --body '{"active": true, "displayOrder": 71, "endDate": "1998-05-08T00:00:00Z", "ext": {"Q4EX9aj9": {}, "QoYFkDAB": {}, "sSYKa30M": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 70, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "c9wLoXNL", "sku": "KrGmoyiW"}, {"id": "NMdECogQ", "sku": "dAe2CXEP"}, {"id": "PxdIgoQs", "sku": "Gnax3W8D"}], "localizations": {"CdkM6UTw": {"description": "nB1Dkqw1", "localExt": {"dgkv7rXo": {}, "EX2dEuip": {}, "LjMhBfGF": {}}, "longDescription": "b3SRvmuW", "title": "N4NAd0tI"}, "cr5DIDVh": {"description": "z8iWbELQ", "localExt": {"7hY6QUDA": {}, "6Ov4H9lq": {}, "Nk3wSEvB": {}}, "longDescription": "uW09hA8k", "title": "Zv0d47cH"}, "AiFMc2cJ": {"description": "4qsDNSqu", "localExt": {"BEDyeDuL": {}, "rRFq7g63": {}, "50A7AWBY": {}}, "longDescription": "FJJLHyCQ", "title": "oMdtXg7X"}}, "name": "7z7eR8iJ", "rotationType": "NONE", "startDate": "1990-07-06T00:00:00Z", "viewId": "9Bh6eba8"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'gKSrMhCK' \
    --storeId 'WYpEuDYL' \
    > test.out 2>&1
eval_tap $? 154 'DeleteSection' test.out

#- 155 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'ListStores' test.out

#- 156 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "R252TyLl", "defaultRegion": "BWOD6rrJ", "description": "7tdTGojS", "supportedLanguages": ["hx7wMjf8", "EUilgEDs", "IqQIBPYM"], "supportedRegions": ["JRejldQG", "qcOiPALP", "LycyDv4w"], "title": "ZMcQDk2M"}' \
    > test.out 2>&1
eval_tap $? 156 'CreateStore' test.out

#- 157 ImportStore
eval_tap 0 157 'ImportStore # SKIP deprecated' test.out

#- 158 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetPublishedStore' test.out

#- 159 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeletePublishedStore' test.out

#- 160 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetPublishedStoreBackup' test.out

#- 161 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'RollbackPublishedStore' test.out

#- 162 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'j7SYuFSE' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '5KZ6a0Ov' \
    --body '{"defaultLanguage": "CyJnqdpV", "defaultRegion": "F7rjLKXs", "description": "wGJimHjd", "supportedLanguages": ["Q4dbvHOs", "i9yXvemn", "dsjmbSLZ"], "supportedRegions": ["aO1SvTcS", "4DlvqIzc", "EQJ1gg3T"], "title": "B0KHk7c4"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'eyOTaOaD' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'xrmbxlJA' \
    --action 'CREATE' \
    --itemSku '6tM5rzx9' \
    --itemType 'CODE' \
    --limit '41' \
    --offset '74' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'zf39vc4y' \
    --updatedAtStart 'DpXGvcBr' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'IhehAEqZ' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'QN74ngsS' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'CAWzX7ek' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'bkgN9ygT' \
    --action 'UPDATE' \
    --itemSku 'lB3WoU4E' \
    --itemType 'CODE' \
    --type 'SECTION' \
    --updatedAtEnd 'irUeJxlD' \
    --updatedAtStart 'czWON9zl' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'TDdFovDu' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'Y1XeqVQ2' \
    --namespace $AB_NAMESPACE \
    --storeId 'p3qCXinU' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '4st7T3C2' \
    --namespace $AB_NAMESPACE \
    --storeId 'NMojEWVc' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'CUDa1K1V' \
    --targetStoreId 'IpM6yliO' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'zHynLtTQ' \
    --limit '22' \
    --offset '89' \
    --sku 'DJEwT7JZ' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'TcEbDEO5' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'InsuDROg' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'cMzvxj7q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'zLjwrDVf' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "mM4Q8JGB"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'qvfV4BtF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'fTUJFihO' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 52, "orderNo": "6rm4l8ut"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'e7VqmrPm' \
    --body '{"achievements": [{"id": "pYey3pKQ", "value": 33}, {"id": "IKtE5Kyh", "value": 38}, {"id": "31ObbrLh", "value": 21}], "steamUserId": "eXiVZLJb"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mURVxin7' \
    --xboxUserId '1nbFhFOV' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hwlVpF6L' \
    --body '{"achievements": [{"id": "Wt8lzinZ", "value": 12}, {"id": "NzJnlXXw", "value": 24}, {"id": "38c4d33X", "value": 22}], "serviceConfigId": "dUMtWmcD", "titleId": "u1qpzVL6", "xboxUserId": "d8cS0W5r"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'AYubNjKy' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Y9QkiBPW' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'hIaY2m7v' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'AVVqt5IT' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gzOJwrPW' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'ydCNVIor' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'UGXmvhwF' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'iATS1MU9' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'z8lIpPIZ' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZdwPzs0g' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'cUt80hbt' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'vHzFcmJE' \
    --features '["WKVgWs4I", "WX05fJIs", "fzT85ovp"]' \
    --itemId '["hCbKta05", "hpJbCSce", "SjcK3ueJ"]' \
    --limit '76' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Z5fj35hm' \
    --body '[{"endDate": "1971-11-19T00:00:00Z", "grantedCode": "KdwtstJT", "itemId": "SwTLXERP", "itemNamespace": "3IJ5x7NH", "language": "wHE-447", "quantity": 41, "region": "ZAjoyE94", "source": "GIFT", "startDate": "1998-01-30T00:00:00Z", "storeId": "3R9a1BBu"}, {"endDate": "1974-04-09T00:00:00Z", "grantedCode": "iwpBPlnh", "itemId": "P56l7ZEQ", "itemNamespace": "WqEVqsuE", "language": "pe-JpLM-603", "quantity": 29, "region": "BzhUv0zt", "source": "PROMOTION", "startDate": "1979-08-20T00:00:00Z", "storeId": "ZS2vkB1m"}, {"endDate": "1975-01-09T00:00:00Z", "grantedCode": "tMPzAfHc", "itemId": "AJZB2P0j", "itemNamespace": "roL71sNp", "language": "vhD-UXqr", "quantity": 0, "region": "PVjOTuc5", "source": "PROMOTION", "startDate": "1974-03-10T00:00:00Z", "storeId": "VD5axsHP"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '7i9MXE8V' \
    --activeOnly 'true' \
    --appId '0lQc3OVZ' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '8Gt1yV06' \
    --activeOnly 'true' \
    --limit '21' \
    --offset '54' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'aEZHjhd8' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'j6Z6R0vy' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'feCZSNDo' \
    --ids '["Ik1rPABJ", "wnrP2JOJ", "3sFnEqbY"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'DtTA3kCE' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'ueKIsHLW' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2fE4OobT' \
    --appIds '["BWfnKrd5", "CfMdImTx", "cHl9HxQr"]' \
    --itemIds '["LF6CxJ2O", "L7IlroMC", "bfWpkO5C"]' \
    --skus '["3Pqo1noQ", "3CLPItDY", "Khgp6MIR"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yQohLkt9' \
    --itemIds '["merHd4lH", "XY48LkhV", "vrFdirum"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4GEkljjk' \
    --appId 'RHrjGAWv' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JlPsMlC8' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'A8fi2E2x' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'nwsRYc9o' \
    --ids '["oTf1Wxks", "i78WFpbm", "HU281Rbv"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Cc2HEByP' \
    --entitlementClazz 'MEDIA' \
    --sku '5yBjfQVO' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HgisUZmm' \
    --entitlementIds 'FjtruM20' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'VXW6hHzT' \
    --namespace $AB_NAMESPACE \
    --userId 'reZ4VTOh' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'KXlYik40' \
    --namespace $AB_NAMESPACE \
    --userId 'jJiu93ge' \
    --body '{"endDate": "1978-08-21T00:00:00Z", "nullFieldList": ["rF8SykwQ", "qUcW0aOG", "O7S4k4tm"], "startDate": "1984-02-11T00:00:00Z", "status": "REVOKED", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'uy0N7EgO' \
    --namespace $AB_NAMESPACE \
    --userId '5mx0t4fB' \
    --body '{"options": ["fjNFWzfV", "PyCXXwU9", "c8YK8mma"], "requestId": "W6d4f62y", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'kn2a6ctS' \
    --namespace $AB_NAMESPACE \
    --userId 'akqh7UeB' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'jNg8Rxyd' \
    --namespace $AB_NAMESPACE \
    --userId '5fHLXdDr' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'DAnBqzHd' \
    --namespace $AB_NAMESPACE \
    --userId 'fZh2rZct' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'COdhEscv' \
    --namespace $AB_NAMESPACE \
    --userId 'tXUJXHA5' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '9UvL9LHl' \
    --body '{"duration": 20, "endDate": "1987-05-15T00:00:00Z", "itemId": "IGi1EphS", "itemSku": "dA6u6YZT", "language": "svkWpYda", "order": {"currency": {"currencyCode": "5IgB3off", "currencySymbol": "P9dc5L0p", "currencyType": "REAL", "decimals": 38, "namespace": "vRmyH3yW"}, "ext": {"iTADdcf7": {}, "cHlC95Ke": {}, "GDsy1v9N": {}}, "free": true}, "orderNo": "BHiqO6rK", "origin": "Epic", "quantity": 56, "region": "BP9qlsQH", "source": "PROMOTION", "startDate": "1994-02-28T00:00:00Z", "storeId": "BtAgHAS4"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'w7XDmuva' \
    --body '{"code": "7Y0AOCsq", "language": "mQmC_xrLX", "region": "gcmKeplL"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'egt24Ipy' \
    --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "di7UMpCd", "namespace": "opcRmnpw"}, "item": {"itemId": "ULjKI25T", "itemSku": "vEL4Ittg", "itemType": "7AF7khvd"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "CnuKHpcB", "namespace": "abw46ZpR"}, "item": {"itemId": "Ku8VU4xh", "itemSku": "odyrML6O", "itemType": "a9pbBTL4"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "oT9yspT2", "namespace": "fUGUKAGC"}, "item": {"itemId": "3hI49RdB", "itemSku": "A9EeXjOE", "itemType": "JipdvKYk"}, "quantity": 33, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UKuhSZPq' \
    --endTime '9Rxzo4g3' \
    --limit '74' \
    --offset '78' \
    --productId 'GYraQi1k' \
    --startTime 'sTDQw0LR' \
    --status 'VERIFIED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dFUNGLey' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'sg9ugaYP' \
    --endTime 'Jz9fzcN6' \
    --limit '96' \
    --offset '62' \
    --startTime 'ndsHlvHQ' \
    --status 'SUCCESS' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'gHD99mkM' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "wE-jzKW", "productId": "76d7i6tN", "region": "A5BSp3K0", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'MntwcI2o' \
    --itemId 'WSb2DFMM' \
    --limit '69' \
    --offset '88' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ltqnnV6E' \
    --body '{"currencyCode": "QScZ5cM1", "currencyNamespace": "bio7Quwh", "discountedPrice": 36, "ext": {"nLWnbXeK": {}, "rtY9RG6p": {}, "fkMQWFvv": {}}, "itemId": "PhgSWoya", "language": "Vulhvr2n", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 41, "quantity": 42, "region": "jv1PaGbS", "returnUrl": "UVQpttMW", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'UOAu4BM3' \
    --itemId '0AjwPJHW' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'C3QGZEQf' \
    --userId 'uAbcKPcl' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'E0hEPPpM' \
    --userId 'Pom3PJqx' \
    --body '{"status": "DELETED", "statusReason": "AN58SEA2"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ceHLBSLV' \
    --userId 'bknsUr1K' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'mik4mCcL' \
    --userId 'ZSV8063m' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '3iq5nhQ5' \
    --userId 'YanUyP8Q' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'HDKrhRFi' \
    --userId '6At9PLlW' \
    --body '{"additionalData": {"cardSummary": "I8DXf6gs"}, "authorisedTime": "1978-04-12T00:00:00Z", "chargebackReversedTime": "1991-11-20T00:00:00Z", "chargebackTime": "1998-10-18T00:00:00Z", "chargedTime": "1971-07-12T00:00:00Z", "createdTime": "1973-09-09T00:00:00Z", "currency": {"currencyCode": "3IB54nVg", "currencySymbol": "VCWuYCDy", "currencyType": "REAL", "decimals": 35, "namespace": "6ZF03eQf"}, "customParameters": {"fir6CSvf": {}, "LSFE6Qe3": {}, "OZ7BzOoP": {}}, "extOrderNo": "BCDf1WPo", "extTxId": "Jh3QDN6J", "extUserId": "lLGo4j70", "issuedAt": "1999-05-13T00:00:00Z", "metadata": {"4RrY4cb3": "YwJeSJ6j", "2XcC1S7I": "zhAQB8ew", "muQOE2ql": "xUGCZUOT"}, "namespace": "rw8bR5EC", "nonceStr": "alZRiqWV", "paymentMethod": "62D32V1f", "paymentMethodFee": 40, "paymentOrderNo": "LgvjJS3m", "paymentProvider": "WALLET", "paymentProviderFee": 60, "paymentStationUrl": "SHwhRr26", "price": 26, "refundedTime": "1991-05-07T00:00:00Z", "salesTax": 58, "sandbox": false, "sku": "KgKcKkOp", "status": "REQUEST_FOR_INFORMATION", "statusReason": "pgeaMxAV", "subscriptionId": "3FPRayYm", "subtotalPrice": 30, "targetNamespace": "w9yuZkOo", "targetUserId": "YrTVsvpH", "tax": 27, "totalPrice": 46, "totalTax": 66, "txEndTime": "1990-02-08T00:00:00Z", "type": "LA6nhpVk", "userId": "e5xP8jDe", "vat": 63}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'e884ervB' \
    --userId 'oGvxiJlI' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'tUO1NxUj' \
    --body '{"currencyCode": "psoJij6X", "currencyNamespace": "xFfm7WJa", "customParameters": {"v4PLWlFC": {}, "d1NT3pLz": {}, "gGUADSk2": {}}, "description": "EdqRigMT", "extOrderNo": "dWo85dsH", "extUserId": "4qagPme1", "itemType": "APP", "language": "xKPB", "metadata": {"US9THQtN": "MGtHKexa", "FjE4khsn": "NXjMXW6o", "p5X9any2": "nczoaDpl"}, "notifyUrl": "eNhaA07P", "omitNotification": false, "platform": "aVmkVXbA", "price": 67, "recurringPaymentOrderNo": "MXOLSLfK", "region": "rNoQ6Oye", "returnUrl": "vN0FQXAp", "sandbox": false, "sku": "iPbwP2wm", "subscriptionId": "eqo1GzWe", "title": "cEXbEVhZ"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Xe4Xz5eX' \
    --userId 'z1rXD4pi' \
    --body '{"description": "OlJe7IMm"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'mhbD6zof' \
    --body '{"code": "UpS16WHF", "orderNo": "0KDaS5CF"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '9fZ43aeJ' \
    --body '{"meta": {"jKNcecuR": {}, "4xjPVypB": {}, "aXiT4pcj": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "UUAvVGkK", "namespace": "9hqMbIW3"}, "entitlement": {"clazz": "MEDIA", "entitlementId": "fhc95XYH", "type": "CONSUMABLE"}, "item": {"itemIdentity": "ULh80yGC", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 24, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "ET8xWPCh", "namespace": "tqUrQZy9"}, "entitlement": {"clazz": "MEDIA", "entitlementId": "fJ176GoA", "type": "CONSUMABLE"}, "item": {"itemIdentity": "ptbvAPvV", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 27, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "S7O74mai", "namespace": "yO21ZpeY"}, "entitlement": {"clazz": "CODE", "entitlementId": "6fGitIc9", "type": "CONSUMABLE"}, "item": {"itemIdentity": "kyOpvo7f", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 43, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "8kA5fA0u"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'xAgAQIRA' \
    --chargeStatus 'NEVER' \
    --itemId 'nRF9Rqg3' \
    --limit '99' \
    --offset '57' \
    --sku 'YL5Ia6td' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'OJgktCSf' \
    --excludeSystem 'true' \
    --limit '49' \
    --offset '63' \
    --subscriptionId 'ZH8xT8VB' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '5UMt4YSm' \
    --body '{"grantDays": 97, "itemId": "jAEiCtrU", "language": "diANRomg", "reason": "hJv5SVRS", "region": "Dd0XQkeT", "source": "1MNczoSA"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'cpMZfhaF' \
    --itemId 'iKIJQK8n' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2K6cuckG' \
    --userId 'b0UpbVD4' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cTlNChUR' \
    --userId 'hkEAmkoJ' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KdBxPjTj' \
    --userId 'M01Y0PjF' \
    --force 'false' \
    --body '{"immediate": false, "reason": "y3Dcmcff"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 't3ZS8pT2' \
    --userId 'YLC1jSkU' \
    --body '{"grantDays": 35, "reason": "kYb1svnP"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TXxF2Ke5' \
    --userId 'BjmfW1Zb' \
    --excludeFree 'true' \
    --limit '13' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qn9oYFcu' \
    --userId 'm6kSJTko' \
    --body '{"additionalData": {"cardSummary": "286etY6E"}, "authorisedTime": "1996-03-11T00:00:00Z", "chargebackReversedTime": "1987-03-03T00:00:00Z", "chargebackTime": "1988-05-06T00:00:00Z", "chargedTime": "1990-01-15T00:00:00Z", "createdTime": "1979-12-07T00:00:00Z", "currency": {"currencyCode": "2zy9TrFc", "currencySymbol": "mjb2rNeE", "currencyType": "REAL", "decimals": 41, "namespace": "jYsKZPHf"}, "customParameters": {"qMWWvl3p": {}, "lNPkJS34": {}, "wPT9ULsq": {}}, "extOrderNo": "XWcyslL3", "extTxId": "YRBLYUAQ", "extUserId": "cO4Uoggp", "issuedAt": "1973-01-08T00:00:00Z", "metadata": {"cMFeLTz0": "s1YrYbAv", "MS3oMRuT": "hUjO07Ko", "sATWzktg": "ak1Ip8F1"}, "namespace": "Uy6YpQR1", "nonceStr": "tiNHuehi", "paymentMethod": "ZjMC7PqW", "paymentMethodFee": 94, "paymentOrderNo": "96r7Oo9O", "paymentProvider": "STRIPE", "paymentProviderFee": 34, "paymentStationUrl": "VBYiLb5w", "price": 35, "refundedTime": "1984-07-28T00:00:00Z", "salesTax": 4, "sandbox": false, "sku": "ACjxichK", "status": "CHARGEBACK_REVERSED", "statusReason": "C53YaBaZ", "subscriptionId": "SwoNX3ex", "subtotalPrice": 85, "targetNamespace": "Hw8afTgW", "targetUserId": "vrQhARf4", "tax": 82, "totalPrice": 71, "totalTax": 77, "txEndTime": "1998-09-13T00:00:00Z", "type": "GsmK7tS2", "userId": "LYbyuTSz", "vat": 99}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'pvaEGY2l' \
    --namespace $AB_NAMESPACE \
    --userId 'qRuBB1HL' \
    --body '{"count": 95, "orderNo": "JHd24kjb"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Mcf6TpbX' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'J9DURTvQ' \
    --namespace $AB_NAMESPACE \
    --userId 'dO0bP4Nh' \
    --body '{"allowOverdraft": true, "amount": 84, "balanceOrigin": "IOS", "reason": "NMkRQO49"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 't1Prdx3J' \
    --namespace $AB_NAMESPACE \
    --userId 'gIlxqra0' \
    --limit '5' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'lPClTpq2' \
    --namespace $AB_NAMESPACE \
    --userId 'JfTTzUeD' \
    --body '{"amount": 78, "expireAt": "1998-12-02T00:00:00Z", "origin": "GooglePlay", "reason": "atcuy50Y", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'FR4b1aSt' \
    --namespace $AB_NAMESPACE \
    --userId 'N82qykPL' \
    --body '{"amount": 41, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 252 'PayWithUserWallet' test.out

#- 253 GetUserWallet
eval_tap 0 253 'GetUserWallet # SKIP deprecated' test.out

#- 254 DebitUserWallet
eval_tap 0 254 'DebitUserWallet # SKIP deprecated' test.out

#- 255 DisableUserWallet
eval_tap 0 255 'DisableUserWallet # SKIP deprecated' test.out

#- 256 EnableUserWallet
eval_tap 0 256 'EnableUserWallet # SKIP deprecated' test.out

#- 257 ListUserWalletTransactions
eval_tap 0 257 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 258 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'Nc5uGMg8' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'dTVarebF' \
    --body '{"displayOrder": 3, "localizations": {"eHof83l8": {"description": "diqhEUq6", "localExt": {"zlPRqDaY": {}, "oSPBbXoF": {}, "rJu1JvZM": {}}, "longDescription": "hyv3iFCF", "title": "9Zo6qgbt"}, "RRDNIV1i": {"description": "7HIhIzpy", "localExt": {"xifJ8mPc": {}, "CU7qTiVl": {}, "WfMAwv5x": {}}, "longDescription": "BXXiSyVG", "title": "UyNp0JBa"}, "ZIcLu9lx": {"description": "L79CqaxZ", "localExt": {"Q0FMbTwQ": {}, "T4j4uoUj": {}, "3trU7NPI": {}}, "longDescription": "6eHAbYHc", "title": "RgkmkefU"}}, "name": "Pn8S6n08"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'LTPc9P7I' \
    --storeId 'SnvTMHu6' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'q0c8h5r8' \
    --storeId 'M4koGsZv' \
    --body '{"displayOrder": 52, "localizations": {"pQ9VImH4": {"description": "aYkaNwyb", "localExt": {"ZFUlM0xJ": {}, "DVpWq90T": {}, "7ksjzLPj": {}}, "longDescription": "7Qp0dcG5", "title": "AwB9ILDT"}, "HERXG01y": {"description": "wcETlrqA", "localExt": {"0hJLfx8D": {}, "oNHJdakn": {}, "uBOc62WL": {}}, "longDescription": "TXdhUrwT", "title": "tLn5BGv4"}, "FwmfKgBW": {"description": "tzTz7vsc", "localExt": {"YW1GcZzb": {}, "bK0h5Ztg": {}, "ScPMWntR": {}}, "longDescription": "Yof56MCX", "title": "PAjyLqOi"}}, "name": "TkN8XDQd"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'cYIdjmXl' \
    --storeId 'rgGsh8AD' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'tisgqQ3x' \
    --end 'gHeclQox' \
    --start 'nlAuS8dW' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["a96Udz07", "J4wTXiDH", "NYrr88qP"], "apiKey": "h6IH01G1", "authoriseAsCapture": false, "blockedPaymentMethods": ["WjoaeqJN", "q1eX4d2h", "aXEBIOkq"], "clientKey": "27wPKg3c", "dropInSettings": "8g5Lwx8W", "liveEndpointUrlPrefix": "yhOJC998", "merchantAccount": "R1Be4xKd", "notificationHmacKey": "kumj6vFd", "notificationPassword": "opsvynxW", "notificationUsername": "582vEjtF", "returnUrl": "8nSaSiZU", "settings": "asTD4WZx"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "oX5CSBVs", "privateKey": "ONeEIC0N", "publicKey": "niXb4mEg", "returnUrl": "FHWndx28"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "qrjFuWbc", "secretKey": "rsWuCzmo"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'UkgkOTqv' \
    --region 'LC88yirI' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "3dwpfZk2", "clientSecret": "gVJajhhG", "returnUrl": "pVNSnVq7", "webHookId": "tBExDl9L"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["KOuA6tdq", "UWWjVKAH", "FEg8LBKX"], "publishableKey": "DeRKSkir", "secretKey": "hJUjpT60", "webhookSecret": "pStJgGM6"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "30Y6PB0l", "key": "Tr8YbbPs", "mchid": "jZ8r1L1J", "returnUrl": "Db0N6ffR"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "oEgR94rb", "flowCompletionUrl": "EEY171Sh", "merchantId": 56, "projectId": 17, "projectSecretKey": "w0kNnEDa"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'C1XhQdyt' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'QFlSQf1z' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["J6p7RkgN", "8vgpcrMB", "szNc2l4s"], "apiKey": "p7Ayc43T", "authoriseAsCapture": true, "blockedPaymentMethods": ["m33RRysT", "0ltXgTXL", "YqJh0mDG"], "clientKey": "vs5jvjg2", "dropInSettings": "ucB949TX", "liveEndpointUrlPrefix": "Bawha4yl", "merchantAccount": "KeOHIAx6", "notificationHmacKey": "BMFgeRCD", "notificationPassword": "pTufP2Yk", "notificationUsername": "vX9nFUJS", "returnUrl": "pLIGRs8R", "settings": "jmyGWtbY"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Zm51SzxD' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Xb4XeKXG' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "gEKUrTqb", "privateKey": "Ojpmu75O", "publicKey": "3dwlru7u", "returnUrl": "3OpJJvuf"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '44t6p8hJ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'fFgagPX4' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "ec4QYU3q", "secretKey": "cBovrNdc"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'qmPFsnDl' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'JbUiXyvb' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "cU1XLPtv", "clientSecret": "sAb8RAHK", "returnUrl": "3MQy3Nty", "webHookId": "ZVYSoeTj"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'FO7NaEEg' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'fou3Bu1e' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["3dP0Hjwy", "O9cI2AXM", "JQEc7bLB"], "publishableKey": "cZrE8QZi", "secretKey": "rl7afJuq", "webhookSecret": "Tbb5lXF1"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'gjxNbqpN' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'UVUZYYEO' \
    --validate 'false' \
    --body '{"appId": "yv0lzjOZ", "key": "alJqNbP5", "mchid": "vSAXLY8M", "returnUrl": "AL5uxIWF"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'S74VztsK' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'yHmRtxP4' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'yD4aeM9V' \
    --validate 'false' \
    --body '{"apiKey": "rpTob5Ja", "flowCompletionUrl": "GJYRkOrj", "merchantId": 98, "projectId": 47, "projectSecretKey": "4zA4nZSp"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '58TMeKNj' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'iDVb4Dit' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '76' \
    --namespace 'jaYzs6ol' \
    --offset '84' \
    --region '8X6egyFE' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "5vyU3AdV", "region": "iVFv8y4x", "sandboxTaxJarApiToken": "Bg2iRnm9", "specials": ["STRIPE", "STRIPE", "ALIPAY"], "taxJarApiToken": "PcuLV3Jv", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'EW3xkDsq' \
    --region 'vFBOBWTS' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '5HZonr6F' \
    --body '{"aggregate": "ADYEN", "namespace": "j6GtfczJ", "region": "R3FXmMyX", "sandboxTaxJarApiToken": "lj5TkX6a", "specials": ["WXPAY", "WALLET", "CHECKOUT"], "taxJarApiToken": "I1Y0pSGT", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'B0jTVQ00' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "9PcVa7HA", "taxJarApiToken": "sxTSz0l1", "taxJarEnabled": false, "taxJarProductCodesMapping": {"F0vrdEJU": "KdRE6vGH", "E8eb27On": "wzVqbyM4", "as6A3G19": "x0vSoh39"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 't540thiF' \
    --end 'KMfX2rCN' \
    --start 'Z9ScC4J6' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'jXiyExLS' \
    --storeId '86mgOTOC' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ikFDqE7l' \
    --storeId 'mBm7iASu' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'RtKtwWnL' \
    --namespace $AB_NAMESPACE \
    --language 'Gd7gzElO' \
    --storeId 'EHz2GwfX' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'F2HpLOhe' \
    --namespace $AB_NAMESPACE \
    --language 'SpiNMZPl' \
    --storeId '2RvkzcCM' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'CClaHlm5' \
    --namespace $AB_NAMESPACE \
    --language 'O8kXDgch' \
    --storeId '7PCBToWK' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'upBgQJOp' \
    --region 'oKdCQy6r' \
    --storeId 'wRkFrgfV' \
    --appId 'xs1TXnoe' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemByAppId' test.out

#- 308 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'dq8IIG8A' \
    --categoryPath 'KtqD9hVg' \
    --features 'uX7Dq6uc' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language '4WOpYY6j' \
    --limit '77' \
    --offset '65' \
    --region 'fBnmY1MD' \
    --sortBy '["name:desc", "name"]' \
    --storeId 'vlLUe7wY' \
    --tags 'lL0bbcpj' \
    > test.out 2>&1
eval_tap $? 308 'PublicQueryItems' test.out

#- 309 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'UurS7ZOP' \
    --region 'iwvojzYX' \
    --storeId 'rBdZuPsO' \
    --sku 'RmX1PzJr' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'kQAm1S3D' \
    --region '30JHtmx5' \
    --storeId 'KVasA2OW' \
    --itemIds '0PITnwkp' \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["roYjgnMD", "UqQeTcK0", "qYyK5mY3"]}' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'EXTENSION' \
    --limit '12' \
    --offset '4' \
    --region 'ojcwKWDD' \
    --storeId 'XKUA6Ze9' \
    --keyword '2qItCOkn' \
    --language 'inaLhGN0' \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'OuTBynww' \
    --namespace $AB_NAMESPACE \
    --language 'hhsMosd2' \
    --region 'zvmZj0Ig' \
    --storeId '6GOv6DYi' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'YEUIHKRv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'jDRZZ6GA' \
    --namespace $AB_NAMESPACE \
    --language 'foQr15UX' \
    --populateBundle 'true' \
    --region 'ZbXtSfXa' \
    --storeId 'QFM3v0sr' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "5XymCmWV", "paymentProvider": "STRIPE", "returnUrl": "8s1zTNQv", "ui": "80RCAtYH", "zipCode": "OvIhnP88"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Fpqbdr3w' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'so2NiGv9' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6o1qDqWC' \
    --paymentProvider 'ADYEN' \
    --zipCode 'hPXZEI9v' \
    --body '{"token": "jUqcMGK1"}' \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1DO4m8Pj' \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'AAwQov4H' \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Bub2zbGg' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'B0T3XRi5' \
    --foreinginvoice 'PPK29rPo' \
    --invoiceId 'bpEdhO5g' \
    --payload 'rVh1nWWI' \
    --redirectResult 'lAK85SzT' \
    --resultCode 'CE5DRmCL' \
    --sessionId 'k1E3EiLV' \
    --status 'PXMsVbUG' \
    --token '4KW5kJku' \
    --type '6NOtOYYA' \
    --userId 'dCQS6TpZ' \
    --orderNo 'NHlHOc1p' \
    --paymentOrderNo 'QaAkYq1B' \
    --paymentProvider 'WALLET' \
    --returnUrl 'BowP2SuM' \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'vjLzoy8Q' \
    --paymentOrderNo 'L28aA8jP' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'M5Ob6xdL' \
    > test.out 2>&1
eval_tap $? 326 'GetRewardByCode' test.out

#- 327 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '4BXza8Jv' \
    --limit '48' \
    --offset '14' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 327 'QueryRewards1' test.out

#- 328 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Dmh1P0dZ' \
    > test.out 2>&1
eval_tap $? 328 'GetReward1' test.out

#- 329 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'PublicListStores' test.out

#- 330 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["GPqQH1ud", "mET7KOlP", "zObO3tvt"]' \
    --itemIds '["0piSNGsC", "G5kkuC6I", "Nfeg7dAI"]' \
    --skus '["WpIEcAKb", "pzxP1ics", "ClN9sJbj"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicExistsAnyMyActiveEntitlement' test.out

#- 331 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '2qmWqWYT' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId '9mLtkjOF' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'lbHWlRkx' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 334 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["LnS8WNlC", "dFwU2e2T", "ZQhh594Y"]' \
    --itemIds '["II4b1gpy", "QmhKxATH", "6qvmcTUW"]' \
    --skus '["V4xrfMKs", "ehQcFC43", "SKOgtl4u"]' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetEntitlementOwnershipToken' test.out

#- 335 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'BJk0JU8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'im2vDq2i' \
    --body '{"epicGamesJwtToken": "hrtazh6n"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'm8l5yCHn' \
    --body '{"serviceLabel": 89}' \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'DoJdiL3c' \
    --body '{"serviceLabels": [75, 20, 79]}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'sev0de41' \
    --body '{"appId": "Xh7sbQKL", "steamId": "sPx3r0D3"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '6HpGmp9h' \
    --body '{"xstsToken": "NQw2ihr0"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'tLdcqWHz' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'ktbfO333' \
    --features '["9Uu3ipvp", "gkaP5w7O", "VHmbchKD"]' \
    --itemId '["bUwjXgDJ", "G3zNRpHa", "RVF5CBNI"]' \
    --limit '50' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'y4OJX1ht' \
    --appId 't8e7K49n' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'A5g3TI5C' \
    --limit '70' \
    --offset '87' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '91tvdNzk' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '0uJOUd9s' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '9GfccRcj' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'JgmkQyKi' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '8pmc3nUE' \
    --appIds '["NqPAA4WT", "MRHltlmQ", "W4QFmJRZ"]' \
    --itemIds '["QIIxzM9c", "sLhpgPgU", "74FxO2Iq"]' \
    --skus '["Y6Sc8a6v", "qiXmJWr4", "tblFiWg7"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'NaFPqL8o' \
    --appId 'j4hxHIay' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NN3aRLvr' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'aoxhn3vj' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kIPAxudN' \
    --ids '["oPPEXInl", "TIfdcymL", "BUALrKwF"]' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'rDJ1Vghz' \
    --entitlementClazz 'LOOTBOX' \
    --sku '79aqo3gB' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'IKxTSQlJ' \
    --namespace $AB_NAMESPACE \
    --userId 'faKkdOls' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'cqI5UoQ9' \
    --namespace $AB_NAMESPACE \
    --userId 'SHIYOJaV' \
    --body '{"options": ["qCDPNiDG", "s28DJDCn", "xu4NbkxX"], "requestId": "gc7cAyXB", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'n1hIHnWH' \
    --body '{"code": "3h6m0NTs", "language": "lzjW_964", "region": "2GzUZemp"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'pxKeugln' \
    --body '{"excludeOldTransactions": true, "language": "ooC-pYQX", "productId": "60ZggenA", "receiptData": "ldMiCOWH", "region": "9Hqs6A59", "transactionId": "fc4eabHD"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'L3S32qZa' \
    --body '{"epicGamesJwtToken": "x4JPgojw"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QvONCiS4' \
    --body '{"autoAck": true, "language": "CQY_FfvU", "orderId": "xRUfNJnU", "packageName": "eaitg2Ir", "productId": "Pq2SyeX4", "purchaseTime": 42, "purchaseToken": "3V14CerY", "region": "CZ9CA3Ck"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '38iEo56o' \
    --body '{"currencyCode": "5NDH3O5h", "price": 0.3912919574813375, "productId": "UYyCTr1q", "serviceLabel": 15}' \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '3nSPtFdG' \
    --body '{"currencyCode": "ROH6BxnH", "price": 0.6191338037736492, "productId": "f3GqSOh2", "serviceLabels": [56, 49, 28]}' \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '86ExwA6s' \
    --body '{"appId": "gP2wkWg8", "currencyCode": "PyKepAW0", "language": "SLj_qA", "price": 0.4986880673612706, "productId": "rGfLje8M", "region": "eXemaT0T", "steamId": "SexHLLSr"}' \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SQHxl2ry' \
    --body '{"gameId": "eip1qcQB", "language": "xbov", "region": "ncWPtnt2"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'i2Wf15yi' \
    --body '{"currencyCode": "xj6ytp5d", "price": 0.9778529764811305, "productId": "U9Uxp7lw", "xstsToken": "gSXsaBy0"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'BN8ZAFG5' \
    --itemId 'oPvMIF7s' \
    --limit '29' \
    --offset '98' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'hHWzz0pa' \
    --body '{"currencyCode": "dxUr0d79", "discountedPrice": 15, "ext": {"OIT4lrRV": {}, "Kso0sGft": {}, "PyTuELed": {}}, "itemId": "xdLKOcKR", "language": "jY-289", "price": 91, "quantity": 93, "region": "0uISXPYx", "returnUrl": "QQ7HwYIz"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T385Hl9F' \
    --userId 'kRnB5uIi' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wSpNnyjt' \
    --userId 'Jn6nmNAe' \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'iPwFuu3A' \
    --userId 'HnddUIjB' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ph2CimgQ' \
    --userId 'ljusljRR' \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'JrRCS9zi' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'aFdvwNB6' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'YigTqTEN' \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'mCMxlZ1E' \
    --language 'McSFRXnV' \
    --region 'HcTW1idO' \
    --storeId 'YXbvCfxC' \
    --viewId 'jpUr2bV8' \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rdQKAROD' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'duFoxpPf' \
    --limit '83' \
    --offset '81' \
    --sku 'MGUPzMWU' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ejhqloiL' \
    --body '{"currencyCode": "VQoFYirD", "itemId": "Pr5QS8XI", "language": "OMJ-575", "region": "4cOvQQN2", "returnUrl": "s8bmSGOh", "source": "7Q0t1nub"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9PqXyPPD' \
    --itemId 'fl18Zo9m' \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'm20QeoJR' \
    --userId 'G2aCdRka' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cKN3LtAW' \
    --userId 'IZjqYhwL' \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0haNpNEo' \
    --userId 'r7zZyzbS' \
    --body '{"immediate": true, "reason": "AVMqNaHK"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vjIOZxn8' \
    --userId 'bKe3moVK' \
    --excludeFree 'false' \
    --limit '34' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'llLQiBPG' \
    --language 'SsVjcMvn' \
    --storeId 'qDK5Nfk7' \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '33sxO7sT' \
    --namespace $AB_NAMESPACE \
    --userId 'RaAR1Qgz' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'wC8b5pfZ' \
    --namespace $AB_NAMESPACE \
    --userId 'v519Gu39' \
    --limit '35' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 380 'PublicListUserWalletTransactions' test.out

#- 381 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'gCan8f5P' \
    --baseAppId '0AUilEvQ' \
    --categoryPath 'ymGPBgmu' \
    --features 'Wvb5O69u' \
    --includeSubCategoryItem 'true' \
    --itemName '2JKrO1BR' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '71' \
    --offset '0' \
    --region 'Sc793w5X' \
    --sortBy '["name:asc", "displayOrder", "updatedAt:desc"]' \
    --storeId 'zGgtqIGg' \
    --tags 'mJBqEzeQ' \
    --targetNamespace '742zghL1' \
    > test.out 2>&1
eval_tap $? 381 'QueryItems1' test.out

#- 382 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'MzHSzKkL' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 382 'ImportStore1' test.out

#- 383 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GHkgOrbV' \
    --body '{"itemIds": ["mzDjc9PS", "XcAJAIkS", "yPabOKAR"]}' \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE