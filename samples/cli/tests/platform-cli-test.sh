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
    --body '{"context": {"item": {"appId": "8GrFxbpu", "appType": "GAME", "baseAppId": "wRkYFwLg", "boothName": "LtY50OHZ", "boundItemIds": ["81N1ZZHb", "QcrEEGNM", "OVI7nlCI"], "categoryPath": "bLDrs9Lb", "clazz": "JmE81xBc", "createdAt": "1986-03-27T00:00:00Z", "description": "Ekx60yRC", "displayOrder": 64, "entitlementType": "CONSUMABLE", "ext": {"mMkQfruu": {}, "p3egvL6L": {}, "S4Q4QeML": {}}, "features": ["Cab93Rbk", "wyFnXlOq", "ZFG3G2mJ"], "fresh": false, "images": [{"as": "IEWWWugK", "caption": "Hy0gHruv", "height": 89, "imageUrl": "fHsZkQzR", "smallImageUrl": "dsRsiEem", "width": 86}, {"as": "yYgl2YNm", "caption": "r9fhBHnY", "height": 17, "imageUrl": "YDM5wcmn", "smallImageUrl": "KUVu4v9g", "width": 6}, {"as": "cDoMPhYU", "caption": "EjaUQIrO", "height": 8, "imageUrl": "tjdUdnSS", "smallImageUrl": "inSiqOKD", "width": 7}], "itemId": "jwIzWTsR", "itemIds": ["eEhIuIZk", "jmqjrkpL", "HklJs75w"], "itemQty": {"5WPWNl4R": 72, "95vB0fT0": 84, "eiftRnvQ": 26}, "itemType": "EXTENSION", "language": "Qqob3nGa", "listable": true, "localExt": {"pkiVloQD": {}, "ELOlCG03": {}, "ZcQdXvT4": {}}, "longDescription": "z2RvdoDw", "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 64, "itemId": "RBuX0lwR", "itemSku": "qn5Gm3Sy", "itemType": "4OEzfjWx"}, {"count": 73, "itemId": "QijINf4Q", "itemSku": "le0rhqB3", "itemType": "seNYef9Q"}, {"count": 68, "itemId": "mwiU1OcB", "itemSku": "RKPnlnWl", "itemType": "yFBETeI0"}], "name": "o7Hll3NJ", "odds": 0.4349319799689024, "type": "REWARD_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 85, "itemId": "kE42hOGV", "itemSku": "8NEeYLrD", "itemType": "tz9P1Yyi"}, {"count": 58, "itemId": "ujHKpwRl", "itemSku": "gs6c34np", "itemType": "MDFJcaXr"}, {"count": 87, "itemId": "1jwSCk4s", "itemSku": "FVZJ4HEv", "itemType": "mVf0Ycyz"}], "name": "fYSObLP9", "odds": 0.6522656587616416, "type": "PROBABILITY_GROUP", "weight": 21}, {"lootBoxItems": [{"count": 48, "itemId": "qAILKCAu", "itemSku": "d20inLQI", "itemType": "3j8Fi09o"}, {"count": 87, "itemId": "0pFkCVdh", "itemSku": "4r4c1q7z", "itemType": "kVOQ3WTw"}, {"count": 83, "itemId": "PNTjNbo6", "itemSku": "m6kir2oC", "itemType": "GSqVqEUj"}], "name": "Zb3OJJGZ", "odds": 0.20349173050825153, "type": "PROBABILITY_GROUP", "weight": 13}], "rollFunction": "DEFAULT"}, "maxCount": 16, "maxCountPerUser": 26, "name": "yTkc4U8G", "namespace": "bS7SGBeb", "optionBoxConfig": {"boxItems": [{"count": 30, "itemId": "cZlJuzff", "itemSku": "mjGgcGm1", "itemType": "2lJiJv7b"}, {"count": 31, "itemId": "TSGD6Edc", "itemSku": "F2ol1MUc", "itemType": "ExfpfXZz"}, {"count": 33, "itemId": "Pusw4o2z", "itemSku": "ZbCR5IHc", "itemType": "Q3byvrJe"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 39, "comparison": "includes", "name": "Gzbuf12B", "predicateType": "SeasonPassPredicate", "value": "C4jKFgVC", "values": ["nTZp6lPO", "4opnzNwE", "l99GtkRA"]}, {"anyOf": 37, "comparison": "excludes", "name": "hibNDGKT", "predicateType": "SeasonPassPredicate", "value": "sxBtYrNI", "values": ["pgQvtsps", "ZiMeitqS", "WrHk9G85"]}, {"anyOf": 85, "comparison": "includes", "name": "HwzjEpwF", "predicateType": "SeasonPassPredicate", "value": "fqXuyvsU", "values": ["tkxY63Oc", "bXVdWEuZ", "fNYTp0lK"]}]}, {"operator": "and", "predicates": [{"anyOf": 48, "comparison": "isNot", "name": "lwJ4cRmu", "predicateType": "SeasonPassPredicate", "value": "4haBl95k", "values": ["qZtOsMRH", "oy7hiZYG", "L05Hcv2u"]}, {"anyOf": 55, "comparison": "includes", "name": "Fh8ZvI5H", "predicateType": "SeasonTierPredicate", "value": "MFvwZT7K", "values": ["r5EplXVx", "rhHRWnUJ", "uS6jUdmG"]}, {"anyOf": 96, "comparison": "isLessThanOrEqual", "name": "dZGkbvJj", "predicateType": "SeasonTierPredicate", "value": "qQX3FfOG", "values": ["KrYaiton", "bYUmZEkB", "16eKZ7rN"]}]}, {"operator": "or", "predicates": [{"anyOf": 0, "comparison": "includes", "name": "S2NLfLru", "predicateType": "SeasonPassPredicate", "value": "GcfWcNCp", "values": ["8YGybTmW", "wXTPqmAk", "70zEooTg"]}, {"anyOf": 36, "comparison": "isNot", "name": "PRj3vH9n", "predicateType": "EntitlementPredicate", "value": "qdRd8TSa", "values": ["1r30Cq03", "jPUzPLXk", "Dk40RRef"]}, {"anyOf": 88, "comparison": "isNot", "name": "DRnRltD6", "predicateType": "EntitlementPredicate", "value": "p3kSlDig", "values": ["wlRRlGmS", "ZnKZ8qcY", "FRbMUs1z"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 66, "fixedTrialCycles": 63, "graceDays": 89}, "region": "4ZOuePw0", "regionData": [{"currencyCode": "Bc7DQnRF", "currencyNamespace": "kif3zCw4", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1981-06-15T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1994-02-24T00:00:00Z", "discountedPrice": 66, "expireAt": "1977-08-12T00:00:00Z", "price": 93, "purchaseAt": "1971-10-18T00:00:00Z", "trialPrice": 85}, {"currencyCode": "s36JwzSi", "currencyNamespace": "5vGDkiAa", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1997-04-27T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1973-11-07T00:00:00Z", "discountedPrice": 16, "expireAt": "1991-12-14T00:00:00Z", "price": 6, "purchaseAt": "1990-01-18T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Ni7suTrD", "currencyNamespace": "CgE9ih4C", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1973-03-18T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1980-12-10T00:00:00Z", "discountedPrice": 5, "expireAt": "1979-10-22T00:00:00Z", "price": 94, "purchaseAt": "1988-11-01T00:00:00Z", "trialPrice": 64}], "seasonType": "PASS", "sku": "LvwOyDL8", "stackable": true, "status": "INACTIVE", "tags": ["5mG7lTys", "OgOBni9l", "Fq55Bn4r"], "targetCurrencyCode": "eBBjinWD", "targetItemId": "FaoXOFos", "targetNamespace": "zNVdf50u", "thumbnailUrl": "Ek8enOvv", "title": "gJf9Y42B", "updatedAt": "1975-03-02T00:00:00Z", "useCount": 73}, "namespace": "RLZudzOE", "order": {"currency": {"currencyCode": "sK9eydrv", "currencySymbol": "ORbMMu4d", "currencyType": "VIRTUAL", "decimals": 38, "namespace": "yFr7dC4n"}, "ext": {"LKw77tva": {}, "xrJelm7h": {}, "CKGqs4xE": {}}, "free": true}, "source": "GIFT"}, "script": "nY7w96WS", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '3oEZUjva' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'qpgXGgbb' \
    --body '{"grantDays": "XqhTmCOg"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'EnPb2vuW' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'au4H5rCe' \
    --body '{"grantDays": "NlaBs6Eh"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "hDqMLgM1", "dryRun": true, "fulfillmentUrl": "b5EmuygT", "itemType": "MEDIA", "purchaseConditionUrl": "bI5ir4aR"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'gKmTrIjh' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Pb7KbLe4' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Qfl0r06k' \
    --body '{"clazz": "AuVTsdNQ", "dryRun": true, "fulfillmentUrl": "E00PLuuu", "purchaseConditionUrl": "BOj9ViIu"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'X9uj6LH7' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'g2GdMXlF' \
    --offset '34' \
    --tag '6waYDXC6' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zR8H6dGM", "items": [{"extraSubscriptionDays": 75, "itemId": "NYGgCw0r", "itemName": "h5iqBXya", "quantity": 35}, {"extraSubscriptionDays": 49, "itemId": "TL6LcUsn", "itemName": "p8vfEKog", "quantity": 86}, {"extraSubscriptionDays": 43, "itemId": "ppQvm6m4", "itemName": "hYEEzuS4", "quantity": 39}], "maxRedeemCountPerCampaignPerUser": 26, "maxRedeemCountPerCode": 26, "maxRedeemCountPerCodePerUser": 98, "maxSaleCount": 40, "name": "VFDIPiIY", "redeemEnd": "1989-11-20T00:00:00Z", "redeemStart": "1972-04-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["MHGXpn0B", "X4XjKxRh", "CxfT7SLg"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'SBIg69HS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'PuEVqquD' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UATGc1U1", "items": [{"extraSubscriptionDays": 1, "itemId": "mmwUPYpP", "itemName": "B17HW6yp", "quantity": 4}, {"extraSubscriptionDays": 2, "itemId": "hlYxFWzA", "itemName": "qrZb2d7z", "quantity": 10}, {"extraSubscriptionDays": 41, "itemId": "mqsiQxgz", "itemName": "qT9B4Yan", "quantity": 73}], "maxRedeemCountPerCampaignPerUser": 90, "maxRedeemCountPerCode": 78, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 51, "name": "FG9WWlv2", "redeemEnd": "1989-08-25T00:00:00Z", "redeemStart": "1976-08-19T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["xGpI2l84", "9IGltCVv", "8Tzr3Y9q"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'S87AuS67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'e6IkfXr9' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'cXV2rpuO' \
    --body '{"categoryPath": "OA9bkGuM", "localizationDisplayNames": {"hXWjouRD": "ilS3AupC", "vFQJaAla": "XOpXWjEP", "ztA3OaJI": "O4juXzG7"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'LPq3paaY' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'wyaEOIIp' \
    --namespace $AB_NAMESPACE \
    --storeId 'Uq5l9yFJ' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '1fpUeHSb' \
    --namespace $AB_NAMESPACE \
    --storeId '0skmCg0w' \
    --body '{"localizationDisplayNames": {"MmJX6ubT": "ZjQEYHWx", "zvUdcEaB": "3QzwHhCB", "eIIMJZfa": "25BchFZT"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'DgP0Afiz' \
    --namespace $AB_NAMESPACE \
    --storeId 'aIdQBXwG' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'rYRG5Z2T' \
    --namespace $AB_NAMESPACE \
    --storeId 'FJzQxqw9' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'CSRFM12s' \
    --namespace $AB_NAMESPACE \
    --storeId 'AN36riQG' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'gOKKZWAj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '15' \
    --code 'fbn6uEQX' \
    --limit '30' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'zbZnqNaE' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 28}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId '9aO1ha8a' \
    --namespace $AB_NAMESPACE \
    --batchNo '46' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'mOfId8k4' \
    --namespace $AB_NAMESPACE \
    --batchNo '24' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'VPE4oNkJ' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '1MYJj7vL' \
    --namespace $AB_NAMESPACE \
    --code 'SDKxzKSz' \
    --limit '82' \
    --offset '30' \
    --userId 'ZzmIdYLG' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code '9w1xtNgS' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'Ea8ryif7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'OvcQML14' \
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
    --body '{"grpcServerAddress": "t9LJtmAx"}' \
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
    --body '{"currencyCode": "EfCZFU6o", "currencySymbol": "wemQdGRA", "currencyType": "VIRTUAL", "decimals": 96, "localizationDescriptions": {"L3KO7jEM": "5N8h9uJ4", "3gNa7TIW": "NqXkgWZC", "uIhyMICx": "ZcsCyhz4"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'HUUdWKC1' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Qt0JePPg": "zKfPCNNe", "thA48puU": "U2mF72OJ", "5rwlVQse": "5IywMfJp"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'TwrED3ah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ovwP80i2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'xkZV04C9' \
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
    --body '{"data": [{"id": "x8Nw4kQs", "rewards": [{"currency": {"currencyCode": "3khQxill", "namespace": "9QkWpZ0x"}, "item": {"itemId": "xdN7FqyJ", "itemSku": "jw3H7VDi", "itemType": "qW2g6bx2"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "HgCag4Eo", "namespace": "60d0yuyr"}, "item": {"itemId": "3X2jvrdv", "itemSku": "fkOVT3BE", "itemType": "HsnPFtHN"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "4JUnKqoK", "namespace": "wlr29I5o"}, "item": {"itemId": "SZTnllO1", "itemSku": "QNKInDjG", "itemType": "QWuDG8VA"}, "quantity": 73, "type": "ITEM"}]}, {"id": "T9iSEwwJ", "rewards": [{"currency": {"currencyCode": "qksQLfrT", "namespace": "S4Q81qZw"}, "item": {"itemId": "jDm7RKCR", "itemSku": "GS6q5OSZ", "itemType": "wZLE911G"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "LpH8bhIZ", "namespace": "zsSJpP85"}, "item": {"itemId": "t0eOIsVH", "itemSku": "6VlpSPyT", "itemType": "RO0LkMsP"}, "quantity": 93, "type": "ITEM"}, {"currency": {"currencyCode": "2INAd4dg", "namespace": "zGDauQKI"}, "item": {"itemId": "F3HEXvGT", "itemSku": "9DiyFWgI", "itemType": "MGtNEY6R"}, "quantity": 55, "type": "ITEM"}]}, {"id": "RAvRibyI", "rewards": [{"currency": {"currencyCode": "3LkMx3KM", "namespace": "MsfIHdTt"}, "item": {"itemId": "L4gjtr6y", "itemSku": "KswFXliq", "itemType": "4U7xiDAK"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "tH0crvZC", "namespace": "u7ysqxGH"}, "item": {"itemId": "PLJEozaf", "itemSku": "Y2fpX7Tv", "itemType": "UlRK8vdR"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "Pf3B59K5", "namespace": "QZayjH7Z"}, "item": {"itemId": "f9lMd55m", "itemSku": "W7uHAjCV", "itemType": "e9X9DjyP"}, "quantity": 97, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"RWnQySpH": "4QCGkR0K", "92jAUe1G": "mORVUbXB", "6Lwg22k9": "dazAk4Yo"}}, {"platform": "XBOX", "platformDlcIdMap": {"cmzl9f9K": "Me3U9o2R", "zgl2hdL6": "Z46wbBUP", "mr22cDYO": "z7oyrGBA"}}, {"platform": "STEAM", "platformDlcIdMap": {"KDX6FIau": "A2Zqy44x", "8pCZpJfv": "zOnOZqls", "EwlGJ6tY": "40Y64mHk"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'k3FjbKZf' \
    --itemId '["sfsofZEd", "qtclxufa", "fsnlHTwZ"]' \
    --limit '38' \
    --offset '52' \
    --userId 'Xv52Wh2O' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'JAuoKnFV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '78' \
    --status 'SUCCESS' \
    --userId '8kp1C8P1' \
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
    --body '{"bundleId": "JS1lAZco", "password": "EdTPQGr0"}' \
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
    --body '{"sandboxId": "mrkowwKL"}' \
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
    --body '{"applicationName": "UXLJ75nt", "serviceAccountId": "0wEImNPO"}' \
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
    --body '{"data": [{"itemIdentity": "1CoMwVgq", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"SFDWPVVI": "9FjVrWAd", "RGNzZkIJ": "31eAYB32", "yLdV2PlR": "Dnf7gOg1"}}, {"itemIdentity": "mVpjFo54", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"3gmBQNge": "FiGC4uvm", "yAnStyaX": "sywQhHD7", "icDWW8ks": "qH6APwYK"}}, {"itemIdentity": "cDsyMKat", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"kjaZcwqt": "LSfJvTAF", "74EWTKBw": "arD7Q2YO", "kMskcEG7": "UUELxygs"}}]}' \
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
    --body '{"environment": "6XQYQl0G"}' \
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
    --body '{"appId": "VS5SmDFu", "publisherAuthenticationKey": "Qug4cq3U"}' \
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
    --body '{"clientId": "fKCfR8gE", "clientSecret": "23hi7dJi", "organizationId": "dnERnwNx"}' \
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
    --body '{"relyingPartyCert": "HeyEzeXp"}' \
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
    --password 'xharyN21' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'cWQKl2df' \
    --itemId 'MBpDt5DF' \
    --itemType 'APP' \
    --endTime 'izc735fv' \
    --startTime 'foGqXuji' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'cooSeywz' \
    --itemId 'XYq5td0b' \
    --itemType 'EXTENSION' \
    --endTime 'wMq1HwMr' \
    --startTime 'MwPOaj5c' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '6lXZnDFC' \
    --body '{"categoryPath": "tu0rbD15", "targetItemId": "NOkUJImu", "targetNamespace": "61OL1MlT"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ottmMxmD' \
    --body '{"appId": "3pIFSEXK", "appType": "GAME", "baseAppId": "Pz56GuXk", "boothName": "b1s9mjKH", "categoryPath": "BVnV4Zik", "clazz": "kUn7kfj3", "displayOrder": 40, "entitlementType": "CONSUMABLE", "ext": {"GS07Z3AC": {}, "H0zDgbVM": {}, "WBiIWemK": {}}, "features": ["WpS5zKn4", "CeR7OJ8M", "39L2XWtM"], "images": [{"as": "RVjpqNUO", "caption": "mkEUzDWA", "height": 40, "imageUrl": "CpO2mDoC", "smallImageUrl": "sFxJtqpa", "width": 61}, {"as": "w88D6qIL", "caption": "dMZbWaPW", "height": 25, "imageUrl": "wUBlwLkr", "smallImageUrl": "h0UGdDH3", "width": 93}, {"as": "oUGbdrPa", "caption": "YCjVfpWf", "height": 37, "imageUrl": "beiQ2awd", "smallImageUrl": "dcay2ap1", "width": 2}], "itemIds": ["DIyyn1wK", "F4WLH4NC", "jtjBItYv"], "itemQty": {"TFHhkXrD": 27, "aFR6c63J": 93, "J3s1x8rZ": 98}, "itemType": "SEASON", "listable": false, "localizations": {"RnWppgVf": {"description": "tbGECw1W", "localExt": {"slME7LFI": {}, "OiyEL38r": {}, "I8O3CSBy": {}}, "longDescription": "HSWV9two", "title": "QvbMX8B3"}, "4Nhs8HDv": {"description": "rzHBDREQ", "localExt": {"JZufezP6": {}, "D5j2dV1v": {}, "BiMGC2bZ": {}}, "longDescription": "vSj847wF", "title": "XaFTfNVo"}, "Sh8AGS99": {"description": "1odeoC3A", "localExt": {"UMIGjLec": {}, "xHnl2mlQ": {}, "7EdsGag2": {}}, "longDescription": "MasQAzaa", "title": "hzmE8QuR"}}, "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 14, "itemId": "a3rY42wl", "itemSku": "0X8bvaYF", "itemType": "Vs3sSOFe"}, {"count": 3, "itemId": "r9ng2dgW", "itemSku": "96a3xVpW", "itemType": "BivecJF4"}, {"count": 76, "itemId": "jcTE5OrH", "itemSku": "hRgJs7Df", "itemType": "yUbUjEtq"}], "name": "66avlD6A", "odds": 0.7797607861638677, "type": "REWARD_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 59, "itemId": "OtM2KAEj", "itemSku": "0Bafowx7", "itemType": "X9Fa4TGF"}, {"count": 9, "itemId": "zrLwEfwA", "itemSku": "MU5PYYp2", "itemType": "GIzyXRyl"}, {"count": 75, "itemId": "X86Ku7oN", "itemSku": "JNUit7z3", "itemType": "4cPjbAyO"}], "name": "e4DfEBtZ", "odds": 0.5502345312269669, "type": "REWARD", "weight": 1}, {"lootBoxItems": [{"count": 55, "itemId": "AJ0HtBX4", "itemSku": "XU3KV5av", "itemType": "buzPmc6R"}, {"count": 38, "itemId": "K8zQkuPL", "itemSku": "Fe6ZvxQW", "itemType": "mmLIcskU"}, {"count": 86, "itemId": "xw6fCjNS", "itemSku": "sFwqHREN", "itemType": "QOc1GGeh"}], "name": "uHgsNXR3", "odds": 0.5130184629174138, "type": "REWARD", "weight": 39}], "rollFunction": "CUSTOM"}, "maxCount": 97, "maxCountPerUser": 100, "name": "RTDA1TEb", "optionBoxConfig": {"boxItems": [{"count": 48, "itemId": "8Y34rDyK", "itemSku": "1GsEkbG7", "itemType": "J8kjp4rQ"}, {"count": 15, "itemId": "AWJmVVfc", "itemSku": "KOb4phiT", "itemType": "mRQayJew"}, {"count": 21, "itemId": "JBWpZZby", "itemSku": "njV7kKaT", "itemType": "wTmrZK8m"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 83, "fixedTrialCycles": 55, "graceDays": 14}, "regionData": {"lFKbVGPu": [{"currencyCode": "xv1CBxIN", "currencyNamespace": "nkuS1Jky", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1977-02-08T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-12-07T00:00:00Z", "discountedPrice": 96, "expireAt": "1985-03-14T00:00:00Z", "price": 33, "purchaseAt": "1989-04-11T00:00:00Z", "trialPrice": 13}, {"currencyCode": "x0ahjtb6", "currencyNamespace": "8GewF46i", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1981-02-12T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1994-01-30T00:00:00Z", "discountedPrice": 72, "expireAt": "1991-10-28T00:00:00Z", "price": 20, "purchaseAt": "1998-01-26T00:00:00Z", "trialPrice": 86}, {"currencyCode": "ihZdbHvJ", "currencyNamespace": "SVU7Jmvy", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1992-01-23T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1973-06-07T00:00:00Z", "discountedPrice": 98, "expireAt": "1994-01-11T00:00:00Z", "price": 86, "purchaseAt": "1980-10-09T00:00:00Z", "trialPrice": 32}], "eZe45jdk": [{"currencyCode": "xe3gYPUg", "currencyNamespace": "zLe9AEOp", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1972-10-15T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1976-12-01T00:00:00Z", "discountedPrice": 75, "expireAt": "1996-02-24T00:00:00Z", "price": 89, "purchaseAt": "1991-03-20T00:00:00Z", "trialPrice": 75}, {"currencyCode": "pJS6FgKu", "currencyNamespace": "1n0VF309", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1999-11-28T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-04-15T00:00:00Z", "discountedPrice": 81, "expireAt": "1978-08-18T00:00:00Z", "price": 76, "purchaseAt": "1972-01-16T00:00:00Z", "trialPrice": 52}, {"currencyCode": "VxqFZJFo", "currencyNamespace": "B1WgkIwQ", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1983-11-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1987-11-27T00:00:00Z", "discountedPrice": 63, "expireAt": "1988-12-26T00:00:00Z", "price": 20, "purchaseAt": "1978-12-08T00:00:00Z", "trialPrice": 85}], "wY7NWV8u": [{"currencyCode": "w2RgbfmU", "currencyNamespace": "DoneoBvV", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1985-01-23T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1977-07-04T00:00:00Z", "discountedPrice": 45, "expireAt": "1979-01-16T00:00:00Z", "price": 92, "purchaseAt": "1996-09-17T00:00:00Z", "trialPrice": 33}, {"currencyCode": "0pIpxvSl", "currencyNamespace": "xBBwpF53", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-05-20T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1980-08-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-03-25T00:00:00Z", "price": 42, "purchaseAt": "1972-03-04T00:00:00Z", "trialPrice": 61}, {"currencyCode": "olsq7KtE", "currencyNamespace": "swIBTKTB", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1975-07-01T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1997-10-04T00:00:00Z", "discountedPrice": 39, "expireAt": "1981-08-27T00:00:00Z", "price": 29, "purchaseAt": "1980-03-10T00:00:00Z", "trialPrice": 89}]}, "seasonType": "PASS", "sku": "6LfPRQHW", "stackable": true, "status": "INACTIVE", "tags": ["JXqzgZyR", "uhixmXug", "1pVEjljk"], "targetCurrencyCode": "7Nvombi2", "targetNamespace": "PXpmAYef", "thumbnailUrl": "08dqDoEZ", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'batGBzLc' \
    --appId 'C6MF5N2W' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'QyEhsCMy' \
    --baseAppId 'ejKigjlv' \
    --categoryPath 'GD2Aae1C' \
    --features 'i2tg30U0' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --limit '55' \
    --offset '79' \
    --region 'MrPc7Qm6' \
    --sortBy '["name:desc", "createdAt:asc", "createdAt"]' \
    --storeId '5ZWj3CWN' \
    --tags 'EoxcCvnj' \
    --targetNamespace 'ODfQG3sP' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Wnh29kPL", "mBCh6ocw", "jp1PwPAa"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'AYyu7NaT' \
    --sku 'Vyv6Eak5' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MWUfz2t0' \
    --populateBundle 'false' \
    --region 'GAdI4WgE' \
    --storeId 'R1uOXNYs' \
    --sku 'Ipt3ZSNv' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'fDlcXe7D' \
    --sku 'URjKp6PY' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["vMSlNUsC", "jsMz4rBZ", "VgwigP7C"]' \
    --storeId 'uhND6yII' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'jsp2dcu9' \
    --region 'MorJt8Kt' \
    --storeId 'edxDeUDx' \
    --itemIds 'AbNwXrF0' \
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
    --userId 'JOv9zo5j' \
    --body '{"itemIds": ["IhAYfWTA", "yUXr7NPy", "WT3qDkCm"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '37' \
    --offset '44' \
    --sortBy 'WOXh2WUa' \
    --storeId 'CnMmfHkz' \
    --keyword '4XHorQmB' \
    --language 'uLygsbv9' \
    > test.out 2>&1
eval_tap $? 97 'SearchItems' test.out

#- 98 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '81' \
    --offset '17' \
    --sortBy '["name:asc", "name", "updatedAt:asc"]' \
    --storeId '3yxT9JaW' \
    > test.out 2>&1
eval_tap $? 98 'QueryUncategorizedItems' test.out

#- 99 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'd1hGyUGz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'SFFoTzp1' \
    > test.out 2>&1
eval_tap $? 99 'GetItem' test.out

#- 100 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '1OnTm2iS' \
    --namespace $AB_NAMESPACE \
    --storeId 'j2FQUEaf' \
    --body '{"appId": "m0N9qfvD", "appType": "DEMO", "baseAppId": "Luq0Y38m", "boothName": "lChgBgXr", "categoryPath": "0JVYFoG1", "clazz": "JewX2b2Y", "displayOrder": 83, "entitlementType": "CONSUMABLE", "ext": {"WlDXFLwF": {}, "ZV5Txu39": {}, "sdacjjYc": {}}, "features": ["hHLAeWsm", "YYaZqOOX", "zsydP02z"], "images": [{"as": "Kll6b0Xi", "caption": "M5yZMs1D", "height": 72, "imageUrl": "YrAFdUrW", "smallImageUrl": "RIfSDaF7", "width": 64}, {"as": "h5hplkfP", "caption": "v3Wt7XXp", "height": 27, "imageUrl": "wZeQyTWX", "smallImageUrl": "1T8AabQl", "width": 57}, {"as": "68vZgsfy", "caption": "4YjjyriY", "height": 81, "imageUrl": "yGPFH7WN", "smallImageUrl": "88bhvCBs", "width": 96}], "itemIds": ["CYfcW7S8", "8qzEd6B8", "uABdhoyJ"], "itemQty": {"ZqnxuqnI": 74, "D7nTK82G": 78, "MwvZPI8W": 84}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"LUxTzdhB": {"description": "2phNJYZ9", "localExt": {"ZIYYT9Hu": {}, "rqoVQ6yN": {}, "ul8T0c1E": {}}, "longDescription": "B4UAi2zU", "title": "QjytRxli"}, "BCgpi7oo": {"description": "tXXhhMkU", "localExt": {"L3de5a07": {}, "VLovWCLz": {}, "Jif9BR2R": {}}, "longDescription": "ZRK2CX9h", "title": "x5jMkPbz"}, "5O9eTC4C": {"description": "sIErcrnZ", "localExt": {"OvvH17I5": {}, "VvTIzFu9": {}, "3ebGLx2a": {}}, "longDescription": "ZTyEx7bO", "title": "1Gux3alA"}}, "lootBoxConfig": {"rewardCount": 99, "rewards": [{"lootBoxItems": [{"count": 3, "itemId": "gba87vA9", "itemSku": "HSDNmWxX", "itemType": "tCIqHUDI"}, {"count": 89, "itemId": "biLD4Se7", "itemSku": "YD0L2n0v", "itemType": "p8Wr9nxf"}, {"count": 92, "itemId": "ov6CriAE", "itemSku": "apRbGuvw", "itemType": "iRZliwwp"}], "name": "wL4uciDW", "odds": 0.720899734506836, "type": "PROBABILITY_GROUP", "weight": 3}, {"lootBoxItems": [{"count": 53, "itemId": "HrEdNvtY", "itemSku": "4zFLuIM8", "itemType": "68Jvqg40"}, {"count": 9, "itemId": "TPIPDqYg", "itemSku": "ebHXlzwn", "itemType": "d4qR0pQo"}, {"count": 53, "itemId": "clFli9Jh", "itemSku": "7itgpPXn", "itemType": "BVpqnVS4"}], "name": "nXpIdi5B", "odds": 0.4676496995793077, "type": "PROBABILITY_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 41, "itemId": "VkdptQHQ", "itemSku": "i4OZdh6K", "itemType": "yl7zoZBa"}, {"count": 29, "itemId": "PTH6Txut", "itemSku": "Xv4Y6Bc8", "itemType": "RuveaAh4"}, {"count": 44, "itemId": "bM4LZ2Dl", "itemSku": "XYRLikNh", "itemType": "GoBX1Y7i"}], "name": "fBCgd4hi", "odds": 0.8609987905540213, "type": "REWARD_GROUP", "weight": 74}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 91, "name": "sqw3uAA3", "optionBoxConfig": {"boxItems": [{"count": 39, "itemId": "8TFPrFTh", "itemSku": "ETmBfCoy", "itemType": "1LTKH7cH"}, {"count": 48, "itemId": "DQnuqUjN", "itemSku": "EJ07vISi", "itemType": "YahQg4ci"}, {"count": 56, "itemId": "RLOj0ZZT", "itemSku": "XDlsRr69", "itemType": "PlmBrTqI"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 35, "fixedTrialCycles": 98, "graceDays": 97}, "regionData": {"roYmBRsO": [{"currencyCode": "YhYQJq5S", "currencyNamespace": "2AyhxXMy", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1984-05-19T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1978-03-10T00:00:00Z", "discountedPrice": 94, "expireAt": "1995-07-19T00:00:00Z", "price": 26, "purchaseAt": "1982-10-16T00:00:00Z", "trialPrice": 56}, {"currencyCode": "yFLN8RKO", "currencyNamespace": "L89RPqzl", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1997-10-15T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1981-04-25T00:00:00Z", "discountedPrice": 60, "expireAt": "1977-04-24T00:00:00Z", "price": 92, "purchaseAt": "1991-02-13T00:00:00Z", "trialPrice": 0}, {"currencyCode": "S2zzk8ud", "currencyNamespace": "K4rnmKVS", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1974-11-06T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1987-06-12T00:00:00Z", "discountedPrice": 65, "expireAt": "1993-01-19T00:00:00Z", "price": 38, "purchaseAt": "1993-05-16T00:00:00Z", "trialPrice": 48}], "AWZViEhk": [{"currencyCode": "nSEL4yJZ", "currencyNamespace": "9ly6xnyG", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1978-08-03T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1998-05-10T00:00:00Z", "discountedPrice": 4, "expireAt": "1998-06-30T00:00:00Z", "price": 5, "purchaseAt": "1983-07-13T00:00:00Z", "trialPrice": 92}, {"currencyCode": "4ZVpgjPh", "currencyNamespace": "mWHt6rK4", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1986-05-21T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1991-12-28T00:00:00Z", "discountedPrice": 63, "expireAt": "1987-01-23T00:00:00Z", "price": 84, "purchaseAt": "1973-09-23T00:00:00Z", "trialPrice": 61}, {"currencyCode": "tA28x0WX", "currencyNamespace": "0HniWcQD", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1988-03-17T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1982-07-25T00:00:00Z", "discountedPrice": 49, "expireAt": "1980-11-13T00:00:00Z", "price": 89, "purchaseAt": "1999-07-31T00:00:00Z", "trialPrice": 83}], "HXe1yUUU": [{"currencyCode": "caTdGwcU", "currencyNamespace": "FcXpkcL2", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1999-12-24T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1994-09-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1982-12-14T00:00:00Z", "price": 64, "purchaseAt": "1984-07-04T00:00:00Z", "trialPrice": 66}, {"currencyCode": "gqVHcuww", "currencyNamespace": "86VD1JIe", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1996-12-13T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1999-02-21T00:00:00Z", "discountedPrice": 7, "expireAt": "1993-03-15T00:00:00Z", "price": 48, "purchaseAt": "1996-06-13T00:00:00Z", "trialPrice": 20}, {"currencyCode": "rK0zhd5L", "currencyNamespace": "G1sa2cR3", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1973-11-01T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1988-03-22T00:00:00Z", "discountedPrice": 1, "expireAt": "1998-09-04T00:00:00Z", "price": 10, "purchaseAt": "1989-12-14T00:00:00Z", "trialPrice": 24}]}, "seasonType": "PASS", "sku": "1j7jajNL", "stackable": false, "status": "ACTIVE", "tags": ["uzVFb1Tz", "qiK4fTRu", "wehYEuHX"], "targetCurrencyCode": "B9kzZ4PJ", "targetNamespace": "FSp8IJ7k", "thumbnailUrl": "K7SjSqbx", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItem' test.out

#- 101 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'lKg6it44' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'VBVoPXym' \
    > test.out 2>&1
eval_tap $? 101 'DeleteItem' test.out

#- 102 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'm80IkzqR' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "vdbGqH16"}' \
    > test.out 2>&1
eval_tap $? 102 'AcquireItem' test.out

#- 103 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Ii6EBkF7' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Nb6WAXeq' \
    > test.out 2>&1
eval_tap $? 103 'GetApp' test.out

#- 104 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'qOHdeAhK' \
    --namespace $AB_NAMESPACE \
    --storeId 'jFufd9aM' \
    --body '{"carousel": [{"alt": "x3lU5iG3", "previewUrl": "pneupVoh", "thumbnailUrl": "y2Ds5fOF", "type": "video", "url": "Mv1Bv9tw", "videoSource": "generic"}, {"alt": "0SFUsVXh", "previewUrl": "5gBc7HCw", "thumbnailUrl": "JWrX8qYZ", "type": "image", "url": "HqQourF4", "videoSource": "generic"}, {"alt": "4ntqd606", "previewUrl": "xGH7fdX7", "thumbnailUrl": "xVqL3h3c", "type": "image", "url": "tWELyJzJ", "videoSource": "generic"}], "developer": "NO3ZN9Wo", "forumUrl": "yfVeMX8s", "genres": ["Adventure", "FreeToPlay", "Strategy"], "localizations": {"eEFPsUL5": {"announcement": "K7SUwGus", "slogan": "ZeRmKa6i"}, "ufw6z7lu": {"announcement": "P7tOQkzK", "slogan": "0Wa7XPKi"}, "Mkupx05f": {"announcement": "hUtEY8YH", "slogan": "VYMZFYyH"}}, "platformRequirements": {"9upT7Lg5": [{"additionals": "v51HYTcU", "directXVersion": "WnqJpKEy", "diskSpace": "aIwEwwD6", "graphics": "IXHaJ0TL", "label": "f4VfqNL4", "osVersion": "Uw0BM044", "processor": "QgFE1Yen", "ram": "B8Af476w", "soundCard": "nTMeCKOK"}, {"additionals": "JIUtkKDr", "directXVersion": "pDSrWJWu", "diskSpace": "ZBK8igN8", "graphics": "c6KjqvoS", "label": "9BhhwRJx", "osVersion": "IuzdwMCL", "processor": "p1GpTh4r", "ram": "KpdH3EjN", "soundCard": "og3A8s0s"}, {"additionals": "Q0jqWcKz", "directXVersion": "XRzEEBhX", "diskSpace": "rDMc7J5L", "graphics": "AQs79M8H", "label": "lAwEej9D", "osVersion": "rTDE2GSW", "processor": "SjQxYJc5", "ram": "4jusSmtp", "soundCard": "3hFb0WAS"}], "okfqnDMl": [{"additionals": "qt8dFX4l", "directXVersion": "rEy18Rms", "diskSpace": "gS0WbQFX", "graphics": "GazfE6YB", "label": "p7INoy3p", "osVersion": "dbmlqhxu", "processor": "crAI6wwC", "ram": "0DrUgn4d", "soundCard": "Pz0REbRq"}, {"additionals": "A4vuplY7", "directXVersion": "akqKyWLI", "diskSpace": "gy6Ou58d", "graphics": "tfimdnUC", "label": "dAHEGiqj", "osVersion": "jyueWKCm", "processor": "QOPsJrW5", "ram": "0e9vUnk3", "soundCard": "A4ovkUUz"}, {"additionals": "fY8PmSYY", "directXVersion": "QWtgZgU9", "diskSpace": "7dCMz5lD", "graphics": "Wyg9vTpS", "label": "kzMyFT39", "osVersion": "FUdJmNrN", "processor": "5Js3BXL2", "ram": "kZ9ZS2LL", "soundCard": "iRbvsLQJ"}], "mVqXMGbh": [{"additionals": "XqYF8QzE", "directXVersion": "mGnMc0Pe", "diskSpace": "AMZTdRAM", "graphics": "gIgSqvuv", "label": "Q3xp6ubh", "osVersion": "Euvgbmpc", "processor": "ZcEP24oU", "ram": "i7KKtXtc", "soundCard": "6wXLBwVp"}, {"additionals": "TI9136Aj", "directXVersion": "a1g7ikcT", "diskSpace": "MUuMMy0j", "graphics": "CVRG0UMy", "label": "4crrqIF0", "osVersion": "LuRmDFTd", "processor": "zJ1e63Zq", "ram": "VLF1LsI2", "soundCard": "Nr9NUeqs"}, {"additionals": "pGECPZu5", "directXVersion": "nIzdXWUh", "diskSpace": "jvTMOHEV", "graphics": "QgifLm0t", "label": "uJudCwBE", "osVersion": "wQnMHoQl", "processor": "RCTa9c5M", "ram": "NOY2flqm", "soundCard": "4WTsnryx"}]}, "platforms": ["IOS", "MacOS", "MacOS"], "players": ["CrossPlatformMulti", "Coop", "Coop"], "primaryGenre": "RPG", "publisher": "flg9J1Pp", "releaseDate": "1997-01-31T00:00:00Z", "websiteUrl": "iVoOdrAR"}' \
    > test.out 2>&1
eval_tap $? 104 'UpdateApp' test.out

#- 105 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Hero9gsi' \
    --namespace $AB_NAMESPACE \
    --storeId 'qi349iMR' \
    > test.out 2>&1
eval_tap $? 105 'DisableItem' test.out

#- 106 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'f8uOlDbu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetItemDynamicData' test.out

#- 107 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Q3K0LfrW' \
    --namespace $AB_NAMESPACE \
    --storeId 'UWa8IvDb' \
    > test.out 2>&1
eval_tap $? 107 'EnableItem' test.out

#- 108 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'X9YnK40C' \
    --itemId 'yi9QHy1C' \
    --namespace $AB_NAMESPACE \
    --storeId 'Xeb4c7qG' \
    > test.out 2>&1
eval_tap $? 108 'FeatureItem' test.out

#- 109 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'kEFku8PQ' \
    --itemId 'bjoBOONY' \
    --namespace $AB_NAMESPACE \
    --storeId '4pjuBb6p' \
    > test.out 2>&1
eval_tap $? 109 'DefeatureItem' test.out

#- 110 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'EErBp1Te' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '0RjNGxv4' \
    --populateBundle 'false' \
    --region 'MOK436zQ' \
    --storeId 'sw0DKNKw' \
    > test.out 2>&1
eval_tap $? 110 'GetLocaleItem' test.out

#- 111 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '0djrZZgh' \
    --namespace $AB_NAMESPACE \
    --storeId 'UaXbWAOp' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 80, "comparison": "excludes", "name": "qqa8p9lH", "predicateType": "SeasonTierPredicate", "value": "2YdA0c43", "values": ["5j7n9MJY", "zwC4EweM", "DZTKWxJS"]}, {"anyOf": 60, "comparison": "isLessThan", "name": "704WqXK6", "predicateType": "SeasonTierPredicate", "value": "mVsya60Z", "values": ["5aLGOXiS", "sY7ojpCb", "LCHkwLbB"]}, {"anyOf": 79, "comparison": "isLessThan", "name": "3FG3uHrq", "predicateType": "SeasonPassPredicate", "value": "7CUxVOr3", "values": ["avZlzW8K", "JAnIyQ6e", "j9qR0fN1"]}]}, {"operator": "and", "predicates": [{"anyOf": 12, "comparison": "isNot", "name": "LBVzeCBO", "predicateType": "SeasonTierPredicate", "value": "wUOd8MQ7", "values": ["wDIskNxR", "uQWBhvB0", "u5m0W7EK"]}, {"anyOf": 81, "comparison": "isLessThan", "name": "kTpVrY73", "predicateType": "EntitlementPredicate", "value": "Fxx27JyN", "values": ["oNgxmioN", "P5Pngm5T", "q1QBe5gt"]}, {"anyOf": 71, "comparison": "isNot", "name": "c3ufyirK", "predicateType": "SeasonTierPredicate", "value": "piSFVb2t", "values": ["x8hD7Zya", "JGk0RjlE", "XlKHCl97"]}]}, {"operator": "and", "predicates": [{"anyOf": 70, "comparison": "isNot", "name": "aFgWv5A2", "predicateType": "EntitlementPredicate", "value": "WLlXBxhJ", "values": ["pPyI7BOt", "fO5FPqaI", "Wz1LnY9C"]}, {"anyOf": 61, "comparison": "includes", "name": "2O5jGFGf", "predicateType": "EntitlementPredicate", "value": "gJIHCeTI", "values": ["TaXpFLyG", "kHPIsjcz", "r5v2i3Wr"]}, {"anyOf": 53, "comparison": "isNot", "name": "fApuu0JC", "predicateType": "EntitlementPredicate", "value": "TbMoEwEh", "values": ["jjv88oVY", "uwun5KOQ", "wizzdSn8"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateItemPurchaseCondition' test.out

#- 112 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '1Qcnbnn5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "XdipeVNo"}' \
    > test.out 2>&1
eval_tap $? 112 'ReturnItem' test.out

#- 113 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'VSFdrgQG' \
    --offset '82' \
    --tag 'ffCtqhyo' \
    > test.out 2>&1
eval_tap $? 113 'QueryKeyGroups' test.out

#- 114 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6Fek8FTy", "name": "jNrkCD3P", "status": "ACTIVE", "tags": ["ZxfWjtvO", "3ODmxnUp", "uWQeZXVr"]}' \
    > test.out 2>&1
eval_tap $? 114 'CreateKeyGroup' test.out

#- 115 GetKeyGroupByBoothName
eval_tap 0 115 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 116 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'eRFpl5RP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroup' test.out

#- 117 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'URnMpkyA' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JChS3qTJ", "name": "xSqdAZvh", "status": "ACTIVE", "tags": ["IjF2P4Zq", "D5rZUmTd", "crLGmeiq"]}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateKeyGroup' test.out

#- 118 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'wiAfP90a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetKeyGroupDynamic' test.out

#- 119 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Z6HDgKY8' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '80' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 119 'ListKeys' test.out

#- 120 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '7PCHHzG5' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 120 'UploadKeys' test.out

#- 121 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'INd0O2Hr' \
    --limit '7' \
    --offset '66' \
    --orderNos '["UYNdeeWn", "lNTbUrF7", "mz5ltPp6"]' \
    --sortBy 'aufptD0o' \
    --startTime 'ckAnuElu' \
    --status 'REFUNDED' \
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
    --orderNo 'fo0lY4XW' \
    > test.out 2>&1
eval_tap $? 123 'GetOrder' test.out

#- 124 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vXeVwfG2' \
    --body '{"description": "h0DW0lmW"}' \
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
    --body '{"dryRun": true, "notifyUrl": "Y6R440Zh", "privateKey": "rp2j0GUo"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdatePaymentCallbackConfig' test.out

#- 127 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'qbHqbYra' \
    --externalId 'aMN8a5hK' \
    --limit '3' \
    --notificationSource 'WXPAY' \
    --notificationType 'n4NCzOcD' \
    --offset '57' \
    --paymentOrderNo 'Ata3vKBn' \
    --startDate 'ecXuTtZE' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 127 'QueryPaymentNotifications' test.out

#- 128 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'VeILlsiT' \
    --limit '74' \
    --offset '95' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentOrders' test.out

#- 129 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "YBmBj2aA", "currencyNamespace": "xmbRDGYJ", "customParameters": {"wRvvAekC": {}, "ogXRzWQh": {}, "bvbOT1vu": {}}, "description": "DMTqdTQe", "extOrderNo": "VxtU38Wb", "extUserId": "oFQxLCIn", "itemType": "OPTIONBOX", "language": "tHz_aC", "metadata": {"h1CEEyEz": "Cm1AFkOh", "whMu1v2A": "7hFe9CNs", "sZHm5SON": "nsTzjL94"}, "notifyUrl": "aSY8xCMj", "omitNotification": false, "platform": "otEHtjRl", "price": 11, "recurringPaymentOrderNo": "MThE5ESI", "region": "nZMzRfCv", "returnUrl": "ZtQPEUVj", "sandbox": false, "sku": "UGnxuHrR", "subscriptionId": "AkFZXUVZ", "targetNamespace": "2Zva5q45", "targetUserId": "ne8JTwAX", "title": "qj9VPSQ3"}' \
    > test.out 2>&1
eval_tap $? 129 'CreatePaymentOrderByDedicated' test.out

#- 130 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'DEUJ7a36' \
    > test.out 2>&1
eval_tap $? 130 'ListExtOrderNoByExtTxId' test.out

#- 131 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oECIkjT7' \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrder' test.out

#- 132 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Va2S0QXs' \
    --body '{"extTxId": "i5MA6SHk", "paymentMethod": "TK7HKLQa", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 132 'ChargePaymentOrder' test.out

#- 133 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'o0GEAztF' \
    --body '{"description": "w4QEX224"}' \
    > test.out 2>&1
eval_tap $? 133 'RefundPaymentOrderByDedicated' test.out

#- 134 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '41MOfQXJ' \
    --body '{"amount": 18, "currencyCode": "gyVDMcMz", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 87, "vat": 57}' \
    > test.out 2>&1
eval_tap $? 134 'SimulatePaymentOrderNotification' test.out

#- 135 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DjjF2btL' \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentOrderChargeStatus' test.out

#- 136 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 136 'GetPlatformWalletConfig' test.out

#- 137 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "Playstation", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdatePlatformWalletConfig' test.out

#- 138 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 138 'ResetPlatformWalletConfig' test.out

#- 139 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZoBZ3Olw", "eventTopic": "3xXJtatn", "maxAwarded": 21, "maxAwardedPerUser": 6, "namespaceExpression": "5ud4vBCn", "rewardCode": "cXKhOxNF", "rewardConditions": [{"condition": "zejBSZas", "conditionName": "dCBzjs8N", "eventName": "FFJiflxf", "rewardItems": [{"duration": 34, "itemId": "Vow2HTjY", "quantity": 42}, {"duration": 18, "itemId": "tifFLcPi", "quantity": 36}, {"duration": 4, "itemId": "cJ3wGMTP", "quantity": 49}]}, {"condition": "Lpk9BWII", "conditionName": "m9AyUZNL", "eventName": "Mmau7zZS", "rewardItems": [{"duration": 50, "itemId": "Ma2hTCtw", "quantity": 8}, {"duration": 100, "itemId": "YYBPjVW4", "quantity": 4}, {"duration": 10, "itemId": "V5nQ9ksU", "quantity": 2}]}, {"condition": "9aOuw4xn", "conditionName": "WgaBc5uA", "eventName": "XKWE4iOY", "rewardItems": [{"duration": 3, "itemId": "wCRLylUk", "quantity": 39}, {"duration": 64, "itemId": "6D7uDALf", "quantity": 72}, {"duration": 54, "itemId": "hgYReSsF", "quantity": 10}]}], "userIdExpression": "CUUg41GJ"}' \
    > test.out 2>&1
eval_tap $? 139 'CreateReward' test.out

#- 140 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'IcpSUbcT' \
    --limit '39' \
    --offset '62' \
    --sortBy '["rewardCode", "namespace:asc", "namespace"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'ImportRewards' test.out

#- 143 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'bCXgpQD5' \
    > test.out 2>&1
eval_tap $? 143 'GetReward' test.out

#- 144 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '9BLxKrlB' \
    --body '{"description": "y84EJ9vb", "eventTopic": "KolqA2WA", "maxAwarded": 75, "maxAwardedPerUser": 52, "namespaceExpression": "ZFwyX3Wq", "rewardCode": "qHmrbXzY", "rewardConditions": [{"condition": "xlvHMg6M", "conditionName": "UjPPViKx", "eventName": "xrk0S2hA", "rewardItems": [{"duration": 46, "itemId": "Hbu6Ze5M", "quantity": 65}, {"duration": 44, "itemId": "inH6VirA", "quantity": 3}, {"duration": 19, "itemId": "4yABwcPo", "quantity": 14}]}, {"condition": "46gJ6DWY", "conditionName": "oP5d3e8L", "eventName": "b9k06Sx4", "rewardItems": [{"duration": 32, "itemId": "PAQYW6Qn", "quantity": 59}, {"duration": 97, "itemId": "uRk4OxfG", "quantity": 100}, {"duration": 15, "itemId": "ACBSCm5r", "quantity": 60}]}, {"condition": "XWuIQ20f", "conditionName": "Y8R2zAyu", "eventName": "VOACnCCn", "rewardItems": [{"duration": 69, "itemId": "rleDpzqo", "quantity": 60}, {"duration": 41, "itemId": "n85Q3EqF", "quantity": 94}, {"duration": 30, "itemId": "EulOaZCi", "quantity": 30}]}], "userIdExpression": "XAQlTQFs"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateReward' test.out

#- 145 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'STFPW6qs' \
    > test.out 2>&1
eval_tap $? 145 'DeleteReward' test.out

#- 146 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'hoNq71ja' \
    --body '{"payload": {"v5MmuVsD": {}, "mWkLm5j6": {}, "Qdq74QGa": {}}}' \
    > test.out 2>&1
eval_tap $? 146 'CheckEventCondition' test.out

#- 147 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'pAvjGwWG' \
    --body '{"conditionName": "wbuEnf9V", "userId": "LOmVNVH0"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteRewardConditionRecord' test.out

#- 148 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'g4GxUhJa' \
    --limit '83' \
    --offset '19' \
    --start 'tgpXgusP' \
    --storeId '7Xj55OxP' \
    --viewId 'lQrkk9Nb' \
    > test.out 2>&1
eval_tap $? 148 'QuerySections' test.out

#- 149 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'oDomzUSJ' \
    --body '{"active": true, "displayOrder": 3, "endDate": "1993-07-09T00:00:00Z", "ext": {"RNMWMagN": {}, "RIoXcSNn": {}, "5xPHI8bA": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 23, "itemCount": 47, "rule": "SEQUENCE"}, "items": [{"id": "RpaYyDfR", "sku": "dWgEtlhD"}, {"id": "pY4jeUWQ", "sku": "INiNrbPt"}, {"id": "06j4zxhx", "sku": "Rf5xiCMj"}], "localizations": {"HTAByaQk": {"description": "nRVdoKqc", "localExt": {"XFFigm0s": {}, "J36SHaT1": {}, "ao2gtT0H": {}}, "longDescription": "rJTxISNk", "title": "0LuATFm1"}, "Gvm8Xwbg": {"description": "3pL35BO0", "localExt": {"p6qGEdkL": {}, "TH9kJj44": {}, "h5IhFod8": {}}, "longDescription": "ajUYJUHu", "title": "BWGfiX1G"}, "W8tLPeis": {"description": "yvg8ttPF", "localExt": {"PhIuycYY": {}, "0nHrNTTx": {}, "WQ19elEo": {}}, "longDescription": "ZMEpi9Yk", "title": "mNWcdrBn"}}, "name": "VTgthC1q", "rotationType": "CUSTOM", "startDate": "1978-09-27T00:00:00Z", "viewId": "3eeg5Wsk"}' \
    > test.out 2>&1
eval_tap $? 149 'CreateSection' test.out

#- 150 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '4JGwuRdb' \
    > test.out 2>&1
eval_tap $? 150 'PurgeExpiredSection' test.out

#- 151 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VuVqa290' \
    --storeId 'cgEH5UzW' \
    > test.out 2>&1
eval_tap $? 151 'GetSection' test.out

#- 152 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'YUX4xIJT' \
    --storeId 'XukvxXum' \
    --body '{"active": true, "displayOrder": 6, "endDate": "1991-03-23T00:00:00Z", "ext": {"5iTzQj4G": {}, "9p4PaQY9": {}, "owOwh71S": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 90, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "XrClH2H3", "sku": "z7fggR79"}, {"id": "AP1fTMdK", "sku": "dN1Eky21"}, {"id": "aTdxAAYr", "sku": "V2E4kWbZ"}], "localizations": {"FHQrs5RG": {"description": "z3g82sNY", "localExt": {"R6XEdbcO": {}, "I9Fwnf5g": {}, "opAhiwsp": {}}, "longDescription": "Zh0agPgi", "title": "CdxLu01R"}, "1qLWyO91": {"description": "KjozB9VP", "localExt": {"CIYLTkbX": {}, "u1NmFpql": {}, "Pfnh9cdq": {}}, "longDescription": "VZ7rs0Xr", "title": "6ao33blG"}, "urWh3n32": {"description": "cjQVfotV", "localExt": {"Br0nmOeR": {}, "0mRVp7ur": {}, "U1LsNMNk": {}}, "longDescription": "0uaF4OLs", "title": "1isyJQmx"}}, "name": "s5dQrCKX", "rotationType": "NONE", "startDate": "1986-03-16T00:00:00Z", "viewId": "h64zVPHf"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSection' test.out

#- 153 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'EIgK50Xs' \
    --storeId '9wKN4z0H' \
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
    --body '{"defaultLanguage": "FeAqtc9T", "defaultRegion": "w8aheUnY", "description": "1fYLFPuL", "supportedLanguages": ["YOR77yuE", "VFu18xSP", "7Z12d3Kg"], "supportedRegions": ["AJBojicp", "7muLQzIK", "LeNMAZfY"], "title": "McD8jSgh"}' \
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
    --storeId 'eG7raHWi' \
    > test.out 2>&1
eval_tap $? 161 'GetStore' test.out

#- 162 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tES15fOK' \
    --body '{"defaultLanguage": "Taupj7FG", "defaultRegion": "Nt7RMISX", "description": "0kZMOwbw", "supportedLanguages": ["d2jY21Bi", "c4WJnsLO", "SsXkFcb7"], "supportedRegions": ["CAvqE63V", "K391szGN", "8WelZv7n"], "title": "YYWyFokd"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateStore' test.out

#- 163 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cAKYt8r3' \
    > test.out 2>&1
eval_tap $? 163 'DeleteStore' test.out

#- 164 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'GBasECvT' \
    --action 'UPDATE' \
    --itemSku 'hLlC93hO' \
    --itemType 'CODE' \
    --limit '61' \
    --offset '60' \
    --selected 'false' \
    --sortBy '["createdAt", "createdAt:asc", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'pOs6ZTjW' \
    --updatedAtStart 'P1STPg1T' \
    > test.out 2>&1
eval_tap $? 164 'QueryChanges' test.out

#- 165 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'cBciqmYl' \
    > test.out 2>&1
eval_tap $? 165 'PublishAll' test.out

#- 166 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'DOaCfOAm' \
    > test.out 2>&1
eval_tap $? 166 'PublishSelected' test.out

#- 167 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'P5e0SN8g' \
    > test.out 2>&1
eval_tap $? 167 'SelectAllRecords' test.out

#- 168 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '2wgx0sVR' \
    --action 'CREATE' \
    --itemSku 'wga9vA1S' \
    --itemType 'BUNDLE' \
    --type 'CATEGORY' \
    --updatedAtEnd 'XqsANxKr' \
    --updatedAtStart 'jPfiRh4g' \
    > test.out 2>&1
eval_tap $? 168 'GetStatistic' test.out

#- 169 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'tlq0a4aO' \
    > test.out 2>&1
eval_tap $? 169 'UnselectAllRecords' test.out

#- 170 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'bU1J0weF' \
    --namespace $AB_NAMESPACE \
    --storeId 'CzIXCPs6' \
    > test.out 2>&1
eval_tap $? 170 'SelectRecord' test.out

#- 171 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'YfG1NUeU' \
    --namespace $AB_NAMESPACE \
    --storeId 'qTQIokJ7' \
    > test.out 2>&1
eval_tap $? 171 'UnselectRecord' test.out

#- 172 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nsYPRWKH' \
    --targetStoreId 'wd4NKiUT' \
    > test.out 2>&1
eval_tap $? 172 'CloneStore' test.out

#- 173 ExportStore
eval_tap 0 173 'ExportStore # SKIP deprecated' test.out

#- 174 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'afOaKv4e' \
    --limit '15' \
    --offset '20' \
    --sku 'LAqqYOPB' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'JfTCSQ8J' \
    > test.out 2>&1
eval_tap $? 174 'QuerySubscriptions' test.out

#- 175 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i5CifchA' \
    > test.out 2>&1
eval_tap $? 175 'RecurringChargeSubscription' test.out

#- 176 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fJ4MvgSh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'GetTicketDynamic' test.out

#- 177 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'oQ3YRiyJ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "4Nq2ohCL"}' \
    > test.out 2>&1
eval_tap $? 177 'DecreaseTicketSale' test.out

#- 178 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'RpANmjLA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetTicketBoothID' test.out

#- 179 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'FQXiehtV' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9, "orderNo": "JOshhVQ4"}' \
    > test.out 2>&1
eval_tap $? 179 'IncreaseTicketSale' test.out

#- 180 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'm1Y5d485' \
    --body '{"achievements": [{"id": "YH2fNgZx", "value": 12}, {"id": "F7PWPNTD", "value": 6}, {"id": "ON1Eftvz", "value": 93}], "steamUserId": "1v3sKsXe"}' \
    > test.out 2>&1
eval_tap $? 180 'UnlockSteamUserAchievement' test.out

#- 181 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vpXRE8OP' \
    --xboxUserId 'DX9WpQdu' \
    > test.out 2>&1
eval_tap $? 181 'GetXblUserAchievements' test.out

#- 182 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mKiEw9Fs' \
    --body '{"achievements": [{"id": "VANfGAoF", "percentComplete": 57}, {"id": "xW8YFiny", "percentComplete": 93}, {"id": "tIo0iklt", "percentComplete": 39}], "serviceConfigId": "dbSy8F3m", "titleId": "b8pkKMxF", "xboxUserId": "svyINWED"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateXblUserAchievement' test.out

#- 183 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'ftwHFZQC' \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeCampaign' test.out

#- 184 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TsUxn9IK' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeEntitlement' test.out

#- 185 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '1O1biM4j' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeFulfillment' test.out

#- 186 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'oD3RGokC' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeIntegration' test.out

#- 187 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wUp9JsRZ' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeOrder' test.out

#- 188 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'kW0M6x9h' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizePayment' test.out

#- 189 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'xsXjVK7R' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeSubscription' test.out

#- 190 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'qe7SfudP' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeWallet' test.out

#- 191 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tAiaKX13' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 191 'GetUserDLC' test.out

#- 192 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'GbprpC8P' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'DlDZbDFg' \
    --features '["znxAqtBc", "iQJMncHI", "hBZrkcJB"]' \
    --itemId '["86c41rGU", "ewcgZyK0", "GL10Ooll"]' \
    --limit '56' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlements' test.out

#- 193 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'zNlkWML3' \
    --body '[{"endDate": "1985-10-06T00:00:00Z", "grantedCode": "J62d730h", "itemId": "vTKaf3HF", "itemNamespace": "ruqBmUv5", "language": "Ozto_548", "quantity": 55, "region": "zPuPvBct", "source": "ACHIEVEMENT", "startDate": "1999-09-17T00:00:00Z", "storeId": "3hSm1zOW"}, {"endDate": "1999-10-10T00:00:00Z", "grantedCode": "TYhOHNMl", "itemId": "ETn7z4Ci", "itemNamespace": "H7UjCLRv", "language": "ya_un", "quantity": 7, "region": "79zfe4OF", "source": "REDEEM_CODE", "startDate": "1974-06-08T00:00:00Z", "storeId": "8EpLTvUz"}, {"endDate": "1987-04-11T00:00:00Z", "grantedCode": "KZhBH7W1", "itemId": "WzczOALg", "itemNamespace": "fWcXgR1k", "language": "RpTZ", "quantity": 61, "region": "625EZDU4", "source": "REWARD", "startDate": "1976-06-30T00:00:00Z", "storeId": "0ZFhJAIe"}]' \
    > test.out 2>&1
eval_tap $? 193 'GrantUserEntitlement' test.out

#- 194 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'taOlnNxB' \
    --activeOnly 'false' \
    --appId 'JdnQtdHF' \
    > test.out 2>&1
eval_tap $? 194 'GetUserAppEntitlementByAppId' test.out

#- 195 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VwMb0tzK' \
    --activeOnly 'true' \
    --limit '47' \
    --offset '17' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlementsByAppType' test.out

#- 196 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FlSehYrG' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '0UJwKyHb' \
    > test.out 2>&1
eval_tap $? 196 'GetUserEntitlementByItemId' test.out

#- 197 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vyAshjX8' \
    --ids '["obZwG165", "j6nHa1ij", "JLE9ypqP"]' \
    > test.out 2>&1
eval_tap $? 197 'GetUserActiveEntitlementsByItemIds' test.out

#- 198 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JfGFdDSN' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --sku '72mZJGH8' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementBySku' test.out

#- 199 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'DCYqZTOr' \
    --appIds '["6PXq7DSR", "FgonRkHZ", "AYHdeTej"]' \
    --itemIds '["WCc6TB7J", "CrkUXZux", "YgmWGmz6"]' \
    --skus '["jouEwz9e", "ymHNYWY9", "Jggw6O1O"]' \
    > test.out 2>&1
eval_tap $? 199 'ExistsAnyUserActiveEntitlement' test.out

#- 200 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'jSV22T9O' \
    --itemIds '["etQVeX13", "DSZoDInD", "r1tI9qbN"]' \
    > test.out 2>&1
eval_tap $? 200 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 201 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'm1la3HU4' \
    --appId '0Q515YgV' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 202 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'elUi6d2w' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '7ZlbfHH3' \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementOwnershipByItemId' test.out

#- 203 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'b4KgTBiV' \
    --ids '["R9Zc8YX4", "MhvLNzX3", "d9ER0Rot"]' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementOwnershipByItemIds' test.out

#- 204 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'mXl79AFX' \
    --entitlementClazz 'APP' \
    --sku 'DaHakG7x' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipBySku' test.out

#- 205 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'fcMQm2QB' \
    --entitlementIds '6OVfLuUo' \
    > test.out 2>&1
eval_tap $? 205 'RevokeUserEntitlements' test.out

#- 206 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'djZPE2A8' \
    --namespace $AB_NAMESPACE \
    --userId 'GWKRSBkW' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlement' test.out

#- 207 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '8rFSmQzG' \
    --namespace $AB_NAMESPACE \
    --userId '8RWoTE9A' \
    --body '{"endDate": "1986-09-12T00:00:00Z", "nullFieldList": ["NGJtgkEO", "OLeJImCG", "GWkN8kXh"], "startDate": "1983-04-05T00:00:00Z", "status": "ACTIVE", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 207 'UpdateUserEntitlement' test.out

#- 208 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'Bxfrif1X' \
    --namespace $AB_NAMESPACE \
    --userId 'uKQW2riI' \
    --body '{"options": ["ha6Fi1w6", "j23GAbl7", "7LD7I0qJ"], "requestId": "tcBqwxRG", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 208 'ConsumeUserEntitlement' test.out

#- 209 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '7nZA98If' \
    --namespace $AB_NAMESPACE \
    --userId 'g6anRX56' \
    > test.out 2>&1
eval_tap $? 209 'DisableUserEntitlement' test.out

#- 210 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '7ZEBfVyM' \
    --namespace $AB_NAMESPACE \
    --userId 'zDHs4Ays' \
    > test.out 2>&1
eval_tap $? 210 'EnableUserEntitlement' test.out

#- 211 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'rumjrYIF' \
    --namespace $AB_NAMESPACE \
    --userId '0y8yoK7x' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementHistories' test.out

#- 212 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'giYBfAvI' \
    --namespace $AB_NAMESPACE \
    --userId 'VDfsTgKG' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserEntitlement' test.out

#- 213 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8QhTYLLi' \
    --body '{"duration": 38, "endDate": "1987-08-19T00:00:00Z", "itemId": "pNy3nVoY", "itemSku": "fTL9yTIc", "language": "4caKKHzn", "order": {"currency": {"currencyCode": "ZXrRCiiG", "currencySymbol": "g6pPKX1q", "currencyType": "VIRTUAL", "decimals": 70, "namespace": "NqsG3XTG"}, "ext": {"nFiDQg9s": {}, "jPbvNV4O": {}, "zOPruWO3": {}}, "free": true}, "orderNo": "Rg4b5Nue", "origin": "IOS", "quantity": 60, "region": "SWmWFS2m", "source": "GIFT", "startDate": "1981-05-03T00:00:00Z", "storeId": "NHhXJ8qv"}' \
    > test.out 2>&1
eval_tap $? 213 'FulfillItem' test.out

#- 214 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'CZyXq8Lm' \
    --body '{"code": "oyu0pmgr", "language": "RSzJ", "region": "MMS5hHIL"}' \
    > test.out 2>&1
eval_tap $? 214 'RedeemCode' test.out

#- 215 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'vpYp6ofS' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "Z2ITeGoI", "namespace": "lgxzl9S8"}, "item": {"itemId": "4u8K0w9z", "itemSku": "zEPkAGRU", "itemType": "TuNqUDEo"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "BIx5AhBi", "namespace": "eb4AfVwa"}, "item": {"itemId": "TJbQeNzS", "itemSku": "orkhvFg1", "itemType": "nDbhxsIq"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "dSNsYuEu", "namespace": "nracBrJV"}, "item": {"itemId": "olu9BAIg", "itemSku": "oJXD9aHH", "itemType": "geJHgQBp"}, "quantity": 39, "type": "CURRENCY"}], "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillRewards' test.out

#- 216 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'juLJKYKw' \
    --endTime 'iEZRV6bP' \
    --limit '53' \
    --offset '89' \
    --productId 'tzOBMl95' \
    --startTime 'E71irSzd' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 216 'QueryUserIAPOrders' test.out

#- 217 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WK9GuEtm' \
    > test.out 2>&1
eval_tap $? 217 'QueryAllUserIAPOrders' test.out

#- 218 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'EOG9639t' \
    --endTime 'APWiZlSB' \
    --limit '95' \
    --offset '49' \
    --startTime 'fBGmiH0W' \
    --status 'PENDING' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPConsumeHistory' test.out

#- 219 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'KwZhiwm2' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "KEp-892", "productId": "wweOLcZN", "region": "qKPxi4nn", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 219 'MockFulfillIAPItem' test.out

#- 220 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WoDqyZzb' \
    --itemId 'tRtmTfDS' \
    --limit '72' \
    --offset '17' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserOrders' test.out

#- 221 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QMA3NkAy' \
    --body '{"currencyCode": "btc1bd7T", "currencyNamespace": "1zpNBjXy", "discountedPrice": 50, "ext": {"5umuv6mH": {}, "vGPtesBJ": {}, "Kb6AFb8S": {}}, "itemId": "3z5U7qdZ", "language": "g1xF2zEr", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 34, "quantity": 91, "region": "oIa4kiQK", "returnUrl": "7VhQsB48", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 221 'AdminCreateUserOrder' test.out

#- 222 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'x5wZREsD' \
    --itemId 'yJpRImbW' \
    > test.out 2>&1
eval_tap $? 222 'CountOfPurchasedItem' test.out

#- 223 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fMscI72E' \
    --userId 'gtLz7nSi' \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrder' test.out

#- 224 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'qmMcksCm' \
    --userId 'VuBQ68JU' \
    --body '{"status": "REFUND_FAILED", "statusReason": "iIEINKsW"}' \
    > test.out 2>&1
eval_tap $? 224 'UpdateUserOrderStatus' test.out

#- 225 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8kMDZ4ke' \
    --userId 'V45fv8gt' \
    > test.out 2>&1
eval_tap $? 225 'FulfillUserOrder' test.out

#- 226 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '6d7s5qva' \
    --userId 'JcR5I1wO' \
    > test.out 2>&1
eval_tap $? 226 'GetUserOrderGrant' test.out

#- 227 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'IsvuFQoP' \
    --userId 'bcU2biNK' \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrderHistories' test.out

#- 228 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'rr1FVIIm' \
    --userId 'IEEdp3bz' \
    --body '{"additionalData": {"cardSummary": "UcHUXImK"}, "authorisedTime": "1989-06-13T00:00:00Z", "chargebackReversedTime": "1974-05-28T00:00:00Z", "chargebackTime": "1971-05-03T00:00:00Z", "chargedTime": "1974-10-31T00:00:00Z", "createdTime": "1991-05-24T00:00:00Z", "currency": {"currencyCode": "K7q1BePy", "currencySymbol": "aajdJEI7", "currencyType": "VIRTUAL", "decimals": 78, "namespace": "nYnOYY1i"}, "customParameters": {"AWtfVUav": {}, "YrlJLtjt": {}, "RjqSaNrM": {}}, "extOrderNo": "Mj4hWzE5", "extTxId": "jtKXunHF", "extUserId": "1raB38gi", "issuedAt": "1998-06-14T00:00:00Z", "metadata": {"9GuwtqYw": "MfXdm6yA", "K7RGiEQe": "s65Ircl4", "6Z3a5mb0": "TMPANktM"}, "namespace": "0f72yiqg", "nonceStr": "dB7066vM", "paymentMethod": "NqQYF3qy", "paymentMethodFee": 84, "paymentOrderNo": "GNsh77fL", "paymentProvider": "STRIPE", "paymentProviderFee": 32, "paymentStationUrl": "Cnfa9J4t", "price": 21, "refundedTime": "1976-10-12T00:00:00Z", "salesTax": 62, "sandbox": false, "sku": "XqXIiPWs", "status": "AUTHORISE_FAILED", "statusReason": "7GDBGA13", "subscriptionId": "oCqGFreM", "subtotalPrice": 13, "targetNamespace": "C7nfQsz4", "targetUserId": "IvTuKxEC", "tax": 65, "totalPrice": 74, "totalTax": 7, "txEndTime": "1981-07-01T00:00:00Z", "type": "SFyOpZCw", "userId": "OllNsDUa", "vat": 11}' \
    > test.out 2>&1
eval_tap $? 228 'ProcessUserOrderNotification' test.out

#- 229 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZsM9z47T' \
    --userId 'FzkhWuhM' \
    > test.out 2>&1
eval_tap $? 229 'DownloadUserOrderReceipt' test.out

#- 230 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mvtxhEfg' \
    --body '{"currencyCode": "4EqykBuP", "currencyNamespace": "M4ge7TwG", "customParameters": {"ANl0wCxb": {}, "4CxpwErw": {}, "2x2pSvbS": {}}, "description": "XyTgmuEw", "extOrderNo": "UmXcjX8K", "extUserId": "C0fCiVDN", "itemType": "LOOTBOX", "language": "BNw-xemy-019", "metadata": {"zBGhGR1m": "Rb3hD5Mq", "QzBHPEWG": "t11WiafA", "HrN0wjhK": "yVkG3xKq"}, "notifyUrl": "MSy7JLkZ", "omitNotification": false, "platform": "mw9SHJjV", "price": 99, "recurringPaymentOrderNo": "l3ZdCwuS", "region": "kjckTKz1", "returnUrl": "3JQwCojW", "sandbox": false, "sku": "IVTjCfKo", "subscriptionId": "uXNFrlkT", "title": "LvnaGZGq"}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserPaymentOrder' test.out

#- 231 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rPCkkzmY' \
    --userId '1Aeo1DXj' \
    --body '{"description": "04NKa8Og"}' \
    > test.out 2>&1
eval_tap $? 231 'RefundUserPaymentOrder' test.out

#- 232 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'JzeIO6S7' \
    --body '{"code": "Z2yYGPHS", "orderNo": "V5dJSDbK"}' \
    > test.out 2>&1
eval_tap $? 232 'ApplyUserRedemption' test.out

#- 233 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'JAAVrYAA' \
    --chargeStatus 'CHARGED' \
    --itemId '7cyY2kyM' \
    --limit '54' \
    --offset '90' \
    --sku 't2smSiSy' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserSubscriptions' test.out

#- 234 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'uZOLATsc' \
    --excludeSystem 'false' \
    --limit '80' \
    --offset '70' \
    --subscriptionId 'at0ZHuMD' \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscriptionActivities' test.out

#- 235 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fe8A5U9U' \
    --body '{"grantDays": 42, "itemId": "Nu6R6vOo", "language": "viSWJ8GQ", "reason": "RKZYOrnX", "region": "EaF8fNi6", "source": "PvdLa0hO"}' \
    > test.out 2>&1
eval_tap $? 235 'PlatformSubscribeSubscription' test.out

#- 236 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3UC8Bi9G' \
    --itemId '7JbU882S' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 237 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tkyGO2Kk' \
    --userId 'im4WjA5I' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscription' test.out

#- 238 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Y59WfLfY' \
    --userId 'ofwsXkmR' \
    > test.out 2>&1
eval_tap $? 238 'DeleteUserSubscription' test.out

#- 239 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kzLZv1AF' \
    --userId 'ra0Nmnsi' \
    --force 'true' \
    --body '{"immediate": true, "reason": "px4Co0eM"}' \
    > test.out 2>&1
eval_tap $? 239 'CancelSubscription' test.out

#- 240 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gl4dPpm0' \
    --userId 'xqUBktFz' \
    --body '{"grantDays": 38, "reason": "94Q5osBQ"}' \
    > test.out 2>&1
eval_tap $? 240 'GrantDaysToSubscription' test.out

#- 241 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iAM9rmdk' \
    --userId 'fTGaUFLK' \
    --excludeFree 'true' \
    --limit '33' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionBillingHistories' test.out

#- 242 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XGyqaCqW' \
    --userId 'JJ8Npc0y' \
    --body '{"additionalData": {"cardSummary": "sHwQdHCS"}, "authorisedTime": "1971-04-19T00:00:00Z", "chargebackReversedTime": "1981-04-14T00:00:00Z", "chargebackTime": "1989-01-31T00:00:00Z", "chargedTime": "1972-02-20T00:00:00Z", "createdTime": "1977-03-27T00:00:00Z", "currency": {"currencyCode": "PxalnxAi", "currencySymbol": "ZofJaddy", "currencyType": "REAL", "decimals": 18, "namespace": "n3Z960oE"}, "customParameters": {"fEMlVAn5": {}, "hQTJLXO2": {}, "rHgjWtsq": {}}, "extOrderNo": "rCH05D5Z", "extTxId": "s6OyXDja", "extUserId": "sYFNQbG8", "issuedAt": "1974-04-15T00:00:00Z", "metadata": {"yc0iB0iD": "dycxY4GV", "ViCr6QvY": "Aa5vciYQ", "QNp5ulCj": "jEbh16ON"}, "namespace": "161NdXRC", "nonceStr": "5yrIW3AK", "paymentMethod": "e4101PCx", "paymentMethodFee": 64, "paymentOrderNo": "yvN0xECR", "paymentProvider": "WXPAY", "paymentProviderFee": 16, "paymentStationUrl": "ATh1qkpn", "price": 32, "refundedTime": "1991-12-26T00:00:00Z", "salesTax": 92, "sandbox": false, "sku": "YHYOfZdk", "status": "AUTHORISE_FAILED", "statusReason": "upY44gO2", "subscriptionId": "EFCu2lNm", "subtotalPrice": 86, "targetNamespace": "CW7arwMn", "targetUserId": "Q64IiddI", "tax": 38, "totalPrice": 49, "totalTax": 24, "txEndTime": "1999-01-07T00:00:00Z", "type": "y3iBUwMk", "userId": "go71cwsd", "vat": 79}' \
    > test.out 2>&1
eval_tap $? 242 'ProcessUserSubscriptionNotification' test.out

#- 243 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'hZdeFuCK' \
    --namespace $AB_NAMESPACE \
    --userId 'GGh7bqaE' \
    --body '{"count": 65, "orderNo": "jNPXWwaR"}' \
    > test.out 2>&1
eval_tap $? 243 'AcquireUserTicket' test.out

#- 244 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'EONpFDUg' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserCurrencyWallets' test.out

#- 245 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'CmPcJokB' \
    --namespace $AB_NAMESPACE \
    --userId 'ua8xEmlC' \
    --limit '77' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 245 'ListUserCurrencyTransactions' test.out

#- 246 CheckWallet
eval_tap 0 246 'CheckWallet # SKIP deprecated' test.out

#- 247 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'FXEnQNa3' \
    --namespace $AB_NAMESPACE \
    --userId 'STAkgD17' \
    --body '{"amount": 83, "expireAt": "1984-04-29T00:00:00Z", "origin": "Xbox", "reason": "UYzEMy1H", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 247 'CreditUserWallet' test.out

#- 248 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'nQUoxPfE' \
    --namespace $AB_NAMESPACE \
    --userId 'rwBQImwi' \
    --body '{"amount": 5, "walletPlatform": "Steam"}' \
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
    --storeId '4WF8Y8RU' \
    > test.out 2>&1
eval_tap $? 254 'ListViews' test.out

#- 255 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'KA1fDIkQ' \
    --body '{"displayOrder": 49, "localizations": {"FWrQVE0k": {"description": "cLJxDRM9", "localExt": {"0bIe3QUn": {}, "obtAol5x": {}, "9e8IrMTi": {}}, "longDescription": "BV6gkFT6", "title": "nWnEVZbl"}, "gQ0ZagXt": {"description": "Mdq2R6w1", "localExt": {"tIj5DGrK": {}, "K9qv7Glk": {}, "lIe8cVil": {}}, "longDescription": "jIIxAw0Z", "title": "MQzw4QEN"}, "2gGaPNSk": {"description": "c1LmEViT", "localExt": {"K5M3Nh0r": {}, "QQpMztyb": {}, "KiY0mCkl": {}}, "longDescription": "uVjNaRLM", "title": "udQaKAcZ"}}, "name": "s1FkfFU8"}' \
    > test.out 2>&1
eval_tap $? 255 'CreateView' test.out

#- 256 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'wG9S4o0N' \
    --storeId 'PkOeOs5V' \
    > test.out 2>&1
eval_tap $? 256 'GetView' test.out

#- 257 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '2fNZ0kTw' \
    --storeId 'K2PegQcy' \
    --body '{"displayOrder": 66, "localizations": {"PAesV2M6": {"description": "l9wop78Q", "localExt": {"cpN6uT2f": {}, "EyyHuDE8": {}, "MiRwGDK8": {}}, "longDescription": "9yOAOUnW", "title": "FimW1J02"}, "AyQBuOuf": {"description": "PBLuUkvp", "localExt": {"hgNRdq6V": {}, "EzSiIF6G": {}, "ceg1WoYN": {}}, "longDescription": "Qg9iN1hT", "title": "h7bsoLBu"}, "nI57CE69": {"description": "FMZoaey6", "localExt": {"UqJJ5wB6": {}, "f5YdKF2q": {}, "dUnYfDM7": {}}, "longDescription": "ZMGjZAx6", "title": "x3mmGWmv"}}, "name": "IYfNqBOk"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateView' test.out

#- 258 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'd2MBc39d' \
    --storeId 'hkf5TtlT' \
    > test.out 2>&1
eval_tap $? 258 'DeleteView' test.out

#- 259 QueryWallets
eval_tap 0 259 'QueryWallets # SKIP deprecated' test.out

#- 260 GetWallet
eval_tap 0 260 'GetWallet # SKIP deprecated' test.out

#- 261 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'Ve1CHcWM' \
    --end 'QCI0kYal' \
    --start 'yOb0Gxs1' \
    > test.out 2>&1
eval_tap $? 261 'SyncOrders' test.out

#- 262 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["BG5CkuxI", "tfFFPr9H", "o4ywVrrY"], "apiKey": "3ZEHLKLB", "authoriseAsCapture": false, "blockedPaymentMethods": ["5n9KqdvL", "GOb0BRH8", "eDY70DbE"], "clientKey": "FgXBDXtH", "dropInSettings": "ZM3O5FbW", "liveEndpointUrlPrefix": "Msez2SNP", "merchantAccount": "jOak4Y4f", "notificationHmacKey": "2LZ2vdAw", "notificationPassword": "9SBB5Phz", "notificationUsername": "h1qxzo05", "returnUrl": "podegGGA", "settings": "YgMuiV1m"}' \
    > test.out 2>&1
eval_tap $? 262 'TestAdyenConfig' test.out

#- 263 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "Oc4lYE8d", "privateKey": "hx1RnrXP", "publicKey": "YZMA5XEv", "returnUrl": "vHg2tuvn"}' \
    > test.out 2>&1
eval_tap $? 263 'TestAliPayConfig' test.out

#- 264 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "FcMX6rus", "secretKey": "s3OVwT2O"}' \
    > test.out 2>&1
eval_tap $? 264 'TestCheckoutConfig' test.out

#- 265 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'nVSjRa5u' \
    --region 'bGJbYjVc' \
    > test.out 2>&1
eval_tap $? 265 'DebugMatchedPaymentMerchantConfig' test.out

#- 266 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "FYmC6YSF", "clientSecret": "C6UuGFtz", "returnUrl": "pFf4WCDb", "webHookId": "s3AEo6fO"}' \
    > test.out 2>&1
eval_tap $? 266 'TestPayPalConfig' test.out

#- 267 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["vcyD1w2M", "xdaXJZmj", "GClu7LNN"], "publishableKey": "gkUAgNys", "secretKey": "cokKtqTP", "webhookSecret": "2Spkw8dJ"}' \
    > test.out 2>&1
eval_tap $? 267 'TestStripeConfig' test.out

#- 268 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "FDhltqwx", "key": "qsqk1vSP", "mchid": "R2PF0V26", "returnUrl": "zzPLTWPK"}' \
    > test.out 2>&1
eval_tap $? 268 'TestWxPayConfig' test.out

#- 269 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "7ahVcjhl", "flowCompletionUrl": "81aRUDm9", "merchantId": 29, "projectId": 38, "projectSecretKey": "nFZEZ3P0"}' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfig' test.out

#- 270 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'qfu3rtfY' \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentMerchantConfig' test.out

#- 271 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'N48VHTwX' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["vHpQabRF", "nbSCQ5N8", "KUsnJY2W"], "apiKey": "tT4slZwG", "authoriseAsCapture": false, "blockedPaymentMethods": ["DgiANong", "JZfYfBYE", "ji2QOkkP"], "clientKey": "KAg9bezJ", "dropInSettings": "RQg1MsA7", "liveEndpointUrlPrefix": "sV1A5uAs", "merchantAccount": "0TzBxxFm", "notificationHmacKey": "pEwlij4C", "notificationPassword": "KYkwr3sO", "notificationUsername": "pvOmcwz4", "returnUrl": "6vinnYD8", "settings": "YPH0dDOQ"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateAdyenConfig' test.out

#- 272 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'p8SGBzvR' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 272 'TestAdyenConfigById' test.out

#- 273 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'I0VEgU6h' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "ZUwpt9kG", "privateKey": "6A3vY3wb", "publicKey": "DcMKIvJN", "returnUrl": "DDgIJawW"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateAliPayConfig' test.out

#- 274 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'hcDOAUQl' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 274 'TestAliPayConfigById' test.out

#- 275 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'RRTwX4zU' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "swMZ8etW", "secretKey": "QSv3wzXZ"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateCheckoutConfig' test.out

#- 276 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'SY30ElpF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 276 'TestCheckoutConfigById' test.out

#- 277 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CmnoaaL0' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "pVE8qHma", "clientSecret": "0T0FbtJU", "returnUrl": "yqInNTtp", "webHookId": "jRbu64lw"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdatePayPalConfig' test.out

#- 278 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '4PR3tt1p' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 278 'TestPayPalConfigById' test.out

#- 279 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'pxeJfcAA' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["vWxsuP0p", "44NLfzcX", "ITyyzrBl"], "publishableKey": "5DybaLAg", "secretKey": "4BmxDT9A", "webhookSecret": "0zWltYfC"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateStripeConfig' test.out

#- 280 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'r0c1OdsM' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 280 'TestStripeConfigById' test.out

#- 281 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ePXCGlC1' \
    --validate 'false' \
    --body '{"appId": "NU13qp0T", "key": "HFI1Uh04", "mchid": "BzTMMEu9", "returnUrl": "THlKIO6M"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdateWxPayConfig' test.out

#- 282 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'cBJ9Jc1N' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 282 'UpdateWxPayConfigCert' test.out

#- 283 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'B2KN3Oa3' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfigById' test.out

#- 284 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'UVHLHeNP' \
    --validate 'false' \
    --body '{"apiKey": "K781UrlV", "flowCompletionUrl": "NKBCNkL5", "merchantId": 71, "projectId": 47, "projectSecretKey": "mQrHNeTq"}' \
    > test.out 2>&1
eval_tap $? 284 'UpdateXsollaConfig' test.out

#- 285 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '6bsfM1vp' \
    > test.out 2>&1
eval_tap $? 285 'TestXsollaConfigById' test.out

#- 286 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'LTz0idfa' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateXsollaUIConfig' test.out

#- 287 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '23' \
    --namespace 'VnSb5MGZ' \
    --offset '32' \
    --region 'UiqxSlkK' \
    > test.out 2>&1
eval_tap $? 287 'QueryPaymentProviderConfig' test.out

#- 288 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "yieQ1bz6", "region": "xdSYwAXK", "sandboxTaxJarApiToken": "hBrQN5cs", "specials": ["STRIPE", "WALLET", "ADYEN"], "taxJarApiToken": "QWvsDTUj", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 288 'CreatePaymentProviderConfig' test.out

#- 289 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 289 'GetAggregatePaymentProviders' test.out

#- 290 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'dkRfuC69' \
    --region 'HuQVSlxW' \
    > test.out 2>&1
eval_tap $? 290 'DebugMatchedPaymentProviderConfig' test.out

#- 291 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 291 'GetSpecialPaymentProviders' test.out

#- 292 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'L4sNYn1C' \
    --body '{"aggregate": "XSOLLA", "namespace": "yGrrskY7", "region": "if0CIIRI", "sandboxTaxJarApiToken": "k0iIS75k", "specials": ["XSOLLA", "XSOLLA", "ALIPAY"], "taxJarApiToken": "AvoHOmU0", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentProviderConfig' test.out

#- 293 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'GWBJLOw4' \
    > test.out 2>&1
eval_tap $? 293 'DeletePaymentProviderConfig' test.out

#- 294 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxConfig' test.out

#- 295 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "x4FuBdje", "taxJarApiToken": "pgrR5Xav", "taxJarEnabled": false, "taxJarProductCodesMapping": {"5mTkit79": "rKbUN0F5", "XifTjvHa": "1vJqKZ3b", "SFlt2I84": "DOOh0OwP"}}' \
    > test.out 2>&1
eval_tap $? 295 'UpdatePaymentTaxConfig' test.out

#- 296 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'EDXt0do3' \
    --end '3rsO3MyJ' \
    --start '4gB6JXEv' \
    > test.out 2>&1
eval_tap $? 296 'SyncPaymentOrders' test.out

#- 297 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '4stAjm9q' \
    --storeId '5YnDRIGE' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRootCategories' test.out

#- 298 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'WYj3gVoM' \
    --storeId '0s1evVr3' \
    > test.out 2>&1
eval_tap $? 298 'DownloadCategories' test.out

#- 299 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '3t83gl2t' \
    --namespace $AB_NAMESPACE \
    --language 'D70ixKvm' \
    --storeId 'Su6FS91G' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetCategory' test.out

#- 300 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'PhtNVFDW' \
    --namespace $AB_NAMESPACE \
    --language 'Bdf1Se6p' \
    --storeId 'C4fdfS9r' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetChildCategories' test.out

#- 301 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'W6ZJxcv9' \
    --namespace $AB_NAMESPACE \
    --language 'BZi5DmtO' \
    --storeId '1SczuiNq' \
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
    --language 'p70BCdQ6' \
    --region 'g9Rs5NjM' \
    --storeId 'DICoAcNH' \
    --appId '1c47H4BD' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetItemByAppId' test.out

#- 304 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'LVZlRr5n' \
    --categoryPath 'voIvGoiF' \
    --features 'xNOMa53D' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --language '3CZfAW01' \
    --limit '0' \
    --offset '98' \
    --region 'oed3ROW8' \
    --sortBy '["displayOrder:desc", "displayOrder", "updatedAt"]' \
    --storeId 'YUt2k4ct' \
    --tags 'o2REOHpO' \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryItems' test.out

#- 305 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'TeGHHiKD' \
    --region 'fGtqmsnS' \
    --storeId 'e8fXJtTY' \
    --sku 'qwiezEW3' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetItemBySku' test.out

#- 306 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'yXQ3Vsku' \
    --region 'euG4oTv4' \
    --storeId 'cBudeFpv' \
    --itemIds 'gMms3fxq' \
    > test.out 2>&1
eval_tap $? 306 'PublicBulkGetItems' test.out

#- 307 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["5reJ8h5k", "sYUPKsca", "wBv7zCZI"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicValidateItemPurchaseCondition' test.out

#- 308 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'EXTENSION' \
    --limit '79' \
    --offset '50' \
    --region '9xkPQ8lb' \
    --storeId 'zEH37iqM' \
    --keyword 'KqGIamKn' \
    --language 'NhNJQNcO' \
    > test.out 2>&1
eval_tap $? 308 'PublicSearchItems' test.out

#- 309 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '9YDiF8Zg' \
    --namespace $AB_NAMESPACE \
    --language 'VU0faT1l' \
    --region '8xyjQ3xv' \
    --storeId 'yyqnfD0e' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetApp' test.out

#- 310 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '0QF0zomX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemDynamicData' test.out

#- 311 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'LSO8zl2C' \
    --namespace $AB_NAMESPACE \
    --language 'vwnaA3M5' \
    --populateBundle 'true' \
    --region 'PHEVsPyl' \
    --storeId 'g5irPFnQ' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetItem' test.out

#- 312 GetPaymentCustomization
eval_tap 0 312 'GetPaymentCustomization # SKIP deprecated' test.out

#- 313 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "lOCG8ePz", "paymentProvider": "STRIPE", "returnUrl": "4ZOkqVB4", "ui": "RxEK4Cco", "zipCode": "LcodTazZ"}' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentUrl' test.out

#- 314 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6m2YPraN' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetPaymentMethods' test.out

#- 315 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IIs4Qlyv' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUnpaidPaymentOrder' test.out

#- 316 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1O6kJJnK' \
    --paymentProvider 'WXPAY' \
    --zipCode 'eqLqMpwa' \
    --body '{"token": "VnuR1OZj"}' \
    > test.out 2>&1
eval_tap $? 316 'Pay' test.out

#- 317 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'o1pSKEAQ' \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckPaymentOrderPaidStatus' test.out

#- 318 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region 'jRPDNxh2' \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentPublicConfig' test.out

#- 319 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'n97h13wk' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetQRCode' test.out

#- 320 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '2CMdXQj6' \
    --foreinginvoice 'f59E831K' \
    --invoiceId '2MWXkVif' \
    --payload 'Ll1mnhqD' \
    --redirectResult 'j06vi7kD' \
    --resultCode 'OvulsSuA' \
    --sessionId 'Zxgz5fIH' \
    --status 'XIeKL0j0' \
    --token 'Jn2lc0RP' \
    --type 'VJMk5TPX' \
    --userId 'hMYQxZXc' \
    --orderNo 'G8ugyHWD' \
    --paymentOrderNo 'LEJmHdVa' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'q0sUVf3x' \
    > test.out 2>&1
eval_tap $? 320 'PublicNormalizePaymentReturnUrl' test.out

#- 321 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'pmZ1kfE4' \
    --paymentOrderNo 'hYrbdIle' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 321 'GetPaymentTaxValue' test.out

#- 322 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'Cg9V82L4' \
    > test.out 2>&1
eval_tap $? 322 'GetRewardByCode' test.out

#- 323 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Qe0PXP6u' \
    --limit '29' \
    --offset '73' \
    --sortBy '["rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 323 'QueryRewards1' test.out

#- 324 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'uFBYsKRV' \
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
    --appIds '["FqCW46Wn", "MzRDLlLR", "w8SZeDgW"]' \
    --itemIds '["OeUOnedZ", "ltjyQTXl", "QiC8rG4f"]' \
    --skus '["fZhSZ62v", "MvwxrcOV", "r0JiUbRh"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyMyActiveEntitlement' test.out

#- 327 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'fjFVniaW' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'WZkhAINr' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 329 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'flWdSEd8' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 330 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["LoV5ic3X", "PSMnmoAn", "9gDodoDr"]' \
    --itemIds '["WGW8AIje", "fP7rWz5Q", "YWeFNSiw"]' \
    --skus '["OaqWboJP", "LygnxbG9", "fDps2H5w"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetEntitlementOwnershipToken' test.out

#- 331 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '1fKwFR4G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyWallet' test.out

#- 332 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YQiN4bic' \
    --body '{"epicGamesJwtToken": "QLRZqn1U"}' \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGameDLC' test.out

#- 333 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'LUxNLmev' \
    --body '{"serviceLabel": 49}' \
    > test.out 2>&1
eval_tap $? 333 'PublicSyncPsnDlcInventory' test.out

#- 334 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '2FxWfoRq' \
    --body '{"serviceLabels": [8, 56, 61]}' \
    > test.out 2>&1
eval_tap $? 334 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 335 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'R72dnjPr' \
    --body '{"appId": "lXHbV1Zz", "steamId": "5ZPBEKFP"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncSteamDLC' test.out

#- 336 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YeSIMOQJ' \
    --body '{"xstsToken": "KVfdI4rW"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxDLC' test.out

#- 337 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'r3sMBwlA' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'eBQTpcO8' \
    --features '["KYGUp6QP", "89gMAulz", "2PwLR8yo"]' \
    --itemId '["e0lZoyPP", "uStVneM0", "O1kFugqs"]' \
    --limit '58' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserEntitlements' test.out

#- 338 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Sjft5BID' \
    --appId 'v9j37Qmt' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserAppEntitlementByAppId' test.out

#- 339 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6b0WMQdr' \
    --limit '35' \
    --offset '17' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserEntitlementsByAppType' test.out

#- 340 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jXQOhBxH' \
    --entitlementClazz 'CODE' \
    --itemId 'B4aTIlCF' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserEntitlementByItemId' test.out

#- 341 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '43V1AIt0' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'nXFXx4xj' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementBySku' test.out

#- 342 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZbCqZaTq' \
    --appIds '["f1Bey2JB", "dmepgyTe", "Gy1h6Gkq"]' \
    --itemIds '["hhmNiVU6", "ljMUUry5", "v6L88GsF"]' \
    --skus '["aIGYDcHN", "HKznSRMq", "IPkrFX4C"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyUserActiveEntitlement' test.out

#- 343 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MfWL2OE4' \
    --appId '7PnSvhcr' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vmYwyuqI' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'Lztnk9PH' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 345 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MEanxyUY' \
    --ids '["CJYpHy1V", "mHQInut5", "XT1J0r1l"]' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 346 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'h9Z2vOJk' \
    --entitlementClazz 'MEDIA' \
    --sku 'OZiOwPa2' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 347 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'gzhc4v42' \
    --namespace $AB_NAMESPACE \
    --userId 'vUpJRQff' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlement' test.out

#- 348 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'fDpbAq8H' \
    --namespace $AB_NAMESPACE \
    --userId 'JCq4xLkz' \
    --body '{"options": ["X9BbAEda", "MdUEFreM", "C3LaQnW1"], "requestId": "woBGusJ3", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 348 'PublicConsumeUserEntitlement' test.out

#- 349 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'PnNn9HpQ' \
    --body '{"code": "0SW4ryxZ", "language": "UnF-Nwlu-463", "region": "IOE4zlF1"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicRedeemCode' test.out

#- 350 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5J7jRGGF' \
    --body '{"excludeOldTransactions": true, "language": "XkI_687", "productId": "e0kWNPzK", "receiptData": "iXOx846N", "region": "5kW5nHdo", "transactionId": "X1CTPrDc"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicFulfillAppleIAPItem' test.out

#- 351 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'K4mNQLcN' \
    --body '{"epicGamesJwtToken": "G4zvf931"}' \
    > test.out 2>&1
eval_tap $? 351 'SyncEpicGamesInventory' test.out

#- 352 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'oZX7v6pe' \
    --body '{"autoAck": false, "language": "Jahv-br", "orderId": "A18Nt1uq", "packageName": "YPDAITjX", "productId": "zbY2olaq", "purchaseTime": 20, "purchaseToken": "AVH4s0uw", "region": "ZafO6gkm"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicFulfillGoogleIAPItem' test.out

#- 353 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'By9Pm7f3' \
    --body '{"currencyCode": "EGLbhZFz", "price": 0.29073640802165457, "productId": "lIIpduu6", "serviceLabel": 56}' \
    > test.out 2>&1
eval_tap $? 353 'PublicReconcilePlayStationStore' test.out

#- 354 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ZnySNmrE' \
    --body '{"currencyCode": "JUxBKUjV", "price": 0.052822101350324724, "productId": "dOpfP5zC", "serviceLabels": [18, 28, 62]}' \
    > test.out 2>&1
eval_tap $? 354 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 355 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SeD4XwXQ' \
    --body '{"appId": "onaTF7xz", "language": "HfQ-Mu", "region": "rESG9nop", "stadiaPlayerId": "eP1JzMx0"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncStadiaEntitlement' test.out

#- 356 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'F70hfSgy' \
    --body '{"appId": "knGtqh2a", "currencyCode": "OPtOHKnW", "language": "pLjm-SbpV", "price": 0.0980359773753563, "productId": "Y6worMag", "region": "W8OhmLX1", "steamId": "TmxYU7ZF"}' \
    > test.out 2>&1
eval_tap $? 356 'SyncSteamInventory' test.out

#- 357 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WVpfzn7W' \
    --body '{"gameId": "sTZxk8B1", "language": "ym-645", "region": "asbJhxK8"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncTwitchDropsEntitlement' test.out

#- 358 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'V42IPS0u' \
    --body '{"currencyCode": "f0U8fY5m", "price": 0.1678547046540333, "productId": "oDXMR1Wi", "xstsToken": "m2TiRGTq"}' \
    > test.out 2>&1
eval_tap $? 358 'SyncXboxInventory' test.out

#- 359 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vLtGUAI7' \
    --itemId 'aR6liqlQ' \
    --limit '42' \
    --offset '80' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 359 'PublicQueryUserOrders' test.out

#- 360 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Ikc14Yx7' \
    --body '{"currencyCode": "pautxJnK", "discountedPrice": 4, "ext": {"L2XJnQ5h": {}, "UX3SPAZg": {}, "O2gT38ji": {}}, "itemId": "YFVuZU4j", "language": "AO-wzRa", "price": 14, "quantity": 70, "region": "msdwf2UE", "returnUrl": "tzdP323S"}' \
    > test.out 2>&1
eval_tap $? 360 'PublicCreateUserOrder' test.out

#- 361 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nbdPOO3q' \
    --userId 'QcvIUjM3' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserOrder' test.out

#- 362 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bdlKhkP4' \
    --userId 'bhZl8lCM' \
    > test.out 2>&1
eval_tap $? 362 'PublicCancelUserOrder' test.out

#- 363 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'TPVtfRo7' \
    --userId 'NYbbbwVn' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserOrderHistories' test.out

#- 364 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'w4gWmSmz' \
    --userId 'TaCs1I2C' \
    > test.out 2>&1
eval_tap $? 364 'PublicDownloadUserOrderReceipt' test.out

#- 365 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'rf0pBpmJ' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentAccounts' test.out

#- 366 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '7GQo7i8Q' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'RpC2kgZk' \
    > test.out 2>&1
eval_tap $? 366 'PublicDeletePaymentAccount' test.out

#- 367 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'JF9kt2xq' \
    --language 'LdDLfJSw' \
    --region 'k2Jcrzqa' \
    --storeId 'cbG3l1wt' \
    --viewId 'UVT36XeV' \
    > test.out 2>&1
eval_tap $? 367 'PublicListActiveSections' test.out

#- 368 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'r3AkXaqy' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'CT6T3kuV' \
    --limit '71' \
    --offset '62' \
    --sku 'LYfcnqL2' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 368 'PublicQueryUserSubscriptions' test.out

#- 369 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'B5wS77zn' \
    --body '{"currencyCode": "3Erlki6E", "itemId": "WlxpBZ3s", "language": "fUbQ-XKfb", "region": "6ANa1od2", "returnUrl": "4uNSgSGq", "source": "S3DFotmq"}' \
    > test.out 2>&1
eval_tap $? 369 'PublicSubscribeSubscription' test.out

#- 370 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nep680j1' \
    --itemId 'CRRj7O4u' \
    > test.out 2>&1
eval_tap $? 370 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 371 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Kz8hrjfn' \
    --userId '4EWR7teB' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscription' test.out

#- 372 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zu5Ahso5' \
    --userId '0s89GyMH' \
    > test.out 2>&1
eval_tap $? 372 'PublicChangeSubscriptionBillingAccount' test.out

#- 373 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'adqdgAT0' \
    --userId '9KCsCsTN' \
    --body '{"immediate": false, "reason": "nvzMWRtw"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicCancelSubscription' test.out

#- 374 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sW7Xdmwa' \
    --userId 'HQblEzXQ' \
    --excludeFree 'false' \
    --limit '79' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscriptionBillingHistories' test.out

#- 375 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'cTRLX3nO' \
    --language 'Sc7iRtTi' \
    --storeId '3qx5Pv0n' \
    > test.out 2>&1
eval_tap $? 375 'PublicListViews' test.out

#- 376 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Rw1HN4OV' \
    --namespace $AB_NAMESPACE \
    --userId 'Rix2y3hG' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetWallet' test.out

#- 377 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'pu1W1eZG' \
    --namespace $AB_NAMESPACE \
    --userId 'nULtGk1i' \
    --limit '70' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 377 'PublicListUserWalletTransactions' test.out

#- 378 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'DwAGDqCZ' \
    --baseAppId 'rP5R0RWp' \
    --categoryPath 'ONKJF8CQ' \
    --features 'wAHtPtAB' \
    --includeSubCategoryItem 'false' \
    --itemName 'InryvNBr' \
    --itemStatus 'ACTIVE' \
    --itemType 'SEASON' \
    --limit '98' \
    --offset '20' \
    --region 'inhkxugl' \
    --sortBy '["updatedAt", "createdAt", "createdAt:desc"]' \
    --storeId 'GZ5QEzLR' \
    --tags 'nCvZ07kO' \
    --targetNamespace 'wPCaGTYm' \
    > test.out 2>&1
eval_tap $? 378 'QueryItems1' test.out

#- 379 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'jjDvytpW' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 379 'ImportStore1' test.out

#- 380 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'xm621pL0' \
    --body '{"itemIds": ["9mdk2irF", "wbf7TVz0", "rJXM6X4z"]}' \
    > test.out 2>&1
eval_tap $? 380 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE