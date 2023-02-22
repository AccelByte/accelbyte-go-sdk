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
    --body '{"context": {"item": {"appId": "uRPIWCPp", "appType": "DEMO", "baseAppId": "MR5yoTtE", "boothName": "ajP9uJrw", "boundItemIds": ["NBBZ7aYC", "1Kf4FqrD", "uvtotMGY"], "categoryPath": "0mS7BDzS", "clazz": "T90VUzXk", "createdAt": "1975-10-17T00:00:00Z", "description": "hG6OAC4M", "displayOrder": 32, "entitlementType": "CONSUMABLE", "ext": {"R30gsRUK": {}, "EirdGV6l": {}, "rq5Tz5NT": {}}, "features": ["5WwSTjur", "WfdfTw0f", "TmAMXd6Q"], "fresh": true, "images": [{"as": "1zo5AW1X", "caption": "eISkUNfe", "height": 65, "imageUrl": "aLvbhMfN", "smallImageUrl": "MKllbkyg", "width": 57}, {"as": "AUauqgAg", "caption": "MQvuWAZT", "height": 96, "imageUrl": "5tkOPHAy", "smallImageUrl": "uBTA98ai", "width": 27}, {"as": "tutA6V7m", "caption": "73BkYYjn", "height": 59, "imageUrl": "SzadyE8b", "smallImageUrl": "DEAAZXIO", "width": 46}], "itemId": "K78Glsro", "itemIds": ["gsoDhf9I", "F9nO4lZn", "LYDlILnG"], "itemQty": {"JAe7EAM5": 52, "wxSY6my0": 75, "fong6ish": 54}, "itemType": "INGAMEITEM", "language": "MXgcmoPE", "listable": false, "localExt": {"JWGL6WW3": {}, "NB9VKMAW": {}, "XoltFzwJ": {}}, "longDescription": "FZgxZqgo", "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 91, "itemId": "vJI6D5QZ", "itemSku": "VHFAxXIH", "itemType": "6MPLkNz6"}, {"count": 91, "itemId": "8ljPzynN", "itemSku": "jrtJe9Sm", "itemType": "YWFJojad"}, {"count": 99, "itemId": "PLc0zSoX", "itemSku": "abwS8Bi2", "itemType": "FXSaUJpv"}], "name": "eQ0iKYkP", "odds": 0.3914224993537301, "type": "REWARD_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 91, "itemId": "vSYxJTzv", "itemSku": "oBH6m0bi", "itemType": "avxeayqe"}, {"count": 89, "itemId": "RrDKtuFF", "itemSku": "UA5Vj16b", "itemType": "YbgB3ZUd"}, {"count": 75, "itemId": "z2JlrEXj", "itemSku": "fh0B1HzG", "itemType": "sqwhPrCC"}], "name": "2YSidLD4", "odds": 0.9768476385634828, "type": "REWARD_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 22, "itemId": "JMi8LX7A", "itemSku": "BZBRDnqj", "itemType": "doKVT6cE"}, {"count": 10, "itemId": "Vg3S59NW", "itemSku": "7xzNGEqx", "itemType": "gcnWLk9J"}, {"count": 76, "itemId": "ABKsa2F5", "itemSku": "6FlqnwIM", "itemType": "2FsHI3GF"}], "name": "u9mS45yQ", "odds": 0.14283150444797799, "type": "REWARD", "weight": 58}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 36, "name": "Inyy76QE", "namespace": "HkLtBFZ1", "optionBoxConfig": {"boxItems": [{"count": 36, "itemId": "zTfFy7LM", "itemSku": "2WGrS4Kx", "itemType": "xGrJtMBx"}, {"count": 61, "itemId": "6FbxhTMq", "itemSku": "kNrjhVui", "itemType": "A5valspn"}, {"count": 12, "itemId": "evEGDbhF", "itemSku": "R7ukjxSL", "itemType": "HswoidaI"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 3, "comparison": "is", "name": "lDCZ6Rwz", "predicateType": "SeasonPassPredicate", "value": "qMQrgtUp", "values": ["V18AB6Dg", "iyFepK9w", "ekxWgmJe"]}, {"anyOf": 52, "comparison": "excludes", "name": "RkVWvYmq", "predicateType": "SeasonTierPredicate", "value": "YEPvSuVt", "values": ["8qpDIdMb", "MCGfS09d", "CarTCatU"]}, {"anyOf": 14, "comparison": "isNot", "name": "tXFCM4Iv", "predicateType": "EntitlementPredicate", "value": "Nz6wcmil", "values": ["IzAE8Zug", "zXca9z5r", "9qNeRzbb"]}]}, {"operator": "or", "predicates": [{"anyOf": 56, "comparison": "is", "name": "86VjI8qs", "predicateType": "SeasonPassPredicate", "value": "TKLUbfIO", "values": ["R3AMXDXV", "4kLa7xr3", "PppU8VXu"]}, {"anyOf": 96, "comparison": "is", "name": "btaRpAE5", "predicateType": "EntitlementPredicate", "value": "5gRq5FDF", "values": ["J4u0U5DA", "CTfJluHR", "85B0URZE"]}, {"anyOf": 31, "comparison": "isNot", "name": "PIj650GO", "predicateType": "SeasonTierPredicate", "value": "5s0IUf9L", "values": ["Ka5ZOmyj", "9tb8AK7N", "tTuyee1g"]}]}, {"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isLessThan", "name": "JbZ25CZd", "predicateType": "SeasonPassPredicate", "value": "Z1jKktrz", "values": ["a6xmCjte", "IkpODxDG", "nKor1WPl"]}, {"anyOf": 85, "comparison": "isLessThan", "name": "YLghVdDh", "predicateType": "SeasonPassPredicate", "value": "vO8wlhFZ", "values": ["nS8wzdGc", "6QVFHWPS", "3Fv5URGH"]}, {"anyOf": 8, "comparison": "isGreaterThan", "name": "dFOuxz2S", "predicateType": "SeasonPassPredicate", "value": "UAJZbnP5", "values": ["Lv3SrAIS", "11rW77GL", "9FlYGn9s"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 32, "fixedTrialCycles": 91, "graceDays": 49}, "region": "VHHFPZjz", "regionData": [{"currencyCode": "BexJhH5s", "currencyNamespace": "waOYWELR", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1998-01-02T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1986-10-15T00:00:00Z", "discountedPrice": 72, "expireAt": "1997-12-13T00:00:00Z", "price": 16, "purchaseAt": "1994-04-01T00:00:00Z", "trialPrice": 40}, {"currencyCode": "POOCfxAm", "currencyNamespace": "VDgk2s79", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1996-04-02T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1979-04-14T00:00:00Z", "discountedPrice": 1, "expireAt": "1988-05-03T00:00:00Z", "price": 93, "purchaseAt": "1973-01-26T00:00:00Z", "trialPrice": 38}, {"currencyCode": "7kLm88UG", "currencyNamespace": "PY4S6mej", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1990-09-14T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1972-11-08T00:00:00Z", "discountedPrice": 25, "expireAt": "1973-05-19T00:00:00Z", "price": 77, "purchaseAt": "1993-10-28T00:00:00Z", "trialPrice": 21}], "seasonType": "TIER", "sku": "QDOUqEAq", "stackable": false, "status": "ACTIVE", "tags": ["hiRFwjbZ", "eUFkcNVy", "Q4PIyfou"], "targetCurrencyCode": "do2AgbiA", "targetItemId": "YjJe1BAj", "targetNamespace": "i9dgn8wq", "thumbnailUrl": "VkHEkFyB", "title": "wZ4dUVI6", "updatedAt": "1987-09-29T00:00:00Z", "useCount": 96}, "namespace": "2n9QMBAt", "order": {"currency": {"currencyCode": "UcNtT9Gj", "currencySymbol": "924yFkls", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "3AZgBc2X"}, "ext": {"6TFHoiCH": {}, "cviDR1xs": {}, "obeaE7NQ": {}}, "free": false}, "source": "PURCHASE"}, "script": "YGUaYAul", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '38EPLTH8' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'RaAErrlT' \
    --body '{"grantDays": "euax0tA4"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'teBdd0lz' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'uHNHFyUA' \
    --body '{"grantDays": "abm9Qwgc"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Bb7vOwPm", "dryRun": false, "fulfillmentUrl": "z3pMcIN9", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "Xhnpmy3K"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '4VXwaUdV' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ViKot8hK' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'QnO2wEuL' \
    --body '{"clazz": "9yCkYPtB", "dryRun": false, "fulfillmentUrl": "bpiXSLxd", "purchaseConditionUrl": "1Sdj04cH"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'OSNA4FEB' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'sE0BOA6W' \
    --offset '10' \
    --tag '2AxPlpYx' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "B2ouen94", "items": [{"extraSubscriptionDays": 37, "itemId": "ze17WrUo", "itemName": "bjRjwyVh", "quantity": 97}, {"extraSubscriptionDays": 11, "itemId": "rBSiDWH0", "itemName": "j7ceWY0V", "quantity": 39}, {"extraSubscriptionDays": 56, "itemId": "omSHr26G", "itemName": "yhAVIkdW", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 11, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 98, "name": "SWMpkacJ", "redeemEnd": "1989-10-31T00:00:00Z", "redeemStart": "1979-12-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["eMGTtjRP", "zK1uNADN", "tkD5vScB"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'zKP7txlt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ubVhdjQF' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Afe7HsgU", "items": [{"extraSubscriptionDays": 99, "itemId": "6qajqWvn", "itemName": "uUb8FJEg", "quantity": 12}, {"extraSubscriptionDays": 60, "itemId": "lzfLyFls", "itemName": "1xjgCAWM", "quantity": 65}, {"extraSubscriptionDays": 61, "itemId": "AC659QE1", "itemName": "HcPjHJaU", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 14, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 6, "name": "kuHkGVZ2", "redeemEnd": "1981-03-08T00:00:00Z", "redeemStart": "1973-08-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["8T6SPxnw", "bTpXf350", "sXB3lQQK"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'XdAIJhXM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'eZ4iky6q' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ftUSndKT' \
    --body '{"categoryPath": "7vEIuWYe", "localizationDisplayNames": {"dqK1C4J7": "2zjnaf9E", "1UtHIzss": "9JQpA6L2", "MxpShhpl": "JMM05nx7"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '92y5FVuT' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'nEsHrWSE' \
    --namespace $AB_NAMESPACE \
    --storeId 'RNOEGxKi' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '4y247YYw' \
    --namespace $AB_NAMESPACE \
    --storeId 'zl5lJGmS' \
    --body '{"localizationDisplayNames": {"H2cyDOsE": "G3VWDiJT", "Wk7CgfL5": "lFTv0Si2", "uAjkJuI5": "Lq72rLdJ"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '4Z6CpXEo' \
    --namespace $AB_NAMESPACE \
    --storeId 'eKlXn4on' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'NRQgphsH' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZTmSMIAQ' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Wx9yvL33' \
    --namespace $AB_NAMESPACE \
    --storeId 'KKRrrBRi' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'X2oytR7L' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '24' \
    --code 'Q3ReiClE' \
    --limit '100' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'LhO2Je9Z' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 69}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'AUkMCcmp' \
    --namespace $AB_NAMESPACE \
    --batchNo '97' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Rgk1XOOH' \
    --namespace $AB_NAMESPACE \
    --batchNo '86' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Zeb18a5W' \
    --namespace $AB_NAMESPACE \
    --batchNo '89' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'S8MsOpos' \
    --namespace $AB_NAMESPACE \
    --code 'nJQVUJVr' \
    --limit '11' \
    --offset '55' \
    --userId 'u4T9Ttkh' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code '5dgbGt91' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'fYqcOAqD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '9iF9dzHa' \
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
    --body '{"grpcServerAddress": "YItU7Rd4"}' \
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
    --body '{"currencyCode": "QNgbNmPw", "currencySymbol": "lkUr8c3V", "currencyType": "VIRTUAL", "decimals": 65, "localizationDescriptions": {"mWFqXwVh": "jkbRVKVO", "Bs8d8HZe": "EWwEiHV9", "tFSs8Js8": "kHV7izfb"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'tckF6tRO' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Gpr5wkra": "uXaRArxp", "tRwggceX": "ylXpuPSm", "KOGyJ82q": "Xiv8oWGz"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'ZFzcairZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'OoC9ZFNT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'RPGdBoz6' \
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
    --body '{"data": [{"id": "SLUQtAt0", "rewards": [{"currency": {"currencyCode": "6x2A1aP2", "namespace": "8Kyyb9Mw"}, "item": {"itemId": "w0lbJrX0", "itemSku": "y2LCz2Ze", "itemType": "BtslHMgA"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "eC5m5u9I", "namespace": "IKUTIOci"}, "item": {"itemId": "fzyGZ4uY", "itemSku": "zaqlszb2", "itemType": "mEdqULon"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "E7cuBO5Z", "namespace": "Np3x2MOe"}, "item": {"itemId": "aDTvd14s", "itemSku": "95QsEfmN", "itemType": "jsfFHLfN"}, "quantity": 83, "type": "ITEM"}]}, {"id": "4OZB84M8", "rewards": [{"currency": {"currencyCode": "nnNylH1p", "namespace": "zmCRNcQW"}, "item": {"itemId": "MWXDkeBc", "itemSku": "rXbCozsS", "itemType": "XyPKi0bW"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "N7Vd7X5w", "namespace": "rqUMJRTk"}, "item": {"itemId": "Hpq6urrL", "itemSku": "EMAOLnPe", "itemType": "uMQQWhQd"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "afeNo15U", "namespace": "14DZeWMS"}, "item": {"itemId": "f8xTOMUz", "itemSku": "Vo7bnZoK", "itemType": "1jcMgf1n"}, "quantity": 59, "type": "CURRENCY"}]}, {"id": "IuKzu0bU", "rewards": [{"currency": {"currencyCode": "X9njYtP1", "namespace": "F0fhORSD"}, "item": {"itemId": "qHEu1Uc0", "itemSku": "Emk5nlIg", "itemType": "kfX9RpEM"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "UBfd3Qni", "namespace": "sMkSTRCt"}, "item": {"itemId": "iE9GUrAU", "itemSku": "twfqqc9u", "itemType": "57Vv3OHm"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "lEgpbJH9", "namespace": "56prcktR"}, "item": {"itemId": "jr11ejfy", "itemSku": "Zy1yFtqA", "itemType": "P4Iy2n8q"}, "quantity": 42, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"WXf8kP6p": "KhNXsAv6", "hRNMsODk": "fz6mUxog", "zdPHfrxm": "eTfROQsI"}}, {"platform": "XBOX", "platformDlcIdMap": {"ubYml6ap": "e9dZI2lW", "vb3GhaX7": "e2EDGpUz", "ozcKT2TP": "F4CGZANE"}}, {"platform": "XBOX", "platformDlcIdMap": {"HBxJDFHL": "u3cl9tc8", "KDVWeNK9": "MbsBTPnM", "g0JxhZ26": "IbscONyj"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'npVAnCIP' \
    --itemId '["aTVAdvqH", "xx8DAXrp", "PtDzsIOT"]' \
    --limit '38' \
    --offset '70' \
    --userId '7IMHl9PN' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'IbqOMLTR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '22' \
    --status 'SUCCESS' \
    --userId 'hgdPD2qF' \
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
    --body '{"bundleId": "3o0Eiz9e", "password": "HfPEQqRk"}' \
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
    --body '{"sandboxId": "Si5fhKMy"}' \
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
    --body '{"applicationName": "305CHUyO", "serviceAccountId": "iELjeGST"}' \
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
    --body '{"data": [{"itemIdentity": "jmiH42Qq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"LuksBbjf": "9p5n2WJl", "jQjsBGth": "gJrq20DQ", "HBArr2Gl": "93WpBK5J"}}, {"itemIdentity": "zHa0gSA1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fR4NxxCZ": "txOVlC0B", "0hTOSPnK": "0hwxZmKV", "L2W36PWM": "74tM4LpH"}}, {"itemIdentity": "vX4P7aG1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"03GOgKv7": "q9eAluwm", "DxPW5jiP": "GY2P6GL5", "mfQFM3jj": "FTFE9lWY"}}]}' \
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
    --body '{"environment": "xEPAjR5b"}' \
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
    --body '{"appId": "XV7bZhWA", "publisherAuthenticationKey": "8QWLceMa"}' \
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
    --body '{"clientId": "hnEacJOW", "clientSecret": "cAnmKy4X", "organizationId": "GgQ0seQ4"}' \
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
    --body '{"relyingPartyCert": "QmmYr0tX"}' \
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
    --password 'PldAkYhC' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'CuGuwkOO' \
    --itemId 'QdBGnb9U' \
    --itemType 'OPTIONBOX' \
    --endTime 'LgkB6MCX' \
    --startTime 'iQcnxLzN' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'uI75u3gm' \
    --itemId 'bYxiLfJH' \
    --itemType 'MEDIA' \
    --endTime 's29vK3tA' \
    --startTime 'HfTfoZSR' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 's1o1IgZz' \
    --body '{"categoryPath": "Jexf60c7", "targetItemId": "gCOyK5RF", "targetNamespace": "sSPvXu8y"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qm9E36GX' \
    --body '{"appId": "ErSLDArk", "appType": "DEMO", "baseAppId": "sasy5aRW", "boothName": "cjOLEOig", "categoryPath": "lfKJAU01", "clazz": "OMbbbTD6", "displayOrder": 80, "entitlementType": "DURABLE", "ext": {"X4afPpMe": {}, "vpLKDBWJ": {}, "BVhm59aD": {}}, "features": ["mL5CCBf1", "j67Tz5gp", "V0ByRQEo"], "images": [{"as": "7YmKiMx8", "caption": "MrSnSoT2", "height": 66, "imageUrl": "bZ7JL8RN", "smallImageUrl": "ui1wOMHE", "width": 54}, {"as": "q6FUrlPm", "caption": "8eBW7xVa", "height": 31, "imageUrl": "Ab9tFfbd", "smallImageUrl": "XmjI2SNG", "width": 55}, {"as": "AYozw3BG", "caption": "vMsKkJUc", "height": 0, "imageUrl": "xxfNd5Md", "smallImageUrl": "MVLA4jrd", "width": 56}], "itemIds": ["iovrD2aV", "PuqIa1xV", "MyX1oENP"], "itemQty": {"mQeLFoaI": 10, "Lms7yMWo": 59, "r80wjLRG": 82}, "itemType": "MEDIA", "listable": true, "localizations": {"q0l68iKS": {"description": "jIDUxYRd", "localExt": {"CRbei39x": {}, "LySJzKXi": {}, "iH0C6qRq": {}}, "longDescription": "fl0d2gn3", "title": "kITypKU4"}, "U45ae7mm": {"description": "aTlsuEJP", "localExt": {"MfBshOgl": {}, "QqqpJiut": {}, "CB9DQl4R": {}}, "longDescription": "LGVxFAnu", "title": "MZlhnwLu"}, "IEIB3Uns": {"description": "vIsFkx2d", "localExt": {"WUKoW2eB": {}, "wc3zVMBD": {}, "sjbigLFn": {}}, "longDescription": "krrFG57g", "title": "LUwL0Uat"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 26, "itemId": "lA2u5Itl", "itemSku": "229mveaw", "itemType": "tQRnN0Aw"}, {"count": 49, "itemId": "JY91ILUX", "itemSku": "bunonWZi", "itemType": "jY7VF5Sb"}, {"count": 23, "itemId": "k3ByUElA", "itemSku": "uE3d1CRU", "itemType": "qbjvukAD"}], "name": "zxszCXyN", "odds": 0.530062562075972, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 34, "itemId": "Ym9Od4BR", "itemSku": "vmQT0C8w", "itemType": "Wlqiyzt4"}, {"count": 20, "itemId": "6kEExssY", "itemSku": "LNr7rTa2", "itemType": "jBNAtbrW"}, {"count": 33, "itemId": "DPU4BIzC", "itemSku": "JauFncfo", "itemType": "RBOIaAlD"}], "name": "0cgiy2M8", "odds": 0.41534370429541434, "type": "PROBABILITY_GROUP", "weight": 22}, {"lootBoxItems": [{"count": 30, "itemId": "4Q2M3xxd", "itemSku": "uwcvQLFg", "itemType": "EOZWKPfH"}, {"count": 44, "itemId": "auxbe5hN", "itemSku": "Qvee3jtN", "itemType": "OXDc8RlF"}, {"count": 17, "itemId": "YdrJS2gr", "itemSku": "PwOpETJw", "itemType": "t4WKQpKd"}], "name": "nqdpGHRc", "odds": 0.9866751672458647, "type": "REWARD_GROUP", "weight": 9}], "rollFunction": "DEFAULT"}, "maxCount": 13, "maxCountPerUser": 82, "name": "FPubnrdx", "optionBoxConfig": {"boxItems": [{"count": 58, "itemId": "Zl4qCBtt", "itemSku": "T2bAojOG", "itemType": "pTzotxyi"}, {"count": 55, "itemId": "CXqHfSj8", "itemSku": "d1Fw5cGC", "itemType": "5TXykojQ"}, {"count": 26, "itemId": "JxE5I8W0", "itemSku": "A7VmrW3o", "itemType": "vTWZWjMh"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 61, "fixedTrialCycles": 47, "graceDays": 57}, "regionData": {"DtCdzo1C": [{"currencyCode": "kNNNiFRF", "currencyNamespace": "1TL0WvOc", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1978-02-16T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1982-02-02T00:00:00Z", "discountedPrice": 35, "expireAt": "1980-11-24T00:00:00Z", "price": 66, "purchaseAt": "1993-02-25T00:00:00Z", "trialPrice": 92}, {"currencyCode": "U3SuTfqq", "currencyNamespace": "uvCIuCMW", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1977-09-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1989-09-17T00:00:00Z", "discountedPrice": 79, "expireAt": "1992-07-15T00:00:00Z", "price": 76, "purchaseAt": "1999-08-02T00:00:00Z", "trialPrice": 0}, {"currencyCode": "GfmnzbGK", "currencyNamespace": "zE4qHyXW", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1980-11-26T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1983-12-25T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-09-29T00:00:00Z", "price": 72, "purchaseAt": "1998-01-23T00:00:00Z", "trialPrice": 98}], "aEXDOUlm": [{"currencyCode": "pM74IDD7", "currencyNamespace": "VsYhhoLc", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1982-07-31T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1999-01-16T00:00:00Z", "discountedPrice": 85, "expireAt": "1975-01-24T00:00:00Z", "price": 69, "purchaseAt": "1980-12-14T00:00:00Z", "trialPrice": 89}, {"currencyCode": "v2bkoRRb", "currencyNamespace": "BmgmXbrs", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1981-12-08T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1973-11-29T00:00:00Z", "discountedPrice": 1, "expireAt": "1998-04-30T00:00:00Z", "price": 23, "purchaseAt": "1990-07-13T00:00:00Z", "trialPrice": 95}, {"currencyCode": "QJDaopRy", "currencyNamespace": "iRH99dZM", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1993-04-09T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1996-01-21T00:00:00Z", "discountedPrice": 36, "expireAt": "1976-11-12T00:00:00Z", "price": 94, "purchaseAt": "1994-11-22T00:00:00Z", "trialPrice": 47}], "qYsndNDw": [{"currencyCode": "FSv3zd96", "currencyNamespace": "THoiUejF", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1979-02-14T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1985-12-15T00:00:00Z", "discountedPrice": 23, "expireAt": "1996-02-25T00:00:00Z", "price": 38, "purchaseAt": "1978-10-18T00:00:00Z", "trialPrice": 70}, {"currencyCode": "F0VEuQnR", "currencyNamespace": "RsmMwpFB", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1983-12-05T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1979-01-30T00:00:00Z", "discountedPrice": 70, "expireAt": "1997-10-16T00:00:00Z", "price": 27, "purchaseAt": "1997-06-24T00:00:00Z", "trialPrice": 84}, {"currencyCode": "z2fLLhlc", "currencyNamespace": "tW0so14Z", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1982-12-29T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1995-07-30T00:00:00Z", "discountedPrice": 83, "expireAt": "1974-11-30T00:00:00Z", "price": 49, "purchaseAt": "1979-08-03T00:00:00Z", "trialPrice": 92}]}, "seasonType": "PASS", "sku": "15rXeyNL", "stackable": true, "status": "ACTIVE", "tags": ["MndBQfgq", "dtND49Ze", "2MVTjes1"], "targetCurrencyCode": "27CvT8qo", "targetNamespace": "qUpk8VMp", "thumbnailUrl": "bKPaT8tS", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'kMO04olX' \
    --appId 'qJ6S8tJA' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'Iyha4gTs' \
    --baseAppId 'imXqRhXg' \
    --categoryPath 'Tu81NAwg' \
    --features 'wfNpAUzh' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --limit '79' \
    --offset '14' \
    --region 'CVZzPLga' \
    --sortBy '["name:asc", "displayOrder:desc", "createdAt:asc"]' \
    --storeId 'px0894pC' \
    --tags 'ckd1Vm4h' \
    --targetNamespace 'AXzdA6Vi' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Ql29Bvqp", "MneH63y3", "aRIW4Aku"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '7SO3KytH' \
    --sku 'xYH1fHls' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Fce9HMS9' \
    --populateBundle 'false' \
    --region 'd0O019qv' \
    --storeId 'NLECZY1R' \
    --sku 'zWf3v5Ao' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'w7ujMQbn' \
    --sku '1ENU2DGY' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["glnjqe56", "AZkHFcOc", "lL1Ri2o7"]' \
    --storeId 'xaK5Nmab' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'QXG2lbxG' \
    --region 'aBMDqy16' \
    --storeId 'thdJoE1z' \
    --itemIds 'u6fB35hr' \
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
    --userId '4WFYMJYj' \
    --body '{"itemIds": ["QDUtoh9D", "iejwsim4", "PyFBepS6"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'COINS' \
    --limit '76' \
    --offset '52' \
    --sortBy 'FsCT6lxZ' \
    --storeId 'QGKdgaV1' \
    --keyword 'pP7RGp7o' \
    --language 'K8ZV09qb' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '8' \
    --offset '66' \
    --sortBy '["updatedAt", "createdAt:asc", "createdAt"]' \
    --storeId 'FZW23RFW' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'MIJIpnUy' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NQJpBeFT' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '025ll7fm' \
    --namespace $AB_NAMESPACE \
    --storeId 'DNJLs4FB' \
    --body '{"appId": "X1EEO3Qd", "appType": "DEMO", "baseAppId": "YRZzqRwP", "boothName": "yItJZIu3", "categoryPath": "JtZOX0T0", "clazz": "tTibMFIu", "displayOrder": 37, "entitlementType": "CONSUMABLE", "ext": {"3NgRROnr": {}, "xocoGi9k": {}, "BdqmYfzS": {}}, "features": ["uz8Vx3wb", "fjKso22u", "GZc1Sh3U"], "images": [{"as": "hVOJe1GY", "caption": "L9ycJhVn", "height": 41, "imageUrl": "0WNavxcq", "smallImageUrl": "yhRb9Qff", "width": 71}, {"as": "rzc0xi9w", "caption": "wBwcpxCo", "height": 95, "imageUrl": "w2J4CcXk", "smallImageUrl": "mpMKIMmc", "width": 27}, {"as": "6rSXxZOw", "caption": "f58JNo2R", "height": 16, "imageUrl": "XY2HCQ7b", "smallImageUrl": "vlDbKjsq", "width": 34}], "itemIds": ["UIsQjXp8", "RkJBlGrF", "LLINtUur"], "itemQty": {"wcrYO3XN": 88, "9wx1TvCT": 41, "r53tcATJ": 94}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"AckvU7Q2": {"description": "OFOKGYcY", "localExt": {"hgVwHVks": {}, "DxWBdBNm": {}, "aXKZVcAJ": {}}, "longDescription": "ZQ3bkDr1", "title": "zzRECiLr"}, "zNS0f8IP": {"description": "Ue5GFRWu", "localExt": {"rfgdRJvj": {}, "PEqNFmgP": {}, "X9WJnIZ2": {}}, "longDescription": "ncVgj9ew", "title": "yh6BD8s0"}, "L5u11tk9": {"description": "Z3SE8PLv", "localExt": {"ztiTbyVD": {}, "456gcw76": {}, "NDMs3jET": {}}, "longDescription": "4kybn7Fb", "title": "6UoXkTLb"}}, "lootBoxConfig": {"rewardCount": 15, "rewards": [{"lootBoxItems": [{"count": 19, "itemId": "1fVJuCNv", "itemSku": "PjQ50ZhF", "itemType": "jchUOlC4"}, {"count": 27, "itemId": "8ZiSMUXC", "itemSku": "1XntnIsd", "itemType": "C1Jh5blC"}, {"count": 89, "itemId": "E8pdHfUP", "itemSku": "2bFjLhsi", "itemType": "QfXcsncE"}], "name": "5wiXjjgF", "odds": 0.1992963341523133, "type": "REWARD", "weight": 66}, {"lootBoxItems": [{"count": 39, "itemId": "bqSCbaKy", "itemSku": "9NSjiSCn", "itemType": "fzI709sA"}, {"count": 20, "itemId": "vIRDNZJ3", "itemSku": "jxJhIXLu", "itemType": "Hdfw3XZ3"}, {"count": 30, "itemId": "r9arDVcb", "itemSku": "DSuG1YB5", "itemType": "qqi6ei4s"}], "name": "btgUnWkE", "odds": 0.15614324062549845, "type": "REWARD_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 98, "itemId": "n0qUG4SM", "itemSku": "uCbRv3kc", "itemType": "Otu6S3bJ"}, {"count": 21, "itemId": "C4GJLlUD", "itemSku": "mQB0szQp", "itemType": "vIZ7dWtB"}, {"count": 37, "itemId": "MyLUE2Rf", "itemSku": "DdnGwXWe", "itemType": "5sfmQ3Dk"}], "name": "iUmauddr", "odds": 0.4686472347201259, "type": "REWARD_GROUP", "weight": 82}], "rollFunction": "DEFAULT"}, "maxCount": 32, "maxCountPerUser": 83, "name": "wLdg3NDL", "optionBoxConfig": {"boxItems": [{"count": 99, "itemId": "jveRWTgh", "itemSku": "0oID8zk2", "itemType": "5BDMBOdZ"}, {"count": 95, "itemId": "TJrjEhvB", "itemSku": "nSuL3UDz", "itemType": "MMpRQpLL"}, {"count": 5, "itemId": "L9fiEnP0", "itemSku": "JmEeA1db", "itemType": "EWz7msbY"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 69, "fixedTrialCycles": 64, "graceDays": 29}, "regionData": {"P6znqmyj": [{"currencyCode": "u7p9OaMI", "currencyNamespace": "olAftjv3", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1996-05-14T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1998-07-03T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-11-17T00:00:00Z", "price": 36, "purchaseAt": "1995-03-07T00:00:00Z", "trialPrice": 54}, {"currencyCode": "6pDd2sP7", "currencyNamespace": "sJ9egvi0", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1972-11-12T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1976-08-26T00:00:00Z", "discountedPrice": 50, "expireAt": "1999-03-30T00:00:00Z", "price": 2, "purchaseAt": "1981-09-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "yemvVXLd", "currencyNamespace": "GMLKMsUT", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1979-10-01T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1998-12-20T00:00:00Z", "discountedPrice": 78, "expireAt": "1988-09-02T00:00:00Z", "price": 97, "purchaseAt": "1995-11-26T00:00:00Z", "trialPrice": 17}], "Ywm9R4k8": [{"currencyCode": "gtVZZjqK", "currencyNamespace": "vXyuOxCJ", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1983-05-19T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1994-11-04T00:00:00Z", "discountedPrice": 98, "expireAt": "1984-09-18T00:00:00Z", "price": 48, "purchaseAt": "1975-03-26T00:00:00Z", "trialPrice": 13}, {"currencyCode": "tBkouldA", "currencyNamespace": "KKE2g1WH", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1993-11-09T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1984-06-23T00:00:00Z", "discountedPrice": 57, "expireAt": "1975-05-31T00:00:00Z", "price": 91, "purchaseAt": "1995-10-02T00:00:00Z", "trialPrice": 96}, {"currencyCode": "YiXjGQY5", "currencyNamespace": "r9VF8ouZ", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1971-02-24T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1986-02-24T00:00:00Z", "discountedPrice": 88, "expireAt": "1977-09-16T00:00:00Z", "price": 5, "purchaseAt": "1985-11-13T00:00:00Z", "trialPrice": 54}], "Y8xTiV6k": [{"currencyCode": "57AxRYkf", "currencyNamespace": "ZRhR2bp8", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1976-05-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1994-04-21T00:00:00Z", "discountedPrice": 47, "expireAt": "1995-01-14T00:00:00Z", "price": 50, "purchaseAt": "1997-03-19T00:00:00Z", "trialPrice": 84}, {"currencyCode": "D7TBOtRS", "currencyNamespace": "uPKtOb6X", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1996-08-11T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1999-07-24T00:00:00Z", "discountedPrice": 76, "expireAt": "1979-03-25T00:00:00Z", "price": 58, "purchaseAt": "1985-06-22T00:00:00Z", "trialPrice": 31}, {"currencyCode": "8eGrx1gs", "currencyNamespace": "sxtRUDC3", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1974-06-20T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1978-10-09T00:00:00Z", "discountedPrice": 68, "expireAt": "1977-07-29T00:00:00Z", "price": 12, "purchaseAt": "1988-02-03T00:00:00Z", "trialPrice": 18}]}, "seasonType": "TIER", "sku": "UA3ZZVTV", "stackable": true, "status": "ACTIVE", "tags": ["zU09V1Zk", "MNAIWDLm", "QJ0kLzLB"], "targetCurrencyCode": "wHR2xkQn", "targetNamespace": "ZSARpfYr", "thumbnailUrl": "kjbuaChy", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'cwEnqaE6' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'yfGLC0L0' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'ueRKupJ7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 45, "orderNo": "HyjEIrOG"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'xxEuA93M' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'l8NnfaZA' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'sLwAbTIf' \
    --namespace $AB_NAMESPACE \
    --storeId 'OP1hx3H0' \
    --body '{"carousel": [{"alt": "G5W2P9J9", "previewUrl": "0tsqRBAo", "thumbnailUrl": "qlwU6oeL", "type": "video", "url": "4GMHWq4p", "videoSource": "vimeo"}, {"alt": "E5I6j6ye", "previewUrl": "sMSifTBU", "thumbnailUrl": "oGaaji9N", "type": "image", "url": "t3aWePHq", "videoSource": "youtube"}, {"alt": "zrxe0lmy", "previewUrl": "sB5ikQnp", "thumbnailUrl": "FlUgVnvl", "type": "video", "url": "c4HFf6nt", "videoSource": "youtube"}], "developer": "J5sS51Ux", "forumUrl": "gYzkI6Cj", "genres": ["Casual", "Simulation", "Casual"], "localizations": {"sQo66LcJ": {"announcement": "9RAXrIaF", "slogan": "7DUxTwIY"}, "nW5esQwD": {"announcement": "3Qxb2xa2", "slogan": "009AAEJ3"}, "CThLrwdZ": {"announcement": "Ed4fqv1Z", "slogan": "V5ddC4Ad"}}, "platformRequirements": {"HgAg0A88": [{"additionals": "NY8w3QVH", "directXVersion": "NmF9ZQJW", "diskSpace": "1N3ZccE6", "graphics": "N6pMibXV", "label": "dlccgmJF", "osVersion": "mzzkkRvb", "processor": "56jyD0YV", "ram": "Dul3hAjT", "soundCard": "Kvxooq2l"}, {"additionals": "m22MWBvw", "directXVersion": "CFzj2A9Q", "diskSpace": "PQB0kp2L", "graphics": "pPoJCcv5", "label": "SO2y92Xu", "osVersion": "HGHHqsZR", "processor": "hncH1b4z", "ram": "xKAtMBiz", "soundCard": "4aP22Sre"}, {"additionals": "moqG7EOo", "directXVersion": "Hhkx4NnP", "diskSpace": "HxynJ0yR", "graphics": "S06kdnvi", "label": "1bDB5VsR", "osVersion": "JKBNhqqi", "processor": "V0Xsu7Oy", "ram": "nO0NbK47", "soundCard": "9cLIPsEz"}], "YhEbaFth": [{"additionals": "mkmxolG9", "directXVersion": "ypqW3IXX", "diskSpace": "kOkdyCPT", "graphics": "6phdlPpa", "label": "DJSmzGO2", "osVersion": "7YSkNfig", "processor": "3bOSSnls", "ram": "TTgWDbvN", "soundCard": "jeB1NryI"}, {"additionals": "thUpMDur", "directXVersion": "XylKBNNe", "diskSpace": "JLN9o6CM", "graphics": "TZhPSmhV", "label": "By0AFvVX", "osVersion": "ysIEZu9c", "processor": "5yngM8cP", "ram": "yGHbZTvs", "soundCard": "GNavIoay"}, {"additionals": "g5tRbN3K", "directXVersion": "qveaV2uZ", "diskSpace": "Nf9cFJvh", "graphics": "MTM7DuP1", "label": "8JeRE5rH", "osVersion": "UcOzls9E", "processor": "GMBmDxYF", "ram": "BLoipmgu", "soundCard": "9SO505pk"}], "SgsrxzAW": [{"additionals": "h3NHuIM8", "directXVersion": "TFMfvKNP", "diskSpace": "gLQvnCCA", "graphics": "OiZktupX", "label": "TLKhdJDY", "osVersion": "kYeLW4Ux", "processor": "VeDkFSzz", "ram": "gZsEKMkI", "soundCard": "kKss4VA3"}, {"additionals": "WTKdiOKq", "directXVersion": "4GmgFGo8", "diskSpace": "DqANSltm", "graphics": "2vfl4NJW", "label": "QCyQB3xT", "osVersion": "WhyBExHX", "processor": "c6ZUpcZS", "ram": "qrmSdfFI", "soundCard": "4e1BeVg6"}, {"additionals": "5GP0e0Gz", "directXVersion": "OvsF6ajY", "diskSpace": "FpPzsCTN", "graphics": "WHVpNP2J", "label": "HtWkkM5j", "osVersion": "Bmc6qG11", "processor": "JWqGMlOx", "ram": "dAxWDslL", "soundCard": "kBn4tZ0m"}]}, "platforms": ["Android", "MacOS", "IOS"], "players": ["MMO", "Coop", "Multi"], "primaryGenre": "Sports", "publisher": "wvKfFfVJ", "releaseDate": "1977-01-07T00:00:00Z", "websiteUrl": "ngQB0wBD"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'xBkKgQ3B' \
    --namespace $AB_NAMESPACE \
    --storeId 'nDtA5bec' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0sERP6jv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'qJ5Xp9Hb' \
    --namespace $AB_NAMESPACE \
    --storeId 'dscBXpKc' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'mEMnw13a' \
    --itemId '1MJsx8Jv' \
    --namespace $AB_NAMESPACE \
    --storeId '3bs09kbS' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'T9bkBTgq' \
    --itemId 'GtKdikeR' \
    --namespace $AB_NAMESPACE \
    --storeId 'KGFywQQv' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'VlvS65i4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'PE23Ewc8' \
    --populateBundle 'true' \
    --region 'T8ttF3p5' \
    --storeId 'MpM7vb2m' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'sVC4AEqu' \
    --namespace $AB_NAMESPACE \
    --storeId '8IuzN0IR' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 19, "comparison": "is", "name": "y6JoJLvX", "predicateType": "SeasonTierPredicate", "value": "HGwVp1gZ", "values": ["XToSSNFr", "J5NBWxFB", "FqJMo2bI"]}, {"anyOf": 42, "comparison": "isLessThan", "name": "YqQbMVlG", "predicateType": "SeasonPassPredicate", "value": "wLlJJruy", "values": ["ZzEMBIYz", "ut6oD8xv", "9jxL0SXn"]}, {"anyOf": 92, "comparison": "isLessThanOrEqual", "name": "bDSxDRER", "predicateType": "SeasonPassPredicate", "value": "9IiqDZxC", "values": ["OQMoL4Nz", "D4wiZYo4", "FGY9bFot"]}]}, {"operator": "and", "predicates": [{"anyOf": 88, "comparison": "isGreaterThanOrEqual", "name": "bPkqIrn9", "predicateType": "SeasonTierPredicate", "value": "RsyEADzq", "values": ["zW8pGylP", "NSjheLS0", "m35KCwBx"]}, {"anyOf": 2, "comparison": "isGreaterThanOrEqual", "name": "k8eHyWOO", "predicateType": "SeasonTierPredicate", "value": "SmInRZjb", "values": ["mbomwiPJ", "kgo1Lq8B", "m40ViXzp"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "WnW5eJMm", "predicateType": "EntitlementPredicate", "value": "zv1CEvOj", "values": ["jCaDWY5H", "ZfSfvJbV", "eTJlUWJZ"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isNot", "name": "LDPYXlxg", "predicateType": "SeasonPassPredicate", "value": "ntySlzI4", "values": ["YQEsJ9ms", "XPpnmeYR", "z7EU1YDk"]}, {"anyOf": 25, "comparison": "isGreaterThan", "name": "sWSyEmN8", "predicateType": "EntitlementPredicate", "value": "AkGll7vN", "values": ["PAwcgVxU", "mmz5pGi3", "stle0ZGs"]}, {"anyOf": 34, "comparison": "isGreaterThanOrEqual", "name": "wyBmavUe", "predicateType": "SeasonTierPredicate", "value": "2v4cODAl", "values": ["8Cj6lIMq", "YvqPoEdz", "suQNIIY3"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '0AXmX0Z6' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "9Cc19fAo"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'T6DJuVyb' \
    --offset '34' \
    --tag 'wwaqS1yM' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KWDP3jzF", "name": "rtdH76aT", "status": "INACTIVE", "tags": ["8FrK4Djz", "7oU6FkAR", "7CETmVMG"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'P4PMXa4O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'fNOAvgaC' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wnKHBv6s", "name": "IRNr09a1", "status": "INACTIVE", "tags": ["xSlAa6n5", "49I1EeN4", "luSLu7Yh"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'ErKNHIiI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'lQBCCkLb' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '76' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Nnz7AEff' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'UXATk0uX' \
    --limit '25' \
    --offset '57' \
    --orderNos '["xR1jvMvB", "9wmgo5Py", "PLcUjvYn"]' \
    --sortBy '3mQvWlNn' \
    --startTime 'TCQhMJpF' \
    --status 'REFUND_FAILED' \
    --withTotal 'true' \
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
    --orderNo 'z5BcSq4r' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'y3hHyV7a' \
    --body '{"description": "maULHZce"}' \
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
    --body '{"dryRun": true, "notifyUrl": "eTPCXiq6", "privateKey": "nxGKCYcG"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '4gZiLm67' \
    --externalId 'Qvzcz29l' \
    --limit '43' \
    --notificationSource 'PAYPAL' \
    --notificationType 'mTTMzKCL' \
    --offset '72' \
    --paymentOrderNo 'Nc06BwVC' \
    --startDate 'QtXfUBON' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'DToUH3V6' \
    --limit '75' \
    --offset '58' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "YT2ZTOiJ", "currencyNamespace": "sHMHYej9", "customParameters": {"RMNNbZXS": {}, "EFCPwax9": {}, "uY7TRew3": {}}, "description": "K9Un7B8Q", "extOrderNo": "K60MkOCT", "extUserId": "kX4CJ0td", "itemType": "BUNDLE", "language": "eGE-mpJT", "metadata": {"1jHoeFex": "yyv9AxQ3", "XbkbqVfH": "pPygl48X", "qMMSRrD8": "ap2Erbmn"}, "notifyUrl": "OPcPKMRt", "omitNotification": false, "platform": "e28lDG2L", "price": 80, "recurringPaymentOrderNo": "v1a2Wb7b", "region": "ygGeSp2C", "returnUrl": "E128CHd4", "sandbox": true, "sku": "zrdbs8Pi", "subscriptionId": "qMaUQX9E", "targetNamespace": "MNS2tsUv", "targetUserId": "bN31sCef", "title": "5vHMM2Is"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'uM62TMCu' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9cmSQVvM' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AJn7D3M6' \
    --body '{"extTxId": "9oFW3Dgj", "paymentMethod": "nQ3Q6o7f", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'twAcN8dr' \
    --body '{"description": "scgFn7Xj"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IlRLuUZJ' \
    --body '{"amount": 10, "currencyCode": "ScgJeMlN", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 85, "vat": 87}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '92qMEgXm' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["IOS", "Steam", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --endTime 'lg9jCrbd' \
    --limit '2' \
    --offset '44' \
    --source 'OTHER' \
    --startTime 'tzcVEf7C' \
    --status 'SUCCESS' \
    --transactionId 'rxEb3bU9' \
    --userId '4qEYr2jZ' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dp1tfMHU", "eventTopic": "jdqKDdzp", "maxAwarded": 68, "maxAwardedPerUser": 44, "namespaceExpression": "SoLYGeMP", "rewardCode": "l8eRIEub", "rewardConditions": [{"condition": "JO1tFOQi", "conditionName": "SezUqiYv", "eventName": "fx3CmDlI", "rewardItems": [{"duration": 5, "itemId": "m957r0fl", "quantity": 62}, {"duration": 17, "itemId": "ENTLKSRf", "quantity": 57}, {"duration": 72, "itemId": "scbgKpV3", "quantity": 86}]}, {"condition": "qG7oY6LV", "conditionName": "7AEjbqSw", "eventName": "lAeGazGT", "rewardItems": [{"duration": 31, "itemId": "qvNhk0Tt", "quantity": 27}, {"duration": 1, "itemId": "oSW89k2c", "quantity": 96}, {"duration": 75, "itemId": "hMQrneB2", "quantity": 21}]}, {"condition": "XJCMmhgd", "conditionName": "PjmdG3Mx", "eventName": "6zDcadx2", "rewardItems": [{"duration": 55, "itemId": "Vq6M1OOE", "quantity": 59}, {"duration": 68, "itemId": "AflpqI9y", "quantity": 37}, {"duration": 45, "itemId": "448GGxUX", "quantity": 63}]}], "userIdExpression": "233aejwl"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '3b1t97wv' \
    --limit '24' \
    --offset '0' \
    --sortBy '["namespace:asc", "rewardCode:asc"]' \
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
    --rewardId 'kHiaavFP' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'gtwaYA36' \
    --body '{"description": "jLtJ9zLK", "eventTopic": "llTjM3qG", "maxAwarded": 5, "maxAwardedPerUser": 44, "namespaceExpression": "hqeAjJAb", "rewardCode": "L7VCtRXn", "rewardConditions": [{"condition": "FxptEk3b", "conditionName": "Jt79e0oL", "eventName": "XTOaCyKp", "rewardItems": [{"duration": 25, "itemId": "FV5PyZgm", "quantity": 17}, {"duration": 80, "itemId": "2m7uwpbz", "quantity": 33}, {"duration": 41, "itemId": "qUNn9G1D", "quantity": 43}]}, {"condition": "qM46gqPB", "conditionName": "WCczaIRN", "eventName": "FqYEQlGR", "rewardItems": [{"duration": 64, "itemId": "68u04V8w", "quantity": 55}, {"duration": 100, "itemId": "DTldFZEv", "quantity": 44}, {"duration": 72, "itemId": "TU7Yua0I", "quantity": 27}]}, {"condition": "FQcQiT2W", "conditionName": "w6RRT3ZT", "eventName": "oUrIEFma", "rewardItems": [{"duration": 16, "itemId": "idmZasHq", "quantity": 65}, {"duration": 55, "itemId": "36AVPj0p", "quantity": 40}, {"duration": 26, "itemId": "7DSbsqjL", "quantity": 80}]}], "userIdExpression": "17SQaKNj"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BUB6E8l5' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'vKQSxpC9' \
    --body '{"payload": {"pi0XW39Q": {}, "fA3vZI6c": {}, "2Mvj4dro": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '14FtrhhB' \
    --body '{"conditionName": "UIYRWZUh", "userId": "NoFyWWtw"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'LD5JDHyg' \
    --limit '67' \
    --offset '5' \
    --start 'dZzqk64a' \
    --storeId 'sF2V49qB' \
    --viewId 'qW38gf26' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'fR6GrOCS' \
    --body '{"active": false, "displayOrder": 38, "endDate": "1976-11-11T00:00:00Z", "ext": {"LgdE5hyR": {}, "sBuc9jAC": {}, "W3CNAJS0": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 31, "itemCount": 9, "rule": "SEQUENCE"}, "items": [{"id": "DS9Lh5yN", "sku": "b63QHYAU"}, {"id": "nq7yNhI4", "sku": "FRbkq0I5"}, {"id": "CCccUxCh", "sku": "gvfbNkpj"}], "localizations": {"bsJoGLXd": {"description": "xcXivFc4", "localExt": {"vg0CXNe6": {}, "MEjNyOsj": {}, "raXOcpZu": {}}, "longDescription": "dnS8bv3c", "title": "7EWubtLO"}, "fgoYfMtk": {"description": "45Wdjwck", "localExt": {"JGHC1l8z": {}, "11cGCbdz": {}, "ki5GpddA": {}}, "longDescription": "dGhDr2OB", "title": "OxY2hGqE"}, "tN7W2itd": {"description": "BXm0ckeA", "localExt": {"kbF89Jx3": {}, "NWdCa9C6": {}, "7qvFEKJA": {}}, "longDescription": "oEt9ygt8", "title": "mt01ZbMQ"}}, "name": "l73rhbZt", "rotationType": "NONE", "startDate": "1988-10-31T00:00:00Z", "viewId": "bjr2XZAZ"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'PrLfTH7n' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XTzH8EC6' \
    --storeId 'QVVGIttN' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'QtsxdtAI' \
    --storeId 'YTedXpei' \
    --body '{"active": false, "displayOrder": 12, "endDate": "1983-11-03T00:00:00Z", "ext": {"tzHTCoLc": {}, "zonIOEFR": {}, "q9Rb8oZM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 88, "itemCount": 64, "rule": "SEQUENCE"}, "items": [{"id": "hk02k9Zz", "sku": "XslL4sVx"}, {"id": "dAnambwm", "sku": "OzXfxaHH"}, {"id": "MGaEUYm4", "sku": "4h0KANmj"}], "localizations": {"ZJytWpCl": {"description": "H6tFLCVc", "localExt": {"ZZVt9UPI": {}, "9eBfyiEA": {}, "M2VFxqzw": {}}, "longDescription": "CRw8cm63", "title": "2wPxgZqj"}, "tC4n7CrE": {"description": "glUXw0mK", "localExt": {"xJeY6vwW": {}, "sFL7edel": {}, "jD6pyca7": {}}, "longDescription": "0c2WmN1s", "title": "nAsmaTSB"}, "5aEtGLaY": {"description": "rHu5rM7M", "localExt": {"oZJ0NzYn": {}, "dheKUM8a": {}, "P3sqDEX3": {}}, "longDescription": "ty5e6YO8", "title": "VcctcrBI"}}, "name": "7O9bjEON", "rotationType": "CUSTOM", "startDate": "1983-06-13T00:00:00Z", "viewId": "eHWfSR29"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '3Ijssbuj' \
    --storeId 'aQTDU0oT' \
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
    --body '{"defaultLanguage": "1NvQ2cAT", "defaultRegion": "tNVCZBN2", "description": "S6oT2ueN", "supportedLanguages": ["CkWNkZvr", "X0FGcojb", "FlZaFj7q"], "supportedRegions": ["Zzxur2yB", "2uBjqpV1", "foexxn11"], "title": "eM6YRjhM"}' \
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
    --storeId 'uMN0NB9F' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Vp0dnj4W' \
    --body '{"defaultLanguage": "4DQE1H7Y", "defaultRegion": "C5nxX11R", "description": "xfb9eV0y", "supportedLanguages": ["rYs70bnt", "pDKwkKFz", "XnoMblYc"], "supportedRegions": ["OghE4eHw", "EsJJ5XaM", "HGs0tbib"], "title": "2SY1cNr7"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Tovpp0hu' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'm5S4hzzH' \
    --action 'CREATE' \
    --itemSku 'fTRxdrVg' \
    --itemType 'INGAMEITEM' \
    --limit '65' \
    --offset '23' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "updatedAt", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'RQIqbhfm' \
    --updatedAtStart 'T85GWrVC' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '7gPIwBKM' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'od8DadJj' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '45Z4OWMn' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'xTdfsDLo' \
    --action 'CREATE' \
    --itemSku 'klJHvCBc' \
    --itemType 'COINS' \
    --type 'ITEM' \
    --updatedAtEnd 'm18Uq4ZT' \
    --updatedAtStart 'BvBI8SUu' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'pDRUEGtv' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'E7W0ktFT' \
    --namespace $AB_NAMESPACE \
    --storeId 'Tk2CfOcY' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'pz9zcD0s' \
    --namespace $AB_NAMESPACE \
    --storeId 'RSHD5s5Z' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LKS3ozQZ' \
    --targetStoreId 'RHYeastQ' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'pm0koyFp' \
    --limit '78' \
    --offset '1' \
    --sku '23CZdzoQ' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'sgfHdbRj' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '16PG9kTj' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'U2WdTNYv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'YVXk7jaw' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "AWfsOvx7"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Jfddrnvp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'R0QFHPRv' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "l3zaLpuz"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'CRaGt5Lr' \
    --body '{"achievements": [{"id": "QNh6L1U0", "value": 55}, {"id": "GFEXRIbI", "value": 24}, {"id": "vozNLbj8", "value": 72}], "steamUserId": "Vm00FxZb"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'fKVhao0r' \
    --xboxUserId 'QLgyseYt' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WExqwRbl' \
    --body '{"achievements": [{"id": "xJUmNUSw", "percentComplete": 82}, {"id": "o9JD6O0R", "percentComplete": 27}, {"id": "7ycXO6hW", "percentComplete": 54}], "serviceConfigId": "sZhEbKU1", "titleId": "VTyvbMlb", "xboxUserId": "VWTWbErM"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'EgC0lwit' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'f21IvFOh' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '7XFEYm76' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'D0rKHfFA' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'JPJRQRxh' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'rI0vNrEC' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'nxEH2Rhw' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'XgBaEO1j' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'l8PADbRA' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'pzeBtAt4' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'OSx3sTh8' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '7wRISKEb' \
    --features '["K9QqA9hD", "YYuFpaIQ", "ivHezTEs"]' \
    --itemId '["jvv4Aeyt", "DFdIb2gp", "GKZ36hCl"]' \
    --limit '90' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3SMViZuJ' \
    --body '[{"endDate": "1972-08-02T00:00:00Z", "grantedCode": "cFu0xiw9", "itemId": "s2heyIqg", "itemNamespace": "Aa3TSInT", "language": "bRZ-464", "quantity": 67, "region": "dOzQvDC1", "source": "OTHER", "startDate": "1989-06-12T00:00:00Z", "storeId": "SFR3gF1h"}, {"endDate": "1999-12-22T00:00:00Z", "grantedCode": "TxdavMk4", "itemId": "JyjBL8s8", "itemNamespace": "yHmRztib", "language": "attF-GjEn", "quantity": 87, "region": "PzaJw4Z1", "source": "OTHER", "startDate": "1991-05-31T00:00:00Z", "storeId": "y5E1T08o"}, {"endDate": "1987-11-27T00:00:00Z", "grantedCode": "Cp5U7Lok", "itemId": "t4dAlu5c", "itemNamespace": "XrxIsgYe", "language": "TjvY-936", "quantity": 26, "region": "Nsp9bWrm", "source": "REFERRAL_BONUS", "startDate": "1974-05-16T00:00:00Z", "storeId": "pCYQA3B3"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rkfcKU9v' \
    --activeOnly 'true' \
    --appId '5LKixWma' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'E5LBCBhk' \
    --activeOnly 'false' \
    --limit '19' \
    --offset '82' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '21YkQ0iB' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --itemId '1UJbgxxj' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'CFZj7u3e' \
    --ids '["OUVeBtFb", "5hVI1RD3", "1ECimfHJ"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Zul7ceYh' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'X4RYUhZ2' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WAjpWWfk' \
    --appIds '["7ztkDBmG", "n4whmkUB", "CytbrvaM"]' \
    --itemIds '["JucOVBtb", "B9eUV5M8", "x8jxdP2u"]' \
    --skus '["A2mbcUUQ", "TaJVW6tw", "yL8rDv4n"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'EtpiBtyA' \
    --itemIds '["EX7MFWkQ", "P3nmgX9U", "haYKG54O"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tjxKTybb' \
    --appId 'LMZoSaJR' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9R3b8YeW' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'GJBuxw2q' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5JBcCXZ9' \
    --ids '["SvZgbKXZ", "Im5asunX", "PWVqCTAH"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '5VT8Fi31' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'wMDfYACg' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'jZpd9Nqv' \
    --entitlementIds '9IZJGKbD' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'f7bFWcm4' \
    --namespace $AB_NAMESPACE \
    --userId 'MISY7m7w' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'VgFjd7ms' \
    --namespace $AB_NAMESPACE \
    --userId 'bHEqApxf' \
    --body '{"endDate": "1991-06-29T00:00:00Z", "nullFieldList": ["zq6smGVv", "8HKXmp7G", "Exz4vfyo"], "startDate": "1981-06-26T00:00:00Z", "status": "ACTIVE", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'X9LuDY1p' \
    --namespace $AB_NAMESPACE \
    --userId 'EkF8DeNB' \
    --body '{"options": ["fNBKhg2a", "fAZHLT6y", "0uZ9TaZH"], "requestId": "E9MIsWpS", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'OV6W39AK' \
    --namespace $AB_NAMESPACE \
    --userId 'aTvCM41g' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ptjQaRPM' \
    --namespace $AB_NAMESPACE \
    --userId 'r3RdLNBZ' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'iyLMlVK5' \
    --namespace $AB_NAMESPACE \
    --userId '9xdQpF1X' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'JpIGYxjF' \
    --namespace $AB_NAMESPACE \
    --userId 'm8521phj' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'aCX20vng' \
    --body '{"duration": 55, "endDate": "1985-08-11T00:00:00Z", "itemId": "iPN3awt2", "itemSku": "zw5BxnzZ", "language": "AIELfYtj", "order": {"currency": {"currencyCode": "PM9c19mH", "currencySymbol": "09uNufdt", "currencyType": "REAL", "decimals": 53, "namespace": "nWGpuzXu"}, "ext": {"SlmchePd": {}, "AyCGrnn7": {}, "UhE20LBJ": {}}, "free": false}, "orderNo": "WNVQbxii", "origin": "Playstation", "quantity": 81, "region": "8IWgVasL", "source": "GIFT", "startDate": "1990-05-11T00:00:00Z", "storeId": "7WYXBuoV"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'hns5tWse' \
    --body '{"code": "qmIhhWvD", "language": "rdYw_ZlOx-419", "region": "efDDFQTl"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'CsXBVM3W' \
    --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "oryBOYsB", "namespace": "AUtyjOfm"}, "item": {"itemId": "RPVDmDLC", "itemSku": "Dgkeo4S1", "itemType": "H7cWplnG"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "QVn2fXpl", "namespace": "53UvBzcv"}, "item": {"itemId": "yynaQskF", "itemSku": "iQ8xViJ5", "itemType": "Peq3rfcp"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "8bcaRcQO", "namespace": "3UxPcQdt"}, "item": {"itemId": "aRSbU5RN", "itemSku": "E0CW0hci", "itemType": "Qjwjg7EW"}, "quantity": 100, "type": "CURRENCY"}], "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '240R07DM' \
    --endTime 'JQVUrOvm' \
    --limit '88' \
    --offset '45' \
    --productId 'cfQ6Ds7g' \
    --startTime 'Nsmccp5s' \
    --status 'VERIFIED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '7WbmkdXx' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'rEQ0rKms' \
    --endTime 'HFD4qh2o' \
    --limit '83' \
    --offset '71' \
    --startTime 'rOFXRTgI' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'm5uot1Ts' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ZJ", "productId": "QCFYTP9Q", "region": "cOPXI9FR", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Ych9ce2Q' \
    --itemId '0HPwEa4H' \
    --limit '48' \
    --offset '99' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VaZGrpLp' \
    --body '{"currencyCode": "rZHXrfz6", "currencyNamespace": "HPGXmCGk", "discountedPrice": 49, "ext": {"gMHjZ5H0": {}, "ARfP9WtX": {}, "nHXTuxiv": {}}, "itemId": "DsHLPamA", "language": "UTGEWATz", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 41, "quantity": 44, "region": "0jikUCd0", "returnUrl": "IDbCnCID", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'BS0RAYBU' \
    --itemId 'mXps9O0l' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eoZw68XB' \
    --userId 'fq8n9FZS' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'IkaYOA6G' \
    --userId 'g0Bo5bQl' \
    --body '{"status": "INIT", "statusReason": "dylOXul5"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Pef4pQzn' \
    --userId 'SiBWpjJW' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'OTM26eXo' \
    --userId 'SQgyV8Wc' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'G1mn8fOi' \
    --userId 'bBP4k7YU' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '95JvnOvO' \
    --userId 'ZNeJ1VDp' \
    --body '{"additionalData": {"cardSummary": "incExNdA"}, "authorisedTime": "1994-02-07T00:00:00Z", "chargebackReversedTime": "1974-06-22T00:00:00Z", "chargebackTime": "1994-04-05T00:00:00Z", "chargedTime": "1977-08-14T00:00:00Z", "createdTime": "1982-03-09T00:00:00Z", "currency": {"currencyCode": "zzVEq4bA", "currencySymbol": "L4xO0Lk1", "currencyType": "VIRTUAL", "decimals": 85, "namespace": "QTxrdT7h"}, "customParameters": {"Y6DrPjcK": {}, "2DJWS8rS": {}, "L7etCPct": {}}, "extOrderNo": "au5sLzUM", "extTxId": "Xoy8MnD0", "extUserId": "HK27YJRX", "issuedAt": "1987-07-21T00:00:00Z", "metadata": {"Qden1Smb": "zkh05q18", "UoCPc6wC": "5Rs0dtkQ", "AnXKPjeN": "XJpPzxO7"}, "namespace": "eCokqXKs", "nonceStr": "78vGPMVy", "paymentMethod": "FvVGJXKW", "paymentMethodFee": 80, "paymentOrderNo": "Im1FfSd1", "paymentProvider": "PAYPAL", "paymentProviderFee": 100, "paymentStationUrl": "31jXhIXc", "price": 94, "refundedTime": "1977-07-30T00:00:00Z", "salesTax": 7, "sandbox": false, "sku": "TSefAxzk", "status": "REQUEST_FOR_INFORMATION", "statusReason": "t2jDMFAW", "subscriptionId": "LrDdmEFG", "subtotalPrice": 23, "targetNamespace": "khjMSqmi", "targetUserId": "9TZMe6sU", "tax": 93, "totalPrice": 10, "totalTax": 45, "txEndTime": "1999-02-03T00:00:00Z", "type": "nahriDNh", "userId": "Mw4jVyHt", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'gCZjOP46' \
    --userId '1JMR7D66' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'nNo9fQ8s' \
    --body '{"currencyCode": "QbqqrXaE", "currencyNamespace": "GX9AFfd2", "customParameters": {"lfJVMd6y": {}, "3G7YMfAM": {}, "UYYUXC3v": {}}, "description": "DZNPoLsV", "extOrderNo": "btB2UGpe", "extUserId": "KKk0Mft2", "itemType": "EXTENSION", "language": "Uu-Otwo-437", "metadata": {"zPT4tymW": "pRUV3G9y", "R6RVnYq4": "Q0kLFSwF", "Fduu8juP": "kc5ulw6j"}, "notifyUrl": "tjlSEs2V", "omitNotification": true, "platform": "hJVaa2oE", "price": 21, "recurringPaymentOrderNo": "p0HitCzv", "region": "Do8Cl2Kk", "returnUrl": "DCnUvwnH", "sandbox": false, "sku": "KDpFwtmW", "subscriptionId": "wijkBhTW", "title": "2gUBS2X9"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QAWpWWdd' \
    --userId 'a36lpf0h' \
    --body '{"description": "KLcovcbz"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'crmRdIlx' \
    --body '{"code": "NipqPF3E", "orderNo": "VqxH4z45"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'emfG9F00' \
    --body '{"meta": {"6rL9vPim": {}, "35NmEuCl": {}, "xxnHlWwD": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "tthccMXy", "namespace": "qdtMmxjV"}, "entitlement": {"clazz": "APP", "entitlementId": "FAhESzWW", "type": "CONSUMABLE"}, "item": {"itemIdentity": "VHypoVeY", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 48, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "xVknycXG", "namespace": "d1Q7iXlO"}, "entitlement": {"clazz": "LOOTBOX", "entitlementId": "XHGLmTGb", "type": "DURABLE"}, "item": {"itemIdentity": "yUltcGAN", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 66, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Hb2ZUb1B", "namespace": "in2SSUgX"}, "entitlement": {"clazz": "LOOTBOX", "entitlementId": "qU9Vx1kT", "type": "DURABLE"}, "item": {"itemIdentity": "wTX7r1SZ", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 14, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "ZFjt9dPB"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rNqerkVx' \
    --chargeStatus 'SETUP' \
    --itemId 'pY3VAlWB' \
    --limit '33' \
    --offset '100' \
    --sku 'w00rLxz1' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Fjg231dp' \
    --excludeSystem 'false' \
    --limit '66' \
    --offset '11' \
    --subscriptionId 'bUJiORhK' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ZnIJq6ac' \
    --body '{"grantDays": 19, "itemId": "4vAVqvkJ", "language": "UGJGsJAL", "reason": "tjX05ZnO", "region": "14KTeBdi", "source": "kvEHHCWq"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BnZmem1H' \
    --itemId 'SXNRZTRe' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JyGfbqPk' \
    --userId '1sniVPph' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zv9z5ZTK' \
    --userId 'auf9G5tc' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pEkFhfgE' \
    --userId 'DsRfXScq' \
    --force 'false' \
    --body '{"immediate": false, "reason": "TDRG0RiG"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'S7RXQkMc' \
    --userId 'wJRPk9DP' \
    --body '{"grantDays": 32, "reason": "Z8sYLgux"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EganpYEs' \
    --userId 'GxGqhIY3' \
    --excludeFree 'false' \
    --limit '72' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'a0ecIqPP' \
    --userId 'q9iyrPRm' \
    --body '{"additionalData": {"cardSummary": "4tVqg5z5"}, "authorisedTime": "1973-06-11T00:00:00Z", "chargebackReversedTime": "1983-04-20T00:00:00Z", "chargebackTime": "1989-07-23T00:00:00Z", "chargedTime": "1991-03-17T00:00:00Z", "createdTime": "1978-01-12T00:00:00Z", "currency": {"currencyCode": "UkSHee0p", "currencySymbol": "hb4nbaBa", "currencyType": "REAL", "decimals": 1, "namespace": "mvqAwTQj"}, "customParameters": {"B6J7zqB9": {}, "1TK4jHc2": {}, "PAEXVfI3": {}}, "extOrderNo": "VtdrFg89", "extTxId": "i1pnSRP2", "extUserId": "ZGLltRPN", "issuedAt": "1982-09-18T00:00:00Z", "metadata": {"tmqR1bqU": "ntYOpyMj", "tfNE0Vt2": "ptz9Tv9o", "WnizfmFm": "vOHczAri"}, "namespace": "vsZdFCUJ", "nonceStr": "IIXZbZxH", "paymentMethod": "IGXq4VE9", "paymentMethodFee": 55, "paymentOrderNo": "X3Bk16Nq", "paymentProvider": "CHECKOUT", "paymentProviderFee": 46, "paymentStationUrl": "C2LKbvQT", "price": 67, "refundedTime": "1977-01-29T00:00:00Z", "salesTax": 17, "sandbox": false, "sku": "oxkD1IkI", "status": "DELETED", "statusReason": "TfIDstir", "subscriptionId": "DO1n742m", "subtotalPrice": 29, "targetNamespace": "NjnCR17Q", "targetUserId": "ZpwZRVfi", "tax": 60, "totalPrice": 11, "totalTax": 100, "txEndTime": "1992-08-08T00:00:00Z", "type": "kebO3EAb", "userId": "Tw4cpKMW", "vat": 53}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Q27OGwLE' \
    --namespace $AB_NAMESPACE \
    --userId 'KgLIeGly' \
    --body '{"count": 86, "orderNo": "k5ws8Axb"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'k3UAOftp' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'zvgotnE6' \
    --namespace $AB_NAMESPACE \
    --userId 'YW1vMj1U' \
    --body '{"allowOverdraft": false, "amount": 67, "balanceOrigin": "Xbox", "reason": "DhWRrIZt"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '4bJCrGkx' \
    --namespace $AB_NAMESPACE \
    --userId 'zDhBRUqq' \
    --limit '6' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'oxnH05Jk' \
    --namespace $AB_NAMESPACE \
    --userId 'ZRgZAOOq' \
    --body '{"amount": 25, "expireAt": "1994-11-12T00:00:00Z", "origin": "System", "reason": "D8HjopIo", "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '1TsK8bJ7' \
    --namespace $AB_NAMESPACE \
    --userId 'DiOXYIcx' \
    --body '{"amount": 3, "walletPlatform": "Nintendo"}' \
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
    --storeId 'jTfq48Cs' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ForSOUWQ' \
    --body '{"displayOrder": 83, "localizations": {"xS3IKu54": {"description": "ip6tYMxV", "localExt": {"UQwXNiJM": {}, "aCQKJgnf": {}, "OdgaOrM9": {}}, "longDescription": "fYQkFytI", "title": "LKuYiQnd"}, "iM37G8gj": {"description": "RIbWDoYy", "localExt": {"1Kz6YlRP": {}, "MCRDbwY7": {}, "5Q1kPa5y": {}}, "longDescription": "feyNjEol", "title": "Og0Ps7aH"}, "JzRQasUB": {"description": "hqFrnwQ3", "localExt": {"eRpCC329": {}, "AgcvHrWL": {}, "Pqg3R6mu": {}}, "longDescription": "8HwSddyN", "title": "mMrx1yQz"}}, "name": "8OsZwLh8"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'IPgrjk1b' \
    --storeId 'yXw6C17m' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'CI2UODTZ' \
    --storeId 'B2hg8dWA' \
    --body '{"displayOrder": 34, "localizations": {"g5wOzvOf": {"description": "TQ2s1MQ8", "localExt": {"KUizFB8V": {}, "TgxZ9rEV": {}, "TcBgKABh": {}}, "longDescription": "Di8p90yr", "title": "TNm9KOH2"}, "ScuhKkRj": {"description": "s2fSTuL9", "localExt": {"hZfJrw64": {}, "cPSPhFiz": {}, "0eyBql3Z": {}}, "longDescription": "jYcqQVN4", "title": "EkJe8agB"}, "qWr5mfUc": {"description": "SyJXch6X", "localExt": {"P6TRv1p8": {}, "unvnQ1jP": {}, "NKJ2jsKs": {}}, "longDescription": "teNP7UZZ", "title": "knGJ8NoZ"}}, "name": "AZST4Ro6"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'nSmSyAQ1' \
    --storeId 'wza5APP0' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '2DVM6gXE' \
    --end 'OCQfUEMQ' \
    --start 'mUwxkYuu' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["IioL8BQ7", "o4CLUipU", "mmA487vi"], "apiKey": "2PeIDbc4", "authoriseAsCapture": false, "blockedPaymentMethods": ["3u0XZdOH", "j1q6EgW9", "Sf3Pnhny"], "clientKey": "NgfBlL4N", "dropInSettings": "a9c5yZmj", "liveEndpointUrlPrefix": "Qcs5HtkJ", "merchantAccount": "X9v82BGi", "notificationHmacKey": "Rdfy2dKZ", "notificationPassword": "Dbktp70H", "notificationUsername": "ny9UGOZM", "returnUrl": "addgWATm", "settings": "KK8rT23V"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "oqnJuFMI", "privateKey": "wwpv8lYI", "publicKey": "E7UWBxPX", "returnUrl": "aGAaYW3Y"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "k21QW9Yz", "secretKey": "KIr0ztO0"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'MV86URr3' \
    --region 'EaD4l1CI' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "S4BV9pkm", "clientSecret": "2Atrd87H", "returnUrl": "4MAIRv4C", "webHookId": "DyOx8YXL"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["M86AM1z2", "lhtWjDU9", "xvSr9vFA"], "publishableKey": "w7HV2a3M", "secretKey": "QAubLiVx", "webhookSecret": "ferNMa7V"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "0xpOWPxs", "key": "jvnoI7ZD", "mchid": "vZpYDchJ", "returnUrl": "ikVqnoPn"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "xyc3whys", "flowCompletionUrl": "t9JhhaHA", "merchantId": 33, "projectId": 93, "projectSecretKey": "EH6f3ueJ"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'y1SMM0Zo' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'aVEwvuEm' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["RA7ahlHS", "jE2MDi37", "QtbDn4ib"], "apiKey": "RVaLFEYf", "authoriseAsCapture": false, "blockedPaymentMethods": ["AagAxHtf", "mjl7YQd2", "fAOR7uj3"], "clientKey": "m96TkaMK", "dropInSettings": "5f7aoDpY", "liveEndpointUrlPrefix": "e58TT1dD", "merchantAccount": "glsMamZt", "notificationHmacKey": "E7iizdxv", "notificationPassword": "mQI1zAzp", "notificationUsername": "hsPlTO3H", "returnUrl": "34ikECrA", "settings": "E9NqnCTv"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'GLy6W4s7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'XIbi2LIa' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "T0gCwzkQ", "privateKey": "FChMXVwY", "publicKey": "5E4UpZwW", "returnUrl": "mWtNBufX"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '8z8HOowN' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'XlqDfuhs' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "WiuJWgS1", "secretKey": "BgSuEN2p"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'cj9W8yQk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'EC1z8XMU' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "qQB2ezac", "clientSecret": "vQGucISh", "returnUrl": "Wjbk3hcb", "webHookId": "st2lcEMb"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'ew2wRrDk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '7u4lnhgk' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["kbWOPDMI", "qGFvqAgk", "SsTIuYVf"], "publishableKey": "nVOnyZYp", "secretKey": "vJ39GkH7", "webhookSecret": "7AoiSC1k"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'N3uhrsjN' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'NyOfSXd7' \
    --validate 'false' \
    --body '{"appId": "y5xJGmhQ", "key": "D79bWfyp", "mchid": "gVnGZb4O", "returnUrl": "QKucCrgE"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'M96W6oXZ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'aCtsZZzI' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ocG403qV' \
    --validate 'true' \
    --body '{"apiKey": "Km4VRErw", "flowCompletionUrl": "sjuR4IvM", "merchantId": 91, "projectId": 2, "projectSecretKey": "DnZMCblo"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'EWMpb1vw' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'mxS5Q9qX' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'Dem0sxsO' \
    --offset '15' \
    --region 'MvTWFYym' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "xygCcGNW", "region": "filBCLR8", "sandboxTaxJarApiToken": "s0BTRT3i", "specials": ["CHECKOUT", "ALIPAY", "WALLET"], "taxJarApiToken": "F0X3b81r", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'ts0I8jO2' \
    --region 'Qy8gaKIy' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'lBtL9FdX' \
    --body '{"aggregate": "XSOLLA", "namespace": "3C7BWt3t", "region": "2Gtup8ew", "sandboxTaxJarApiToken": "3UwKuIai", "specials": ["XSOLLA", "STRIPE", "ALIPAY"], "taxJarApiToken": "RXmhSbZz", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'KDXMxazH' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "QKrUIs0n", "taxJarApiToken": "3qohmo5T", "taxJarEnabled": false, "taxJarProductCodesMapping": {"daIkQYeB": "MrAgS9xd", "KmbNhV3v": "BFA4z3y5", "fA3HOlfg": "TyHgcjD9"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '72JLzRci' \
    --end 'JGGaCIJM' \
    --start 'Md2qgyLo' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'pYU9KwXC' \
    --storeId 'dAIIoL7o' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'H86CZXBf' \
    --storeId '6XJ7NAbl' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'jUqId6hw' \
    --namespace $AB_NAMESPACE \
    --language 'isBOHWq6' \
    --storeId 'fcPGInLz' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'BAiT3yxe' \
    --namespace $AB_NAMESPACE \
    --language 'lxHWb2t4' \
    --storeId '7WVxx9Fn' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'gcQC45rP' \
    --namespace $AB_NAMESPACE \
    --language 'ny8DsFu8' \
    --storeId 'QADH6SEA' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'y3yHcEol' \
    --region 'quoZKX8L' \
    --storeId 'DWJ4jb5n' \
    --appId 'BTXjEkD2' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemByAppId' test.out

#- 308 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'jY3NDXAv' \
    --categoryPath 'iMUlmnqX' \
    --features 'SOEfOdng' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'nQ0OseAX' \
    --limit '70' \
    --offset '63' \
    --region 'jfmkHSZS' \
    --sortBy '["name:desc", "updatedAt", "displayOrder"]' \
    --storeId 'ABqihVVz' \
    --tags 'SV7Mpkf3' \
    > test.out 2>&1
eval_tap $? 308 'PublicQueryItems' test.out

#- 309 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'GfLlsf9m' \
    --region '5r0LHjDt' \
    --storeId '9MLSwBel' \
    --sku 'cPFLrF7a' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'HLRKLQtn' \
    --region 'oX6qbnJA' \
    --storeId '1nPpZMEe' \
    --itemIds 'xUprrHIV' \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["y3ICwUoc", "NAApcT83", "5AjcWRxn"]}' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'EXTENSION' \
    --limit '0' \
    --offset '29' \
    --region '0LUPjH0G' \
    --storeId '2TpjPZBF' \
    --keyword 'Jdg0n77S' \
    --language 'jLNhGAdq' \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'YjvcXMcw' \
    --namespace $AB_NAMESPACE \
    --language 'ooLchFLv' \
    --region 'JsFWUbju' \
    --storeId 'vhN10r9O' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'Nn5Evcy8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'TxRMHuAh' \
    --namespace $AB_NAMESPACE \
    --language 'pKQcZfHB' \
    --populateBundle 'false' \
    --region '1JwoqNeX' \
    --storeId 'mXbjX2b3' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "QnTofpWG", "paymentProvider": "STRIPE", "returnUrl": "eIP8Cr8z", "ui": "LmzIZcZK", "zipCode": "mQ3faHGJ"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zMBM1j4B' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rr4sg88m' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jijwjoeD' \
    --paymentProvider 'CHECKOUT' \
    --zipCode '4Q4aEU8s' \
    --body '{"token": "QdS9LF2i"}' \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5kuPISwx' \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'LSr1xeAA' \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'jVHNvHcB' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '3OyPydMK' \
    --foreinginvoice 'jEH9S09S' \
    --invoiceId 'ksuMFjU2' \
    --payload 'epOOTnyo' \
    --redirectResult 'u2hjZlV0' \
    --resultCode 'skxTiR4l' \
    --sessionId 'WtPM5CZm' \
    --status 't3aQaWNa' \
    --token 'RpnZLoKj' \
    --type 'nRitqVL5' \
    --userId '5KPSSeT2' \
    --orderNo 'SNkFEi5x' \
    --paymentOrderNo 'hwhB3l3a' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'f72r4LHe' \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'MvoChMq6' \
    --paymentOrderNo 'B4OAR0Kk' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '1lD4ikP3' \
    > test.out 2>&1
eval_tap $? 326 'GetRewardByCode' test.out

#- 327 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'iv5LHMLA' \
    --limit '59' \
    --offset '27' \
    --sortBy '["namespace:asc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 327 'QueryRewards1' test.out

#- 328 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'd3AzmJae' \
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
    --appIds '["UuRITerc", "kpl9OlMA", "vUhzKvFp"]' \
    --itemIds '["11I0fEoL", "6HRKdKp3", "6J08pGLD"]' \
    --skus '["X3wrDUUV", "9T51CwVt", "vNZp1u8E"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicExistsAnyMyActiveEntitlement' test.out

#- 331 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'X9dGwjHB' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'lXC8uQSI' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'n7PihaLM' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 334 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["8Y1yCHQA", "N1omqMQP", "Na6N18FR"]' \
    --itemIds '["Z2Mdenen", "vZVIZvkR", "mgwCDqhS"]' \
    --skus '["QWZxluoW", "GJyUCBCy", "MuPa3jgs"]' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetEntitlementOwnershipToken' test.out

#- 335 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'wF4hfS72' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CECCRYot' \
    --body '{"epicGamesJwtToken": "T1dB0f0B"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XFHAWQXB' \
    --body '{"serviceLabel": 6}' \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'IFxPgBaT' \
    --body '{"serviceLabels": [16, 82, 60]}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'XGT8iWrW' \
    --body '{"appId": "ObC0pTUE", "steamId": "Wpn7DyUS"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dWx80l0H' \
    --body '{"xstsToken": "5oaIks7M"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'MvCD3882' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'oRGo23FB' \
    --features '["alveq1IA", "INtOAjFk", "suqJxL6R"]' \
    --itemId '["E7YqnXxB", "scfelGe3", "84iuiGFT"]' \
    --limit '46' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'lbY8VnbZ' \
    --appId 'nppbnEwm' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ZW5IvSGP' \
    --limit '69' \
    --offset '4' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2Fb3RXb9' \
    --entitlementClazz 'CODE' \
    --itemId '5uMHBlRd' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xja5yje0' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'ZaMCnpft' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4stjcLvY' \
    --appIds '["tpT74Vxx", "GRB6PAU7", "cX1LbeAe"]' \
    --itemIds '["3UPebTYC", "ucUOdCdE", "epntUXz2"]' \
    --skus '["D9VrOn1K", "Q2A2fXkJ", "bQgdF4HY"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5szJsYZR' \
    --appId 'AWQjEvuF' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dxArfY23' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'zwUanOhn' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'KacEhiDy' \
    --ids '["SpEEGwc7", "NE4NCvRZ", "2XJ9YQHF"]' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '3NIIjzrm' \
    --entitlementClazz 'CODE' \
    --sku 'bw78CYPi' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'KE86zxHl' \
    --namespace $AB_NAMESPACE \
    --userId 'mZgK4rrS' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Saa6h8uh' \
    --namespace $AB_NAMESPACE \
    --userId 'LzVIgoz4' \
    --body '{"options": ["spz6MAzp", "K5AIDjrK", "QmwC6Q4o"], "requestId": "2WMdYKk6", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Ofm1sUSw' \
    --body '{"code": "ahQII4eW", "language": "BW-xkPJ", "region": "uD2WJf75"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'OvorT42P' \
    --body '{"excludeOldTransactions": false, "language": "bft", "productId": "FcHsCSwq", "receiptData": "Tk4U8FNy", "region": "dxG57ZRq", "transactionId": "f6Z59bIb"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sVF6e7x8' \
    --body '{"epicGamesJwtToken": "tvrpuJx9"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'g9Jv7VqC' \
    --body '{"autoAck": true, "language": "bBCg", "orderId": "d0psRLNk", "packageName": "P87UyQOk", "productId": "RoclVimu", "purchaseTime": 5, "purchaseToken": "UkM0dp7s", "region": "BRAhGYYn"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '8h97KdVe' \
    --body '{"currencyCode": "nF14OHxG", "price": 0.7632128495269177, "productId": "5dIkhIi5", "serviceLabel": 2}' \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '8fJ1Is4E' \
    --body '{"currencyCode": "dGMlOjcg", "price": 0.45225568446558184, "productId": "VDeRKWFy", "serviceLabels": [98, 2, 76]}' \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '3bjg0H96' \
    --body '{"appId": "91VpKnz5", "currencyCode": "CGrf8CXP", "language": "vmQ_oCHu", "price": 0.5308114698901644, "productId": "VPqKlX8D", "region": "6YwgfdU8", "steamId": "8M4Gaw4n"}' \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5fIFQBzE' \
    --body '{"gameId": "mpDdPhVw", "language": "byR-or", "region": "FtNv2DEM"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'otR2XdIE' \
    --body '{"currencyCode": "KO3k73yA", "price": 0.09416158642961758, "productId": "IZJ2tpzz", "xstsToken": "GCTs4Jhe"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '3JUkKflg' \
    --itemId '3pniHm0p' \
    --limit '9' \
    --offset '11' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'hSvXPg3s' \
    --body '{"currencyCode": "mrJxZr1M", "discountedPrice": 6, "ext": {"P78nH9Ic": {}, "0aKsEYqc": {}, "4F0Funsq": {}}, "itemId": "NdAJPuXQ", "language": "bL-aiVI_287", "price": 31, "quantity": 65, "region": "OmWikhGq", "returnUrl": "m0JasJlP"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'x1EV5nnT' \
    --userId 'S8DB33sM' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '35yCIUJl' \
    --userId 'S8laFt7g' \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'cSbWKEl3' \
    --userId 'ezjVzQ3F' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5BSWnAuu' \
    --userId 'cwGlenrw' \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'MG7vlmTM' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'fBoPxFf4' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'sjJQNa70' \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'IZGv0uGF' \
    --language 'zVUsf6Jm' \
    --region '9N8fd3qH' \
    --storeId 'X1ZX0sfo' \
    --viewId 'sNiXgG49' \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'I7mIXI8t' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'QOu6u42M' \
    --limit '78' \
    --offset '33' \
    --sku 'hYhQO87w' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EUNQDxEj' \
    --body '{"currencyCode": "KrbhVz8t", "itemId": "ORZ4d6lb", "language": "mR", "region": "x4XeX4Mf", "returnUrl": "eLONdAKS", "source": "yT3ZBVqD"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KUIUFCzX' \
    --itemId '04oqZV6M' \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VEmTU9rb' \
    --userId 'CqToSzdY' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MjuP6Mgp' \
    --userId 'cV0aHLb1' \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gNr04P82' \
    --userId 'lIytTllD' \
    --body '{"immediate": false, "reason": "Wvrd1lLe"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QHiFn8zI' \
    --userId '8gsU80FU' \
    --excludeFree 'true' \
    --limit '99' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wDdIHeKY' \
    --language 'RL3CmsOZ' \
    --storeId 'QJ9GwdIC' \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '7Q2buk0L' \
    --namespace $AB_NAMESPACE \
    --userId 'aYFINEIM' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'CwremRYk' \
    --namespace $AB_NAMESPACE \
    --userId 'v2KvdQEO' \
    --limit '96' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 380 'PublicListUserWalletTransactions' test.out

#- 381 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate '9ki5fbSl' \
    --baseAppId '97unFp1m' \
    --categoryPath 'mE7pJKWt' \
    --features 'PyuxL7Mg' \
    --includeSubCategoryItem 'false' \
    --itemName 'uQX0dTGa' \
    --itemStatus 'ACTIVE' \
    --itemType 'CODE' \
    --limit '19' \
    --offset '85' \
    --region 'BnJN1C7S' \
    --sortBy '["name:asc", "name:desc", "createdAt:desc"]' \
    --storeId 'QS3TUk3i' \
    --tags 'clranLVd' \
    --targetNamespace '1y8GQ17O' \
    > test.out 2>&1
eval_tap $? 381 'QueryItems1' test.out

#- 382 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'cHhuS5dm' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 382 'ImportStore1' test.out

#- 383 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ki4v1OOW' \
    --body '{"itemIds": ["bu4TFVph", "7rkvVcWu", "owzWCB44"]}' \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE