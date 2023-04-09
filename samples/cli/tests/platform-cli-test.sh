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
echo "1..390"

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
    --body '{"context": {"item": {"appId": "OBRMmM5X", "appType": "GAME", "baseAppId": "dFN3lR2x", "boothName": "nV2z6Vfu", "boundItemIds": ["7bnFofsh", "8uOfaR1U", "wCwWyp9A"], "categoryPath": "oIGuTLQp", "clazz": "EYV84wOg", "createdAt": "1976-12-09T00:00:00Z", "description": "Yq3IWrzQ", "displayOrder": 0, "entitlementType": "DURABLE", "ext": {"apQjZbxE": {}, "ugCSVsMS": {}, "NmL54jMg": {}}, "features": ["KKQKR7u3", "BUYUTAG3", "HyuluwYM"], "fresh": true, "images": [{"as": "3Ls6ud6Z", "caption": "f8xHvVcO", "height": 96, "imageUrl": "YTnUs1L4", "smallImageUrl": "Bru4ppBc", "width": 42}, {"as": "MCvJ8i4H", "caption": "XQoEdsWx", "height": 21, "imageUrl": "LnZv8XaI", "smallImageUrl": "6NYomOos", "width": 18}, {"as": "Qsuvgj48", "caption": "SdpANfa5", "height": 81, "imageUrl": "9WRSZten", "smallImageUrl": "wAIp0iII", "width": 1}], "itemId": "jl4cPTwu", "itemIds": ["2GDKLL2Y", "jWF6uVLq", "qnLCSaeS"], "itemQty": {"155fWcd1": 33, "Ai7hU5UK": 60, "gLfzcPoW": 28}, "itemType": "MEDIA", "language": "yZFx2KRo", "listable": true, "localExt": {"XjPHKl7s": {}, "P1FjsLmj": {}, "5X5IDCpo": {}}, "longDescription": "qCQzhefz", "lootBoxConfig": {"rewardCount": 53, "rewards": [{"lootBoxItems": [{"count": 47, "itemId": "hRbmL96u", "itemSku": "2v6ONZvB", "itemType": "eOE3iK6X"}, {"count": 21, "itemId": "ZfWpn5Iu", "itemSku": "MpZimIdj", "itemType": "wZz14Nhl"}, {"count": 87, "itemId": "Fq11oqBI", "itemSku": "hqQqtbcW", "itemType": "HahmIBJE"}], "name": "ViL2d7l9", "odds": 0.3612103709502279, "type": "PROBABILITY_GROUP", "weight": 99}, {"lootBoxItems": [{"count": 9, "itemId": "Whpqf2RJ", "itemSku": "vUABOU4H", "itemType": "MLDPKxLq"}, {"count": 84, "itemId": "kgsvLLqF", "itemSku": "nJuJRSF7", "itemType": "LE0IDztY"}, {"count": 2, "itemId": "V7y8vlvF", "itemSku": "sf8gpzcU", "itemType": "qxIkqvpS"}], "name": "qYhunlDH", "odds": 0.07046314589037694, "type": "REWARD_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 87, "itemId": "b2Ffs9zA", "itemSku": "chWrGSiA", "itemType": "noa3rN6M"}, {"count": 10, "itemId": "KEAyCGBv", "itemSku": "LVLLOuMl", "itemType": "sGojfbgq"}, {"count": 74, "itemId": "uTe8erJi", "itemSku": "qVIiokb9", "itemType": "1NB6Txz6"}], "name": "sQwIJapG", "odds": 0.9856066052608833, "type": "REWARD", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 69, "maxCountPerUser": 70, "name": "KvkEOGWy", "namespace": "M0ao6vQ3", "optionBoxConfig": {"boxItems": [{"count": 44, "itemId": "KvjEaj17", "itemSku": "PbyUfyXg", "itemType": "FR48CYKJ"}, {"count": 14, "itemId": "HlBvnfpA", "itemSku": "RII9cy5o", "itemType": "bPjEuuK4"}, {"count": 13, "itemId": "Ho5Sh250", "itemSku": "rU6U2uwH", "itemType": "29gsrocm"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 18, "comparison": "isLessThanOrEqual", "name": "1NhXMTmV", "predicateType": "SeasonPassPredicate", "value": "Ku7I0aeF", "values": ["4L2EALIe", "I5OldUHf", "mRlhv11p"]}, {"anyOf": 44, "comparison": "isLessThan", "name": "R0NKhJWT", "predicateType": "SeasonPassPredicate", "value": "1QvsDQh0", "values": ["9HQPwJdK", "Uooji0Ru", "YCt4YFfH"]}, {"anyOf": 91, "comparison": "isGreaterThan", "name": "vlTdWMDL", "predicateType": "EntitlementPredicate", "value": "0P3CMdZZ", "values": ["AzI5j4pn", "BKz9IwoO", "Mn9AUoeQ"]}]}, {"operator": "or", "predicates": [{"anyOf": 79, "comparison": "is", "name": "Vo14J8IY", "predicateType": "EntitlementPredicate", "value": "VHQ62Sak", "values": ["YvsD493z", "tnF82aIY", "Kx0e9RQf"]}, {"anyOf": 18, "comparison": "isGreaterThanOrEqual", "name": "a0Smb9hp", "predicateType": "SeasonPassPredicate", "value": "X6i2j49j", "values": ["1INjaybg", "T8hnLATP", "OdSvCIah"]}, {"anyOf": 51, "comparison": "isGreaterThanOrEqual", "name": "IK8ScULi", "predicateType": "SeasonPassPredicate", "value": "tpKMghH9", "values": ["dmRTBWSh", "cCz8wlJ5", "Ji2h04Mu"]}]}, {"operator": "or", "predicates": [{"anyOf": 47, "comparison": "excludes", "name": "E4LE0nMi", "predicateType": "SeasonTierPredicate", "value": "MQAmcCu2", "values": ["GRWQVGWt", "xMw6QhDw", "eK2yjS9V"]}, {"anyOf": 48, "comparison": "isLessThan", "name": "aQ1IdEfo", "predicateType": "SeasonTierPredicate", "value": "EQG3qcHY", "values": ["t2DRYP3j", "38nc8qFd", "lw9yEUDV"]}, {"anyOf": 25, "comparison": "isNot", "name": "2wyf3Njt", "predicateType": "SeasonTierPredicate", "value": "HMfuXwRz", "values": ["as0yMjEA", "fplRpY8T", "OfEabYzO"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 57, "fixedTrialCycles": 96, "graceDays": 12}, "region": "E7FsklHF", "regionData": [{"currencyCode": "72rR2BY2", "currencyNamespace": "oh6oS6T8", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1988-03-06T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1984-03-17T00:00:00Z", "discountedPrice": 38, "expireAt": "1979-12-11T00:00:00Z", "price": 75, "purchaseAt": "1993-03-08T00:00:00Z", "trialPrice": 40}, {"currencyCode": "nTHvJSig", "currencyNamespace": "vN6KmF7d", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1999-06-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1994-12-30T00:00:00Z", "discountedPrice": 24, "expireAt": "1991-01-13T00:00:00Z", "price": 98, "purchaseAt": "1988-06-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "jtwb9zmT", "currencyNamespace": "UjtIfB9e", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1981-04-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1975-06-09T00:00:00Z", "discountedPrice": 24, "expireAt": "1978-09-28T00:00:00Z", "price": 68, "purchaseAt": "1971-06-11T00:00:00Z", "trialPrice": 14}], "saleConfig": {"currencyCode": "x3o5VRTQ", "price": 25}, "seasonType": "TIER", "sellable": false, "sku": "QsbRw600", "stackable": true, "status": "ACTIVE", "tags": ["dov0bZ7m", "6j1TFJJo", "ilLXbJNn"], "targetCurrencyCode": "b8zm2Vy9", "targetItemId": "gTfWFXgO", "targetNamespace": "ugYI7NNC", "thumbnailUrl": "DZcBo8Bh", "title": "IQmk1C9B", "updatedAt": "1972-07-04T00:00:00Z", "useCount": 5}, "namespace": "TjWX2FHs", "order": {"currency": {"currencyCode": "IfJftR9h", "currencySymbol": "C9KRKaZc", "currencyType": "REAL", "decimals": 49, "namespace": "LUONl3Wu"}, "ext": {"pHgXV1O8": {}, "PRtnnjiS": {}, "RgVwKpfy": {}}, "free": true}, "source": "PROMOTION"}, "script": "WQP4n1Dw", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'R9dHod4y' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'c1VQ74uq' \
    --body '{"grantDays": "EC4ZtBAT"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'HMCw469T' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '8XS3769v' \
    --body '{"grantDays": "I3mY2tUp"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "6kV4EYXo", "dryRun": false, "fulfillmentUrl": "kyJYh51F", "itemType": "INGAMEITEM", "purchaseConditionUrl": "0XCktg9N"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'nptZew6u' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'wfV74VEX' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'wo9iPeSs' \
    --body '{"clazz": "xlKJWnmG", "dryRun": true, "fulfillmentUrl": "Mwza0LyM", "purchaseConditionUrl": "qjlfITlm"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '6skaCTiN' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'HWgpmbQy' \
    --offset '3' \
    --tag 'AVD9aepj' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xQFXsPFq", "items": [{"extraSubscriptionDays": 78, "itemId": "8hM3kBqw", "itemName": "LGEq9Qna", "quantity": 49}, {"extraSubscriptionDays": 64, "itemId": "Ozo2FYpH", "itemName": "wJJ1xgK6", "quantity": 17}, {"extraSubscriptionDays": 77, "itemId": "1gzltBXZ", "itemName": "kReISEp1", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 73, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 97, "name": "sCLCZXeX", "redeemEnd": "1990-06-11T00:00:00Z", "redeemStart": "1988-12-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["2iKy0QcT", "Y9chEwqU", "0Ftlyjnu"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'xEePWRZy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '6eqGNSxk' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GSoJ62et", "items": [{"extraSubscriptionDays": 24, "itemId": "AO9TxobR", "itemName": "nImIxf9O", "quantity": 82}, {"extraSubscriptionDays": 18, "itemId": "Rbjpz3AD", "itemName": "9LvylBeL", "quantity": 70}, {"extraSubscriptionDays": 90, "itemId": "6ea5MzTJ", "itemName": "7mAqGbVq", "quantity": 63}], "maxRedeemCountPerCampaignPerUser": 16, "maxRedeemCountPerCode": 35, "maxRedeemCountPerCodePerUser": 76, "maxSaleCount": 28, "name": "7cifRefo", "redeemEnd": "1984-03-22T00:00:00Z", "redeemStart": "1982-07-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["1hXTmLFm", "a1cicwY8", "1Yl8ig4S"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'v32WkjP1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'FHJriEAb' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'BQCuXDGb' \
    --body '{"categoryPath": "byNMnxEn", "localizationDisplayNames": {"DwzPNT7E": "1ScnbMeN", "qnbz29iz": "ti0lN5Xq", "DFIe1X2W": "eSlpgv7J"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'nTy0cXNG' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'w9EM3Rv8' \
    --namespace $AB_NAMESPACE \
    --storeId 'POjPTv6v' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '1cTdjNFF' \
    --namespace $AB_NAMESPACE \
    --storeId 'MYc42msn' \
    --body '{"localizationDisplayNames": {"Fv4UokOf": "UfYf1l88", "ajbEVGtB": "p3SXSVYN", "aCLwGxov": "gQIyRO43"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'm29LO5sb' \
    --namespace $AB_NAMESPACE \
    --storeId 'Vuf1Urp7' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '75lRlrpA' \
    --namespace $AB_NAMESPACE \
    --storeId 'FgWEoZuf' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '01yjP7xm' \
    --namespace $AB_NAMESPACE \
    --storeId 'pr9pd8wK' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'c5rPWxfd' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '77' \
    --code 'C1eWpjZP' \
    --limit '69' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'wqGCKyOb' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 53}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'q8UYZuMq' \
    --namespace $AB_NAMESPACE \
    --batchNo '66' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'iBhWWrgG' \
    --namespace $AB_NAMESPACE \
    --batchNo '83' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'iDMvhxNk' \
    --namespace $AB_NAMESPACE \
    --batchNo '6' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'oCv2GSqU' \
    --namespace $AB_NAMESPACE \
    --code 'ZozotbwQ' \
    --limit '63' \
    --offset '59' \
    --userId 'Me0uL9YZ' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'M7oMjT0d' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'YZFzb2Rq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'zoXDi5hO' \
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
    --body '{"grpcServerAddress": "aAmMU9L0"}' \
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
    --body '{"currencyCode": "atHvU1P7", "currencySymbol": "f99LzpwS", "currencyType": "VIRTUAL", "decimals": 23, "localizationDescriptions": {"Y3NtzR6i": "e1uS77Hj", "F0CiphYv": "tnWTvnkN", "C55pFOT3": "dZ7bUKTC"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'WcLbWXWP' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"f41WMLt5": "B3qSpbed", "eKsPDWjB": "ZhigBUsb", "2Qf0VvW5": "KjOCr5Yk"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'LIif7tnA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'aWUEVZ4M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'mPeTJsHu' \
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
    --body '{"data": [{"id": "VvRK5b4i", "rewards": [{"currency": {"currencyCode": "rdH4imNV", "namespace": "3eiRTSWX"}, "item": {"itemId": "SA6s8NfC", "itemSku": "SPUVPkFI", "itemType": "5c82e5XW"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "OoqJU3yc", "namespace": "mgrOT34O"}, "item": {"itemId": "M4dobt5I", "itemSku": "SAsyWoJy", "itemType": "RT2gnAtr"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "gAOx4nkj", "namespace": "CvEW4AcZ"}, "item": {"itemId": "MS2nbZng", "itemSku": "F4WqqjsP", "itemType": "61ssjijx"}, "quantity": 44, "type": "CURRENCY"}]}, {"id": "C0TiAbVo", "rewards": [{"currency": {"currencyCode": "zxOTKwd7", "namespace": "2ryYMy9p"}, "item": {"itemId": "Ths3sGdK", "itemSku": "tXrYeZZ0", "itemType": "5Hn5X0w6"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "2HX97PZK", "namespace": "qdpSnykF"}, "item": {"itemId": "7iiYGGAs", "itemSku": "wZkeS3yf", "itemType": "L1dCAGjy"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "iyR0gwiK", "namespace": "n4fdgSDY"}, "item": {"itemId": "drIde26R", "itemSku": "hUAP9KRt", "itemType": "Jb4hLFP8"}, "quantity": 50, "type": "ITEM"}]}, {"id": "Xw9nO9sA", "rewards": [{"currency": {"currencyCode": "pSFyTSPz", "namespace": "zaqzYbXa"}, "item": {"itemId": "JXUE0SKp", "itemSku": "43hsSvVD", "itemType": "7seOPecL"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "rb3osHUH", "namespace": "iTXUBfIQ"}, "item": {"itemId": "2M0iPCkt", "itemSku": "Bu5J8xUu", "itemType": "N2arevAd"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "14AyHu3p", "namespace": "gWiNPK6A"}, "item": {"itemId": "1f6ssUSu", "itemSku": "ROy0ny4N", "itemType": "ehSF8Zaa"}, "quantity": 92, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"TQ11W8OV": "qAPz2CAp", "SkIq3P0O": "wmeJjupG", "h9w01avQ": "DyHw7t2c"}}, {"platform": "STEAM", "platformDlcIdMap": {"dcMQz1Q3": "pzTmGg6p", "YjLLZdOG": "syLMqUiH", "aLIyUI6Y": "mYHQgy4X"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"kaWcYDWi": "JLQKpXi0", "fT60njio": "wYeVEkVh", "JTiec3x4": "iQ2gWIJr"}}]}' \
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
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'h6wuYRzN' \
    --itemId '["UHTAzHN9", "mJEYPNrV", "VTWD0l9V"]' \
    --limit '81' \
    --offset '19' \
    --userId 'b2TU9yED' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '7C6BFBZU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '50' \
    --status 'FAIL' \
    --userId 'yHsza8vI' \
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
    --body '{"bundleId": "wob7nmqB", "password": "qVURrQVU"}' \
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
    --body '{"sandboxId": "CVanRhD3"}' \
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
    --body '{"applicationName": "XVa872PR", "serviceAccountId": "Gh9yBB6a"}' \
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
    --body '{"data": [{"itemIdentity": "kZ31MGAc", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"D96ToJjb": "W1D3kXxj", "msGL8P17": "VLDJj7jY", "F03kafIs": "BM6fDmBI"}}, {"itemIdentity": "eGyZcMO2", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0qz4KbXG": "yhfmywGQ", "YH9WNAWd": "FUtt4uBl", "WbKvLyKt": "eokRQXHe"}}, {"itemIdentity": "Sg2OwhbC", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Udp7rtK1": "tjUONNfT", "aiXeoDev": "dsCwFb1R", "ih7ju2Kf": "vdCjlMhR"}}]}' \
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
    --body '{"environment": "d8MeDEyK"}' \
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
    --body '{"appId": "EN7HOg5S", "publisherAuthenticationKey": "HTiaioHP"}' \
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
    --body '{"clientId": "fRnY8EID", "clientSecret": "W9GLqxWr", "organizationId": "Bql3JjzW"}' \
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
    --body '{"relyingPartyCert": "Uw3JQDET"}' \
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
    --password 'XRhpLKAk' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'VSCnDLIF' \
    --itemId 'Orsac00Y' \
    --itemType 'SEASON' \
    --endTime 'XAYYl0Ie' \
    --startTime 'IFQmIU4I' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'WXPFh7Hd' \
    --itemId 'fO2YaP5x' \
    --itemType 'COINS' \
    --endTime 'QJ8p8WHP' \
    --startTime 'lsRIfSWo' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'V41rXjDu' \
    --body '{"categoryPath": "bpOQjE41", "targetItemId": "WEj9ttT1", "targetNamespace": "CFyGE7Zm"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'UkfKrLcX' \
    --body '{"appId": "vrnfLjzt", "appType": "GAME", "baseAppId": "yXypzGGb", "boothName": "l40MiBtP", "categoryPath": "HkE7cMZ5", "clazz": "N4W1ntyW", "displayOrder": 8, "entitlementType": "DURABLE", "ext": {"ts6tGcHd": {}, "c8kRYkOP": {}, "Uo0pALaM": {}}, "features": ["eoaGAI3s", "5tIizsZL", "sF0pknZz"], "images": [{"as": "rx6ZJzOc", "caption": "DFRtEkd4", "height": 52, "imageUrl": "3vcDTjxb", "smallImageUrl": "VJNEj6Uk", "width": 61}, {"as": "wKFlUoJL", "caption": "qXZFzDrX", "height": 12, "imageUrl": "vfJCJXia", "smallImageUrl": "0a91kOUm", "width": 4}, {"as": "hU87mysc", "caption": "uNXPID6o", "height": 15, "imageUrl": "4v2IMf6k", "smallImageUrl": "svfMUcIP", "width": 81}], "itemIds": ["xNYSKyeO", "LoIEQVuK", "3jjQA6dt"], "itemQty": {"ydUdImLH": 76, "hWZeDlbd": 3, "dFpibU9v": 78}, "itemType": "BUNDLE", "listable": true, "localizations": {"9fvzGgow": {"description": "gU0KG2N2", "localExt": {"wVDDWbXB": {}, "mKeo6jr5": {}, "XfA4hrer": {}}, "longDescription": "0Xas1CLL", "title": "gn0St9tt"}, "EVOB41FU": {"description": "uBvToFLh", "localExt": {"7KgKOL13": {}, "iTf8NZAQ": {}, "3M63MkJn": {}}, "longDescription": "uv6aXupk", "title": "FtqygIFJ"}, "qPZoqYgZ": {"description": "6nbAsmLf", "localExt": {"0Lyt4aKg": {}, "MGXUU7Y5": {}, "T4DqlJ4l": {}}, "longDescription": "P9l10Apd", "title": "ChmUqAKS"}}, "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 2, "itemId": "7OLnnZc7", "itemSku": "ET3CAyXc", "itemType": "6OK2ckYZ"}, {"count": 97, "itemId": "DUS8G53B", "itemSku": "pLDbKRXF", "itemType": "X7ZTcpIx"}, {"count": 69, "itemId": "riaJgyT0", "itemSku": "edJBaa5S", "itemType": "BIJYMg5Z"}], "name": "19yQYR9S", "odds": 0.31462445233789427, "type": "PROBABILITY_GROUP", "weight": 47}, {"lootBoxItems": [{"count": 77, "itemId": "qCXOowKm", "itemSku": "BSM6OcGv", "itemType": "05FrXCSp"}, {"count": 2, "itemId": "RendU8Pf", "itemSku": "SdiyhLiJ", "itemType": "wjTlRvyd"}, {"count": 88, "itemId": "8FmqG3BP", "itemSku": "6AXrNQqg", "itemType": "59KrjfUx"}], "name": "5pDpvHOs", "odds": 0.6199720141194204, "type": "PROBABILITY_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 41, "itemId": "CCm3SnVF", "itemSku": "lQPvluga", "itemType": "oRWgpUE4"}, {"count": 80, "itemId": "QsC2Ibxi", "itemSku": "IK4K9BHW", "itemType": "yml4I2rn"}, {"count": 79, "itemId": "FIwqRJxE", "itemSku": "8jhCS8JU", "itemType": "nEPEIkxW"}], "name": "AIT4F5Y5", "odds": 0.4445324800495798, "type": "REWARD", "weight": 90}], "rollFunction": "DEFAULT"}, "maxCount": 45, "maxCountPerUser": 47, "name": "1BT9yQzj", "optionBoxConfig": {"boxItems": [{"count": 94, "itemId": "a6gcTvAw", "itemSku": "RzQcELmK", "itemType": "qFFNqrKP"}, {"count": 76, "itemId": "dnXGZOGe", "itemSku": "iRbI1rRe", "itemType": "pjIPdfpf"}, {"count": 23, "itemId": "n0WRO8OC", "itemSku": "yx3cfQ60", "itemType": "6gEoJY5r"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 34, "fixedTrialCycles": 46, "graceDays": 52}, "regionData": {"uuI5v1ct": [{"currencyCode": "HRZPruxt", "currencyNamespace": "KraHUd87", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1978-04-27T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1988-02-19T00:00:00Z", "discountedPrice": 75, "expireAt": "1987-02-06T00:00:00Z", "price": 82, "purchaseAt": "1994-05-24T00:00:00Z", "trialPrice": 10}, {"currencyCode": "fk2BoUA2", "currencyNamespace": "c7V20kBU", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1984-02-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1999-01-30T00:00:00Z", "discountedPrice": 82, "expireAt": "1977-04-04T00:00:00Z", "price": 79, "purchaseAt": "1988-02-11T00:00:00Z", "trialPrice": 64}, {"currencyCode": "yHojp9uZ", "currencyNamespace": "5JBvVH7h", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1979-01-13T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1982-06-18T00:00:00Z", "discountedPrice": 22, "expireAt": "1979-01-20T00:00:00Z", "price": 34, "purchaseAt": "1986-06-14T00:00:00Z", "trialPrice": 33}], "J8tiyMsZ": [{"currencyCode": "skcXsl10", "currencyNamespace": "deL7Z47Z", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1980-08-07T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1987-08-16T00:00:00Z", "discountedPrice": 84, "expireAt": "1983-06-25T00:00:00Z", "price": 51, "purchaseAt": "1980-09-14T00:00:00Z", "trialPrice": 31}, {"currencyCode": "4i1hZmEi", "currencyNamespace": "e2az7ulE", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1993-09-17T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1997-01-03T00:00:00Z", "discountedPrice": 5, "expireAt": "1996-02-22T00:00:00Z", "price": 30, "purchaseAt": "1980-07-04T00:00:00Z", "trialPrice": 65}, {"currencyCode": "1pryPqN8", "currencyNamespace": "8ulAq6PU", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1997-07-06T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1974-10-27T00:00:00Z", "discountedPrice": 7, "expireAt": "1997-06-22T00:00:00Z", "price": 0, "purchaseAt": "1982-03-12T00:00:00Z", "trialPrice": 71}], "n32cjvkO": [{"currencyCode": "lcqqGI9h", "currencyNamespace": "gsP1o3yn", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1980-09-27T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1984-03-30T00:00:00Z", "discountedPrice": 51, "expireAt": "1982-07-25T00:00:00Z", "price": 98, "purchaseAt": "1984-04-27T00:00:00Z", "trialPrice": 31}, {"currencyCode": "7syeIhWR", "currencyNamespace": "l1edceRe", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1994-07-08T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1983-02-23T00:00:00Z", "discountedPrice": 26, "expireAt": "1976-06-03T00:00:00Z", "price": 2, "purchaseAt": "1972-06-02T00:00:00Z", "trialPrice": 23}, {"currencyCode": "hasyBFTd", "currencyNamespace": "UZvVM0rG", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1993-08-04T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-04-28T00:00:00Z", "discountedPrice": 50, "expireAt": "1987-12-13T00:00:00Z", "price": 48, "purchaseAt": "1981-08-24T00:00:00Z", "trialPrice": 23}]}, "saleConfig": {"currencyCode": "2l3eX8Iw", "price": 26}, "seasonType": "PASS", "sellable": true, "sku": "S14PFSsw", "stackable": false, "status": "INACTIVE", "tags": ["sqdyXawR", "UyjIiViy", "ikE8wF0s"], "targetCurrencyCode": "gM1jy58q", "targetNamespace": "bQohZnaE", "thumbnailUrl": "O0jCzQDc", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Psffl2Oe' \
    --appId 'JFk0kU6Y' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'F2QCSyET' \
    --baseAppId 'e5sWzPM2' \
    --categoryPath 'QusHvST8' \
    --features '44UQvBf5' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '88' \
    --offset '73' \
    --region 'IPniEr8X' \
    --sortBy '["updatedAt:asc", "createdAt:asc", "displayOrder:desc"]' \
    --storeId 'y9hH8jxx' \
    --tags 'AwNnJ55Z' \
    --targetNamespace 'zXxbWz0O' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["08H1gAIY", "I2jrzP2G", "sTmReHnM"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'MHmUqcVl' \
    --sku 'L7HoeNUZ' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'T8LcCuxb' \
    --populateBundle 'true' \
    --region 'B08Rswm8' \
    --storeId 'RH3yiiHB' \
    --sku 'mV264HNS' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'PpkJXzBG' \
    --sku '3F7XOPva' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["HZWjYXvU", "LRfgDyoJ", "GAZDaU6J"]' \
    --storeId 'Nrp8e0R3' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'iLK1XVC6' \
    --region 'soLkR3jH' \
    --storeId 'aWxhcRyW' \
    --itemIds 'EXtSJxIU' \
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
    --userId 'slL0oH7S' \
    --body '{"itemIds": ["EsfjGafU", "6MzKLddA", "VmVa85N7"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'YtNsdzwc' \
    --body '{"changes": [{"itemIdentities": ["kb0AkWb3", "cY9MQ9UM", "rZ7SC37u"], "itemIdentityType": "ITEM_ID", "regionData": {"CpP6aFDO": [{"currencyCode": "nEkNUg7v", "currencyNamespace": "mopr4FGQ", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1977-01-22T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1996-10-16T00:00:00Z", "discountedPrice": 8, "expireAt": "1984-03-31T00:00:00Z", "price": 58, "purchaseAt": "1997-01-11T00:00:00Z", "trialPrice": 11}, {"currencyCode": "RUdlsnjN", "currencyNamespace": "C7HOHibu", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1990-11-14T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1997-01-12T00:00:00Z", "discountedPrice": 25, "expireAt": "1981-03-27T00:00:00Z", "price": 3, "purchaseAt": "1999-02-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "b4yX4pyK", "currencyNamespace": "hkhPguv8", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1991-09-11T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1995-04-15T00:00:00Z", "discountedPrice": 31, "expireAt": "1979-05-16T00:00:00Z", "price": 38, "purchaseAt": "1988-05-08T00:00:00Z", "trialPrice": 57}], "nK39u2Y5": [{"currencyCode": "pjUmGsAE", "currencyNamespace": "RToqAbXW", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1994-10-06T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1984-12-04T00:00:00Z", "discountedPrice": 85, "expireAt": "1998-02-14T00:00:00Z", "price": 61, "purchaseAt": "1988-08-29T00:00:00Z", "trialPrice": 45}, {"currencyCode": "oP6AsFIM", "currencyNamespace": "Ks8d03ls", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1998-04-10T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1974-04-14T00:00:00Z", "discountedPrice": 24, "expireAt": "1995-04-01T00:00:00Z", "price": 23, "purchaseAt": "1974-04-29T00:00:00Z", "trialPrice": 72}, {"currencyCode": "Npz7QvyP", "currencyNamespace": "HYglESjZ", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1977-07-26T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-02-25T00:00:00Z", "discountedPrice": 16, "expireAt": "1986-11-24T00:00:00Z", "price": 39, "purchaseAt": "1997-04-04T00:00:00Z", "trialPrice": 25}], "I5tY6k0p": [{"currencyCode": "w9kDY80C", "currencyNamespace": "goUMoJNP", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1992-03-11T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1987-09-07T00:00:00Z", "discountedPrice": 100, "expireAt": "1974-02-03T00:00:00Z", "price": 89, "purchaseAt": "1997-10-16T00:00:00Z", "trialPrice": 63}, {"currencyCode": "0tCegwAE", "currencyNamespace": "caUeKDrZ", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1981-09-03T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1980-11-09T00:00:00Z", "discountedPrice": 89, "expireAt": "1994-08-11T00:00:00Z", "price": 58, "purchaseAt": "1984-05-13T00:00:00Z", "trialPrice": 67}, {"currencyCode": "WvYlUQb0", "currencyNamespace": "u0BWEQaR", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1984-03-21T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1981-01-16T00:00:00Z", "discountedPrice": 50, "expireAt": "1972-10-30T00:00:00Z", "price": 62, "purchaseAt": "1992-07-07T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["RlOY8zUx", "L9h49H5D", "YQnyAMO6"], "itemIdentityType": "ITEM_ID", "regionData": {"opYqVWcI": [{"currencyCode": "WNKvlolz", "currencyNamespace": "VjQe9fON", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-05-31T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1974-10-31T00:00:00Z", "discountedPrice": 84, "expireAt": "1971-11-20T00:00:00Z", "price": 89, "purchaseAt": "1987-05-26T00:00:00Z", "trialPrice": 81}, {"currencyCode": "JhiZUNPn", "currencyNamespace": "ahctW4RW", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1981-08-12T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1996-10-12T00:00:00Z", "discountedPrice": 30, "expireAt": "1974-03-17T00:00:00Z", "price": 73, "purchaseAt": "1975-06-07T00:00:00Z", "trialPrice": 83}, {"currencyCode": "CJt72aIP", "currencyNamespace": "ry1tJzWJ", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1994-03-05T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1990-03-25T00:00:00Z", "discountedPrice": 21, "expireAt": "1983-03-25T00:00:00Z", "price": 33, "purchaseAt": "1992-08-18T00:00:00Z", "trialPrice": 88}], "Hckdmt5y": [{"currencyCode": "jYX2BJ9l", "currencyNamespace": "YSJcRskE", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1978-09-18T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1989-03-07T00:00:00Z", "discountedPrice": 90, "expireAt": "1986-03-07T00:00:00Z", "price": 11, "purchaseAt": "1998-12-22T00:00:00Z", "trialPrice": 48}, {"currencyCode": "mSEWqs7w", "currencyNamespace": "uWhteXXN", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-10-07T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1971-11-15T00:00:00Z", "discountedPrice": 28, "expireAt": "1980-04-21T00:00:00Z", "price": 10, "purchaseAt": "1989-07-20T00:00:00Z", "trialPrice": 35}, {"currencyCode": "Rz4RIYiw", "currencyNamespace": "aGYYqtt9", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1975-09-03T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1991-05-26T00:00:00Z", "discountedPrice": 81, "expireAt": "1977-08-24T00:00:00Z", "price": 14, "purchaseAt": "1984-12-01T00:00:00Z", "trialPrice": 34}], "zRUqBaPx": [{"currencyCode": "QX8U4tZR", "currencyNamespace": "hekot2wa", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1975-10-22T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1981-10-18T00:00:00Z", "discountedPrice": 90, "expireAt": "1993-11-21T00:00:00Z", "price": 48, "purchaseAt": "1982-08-04T00:00:00Z", "trialPrice": 64}, {"currencyCode": "dpRm5hcT", "currencyNamespace": "YRqGsE7e", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1981-05-22T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1999-11-28T00:00:00Z", "discountedPrice": 63, "expireAt": "1990-12-12T00:00:00Z", "price": 22, "purchaseAt": "1972-12-06T00:00:00Z", "trialPrice": 0}, {"currencyCode": "hQ2F7HZa", "currencyNamespace": "rsKp9uos", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1977-10-09T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1979-03-02T00:00:00Z", "discountedPrice": 44, "expireAt": "1975-04-05T00:00:00Z", "price": 22, "purchaseAt": "1974-01-19T00:00:00Z", "trialPrice": 97}]}}, {"itemIdentities": ["uHi3vlNe", "2RPiK8xk", "MpbFCy1F"], "itemIdentityType": "ITEM_ID", "regionData": {"BLVRHpKE": [{"currencyCode": "UeGlpIrn", "currencyNamespace": "54iQRs22", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1971-06-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-01-23T00:00:00Z", "discountedPrice": 75, "expireAt": "1971-07-22T00:00:00Z", "price": 48, "purchaseAt": "1987-05-25T00:00:00Z", "trialPrice": 50}, {"currencyCode": "geLYoPcd", "currencyNamespace": "14YiSoyD", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1999-08-10T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1981-08-01T00:00:00Z", "discountedPrice": 52, "expireAt": "1983-08-06T00:00:00Z", "price": 71, "purchaseAt": "1981-04-21T00:00:00Z", "trialPrice": 69}, {"currencyCode": "BYTGqeCu", "currencyNamespace": "A97txMC2", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1980-02-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1984-07-28T00:00:00Z", "discountedPrice": 3, "expireAt": "1974-10-18T00:00:00Z", "price": 48, "purchaseAt": "1990-06-05T00:00:00Z", "trialPrice": 9}], "58RPLDEY": [{"currencyCode": "wNkNxOaC", "currencyNamespace": "I1xFtnkd", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1985-04-05T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1986-02-23T00:00:00Z", "discountedPrice": 85, "expireAt": "1995-05-17T00:00:00Z", "price": 60, "purchaseAt": "1979-09-06T00:00:00Z", "trialPrice": 28}, {"currencyCode": "pNnmVhQ9", "currencyNamespace": "6OtalVqJ", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1972-05-02T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1991-10-17T00:00:00Z", "discountedPrice": 95, "expireAt": "1994-12-24T00:00:00Z", "price": 17, "purchaseAt": "1980-06-15T00:00:00Z", "trialPrice": 100}, {"currencyCode": "59DmuHFD", "currencyNamespace": "sEOwJJjD", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1971-09-05T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1980-04-19T00:00:00Z", "discountedPrice": 20, "expireAt": "1971-05-22T00:00:00Z", "price": 87, "purchaseAt": "1995-02-06T00:00:00Z", "trialPrice": 91}], "sXB1LkzY": [{"currencyCode": "gOWVScZr", "currencyNamespace": "ntKStU3l", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1981-10-11T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1987-10-06T00:00:00Z", "discountedPrice": 12, "expireAt": "1977-08-25T00:00:00Z", "price": 31, "purchaseAt": "1983-05-05T00:00:00Z", "trialPrice": 22}, {"currencyCode": "HGYphwFK", "currencyNamespace": "KOTR48OC", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1975-03-31T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1983-09-29T00:00:00Z", "discountedPrice": 63, "expireAt": "1995-11-08T00:00:00Z", "price": 4, "purchaseAt": "1974-12-17T00:00:00Z", "trialPrice": 52}, {"currencyCode": "QIxdw6td", "currencyNamespace": "ML7piVz0", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1972-11-01T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1990-12-18T00:00:00Z", "discountedPrice": 49, "expireAt": "1980-08-30T00:00:00Z", "price": 45, "purchaseAt": "1975-03-28T00:00:00Z", "trialPrice": 76}]}}]}' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateRegionData' test.out

#- 95 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'LOOTBOX' \
    --limit '54' \
    --offset '3' \
    --sortBy 'BwQ5OqkH' \
    --storeId 'ElRREsbA' \
    --keyword 'BjUZPjMM' \
    --language 'uPy0TN1m' \
    > test.out 2>&1
eval_tap $? 95 'SearchItems' test.out

#- 96 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '49' \
    --offset '13' \
    --sortBy '["name:desc", "name", "createdAt:asc"]' \
    --storeId 'PyxA8JLK' \
    > test.out 2>&1
eval_tap $? 96 'QueryUncategorizedItems' test.out

#- 97 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '2GZX5klm' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '7VNAcMlc' \
    > test.out 2>&1
eval_tap $? 97 'GetItem' test.out

#- 98 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'eaU8vBgY' \
    --namespace $AB_NAMESPACE \
    --storeId 'wKzeCap1' \
    --body '{"appId": "qdlJKUsb", "appType": "DLC", "baseAppId": "Oq4eCUJt", "boothName": "FHMYHh7H", "categoryPath": "AVacSuX8", "clazz": "mRthfUSH", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"ZD4vdHxt": {}, "g7PIVbhd": {}, "5qEd9k3h": {}}, "features": ["97Heg0GE", "xv5s34Fg", "GGVHRwWu"], "images": [{"as": "DyFKbZvy", "caption": "0iQVOjIH", "height": 60, "imageUrl": "6EtlIlt6", "smallImageUrl": "Kpfwyoiz", "width": 21}, {"as": "owCqK2vc", "caption": "b9dSsdqz", "height": 98, "imageUrl": "vkYHVdgt", "smallImageUrl": "xn5XmFGe", "width": 100}, {"as": "gjFuOQKk", "caption": "wtKkroec", "height": 30, "imageUrl": "aSBYLfpC", "smallImageUrl": "mbuyNGOf", "width": 66}], "itemIds": ["HbWRyTdA", "LoyTpbg8", "mgYuX9ol"], "itemQty": {"ObkhUcka": 85, "7EmG1Nft": 36, "hbEXsVP3": 32}, "itemType": "MEDIA", "listable": true, "localizations": {"SLYLvcj9": {"description": "puncS6fk", "localExt": {"ZdE0IUet": {}, "uPA4vXEq": {}, "VtAgT4kN": {}}, "longDescription": "vOa9XkX2", "title": "aRNNBVXW"}, "Yoe6IK1V": {"description": "wv0Uj56t", "localExt": {"VMhgjEFf": {}, "0C08Drog": {}, "TYvfzbbR": {}}, "longDescription": "bEmvwJ6t", "title": "G0njkLo8"}, "Hg6zDqde": {"description": "3WFWrzW9", "localExt": {"DMLY1Tkl": {}, "QsNqpAjX": {}, "e7Aj8Nf3": {}}, "longDescription": "NrS75L7Y", "title": "x27BdlzD"}}, "lootBoxConfig": {"rewardCount": 25, "rewards": [{"lootBoxItems": [{"count": 0, "itemId": "AaLdNqZt", "itemSku": "xcORI5fQ", "itemType": "xHU3nYpI"}, {"count": 6, "itemId": "tSZk0vGu", "itemSku": "GbiZRTSo", "itemType": "0Fw4uDpY"}, {"count": 30, "itemId": "Al0AP7AI", "itemSku": "H8MmZmbB", "itemType": "Znv3nW3u"}], "name": "quzNiwxe", "odds": 0.20836004531717822, "type": "REWARD", "weight": 0}, {"lootBoxItems": [{"count": 79, "itemId": "DnaWKPjo", "itemSku": "inztqvyr", "itemType": "C0ybbQv0"}, {"count": 73, "itemId": "QAS1eBJJ", "itemSku": "CEp2Mmrl", "itemType": "DckZtf6S"}, {"count": 31, "itemId": "z8DzSkQO", "itemSku": "fzpSIEjq", "itemType": "1jzK7LaE"}], "name": "mfzUXfNH", "odds": 0.6556715079077674, "type": "REWARD", "weight": 8}, {"lootBoxItems": [{"count": 19, "itemId": "x92xqoix", "itemSku": "2xWSJ4Se", "itemType": "MXkYLn8a"}, {"count": 23, "itemId": "mbh49h17", "itemSku": "sfKc742k", "itemType": "yEu3X08g"}, {"count": 22, "itemId": "Y1l0bwC9", "itemSku": "dHWhFXsy", "itemType": "ihpDJVzh"}], "name": "OTwhzKne", "odds": 0.9640493353510415, "type": "PROBABILITY_GROUP", "weight": 18}], "rollFunction": "DEFAULT"}, "maxCount": 57, "maxCountPerUser": 90, "name": "Y493nWvl", "optionBoxConfig": {"boxItems": [{"count": 13, "itemId": "NVzTbYE9", "itemSku": "QGrib2qO", "itemType": "8Tyy6FT7"}, {"count": 36, "itemId": "3lSEbKn5", "itemSku": "GCf4CEOm", "itemType": "yzibu1Re"}, {"count": 57, "itemId": "3hgyZBI6", "itemSku": "Sm5GvrGG", "itemType": "LaQGfW7n"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 6, "graceDays": 35}, "regionData": {"gzzv3eQC": [{"currencyCode": "EcWFrO1P", "currencyNamespace": "YokpmiNU", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1990-12-23T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1991-11-11T00:00:00Z", "discountedPrice": 48, "expireAt": "1992-05-21T00:00:00Z", "price": 93, "purchaseAt": "1972-07-09T00:00:00Z", "trialPrice": 24}, {"currencyCode": "KHuhBnGq", "currencyNamespace": "lrHRrHQp", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1997-03-30T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1982-08-05T00:00:00Z", "discountedPrice": 92, "expireAt": "1973-07-09T00:00:00Z", "price": 38, "purchaseAt": "1981-12-25T00:00:00Z", "trialPrice": 42}, {"currencyCode": "peGL2hec", "currencyNamespace": "yJXWdqLp", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1994-04-15T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1993-04-03T00:00:00Z", "discountedPrice": 7, "expireAt": "1990-01-18T00:00:00Z", "price": 16, "purchaseAt": "1971-02-05T00:00:00Z", "trialPrice": 71}], "HlOVWt7A": [{"currencyCode": "bwmogGUm", "currencyNamespace": "c32g2ZP8", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1999-05-20T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1971-01-26T00:00:00Z", "discountedPrice": 63, "expireAt": "1988-06-30T00:00:00Z", "price": 94, "purchaseAt": "1982-03-27T00:00:00Z", "trialPrice": 45}, {"currencyCode": "SAhjBT08", "currencyNamespace": "4qCNzOAy", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-05-17T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1989-10-22T00:00:00Z", "discountedPrice": 47, "expireAt": "1978-08-20T00:00:00Z", "price": 59, "purchaseAt": "1973-09-11T00:00:00Z", "trialPrice": 34}, {"currencyCode": "p5Ej0kIi", "currencyNamespace": "Dt5ZhgGj", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1988-06-30T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1974-10-23T00:00:00Z", "discountedPrice": 12, "expireAt": "1976-02-27T00:00:00Z", "price": 25, "purchaseAt": "1998-07-14T00:00:00Z", "trialPrice": 59}], "H07enC9Q": [{"currencyCode": "sgpDua4Q", "currencyNamespace": "VfRas9Jq", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1984-06-28T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1974-10-18T00:00:00Z", "discountedPrice": 83, "expireAt": "1999-12-01T00:00:00Z", "price": 34, "purchaseAt": "1986-05-08T00:00:00Z", "trialPrice": 26}, {"currencyCode": "4sse5uKv", "currencyNamespace": "Q1LGuVwS", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1998-11-04T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1971-01-11T00:00:00Z", "discountedPrice": 63, "expireAt": "1995-01-27T00:00:00Z", "price": 73, "purchaseAt": "1981-10-27T00:00:00Z", "trialPrice": 90}, {"currencyCode": "W38Klf49", "currencyNamespace": "eGRYDCja", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1980-11-15T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1980-08-21T00:00:00Z", "discountedPrice": 39, "expireAt": "1979-06-24T00:00:00Z", "price": 97, "purchaseAt": "1997-08-31T00:00:00Z", "trialPrice": 64}]}, "saleConfig": {"currencyCode": "Pv5aaa92", "price": 53}, "seasonType": "TIER", "sellable": false, "sku": "l5O9AcQ4", "stackable": true, "status": "ACTIVE", "tags": ["7H5QI8MP", "tT7QGI24", "eU72xXMd"], "targetCurrencyCode": "ZSs9RVzS", "targetNamespace": "B4mbsuhm", "thumbnailUrl": "tGXZjvYe", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateItem' test.out

#- 99 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '65H7JGar' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'mDXKUQOB' \
    > test.out 2>&1
eval_tap $? 99 'DeleteItem' test.out

#- 100 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'q8HzCc91' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 64, "orderNo": "tUdM09Xj"}' \
    > test.out 2>&1
eval_tap $? 100 'AcquireItem' test.out

#- 101 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'xyl3krnq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DdCs8d5V' \
    > test.out 2>&1
eval_tap $? 101 'GetApp' test.out

#- 102 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'g2NoH91Y' \
    --namespace $AB_NAMESPACE \
    --storeId '1pu9XuR3' \
    --body '{"carousel": [{"alt": "fK85b7Ka", "previewUrl": "lvSXD1hd", "thumbnailUrl": "3zigRcMP", "type": "image", "url": "87NkKf0Z", "videoSource": "vimeo"}, {"alt": "TU3ciDSp", "previewUrl": "vKO1oIx3", "thumbnailUrl": "9me1Wbgg", "type": "video", "url": "zNfLpfvm", "videoSource": "vimeo"}, {"alt": "Ya7OQcCk", "previewUrl": "XUJBBxOG", "thumbnailUrl": "22DffnLj", "type": "video", "url": "nr7cYbvW", "videoSource": "vimeo"}], "developer": "nkcZ26Gd", "forumUrl": "PKPIllgd", "genres": ["MassivelyMultiplayer", "MassivelyMultiplayer", "MassivelyMultiplayer"], "localizations": {"eAf2R9Ek": {"announcement": "guVkC2sV", "slogan": "KCtcujVR"}, "Hg74NgV1": {"announcement": "abGKBEqu", "slogan": "BtIo4qqn"}, "42WKIVm9": {"announcement": "O4aIUqKq", "slogan": "BYJ0h6r2"}}, "platformRequirements": {"NOdfcSVn": [{"additionals": "s0y4w0gF", "directXVersion": "whkTtFyF", "diskSpace": "xmQ0IdY8", "graphics": "cHlZhh1B", "label": "9zcLPSYL", "osVersion": "eEtxRYd2", "processor": "fKQyzMHZ", "ram": "F0EAZbxh", "soundCard": "bLF8zwS5"}, {"additionals": "zT5YVqDg", "directXVersion": "a0RyuNxH", "diskSpace": "ye6xjlR5", "graphics": "qrCuKG3p", "label": "i1WKFPgj", "osVersion": "bynESOmh", "processor": "eFinbhW6", "ram": "tfvqa94y", "soundCard": "9seoderR"}, {"additionals": "iMcfjUka", "directXVersion": "zczXzpK3", "diskSpace": "SYEnyjzu", "graphics": "nyZq2v10", "label": "avzpIkcm", "osVersion": "PjWPACOD", "processor": "VvJFB0PS", "ram": "QOqMTFE4", "soundCard": "n8Es8G6c"}], "gkbxsngB": [{"additionals": "7cUJaTLg", "directXVersion": "ypBOQ8hg", "diskSpace": "6cdqK8VW", "graphics": "CLTLmKos", "label": "u03PZnqc", "osVersion": "KkubeX0V", "processor": "yhQ0Kif4", "ram": "ReAxrn6q", "soundCard": "gsgd6Mtj"}, {"additionals": "rvdPYje8", "directXVersion": "7shnt1pK", "diskSpace": "oZnhYKd1", "graphics": "G0TbhNb0", "label": "7Ccvnlk8", "osVersion": "XEd1UoKZ", "processor": "Mo2boxrK", "ram": "1dsrq2Ep", "soundCard": "jzKG6a5m"}, {"additionals": "ukoJqeHl", "directXVersion": "omoERUar", "diskSpace": "9rimoRi4", "graphics": "iZ6LYvtz", "label": "zsGecIz7", "osVersion": "Uw5Ciq06", "processor": "Ofla2jvR", "ram": "XMBcWn16", "soundCard": "459AN9Cz"}], "nIPT72Cf": [{"additionals": "0xJViCMa", "directXVersion": "a5LZl0gH", "diskSpace": "ef89h2tw", "graphics": "17FQNGnc", "label": "0F9Xz5Lb", "osVersion": "ECc8Tyj0", "processor": "QyyLWeGD", "ram": "gM9qjGj4", "soundCard": "AZeGEPqT"}, {"additionals": "q0jcv4js", "directXVersion": "zrAuZvMQ", "diskSpace": "TkfppARV", "graphics": "vm1YJd4E", "label": "nl6pUR9W", "osVersion": "7OU7syEQ", "processor": "rXqpTmTa", "ram": "STXeBqs6", "soundCard": "DpfzHhWk"}, {"additionals": "xaryg1Bp", "directXVersion": "uyJIxcPA", "diskSpace": "lCv8WUqc", "graphics": "jO4paqPt", "label": "6Hu2pO9M", "osVersion": "UEJqKGnK", "processor": "4k93kI4G", "ram": "AAHoGkNs", "soundCard": "5yHtOBzt"}]}, "platforms": ["Android", "MacOS", "Windows"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "Single"], "primaryGenre": "Strategy", "publisher": "Mgy0NDfM", "releaseDate": "1994-12-31T00:00:00Z", "websiteUrl": "JQnbbqQV"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateApp' test.out

#- 103 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'MvyjVyAJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Txnszgfc' \
    > test.out 2>&1
eval_tap $? 103 'DisableItem' test.out

#- 104 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'GzVaje84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetItemDynamicData' test.out

#- 105 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'raxqW24V' \
    --namespace $AB_NAMESPACE \
    --storeId 'VYE0Ienk' \
    > test.out 2>&1
eval_tap $? 105 'EnableItem' test.out

#- 106 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '09MGNl7p' \
    --itemId 'mhROlRcP' \
    --namespace $AB_NAMESPACE \
    --storeId '4w9Npn7a' \
    > test.out 2>&1
eval_tap $? 106 'FeatureItem' test.out

#- 107 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'POn5eCYr' \
    --itemId '20Smgn0J' \
    --namespace $AB_NAMESPACE \
    --storeId 'p7jWynuz' \
    > test.out 2>&1
eval_tap $? 107 'DefeatureItem' test.out

#- 108 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'NgsPzgzS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'OXtaFAM9' \
    --populateBundle 'false' \
    --region 'qMiGXRZW' \
    --storeId '0upUXXmD' \
    > test.out 2>&1
eval_tap $? 108 'GetLocaleItem' test.out

#- 109 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'en5n0Zip' \
    --namespace $AB_NAMESPACE \
    --storeId 'YevSlcnm' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 98, "comparison": "is", "name": "gTw9fggq", "predicateType": "SeasonTierPredicate", "value": "6GBnCu37", "values": ["1IZQgIiP", "P771z2Zv", "d6J6diV1"]}, {"anyOf": 7, "comparison": "is", "name": "aqiVA3Yz", "predicateType": "SeasonTierPredicate", "value": "CcHKbOgd", "values": ["tesgvPEm", "nMerLZta", "pJX5Nj9x"]}, {"anyOf": 82, "comparison": "isNot", "name": "tBkYcsAO", "predicateType": "SeasonTierPredicate", "value": "kXYCX4fa", "values": ["7P6qm2SB", "JtrDBiv6", "1zDjettU"]}]}, {"operator": "or", "predicates": [{"anyOf": 75, "comparison": "isLessThan", "name": "60GYnrNK", "predicateType": "EntitlementPredicate", "value": "hmTUUZhv", "values": ["TdlzXnlh", "U8u7WvYb", "pCmu0qfK"]}, {"anyOf": 21, "comparison": "isNot", "name": "zGD5i8LD", "predicateType": "SeasonPassPredicate", "value": "DzoRYPnV", "values": ["7tvL12ap", "ooTlNiGf", "3SPGl6sQ"]}, {"anyOf": 57, "comparison": "excludes", "name": "KxoUTmi2", "predicateType": "SeasonPassPredicate", "value": "USvMi48e", "values": ["3igG85u5", "Bx8RTa3M", "jQP6p3sT"]}]}, {"operator": "and", "predicates": [{"anyOf": 96, "comparison": "isNot", "name": "oUzO14DE", "predicateType": "SeasonPassPredicate", "value": "LPOpTbUy", "values": ["PQIChcH3", "z2rHykmf", "a4NheCj2"]}, {"anyOf": 87, "comparison": "isNot", "name": "6fZz6gKb", "predicateType": "SeasonPassPredicate", "value": "8vG5Ojsh", "values": ["QfAuG7RY", "5Qq3ZPaj", "fVCiOVDQ"]}, {"anyOf": 71, "comparison": "isLessThanOrEqual", "name": "wFb3EJ8Y", "predicateType": "EntitlementPredicate", "value": "u4ca4XJo", "values": ["p1Mz2mg1", "cyg90ETg", "WdSptGIh"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 109 'UpdateItemPurchaseCondition' test.out

#- 110 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '4F9yNCmg' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "fS60Pm2M"}' \
    > test.out 2>&1
eval_tap $? 110 'ReturnItem' test.out

#- 111 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name '59MUWgRQ' \
    --offset '6' \
    --tag '6o9dOU11' \
    > test.out 2>&1
eval_tap $? 111 'QueryKeyGroups' test.out

#- 112 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "toy9Fvss", "name": "dqyMiQmr", "status": "INACTIVE", "tags": ["GTZSFMqs", "f6lji8zA", "fe66epHB"]}' \
    > test.out 2>&1
eval_tap $? 112 'CreateKeyGroup' test.out

#- 113 GetKeyGroupByBoothName
eval_tap 0 113 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 114 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'VekDIfRC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroup' test.out

#- 115 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'VxRSz2nX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QsUozzQI", "name": "cvF4DoMP", "status": "INACTIVE", "tags": ["8FmwTw1F", "hAxFZbzk", "6Oo1hFtV"]}' \
    > test.out 2>&1
eval_tap $? 115 'UpdateKeyGroup' test.out

#- 116 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'aW3GnGzv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroupDynamic' test.out

#- 117 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'I7H0WsRq' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '91' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 117 'ListKeys' test.out

#- 118 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'yoWFlQy6' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 118 'UploadKeys' test.out

#- 119 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'EU22QbiD' \
    --limit '66' \
    --offset '42' \
    --orderNos '["qCKrcOCs", "6QiBCZQm", "cIrMRkVn"]' \
    --sortBy '6rQjUV1S' \
    --startTime 'LjQEsnZ5' \
    --status 'FULFILLED' \
    --withTotal 'false' \
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
    --orderNo 'SeeNidOg' \
    > test.out 2>&1
eval_tap $? 121 'GetOrder' test.out

#- 122 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AMsdQKzK' \
    --body '{"description": "d99jRwMT"}' \
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
    --body '{"dryRun": true, "notifyUrl": "Ly3jk2zU", "privateKey": "GJWzvfHK"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdatePaymentCallbackConfig' test.out

#- 125 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'olSwk9E6' \
    --externalId '4KKK3P5W' \
    --limit '88' \
    --notificationSource 'WALLET' \
    --notificationType 'McpyyoAp' \
    --offset '68' \
    --paymentOrderNo 'haVPI49A' \
    --startDate 'rZzDHjvx' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentNotifications' test.out

#- 126 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'saUCBXnA' \
    --limit '4' \
    --offset '19' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 126 'QueryPaymentOrders' test.out

#- 127 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "gNKf5Tsm", "currencyNamespace": "ubmNmSBG", "customParameters": {"TWhJyHv8": {}, "HvsiGL9I": {}, "SAo9AYQE": {}}, "description": "LJuZ2SQw", "extOrderNo": "eoF5rdIK", "extUserId": "7Kc1Ltio", "itemType": "SUBSCRIPTION", "language": "qUw_bdEA", "metadata": {"BPgH1WpX": "nqGFiVgN", "okHGs2d3": "lHKaRXgn", "1h1WNhKC": "A5Z99wJe"}, "notifyUrl": "Fj4mb7xL", "omitNotification": true, "platform": "QgWumng5", "price": 75, "recurringPaymentOrderNo": "wFsSKH3B", "region": "N9fOgkVi", "returnUrl": "Tv0sY4X9", "sandbox": false, "sku": "s4nCah7c", "subscriptionId": "7ZQei3lX", "targetNamespace": "MM3rnESC", "targetUserId": "EJjNazUy", "title": "gvXR0ZiW"}' \
    > test.out 2>&1
eval_tap $? 127 'CreatePaymentOrderByDedicated' test.out

#- 128 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'BcFqWFF0' \
    > test.out 2>&1
eval_tap $? 128 'ListExtOrderNoByExtTxId' test.out

#- 129 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5mb8ZY78' \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrder' test.out

#- 130 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'i6AJg3xJ' \
    --body '{"extTxId": "KMFH4hBr", "paymentMethod": "jGauWwr5", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 130 'ChargePaymentOrder' test.out

#- 131 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'q28qYwtt' \
    --body '{"description": "LKvVNu32"}' \
    > test.out 2>&1
eval_tap $? 131 'RefundPaymentOrderByDedicated' test.out

#- 132 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'gog5YCHk' \
    --body '{"amount": 16, "currencyCode": "PwngrEHq", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 23, "vat": 80}' \
    > test.out 2>&1
eval_tap $? 132 'SimulatePaymentOrderNotification' test.out

#- 133 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'brvM4TPt' \
    > test.out 2>&1
eval_tap $? 133 'GetPaymentOrderChargeStatus' test.out

#- 134 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 134 'GetPlatformWalletConfig' test.out

#- 135 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "Other", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdatePlatformWalletConfig' test.out

#- 136 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 136 'ResetPlatformWalletConfig' test.out

#- 137 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'GetRevocationConfig' test.out

#- 138 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'ZnWOyPQL' \
    --limit '67' \
    --offset '8' \
    --source 'OTHER' \
    --startTime 'WOAxVudM' \
    --status 'SUCCESS' \
    --transactionId 'tRAFppEm' \
    --userId 'oc3dIjrg' \
    > test.out 2>&1
eval_tap $? 140 'QueryRevocationHistories' test.out

#- 141 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fslBrFyp", "eventTopic": "whtouXgL", "maxAwarded": 34, "maxAwardedPerUser": 1, "namespaceExpression": "28mlJivM", "rewardCode": "HSBMFxMY", "rewardConditions": [{"condition": "qnUfQw7K", "conditionName": "0E3nkcAk", "eventName": "oRPAmMIV", "rewardItems": [{"duration": 51, "itemId": "og43mxIF", "quantity": 7}, {"duration": 9, "itemId": "7PFDnqXd", "quantity": 52}, {"duration": 96, "itemId": "dbB9vzHb", "quantity": 84}]}, {"condition": "6e4Bw1fw", "conditionName": "1ghol35y", "eventName": "1TdaRIXA", "rewardItems": [{"duration": 25, "itemId": "V8x9Gv3G", "quantity": 62}, {"duration": 35, "itemId": "q5Xsm5wi", "quantity": 18}, {"duration": 83, "itemId": "7LMdixGm", "quantity": 9}]}, {"condition": "dPxicq2Q", "conditionName": "czgYBYvI", "eventName": "egXzFxSu", "rewardItems": [{"duration": 52, "itemId": "2TbBvNc1", "quantity": 11}, {"duration": 2, "itemId": "3MD1MWE2", "quantity": 45}, {"duration": 38, "itemId": "f7is4w0M", "quantity": 16}]}], "userIdExpression": "lOTCrkbc"}' \
    > test.out 2>&1
eval_tap $? 141 'CreateReward' test.out

#- 142 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ViQpvpxx' \
    --limit '14' \
    --offset '27' \
    --sortBy '["namespace", "namespace:asc", "namespace:desc"]' \
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
    --rewardId 'Mbrn6esX' \
    > test.out 2>&1
eval_tap $? 145 'GetReward' test.out

#- 146 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'bwV8gwou' \
    --body '{"description": "ggpL7QsX", "eventTopic": "9it80FzL", "maxAwarded": 26, "maxAwardedPerUser": 94, "namespaceExpression": "zwwpTDt5", "rewardCode": "syfxS4kh", "rewardConditions": [{"condition": "9UJgCwU8", "conditionName": "H8mG0Fs8", "eventName": "iOxPXHaw", "rewardItems": [{"duration": 97, "itemId": "Y7OibYht", "quantity": 64}, {"duration": 79, "itemId": "AF6iW7ou", "quantity": 26}, {"duration": 18, "itemId": "AcdiROTl", "quantity": 56}]}, {"condition": "Ob8qX5Q4", "conditionName": "aGfo0M8s", "eventName": "RkryESir", "rewardItems": [{"duration": 41, "itemId": "ov4qS9lx", "quantity": 15}, {"duration": 49, "itemId": "xIYkhA0v", "quantity": 51}, {"duration": 31, "itemId": "Fzw7LPcR", "quantity": 88}]}, {"condition": "oW3o3oco", "conditionName": "QDzuaJLw", "eventName": "m7eXdvJb", "rewardItems": [{"duration": 20, "itemId": "BtXApDfB", "quantity": 2}, {"duration": 1, "itemId": "DDZEFBOI", "quantity": 36}, {"duration": 32, "itemId": "9W8WVdhP", "quantity": 25}]}], "userIdExpression": "88oSRBRH"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateReward' test.out

#- 147 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'fd4lJ0Kz' \
    > test.out 2>&1
eval_tap $? 147 'DeleteReward' test.out

#- 148 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'p2Mzc0oL' \
    --body '{"payload": {"LYKgs2Ti": {}, "dhgBEJEt": {}, "ySUzCm0a": {}}}' \
    > test.out 2>&1
eval_tap $? 148 'CheckEventCondition' test.out

#- 149 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '2cZFOPq6' \
    --body '{"conditionName": "HHXpm1Wh", "userId": "IMwEAFoz"}' \
    > test.out 2>&1
eval_tap $? 149 'DeleteRewardConditionRecord' test.out

#- 150 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 's5DJVwPQ' \
    --limit '55' \
    --offset '18' \
    --start 'U2jP6COa' \
    --storeId 'kFOzUt3E' \
    --viewId '2sKKAIXi' \
    > test.out 2>&1
eval_tap $? 150 'QuerySections' test.out

#- 151 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'qw35v0Im' \
    --body '{"active": true, "displayOrder": 44, "endDate": "1984-12-24T00:00:00Z", "ext": {"TqUoAhpq": {}, "lSAkGnJ5": {}, "7StjDK2f": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 3, "itemCount": 29, "rule": "SEQUENCE"}, "items": [{"id": "tLQNd0Ow", "sku": "oChIMYax"}, {"id": "PhRas5wf", "sku": "U1OkjwQQ"}, {"id": "9rI5XWaY", "sku": "u0p5ieJq"}], "localizations": {"Rp5ixcxJ": {"description": "DqzeWR4T", "localExt": {"FHifyYSK": {}, "lisTtnWf": {}, "wQsScSpd": {}}, "longDescription": "NtxCABPd", "title": "z09JnuNx"}, "PLZQInja": {"description": "ErwjhtJi", "localExt": {"vKaO9eEp": {}, "i4dYfJJ3": {}, "OVRr3boX": {}}, "longDescription": "8HsUo7xB", "title": "TgltqgNq"}, "t0X2ck0q": {"description": "iVVVY8Zd", "localExt": {"9ajZoe4u": {}, "QKeQuqxB": {}, "KGXQsQVN": {}}, "longDescription": "Vgw0Nsqn", "title": "g4fGbRqJ"}}, "name": "LRXjmyWf", "rotationType": "FIXED_PERIOD", "startDate": "1990-12-18T00:00:00Z", "viewId": "H72pcKrM"}' \
    > test.out 2>&1
eval_tap $? 151 'CreateSection' test.out

#- 152 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'xWnKoZ61' \
    > test.out 2>&1
eval_tap $? 152 'PurgeExpiredSection' test.out

#- 153 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'B4SLh17m' \
    --storeId 'lnwbOuxK' \
    > test.out 2>&1
eval_tap $? 153 'GetSection' test.out

#- 154 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'jOAhwekY' \
    --storeId '5WyuSyKH' \
    --body '{"active": true, "displayOrder": 99, "endDate": "1994-02-12T00:00:00Z", "ext": {"YnFl9QVn": {}, "u1lAXCvs": {}, "iBdEBr4v": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 43, "itemCount": 2, "rule": "SEQUENCE"}, "items": [{"id": "jU8FgWms", "sku": "vwQwlWIs"}, {"id": "scl9HvKz", "sku": "ONF5WXFA"}, {"id": "oizro7BJ", "sku": "XnULTePQ"}], "localizations": {"YDmB8SUx": {"description": "KCFWOKoM", "localExt": {"NK1MrteP": {}, "E69OBRQp": {}, "hVUA09Lk": {}}, "longDescription": "YeHZ0QL6", "title": "TE0FB7mJ"}, "SxFFW7iA": {"description": "I4mL0gTy", "localExt": {"L99A0YL4": {}, "H1gwMubW": {}, "6wXyjswK": {}}, "longDescription": "71idid2J", "title": "iyd0UITi"}, "whAbJgoI": {"description": "b84JBJ7c", "localExt": {"mWBvU7XT": {}, "uDW8sIx0": {}, "NgJF5IhB": {}}, "longDescription": "gZbDpdLE", "title": "LDfGwFQS"}}, "name": "ZrHY8E26", "rotationType": "CUSTOM", "startDate": "1980-10-19T00:00:00Z", "viewId": "KzlfeNDV"}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateSection' test.out

#- 155 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VHk6U4wA' \
    --storeId 'TGEASnYx' \
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
    --body '{"defaultLanguage": "LSlDnSyJ", "defaultRegion": "Y3OqHlxS", "description": "NQ97umLu", "supportedLanguages": ["zlv1aPTt", "EZwE6a1I", "XGNpW4wv"], "supportedRegions": ["IeicGFwe", "bfvuSBdG", "q2B5y4SI"], "title": "T888uFMq"}' \
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
    --storeId '8Nv7dRbK' \
    > test.out 2>&1
eval_tap $? 163 'GetStore' test.out

#- 164 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dMR7zr6J' \
    --body '{"defaultLanguage": "faCkPWZQ", "defaultRegion": "BKI46rbp", "description": "BUCkvb5Z", "supportedLanguages": ["1kQ01ze5", "zDCNI2wA", "0gZHF3hP"], "supportedRegions": ["0dTbQVAw", "TNaWQd7i", "pFAXz4o2"], "title": "FeLwZjlt"}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateStore' test.out

#- 165 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tZiGs7wt' \
    > test.out 2>&1
eval_tap $? 165 'DeleteStore' test.out

#- 166 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'huF7aSxT' \
    --action 'DELETE' \
    --itemSku 'MccRmYyD' \
    --itemType 'SUBSCRIPTION' \
    --limit '75' \
    --offset '13' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'h5ac5xgM' \
    --updatedAtStart 'dKOgCBLp' \
    > test.out 2>&1
eval_tap $? 166 'QueryChanges' test.out

#- 167 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '3HVh6ZGr' \
    > test.out 2>&1
eval_tap $? 167 'PublishAll' test.out

#- 168 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'gUfGEkAq' \
    > test.out 2>&1
eval_tap $? 168 'PublishSelected' test.out

#- 169 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'cdG9qua9' \
    > test.out 2>&1
eval_tap $? 169 'SelectAllRecords' test.out

#- 170 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'a4tTuDLL' \
    --action 'CREATE' \
    --itemSku 'VqoNCfDp' \
    --itemType 'MEDIA' \
    --type 'CATEGORY' \
    --updatedAtEnd '8iYROYVs' \
    --updatedAtStart 'SGGrGrhl' \
    > test.out 2>&1
eval_tap $? 170 'GetStatistic' test.out

#- 171 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'SdlyKq3R' \
    > test.out 2>&1
eval_tap $? 171 'UnselectAllRecords' test.out

#- 172 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'Ww9TXHX4' \
    --namespace $AB_NAMESPACE \
    --storeId 'DjRMVHab' \
    > test.out 2>&1
eval_tap $? 172 'SelectRecord' test.out

#- 173 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'ICE08e9B' \
    --namespace $AB_NAMESPACE \
    --storeId 'Q2TaI6WE' \
    > test.out 2>&1
eval_tap $? 173 'UnselectRecord' test.out

#- 174 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'sxJu2dbt' \
    --targetStoreId 'eQVSZmm3' \
    > test.out 2>&1
eval_tap $? 174 'CloneStore' test.out

#- 175 ExportStore
eval_tap 0 175 'ExportStore # SKIP deprecated' test.out

#- 176 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'Sq5OQYEx' \
    --limit '10' \
    --offset '94' \
    --sku '4lHBmkQZ' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'wlc7vQXI' \
    > test.out 2>&1
eval_tap $? 176 'QuerySubscriptions' test.out

#- 177 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gHXLn61w' \
    > test.out 2>&1
eval_tap $? 177 'RecurringChargeSubscription' test.out

#- 178 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'HZxuoE0f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetTicketDynamic' test.out

#- 179 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'zH6tNjEO' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "AlWjKkzd"}' \
    > test.out 2>&1
eval_tap $? 179 'DecreaseTicketSale' test.out

#- 180 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'tQkYxSrk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetTicketBoothID' test.out

#- 181 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'qQZioPI4' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 32, "orderNo": "qu2ZrBj6"}' \
    > test.out 2>&1
eval_tap $? 181 'IncreaseTicketSale' test.out

#- 182 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '8bcK49aC' \
    --body '{"achievements": [{"id": "RS97EWAX", "value": 73}, {"id": "jceiKeLR", "value": 31}, {"id": "jwP1hssF", "value": 70}], "steamUserId": "aphbgZYb"}' \
    > test.out 2>&1
eval_tap $? 182 'UnlockSteamUserAchievement' test.out

#- 183 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6hjgua7I' \
    --xboxUserId 'WZZbOTBp' \
    > test.out 2>&1
eval_tap $? 183 'GetXblUserAchievements' test.out

#- 184 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9cQb7hJz' \
    --body '{"achievements": [{"id": "RvbLf8Qo", "value": 41}, {"id": "XQtlqvKQ", "value": 1}, {"id": "BYcqKLhN", "value": 75}], "serviceConfigId": "J8pc8lSM", "titleId": "GFouLsGa", "xboxUserId": "3FXdSiNu"}' \
    > test.out 2>&1
eval_tap $? 184 'UpdateXblUserAchievement' test.out

#- 185 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '5Yt5FWwq' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeCampaign' test.out

#- 186 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'X0IknAOW' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeEntitlement' test.out

#- 187 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ibSwXH3M' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeFulfillment' test.out

#- 188 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'h2xZ8kwE' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeIntegration' test.out

#- 189 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'OmUgbwT0' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeOrder' test.out

#- 190 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'YtNtIIOd' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizePayment' test.out

#- 191 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'HelKF10w' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeRevocation' test.out

#- 192 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ZeQEhXra' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeSubscription' test.out

#- 193 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'ZTwi3Hub' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizeWallet' test.out

#- 194 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'OlWBULEP' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 194 'GetUserDLC' test.out

#- 195 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vcHxGnJl' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'r2wjtSZi' \
    --features '["JnZ86SDT", "3nqqs1K4", "rvh8Yux8"]' \
    --itemId '["d8YXXz5B", "umwP4u9y", "boE0WcCf"]' \
    --limit '20' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlements' test.out

#- 196 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '9xn6633Z' \
    --body '[{"endDate": "1993-12-27T00:00:00Z", "grantedCode": "9UKiVl5Z", "itemId": "cuodAqi2", "itemNamespace": "1vYEYjfT", "language": "tXh-zZeD", "quantity": 34, "region": "Gg6F1Lei", "source": "IAP", "startDate": "1997-08-05T00:00:00Z", "storeId": "28unXFQ6"}, {"endDate": "1977-03-07T00:00:00Z", "grantedCode": "5TrH9Wjy", "itemId": "vZC610H3", "itemNamespace": "iu7U4sS7", "language": "kwie-083", "quantity": 56, "region": "vW5zFndD", "source": "OTHER", "startDate": "1981-07-13T00:00:00Z", "storeId": "HWBv3Rzi"}, {"endDate": "1987-11-01T00:00:00Z", "grantedCode": "EYYc5XvB", "itemId": "Ev6lCHTG", "itemNamespace": "7J2vQXXD", "language": "yqiw_328", "quantity": 79, "region": "zXRSYYhf", "source": "GIFT", "startDate": "1976-11-27T00:00:00Z", "storeId": "9n6iRHzF"}]' \
    > test.out 2>&1
eval_tap $? 196 'GrantUserEntitlement' test.out

#- 197 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YvKPU9d4' \
    --activeOnly 'true' \
    --appId 'Rw2aMYXn' \
    > test.out 2>&1
eval_tap $? 197 'GetUserAppEntitlementByAppId' test.out

#- 198 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'xZzbUvWG' \
    --activeOnly 'false' \
    --limit '41' \
    --offset '44' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserEntitlementsByAppType' test.out

#- 199 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gp34A2gq' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'r5tDtmwB' \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementByItemId' test.out

#- 200 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'plr0RT23' \
    --ids '["N66nPYvI", "8KftzQiP", "hEGQYj3z"]' \
    > test.out 2>&1
eval_tap $? 200 'GetUserActiveEntitlementsByItemIds' test.out

#- 201 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'KZH6HjNJ' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'pIu0WShx' \
    > test.out 2>&1
eval_tap $? 201 'GetUserEntitlementBySku' test.out

#- 202 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'v4YUIJ1p' \
    --appIds '["NlN1HbED", "Mkz0U3ER", "hrf2jYgW"]' \
    --itemIds '["n4KCw7Ju", "eRQgBoaZ", "BaMX3Vjo"]' \
    --skus '["bDKfebWj", "mn47QXnC", "JWo4LnCx"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlement' test.out

#- 203 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kiA65HKP' \
    --itemIds '["jaiIcdiN", "nuaWC14S", "AnDbY3Ax"]' \
    > test.out 2>&1
eval_tap $? 203 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 204 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'EAWZ1Nhx' \
    --appId 'aKSwA5XA' \
    > test.out 2>&1
eval_tap $? 204 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 205 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Vh44wzol' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '5DxETMFk' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemId' test.out

#- 206 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'T9A1fvsO' \
    --ids '["vt31qStE", "b4V0w10c", "DA3WoRHY"]' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipByItemIds' test.out

#- 207 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'avIDsKnW' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '7wkLK9ZC' \
    > test.out 2>&1
eval_tap $? 207 'GetUserEntitlementOwnershipBySku' test.out

#- 208 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DqIEEtm3' \
    > test.out 2>&1
eval_tap $? 208 'RevokeAllEntitlements' test.out

#- 209 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7ssrkHHD' \
    --entitlementIds 'SSkkYHGK' \
    > test.out 2>&1
eval_tap $? 209 'RevokeUserEntitlements' test.out

#- 210 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '5alUJ18U' \
    --namespace $AB_NAMESPACE \
    --userId 'OzEVmG4d' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlement' test.out

#- 211 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'YnGZ6D1O' \
    --namespace $AB_NAMESPACE \
    --userId 'Xp8J3Hg2' \
    --body '{"endDate": "1987-02-17T00:00:00Z", "nullFieldList": ["oWESNcmI", "O60gjqSe", "jtW089K8"], "startDate": "1972-08-28T00:00:00Z", "status": "CONSUMED", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateUserEntitlement' test.out

#- 212 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'f57DMxMI' \
    --namespace $AB_NAMESPACE \
    --userId 'v7r5mIfm' \
    --body '{"options": ["DOCRqaJ2", "sc6bgW0U", "JctzCWcy"], "requestId": "RwxFgtjI", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 212 'ConsumeUserEntitlement' test.out

#- 213 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'HEbSX1EP' \
    --namespace $AB_NAMESPACE \
    --userId '7d2Mumww' \
    > test.out 2>&1
eval_tap $? 213 'DisableUserEntitlement' test.out

#- 214 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'BP7MuHl0' \
    --namespace $AB_NAMESPACE \
    --userId 'K5jZSmv1' \
    > test.out 2>&1
eval_tap $? 214 'EnableUserEntitlement' test.out

#- 215 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'jWjnhEPs' \
    --namespace $AB_NAMESPACE \
    --userId 'StalZpGn' \
    > test.out 2>&1
eval_tap $? 215 'GetUserEntitlementHistories' test.out

#- 216 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'dniJ8Kkh' \
    --namespace $AB_NAMESPACE \
    --userId 'LAHMnv7g' \
    > test.out 2>&1
eval_tap $? 216 'RevokeUserEntitlement' test.out

#- 217 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'n62chNg7' \
    --namespace $AB_NAMESPACE \
    --userId 'lIpi3dzt' \
    --body '{"reason": "ouaVBoMA", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 217 'RevokeUseCount' test.out

#- 218 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '7aJdjWyL' \
    --namespace $AB_NAMESPACE \
    --userId 'tLmNhdNP' \
    --body '{"requestId": "wWgtsVjQ", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 218 'SellUserEntitlement' test.out

#- 219 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'zjszQXgo' \
    --body '{"duration": 93, "endDate": "1987-11-05T00:00:00Z", "itemId": "PRnXAcdu", "itemSku": "jdIyvmPV", "language": "xHhnWrmJ", "order": {"currency": {"currencyCode": "c5aLevhN", "currencySymbol": "tDSMysdc", "currencyType": "REAL", "decimals": 7, "namespace": "rYN4tFJt"}, "ext": {"25qZLJEI": {}, "mNmq1NaI": {}, "MtGi8jde": {}}, "free": false}, "orderNo": "H4JHNs7s", "origin": "Twitch", "quantity": 83, "region": "sBlaYv0b", "source": "GIFT", "startDate": "1995-07-14T00:00:00Z", "storeId": "cQV6YDqa"}' \
    > test.out 2>&1
eval_tap $? 219 'FulfillItem' test.out

#- 220 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'FhfV5ISo' \
    --body '{"code": "aif6jdI9", "language": "cAd-UNom", "region": "YwUxuFos"}' \
    > test.out 2>&1
eval_tap $? 220 'RedeemCode' test.out

#- 221 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rT6Aqwud' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "d955wkEx", "namespace": "9mOvD7l8"}, "item": {"itemId": "CY6c8jPt", "itemSku": "CXRhIPk4", "itemType": "Ekw4Ky1O"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "w9Zq2wO2", "namespace": "XHEivYG8"}, "item": {"itemId": "jkB7kFG4", "itemSku": "3QGOFEIG", "itemType": "mvgYHAvj"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "rsFQLV5P", "namespace": "XdKvWlQM"}, "item": {"itemId": "xpeCfyhn", "itemSku": "aUpsAIHh", "itemType": "3WSzDxFV"}, "quantity": 30, "type": "ITEM"}], "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 221 'FulfillRewards' test.out

#- 222 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'yV2SHy98' \
    --endTime 'W7NazIOa' \
    --limit '78' \
    --offset '87' \
    --productId 'COHFtI0p' \
    --startTime 'ueGjHJvk' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserIAPOrders' test.out

#- 223 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 's1j1X4qc' \
    > test.out 2>&1
eval_tap $? 223 'QueryAllUserIAPOrders' test.out

#- 224 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '5kYNkGH7' \
    --endTime 'UedlS4TZ' \
    --limit '2' \
    --offset '100' \
    --startTime 'oIZGlool' \
    --status 'FAIL' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserIAPConsumeHistory' test.out

#- 225 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'uZtSfPa8' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Gc_dwIB", "productId": "wA7J7ouA", "region": "rZjSaA8F", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 225 'MockFulfillIAPItem' test.out

#- 226 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '8m8BMzY4' \
    --itemId 'quO0yTC1' \
    --limit '5' \
    --offset '79' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserOrders' test.out

#- 227 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AZK0dkPE' \
    --body '{"currencyCode": "mlKZDWCr", "currencyNamespace": "4Z62TIoi", "discountedPrice": 69, "ext": {"mw481TAg": {}, "yOA92WPA": {}, "0mE0VOtq": {}}, "itemId": "gI2i2Pmo", "language": "5CEbImXT", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 42, "quantity": 64, "region": "6rR5U3Cl", "returnUrl": "e3hgiiuR", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 227 'AdminCreateUserOrder' test.out

#- 228 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'Od3ZUTVT' \
    --itemId '4WBShwxr' \
    > test.out 2>&1
eval_tap $? 228 'CountOfPurchasedItem' test.out

#- 229 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jDwaAGkf' \
    --userId 'stkso8nE' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrder' test.out

#- 230 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '8TntJVEL' \
    --userId '78uMjHWy' \
    --body '{"status": "REFUND_FAILED", "statusReason": "dqpxXOU6"}' \
    > test.out 2>&1
eval_tap $? 230 'UpdateUserOrderStatus' test.out

#- 231 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jiEdQ7Fl' \
    --userId 'bGkSCi6b' \
    > test.out 2>&1
eval_tap $? 231 'FulfillUserOrder' test.out

#- 232 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'iZPNI6Bm' \
    --userId 'VO3erdzq' \
    > test.out 2>&1
eval_tap $? 232 'GetUserOrderGrant' test.out

#- 233 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'pXbuhSyv' \
    --userId 'CjjDPvPE' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrderHistories' test.out

#- 234 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'DmEDLc89' \
    --userId 'CYu2t164' \
    --body '{"additionalData": {"cardSummary": "5phGB6qL"}, "authorisedTime": "1984-10-19T00:00:00Z", "chargebackReversedTime": "1998-03-24T00:00:00Z", "chargebackTime": "1989-01-05T00:00:00Z", "chargedTime": "1981-05-12T00:00:00Z", "createdTime": "1972-05-20T00:00:00Z", "currency": {"currencyCode": "gpNgxjes", "currencySymbol": "uNA2u0uf", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "EQTQWeZK"}, "customParameters": {"5reQHwHE": {}, "EONkbIKm": {}, "zZkooPdS": {}}, "extOrderNo": "sMDGeift", "extTxId": "k5zCmYYA", "extUserId": "xEm5pFJN", "issuedAt": "1973-06-03T00:00:00Z", "metadata": {"DwJWNLY9": "ySn2wMBM", "IsMjxCoV": "XMs6utxz", "C4pc1pb6": "vj8gaxCI"}, "namespace": "7EYswmx3", "nonceStr": "e8G8OPXJ", "paymentMethod": "hB1neoe4", "paymentMethodFee": 99, "paymentOrderNo": "UAZLYr9W", "paymentProvider": "XSOLLA", "paymentProviderFee": 60, "paymentStationUrl": "Qi3otkK2", "price": 53, "refundedTime": "1988-09-01T00:00:00Z", "salesTax": 84, "sandbox": true, "sku": "WBRchp37", "status": "REFUNDED", "statusReason": "tQLfTAg9", "subscriptionId": "GuQ3FTZ3", "subtotalPrice": 63, "targetNamespace": "zkERHxoH", "targetUserId": "RK3e4D1l", "tax": 8, "totalPrice": 45, "totalTax": 17, "txEndTime": "1996-08-23T00:00:00Z", "type": "8omRewQS", "userId": "qmx2Ul1O", "vat": 78}' \
    > test.out 2>&1
eval_tap $? 234 'ProcessUserOrderNotification' test.out

#- 235 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'sJ4I0zBr' \
    --userId 'JRMJE2Lq' \
    > test.out 2>&1
eval_tap $? 235 'DownloadUserOrderReceipt' test.out

#- 236 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '3XWFEMEF' \
    --body '{"currencyCode": "dL4OITJd", "currencyNamespace": "N1mJwWy5", "customParameters": {"WgNbUnhx": {}, "I45LAQuE": {}, "OfUKDifj": {}}, "description": "P4BlPGX6", "extOrderNo": "MzcGAvKI", "extUserId": "2sLarXcu", "itemType": "APP", "language": "KH-ZP", "metadata": {"2LGuJZnb": "yjdOQVW3", "vryqV92f": "GX9FFeyF", "SI6a0065": "F3h2wbC8"}, "notifyUrl": "6NUZn2Ck", "omitNotification": false, "platform": "2ZNdk932", "price": 98, "recurringPaymentOrderNo": "EwApcm6P", "region": "JaQ3Ovpq", "returnUrl": "GVA5QYtN", "sandbox": false, "sku": "b5ugeqZz", "subscriptionId": "CeNLAKOR", "title": "uy2GW72x"}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserPaymentOrder' test.out

#- 237 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'l4f3APka' \
    --userId 'pfi06fYD' \
    --body '{"description": "q0EWxo5V"}' \
    > test.out 2>&1
eval_tap $? 237 'RefundUserPaymentOrder' test.out

#- 238 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ioY9kAqs' \
    --body '{"code": "JgY0LqJX", "orderNo": "63HvGxYG"}' \
    > test.out 2>&1
eval_tap $? 238 'ApplyUserRedemption' test.out

#- 239 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'QAXEP0U6' \
    --body '{"meta": {"Kpg19z1r": {}, "z5Y4sodZ": {}, "B6j2QX1O": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "L2RNOd0e", "namespace": "3QXeWByJ"}, "entitlement": {"entitlementId": "wRI0xtkE"}, "item": {"itemIdentity": "Kk9PKkZQ", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 15, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "FBe5gdW3", "namespace": "rtnd0elO"}, "entitlement": {"entitlementId": "U2CvetQ1"}, "item": {"itemIdentity": "RctiOeVh", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 5, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "XGV4LPow", "namespace": "6wdhcagb"}, "entitlement": {"entitlementId": "Nxx1ELaH"}, "item": {"itemIdentity": "U60d0sOK", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 61, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "LC6CFh6Y"}' \
    > test.out 2>&1
eval_tap $? 239 'DoRevocation' test.out

#- 240 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'RGmnRgE7' \
    --chargeStatus 'SETUP' \
    --itemId '9Ga1f3s9' \
    --limit '58' \
    --offset '54' \
    --sku 'ib2IzjAu' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 240 'QueryUserSubscriptions' test.out

#- 241 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Yqkd7GDw' \
    --excludeSystem 'false' \
    --limit '65' \
    --offset '49' \
    --subscriptionId 'OQ1BkZ0z' \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionActivities' test.out

#- 242 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'P00UAz9G' \
    --body '{"grantDays": 74, "itemId": "NgveDkEL", "language": "yrKssyVW", "reason": "Lsog9x3B", "region": "wqBcPwco", "source": "RC4vc1hf"}' \
    > test.out 2>&1
eval_tap $? 242 'PlatformSubscribeSubscription' test.out

#- 243 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dphBFgmT' \
    --itemId 'eBlpQyze' \
    > test.out 2>&1
eval_tap $? 243 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 244 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'M7r30C2z' \
    --userId 'dfb2RP7J' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscription' test.out

#- 245 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GpDw7DKn' \
    --userId 'xGnWI4dC' \
    > test.out 2>&1
eval_tap $? 245 'DeleteUserSubscription' test.out

#- 246 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hC1Md7V2' \
    --userId 'q4D7hyZ9' \
    --force 'false' \
    --body '{"immediate": false, "reason": "QggNAxz0"}' \
    > test.out 2>&1
eval_tap $? 246 'CancelSubscription' test.out

#- 247 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Tb7HsN23' \
    --userId 'iIwPZr4T' \
    --body '{"grantDays": 31, "reason": "SJ9z20kl"}' \
    > test.out 2>&1
eval_tap $? 247 'GrantDaysToSubscription' test.out

#- 248 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0RItigrH' \
    --userId '97RzaBP5' \
    --excludeFree 'false' \
    --limit '27' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscriptionBillingHistories' test.out

#- 249 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OIgqzlBH' \
    --userId '2UjaiJb9' \
    --body '{"additionalData": {"cardSummary": "rmDN6s85"}, "authorisedTime": "1971-10-06T00:00:00Z", "chargebackReversedTime": "1982-05-23T00:00:00Z", "chargebackTime": "1980-11-25T00:00:00Z", "chargedTime": "1984-06-06T00:00:00Z", "createdTime": "1971-07-03T00:00:00Z", "currency": {"currencyCode": "ug13zW1i", "currencySymbol": "KlTlXzwb", "currencyType": "REAL", "decimals": 62, "namespace": "vohdpP7G"}, "customParameters": {"pFtMwIh5": {}, "RyzmXF8E": {}, "dLQCIEdw": {}}, "extOrderNo": "bZIzggjf", "extTxId": "c32RSvUy", "extUserId": "Lz790FIB", "issuedAt": "1992-10-13T00:00:00Z", "metadata": {"4XM8ef1b": "j4625N37", "bgRMLZfZ": "1Bft1F71", "Fiw11tO1": "XNMJpAsM"}, "namespace": "A2b1FKNA", "nonceStr": "Ql2VMyUE", "paymentMethod": "9UzHvENJ", "paymentMethodFee": 27, "paymentOrderNo": "mVXje2I3", "paymentProvider": "WALLET", "paymentProviderFee": 21, "paymentStationUrl": "Cwy9wLQE", "price": 83, "refundedTime": "1973-06-23T00:00:00Z", "salesTax": 14, "sandbox": false, "sku": "92t7kLaw", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "LYu6QhlI", "subscriptionId": "3Bvd2bvc", "subtotalPrice": 91, "targetNamespace": "DyaUaJ2s", "targetUserId": "ITfpZmBl", "tax": 19, "totalPrice": 34, "totalTax": 19, "txEndTime": "1992-08-01T00:00:00Z", "type": "Rge75Br2", "userId": "EUVrld4w", "vat": 95}' \
    > test.out 2>&1
eval_tap $? 249 'ProcessUserSubscriptionNotification' test.out

#- 250 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'WGT1fYoy' \
    --namespace $AB_NAMESPACE \
    --userId 'CLhEiwKM' \
    --body '{"count": 47, "orderNo": "cbGvxLGz"}' \
    > test.out 2>&1
eval_tap $? 250 'AcquireUserTicket' test.out

#- 251 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Cu0guSfh' \
    > test.out 2>&1
eval_tap $? 251 'QueryUserCurrencyWallets' test.out

#- 252 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Iqz1emnh' \
    --namespace $AB_NAMESPACE \
    --userId 'r7qXzwef' \
    --body '{"allowOverdraft": false, "amount": 1, "balanceOrigin": "Epic", "reason": "Jpkh4rBK"}' \
    > test.out 2>&1
eval_tap $? 252 'DebitUserWalletByCurrencyCode' test.out

#- 253 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'RQG27QP6' \
    --namespace $AB_NAMESPACE \
    --userId 'stG2Obcf' \
    --limit '64' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 253 'ListUserCurrencyTransactions' test.out

#- 254 CheckWallet
eval_tap 0 254 'CheckWallet # SKIP deprecated' test.out

#- 255 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'PUfo3fOF' \
    --namespace $AB_NAMESPACE \
    --userId 'ZZzQfkl7' \
    --body '{"amount": 13, "expireAt": "1973-09-22T00:00:00Z", "origin": "Nintendo", "reason": "oya5mqJn", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 255 'CreditUserWallet' test.out

#- 256 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'FdsIsg45' \
    --namespace $AB_NAMESPACE \
    --userId '6Nu6SLTc' \
    --body '{"amount": 52, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 256 'PayWithUserWallet' test.out

#- 257 GetUserWallet
eval_tap 0 257 'GetUserWallet # SKIP deprecated' test.out

#- 258 DebitUserWallet
eval_tap 0 258 'DebitUserWallet # SKIP deprecated' test.out

#- 259 DisableUserWallet
eval_tap 0 259 'DisableUserWallet # SKIP deprecated' test.out

#- 260 EnableUserWallet
eval_tap 0 260 'EnableUserWallet # SKIP deprecated' test.out

#- 261 ListUserWalletTransactions
eval_tap 0 261 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 262 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'npGsfAA5' \
    > test.out 2>&1
eval_tap $? 262 'ListViews' test.out

#- 263 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ds0Hd3rN' \
    --body '{"displayOrder": 29, "localizations": {"Hx86SrBd": {"description": "ZNp3EqpR", "localExt": {"ae8XEz2x": {}, "2MIHAGvc": {}, "xYGvBUyG": {}}, "longDescription": "RKpMs592", "title": "U5FAwK4Y"}, "EfMJghiK": {"description": "Es5FHHFw", "localExt": {"QnD0c2CI": {}, "JEgdnPF8": {}, "Asf8XQMP": {}}, "longDescription": "G8ZTQsvk", "title": "j9I8ApV5"}, "LLwGYWGv": {"description": "YFgm9cVC", "localExt": {"f0YXkQzr": {}, "ZS9lOxKS": {}, "5R9S4m4v": {}}, "longDescription": "L33xaO5X", "title": "n9o76d9t"}}, "name": "oLY4qXG4"}' \
    > test.out 2>&1
eval_tap $? 263 'CreateView' test.out

#- 264 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'Uwu00Au7' \
    --storeId 'TYReR19C' \
    > test.out 2>&1
eval_tap $? 264 'GetView' test.out

#- 265 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Wu5iBvHs' \
    --storeId 'Gvse8HtH' \
    --body '{"displayOrder": 11, "localizations": {"TTQRTRt4": {"description": "1S843H1H", "localExt": {"rL48wCh5": {}, "awEQXL3U": {}, "4LM6vZwk": {}}, "longDescription": "oJB0ZXDj", "title": "VMjXaTvF"}, "qDQTAcAv": {"description": "x693fivM", "localExt": {"n5z3V6dC": {}, "XuQWQlKI": {}, "GSEmWAzJ": {}}, "longDescription": "eQcpBa2m", "title": "6uNja5DZ"}, "W4mXvYCe": {"description": "9A89RZ0z", "localExt": {"WJ4sRlP5": {}, "kQEfKfih": {}, "jNi8GqRJ": {}}, "longDescription": "49zrP7zi", "title": "NWmzRc2E"}}, "name": "kpPg1DjZ"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateView' test.out

#- 266 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'TncfkKSP' \
    --storeId 'rHpcVxFM' \
    > test.out 2>&1
eval_tap $? 266 'DeleteView' test.out

#- 267 QueryWallets
eval_tap 0 267 'QueryWallets # SKIP deprecated' test.out

#- 268 GetWallet
eval_tap 0 268 'GetWallet # SKIP deprecated' test.out

#- 269 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '5IwJBiV1' \
    --end 'nOZLNRP2' \
    --start 'MV4S5gkZ' \
    > test.out 2>&1
eval_tap $? 269 'SyncOrders' test.out

#- 270 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["Kmb0TF9N", "YOeqNTTb", "NJFFc8ST"], "apiKey": "z4JOwS4h", "authoriseAsCapture": false, "blockedPaymentMethods": ["jI43vBK7", "0uOFTXDz", "GvOf9NsV"], "clientKey": "sJfKludZ", "dropInSettings": "ZDOIHUFV", "liveEndpointUrlPrefix": "aeouPbCB", "merchantAccount": "lEL93JRW", "notificationHmacKey": "i6GkLoK6", "notificationPassword": "MP1iWtcL", "notificationUsername": "XsV0xToN", "returnUrl": "TS6FDy6Z", "settings": "xnaTnSUN"}' \
    > test.out 2>&1
eval_tap $? 270 'TestAdyenConfig' test.out

#- 271 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "hjky9Nrz", "privateKey": "slw66gMc", "publicKey": "gwXbCnus", "returnUrl": "X6B21huu"}' \
    > test.out 2>&1
eval_tap $? 271 'TestAliPayConfig' test.out

#- 272 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "RVwK4Nm3", "secretKey": "g81bQEZd"}' \
    > test.out 2>&1
eval_tap $? 272 'TestCheckoutConfig' test.out

#- 273 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'JBu07kBU' \
    --region 'xicFtAlM' \
    > test.out 2>&1
eval_tap $? 273 'DebugMatchedPaymentMerchantConfig' test.out

#- 274 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "SZX9fKji", "clientSecret": "ott3Nd0T", "returnUrl": "JRFkP6Rg", "webHookId": "jtNjqZW4"}' \
    > test.out 2>&1
eval_tap $? 274 'TestPayPalConfig' test.out

#- 275 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["aAynfDW3", "SHYVOJ0H", "QXlUsEHI"], "publishableKey": "Nxx4FB1L", "secretKey": "Sfni2dev", "webhookSecret": "aZJMrq7f"}' \
    > test.out 2>&1
eval_tap $? 275 'TestStripeConfig' test.out

#- 276 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "RZYzrpDU", "key": "7ATZ8uZ0", "mchid": "SXY7QLFk", "returnUrl": "bW2l8xrB"}' \
    > test.out 2>&1
eval_tap $? 276 'TestWxPayConfig' test.out

#- 277 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "KKCn3WwW", "flowCompletionUrl": "jZEIptjc", "merchantId": 14, "projectId": 99, "projectSecretKey": "cMeCa0br"}' \
    > test.out 2>&1
eval_tap $? 277 'TestXsollaConfig' test.out

#- 278 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'gaEXueUZ' \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentMerchantConfig' test.out

#- 279 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'BjsNEwC7' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["YGLBezRy", "tiYdxnnf", "XWpOHJ8s"], "apiKey": "rz71EfqP", "authoriseAsCapture": false, "blockedPaymentMethods": ["CST59QVc", "46R975Ls", "3X9gVWyj"], "clientKey": "fwpG5Lt0", "dropInSettings": "y17iCSDw", "liveEndpointUrlPrefix": "GjQBbq2G", "merchantAccount": "YBRSSxr6", "notificationHmacKey": "z6ZMw5xw", "notificationPassword": "JFIBJR1p", "notificationUsername": "s8W3fWxA", "returnUrl": "Wt4r83ck", "settings": "WbO2YQIf"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateAdyenConfig' test.out

#- 280 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'sMKKVcYY' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestAdyenConfigById' test.out

#- 281 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'SNvm1MB6' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "Nw57qZrc", "privateKey": "s55vORra", "publicKey": "vigitXHb", "returnUrl": "pCgOSkDU"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdateAliPayConfig' test.out

#- 282 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'BwnlYtzu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 282 'TestAliPayConfigById' test.out

#- 283 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'xW4siiwb' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "EAsQFfuR", "secretKey": "0lyUiaVC"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateCheckoutConfig' test.out

#- 284 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '1qMAyCvj' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestCheckoutConfigById' test.out

#- 285 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '8Y15R4bI' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "icv39lFG", "clientSecret": "uDhYJN1v", "returnUrl": "pNa5Yp91", "webHookId": "U1vNEDkp"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdatePayPalConfig' test.out

#- 286 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'bUnVIkW0' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 286 'TestPayPalConfigById' test.out

#- 287 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'UyUTAYzw' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["2gC9YPCO", "eb0ya0gi", "wL181g6V"], "publishableKey": "46F4E8kP", "secretKey": "ri7vzaQK", "webhookSecret": "L5pD9Kxl"}' \
    > test.out 2>&1
eval_tap $? 287 'UpdateStripeConfig' test.out

#- 288 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'Xpvql5Oi' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 288 'TestStripeConfigById' test.out

#- 289 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'cOBbc2hX' \
    --validate 'true' \
    --body '{"appId": "uJQuxOpV", "key": "NaoiFfvj", "mchid": "SibAx8jc", "returnUrl": "D4YjDms1"}' \
    > test.out 2>&1
eval_tap $? 289 'UpdateWxPayConfig' test.out

#- 290 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'g7yBZsiy' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 290 'UpdateWxPayConfigCert' test.out

#- 291 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'HFAiFfrB' \
    > test.out 2>&1
eval_tap $? 291 'TestWxPayConfigById' test.out

#- 292 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'D21NL0uK' \
    --validate 'false' \
    --body '{"apiKey": "AhOkP0As", "flowCompletionUrl": "tgJETMj1", "merchantId": 69, "projectId": 69, "projectSecretKey": "xuNUhLYG"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateXsollaConfig' test.out

#- 293 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'CfyWuSsu' \
    > test.out 2>&1
eval_tap $? 293 'TestXsollaConfigById' test.out

#- 294 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'GC2gXcMk' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateXsollaUIConfig' test.out

#- 295 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '23' \
    --namespace 'uxfnj3N1' \
    --offset '10' \
    --region 'Ks86zR5R' \
    > test.out 2>&1
eval_tap $? 295 'QueryPaymentProviderConfig' test.out

#- 296 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "zqlL2n4E", "region": "ONivKE2x", "sandboxTaxJarApiToken": "O8CV1jCY", "specials": ["XSOLLA", "STRIPE", "CHECKOUT"], "taxJarApiToken": "HD4rBRHU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'CreatePaymentProviderConfig' test.out

#- 297 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 297 'GetAggregatePaymentProviders' test.out

#- 298 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '3yoNXL3a' \
    --region 'ou660e4p' \
    > test.out 2>&1
eval_tap $? 298 'DebugMatchedPaymentProviderConfig' test.out

#- 299 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 299 'GetSpecialPaymentProviders' test.out

#- 300 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'mhkDO1ai' \
    --body '{"aggregate": "ADYEN", "namespace": "kxwzT8dD", "region": "cjt6uMyz", "sandboxTaxJarApiToken": "pPcsi89L", "specials": ["ALIPAY", "CHECKOUT", "CHECKOUT"], "taxJarApiToken": "imwwvOvw", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 300 'UpdatePaymentProviderConfig' test.out

#- 301 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'u6VEqIR6' \
    > test.out 2>&1
eval_tap $? 301 'DeletePaymentProviderConfig' test.out

#- 302 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentTaxConfig' test.out

#- 303 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "cNyGQYo0", "taxJarApiToken": "jE1DidO5", "taxJarEnabled": true, "taxJarProductCodesMapping": {"mtK59VdX": "S8OtQ0Dq", "NR1ewQYn": "pwd3upw5", "C7hOJh2o": "LDJh9j2U"}}' \
    > test.out 2>&1
eval_tap $? 303 'UpdatePaymentTaxConfig' test.out

#- 304 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '6ijqvNkQ' \
    --end 'Zmkxjpmp' \
    --start 'lcVVmgEV' \
    > test.out 2>&1
eval_tap $? 304 'SyncPaymentOrders' test.out

#- 305 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'dHRwak8p' \
    --storeId 'uJru342n' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetRootCategories' test.out

#- 306 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'huhmHIi2' \
    --storeId 'DgeGJvi9' \
    > test.out 2>&1
eval_tap $? 306 'DownloadCategories' test.out

#- 307 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'fj0khbX0' \
    --namespace $AB_NAMESPACE \
    --language '6aE6fXRH' \
    --storeId 'h2tbxJ6e' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetCategory' test.out

#- 308 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'CbwQWZD8' \
    --namespace $AB_NAMESPACE \
    --language 'sAGiWaEo' \
    --storeId 'NRv7kmjb' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetChildCategories' test.out

#- 309 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '2fvOZ0An' \
    --namespace $AB_NAMESPACE \
    --language '5WZJ9jCZ' \
    --storeId 'xEfYCKyv' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetDescendantCategories' test.out

#- 310 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 310 'PublicListCurrencies' test.out

#- 311 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 311 'GetIAPItemMapping' test.out

#- 312 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'N1TNxqWU' \
    --region 'pn6NzbgJ' \
    --storeId 'fOjJ3fSa' \
    --appId 'IAqIayGb' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetItemByAppId' test.out

#- 313 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'ogi3ntqb' \
    --categoryPath 'h6kgiIza' \
    --features 'R5KUPNJr' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --language 'YAV7b29K' \
    --limit '53' \
    --offset '58' \
    --region 'K1nJmJDF' \
    --sortBy '["name", "updatedAt:desc"]' \
    --storeId 'VxeALhho' \
    --tags 'Y2tTWfao' \
    > test.out 2>&1
eval_tap $? 313 'PublicQueryItems' test.out

#- 314 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '8HV1o2dY' \
    --region 'pRFu1jGO' \
    --storeId 'jVXVZFxj' \
    --sku 'mlkdWyAP' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemBySku' test.out

#- 315 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '7KedxYuc' \
    --region 'jcWvZYkK' \
    --storeId 'HyaMTnyY' \
    --itemIds 'J3dc8sl5' \
    > test.out 2>&1
eval_tap $? 315 'PublicBulkGetItems' test.out

#- 316 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["6RtqqBlY", "0zn6VYGQ", "reqGjvwR"]}' \
    > test.out 2>&1
eval_tap $? 316 'PublicValidateItemPurchaseCondition' test.out

#- 317 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'LOOTBOX' \
    --limit '51' \
    --offset '11' \
    --region 'lHgo15Oy' \
    --storeId 'QLDKJb7L' \
    --keyword 'ZPRycBME' \
    --language 'YVi4ujXI' \
    > test.out 2>&1
eval_tap $? 317 'PublicSearchItems' test.out

#- 318 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'q3QDueNv' \
    --namespace $AB_NAMESPACE \
    --language 'Ph1LdpPB' \
    --region 'Js1os8i8' \
    --storeId '2EfmFQRv' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetApp' test.out

#- 319 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'pK0mYCyN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemDynamicData' test.out

#- 320 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'hIipg2hJ' \
    --namespace $AB_NAMESPACE \
    --language 'YRcQPlb1' \
    --populateBundle 'false' \
    --region 'aAotnNKj' \
    --storeId 'toFsDEy6' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItem' test.out

#- 321 GetPaymentCustomization
eval_tap 0 321 'GetPaymentCustomization # SKIP deprecated' test.out

#- 322 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "pRPpZIpq", "paymentProvider": "PAYPAL", "returnUrl": "sKyEhQQM", "ui": "I7Nd2GPy", "zipCode": "2v1vKXj3"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetPaymentUrl' test.out

#- 323 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'K33J4Pnw' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetPaymentMethods' test.out

#- 324 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4v4l8Awq' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUnpaidPaymentOrder' test.out

#- 325 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'k8xcI3oG' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'DaEoO0vw' \
    --body '{"token": "86Dc937b"}' \
    > test.out 2>&1
eval_tap $? 325 'Pay' test.out

#- 326 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'p8ljW7VY' \
    > test.out 2>&1
eval_tap $? 326 'PublicCheckPaymentOrderPaidStatus' test.out

#- 327 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'C24aC92p' \
    > test.out 2>&1
eval_tap $? 327 'GetPaymentPublicConfig' test.out

#- 328 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'APgS2RCD' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetQRCode' test.out

#- 329 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 's0PpL2sj' \
    --foreinginvoice 'ROKdps3m' \
    --invoiceId 'Rthb4ibX' \
    --payload 'zs3troiP' \
    --redirectResult '51BXPBWM' \
    --resultCode 'uMTOP2O2' \
    --sessionId '7xBxIVP9' \
    --status 'UQIo9jYH' \
    --token 'YOtbHzb5' \
    --type 'HYaXnC5P' \
    --userId 'uqfEIDEN' \
    --orderNo 'MzGCENyh' \
    --paymentOrderNo 'jCUfJqzq' \
    --paymentProvider 'WALLET' \
    --returnUrl 'faGQssMt' \
    > test.out 2>&1
eval_tap $? 329 'PublicNormalizePaymentReturnUrl' test.out

#- 330 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'iBXqkVro' \
    --paymentOrderNo 'kSYZOQv1' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxValue' test.out

#- 331 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'mQCsRtSt' \
    > test.out 2>&1
eval_tap $? 331 'GetRewardByCode' test.out

#- 332 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'S435jRqS' \
    --limit '97' \
    --offset '84' \
    --sortBy '["namespace", "rewardCode:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 332 'QueryRewards1' test.out

#- 333 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'WDv4P3sH' \
    > test.out 2>&1
eval_tap $? 333 'GetReward1' test.out

#- 334 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicListStores' test.out

#- 335 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["xhC8qcSQ", "TNrdoggr", "0lY02zQi"]' \
    --itemIds '["ZR6YpLpE", "YBL6Lwqu", "InZW5os2"]' \
    --skus '["s47OfJT0", "VOeerVHy", "eV3bFPta"]' \
    > test.out 2>&1
eval_tap $? 335 'PublicExistsAnyMyActiveEntitlement' test.out

#- 336 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'rKhItfl7' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 337 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'gOH9dScw' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 338 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'LDsoRnfI' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 339 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["cnRoq3DR", "myFoBjiU", "qsbA77ew"]' \
    --itemIds '["w26pUWQR", "atL9uovx", "ukKnLwDT"]' \
    --skus '["8Ai5apZl", "ZMFFc8dg", "DTsYcNNT"]' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetEntitlementOwnershipToken' test.out

#- 340 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "qtn46v6U", "language": "OgU-Thss-548", "region": "8uCKKcQ4"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncTwitchDropsEntitlement' test.out

#- 341 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'cKBBYuqI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicGetMyWallet' test.out

#- 342 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZgXIbSpN' \
    --body '{"epicGamesJwtToken": "ulhtwXNQ"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncEpicGameDLC' test.out

#- 343 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'rKcKKyoW' \
    --body '{"serviceLabel": 99}' \
    > test.out 2>&1
eval_tap $? 343 'PublicSyncPsnDlcInventory' test.out

#- 344 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Kr4AnXOT' \
    --body '{"serviceLabels": [72, 0, 46]}' \
    > test.out 2>&1
eval_tap $? 344 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 345 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dL5VGAqj' \
    --body '{"appId": "YQZ2AgGG", "steamId": "SFABo8Tf"}' \
    > test.out 2>&1
eval_tap $? 345 'SyncSteamDLC' test.out

#- 346 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gLNFAa9F' \
    --body '{"xstsToken": "6h2kYCHZ"}' \
    > test.out 2>&1
eval_tap $? 346 'SyncXboxDLC' test.out

#- 347 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hGbBeEkD' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '2Au85J1U' \
    --features '["sKP0w95W", "NSXwbhvQ", "XkPEYzOO"]' \
    --itemId '["zbMQHfYC", "VxNrET0H", "WqTQ2bNK"]' \
    --limit '75' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserEntitlements' test.out

#- 348 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '9RK5sqd9' \
    --appId 'uSoi0kvz' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserAppEntitlementByAppId' test.out

#- 349 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '2Wyrz439' \
    --limit '44' \
    --offset '53' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserEntitlementsByAppType' test.out

#- 350 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9vbJzYOU' \
    --entitlementClazz 'APP' \
    --itemId '0AEJdmkA' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementByItemId' test.out

#- 351 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'YUPTBn1a' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'TQ3kjAX0' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementBySku' test.out

#- 352 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tEvXSeEf' \
    --appIds '["Q7JFDddB", "Op0izGRq", "yyu9M16p"]' \
    --itemIds '["gz0HapBK", "9DtURC2P", "bjg7tN75"]' \
    --skus '["26JzXMZe", "0RWXTUvS", "VrEe3jFC"]' \
    > test.out 2>&1
eval_tap $? 352 'PublicExistsAnyUserActiveEntitlement' test.out

#- 353 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'mRN3IJms' \
    --appId 'aMu4N7YJ' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 354 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GgQDMCVu' \
    --entitlementClazz 'APP' \
    --itemId 'MfigzRht' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 355 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Yhy8I4yU' \
    --ids '["5g0WrDDv", "vdi8m9fc", "qe54awtp"]' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 356 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oEoWlVu4' \
    --entitlementClazz 'APP' \
    --sku 'smjGOiea' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 357 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '4ClrqLZ6' \
    --namespace $AB_NAMESPACE \
    --userId '12g0HtSh' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlement' test.out

#- 358 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'EFPSxgrM' \
    --namespace $AB_NAMESPACE \
    --userId 'wnC8Fl8y' \
    --body '{"options": ["kN5Enubn", "SMrqYReM", "hT7NihOL"], "requestId": "fVDCDW53", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 358 'PublicConsumeUserEntitlement' test.out

#- 359 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'emUapzyA' \
    --namespace $AB_NAMESPACE \
    --userId 'hPwgDbxL' \
    --body '{"requestId": "eE9eYJ7Z", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 359 'PublicSellUserEntitlement' test.out

#- 360 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'OeiymZtD' \
    --body '{"code": "wqDwbvhr", "language": "FQzO_Mgea", "region": "76mnYQM4"}' \
    > test.out 2>&1
eval_tap $? 360 'PublicRedeemCode' test.out

#- 361 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'iuumL6z5' \
    --body '{"excludeOldTransactions": true, "language": "HYdO-jyMh", "productId": "V8k5xKEB", "receiptData": "50DNehpi", "region": "irr9NJeq", "transactionId": "FxQji7qz"}' \
    > test.out 2>&1
eval_tap $? 361 'PublicFulfillAppleIAPItem' test.out

#- 362 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FVstonGe' \
    --body '{"epicGamesJwtToken": "GlQRRcQ8"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncEpicGamesInventory' test.out

#- 363 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'iJuANBYQ' \
    --body '{"autoAck": false, "language": "QBg", "orderId": "9UmW2AJ1", "packageName": "iPTIXW8O", "productId": "dG5KZvOB", "purchaseTime": 57, "purchaseToken": "qACaYFOs", "region": "o3TWrE7M"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicFulfillGoogleIAPItem' test.out

#- 364 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'fAlgkAyx' \
    --body '{"currencyCode": "mbMXXnLc", "price": 0.8813764403229897, "productId": "SThIzaLV", "serviceLabel": 33}' \
    > test.out 2>&1
eval_tap $? 364 'PublicReconcilePlayStationStore' test.out

#- 365 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '59zQbOrb' \
    --body '{"currencyCode": "siucumYt", "price": 0.3535209577537404, "productId": "JXcyLsWM", "serviceLabels": [43, 27, 92]}' \
    > test.out 2>&1
eval_tap $? 365 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 366 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GBiQWTge' \
    --body '{"appId": "wRgDwCv5", "currencyCode": "1U4t5az5", "language": "Gsfe_nQKZ", "price": 0.3401402836570404, "productId": "VyiJu7pS", "region": "Punxt8YO", "steamId": "RFQnh1gZ"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncSteamInventory' test.out

#- 367 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '4PTOZtGT' \
    --body '{"gameId": "cKyeUh3m", "language": "yX-qhyx", "region": "pHk7WuRW"}' \
    > test.out 2>&1
eval_tap $? 367 'SyncTwitchDropsEntitlement1' test.out

#- 368 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'nPGELjH3' \
    --body '{"currencyCode": "JWwvjrs9", "price": 0.24500814318624842, "productId": "E5DKoCVG", "xstsToken": "cN2jE3rA"}' \
    > test.out 2>&1
eval_tap $? 368 'SyncXboxInventory' test.out

#- 369 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'YmnFHfp5' \
    --itemId 'GRwyIl4o' \
    --limit '50' \
    --offset '29' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 369 'PublicQueryUserOrders' test.out

#- 370 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'BOWS4SUo' \
    --body '{"currencyCode": "V8f2iLwZ", "discountedPrice": 63, "ext": {"5TvHFn8r": {}, "dR4lu43H": {}, "Pd2HmHrj": {}}, "itemId": "NEfICaFD", "language": "Ff-em", "price": 1, "quantity": 68, "region": "lcbprQaD", "returnUrl": "7f3Mbmfe"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserOrder' test.out

#- 371 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eB3zu27H' \
    --userId 'rWxBQ5b5' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserOrder' test.out

#- 372 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IcIMBqb6' \
    --userId 'yvTtc3IX' \
    > test.out 2>&1
eval_tap $? 372 'PublicCancelUserOrder' test.out

#- 373 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Vx0VyNFP' \
    --userId '2Wg9Q74M' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetUserOrderHistories' test.out

#- 374 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'iTltXSx0' \
    --userId 'qhIK7S5P' \
    > test.out 2>&1
eval_tap $? 374 'PublicDownloadUserOrderReceipt' test.out

#- 375 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'y6baxVPk' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetPaymentAccounts' test.out

#- 376 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'DWvcUV8D' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'BZ31j90t' \
    > test.out 2>&1
eval_tap $? 376 'PublicDeletePaymentAccount' test.out

#- 377 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'HhvL22XM' \
    --language 'NJWnxUXi' \
    --region 'a1niDnhV' \
    --storeId 'jSe0HwXz' \
    --viewId 'NkQD4qga' \
    > test.out 2>&1
eval_tap $? 377 'PublicListActiveSections' test.out

#- 378 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'yAvJWQX2' \
    --chargeStatus 'SETUP' \
    --itemId 'ddXyA9Ks' \
    --limit '7' \
    --offset '29' \
    --sku 'XR0072lo' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 378 'PublicQueryUserSubscriptions' test.out

#- 379 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Rdm8hQVH' \
    --body '{"currencyCode": "SJroR32j", "itemId": "SFraBnV9", "language": "sS-jKPl", "region": "xPlMZUV0", "returnUrl": "664stMS2", "source": "Hu81AEBL"}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSubscribeSubscription' test.out

#- 380 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WFJrLYEl' \
    --itemId 'D7Rn4kS1' \
    > test.out 2>&1
eval_tap $? 380 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 381 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8Tmy5EuS' \
    --userId 'Eozdp7pD' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserSubscription' test.out

#- 382 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LWsVnaCm' \
    --userId '0pZeBM5g' \
    > test.out 2>&1
eval_tap $? 382 'PublicChangeSubscriptionBillingAccount' test.out

#- 383 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tNuiZuR0' \
    --userId '9DCTNy9J' \
    --body '{"immediate": false, "reason": "lpyj2Hhk"}' \
    > test.out 2>&1
eval_tap $? 383 'PublicCancelSubscription' test.out

#- 384 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LuvYYW78' \
    --userId '1CIRFSJC' \
    --excludeFree 'true' \
    --limit '62' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserSubscriptionBillingHistories' test.out

#- 385 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'j2QtjKFa' \
    --language 'WKC5srQ9' \
    --storeId 'zrhTGzEj' \
    > test.out 2>&1
eval_tap $? 385 'PublicListViews' test.out

#- 386 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'd9yIyYFi' \
    --namespace $AB_NAMESPACE \
    --userId 'xzlEpYVl' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetWallet' test.out

#- 387 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'nfAcTX0k' \
    --namespace $AB_NAMESPACE \
    --userId 'L3OP77W0' \
    --limit '61' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 387 'PublicListUserWalletTransactions' test.out

#- 388 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'Bqk3QpoP' \
    --baseAppId 'BJIEOaX8' \
    --categoryPath 'bziOBdJa' \
    --features 'R8GhCSli' \
    --includeSubCategoryItem 'false' \
    --itemName 'acMsmQQl' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '67' \
    --offset '20' \
    --region 'obqGNWTn' \
    --sortBy '["updatedAt", "name:desc", "name:asc"]' \
    --storeId 'PpmJyIC1' \
    --tags 'JqLjek1K' \
    --targetNamespace 'kA5EOmnQ' \
    > test.out 2>&1
eval_tap $? 388 'QueryItems1' test.out

#- 389 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'AMEx1cTv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 389 'ImportStore1' test.out

#- 390 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Xe576aJw' \
    --body '{"itemIds": ["ijmOLTRx", "u0Sjxu1M", "Eh0aJJJK"]}' \
    > test.out 2>&1
eval_tap $? 390 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE