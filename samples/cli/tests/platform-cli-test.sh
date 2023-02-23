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
    --body '{"context": {"item": {"appId": "dRWGTJAG", "appType": "SOFTWARE", "baseAppId": "tYzOs7fL", "boothName": "YLCEwJtH", "boundItemIds": ["27xVgSZE", "Ql7FSUhY", "hMDK2cdz"], "categoryPath": "6UpziSVP", "clazz": "HXRFsHmk", "createdAt": "1987-10-19T00:00:00Z", "description": "TBqc48bp", "displayOrder": 45, "entitlementType": "DURABLE", "ext": {"Alkwd07F": {}, "kibCvyUk": {}, "R27zkkec": {}}, "features": ["Fai8mEvv", "wtMC42Kr", "T8EI3xSG"], "fresh": false, "images": [{"as": "Cv7Pg0Uw", "caption": "CsTqNLfY", "height": 17, "imageUrl": "MebfMKFk", "smallImageUrl": "8aHNVNx7", "width": 92}, {"as": "o2WO2J6t", "caption": "2ZnrNX4T", "height": 55, "imageUrl": "NM3FFeQy", "smallImageUrl": "5r1qawTe", "width": 80}, {"as": "02kEEXpc", "caption": "KG0N81eU", "height": 62, "imageUrl": "I7fCV55F", "smallImageUrl": "UWLGpCst", "width": 48}], "itemId": "oV7ewwwR", "itemIds": ["Xo4H2Yh1", "KmifRN5c", "FkbdyVhe"], "itemQty": {"EqEDxc7w": 44, "GSZv9hTA": 76, "8KHmbmyY": 79}, "itemType": "OPTIONBOX", "language": "DeICWKpM", "listable": true, "localExt": {"TZsTsGH2": {}, "wXxPOKLB": {}, "jfqxB5Ho": {}}, "longDescription": "1sWOjY7w", "lootBoxConfig": {"rewardCount": 19, "rewards": [{"lootBoxItems": [{"count": 91, "itemId": "ZOyZlJYu", "itemSku": "lMHMUgO2", "itemType": "hsj4dOhA"}, {"count": 78, "itemId": "3HiC0P6t", "itemSku": "oYHLSinw", "itemType": "2JbYd2de"}, {"count": 35, "itemId": "azcuLcZT", "itemSku": "ye5HCSfV", "itemType": "gXb0nMPh"}], "name": "lqZOD5y9", "odds": 0.7122112426417287, "type": "REWARD", "weight": 43}, {"lootBoxItems": [{"count": 35, "itemId": "gndXwNjk", "itemSku": "W5h2iNlb", "itemType": "T63LN1w3"}, {"count": 22, "itemId": "1CBGUI3M", "itemSku": "uKuYuncK", "itemType": "MyjVeDDE"}, {"count": 5, "itemId": "frxqEP2R", "itemSku": "ARZ9ETc7", "itemType": "weTXiOsZ"}], "name": "CnaOudD1", "odds": 0.4336075102924891, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 7, "itemId": "dodwXOlN", "itemSku": "9tkzj2cl", "itemType": "Ph0aBMeH"}, {"count": 89, "itemId": "o3GR3akh", "itemSku": "hn0U43oB", "itemType": "Vr4Tnj6B"}, {"count": 48, "itemId": "lTkyuTc6", "itemSku": "d8SAIaq1", "itemType": "QzcjNHj7"}], "name": "Fp8OcfTh", "odds": 0.9690466126038678, "type": "PROBABILITY_GROUP", "weight": 45}], "rollFunction": "DEFAULT"}, "maxCount": 77, "maxCountPerUser": 15, "name": "YZehUXs8", "namespace": "nL1h9wl3", "optionBoxConfig": {"boxItems": [{"count": 43, "itemId": "B2vs2zgf", "itemSku": "blZLo7K4", "itemType": "8oJoBUXj"}, {"count": 87, "itemId": "zkQUlwND", "itemSku": "f5yLhEHx", "itemType": "6Jquoy4p"}, {"count": 91, "itemId": "twoNft4G", "itemSku": "Tealoyg3", "itemType": "DU6ienG2"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "4XEXyznL", "predicateType": "SeasonTierPredicate", "value": "QDjrgp25", "values": ["2wgU2zqV", "rcSQoLqV", "blYg6r14"]}, {"anyOf": 19, "comparison": "includes", "name": "hAVgWtwq", "predicateType": "SeasonPassPredicate", "value": "QA4eT7yK", "values": ["lP6ybUsb", "77Ks9jvy", "dAREdY5u"]}, {"anyOf": 88, "comparison": "is", "name": "QbNpIxmU", "predicateType": "SeasonPassPredicate", "value": "3Si7mBRT", "values": ["IpLrlsby", "XjWuYBgG", "xjy4qsma"]}]}, {"operator": "or", "predicates": [{"anyOf": 79, "comparison": "isLessThan", "name": "yMOkSnf2", "predicateType": "SeasonPassPredicate", "value": "voLAiLnK", "values": ["A9T1HdcP", "ty4YXumg", "BFJozOPv"]}, {"anyOf": 59, "comparison": "is", "name": "BGMhtk5e", "predicateType": "SeasonPassPredicate", "value": "3kOzN8XS", "values": ["9UaWBF23", "tRDbfgiS", "BqwMWNtk"]}, {"anyOf": 89, "comparison": "includes", "name": "G1K22J4v", "predicateType": "SeasonPassPredicate", "value": "mP2bMcsb", "values": ["AKyxMkRl", "Cq1C0vGw", "vsDJkrJ8"]}]}, {"operator": "and", "predicates": [{"anyOf": 61, "comparison": "isGreaterThan", "name": "1Gwzy22c", "predicateType": "EntitlementPredicate", "value": "4zCGMm0f", "values": ["6Jz1xwPI", "AsRCXEYX", "TOcIwGse"]}, {"anyOf": 57, "comparison": "isNot", "name": "Dbw6TuZo", "predicateType": "EntitlementPredicate", "value": "FQLXuCoz", "values": ["osrYLmLF", "Cq1t1ikK", "hiernRjv"]}, {"anyOf": 60, "comparison": "excludes", "name": "PTF0D5BW", "predicateType": "SeasonTierPredicate", "value": "WnEREd9x", "values": ["jtiaLlin", "Q6nD9Nkp", "gIbxWT1a"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 12, "fixedTrialCycles": 44, "graceDays": 94}, "region": "bfnVnUZk", "regionData": [{"currencyCode": "LV0mW71G", "currencyNamespace": "UAwRLv22", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1976-11-08T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-08-19T00:00:00Z", "discountedPrice": 34, "expireAt": "1980-05-24T00:00:00Z", "price": 74, "purchaseAt": "1979-03-22T00:00:00Z", "trialPrice": 13}, {"currencyCode": "HDgh2PXs", "currencyNamespace": "0oZifJ9J", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1977-10-03T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1994-10-22T00:00:00Z", "discountedPrice": 79, "expireAt": "1992-12-06T00:00:00Z", "price": 13, "purchaseAt": "1972-06-18T00:00:00Z", "trialPrice": 49}, {"currencyCode": "ibgnBbir", "currencyNamespace": "DMWAA4AG", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1991-12-28T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1993-01-19T00:00:00Z", "discountedPrice": 31, "expireAt": "1977-09-08T00:00:00Z", "price": 42, "purchaseAt": "1971-03-10T00:00:00Z", "trialPrice": 74}], "seasonType": "PASS", "sku": "ZVZ5kNkr", "stackable": false, "status": "ACTIVE", "tags": ["HuKSerNt", "7bFph2AM", "kaC1lHTT"], "targetCurrencyCode": "fU4Efqm2", "targetItemId": "1ZbNMFlC", "targetNamespace": "vbQ81hzX", "thumbnailUrl": "H3LiFLiT", "title": "Jvs6bdNv", "updatedAt": "1986-09-28T00:00:00Z", "useCount": 3}, "namespace": "uOeeMg2Y", "order": {"currency": {"currencyCode": "ijVu20TV", "currencySymbol": "CvzhcStU", "currencyType": "REAL", "decimals": 26, "namespace": "dLnZ1CAq"}, "ext": {"EGx23KOS": {}, "ZWOfMN9d": {}, "0lrIyIjj": {}}, "free": true}, "source": "ACHIEVEMENT"}, "script": "yIRgaUBm", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '3erGyEeV' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '3CrRHAH9' \
    --body '{"grantDays": "JSi0i7oZ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'qusUmDx3' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'WPiVkSFD' \
    --body '{"grantDays": "RayVroLG"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "0i2EJpZ9", "dryRun": false, "fulfillmentUrl": "3IoRxezT", "itemType": "BUNDLE", "purchaseConditionUrl": "dS5lJLd5"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'pxv4KvjG' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ACxImRlp' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '5Jiy2Zfn' \
    --body '{"clazz": "rG8vsGjC", "dryRun": true, "fulfillmentUrl": "D0YPnOId", "purchaseConditionUrl": "T0tVO8rf"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'nY2by9i2' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --name 'PCUUON2d' \
    --offset '54' \
    --tag 'UqRjGbMK' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WvvOTeOv", "items": [{"extraSubscriptionDays": 3, "itemId": "WUPzwXXw", "itemName": "K6UMAwMU", "quantity": 25}, {"extraSubscriptionDays": 78, "itemId": "QYDFmjcT", "itemName": "72sYjIcI", "quantity": 34}, {"extraSubscriptionDays": 51, "itemId": "37E9ZqOW", "itemName": "yBUicALW", "quantity": 83}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 62, "maxRedeemCountPerCodePerUser": 20, "maxSaleCount": 13, "name": "TcMBvyYy", "redeemEnd": "1995-02-28T00:00:00Z", "redeemStart": "1990-02-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bQlg4Obm", "PV3o73YO", "ui0Pz63M"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'ZoYjQYRq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ffB7ffye' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JEVJahah", "items": [{"extraSubscriptionDays": 24, "itemId": "LHKV99PS", "itemName": "7fAjXPgf", "quantity": 7}, {"extraSubscriptionDays": 47, "itemId": "cjIOuOoI", "itemName": "aeKi6oFj", "quantity": 39}, {"extraSubscriptionDays": 42, "itemId": "Q4DtrAGd", "itemName": "Nx94Qudp", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 12, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 25, "maxSaleCount": 47, "name": "kkHmGqVt", "redeemEnd": "1977-02-27T00:00:00Z", "redeemStart": "1998-11-27T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["bh57na84", "DFp5x6qR", "38NqHzLT"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'NZG5yzmS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'WsYie4Ng' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'GSr0jc7p' \
    --body '{"categoryPath": "PoqOL7yY", "localizationDisplayNames": {"GRdSrf4R": "0xa2eRXI", "WkqfqGVB": "g5W3Vvkd", "c4kQUDb0": "F7pM7YVX"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'rXxqOPLH' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Ut4nO8bB' \
    --namespace $AB_NAMESPACE \
    --storeId 'oadPUx7F' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'l66gQ127' \
    --namespace $AB_NAMESPACE \
    --storeId 'zLnkF5JR' \
    --body '{"localizationDisplayNames": {"ll1Tq93k": "JmIwLQbg", "I1rCyhys": "ddYRVzER", "XbLBbSaw": "dsh5tD7I"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'xwDUdOfQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'kPioQ7cC' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'AYi1zlS9' \
    --namespace $AB_NAMESPACE \
    --storeId 'EjUjdrbi' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'jsZSK9S3' \
    --namespace $AB_NAMESPACE \
    --storeId 'O1oHpTvL' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'kQwHAyyP' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '99' \
    --code 'XyZrfQqB' \
    --limit '59' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'NNnX8Ggb' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 86}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'mOn1sS1Q' \
    --namespace $AB_NAMESPACE \
    --batchNo '83' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'w0hXgfZg' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'MOwikaU1' \
    --namespace $AB_NAMESPACE \
    --batchNo '73' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ZjLqBbt3' \
    --namespace $AB_NAMESPACE \
    --code 'DIroO0ID' \
    --limit '99' \
    --offset '90' \
    --userId 'bQpuPW2O' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'TqkISniK' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'Prq82Wmk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'gV9rvMJr' \
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
    --body '{"grpcServerAddress": "RXLe4nAS"}' \
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
    --body '{"currencyCode": "kYAgxo9z", "currencySymbol": "6XDDkByF", "currencyType": "VIRTUAL", "decimals": 99, "localizationDescriptions": {"5ILgk3FG": "XhErt5Bk", "qHSIKvBA": "RrfJVauZ", "ieDAn3wV": "wwcwJv7q"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'LCQYO0Au' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"h517k6z4": "sTdj1Bw5", "JQyC2s8A": "Wmmzi3Hj", "8kZtjHd7": "1JWL9lbW"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'ER9zaIje' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'uEk4n5Fv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Oyzp76xi' \
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
    --body '{"data": [{"id": "zj8Z3vYb", "rewards": [{"currency": {"currencyCode": "0O8lOU5u", "namespace": "xOCI4UN1"}, "item": {"itemId": "w1xKwA9o", "itemSku": "L6o8HCST", "itemType": "irlbaxi6"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "HrsnkP3E", "namespace": "2HmCTm8M"}, "item": {"itemId": "KQEuZmsJ", "itemSku": "4eEQxLz5", "itemType": "WQG3ag7h"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "kFIC4L1a", "namespace": "8rRu6j93"}, "item": {"itemId": "NmpBQrux", "itemSku": "O43CZBVE", "itemType": "xF5QWVOy"}, "quantity": 71, "type": "CURRENCY"}]}, {"id": "zI47vXCz", "rewards": [{"currency": {"currencyCode": "NGC1Wrk9", "namespace": "VZDU1yCw"}, "item": {"itemId": "sxvdHPCb", "itemSku": "jf07B02d", "itemType": "IilrGoJB"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "eJ0UQnES", "namespace": "ivL4IDRN"}, "item": {"itemId": "ueLqvbFR", "itemSku": "DSj0Mr0u", "itemType": "xJdegVsK"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "zsMdsbQe", "namespace": "F3Gl24DG"}, "item": {"itemId": "aP37kkWs", "itemSku": "J6DpijEV", "itemType": "ifPo9ijO"}, "quantity": 15, "type": "ITEM"}]}, {"id": "KnCLNKFg", "rewards": [{"currency": {"currencyCode": "QkBDAvh8", "namespace": "cVOn01zS"}, "item": {"itemId": "TAyu9CY3", "itemSku": "zf9YYLKq", "itemType": "Hx82ODtz"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "5ypVHm3l", "namespace": "Z8z8cyNS"}, "item": {"itemId": "aoiuqGYq", "itemSku": "fEQgJnpl", "itemType": "DoOGxvUJ"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "qhrJGqza", "namespace": "dnh8y2gV"}, "item": {"itemId": "epya3O37", "itemSku": "sVCWqF8q", "itemType": "FhLA2t8Y"}, "quantity": 54, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"0T4guaB1": "bh1IbAD7", "MnwUvS7u": "EHeFkZOP", "KKCMs9cS": "Jzbq11Ub"}}, {"platform": "STEAM", "platformDlcIdMap": {"mbRLRSKF": "jFjQsKcA", "jzJqlJTi": "jdWe8a25", "GBSzEVaU": "lg7XsDoi"}}, {"platform": "STEAM", "platformDlcIdMap": {"GleLoDuU": "H6IAW80H", "W4P8YxrJ": "5iq63KQF", "8ANHVRcY": "mCEY7ArV"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'NMmuADJa' \
    --itemId '["wa273pXh", "ohTjBIPa", "1AUqXmFX"]' \
    --limit '79' \
    --offset '89' \
    --userId 'R38LYGTl' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'HcwBHBtp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '16' \
    --status 'SUCCESS' \
    --userId 'pi6grAcR' \
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
    --body '{"bundleId": "lOPlHxSA", "password": "wwf8erj1"}' \
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
    --body '{"sandboxId": "rKShS7Fs"}' \
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
    --body '{"applicationName": "egu8gmGQ", "serviceAccountId": "VnE1nfx8"}' \
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
    --body '{"data": [{"itemIdentity": "bFNKWEaY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"zm85RNEc": "T8hhr9Km", "2NGzUMhn": "iG99oJxC", "cciudlPU": "aArY3pAl"}}, {"itemIdentity": "Cj04zqjL", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"AzQJcvg1": "C7cSDKJg", "p9Iu34OA": "TUYd8T6H", "Ke16eljl": "BdVSCshz"}}, {"itemIdentity": "pJwpgSDx", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"lLpgXSjs": "vfQtfNlg", "CKBWqCJr": "kUNsm32q", "jAIJY5vS": "LUOxcYgm"}}]}' \
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
    --body '{"environment": "zFfqq4DD"}' \
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
    --body '{"appId": "xjYIiJr8", "publisherAuthenticationKey": "DkGoYbvs"}' \
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
    --body '{"clientId": "6rmJwEc9", "clientSecret": "stMLjclp", "organizationId": "oJwyLVNF"}' \
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
    --body '{"relyingPartyCert": "LcXqD8LE"}' \
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
    --password 'jyn31252' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'Y4w5yofr' \
    --itemId 'dPPKXxcB' \
    --itemType 'CODE' \
    --endTime 'OgDjWgZ3' \
    --startTime 'zZwfmlJM' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'k56ox5rD' \
    --itemId 'URbWc1qp' \
    --itemType 'CODE' \
    --endTime '56vf0kdR' \
    --startTime 'Klu8yC0a' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'X2YJceDp' \
    --body '{"categoryPath": "cE8hNmmt", "targetItemId": "PUUA8j4C", "targetNamespace": "0UFR8LpR"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'zCEVIgnP' \
    --body '{"appId": "R1lL7QdL", "appType": "SOFTWARE", "baseAppId": "2eYTQ1Ts", "boothName": "jhXpMIKi", "categoryPath": "ROP6ls1U", "clazz": "lSJmeQUZ", "displayOrder": 1, "entitlementType": "DURABLE", "ext": {"4G1MyN7V": {}, "qM09RjBZ": {}, "BGm2B7Te": {}}, "features": ["CnMQ5UFp", "lKy0oKB5", "fxs6y7go"], "images": [{"as": "gc5PwN6E", "caption": "mVeWvxvL", "height": 7, "imageUrl": "80xlDJCM", "smallImageUrl": "HHupLqwz", "width": 42}, {"as": "NidLmqNO", "caption": "apMZlPkf", "height": 66, "imageUrl": "Xqx7sqC8", "smallImageUrl": "iplmMkiO", "width": 58}, {"as": "UoclQeqb", "caption": "sFwMtWv6", "height": 42, "imageUrl": "F4y7kUr4", "smallImageUrl": "3lIl9eLk", "width": 70}], "itemIds": ["zdXUE14p", "mJejqxpe", "QbGfFRtO"], "itemQty": {"Yb4yDXyf": 49, "k2iNyuP4": 26, "sYZtkAlC": 69}, "itemType": "SEASON", "listable": true, "localizations": {"I7CQ9h1Q": {"description": "ry3easY8", "localExt": {"GLlIg9FX": {}, "PfiLGdDW": {}, "eesEzM1J": {}}, "longDescription": "BDONJDx7", "title": "yjodFOLP"}, "V4mjDkQH": {"description": "EKdn07IW", "localExt": {"1PojVm3a": {}, "wLTSPkcZ": {}, "NoZKmjoQ": {}}, "longDescription": "8Yy9l4XT", "title": "ULYCsuhw"}, "wF8ged6B": {"description": "QdPOkvPF", "localExt": {"rCSKhU5U": {}, "AgP0GDnW": {}, "prShyaYH": {}}, "longDescription": "Gykc0HPU", "title": "euqyVnNt"}}, "lootBoxConfig": {"rewardCount": 65, "rewards": [{"lootBoxItems": [{"count": 33, "itemId": "sQlUKWVv", "itemSku": "vF2zL9DX", "itemType": "F2KeV9HB"}, {"count": 40, "itemId": "tWuSt7N6", "itemSku": "dgDisIt8", "itemType": "zlgrusZA"}, {"count": 5, "itemId": "d9f2bd9T", "itemSku": "unJpcEU1", "itemType": "u6Xwlgi5"}], "name": "vC5MCArb", "odds": 0.7344995394853103, "type": "REWARD_GROUP", "weight": 99}, {"lootBoxItems": [{"count": 77, "itemId": "yP9ZO2Xt", "itemSku": "3xPweLFP", "itemType": "7gq3f93f"}, {"count": 62, "itemId": "tXQRuTR0", "itemSku": "Gexlrego", "itemType": "OYkw9UHP"}, {"count": 20, "itemId": "0pUyQZHj", "itemSku": "C51LHF5T", "itemType": "AHbwJkji"}], "name": "HU12Fa5C", "odds": 0.8166396162645808, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 49, "itemId": "UrnSBjBy", "itemSku": "k23GoRId", "itemType": "Qylz2Ylx"}, {"count": 27, "itemId": "gbQdllR8", "itemSku": "1wYBuArT", "itemType": "Kq0hSm9r"}, {"count": 99, "itemId": "zbrBg7Zd", "itemSku": "uefgMUPP", "itemType": "Rtp4zoJm"}], "name": "FW8XkrEy", "odds": 0.23782120304593302, "type": "REWARD", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 16, "maxCountPerUser": 9, "name": "mcdOSmXN", "optionBoxConfig": {"boxItems": [{"count": 91, "itemId": "JhAsj5SN", "itemSku": "yvDWyyad", "itemType": "ilXnlJ0y"}, {"count": 56, "itemId": "FTQc4YOA", "itemSku": "9UHNDUQH", "itemType": "6jkmvHen"}, {"count": 14, "itemId": "Ku7lWOWk", "itemSku": "nH7oP6IG", "itemType": "gwLelckl"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 59, "graceDays": 0}, "regionData": {"HU9rsXjy": [{"currencyCode": "QaemXRUv", "currencyNamespace": "oFe0jZIr", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1990-09-07T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1996-05-25T00:00:00Z", "discountedPrice": 30, "expireAt": "1992-12-10T00:00:00Z", "price": 7, "purchaseAt": "1994-08-22T00:00:00Z", "trialPrice": 40}, {"currencyCode": "oRaffNZk", "currencyNamespace": "J51nlCkP", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1987-12-16T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1972-02-11T00:00:00Z", "discountedPrice": 80, "expireAt": "1998-08-03T00:00:00Z", "price": 40, "purchaseAt": "1984-02-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "9AxhPIw5", "currencyNamespace": "p1EgP8m9", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1975-05-15T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1975-10-21T00:00:00Z", "discountedPrice": 46, "expireAt": "1972-08-25T00:00:00Z", "price": 19, "purchaseAt": "1988-09-03T00:00:00Z", "trialPrice": 21}], "oAU318kj": [{"currencyCode": "beq9BwMd", "currencyNamespace": "B1l2ZNPj", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1990-04-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1984-02-19T00:00:00Z", "discountedPrice": 65, "expireAt": "1979-07-15T00:00:00Z", "price": 87, "purchaseAt": "1978-08-24T00:00:00Z", "trialPrice": 70}, {"currencyCode": "nb2OkF4A", "currencyNamespace": "rojs9DEl", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1996-07-18T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1983-01-07T00:00:00Z", "discountedPrice": 83, "expireAt": "1980-07-05T00:00:00Z", "price": 44, "purchaseAt": "1979-01-17T00:00:00Z", "trialPrice": 47}, {"currencyCode": "EJSV2h0n", "currencyNamespace": "qLOiftnh", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1982-12-12T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1972-10-13T00:00:00Z", "discountedPrice": 23, "expireAt": "1984-06-23T00:00:00Z", "price": 32, "purchaseAt": "1976-06-29T00:00:00Z", "trialPrice": 91}], "2w72OEho": [{"currencyCode": "lWyFdcFS", "currencyNamespace": "9NyNZbpo", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1991-06-02T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1976-12-25T00:00:00Z", "discountedPrice": 1, "expireAt": "1980-02-27T00:00:00Z", "price": 43, "purchaseAt": "1994-03-09T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Kr6V7lL3", "currencyNamespace": "STSaFfw8", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1971-07-14T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1978-09-18T00:00:00Z", "discountedPrice": 90, "expireAt": "1994-03-14T00:00:00Z", "price": 65, "purchaseAt": "1983-09-20T00:00:00Z", "trialPrice": 40}, {"currencyCode": "FxOK8mHB", "currencyNamespace": "OwtkZXg6", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1985-05-04T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1985-10-16T00:00:00Z", "discountedPrice": 3, "expireAt": "1976-04-13T00:00:00Z", "price": 23, "purchaseAt": "1972-11-01T00:00:00Z", "trialPrice": 47}]}, "seasonType": "PASS", "sku": "uz4jwHtR", "stackable": true, "status": "INACTIVE", "tags": ["hv6yqC8F", "8hXlw1rR", "uJSwJH1V"], "targetCurrencyCode": "PUjixT2g", "targetNamespace": "NuNMLmMv", "thumbnailUrl": "vBCWa73q", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'GhVuRJj2' \
    --appId 'FPba4eua' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'LJi89KaO' \
    --baseAppId 'vtNQd5oK' \
    --categoryPath '2J9NuuqU' \
    --features 'p6itfQte' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --limit '79' \
    --offset '76' \
    --region '60A0rxOm' \
    --sortBy '["createdAt:desc", "displayOrder:desc", "updatedAt:desc"]' \
    --storeId '0HbFZpPw' \
    --tags 'gE469Pfd' \
    --targetNamespace 'MF8Rj34r' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["T4EmGPj1", "88EB03ZC", "02DexKMd"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'jcRKWbEy' \
    --sku 'qmXJfGO1' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '8b8asICs' \
    --populateBundle 'true' \
    --region '2mj32evC' \
    --storeId 'v40wKByZ' \
    --sku '2pYtRLhH' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'hD7sfRyw' \
    --sku 'DFI4abhB' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["OpyIFFH1", "HfjNI372", "rpkZGeg4"]' \
    --storeId '4CbMD5CQ' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'CfUx94UF' \
    --region '5WEH9qiz' \
    --storeId 'JnjLRfyC' \
    --itemIds 'egWaFid3' \
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
    --userId 'RPjRQVyP' \
    --body '{"itemIds": ["oDuzNh2A", "s4Wepjmo", "XuUEn5B7"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'OPTIONBOX' \
    --limit '8' \
    --offset '76' \
    --sortBy 'h5irtbb2' \
    --storeId 'DclhbpVq' \
    --keyword 'vxEj5pVy' \
    --language 'RctnbU6q' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '39' \
    --offset '13' \
    --sortBy '["displayOrder", "displayOrder:desc", "name:asc"]' \
    --storeId 'YIpfoNIW' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'aMlK7RBc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'j47awyvc' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Bva3m1S4' \
    --namespace $AB_NAMESPACE \
    --storeId 'SvPWoyFq' \
    --body '{"appId": "6V9y1iTQ", "appType": "DLC", "baseAppId": "DHvokrip", "boothName": "XGxEPP8X", "categoryPath": "ODiSUaRl", "clazz": "EovRnhz9", "displayOrder": 46, "entitlementType": "CONSUMABLE", "ext": {"Z7tpERen": {}, "eltF99cm": {}, "ASFUDY0I": {}}, "features": ["VQ3UNChq", "2PvOA2Zp", "kMKuJ73n"], "images": [{"as": "lTY1JaKD", "caption": "kNdX1G3L", "height": 19, "imageUrl": "Sk6yBm43", "smallImageUrl": "ziPAnWdu", "width": 65}, {"as": "ifDOXy1B", "caption": "C2KU5N41", "height": 58, "imageUrl": "7szCmzl7", "smallImageUrl": "XqXgfOE6", "width": 78}, {"as": "dz0w2tgD", "caption": "cLHrv8mS", "height": 88, "imageUrl": "EGwpFsRj", "smallImageUrl": "V8yOsMBX", "width": 9}], "itemIds": ["2HoTTxFD", "4v0dDIHo", "PCgEpxJO"], "itemQty": {"39NjvwtU": 65, "KTZ44vgD": 7, "evWBgND5": 37}, "itemType": "LOOTBOX", "listable": false, "localizations": {"EpfVV7vg": {"description": "DZCZJ4wf", "localExt": {"JZOjNvHT": {}, "zbTqoiyb": {}, "0QO57hTA": {}}, "longDescription": "m5rjsdvi", "title": "GMpEzZOD"}, "gmJVU2D0": {"description": "RzIO2Sa2", "localExt": {"DEEJI5Yu": {}, "wPNU7iHj": {}, "fs4mvWxv": {}}, "longDescription": "zR4H268i", "title": "2lQPJzFq"}, "s33UyauT": {"description": "yFBb2Uqd", "localExt": {"6fYA8yEO": {}, "WQxjnysd": {}, "mGFGNbpw": {}}, "longDescription": "oLOwupbd", "title": "l72egncm"}}, "lootBoxConfig": {"rewardCount": 37, "rewards": [{"lootBoxItems": [{"count": 23, "itemId": "3FM6UOay", "itemSku": "oGWffq0U", "itemType": "XXYnYjx9"}, {"count": 48, "itemId": "b1HjVYYf", "itemSku": "vfRwP5cX", "itemType": "u2CUhWqr"}, {"count": 67, "itemId": "DclEXhlj", "itemSku": "2oGRmvYC", "itemType": "pH8LUz97"}], "name": "jfreLmih", "odds": 0.8014287935244542, "type": "REWARD_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 12, "itemId": "hlrmwHU2", "itemSku": "KDWwbgZ1", "itemType": "bv5FNLqJ"}, {"count": 96, "itemId": "G17x69iG", "itemSku": "2LoOjUKf", "itemType": "CO1Lg2ZZ"}, {"count": 30, "itemId": "wjv1ltkO", "itemSku": "yylVdMg0", "itemType": "HwITBsQP"}], "name": "jQ4uWp5K", "odds": 0.6085854648552106, "type": "REWARD", "weight": 9}, {"lootBoxItems": [{"count": 56, "itemId": "XH1bQeOb", "itemSku": "iPdUkcfG", "itemType": "ElHTqEbw"}, {"count": 76, "itemId": "Qwa0eYzs", "itemSku": "Mj5HeOIE", "itemType": "TScsi4yv"}, {"count": 44, "itemId": "MoXl7KhX", "itemSku": "1GeLcN64", "itemType": "CHA5zmSc"}], "name": "5sPPoYRv", "odds": 0.107029566671762, "type": "REWARD", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 87, "maxCountPerUser": 34, "name": "f76o6RD9", "optionBoxConfig": {"boxItems": [{"count": 89, "itemId": "Xq6bHyfz", "itemSku": "yegw07oF", "itemType": "p9h8KMDt"}, {"count": 42, "itemId": "jddrcxZ6", "itemSku": "huVgO0xW", "itemType": "nWuAfWIz"}, {"count": 83, "itemId": "L2IDbnMD", "itemSku": "Z1hRgC9g", "itemType": "Yqm7nRJD"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 15, "fixedTrialCycles": 56, "graceDays": 64}, "regionData": {"Se47mJNp": [{"currencyCode": "lJTP8gSo", "currencyNamespace": "F4mzzp4o", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1972-02-29T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1990-08-06T00:00:00Z", "discountedPrice": 56, "expireAt": "1996-01-06T00:00:00Z", "price": 45, "purchaseAt": "1980-01-17T00:00:00Z", "trialPrice": 40}, {"currencyCode": "JRQtyk0I", "currencyNamespace": "rbdvIXEy", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1977-02-18T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1994-07-10T00:00:00Z", "discountedPrice": 83, "expireAt": "1976-10-12T00:00:00Z", "price": 38, "purchaseAt": "1990-01-29T00:00:00Z", "trialPrice": 88}, {"currencyCode": "t1oJN5gM", "currencyNamespace": "GchTP8pi", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1989-03-22T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1975-03-01T00:00:00Z", "discountedPrice": 24, "expireAt": "1981-08-20T00:00:00Z", "price": 88, "purchaseAt": "1972-12-24T00:00:00Z", "trialPrice": 25}], "LgNCTtm2": [{"currencyCode": "VJ0h58SC", "currencyNamespace": "hkBGu2he", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1986-10-15T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1972-04-24T00:00:00Z", "discountedPrice": 97, "expireAt": "1983-01-30T00:00:00Z", "price": 14, "purchaseAt": "1980-06-13T00:00:00Z", "trialPrice": 67}, {"currencyCode": "DC04X2FP", "currencyNamespace": "LnYvbSTH", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1980-08-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1985-05-05T00:00:00Z", "discountedPrice": 9, "expireAt": "1983-04-08T00:00:00Z", "price": 62, "purchaseAt": "1998-10-29T00:00:00Z", "trialPrice": 18}, {"currencyCode": "6tBEn8b7", "currencyNamespace": "ULl5YwCX", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1990-05-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1997-07-29T00:00:00Z", "discountedPrice": 27, "expireAt": "1998-01-30T00:00:00Z", "price": 6, "purchaseAt": "1986-11-12T00:00:00Z", "trialPrice": 8}], "vAHsOUm3": [{"currencyCode": "oh3YHM8l", "currencyNamespace": "v9eTnFvC", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1989-04-21T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1991-02-17T00:00:00Z", "discountedPrice": 46, "expireAt": "1978-04-04T00:00:00Z", "price": 28, "purchaseAt": "1987-04-14T00:00:00Z", "trialPrice": 27}, {"currencyCode": "BnrtAexZ", "currencyNamespace": "qxEib8hc", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1992-08-08T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1998-04-20T00:00:00Z", "discountedPrice": 15, "expireAt": "1987-09-06T00:00:00Z", "price": 88, "purchaseAt": "1988-09-28T00:00:00Z", "trialPrice": 30}, {"currencyCode": "E6JGiBEW", "currencyNamespace": "Qoq4ll91", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1981-04-29T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1992-10-16T00:00:00Z", "discountedPrice": 5, "expireAt": "1999-01-28T00:00:00Z", "price": 5, "purchaseAt": "1990-06-13T00:00:00Z", "trialPrice": 90}]}, "seasonType": "PASS", "sku": "M0eZiDZf", "stackable": true, "status": "ACTIVE", "tags": ["5YBj9Rzm", "BiNPryVi", "lZnoNZXG"], "targetCurrencyCode": "voFDNgad", "targetNamespace": "Oz4h78zh", "thumbnailUrl": "f37PTeo7", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '2hGCRvCZ' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'y0guE86i' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'VuvnNFuW' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 12, "orderNo": "Lr8hoTFH"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'kig8J6SA' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'eGD3XyJj' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 't3TLL5LN' \
    --namespace $AB_NAMESPACE \
    --storeId 'w7F4EVmy' \
    --body '{"carousel": [{"alt": "nBaEaijx", "previewUrl": "FytN5JLB", "thumbnailUrl": "VIVQM7qJ", "type": "image", "url": "OFElHkXb", "videoSource": "youtube"}, {"alt": "2PAKMjrM", "previewUrl": "zZBseUc4", "thumbnailUrl": "NKUUT4dY", "type": "video", "url": "5c4LLOIK", "videoSource": "vimeo"}, {"alt": "vXZ8yhrZ", "previewUrl": "HPFsXGIi", "thumbnailUrl": "iqFZFpvD", "type": "video", "url": "BJrEqI5d", "videoSource": "generic"}], "developer": "y4Ml8OyY", "forumUrl": "udwbMGXu", "genres": ["Indie", "Casual", "Action"], "localizations": {"d3gHfoZc": {"announcement": "u8FT2ID3", "slogan": "O1B1nhrK"}, "n2RMTkXq": {"announcement": "H4ZUjSI8", "slogan": "iQesJozJ"}, "4HCvOek6": {"announcement": "FI46D6KO", "slogan": "CMMpkoaB"}}, "platformRequirements": {"6KF3ZIsx": [{"additionals": "86ciqn5m", "directXVersion": "4ndk8LYA", "diskSpace": "oNfDNpPN", "graphics": "FN4408dh", "label": "IdOf8MhN", "osVersion": "IqZh33O5", "processor": "7moszXv4", "ram": "VKyIMZFC", "soundCard": "tcRA6SWX"}, {"additionals": "5qeXMNa7", "directXVersion": "zK4LZy6x", "diskSpace": "EsAzCRbX", "graphics": "4HEVaSFF", "label": "14uTzlfa", "osVersion": "ofWzP8vE", "processor": "jmD9PJH6", "ram": "0H2qZawY", "soundCard": "WDmxXHWj"}, {"additionals": "mWuKmmqU", "directXVersion": "avz4XcSr", "diskSpace": "0VZPD1Ja", "graphics": "voVjPAm4", "label": "gcgBGwT5", "osVersion": "6pZC9LOF", "processor": "EkoDNTF8", "ram": "bWdFo3y7", "soundCard": "7Elbnuel"}], "9buANrnp": [{"additionals": "QMB9gTXU", "directXVersion": "Cccz70qo", "diskSpace": "L5MXwpND", "graphics": "gU40oo5f", "label": "OyIINoaf", "osVersion": "esR2wtDv", "processor": "nNqYMady", "ram": "jRd0SkGC", "soundCard": "ffI82m7V"}, {"additionals": "OAso8mBP", "directXVersion": "qMstyM00", "diskSpace": "Q6pEzRlm", "graphics": "z6loLWYp", "label": "NgInW1sp", "osVersion": "gdk8Vkdc", "processor": "rehDgcPs", "ram": "fjfWzCLX", "soundCard": "oDTefHS0"}, {"additionals": "AIJ09VkU", "directXVersion": "aXulXD4g", "diskSpace": "v4cq7KnW", "graphics": "8IvivxyB", "label": "D5UvxPhs", "osVersion": "EJDiTJgV", "processor": "gWa9ARqd", "ram": "8RjNJBxi", "soundCard": "p32hXgIy"}], "DHtERyW3": [{"additionals": "LJ92V4wV", "directXVersion": "aD8z8nrR", "diskSpace": "6sPMsLCC", "graphics": "rMzDwDMk", "label": "lHEGFtIf", "osVersion": "lBpUZnqm", "processor": "mkjQjjol", "ram": "8j3w0B0m", "soundCard": "p8233cQi"}, {"additionals": "SwHLJGKV", "directXVersion": "eBEEKGYK", "diskSpace": "LgdTMNUo", "graphics": "velzPtYU", "label": "RIL1orMB", "osVersion": "z2xYi5es", "processor": "38BvwPi9", "ram": "TUPHO3zk", "soundCard": "rct1OYc5"}, {"additionals": "k3fpMcIL", "directXVersion": "pTvuhmsV", "diskSpace": "uytSAvmp", "graphics": "ZiPp6WtY", "label": "eBtJtl44", "osVersion": "XdZGNkqy", "processor": "mPTTrhLQ", "ram": "H2xshR5p", "soundCard": "uzFfFN9J"}]}, "platforms": ["Android", "Windows", "IOS"], "players": ["LocalCoop", "CrossPlatformMulti", "Coop"], "primaryGenre": "Adventure", "publisher": "xkMkdFgG", "releaseDate": "1995-07-15T00:00:00Z", "websiteUrl": "p8CNCvvh"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'BnMm5of6' \
    --namespace $AB_NAMESPACE \
    --storeId 'ndFctsge' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'wyxgQC5k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'VaYVwP9Z' \
    --namespace $AB_NAMESPACE \
    --storeId 'ggtiNxQt' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'rwTvkrCr' \
    --itemId 'xmv4Rqyt' \
    --namespace $AB_NAMESPACE \
    --storeId '2rYFf3AU' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '7mKCrJ0K' \
    --itemId 'zUBmMENM' \
    --namespace $AB_NAMESPACE \
    --storeId '6H0uEzAP' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '00QLExHM' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'U8CNcoyy' \
    --populateBundle 'false' \
    --region '1iD8co3o' \
    --storeId 'egarfzw7' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '55J692AQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'sBsQrSQ1' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isGreaterThan", "name": "1CmjnBzG", "predicateType": "SeasonTierPredicate", "value": "OIusuQrS", "values": ["XOnRgQ4G", "2Zq01n74", "pb0DtwfV"]}, {"anyOf": 24, "comparison": "excludes", "name": "NI4eaG4B", "predicateType": "SeasonTierPredicate", "value": "BPiDAd0g", "values": ["Pkgw25ai", "tM9YtA2i", "7E1ywNmi"]}, {"anyOf": 43, "comparison": "is", "name": "yg3rWNKr", "predicateType": "SeasonPassPredicate", "value": "6VdhtWCV", "values": ["tElVvS99", "W82itEFP", "GrAlJOPs"]}]}, {"operator": "and", "predicates": [{"anyOf": 33, "comparison": "is", "name": "3VXAorYH", "predicateType": "SeasonPassPredicate", "value": "nsinfUcg", "values": ["vL3BabhF", "lTNLC0Ez", "FbPkwIKa"]}, {"anyOf": 81, "comparison": "excludes", "name": "R6enTTy5", "predicateType": "SeasonPassPredicate", "value": "IMLXFave", "values": ["ltqaiWD3", "0uX1Uua9", "pmypU9Rt"]}, {"anyOf": 61, "comparison": "isGreaterThanOrEqual", "name": "oXMULjfB", "predicateType": "SeasonTierPredicate", "value": "NgYSncAg", "values": ["BNV9gQah", "GRniObB8", "9LMNvOir"]}]}, {"operator": "and", "predicates": [{"anyOf": 8, "comparison": "isLessThan", "name": "DUEQmWKt", "predicateType": "EntitlementPredicate", "value": "8L3VwXp4", "values": ["8tb4HFFc", "oc1OK2ki", "AgGnOx55"]}, {"anyOf": 5, "comparison": "isGreaterThan", "name": "WQVQ4GEg", "predicateType": "SeasonTierPredicate", "value": "SbbK0Urk", "values": ["DESkuuuM", "V0lAaCah", "caEi8JOp"]}, {"anyOf": 32, "comparison": "isGreaterThan", "name": "pafjk7u8", "predicateType": "EntitlementPredicate", "value": "lybcQn45", "values": ["XGYdVzt0", "QG36FdsI", "Dfh3rKmM"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'vShgWqSQ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "B5vbgLza"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --name 'pK2qiNmI' \
    --offset '60' \
    --tag 'yUQPPZmp' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8C6FpVp9", "name": "omC6pSSC", "status": "INACTIVE", "tags": ["y4fgayLv", "Dk1bUFNj", "Ycvh4Pfi"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'MT2iSuLp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'tFfjnO6b' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QKc7frHT", "name": "EF8x68Xl", "status": "INACTIVE", "tags": ["xXWaSeZ9", "nYDuCtMB", "MOI8fRIe"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'cFVSHwQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZTAxfx2L' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '29' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'PaRoorq7' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '0MpfNCTI' \
    --limit '43' \
    --offset '52' \
    --orderNos '["mrlmsiky", "NvoCEbvy", "VFt3EIpQ"]' \
    --sortBy 'jacUDSTg' \
    --startTime 'aYzu5Buk' \
    --status 'FULFILLED' \
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
    --orderNo 'zgZTXOcm' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UdR9em2R' \
    --body '{"description": "k5mndLlO"}' \
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
    --body '{"dryRun": true, "notifyUrl": "G9cz2kvm", "privateKey": "4y3lsFzV"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'HkB1hQhU' \
    --externalId 'Hbrp6pgK' \
    --limit '23' \
    --notificationSource 'WALLET' \
    --notificationType 'lsw8Y4qa' \
    --offset '98' \
    --paymentOrderNo '7kUHl9fY' \
    --startDate 'PM6FpXbN' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'uVjLOx9B' \
    --limit '86' \
    --offset '5' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "nVW4Ghtx", "currencyNamespace": "lJtZ9Lz9", "customParameters": {"f0bCHHQ7": {}, "Dvu2A5bc": {}, "4fxmXCdT": {}}, "description": "c2cNP4qm", "extOrderNo": "PuLicPAb", "extUserId": "G9LKvfuQ", "itemType": "OPTIONBOX", "language": "UP", "metadata": {"DA680LE8": "U5CN2RM4", "PDdxHoRT": "XZlkbm4d", "S52AJ5Sc": "TL3rNPZR"}, "notifyUrl": "R7AmR6ro", "omitNotification": false, "platform": "hPLu5lnc", "price": 74, "recurringPaymentOrderNo": "g9zfS4hs", "region": "1XVBBasA", "returnUrl": "JBjgfipr", "sandbox": true, "sku": "0UAPmyYT", "subscriptionId": "O25RNiGY", "targetNamespace": "LJy10bAK", "targetUserId": "4Xp2dnt7", "title": "2TktUHNj"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ISMJBGKW' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '00r6V3B7' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BHAjYo56' \
    --body '{"extTxId": "JkrHmZh6", "paymentMethod": "QY42zWLi", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Hs7O7QZm' \
    --body '{"description": "7ihf6vq8"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O83K8GfS' \
    --body '{"amount": 29, "currencyCode": "O5QqFdNS", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 10, "vat": 1}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BNVtKr4B' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Playstation", "Xbox"]}' \
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
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'cbZKdU3V' \
    --limit '53' \
    --offset '40' \
    --source 'OTHER' \
    --startTime 'Fo8B26Vz' \
    --status 'SUCCESS' \
    --transactionId 'eh1N0YlM' \
    --userId '0IFKJIvu' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ECCpEVrQ", "eventTopic": "HlRGsfMG", "maxAwarded": 86, "maxAwardedPerUser": 23, "namespaceExpression": "G2Uyzm33", "rewardCode": "Scsbuf1P", "rewardConditions": [{"condition": "52rwGRTh", "conditionName": "e01rAkYT", "eventName": "9DmK5o9W", "rewardItems": [{"duration": 64, "itemId": "eU2WUMAa", "quantity": 54}, {"duration": 26, "itemId": "kNLoUJUy", "quantity": 34}, {"duration": 45, "itemId": "GEdnGYwE", "quantity": 94}]}, {"condition": "NFKPLZCX", "conditionName": "j5ow0FCv", "eventName": "FhkoqaVE", "rewardItems": [{"duration": 61, "itemId": "GSdc5qec", "quantity": 33}, {"duration": 58, "itemId": "krl9fvIb", "quantity": 20}, {"duration": 39, "itemId": "lwgcyPiF", "quantity": 23}]}, {"condition": "Y9kPGNWQ", "conditionName": "UDmkPSSF", "eventName": "6t4xKbsH", "rewardItems": [{"duration": 38, "itemId": "zTLUNAzg", "quantity": 41}, {"duration": 22, "itemId": "jPRYlwYg", "quantity": 93}, {"duration": 78, "itemId": "Ihabp0ba", "quantity": 59}]}], "userIdExpression": "kiuIAZGk"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'U0al3Qss' \
    --limit '66' \
    --offset '94' \
    --sortBy '["namespace", "namespace:desc"]' \
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
    --rewardId 'StiVycR1' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZyMoO2ji' \
    --body '{"description": "0H9yWQ5u", "eventTopic": "yIt7zEtI", "maxAwarded": 62, "maxAwardedPerUser": 73, "namespaceExpression": "ewB7ctAH", "rewardCode": "Ib2MQyvj", "rewardConditions": [{"condition": "BQ0lci6X", "conditionName": "iQ1g57dF", "eventName": "zeGvPHxK", "rewardItems": [{"duration": 56, "itemId": "asRVRo3E", "quantity": 89}, {"duration": 58, "itemId": "DBpzc8ht", "quantity": 58}, {"duration": 66, "itemId": "SJItaJ48", "quantity": 64}]}, {"condition": "ghLyiPDR", "conditionName": "NDIY9YT5", "eventName": "jZ9ZClOt", "rewardItems": [{"duration": 10, "itemId": "DwU4HErh", "quantity": 57}, {"duration": 89, "itemId": "yhjBs7MO", "quantity": 94}, {"duration": 29, "itemId": "HgHgGg6H", "quantity": 87}]}, {"condition": "YoxFKVZn", "conditionName": "5Ym08FWk", "eventName": "dDDcq2eW", "rewardItems": [{"duration": 97, "itemId": "JhyezI6q", "quantity": 96}, {"duration": 29, "itemId": "6hm0sd2X", "quantity": 27}, {"duration": 65, "itemId": "CG1ZObgy", "quantity": 75}]}], "userIdExpression": "2zgqyCeo"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '7DR4RMg9' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'M3XGbH0T' \
    --body '{"payload": {"OcSMayFa": {}, "ykdz0gvw": {}, "BwbIBvO7": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'Q0pfD1cH' \
    --body '{"conditionName": "7DIzhgxA", "userId": "0NG4RnHU"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'qgzyCJod' \
    --limit '29' \
    --offset '87' \
    --start 'NV80Ny6x' \
    --storeId 'l5jUjt4K' \
    --viewId 'bAlvETpL' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'g8juysXs' \
    --body '{"active": false, "displayOrder": 88, "endDate": "1973-08-08T00:00:00Z", "ext": {"2xgtHteg": {}, "MYJLMI8k": {}, "mvnXPK82": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 50, "itemCount": 88, "rule": "SEQUENCE"}, "items": [{"id": "EOLFW0xU", "sku": "P1uzRfgV"}, {"id": "ofJSTHOe", "sku": "DkvGMrbN"}, {"id": "QBFzV0qi", "sku": "daVPXvBW"}], "localizations": {"QgLJ7OT2": {"description": "69Km6APv", "localExt": {"nX8c8LOz": {}, "TBjL3RAf": {}, "UKRUGpva": {}}, "longDescription": "9uJb8DlI", "title": "Stydnqgq"}, "tBuTSHDj": {"description": "G7LnlSly", "localExt": {"B9Ig84aC": {}, "p1N8vquO": {}, "S4ErfDQ3": {}}, "longDescription": "p3vrleCW", "title": "5mtKSgxy"}, "Ocp2az6H": {"description": "LSmk8SGL", "localExt": {"MRKxYIKH": {}, "9qar88WO": {}, "QUhlxoNy": {}}, "longDescription": "4wBkPlmj", "title": "ok5EF20e"}}, "name": "4QywDge5", "rotationType": "CUSTOM", "startDate": "1982-12-18T00:00:00Z", "viewId": "54iuku85"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'SIw1U68A' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '28Nk361e' \
    --storeId 'Gvz9AJbS' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'oWIkwgMR' \
    --storeId 'YM9F52U0' \
    --body '{"active": true, "displayOrder": 25, "endDate": "1987-07-06T00:00:00Z", "ext": {"2sArYaBq": {}, "nyaNtAcU": {}, "lY9EHrN1": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 27, "itemCount": 77, "rule": "SEQUENCE"}, "items": [{"id": "VZaMcaSy", "sku": "ZtTspoml"}, {"id": "PBXxDaGT", "sku": "l5HKWZ0F"}, {"id": "lpMOh2a8", "sku": "2ClPL1XX"}], "localizations": {"1iZlMUek": {"description": "HfKRTvII", "localExt": {"AadKVLvG": {}, "4kBSySfO": {}, "iruiZeU2": {}}, "longDescription": "Bxyw09uQ", "title": "YWQXf9gl"}, "zBcokiB0": {"description": "JaxHrnaf", "localExt": {"jHFVaQJr": {}, "LZS9egfV": {}, "hEWvlHzO": {}}, "longDescription": "AE06pzC3", "title": "YGBo4p7i"}, "4bkkTJX2": {"description": "Kw6Wu9mH", "localExt": {"d4FhbC5z": {}, "eAdKKWg7": {}, "JGoNVCMb": {}}, "longDescription": "8PRmdtO3", "title": "SmvLVErw"}}, "name": "Ie9T9iji", "rotationType": "CUSTOM", "startDate": "1974-11-29T00:00:00Z", "viewId": "iSXE4aYq"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ynSKn9K6' \
    --storeId '5F3A7boy' \
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
    --body '{"defaultLanguage": "ZXxkfJ6Q", "defaultRegion": "5DikJ5AW", "description": "XW4Vys5q", "supportedLanguages": ["Oqpjze6G", "iPqEO5J5", "HawOkb7v"], "supportedRegions": ["zRbjAPoO", "r9UO2pvh", "Y6BAxhER"], "title": "uS0U7zdL"}' \
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
    --storeId 'QyxNEvXG' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'uFwQSvqP' \
    --body '{"defaultLanguage": "dUDbF4V9", "defaultRegion": "Y8uzvwOg", "description": "8majFrUt", "supportedLanguages": ["zDwEYFck", "8vlM5mwR", "CcTbftj2"], "supportedRegions": ["Bm2pkuxY", "CZlA8ayH", "NjT2NR2G"], "title": "1GGS9W5C"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'QVFysDqO' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ydL8P4Va' \
    --action 'UPDATE' \
    --itemSku 'XjivIYGW' \
    --itemType 'INGAMEITEM' \
    --limit '35' \
    --offset '94' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'kJ7Y6QLM' \
    --updatedAtStart 'LYhAJvNm' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'UXCdlBae' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'ohpaHVXa' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ZAsKG6mt' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'KGE5rrDC' \
    --action 'UPDATE' \
    --itemSku 'NealEf4s' \
    --itemType 'SUBSCRIPTION' \
    --type 'VIEW' \
    --updatedAtEnd 'SsITJQqO' \
    --updatedAtStart 'wbjpLhNz' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3rDmuhVZ' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'NImAUIYd' \
    --namespace $AB_NAMESPACE \
    --storeId 'QUFInNmJ' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'bKlJT61U' \
    --namespace $AB_NAMESPACE \
    --storeId 'zVJVlwPT' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'pkbi2xq0' \
    --targetStoreId 'PImXGLqh' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'pwVhWIo8' \
    --limit '45' \
    --offset '8' \
    --sku 'nc2K0HkE' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId '7gLYDSUz' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DvZg0rBn' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '3jGfdwyn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'PC9R2fVs' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "M6bvFUEE"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'zSpdDyUa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'DdFaUUmO' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 66, "orderNo": "3Y6K8KHR"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Yz3paF7e' \
    --body '{"achievements": [{"id": "9TMpUl7J", "value": 7}, {"id": "flzWMrlt", "value": 99}, {"id": "LLm2ALnc", "value": 92}], "steamUserId": "qLdQDSBz"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DgMnUaVl' \
    --xboxUserId 'mFtHWkqR' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '8zMmB5dK' \
    --body '{"achievements": [{"id": "uPdAtz0O", "percentComplete": 78}, {"id": "0FKfxfOt", "percentComplete": 30}, {"id": "Dj1CQujg", "percentComplete": 18}], "serviceConfigId": "FzD9kS7m", "titleId": "gHuKMvwT", "xboxUserId": "qfcG9Vxj"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'U2E2IJIr' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ScDeKW3z' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'rxPb6MHa' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'q3qqmJFC' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HXuHqcZ5' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'HsBRCBxg' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '1GQOYqRN' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'MknSGBJN' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'oRTKPizE' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '5Cu0Kgci' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5cAJwK0V' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'IoCvd4kl' \
    --features '["E5yaZkEE", "xUjcbP2v", "nKJ2tFye"]' \
    --itemId '["DtDaW5XE", "ukKy6oN2", "Dwz88BJ1"]' \
    --limit '71' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HMFZDdH1' \
    --body '[{"endDate": "1991-05-23T00:00:00Z", "grantedCode": "AYWnoEDB", "itemId": "AX2mPSyL", "itemNamespace": "2qh42x5G", "language": "fR-IrTP", "quantity": 78, "region": "E8YXHOZQ", "source": "PROMOTION", "startDate": "1972-12-25T00:00:00Z", "storeId": "qrVJZRzE"}, {"endDate": "1995-05-11T00:00:00Z", "grantedCode": "5UwrSxH4", "itemId": "0heoMzGo", "itemNamespace": "O79q5IW5", "language": "vD-864", "quantity": 90, "region": "kBpWihhw", "source": "OTHER", "startDate": "1980-09-19T00:00:00Z", "storeId": "b4h25a8g"}, {"endDate": "1995-09-28T00:00:00Z", "grantedCode": "5eDmhprY", "itemId": "5FdrEG3d", "itemNamespace": "C9clwxIU", "language": "Nah_791", "quantity": 48, "region": "NtWRqcG8", "source": "PROMOTION", "startDate": "1983-05-18T00:00:00Z", "storeId": "kSt6YMaj"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2KWE8pHa' \
    --activeOnly 'true' \
    --appId 'mVLY5Fhv' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '8Frk4Cr8' \
    --activeOnly 'false' \
    --limit '44' \
    --offset '14' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 's1hSZqvJ' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'yiq2ejzv' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'WQSa4Iau' \
    --ids '["ctMIA07d", "1YbjW9xw", "vGviI9mG"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '5te1EHdi' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --sku '5mvjOWR0' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BwzXiTlX' \
    --appIds '["ADeWDS6D", "TmYmIAQV", "mq37hPqy"]' \
    --itemIds '["9kC0Tsmv", "YS1Rb5vb", "hNTTzoRi"]' \
    --skus '["Z6Q5G5ju", "JwZwgJdn", "y3lBdfyv"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'WvV8fjoP' \
    --itemIds '["5S1K2msU", "g75RIQFU", "7ziIXJDc"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1BVsJrZH' \
    --appId 'lsjt7fsP' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VqMdXDrw' \
    --entitlementClazz 'APP' \
    --itemId 'KeafYv4J' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '2MGdY4hF' \
    --ids '["rFneP1tU", "DYnrFXle", "LUNY1zr7"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'qHZRzuZ8' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '24ecqCIT' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'iveQBme3' \
    --entitlementIds 'tkbE7coZ' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'g4wwLh7j' \
    --namespace $AB_NAMESPACE \
    --userId 'a7ZhvAKc' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'PUBmQZIW' \
    --namespace $AB_NAMESPACE \
    --userId '8Zg40TIv' \
    --body '{"endDate": "1989-11-13T00:00:00Z", "nullFieldList": ["XFqx65js", "5ZwTiz6n", "mfwAYQe8"], "startDate": "1998-08-24T00:00:00Z", "status": "INACTIVE", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'YhjsAWaf' \
    --namespace $AB_NAMESPACE \
    --userId 'mmjeNOer' \
    --body '{"options": ["aVYC3WlG", "LwC1w5Ez", "LBTWBQK3"], "requestId": "Gq09LnbZ", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'a3lWjP6l' \
    --namespace $AB_NAMESPACE \
    --userId 'RCKhKCSh' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'GJy0hw64' \
    --namespace $AB_NAMESPACE \
    --userId 'fP6wvGiJ' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'NLbbTLhH' \
    --namespace $AB_NAMESPACE \
    --userId 'FV1lhJI7' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'cRz8Itgm' \
    --namespace $AB_NAMESPACE \
    --userId 'kqLeEVMl' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Bp3ospVC' \
    --body '{"duration": 77, "endDate": "1989-06-28T00:00:00Z", "itemId": "qZLeXtsK", "itemSku": "FQHaw02y", "language": "x9BRca1e", "order": {"currency": {"currencyCode": "NCyOn3Oe", "currencySymbol": "AI5r8anD", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "konphk1m"}, "ext": {"qcIeWcwW": {}, "fUIThL8H": {}, "lGj8dHCU": {}}, "free": true}, "orderNo": "6xwsi3Op", "origin": "Nintendo", "quantity": 36, "region": "G5kQTkA4", "source": "IAP", "startDate": "1982-05-19T00:00:00Z", "storeId": "NOmAem5l"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '0CRMeeFb' \
    --body '{"code": "gATB6g5t", "language": "qKGn-OhbB-zC", "region": "WnGV0BjE"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'gGauXFwc' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "4aMe3K4e", "namespace": "UKVGGm0u"}, "item": {"itemId": "VYaIR3SR", "itemSku": "ymC5zG7E", "itemType": "r3U0qGJt"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "bKXuieyA", "namespace": "UEy42uFP"}, "item": {"itemId": "aG4Mmdv8", "itemSku": "wd1gOmV6", "itemType": "zNvcdODx"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "9DVi5syr", "namespace": "syXJYFVj"}, "item": {"itemId": "fToNPx3O", "itemSku": "7mXZfVLz", "itemType": "fAXincgI"}, "quantity": 66, "type": "ITEM"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'LGFubG98' \
    --endTime 'GqvJEONP' \
    --limit '56' \
    --offset '4' \
    --productId '4RHwCJlr' \
    --startTime 'bZBn96Q6' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oIZyNh0J' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZT3fneBJ' \
    --endTime 'pc0VlknH' \
    --limit '48' \
    --offset '88' \
    --startTime 'F2ufuqQQ' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6ApnIJ4i' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "RFgm_ebCh_CE", "productId": "cYDlkFr1", "region": "O38rPMBW", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'RFRBeKES' \
    --itemId '4WkDGVP9' \
    --limit '41' \
    --offset '97' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'OLiXRpvy' \
    --body '{"currencyCode": "4ONgH8sU", "currencyNamespace": "yUS5UeZk", "discountedPrice": 3, "ext": {"W373IsZ7": {}, "owKH2PrG": {}, "DBy9IRtb": {}}, "itemId": "rwDb9OIh", "language": "X8Gcy2fw", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 79, "quantity": 99, "region": "Gt0cGvN7", "returnUrl": "9QasE1pv", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'sFLGrmKy' \
    --itemId 'eJHdpHwA' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '9h0HJOKf' \
    --userId '57oGjEIb' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Y4emexzP' \
    --userId 'MTT9kmCo' \
    --body '{"status": "CHARGED", "statusReason": "V5B0fViz"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1MKtZoXK' \
    --userId 'utFgW0fY' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'NmPX3Xqp' \
    --userId 'VSDxwzlL' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'TLFd6voh' \
    --userId 'PCl0m4aC' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '0NOomXRb' \
    --userId 'Ge2qOfPx' \
    --body '{"additionalData": {"cardSummary": "9en12zYR"}, "authorisedTime": "1974-01-08T00:00:00Z", "chargebackReversedTime": "1994-05-05T00:00:00Z", "chargebackTime": "1988-11-20T00:00:00Z", "chargedTime": "1973-07-22T00:00:00Z", "createdTime": "1985-10-12T00:00:00Z", "currency": {"currencyCode": "4vguB1bY", "currencySymbol": "4shGO7EK", "currencyType": "VIRTUAL", "decimals": 95, "namespace": "WcDlajQw"}, "customParameters": {"EV4JkM5q": {}, "1qlbwxb3": {}, "7WSQGOAC": {}}, "extOrderNo": "5u9YYJWV", "extTxId": "AIOXl3X2", "extUserId": "NWx0tcTG", "issuedAt": "1996-05-31T00:00:00Z", "metadata": {"ex9umy7I": "KNDaTVxO", "XeJz6khq": "k5T6iQqI", "y4I8tocf": "trnwP3Tf"}, "namespace": "47uxpMmD", "nonceStr": "gwWvw9WP", "paymentMethod": "frjU4GvS", "paymentMethodFee": 83, "paymentOrderNo": "7BQBG8Qo", "paymentProvider": "STRIPE", "paymentProviderFee": 87, "paymentStationUrl": "rRSrrYVo", "price": 57, "refundedTime": "1979-09-19T00:00:00Z", "salesTax": 57, "sandbox": true, "sku": "jX6k4J7M", "status": "REFUND_FAILED", "statusReason": "6XbgrnjH", "subscriptionId": "oX404tqs", "subtotalPrice": 48, "targetNamespace": "7rLmEg0g", "targetUserId": "i81t7q39", "tax": 51, "totalPrice": 38, "totalTax": 66, "txEndTime": "1973-03-14T00:00:00Z", "type": "LN2I7a5a", "userId": "dVYzQ5UZ", "vat": 76}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'v9jdhoI8' \
    --userId 'nf6j9SDd' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5SdZOLgp' \
    --body '{"currencyCode": "yuXWud3I", "currencyNamespace": "1Dt4xeFG", "customParameters": {"KrExylEH": {}, "vUTudbd1": {}, "oaAmnI6k": {}}, "description": "SLEI108s", "extOrderNo": "MzYX8jEs", "extUserId": "oHtJ4NV5", "itemType": "SEASON", "language": "vu_aNAa", "metadata": {"58BMfbXo": "WWv8UuPI", "7C80j6CH": "gWmZYhfh", "EFsfGypN": "TKtcG58O"}, "notifyUrl": "XAU7bOeu", "omitNotification": false, "platform": "jRjMBNyE", "price": 14, "recurringPaymentOrderNo": "zktSgVja", "region": "WvRRUJ2z", "returnUrl": "RZ8sbMF1", "sandbox": true, "sku": "nsBkUldO", "subscriptionId": "EKVVjwF4", "title": "Dwf3QSyB"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 't8O1TjCK' \
    --userId 'TuKex6jD' \
    --body '{"description": "aIX85COR"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'CXMQeZA5' \
    --body '{"code": "fO3zaX3i", "orderNo": "AEIYYoQk"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'h7wDCHIX' \
    --body '{"meta": {"lqlEjnNC": {}, "YhoZVzUt": {}, "4RKjNJ1F": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "YrPpdAwC", "namespace": "AGTtkQF2"}, "entitlement": {"clazz": "SUBSCRIPTION", "entitlementId": "XHWmNjDN", "type": "DURABLE"}, "item": {"itemIdentity": "x83QZ5o2", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "sSN9aEW7", "namespace": "Fhv1PdwJ"}, "entitlement": {"clazz": "ENTITLEMENT", "entitlementId": "79wdPiIK", "type": "DURABLE"}, "item": {"itemIdentity": "pgDUr4et", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 89, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "y1rwbFXy", "namespace": "7nzsGPaz"}, "entitlement": {"clazz": "APP", "entitlementId": "2Gg4E86d", "type": "DURABLE"}, "item": {"itemIdentity": "bdqNKG69", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 11, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "t6T8ZLAg"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MaVC1TGx' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'mmrOI5AY' \
    --limit '46' \
    --offset '92' \
    --sku 'U57Vjtfe' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Agz3z3Ap' \
    --excludeSystem 'true' \
    --limit '80' \
    --offset '78' \
    --subscriptionId 'Qf1PzoYe' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '62sVzSOb' \
    --body '{"grantDays": 58, "itemId": "hY0GJZjs", "language": "sYOzvBZI", "reason": "rZ8rQxTl", "region": "ugVaZpHt", "source": "V2ZRpY1D"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '69qIR3CB' \
    --itemId 'sI0kiF1i' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'biEv20Hn' \
    --userId 'G1JcVR8y' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZgULRBSv' \
    --userId 'NwtfVwZd' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9t17UPLg' \
    --userId 'cYi5Os5Y' \
    --force 'true' \
    --body '{"immediate": false, "reason": "6Fi9OBXO"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3u0uv8Wy' \
    --userId 'uJKHQKHd' \
    --body '{"grantDays": 55, "reason": "GKKGAt4h"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q5D1bAEK' \
    --userId 'ml9Lgvxz' \
    --excludeFree 'false' \
    --limit '25' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '627QmghP' \
    --userId '46PsRzAp' \
    --body '{"additionalData": {"cardSummary": "NaQUK1xR"}, "authorisedTime": "1973-05-11T00:00:00Z", "chargebackReversedTime": "1977-12-14T00:00:00Z", "chargebackTime": "1972-12-05T00:00:00Z", "chargedTime": "1982-08-21T00:00:00Z", "createdTime": "1980-09-13T00:00:00Z", "currency": {"currencyCode": "lwiQK9AD", "currencySymbol": "b7SqRANe", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "iIg7QAyd"}, "customParameters": {"Szc8MWqz": {}, "m5slpsau": {}, "0kZoCb4v": {}}, "extOrderNo": "1aDahvP8", "extTxId": "TmZycye0", "extUserId": "otAev1bv", "issuedAt": "1976-08-17T00:00:00Z", "metadata": {"5SlVKRu3": "44wVPdZJ", "4hanc4rt": "J3oH7QP6", "fErs60FZ": "5KEPdguL"}, "namespace": "pa75C8Yj", "nonceStr": "nAWxSqTw", "paymentMethod": "APVxOZZQ", "paymentMethodFee": 20, "paymentOrderNo": "oMKDxNiU", "paymentProvider": "WXPAY", "paymentProviderFee": 87, "paymentStationUrl": "gpD7QifM", "price": 85, "refundedTime": "1976-10-13T00:00:00Z", "salesTax": 29, "sandbox": true, "sku": "7QDzGg9T", "status": "REFUNDING", "statusReason": "leXhY7Sr", "subscriptionId": "mWqEpDqP", "subtotalPrice": 47, "targetNamespace": "5mj8LxPS", "targetUserId": "YbHHr72L", "tax": 40, "totalPrice": 94, "totalTax": 26, "txEndTime": "1988-03-06T00:00:00Z", "type": "0bRyjCXj", "userId": "e9eQo1Ta", "vat": 29}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'kiSFps99' \
    --namespace $AB_NAMESPACE \
    --userId 'zOfmD4oB' \
    --body '{"count": 21, "orderNo": "u1y3iXjE"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Lv0DxE0I' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'X2bCeX7I' \
    --namespace $AB_NAMESPACE \
    --userId 'uEf8qEL8' \
    --body '{"allowOverdraft": false, "amount": 59, "balanceOrigin": "Epic", "reason": "mcMy14eF"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Fp8beC9A' \
    --namespace $AB_NAMESPACE \
    --userId 'A6GwPXMA' \
    --limit '50' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'qOhQzujW' \
    --namespace $AB_NAMESPACE \
    --userId 'nAyLOSy4' \
    --body '{"amount": 16, "expireAt": "1984-11-07T00:00:00Z", "origin": "Twitch", "reason": "Hrln0bZf", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Qx1c6fDM' \
    --namespace $AB_NAMESPACE \
    --userId 'XOYIK429' \
    --body '{"amount": 7, "walletPlatform": "Xbox"}' \
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
    --storeId 'WbCqNqCk' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'vxzzfS3L' \
    --body '{"displayOrder": 76, "localizations": {"Q61GMQK2": {"description": "F81bovLY", "localExt": {"U6hSIjHK": {}, "MRxXdXtp": {}, "xUQoRjhJ": {}}, "longDescription": "gbORF6ex", "title": "8oe0on8H"}, "ux9PCQj2": {"description": "EGumJGcX", "localExt": {"e9jlVO1H": {}, "nbB25O79": {}, "XLmwyipO": {}}, "longDescription": "7wIwk8tw", "title": "5FkObVHW"}, "W8nOJWAw": {"description": "uvhzAfXx", "localExt": {"rEpY4jcu": {}, "LV9lu8kd": {}, "9x6jDfuo": {}}, "longDescription": "bay1exdh", "title": "js3SFG63"}}, "name": "yXqoJ7z9"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'MCnLz9Q0' \
    --storeId 'gJfNmSWm' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'dCVjxwYU' \
    --storeId 'ayFtH3Bg' \
    --body '{"displayOrder": 76, "localizations": {"xGVGEOUw": {"description": "GDLgE6gv", "localExt": {"Gcn3oEQq": {}, "CaXdzKdU": {}, "diY9WBjv": {}}, "longDescription": "WPuKcMN9", "title": "jAFba4Uo"}, "2SrnPIWT": {"description": "xPxN51Yl", "localExt": {"JjnGRJsj": {}, "I8EtYXLU": {}, "ASkVG6ea": {}}, "longDescription": "0Ju4Bc4h", "title": "LZ4BZcth"}, "ksZrsTWs": {"description": "RN7adUXx", "localExt": {"ZN6LJqab": {}, "b3I3RWsY": {}, "qqAk5e2h": {}}, "longDescription": "NWR1UNL9", "title": "C4DIKvfB"}}, "name": "KeEQgbGR"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'e6uz7Egv' \
    --storeId 'jJj3adJ7' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'efWspXDv' \
    --end 'lrhZbGre' \
    --start 'fqAXubvX' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["bDY0IyYr", "SYla4ApJ", "NfTAaJys"], "apiKey": "I92KAfrf", "authoriseAsCapture": true, "blockedPaymentMethods": ["1szRpPUN", "N2fzfE2d", "jm7eEBaC"], "clientKey": "hieI10uT", "dropInSettings": "jjI6ZPU8", "liveEndpointUrlPrefix": "VVq8Aa4T", "merchantAccount": "lShBx4Qx", "notificationHmacKey": "HYFxDtkF", "notificationPassword": "RxydsgyE", "notificationUsername": "I2q4VAe4", "returnUrl": "gYRr1yc8", "settings": "GmcpyEsf"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "YVzRUAYK", "privateKey": "0zEVNpJ0", "publicKey": "ywqQemk1", "returnUrl": "O3y5SFlf"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "Vzfp03kY", "secretKey": "fu9VcWzs"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'xgiKHqZW' \
    --region 'XLL0opfw' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "HbaQo38X", "clientSecret": "WbSKWC0G", "returnUrl": "6Tb8uFhV", "webHookId": "CDLpW058"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["8XQobXoD", "lCpLGrNB", "d0BqeJCl"], "publishableKey": "dCz2OEc7", "secretKey": "iQ6bfGwm", "webhookSecret": "GRowvdNv"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "az3Yhm7u", "key": "Lb6hAjMi", "mchid": "5jH4onRu", "returnUrl": "MxZcHgEY"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "fBmJADf7", "flowCompletionUrl": "nYCP9TSg", "merchantId": 13, "projectId": 45, "projectSecretKey": "YIGYqsOk"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'o9x9uacP' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'nnjzbH3u' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["7vmLVjjU", "sQ9BJJt9", "Nn4CFBMT"], "apiKey": "ypt81FRy", "authoriseAsCapture": false, "blockedPaymentMethods": ["ufH1d47e", "yFPkFxXb", "p2wqaZo3"], "clientKey": "gLZSMlpq", "dropInSettings": "u812yBKH", "liveEndpointUrlPrefix": "KPoXwTzi", "merchantAccount": "aQCMRzZi", "notificationHmacKey": "BLiPdgH2", "notificationPassword": "aCXhAYmZ", "notificationUsername": "7cpaKuS9", "returnUrl": "LH2cq28l", "settings": "WhU7oNCP"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'xtdbqI6Q' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'hMcjbWt7' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "VdHXIKPC", "privateKey": "IEIiWXst", "publicKey": "NcvtJXor", "returnUrl": "4oq7wBAI"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'P1hjXoUI' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '0UXMA0sU' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "911vlA1u", "secretKey": "7L8P7YNT"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'kWSsU7ok' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'kVSCIHiV' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "xsbFWtEv", "clientSecret": "C7kZBMsh", "returnUrl": "3pNgIRTr", "webHookId": "4pi4VLnd"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'aKtFU9sW' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'WZXEzFOb' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["Q9tDAA9l", "zesvO1Tc", "7oDvaP4p"], "publishableKey": "Rio0UeaX", "secretKey": "pzHGfy8o", "webhookSecret": "6E2M1VXd"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'D88gzWgo' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ay1yZKrn' \
    --validate 'false' \
    --body '{"appId": "S561LT7z", "key": "IoUiYjYT", "mchid": "dGeBihM6", "returnUrl": "y6LtvcPh"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'CKgpknUk' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '1wA5sCai' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'R4aj5xGe' \
    --validate 'true' \
    --body '{"apiKey": "oY1itbBA", "flowCompletionUrl": "1zRM1b8U", "merchantId": 86, "projectId": 96, "projectSecretKey": "ZHWQR1lP"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'P7NJBRXU' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'owFVcBbv' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '81' \
    --namespace 'DeTYhFwe' \
    --offset '74' \
    --region 'VixjtXIw' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "pW69TojC", "region": "LQkO1W1h", "sandboxTaxJarApiToken": "Xv7f1IEN", "specials": ["ALIPAY", "XSOLLA", "CHECKOUT"], "taxJarApiToken": "o7jeBk1H", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'sKAyFbtV' \
    --region 'Jgy3EBJG' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'FMM4Aa32' \
    --body '{"aggregate": "ADYEN", "namespace": "sNLbA30W", "region": "eFEw7pIi", "sandboxTaxJarApiToken": "QbWRTXVb", "specials": ["XSOLLA", "ALIPAY", "WALLET"], "taxJarApiToken": "QuUJBfSY", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'HXCH3mQN' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "hFp239PZ", "taxJarApiToken": "yCLIXyf6", "taxJarEnabled": false, "taxJarProductCodesMapping": {"1xY8Cht8": "DAeWinhK", "TPNVtewW": "zcgIlt6g", "QvfGghqK": "ou2paZ5X"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'zCatGDSn' \
    --end 'ZlRbRt4m' \
    --start 'R8vKfUgR' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'HFSiGWtO' \
    --storeId 'U7EHWuFi' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'c5S6ln8q' \
    --storeId 'o3S7GdHm' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '2Jj87Tda' \
    --namespace $AB_NAMESPACE \
    --language '4nrpP8NE' \
    --storeId 'Wz1pVrj1' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'FSq2KSKw' \
    --namespace $AB_NAMESPACE \
    --language 'UDcJnjWX' \
    --storeId 'gA6jnbhQ' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '6zrqi5JK' \
    --namespace $AB_NAMESPACE \
    --language 'GEw0zKUA' \
    --storeId 'R94Z4NIr' \
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
    --language 'GtSVnXlr' \
    --region '0TenBRv1' \
    --storeId 'nVhvA151' \
    --appId 'QC0JM0sq' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemByAppId' test.out

#- 308 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'UntfEpil' \
    --categoryPath '3fucqaWM' \
    --features 'anbX2c1x' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --language 'M9MRlJfN' \
    --limit '26' \
    --offset '71' \
    --region '0sS0cKae' \
    --sortBy '["updatedAt", "createdAt:asc"]' \
    --storeId '9n1xydDS' \
    --tags 'WMBJbiiQ' \
    > test.out 2>&1
eval_tap $? 308 'PublicQueryItems' test.out

#- 309 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'd43m9qHa' \
    --region 'HN4X9XUa' \
    --storeId 'NScfGY5j' \
    --sku 'xL9iWgVx' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'XeDBSXs2' \
    --region 'pGHaHIxk' \
    --storeId 'EJD2I9tl' \
    --itemIds 'vnR2Gzyl' \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["SnxlcqRe", "9TJa515r", "5RROC4dN"]}' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '43' \
    --offset '71' \
    --region 'hrr9NTcL' \
    --storeId '8FFXWyl2' \
    --keyword 'ulhJwd2q' \
    --language 'byHV6bnn' \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'coxNQotC' \
    --namespace $AB_NAMESPACE \
    --language 'ii3mCmf8' \
    --region 'sts0PlJG' \
    --storeId '5E4yXxXb' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'IajQRP9J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ClxIr88u' \
    --namespace $AB_NAMESPACE \
    --language 'VsZwT2Vt' \
    --populateBundle 'false' \
    --region 'hOtjLcgV' \
    --storeId 'dRqKFAkg' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "fLenuM9C", "paymentProvider": "WALLET", "returnUrl": "D2ItBOCR", "ui": "hpANOIWW", "zipCode": "DPvE0Kth"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'phmaHrIY' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9Yw3BR4G' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4DJp8cTH' \
    --paymentProvider 'XSOLLA' \
    --zipCode '5ZoeZIC5' \
    --body '{"token": "YfIHfOk0"}' \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bH8RJMOs' \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'Tc0R8Apv' \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'TfIwYjX5' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'jRB0LrRk' \
    --foreinginvoice 'eSDga45i' \
    --invoiceId 'rfCyVZ5d' \
    --payload 'MdFNJQoy' \
    --redirectResult 'S4vqevBV' \
    --resultCode '3Q0LDVAh' \
    --sessionId '2NEzgoQZ' \
    --status 'or6mT1tt' \
    --token 'SGfq42vC' \
    --type 'uX4p3N6F' \
    --userId 'Rl6sifZs' \
    --orderNo '8ISqEbyd' \
    --paymentOrderNo 'IIIC9442' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'A0rDU6pU' \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '9cnWCYTt' \
    --paymentOrderNo '9MeTOdVg' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'XKmJEh0y' \
    > test.out 2>&1
eval_tap $? 326 'GetRewardByCode' test.out

#- 327 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'CjaQvi0e' \
    --limit '77' \
    --offset '23' \
    --sortBy '["rewardCode:desc", "rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 327 'QueryRewards1' test.out

#- 328 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'oeTceOsl' \
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
    --appIds '["lFcvv6W6", "mST4BsoP", "8kxVSjif"]' \
    --itemIds '["aurTaCrD", "ngryQM10", "V3hNuCwk"]' \
    --skus '["pYbNfrHR", "BD1MoyIf", "NmNPs3z6"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicExistsAnyMyActiveEntitlement' test.out

#- 331 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'rRgOxvGI' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'JbLcUVj2' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'Um3KspFZ' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 334 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["rA0Hid2E", "peTOhESd", "FLLzLe1i"]' \
    --itemIds '["0tMRjhW3", "OocXIlF6", "cpR0Gws6"]' \
    --skus '["1d2t8mRo", "6gCvQdEE", "DzU36qQE"]' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetEntitlementOwnershipToken' test.out

#- 335 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'Sbh1yBKi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TAM7QNr0' \
    --body '{"epicGamesJwtToken": "h7zKbGn7"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WJm0MgcL' \
    --body '{"serviceLabel": 0}' \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '7u85mZnM' \
    --body '{"serviceLabels": [93, 14]}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'n0l7tDU5' \
    --body '{"appId": "9OPMEKZm", "steamId": "DHA8CIRw"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'QYzuVZpl' \
    --body '{"xstsToken": "A9PfSPL2"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'rqkvgEcQ' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'acvA1COI' \
    --features '["rr4w6bXP", "XTq3g3EF", "0vvB5PE3"]' \
    --itemId '["l6PsN5cm", "XFCKLm1E", "WAUVUpej"]' \
    --limit '26' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'OycYV3LX' \
    --appId 'pY2aDwxG' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ud43NElS' \
    --limit '31' \
    --offset '56' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4egtR7Rc' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'BwQg8xYu' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JQYVgzVz' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'hC2Q8q71' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gwejQmSJ' \
    --appIds '["SILgwuRL", "NP27ttQw", "jt20B0oZ"]' \
    --itemIds '["yD2lbjOi", "JFSUH2IF", "TIFacjjK"]' \
    --skus '["jnfK4jmC", "KR0WBqEP", "OT5948vJ"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6TuxDqmY' \
    --appId 'v68IuKIS' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WCBnLeNv' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'f5HjloBw' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kLPlToqU' \
    --ids '["xUcKNtXd", "Q92jluWP", "60uIrdGW"]' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'g9HE17H6' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'DEVeegCk' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '13UVp3DN' \
    --namespace $AB_NAMESPACE \
    --userId 'McJVr4p4' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'yTrywrwR' \
    --namespace $AB_NAMESPACE \
    --userId 'nw6EeAF2' \
    --body '{"options": ["Y2jEcSTK", "KLHdt9Qb", "7d2Qlpvn"], "requestId": "oXDMDn0C", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'tu82Xz5T' \
    --body '{"code": "eWQL2TiC", "language": "pp-BktS", "region": "UL2W70qv"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'B2JStqBg' \
    --body '{"excludeOldTransactions": false, "language": "xuns-bF", "productId": "OQP3G7jb", "receiptData": "cBlkyVH2", "region": "sfZfPUae", "transactionId": "O6d7ju0i"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NrzasiwZ' \
    --body '{"epicGamesJwtToken": "GMFZLlZn"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zHYZRAgP' \
    --body '{"autoAck": true, "language": "dNzU", "orderId": "5Bzx4YFb", "packageName": "F5l3Dj82", "productId": "fzvrzuLq", "purchaseTime": 68, "purchaseToken": "mrrUmMFq", "region": "7W0m80do"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '44ORe3Bl' \
    --body '{"currencyCode": "FDAUxwUO", "price": 0.1965944236951932, "productId": "A68ZaMfA", "serviceLabel": 67}' \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'CnACf9z8' \
    --body '{"currencyCode": "tXxWwz7w", "price": 0.7290720752088364, "productId": "0onzHTh0", "serviceLabels": [0, 34, 43]}' \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'juBKO9Qj' \
    --body '{"appId": "1aR1VnAk", "currencyCode": "jyU1ot4D", "language": "BjO_NmID", "price": 0.9461412887904809, "productId": "HrIAIPwT", "region": "etKj2Cp1", "steamId": "fzonemy5"}' \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'zpmVylDc' \
    --body '{"gameId": "Cr3LjaDa", "language": "nq", "region": "Yhhfl46S"}' \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ziVW2bQC' \
    --body '{"currencyCode": "PaI0LXJO", "price": 0.44296012427060893, "productId": "5Ft5tu9y", "xstsToken": "Czr5ez7c"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'l4tNFMG6' \
    --itemId 'LtBR9PEp' \
    --limit '92' \
    --offset '99' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VbbvVc8S' \
    --body '{"currencyCode": "gNaGsOzm", "discountedPrice": 33, "ext": {"HfxCjaG5": {}, "J5kpEcPf": {}, "t1RYmAgO": {}}, "itemId": "xkTwYKPh", "language": "zw", "price": 67, "quantity": 96, "region": "prEVrYkQ", "returnUrl": "kG1dbKBR"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TeuTYr0v' \
    --userId 'pUnU5XJj' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'i5esh7et' \
    --userId 'eVrtZfXw' \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'fhT600cc' \
    --userId '4SteZKdj' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'XXyJGC7x' \
    --userId 'MpZLuhqW' \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'IxQ0J85R' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'HOPUQ2Fj' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'Uj9lzY9J' \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '8YMl0r9m' \
    --language 'yLc535vL' \
    --region 'x13Ae227' \
    --storeId '7K6lifci' \
    --viewId 'XRLK7HNr' \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'xzuudTsA' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'JxlWcaYM' \
    --limit '37' \
    --offset '8' \
    --sku '6STtrZ3D' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'umvO0jCy' \
    --body '{"currencyCode": "Vy7KJY28", "itemId": "hfsS4AFF", "language": "WpQq_OeNp_zE", "region": "qOsOME4G", "returnUrl": "jNef2J4v", "source": "Q72L7pER"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'yIxepX29' \
    --itemId '1YMawxNZ' \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iP5R8EfP' \
    --userId 'L8WxmtXH' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'coG1zmjN' \
    --userId 'Qm0g8oa8' \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0b6iYXue' \
    --userId 'yrvuxrTY' \
    --body '{"immediate": false, "reason": "2ACbdJ4m"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sIb0Ntrf' \
    --userId '2Y9Id06F' \
    --excludeFree 'false' \
    --limit '77' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'gw9aUzxO' \
    --language '7PrRXEkb' \
    --storeId 'nkKue7Ex' \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'AKlBjDvd' \
    --namespace $AB_NAMESPACE \
    --userId 'MSSlxdu6' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '6YD1AIgk' \
    --namespace $AB_NAMESPACE \
    --userId 'gTY7vhYa' \
    --limit '88' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 380 'PublicListUserWalletTransactions' test.out

#- 381 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'mSkiQGyh' \
    --baseAppId 'VIRa9Kcx' \
    --categoryPath 'yY7GtQ5E' \
    --features 'N8b2Acp8' \
    --includeSubCategoryItem 'true' \
    --itemName '8dsaizl1' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '37' \
    --offset '9' \
    --region 'zrKwkn0c' \
    --sortBy '["name", "updatedAt:desc", "name:asc"]' \
    --storeId 'YpT4X6PO' \
    --tags 'f6F6XLGx' \
    --targetNamespace '4kJBc5o3' \
    > test.out 2>&1
eval_tap $? 381 'QueryItems1' test.out

#- 382 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'wzWsC1PX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 382 'ImportStore1' test.out

#- 383 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '79MLx2Ha' \
    --body '{"itemIds": ["c6LPPjfT", "GYqRYExJ", "swoVI1Tl"]}' \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE