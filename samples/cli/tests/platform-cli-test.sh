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
echo "1..396"

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
    --body '{"context": {"item": {"appId": "OV6h6i4e", "appType": "DLC", "baseAppId": "CTcXfkXR", "boothName": "oLVp62tj", "boundItemIds": ["yMJ85gN8", "b1DGExsH", "7YkaK8M4"], "categoryPath": "3HQFCk9h", "clazz": "b7wAroVJ", "createdAt": "1974-04-20T00:00:00Z", "description": "HFZZToXL", "displayOrder": 97, "entitlementType": "DURABLE", "ext": {"54b4qiMZ": {}, "iRkJrwk5": {}, "KKdtuTGL": {}}, "features": ["lKkQmRgE", "f2bZQftR", "OZG5tPSV"], "fresh": false, "images": [{"as": "iPAsp47p", "caption": "TfSSe590", "height": 8, "imageUrl": "zWLi8Dm5", "smallImageUrl": "30USPvSs", "width": 83}, {"as": "PvE7Sf1C", "caption": "pvsAqEto", "height": 18, "imageUrl": "geUsanBK", "smallImageUrl": "zA2eBJLw", "width": 3}, {"as": "vw0vDGYS", "caption": "TWyvM2Ml", "height": 64, "imageUrl": "5skK0l8z", "smallImageUrl": "Hyyf3BTQ", "width": 10}], "itemId": "6ryrRgb4", "itemIds": ["D8FcwwDA", "zCDpKeI1", "nvcjip5Z"], "itemQty": {"4C0oAzZr": 13, "qwcDpBgs": 25, "6eRDqXjb": 53}, "itemType": "BUNDLE", "language": "I2w9IMEw", "listable": true, "localExt": {"JW8DVX2z": {}, "XXNKr1iz": {}, "S8jt6ZhR": {}}, "longDescription": "Bhu0XQik", "lootBoxConfig": {"rewardCount": 73, "rewards": [{"lootBoxItems": [{"count": 8, "itemId": "F2TrGsD4", "itemSku": "wxXQNjn6", "itemType": "rXEub21b"}, {"count": 66, "itemId": "oSpDcClZ", "itemSku": "JLi7Wfqt", "itemType": "H8oDlq7a"}, {"count": 57, "itemId": "iPaOt998", "itemSku": "wCRWgx5x", "itemType": "L0rpdYd9"}], "name": "v6BNJJDL", "odds": 0.7277897754252591, "type": "REWARD_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 32, "itemId": "MoQzODD4", "itemSku": "Z9fGbVfs", "itemType": "Fyq3j3Nw"}, {"count": 18, "itemId": "wc6XnPIH", "itemSku": "cu4OFIyd", "itemType": "WtO8liRR"}, {"count": 98, "itemId": "TA5h4nql", "itemSku": "ULiXtK6Y", "itemType": "nvwpb7FJ"}], "name": "VfHKtKCr", "odds": 0.9352859203512958, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 39, "itemId": "0pk7PtcF", "itemSku": "LqJTKrSN", "itemType": "r7orIUvV"}, {"count": 40, "itemId": "sgDExuXj", "itemSku": "v8r2PFW3", "itemType": "S2AoamXv"}, {"count": 78, "itemId": "4ASzDos2", "itemSku": "hsoW95rY", "itemType": "xx0OBINM"}], "name": "WaAbgC3y", "odds": 0.6883965171174918, "type": "REWARD_GROUP", "weight": 10}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 96, "name": "FI2o3IGo", "namespace": "exWtbUdJ", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "DZeZz0ps", "itemSku": "NJChObMY", "itemType": "a9PKjyDo"}, {"count": 91, "itemId": "rzpf1pgh", "itemSku": "5uw08yDV", "itemType": "jkWma2Io"}, {"count": 37, "itemId": "QB2KScKj", "itemSku": "FxBE9EOQ", "itemType": "dbHVwfQo"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 97, "comparison": "isLessThan", "name": "p5rHJh9q", "predicateType": "SeasonPassPredicate", "value": "9c7KYOAO", "values": ["gsO484QD", "vSMhFUWg", "3QfL3mrP"]}, {"anyOf": 93, "comparison": "isLessThan", "name": "tsbZhoR4", "predicateType": "SeasonPassPredicate", "value": "fyviPmfD", "values": ["ByFkBekf", "xxxMM4M0", "rsCOSXtk"]}, {"anyOf": 27, "comparison": "isNot", "name": "ZnbC8iJh", "predicateType": "SeasonPassPredicate", "value": "cztinQNi", "values": ["MABL1G8y", "QQjkqtva", "11suI2kb"]}]}, {"operator": "and", "predicates": [{"anyOf": 99, "comparison": "includes", "name": "05PB2YuC", "predicateType": "SeasonTierPredicate", "value": "I2yLplyd", "values": ["Vxke3nLK", "96AkCwp1", "DYbcmc3h"]}, {"anyOf": 76, "comparison": "isLessThan", "name": "HjYm03B9", "predicateType": "EntitlementPredicate", "value": "KMjs3vPD", "values": ["TaCJYK4T", "TsxOzdnf", "BAttbr0W"]}, {"anyOf": 64, "comparison": "isGreaterThan", "name": "yFyJGT2M", "predicateType": "SeasonTierPredicate", "value": "5LJh7DTR", "values": ["1PE4CQ06", "KRSvtvfV", "oVdSDYc4"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "includes", "name": "bskuRHXM", "predicateType": "SeasonPassPredicate", "value": "o4QcwyQC", "values": ["OE0KOgAr", "rpQgK3Vb", "aD6RDzvc"]}, {"anyOf": 7, "comparison": "isGreaterThan", "name": "O1NNL1EH", "predicateType": "SeasonTierPredicate", "value": "wVsPjgYE", "values": ["xJ1qTR4m", "oOnRSO3L", "u3JhVB6Y"]}, {"anyOf": 34, "comparison": "isLessThan", "name": "p4PUHTh6", "predicateType": "SeasonTierPredicate", "value": "wgwOMrug", "values": ["8xIWBZfL", "ZZfGuotb", "rOjjfpKb"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 98, "fixedTrialCycles": 19, "graceDays": 19}, "region": "sA1O1ju6", "regionData": [{"currencyCode": "1CvJKvjz", "currencyNamespace": "aibqwnYV", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1990-12-16T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1976-08-11T00:00:00Z", "discountedPrice": 2, "expireAt": "1975-02-18T00:00:00Z", "price": 86, "purchaseAt": "1976-03-02T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Xpieh9Ow", "currencyNamespace": "LvJcx1qJ", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1990-12-15T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1975-08-11T00:00:00Z", "discountedPrice": 81, "expireAt": "1997-03-08T00:00:00Z", "price": 5, "purchaseAt": "1994-11-02T00:00:00Z", "trialPrice": 56}, {"currencyCode": "01b28ERX", "currencyNamespace": "wmscMTwt", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1997-06-27T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-08-14T00:00:00Z", "discountedPrice": 62, "expireAt": "1975-01-28T00:00:00Z", "price": 97, "purchaseAt": "1971-04-27T00:00:00Z", "trialPrice": 88}], "saleConfig": {"currencyCode": "XszLX2gd", "price": 49}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "aeLgcgxe", "stackable": true, "status": "ACTIVE", "tags": ["FOW0xmM7", "QTsPDY7U", "zGWezXlW"], "targetCurrencyCode": "D8vLxj4q", "targetItemId": "4ZnVKGec", "targetNamespace": "BBinHR70", "thumbnailUrl": "abNHdsnD", "title": "eQZUSxcl", "updatedAt": "1998-11-04T00:00:00Z", "useCount": 48}, "namespace": "IcdDbAq1", "order": {"currency": {"currencyCode": "x3ZJAb0h", "currencySymbol": "RciPKTwV", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "k0PE2d1l"}, "ext": {"yYwlJS9c": {}, "aeEWU1TO": {}, "R8IlOlCg": {}}, "free": true}, "source": "PROMOTION"}, "script": "idEPnvPQ", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '2N7NvKNj' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'eM8XARWl' \
    --body '{"grantDays": "XA07S7Ds"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'rqjdtpXT' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'IWm1ET9b' \
    --body '{"grantDays": "IabJMGN8"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "jVW8faD7", "dryRun": false, "fulfillmentUrl": "u3aByPVV", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "Ev6odjHm"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '046A6eec' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'tFdrxq8s' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'OBtwmZlq' \
    --body '{"clazz": "ynPhSVX7", "dryRun": false, "fulfillmentUrl": "pusHsV3C", "purchaseConditionUrl": "XHA90fuP"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '4DIOdZPC' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'eCubWJDD' \
    --offset '38' \
    --tag 'xf0r84D6' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8yl8kSEk", "items": [{"extraSubscriptionDays": 3, "itemId": "BqxvQA1S", "itemName": "wAuDDCCs", "quantity": 49}, {"extraSubscriptionDays": 34, "itemId": "cNN3gkrT", "itemName": "OcM5CJKo", "quantity": 53}, {"extraSubscriptionDays": 72, "itemId": "hSkPrZTo", "itemName": "cCQlaolL", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 77, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 93, "name": "KoM9jLMV", "redeemEnd": "1979-07-29T00:00:00Z", "redeemStart": "1987-07-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["te7ozUKh", "SWiYTDZj", "Gvtv24Yj"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'kzeFmTCL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'cHJOuVSY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iTstQipM", "items": [{"extraSubscriptionDays": 84, "itemId": "VvLlVkuV", "itemName": "Kayh3oT1", "quantity": 14}, {"extraSubscriptionDays": 0, "itemId": "XxmmjVut", "itemName": "SZqfKaPG", "quantity": 76}, {"extraSubscriptionDays": 41, "itemId": "7sz4MWHf", "itemName": "hikFoZGa", "quantity": 63}], "maxRedeemCountPerCampaignPerUser": 85, "maxRedeemCountPerCode": 19, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 23, "name": "OvI1Yl2e", "redeemEnd": "1992-09-05T00:00:00Z", "redeemStart": "1999-08-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["9XmAN3Jr", "8cnoMIS1", "5EXiNH5Z"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Bf64rPTy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'knGRx9I6' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'L5DVLzQz' \
    --body '{"categoryPath": "KscHGur2", "localizationDisplayNames": {"Fy4aOdev": "pwyjnv53", "8wAkR469": "kv1pRNBr", "MoFjD0A6": "4WE6vqgr"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '8LSM8kEB' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'E5d13KjL' \
    --namespace $AB_NAMESPACE \
    --storeId 'oUZYSQOX' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Jy0jAe71' \
    --namespace $AB_NAMESPACE \
    --storeId 'FHKt1B4R' \
    --body '{"localizationDisplayNames": {"7GbY5NKU": "jnrx2HEn", "89SBRwav": "AvTXj7R1", "9G4GHPdM": "YBqnJVW5"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '1XB1ILPG' \
    --namespace $AB_NAMESPACE \
    --storeId '2qSM3xzA' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'PC5v1XJV' \
    --namespace $AB_NAMESPACE \
    --storeId 'SX8p4hF9' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '92p1MtvD' \
    --namespace $AB_NAMESPACE \
    --storeId 'UNy6QebO' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'v26kMeyS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '31' \
    --code '7v5b751B' \
    --limit '66' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'tjnIKXgQ' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 26}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'dtYz4fGz' \
    --namespace $AB_NAMESPACE \
    --batchNo '58' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'vIFxWepE' \
    --namespace $AB_NAMESPACE \
    --batchNo '64' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'NSctJggN' \
    --namespace $AB_NAMESPACE \
    --batchNo '18' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'm2AiRLxl' \
    --namespace $AB_NAMESPACE \
    --code 'uOlCn26Y' \
    --limit '2' \
    --offset '49' \
    --userId 'KnF1DrLZ' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'zIbFITZM' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'YB05Rh3V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'eWCZZu7E' \
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
    --body '{"grpcServerAddress": "0cH0DgGC"}' \
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
    --body '{"currencyCode": "cVW07Y4v", "currencySymbol": "jTXmLm7b", "currencyType": "VIRTUAL", "decimals": 42, "localizationDescriptions": {"AQSWM7S2": "cXwQwoB5", "4jhzMNF0": "vMdUX7d0", "Apj66ipI": "Y1etjrak"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'hwX4oiOO' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"N1AuGkfS": "7Ys7GsTb", "RaxkY696": "MAdPRxOL", "qW5DtU1D": "DfQi2Roi"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '3mxnRHXT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'UF9rJvK3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'LznC8tiB' \
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
    --body '{"data": [{"id": "uPaxwkvV", "rewards": [{"currency": {"currencyCode": "uMu4XIDC", "namespace": "iib6bfpm"}, "item": {"itemId": "lGUsMr09", "itemSku": "ncT27j73", "itemType": "OnYfPM4q"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "QUHFGGo1", "namespace": "EAoqzT7a"}, "item": {"itemId": "XLZXLMO1", "itemSku": "CV6GMCLd", "itemType": "lfvbwynv"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "LNBt0ObS", "namespace": "inb7gEXq"}, "item": {"itemId": "cwfQxEGR", "itemSku": "JlLsm9kC", "itemType": "6C5bTypa"}, "quantity": 100, "type": "ITEM"}]}, {"id": "WqrCWDEF", "rewards": [{"currency": {"currencyCode": "MRf93RtB", "namespace": "MtbNaNWy"}, "item": {"itemId": "saJkNQ0u", "itemSku": "QTQCLVmy", "itemType": "9LaSNhmJ"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "xB2sZIyX", "namespace": "lorju4oV"}, "item": {"itemId": "z5uXzZlp", "itemSku": "Hln4zKGT", "itemType": "Fz33hbVE"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "CJ5SkXdV", "namespace": "NNFrN21K"}, "item": {"itemId": "tCyDG6qc", "itemSku": "7YDYtOW6", "itemType": "Qh5p0VKv"}, "quantity": 97, "type": "CURRENCY"}]}, {"id": "InmzJkhM", "rewards": [{"currency": {"currencyCode": "sgSBWPWV", "namespace": "emOFuKI6"}, "item": {"itemId": "pjrXcLWM", "itemSku": "nDki8L1s", "itemType": "2rV5QQB8"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "z5fdiHtf", "namespace": "yP3c11rG"}, "item": {"itemId": "KAdbAEHZ", "itemSku": "PT2YD2cj", "itemType": "AEmswtI2"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "qUYl6pxt", "namespace": "VlxvnlDa"}, "item": {"itemId": "FcQV6tf0", "itemSku": "L5xYbRyt", "itemType": "a4DepkBZ"}, "quantity": 72, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"6dejMEvr": "ujwg6pX8", "aqhTqogN": "OIXF7ZLT", "ADHBui94": "PrrbP4tt"}}, {"platform": "PSN", "platformDlcIdMap": {"P3KwwIu6": "uPHl7x4N", "ZmT7EhSt": "d2AQygXQ", "IF2lgwTa": "7b4caJqC"}}, {"platform": "PSN", "platformDlcIdMap": {"EqVyutVU": "ETxGBX7H", "05huNcvR": "2MdwIHGa", "zP3W2JgY": "L0sO9Miw"}}]}' \
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
    --entitlementClazz 'CODE' \
    --entitlementName 'pLT0B7Lj' \
    --itemId '["exoqB3PI", "GEG5bG6g", "4su95LLW"]' \
    --limit '26' \
    --offset '32' \
    --userId 'GhDQP5FS' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["Zl6dfmFp", "omQ3ng8U", "zD31UP9e"]' \
    --limit '2' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1987-09-09T00:00:00Z", "grantedCode": "WBFYqIhq", "itemId": "gTQSScnB", "itemNamespace": "o3RaBUDr", "language": "AoN-Df", "quantity": 9, "region": "51M3NXOa", "source": "REFERRAL_BONUS", "startDate": "1992-03-27T00:00:00Z", "storeId": "8xN4QoVm"}, {"endDate": "1974-11-01T00:00:00Z", "grantedCode": "R5dmigY3", "itemId": "Gd9zM0mc", "itemNamespace": "Ho9ObFJy", "language": "ncgw-TcGA_Bg", "quantity": 70, "region": "ebDwXN0r", "source": "PURCHASE", "startDate": "1973-03-17T00:00:00Z", "storeId": "mf1PeRqm"}, {"endDate": "1997-01-03T00:00:00Z", "grantedCode": "nfRYWSZB", "itemId": "yqys9FQx", "itemNamespace": "5QW5yU4l", "language": "MRV", "quantity": 0, "region": "7qrLAW33", "source": "REDEEM_CODE", "startDate": "1975-05-28T00:00:00Z", "storeId": "1SPWebui"}], "userIds": ["EtO6KrXk", "KKIhwMcC", "CWD16CFF"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["BVCWSa6f", "XFgiox70", "LNiJGzHV"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'x9sjPiMA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '57' \
    --status 'SUCCESS' \
    --userId 'xOdTie89' \
    > test.out 2>&1
eval_tap $? 56 'QueryFulfillmentHistories' test.out

#- 57 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetAppleIAPConfig' test.out

#- 58 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "yyVi4vys", "password": "dw7Pay1b"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateAppleIAPConfig' test.out

#- 59 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteAppleIAPConfig' test.out

#- 60 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetEpicGamesIAPConfig' test.out

#- 61 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "51vBTm0Z"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateEpicGamesIAPConfig' test.out

#- 62 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteEpicGamesIAPConfig' test.out

#- 63 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetGoogleIAPConfig' test.out

#- 64 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "Ng1Mr7sr", "serviceAccountId": "jJF2hFLM"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateGoogleIAPConfig' test.out

#- 65 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'DeleteGoogleIAPConfig' test.out

#- 66 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 66 'UpdateGoogleP12File' test.out

#- 67 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetIAPItemConfig' test.out

#- 68 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "KYRGZSz2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aAJL0vtN": "febSE1Pz", "RfqAkzyH": "tGHo0Jm3", "GN9mwgrN": "SZpZsPzS"}}, {"itemIdentity": "GIRbGIJK", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"efBbWVoR": "Wnf9vpJe", "orPwV5Hp": "PebeYqXv", "BsEvj0nw": "BcRNiNUL"}}, {"itemIdentity": "SUIWAhzU", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"SlSEcdBV": "FaXCU23v", "RL42Dlwm": "21xpEZnB", "pOsRoiFb": "wZxpekC3"}}]}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateIAPItemConfig' test.out

#- 69 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteIAPItemConfig' test.out

#- 70 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetPlayStationIAPConfig' test.out

#- 71 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "PUEzGOQg"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdatePlaystationIAPConfig' test.out

#- 72 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeletePlaystationIAPConfig' test.out

#- 73 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "LgXQtiFy", "publisherAuthenticationKey": "haLwGPT9"}' \
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
    --body '{"clientId": "GC97dISx", "clientSecret": "umS75OIK", "organizationId": "4EqK4wZF"}' \
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
    --body '{"relyingPartyCert": "ZqLrurlZ"}' \
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
    --password '9MaUsuDF' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '0SRfboP7' \
    --itemId 'j8bGPMav' \
    --itemType 'INGAMEITEM' \
    --endTime 'PZWMj25C' \
    --startTime 'GYztrmLa' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'EEvNPuPe' \
    --itemId 'yAq4QHqw' \
    --itemType 'CODE' \
    --endTime 'zavlsG1b' \
    --startTime 'XUaKvpnF' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'AeTB2tXD' \
    --body '{"categoryPath": "Mt6W0cqM", "targetItemId": "6R7vtK9b", "targetNamespace": "uSRU8trH"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'c7IGgT8k' \
    --body '{"appId": "MUsJW2gO", "appType": "GAME", "baseAppId": "4VhI8vnV", "boothName": "CoyFYhSY", "categoryPath": "yfIj4yWy", "clazz": "aT1xsyvx", "displayOrder": 84, "entitlementType": "CONSUMABLE", "ext": {"c8Cb1BIF": {}, "PEMVYkpr": {}, "62OziQBv": {}}, "features": ["jYOsDJT2", "vfmyshGn", "TON40mcg"], "images": [{"as": "Uqr3jagI", "caption": "CukXAuNc", "height": 36, "imageUrl": "LLMo8cG8", "smallImageUrl": "dne7GhaX", "width": 97}, {"as": "apQ5Bkj4", "caption": "scrAyQxk", "height": 6, "imageUrl": "XGskdaOH", "smallImageUrl": "Hx4P5zTm", "width": 42}, {"as": "ugfw4FR9", "caption": "A8IXdtQs", "height": 34, "imageUrl": "7v0o4Nu3", "smallImageUrl": "Jrtx4zRB", "width": 85}], "itemIds": ["wliR4fWy", "wBEH54qT", "h4VLGSVX"], "itemQty": {"xF3PzHQD": 36, "DlY3qbz5": 16, "xLxMsN1t": 38}, "itemType": "BUNDLE", "listable": true, "localizations": {"P3G8jfLm": {"description": "5K4pFuIP", "localExt": {"gBHxhxft": {}, "7q5Ant9f": {}, "vwxaQCHC": {}}, "longDescription": "XMBsLWJo", "title": "QOVdBOTH"}, "AbnD08mF": {"description": "G0pca6V2", "localExt": {"WrhgW8wc": {}, "eLmatVkU": {}, "gGjEMz7H": {}}, "longDescription": "F6j78dUb", "title": "7ns0JmXn"}, "heuBBj5Z": {"description": "ju95D8ZR", "localExt": {"nCb9SSpK": {}, "twApZsen": {}, "LkIuqDLK": {}}, "longDescription": "w0Gaw8uy", "title": "dw9liKJo"}}, "lootBoxConfig": {"rewardCount": 94, "rewards": [{"lootBoxItems": [{"count": 76, "itemId": "jrBlSPcc", "itemSku": "nTP7lUJd", "itemType": "2rcno8AQ"}, {"count": 75, "itemId": "JGV3ZjQ1", "itemSku": "oJzKi349", "itemType": "OtUf2duE"}, {"count": 42, "itemId": "4oMUNr0m", "itemSku": "8otnCqEH", "itemType": "0RS7Yctd"}], "name": "DGUpVImQ", "odds": 0.926206519137207, "type": "REWARD_GROUP", "weight": 80}, {"lootBoxItems": [{"count": 40, "itemId": "u5qfWhTO", "itemSku": "xgM3QhD4", "itemType": "AOGcSeLp"}, {"count": 73, "itemId": "4ftMDknP", "itemSku": "Bzpmj57y", "itemType": "154a5Ine"}, {"count": 80, "itemId": "uhCxOShe", "itemSku": "iFfht845", "itemType": "tWoK9YK0"}], "name": "hMQOhiXF", "odds": 0.95867164469067, "type": "PROBABILITY_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 50, "itemId": "4QUsyXt1", "itemSku": "FuIBnTje", "itemType": "VruD6lwU"}, {"count": 38, "itemId": "Dbh4FOTB", "itemSku": "vggMV5QI", "itemType": "Xs72KU1E"}, {"count": 20, "itemId": "R6At3HKu", "itemSku": "JPHeP93f", "itemType": "WeFSEoVI"}], "name": "nCBghlsW", "odds": 0.4355529705499238, "type": "PROBABILITY_GROUP", "weight": 91}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 69, "name": "1w8iRQGs", "optionBoxConfig": {"boxItems": [{"count": 19, "itemId": "ixm38tYp", "itemSku": "5Pc23o0g", "itemType": "Mttq1L2S"}, {"count": 43, "itemId": "7SyR8Nj0", "itemSku": "QtPzW5Q9", "itemType": "zimTZtZJ"}, {"count": 9, "itemId": "C5gj6Tg3", "itemSku": "Z6elYJYz", "itemType": "35Ktzh7Y"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 70, "fixedTrialCycles": 65, "graceDays": 45}, "regionData": {"94Wz3IcU": [{"currencyCode": "I4TIl5eq", "currencyNamespace": "UJVJkThi", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1973-11-10T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1997-03-23T00:00:00Z", "expireAt": "1974-10-11T00:00:00Z", "price": 58, "purchaseAt": "1999-11-17T00:00:00Z", "trialPrice": 27}, {"currencyCode": "ffojjsLG", "currencyNamespace": "arWqL9fU", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1988-08-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1998-05-12T00:00:00Z", "expireAt": "1971-01-31T00:00:00Z", "price": 74, "purchaseAt": "1995-11-01T00:00:00Z", "trialPrice": 44}, {"currencyCode": "2Tjx78Hr", "currencyNamespace": "J8GLAKbD", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1991-07-11T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1977-07-22T00:00:00Z", "expireAt": "1995-11-11T00:00:00Z", "price": 38, "purchaseAt": "1991-10-30T00:00:00Z", "trialPrice": 41}], "uQoL7g89": [{"currencyCode": "KmZI8774", "currencyNamespace": "mIhZ2RBv", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1990-09-21T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1973-03-01T00:00:00Z", "expireAt": "1996-12-22T00:00:00Z", "price": 35, "purchaseAt": "1991-08-24T00:00:00Z", "trialPrice": 63}, {"currencyCode": "la8JXsEB", "currencyNamespace": "759H4TMm", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1979-06-25T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1987-03-09T00:00:00Z", "expireAt": "1976-11-01T00:00:00Z", "price": 51, "purchaseAt": "1993-07-07T00:00:00Z", "trialPrice": 24}, {"currencyCode": "Tlg8DXzc", "currencyNamespace": "yyJ6oPVS", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1971-12-02T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1991-11-16T00:00:00Z", "expireAt": "1999-06-11T00:00:00Z", "price": 24, "purchaseAt": "1996-01-07T00:00:00Z", "trialPrice": 42}], "6G8wtf1M": [{"currencyCode": "lI1QeV7r", "currencyNamespace": "HGdMcdAm", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1982-05-30T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-08-27T00:00:00Z", "expireAt": "1989-09-19T00:00:00Z", "price": 51, "purchaseAt": "1991-05-08T00:00:00Z", "trialPrice": 92}, {"currencyCode": "U7NzwRES", "currencyNamespace": "20ur0vCQ", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1995-03-26T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1995-03-16T00:00:00Z", "expireAt": "1994-09-20T00:00:00Z", "price": 74, "purchaseAt": "1977-07-28T00:00:00Z", "trialPrice": 92}, {"currencyCode": "IYprvmjn", "currencyNamespace": "oLsLZ2s5", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1999-06-19T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-10-16T00:00:00Z", "expireAt": "1979-08-21T00:00:00Z", "price": 67, "purchaseAt": "1991-08-01T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "ppTRIxox", "price": 57}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "X7g6x6xh", "stackable": true, "status": "ACTIVE", "tags": ["e59NS3n1", "qxSoBmxK", "yVgu74Ys"], "targetCurrencyCode": "WwhPz2mc", "targetNamespace": "mdQsiW7h", "thumbnailUrl": "4pmOwzuv", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'z9VHbXhn' \
    --appId 'FBnfRP7Y' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate '3IDwERnz' \
    --baseAppId 'Ym6prhkg' \
    --categoryPath 'Sm6YEkpR' \
    --features 's7IFeY8o' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '83' \
    --offset '60' \
    --region 'FUug7K3k' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --storeId 'qqOinlOY' \
    --tags 'R9wAZfbQ' \
    --targetNamespace 'ywyYp2te' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["RXVaCxKL", "GP4B4Ouz", "bvR7jQ3U"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Lg3x65CP' \
    --sku 'f7EuYE4u' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'UtCS22ZS' \
    --populateBundle 'false' \
    --region 't27RA6uz' \
    --storeId 'BeInP9RQ' \
    --sku 'dr43Lbv5' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'gj92C304' \
    --sku 'pgrmiTVX' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["9Kn6zatO", "bzTzNEkI", "GRbhvH1h"]' \
    --storeId 'yPts5iws' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '6L604a2T' \
    --region 'cOkh9bBx' \
    --storeId 'xERl9Izf' \
    --itemIds 'SUwLVvSb' \
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
    --userId 'ZUdNFJLC' \
    --body '{"itemIds": ["dwZsIYDL", "M4GALpqR", "NhqHECwu"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'XaLvq50S' \
    --body '{"changes": [{"itemIdentities": ["Q2q1ekFv", "bkqlDCSW", "3JPscBDx"], "itemIdentityType": "ITEM_ID", "regionData": {"IOK19Cfp": [{"currencyCode": "q1dZrowM", "currencyNamespace": "Fa53vY55", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1998-12-04T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1981-01-03T00:00:00Z", "discountedPrice": 11, "expireAt": "1978-05-25T00:00:00Z", "price": 20, "purchaseAt": "1978-02-11T00:00:00Z", "trialPrice": 60}, {"currencyCode": "tuJLglbQ", "currencyNamespace": "EtIYfuwS", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1988-12-23T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1982-05-25T00:00:00Z", "discountedPrice": 62, "expireAt": "1979-02-07T00:00:00Z", "price": 6, "purchaseAt": "1971-02-04T00:00:00Z", "trialPrice": 85}, {"currencyCode": "H3tgr8wh", "currencyNamespace": "6PbbV0xu", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1977-09-22T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-09-29T00:00:00Z", "discountedPrice": 19, "expireAt": "1974-06-14T00:00:00Z", "price": 81, "purchaseAt": "1996-11-17T00:00:00Z", "trialPrice": 28}], "5lAcIiKU": [{"currencyCode": "GyADg8n9", "currencyNamespace": "mFW0eHIF", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1974-05-08T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1977-01-25T00:00:00Z", "discountedPrice": 91, "expireAt": "1978-07-17T00:00:00Z", "price": 95, "purchaseAt": "1980-03-31T00:00:00Z", "trialPrice": 60}, {"currencyCode": "BPh4l8AH", "currencyNamespace": "5toTpP4z", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1987-04-21T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1974-01-14T00:00:00Z", "discountedPrice": 76, "expireAt": "1992-02-12T00:00:00Z", "price": 38, "purchaseAt": "1999-07-22T00:00:00Z", "trialPrice": 39}, {"currencyCode": "CSU8aqmB", "currencyNamespace": "avMcOcif", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1971-10-15T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-02-21T00:00:00Z", "discountedPrice": 46, "expireAt": "1990-02-18T00:00:00Z", "price": 95, "purchaseAt": "1982-01-01T00:00:00Z", "trialPrice": 43}], "hWlxcJSp": [{"currencyCode": "GxReGGlH", "currencyNamespace": "0tLd3j3p", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1985-02-15T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1990-05-17T00:00:00Z", "discountedPrice": 39, "expireAt": "1983-06-25T00:00:00Z", "price": 72, "purchaseAt": "1997-12-21T00:00:00Z", "trialPrice": 60}, {"currencyCode": "YGHCQwdu", "currencyNamespace": "WMyElmAs", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1987-11-20T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1987-08-06T00:00:00Z", "discountedPrice": 42, "expireAt": "1972-07-10T00:00:00Z", "price": 53, "purchaseAt": "1981-10-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Mf3rcH9v", "currencyNamespace": "43Ng3RqJ", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1991-07-25T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1992-03-03T00:00:00Z", "discountedPrice": 9, "expireAt": "1991-04-27T00:00:00Z", "price": 65, "purchaseAt": "1998-12-29T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["OKUdCEPG", "KKEljIqC", "kyg3aQ4d"], "itemIdentityType": "ITEM_SKU", "regionData": {"SzIbBE6j": [{"currencyCode": "0w1IXSyj", "currencyNamespace": "hy2pEoV4", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1991-05-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1988-04-28T00:00:00Z", "discountedPrice": 71, "expireAt": "1973-11-06T00:00:00Z", "price": 28, "purchaseAt": "1988-04-09T00:00:00Z", "trialPrice": 2}, {"currencyCode": "08r7BcBp", "currencyNamespace": "ktNEgb7S", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1979-04-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1985-03-31T00:00:00Z", "discountedPrice": 7, "expireAt": "1989-12-01T00:00:00Z", "price": 92, "purchaseAt": "1973-09-13T00:00:00Z", "trialPrice": 73}, {"currencyCode": "Q8ffpgRu", "currencyNamespace": "CPaLdsnK", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1974-01-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1991-03-07T00:00:00Z", "discountedPrice": 83, "expireAt": "1988-02-04T00:00:00Z", "price": 19, "purchaseAt": "1992-04-26T00:00:00Z", "trialPrice": 52}], "4WvVetze": [{"currencyCode": "YqcKhdKX", "currencyNamespace": "z5kQad61", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1975-01-19T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1983-10-18T00:00:00Z", "discountedPrice": 20, "expireAt": "1978-04-03T00:00:00Z", "price": 20, "purchaseAt": "1999-06-25T00:00:00Z", "trialPrice": 47}, {"currencyCode": "4PA4fXHp", "currencyNamespace": "wyuzPmPS", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1990-03-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1997-02-09T00:00:00Z", "discountedPrice": 33, "expireAt": "1985-06-14T00:00:00Z", "price": 44, "purchaseAt": "1986-07-18T00:00:00Z", "trialPrice": 100}, {"currencyCode": "0n3ncy8Q", "currencyNamespace": "rdjYbVjf", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1989-11-26T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-04-09T00:00:00Z", "discountedPrice": 57, "expireAt": "1995-08-27T00:00:00Z", "price": 39, "purchaseAt": "1982-01-12T00:00:00Z", "trialPrice": 94}], "k76FplDE": [{"currencyCode": "Rh4dD8ry", "currencyNamespace": "t8D7G9fY", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1997-10-19T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1975-04-08T00:00:00Z", "discountedPrice": 65, "expireAt": "1995-02-22T00:00:00Z", "price": 14, "purchaseAt": "1975-10-17T00:00:00Z", "trialPrice": 59}, {"currencyCode": "YTZbZPEt", "currencyNamespace": "SFiDlnw5", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1985-06-23T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1977-09-27T00:00:00Z", "discountedPrice": 37, "expireAt": "1977-05-09T00:00:00Z", "price": 97, "purchaseAt": "1991-02-25T00:00:00Z", "trialPrice": 54}, {"currencyCode": "KpI8pnPZ", "currencyNamespace": "YHp9Sax7", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1991-07-04T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1983-04-05T00:00:00Z", "discountedPrice": 5, "expireAt": "1991-09-04T00:00:00Z", "price": 100, "purchaseAt": "1985-05-02T00:00:00Z", "trialPrice": 45}]}}, {"itemIdentities": ["FpI9qhIS", "ghM77tTx", "CVwNY1M4"], "itemIdentityType": "ITEM_ID", "regionData": {"DqiSQExT": [{"currencyCode": "3OxBp0ot", "currencyNamespace": "AxldmXi4", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1983-06-29T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1995-04-06T00:00:00Z", "discountedPrice": 95, "expireAt": "1979-11-09T00:00:00Z", "price": 20, "purchaseAt": "1971-10-01T00:00:00Z", "trialPrice": 43}, {"currencyCode": "dLUYet7e", "currencyNamespace": "CurWXab4", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1989-01-25T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1994-10-15T00:00:00Z", "discountedPrice": 30, "expireAt": "1990-08-02T00:00:00Z", "price": 66, "purchaseAt": "1983-09-27T00:00:00Z", "trialPrice": 37}, {"currencyCode": "4Kz2dOLp", "currencyNamespace": "rOxPgUE7", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1980-11-27T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1978-06-19T00:00:00Z", "discountedPrice": 7, "expireAt": "1978-02-17T00:00:00Z", "price": 11, "purchaseAt": "1994-10-31T00:00:00Z", "trialPrice": 50}], "VOktj8Ia": [{"currencyCode": "opWgIdpO", "currencyNamespace": "i3hKmXS9", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1982-11-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1993-06-07T00:00:00Z", "discountedPrice": 43, "expireAt": "1990-07-21T00:00:00Z", "price": 30, "purchaseAt": "1978-01-14T00:00:00Z", "trialPrice": 30}, {"currencyCode": "nt6VTEvS", "currencyNamespace": "e2kc6zjM", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1979-12-20T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1977-03-21T00:00:00Z", "discountedPrice": 59, "expireAt": "1994-04-15T00:00:00Z", "price": 60, "purchaseAt": "1986-09-03T00:00:00Z", "trialPrice": 2}, {"currencyCode": "uZvxKBEv", "currencyNamespace": "XRJg14X2", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1987-12-22T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1978-12-18T00:00:00Z", "discountedPrice": 39, "expireAt": "1985-04-21T00:00:00Z", "price": 64, "purchaseAt": "1989-09-29T00:00:00Z", "trialPrice": 38}], "IF3CPnvG": [{"currencyCode": "bcija11Y", "currencyNamespace": "x554v2VW", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1999-03-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1981-10-30T00:00:00Z", "discountedPrice": 75, "expireAt": "1997-04-09T00:00:00Z", "price": 37, "purchaseAt": "1990-07-18T00:00:00Z", "trialPrice": 27}, {"currencyCode": "5ZDKAZ2a", "currencyNamespace": "OIyX5k6d", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1993-07-26T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1996-10-07T00:00:00Z", "discountedPrice": 99, "expireAt": "1988-06-07T00:00:00Z", "price": 89, "purchaseAt": "1981-02-18T00:00:00Z", "trialPrice": 39}, {"currencyCode": "6uGNOGk8", "currencyNamespace": "F3DPRvwN", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1998-06-10T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1995-09-30T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-10-22T00:00:00Z", "price": 100, "purchaseAt": "1996-05-07T00:00:00Z", "trialPrice": 18}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '46' \
    --offset '11' \
    --sortBy 'tA3rjufP' \
    --storeId 'qd7umfft' \
    --keyword 'adnRQHZG' \
    --language 'BK9Fd6Tj' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '14' \
    --offset '26' \
    --sortBy '["displayOrder:desc", "name", "name:asc"]' \
    --storeId 'BtI94dmI' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'ciz0Y4VJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'xcWgcYHp' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'JH50VN5P' \
    --namespace $AB_NAMESPACE \
    --storeId 'YystOirU' \
    --body '{"appId": "NNZI6Zie", "appType": "DEMO", "baseAppId": "4asEWskG", "boothName": "u5XsN0bh", "categoryPath": "Kt3ooRZe", "clazz": "tntDQeuR", "displayOrder": 85, "entitlementType": "DURABLE", "ext": {"z1Z4GzYu": {}, "Yrlqitdg": {}, "nhd8282C": {}}, "features": ["L5JwHTCR", "QkOJhtpR", "l71r95FX"], "images": [{"as": "qTpigsHC", "caption": "v6r4LXnC", "height": 55, "imageUrl": "bKoYGkQF", "smallImageUrl": "MXScjHYW", "width": 22}, {"as": "sXcXEtrK", "caption": "NJpchU3d", "height": 66, "imageUrl": "XXkxybqM", "smallImageUrl": "iZ9HeTiE", "width": 96}, {"as": "XkBUCrsw", "caption": "QIKuYphJ", "height": 0, "imageUrl": "zbaS66BS", "smallImageUrl": "sFDwUPyr", "width": 25}], "itemIds": ["9FpJ3RAc", "lOJwNc51", "kZKyB3sF"], "itemQty": {"WobDWE7K": 9, "lSPIYEN6": 58, "2rA9mZjO": 68}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"t1rf2SKx": {"description": "Hp03KzIn", "localExt": {"jVeDO2UV": {}, "yvcB5Js1": {}, "9OnPBMF6": {}}, "longDescription": "uKX72gfp", "title": "Ej493aYD"}, "9Vkvrpma": {"description": "cDEho3AP", "localExt": {"DzJUMV9G": {}, "D3dnXud2": {}, "liz0hxqc": {}}, "longDescription": "8w7zejrZ", "title": "wDMgTrzy"}, "xmwk0IyD": {"description": "VzjefXxE", "localExt": {"RPAVfRCX": {}, "a7IZ1LjG": {}, "K8hd5SlA": {}}, "longDescription": "ziO42QiD", "title": "4EEh3FcT"}}, "lootBoxConfig": {"rewardCount": 73, "rewards": [{"lootBoxItems": [{"count": 3, "itemId": "T6PrlDI1", "itemSku": "E0wwFwe7", "itemType": "SOG3gxfz"}, {"count": 9, "itemId": "VQ8oZJX5", "itemSku": "DYrtGnvK", "itemType": "u9gPJZL8"}, {"count": 44, "itemId": "nF8lP4Lb", "itemSku": "ZJWS3uWN", "itemType": "WUjty5dR"}], "name": "StuG8xFK", "odds": 0.816954122861223, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 33, "itemId": "eqO3orTm", "itemSku": "PseShuFd", "itemType": "OJ6HH27z"}, {"count": 34, "itemId": "IpBJf5UT", "itemSku": "xuwoOBNV", "itemType": "srqxk18R"}, {"count": 93, "itemId": "q5VODIkf", "itemSku": "1CSze7kN", "itemType": "2EvGEn8q"}], "name": "NGjV1T5M", "odds": 0.27480880216235226, "type": "REWARD_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 66, "itemId": "AgjGMlw7", "itemSku": "PoYeq6AX", "itemType": "birEAs57"}, {"count": 32, "itemId": "94JK5bem", "itemSku": "ETCtYaYT", "itemType": "YD34TAY0"}, {"count": 78, "itemId": "zDc10gQa", "itemSku": "5iOJ92FK", "itemType": "33cIj7ju"}], "name": "TCHwQAhi", "odds": 0.7804958045921722, "type": "PROBABILITY_GROUP", "weight": 31}], "rollFunction": "DEFAULT"}, "maxCount": 100, "maxCountPerUser": 17, "name": "ATqrA5T7", "optionBoxConfig": {"boxItems": [{"count": 48, "itemId": "q5KzLdh3", "itemSku": "VY6ntyQS", "itemType": "JYb3Efxb"}, {"count": 42, "itemId": "XCirgxza", "itemSku": "F1VA9uei", "itemType": "cDfM8xmV"}, {"count": 83, "itemId": "v6DFvedW", "itemSku": "i9ZMJPIW", "itemType": "QDNdGfAX"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 21, "fixedTrialCycles": 11, "graceDays": 42}, "regionData": {"n9NUlWcn": [{"currencyCode": "aQidJ0XY", "currencyNamespace": "aAxbTOv3", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1994-05-24T00:00:00Z", "expireAt": "1998-11-02T00:00:00Z", "price": 52, "purchaseAt": "1986-01-15T00:00:00Z", "trialPrice": 81}, {"currencyCode": "ojRY9u55", "currencyNamespace": "eISwXn8V", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1978-03-30T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1983-05-03T00:00:00Z", "expireAt": "1982-09-13T00:00:00Z", "price": 8, "purchaseAt": "1973-01-02T00:00:00Z", "trialPrice": 56}, {"currencyCode": "DsGXZaO0", "currencyNamespace": "Mfl4qSrZ", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1994-06-18T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-10-26T00:00:00Z", "expireAt": "1988-07-07T00:00:00Z", "price": 88, "purchaseAt": "1996-05-10T00:00:00Z", "trialPrice": 96}], "cw2cgsUI": [{"currencyCode": "J7PVAkYC", "currencyNamespace": "T0Y8ryjr", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1988-12-17T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1987-02-25T00:00:00Z", "expireAt": "1989-02-15T00:00:00Z", "price": 37, "purchaseAt": "1975-01-10T00:00:00Z", "trialPrice": 72}, {"currencyCode": "cFCNf2zl", "currencyNamespace": "n8uje01Q", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1978-09-03T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1985-01-11T00:00:00Z", "expireAt": "1985-03-16T00:00:00Z", "price": 16, "purchaseAt": "1980-08-28T00:00:00Z", "trialPrice": 37}, {"currencyCode": "9jPMevdd", "currencyNamespace": "gJZkFKVo", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1991-04-24T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1999-11-22T00:00:00Z", "expireAt": "1998-01-02T00:00:00Z", "price": 96, "purchaseAt": "1987-08-23T00:00:00Z", "trialPrice": 82}], "iTgNf2zt": [{"currencyCode": "WuJTFOtY", "currencyNamespace": "kTHJhcnd", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1976-11-12T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-04T00:00:00Z", "expireAt": "1978-07-09T00:00:00Z", "price": 31, "purchaseAt": "1982-10-05T00:00:00Z", "trialPrice": 15}, {"currencyCode": "senSD86w", "currencyNamespace": "EzOH4bwP", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1997-05-18T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1993-06-23T00:00:00Z", "expireAt": "1971-09-21T00:00:00Z", "price": 9, "purchaseAt": "1974-01-27T00:00:00Z", "trialPrice": 55}, {"currencyCode": "tu41yI3Y", "currencyNamespace": "22U360Kv", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1993-07-28T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1998-09-20T00:00:00Z", "expireAt": "1988-07-22T00:00:00Z", "price": 45, "purchaseAt": "1980-09-28T00:00:00Z", "trialPrice": 3}]}, "saleConfig": {"currencyCode": "RUfPPr7c", "price": 8}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "mdMFDfmp", "stackable": true, "status": "INACTIVE", "tags": ["5pBqjHGp", "cYh8F1gl", "4nOlOGzy"], "targetCurrencyCode": "mYIDball", "targetNamespace": "wExdqeSC", "thumbnailUrl": "z5may4ZO", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'fvW5uS43' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'o3TDi4yi' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'ORFAe3YN' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "XZDc1iSD"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'lnyy7lyf' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0MfmJzem' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'MBpLFIvt' \
    --namespace $AB_NAMESPACE \
    --storeId 'REIjx1qy' \
    --body '{"carousel": [{"alt": "KucKDcMo", "previewUrl": "pZqEXJGm", "thumbnailUrl": "yKO8pMhk", "type": "video", "url": "p8UgP9Ud", "videoSource": "youtube"}, {"alt": "alcevVuc", "previewUrl": "NXGCGu0u", "thumbnailUrl": "dpijr2XH", "type": "image", "url": "pg2LtsGE", "videoSource": "youtube"}, {"alt": "wLjhZT1d", "previewUrl": "UZ49uNch", "thumbnailUrl": "KcKkc7Mj", "type": "video", "url": "h1j0mOdy", "videoSource": "youtube"}], "developer": "EdLmovjo", "forumUrl": "5vqLnJ94", "genres": ["MassivelyMultiplayer", "Racing", "Adventure"], "localizations": {"XsGPTeZQ": {"announcement": "MF0q8T00", "slogan": "1zMbBVA1"}, "JAvh3eT7": {"announcement": "vRQnoX5m", "slogan": "7Kqs3C3Z"}, "5Yzgn1cD": {"announcement": "qI1YT8Aw", "slogan": "EkyouwiV"}}, "platformRequirements": {"MxONaCcJ": [{"additionals": "EUSwzwik", "directXVersion": "ljmX0Jjx", "diskSpace": "CAFGzaeF", "graphics": "V9H5Neh8", "label": "TZ0CMAqR", "osVersion": "eCVaJh9d", "processor": "mo0qry23", "ram": "LdxGuDXQ", "soundCard": "C07ozkBh"}, {"additionals": "ZzVyPnjv", "directXVersion": "69Ufw0to", "diskSpace": "gD9xeNJy", "graphics": "3LWKiNqc", "label": "0k0UmsgA", "osVersion": "wzCi24d1", "processor": "OfIkYuX9", "ram": "BZBSdAPr", "soundCard": "AEvJGxT8"}, {"additionals": "vtw29qG6", "directXVersion": "pbPbFZER", "diskSpace": "3wqADpSB", "graphics": "4lyCJKY2", "label": "6Tb9GBr3", "osVersion": "dncKk65A", "processor": "bnLqP2Li", "ram": "LPWh0HIy", "soundCard": "Qwg1BmCR"}], "WYoPWwbm": [{"additionals": "YrDuocDF", "directXVersion": "e4JHJ8ke", "diskSpace": "93MlxBMg", "graphics": "FW8TayJN", "label": "YucvByJk", "osVersion": "r2WR2hKV", "processor": "blhOPC8w", "ram": "jGHQuz0G", "soundCard": "33HIuCVk"}, {"additionals": "nWzTRgLa", "directXVersion": "QG2khjch", "diskSpace": "D53n7Yld", "graphics": "qkEVkIfg", "label": "d7QOfDGo", "osVersion": "Uj9iQBX9", "processor": "dor4C9eo", "ram": "IEtO1XGm", "soundCard": "5S7EryiT"}, {"additionals": "bRXhkqYb", "directXVersion": "1zFF7ILs", "diskSpace": "P4h3C6FI", "graphics": "CLL1612q", "label": "uaQcYGCi", "osVersion": "Aj69SBpl", "processor": "pdzTu2NI", "ram": "eUtZu6jV", "soundCard": "J0gRdxrS"}], "GtFlON8o": [{"additionals": "NTmtQtCE", "directXVersion": "qM5h6KrQ", "diskSpace": "DsceTCaR", "graphics": "D1bfD4hd", "label": "MlLTh0Rn", "osVersion": "94P0O71M", "processor": "ocszquwn", "ram": "Aw3guvhv", "soundCard": "5IHUD5Nc"}, {"additionals": "fig5Ayfv", "directXVersion": "EBSJRfR4", "diskSpace": "jHK04Pjw", "graphics": "yy260eUa", "label": "Wz1ggVwE", "osVersion": "V7ba3df9", "processor": "yaUVUfNx", "ram": "BhrSSxD9", "soundCard": "IaF4VmM9"}, {"additionals": "hYVyk581", "directXVersion": "KaQXZWMw", "diskSpace": "JRjpXor2", "graphics": "MGJZ4hs9", "label": "aVExXPLg", "osVersion": "SmsmdfZH", "processor": "wryrBrVc", "ram": "5sOtZfPU", "soundCard": "n8bjtgfk"}]}, "platforms": ["Windows", "MacOS", "IOS"], "players": ["MMO", "Multi", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "cWZvcuGM", "releaseDate": "1997-09-10T00:00:00Z", "websiteUrl": "xgrk5AJI"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '5EUIWsfF' \
    --namespace $AB_NAMESPACE \
    --storeId 'R3ebqrHz' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'zHfZIsWI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'R27auNKs' \
    --namespace $AB_NAMESPACE \
    --storeId 'yK6GXMz9' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'Dgh9ZXs7' \
    --itemId 'LADTMVe2' \
    --namespace $AB_NAMESPACE \
    --storeId 'oGEBbmWM' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'JMdxk12W' \
    --itemId 'bh57vpOo' \
    --namespace $AB_NAMESPACE \
    --storeId 'E0AG3srD' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '1I1JOPBS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'WsQEaFQR' \
    --populateBundle 'true' \
    --region 'ImFoCVc7' \
    --storeId 'HURT49eP' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'I0wiMY0A' \
    --namespace $AB_NAMESPACE \
    --storeId 'EgfKcP5z' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 18, "comparison": "isGreaterThan", "name": "7CNCLuEa", "predicateType": "EntitlementPredicate", "value": "7IBpT8yx", "values": ["lskpVm9Q", "vGMvMwZK", "IKfXE7eJ"]}, {"anyOf": 19, "comparison": "isGreaterThanOrEqual", "name": "SiPukqWj", "predicateType": "EntitlementPredicate", "value": "VMQEQ5WE", "values": ["FNVCbWyZ", "00AgOBAY", "1FVSZgKK"]}, {"anyOf": 64, "comparison": "isGreaterThan", "name": "2kBaNAmu", "predicateType": "SeasonPassPredicate", "value": "ZemLr7a8", "values": ["DDnR6i9h", "7cTEnR7H", "Ubxedu0E"]}]}, {"operator": "and", "predicates": [{"anyOf": 72, "comparison": "excludes", "name": "0xFpvruf", "predicateType": "SeasonTierPredicate", "value": "5U1fjPe4", "values": ["YiTvMYve", "DGwRFiBm", "pwaaqtlc"]}, {"anyOf": 19, "comparison": "isGreaterThanOrEqual", "name": "Px6wJWPg", "predicateType": "SeasonPassPredicate", "value": "m7USr4Ir", "values": ["cqxtaAeg", "WOb0JprP", "N9Lu6zMo"]}, {"anyOf": 66, "comparison": "excludes", "name": "pzjQW8v8", "predicateType": "EntitlementPredicate", "value": "T3gnLtWI", "values": ["1f3O5ZWa", "IShFSACG", "H5ks4ctS"]}]}, {"operator": "and", "predicates": [{"anyOf": 40, "comparison": "includes", "name": "ZwoRCUA0", "predicateType": "SeasonPassPredicate", "value": "SziOfKKj", "values": ["xuu4xWtC", "ZKqYYgBo", "0zWC1A08"]}, {"anyOf": 37, "comparison": "isGreaterThan", "name": "yB3q8kpG", "predicateType": "SeasonTierPredicate", "value": "nocVrLrt", "values": ["OJZ4PM9r", "ePf3z0gY", "e0dGqPMk"]}, {"anyOf": 71, "comparison": "is", "name": "yzZGGIOd", "predicateType": "EntitlementPredicate", "value": "HmtuuMzv", "values": ["pL1ewCb9", "fJN8MTVR", "UR4O0BQT"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '5MjxSjQY' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "4TVi3FDg"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'pMX6opft' \
    --offset '29' \
    --tag 'GMSQCnLh' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SztFrtFH", "name": "6PNNQcge", "status": "INACTIVE", "tags": ["MBXipbr5", "grykGFLB", "OBSAr4ML"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'i9PgH72V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'HpQsvEqo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KQT15Ocf", "name": "pkLW0pkU", "status": "ACTIVE", "tags": ["Yi1LoojJ", "z3VCziv6", "bwdinnrO"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '4Dz8fVBI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'qs4zR6sH' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '37' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ZeXjeN8u' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'lQAAVsal' \
    --limit '45' \
    --offset '77' \
    --orderNos '["aGIZbbSY", "jW0NMDRc", "rp4feAtj"]' \
    --sortBy 'OOPtT3z0' \
    --startTime 'DJJxVacJ' \
    --status 'FULFILLED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 122 'QueryOrders' test.out

#- 123 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetOrderStatistics' test.out

#- 124 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '2Sm5vafd' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RQrhBM8o' \
    --body '{"description": "2D2uEePg"}' \
    > test.out 2>&1
eval_tap $? 125 'RefundOrder' test.out

#- 126 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetPaymentCallbackConfig' test.out

#- 127 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "DVEUfO9j", "privateKey": "qT776fQ9"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'cVLUFykl' \
    --externalId '35LJCdsn' \
    --limit '8' \
    --notificationSource 'ADYEN' \
    --notificationType '4KpBwoeA' \
    --offset '69' \
    --paymentOrderNo 'A1VfLSw3' \
    --startDate 'ekQRHHAE' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'ygMMzXzA' \
    --limit '7' \
    --offset '14' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "r9n0NbEh", "currencyNamespace": "otWSZk2S", "customParameters": {"t2uPK7US": {}, "A8N5wWHm": {}, "Oc7YOEln": {}}, "description": "KxUcgrKc", "extOrderNo": "vBRKdkxI", "extUserId": "2wUalHn0", "itemType": "LOOTBOX", "language": "dP", "metadata": {"6Q3vNuRV": "UL4CieHa", "iFOnMxgX": "wwZWAvBJ", "WAWzEaVI": "DvzHLkfB"}, "notifyUrl": "WG2MUwci", "omitNotification": true, "platform": "l17DoEcH", "price": 62, "recurringPaymentOrderNo": "ZUzzGFD6", "region": "12ISKshu", "returnUrl": "pe7MDMM3", "sandbox": false, "sku": "FzLDhbzC", "subscriptionId": "Hsr1AVoG", "targetNamespace": "XR6L0Aas", "targetUserId": "BH3Ebsvj", "title": "GNVf6u6f"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'FjlZTONq' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UBERpj21' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'P8I9225m' \
    --body '{"extTxId": "opQEBabE", "paymentMethod": "8C9DCVmS", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CdzVG836' \
    --body '{"description": "UEVHiqjL"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nVAh4gSC' \
    --body '{"amount": 5, "currencyCode": "YZqJyK5X", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 60, "vat": 53}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Kb7sf5ZS' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["System", "Nintendo", "System"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 139 'ResetPlatformWalletConfig' test.out

#- 140 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetRevocationConfig' test.out

#- 141 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateRevocationConfig' test.out

#- 142 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'DeleteRevocationConfig' test.out

#- 143 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'mbFDsuL9' \
    --limit '24' \
    --offset '43' \
    --source 'OTHER' \
    --startTime 'HUPDoVAC' \
    --status 'SUCCESS' \
    --transactionId '6hFO7JqL' \
    --userId 'DWkv6HrL' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oOEa7NHt", "eventTopic": "xtIfOsWI", "maxAwarded": 34, "maxAwardedPerUser": 81, "namespaceExpression": "ZEWKfbWN", "rewardCode": "U3InyXEK", "rewardConditions": [{"condition": "U4eUfIGL", "conditionName": "PETQkn52", "eventName": "JbRoGfPT", "rewardItems": [{"duration": 53, "itemId": "hzZ2eUQT", "quantity": 92}, {"duration": 10, "itemId": "coJC4qmf", "quantity": 44}, {"duration": 62, "itemId": "gauNoFi7", "quantity": 47}]}, {"condition": "8EjBXL1h", "conditionName": "BdPaFJuk", "eventName": "ZqVAbeZA", "rewardItems": [{"duration": 33, "itemId": "iUivGNUp", "quantity": 62}, {"duration": 75, "itemId": "5hCaqO6s", "quantity": 79}, {"duration": 7, "itemId": "GLePRvuq", "quantity": 12}]}, {"condition": "UVUqnr5z", "conditionName": "JCbeCnUD", "eventName": "GLVdVheD", "rewardItems": [{"duration": 69, "itemId": "gSX82RO9", "quantity": 40}, {"duration": 47, "itemId": "fvl3ReDN", "quantity": 11}, {"duration": 38, "itemId": "fWKA7Kpu", "quantity": 21}]}], "userIdExpression": "KZWBCBnT"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'cXuzhi8b' \
    --limit '92' \
    --offset '45' \
    --sortBy '["rewardCode", "namespace:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 145 'QueryRewards' test.out

#- 146 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'ExportRewards' test.out

#- 147 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Fay5DRP3' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uPVG1zac' \
    --body '{"description": "AFYBCzW4", "eventTopic": "FNMdDbn7", "maxAwarded": 61, "maxAwardedPerUser": 53, "namespaceExpression": "7M8UNla2", "rewardCode": "Gc3W5r5r", "rewardConditions": [{"condition": "XOLJAHZL", "conditionName": "vDwK2cDZ", "eventName": "OglNpYXC", "rewardItems": [{"duration": 17, "itemId": "YxSL94IB", "quantity": 22}, {"duration": 17, "itemId": "jRRoVd1w", "quantity": 17}, {"duration": 91, "itemId": "BRztAXhE", "quantity": 57}]}, {"condition": "73Dwx4Zx", "conditionName": "HR8iK5GM", "eventName": "qLWmTz7U", "rewardItems": [{"duration": 31, "itemId": "G2o6DwKL", "quantity": 91}, {"duration": 1, "itemId": "AikSUTYb", "quantity": 94}, {"duration": 76, "itemId": "XAiigwNG", "quantity": 60}]}, {"condition": "I3H8kCSy", "conditionName": "Z4Y0h138", "eventName": "RqOfPa5T", "rewardItems": [{"duration": 50, "itemId": "9Woa4yEq", "quantity": 22}, {"duration": 16, "itemId": "tPe6R7Lm", "quantity": 17}, {"duration": 51, "itemId": "TNXXlrjJ", "quantity": 26}]}], "userIdExpression": "eT08wpvu"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '04vLdfjQ' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'k6nTMc5d' \
    --body '{"payload": {"D2EY5ERh": {}, "uYn2lu6J": {}, "VBb4VIjH": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'pbvaYs0k' \
    --body '{"conditionName": "iwlhOcpT", "userId": "WNGvpcEM"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'siIREXcL' \
    --limit '83' \
    --offset '28' \
    --start 'QjkvYJID' \
    --storeId '3JOVFYHf' \
    --viewId 'YG2tUOM7' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'T1WdObL1' \
    --body '{"active": true, "displayOrder": 68, "endDate": "1977-11-11T00:00:00Z", "ext": {"KthSgttB": {}, "dPHzI32c": {}, "5bpQvDBa": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 78, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "ph3x5xFB", "sku": "6WhDdUY0"}, {"id": "4URd4BRa", "sku": "suW2rn0z"}, {"id": "sD8b1BX0", "sku": "LMTb1NDy"}], "localizations": {"1kJKKQUH": {"description": "PNSkh3gP", "localExt": {"nEjIBgxf": {}, "bH5ycr07": {}, "PZp5jWT5": {}}, "longDescription": "23vTILcO", "title": "jfcCwcgt"}, "pB3Tn8dU": {"description": "Wf6QKA7e", "localExt": {"RcErTnfl": {}, "iClzawrG": {}, "e7G6rTOB": {}}, "longDescription": "M40E6gzp", "title": "GcNjDaIy"}, "Sj8BngvR": {"description": "Yqof0VuZ", "localExt": {"vnRYqaMz": {}, "Wm00OF8k": {}, "OzRIxGYg": {}}, "longDescription": "TaOa2Gny", "title": "Egtk0Nyb"}}, "name": "Jttpmmcx", "rotationType": "NONE", "startDate": "1976-09-20T00:00:00Z", "viewId": "RQW0IHTR"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'hWV4c1Nk' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'k8aicDR6' \
    --storeId 'YT79umkr' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6W6J2IQf' \
    --storeId '8I4p9Nsr' \
    --body '{"active": false, "displayOrder": 66, "endDate": "1977-05-07T00:00:00Z", "ext": {"Kol33XbI": {}, "avRGn5BX": {}, "g5hjMBvB": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 94, "itemCount": 37, "rule": "SEQUENCE"}, "items": [{"id": "1n1AEoFY", "sku": "QppXFfCN"}, {"id": "iaBFXJnP", "sku": "eI1wqTTd"}, {"id": "X09l6ACO", "sku": "71iAlpje"}], "localizations": {"L1cBm9Dn": {"description": "HeSNAhPM", "localExt": {"eG9GqGH1": {}, "SKBYMAie": {}, "ACkhRlL3": {}}, "longDescription": "aqHZv3Ec", "title": "20mE0VnD"}, "yxSjuwKq": {"description": "vl4jp0JE", "localExt": {"O5Abis3n": {}, "FbqOVrtV": {}, "BhhYixc6": {}}, "longDescription": "fqK0aZEa", "title": "fAGdQzCO"}, "dx6ckw3B": {"description": "MegkPPUC", "localExt": {"uQxe3sM6": {}, "wDpmQNsz": {}, "MOMvIaRZ": {}}, "longDescription": "Z26x5Eoe", "title": "PvvrFu96"}}, "name": "jqMuaAnM", "rotationType": "NONE", "startDate": "1986-08-23T00:00:00Z", "viewId": "XBibe1ln"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2CeDtDY5' \
    --storeId 'NYLjz4CQ' \
    > test.out 2>&1
eval_tap $? 158 'DeleteSection' test.out

#- 159 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'ListStores' test.out

#- 160 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "3x1dxs3M", "defaultRegion": "lmU2BoWI", "description": "dUjm6IXj", "supportedLanguages": ["g3kJsN7w", "g3aPEkMa", "syUU0H8t"], "supportedRegions": ["HJdKEmGE", "moILM6a9", "QwiqZEar"], "title": "JqmKbeC8"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateStore' test.out

#- 161 ImportStore
eval_tap 0 161 'ImportStore # SKIP deprecated' test.out

#- 162 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPublishedStore' test.out

#- 163 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeletePublishedStore' test.out

#- 164 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPublishedStoreBackup' test.out

#- 165 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'RollbackPublishedStore' test.out

#- 166 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'J3UMMmem' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'i0R0XALa' \
    --body '{"defaultLanguage": "UW9xjP5B", "defaultRegion": "RmTGi8Rk", "description": "Uppol1DN", "supportedLanguages": ["ONbGW3TL", "luvsCyNP", "M088HF8S"], "supportedRegions": ["QGvPGH7C", "sTqWu8da", "x6CTSvQU"], "title": "admenH0z"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rtPmhHOY' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '8frjYJyP' \
    --action 'CREATE' \
    --itemSku 'JqagYXsA' \
    --itemType 'APP' \
    --limit '10' \
    --offset '30' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'tutl41KE' \
    --updatedAtStart 'J94knkjI' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Z4tfl6br' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'j9wOd81H' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'j2ePA46c' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'YFQNhCgr' \
    --action 'CREATE' \
    --itemSku 'yiX0OR95' \
    --itemType 'LOOTBOX' \
    --type 'SECTION' \
    --updatedAtEnd 'fHL6sjci' \
    --updatedAtStart '67NUebu8' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'CfWFs4gt' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '3r69gAyJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'kTW9xSIk' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'eqP2xg6G' \
    --namespace $AB_NAMESPACE \
    --storeId 't5eex04d' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GQkeRX6A' \
    --targetStoreId 'rTF5Ff0V' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'VXDtkG43' \
    --limit '66' \
    --offset '2' \
    --sku '9Q0r8JJc' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'jJW8Md1f' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dFYXLIR1' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '9j1K6hPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'lNNBuLIL' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VK4FqO9W"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'kvL7uwbh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'wQuXmPcR' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 40, "orderNo": "tXyChuSO"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ikR064sT' \
    --body '{"achievements": [{"id": "EzRpLMy0", "value": 93}, {"id": "vCW75a1v", "value": 65}, {"id": "vOqORf7e", "value": 72}], "steamUserId": "D5PmfjCa"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NurvobUQ' \
    --xboxUserId '2FITKnju' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ooPHIdN4' \
    --body '{"achievements": [{"id": "rMMMYglz", "value": 50}, {"id": "Iptef0SA", "value": 83}, {"id": "UHumcMQU", "value": 9}], "serviceConfigId": "4dqmgmsP", "titleId": "NOa9fdy2", "xboxUserId": "OmrOK81O"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'EjcGeOqr' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fq4XqdaP' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'lYIELPDD' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'rhzhwljM' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'xGoAvmYh' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'NmQpp254' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'PoInZjjJ' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'gwfN0SZ6' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'FAwEGd1f' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'w0GYbVAS' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'WVkpTpAm' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'EvvyMpq5' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'ik7CiLu5' \
    --features '["f4XKFM4n", "DoEubMZh", "gyDR40bS"]' \
    --itemId '["9d3Cm8Ja", "C4m1h7W0", "wJKMBKhU"]' \
    --limit '61' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'qFef8HIZ' \
    --body '[{"endDate": "1999-11-20T00:00:00Z", "grantedCode": "XOgDP6Pz", "itemId": "wPc6w29m", "itemNamespace": "g9LgSVgJ", "language": "btU_Mf", "quantity": 43, "region": "CuLmf6eO", "source": "PROMOTION", "startDate": "1984-08-24T00:00:00Z", "storeId": "QgrxcuAZ"}, {"endDate": "1973-07-23T00:00:00Z", "grantedCode": "Bvr3As95", "itemId": "4KuAzIjC", "itemNamespace": "z3IZCE2g", "language": "WYOn-NY", "quantity": 43, "region": "Q01V3QX3", "source": "ACHIEVEMENT", "startDate": "1995-03-06T00:00:00Z", "storeId": "MYfNklEl"}, {"endDate": "1990-11-17T00:00:00Z", "grantedCode": "XvDyoHo8", "itemId": "8eqpfkGw", "itemNamespace": "0CgeKzWz", "language": "MIya", "quantity": 82, "region": "1CwhzAuO", "source": "REFERRAL_BONUS", "startDate": "1996-07-23T00:00:00Z", "storeId": "JNNl4lKf"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'N3Mj6NUY' \
    --activeOnly 'true' \
    --appId 'Fi5yOdmT' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'V86MoGfb' \
    --activeOnly 'false' \
    --limit '53' \
    --offset '43' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3oxt6OuF' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '1xIfXjzA' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cGJ5R1cL' \
    --ids '["GOBLPPc1", "1B31QRHL", "u18TNMTq"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'NbY96dKO' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'WWnb3qkb' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YrRytjZ3' \
    --appIds '["0wMXT6qa", "K2RVF32H", "4fHRGZP4"]' \
    --itemIds '["BzMGWOzC", "EFv4pett", "1wVZLQaq"]' \
    --skus '["a7vzJQyV", "76vbKeZD", "9T0NicGr"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MdUsnfpP' \
    --itemIds '["NvBtI9oi", "lNCoidDE", "ReYg3Cwa"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Cp0E1QZ8' \
    --appId 'uya6QQIL' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wlfeyPoD' \
    --entitlementClazz 'APP' \
    --itemId 'l7433z7P' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'xIYrby38' \
    --ids '["J8fmClFI", "ZLbQYCKX", "blfCGKIL"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '87M6hAhz' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'J59xi91W' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3uvNIA8Y' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WDp0IzXs' \
    --entitlementIds 'Z8ItT7te' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'LZwMBn3w' \
    --namespace $AB_NAMESPACE \
    --userId 'KrlqREY3' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Jl652AbW' \
    --namespace $AB_NAMESPACE \
    --userId 'oxxlud4V' \
    --body '{"endDate": "1982-05-04T00:00:00Z", "nullFieldList": ["Btw82wgB", "jBQ3JrLb", "ik77ekJS"], "startDate": "1983-01-28T00:00:00Z", "status": "CONSUMED", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'gjnl7Buu' \
    --namespace $AB_NAMESPACE \
    --userId 'n99i27EJ' \
    --body '{"options": ["NiBqXO6U", "2zTyDvrA", "g7kCzXnl"], "requestId": "hqgLazAh", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Gxt8JUG1' \
    --namespace $AB_NAMESPACE \
    --userId 'dj5nG9vL' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'dEu65sfG' \
    --namespace $AB_NAMESPACE \
    --userId 'j9y7RGx3' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'XgqmJ678' \
    --namespace $AB_NAMESPACE \
    --userId 'ZX1Z39lf' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'Jup2FAG3' \
    --namespace $AB_NAMESPACE \
    --userId 'WvJVV3Se' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'mCjg6jEw' \
    --namespace $AB_NAMESPACE \
    --userId 'qRcbzaQ3' \
    --body '{"reason": "Fsizc9cf", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'FUOYcvtM' \
    --namespace $AB_NAMESPACE \
    --userId 'SpVMfYI3' \
    --body '{"requestId": "QPib6eqe", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'YGH3a4ml' \
    --body '{"duration": 37, "endDate": "1984-10-03T00:00:00Z", "itemId": "HnU3GAbJ", "itemSku": "j4kA57kf", "language": "iaSJt4TD", "order": {"currency": {"currencyCode": "QMDrjqCE", "currencySymbol": "zltN8Seb", "currencyType": "REAL", "decimals": 63, "namespace": "OjdE1NO3"}, "ext": {"l6ykYlRC": {}, "Uu9fLzx9": {}, "mXByQ13g": {}}, "free": true}, "orderNo": "7e0cdtNL", "origin": "Nintendo", "quantity": 61, "region": "AETlyMUS", "source": "PROMOTION", "startDate": "1972-06-14T00:00:00Z", "storeId": "Qgh3e8RQ"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'lETlak2O' \
    --body '{"code": "KJedcWs7", "language": "xuN-FIrC", "region": "LTb2NCnP"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '36rQe63W' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "ZU8bDyS3", "namespace": "LLikukqh"}, "item": {"itemId": "PkjyxL8F", "itemSku": "SXXqZrtX", "itemType": "mL95RbTL"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "8QzYhEkD", "namespace": "rXJZULCA"}, "item": {"itemId": "2HlcGvxP", "itemSku": "zvcUB9Z3", "itemType": "QCevc2hl"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "FrC1HbLL", "namespace": "a8RQNPqa"}, "item": {"itemId": "fTJ3FYHD", "itemSku": "B4VdNGym", "itemType": "hil2KQHk"}, "quantity": 80, "type": "ITEM"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xeoCm5d3' \
    --endTime 'ylKRvWs5' \
    --limit '89' \
    --offset '54' \
    --productId 'WGh8KT56' \
    --startTime 'AL2pqMTn' \
    --status 'FAILED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mHMD3jA3' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ukn4h9CK' \
    --endTime 'AxWZ9u8h' \
    --limit '65' \
    --offset '36' \
    --startTime 'JWCH5Jk4' \
    --status 'PENDING' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'r9AYroEy' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "XW-BT", "productId": "fOnXaI2I", "region": "gmSrR1l6", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tz92BudD' \
    --itemId 'ncX1yIEc' \
    --limit '89' \
    --offset '90' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FaWQcUpZ' \
    --body '{"currencyCode": "1DfgrHQB", "currencyNamespace": "JV4dg6WI", "discountedPrice": 77, "ext": {"SXaom0t3": {}, "UvoBTIQD": {}, "w20XVj5l": {}}, "itemId": "rFMr64x1", "language": "vHHNPqSZ", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 8, "quantity": 66, "region": "VLT1YDOn", "returnUrl": "zS47SdFC", "sandbox": true, "sectionId": "161a0XpK"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'dDQr5oH8' \
    --itemId 'tXEiayj4' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'S3yWaNWV' \
    --userId 'Zf9zBWHX' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'zP0HUNrc' \
    --userId 'eAaAQJCU' \
    --body '{"status": "REFUND_FAILED", "statusReason": "2YOV9MqB"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YPgO6mN8' \
    --userId 'bb3Aoep7' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'Vk98oOPj' \
    --userId 'FUpnPvTS' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'hIJghVJA' \
    --userId 'tj2fE9SN' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'zUnsqAdJ' \
    --userId 'EfGsZsXE' \
    --body '{"additionalData": {"cardSummary": "niTrDjlb"}, "authorisedTime": "1994-10-04T00:00:00Z", "chargebackReversedTime": "1973-03-02T00:00:00Z", "chargebackTime": "1980-09-02T00:00:00Z", "chargedTime": "1975-10-12T00:00:00Z", "createdTime": "1986-01-13T00:00:00Z", "currency": {"currencyCode": "S2TmJwbZ", "currencySymbol": "0xR1edR7", "currencyType": "VIRTUAL", "decimals": 62, "namespace": "MhUlDtkj"}, "customParameters": {"rDMgTzhA": {}, "MqFmhUE3": {}, "xZ40Qu9I": {}}, "extOrderNo": "1tBexlMF", "extTxId": "M3zGQ9Qx", "extUserId": "HE86I6pE", "issuedAt": "1983-06-15T00:00:00Z", "metadata": {"twuZ3BjK": "wqU151pD", "JQ1cXsrO": "UZTfnvGK", "htwLqiZG": "4t0zJi9b"}, "namespace": "ArMlLV2g", "nonceStr": "svXiwTP9", "paymentMethod": "Zvgi2Qin", "paymentMethodFee": 52, "paymentOrderNo": "6ZPzGuKU", "paymentProvider": "CHECKOUT", "paymentProviderFee": 28, "paymentStationUrl": "qyx8JluQ", "price": 13, "refundedTime": "1995-04-27T00:00:00Z", "salesTax": 21, "sandbox": false, "sku": "pStu8yrb", "status": "AUTHORISE_FAILED", "statusReason": "GYDpFlb7", "subscriptionId": "FNwM3KtP", "subtotalPrice": 92, "targetNamespace": "ThPweYsb", "targetUserId": "gxm0QTeS", "tax": 31, "totalPrice": 16, "totalTax": 81, "txEndTime": "1988-07-19T00:00:00Z", "type": "unDoerl5", "userId": "KaQCJorb", "vat": 38}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'riImpGhX' \
    --userId '79v8PaGq' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5vkfYfGV' \
    --body '{"currencyCode": "xEG996W9", "currencyNamespace": "QBBss2et", "customParameters": {"Rc5soT3D": {}, "MLY1vdtj": {}, "W1x3Fz7q": {}}, "description": "lVFPdLxm", "extOrderNo": "ek0nifg9", "extUserId": "vJEyJTst", "itemType": "LOOTBOX", "language": "oj_GhlB", "metadata": {"git9G5hS": "rxU8QAQS", "5wAgyLds": "MGd1XAW5", "bPY4Op1v": "nGKebfGJ"}, "notifyUrl": "fx5FGytf", "omitNotification": true, "platform": "AYvz5zKF", "price": 90, "recurringPaymentOrderNo": "Rsp0Hfus", "region": "K5ZBBl9o", "returnUrl": "HuYUetLD", "sandbox": false, "sku": "1ZE37a4u", "subscriptionId": "fy2DddPA", "title": "9Z8GLhPs"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eXfRYNRZ' \
    --userId '7jHNvjFO' \
    --body '{"description": "FZMYuALC"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'pLtmQ42g' \
    --body '{"code": "PPWs43h5", "orderNo": "ZmdOhqKj"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'DxwyzQE9' \
    --body '{"meta": {"q667LNA8": {}, "rmmIZFa8": {}, "XsldV1mv": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "enLb0l4i", "namespace": "N1WiAp2y"}, "entitlement": {"entitlementId": "PvN4OgVK"}, "item": {"itemIdentity": "GvwMI8HX", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 48, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "vuOfCf37", "namespace": "QsvbFpQZ"}, "entitlement": {"entitlementId": "SCZkmZ7g"}, "item": {"itemIdentity": "uYH8Z0wN", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 47, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "LHd1H9jX", "namespace": "4kxWumv8"}, "entitlement": {"entitlementId": "rd6AiRKn"}, "item": {"itemIdentity": "WNuRfGlJ", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 33, "type": "ITEM"}], "source": "DLC", "transactionId": "sdPnaDzt"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'hkHAsKzV' \
    --chargeStatus 'NEVER' \
    --itemId '551tFCw7' \
    --limit '64' \
    --offset '9' \
    --sku 'aRSwCRjy' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserSubscriptions' test.out

#- 245 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'K6vnZ5QG' \
    --excludeSystem 'true' \
    --limit '79' \
    --offset '82' \
    --subscriptionId 'KWt2Wl4C' \
    > test.out 2>&1
eval_tap $? 245 'GetUserSubscriptionActivities' test.out

#- 246 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'J0b8gaYd' \
    --body '{"grantDays": 14, "itemId": "ExwfaMHm", "language": "PhUUVLNE", "reason": "1n5SKuqB", "region": "5NxCcgQp", "source": "k0eODS4j"}' \
    > test.out 2>&1
eval_tap $? 246 'PlatformSubscribeSubscription' test.out

#- 247 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zV5wR0K2' \
    --itemId 'Xa7m3Cpz' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 248 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3x7Mlf5N' \
    --userId 'kaINRRNs' \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscription' test.out

#- 249 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YOpDA36E' \
    --userId 'dDFPcMIr' \
    > test.out 2>&1
eval_tap $? 249 'DeleteUserSubscription' test.out

#- 250 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eDOpNYsF' \
    --userId 'UM9103zu' \
    --force 'false' \
    --body '{"immediate": true, "reason": "OGOaksa4"}' \
    > test.out 2>&1
eval_tap $? 250 'CancelSubscription' test.out

#- 251 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uzfgucYZ' \
    --userId 'CPgVrXIw' \
    --body '{"grantDays": 94, "reason": "23yWJKf2"}' \
    > test.out 2>&1
eval_tap $? 251 'GrantDaysToSubscription' test.out

#- 252 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'AP6c1raY' \
    --userId 'QR77bUEV' \
    --excludeFree 'true' \
    --limit '49' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 252 'GetUserSubscriptionBillingHistories' test.out

#- 253 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cJHpD5U7' \
    --userId 'NN9HHuiN' \
    --body '{"additionalData": {"cardSummary": "JPMhZK5Q"}, "authorisedTime": "1986-12-03T00:00:00Z", "chargebackReversedTime": "1971-11-10T00:00:00Z", "chargebackTime": "1989-01-09T00:00:00Z", "chargedTime": "1985-01-22T00:00:00Z", "createdTime": "1989-11-10T00:00:00Z", "currency": {"currencyCode": "J7USXMvI", "currencySymbol": "cr5bSZqy", "currencyType": "REAL", "decimals": 60, "namespace": "ksunFwfD"}, "customParameters": {"HajYW8Tv": {}, "Ovfn10hT": {}, "TsoYjrYp": {}}, "extOrderNo": "4A9Iyonl", "extTxId": "gcU3AaUK", "extUserId": "WmWqFaNO", "issuedAt": "1990-06-24T00:00:00Z", "metadata": {"9i3rNUbz": "QOsI4z6t", "VXew14Ij": "1GZty7jb", "fDaWf0w7": "Tly1ARAx"}, "namespace": "KlcIU2k8", "nonceStr": "bBOLHQl4", "paymentMethod": "Ra6kovCm", "paymentMethodFee": 23, "paymentOrderNo": "1Nr1F0s8", "paymentProvider": "ALIPAY", "paymentProviderFee": 17, "paymentStationUrl": "A8hN0G6W", "price": 66, "refundedTime": "1981-11-06T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "KOjN8Pfl", "status": "REFUNDED", "statusReason": "rz3qP5EG", "subscriptionId": "V8npoP0W", "subtotalPrice": 41, "targetNamespace": "NYxoGMPq", "targetUserId": "LuzqwWW7", "tax": 48, "totalPrice": 97, "totalTax": 23, "txEndTime": "1975-11-16T00:00:00Z", "type": "6s7RuwGf", "userId": "Oh1RfnM1", "vat": 31}' \
    > test.out 2>&1
eval_tap $? 253 'ProcessUserSubscriptionNotification' test.out

#- 254 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Vf6AKisN' \
    --namespace $AB_NAMESPACE \
    --userId 'gRhClEj8' \
    --body '{"count": 42, "orderNo": "BafrYK8C"}' \
    > test.out 2>&1
eval_tap $? 254 'AcquireUserTicket' test.out

#- 255 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'QOF5fEMr' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserCurrencyWallets' test.out

#- 256 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'MX79pegs' \
    --namespace $AB_NAMESPACE \
    --userId '1euow9IA' \
    --body '{"allowOverdraft": true, "amount": 78, "balanceOrigin": "Twitch", "reason": "s9uHnyuo"}' \
    > test.out 2>&1
eval_tap $? 256 'DebitUserWalletByCurrencyCode' test.out

#- 257 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'W8t55EeV' \
    --namespace $AB_NAMESPACE \
    --userId 's8itqNdk' \
    --limit '60' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 257 'ListUserCurrencyTransactions' test.out

#- 258 CheckWallet
eval_tap 0 258 'CheckWallet # SKIP deprecated' test.out

#- 259 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'vXzANhLP' \
    --namespace $AB_NAMESPACE \
    --userId '1Hn8W7sF' \
    --body '{"amount": 82, "expireAt": "1986-03-24T00:00:00Z", "origin": "Steam", "reason": "JuSCnUUg", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 259 'CreditUserWallet' test.out

#- 260 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'dAONZoUn' \
    --namespace $AB_NAMESPACE \
    --userId 'dWF81lbk' \
    --body '{"amount": 52, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 260 'PayWithUserWallet' test.out

#- 261 GetUserWallet
eval_tap 0 261 'GetUserWallet # SKIP deprecated' test.out

#- 262 DebitUserWallet
eval_tap 0 262 'DebitUserWallet # SKIP deprecated' test.out

#- 263 DisableUserWallet
eval_tap 0 263 'DisableUserWallet # SKIP deprecated' test.out

#- 264 EnableUserWallet
eval_tap 0 264 'EnableUserWallet # SKIP deprecated' test.out

#- 265 ListUserWalletTransactions
eval_tap 0 265 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 266 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '7NjVUrpl' \
    > test.out 2>&1
eval_tap $? 266 'ListViews' test.out

#- 267 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'PW7bOtDh' \
    --body '{"displayOrder": 49, "localizations": {"fXFjSfEm": {"description": "iptMHCSG", "localExt": {"ztjl1Ulf": {}, "LkMFINMD": {}, "MdhPE0FN": {}}, "longDescription": "GttfKkp1", "title": "Vo6o4gXq"}, "PZV2Ia4D": {"description": "396S8ypO", "localExt": {"Cc2reYtP": {}, "YoQdbi7G": {}, "Hmq20BmL": {}}, "longDescription": "BCTUBgSv", "title": "7JPbiU1d"}, "qUBvV8A8": {"description": "T62yYncw", "localExt": {"t9EPFiAM": {}, "ICHtWqAf": {}, "CadlbiLQ": {}}, "longDescription": "vqVzlfVP", "title": "TsE6Pil5"}}, "name": "Eou3rWvk"}' \
    > test.out 2>&1
eval_tap $? 267 'CreateView' test.out

#- 268 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'pyXrfUZG' \
    --storeId 'mgDIAbZp' \
    > test.out 2>&1
eval_tap $? 268 'GetView' test.out

#- 269 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'B9PzWQ1s' \
    --storeId 'KNUl1107' \
    --body '{"displayOrder": 88, "localizations": {"UI4ASM0a": {"description": "8fnNgtfo", "localExt": {"p5t2mWsr": {}, "mMTzs06X": {}, "Pz5OsVjW": {}}, "longDescription": "zNGYYb5K", "title": "fB2K8oAu"}, "EzX2dOHD": {"description": "1Oz3uhA5", "localExt": {"asN2QQWp": {}, "TgEUt2uc": {}, "7oUDmp0x": {}}, "longDescription": "LuPiUFM7", "title": "sNS2n4qU"}, "Af2m7GTl": {"description": "wqrntnwF", "localExt": {"eQk4wmTX": {}, "84CLaCcy": {}, "XAMVowZ7": {}}, "longDescription": "5XPlfvLl", "title": "vJaVRdjf"}}, "name": "Kpu7CBbt"}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateView' test.out

#- 270 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'hHydnTaf' \
    --storeId 'aSaKS2zf' \
    > test.out 2>&1
eval_tap $? 270 'DeleteView' test.out

#- 271 QueryWallets
eval_tap 0 271 'QueryWallets # SKIP deprecated' test.out

#- 272 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 86, "expireAt": "1980-01-04T00:00:00Z", "origin": "Steam", "reason": "0vmfVl6X", "source": "IAP"}, "currencyCode": "E2o2B9Jj", "userIds": ["hB2Dv9Vh", "f3St8Nyv", "VNkudpyv"]}, {"creditRequest": {"amount": 5, "expireAt": "1987-11-16T00:00:00Z", "origin": "GooglePlay", "reason": "fRCthahH", "source": "OTHER"}, "currencyCode": "hKidqyyD", "userIds": ["QoKGoY4w", "4OYD4U4X", "6GRgK4VA"]}, {"creditRequest": {"amount": 35, "expireAt": "1985-04-18T00:00:00Z", "origin": "Other", "reason": "01AWjpkq", "source": "OTHER"}, "currencyCode": "jFnVQbpM", "userIds": ["P8X0LGIL", "F8UQpjsd", "2yt9CG5V"]}]' \
    > test.out 2>&1
eval_tap $? 272 'BulkCredit' test.out

#- 273 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ymitZ8l5", "request": {"allowOverdraft": true, "amount": 68, "balanceOrigin": "IOS", "reason": "rxIuXkYs"}, "userIds": ["RfveuQVY", "q8H4EIVw", "Uf0PkCkP"]}, {"currencyCode": "GDWK3XbN", "request": {"allowOverdraft": false, "amount": 58, "balanceOrigin": "System", "reason": "HlOtxFSr"}, "userIds": ["iL5GtxbB", "Yg8CI5TA", "InmyHvhO"]}, {"currencyCode": "fhmr5Q77", "request": {"allowOverdraft": true, "amount": 7, "balanceOrigin": "Other", "reason": "nzyQDhNM"}, "userIds": ["m2QebjAF", "GSzT5Cny", "gOXNm0Gh"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkDebit' test.out

#- 274 GetWallet
eval_tap 0 274 'GetWallet # SKIP deprecated' test.out

#- 275 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'JTRp802f' \
    --end '12llHCjA' \
    --start 'PtOKFrVw' \
    > test.out 2>&1
eval_tap $? 275 'SyncOrders' test.out

#- 276 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["QbtLx8Gl", "kbGlZKXB", "yVTd6dED"], "apiKey": "aSVdBmpQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["JrGWirZ5", "uOZiMyMV", "PXmn4Cuf"], "clientKey": "TFNjWoYo", "dropInSettings": "yosKeNc6", "liveEndpointUrlPrefix": "bTf49fs4", "merchantAccount": "gJGdtGXy", "notificationHmacKey": "WxTUEKJ6", "notificationPassword": "Cn4V0vjr", "notificationUsername": "JAqkIjfw", "returnUrl": "p4EjN24b", "settings": "VIbDZpvd"}' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfig' test.out

#- 277 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "GWLsEIYv", "privateKey": "WFNQmSKm", "publicKey": "ACsajMnO", "returnUrl": "9jxb2K7Y"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAliPayConfig' test.out

#- 278 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "ALnQAao8", "secretKey": "gP85KUBS"}' \
    > test.out 2>&1
eval_tap $? 278 'TestCheckoutConfig' test.out

#- 279 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'kof4vIEF' \
    --region 'kqy9F3d5' \
    > test.out 2>&1
eval_tap $? 279 'DebugMatchedPaymentMerchantConfig' test.out

#- 280 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "n0Pejaf8", "clientSecret": "edobFhy2", "returnUrl": "Fiv8zrZu", "webHookId": "9ennBDgI"}' \
    > test.out 2>&1
eval_tap $? 280 'TestPayPalConfig' test.out

#- 281 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["ITMMSnyh", "aHaddHcq", "u40bYal6"], "publishableKey": "fjAj7FTm", "secretKey": "I116Bk0R", "webhookSecret": "xF1eRYwM"}' \
    > test.out 2>&1
eval_tap $? 281 'TestStripeConfig' test.out

#- 282 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "9kPgkFYx", "key": "F6BRQuk8", "mchid": "5xrGXpun", "returnUrl": "DtBmvdQn"}' \
    > test.out 2>&1
eval_tap $? 282 'TestWxPayConfig' test.out

#- 283 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "iREazsR0", "flowCompletionUrl": "WyIFPnHC", "merchantId": 81, "projectId": 22, "projectSecretKey": "9unvyy9r"}' \
    > test.out 2>&1
eval_tap $? 283 'TestXsollaConfig' test.out

#- 284 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'bCjj9Iqy' \
    > test.out 2>&1
eval_tap $? 284 'GetPaymentMerchantConfig' test.out

#- 285 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'eNSKBHP2' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["LE1hIF97", "7jo1A11g", "vJvi3BNB"], "apiKey": "1lWKPZ0P", "authoriseAsCapture": true, "blockedPaymentMethods": ["2FMK2jQK", "Xourj5jw", "UokQxLgC"], "clientKey": "LwC0khJ3", "dropInSettings": "AHGqsmwV", "liveEndpointUrlPrefix": "PRFSgPxx", "merchantAccount": "2YvxpvwX", "notificationHmacKey": "b1beSd7o", "notificationPassword": "DCQp7Ezz", "notificationUsername": "iSKjPUY0", "returnUrl": "YJc7PGhd", "settings": "2KzUkhei"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateAdyenConfig' test.out

#- 286 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'iJPprHjB' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 286 'TestAdyenConfigById' test.out

#- 287 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'sudNXY0q' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "XqA6dHNB", "privateKey": "HfjLyPcx", "publicKey": "LCNbFxqv", "returnUrl": "XGawWTo8"}' \
    > test.out 2>&1
eval_tap $? 287 'UpdateAliPayConfig' test.out

#- 288 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ismDeItq' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 288 'TestAliPayConfigById' test.out

#- 289 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'A5jcr0Dx' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "Uatj6AfA", "secretKey": "SI4x42ot"}' \
    > test.out 2>&1
eval_tap $? 289 'UpdateCheckoutConfig' test.out

#- 290 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'EQHzdEJx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 290 'TestCheckoutConfigById' test.out

#- 291 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'aRD530mZ' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "4yQNpe6O", "clientSecret": "0hKhJ71h", "returnUrl": "0zRluQaE", "webHookId": "tlUSUNxE"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdatePayPalConfig' test.out

#- 292 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '5f8VWIjQ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 292 'TestPayPalConfigById' test.out

#- 293 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'ePBi2n4K' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["PQnRbnRz", "8AvWEVYW", "v5WasIZl"], "publishableKey": "mNUNXJBe", "secretKey": "eu4L39EL", "webhookSecret": "6wyCw1JE"}' \
    > test.out 2>&1
eval_tap $? 293 'UpdateStripeConfig' test.out

#- 294 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'OkpWaDsn' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 294 'TestStripeConfigById' test.out

#- 295 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'i9hhWkbl' \
    --validate 'true' \
    --body '{"appId": "Au4K1aT8", "key": "fI44jUst", "mchid": "VwSfBhJR", "returnUrl": "9oBSSUpY"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateWxPayConfig' test.out

#- 296 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ZsRauWNe' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfigCert' test.out

#- 297 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ZCnPZvZD' \
    > test.out 2>&1
eval_tap $? 297 'TestWxPayConfigById' test.out

#- 298 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '1BAnFa50' \
    --validate 'true' \
    --body '{"apiKey": "TH4hPUTY", "flowCompletionUrl": "hzFLwWvR", "merchantId": 16, "projectId": 46, "projectSecretKey": "sHo8a2H6"}' \
    > test.out 2>&1
eval_tap $? 298 'UpdateXsollaConfig' test.out

#- 299 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'zNXSU98q' \
    > test.out 2>&1
eval_tap $? 299 'TestXsollaConfigById' test.out

#- 300 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'BEEvIWEU' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 300 'UpdateXsollaUIConfig' test.out

#- 301 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '99' \
    --namespace 'FfTNN9wt' \
    --offset '70' \
    --region 'HuoDxRCj' \
    > test.out 2>&1
eval_tap $? 301 'QueryPaymentProviderConfig' test.out

#- 302 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "PjccEdJM", "region": "6lib4Vfz", "sandboxTaxJarApiToken": "0P2Cu4Te", "specials": ["WXPAY", "ALIPAY", "WALLET"], "taxJarApiToken": "cpA9qM1q", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 302 'CreatePaymentProviderConfig' test.out

#- 303 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 303 'GetAggregatePaymentProviders' test.out

#- 304 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '80zjWbmd' \
    --region 'sqK4BsfS' \
    > test.out 2>&1
eval_tap $? 304 'DebugMatchedPaymentProviderConfig' test.out

#- 305 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 305 'GetSpecialPaymentProviders' test.out

#- 306 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'QcpKYIym' \
    --body '{"aggregate": "XSOLLA", "namespace": "alsMdbOE", "region": "L1reidQ7", "sandboxTaxJarApiToken": "sJ1arUNZ", "specials": ["WXPAY", "XSOLLA", "WXPAY"], "taxJarApiToken": "80QXYues", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 306 'UpdatePaymentProviderConfig' test.out

#- 307 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'TTBVtFfV' \
    > test.out 2>&1
eval_tap $? 307 'DeletePaymentProviderConfig' test.out

#- 308 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 308 'GetPaymentTaxConfig' test.out

#- 309 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "nbFcx2TM", "taxJarApiToken": "KFkAosml", "taxJarEnabled": false, "taxJarProductCodesMapping": {"dA3ltvxE": "brwsIilr", "z5iqPFFU": "eyhuDcLD", "1d3tovIH": "hKMSF5zx"}}' \
    > test.out 2>&1
eval_tap $? 309 'UpdatePaymentTaxConfig' test.out

#- 310 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'yIH30Qsy' \
    --end 'YHamMkyB' \
    --start 'V5TYAPGD' \
    > test.out 2>&1
eval_tap $? 310 'SyncPaymentOrders' test.out

#- 311 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'Ni7cJ5io' \
    --storeId 'M0fVEAyd' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRootCategories' test.out

#- 312 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '02oN11fj' \
    --storeId 'saFKwSb9' \
    > test.out 2>&1
eval_tap $? 312 'DownloadCategories' test.out

#- 313 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '1HXvIp0p' \
    --namespace $AB_NAMESPACE \
    --language 'TU4cNmBo' \
    --storeId 'TDtcNQia' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetCategory' test.out

#- 314 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '6huGUjU3' \
    --namespace $AB_NAMESPACE \
    --language 'Qgbw7Sl1' \
    --storeId 'b1CxwPKK' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetChildCategories' test.out

#- 315 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'unBrYnZ9' \
    --namespace $AB_NAMESPACE \
    --language 's2r4UxWC' \
    --storeId 'Cr9KblPE' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetDescendantCategories' test.out

#- 316 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 316 'PublicListCurrencies' test.out

#- 317 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 317 'GetIAPItemMapping' test.out

#- 318 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'me6Uh4U5' \
    --region 's4f0OZQO' \
    --storeId '6hm8mvPu' \
    --appId 'bmv0r3qw' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItemByAppId' test.out

#- 319 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'C5DcJ1a4' \
    --categoryPath 'KzQN0y9y' \
    --features 'zDF1xDBT' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'IQ5mXBHM' \
    --limit '80' \
    --offset '79' \
    --region 'bKB1Sb0n' \
    --sortBy '["createdAt:desc", "updatedAt", "displayOrder:asc"]' \
    --storeId 's6Lqtc6f' \
    --tags 'X5vUWBMJ' \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryItems' test.out

#- 320 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'reWomJPs' \
    --region 'jjnOuM4W' \
    --storeId '6M3GbaAe' \
    --sku 'Ywig7fzJ' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItemBySku' test.out

#- 321 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'Y1m7sgjp' \
    --region 'fzZ4EqN1' \
    --storeId '4tjO4Etc' \
    --itemIds 'UHpmSnJv' \
    > test.out 2>&1
eval_tap $? 321 'PublicBulkGetItems' test.out

#- 322 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["EFmxLc7R", "yfQqLlMY", "DqW6C5ao"]}' \
    > test.out 2>&1
eval_tap $? 322 'PublicValidateItemPurchaseCondition' test.out

#- 323 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'LOOTBOX' \
    --limit '48' \
    --offset '73' \
    --region 'ff7u5fkr' \
    --storeId '69KCLDxQ' \
    --keyword '7xTDoiME' \
    --language 'f8f4Bs57' \
    > test.out 2>&1
eval_tap $? 323 'PublicSearchItems' test.out

#- 324 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'rDBEL1sp' \
    --namespace $AB_NAMESPACE \
    --language 'O6Lzid3t' \
    --region '7dBRT9UX' \
    --storeId 'jDhzOO7P' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetApp' test.out

#- 325 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'Tqpp65Ey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'PublicGetItemDynamicData' test.out

#- 326 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'TBjUWPVH' \
    --namespace $AB_NAMESPACE \
    --language 'NQyQFtNy' \
    --populateBundle 'true' \
    --region 'MaLBsUT0' \
    --storeId 'SNAmvqYb' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItem' test.out

#- 327 GetPaymentCustomization
eval_tap 0 327 'GetPaymentCustomization # SKIP deprecated' test.out

#- 328 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "gpogfkfp", "paymentProvider": "ADYEN", "returnUrl": "xw6AAKpj", "ui": "fbKZZQeK", "zipCode": "9lvLF6RW"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentUrl' test.out

#- 329 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uzKR3CPN' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentMethods' test.out

#- 330 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NDidM67j' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUnpaidPaymentOrder' test.out

#- 331 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lRUfxJFQ' \
    --paymentProvider 'ADYEN' \
    --zipCode 'D1ONUydq' \
    --body '{"token": "y2wKdBnV"}' \
    > test.out 2>&1
eval_tap $? 331 'Pay' test.out

#- 332 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'x8902yjR' \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckPaymentOrderPaidStatus' test.out

#- 333 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'dI7E6pPM' \
    > test.out 2>&1
eval_tap $? 333 'GetPaymentPublicConfig' test.out

#- 334 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'uRhommDI' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetQRCode' test.out

#- 335 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'utvug1r6' \
    --foreinginvoice 'ilLYlzgE' \
    --invoiceId 'JMB07wD4' \
    --payload 'Ht6ESQZv' \
    --redirectResult 'ShXEvGKi' \
    --resultCode 'psOqbVBu' \
    --sessionId 'uJY61dxk' \
    --status 'IxWrwsu8' \
    --token 'JMteT4cK' \
    --type 'E9JPfQX6' \
    --userId 'wIdXXylY' \
    --orderNo 'MNZu1gfm' \
    --paymentOrderNo 'gsc9BPZw' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'IGaEh1qG' \
    > test.out 2>&1
eval_tap $? 335 'PublicNormalizePaymentReturnUrl' test.out

#- 336 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'hYzJdE4k' \
    --paymentOrderNo 'UGpW4ndT' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 336 'GetPaymentTaxValue' test.out

#- 337 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'MQk3G9f1' \
    > test.out 2>&1
eval_tap $? 337 'GetRewardByCode' test.out

#- 338 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '0GjR8xNw' \
    --limit '54' \
    --offset '86' \
    --sortBy '["rewardCode:desc", "namespace", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 338 'QueryRewards1' test.out

#- 339 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'myqk5Ldc' \
    > test.out 2>&1
eval_tap $? 339 'GetReward1' test.out

#- 340 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicListStores' test.out

#- 341 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["fvpTL2cU", "7Kr5pCs7", "BAZMYVea"]' \
    --itemIds '["ZM59VJp1", "pqlJFqEe", "6WuPK8HZ"]' \
    --skus '["Op6993wH", "t2r1tbjb", "rl0zGRsn"]' \
    > test.out 2>&1
eval_tap $? 341 'PublicExistsAnyMyActiveEntitlement' test.out

#- 342 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'XjfnwuXI' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 343 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'xeQH3wnr' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 344 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'ltKTAFGv' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 345 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["pT14Awna", "8I0fQhDj", "jgbVPGhw"]' \
    --itemIds '["R5CywLIY", "QKGvAYel", "5gMh3WuL"]' \
    --skus '["tdZUre5n", "ahRENdyg", "E0qw9vNY"]' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetEntitlementOwnershipToken' test.out

#- 346 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "JtNZDKx1", "language": "ZBV", "region": "AExSfWXC"}' \
    > test.out 2>&1
eval_tap $? 346 'SyncTwitchDropsEntitlement' test.out

#- 347 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'KZAYCaZu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyWallet' test.out

#- 348 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'wYVEVqRg' \
    --body '{"epicGamesJwtToken": "OqUJeBiW"}' \
    > test.out 2>&1
eval_tap $? 348 'SyncEpicGameDLC' test.out

#- 349 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '8Hx3myrw' \
    --body '{"serviceLabel": 13}' \
    > test.out 2>&1
eval_tap $? 349 'PublicSyncPsnDlcInventory' test.out

#- 350 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'LeQd78UY' \
    --body '{"serviceLabels": [97, 5, 7]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 351 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fV0z8tfq' \
    --body '{"appId": "Gp3PMt5l", "steamId": "Hpne7bbt"}' \
    > test.out 2>&1
eval_tap $? 351 'SyncSteamDLC' test.out

#- 352 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xXxCEhmk' \
    --body '{"xstsToken": "xxdDi8FD"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncXboxDLC' test.out

#- 353 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'mOfEGnsJ' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'OtpfHc1J' \
    --features '["95WVd54R", "tsH8qWsQ", "koA6YM9P"]' \
    --itemId '["DKBeAnWN", "Gf2hJByp", "chfQ5vOy"]' \
    --limit '37' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserEntitlements' test.out

#- 354 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TXeLkFSk' \
    --appId 'kPc4cc8n' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserAppEntitlementByAppId' test.out

#- 355 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ymtfaUoN' \
    --limit '21' \
    --offset '84' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryUserEntitlementsByAppType' test.out

#- 356 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 's1KFmb6W' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'BduJspBs' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementByItemId' test.out

#- 357 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'R6GC6vz4' \
    --entitlementClazz 'CODE' \
    --sku 'ENat7m02' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementBySku' test.out

#- 358 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'amZ9Eyr7' \
    --appIds '["9BdMVAx9", "ucZUHTyK", "vme1tvHE"]' \
    --itemIds '["hZ8gadQy", "DL7Q8D1Q", "mNaymNpX"]' \
    --skus '["hvrdoaxb", "cBIWaHNZ", "FThMxQwG"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyUserActiveEntitlement' test.out

#- 359 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'aqh1KX5p' \
    --appId 'LKu1fpxN' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jDsn57HI' \
    --entitlementClazz 'CODE' \
    --itemId 'VSW7ctLn' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9NhXmiZL' \
    --ids '["pWm0mVJV", "FGvU4ZZE", "bgN6CMJK"]' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 362 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RJ0LBw8N' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'FzidOt4y' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 363 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'XwH3iYny' \
    --namespace $AB_NAMESPACE \
    --userId '8Y0lvJtF' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlement' test.out

#- 364 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'uJ3nCKU9' \
    --namespace $AB_NAMESPACE \
    --userId 'jYJcJVa8' \
    --body '{"options": ["nT4Kabsp", "4EfoGFVa", "TITDb2Jh"], "requestId": "4k6laVbh", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 364 'PublicConsumeUserEntitlement' test.out

#- 365 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'aTujdWXe' \
    --namespace $AB_NAMESPACE \
    --userId 'ebFzjdhh' \
    --body '{"requestId": "MCt73Fye", "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 365 'PublicSellUserEntitlement' test.out

#- 366 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Dxiq59Eg' \
    --body '{"code": "wrlxm3Kh", "language": "sJ_kxfS-012", "region": "9W290TEN"}' \
    > test.out 2>&1
eval_tap $? 366 'PublicRedeemCode' test.out

#- 367 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'N0tPsiD4' \
    --body '{"excludeOldTransactions": false, "language": "mbv-yJko_ky", "productId": "4aiseMut", "receiptData": "qehwxeOV", "region": "0Xqz8Z6V", "transactionId": "oTqNIbpq"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicFulfillAppleIAPItem' test.out

#- 368 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '1dOA2b9x' \
    --body '{"epicGamesJwtToken": "poQQhkrU"}' \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGamesInventory' test.out

#- 369 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '9SuRjlj7' \
    --body '{"autoAck": false, "language": "rP", "orderId": "2Ompr5Xy", "packageName": "A66R2v0n", "productId": "932LA6uf", "purchaseTime": 79, "purchaseToken": "2kD7Qh9q", "region": "Cp7BJjqz"}' \
    > test.out 2>&1
eval_tap $? 369 'PublicFulfillGoogleIAPItem' test.out

#- 370 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'ES5NNavW' \
    --body '{"currencyCode": "xLnesiwX", "price": 0.5268951007326746, "productId": "reRI0nS4", "serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 370 'PublicReconcilePlayStationStore' test.out

#- 371 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'vWJ674gn' \
    --body '{"currencyCode": "eIKgWK3f", "price": 0.05994615191492525, "productId": "Vdxmd1rt", "serviceLabels": [43, 52, 77]}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 372 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l3JpkAea' \
    --body '{"appId": "K6vb61bW", "currencyCode": "9NebOufJ", "language": "RFC", "price": 0.5203688843135663, "productId": "F1ke8nMk", "region": "vvcnt9LC", "steamId": "lCFqVV4G"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamInventory' test.out

#- 373 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'XGs0bt2W' \
    --body '{"gameId": "TZ2ams85", "language": "BoK-pV", "region": "nUZZqKi0"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncTwitchDropsEntitlement1' test.out

#- 374 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CCzZ3KX5' \
    --body '{"currencyCode": "zyKb8q1U", "price": 0.7623220150059586, "productId": "Ak5Y6jgY", "xstsToken": "mzTKSi92"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxInventory' test.out

#- 375 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'XiGzMVpX' \
    --itemId 'cpYFiZdI' \
    --limit '33' \
    --offset '43' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserOrders' test.out

#- 376 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'TA5jdJ9d' \
    --body '{"currencyCode": "Wi0E4iDN", "discountedPrice": 72, "ext": {"5XlrJzEj": {}, "eanyBiGU": {}, "wLa3M38B": {}}, "itemId": "0pC3Q1BB", "language": "pC-tDlI", "price": 74, "quantity": 42, "region": "JmJWVQEy", "returnUrl": "0f2vCIoP", "sectionId": "glhqeqJN"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicCreateUserOrder' test.out

#- 377 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HDjO2b4F' \
    --userId 'gx4kfVrF' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserOrder' test.out

#- 378 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lhctMaya' \
    --userId 'jWuXZFRD' \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelUserOrder' test.out

#- 379 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'p14i723y' \
    --userId 'UTdtusQi' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserOrderHistories' test.out

#- 380 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '9pvPmHgo' \
    --userId 'jPG8mi4e' \
    > test.out 2>&1
eval_tap $? 380 'PublicDownloadUserOrderReceipt' test.out

#- 381 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'mohpCMFa' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentAccounts' test.out

#- 382 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Ahue3quC' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'labIIxSk' \
    > test.out 2>&1
eval_tap $? 382 'PublicDeletePaymentAccount' test.out

#- 383 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'DeRvTVTV' \
    --language 'gzTMGCks' \
    --region 'HoUc4u47' \
    --storeId 'oXnNWyJh' \
    --viewId 'IDvLnMgY' \
    > test.out 2>&1
eval_tap $? 383 'PublicListActiveSections' test.out

#- 384 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'vlImyaAV' \
    --chargeStatus 'SETUP' \
    --itemId 'LZHqpfv9' \
    --limit '87' \
    --offset '57' \
    --sku 'SdGbeUp7' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserSubscriptions' test.out

#- 385 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'KPXEuDUt' \
    --body '{"currencyCode": "QmSxjEjY", "itemId": "MvUHjjYA", "language": "oJ", "region": "J6bxMN1R", "returnUrl": "y23jnQnF", "source": "vGBlICfe"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicSubscribeSubscription' test.out

#- 386 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ENH6gNEc' \
    --itemId 'uO8WJNro' \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 387 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7QiNAvkZ' \
    --userId 'HGwzBhUs' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserSubscription' test.out

#- 388 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n2HFTSL9' \
    --userId 'wPlpafjD' \
    > test.out 2>&1
eval_tap $? 388 'PublicChangeSubscriptionBillingAccount' test.out

#- 389 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZXiOBw5C' \
    --userId 'fidMWdwM' \
    --body '{"immediate": true, "reason": "DcdlSx0U"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicCancelSubscription' test.out

#- 390 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GQ4jFNRJ' \
    --userId 'jZZHGlsX' \
    --excludeFree 'true' \
    --limit '25' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserSubscriptionBillingHistories' test.out

#- 391 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'VWoJeYX8' \
    --language 'khf1Pa47' \
    --storeId 'i6Jg2Y7h' \
    > test.out 2>&1
eval_tap $? 391 'PublicListViews' test.out

#- 392 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'FlW2Nx7C' \
    --namespace $AB_NAMESPACE \
    --userId 'LnwVr5x6' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetWallet' test.out

#- 393 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 's3SN5t2X' \
    --namespace $AB_NAMESPACE \
    --userId 'alPMtQlr' \
    --limit '16' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 393 'PublicListUserWalletTransactions' test.out

#- 394 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'O1knPxct' \
    --baseAppId 'pcbhZFpe' \
    --categoryPath 'rKID7sUg' \
    --features 'id1ohwAF' \
    --includeSubCategoryItem 'false' \
    --itemName '7ywRdvxA' \
    --itemStatus 'INACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '36' \
    --offset '29' \
    --region 'IO4XvfwP' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:desc", "name:desc", "name:asc"]' \
    --storeId '2sdtV5kK' \
    --tags 'jV81oBt4' \
    --targetNamespace 'A6hSYHIy' \
    > test.out 2>&1
eval_tap $? 394 'QueryItems1' test.out

#- 395 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'EdsekGEG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 395 'ImportStore1' test.out

#- 396 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '5AHHp7AA' \
    --body '{"itemIds": ["Lla4LnDZ", "OJBnARRX", "r8zBGTpo"]}' \
    > test.out 2>&1
eval_tap $? 396 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE