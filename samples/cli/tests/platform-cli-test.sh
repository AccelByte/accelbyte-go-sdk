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
echo "1..388"

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
    --body '{"context": {"item": {"appId": "vcMvBDPe", "appType": "DEMO", "baseAppId": "JIyXG8tf", "boothName": "89rNcxyz", "boundItemIds": ["R9g6RVaM", "KiCcHJTX", "K0gtwGxh"], "categoryPath": "5Y4O1hkQ", "clazz": "Eg7ewwNE", "createdAt": "1980-01-20T00:00:00Z", "description": "ssq3RUkS", "displayOrder": 42, "entitlementType": "DURABLE", "ext": {"Djm5FkTz": {}, "EALwxYwo": {}, "vVOpbmyA": {}}, "features": ["OMhrG2kr", "jS75YTNo", "2tgMyvr0"], "fresh": true, "images": [{"as": "pJ9OPtkU", "caption": "bT2jzXQy", "height": 8, "imageUrl": "E7CWP73B", "smallImageUrl": "sTz7LGmf", "width": 7}, {"as": "9zE5MgmS", "caption": "o9tKv5VA", "height": 96, "imageUrl": "cIOlUkVQ", "smallImageUrl": "XFzDeN7R", "width": 4}, {"as": "kj2TWdOT", "caption": "rExNaj8v", "height": 40, "imageUrl": "eGrVxYXX", "smallImageUrl": "OMA7pvcm", "width": 5}], "itemId": "RwbsgGkN", "itemIds": ["7XOyi8zN", "4WUuM4Lk", "kC3t82Fy"], "itemQty": {"6OTIib2c": 1, "QuY6781o": 28, "J16D7i0n": 51}, "itemType": "SEASON", "language": "TSej5Hgx", "listable": false, "localExt": {"c72LW0Gn": {}, "LdHmTk6b": {}, "pF8MQSKx": {}}, "longDescription": "Izza4kar", "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 68, "itemId": "RRcXeaib", "itemSku": "BHMh7lL6", "itemType": "0TScVn0y"}, {"count": 43, "itemId": "UNQfgQ1z", "itemSku": "MSzWTMGK", "itemType": "r4Jdu706"}, {"count": 18, "itemId": "VyOWf8mQ", "itemSku": "yzyllaXF", "itemType": "Qi9I0JnX"}], "name": "dTPI7tf9", "odds": 0.2676119646913089, "type": "REWARD", "weight": 84}, {"lootBoxItems": [{"count": 6, "itemId": "H7EqBGv0", "itemSku": "1zQPrjar", "itemType": "sExOQSfn"}, {"count": 39, "itemId": "XXctnGEH", "itemSku": "bysVlLt5", "itemType": "Dkuu4fLd"}, {"count": 36, "itemId": "1E95Ibe7", "itemSku": "LIeYDQuR", "itemType": "pTG68sww"}], "name": "D9U0rEk4", "odds": 0.823239811462371, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 60, "itemId": "XwRky21z", "itemSku": "hEmhcKBp", "itemType": "MZJz2X3i"}, {"count": 93, "itemId": "kJcqtJCs", "itemSku": "018JkVVS", "itemType": "Q32MtN8U"}, {"count": 31, "itemId": "kjxJBFDd", "itemSku": "5INQWJ7E", "itemType": "TqXnjHs7"}], "name": "OgnAAYon", "odds": 0.5798242866548857, "type": "REWARD", "weight": 45}], "rollFunction": "CUSTOM"}, "maxCount": 98, "maxCountPerUser": 13, "name": "brS5jBSo", "namespace": "WHA8n0Kj", "optionBoxConfig": {"boxItems": [{"count": 53, "itemId": "UXhoh8zU", "itemSku": "s1LsSWuO", "itemType": "nEAoMJN1"}, {"count": 40, "itemId": "LvWbFVF2", "itemSku": "7afzlPln", "itemType": "gnFIf1fW"}, {"count": 13, "itemId": "GseD1fR1", "itemSku": "wg5awxzu", "itemType": "6764pjLL"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isNot", "name": "lnxBT95a", "predicateType": "EntitlementPredicate", "value": "81RZ17CV", "values": ["12tyoF4g", "bqGV97S7", "IiUfpKa5"]}, {"anyOf": 87, "comparison": "is", "name": "lgt9cfk0", "predicateType": "SeasonTierPredicate", "value": "BDcY8k6a", "values": ["yNuGsgrN", "YMkDdhjg", "dBpwelaY"]}, {"anyOf": 20, "comparison": "excludes", "name": "zXi8LLco", "predicateType": "SeasonTierPredicate", "value": "dbiRBc7r", "values": ["zTbYPq38", "oqeUppTM", "6tw8JqNt"]}]}, {"operator": "or", "predicates": [{"anyOf": 41, "comparison": "isLessThanOrEqual", "name": "OGgNpKjI", "predicateType": "SeasonTierPredicate", "value": "dvfu4Xjt", "values": ["GR6hPHwp", "uKDfqTKl", "lhtonZQB"]}, {"anyOf": 8, "comparison": "isNot", "name": "bNV6mE6l", "predicateType": "SeasonTierPredicate", "value": "xFafCroT", "values": ["WJvtF92F", "rheZGj4I", "tSDok6aH"]}, {"anyOf": 88, "comparison": "isNot", "name": "spTl9nPt", "predicateType": "EntitlementPredicate", "value": "MvmErqDb", "values": ["n5FJohSD", "g7KLLknY", "sI3N1PZJ"]}]}, {"operator": "or", "predicates": [{"anyOf": 31, "comparison": "isGreaterThanOrEqual", "name": "ajpolx5K", "predicateType": "SeasonTierPredicate", "value": "MRa24dA4", "values": ["5sNbhuwy", "IOTC2a8y", "FT1UOEI6"]}, {"anyOf": 92, "comparison": "isLessThan", "name": "V0NHzi1x", "predicateType": "SeasonTierPredicate", "value": "7uu6568v", "values": ["u1i2484Y", "WRvKYlGP", "cItU1GkQ"]}, {"anyOf": 86, "comparison": "isLessThanOrEqual", "name": "FLAKAZah", "predicateType": "SeasonPassPredicate", "value": "a34i2qzg", "values": ["28LnP6Xu", "fMfEqUXr", "ImJHBxiq"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 86, "fixedTrialCycles": 4, "graceDays": 74}, "region": "wOd5aan1", "regionData": [{"currencyCode": "wX78CoQW", "currencyNamespace": "8nSP70N4", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1974-01-11T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1979-08-17T00:00:00Z", "discountedPrice": 55, "expireAt": "1976-05-30T00:00:00Z", "price": 34, "purchaseAt": "1996-06-01T00:00:00Z", "trialPrice": 0}, {"currencyCode": "SLPRoADM", "currencyNamespace": "3nT5RjCq", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1973-05-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1999-07-09T00:00:00Z", "discountedPrice": 11, "expireAt": "1972-12-20T00:00:00Z", "price": 30, "purchaseAt": "1982-01-28T00:00:00Z", "trialPrice": 88}, {"currencyCode": "fwB9CwA5", "currencyNamespace": "vfOugL9h", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1982-01-02T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1981-09-30T00:00:00Z", "discountedPrice": 98, "expireAt": "1973-07-19T00:00:00Z", "price": 65, "purchaseAt": "1981-06-13T00:00:00Z", "trialPrice": 10}], "saleConfig": {"currencyCode": "BQ029WkH", "price": 14}, "seasonType": "PASS", "sellable": true, "sku": "xvkCn54M", "stackable": false, "status": "INACTIVE", "tags": ["OlLrgtNk", "xT7KNm5y", "lmS0kcuA"], "targetCurrencyCode": "2vkfSMye", "targetItemId": "Mhl9E2vC", "targetNamespace": "A5TzAs1r", "thumbnailUrl": "CAsQcO8A", "title": "ZpXSCKWW", "updatedAt": "1995-03-10T00:00:00Z", "useCount": 97}, "namespace": "GlHOG8OJ", "order": {"currency": {"currencyCode": "oDZO5jtA", "currencySymbol": "vOwN4Ok2", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "QtO0I0xh"}, "ext": {"FARwo9D5": {}, "V4y99e5d": {}, "fRrmNBzn": {}}, "free": true}, "source": "PROMOTION"}, "script": "hYk7Xtkg", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'EEcHW5nm' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'aNfuKD2n' \
    --body '{"grantDays": "loZT8FN9"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'T1nqDGnM' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'OL2Z7pwn' \
    --body '{"grantDays": "6En4saCG"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "hjONniTZ", "dryRun": true, "fulfillmentUrl": "FumtKTQG", "itemType": "BUNDLE", "purchaseConditionUrl": "nXZ76Guf"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'wR0UrnEg' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'yzRInhxF' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'uoqbrBgC' \
    --body '{"clazz": "9wrhmEiG", "dryRun": false, "fulfillmentUrl": "aw02TEzu", "purchaseConditionUrl": "9r5dkf7k"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '8aWbtfDe' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --name 'nfh54jJd' \
    --offset '23' \
    --tag 'W6L69MCQ' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EFctTwCs", "items": [{"extraSubscriptionDays": 89, "itemId": "pF0XuXNB", "itemName": "27SDfpwe", "quantity": 80}, {"extraSubscriptionDays": 40, "itemId": "Ix27nMf2", "itemName": "IIndAm3W", "quantity": 28}, {"extraSubscriptionDays": 3, "itemId": "bHyrwyNC", "itemName": "z8evfFGQ", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 52, "maxSaleCount": 81, "name": "uTrPNIUl", "redeemEnd": "1987-05-31T00:00:00Z", "redeemStart": "1981-09-24T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["apQ3LbJ0", "J9bD6BKG", "GAyFvKj5"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'wex3fxyb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'vKx61PM2' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uxTOZNYV", "items": [{"extraSubscriptionDays": 80, "itemId": "AiEnKGsm", "itemName": "QSkuhsey", "quantity": 95}, {"extraSubscriptionDays": 44, "itemId": "yEfWdVvp", "itemName": "faj6xWoq", "quantity": 80}, {"extraSubscriptionDays": 20, "itemId": "ktGkmcmk", "itemName": "4cS0YTQF", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 29, "maxRedeemCountPerCode": 2, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 14, "name": "pIZhTBNy", "redeemEnd": "1980-02-02T00:00:00Z", "redeemStart": "1984-12-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ymCexr8P", "k1o6S0ZG", "AB2d4Z1F"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'MuBt6NZH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'FS34Mqf8' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'bDZwxblj' \
    --body '{"categoryPath": "nfdyuZWW", "localizationDisplayNames": {"LW4MNTD0": "anKCZwFH", "NoNVFYd9": "AuTvcK7M", "fikcUoxQ": "B9VrahcL"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'qe6m6aek' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'fIwOOfkt' \
    --namespace $AB_NAMESPACE \
    --storeId '42ThZUph' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '3fgaYQE2' \
    --namespace $AB_NAMESPACE \
    --storeId 'KK7h639P' \
    --body '{"localizationDisplayNames": {"4iH8YfQz": "vnLotkIw", "NRYcy1lD": "RS5GA9Qj", "rMORkAw5": "htE9UrWc"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '6TkTQ37s' \
    --namespace $AB_NAMESPACE \
    --storeId 'ayoZ6Srh' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'xJuO48Ka' \
    --namespace $AB_NAMESPACE \
    --storeId 'd8DloSEj' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'mEZYbAXH' \
    --namespace $AB_NAMESPACE \
    --storeId 'utNxUIAj' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'vswH3RBw' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '47' \
    --code 'SsoyA0FK' \
    --limit '91' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JmxGh8o0' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 20}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'TyeWh5hp' \
    --namespace $AB_NAMESPACE \
    --batchNo '11' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'aODhWunl' \
    --namespace $AB_NAMESPACE \
    --batchNo '83' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'rk9w1VlH' \
    --namespace $AB_NAMESPACE \
    --batchNo '60' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'nXBj6pIY' \
    --namespace $AB_NAMESPACE \
    --code 'D7m6kGUY' \
    --limit '34' \
    --offset '31' \
    --userId 'tcizxWiO' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'DLs4tb3y' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'Ez2x3ZJF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'vP74jisX' \
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
    --body '{"grpcServerAddress": "cJBm24oA"}' \
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
    --body '{"currencyCode": "66V5CPyV", "currencySymbol": "rPvQ6Ohh", "currencyType": "VIRTUAL", "decimals": 84, "localizationDescriptions": {"290CZARV": "mlfHofLt", "C6Kj9voC": "YbNsz9me", "qDWDxLf0": "rwPzwD9R"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'NE2PY5lX' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"TP0DQEo8": "KDllVUdt", "6EoMuzj9": "EIdgTYuf", "lB09BiNT": "AmN2MgX2"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'd01SqQMV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'e6AP7qx8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'PGV53L0q' \
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
    --body '{"data": [{"id": "eltqeqBS", "rewards": [{"currency": {"currencyCode": "mDxeS4HD", "namespace": "BhrpogQw"}, "item": {"itemId": "xJHr4QWW", "itemSku": "zbTEYULo", "itemType": "6lG6fpd5"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "rAOBmUM8", "namespace": "9XwaBn3K"}, "item": {"itemId": "JyWV30XU", "itemSku": "nAWigQhJ", "itemType": "X24KzrBK"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "bVZMBhij", "namespace": "fNBCkafz"}, "item": {"itemId": "fwEU2occ", "itemSku": "6hoZ8WAn", "itemType": "sCv2ii6N"}, "quantity": 42, "type": "ITEM"}]}, {"id": "PnqEOZyF", "rewards": [{"currency": {"currencyCode": "CEK7TO6V", "namespace": "6GwfFNXe"}, "item": {"itemId": "kRHOsGQO", "itemSku": "pYhmRzdD", "itemType": "L2f9TFGb"}, "quantity": 48, "type": "CURRENCY"}, {"currency": {"currencyCode": "cUUXqdmi", "namespace": "XraT2bB3"}, "item": {"itemId": "EQDRPI9s", "itemSku": "jtv7CehS", "itemType": "7TayfKa7"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "YEhZW1sY", "namespace": "whvz4zHX"}, "item": {"itemId": "ajKVO1M7", "itemSku": "QvyH2azm", "itemType": "GsdVsJel"}, "quantity": 70, "type": "ITEM"}]}, {"id": "rCWzd5Fa", "rewards": [{"currency": {"currencyCode": "e8uVe4kK", "namespace": "rPpGXuna"}, "item": {"itemId": "4E2HTmMa", "itemSku": "ETZV9Hwk", "itemType": "LMiiAplC"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "8vR3f3eX", "namespace": "fI1u4d4y"}, "item": {"itemId": "QbEODXqb", "itemSku": "HAJEeX9c", "itemType": "Zm3iD7xM"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "ssabZOAe", "namespace": "1EB9JpL0"}, "item": {"itemId": "WDkLEbEx", "itemSku": "9gkfmhZh", "itemType": "WC06Rn75"}, "quantity": 28, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"Yb3BtKaw": "gjpsLjVa", "Xsf0SaF6": "vVKwKgJX", "2yNIuQXA": "lcrOM7I9"}}, {"platform": "XBOX", "platformDlcIdMap": {"EMGsLfRA": "pSINbo8r", "tMfL7VrL": "5n1g1vGk", "I1qTe9vj": "QlYMOFOX"}}, {"platform": "XBOX", "platformDlcIdMap": {"FDiI5V3q": "C0bfCgHV", "gC0P2Eai": "IFZR2TxM", "RcXxC7st": "vohpzpmt"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'pMJzEDsN' \
    --itemId '["TfssPEKg", "PhfoB3xp", "3jPJZfnY"]' \
    --limit '11' \
    --offset '95' \
    --userId 'rY6N8MsC' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'jbX5R2hM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '2' \
    --status 'FAIL' \
    --userId 'MJoMAouM' \
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
    --body '{"bundleId": "j9OsQni1", "password": "e8qwvoWe"}' \
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
    --body '{"sandboxId": "WXTB7xI4"}' \
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
    --body '{"applicationName": "CrOjOFME", "serviceAccountId": "VB3TZbRJ"}' \
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
    --body '{"data": [{"itemIdentity": "rL1VRlD3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uul8oOG6": "f54DCD8G", "qr8AbxfZ": "6CaoDVl8", "jrMbZzSn": "UGruztCR"}}, {"itemIdentity": "3b1BWZPf", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"f7mw1Zuv": "LUqAVc14", "IqECRe09": "NzoNYC5i", "GGK10K6i": "RpUkRRXR"}}, {"itemIdentity": "fhBfCtPm", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"O9Y7wIKH": "f0HEpnng", "GoFrfFkz": "SxQx0zJC", "PztoAnF1": "raljQYX3"}}]}' \
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
    --body '{"environment": "pO1YOQGC"}' \
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
    --body '{"appId": "ADxSymcr", "publisherAuthenticationKey": "gh1Q7Wy5"}' \
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
    --body '{"clientId": "LvKo9Mj7", "clientSecret": "Ce71Zcc9", "organizationId": "fmOZXiPY"}' \
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
    --body '{"relyingPartyCert": "yLKEDtrf"}' \
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
    --password 'XbF54em5' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '9awurN5v' \
    --itemId 'MsPX7Pd1' \
    --itemType 'OPTIONBOX' \
    --endTime 'Lhgguggy' \
    --startTime 'adChorZ6' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'xq5emhET' \
    --itemId 'hxz8bS9d' \
    --itemType 'SEASON' \
    --endTime 'WFYJKnmH' \
    --startTime 'yb5RvVuN' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '7cQwzWTf' \
    --body '{"categoryPath": "8rfGeMSA", "targetItemId": "SqWkTPaH", "targetNamespace": "CXZPiU8T"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ET4K6XEN' \
    --body '{"appId": "e4GwYhqf", "appType": "SOFTWARE", "baseAppId": "GU4WGqLy", "boothName": "bSUmP9fj", "categoryPath": "TodZXxMe", "clazz": "9QyMeWBp", "displayOrder": 95, "entitlementType": "DURABLE", "ext": {"dtRYXqpv": {}, "PRbtaAyh": {}, "7zbYeAsd": {}}, "features": ["wPoPxs0F", "FuxYiDDS", "XWYvFsi6"], "images": [{"as": "Dw5iS7eJ", "caption": "dHAXxapn", "height": 60, "imageUrl": "a9LWaseH", "smallImageUrl": "JNH0qacH", "width": 10}, {"as": "zi8Gikbg", "caption": "Upg8IwDd", "height": 33, "imageUrl": "xPOWmhEM", "smallImageUrl": "sqOfCuAF", "width": 3}, {"as": "KrZhZ7tu", "caption": "qIeMzIkE", "height": 93, "imageUrl": "418Acy0w", "smallImageUrl": "KnQu1eRt", "width": 59}], "itemIds": ["7i2PLexz", "6W8k7Ri9", "Fd46MThv"], "itemQty": {"h9h9McEF": 55, "fUenWFlI": 17, "0OgHr51e": 56}, "itemType": "SEASON", "listable": true, "localizations": {"t5sGFGEn": {"description": "UIAu9sEV", "localExt": {"H6QMoCvc": {}, "dWeEJVVt": {}, "x3iOSSfO": {}}, "longDescription": "oue7HF3v", "title": "GcywuoZE"}, "Vp3POQbJ": {"description": "7TKAk6bF", "localExt": {"QJq8VT8P": {}, "Q5fn0rnz": {}, "jHtMEr7R": {}}, "longDescription": "vAWgVoKh", "title": "VRt5sOdw"}, "C6MNjC1F": {"description": "LBmSDmcq", "localExt": {"0KcKcJnq": {}, "HInnI7K9": {}, "3ozR7xCY": {}}, "longDescription": "haVSlbbD", "title": "x7ftfSID"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 98, "itemId": "gUpfT2N7", "itemSku": "SQJrurwu", "itemType": "U9bWseen"}, {"count": 11, "itemId": "YKqIuo57", "itemSku": "9szYbAvT", "itemType": "iLdUtRK7"}, {"count": 2, "itemId": "RFnFLnVW", "itemSku": "kUW2h31E", "itemType": "dAoGGiC3"}], "name": "6kdbkZXE", "odds": 0.16716572286777276, "type": "REWARD_GROUP", "weight": 15}, {"lootBoxItems": [{"count": 90, "itemId": "MtbK6wp8", "itemSku": "4PrsXVJy", "itemType": "d9krYQDA"}, {"count": 37, "itemId": "RgnByI4p", "itemSku": "oGQ51dQ5", "itemType": "ZFMvcGXU"}, {"count": 16, "itemId": "DI2LnMtB", "itemSku": "MNBrnhKN", "itemType": "gLjOwhqP"}], "name": "c7kF2cI4", "odds": 0.3873650491634335, "type": "REWARD_GROUP", "weight": 41}, {"lootBoxItems": [{"count": 46, "itemId": "aR57mtQo", "itemSku": "LjLCBGuR", "itemType": "x7abGFMg"}, {"count": 18, "itemId": "Md1JFnet", "itemSku": "9uWXUzYz", "itemType": "C4r3ZYOb"}, {"count": 9, "itemId": "1zRVRc6t", "itemSku": "3bO4GxpE", "itemType": "yNP9REGi"}], "name": "KpDs2UEV", "odds": 0.35033893309257824, "type": "REWARD", "weight": 18}], "rollFunction": "DEFAULT"}, "maxCount": 34, "maxCountPerUser": 45, "name": "0m1YM4Cq", "optionBoxConfig": {"boxItems": [{"count": 44, "itemId": "GCOw5lrI", "itemSku": "iSJnkRIO", "itemType": "JjgfRiJi"}, {"count": 68, "itemId": "rpHSNs2N", "itemSku": "xqLV1xC7", "itemType": "t9AhZd1K"}, {"count": 95, "itemId": "XIPNUV4S", "itemSku": "BVsJfZCM", "itemType": "Y0Ql6mMZ"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 11, "fixedTrialCycles": 23, "graceDays": 70}, "regionData": {"ctk9eLhv": [{"currencyCode": "NdgbYa3C", "currencyNamespace": "c1O6BuSv", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1971-08-29T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-11-10T00:00:00Z", "discountedPrice": 77, "expireAt": "1975-11-29T00:00:00Z", "price": 96, "purchaseAt": "1971-01-16T00:00:00Z", "trialPrice": 20}, {"currencyCode": "8yXnws3u", "currencyNamespace": "nLRPdL3O", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1991-05-03T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1998-05-06T00:00:00Z", "discountedPrice": 51, "expireAt": "1984-01-10T00:00:00Z", "price": 75, "purchaseAt": "1980-05-10T00:00:00Z", "trialPrice": 65}, {"currencyCode": "AEDV8f6H", "currencyNamespace": "3SDoQFUR", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1980-01-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1974-08-08T00:00:00Z", "discountedPrice": 45, "expireAt": "1995-01-25T00:00:00Z", "price": 38, "purchaseAt": "1996-05-18T00:00:00Z", "trialPrice": 90}], "ape6wrhr": [{"currencyCode": "pzmqPZhq", "currencyNamespace": "DpLZ1qnn", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1992-06-21T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-10-29T00:00:00Z", "discountedPrice": 58, "expireAt": "1991-05-21T00:00:00Z", "price": 47, "purchaseAt": "1988-02-13T00:00:00Z", "trialPrice": 47}, {"currencyCode": "orFcvbaU", "currencyNamespace": "kYKrQamW", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1990-12-24T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1995-11-23T00:00:00Z", "discountedPrice": 94, "expireAt": "1971-08-04T00:00:00Z", "price": 6, "purchaseAt": "1986-06-13T00:00:00Z", "trialPrice": 56}, {"currencyCode": "FxORPaRM", "currencyNamespace": "cnWrLyyc", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1971-09-14T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1975-11-06T00:00:00Z", "discountedPrice": 87, "expireAt": "1975-05-14T00:00:00Z", "price": 7, "purchaseAt": "1973-03-03T00:00:00Z", "trialPrice": 81}], "ztJBmUFG": [{"currencyCode": "yIFnvCS8", "currencyNamespace": "Tas9W5uK", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1997-03-14T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1985-12-05T00:00:00Z", "discountedPrice": 61, "expireAt": "1998-09-30T00:00:00Z", "price": 3, "purchaseAt": "1975-06-13T00:00:00Z", "trialPrice": 58}, {"currencyCode": "cwsjTBxV", "currencyNamespace": "lOryA0JG", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1997-03-06T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-09-08T00:00:00Z", "discountedPrice": 28, "expireAt": "1988-08-21T00:00:00Z", "price": 88, "purchaseAt": "1992-11-05T00:00:00Z", "trialPrice": 18}, {"currencyCode": "alMPtdmd", "currencyNamespace": "lGsI5Nj3", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1982-09-28T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1989-04-21T00:00:00Z", "discountedPrice": 85, "expireAt": "1981-08-04T00:00:00Z", "price": 14, "purchaseAt": "1973-08-31T00:00:00Z", "trialPrice": 79}]}, "saleConfig": {"currencyCode": "mNqv0u6m", "price": 68}, "seasonType": "TIER", "sellable": true, "sku": "GtqlpUrz", "stackable": true, "status": "ACTIVE", "tags": ["d7lyUeFI", "PyjPuadp", "BKoSUnIv"], "targetCurrencyCode": "dbIAbeUv", "targetNamespace": "Cqs9ReV7", "thumbnailUrl": "C3uI631p", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'yifE4ONY' \
    --appId 'j52GXzEu' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate '0W80hldR' \
    --baseAppId 'UBEvGOPc' \
    --categoryPath 'aqyrWWoR' \
    --features 'xJPH90u6' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --limit '16' \
    --offset '73' \
    --region 'w2bdhK9j' \
    --sortBy '["createdAt:desc", "name", "updatedAt:asc"]' \
    --storeId 'mDTmbb9i' \
    --tags 'w1mijdp8' \
    --targetNamespace 'el3x5hQT' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["GGX9j7vC", "uJZ4XraC", "gvpV1jSh"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DDGOz7a9' \
    --sku 'thgmNLKi' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'xYrv3bKq' \
    --populateBundle 'true' \
    --region 'axcgyQB9' \
    --storeId 'dLk5GsjE' \
    --sku '7wPrD83N' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'oWMoAhLP' \
    --sku 'mvE6qFi5' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["bpx8U7XT", "CZd7GMHd", "TnyBAm4R"]' \
    --storeId 'r7Fy5poN' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'yGOwdQJe' \
    --region 'igf7xRS6' \
    --storeId 'auLGbO2o' \
    --itemIds '27hxTuNu' \
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
    --userId 'jRQXOlz6' \
    --body '{"itemIds": ["pvOAZJqr", "pXyX4YJI", "ei9i1vrO"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Rs5DAndb' \
    --body '{"changes": [{"itemIdentities": ["CaCQ1UtA", "D2H6Rflo", "2l1J7MWE"], "itemIdentityType": "ITEM_ID", "regionData": {"cajjfHSn": [{"currencyCode": "DHcKzdxo", "currencyNamespace": "8M9zQYJ0", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1995-09-05T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1985-12-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1974-12-26T00:00:00Z", "price": 23, "purchaseAt": "1993-08-12T00:00:00Z", "trialPrice": 66}, {"currencyCode": "FkPekorV", "currencyNamespace": "23IpeStb", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1975-05-01T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1979-12-21T00:00:00Z", "discountedPrice": 70, "expireAt": "1991-05-02T00:00:00Z", "price": 97, "purchaseAt": "1971-09-16T00:00:00Z", "trialPrice": 29}, {"currencyCode": "55GF0Lrq", "currencyNamespace": "cKM68bOJ", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1992-08-21T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1981-06-20T00:00:00Z", "discountedPrice": 62, "expireAt": "1986-03-07T00:00:00Z", "price": 67, "purchaseAt": "1991-03-16T00:00:00Z", "trialPrice": 10}], "cB7TX3g4": [{"currencyCode": "tLF6VXrV", "currencyNamespace": "d9Aa710l", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1992-08-20T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1992-11-23T00:00:00Z", "discountedPrice": 40, "expireAt": "1985-03-22T00:00:00Z", "price": 19, "purchaseAt": "1989-02-10T00:00:00Z", "trialPrice": 73}, {"currencyCode": "nsolYaoZ", "currencyNamespace": "4Egy9X3c", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1973-07-08T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1978-12-18T00:00:00Z", "discountedPrice": 3, "expireAt": "1994-04-26T00:00:00Z", "price": 45, "purchaseAt": "1979-08-04T00:00:00Z", "trialPrice": 38}, {"currencyCode": "7fHK0UFW", "currencyNamespace": "pRhtknpx", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1983-12-13T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1971-10-16T00:00:00Z", "discountedPrice": 5, "expireAt": "1988-01-27T00:00:00Z", "price": 99, "purchaseAt": "1972-10-17T00:00:00Z", "trialPrice": 1}], "vn3Gw5HP": [{"currencyCode": "i2frrjS8", "currencyNamespace": "DDOkO6OM", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1998-06-14T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1996-09-15T00:00:00Z", "discountedPrice": 88, "expireAt": "1993-07-02T00:00:00Z", "price": 82, "purchaseAt": "1989-05-03T00:00:00Z", "trialPrice": 31}, {"currencyCode": "M4CLPsrH", "currencyNamespace": "cztrMQp0", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1977-09-12T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1993-05-30T00:00:00Z", "discountedPrice": 33, "expireAt": "1971-06-21T00:00:00Z", "price": 5, "purchaseAt": "1996-03-15T00:00:00Z", "trialPrice": 79}, {"currencyCode": "WqkyJBHj", "currencyNamespace": "wDzENf65", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1988-06-15T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1981-01-03T00:00:00Z", "discountedPrice": 64, "expireAt": "1990-06-08T00:00:00Z", "price": 33, "purchaseAt": "1993-07-08T00:00:00Z", "trialPrice": 47}]}}, {"itemIdentities": ["nxd5Gvi3", "F1bl9fLs", "e3qR3qcC"], "itemIdentityType": "ITEM_ID", "regionData": {"VQeINiPj": [{"currencyCode": "syHhTjHp", "currencyNamespace": "isx8UH7N", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1971-09-02T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1977-08-13T00:00:00Z", "discountedPrice": 72, "expireAt": "1990-09-10T00:00:00Z", "price": 13, "purchaseAt": "1998-08-21T00:00:00Z", "trialPrice": 97}, {"currencyCode": "wL1hixb5", "currencyNamespace": "IDJ8xa7X", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1989-05-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1992-06-28T00:00:00Z", "discountedPrice": 11, "expireAt": "1973-11-11T00:00:00Z", "price": 76, "purchaseAt": "1972-06-17T00:00:00Z", "trialPrice": 60}, {"currencyCode": "UBi2p7LZ", "currencyNamespace": "gGUrmdcS", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1990-05-06T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1996-03-26T00:00:00Z", "discountedPrice": 31, "expireAt": "1987-02-17T00:00:00Z", "price": 12, "purchaseAt": "1984-05-31T00:00:00Z", "trialPrice": 82}], "fvGEtidy": [{"currencyCode": "JKHcOC38", "currencyNamespace": "eobelqIx", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1999-02-16T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1987-06-20T00:00:00Z", "discountedPrice": 99, "expireAt": "1979-04-02T00:00:00Z", "price": 61, "purchaseAt": "1972-01-10T00:00:00Z", "trialPrice": 13}, {"currencyCode": "fRLcXMOM", "currencyNamespace": "x01P1ags", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1997-02-04T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1992-03-13T00:00:00Z", "discountedPrice": 38, "expireAt": "1993-12-26T00:00:00Z", "price": 49, "purchaseAt": "1995-04-13T00:00:00Z", "trialPrice": 54}, {"currencyCode": "UndBv5t1", "currencyNamespace": "TUrYzCer", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1977-01-31T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1988-03-20T00:00:00Z", "discountedPrice": 45, "expireAt": "1989-04-13T00:00:00Z", "price": 32, "purchaseAt": "1990-04-21T00:00:00Z", "trialPrice": 47}], "VA9d4QoO": [{"currencyCode": "6T0vHyP9", "currencyNamespace": "JuC0jpgJ", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1977-01-06T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1996-02-11T00:00:00Z", "discountedPrice": 67, "expireAt": "1972-08-06T00:00:00Z", "price": 82, "purchaseAt": "1990-04-26T00:00:00Z", "trialPrice": 82}, {"currencyCode": "Is2l32N8", "currencyNamespace": "IwDAC0lv", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1975-03-22T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1979-07-12T00:00:00Z", "discountedPrice": 84, "expireAt": "1971-11-14T00:00:00Z", "price": 18, "purchaseAt": "1997-12-03T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ZD2wXP4u", "currencyNamespace": "fJLTNLC1", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1987-12-04T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-01-13T00:00:00Z", "discountedPrice": 97, "expireAt": "1973-01-10T00:00:00Z", "price": 80, "purchaseAt": "1997-12-08T00:00:00Z", "trialPrice": 60}]}}, {"itemIdentities": ["PBmQlMqn", "XMiCFeBr", "ll0lv053"], "itemIdentityType": "ITEM_SKU", "regionData": {"SOlLHj7L": [{"currencyCode": "Nws0yNqB", "currencyNamespace": "5jEzESsm", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1979-09-23T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1986-12-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1972-02-11T00:00:00Z", "price": 6, "purchaseAt": "1982-05-18T00:00:00Z", "trialPrice": 32}, {"currencyCode": "zNn5nYKI", "currencyNamespace": "8sWR6TiW", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1986-05-24T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1973-12-14T00:00:00Z", "discountedPrice": 75, "expireAt": "1995-01-10T00:00:00Z", "price": 31, "purchaseAt": "1993-09-04T00:00:00Z", "trialPrice": 59}, {"currencyCode": "Zs3OwpUB", "currencyNamespace": "1t1gQrV4", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1987-10-22T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1992-08-29T00:00:00Z", "discountedPrice": 67, "expireAt": "1981-09-26T00:00:00Z", "price": 14, "purchaseAt": "1983-10-22T00:00:00Z", "trialPrice": 54}], "AVtlIMPT": [{"currencyCode": "QiFsmnwF", "currencyNamespace": "2tkPPDTe", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1978-06-26T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1982-07-10T00:00:00Z", "discountedPrice": 71, "expireAt": "1971-04-19T00:00:00Z", "price": 71, "purchaseAt": "1984-06-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "vmGy1XUc", "currencyNamespace": "ljMvXyGB", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1988-11-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1973-03-19T00:00:00Z", "discountedPrice": 19, "expireAt": "1991-08-15T00:00:00Z", "price": 52, "purchaseAt": "1978-03-08T00:00:00Z", "trialPrice": 7}, {"currencyCode": "yvPOvxFs", "currencyNamespace": "CxhLSszO", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1988-02-21T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1994-11-15T00:00:00Z", "discountedPrice": 54, "expireAt": "1985-09-19T00:00:00Z", "price": 7, "purchaseAt": "1997-07-18T00:00:00Z", "trialPrice": 58}], "UoFjNOmP": [{"currencyCode": "hsn6jOcA", "currencyNamespace": "mkcGTJQ9", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1993-09-06T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1998-07-14T00:00:00Z", "discountedPrice": 13, "expireAt": "1973-01-16T00:00:00Z", "price": 62, "purchaseAt": "1996-10-26T00:00:00Z", "trialPrice": 31}, {"currencyCode": "jlMQHdnN", "currencyNamespace": "P647rjr5", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1995-03-24T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1984-09-21T00:00:00Z", "discountedPrice": 16, "expireAt": "1987-10-22T00:00:00Z", "price": 66, "purchaseAt": "1983-07-04T00:00:00Z", "trialPrice": 23}, {"currencyCode": "SG5WFvol", "currencyNamespace": "85Puxunq", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1972-02-14T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1997-02-02T00:00:00Z", "discountedPrice": 56, "expireAt": "1978-09-21T00:00:00Z", "price": 75, "purchaseAt": "1979-11-16T00:00:00Z", "trialPrice": 66}]}}]}' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateRegionData' test.out

#- 95 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '23' \
    --offset '60' \
    --sortBy 'OiPXjxCr' \
    --storeId 'xAlh8ofV' \
    --keyword 'XIfQj9XT' \
    --language 'WFVehpt9' \
    > test.out 2>&1
eval_tap $? 95 'SearchItems' test.out

#- 96 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '8' \
    --offset '32' \
    --sortBy '["name:asc", "displayOrder:asc", "name:desc"]' \
    --storeId 'QMHR7xfR' \
    > test.out 2>&1
eval_tap $? 96 'QueryUncategorizedItems' test.out

#- 97 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'ubMQjpEF' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '96BgwM2O' \
    > test.out 2>&1
eval_tap $? 97 'GetItem' test.out

#- 98 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'm4UQ2YOG' \
    --namespace $AB_NAMESPACE \
    --storeId '8m3hYzSY' \
    --body '{"appId": "G8LnXDl7", "appType": "SOFTWARE", "baseAppId": "aQFjXdkB", "boothName": "KuEkkLPY", "categoryPath": "20nuYkAg", "clazz": "2yE0ueGe", "displayOrder": 61, "entitlementType": "DURABLE", "ext": {"oP3ZXK8Z": {}, "7OWdy6zf": {}, "hnnfpsb5": {}}, "features": ["Qr7quqKg", "fqJlCAz8", "x2GYGNaG"], "images": [{"as": "s1MGfCLw", "caption": "OzQblIYp", "height": 89, "imageUrl": "BozGaiy3", "smallImageUrl": "alUL0dZN", "width": 29}, {"as": "X7oqRdWh", "caption": "2fZrhnD9", "height": 69, "imageUrl": "g98kIfQo", "smallImageUrl": "UpS5sdkS", "width": 73}, {"as": "gML6XdDl", "caption": "VCzV7EIS", "height": 79, "imageUrl": "faabUBP6", "smallImageUrl": "nMZzyGhe", "width": 55}], "itemIds": ["OnMr27xN", "No2RvrKI", "7D2Tr2GM"], "itemQty": {"a5uMtRUb": 45, "KfDYvO2U": 20, "eOh4vjV1": 54}, "itemType": "LOOTBOX", "listable": false, "localizations": {"CXcguedO": {"description": "jC4y1F59", "localExt": {"2pDidHC8": {}, "lLqbysee": {}, "YobRrkhB": {}}, "longDescription": "VWzo8siK", "title": "DtKTz2aQ"}, "NbV8Q2zN": {"description": "isGKP8rR", "localExt": {"AjjIAAxq": {}, "bMfD4xGv": {}, "TQfTSaVA": {}}, "longDescription": "vVq52U7c", "title": "0G2tbc5E"}, "u5f5wJKs": {"description": "vMHAt26F", "localExt": {"DS6vWKEK": {}, "z3Z8DYfo": {}, "lt7S5W8h": {}}, "longDescription": "ymW0jeFt", "title": "pk8v9EKh"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 60, "itemId": "EoQkOE9X", "itemSku": "nu3uB112", "itemType": "H14mKHbc"}, {"count": 10, "itemId": "KoQd02CW", "itemSku": "rqs0OlY5", "itemType": "RZh3pFav"}, {"count": 16, "itemId": "YDcPIIaP", "itemSku": "sz8BRS0a", "itemType": "w97GvJAm"}], "name": "jOOkotOr", "odds": 0.9724900711257389, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 13, "itemId": "vOTYVOqL", "itemSku": "GDeI9Jvc", "itemType": "aeHiQe2R"}, {"count": 21, "itemId": "76HXCBuF", "itemSku": "s7iRv76C", "itemType": "Mnj7D09T"}, {"count": 79, "itemId": "fsdvHycd", "itemSku": "jPqThPTq", "itemType": "574MwVAH"}], "name": "hBo1nuAv", "odds": 0.06910311260065205, "type": "REWARD", "weight": 59}, {"lootBoxItems": [{"count": 84, "itemId": "6cv92xPA", "itemSku": "2OQheeCX", "itemType": "jFVObtXo"}, {"count": 84, "itemId": "IEtq9vxo", "itemSku": "z7BlVaNw", "itemType": "Xi2BAPXw"}, {"count": 100, "itemId": "rnzcwvjP", "itemSku": "eVw1v11R", "itemType": "9tlRmmzC"}], "name": "sNaFkbaL", "odds": 0.27708225210630333, "type": "REWARD", "weight": 8}], "rollFunction": "DEFAULT"}, "maxCount": 1, "maxCountPerUser": 22, "name": "BDMWZsIR", "optionBoxConfig": {"boxItems": [{"count": 31, "itemId": "BhWREJQv", "itemSku": "r9LMG53o", "itemType": "4Cz5S9Xc"}, {"count": 23, "itemId": "g1hJTiiT", "itemSku": "sLTggYwE", "itemType": "sv1MvWMj"}, {"count": 79, "itemId": "wpmUCMqE", "itemSku": "UbxOrfIu", "itemType": "f4E6Zjee"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 94, "fixedTrialCycles": 76, "graceDays": 15}, "regionData": {"Amx0Hdfv": [{"currencyCode": "zwZVy2LM", "currencyNamespace": "0cqyaYUj", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1972-01-22T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1983-07-04T00:00:00Z", "discountedPrice": 80, "expireAt": "1977-05-25T00:00:00Z", "price": 2, "purchaseAt": "1992-11-24T00:00:00Z", "trialPrice": 2}, {"currencyCode": "nNrzPCxP", "currencyNamespace": "Vq9Ki4Bo", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1998-11-08T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1977-11-28T00:00:00Z", "discountedPrice": 11, "expireAt": "1997-11-10T00:00:00Z", "price": 31, "purchaseAt": "1983-07-12T00:00:00Z", "trialPrice": 76}, {"currencyCode": "9eon1CmA", "currencyNamespace": "Z0IkbZTx", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1995-12-24T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-05-30T00:00:00Z", "discountedPrice": 36, "expireAt": "1984-02-28T00:00:00Z", "price": 30, "purchaseAt": "1980-08-08T00:00:00Z", "trialPrice": 79}], "cWuslFeX": [{"currencyCode": "yTsCYqnZ", "currencyNamespace": "8hwgyUB6", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1991-05-20T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1995-02-17T00:00:00Z", "discountedPrice": 66, "expireAt": "1992-01-04T00:00:00Z", "price": 31, "purchaseAt": "1977-03-19T00:00:00Z", "trialPrice": 73}, {"currencyCode": "3UaqtHhF", "currencyNamespace": "VpLdpqjV", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1976-05-27T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1985-04-06T00:00:00Z", "discountedPrice": 32, "expireAt": "1998-10-10T00:00:00Z", "price": 48, "purchaseAt": "1987-10-09T00:00:00Z", "trialPrice": 75}, {"currencyCode": "MMBqBMI1", "currencyNamespace": "i8qPc9KJ", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1980-02-13T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1999-11-08T00:00:00Z", "discountedPrice": 89, "expireAt": "1980-03-11T00:00:00Z", "price": 98, "purchaseAt": "1995-03-01T00:00:00Z", "trialPrice": 41}], "bdEHzcTN": [{"currencyCode": "kna4XtSN", "currencyNamespace": "eRGeCZsb", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1986-09-06T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1972-05-15T00:00:00Z", "discountedPrice": 69, "expireAt": "1986-01-03T00:00:00Z", "price": 39, "purchaseAt": "1977-07-27T00:00:00Z", "trialPrice": 31}, {"currencyCode": "pLjrimaW", "currencyNamespace": "hmsS8A3k", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1995-09-23T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1987-10-10T00:00:00Z", "discountedPrice": 21, "expireAt": "1987-10-27T00:00:00Z", "price": 61, "purchaseAt": "1989-06-29T00:00:00Z", "trialPrice": 87}, {"currencyCode": "aiYwBSEZ", "currencyNamespace": "XTZqAWWf", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1997-11-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1975-03-07T00:00:00Z", "discountedPrice": 40, "expireAt": "1987-01-14T00:00:00Z", "price": 73, "purchaseAt": "1974-01-26T00:00:00Z", "trialPrice": 79}]}, "saleConfig": {"currencyCode": "fgu6qusl", "price": 50}, "seasonType": "PASS", "sellable": false, "sku": "SpXlCNY7", "stackable": false, "status": "ACTIVE", "tags": ["HFtUvhiN", "guhq3gQF", "a2L3314N"], "targetCurrencyCode": "GhlmU7NI", "targetNamespace": "FCm20ksq", "thumbnailUrl": "1bcXwGcg", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateItem' test.out

#- 99 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'XsSfXN1X' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '7YfxjAqC' \
    > test.out 2>&1
eval_tap $? 99 'DeleteItem' test.out

#- 100 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'jYfuBG8o' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "WxkYFAiU"}' \
    > test.out 2>&1
eval_tap $? 100 'AcquireItem' test.out

#- 101 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Ul4aAs6p' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'PA3omZKn' \
    > test.out 2>&1
eval_tap $? 101 'GetApp' test.out

#- 102 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '6vGFI7Ld' \
    --namespace $AB_NAMESPACE \
    --storeId 'slnKSlhT' \
    --body '{"carousel": [{"alt": "1kDjVQOI", "previewUrl": "9xgrM8j5", "thumbnailUrl": "axv2DoR5", "type": "image", "url": "px24aA8H", "videoSource": "youtube"}, {"alt": "8BAu0RL9", "previewUrl": "CgQzdHHM", "thumbnailUrl": "QLZH4208", "type": "image", "url": "sYKCaxKD", "videoSource": "generic"}, {"alt": "F5yYga4s", "previewUrl": "GhCGDwhm", "thumbnailUrl": "eBEV2f9O", "type": "video", "url": "pAQYucX4", "videoSource": "vimeo"}], "developer": "mVf0jU9m", "forumUrl": "gvug0WNM", "genres": ["Simulation", "Sports", "MassivelyMultiplayer"], "localizations": {"HOj5ziJL": {"announcement": "9IrjHGuv", "slogan": "Qimz22y6"}, "KqZN60YO": {"announcement": "SAfywOmj", "slogan": "Fcp989Nt"}, "N2IWskJa": {"announcement": "nWJmQMLl", "slogan": "gKqdLMU0"}}, "platformRequirements": {"obIBf81V": [{"additionals": "ROTvnzHT", "directXVersion": "yUmeI0tl", "diskSpace": "aMVmcV4d", "graphics": "XT2ZKpM3", "label": "CXhxbaX8", "osVersion": "ozXliKd6", "processor": "vNZzxZdn", "ram": "5YP11cTT", "soundCard": "I2MSbk6a"}, {"additionals": "4BJL7BNw", "directXVersion": "UDNnMK9T", "diskSpace": "XSQGwHmP", "graphics": "ATIKFGJ9", "label": "duceBYV4", "osVersion": "U1iKfCCq", "processor": "8jgLX75e", "ram": "caJvA8PZ", "soundCard": "EBEmAX9b"}, {"additionals": "3Y9iYZNa", "directXVersion": "XKCspk0s", "diskSpace": "mv1KHmNT", "graphics": "s8tqjfx1", "label": "tu59Rw2G", "osVersion": "0jzMv8zL", "processor": "LVD3kS9w", "ram": "chJFRSNl", "soundCard": "HU3uyoHk"}], "y78bBhY2": [{"additionals": "ZU7gtjWl", "directXVersion": "CsANwEHx", "diskSpace": "jo4FeKkf", "graphics": "JpprUpWI", "label": "Rqrxwv2I", "osVersion": "kt0NVVCB", "processor": "LwJmIhWU", "ram": "ahgwXc9q", "soundCard": "tJRzH1ie"}, {"additionals": "i4vmbnM1", "directXVersion": "0FZhFtAq", "diskSpace": "XYM0H2s0", "graphics": "bhoOarrB", "label": "2XNH4apD", "osVersion": "EoeLUmlP", "processor": "pW5voAQU", "ram": "GTT3mDSQ", "soundCard": "dLANisJz"}, {"additionals": "tWzkVCYT", "directXVersion": "hwZQzEwF", "diskSpace": "4BA5LJSM", "graphics": "GTvYkXkO", "label": "1FfulL7q", "osVersion": "fgt17o0T", "processor": "RaLMXUwQ", "ram": "RmY1Tedt", "soundCard": "1DlMq1l2"}], "jWcvftKC": [{"additionals": "WN5i0LDK", "directXVersion": "sFYpbonC", "diskSpace": "gdGIVRgE", "graphics": "GLE8gZnG", "label": "ywETzb2P", "osVersion": "yb3lRyLE", "processor": "7qL3zcJ7", "ram": "6yIuIPpM", "soundCard": "W8I3BmEZ"}, {"additionals": "4OjmVX9s", "directXVersion": "WiPCd57f", "diskSpace": "QtajVKHM", "graphics": "eUdxMIPn", "label": "ZpS7hChg", "osVersion": "vyw437gA", "processor": "qLgPIGRq", "ram": "PS4GwEpB", "soundCard": "SRyznD0U"}, {"additionals": "x0mhHiN4", "directXVersion": "sEdDnu94", "diskSpace": "2YLS79eN", "graphics": "SnBF9PAR", "label": "d5LNnVxx", "osVersion": "t9hponum", "processor": "Pgxh9xIH", "ram": "t6QN4tVk", "soundCard": "Eeoci49q"}]}, "platforms": ["IOS", "Windows", "MacOS"], "players": ["LocalCoop", "CrossPlatformMulti", "Coop"], "primaryGenre": "Adventure", "publisher": "SSbpcIke", "releaseDate": "1971-03-30T00:00:00Z", "websiteUrl": "se5d54wx"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateApp' test.out

#- 103 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'DFbGLcGq' \
    --namespace $AB_NAMESPACE \
    --storeId 'deumnA8t' \
    > test.out 2>&1
eval_tap $? 103 'DisableItem' test.out

#- 104 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'fdbyfCyG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetItemDynamicData' test.out

#- 105 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'vcN7hKHp' \
    --namespace $AB_NAMESPACE \
    --storeId 'pA5cOq6M' \
    > test.out 2>&1
eval_tap $? 105 'EnableItem' test.out

#- 106 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'DX2Sn8AJ' \
    --itemId 'tD2kuDJ8' \
    --namespace $AB_NAMESPACE \
    --storeId 'CXuzu7n7' \
    > test.out 2>&1
eval_tap $? 106 'FeatureItem' test.out

#- 107 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'r2HNiUqR' \
    --itemId 'KVfOcnCU' \
    --namespace $AB_NAMESPACE \
    --storeId '16gxjo38' \
    > test.out 2>&1
eval_tap $? 107 'DefeatureItem' test.out

#- 108 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'jNglQv69' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'GXZv0bsD' \
    --populateBundle 'true' \
    --region 'SCwzYkMo' \
    --storeId 'Il49TeaJ' \
    > test.out 2>&1
eval_tap $? 108 'GetLocaleItem' test.out

#- 109 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'hcsZzSWb' \
    --namespace $AB_NAMESPACE \
    --storeId 'VQbkDcez' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 24, "comparison": "isGreaterThanOrEqual", "name": "3tYcdyiQ", "predicateType": "SeasonTierPredicate", "value": "jvVLzBoV", "values": ["3oFaRPbm", "ndlvwMwA", "LXdwScLS"]}, {"anyOf": 28, "comparison": "excludes", "name": "sFWKr734", "predicateType": "SeasonPassPredicate", "value": "vRCb9inU", "values": ["y4if5UwZ", "F117pEok", "26CTGwGj"]}, {"anyOf": 80, "comparison": "includes", "name": "jstNMVy6", "predicateType": "EntitlementPredicate", "value": "weOfOjgc", "values": ["pE0kFboJ", "bqktRAM1", "aCDPk1t5"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "is", "name": "0Wkgg2bG", "predicateType": "EntitlementPredicate", "value": "JmAyRdT5", "values": ["tl1zAMC7", "a8NvJkhv", "VGEwni5X"]}, {"anyOf": 55, "comparison": "is", "name": "BbwkWBiA", "predicateType": "EntitlementPredicate", "value": "THUvLKJ3", "values": ["vB3t4R6g", "EC9xwsoA", "zwYKejox"]}, {"anyOf": 87, "comparison": "isNot", "name": "FuzwRKzc", "predicateType": "SeasonTierPredicate", "value": "MGJ1Cf6I", "values": ["cGyYt7pg", "CsbgSj1N", "RWtAeRwS"]}]}, {"operator": "and", "predicates": [{"anyOf": 78, "comparison": "isLessThan", "name": "LvpRsQkA", "predicateType": "SeasonTierPredicate", "value": "Tk0IXFw8", "values": ["iqlm2UEt", "HeKwV7yr", "CxfX5TQP"]}, {"anyOf": 79, "comparison": "includes", "name": "chHILLHX", "predicateType": "SeasonTierPredicate", "value": "VFWnBd2c", "values": ["BSnnKQiU", "1Ao2qx4T", "NqBMC2oW"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "0jEebcr5", "predicateType": "SeasonPassPredicate", "value": "8Ni2YBgz", "values": ["cZcGZGr9", "uvTGUgP9", "2YUB5nnc"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 109 'UpdateItemPurchaseCondition' test.out

#- 110 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '1tnzQIHD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "A7CTPiJQ"}' \
    > test.out 2>&1
eval_tap $? 110 'ReturnItem' test.out

#- 111 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --name 'fGMkoc07' \
    --offset '77' \
    --tag 'OdiNsXHw' \
    > test.out 2>&1
eval_tap $? 111 'QueryKeyGroups' test.out

#- 112 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EYNSoAT0", "name": "JsNsODDo", "status": "ACTIVE", "tags": ["YuhurnZ9", "EyKub9Me", "tmxYUdt0"]}' \
    > test.out 2>&1
eval_tap $? 112 'CreateKeyGroup' test.out

#- 113 GetKeyGroupByBoothName
eval_tap 0 113 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 114 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'iJB3sPi9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroup' test.out

#- 115 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'xlxz3khm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dpexvTLn", "name": "FGeLa9TG", "status": "INACTIVE", "tags": ["jysPgk8j", "Q4G0YvYQ", "mZdVWcHu"]}' \
    > test.out 2>&1
eval_tap $? 115 'UpdateKeyGroup' test.out

#- 116 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'FJer3W7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroupDynamic' test.out

#- 117 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'xu3AfxCL' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '92' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 117 'ListKeys' test.out

#- 118 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'XjgMvphC' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 118 'UploadKeys' test.out

#- 119 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'UIpS9Lwf' \
    --limit '6' \
    --offset '18' \
    --orderNos '["uvUohuhb", "jBSl0lFO", "nLR2vx9O"]' \
    --sortBy 'Pf3yD4Ak' \
    --startTime 'UPmkzfTl' \
    --status 'REFUNDED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 119 'QueryOrders' test.out

#- 120 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'GetOrderStatistics' test.out

#- 121 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZndoJcs2' \
    > test.out 2>&1
eval_tap $? 121 'GetOrder' test.out

#- 122 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YdroXsfO' \
    --body '{"description": "33TiglGJ"}' \
    > test.out 2>&1
eval_tap $? 122 'RefundOrder' test.out

#- 123 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentCallbackConfig' test.out

#- 124 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "zuHFp60m", "privateKey": "xBmbL5on"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdatePaymentCallbackConfig' test.out

#- 125 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'PeyzOsqR' \
    --externalId 'fYVDIaFC' \
    --limit '39' \
    --notificationSource 'XSOLLA' \
    --notificationType 'VN8IqvUb' \
    --offset '58' \
    --paymentOrderNo 'x5YhWgV8' \
    --startDate '4f6GcoxW' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentNotifications' test.out

#- 126 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'asKAFPJH' \
    --limit '6' \
    --offset '56' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 126 'QueryPaymentOrders' test.out

#- 127 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Ae2pyAaF", "currencyNamespace": "l1pvpxVE", "customParameters": {"7oIbxBFF": {}, "stFzOWfm": {}, "2gg8qmSl": {}}, "description": "QGPzi6qg", "extOrderNo": "5cdNZTxy", "extUserId": "TzkTFEKa", "itemType": "LOOTBOX", "language": "RFWY", "metadata": {"7chwIz4k": "ariGtkXU", "suxqKNVi": "7QzMFO8Q", "lV8rrgn3": "P2cFIJbY"}, "notifyUrl": "yMnsl8Gc", "omitNotification": true, "platform": "WUKwBrcf", "price": 87, "recurringPaymentOrderNo": "AaH9VIpE", "region": "NlLlE7OM", "returnUrl": "oQypJdMs", "sandbox": false, "sku": "BEiSqZeK", "subscriptionId": "If296jl5", "targetNamespace": "PriW5F10", "targetUserId": "gBq9WPS7", "title": "rRJQD8jy"}' \
    > test.out 2>&1
eval_tap $? 127 'CreatePaymentOrderByDedicated' test.out

#- 128 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'BnWmmAhy' \
    > test.out 2>&1
eval_tap $? 128 'ListExtOrderNoByExtTxId' test.out

#- 129 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6cmg66sd' \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrder' test.out

#- 130 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NtInJjgi' \
    --body '{"extTxId": "ajhSDdVf", "paymentMethod": "ebUKzu7a", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 130 'ChargePaymentOrder' test.out

#- 131 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Hc1wi7j4' \
    --body '{"description": "VncXyMRm"}' \
    > test.out 2>&1
eval_tap $? 131 'RefundPaymentOrderByDedicated' test.out

#- 132 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gCZwXTPA' \
    --body '{"amount": 57, "currencyCode": "beANORpF", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 59, "vat": 14}' \
    > test.out 2>&1
eval_tap $? 132 'SimulatePaymentOrderNotification' test.out

#- 133 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mvfojtyk' \
    > test.out 2>&1
eval_tap $? 133 'GetPaymentOrderChargeStatus' test.out

#- 134 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 134 'GetPlatformWalletConfig' test.out

#- 135 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Epic", "Other"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdatePlatformWalletConfig' test.out

#- 136 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 136 'ResetPlatformWalletConfig' test.out

#- 137 GetPaymentCallbackConfig1
samples/cli/sample-apps Platform getPaymentCallbackConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'GetPaymentCallbackConfig1' test.out

#- 138 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateRevocationConfig' test.out

#- 139 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'DeleteRevocationConfig' test.out

#- 140 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'AQHacruW' \
    --limit '1' \
    --offset '67' \
    --source 'OTHER' \
    --startTime 'Pmx065wT' \
    --status 'SUCCESS' \
    --transactionId '0wUDogpv' \
    --userId '4ORvPOXL' \
    > test.out 2>&1
eval_tap $? 140 'QueryRevocationHistories' test.out

#- 141 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Ig6dhwFV", "eventTopic": "T4dg3Ab6", "maxAwarded": 16, "maxAwardedPerUser": 45, "namespaceExpression": "5j1jF6kt", "rewardCode": "nlPzEgRx", "rewardConditions": [{"condition": "tJW9Q3ge", "conditionName": "E8FHdhsj", "eventName": "1UqqAlcR", "rewardItems": [{"duration": 59, "itemId": "CjoLZdrD", "quantity": 30}, {"duration": 61, "itemId": "woUBTUeV", "quantity": 0}, {"duration": 3, "itemId": "D89jP17r", "quantity": 28}]}, {"condition": "YSRsSTNu", "conditionName": "ZZ3Sd8Ur", "eventName": "987v4o8g", "rewardItems": [{"duration": 20, "itemId": "kLT95Nte", "quantity": 25}, {"duration": 93, "itemId": "jwK2QVzc", "quantity": 11}, {"duration": 62, "itemId": "kNzgBSuS", "quantity": 18}]}, {"condition": "AwGzcd3N", "conditionName": "7j6OXazJ", "eventName": "hcEN7hGL", "rewardItems": [{"duration": 35, "itemId": "ZHUoNnm8", "quantity": 62}, {"duration": 62, "itemId": "07hHt0BW", "quantity": 51}, {"duration": 59, "itemId": "bz6HJXP1", "quantity": 16}]}], "userIdExpression": "MLXWR0me"}' \
    > test.out 2>&1
eval_tap $? 141 'CreateReward' test.out

#- 142 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'mOEK889S' \
    --limit '97' \
    --offset '34' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 142 'QueryRewards' test.out

#- 143 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'ExportRewards' test.out

#- 144 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 144 'ImportRewards' test.out

#- 145 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'tU3t1if0' \
    > test.out 2>&1
eval_tap $? 145 'GetReward' test.out

#- 146 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'CNEMwL75' \
    --body '{"description": "ZpiddqdN", "eventTopic": "sq7bES8Y", "maxAwarded": 42, "maxAwardedPerUser": 37, "namespaceExpression": "Y1sKEfCn", "rewardCode": "4ecw4jJ4", "rewardConditions": [{"condition": "3IYc2T9L", "conditionName": "34R5gZVV", "eventName": "CwclUIUS", "rewardItems": [{"duration": 7, "itemId": "IFY9bkOK", "quantity": 40}, {"duration": 52, "itemId": "VCgkub44", "quantity": 79}, {"duration": 21, "itemId": "WOaQk7A0", "quantity": 32}]}, {"condition": "65bcqU3O", "conditionName": "sk95odhq", "eventName": "KEQEd7Fj", "rewardItems": [{"duration": 77, "itemId": "NgbDAqfc", "quantity": 46}, {"duration": 12, "itemId": "MWHUzVPD", "quantity": 61}, {"duration": 18, "itemId": "64ewNC3c", "quantity": 38}]}, {"condition": "8wxsT4Yh", "conditionName": "Gt0LXDUQ", "eventName": "KXZ2N2Io", "rewardItems": [{"duration": 18, "itemId": "YCil4zGP", "quantity": 95}, {"duration": 91, "itemId": "kgC3EyyU", "quantity": 64}, {"duration": 30, "itemId": "RBCADwYy", "quantity": 58}]}], "userIdExpression": "epzkknWH"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateReward' test.out

#- 147 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '8ROSaS80' \
    > test.out 2>&1
eval_tap $? 147 'DeleteReward' test.out

#- 148 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '5cdGhZNU' \
    --body '{"payload": {"Cqt3y7F3": {}, "U3soudgK": {}, "0iWOZ3iY": {}}}' \
    > test.out 2>&1
eval_tap $? 148 'CheckEventCondition' test.out

#- 149 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'UpfdyT4T' \
    --body '{"conditionName": "Z9GoicPN", "userId": "zy3iMv3F"}' \
    > test.out 2>&1
eval_tap $? 149 'DeleteRewardConditionRecord' test.out

#- 150 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'BmYNfJBo' \
    --limit '23' \
    --offset '30' \
    --start '135C42jo' \
    --storeId 'AFGKepaN' \
    --viewId 'TJjZz7Bb' \
    > test.out 2>&1
eval_tap $? 150 'QuerySections' test.out

#- 151 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'JpazMn0n' \
    --body '{"active": false, "displayOrder": 21, "endDate": "1988-05-03T00:00:00Z", "ext": {"zg803EVb": {}, "imPQnKTz": {}, "tdZ26qN1": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 46, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "EroHvzmD", "sku": "WEHYLJYS"}, {"id": "PMFHetit", "sku": "gDrH9004"}, {"id": "a8WG3qAM", "sku": "C0mMAmef"}], "localizations": {"uOlhpka3": {"description": "oAFp6hMy", "localExt": {"JtNfIQUb": {}, "4ClO7PAz": {}, "2P3AGLxC": {}}, "longDescription": "ip1EMVJH", "title": "g3Ui9SPz"}, "VCXhl6RE": {"description": "Rgu92ujf", "localExt": {"YqN6Z4W6": {}, "2eshtA4a": {}, "3qmZGtnS": {}}, "longDescription": "v0CxTw1N", "title": "BB4S5iXr"}, "Fnz8s5w5": {"description": "AnF8BhV9", "localExt": {"U64t44Ub": {}, "cpkVW5k5": {}, "ENts74u0": {}}, "longDescription": "oXTqQ93v", "title": "C5oG66Kq"}}, "name": "0uZmasvb", "rotationType": "CUSTOM", "startDate": "1987-01-17T00:00:00Z", "viewId": "4nvDuDc1"}' \
    > test.out 2>&1
eval_tap $? 151 'CreateSection' test.out

#- 152 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'u0kFFigp' \
    > test.out 2>&1
eval_tap $? 152 'PurgeExpiredSection' test.out

#- 153 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'PFBdoVZX' \
    --storeId 'nTs704w8' \
    > test.out 2>&1
eval_tap $? 153 'GetSection' test.out

#- 154 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'UdjXElQk' \
    --storeId 'HVUOohBa' \
    --body '{"active": true, "displayOrder": 55, "endDate": "1989-05-19T00:00:00Z", "ext": {"L5Goomkq": {}, "K54i4t5E": {}, "ynJC1wHy": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 3, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "qkZ22ZjO", "sku": "EpCXFPCe"}, {"id": "1g0ovW9m", "sku": "jjcHO2JW"}, {"id": "9vgDtpVL", "sku": "rFxxSSni"}], "localizations": {"2s2gqc1W": {"description": "7elSXSUv", "localExt": {"yAwgWj6Q": {}, "mJ8UjWVI": {}, "bcgzIDkF": {}}, "longDescription": "oI0zHxR4", "title": "ToJuzMGS"}, "5nHqzJbw": {"description": "uvVPxGTg", "localExt": {"UFlssV93": {}, "0nIazfGT": {}, "X1OhxxEe": {}}, "longDescription": "jdsMIh7H", "title": "c7XgDcnb"}, "ut5ha6aJ": {"description": "edP0rG79", "localExt": {"5MaRwLOJ": {}, "fYmzrS12": {}, "nm2EGnft": {}}, "longDescription": "yuBIsiLN", "title": "uQHdyJLy"}}, "name": "T5owoI5Z", "rotationType": "FIXED_PERIOD", "startDate": "1996-12-22T00:00:00Z", "viewId": "nFP1n5in"}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateSection' test.out

#- 155 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'yzpI6B8I' \
    --storeId 'EsrIt8KV' \
    > test.out 2>&1
eval_tap $? 155 'DeleteSection' test.out

#- 156 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'ListStores' test.out

#- 157 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "D3uWU7hv", "defaultRegion": "bRKjzuNO", "description": "aKJBKgq4", "supportedLanguages": ["7IYT1XO7", "RkOZ1QYs", "UJJnWyAZ"], "supportedRegions": ["oDF4rHnv", "d5H9zWEe", "oN01cIfO"], "title": "76oeCi55"}' \
    > test.out 2>&1
eval_tap $? 157 'CreateStore' test.out

#- 158 ImportStore
eval_tap 0 158 'ImportStore # SKIP deprecated' test.out

#- 159 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetPublishedStore' test.out

#- 160 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'DeletePublishedStore' test.out

#- 161 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetPublishedStoreBackup' test.out

#- 162 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'RollbackPublishedStore' test.out

#- 163 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId '6krd8VAV' \
    > test.out 2>&1
eval_tap $? 163 'GetStore' test.out

#- 164 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '3zk7P9Hr' \
    --body '{"defaultLanguage": "Pcsix6jA", "defaultRegion": "Vwjhzj26", "description": "IcZ76KdU", "supportedLanguages": ["uobkRMO4", "Gy2qupYI", "TcztJLJ6"], "supportedRegions": ["8CXE3z5H", "2u3NaWT6", "UHEHzfdj"], "title": "QLvsQdP4"}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateStore' test.out

#- 165 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UTZyc0jn' \
    > test.out 2>&1
eval_tap $? 165 'DeleteStore' test.out

#- 166 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'uOp82Txj' \
    --action 'DELETE' \
    --itemSku 'Z7HeYU22' \
    --itemType 'LOOTBOX' \
    --limit '79' \
    --offset '33' \
    --selected 'true' \
    --sortBy '["createdAt", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'OifbrfRW' \
    --updatedAtStart 'GOIdbQjA' \
    > test.out 2>&1
eval_tap $? 166 'QueryChanges' test.out

#- 167 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'b41TDUUG' \
    > test.out 2>&1
eval_tap $? 167 'PublishAll' test.out

#- 168 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'n8XmTszZ' \
    > test.out 2>&1
eval_tap $? 168 'PublishSelected' test.out

#- 169 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'aYWSV8tp' \
    > test.out 2>&1
eval_tap $? 169 'SelectAllRecords' test.out

#- 170 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'YZ5H2NPK' \
    --action 'CREATE' \
    --itemSku 'NaH4C7aQ' \
    --itemType 'BUNDLE' \
    --type 'ITEM' \
    --updatedAtEnd 'zm78tyWF' \
    --updatedAtStart 'okmTagVQ' \
    > test.out 2>&1
eval_tap $? 170 'GetStatistic' test.out

#- 171 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '56YYEk8h' \
    > test.out 2>&1
eval_tap $? 171 'UnselectAllRecords' test.out

#- 172 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'ShReyU6F' \
    --namespace $AB_NAMESPACE \
    --storeId 'ouJ6eRRi' \
    > test.out 2>&1
eval_tap $? 172 'SelectRecord' test.out

#- 173 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'uI7CNGA3' \
    --namespace $AB_NAMESPACE \
    --storeId 'cf4f5NxP' \
    > test.out 2>&1
eval_tap $? 173 'UnselectRecord' test.out

#- 174 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'pf7ua9GZ' \
    --targetStoreId 'pOdJTBM5' \
    > test.out 2>&1
eval_tap $? 174 'CloneStore' test.out

#- 175 ExportStore
eval_tap 0 175 'ExportStore # SKIP deprecated' test.out

#- 176 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId '6dGMnocX' \
    --limit '53' \
    --offset '91' \
    --sku 'rhRkEOrG' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'qyIV9Unl' \
    > test.out 2>&1
eval_tap $? 176 'QuerySubscriptions' test.out

#- 177 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4qA3n1MO' \
    > test.out 2>&1
eval_tap $? 177 'RecurringChargeSubscription' test.out

#- 178 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'VGwNdOMT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetTicketDynamic' test.out

#- 179 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'lBwSr6Kx' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "gU36pyYh"}' \
    > test.out 2>&1
eval_tap $? 179 'DecreaseTicketSale' test.out

#- 180 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ANI6sXoR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetTicketBoothID' test.out

#- 181 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'tq7Of2I3' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 41, "orderNo": "pUd6BrUC"}' \
    > test.out 2>&1
eval_tap $? 181 'IncreaseTicketSale' test.out

#- 182 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '3TGs4fjW' \
    --body '{"achievements": [{"id": "9JVfc8Q4", "value": 66}, {"id": "AXyf80LK", "value": 38}, {"id": "tTP1L8YN", "value": 55}], "steamUserId": "r2wEZ4FL"}' \
    > test.out 2>&1
eval_tap $? 182 'UnlockSteamUserAchievement' test.out

#- 183 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QalMG4Qo' \
    --xboxUserId '3VRHZmlG' \
    > test.out 2>&1
eval_tap $? 183 'GetXblUserAchievements' test.out

#- 184 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'gFlGsv9l' \
    --body '{"achievements": [{"id": "tcYvCWQA", "value": 72}, {"id": "JMotkNQx", "value": 81}, {"id": "wcCt0acp", "value": 64}], "serviceConfigId": "9iP8jYJA", "titleId": "6DSXY0zq", "xboxUserId": "Cd9qbn4c"}' \
    > test.out 2>&1
eval_tap $? 184 'UpdateXblUserAchievement' test.out

#- 185 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'GPD2AXje' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeCampaign' test.out

#- 186 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'xM1HgOO1' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeEntitlement' test.out

#- 187 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'KfNe0y7E' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeFulfillment' test.out

#- 188 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '1qu8cs12' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeIntegration' test.out

#- 189 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kJbAA5ra' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeOrder' test.out

#- 190 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'EzbDeRjE' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizePayment' test.out

#- 191 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '72zv3BzF' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeRevocation' test.out

#- 192 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'L2KyXqaO' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeSubscription' test.out

#- 193 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'L2xbIMUA' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizeWallet' test.out

#- 194 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'wQMHftls' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 194 'GetUserDLC' test.out

#- 195 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'b46HFzT7' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '62ynldsh' \
    --features '["KsmTuLEo", "Bfe39dlV", "g0YPIjVY"]' \
    --itemId '["tk5FGHMs", "0kkcIR65", "DZA819HL"]' \
    --limit '38' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlements' test.out

#- 196 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'QNPIFU0K' \
    --body '[{"endDate": "1991-04-24T00:00:00Z", "grantedCode": "4bfGauxv", "itemId": "WDhij1NA", "itemNamespace": "JoM6LSQh", "language": "PAxo_dRYY-xH", "quantity": 92, "region": "D37peY3c", "source": "REWARD", "startDate": "1973-08-11T00:00:00Z", "storeId": "24o6CLMM"}, {"endDate": "1981-09-09T00:00:00Z", "grantedCode": "LVQEeOYb", "itemId": "4D17vlpE", "itemNamespace": "sjUkM4JH", "language": "TeJ_FZ", "quantity": 22, "region": "uPjhJ39h", "source": "REWARD", "startDate": "1980-07-13T00:00:00Z", "storeId": "PX9Wzght"}, {"endDate": "1977-01-04T00:00:00Z", "grantedCode": "BDiYdtZ5", "itemId": "CN34edJn", "itemNamespace": "6bG8tmRC", "language": "zH", "quantity": 78, "region": "PEdSZlJb", "source": "REFERRAL_BONUS", "startDate": "1993-04-16T00:00:00Z", "storeId": "Uk0P4M4j"}]' \
    > test.out 2>&1
eval_tap $? 196 'GrantUserEntitlement' test.out

#- 197 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'hiMLwkSj' \
    --activeOnly 'true' \
    --appId '5siTwP03' \
    > test.out 2>&1
eval_tap $? 197 'GetUserAppEntitlementByAppId' test.out

#- 198 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'p2XXEOL3' \
    --activeOnly 'true' \
    --limit '37' \
    --offset '47' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserEntitlementsByAppType' test.out

#- 199 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'oMmglIef' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'TCjTFlRJ' \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementByItemId' test.out

#- 200 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'eERkvTAx' \
    --ids '["3p4weqs7", "5eagAb76", "M71xzOAl"]' \
    > test.out 2>&1
eval_tap $? 200 'GetUserActiveEntitlementsByItemIds' test.out

#- 201 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'vF3pg2Iz' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'JwAxwqrp' \
    > test.out 2>&1
eval_tap $? 201 'GetUserEntitlementBySku' test.out

#- 202 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Hpl6vi7Y' \
    --appIds '["ij7LifZ8", "L6xRBk6f", "A3BhcD75"]' \
    --itemIds '["F0Wjr8nd", "zjOd62DO", "2Fbe2fjF"]' \
    --skus '["7vxSh0ht", "RTZ1if2C", "sCaDGnU9"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlement' test.out

#- 203 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9b4mxRmS' \
    --itemIds '["aZRgA9c0", "VkTjBvP4", "zQJKgaDd"]' \
    > test.out 2>&1
eval_tap $? 203 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 204 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'EzW9ZMfy' \
    --appId 'FcSXfZdN' \
    > test.out 2>&1
eval_tap $? 204 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 205 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8unEuQnP' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ehAzBIB1' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemId' test.out

#- 206 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3QjtIgQg' \
    --ids '["TMBpiL2V", "lnLYpyIl", "WsSgi3eE"]' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipByItemIds' test.out

#- 207 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'luaXVAR3' \
    --entitlementClazz 'MEDIA' \
    --sku 'IsAv4Nzf' \
    > test.out 2>&1
eval_tap $? 207 'GetUserEntitlementOwnershipBySku' test.out

#- 208 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'no97OikY' \
    --entitlementIds 'WfMn2v4F' \
    > test.out 2>&1
eval_tap $? 208 'RevokeUserEntitlements' test.out

#- 209 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Bnv33Zej' \
    --namespace $AB_NAMESPACE \
    --userId 'xh4jxGMD' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlement' test.out

#- 210 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'bUPKqJCy' \
    --namespace $AB_NAMESPACE \
    --userId 'gkyK6co9' \
    --body '{"endDate": "1994-04-03T00:00:00Z", "nullFieldList": ["56bsuMBM", "z8FUux8r", "UTOqT5Fh"], "startDate": "1992-02-05T00:00:00Z", "status": "SOLD", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateUserEntitlement' test.out

#- 211 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'gDk2Vhp4' \
    --namespace $AB_NAMESPACE \
    --userId 't1WpthbG' \
    --body '{"options": ["9v7CsZi6", "irFHHuZJ", "zLNQxdSx"], "requestId": "3ptnjvkN", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 211 'ConsumeUserEntitlement' test.out

#- 212 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'AOyEhNr6' \
    --namespace $AB_NAMESPACE \
    --userId 'I0uUPDfa' \
    > test.out 2>&1
eval_tap $? 212 'DisableUserEntitlement' test.out

#- 213 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'yyS2l8YH' \
    --namespace $AB_NAMESPACE \
    --userId 'R05DdvPr' \
    > test.out 2>&1
eval_tap $? 213 'EnableUserEntitlement' test.out

#- 214 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'hAy2vQXd' \
    --namespace $AB_NAMESPACE \
    --userId '1p7QhhRD' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlementHistories' test.out

#- 215 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'CPjmt8en' \
    --namespace $AB_NAMESPACE \
    --userId '0lhyVqwl' \
    > test.out 2>&1
eval_tap $? 215 'RevokeUserEntitlement' test.out

#- 216 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '557lW2Nf' \
    --namespace $AB_NAMESPACE \
    --userId 'V7k8d4IO' \
    --body '{"requestId": "mhlWgLEs", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 216 'SellUserEntitlement' test.out

#- 217 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'azItrLsg' \
    --body '{"duration": 91, "endDate": "1997-06-30T00:00:00Z", "itemId": "xOMebuhj", "itemSku": "4VvVGapJ", "language": "UsU0ottZ", "order": {"currency": {"currencyCode": "jOjLAHLl", "currencySymbol": "Jwr01AQ5", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "cQLomlzm"}, "ext": {"mXjLgqfE": {}, "lgIxVsCm": {}, "2UXVbx2x": {}}, "free": true}, "orderNo": "AKUIK1CL", "origin": "IOS", "quantity": 97, "region": "Ep013Wuv", "source": "REWARD", "startDate": "1990-05-03T00:00:00Z", "storeId": "4TCs9npt"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillItem' test.out

#- 218 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '427r2Omn' \
    --body '{"code": "q8vppPR3", "language": "fy_045", "region": "tfWKlPZz"}' \
    > test.out 2>&1
eval_tap $? 218 'RedeemCode' test.out

#- 219 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'qrs7VuQA' \
    --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "itSpA59S", "namespace": "rW4Mi5Ay"}, "item": {"itemId": "12NVQJzB", "itemSku": "4Jnk093w", "itemType": "zcW1bIhN"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "p4P2viJy", "namespace": "CCqnXCR2"}, "item": {"itemId": "CwrLjRls", "itemSku": "1YonR21U", "itemType": "2OpzfVqe"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "8y7BBnVe", "namespace": "C28PYpOL"}, "item": {"itemId": "vYL9H2wU", "itemSku": "Eo4Tot7L", "itemType": "4jTvJNtU"}, "quantity": 59, "type": "CURRENCY"}], "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 219 'FulfillRewards' test.out

#- 220 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '8oo4YFmd' \
    --endTime 'W0e7iCpL' \
    --limit '24' \
    --offset '50' \
    --productId 'g5LecdJh' \
    --startTime 'JsosgIUZ' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPOrders' test.out

#- 221 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vyjZsubA' \
    > test.out 2>&1
eval_tap $? 221 'QueryAllUserIAPOrders' test.out

#- 222 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'wySCI9uL' \
    --endTime 'ujV7BGks' \
    --limit '66' \
    --offset '30' \
    --startTime 'gmEy95o2' \
    --status 'FAIL' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserIAPConsumeHistory' test.out

#- 223 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'crDkxyk0' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "nAuZ-CwYb", "productId": "2HL5jkeI", "region": "HJ7vECHg", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 223 'MockFulfillIAPItem' test.out

#- 224 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '08sCpcrR' \
    --itemId 'Wf6MtimZ' \
    --limit '92' \
    --offset '32' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserOrders' test.out

#- 225 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QuvcatBU' \
    --body '{"currencyCode": "469OQpE3", "currencyNamespace": "pkeim2mf", "discountedPrice": 66, "ext": {"O32BBkGh": {}, "KR5WNsRU": {}, "wJmfc4Ub": {}}, "itemId": "cIvz7bvH", "language": "heZVMsKe", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 17, "quantity": 54, "region": "ZLnxuRWB", "returnUrl": "CHPFFhg2", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 225 'AdminCreateUserOrder' test.out

#- 226 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'uOSl3G9p' \
    --itemId 'wVNXxqiW' \
    > test.out 2>&1
eval_tap $? 226 'CountOfPurchasedItem' test.out

#- 227 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'J8isTkvm' \
    --userId 'oSSSWwCE' \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrder' test.out

#- 228 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'GGcrv5oh' \
    --userId 'b6Y6LQn2' \
    --body '{"status": "DELETED", "statusReason": "5pHGKLAQ"}' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserOrderStatus' test.out

#- 229 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'zUHRBFpy' \
    --userId 'mSt6p5vL' \
    > test.out 2>&1
eval_tap $? 229 'FulfillUserOrder' test.out

#- 230 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'kMcK1uOf' \
    --userId 'wOp1PwGO' \
    > test.out 2>&1
eval_tap $? 230 'GetUserOrderGrant' test.out

#- 231 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZOgvwbJs' \
    --userId 'oo4pBITU' \
    > test.out 2>&1
eval_tap $? 231 'GetUserOrderHistories' test.out

#- 232 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'rNSYpgnv' \
    --userId 'j00RKXhf' \
    --body '{"additionalData": {"cardSummary": "uOXlU4rp"}, "authorisedTime": "1983-03-12T00:00:00Z", "chargebackReversedTime": "1995-08-31T00:00:00Z", "chargebackTime": "1977-03-21T00:00:00Z", "chargedTime": "1971-08-27T00:00:00Z", "createdTime": "1989-08-07T00:00:00Z", "currency": {"currencyCode": "MyCfhRSA", "currencySymbol": "HLdcYgLe", "currencyType": "REAL", "decimals": 77, "namespace": "nDiOgnVh"}, "customParameters": {"f5yV52Jj": {}, "o5gfRx5q": {}, "d7gNIJYt": {}}, "extOrderNo": "NpjQJVPg", "extTxId": "yvoRrIRy", "extUserId": "FwI8Fgzu", "issuedAt": "1990-01-24T00:00:00Z", "metadata": {"7R8Pcg8S": "2gq13kGc", "jf6drFnV": "QZSmE2T2", "7sqQRA1l": "EMb9WLq2"}, "namespace": "Pwvypt4o", "nonceStr": "HicF9o23", "paymentMethod": "hB5OPpr3", "paymentMethodFee": 25, "paymentOrderNo": "csjlMmlq", "paymentProvider": "WXPAY", "paymentProviderFee": 1, "paymentStationUrl": "Rfc46j8j", "price": 25, "refundedTime": "1992-03-04T00:00:00Z", "salesTax": 49, "sandbox": true, "sku": "OibblQzH", "status": "CHARGED", "statusReason": "ykQWSx9G", "subscriptionId": "Yz4Nq2bP", "subtotalPrice": 12, "targetNamespace": "XwuBOAWH", "targetUserId": "RpdSAMH8", "tax": 24, "totalPrice": 1, "totalTax": 82, "txEndTime": "1986-02-24T00:00:00Z", "type": "o0TBTcUt", "userId": "7rnS7Cqz", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 232 'ProcessUserOrderNotification' test.out

#- 233 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'oiVz6Bs9' \
    --userId '8VfTGFKN' \
    > test.out 2>&1
eval_tap $? 233 'DownloadUserOrderReceipt' test.out

#- 234 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'eUeIuIBK' \
    --body '{"currencyCode": "HshNx9WG", "currencyNamespace": "P6AE7LFZ", "customParameters": {"Z69r4TJu": {}, "RzhAOVin": {}, "1b6t5BeZ": {}}, "description": "tD8jjJH1", "extOrderNo": "fKOvYe7I", "extUserId": "bmEWOglg", "itemType": "OPTIONBOX", "language": "AXg-lBAy", "metadata": {"SKwbhuxK": "94Ztnl1g", "B8BuXI1z": "EqK4JeGc", "pPY9ddJN": "4pWy5il7"}, "notifyUrl": "Lf8ZeMs3", "omitNotification": false, "platform": "D3lsV8lc", "price": 75, "recurringPaymentOrderNo": "biSl4K7K", "region": "4rKt3UBh", "returnUrl": "YpvTF3UD", "sandbox": false, "sku": "5yOPhP4d", "subscriptionId": "s6yoTrTA", "title": "JQ9izZmz"}' \
    > test.out 2>&1
eval_tap $? 234 'CreateUserPaymentOrder' test.out

#- 235 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uhyLm6LI' \
    --userId 'Vz2wmJMS' \
    --body '{"description": "P4MLt7v1"}' \
    > test.out 2>&1
eval_tap $? 235 'RefundUserPaymentOrder' test.out

#- 236 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '47iJgMeQ' \
    --body '{"code": "7MjVjJi9", "orderNo": "aohGDwN6"}' \
    > test.out 2>&1
eval_tap $? 236 'ApplyUserRedemption' test.out

#- 237 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'SALqSJC8' \
    --body '{"meta": {"nxtTAm3n": {}, "I0oeguGi": {}, "PgJmeBiD": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "2EpziuCy", "namespace": "BwwYV9WL"}, "entitlement": {"entitlementId": "mIVoRI2u"}, "item": {"itemIdentity": "ZoITSc6v", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 66, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "QoWaHU3w", "namespace": "RUQQRVYl"}, "entitlement": {"entitlementId": "jR2t2I8P"}, "item": {"itemIdentity": "9fmvTtgh", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 45, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "tPhAQaeF", "namespace": "xUMXpNTR"}, "entitlement": {"entitlementId": "bpO5c9jN"}, "item": {"itemIdentity": "bxVUi6jG", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 26, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "OhltCD9y"}' \
    > test.out 2>&1
eval_tap $? 237 'DoRevocation' test.out

#- 238 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'LMjx8AMH' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'ovzkm8iG' \
    --limit '78' \
    --offset '15' \
    --sku 'yVvjnHX5' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 238 'QueryUserSubscriptions' test.out

#- 239 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'a0xUD4ug' \
    --excludeSystem 'true' \
    --limit '35' \
    --offset '76' \
    --subscriptionId 't3sx9v0B' \
    > test.out 2>&1
eval_tap $? 239 'GetUserSubscriptionActivities' test.out

#- 240 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'pFXl5M0A' \
    --body '{"grantDays": 10, "itemId": "4kdB4Q5H", "language": "EEiPFw6F", "reason": "dC0qVcoz", "region": "Smpba7hY", "source": "A5pizs43"}' \
    > test.out 2>&1
eval_tap $? 240 'PlatformSubscribeSubscription' test.out

#- 241 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BU9Q6bD3' \
    --itemId '3p0tlPSy' \
    > test.out 2>&1
eval_tap $? 241 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 242 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BloQQfIU' \
    --userId 'qUBJjEXa' \
    > test.out 2>&1
eval_tap $? 242 'GetUserSubscription' test.out

#- 243 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JIaDUQvA' \
    --userId 'cqjQKZi9' \
    > test.out 2>&1
eval_tap $? 243 'DeleteUserSubscription' test.out

#- 244 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'caR4pCdP' \
    --userId 'pEeme4mu' \
    --force 'false' \
    --body '{"immediate": false, "reason": "e6Z8CR5R"}' \
    > test.out 2>&1
eval_tap $? 244 'CancelSubscription' test.out

#- 245 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VP1uUdbT' \
    --userId '6uz9WQk5' \
    --body '{"grantDays": 79, "reason": "bSajFGjC"}' \
    > test.out 2>&1
eval_tap $? 245 'GrantDaysToSubscription' test.out

#- 246 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eiv0RsbA' \
    --userId 'ChGFMfIs' \
    --excludeFree 'false' \
    --limit '52' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionBillingHistories' test.out

#- 247 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cMOgRcW9' \
    --userId 'p1wrFRWA' \
    --body '{"additionalData": {"cardSummary": "pEf1A3tt"}, "authorisedTime": "1990-05-19T00:00:00Z", "chargebackReversedTime": "1995-01-12T00:00:00Z", "chargebackTime": "1984-04-09T00:00:00Z", "chargedTime": "1994-11-01T00:00:00Z", "createdTime": "1991-09-16T00:00:00Z", "currency": {"currencyCode": "g1j8bP9K", "currencySymbol": "k3dnqHAG", "currencyType": "REAL", "decimals": 26, "namespace": "MNx6DxZp"}, "customParameters": {"X1Z4ADh9": {}, "VTssH0r3": {}, "ZX3NaYqn": {}}, "extOrderNo": "VUobryqR", "extTxId": "hHj0Te21", "extUserId": "JTfMOYtw", "issuedAt": "1980-05-30T00:00:00Z", "metadata": {"ChHtc7aK": "ABavKfHe", "ZIGhxFgw": "nY7GCPHX", "x5pAelOq": "KifDOX6Y"}, "namespace": "eMbvX0nR", "nonceStr": "TpFXtsCe", "paymentMethod": "UexVkRNZ", "paymentMethodFee": 89, "paymentOrderNo": "WStHghA6", "paymentProvider": "PAYPAL", "paymentProviderFee": 52, "paymentStationUrl": "JGmiu84l", "price": 55, "refundedTime": "1996-02-12T00:00:00Z", "salesTax": 98, "sandbox": true, "sku": "j84dTdgr", "status": "CHARGE_FAILED", "statusReason": "f0WlIdmw", "subscriptionId": "y7JNFAyX", "subtotalPrice": 95, "targetNamespace": "Xz7LFK4T", "targetUserId": "NiCTbmLl", "tax": 84, "totalPrice": 0, "totalTax": 91, "txEndTime": "1977-06-20T00:00:00Z", "type": "guDxhPXY", "userId": "dUn5cRdW", "vat": 11}' \
    > test.out 2>&1
eval_tap $? 247 'ProcessUserSubscriptionNotification' test.out

#- 248 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'ZF4IkVE6' \
    --namespace $AB_NAMESPACE \
    --userId 'TNR3JsP9' \
    --body '{"count": 84, "orderNo": "ovItEUlC"}' \
    > test.out 2>&1
eval_tap $? 248 'AcquireUserTicket' test.out

#- 249 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'iUy7ULLf' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserCurrencyWallets' test.out

#- 250 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '4NqeJhMJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ekxDlr46' \
    --body '{"allowOverdraft": true, "amount": 40, "balanceOrigin": "Steam", "reason": "gvBJYZCy"}' \
    > test.out 2>&1
eval_tap $? 250 'DebitUserWalletByCurrencyCode' test.out

#- 251 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'qqnNDclt' \
    --namespace $AB_NAMESPACE \
    --userId 'CKl6Gw5F' \
    --limit '82' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 251 'ListUserCurrencyTransactions' test.out

#- 252 CheckWallet
eval_tap 0 252 'CheckWallet # SKIP deprecated' test.out

#- 253 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'GbZh709i' \
    --namespace $AB_NAMESPACE \
    --userId 'aPRxLbcW' \
    --body '{"amount": 94, "expireAt": "1982-05-29T00:00:00Z", "origin": "Xbox", "reason": "oVXDNsgl", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 253 'CreditUserWallet' test.out

#- 254 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'HE5E4cdJ' \
    --namespace $AB_NAMESPACE \
    --userId '05BdQg18' \
    --body '{"amount": 70, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 254 'PayWithUserWallet' test.out

#- 255 GetUserWallet
eval_tap 0 255 'GetUserWallet # SKIP deprecated' test.out

#- 256 DebitUserWallet
eval_tap 0 256 'DebitUserWallet # SKIP deprecated' test.out

#- 257 DisableUserWallet
eval_tap 0 257 'DisableUserWallet # SKIP deprecated' test.out

#- 258 EnableUserWallet
eval_tap 0 258 'EnableUserWallet # SKIP deprecated' test.out

#- 259 ListUserWalletTransactions
eval_tap 0 259 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 260 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'K34HSPsj' \
    > test.out 2>&1
eval_tap $? 260 'ListViews' test.out

#- 261 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '6VX5UQ3B' \
    --body '{"displayOrder": 22, "localizations": {"k4hi7GfJ": {"description": "jxoMbeYh", "localExt": {"UOIpp1ue": {}, "os6x8t22": {}, "AQC8bcak": {}}, "longDescription": "zHTEdw2j", "title": "QzzoRBoo"}, "TJW66gjR": {"description": "rvoMoVun", "localExt": {"npmAzpLc": {}, "XztcC5b1": {}, "sM4gM1qt": {}}, "longDescription": "dhrCgyfV", "title": "zlddkwPC"}, "TrNJHjp3": {"description": "SJD0raa6", "localExt": {"hTzjjHdd": {}, "Fh6k6cEU": {}, "R1hlv3SL": {}}, "longDescription": "OaOW2YLp", "title": "ukhntC2a"}}, "name": "wtfWrKDI"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateView' test.out

#- 262 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'CUsvvyiM' \
    --storeId 'aFiI94V1' \
    > test.out 2>&1
eval_tap $? 262 'GetView' test.out

#- 263 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'ZJCSaSMG' \
    --storeId 'FSTMZ17N' \
    --body '{"displayOrder": 31, "localizations": {"wu3pE7SX": {"description": "mdtH8b6v", "localExt": {"suvyryZc": {}, "lDqHmwvq": {}, "TiaiINyL": {}}, "longDescription": "4SDyA28h", "title": "Tjt1qYlc"}, "N8vmExN5": {"description": "jaYQAmy2", "localExt": {"4o86xcHC": {}, "zQRYl6tu": {}, "QAQnwJVD": {}}, "longDescription": "UbKuJZQm", "title": "DBg9I9RO"}, "878Ehr4Z": {"description": "7BOU9xUA", "localExt": {"3mi6oPlq": {}, "6tMTKnNJ": {}, "WmYPOEPg": {}}, "longDescription": "TJc5GL9D", "title": "HZoDkUxo"}}, "name": "2EuKZzEt"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateView' test.out

#- 264 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ItfJNSfE' \
    --storeId 'jiG9Pcx0' \
    > test.out 2>&1
eval_tap $? 264 'DeleteView' test.out

#- 265 QueryWallets
eval_tap 0 265 'QueryWallets # SKIP deprecated' test.out

#- 266 GetWallet
eval_tap 0 266 'GetWallet # SKIP deprecated' test.out

#- 267 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'CW94uCtp' \
    --end 'HpEeOLPj' \
    --start '245hhBJC' \
    > test.out 2>&1
eval_tap $? 267 'SyncOrders' test.out

#- 268 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["PiNnkIEI", "3ZYrtGhV", "FRrueOCM"], "apiKey": "ATBHYf86", "authoriseAsCapture": true, "blockedPaymentMethods": ["7w9CKQhs", "LzWnkirr", "1Rhy0o9M"], "clientKey": "88Ef9uUs", "dropInSettings": "J9PDIClj", "liveEndpointUrlPrefix": "1a7ZHo6w", "merchantAccount": "fiqH68ah", "notificationHmacKey": "NaDDouDN", "notificationPassword": "vF747maN", "notificationUsername": "nFVlxaRD", "returnUrl": "i76G63bS", "settings": "39JfHkuB"}' \
    > test.out 2>&1
eval_tap $? 268 'TestAdyenConfig' test.out

#- 269 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "pX63TbCB", "privateKey": "3IhDH6h8", "publicKey": "7En7gWLL", "returnUrl": "CgRW9TwO"}' \
    > test.out 2>&1
eval_tap $? 269 'TestAliPayConfig' test.out

#- 270 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "PkVaSaUn", "secretKey": "CsDUfaPr"}' \
    > test.out 2>&1
eval_tap $? 270 'TestCheckoutConfig' test.out

#- 271 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '8BTeonij' \
    --region 'Cs5MshaV' \
    > test.out 2>&1
eval_tap $? 271 'DebugMatchedPaymentMerchantConfig' test.out

#- 272 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "n8GSrsF5", "clientSecret": "YXca6dUy", "returnUrl": "gpluxnCz", "webHookId": "dsBz7MAL"}' \
    > test.out 2>&1
eval_tap $? 272 'TestPayPalConfig' test.out

#- 273 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["lY3QnGkq", "Bl29rWhj", "0DyLfMsT"], "publishableKey": "QUEJ21wT", "secretKey": "rs9NCABe", "webhookSecret": "HRao20a0"}' \
    > test.out 2>&1
eval_tap $? 273 'TestStripeConfig' test.out

#- 274 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "VNnFeftF", "key": "2Es55JJc", "mchid": "zomBUZUy", "returnUrl": "zqOqSP2i"}' \
    > test.out 2>&1
eval_tap $? 274 'TestWxPayConfig' test.out

#- 275 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "GaPcS9dN", "flowCompletionUrl": "X1NUIY5t", "merchantId": 100, "projectId": 50, "projectSecretKey": "vuvTXM0p"}' \
    > test.out 2>&1
eval_tap $? 275 'TestXsollaConfig' test.out

#- 276 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'H64fqS8M' \
    > test.out 2>&1
eval_tap $? 276 'GetPaymentMerchantConfig' test.out

#- 277 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'Q8clZMvb' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["eXZ6KTPi", "99WyT3gN", "rYhiiNmS"], "apiKey": "xioXqOwn", "authoriseAsCapture": false, "blockedPaymentMethods": ["go3eeXh3", "oUBZ525d", "smksZche"], "clientKey": "AKAD2Tz5", "dropInSettings": "ccFGFdHv", "liveEndpointUrlPrefix": "R7jg7FDC", "merchantAccount": "2hiss1TU", "notificationHmacKey": "rf17hwVQ", "notificationPassword": "r7Eri8rQ", "notificationUsername": "BvrFsggi", "returnUrl": "Km7CteQj", "settings": "adUfcZE5"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAdyenConfig' test.out

#- 278 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'pGDdwfur' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestAdyenConfigById' test.out

#- 279 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'wzmuJHGk' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "gm00yPQr", "privateKey": "ewPVbTeo", "publicKey": "LCVD3Pwi", "returnUrl": "kGEwdwZw"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateAliPayConfig' test.out

#- 280 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'VMgpu7pu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 280 'TestAliPayConfigById' test.out

#- 281 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'IRTGWpiA' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "MHn4CxP7", "secretKey": "TBfLd3Qz"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdateCheckoutConfig' test.out

#- 282 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'uZAqYbFU' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 282 'TestCheckoutConfigById' test.out

#- 283 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '6FYhsWKn' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "UhlnFG2E", "clientSecret": "MzvnWe0G", "returnUrl": "RzHEyGuq", "webHookId": "zXhnLGUe"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdatePayPalConfig' test.out

#- 284 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'GG1Z0khs' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestPayPalConfigById' test.out

#- 285 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '0nOhhD0G' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["q1SEVb7G", "1YuDzlSH", "bfXIfIn3"], "publishableKey": "0xy3Odil", "secretKey": "WVOuLizG", "webhookSecret": "wkO3NFnU"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateStripeConfig' test.out

#- 286 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '9TayOCEG' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 286 'TestStripeConfigById' test.out

#- 287 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'pwhOwRr0' \
    --validate 'false' \
    --body '{"appId": "na5DKvPH", "key": "8ByiPjXc", "mchid": "qTVsbG0U", "returnUrl": "rWgGI1NA"}' \
    > test.out 2>&1
eval_tap $? 287 'UpdateWxPayConfig' test.out

#- 288 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'G4rf63uC' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 288 'UpdateWxPayConfigCert' test.out

#- 289 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'xPWxYfKs' \
    > test.out 2>&1
eval_tap $? 289 'TestWxPayConfigById' test.out

#- 290 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'YMD9YiIV' \
    --validate 'false' \
    --body '{"apiKey": "ezFNfS0v", "flowCompletionUrl": "uuCQJsh3", "merchantId": 67, "projectId": 28, "projectSecretKey": "vnHRJ13x"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaConfig' test.out

#- 291 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'flzCUiBG' \
    > test.out 2>&1
eval_tap $? 291 'TestXsollaConfigById' test.out

#- 292 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'qlDnDlMJ' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateXsollaUIConfig' test.out

#- 293 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '44' \
    --namespace '6ghVMmZN' \
    --offset '43' \
    --region '58gH9nxl' \
    > test.out 2>&1
eval_tap $? 293 'QueryPaymentProviderConfig' test.out

#- 294 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "IAO0F8bW", "region": "4mVstQyE", "sandboxTaxJarApiToken": "l0oQuFU3", "specials": ["ADYEN", "WALLET", "ADYEN"], "taxJarApiToken": "If4GqCNQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 294 'CreatePaymentProviderConfig' test.out

#- 295 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetAggregatePaymentProviders' test.out

#- 296 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'ZGqWmDNk' \
    --region 'jjzDoOUL' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentProviderConfig' test.out

#- 297 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 297 'GetSpecialPaymentProviders' test.out

#- 298 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Xp2QJRmX' \
    --body '{"aggregate": "XSOLLA", "namespace": "7ShNeoaf", "region": "2w5NJPEI", "sandboxTaxJarApiToken": "Byx9ykPR", "specials": ["XSOLLA", "STRIPE", "STRIPE"], "taxJarApiToken": "logrbsyy", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 298 'UpdatePaymentProviderConfig' test.out

#- 299 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'fgsF4oYD' \
    > test.out 2>&1
eval_tap $? 299 'DeletePaymentProviderConfig' test.out

#- 300 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 300 'GetPaymentTaxConfig' test.out

#- 301 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "dth31cIA", "taxJarApiToken": "U3EF6wFz", "taxJarEnabled": false, "taxJarProductCodesMapping": {"jKCFkWev": "onJf0D56", "gvNix01i": "AOWcq018", "wd011Uzy": "JBtPs5NP"}}' \
    > test.out 2>&1
eval_tap $? 301 'UpdatePaymentTaxConfig' test.out

#- 302 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'g1yiOQua' \
    --end 'RmOMCYhQ' \
    --start 'sBxo2nyE' \
    > test.out 2>&1
eval_tap $? 302 'SyncPaymentOrders' test.out

#- 303 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'abr0RyEk' \
    --storeId '4UVagQ38' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetRootCategories' test.out

#- 304 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'jQwOgVgV' \
    --storeId 't3NPZU98' \
    > test.out 2>&1
eval_tap $? 304 'DownloadCategories' test.out

#- 305 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'euryjizx' \
    --namespace $AB_NAMESPACE \
    --language 'jJFqefdB' \
    --storeId 'npjfBRDC' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetCategory' test.out

#- 306 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'vbMabfOW' \
    --namespace $AB_NAMESPACE \
    --language '9FXIynkL' \
    --storeId 'Rn8tkuEY' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetChildCategories' test.out

#- 307 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'aI0bgzLP' \
    --namespace $AB_NAMESPACE \
    --language 'prDzNIqE' \
    --storeId 'CtZkGjyu' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetDescendantCategories' test.out

#- 308 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 308 'PublicListCurrencies' test.out

#- 309 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 309 'GetIAPItemMapping' test.out

#- 310 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'd7UFNa7C' \
    --region 'kksEoKl8' \
    --storeId 'yFwp4Eaw' \
    --appId '9pTDPsx2' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemByAppId' test.out

#- 311 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'vmiN0xYt' \
    --categoryPath 'vtG8qtPd' \
    --features 'DPT6qkjK' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'MdHgviUU' \
    --limit '11' \
    --offset '48' \
    --region 'CDXUN4Hj' \
    --sortBy '["updatedAt:desc", "createdAt:asc"]' \
    --storeId 'CV9lVaQ2' \
    --tags 'QC56wwff' \
    > test.out 2>&1
eval_tap $? 311 'PublicQueryItems' test.out

#- 312 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'Kbif6mWK' \
    --region 'Yz7sswnl' \
    --storeId '2ooMAYPd' \
    --sku 'I2DgklWq' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetItemBySku' test.out

#- 313 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'jkC7njYC' \
    --region 'PldLLuDm' \
    --storeId 'Ld4DaflI' \
    --itemIds 'Yj38XU0A' \
    > test.out 2>&1
eval_tap $? 313 'PublicBulkGetItems' test.out

#- 314 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["DjF7nm0r", "8wC6lMtO", "Zbh6HlWR"]}' \
    > test.out 2>&1
eval_tap $? 314 'PublicValidateItemPurchaseCondition' test.out

#- 315 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '70' \
    --offset '12' \
    --region '1Ot2lUKT' \
    --storeId 'xLGAaS4C' \
    --keyword 'YPVwdI1r' \
    --language 'ip52zCxC' \
    > test.out 2>&1
eval_tap $? 315 'PublicSearchItems' test.out

#- 316 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'LMYo1Mb0' \
    --namespace $AB_NAMESPACE \
    --language 'B0xi8SiE' \
    --region '5vWqtuqR' \
    --storeId 'fq8ftxLB' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetApp' test.out

#- 317 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'mfc0FZKQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'PublicGetItemDynamicData' test.out

#- 318 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'GToBj3Er' \
    --namespace $AB_NAMESPACE \
    --language 'BHTH2uVs' \
    --populateBundle 'true' \
    --region 'R6kbNUNl' \
    --storeId 'uGHslDAx' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItem' test.out

#- 319 GetPaymentCustomization
eval_tap 0 319 'GetPaymentCustomization # SKIP deprecated' test.out

#- 320 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "R3qogPbR", "paymentProvider": "XSOLLA", "returnUrl": "E2rpMEFc", "ui": "A1tIcSvu", "zipCode": "GILs1XAX"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetPaymentUrl' test.out

#- 321 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'snLK7ZPp' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetPaymentMethods' test.out

#- 322 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BWDh2yxP' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUnpaidPaymentOrder' test.out

#- 323 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hNJddYH2' \
    --paymentProvider 'WXPAY' \
    --zipCode 'OFS3I4aH' \
    --body '{"token": "VF0ElcjS"}' \
    > test.out 2>&1
eval_tap $? 323 'Pay' test.out

#- 324 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LElgyDdA' \
    > test.out 2>&1
eval_tap $? 324 'PublicCheckPaymentOrderPaidStatus' test.out

#- 325 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'Qm8XjCki' \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentPublicConfig' test.out

#- 326 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'uyFuY5y2' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetQRCode' test.out

#- 327 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'OeCfInUP' \
    --foreinginvoice '1IJPVjds' \
    --invoiceId 'zQ3X7lSY' \
    --payload 'Ld0c55Pu' \
    --redirectResult '6A7tHCW0' \
    --resultCode 'wtwMmUA0' \
    --sessionId '5NPyUQ8b' \
    --status 'shLWLsql' \
    --token 'tQ5Gcj9x' \
    --type 'mzAp1X2z' \
    --userId 'x45JWyyc' \
    --orderNo 'WJfcTZov' \
    --paymentOrderNo 'gNHTQHnV' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'qj1hHJvg' \
    > test.out 2>&1
eval_tap $? 327 'PublicNormalizePaymentReturnUrl' test.out

#- 328 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'KesLZ6XU' \
    --paymentOrderNo 'FkqEDP2a' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 328 'GetPaymentTaxValue' test.out

#- 329 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'KinaJREo' \
    > test.out 2>&1
eval_tap $? 329 'GetRewardByCode' test.out

#- 330 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'aYmGqs2I' \
    --limit '14' \
    --offset '44' \
    --sortBy '["namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 330 'QueryRewards1' test.out

#- 331 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '8wHjPP5r' \
    > test.out 2>&1
eval_tap $? 331 'GetReward1' test.out

#- 332 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 332 'PublicListStores' test.out

#- 333 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["FJhyg7sb", "13DdYvPZ", "7BBPsYVb"]' \
    --itemIds '["tHb5Zxwp", "B9sVYKHE", "jms2gPas"]' \
    --skus '["1t6T15E5", "iNsW7RCR", "IubhsxAB"]' \
    > test.out 2>&1
eval_tap $? 333 'PublicExistsAnyMyActiveEntitlement' test.out

#- 334 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'HrUoBS5J' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 335 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'ROcaLJfk' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 336 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'XsujIyBP' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 337 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["6dFnZExI", "cOEnbDiB", "PI9l24LT"]' \
    --itemIds '["f3M8ybLR", "qXbj6VMn", "3poYBR5r"]' \
    --skus '["necZaITk", "HWtUd5AV", "umoxR74U"]' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetEntitlementOwnershipToken' test.out

#- 338 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "VU1iTB0H", "language": "epmc_LIPO", "region": "OWYPPcs5"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncTwitchDropsEntitlement' test.out

#- 339 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '0hxMu9bW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyWallet' test.out

#- 340 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'hRsjYhX0' \
    --body '{"epicGamesJwtToken": "ZqKaZcVv"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncEpicGameDLC' test.out

#- 341 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'nwntn60Q' \
    --body '{"serviceLabel": 37}' \
    > test.out 2>&1
eval_tap $? 341 'PublicSyncPsnDlcInventory' test.out

#- 342 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '05amb5pU' \
    --body '{"serviceLabels": [67, 60, 7]}' \
    > test.out 2>&1
eval_tap $? 342 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 343 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '3BFB9u2O' \
    --body '{"appId": "FEF9cLBh", "steamId": "oTlQQUYi"}' \
    > test.out 2>&1
eval_tap $? 343 'SyncSteamDLC' test.out

#- 344 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '3sIsCPL5' \
    --body '{"xstsToken": "cJTCdMsI"}' \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxDLC' test.out

#- 345 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0Sowq5Mk' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '7zyGy2iu' \
    --features '["MUEv500W", "cYnk9PEu", "0iyQGDaJ"]' \
    --itemId '["eLZc4QuS", "BoXakq5N", "9MCblTQB"]' \
    --limit '75' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlements' test.out

#- 346 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'oFw2V8I9' \
    --appId 'U2BKwKaJ' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserAppEntitlementByAppId' test.out

#- 347 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'wYGC0d5Y' \
    --limit '34' \
    --offset '55' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserEntitlementsByAppType' test.out

#- 348 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'c6w62QZO' \
    --entitlementClazz 'CODE' \
    --itemId 'ESpURyVF' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementByItemId' test.out

#- 349 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'soYlLqWl' \
    --entitlementClazz 'CODE' \
    --sku 'BmD5OGly' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementBySku' test.out

#- 350 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'FRBmOp3u' \
    --appIds '["tJU0uXYm", "XVYnpTY7", "qxKQaxnh"]' \
    --itemIds '["YRfnX3y2", "KBIRYVpb", "1zaRBCbR"]' \
    --skus '["fbxtPUjS", "i6sSrSI8", "7OtrSt77"]' \
    > test.out 2>&1
eval_tap $? 350 'PublicExistsAnyUserActiveEntitlement' test.out

#- 351 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'yrO8gVv5' \
    --appId 'UoAEZcVJ' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 352 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jOfvVs93' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'KVfr5M6v' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 353 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'wZ2HQgEZ' \
    --ids '["FE2CYxhP", "NFqA4Flr", "uywie0yL"]' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 354 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WjozwjvK' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '4HjLtABg' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 355 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'v41nxOyP' \
    --namespace $AB_NAMESPACE \
    --userId '9c4Jdz0l' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserEntitlement' test.out

#- 356 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '6MQgPMhO' \
    --namespace $AB_NAMESPACE \
    --userId 'BNph8lgv' \
    --body '{"options": ["xnPuCqSW", "xDFlkFCY", "ymOYVISR"], "requestId": "LSiRuKyn", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 356 'PublicConsumeUserEntitlement' test.out

#- 357 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'xopZOCCI' \
    --namespace $AB_NAMESPACE \
    --userId 'Zq36X7Xf' \
    --body '{"requestId": "tQXu44VE", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 357 'PublicSellUserEntitlement' test.out

#- 358 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'cbnkNkal' \
    --body '{"code": "rsAzDxWz", "language": "Vde-AieZ", "region": "yyW74maf"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicRedeemCode' test.out

#- 359 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UinXnBSv' \
    --body '{"excludeOldTransactions": false, "language": "GwjQ-zd", "productId": "OrJApbUc", "receiptData": "FGjvSZ8c", "region": "1e1ae2Ra", "transactionId": "InL1hzCU"}' \
    > test.out 2>&1
eval_tap $? 359 'PublicFulfillAppleIAPItem' test.out

#- 360 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '2DQI07Mf' \
    --body '{"epicGamesJwtToken": "5Cr2Jbnt"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncEpicGamesInventory' test.out

#- 361 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'VVBhVWYp' \
    --body '{"autoAck": true, "language": "fpPJ_812", "orderId": "YuieDA9l", "packageName": "4aqbJOUU", "productId": "iihUUCer", "purchaseTime": 74, "purchaseToken": "ws57dcjx", "region": "xGSKRi0y"}' \
    > test.out 2>&1
eval_tap $? 361 'PublicFulfillGoogleIAPItem' test.out

#- 362 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'qUuWM86L' \
    --body '{"currencyCode": "SeXhZWuH", "price": 0.3483126250880484, "productId": "TBR9gQq8", "serviceLabel": 19}' \
    > test.out 2>&1
eval_tap $? 362 'PublicReconcilePlayStationStore' test.out

#- 363 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'F9QobZfG' \
    --body '{"currencyCode": "7Qg7WaUi", "price": 0.20366177105195804, "productId": "LzLmp1jO", "serviceLabels": [98, 83, 85]}' \
    > test.out 2>&1
eval_tap $? 363 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 364 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'IgLOuuC9' \
    --body '{"appId": "xyYD1Exm", "currencyCode": "4aQOrEuX", "language": "jeo_bt", "price": 0.6708208498717282, "productId": "bX9khgOc", "region": "SHM9A5aB", "steamId": "OMqX0e6R"}' \
    > test.out 2>&1
eval_tap $? 364 'SyncSteamInventory' test.out

#- 365 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'TSY3Jlnh' \
    --body '{"gameId": "gY5KwnmJ", "language": "NT_AFAG", "region": "lSd9lRmR"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncTwitchDropsEntitlement1' test.out

#- 366 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'zcqRnaNk' \
    --body '{"currencyCode": "f0053ORc", "price": 0.6644351184424522, "productId": "7WNkggTB", "xstsToken": "9SkKo6zA"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncXboxInventory' test.out

#- 367 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Mp78kX7l' \
    --itemId 'kOXC3Dzd' \
    --limit '81' \
    --offset '65' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 367 'PublicQueryUserOrders' test.out

#- 368 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'SNf2OcPV' \
    --body '{"currencyCode": "c6Dy3wcS", "discountedPrice": 43, "ext": {"oKc20NB9": {}, "zVrU9RSh": {}, "bfOys4Fn": {}}, "itemId": "kai82hvU", "language": "uIr_qyCn", "price": 91, "quantity": 83, "region": "8QOtASAj", "returnUrl": "1VDTRquW"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicCreateUserOrder' test.out

#- 369 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ecJFnR97' \
    --userId 'dGi2uTW7' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetUserOrder' test.out

#- 370 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hPnhesK8' \
    --userId 'a1mQk9Yf' \
    > test.out 2>&1
eval_tap $? 370 'PublicCancelUserOrder' test.out

#- 371 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Nzchb6fv' \
    --userId 'W8D34IfK' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserOrderHistories' test.out

#- 372 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '2tTigE3h' \
    --userId 'LpX6A7V5' \
    > test.out 2>&1
eval_tap $? 372 'PublicDownloadUserOrderReceipt' test.out

#- 373 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'xqiHvN2S' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentAccounts' test.out

#- 374 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '4zatPcFw' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'corR9cv8' \
    > test.out 2>&1
eval_tap $? 374 'PublicDeletePaymentAccount' test.out

#- 375 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'qDRttKjn' \
    --language 'zG3Jv3vm' \
    --region 'HKAum8k9' \
    --storeId 'BVfrGn0D' \
    --viewId 'JpwRWLBi' \
    > test.out 2>&1
eval_tap $? 375 'PublicListActiveSections' test.out

#- 376 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '619BOIBX' \
    --chargeStatus 'CHARGED' \
    --itemId '9CJr8ZoD' \
    --limit '86' \
    --offset '1' \
    --sku 'w9ZirGx1' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserSubscriptions' test.out

#- 377 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'xVRwpgmv' \
    --body '{"currencyCode": "xvwb37xM", "itemId": "7DXkirA8", "language": "Yv-teFl", "region": "MrmN0fK3", "returnUrl": "NmUiwLfn", "source": "RRx8Ghyg"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicSubscribeSubscription' test.out

#- 378 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'h3e6fE74' \
    --itemId 'siRI4qKy' \
    > test.out 2>&1
eval_tap $? 378 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 379 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'edxF7CuN' \
    --userId '6OL6DStf' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscription' test.out

#- 380 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gc3msIlP' \
    --userId 'EGRE2TYL' \
    > test.out 2>&1
eval_tap $? 380 'PublicChangeSubscriptionBillingAccount' test.out

#- 381 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5Ure9Ryc' \
    --userId 'DefBCDWz' \
    --body '{"immediate": true, "reason": "m9Zzohsd"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicCancelSubscription' test.out

#- 382 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MnVHj32Z' \
    --userId 'HmiKz9GA' \
    --excludeFree 'false' \
    --limit '49' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserSubscriptionBillingHistories' test.out

#- 383 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'X51a3pvA' \
    --language 'ZVKkrRyF' \
    --storeId 'RHln5Mtr' \
    > test.out 2>&1
eval_tap $? 383 'PublicListViews' test.out

#- 384 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'jPhdfQFw' \
    --namespace $AB_NAMESPACE \
    --userId 'ZihKNkF3' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetWallet' test.out

#- 385 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ngYUKwrV' \
    --namespace $AB_NAMESPACE \
    --userId '671bJALr' \
    --limit '33' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 385 'PublicListUserWalletTransactions' test.out

#- 386 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'gWrioXIz' \
    --baseAppId 'uQDQIPrf' \
    --categoryPath 'wHLDsqnF' \
    --features 'SzWwX0mB' \
    --includeSubCategoryItem 'false' \
    --itemName 'rtLMW2Dx' \
    --itemStatus 'ACTIVE' \
    --itemType 'CODE' \
    --limit '41' \
    --offset '46' \
    --region 'UM7KZgGm' \
    --sortBy '["createdAt:desc", "name", "displayOrder:desc"]' \
    --storeId '762o9IWj' \
    --tags 'cO9oYws6' \
    --targetNamespace '6w7X0weB' \
    > test.out 2>&1
eval_tap $? 386 'QueryItems1' test.out

#- 387 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4xa0iRJA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 387 'ImportStore1' test.out

#- 388 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'bt6iAEdA' \
    --body '{"itemIds": ["nUP5ucGZ", "5hjAT6sD", "AOF3zej1"]}' \
    > test.out 2>&1
eval_tap $? 388 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE