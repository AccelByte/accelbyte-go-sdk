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
echo "1..385"

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
    --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["7eHpzSn3", "ZPUdc0qh", "Oaiw9B0D"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["1Jub74CU", "kNmKJfh5", "lFHHdgs2"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["jJCSQT27", "RMvqtlB2", "NPX2bOIt"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["MyKrQpM4", "mDc3fxU8", "xkT1X68c"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["IPUvmEej", "naLpUKp4", "4YUDjasW"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["MNqq98Sj", "5MXbN9oC", "TvhZNkSQ"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["8bwbmXgd", "Q1MzH7Qm", "Qgb3boLQ"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["CcxvONZm", "3EeERmDn", "yeFoF7VS"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["UhAEtrmj", "lSck0ZHn", "qU6YE3p4"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["2L7vIYhG", "YReVHQip", "cCx9Zw5D"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["j3oZk03Q", "ApflxqMr", "S48l9lyN"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "seasonType": "PASS", "sku": "1P1ktfIo", "stackable": true, "status": "ACTIVE", "tags": ["mv9gsR5c", "xoRDFuuu", "JcHm3SZL"], "targetCurrencyCode": "ySj29a9L", "targetItemId": "JE8HoRS1", "targetNamespace": "X2PFAAMw", "thumbnailUrl": "zHPxB1Us", "title": "kYs4Yw20", "updatedAt": "1986-01-04T00:00:00Z", "useCount": 84}, "namespace": "ZSWMiVi1", "order": {"currency": {"currencyCode": "0sG6vxkf", "currencySymbol": "UcmqRRbc", "currencyType": "REAL", "decimals": 56, "namespace": "J5i0EeDx"}, "ext": {"OgBnhhqE": {}, "lIaDml48": {}, "wdNFLTm5": {}}, "free": false}, "source": "OTHER"}, "script": "0x9WT0Gf", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '2rtOa4EX' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'sXzOXQAk' \
    --body '{"grantDays": "4mqrxzTt"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'uLl4XlbG' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'L8QOxtjz' \
    --body '{"grantDays": "m8y2wNhm"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "woYZyI4E", "dryRun": false, "fulfillmentUrl": "ZKBcYrCE", "itemType": "LOOTBOX", "purchaseConditionUrl": "reNDUWeh"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'wH3q31A8' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'DJgas4b6' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'z3LNUj7f' \
    --body '{"clazz": "dgLA84Z8", "dryRun": true, "fulfillmentUrl": "Yk6QEgJj", "purchaseConditionUrl": "BbEDoNf3"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'n0hEoRCA' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'xvvKgAT8' \
    --offset '26' \
    --tag 'bWAgIUXi' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "I07A68ea", "items": [{"extraSubscriptionDays": 33, "itemId": "wxcfMy9X", "itemName": "zjjI5Ybs", "quantity": 74}, {"extraSubscriptionDays": 75, "itemId": "oADkzJEN", "itemName": "2VHzih3b", "quantity": 16}, {"extraSubscriptionDays": 39, "itemId": "6IlBhnet", "itemName": "U4RwTqUX", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 13, "maxRedeemCountPerCode": 93, "maxRedeemCountPerCodePerUser": 8, "maxSaleCount": 61, "name": "O3FgkXhj", "redeemEnd": "1986-08-02T00:00:00Z", "redeemStart": "1984-01-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Y3snn2Zk", "P7cFdP43", "e5dC9XIB"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'bRVhyaKw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'wrAP2aMl' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "u7WtjCto", "items": [{"extraSubscriptionDays": 35, "itemId": "etOO847g", "itemName": "8OudOfjn", "quantity": 59}, {"extraSubscriptionDays": 65, "itemId": "uHZ3c46I", "itemName": "jGa23YvY", "quantity": 25}, {"extraSubscriptionDays": 81, "itemId": "mDg7VYPX", "itemName": "IuvUYTZB", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 35, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 8, "maxSaleCount": 18, "name": "Svf9699m", "redeemEnd": "1985-07-18T00:00:00Z", "redeemStart": "1986-08-02T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["kRCMNFIu", "rjh2imdb", "4rbkXj0Z"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'wsVC0gL9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId '7ZVJSPqJ' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'iwv1qlYB' \
    --body '{"categoryPath": "1RSKs6gQ", "localizationDisplayNames": {"xC3Gb7S0": "o4zGYY7K", "QI1AeFgP": "qaOkvo1a", "olB4lkKB": "4EYOkQ1j"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'MD3cym8x' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'IfkOVW2g' \
    --namespace $AB_NAMESPACE \
    --storeId 'rREOLx0K' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Oww3HICQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Lfl7MUBG' \
    --body '{"localizationDisplayNames": {"7qtPu64y": "AtURKLRk", "b738HGS6": "rDgMdIIl", "hS1fSiM9": "331m7Ta1"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'PsKc50Kv' \
    --namespace $AB_NAMESPACE \
    --storeId '6ecnEevc' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'Ax2K2zkR' \
    --namespace $AB_NAMESPACE \
    --storeId 'enmPZnGB' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 't4P7Wnbd' \
    --namespace $AB_NAMESPACE \
    --storeId 'SJtjX7Zs' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'hZyZl5x4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '51' \
    --code 'RXBHUTrD' \
    --limit '53' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'SKscfOcY' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 41}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'N9LFkYW5' \
    --namespace $AB_NAMESPACE \
    --batchNo '61' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'UiGKXVFC' \
    --namespace $AB_NAMESPACE \
    --batchNo '25' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'o2ogaKt2' \
    --namespace $AB_NAMESPACE \
    --batchNo '42' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'EDSJsEK5' \
    --namespace $AB_NAMESPACE \
    --code 'QpNhlI2i' \
    --limit '91' \
    --offset '31' \
    --userId '5EpGhhvX' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'Yck0upMz' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'nb76tFkE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'ORV3bu1b' \
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
    --body '{"grpcServerAddress": "NCtX7W40"}' \
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
    --body '{"currencyCode": "6Do5sYad", "currencySymbol": "CCFrHHC3", "currencyType": "VIRTUAL", "decimals": 71, "localizationDescriptions": {"pZxkrQDX": "uNFviMar", "v8mnfHK8": "CCmE2lPn", "sbD3SGEd": "lwuUccE5"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '36ugBp3H' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"BvepnDCj": "gyJlXe36", "mgWjLfFm": "teue9nzJ", "6fH24T80": "5tVg8JqU"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '0jZpjvsu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'gAOS7u8R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'iWyerCSa' \
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
    --body '{"data": [{"id": "8SRgwsAj", "rewards": [{"currency": {"currencyCode": "1ik1jgla", "namespace": "DXTvKCWw"}, "item": {"itemId": "NTAhd2wr", "itemSku": "S0uPdjhd", "itemType": "inpng5BL"}, "quantity": 51, "type": "ITEM"}, {"currency": {"currencyCode": "i8pWGd1j", "namespace": "uYhiqjRJ"}, "item": {"itemId": "OqB5F93z", "itemSku": "FQbJndUD", "itemType": "pdONneAc"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "bBdHb2sl", "namespace": "t71B1SmZ"}, "item": {"itemId": "p2JZp50C", "itemSku": "nPb71ORY", "itemType": "cmQbTU5J"}, "quantity": 34, "type": "CURRENCY"}]}, {"id": "ccLjMXJR", "rewards": [{"currency": {"currencyCode": "k0eaKQDO", "namespace": "JvrTefgl"}, "item": {"itemId": "Ss6g4iY9", "itemSku": "u02aCNYI", "itemType": "Wekp18lO"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "mNqF7Bl0", "namespace": "LcghVHfP"}, "item": {"itemId": "EspxwhRO", "itemSku": "N0bc1eMb", "itemType": "EIjowLqc"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "KoELCpob", "namespace": "BEG8X645"}, "item": {"itemId": "xpdXpai0", "itemSku": "rYaT5hOP", "itemType": "jaf3H0tY"}, "quantity": 18, "type": "CURRENCY"}]}, {"id": "ghU0VUfc", "rewards": [{"currency": {"currencyCode": "YHJbBfAK", "namespace": "SiPW3Vgs"}, "item": {"itemId": "ZXiR1DJ7", "itemSku": "HVWqMkNS", "itemType": "awQUWDFJ"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "q8PdH6hJ", "namespace": "PUAc0RVw"}, "item": {"itemId": "XgAgntLM", "itemSku": "CuaXBWQi", "itemType": "6BqPg4xr"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "rciYNEzv", "namespace": "SZIPkhSg"}, "item": {"itemId": "ORcz5S5B", "itemSku": "vmgBLxh4", "itemType": "ijFnE3Ta"}, "quantity": 26, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"Z7PC6f6Q": "kmZXElW9", "YfRSse6A": "Az3S4czz", "0QKFlAVm": "VLu4AOec"}}, {"platform": "XBOX", "platformDlcIdMap": {"73zdxTgO": "fnwIdlNa", "29fDLh74": "1IslKHzG", "lLKWUtDQ": "s61OQAox"}}, {"platform": "XBOX", "platformDlcIdMap": {"4fZvWtND": "2tcBFpX8", "lNtFEJ7t": "nkY6Mca5", "afj12K2I": "zrBvvWm4"}}]}' \
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
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'OEBM70Td' \
    --itemId '["lNBJYOmp", "u1VCarzB", "sV6xnZ5J"]' \
    --limit '36' \
    --offset '9' \
    --userId 'zzjrcaug' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '6CWVG8SW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '30' \
    --status 'FAIL' \
    --userId 'glU6musw' \
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
    --body '{"bundleId": "VJnNnN7k", "password": "Aa7j0riF"}' \
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
    --body '{"sandboxId": "c5HTHQIo"}' \
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
    --body '{"applicationName": "VsGo7dwV", "serviceAccountId": "9DBqFKHQ"}' \
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
    --body '{"data": [{"itemIdentity": "kETJyTlU", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"00PYeDca": "gginxnFI", "na3yddcb": "sPheTH26", "IUJNvYuG": "RUvpZaHC"}}, {"itemIdentity": "uESOiIZs", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fB4ZH3mt": "gWgU4pCA", "KxeE70Ca": "unQNxot3", "71W9G4Av": "QkqsGnmy"}}, {"itemIdentity": "o5JJTUVm", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"MkawaGpA": "yrIwMif3", "BOdkocVT": "d4BxqGWV", "6mTJ0sQs": "6XNbjvqh"}}]}' \
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
    --body '{"environment": "nUVLWu8o"}' \
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
    --body '{"appId": "lKdxL6oz", "publisherAuthenticationKey": "RmDD0jJv"}' \
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
    --body '{"clientId": "lfV5OemP", "clientSecret": "YdYT7DRO", "organizationId": "CjtuzFMb"}' \
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
    --body '{"relyingPartyCert": "AG9YI89h"}' \
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
    --password 'mguB8FOT' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'jMLo4b9r' \
    --itemId 'IzqYkEps' \
    --itemType 'EXTENSION' \
    --endTime '7SUQPLG5' \
    --startTime '9e0k5ZtX' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '6wK7PpUl' \
    --itemId 'cIW32iK7' \
    --itemType 'SEASON' \
    --endTime 'vvwLc7KY' \
    --startTime '3uVoJXTI' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'MtpgkieD' \
    --body '{"categoryPath": "yF97lGdM", "targetItemId": "iHKxbWCY", "targetNamespace": "zo8yO2KT"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'K9tmmOnY' \
    --body '{"appId": "nOpas6gh", "appType": "SOFTWARE", "baseAppId": "1y4Zi7s7", "boothName": "QBlk44Z4", "categoryPath": "4B1GZgKg", "clazz": "4uKxaCgc", "displayOrder": 66, "entitlementType": "CONSUMABLE", "ext": {"LuC3brWd": {}, "TYCfHkIy": {}, "Sok5DiXZ": {}}, "features": ["QrmsApRA", "tLW87rGy", "sryod3dN"], "images": [{"as": "6HX3RwrK", "caption": "t2ecozL0", "height": 93, "imageUrl": "EhoXmM2W", "smallImageUrl": "7l6jHMA2", "width": 37}, {"as": "4lNa4JUM", "caption": "SHNgqRqC", "height": 97, "imageUrl": "ryEJ0Nqo", "smallImageUrl": "Tow0qiOi", "width": 58}, {"as": "95HgXqKh", "caption": "TPkwfLM9", "height": 42, "imageUrl": "0LZ5njN8", "smallImageUrl": "6Hl8kUXz", "width": 40}], "itemIds": ["0n9d9lvc", "cKMLhrTr", "cBE2ItBS"], "itemQty": {"3KtKZWe8": 0, "uaS7RBx3": 44, "74HUtipU": 100}, "itemType": "EXTENSION", "listable": false, "localizations": {"DyvpcLYO": {"description": "WA8NjxOn", "localExt": {"aEok4nOO": {}, "Czfsflhj": {}, "bngJOUn1": {}}, "longDescription": "8G5MlfDT", "title": "k8aG40Nl"}, "ncceIZSw": {"description": "gAIkgzh4", "localExt": {"pTU0Am4D": {}, "Zhl0bQxF": {}, "J3sWCqQp": {}}, "longDescription": "Q2FbKPFM", "title": "ycMSQ4qf"}, "AacR0LgB": {"description": "5BUXvjcu", "localExt": {"2s6w3Vif": {}, "nKqmTSoG": {}, "H1XEfY6Q": {}}, "longDescription": "AYn6WQ5U", "title": "BEU1QAOH"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 38, "itemId": "ZiGhxOdc", "itemSku": "uDXSxSc3", "itemType": "aZPV87pn"}, {"count": 0, "itemId": "8Asvt1j1", "itemSku": "Rx59hesN", "itemType": "Wy2NvZ85"}, {"count": 60, "itemId": "C6ePeN8i", "itemSku": "4GrFES9z", "itemType": "7xueHpAT"}], "name": "Hccee9GX", "odds": 0.11754479283584196, "type": "REWARD_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 4, "itemId": "nnx6RVBr", "itemSku": "op9v7aZK", "itemType": "3h65hbN1"}, {"count": 46, "itemId": "zfQSfQrt", "itemSku": "fF3TQN0O", "itemType": "cNDLr36v"}, {"count": 53, "itemId": "C4dfiOMZ", "itemSku": "fEhHr39p", "itemType": "ysFO3Zvc"}], "name": "1BZG99Ly", "odds": 0.33980335317952826, "type": "PROBABILITY_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 68, "itemId": "EcENx9xZ", "itemSku": "lAchob44", "itemType": "lONDDwMv"}, {"count": 13, "itemId": "fIGaffof", "itemSku": "lEIByYqe", "itemType": "KN0meGel"}, {"count": 3, "itemId": "F5wWaDhu", "itemSku": "kU4khGG4", "itemType": "vZFTYnPk"}], "name": "mSu4PWam", "odds": 0.8622650850203948, "type": "PROBABILITY_GROUP", "weight": 76}], "rollFunction": "DEFAULT"}, "maxCount": 90, "maxCountPerUser": 79, "name": "SETWjteo", "optionBoxConfig": {"boxItems": [{"count": 4, "itemId": "VBycvU4P", "itemSku": "bmRDcrg0", "itemType": "DjQjBECX"}, {"count": 44, "itemId": "w6T6mZEi", "itemSku": "wxxElpMY", "itemType": "SWIeVzm7"}, {"count": 51, "itemId": "Heh94TSe", "itemSku": "nE5hCFkI", "itemType": "f5weqZ18"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 24, "fixedTrialCycles": 96, "graceDays": 87}, "regionData": {"Zsrh90ET": [{"currencyCode": "tYmGukz3", "currencyNamespace": "MnlrjcHp", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1996-02-08T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1989-03-17T00:00:00Z", "discountedPrice": 100, "expireAt": "1985-05-24T00:00:00Z", "price": 84, "purchaseAt": "1996-05-20T00:00:00Z", "trialPrice": 64}, {"currencyCode": "x9Ns8eLz", "currencyNamespace": "YEvwSWTa", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1972-03-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-06-22T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-10-25T00:00:00Z", "price": 18, "purchaseAt": "1973-02-28T00:00:00Z", "trialPrice": 38}, {"currencyCode": "XhIjSoTB", "currencyNamespace": "2NMKteza", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1992-07-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1994-12-08T00:00:00Z", "discountedPrice": 88, "expireAt": "1997-09-06T00:00:00Z", "price": 84, "purchaseAt": "1992-07-09T00:00:00Z", "trialPrice": 84}], "zTxBGtEJ": [{"currencyCode": "IYppuUSs", "currencyNamespace": "KoHw2hyd", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1981-09-23T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1991-09-05T00:00:00Z", "discountedPrice": 6, "expireAt": "1984-09-05T00:00:00Z", "price": 44, "purchaseAt": "1980-01-06T00:00:00Z", "trialPrice": 8}, {"currencyCode": "MVUGKSZ4", "currencyNamespace": "GcLkt4pK", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1998-10-12T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1983-05-04T00:00:00Z", "discountedPrice": 23, "expireAt": "1996-04-20T00:00:00Z", "price": 5, "purchaseAt": "1989-08-19T00:00:00Z", "trialPrice": 56}, {"currencyCode": "TpTdRtCH", "currencyNamespace": "vuk6B6XT", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1993-11-01T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1983-04-17T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-03-17T00:00:00Z", "price": 38, "purchaseAt": "1974-03-09T00:00:00Z", "trialPrice": 3}], "gBVZxiKd": [{"currencyCode": "V57GvRyd", "currencyNamespace": "9UuL02Le", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1993-07-18T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1998-05-24T00:00:00Z", "discountedPrice": 72, "expireAt": "1977-06-03T00:00:00Z", "price": 37, "purchaseAt": "1983-08-31T00:00:00Z", "trialPrice": 72}, {"currencyCode": "d4M1F5qR", "currencyNamespace": "IblS7Nz8", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1976-07-31T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1992-02-06T00:00:00Z", "discountedPrice": 55, "expireAt": "1981-08-08T00:00:00Z", "price": 52, "purchaseAt": "1991-08-16T00:00:00Z", "trialPrice": 19}, {"currencyCode": "AWc9x1aM", "currencyNamespace": "jgGim51T", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1971-08-27T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1974-11-18T00:00:00Z", "discountedPrice": 90, "expireAt": "1997-04-18T00:00:00Z", "price": 39, "purchaseAt": "1997-12-21T00:00:00Z", "trialPrice": 8}]}, "seasonType": "TIER", "sku": "Is0xf4cz", "stackable": false, "status": "INACTIVE", "tags": ["CIW5ynMK", "k8nbLzvt", "UjOn5mM7"], "targetCurrencyCode": "quUicAeI", "targetNamespace": "VXtoWAXh", "thumbnailUrl": "MlW4tLqX", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Cf5oD1e6' \
    --appId 'oI9FmYel' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'Ow72o8Zk' \
    --baseAppId 'gk0jS6rD' \
    --categoryPath 'WUwfhKvr' \
    --features 'f2AaH4yC' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '49' \
    --offset '69' \
    --region 'agYvDJ3w' \
    --sortBy '["displayOrder:desc", "createdAt"]' \
    --storeId 'NgIGj2jZ' \
    --tags 'tEYT8sIP' \
    --targetNamespace 'SE1XXPzy' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["a0sZoFS6", "xCOWMpyh", "9pMsQgb6"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ELbzDMwy' \
    --sku 'o4nIRysQ' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '510kHr4i' \
    --populateBundle 'true' \
    --region 'oIFeouC2' \
    --storeId 'm38kXrDZ' \
    --sku 'WlGVE9sJ' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NpUtKp6M' \
    --sku '9I6nEwnZ' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["hsjwJeGw", "aPSDMZz9", "5OYKiqaZ"]' \
    --storeId 'D63xe5rr' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MzpqIFGL' \
    --region 'kDs7ACC1' \
    --storeId 'RgBfoNrH' \
    --itemIds 'lFi2qJLg' \
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
    --userId 'mBLE35Yh' \
    --body '{"itemIds": ["yiDV90Se", "I5yppBHo", "ytVznCgN"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '82' \
    --offset '85' \
    --sortBy 'fbT63ShE' \
    --storeId 'h8PbGikL' \
    --keyword 'jgjcj34u' \
    --language 'ulU6FYBZ' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '24' \
    --offset '99' \
    --sortBy '["updatedAt:desc", "createdAt:asc", "updatedAt"]' \
    --storeId 'br3RSP0W' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '9nBhvhf8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '0DtJMcYQ' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'dN66bswA' \
    --namespace $AB_NAMESPACE \
    --storeId 'gt65X4N1' \
    --body '{"appId": "LQZmB61J", "appType": "DEMO", "baseAppId": "dtwCVUrY", "boothName": "Que84dwm", "categoryPath": "bwFEnAZa", "clazz": "WsQJtRYo", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"gRJK5PX9": {}, "UcOvhPyE": {}, "11TRT2SK": {}}, "features": ["Nzjf005C", "seoe8VLi", "e0LBa36K"], "images": [{"as": "XNGehQ2a", "caption": "TjTDfKFD", "height": 3, "imageUrl": "C7eGL5Yh", "smallImageUrl": "JDWh9YWq", "width": 5}, {"as": "TKfC0I2k", "caption": "NjCMDtDM", "height": 36, "imageUrl": "DbPcaoMd", "smallImageUrl": "tRLTmSvT", "width": 21}, {"as": "F9RKb9vv", "caption": "xuJlhXbW", "height": 14, "imageUrl": "PCJJztJB", "smallImageUrl": "g0tTJg46", "width": 71}], "itemIds": ["aqSfJiQF", "C2gXoda0", "kg16yUSp"], "itemQty": {"SOAjHJWw": 11, "dxIwqejx": 8, "b9gKLqs2": 27}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"q6j1mqUa": {"description": "v7k05HAQ", "localExt": {"ltnSojV4": {}, "jT65yclX": {}, "2FtAz0vJ": {}}, "longDescription": "jFIYWOaN", "title": "dsimmkW2"}, "miH3xRHA": {"description": "Ky4QxZka", "localExt": {"XZ7vmiEd": {}, "0JPxVyQp": {}, "shaDwNqT": {}}, "longDescription": "bbFMXAMf", "title": "VXe0GZeM"}, "gsRsmH1E": {"description": "QrYmkPKT", "localExt": {"POlhTtSi": {}, "ZNCxuogF": {}, "teTHJe4B": {}}, "longDescription": "hSSQkQD6", "title": "WmOt6D7u"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 75, "itemId": "FVTOhvQp", "itemSku": "fbBke8aE", "itemType": "dd36xj6w"}, {"count": 51, "itemId": "NAmjDDCv", "itemSku": "s78mcMdi", "itemType": "S76YApGJ"}, {"count": 30, "itemId": "ufwLYkqI", "itemSku": "gLuZS6hs", "itemType": "QryiEtOA"}], "name": "bpeUNf26", "odds": 0.75559798153816, "type": "REWARD", "weight": 87}, {"lootBoxItems": [{"count": 21, "itemId": "IiLXgmRa", "itemSku": "svjO4lj8", "itemType": "m3XEwP2b"}, {"count": 13, "itemId": "cTuHHPB5", "itemSku": "S3DvPRCz", "itemType": "BrVUxmDO"}, {"count": 19, "itemId": "BeGs9yxa", "itemSku": "hld1pO0G", "itemType": "yf5PO3CO"}], "name": "yMvczgEp", "odds": 0.4159455774099259, "type": "REWARD_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 65, "itemId": "eMvr9Tsv", "itemSku": "cMQ7dBsa", "itemType": "IecRxIsZ"}, {"count": 44, "itemId": "SHiWxF0Y", "itemSku": "buU5ar5q", "itemType": "TLWUCy0A"}, {"count": 11, "itemId": "k6C2cVWf", "itemSku": "6ttvbU1P", "itemType": "O6ApCD2V"}], "name": "XidT7w0O", "odds": 0.04504618661848758, "type": "PROBABILITY_GROUP", "weight": 80}], "rollFunction": "CUSTOM"}, "maxCount": 31, "maxCountPerUser": 100, "name": "3IhtCSHy", "optionBoxConfig": {"boxItems": [{"count": 9, "itemId": "ei1fIrPv", "itemSku": "fHnRN06E", "itemType": "jRwEQlNa"}, {"count": 31, "itemId": "cyNe27HL", "itemSku": "twtVOaxg", "itemType": "P6Jbct8p"}, {"count": 41, "itemId": "AQTGh5Bx", "itemSku": "jWOozGoD", "itemType": "tsUuYo5p"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 7, "fixedTrialCycles": 61, "graceDays": 92}, "regionData": {"QZAufwNa": [{"currencyCode": "8lzfjv9o", "currencyNamespace": "YMXMjlVH", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1988-09-21T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1995-09-10T00:00:00Z", "discountedPrice": 98, "expireAt": "1999-03-02T00:00:00Z", "price": 44, "purchaseAt": "1982-09-23T00:00:00Z", "trialPrice": 75}, {"currencyCode": "oav7MK0P", "currencyNamespace": "cLnEkcok", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1972-03-13T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-11-22T00:00:00Z", "discountedPrice": 3, "expireAt": "1975-01-02T00:00:00Z", "price": 4, "purchaseAt": "1986-06-02T00:00:00Z", "trialPrice": 95}, {"currencyCode": "OyJ2h23G", "currencyNamespace": "US2amU7s", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1987-05-14T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-09-10T00:00:00Z", "discountedPrice": 24, "expireAt": "1988-01-29T00:00:00Z", "price": 74, "purchaseAt": "1986-07-06T00:00:00Z", "trialPrice": 53}], "jqPBiWXa": [{"currencyCode": "de41s3rH", "currencyNamespace": "34mB2yPl", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1996-04-26T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1989-04-10T00:00:00Z", "discountedPrice": 69, "expireAt": "1988-01-10T00:00:00Z", "price": 17, "purchaseAt": "1984-12-18T00:00:00Z", "trialPrice": 53}, {"currencyCode": "5duE5p4c", "currencyNamespace": "fs2E41cK", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1981-10-22T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1985-03-12T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-08-04T00:00:00Z", "price": 62, "purchaseAt": "1982-09-03T00:00:00Z", "trialPrice": 49}, {"currencyCode": "FB67AODb", "currencyNamespace": "i9BzupBs", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1984-03-14T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1974-07-25T00:00:00Z", "discountedPrice": 5, "expireAt": "1987-06-10T00:00:00Z", "price": 89, "purchaseAt": "1977-09-05T00:00:00Z", "trialPrice": 4}], "h9tRk8kn": [{"currencyCode": "YSV30lnr", "currencyNamespace": "oQehMDli", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1981-01-06T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1984-12-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1990-09-07T00:00:00Z", "price": 2, "purchaseAt": "1996-06-17T00:00:00Z", "trialPrice": 49}, {"currencyCode": "4IjGdqth", "currencyNamespace": "RxTjQ7gk", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1999-06-14T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1986-09-26T00:00:00Z", "discountedPrice": 60, "expireAt": "1998-05-27T00:00:00Z", "price": 35, "purchaseAt": "1995-04-05T00:00:00Z", "trialPrice": 87}, {"currencyCode": "rV6kH4Oo", "currencyNamespace": "tKwG3UC6", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1981-04-22T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-01-11T00:00:00Z", "discountedPrice": 55, "expireAt": "1983-09-13T00:00:00Z", "price": 3, "purchaseAt": "1973-08-27T00:00:00Z", "trialPrice": 2}]}, "seasonType": "PASS", "sku": "YaJCJjfk", "stackable": true, "status": "INACTIVE", "tags": ["TDm5GloF", "rBBN9tU6", "SKWM1eym"], "targetCurrencyCode": "5ydC6p25", "targetNamespace": "xCWTqUOY", "thumbnailUrl": "ZENJ1QHZ", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'LGZ0TBuj' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'BJEECQE1' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'li3Bg7Jx' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 4, "orderNo": "iGzXtckn"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'rgidKupv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'O6aj4hCm' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'TC34jxW4' \
    --namespace $AB_NAMESPACE \
    --storeId 'pIDwdqXp' \
    --body '{"carousel": [{"alt": "mRmut9H9", "previewUrl": "XyWI8bp8", "thumbnailUrl": "fQxRuX91", "type": "video", "url": "CBgVRyih", "videoSource": "youtube"}, {"alt": "NZ84CVhz", "previewUrl": "iXV8HwSm", "thumbnailUrl": "vcvcDKF1", "type": "video", "url": "yVRafCjO", "videoSource": "vimeo"}, {"alt": "vqDejvqk", "previewUrl": "lTSvDwuO", "thumbnailUrl": "rP9lzpiX", "type": "video", "url": "uFpZum7i", "videoSource": "vimeo"}], "developer": "HgKjI9mw", "forumUrl": "JSrN8jkI", "genres": ["RPG", "Strategy", "Casual"], "localizations": {"xLv9HBEU": {"announcement": "e89AwEw1", "slogan": "HO4FnKtx"}, "4XLKAmlD": {"announcement": "r19uJ3nq", "slogan": "6VerzVCc"}, "I8y3Cz0Y": {"announcement": "qCKUh5RD", "slogan": "9vNAp4ji"}}, "platformRequirements": {"nFpnQ5xF": [{"additionals": "9wwbvMZy", "directXVersion": "eDeRnVfP", "diskSpace": "Ua6xVVBc", "graphics": "q3wZpFIY", "label": "eAg79HcL", "osVersion": "JXJ7mpVI", "processor": "6eTYAjdP", "ram": "lCiQQC35", "soundCard": "cj4KyOVg"}, {"additionals": "vnWbfRJt", "directXVersion": "sB7cUQZ2", "diskSpace": "QUAxJrIN", "graphics": "PXppPNO3", "label": "AfmXcgwC", "osVersion": "3IN6tvKg", "processor": "LB9QmJIO", "ram": "q9dP5szG", "soundCard": "71utjsQ4"}, {"additionals": "CrRb9gUC", "directXVersion": "eVz7fWbZ", "diskSpace": "IdhevfZv", "graphics": "yV7Acodc", "label": "ZwKjYDdm", "osVersion": "JOlzwm9S", "processor": "u4FnS98Q", "ram": "qftSjq7s", "soundCard": "n8yreciP"}], "LfkVyyJs": [{"additionals": "bGpO6Jge", "directXVersion": "hDJxEN7J", "diskSpace": "lZc8LMq1", "graphics": "o2jZWu4y", "label": "A3r0u4q1", "osVersion": "bTHXIjfJ", "processor": "KyFlM0u1", "ram": "uuoVdn9y", "soundCard": "VoSlKNch"}, {"additionals": "PHNL4X3L", "directXVersion": "LaGPGdqL", "diskSpace": "E8Sohhhu", "graphics": "iTnJarYY", "label": "kHBDdSzB", "osVersion": "Xdxapwhd", "processor": "5IQYBQux", "ram": "LvPuWYvE", "soundCard": "3fsNy9Z9"}, {"additionals": "OhxXvCp9", "directXVersion": "y7fLD2qf", "diskSpace": "CXnlUnqx", "graphics": "T1WsRNMZ", "label": "cA92hzC7", "osVersion": "MNa8vVe4", "processor": "MHX6AgMe", "ram": "p90AyyUJ", "soundCard": "yAK5PRMR"}], "Mwdvl0hv": [{"additionals": "6g62GxBW", "directXVersion": "2tQF5tkT", "diskSpace": "jgJaMYvN", "graphics": "QOsDa4bk", "label": "cgepqtxj", "osVersion": "brztee7Q", "processor": "LTGAak7K", "ram": "aol01DK9", "soundCard": "7D2xnik4"}, {"additionals": "2miteR5e", "directXVersion": "QAe1rzmm", "diskSpace": "gqBPRmd6", "graphics": "mO4oI8KD", "label": "qebm83ra", "osVersion": "NBJ5y7ax", "processor": "EkvI4oxZ", "ram": "EDxGiBnN", "soundCard": "bn0zaf7C"}, {"additionals": "aOSlHXrU", "directXVersion": "SA6sMJzA", "diskSpace": "5mtqISQ8", "graphics": "3TTbtefX", "label": "WznDe4LQ", "osVersion": "dXfFBii2", "processor": "RAMEX5RM", "ram": "jBFVZGYz", "soundCard": "QqV8d9mD"}]}, "platforms": ["Android", "MacOS", "Windows"], "players": ["Multi", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "Casual", "publisher": "LWfXqjr8", "releaseDate": "1974-04-17T00:00:00Z", "websiteUrl": "S79En3wY"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'owBdkaZ3' \
    --namespace $AB_NAMESPACE \
    --storeId 'y6i38XQj' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'LDRqkpiF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'K5BtiQ27' \
    --namespace $AB_NAMESPACE \
    --storeId '2Uo9UBJW' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'odpdwsX1' \
    --itemId 'jorcyR0x' \
    --namespace $AB_NAMESPACE \
    --storeId '3YiHF8IT' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'GPRQBCgI' \
    --itemId 's1Q2lzxl' \
    --namespace $AB_NAMESPACE \
    --storeId '0yF5m77T' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Th4gUoj8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'chW6zL9S' \
    --populateBundle 'false' \
    --region 'zVlnkflf' \
    --storeId 'n7pHY48F' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '1dl1q92m' \
    --namespace $AB_NAMESPACE \
    --storeId '3iRlfnBA' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 4, "comparison": "isNot", "name": "qcE15u6D", "predicateType": "SeasonTierPredicate", "value": "1DjOsrs3", "values": ["QGbqiqOk", "CUYATdqn", "NeATj7eG"]}, {"anyOf": 19, "comparison": "is", "name": "odd7CcJU", "predicateType": "SeasonPassPredicate", "value": "KiaoV0VO", "values": ["FxKybPkb", "uS6x9cLJ", "em2yqPsM"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "5jGcMICP", "predicateType": "SeasonTierPredicate", "value": "RBr27fVM", "values": ["OKiAVQXX", "R919IZPK", "WuAfDqLM"]}]}, {"operator": "and", "predicates": [{"anyOf": 34, "comparison": "isGreaterThanOrEqual", "name": "FHLbyXmg", "predicateType": "SeasonPassPredicate", "value": "3Uta5I0u", "values": ["jCH5olYL", "ETRpABAm", "GcL1koyH"]}, {"anyOf": 82, "comparison": "is", "name": "2EGvJ4UM", "predicateType": "SeasonTierPredicate", "value": "hDUjhKPw", "values": ["G8bXGFmP", "bwcvQU5k", "AnOkDiJq"]}, {"anyOf": 83, "comparison": "isLessThanOrEqual", "name": "j84O6tgo", "predicateType": "EntitlementPredicate", "value": "K3YVeOWs", "values": ["E7BYtzB0", "LBtn9pxp", "9mfVQh3j"]}]}, {"operator": "or", "predicates": [{"anyOf": 49, "comparison": "isLessThan", "name": "CxyQrUpI", "predicateType": "SeasonTierPredicate", "value": "WVZ77KeR", "values": ["WdECaFGz", "fZ2hxcJ2", "Fnemn7M2"]}, {"anyOf": 75, "comparison": "isNot", "name": "zUo4hNBD", "predicateType": "EntitlementPredicate", "value": "CvNowNmd", "values": ["pcJgF88y", "ulP4tQ6R", "SNq4Mj7m"]}, {"anyOf": 66, "comparison": "is", "name": "qKVOTniB", "predicateType": "EntitlementPredicate", "value": "kinOD975", "values": ["nARHCmhN", "HSXuqIHs", "xvaUoXDm"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'wWsukxnc' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "uD3QxCXM"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name '0R9s2knd' \
    --offset '15' \
    --tag 'VmM45mfI' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZsWhkS47", "name": "6dGGJwJ0", "status": "ACTIVE", "tags": ["H197MJ6z", "U7JLMQyM", "WzYQCAaP"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'JgoxGJoJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'aSzUtY4Z' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "D0Xtb0U4", "name": "pH16NUsV", "status": "ACTIVE", "tags": ["1NVIs7NR", "en2Y3Ns0", "QJQeaWyt"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Pfds1BYx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '0EaURydf' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '73' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'rOXyDYz9' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'vMUOPG0i' \
    --limit '69' \
    --offset '22' \
    --orderNos '["DT8QbF7g", "HPTPQbvL", "t2NRqJGI"]' \
    --sortBy 'KzLyH1y7' \
    --startTime '2L13Orny' \
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
    --orderNo '4luLdvts' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TKXMjiw6' \
    --body '{"description": "gYPvfn2Q"}' \
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
    --body '{"dryRun": true, "notifyUrl": "cNg14Ws8", "privateKey": "TIP1LKiF"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'QoLDvumf' \
    --externalId 'qrgSfnx2' \
    --limit '16' \
    --notificationSource 'XSOLLA' \
    --notificationType '1X9dN1MG' \
    --offset '90' \
    --paymentOrderNo 'ppUxDSK8' \
    --startDate 'aOTGMudc' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'lCV4cNbJ' \
    --limit '67' \
    --offset '89' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "iLilmOGF", "currencyNamespace": "6dLLIeIV", "customParameters": {"IjMcdlbd": {}, "RXTGIrdN": {}, "L5gJPqTA": {}}, "description": "jgqaTHf1", "extOrderNo": "ANTJ9Yk9", "extUserId": "97XkGOdC", "itemType": "LOOTBOX", "language": "ITfX-vPye", "metadata": {"jU1G0EVj": "VZw1ToLu", "PakQN1Mp": "Os1RVFrc", "g2CXxepx": "78fvsyhE"}, "notifyUrl": "2BKtyTDS", "omitNotification": true, "platform": "mkmvZ7Cm", "price": 38, "recurringPaymentOrderNo": "LNNz6QIV", "region": "C9Mfuc8V", "returnUrl": "OsnmnlVl", "sandbox": false, "sku": "CCVuFjS1", "subscriptionId": "GC1d2b92", "targetNamespace": "B4vEgj3H", "targetUserId": "OmhcWm42", "title": "8XejRF94"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'NIY9nMrB' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Zo0lNUBD' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ShHD32vv' \
    --body '{"extTxId": "L28FPwTi", "paymentMethod": "XfLcxDC9", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nd02mECI' \
    --body '{"description": "QhfIhHtA"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DUQ9zimQ' \
    --body '{"amount": 93, "currencyCode": "f7BULnZD", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 42, "vat": 73}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'tDM6Bqgu' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["System", "Steam", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
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
    --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'tnTKUe2z' \
    --limit '27' \
    --offset '88' \
    --source 'ORDER' \
    --startTime 't6PqlkL0' \
    --status 'FAIL' \
    --transactionId 'o2SwCUsT' \
    --userId 'ag4MLAo3' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "m61P2xaN", "eventTopic": "fmn8Onb1", "maxAwarded": 1, "maxAwardedPerUser": 30, "namespaceExpression": "9gMz0F2U", "rewardCode": "BRmMhAbU", "rewardConditions": [{"condition": "WmFhdYLW", "conditionName": "zMuv3zkU", "eventName": "Y0n0BAZk", "rewardItems": [{"duration": 47, "itemId": "IFbRkPSS", "quantity": 71}, {"duration": 55, "itemId": "Tz4TjCrJ", "quantity": 69}, {"duration": 67, "itemId": "xKNdOTac", "quantity": 57}]}, {"condition": "zhxHmnrr", "conditionName": "V9ZGWrZ0", "eventName": "5sxe6A6R", "rewardItems": [{"duration": 32, "itemId": "PhPUTKbo", "quantity": 28}, {"duration": 23, "itemId": "oucNmzwO", "quantity": 0}, {"duration": 83, "itemId": "yLLiizac", "quantity": 67}]}, {"condition": "rZ8iMlOu", "conditionName": "ksQJCiRF", "eventName": "iZWwJ7Nr", "rewardItems": [{"duration": 93, "itemId": "LTo5ijlv", "quantity": 61}, {"duration": 53, "itemId": "F8qBWCQ9", "quantity": 7}, {"duration": 55, "itemId": "LWYyS8zd", "quantity": 14}]}], "userIdExpression": "GM5anIlo"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yj9lhbvu' \
    --limit '86' \
    --offset '18' \
    --sortBy '["namespace", "rewardCode:desc", "namespace:asc"]' \
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
    --rewardId 'JOF7JKZF' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Nk2NKy59' \
    --body '{"description": "X8iOg2sV", "eventTopic": "BiCoeC5w", "maxAwarded": 9, "maxAwardedPerUser": 35, "namespaceExpression": "Jl7PeiMH", "rewardCode": "8z8dVej8", "rewardConditions": [{"condition": "N2yv6VTn", "conditionName": "OK7xAvM7", "eventName": "tuL81lsR", "rewardItems": [{"duration": 31, "itemId": "xxSVp3Gd", "quantity": 94}, {"duration": 94, "itemId": "ozCi8HeV", "quantity": 14}, {"duration": 18, "itemId": "Ymx82JVB", "quantity": 90}]}, {"condition": "fi7sSF5B", "conditionName": "oGiTCVsX", "eventName": "sygWbjE2", "rewardItems": [{"duration": 29, "itemId": "8jHz9x7X", "quantity": 73}, {"duration": 72, "itemId": "1too0qvx", "quantity": 31}, {"duration": 77, "itemId": "hTLEEBGT", "quantity": 40}]}, {"condition": "qTq3EVhe", "conditionName": "JjoEEXBL", "eventName": "IxGnNuho", "rewardItems": [{"duration": 72, "itemId": "xIq73aMb", "quantity": 17}, {"duration": 59, "itemId": "jISd97KO", "quantity": 89}, {"duration": 88, "itemId": "RhxSWLWL", "quantity": 82}]}], "userIdExpression": "zk5UcPAG"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'v6c1ESC6' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'hZYTYZbz' \
    --body '{"payload": {"f5aANNNs": {}, "5kgSZZNU": {}, "HbIT9szA": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'pmWJO5vz' \
    --body '{"conditionName": "zXZj08a6", "userId": "K1XRVfri"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'SpPFnZBJ' \
    --limit '74' \
    --offset '22' \
    --start 'rRBrYVzi' \
    --storeId '9ui3lvoz' \
    --viewId 'Tt9TsH7A' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '0TuU2aL4' \
    --body '{"active": false, "displayOrder": 84, "endDate": "1984-03-22T00:00:00Z", "ext": {"ziBOHEAj": {}, "1cT3u6Zc": {}, "2FbrTFzn": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 13, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "A54CSqZF", "sku": "DsO1skRj"}, {"id": "OU1SMfQV", "sku": "Qa6blj9R"}, {"id": "dd85bdYU", "sku": "umPKVSZC"}], "localizations": {"g3XTc9vQ": {"description": "e0dHJfF6", "localExt": {"KIuvnRCa": {}, "9JktyBdx": {}, "kZKrEWFw": {}}, "longDescription": "9GYxjiiO", "title": "QAD77ci0"}, "vfWVZoRR": {"description": "MPi57HyK", "localExt": {"Kz5nyI6u": {}, "lKNKoXa0": {}, "dgx1JgjC": {}}, "longDescription": "56pda3Yh", "title": "tQxpCYME"}, "6x21pdX2": {"description": "QSPAd9sx", "localExt": {"oLnWGP1P": {}, "afIjLX8c": {}, "e0KbNN7Y": {}}, "longDescription": "cl2JfmQp", "title": "lvGjVQ4a"}}, "name": "ebjfgGu4", "rotationType": "CUSTOM", "startDate": "1998-04-28T00:00:00Z", "viewId": "Q3WXiydC"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'OInVolsr' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6CHmj763' \
    --storeId 'vLwtYEJT' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SiXjcY5Z' \
    --storeId 'Pkv90lyK' \
    --body '{"active": true, "displayOrder": 49, "endDate": "1980-05-04T00:00:00Z", "ext": {"FZ0LpupE": {}, "i5DbkVs3": {}, "qFTi1t53": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 99, "itemCount": 18, "rule": "SEQUENCE"}, "items": [{"id": "ZQAJza84", "sku": "lKKmVOaT"}, {"id": "S6xBbNrS", "sku": "UAW2ak7I"}, {"id": "SDrBVg6N", "sku": "uDZvPb1k"}], "localizations": {"uUfNfUDe": {"description": "4g7q6PHE", "localExt": {"aqbzHvDD": {}, "l1jiLw3X": {}, "MGBA6JXD": {}}, "longDescription": "pA1tIC45", "title": "C0oaGouF"}, "u4hXONgU": {"description": "wJnUpryD", "localExt": {"eRcpUvlr": {}, "w2MwC1uu": {}, "okpaIjL0": {}}, "longDescription": "Vxe5n9Lx", "title": "3QcFo9gx"}, "OgvDc7xM": {"description": "rRKvw8IS", "localExt": {"P2WKmCRR": {}, "XBxlalCH": {}, "tWlKxLpS": {}}, "longDescription": "8fLWoQ5n", "title": "uJhatQPx"}}, "name": "R7dvBVC5", "rotationType": "FIXED_PERIOD", "startDate": "1988-02-22T00:00:00Z", "viewId": "nMOn8nc3"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'gUZ8ZFyy' \
    --storeId 'Er0KBXuJ' \
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
    --body '{"defaultLanguage": "BqK4QtEy", "defaultRegion": "dPWLPBYi", "description": "R3UbJc1Z", "supportedLanguages": ["Yapx7C47", "7etqgfOJ", "DUT0uKAP"], "supportedRegions": ["rARya2IM", "lNiXpF4q", "vsUUpHqi"], "title": "33TcBGkc"}' \
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
    --storeId '0HjUcnkp' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'U9oVzl2k' \
    --body '{"defaultLanguage": "BuLFXIeC", "defaultRegion": "EKZUTz3G", "description": "vCAZ5j24", "supportedLanguages": ["acYHbrry", "HB6GO9zP", "3FaepA3b"], "supportedRegions": ["3YJ9nJM6", "vtT27xv8", "5K5MU2qm"], "title": "beqaVemI"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'NdClpF7O' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'vlBIEgjs' \
    --action 'CREATE' \
    --itemSku 'UnEEgja2' \
    --itemType 'COINS' \
    --limit '72' \
    --offset '61' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "createdAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'HleLoog4' \
    --updatedAtStart 'me2NBFp6' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '2xlXvVcJ' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'erTPW02P' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'WsHiKYAr' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'AxnKBfBf' \
    --action 'DELETE' \
    --itemSku 'F5hCcouk' \
    --itemType 'COINS' \
    --type 'STORE' \
    --updatedAtEnd 'nbz4ys7j' \
    --updatedAtStart '6lxuU3u2' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'HEG0qfKe' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'gvFTD1sP' \
    --namespace $AB_NAMESPACE \
    --storeId 'ykS8YLmw' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'tYgWGcA0' \
    --namespace $AB_NAMESPACE \
    --storeId 'h4G1LZ1H' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'aX5UBMbs' \
    --targetStoreId 'F44VTsLD' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'CnYX2YBF' \
    --limit '74' \
    --offset '14' \
    --sku '3ggFDh2k' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'P7pnnVfx' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Pwc259HF' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '9ejHaILQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ruAuYyJL' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "YGqMv824"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ouSgkpK7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '0uJmUL0u' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 53, "orderNo": "EogFVGR7"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1rJOBy6l' \
    --body '{"achievements": [{"id": "sj1AKGBj", "value": 27}, {"id": "tztx3VAl", "value": 41}, {"id": "7DYAWWcb", "value": 5}], "steamUserId": "UOIzVcy9"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'k3ie64Vn' \
    --xboxUserId 'wa0ClGQJ' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ultJe32A' \
    --body '{"achievements": [{"id": "iwKadEoI", "value": 97}, {"id": "iMEtgKui", "value": 67}, {"id": "YD92CX0r", "value": 70}], "serviceConfigId": "ldL6rOVG", "titleId": "cRAn51rV", "xboxUserId": "AQSxp4qT"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'B54mKA3V' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '9DKlCeZ7' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'mLYsHooO' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'IaxIpb1c' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'IOJPS3lJ' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '80YJ41U4' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ooQ980yw' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'mg1pWpWi' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 't1QC7FKe' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '0fnHUlmU' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZJJzWZwv' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName '47bbwMI4' \
    --features '["gGmvK9gW", "596FwBNr", "FXt3TAuK"]' \
    --itemId '["BwBcD12a", "e6r3hHwy", "a4NpdOzg"]' \
    --limit '68' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'A9DkaSOW' \
    --body '[{"endDate": "1974-01-14T00:00:00Z", "grantedCode": "tg8yw8lH", "itemId": "EbVDwBAq", "itemNamespace": "anOlscRI", "language": "XKvm-pD", "quantity": 41, "region": "LMUaDSww", "source": "IAP", "startDate": "1978-11-26T00:00:00Z", "storeId": "JH4n0Jtg"}, {"endDate": "1979-02-13T00:00:00Z", "grantedCode": "zZv5kVu4", "itemId": "S95mj8YR", "itemNamespace": "vae4f4lh", "language": "oqn", "quantity": 70, "region": "rbWEm8bV", "source": "PURCHASE", "startDate": "1978-04-24T00:00:00Z", "storeId": "cfVCPdQh"}, {"endDate": "1975-04-12T00:00:00Z", "grantedCode": "XJvtggDd", "itemId": "XjbdjMBa", "itemNamespace": "hFZZGMTc", "language": "HOy_410", "quantity": 44, "region": "FBUsnnDJ", "source": "OTHER", "startDate": "1988-04-13T00:00:00Z", "storeId": "1sdH2RIJ"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'z1eI7Q5p' \
    --activeOnly 'true' \
    --appId 'NTwtnohd' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'dMzMTQ9P' \
    --activeOnly 'true' \
    --limit '91' \
    --offset '77' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rURGWUzP' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'BYJ2fkqY' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JoF2FI3v' \
    --ids '["yyqRzc20", "O7FdsJP1", "G9tyBTfE"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RXdvgD1Q' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --sku '7Ot2DkUt' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3yexZBRv' \
    --appIds '["xYnEBhXt", "AVxCd3me", "TrT7cF9o"]' \
    --itemIds '["VCh89wNO", "kKYssVej", "cL3kR3hC"]' \
    --skus '["GNgaJmuA", "LlMQl9RL", "rthbfp0V"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gweLlT2s' \
    --itemIds '["Y3SsTnDQ", "Y7kKU2u0", "6Q4veujx"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tyQENvJr' \
    --appId 'BCqeg67d' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4RWOqO4U' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'e4fJIyFA' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'm3DQht4J' \
    --ids '["wnPS2urJ", "qerobWMZ", "GVL5KLTx"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ahWlS6Xd' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'xyMchkt8' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'l5IPSrwr' \
    --entitlementIds 'Jl7wYIVw' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '13NCo9yX' \
    --namespace $AB_NAMESPACE \
    --userId 'lbQ52FTH' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'TCj6SEAz' \
    --namespace $AB_NAMESPACE \
    --userId 'T7TOpyiu' \
    --body '{"endDate": "1982-10-03T00:00:00Z", "nullFieldList": ["vQUm29Ia", "cq4XRLaA", "643nTMtX"], "startDate": "1993-07-14T00:00:00Z", "status": "REVOKED", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'yejnny0J' \
    --namespace $AB_NAMESPACE \
    --userId 'u13b6o5u' \
    --body '{"options": ["B2XM6IHy", "7EEvHyLm", "cvrZZOdw"], "requestId": "e1x8RjU6", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'MtqfIGiG' \
    --namespace $AB_NAMESPACE \
    --userId 'JovgWSRx' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Z8N4UQ2f' \
    --namespace $AB_NAMESPACE \
    --userId 'g3V1o2x0' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'hL5DuBDq' \
    --namespace $AB_NAMESPACE \
    --userId 'MyIAzWze' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '94MEdJFA' \
    --namespace $AB_NAMESPACE \
    --userId 'y2JTllJk' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'RGB8jqJE' \
    --body '{"duration": 8, "endDate": "1972-03-10T00:00:00Z", "itemId": "eqqsBVyO", "itemSku": "NV0JRtoz", "language": "I0jpliCF", "order": {"currency": {"currencyCode": "Q6WgJpGP", "currencySymbol": "igdc5VyC", "currencyType": "VIRTUAL", "decimals": 33, "namespace": "TNSV9E9y"}, "ext": {"yNb7yaLX": {}, "zAVYymOu": {}, "hCkZu4ht": {}}, "free": true}, "orderNo": "20NFRJIh", "origin": "Twitch", "quantity": 45, "region": "XR2dYprP", "source": "IAP", "startDate": "1973-01-13T00:00:00Z", "storeId": "PN1oco2j"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'x8Upe8Sj' \
    --body '{"code": "MvpqM8pu", "language": "pH-DhId_yI", "region": "rqGOQny4"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ij4ysYPo' \
    --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "SH7eKDfR", "namespace": "cngEpTnR"}, "item": {"itemId": "UQr3RLOM", "itemSku": "1vEx4gqD", "itemType": "Y6jwyKRx"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "tP5TDuI5", "namespace": "f6m4KC07"}, "item": {"itemId": "CnsZe32h", "itemSku": "qEcB1ExY", "itemType": "MBb3ckvo"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "JYdMqGeg", "namespace": "cg3eRvBZ"}, "item": {"itemId": "XN3cjIXm", "itemSku": "FWRJnj8x", "itemType": "N7HDPTUE"}, "quantity": 61, "type": "CURRENCY"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '1Kb4UTPW' \
    --endTime 'DXTSb55g' \
    --limit '78' \
    --offset '91' \
    --productId 'FNXypoOL' \
    --startTime 'l13j84P0' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dnI6Ag7e' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'UYcYJ4Qz' \
    --endTime 'XCmqr6gm' \
    --limit '86' \
    --offset '91' \
    --startTime 'GaHP5SVP' \
    --status 'PENDING' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'RLiDi0mN' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "cO-nEWR-711", "productId": "j17xGhaB", "region": "KoUfiHjG", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'MRf2VJet' \
    --itemId 'Wsokvx3B' \
    --limit '68' \
    --offset '13' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'F2cSuzts' \
    --body '{"currencyCode": "J5tj64gV", "currencyNamespace": "7nmDk29m", "discountedPrice": 5, "ext": {"ssSA8nP5": {}, "PQjpzk2T": {}, "b7iYdmNZ": {}}, "itemId": "WosrsVBP", "language": "Z64j0HUO", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 23, "quantity": 4, "region": "xcCKAru8", "returnUrl": "pOaAVLDB", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'T83zEGXm' \
    --itemId 'VBZLyrH9' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'J7Boysma' \
    --userId 'ORLkP5hc' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '2Fh04JTs' \
    --userId 'qDTynCew' \
    --body '{"status": "DELETED", "statusReason": "yazqXRqe"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gIUicYXX' \
    --userId 'zxsBFrUs' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '9BYp6TgC' \
    --userId 'ejBd5o7i' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'TST7R3Kb' \
    --userId 'bQGERMNp' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'qWb51y5R' \
    --userId 'UzvMfTkP' \
    --body '{"additionalData": {"cardSummary": "y0fGvTGg"}, "authorisedTime": "1973-07-08T00:00:00Z", "chargebackReversedTime": "1990-10-29T00:00:00Z", "chargebackTime": "1995-05-29T00:00:00Z", "chargedTime": "1993-02-17T00:00:00Z", "createdTime": "1989-01-12T00:00:00Z", "currency": {"currencyCode": "UKk5ozrX", "currencySymbol": "A4HZHNyq", "currencyType": "REAL", "decimals": 73, "namespace": "danhR1Zr"}, "customParameters": {"m3thUvV8": {}, "7yfkycLS": {}, "VdleSaAy": {}}, "extOrderNo": "lsmLYe2p", "extTxId": "hYOgT5kD", "extUserId": "TyPl3dKF", "issuedAt": "1989-11-19T00:00:00Z", "metadata": {"wkENQ8VO": "HGwbADMf", "uOmh0lci": "RhVZ2Deo", "ODXMzLSr": "zoiBnYi5"}, "namespace": "UWs3tYlY", "nonceStr": "eMoCimJy", "paymentMethod": "SocRvUWD", "paymentMethodFee": 83, "paymentOrderNo": "5cPnmGjT", "paymentProvider": "WALLET", "paymentProviderFee": 54, "paymentStationUrl": "a5Pqx1K7", "price": 33, "refundedTime": "1975-01-25T00:00:00Z", "salesTax": 54, "sandbox": false, "sku": "oijBPAp6", "status": "INIT", "statusReason": "fqjNjLOt", "subscriptionId": "NQts2yxf", "subtotalPrice": 19, "targetNamespace": "MLZJ2jZf", "targetUserId": "ZbpTJezz", "tax": 36, "totalPrice": 5, "totalTax": 16, "txEndTime": "1998-08-22T00:00:00Z", "type": "WFgKjE94", "userId": "5x2CPVYY", "vat": 67}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'c84OMIzv' \
    --userId 'TScdbKBs' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AyJMz4IL' \
    --body '{"currencyCode": "NDvhB4Eo", "currencyNamespace": "es9a6XaJ", "customParameters": {"eRbzTPwD": {}, "3jxF7vxR": {}, "UY0ilrNo": {}}, "description": "FT98SgtJ", "extOrderNo": "d4Z5f8nf", "extUserId": "aKqdZFLb", "itemType": "OPTIONBOX", "language": "jip-eFYz", "metadata": {"bsSgR43k": "IDzxBwqR", "JTzrHNZW": "Usq5lQo2", "jy29EJig": "qYhyVhUR"}, "notifyUrl": "x1yPeczR", "omitNotification": true, "platform": "zQuoZcXQ", "price": 31, "recurringPaymentOrderNo": "lx2JG2KN", "region": "GfhzfCTx", "returnUrl": "xrsRRLee", "sandbox": true, "sku": "cJ7DQIi4", "subscriptionId": "5aCDHN9m", "title": "Vug2zkVf"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6KgpKOcn' \
    --userId '3tMD9UT6' \
    --body '{"description": "7bOwugFD"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'a6wUQveh' \
    --body '{"code": "KqwCh86X", "orderNo": "mRkCEcfH"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'DCdl59Wp' \
    --body '{"meta": {"9A3tXGve": {}, "6DdK6uvg": {}, "8f2cIoBy": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "Bw3xLUcC", "namespace": "Et0DzmkJ"}, "entitlement": {"entitlementId": "q1sml5bY"}, "item": {"itemIdentity": "t76BNsi4", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 18, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "9434WpKK", "namespace": "dzxoufCN"}, "entitlement": {"entitlementId": "lFoOcWQQ"}, "item": {"itemIdentity": "y4bjmQeE", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "t5UGkInF", "namespace": "GpuUsdtq"}, "entitlement": {"entitlementId": "4dOwNESz"}, "item": {"itemIdentity": "CEW9dUVh", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 34, "type": "ITEM"}], "source": "DLC", "transactionId": "ftC3sCS8"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'CpLCqPD9' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'NOBWydXV' \
    --limit '64' \
    --offset '74' \
    --sku 'i02aFr8C' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'M8Rr45UL' \
    --excludeSystem 'true' \
    --limit '36' \
    --offset '86' \
    --subscriptionId 'VNrm8drv' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '8QD2JOe2' \
    --body '{"grantDays": 82, "itemId": "aS7rDBf2", "language": "S54phbdy", "reason": "GDt47f9G", "region": "WRlE9hqz", "source": "6rjDNo4r"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hjxUdMM8' \
    --itemId '3WekqfWv' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '04vvn9bk' \
    --userId '5qr8qs2m' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qtnGAqXU' \
    --userId 'jNypF6MM' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qWpdEJsP' \
    --userId 'oaIbYz8c' \
    --force 'false' \
    --body '{"immediate": false, "reason": "ounC3vJK"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BC7SwgoV' \
    --userId 'iPeIB4Eh' \
    --body '{"grantDays": 51, "reason": "vamIRZHz"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sIYOCUoi' \
    --userId 'CXNjrdQL' \
    --excludeFree 'false' \
    --limit '20' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dx1eIba1' \
    --userId 'sB0HsJ06' \
    --body '{"additionalData": {"cardSummary": "DzfbzRYt"}, "authorisedTime": "1991-09-20T00:00:00Z", "chargebackReversedTime": "1995-07-07T00:00:00Z", "chargebackTime": "1983-01-02T00:00:00Z", "chargedTime": "1981-04-25T00:00:00Z", "createdTime": "1977-06-03T00:00:00Z", "currency": {"currencyCode": "BeIqdQGZ", "currencySymbol": "C5kM03HH", "currencyType": "REAL", "decimals": 20, "namespace": "FGUPhR4L"}, "customParameters": {"EZvz3EjF": {}, "R7996Ug5": {}, "m4axDV5u": {}}, "extOrderNo": "TcYsoahU", "extTxId": "rELQ1btj", "extUserId": "JOqQMgZW", "issuedAt": "1984-11-10T00:00:00Z", "metadata": {"U6E92nHJ": "zvw7tnYt", "Gfv0EJyj": "Bu4EzwRj", "D7jmQJeF": "PghqamSc"}, "namespace": "5y0X48eT", "nonceStr": "7Mluexk8", "paymentMethod": "7b9Z5BTs", "paymentMethodFee": 62, "paymentOrderNo": "OwrSfWhT", "paymentProvider": "ADYEN", "paymentProviderFee": 56, "paymentStationUrl": "abP4xRow", "price": 11, "refundedTime": "1993-11-15T00:00:00Z", "salesTax": 24, "sandbox": false, "sku": "uBtRFPKT", "status": "AUTHORISE_FAILED", "statusReason": "prR3OEey", "subscriptionId": "0MkZwS6T", "subtotalPrice": 41, "targetNamespace": "wNN3UYhi", "targetUserId": "c03qGEg5", "tax": 11, "totalPrice": 85, "totalTax": 80, "txEndTime": "1988-07-23T00:00:00Z", "type": "laeYl4cs", "userId": "Fq65cU66", "vat": 51}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'HeT7VEPg' \
    --namespace $AB_NAMESPACE \
    --userId 'G40QyXzs' \
    --body '{"count": 82, "orderNo": "8v5peiux"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'oBJATauy' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'D3XCXVMi' \
    --namespace $AB_NAMESPACE \
    --userId 'yEvMf9yi' \
    --body '{"allowOverdraft": false, "amount": 95, "balanceOrigin": "Playstation", "reason": "Eujk6oqY"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'o1HQYTFz' \
    --namespace $AB_NAMESPACE \
    --userId 'wdOMdupw' \
    --limit '60' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'O3uNbcID' \
    --namespace $AB_NAMESPACE \
    --userId 'cIyvZbOy' \
    --body '{"amount": 38, "expireAt": "1994-07-04T00:00:00Z", "origin": "GooglePlay", "reason": "cZ2PofaJ", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '4RpfmjIX' \
    --namespace $AB_NAMESPACE \
    --userId 'FGZ5PKdb' \
    --body '{"amount": 1, "walletPlatform": "Nintendo"}' \
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
    --storeId 'bJIkNnt9' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'P1Tkm08l' \
    --body '{"displayOrder": 42, "localizations": {"c0r4GqF0": {"description": "NHglOVuN", "localExt": {"Z9LzNeJn": {}, "Burh54CW": {}, "bYb0Peby": {}}, "longDescription": "t8b4DGsc", "title": "jwrizsFU"}, "gYwbaLvq": {"description": "vQ2NbmDI", "localExt": {"TuymTBjn": {}, "3d2sFzMS": {}, "3QaVjZF7": {}}, "longDescription": "Ax6115Kg", "title": "9U8vrQJX"}, "QxoIbVi2": {"description": "CLEk277I", "localExt": {"vjj1A647": {}, "XQ3koaAf": {}, "ZIim0sFP": {}}, "longDescription": "m1YN27bo", "title": "jDVaZLpx"}}, "name": "4kEWYkO6"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'KrKUMhJr' \
    --storeId 'ASBh61hm' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'WKSSrF35' \
    --storeId 'anDGvur1' \
    --body '{"displayOrder": 98, "localizations": {"V18oIrUK": {"description": "XttgAI2Q", "localExt": {"dWJFLmoP": {}, "Egd8EMsp": {}, "Os8nkic9": {}}, "longDescription": "gj5vyUMA", "title": "AmIHYbsx"}, "G5N066FX": {"description": "b88SbLOa", "localExt": {"21DiSFsm": {}, "0XXQJWsz": {}, "vTQEuALz": {}}, "longDescription": "DNp1SZ58", "title": "aDllwzTR"}, "Hak1MXxj": {"description": "7Esrg790", "localExt": {"0nml5Bid": {}, "sK9dCEzh": {}, "VnOv0PQb": {}}, "longDescription": "VIaKiHfo", "title": "eorY7A1o"}}, "name": "tGFyv2SM"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'jbEr50qG' \
    --storeId 'dCZIc6EF' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'qBKxbS7Q' \
    --end '2OgRucL1' \
    --start 'jwRXzfjD' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["ZBmOau6s", "yme06c6S", "KLc2mEC3"], "apiKey": "IXl5XCbk", "authoriseAsCapture": true, "blockedPaymentMethods": ["fHaGr5kd", "azlypvt6", "lSLfU7HB"], "clientKey": "yGXPMqxj", "dropInSettings": "4hBgVY3Y", "liveEndpointUrlPrefix": "AxZLKbcO", "merchantAccount": "dyjqf6Q4", "notificationHmacKey": "oiwoJcaR", "notificationPassword": "MEb15LBl", "notificationUsername": "TVufc5Zy", "returnUrl": "ODR2NVyn", "settings": "4PRqf3eR"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "1xhNP4t6", "privateKey": "kYBUjyXA", "publicKey": "n3bWQF6Q", "returnUrl": "cAiJpXIr"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "l5xWnsb8", "secretKey": "oWq94RIm"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'NWVIJnhh' \
    --region 'wFDV1Vit' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "cV8DY0XO", "clientSecret": "kDstxZcY", "returnUrl": "1HgAnZV4", "webHookId": "IOglVLqb"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["81dYdvGx", "JAMDRA1L", "F7jdWlek"], "publishableKey": "FwO94VBC", "secretKey": "V9qJhWva", "webhookSecret": "2FPBujX0"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "geYCpGJM", "key": "4sqsPNJM", "mchid": "iZXXOFwm", "returnUrl": "GWAvNF0Z"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "0GkwxUNY", "flowCompletionUrl": "yNwGiKrk", "merchantId": 27, "projectId": 13, "projectSecretKey": "H0Y5mrQg"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'LC6D2qsF' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'iQHglUQM' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["OibJY9aL", "9ie6vvMb", "iNURrlm8"], "apiKey": "8QlKyuoy", "authoriseAsCapture": false, "blockedPaymentMethods": ["8TuNy4ej", "mVA3vMCs", "GyPd12B8"], "clientKey": "QNUz0hFF", "dropInSettings": "NbH6j2W4", "liveEndpointUrlPrefix": "roZM2UKA", "merchantAccount": "XEEsL5D0", "notificationHmacKey": "oiFchQnV", "notificationPassword": "eq3g2AB2", "notificationUsername": "WIRUQmau", "returnUrl": "IY5HXCZ0", "settings": "W4XmWP0H"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'zSdiylLh' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Yszm8xY3' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "Qbumu2QH", "privateKey": "LyZNuysy", "publicKey": "M4OfCzdQ", "returnUrl": "CXMAWnf8"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '7YPNOe9E' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'dKZRyR9A' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "jxvNZhM8", "secretKey": "4DiZk6yS"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'rB9SVFct' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '7YS0OkL7' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "eEAtALFI", "clientSecret": "3v8yha4p", "returnUrl": "d5A7MYcp", "webHookId": "BD6lKNb8"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'RxvN2u5J' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'kqgS2B37' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["woPYOHiI", "sxmsLBPB", "JuNLnWRr"], "publishableKey": "tW870qD8", "secretKey": "8ZcduZSe", "webhookSecret": "7W20UZcD"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'aiq0nEZ7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'yhqFJkDC' \
    --validate 'false' \
    --body '{"appId": "Fwiz70tR", "key": "VLMlHi8i", "mchid": "9gOVqajU", "returnUrl": "WrgEsWDt"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'aKzn8dZw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'nnGeZsZV' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'gbPzPFbr' \
    --validate 'false' \
    --body '{"apiKey": "Nzot3sVl", "flowCompletionUrl": "i3GN2XTr", "merchantId": 64, "projectId": 18, "projectSecretKey": "ZUrrp9ub"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'g9mndW2J' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'KmQafUs2' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '40' \
    --namespace '3KEe2BjV' \
    --offset '90' \
    --region 'bzgUwd8D' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "xlgjzIhp", "region": "gOoIOD74", "sandboxTaxJarApiToken": "V21HWDAf", "specials": ["WALLET", "CHECKOUT", "WALLET"], "taxJarApiToken": "QN1di1ld", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'h6HvjnYu' \
    --region 'V7NfC4A2' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'ODiZhbfb' \
    --body '{"aggregate": "XSOLLA", "namespace": "QqCyK1XH", "region": "9D6vl5eF", "sandboxTaxJarApiToken": "dFfgK46G", "specials": ["CHECKOUT", "XSOLLA", "ALIPAY"], "taxJarApiToken": "aP8huTmn", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '3FGQn3Ah' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "u5wxq6oJ", "taxJarApiToken": "q4mChmQH", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ZMi2o1nR": "482D6gNC", "lk9c87ho": "saPFC5zB", "W3ZgVZCj": "9ObVGT0S"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'cwl4kNmC' \
    --end 'i15XTJTg' \
    --start 'CNNH7RtG' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '5Xmo9Q0W' \
    --storeId 'b07N17fk' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'xZSc6VbE' \
    --storeId '0AGcekjM' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'NHuPXtz8' \
    --namespace $AB_NAMESPACE \
    --language 'tXxrmzaf' \
    --storeId 'MUguyDoN' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '91uc28Ho' \
    --namespace $AB_NAMESPACE \
    --language 'SpGt1g0G' \
    --storeId 'GbT4Hf2P' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'PKOldkbg' \
    --namespace $AB_NAMESPACE \
    --language 'X9CWJKwX' \
    --storeId 'XSbv5eg9' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 307 'GetIAPItemMapping' test.out

#- 308 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '6IaDFjjx' \
    --region '6uZerWbt' \
    --storeId 'wTX9gNRB' \
    --appId 'yjbE8lOL' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetItemByAppId' test.out

#- 309 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'DH3DfLCv' \
    --categoryPath '8q4Thmq0' \
    --features '9bBgPAYx' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --language 'BE9jlnTg' \
    --limit '40' \
    --offset '13' \
    --region 'lRwtc43a' \
    --sortBy '["displayOrder:desc", "updatedAt:asc", "createdAt:desc"]' \
    --storeId 'KvQX4yFQ' \
    --tags 'FdrRoM6F' \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryItems' test.out

#- 310 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'oqCYw7Al' \
    --region 'xO6qdFpc' \
    --storeId '71sSck3g' \
    --sku 'gZWJlSlC' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemBySku' test.out

#- 311 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'QMDji329' \
    --region 'PfVrvMEP' \
    --storeId 'tpsSNcpK' \
    --itemIds '1QkB2Sy8' \
    > test.out 2>&1
eval_tap $? 311 'PublicBulkGetItems' test.out

#- 312 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Ww79LVeV", "skqeUB7R", "SayqGFgu"]}' \
    > test.out 2>&1
eval_tap $? 312 'PublicValidateItemPurchaseCondition' test.out

#- 313 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '36' \
    --offset '14' \
    --region 'o5B19VE8' \
    --storeId '38c7OydV' \
    --keyword 'w0zCqoMZ' \
    --language 'vpIOO97D' \
    > test.out 2>&1
eval_tap $? 313 'PublicSearchItems' test.out

#- 314 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'mQ5ZOzx6' \
    --namespace $AB_NAMESPACE \
    --language 'iCJTu60I' \
    --region 'ifzMhkk5' \
    --storeId 'PxsjqbCK' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetApp' test.out

#- 315 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'pMv2Yky9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItemDynamicData' test.out

#- 316 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'DYkD2sIl' \
    --namespace $AB_NAMESPACE \
    --language 'lFtBtXJK' \
    --populateBundle 'true' \
    --region '3rqBmILh' \
    --storeId 'tWm8RQvR' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetItem' test.out

#- 317 GetPaymentCustomization
eval_tap 0 317 'GetPaymentCustomization # SKIP deprecated' test.out

#- 318 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "UbUDSief", "paymentProvider": "ADYEN", "returnUrl": "EdLucrtO", "ui": "2gCQD057", "zipCode": "DrDlgC2n"}' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentUrl' test.out

#- 319 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zS9SiGUj' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetPaymentMethods' test.out

#- 320 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VAw4v3q6' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUnpaidPaymentOrder' test.out

#- 321 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JRHcn7Ka' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'OCDyVAHr' \
    --body '{"token": "HncR5dSh"}' \
    > test.out 2>&1
eval_tap $? 321 'Pay' test.out

#- 322 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qiBUI9es' \
    > test.out 2>&1
eval_tap $? 322 'PublicCheckPaymentOrderPaidStatus' test.out

#- 323 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'XegSEhrP' \
    > test.out 2>&1
eval_tap $? 323 'GetPaymentPublicConfig' test.out

#- 324 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'pK2q8kxR' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetQRCode' test.out

#- 325 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '4BuEksS2' \
    --foreinginvoice 'A9VOA8H9' \
    --invoiceId 'VeHv0L2A' \
    --payload 'cm960EYQ' \
    --redirectResult 'EuGJVl8x' \
    --resultCode 's1WId9Wl' \
    --sessionId 'alqshF9R' \
    --status 'h2o7GCQG' \
    --token 'PCxwEdky' \
    --type 'uT3MgzRe' \
    --userId 'Rq0112IS' \
    --orderNo 'ArROIodc' \
    --paymentOrderNo 'mM6v2AEo' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'hFVQTRek' \
    > test.out 2>&1
eval_tap $? 325 'PublicNormalizePaymentReturnUrl' test.out

#- 326 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'Lfjmy8zo' \
    --paymentOrderNo 'sRCRgVwb' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentTaxValue' test.out

#- 327 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'rtuWWrqT' \
    > test.out 2>&1
eval_tap $? 327 'GetRewardByCode' test.out

#- 328 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ZbSqBSKp' \
    --limit '32' \
    --offset '54' \
    --sortBy '["namespace", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 328 'QueryRewards1' test.out

#- 329 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZQY8CNyT' \
    > test.out 2>&1
eval_tap $? 329 'GetReward1' test.out

#- 330 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicListStores' test.out

#- 331 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["4k3DIbfT", "22G5NpE1", "30YWSgxp"]' \
    --itemIds '["KWtdtdtV", "W9anENmx", "b9e7vXZV"]' \
    --skus '["3ig8Jg5V", "ByeI3ycM", "cYYBixKJ"]' \
    > test.out 2>&1
eval_tap $? 331 'PublicExistsAnyMyActiveEntitlement' test.out

#- 332 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'XCISQdwe' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 333 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'cxKs4nlf' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 334 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'tUh74KVo' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 335 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["6Xqjz2xU", "KLNWSmYy", "VvyelIJ8"]' \
    --itemIds '["QgaLMqi8", "36ULa7cf", "Zl4VuY6r"]' \
    --skus '["sZyo6CBR", "RnoOikIx", "XKKIR6kP"]' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetEntitlementOwnershipToken' test.out

#- 336 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "mswm5TCA", "language": "YC-Dpkm_vL", "region": "3GLmSZns"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncTwitchDropsEntitlement' test.out

#- 337 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '5owBhoUg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyWallet' test.out

#- 338 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '4LsGP6KL' \
    --body '{"epicGamesJwtToken": "PXkvUv2X"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncEpicGameDLC' test.out

#- 339 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'iXaBzsma' \
    --body '{"serviceLabel": 48}' \
    > test.out 2>&1
eval_tap $? 339 'PublicSyncPsnDlcInventory' test.out

#- 340 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '7eHnVWOb' \
    --body '{"serviceLabels": [51, 29, 78]}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 341 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tGka7Kv5' \
    --body '{"appId": "TacQKF4O", "steamId": "lRGdmXxE"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncSteamDLC' test.out

#- 342 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TLEQrr3K' \
    --body '{"xstsToken": "CAV9alq3"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxDLC' test.out

#- 343 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hK1G4kKo' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'SNNUZuiy' \
    --features '["nZ64Iwnc", "ZPk82GF3", "eTC0vzZU"]' \
    --itemId '["Dj9dzGgG", "Vxo9OHgf", "HumyfuBN"]' \
    --limit '18' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlements' test.out

#- 344 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'secYbcOp' \
    --appId 'R45VDlvS' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserAppEntitlementByAppId' test.out

#- 345 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'c0Mr7Imw' \
    --limit '59' \
    --offset '69' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlementsByAppType' test.out

#- 346 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2wToOnq9' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '97KvKyj3' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementByItemId' test.out

#- 347 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'MqS7Dcmt' \
    --entitlementClazz 'APP' \
    --sku 'CjhnKvsH' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlementBySku' test.out

#- 348 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ezWTqgYP' \
    --appIds '["ixtHk6lW", "q6tEeUmU", "96FLEak0"]' \
    --itemIds '["mJqjRYld", "cTpdeCD9", "XPRi4bAQ"]' \
    --skus '["L7VE2wL8", "Y4JFVUdz", "A8bvXlDh"]' \
    > test.out 2>&1
eval_tap $? 348 'PublicExistsAnyUserActiveEntitlement' test.out

#- 349 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'G7BrorbK' \
    --appId 'IKuOXJPm' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 350 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5ztrr09C' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'vQq2a9Yd' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 351 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'FNtRVSO0' \
    --ids '["js0hG9xm", "Snzd7zgU", "xAogcnGk"]' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 352 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Xk17QPkJ' \
    --entitlementClazz 'MEDIA' \
    --sku 'spQD9IRI' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 353 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'pDDubntP' \
    --namespace $AB_NAMESPACE \
    --userId 'CFxfeoW2' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlement' test.out

#- 354 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'NdSWzOXj' \
    --namespace $AB_NAMESPACE \
    --userId 'O1NQUqWH' \
    --body '{"options": ["BW78XREZ", "CiTNAxq2", "6gZrPqCs"], "requestId": "SDspvgM1", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 354 'PublicConsumeUserEntitlement' test.out

#- 355 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'sZ6rjnkH' \
    --body '{"code": "4ExObppC", "language": "dyn", "region": "Dm5ge659"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicRedeemCode' test.out

#- 356 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UDEOF6gp' \
    --body '{"excludeOldTransactions": true, "language": "QFuM_wo", "productId": "bqJnZcrq", "receiptData": "rPye7fCw", "region": "i7Il2wIF", "transactionId": "lHm9N6ow"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillAppleIAPItem' test.out

#- 357 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MHMtJy1O' \
    --body '{"epicGamesJwtToken": "qn59tEGm"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncEpicGamesInventory' test.out

#- 358 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '9NYeUT5P' \
    --body '{"autoAck": false, "language": "Yww_KAQd_jg", "orderId": "9TnvzEqB", "packageName": "NMF9CZvP", "productId": "xT5zbreM", "purchaseTime": 6, "purchaseToken": "v3kMiuQ3", "region": "DhsKLxjt"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicFulfillGoogleIAPItem' test.out

#- 359 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '5srPFxBg' \
    --body '{"currencyCode": "pFtDBmTL", "price": 0.5341748795287914, "productId": "9kP9U53z", "serviceLabel": 52}' \
    > test.out 2>&1
eval_tap $? 359 'PublicReconcilePlayStationStore' test.out

#- 360 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'joBAhAlJ' \
    --body '{"currencyCode": "GI2YYb6a", "price": 0.16054296828203762, "productId": "Bjgq6eY4", "serviceLabels": [12, 85, 55]}' \
    > test.out 2>&1
eval_tap $? 360 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 361 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GJeJaxyH' \
    --body '{"appId": "YutgXucx", "currencyCode": "85vHA009", "language": "waYB_XmEz", "price": 0.17196700858694192, "productId": "80y9uxgV", "region": "LGgK8aVS", "steamId": "CN6oCETQ"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncSteamInventory' test.out

#- 362 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '8gIDRdD2' \
    --body '{"gameId": "wwMXwKVX", "language": "FqvH-zCxt_607", "region": "PHc9r8eT"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncTwitchDropsEntitlement1' test.out

#- 363 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'oFmkHJ6B' \
    --body '{"currencyCode": "POKFLxIw", "price": 0.5860652856464952, "productId": "ssw647Yw", "xstsToken": "DudnGRuf"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncXboxInventory' test.out

#- 364 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'OUGfMjTU' \
    --itemId '226l07jP' \
    --limit '23' \
    --offset '42' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 364 'PublicQueryUserOrders' test.out

#- 365 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'TyM2qohg' \
    --body '{"currencyCode": "lzO8AEl6", "discountedPrice": 55, "ext": {"8qVceS9U": {}, "X48dKPCF": {}, "UIeyYEym": {}}, "itemId": "NXzNX6TG", "language": "Qv-Fv", "price": 57, "quantity": 39, "region": "962e6gtn", "returnUrl": "5pUARJM1"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserOrder' test.out

#- 366 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T8QwMNOA' \
    --userId 'zXmyHEV4' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrder' test.out

#- 367 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'g9P6a280' \
    --userId 'S5RNB5dV' \
    > test.out 2>&1
eval_tap $? 367 'PublicCancelUserOrder' test.out

#- 368 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'CsB7xL4a' \
    --userId 'xSPgPCiw' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserOrderHistories' test.out

#- 369 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'LxCFLDix' \
    --userId 'ZwVtt3RV' \
    > test.out 2>&1
eval_tap $? 369 'PublicDownloadUserOrderReceipt' test.out

#- 370 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Tl0tR00o' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentAccounts' test.out

#- 371 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'QgcHdGGK' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 't6YJ2tWw' \
    > test.out 2>&1
eval_tap $? 371 'PublicDeletePaymentAccount' test.out

#- 372 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'F7RnP1oK' \
    --language '3c4RVfjB' \
    --region '0zi3XrYZ' \
    --storeId 'UiN24ol1' \
    --viewId 'qqbalgiz' \
    > test.out 2>&1
eval_tap $? 372 'PublicListActiveSections' test.out

#- 373 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'L97ycJV5' \
    --chargeStatus 'CHARGED' \
    --itemId 'qE2myQzl' \
    --limit '46' \
    --offset '75' \
    --sku 'fHr6WvBx' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserSubscriptions' test.out

#- 374 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fE9nbE2P' \
    --body '{"currencyCode": "Mv12ZSRJ", "itemId": "kujxbCu1", "language": "ZgAB", "region": "xs3GuA4S", "returnUrl": "1dS7H7yI", "source": "S7b5TSDR"}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSubscribeSubscription' test.out

#- 375 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IoMg7Dc5' \
    --itemId 'APzfzXDE' \
    > test.out 2>&1
eval_tap $? 375 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 376 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LJFaIaEM' \
    --userId 'W5bhJyL7' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserSubscription' test.out

#- 377 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2WDyhBsC' \
    --userId 'CbnfihnX' \
    > test.out 2>&1
eval_tap $? 377 'PublicChangeSubscriptionBillingAccount' test.out

#- 378 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KxGxaupn' \
    --userId 'TTq9ihZk' \
    --body '{"immediate": true, "reason": "5M1qgFdd"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelSubscription' test.out

#- 379 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YvifGHaw' \
    --userId 'Nx6yhniE' \
    --excludeFree 'false' \
    --limit '76' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscriptionBillingHistories' test.out

#- 380 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'kLwioRaK' \
    --language 'nWhlh80B' \
    --storeId 'hYe2fJDS' \
    > test.out 2>&1
eval_tap $? 380 'PublicListViews' test.out

#- 381 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '6T75Q4ul' \
    --namespace $AB_NAMESPACE \
    --userId 'onMFjmYq' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetWallet' test.out

#- 382 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'E1wJhfog' \
    --namespace $AB_NAMESPACE \
    --userId 'Wg2Apm0s' \
    --limit '95' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserWalletTransactions' test.out

#- 383 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate '8aWn65Co' \
    --baseAppId '0vdCk8so' \
    --categoryPath '6JSaZAIa' \
    --features 'dKDEZywo' \
    --includeSubCategoryItem 'false' \
    --itemName 'sqMY9aul' \
    --itemStatus 'INACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '76' \
    --offset '26' \
    --region '6NOV5agp' \
    --sortBy '["displayOrder:desc", "name:asc", "updatedAt"]' \
    --storeId 'mkufBpWV' \
    --tags 'xIK9D2bT' \
    --targetNamespace 'cgaKocca' \
    > test.out 2>&1
eval_tap $? 383 'QueryItems1' test.out

#- 384 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'SwWcZmzC' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 384 'ImportStore1' test.out

#- 385 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'WGI1cIQc' \
    --body '{"itemIds": ["PWAShIhi", "eSKUf3zK", "byQk2vQT"]}' \
    > test.out 2>&1
eval_tap $? 385 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE