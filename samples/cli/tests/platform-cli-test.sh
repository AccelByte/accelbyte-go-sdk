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
    --body '{"context": {"item": {"appId": "GvHTQ95B", "appType": "SOFTWARE", "baseAppId": "DNVnWkWK", "boothName": "zNOGae3n", "boundItemIds": ["5tiDMFZC", "NpU0BhKT", "G7aiWvb5"], "categoryPath": "REYiGvkq", "clazz": "RDM5Z0l7", "createdAt": "1994-09-08T00:00:00Z", "description": "3CWMZ3aw", "displayOrder": 0, "entitlementType": "DURABLE", "ext": {"oS8EevmV": {}, "U67OOk5r": {}, "1dVWJPBz": {}}, "features": ["vEvD4jXk", "WBjtz78r", "HHSXV4PO"], "fresh": false, "images": [{"as": "jxpmscfI", "caption": "Zkrw603E", "height": 13, "imageUrl": "TWxdZUyj", "smallImageUrl": "AGOqc2PP", "width": 69}, {"as": "CroVxocn", "caption": "ApKELhVI", "height": 3, "imageUrl": "ie5j8D0d", "smallImageUrl": "ojq2NQrK", "width": 81}, {"as": "8JGhKCoO", "caption": "0IzWEXAu", "height": 34, "imageUrl": "3zhaJnHS", "smallImageUrl": "BqxgvcG1", "width": 72}], "itemId": "NB4NwIW4", "itemIds": ["MjNwuWoL", "i54zXHV8", "5rSBT01L"], "itemQty": {"oTCwCyhJ": 4, "o30bdMnP": 18, "NcUR7HoJ": 32}, "itemType": "SEASON", "language": "zhltKIK0", "listable": true, "localExt": {"lKnIP2uG": {}, "3qLc9DND": {}, "I5IlXLVK": {}}, "longDescription": "PSRtCNe8", "maxCount": 32, "maxCountPerUser": 24, "name": "TatJG22r", "namespace": "g6aigXCg", "optionBoxConfig": {"boxItems": [{"count": 52, "itemId": "oER7nGLJ", "itemSku": "4xXAWFxV"}, {"count": 99, "itemId": "fPWf0qtz", "itemSku": "Fnuzn5cj"}, {"count": 68, "itemId": "UuesyXfa", "itemSku": "7VwPwKmS"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 33, "comparison": "isGreaterThanOrEqual", "name": "vGKD4nAv", "predicateType": "SeasonPassPredicate", "value": "2mZ1TUjX", "values": ["WKKpl1Gh", "UYRpAye8", "HA8o7okC"]}, {"anyOf": 49, "comparison": "excludes", "name": "siqVrec1", "predicateType": "SeasonPassPredicate", "value": "ihcljOOA", "values": ["A4oHJSlI", "pmM9GeJ2", "LGhVh8E0"]}, {"anyOf": 95, "comparison": "isLessThan", "name": "Q3710Zme", "predicateType": "EntitlementPredicate", "value": "3Y60N7Pm", "values": ["ErJKIvtw", "aGaviY3P", "COZsaWOk"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isGreaterThanOrEqual", "name": "ALFeDaah", "predicateType": "SeasonTierPredicate", "value": "EnA47ieX", "values": ["v5BcnEiW", "3AWCgRmv", "ZkPkDuU5"]}, {"anyOf": 90, "comparison": "includes", "name": "blSNVP0h", "predicateType": "SeasonTierPredicate", "value": "gPLQwTbj", "values": ["bBD5rgkQ", "hXik1D2R", "A0qE7kXH"]}, {"anyOf": 54, "comparison": "isNot", "name": "V3kCkm4x", "predicateType": "EntitlementPredicate", "value": "voEnIVFV", "values": ["CZ6TLWeR", "lyUzJyvV", "2PGwzoG5"]}]}, {"operator": "or", "predicates": [{"anyOf": 77, "comparison": "isLessThan", "name": "9PvuZ17J", "predicateType": "EntitlementPredicate", "value": "PQWrdA9d", "values": ["Y45PnAUf", "aEIvWwxQ", "iDuNBSN0"]}, {"anyOf": 31, "comparison": "includes", "name": "OLrOmMfM", "predicateType": "SeasonTierPredicate", "value": "G2jmy1pe", "values": ["XL64yj3j", "M7WL1I2b", "CjYMzpa2"]}, {"anyOf": 35, "comparison": "excludes", "name": "sjOOFLEa", "predicateType": "SeasonTierPredicate", "value": "S5pfq9Te", "values": ["SXczqsJx", "2RfZSl3a", "rPmbDTBG"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 1, "fixedTrialCycles": 34, "graceDays": 51}, "region": "kVMevVJt", "regionData": [{"currencyCode": "89zjxOZt", "currencyNamespace": "afP4za1q", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1999-09-27T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1989-10-18T00:00:00Z", "discountedPrice": 51, "expireAt": "1998-08-07T00:00:00Z", "price": 22, "purchaseAt": "1991-03-15T00:00:00Z", "trialPrice": 34}, {"currencyCode": "TRSJqzOi", "currencyNamespace": "mW4C04to", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1973-09-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1983-07-22T00:00:00Z", "discountedPrice": 51, "expireAt": "1998-01-22T00:00:00Z", "price": 58, "purchaseAt": "1994-04-06T00:00:00Z", "trialPrice": 36}, {"currencyCode": "87nCyB3k", "currencyNamespace": "PFJav5o4", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1972-12-14T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1972-08-06T00:00:00Z", "discountedPrice": 94, "expireAt": "1992-03-07T00:00:00Z", "price": 70, "purchaseAt": "1992-12-27T00:00:00Z", "trialPrice": 69}], "seasonType": "TIER", "sku": "ARvM2SOT", "stackable": true, "status": "INACTIVE", "tags": ["4NC1jfL4", "6RZV7r7B", "g2OqKBbV"], "targetCurrencyCode": "yRyKqPk9", "targetItemId": "tg97iEh4", "targetNamespace": "kogx7CfQ", "thumbnailUrl": "zMC5nqQn", "title": "hNRz571j", "updatedAt": "1987-08-08T00:00:00Z", "useCount": 20}, "namespace": "RyUvJRKB", "order": {"currency": {"currencyCode": "Fe7C7ZF9", "currencySymbol": "AY5Bp04U", "currencyType": "REAL", "decimals": 86, "namespace": "uUSniQvv"}, "ext": {"myXlBSW5": {}, "GreV9Tgz": {}, "QAPKiDgK": {}}, "free": true}, "source": "IAP"}, "script": "muC12uwa", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'jKmLK9rZ' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'ZjGGCnoz' \
    --body '{"grantDays": "cfXexBiq"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'AlDzp9ie' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'EfmWvuFw' \
    --body '{"grantDays": "aRPyNJOO"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'Hj2y4TTm' \
    --offset '2' \
    --tag 'ATIN2vQa' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AmXJvq4h", "items": [{"extraSubscriptionDays": 13, "itemId": "gY5zA1Zg", "itemName": "vPRltLQV", "quantity": 94}, {"extraSubscriptionDays": 38, "itemId": "Q5bZOUcn", "itemName": "mrZWyR0w", "quantity": 21}, {"extraSubscriptionDays": 62, "itemId": "lK2KNEIq", "itemName": "p24zopAF", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 79, "maxRedeemCountPerCode": 54, "maxRedeemCountPerCodePerUser": 23, "maxSaleCount": 47, "name": "eQv8yZas", "redeemEnd": "1981-06-25T00:00:00Z", "redeemStart": "1993-11-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["8isblHpd", "NWbmyQr2", "6wPgX4u6"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '5IRmo5RO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'MehZ8j6D' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IiPog3id", "items": [{"extraSubscriptionDays": 92, "itemId": "ts3xRYoJ", "itemName": "rVfc9tNc", "quantity": 29}, {"extraSubscriptionDays": 20, "itemId": "MmX2KUW7", "itemName": "3SfDkpDY", "quantity": 99}, {"extraSubscriptionDays": 67, "itemId": "Q7Z3d9EQ", "itemName": "LDxX4SqP", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 20, "maxSaleCount": 43, "name": "b2r03pIy", "redeemEnd": "1995-06-10T00:00:00Z", "redeemStart": "1999-08-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["t7VH4gW5", "jBJciqSl", "ud3PTtfO"]}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'IqncMzSG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 't1wQgT4s' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Ltt1qWSJ' \
    --body '{"categoryPath": "ePsSpfbU", "localizationDisplayNames": {"OwdINicC": "kD4XGuBr", "RZsJpRit": "CjipAYo4", "DlvAwCpv": "3aQSjLrZ"}}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'SnqTEfV9' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'uZK3vHNp' \
    --namespace $AB_NAMESPACE \
    --storeId 'e1DdK4GF' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'NdcHLfnN' \
    --namespace $AB_NAMESPACE \
    --storeId 'uJRkmGGD' \
    --body '{"localizationDisplayNames": {"g9enTfss": "e3c2ylpa", "2McsjpXI": "NBGyfxyZ", "ZGoUmM5P": "xxdmpM51"}}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'nKwWYduK' \
    --namespace $AB_NAMESPACE \
    --storeId 'GFrJBtIY' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '4v5bZ2wQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Lj8dIRkZ' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'gpUB7XKy' \
    --namespace $AB_NAMESPACE \
    --storeId 'cxtBXKzS' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '7d5vVQDJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '43' \
    --code 'jlUZuE80' \
    --limit '53' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '5uAHGqmb' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 71}' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId 'U9Q0L3i6' \
    --namespace $AB_NAMESPACE \
    --batchNo '19' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '20bUmELF' \
    --namespace $AB_NAMESPACE \
    --batchNo '82' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'F171heMQ' \
    --namespace $AB_NAMESPACE \
    --batchNo '89' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ezhPRaoh' \
    --namespace $AB_NAMESPACE \
    --code 'vdcTqkql' \
    --limit '42' \
    --offset '85' \
    --userId '6UNkrAFs' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'MkmeI8vm' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'S28N4Hth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'EBQ4yhx7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "rKE8uqtu", "currencySymbol": "a4Dc8JWH", "currencyType": "REAL", "decimals": 44, "localizationDescriptions": {"Qmxa9oSD": "XblqAHKi", "gztO3t0g": "NxveKrkw", "2r9KBeDR": "GpNpHAOF"}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Vs8tqU8O' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"wruBbjOM": "ZzCfpV6S", "qJNAPdlr": "45BivUi5", "QLAPK2eR": "vBN4lwQu"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'uW33OC3L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'hgdxSbe6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'B1KhlcFV' \
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
    --body '{"data": [{"id": "dkCKdWjm", "rewards": [{"currency": {"currencyCode": "nFegubkV", "namespace": "zTC7aNzl"}, "item": {"itemId": "nDwAzlQN", "itemSku": "d6hFGWjO", "itemType": "SWGYy2QE"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "zDFLJkMj", "namespace": "Rn5T17lj"}, "item": {"itemId": "reC222Mg", "itemSku": "ERXwe88I", "itemType": "UtfEbyt4"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "w5eF5wVC", "namespace": "rd0yChsd"}, "item": {"itemId": "RF0lvTIl", "itemSku": "IuZSaD71", "itemType": "2JHjswLs"}, "quantity": 20, "type": "CURRENCY"}]}, {"id": "qt4XjI5n", "rewards": [{"currency": {"currencyCode": "GXIEicAN", "namespace": "4Toqy5DR"}, "item": {"itemId": "tpPccHC8", "itemSku": "0324nDSY", "itemType": "ZzXIsVLJ"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "83Pnp4np", "namespace": "d3EZhzrq"}, "item": {"itemId": "jbjA15x3", "itemSku": "0iQmvfuZ", "itemType": "m5lxN511"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "V1TgA654", "namespace": "d7RgwPp5"}, "item": {"itemId": "vAGeTc25", "itemSku": "y6WOyHco", "itemType": "Tm2HmUbb"}, "quantity": 33, "type": "CURRENCY"}]}, {"id": "ergupw0D", "rewards": [{"currency": {"currencyCode": "RKlJczoj", "namespace": "E8v4P2R3"}, "item": {"itemId": "KML3PkQ8", "itemSku": "P6bbeiZ5", "itemType": "yvEvLbcE"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "8YXyUud5", "namespace": "iWA1qM2Y"}, "item": {"itemId": "5c0uOCjB", "itemSku": "hu2xlrhs", "itemType": "TME6WUcd"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "2hLDYeM0", "namespace": "P955JxK2"}, "item": {"itemId": "XoCBcGQv", "itemSku": "RdlDWZDT", "itemType": "rKxN9WN1"}, "quantity": 20, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"V9ioZixC": "7aS5R9F5", "b0ol3331": "sU2cKjyg", "2U8xJZGn": "KiGVZtxM"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"Gldc7z74": "tPDRVkVk", "xqXXgz0L": "31Qql1O9", "Yu9RHnEP": "1noDb9Kf"}}, {"platform": "PSN", "platformDlcIdMap": {"12fUcLBz": "SfVYYCji", "I9jHi2HI": "Q3anZfAc", "fK4A6hkp": "CUmE2nTs"}}]}' \
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
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'rcYl80am' \
    --itemId '["3JBRq1wN", "65iQi9Lb", "a5WjbF90"]' \
    --limit '83' \
    --offset '0' \
    --userId 'CQKoXUhZ' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'D18WAG0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '12' \
    --status 'SUCCESS' \
    --userId 'VzAKRf5o' \
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
    --body '{"bundleId": "F7EBbctv", "password": "oACrxgDs"}' \
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
    --body '{"sandboxId": "gWavbFX5"}' \
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
    --body '{"applicationName": "aVNEoPl7", "serviceAccountId": "gd3IKAld"}' \
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
    --body '{"data": [{"itemIdentity": "Vo8Tv5gr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"FAhPSm2s": "r9if4F5X", "rF3KTrVV": "qY0mDGQS", "nnykFQud": "ZWRWgRYo"}}, {"itemIdentity": "KbclDcC4", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8ggFqySa": "XBa7o8Z1", "lQQkYRU9": "WJrziHhO", "WdKBMPAJ": "0sWdhXbv"}}, {"itemIdentity": "GjV5J3Qd", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"UqiOQOST": "RljtLxK2", "q8v8V9Uo": "Lcw3srZ0", "dOqrcv89": "OgC1LNQ6"}}]}' \
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
    --body '{"environment": "zrtGrMuL"}' \
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
    --body '{"appId": "MCiYPsjC", "publisherAuthenticationKey": "hUoM4Sw1"}' \
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
    --body '{"clientId": "KCgr8IL1", "clientSecret": "nCLafEay", "organizationId": "Z6fvIbTc"}' \
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
    --body '{"relyingPartyCert": "6C30jkpI"}' \
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
    --password 'O8lAAP2m' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bGYfwGGr' \
    --body '{"categoryPath": "uA1A3H7B", "targetItemId": "M8aanicw", "targetNamespace": "NocE306A"}' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iMDa6G1Q' \
    --body '{"appId": "4Yb7RWsM", "appType": "SOFTWARE", "baseAppId": "UuZBuXNt", "boothName": "Ckio9wda", "categoryPath": "Vxn56qlc", "clazz": "A7PA7Daq", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"UjRC9IPP": {}, "pHTMkVFA": {}, "uBhmBjSa": {}}, "features": ["BsERclbz", "5u5vqceJ", "suPeC2SD"], "images": [{"as": "327WejXx", "caption": "d2YNJkps", "height": 59, "imageUrl": "P8TrvlGT", "smallImageUrl": "RFfswf6t", "width": 22}, {"as": "2h7Upkna", "caption": "sF9jLCEL", "height": 93, "imageUrl": "OePai0IT", "smallImageUrl": "p2OSR2uI", "width": 94}, {"as": "bFVkubNf", "caption": "Fa4SPLOI", "height": 61, "imageUrl": "ZVr0eVnP", "smallImageUrl": "DW4W9cGt", "width": 76}], "itemIds": ["YGbCCaoM", "gkL57vMk", "vFCPWA4r"], "itemQty": {"3DevX3Kl": 60, "5ZcDbdYw": 89, "PfhXMIOO": 98}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"18vrYBqg": {"description": "WrFLpIMr", "localExt": {"90nRxN12": {}, "yi69wKiF": {}, "99m1CZoH": {}}, "longDescription": "L1xJhmSs", "title": "Mw0S4LB9"}, "JpsNGWPZ": {"description": "5j7vZUJZ", "localExt": {"aaweHtP8": {}, "Nx1TDPKr": {}, "5xnNuq2B": {}}, "longDescription": "TgZzXs0r", "title": "c8eUE9so"}, "tP4ywwXK": {"description": "iA9G0FlO", "localExt": {"qAHZkDeD": {}, "g3a5DYrl": {}, "BsFSforu": {}}, "longDescription": "zaQ2e0wj", "title": "hFxbF5w6"}}, "maxCount": 77, "maxCountPerUser": 31, "name": "oOSMFSgA", "optionBoxConfig": {"boxItems": [{"count": 73, "itemId": "n85NtWaQ", "itemSku": "IuOAEi94"}, {"count": 73, "itemId": "nux1h3DC", "itemSku": "Z6QA5dtT"}, {"count": 56, "itemId": "FcEDesSv", "itemSku": "vWabYRJP"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 24, "fixedTrialCycles": 51, "graceDays": 37}, "regionData": {"47zzUFwK": [{"currencyCode": "6iZ33WWm", "currencyNamespace": "8g5yIp8g", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1982-04-05T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1997-05-23T00:00:00Z", "discountedPrice": 100, "expireAt": "1997-12-08T00:00:00Z", "price": 38, "purchaseAt": "1988-11-23T00:00:00Z", "trialPrice": 25}, {"currencyCode": "DXRxMgjT", "currencyNamespace": "CKJdwCKx", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1981-05-15T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1979-08-14T00:00:00Z", "discountedPrice": 64, "expireAt": "1983-05-01T00:00:00Z", "price": 51, "purchaseAt": "1997-05-24T00:00:00Z", "trialPrice": 87}, {"currencyCode": "MOR1gyXQ", "currencyNamespace": "udJBgzW0", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1982-09-15T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1978-09-13T00:00:00Z", "discountedPrice": 11, "expireAt": "1973-12-25T00:00:00Z", "price": 67, "purchaseAt": "1988-04-10T00:00:00Z", "trialPrice": 80}], "uvkCSyOy": [{"currencyCode": "r9cb2fLX", "currencyNamespace": "S6rOc7LX", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1997-01-04T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1977-03-28T00:00:00Z", "discountedPrice": 83, "expireAt": "1997-11-22T00:00:00Z", "price": 58, "purchaseAt": "1975-10-30T00:00:00Z", "trialPrice": 72}, {"currencyCode": "rdOivjj9", "currencyNamespace": "xHDvDASF", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1999-11-01T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-04-11T00:00:00Z", "discountedPrice": 73, "expireAt": "1989-11-02T00:00:00Z", "price": 86, "purchaseAt": "1988-08-27T00:00:00Z", "trialPrice": 58}, {"currencyCode": "AD1xH90B", "currencyNamespace": "qq37SX8B", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1987-03-30T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1982-05-11T00:00:00Z", "discountedPrice": 81, "expireAt": "1991-02-24T00:00:00Z", "price": 86, "purchaseAt": "1994-01-16T00:00:00Z", "trialPrice": 33}], "lKEcbQTw": [{"currencyCode": "bBDaVomy", "currencyNamespace": "QLMjUHM0", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1986-02-17T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1974-12-20T00:00:00Z", "discountedPrice": 28, "expireAt": "1995-01-20T00:00:00Z", "price": 42, "purchaseAt": "1974-01-18T00:00:00Z", "trialPrice": 98}, {"currencyCode": "lCgrNfVQ", "currencyNamespace": "kCReEAqt", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1996-11-24T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1991-09-10T00:00:00Z", "discountedPrice": 71, "expireAt": "1987-11-02T00:00:00Z", "price": 86, "purchaseAt": "1983-11-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "SaThMe31", "currencyNamespace": "20pNwD7k", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1998-10-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1996-04-17T00:00:00Z", "discountedPrice": 69, "expireAt": "1973-12-18T00:00:00Z", "price": 26, "purchaseAt": "1984-01-16T00:00:00Z", "trialPrice": 98}]}, "seasonType": "PASS", "sku": "5Kvl72Uo", "stackable": false, "status": "ACTIVE", "tags": ["DzajvK13", "c26RV7gL", "SYaMY4wU"], "targetCurrencyCode": "1FYmVoN9", "targetNamespace": "x907r6M2", "thumbnailUrl": "9FkYZvSj", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'tXiTLCJd' \
    --appId '0JSsAnNV' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'L4KegRQF' \
    --baseAppId 'l401qJpL' \
    --categoryPath 'Fn2YXkJp' \
    --features 'BUvGrhH7' \
    --itemType 'APP' \
    --limit '88' \
    --offset '83' \
    --region 'z1k9BQw7' \
    --sortBy '["createdAt", "updatedAt:asc", "name:asc"]' \
    --storeId 'OwSbXAni' \
    --tags 'oPXIS07e' \
    --targetNamespace 'KNHwGg4t' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["p91R3JZd", "AVHO7HTX", "QyqwM9qV"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WmwB0Hna' \
    --sku 'oHM7ZOIM' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'kSj4j9iQ' \
    --populateBundle 'false' \
    --region 'gkL79MQf' \
    --storeId 'msYiI3JS' \
    --sku 'HUPrCTgp' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'S6SHUJmp' \
    --sku 'CUlxjs8p' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["j4IusUeD", "7fgX4LbC", "0BWwQUeK"]' \
    --storeId 'iWNTIHcZ' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'NrBJerk6' \
    --region 's62qy4Bt' \
    --storeId 'UVrD2NE4' \
    --itemIds 'RQVaBSHz' \
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
    --userId 'mevJx9u5' \
    --body '{"itemIds": ["zuQDyaR3", "xeKSKTPp", "FmwMPutQ"]}' \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'CODE' \
    --limit '59' \
    --offset '14' \
    --storeId 'GvKuadnO' \
    --keyword 'N9j1FgRC' \
    --language '4HundfWi' \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '36' \
    --offset '96' \
    --sortBy '["displayOrder:desc", "displayOrder"]' \
    --storeId '2hYmWcky' \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '7UK3FwcS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'bXEMgjW3' \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'upClKSjE' \
    --namespace $AB_NAMESPACE \
    --storeId 'Qo714C6h' \
    --body '{"appId": "u4dgUDl2", "appType": "DEMO", "baseAppId": "zk4ZraGP", "boothName": "8iZuLCCH", "categoryPath": "32S0ZU7q", "clazz": "ozHrdY2C", "displayOrder": 77, "entitlementType": "DURABLE", "ext": {"8HciaUvM": {}, "VeP99peB": {}, "0ewx8Szr": {}}, "features": ["XdscQ30Z", "eSCPRuxR", "MbLLaGKG"], "images": [{"as": "QYPfc550", "caption": "IPTuIV14", "height": 46, "imageUrl": "O7lZdTcD", "smallImageUrl": "MavQWZXF", "width": 53}, {"as": "UFTKiyJq", "caption": "vZnhEerL", "height": 22, "imageUrl": "YHLDdVSZ", "smallImageUrl": "YAzVbaG1", "width": 85}, {"as": "XflfGWOC", "caption": "gxQbg1t5", "height": 64, "imageUrl": "EUhSsxWq", "smallImageUrl": "pXwb55hN", "width": 44}], "itemIds": ["ynFktSAx", "AFSqi9EM", "RCZYqtX0"], "itemQty": {"3H4GYnUe": 87, "POoeoHO6": 91, "XWz7CLAs": 75}, "itemType": "SEASON", "listable": true, "localizations": {"PFlcFHN4": {"description": "iori7SwE", "localExt": {"IbOOct0s": {}, "7JeMTMfX": {}, "uKRYHIbh": {}}, "longDescription": "glnreftn", "title": "Mp4JZUrO"}, "klLoMYob": {"description": "sQU5UyMR", "localExt": {"CNbhACJt": {}, "xoLSMJKp": {}, "Ih5wX8On": {}}, "longDescription": "N6aNBUQI", "title": "3HqLiEof"}, "qUO5DPa2": {"description": "1jbOSZBA", "localExt": {"HmUIURXh": {}, "vd8Un4CY": {}, "HK81EeE0": {}}, "longDescription": "H7O56MGk", "title": "ZeBV7XZJ"}}, "maxCount": 15, "maxCountPerUser": 7, "name": "Md09SbCb", "optionBoxConfig": {"boxItems": [{"count": 54, "itemId": "QpQMeIVX", "itemSku": "K47tima5"}, {"count": 33, "itemId": "a4oePskO", "itemSku": "nPPmwyJf"}, {"count": 86, "itemId": "Zsz7pHDb", "itemSku": "BeFBIzz9"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 40, "fixedTrialCycles": 18, "graceDays": 18}, "regionData": {"3bUCwNyi": [{"currencyCode": "c3WCaI6W", "currencyNamespace": "WnOpwE4B", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1996-04-02T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1997-09-06T00:00:00Z", "discountedPrice": 4, "expireAt": "1973-03-18T00:00:00Z", "price": 100, "purchaseAt": "1985-03-31T00:00:00Z", "trialPrice": 20}, {"currencyCode": "ze7YpgGe", "currencyNamespace": "PJnBUte3", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1982-10-07T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1974-01-28T00:00:00Z", "discountedPrice": 17, "expireAt": "1986-02-14T00:00:00Z", "price": 41, "purchaseAt": "1989-01-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "wmmkerQy", "currencyNamespace": "AA5CRiiL", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1993-10-18T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1981-01-22T00:00:00Z", "discountedPrice": 9, "expireAt": "1972-10-14T00:00:00Z", "price": 5, "purchaseAt": "1994-01-27T00:00:00Z", "trialPrice": 96}], "bL9554gE": [{"currencyCode": "ePW41f2o", "currencyNamespace": "weLBG0SG", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1976-01-14T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1990-08-31T00:00:00Z", "discountedPrice": 52, "expireAt": "1977-04-04T00:00:00Z", "price": 55, "purchaseAt": "1992-08-14T00:00:00Z", "trialPrice": 0}, {"currencyCode": "L3cX6rgA", "currencyNamespace": "BIrz8yJI", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1976-10-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1992-02-25T00:00:00Z", "discountedPrice": 95, "expireAt": "1987-05-23T00:00:00Z", "price": 34, "purchaseAt": "1972-04-27T00:00:00Z", "trialPrice": 52}, {"currencyCode": "WXcZthlH", "currencyNamespace": "T0CZ63O2", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1982-09-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1998-07-15T00:00:00Z", "discountedPrice": 30, "expireAt": "1971-09-02T00:00:00Z", "price": 16, "purchaseAt": "1995-01-30T00:00:00Z", "trialPrice": 45}], "4k4ddBfy": [{"currencyCode": "htxKyoSc", "currencyNamespace": "4y0CBokO", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1975-03-12T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1990-09-19T00:00:00Z", "discountedPrice": 97, "expireAt": "1974-08-06T00:00:00Z", "price": 63, "purchaseAt": "1987-01-07T00:00:00Z", "trialPrice": 48}, {"currencyCode": "WRwWEWrk", "currencyNamespace": "b7hjJCUJ", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1975-12-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1975-12-10T00:00:00Z", "discountedPrice": 97, "expireAt": "1979-02-10T00:00:00Z", "price": 14, "purchaseAt": "1987-05-03T00:00:00Z", "trialPrice": 88}, {"currencyCode": "EQUEhlGv", "currencyNamespace": "ozstRmql", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1990-08-23T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1976-08-08T00:00:00Z", "discountedPrice": 47, "expireAt": "1990-06-04T00:00:00Z", "price": 14, "purchaseAt": "1983-10-11T00:00:00Z", "trialPrice": 30}]}, "seasonType": "PASS", "sku": "KxsF7q5s", "stackable": true, "status": "ACTIVE", "tags": ["d08z0ss3", "PxlluNSH", "7m8kMgvG"], "targetCurrencyCode": "O7qxkGMY", "targetNamespace": "x963iBj3", "thumbnailUrl": "cG3Pb52x", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'qG14Yyux' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'aW9Q5GkS' \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'RyXeQHG8' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 42, "orderNo": "peficxtl"}' \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'zPyXnShg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'wLPEkhz9' \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'yWqXLaXE' \
    --namespace $AB_NAMESPACE \
    --storeId '2ejpihCE' \
    --body '{"carousel": [{"alt": "ZQwE5rZO", "previewUrl": "XdYX9wsL", "thumbnailUrl": "4MpUt5E3", "type": "image", "url": "KeNzWYkI", "videoSource": "vimeo"}, {"alt": "kpFII04W", "previewUrl": "WAHpRSdT", "thumbnailUrl": "XFjFIaya", "type": "video", "url": "6iIjf3aO", "videoSource": "vimeo"}, {"alt": "mEwyVCcc", "previewUrl": "DZKxCavB", "thumbnailUrl": "lTvp1PWQ", "type": "video", "url": "MVEGtxeA", "videoSource": "vimeo"}], "developer": "w8VTlXzp", "forumUrl": "mMVU39ST", "genres": ["Adventure", "FreeToPlay", "Adventure"], "localizations": {"hOCw4TOf": {"announcement": "gF0x5UIi", "slogan": "Vcyn4aEN"}, "2w46x7GS": {"announcement": "lnIj0mFL", "slogan": "wnbCLzHT"}, "PXUv6lON": {"announcement": "JVmlQQJD", "slogan": "eydj3zbJ"}}, "platformRequirements": {"UTfyLjBd": [{"additionals": "dz1bHXWt", "directXVersion": "YyrU5439", "diskSpace": "FVhtlgU6", "graphics": "nFbtXpXk", "label": "pi1tdtKm", "osVersion": "eHzhxaHB", "processor": "VYq9mOGA", "ram": "71XvYZbb", "soundCard": "xi4kSdm0"}, {"additionals": "1RqMEmly", "directXVersion": "whYeglCk", "diskSpace": "03s0qhfu", "graphics": "fRYQIw9u", "label": "qPHfRxLm", "osVersion": "Fb4TlGDm", "processor": "WlgA5w7b", "ram": "eL2zRoaZ", "soundCard": "GxCBptTB"}, {"additionals": "X6eVXVQC", "directXVersion": "GYu46m6Q", "diskSpace": "DLdfEm3P", "graphics": "D4kuAjJA", "label": "Cl8us8YE", "osVersion": "dyXpeHyu", "processor": "ENWgeni5", "ram": "mjZAv2GJ", "soundCard": "kohWmReB"}], "he72JclM": [{"additionals": "dzDPxMzq", "directXVersion": "q4NCw44W", "diskSpace": "NlAF2Avc", "graphics": "R33zhIWM", "label": "MfkObIAR", "osVersion": "0NHogapq", "processor": "FajNZavV", "ram": "8j8L4bC6", "soundCard": "bch1VyGd"}, {"additionals": "sv777zyZ", "directXVersion": "M6P6IaB4", "diskSpace": "6eoA2jKz", "graphics": "FoNN2QHu", "label": "cUi5ynBz", "osVersion": "vl0I55SK", "processor": "l9dwLiWU", "ram": "RJkBS5h0", "soundCard": "osEneOs8"}, {"additionals": "8XH70U1N", "directXVersion": "pypEIa8t", "diskSpace": "hx6VKqnA", "graphics": "g9e3uPq9", "label": "bVvPRb1G", "osVersion": "TGxj1u9L", "processor": "fZO2L256", "ram": "3FgK8f90", "soundCard": "KLNUE7Yl"}], "hRCQLg7h": [{"additionals": "M3AZZTMe", "directXVersion": "ZQH03YG9", "diskSpace": "hzKOUeiT", "graphics": "kB49Odi5", "label": "tQF5EdLP", "osVersion": "v1CldERs", "processor": "n1US8KyT", "ram": "zbjiYdIU", "soundCard": "GTHbxjX9"}, {"additionals": "nrvTAqO0", "directXVersion": "VqI4ymCN", "diskSpace": "8NkwTiYf", "graphics": "O27hCk1R", "label": "jsJorhxA", "osVersion": "IqWh9TDL", "processor": "TTMo1Cei", "ram": "EgBuy1XK", "soundCard": "4X7Q27I5"}, {"additionals": "IJIkBC4a", "directXVersion": "iAQBpxiw", "diskSpace": "VU7ntlmA", "graphics": "lyO9EcMg", "label": "pwHgyKlj", "osVersion": "zghQKFXf", "processor": "mPCMd0aN", "ram": "Q6bV0I03", "soundCard": "NSHn772x"}]}, "platforms": ["IOS", "IOS", "MacOS"], "players": ["Single", "LocalCoop", "MMO"], "primaryGenre": "Simulation", "publisher": "I2uPahY1", "releaseDate": "1988-12-31T00:00:00Z", "websiteUrl": "RPojN36v"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'YiL7l46F' \
    --namespace $AB_NAMESPACE \
    --storeId 'QQeb60Yx' \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'ITjydFoX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'ZzoB0YjA' \
    --namespace $AB_NAMESPACE \
    --storeId 'jJ2Bowc1' \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'gnT7TxSR' \
    --itemId 'jndpwMu1' \
    --namespace $AB_NAMESPACE \
    --storeId 'zWw2l3Il' \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'E5JU09jb' \
    --itemId 'R8PtDa2z' \
    --namespace $AB_NAMESPACE \
    --storeId '6uALxDgc' \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'aAcel2Aw' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'DTO3hLgv' \
    --populateBundle 'true' \
    --region 't2b3AgG6' \
    --storeId 'Ix6J6FxK' \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'M42g1ast' \
    --namespace $AB_NAMESPACE \
    --storeId 'SfKJKtRC' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 100, "comparison": "isGreaterThanOrEqual", "name": "ZpskDGwL", "predicateType": "EntitlementPredicate", "value": "y9R7VCXk", "values": ["cvlDZM7S", "clBuCoSm", "YKP4leul"]}, {"anyOf": 3, "comparison": "excludes", "name": "Bmv33g3w", "predicateType": "SeasonTierPredicate", "value": "27IutOxX", "values": ["c86g3Lix", "qE8UxSQj", "ivcJtLK5"]}, {"anyOf": 9, "comparison": "isGreaterThan", "name": "6fO6bKLr", "predicateType": "EntitlementPredicate", "value": "l0CKmexM", "values": ["We0DycLu", "lV2BRlhf", "HHrwoMfQ"]}]}, {"operator": "or", "predicates": [{"anyOf": 46, "comparison": "isGreaterThan", "name": "kBbFRpVL", "predicateType": "EntitlementPredicate", "value": "4Tk9mjWQ", "values": ["E18T9WQu", "AQIhCflN", "2VP1NBaG"]}, {"anyOf": 59, "comparison": "isNot", "name": "IzRqkJeI", "predicateType": "EntitlementPredicate", "value": "mrt4xFMQ", "values": ["0tssC3Qt", "E8kGHGNm", "ooeFyKbJ"]}, {"anyOf": 92, "comparison": "isNot", "name": "uLGgk2pF", "predicateType": "SeasonPassPredicate", "value": "SWwneRf7", "values": ["xqUk7FQv", "ryrSV8qv", "D3G6vdQg"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "comparison": "isLessThanOrEqual", "name": "rylBYVrX", "predicateType": "EntitlementPredicate", "value": "IuAmXUky", "values": ["88C9GCzQ", "2jAeIxko", "qUZ3eux5"]}, {"anyOf": 7, "comparison": "isLessThanOrEqual", "name": "q4txCFoY", "predicateType": "SeasonTierPredicate", "value": "zdl1vlwQ", "values": ["Q0VS6Jt2", "IS9DLBDY", "ARF30LAk"]}, {"anyOf": 91, "comparison": "includes", "name": "noBo9r0Y", "predicateType": "EntitlementPredicate", "value": "BY51MjFc", "values": ["j8ktd11U", "Oj9cCTPT", "3oVlZgnQ"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'aYYJwdTL' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VQNtdkJk"}' \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'ltJbRBg0' \
    --offset '29' \
    --tag 'HL08UaSv' \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hNAbMwKl", "name": "82wcUqvL", "status": "ACTIVE", "tags": ["w83JXwNU", "uUxm5i0d", "74rJONwx"]}' \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'Wd5lckS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'nmngayaw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UTmyCcDb", "name": "XIiULykh", "status": "INACTIVE", "tags": ["xlq1aEjP", "Ys48oEwJ", "W36FMlF3"]}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'KXjxAUBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'k4oEHswh' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '76' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '4NfvhjZ9' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'DaUTxtVD' \
    --limit '54' \
    --offset '26' \
    --orderNos '["jko1YAUw", "0FMbWOYJ", "jL3hnk28"]' \
    --sortBy 'eZvOJn3n' \
    --startTime 'dgviYiDa' \
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
    --orderNo 'lW9FiDlQ' \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AWwxUYiy' \
    --body '{"description": "Rzwc4nSC"}' \
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
    --body '{"dryRun": false, "notifyUrl": "cnG5mN1I", "privateKey": "QLqtVQNS"}' \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'K815NMKl' \
    --externalId 'BhCgr8dh' \
    --limit '62' \
    --notificationSource 'ALIPAY' \
    --notificationType 'TBo3qeWl' \
    --offset '6' \
    --paymentOrderNo 'jfCOLCMr' \
    --startDate '67pF0cEl' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'IQruciKJ' \
    --limit '18' \
    --offset '92' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "5gBdtf1y", "currencyNamespace": "PyzMTslE", "customParameters": {"ruGJF5a9": {}, "XoUdF9nh": {}, "dahxtG14": {}}, "description": "v1Mswt0v", "extOrderNo": "8LK9BqI2", "extUserId": "CVXErDnz", "itemType": "COINS", "language": "ZSM-JVMW", "metadata": {"11exBWOR": "zSd3tuPX", "2m5XbeHN": "MFkHQoF9", "az6iSRYO": "USlyP7mN"}, "notifyUrl": "dOLr2R1S", "omitNotification": true, "platform": "cR4vw0CK", "price": 85, "recurringPaymentOrderNo": "kUcwBXgb", "region": "GkjPdPRA", "returnUrl": "mdcSjCLH", "sandbox": true, "sku": "NgFJ7Bis", "subscriptionId": "0T2PGjfs", "targetNamespace": "UyZBmqFa", "targetUserId": "Worhm2Qp", "title": "6ZyT5rUu"}' \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'HrEbnvcL' \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jbFs4HZN' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'snP753AC' \
    --body '{"extTxId": "bcOfK2q8", "paymentMethod": "K8TY2JiR", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fDNBgJ3Q' \
    --body '{"description": "WDemQXJJ"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Sfqb6JQR' \
    --body '{"amount": 10, "currencyCode": "tTleiQJs", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 65, "vat": 35}' \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1wHsQrLu' \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "GooglePlay", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vXimWvLg", "eventTopic": "tiukPM1I", "maxAwarded": 53, "maxAwardedPerUser": 71, "namespaceExpression": "YmKPlBTH", "rewardCode": "fW19dKLe", "rewardConditions": [{"condition": "6FrpkzoE", "conditionName": "aBbRzUMa", "eventName": "TvkKTXuI", "rewardItems": [{"duration": 15, "itemId": "rH6ebm1L", "quantity": 0}, {"duration": 31, "itemId": "4JtXuwGc", "quantity": 72}, {"duration": 77, "itemId": "I3okAhsh", "quantity": 34}]}, {"condition": "7kYWldlM", "conditionName": "XgNWikPV", "eventName": "RAmTRrJk", "rewardItems": [{"duration": 61, "itemId": "jjTc4XL0", "quantity": 78}, {"duration": 8, "itemId": "4ahFqyqM", "quantity": 24}, {"duration": 13, "itemId": "U6pR0u6K", "quantity": 32}]}, {"condition": "NZjshB6z", "conditionName": "4ZYBW0Jl", "eventName": "7VBdPoDQ", "rewardItems": [{"duration": 13, "itemId": "KOmekcGp", "quantity": 5}, {"duration": 58, "itemId": "ThA5wAvV", "quantity": 37}, {"duration": 75, "itemId": "EEdG0gFs", "quantity": 7}]}], "userIdExpression": "SooxwlOr"}' \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'DBtT3j7N' \
    --limit '23' \
    --offset '86' \
    --sortBy '["rewardCode:asc", "rewardCode:desc"]' \
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
    --rewardId 'OWfKEqKH' \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'jXF1xYFp' \
    --body '{"description": "PAvxuXO4", "eventTopic": "ECe11KiB", "maxAwarded": 36, "maxAwardedPerUser": 32, "namespaceExpression": "PmHK9gIL", "rewardCode": "JJXsdq9Y", "rewardConditions": [{"condition": "8u50AMgL", "conditionName": "fTbQllus", "eventName": "WQnIPHeF", "rewardItems": [{"duration": 25, "itemId": "760jispt", "quantity": 64}, {"duration": 34, "itemId": "1gzEv7hl", "quantity": 23}, {"duration": 3, "itemId": "6t4wR3cw", "quantity": 33}]}, {"condition": "EQ4cG06N", "conditionName": "VY1YmRL6", "eventName": "c7a8nQbu", "rewardItems": [{"duration": 52, "itemId": "6LJA51PB", "quantity": 56}, {"duration": 74, "itemId": "KthhyfBy", "quantity": 89}, {"duration": 99, "itemId": "GkiHVhZD", "quantity": 24}]}, {"condition": "7W29Hc9r", "conditionName": "tN2C7jAI", "eventName": "NMhxXipR", "rewardItems": [{"duration": 47, "itemId": "5fROrEaj", "quantity": 29}, {"duration": 85, "itemId": "1MKzH1Ce", "quantity": 35}, {"duration": 28, "itemId": "LfH2gjgU", "quantity": 4}]}], "userIdExpression": "6UoVggHc"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'H5qEWbxQ' \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'kMsJRNsE' \
    --body '{"payload": {"QqOXhQ8f": {}, "zsYAuAQN": {}, "dxulJLeL": {}}}' \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'OCPnSQlA' \
    --body '{"conditionName": "UhaBeb6E", "userId": "UNgYvQWQ"}' \
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
    --body '{"defaultLanguage": "J9Pw3N1p", "defaultRegion": "rx02knDN", "description": "eA6x3scn", "supportedLanguages": ["tAqcdbdG", "aQkwEMOY", "e86Vv7tO"], "supportedRegions": ["7mkec6rc", "PveFHfXe", "QaaMom6j"], "title": "UlhMHjtd"}' \
    > test.out 2>&1
eval_tap $? 137 'CreateStore' test.out

#- 138 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PvxnjU9S' \
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
    --storeId 'zAMgcqA0' \
    > test.out 2>&1
eval_tap $? 143 'GetStore' test.out

#- 144 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FKz4NUwB' \
    --body '{"defaultLanguage": "sAmO8sC4", "defaultRegion": "7gjNcwOt", "description": "dge8cO5g", "supportedLanguages": ["KR8Dj26K", "AsLav4Cn", "V8TPrxSb"], "supportedRegions": ["pd5I1CWd", "U24a57xa", "lnTLEGav"], "title": "UFkF0Kf4"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateStore' test.out

#- 145 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'q3nD0iig' \
    > test.out 2>&1
eval_tap $? 145 'DeleteStore' test.out

#- 146 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'RKH2RHeh' \
    --action 'UPDATE' \
    --itemSku 'zmfws5Sp' \
    --itemType 'SEASON' \
    --limit '97' \
    --offset '42' \
    --selected 'true' \
    --sortBy '["createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'P1jhmHtw' \
    --updatedAtStart '1Uea99eO' \
    > test.out 2>&1
eval_tap $? 146 'QueryChanges' test.out

#- 147 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '2vjA2fY1' \
    > test.out 2>&1
eval_tap $? 147 'PublishAll' test.out

#- 148 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '02cU50AG' \
    > test.out 2>&1
eval_tap $? 148 'PublishSelected' test.out

#- 149 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '7dlvq8an' \
    > test.out 2>&1
eval_tap $? 149 'SelectAllRecords' test.out

#- 150 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'ltQl3pII' \
    --action 'CREATE' \
    --itemSku '2I9cfpLu' \
    --itemType 'SEASON' \
    --type 'CATEGORY' \
    --updatedAtEnd 'rl7N65G7' \
    --updatedAtStart 'zoTaaPVo' \
    > test.out 2>&1
eval_tap $? 150 'GetStatistic' test.out

#- 151 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'n49ZXye5' \
    > test.out 2>&1
eval_tap $? 151 'UnselectAllRecords' test.out

#- 152 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'XUwamlDl' \
    --namespace $AB_NAMESPACE \
    --storeId 'LSDFuelX' \
    > test.out 2>&1
eval_tap $? 152 'SelectRecord' test.out

#- 153 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'EXGpxrDW' \
    --namespace $AB_NAMESPACE \
    --storeId 'Cplzle8B' \
    > test.out 2>&1
eval_tap $? 153 'UnselectRecord' test.out

#- 154 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'PQWgzf67' \
    --targetStoreId 'ArIoUAKm' \
    > test.out 2>&1
eval_tap $? 154 'CloneStore' test.out

#- 155 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId '2IJ2Se79' \
    > test.out 2>&1
eval_tap $? 155 'ExportStore' test.out

#- 156 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'AmEHwNGe' \
    --limit '77' \
    --offset '40' \
    --sku '1iYQ74uK' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'NlCoiXL9' \
    > test.out 2>&1
eval_tap $? 156 'QuerySubscriptions' test.out

#- 157 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0J9KnxXx' \
    > test.out 2>&1
eval_tap $? 157 'RecurringChargeSubscription' test.out

#- 158 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'jA7JzSWi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetTicketDynamic' test.out

#- 159 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'onTEyy9k' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Ahxixbp3"}' \
    > test.out 2>&1
eval_tap $? 159 'DecreaseTicketSale' test.out

#- 160 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'g2a91Ydt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetTicketBoothID' test.out

#- 161 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'wyJDhMF0' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 39, "orderNo": "XLCPCLqw"}' \
    > test.out 2>&1
eval_tap $? 161 'IncreaseTicketSale' test.out

#- 162 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7ZseiDGW' \
    --body '{"achievements": [{"id": "TQKgPTml", "value": 70}, {"id": "zUnzrYBz", "value": 1}, {"id": "bpWCFs0P", "value": 41}], "steamUserId": "FYQUPbli"}' \
    > test.out 2>&1
eval_tap $? 162 'UnlockSteamUserAchievement' test.out

#- 163 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'v195tS1G' \
    --xboxUserId 'o6r1U7Bx' \
    > test.out 2>&1
eval_tap $? 163 'GetXblUserAchievements' test.out

#- 164 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2ecJ5vKJ' \
    --body '{"achievements": [{"id": "HESShWtY", "percentComplete": 71}, {"id": "vaozGsAs", "percentComplete": 77}, {"id": "hlTXCNqk", "percentComplete": 28}], "serviceConfigId": "pKQVKl1J", "titleId": "zowAOdNk", "xboxUserId": "mzFv8Cfi"}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateXblUserAchievement' test.out

#- 165 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'v5PiCfPr' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeCampaign' test.out

#- 166 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AmKd8IkT' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeEntitlement' test.out

#- 167 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'QYA4Jb9B' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeFulfillment' test.out

#- 168 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'uLWeF5ZB' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeIntegration' test.out

#- 169 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'DLGWNB3D' \
    > test.out 2>&1
eval_tap $? 169 'AnonymizeOrder' test.out

#- 170 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'MJdfj88r' \
    > test.out 2>&1
eval_tap $? 170 'AnonymizePayment' test.out

#- 171 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'urLpONxq' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeSubscription' test.out

#- 172 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'vIeHwFJ2' \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeWallet' test.out

#- 173 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6XdnxrYB' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '4eBpvMkg' \
    --features '["RQb6wEv3", "UYQNkxvl", "879w0l8D"]' \
    --itemId '["NxsG2J2S", "CMRNJKBB", "c6GWoiys"]' \
    --limit '57' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 173 'QueryUserEntitlements' test.out

#- 174 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'xiCCqtxS' \
    --body '[{"endDate": "1980-12-27T00:00:00Z", "grantedCode": "Ivve9rzd", "itemId": "YAYlgrRo", "itemNamespace": "3Leuu4tm", "language": "EBQA-UwNF_878", "quantity": 84, "region": "wXaC5nSE", "source": "REFERRAL_BONUS", "startDate": "1992-05-30T00:00:00Z", "storeId": "hT1VnKtO"}, {"endDate": "1994-01-21T00:00:00Z", "grantedCode": "pNCnUdmp", "itemId": "rYJk14qp", "itemNamespace": "uTR0T4gf", "language": "xyAE", "quantity": 27, "region": "VCsE5AmU", "source": "REDEEM_CODE", "startDate": "1989-11-28T00:00:00Z", "storeId": "x0CA5ZMU"}, {"endDate": "1990-11-30T00:00:00Z", "grantedCode": "xxPVcMJp", "itemId": "JZkIICIc", "itemNamespace": "rHHfX7D6", "language": "tg_FF", "quantity": 39, "region": "UmAyvWfG", "source": "OTHER", "startDate": "1984-07-25T00:00:00Z", "storeId": "AqPp5BDm"}]' \
    > test.out 2>&1
eval_tap $? 174 'GrantUserEntitlement' test.out

#- 175 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'e7aRX9dl' \
    --activeOnly 'false' \
    --appId 'iIIu8wi8' \
    > test.out 2>&1
eval_tap $? 175 'GetUserAppEntitlementByAppId' test.out

#- 176 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'XwthwznA' \
    --activeOnly 'false' \
    --limit '17' \
    --offset '85' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 176 'QueryUserEntitlementsByAppType' test.out

#- 177 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Yem3dTJR' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'eMxnmTh2' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementByItemId' test.out

#- 178 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'HB5RuIUK' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'JSDzteSP' \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementBySku' test.out

#- 179 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'NXzqNZWB' \
    --appIds '["KXwGpb1f", "AGYBim6b", "lutyQvUR"]' \
    --itemIds '["ryxJF5zM", "FCQNkVnr", "aFLmtkFN"]' \
    --skus '["EPRGTzvA", "HPymFuJC", "w7eAiOLa"]' \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlement' test.out

#- 180 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0Oj6I4JT' \
    --itemIds '["teynUtWf", "smurnvxp", "T0As4NEI"]' \
    > test.out 2>&1
eval_tap $? 180 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 181 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WSzqgQgQ' \
    --appId 'djD60HLS' \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 182 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6ZRGvgGS' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'dr9uCJj7' \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemId' test.out

#- 183 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bpLPWm3d' \
    --ids '["AbeMA6ui", "FpnQ6HJk", "4Hl2PDmG"]' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipByItemIds' test.out

#- 184 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JVbML70y' \
    --entitlementClazz 'APP' \
    --sku 'jwzpy2pd' \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementOwnershipBySku' test.out

#- 185 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'jomE53ez' \
    --entitlementIds 'n2YW0qST' \
    > test.out 2>&1
eval_tap $? 185 'RevokeUserEntitlements' test.out

#- 186 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'BxFUIgbw' \
    --namespace $AB_NAMESPACE \
    --userId '4sWp2w2H' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlement' test.out

#- 187 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'D0jAiw6o' \
    --namespace $AB_NAMESPACE \
    --userId 'KmgeX9is' \
    --body '{"endDate": "1990-01-27T00:00:00Z", "nullFieldList": ["yNxg1P0f", "uODmvX6a", "dp5WxLrU"], "startDate": "1971-11-01T00:00:00Z", "status": "INACTIVE", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateUserEntitlement' test.out

#- 188 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'IX27UYcC' \
    --namespace $AB_NAMESPACE \
    --userId 'I83INQWq' \
    --body '{"options": ["oMBqbnTc", "RSWoT90h", "Mzu2srdS"], "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 188 'ConsumeUserEntitlement' test.out

#- 189 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'pO4tx5Sp' \
    --namespace $AB_NAMESPACE \
    --userId 'Zv9ziBFa' \
    > test.out 2>&1
eval_tap $? 189 'DisableUserEntitlement' test.out

#- 190 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'rptGCc1n' \
    --namespace $AB_NAMESPACE \
    --userId '1q7jcRKe' \
    > test.out 2>&1
eval_tap $? 190 'EnableUserEntitlement' test.out

#- 191 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'G7FSeybB' \
    --namespace $AB_NAMESPACE \
    --userId 'Vii0KFa3' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementHistories' test.out

#- 192 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'PQi4kQEu' \
    --namespace $AB_NAMESPACE \
    --userId 'Cd3yVIWY' \
    > test.out 2>&1
eval_tap $? 192 'RevokeUserEntitlement' test.out

#- 193 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'IrqzvyFj' \
    --body '{"duration": 89, "endDate": "1993-01-09T00:00:00Z", "itemId": "6Zog9A3P", "itemSku": "qY5DnA38", "language": "tHndhX2l", "order": {"currency": {"currencyCode": "fulqoT1p", "currencySymbol": "Mu76hD41", "currencyType": "REAL", "decimals": 36, "namespace": "kW7QaY2Z"}, "ext": {"d9ebhh2j": {}, "EDJ7b0e3": {}, "gtz6hABr": {}}, "free": true}, "orderNo": "tPoizsTc", "origin": "Xbox", "quantity": 80, "region": "W4zqcHY6", "source": "REFERRAL_BONUS", "startDate": "1986-04-27T00:00:00Z", "storeId": "DVZ8PpQW"}' \
    > test.out 2>&1
eval_tap $? 193 'FulfillItem' test.out

#- 194 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'iI9QYX0P' \
    --body '{"code": "pRs3mLuV", "language": "wj_156", "region": "8R6doSPt"}' \
    > test.out 2>&1
eval_tap $? 194 'RedeemCode' test.out

#- 195 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'qcUZR6Lv' \
    --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "NPHHcRRU", "namespace": "UVLDrmYV"}, "item": {"itemId": "L7Rfov6t", "itemSku": "JsthoGJI", "itemType": "IPB0hHy5"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "lfgkn3Kr", "namespace": "lyX7HlMU"}, "item": {"itemId": "jdO78F1A", "itemSku": "vhqSDNFa", "itemType": "DdHywJAk"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "lR3CijPu", "namespace": "ZuBCtflS"}, "item": {"itemId": "qFWqIWKY", "itemSku": "9Tv6rO5j", "itemType": "SV7qT4p4"}, "quantity": 92, "type": "CURRENCY"}], "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 195 'FulfillRewards' test.out

#- 196 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '56B3TASg' \
    --endTime 'K1X6HJE4' \
    --limit '15' \
    --offset '8' \
    --productId 'oUIHkE07' \
    --startTime '4kh0ImZc' \
    --status 'VERIFIED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 196 'QueryUserIAPOrders' test.out

#- 197 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'eRGFISeG' \
    > test.out 2>&1
eval_tap $? 197 'QueryAllUserIAPOrders' test.out

#- 198 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '1nY67U98' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "BK-UYYd", "productId": "3xVWWqAG", "region": "mQGrcVzy", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 198 'MockFulfillIAPItem' test.out

#- 199 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'JVtRIF1D' \
    --itemId 'PIs46cma' \
    --limit '34' \
    --offset '0' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserOrders' test.out

#- 200 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'oOkSiPlp' \
    --body '{"currencyCode": "Z3ajRy8A", "currencyNamespace": "XDbxkEAX", "discountedPrice": 21, "ext": {"gaAsILHr": {}, "ps7bhBo6": {}, "zwfwBkON": {}}, "itemId": "9FCGRGQC", "language": "o301XjvJ", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 50, "quantity": 9, "region": "ZqMBkvUZ", "returnUrl": "YGkPby2x", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 200 'AdminCreateUserOrder' test.out

#- 201 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'srccL9hP' \
    --itemId 'hHKW321H' \
    > test.out 2>&1
eval_tap $? 201 'CountOfPurchasedItem' test.out

#- 202 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1KLzxy61' \
    --userId '36Gt6aaz' \
    > test.out 2>&1
eval_tap $? 202 'GetUserOrder' test.out

#- 203 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'jr1aweqw' \
    --userId 'Dr9rODkF' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "ir7DNlXE"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateUserOrderStatus' test.out

#- 204 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UjMxsuK7' \
    --userId 'Qa4e23JR' \
    > test.out 2>&1
eval_tap $? 204 'FulfillUserOrder' test.out

#- 205 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'vG3wrCjV' \
    --userId 'DX3tsbCb' \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderGrant' test.out

#- 206 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'SnKKlwBj' \
    --userId 'jDWa8Ab9' \
    > test.out 2>&1
eval_tap $? 206 'GetUserOrderHistories' test.out

#- 207 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'IP5GvdL3' \
    --userId 'F3ESbbVt' \
    --body '{"additionalData": {"cardSummary": "ldVOzBkO"}, "authorisedTime": "1982-04-04T00:00:00Z", "chargebackReversedTime": "1987-10-02T00:00:00Z", "chargebackTime": "1985-12-26T00:00:00Z", "chargedTime": "1987-11-27T00:00:00Z", "createdTime": "1971-06-28T00:00:00Z", "currency": {"currencyCode": "ENojAY8q", "currencySymbol": "SgSN2wgB", "currencyType": "REAL", "decimals": 18, "namespace": "bCUsQuhV"}, "customParameters": {"cNvwe2Tk": {}, "UrbR9Vrq": {}, "G72Zs96d": {}}, "extOrderNo": "ECyesbRW", "extTxId": "nzXVTrjE", "extUserId": "ZcjnzLcu", "issuedAt": "1995-12-12T00:00:00Z", "metadata": {"EVFfybl8": "MXtIR3u1", "0ElyG0yI": "SJeQLBfZ", "l1R0LpZf": "350wFNcN"}, "namespace": "xLubNHQ3", "nonceStr": "LZLYvfh1", "paymentMethod": "UnsnYN8k", "paymentMethodFee": 70, "paymentOrderNo": "rIr3I16w", "paymentProvider": "WALLET", "paymentProviderFee": 13, "paymentStationUrl": "qvwEMRoL", "price": 82, "refundedTime": "1985-10-28T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "iqISuqfp", "status": "CHARGEBACK", "statusReason": "i1IJpznd", "subscriptionId": "ndrLlnt0", "subtotalPrice": 6, "targetNamespace": "CkXklXpN", "targetUserId": "lV5FeqnM", "tax": 73, "totalPrice": 47, "totalTax": 2, "txEndTime": "1986-06-04T00:00:00Z", "type": "9ooqK6Ip", "userId": "6eK3407y", "vat": 64}' \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserOrderNotification' test.out

#- 208 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'wjPb39j8' \
    --userId 'jvSqDiqG' \
    > test.out 2>&1
eval_tap $? 208 'DownloadUserOrderReceipt' test.out

#- 209 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'abXcOELB' \
    --body '{"currencyCode": "U2G7nEmE", "currencyNamespace": "yCK0eBTj", "customParameters": {"55Yayxdu": {}, "con46EXu": {}, "vlJdGhEC": {}}, "description": "f3zsZERP", "extOrderNo": "R4jzvgSz", "extUserId": "0ClB7Kjq", "itemType": "INGAMEITEM", "language": "Up_AQNo_gp", "metadata": {"R5SUYWYk": "LTH4PE41", "QEpiLztY": "QpOhTxFG", "lDtBuW6j": "zlrKkfd7"}, "notifyUrl": "ywRM8mfj", "omitNotification": true, "platform": "AjdtIZns", "price": 8, "recurringPaymentOrderNo": "6Ndf6faF", "region": "PCbgRbQf", "returnUrl": "SbeEsCuS", "sandbox": true, "sku": "YRf5RdhN", "subscriptionId": "82qxPIpS", "title": "RAxeo3kw"}' \
    > test.out 2>&1
eval_tap $? 209 'CreateUserPaymentOrder' test.out

#- 210 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ddjNoQP5' \
    --userId 'jN8PlR1P' \
    --body '{"description": "CenoH8Bb"}' \
    > test.out 2>&1
eval_tap $? 210 'RefundUserPaymentOrder' test.out

#- 211 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'rMPuM3KQ' \
    --body '{"code": "5kTn9aSn", "orderNo": "ymmO0H2y"}' \
    > test.out 2>&1
eval_tap $? 211 'ApplyUserRedemption' test.out

#- 212 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'NEEAMkCB' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '1gd79iXK' \
    --limit '8' \
    --offset '69' \
    --sku 'a5MxHh0t' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 212 'QueryUserSubscriptions' test.out

#- 213 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'M1vA5QBf' \
    --excludeSystem 'true' \
    --limit '82' \
    --offset '98' \
    --subscriptionId 'ZmpVKALv' \
    > test.out 2>&1
eval_tap $? 213 'GetUserSubscriptionActivities' test.out

#- 214 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'GaXDYf6m' \
    --body '{"grantDays": 42, "itemId": "qUVJkFZs", "language": "iBVCPiFu", "reason": "g8jtq9rT", "region": "o9yPoEgE", "source": "eXkKEqnU"}' \
    > test.out 2>&1
eval_tap $? 214 'PlatformSubscribeSubscription' test.out

#- 215 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'i2JltVsN' \
    --itemId 'KtoueLhi' \
    > test.out 2>&1
eval_tap $? 215 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 216 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'atotHyaF' \
    --userId 'b0pPO26a' \
    > test.out 2>&1
eval_tap $? 216 'GetUserSubscription' test.out

#- 217 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0Smx9MbD' \
    --userId 'eV2NNaVS' \
    > test.out 2>&1
eval_tap $? 217 'DeleteUserSubscription' test.out

#- 218 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4DoTB6cz' \
    --userId 'rLGiJ0Oo' \
    --force 'false' \
    --body '{"immediate": true, "reason": "BuzjsTyk"}' \
    > test.out 2>&1
eval_tap $? 218 'CancelSubscription' test.out

#- 219 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iysZFb3W' \
    --userId 'h4rR7G4d' \
    --body '{"grantDays": 11, "reason": "1eCjxwya"}' \
    > test.out 2>&1
eval_tap $? 219 'GrantDaysToSubscription' test.out

#- 220 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BliAyjSI' \
    --userId 'vnG7qsA1' \
    --excludeFree 'false' \
    --limit '87' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 220 'GetUserSubscriptionBillingHistories' test.out

#- 221 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Oz7NtZN7' \
    --userId 'k8pVugac' \
    --body '{"additionalData": {"cardSummary": "n4xT641t"}, "authorisedTime": "1991-07-10T00:00:00Z", "chargebackReversedTime": "1998-07-27T00:00:00Z", "chargebackTime": "1999-08-08T00:00:00Z", "chargedTime": "1982-09-01T00:00:00Z", "createdTime": "1978-03-25T00:00:00Z", "currency": {"currencyCode": "dsNWG39p", "currencySymbol": "GdPstzD4", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "PIOJ1KR8"}, "customParameters": {"ZDaPelma": {}, "OSpCtxy7": {}, "dytJMMfO": {}}, "extOrderNo": "vNOxFT2a", "extTxId": "IQ6gGWER", "extUserId": "dpcpzvXi", "issuedAt": "1996-01-24T00:00:00Z", "metadata": {"k7xouAcH": "nqvTzMJu", "OI8fZTid": "0RljYihn", "BwlPj3AS": "YrLRZVKy"}, "namespace": "67xepIvL", "nonceStr": "4OKZEv3L", "paymentMethod": "lXIJWLGO", "paymentMethodFee": 43, "paymentOrderNo": "NGHIcjB8", "paymentProvider": "XSOLLA", "paymentProviderFee": 61, "paymentStationUrl": "zhUvuy99", "price": 40, "refundedTime": "1999-10-18T00:00:00Z", "salesTax": 36, "sandbox": true, "sku": "WACZTbD7", "status": "REFUNDING", "statusReason": "rwDXqooc", "subscriptionId": "HD41RQii", "subtotalPrice": 64, "targetNamespace": "K3KDrPu9", "targetUserId": "GnhaUHGi", "tax": 77, "totalPrice": 60, "totalTax": 54, "txEndTime": "1999-12-04T00:00:00Z", "type": "udfdom2p", "userId": "1vsz4ZLp", "vat": 38}' \
    > test.out 2>&1
eval_tap $? 221 'ProcessUserSubscriptionNotification' test.out

#- 222 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '6CUFk4oE' \
    --namespace $AB_NAMESPACE \
    --userId 'ex5W9XQe' \
    --body '{"count": 3, "orderNo": "2NMRf5wF"}' \
    > test.out 2>&1
eval_tap $? 222 'AcquireUserTicket' test.out

#- 223 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'X7Snp4x6' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserCurrencyWallets' test.out

#- 224 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'KBEjvahb' \
    --namespace $AB_NAMESPACE \
    --userId 's4wHD6W4' \
    --limit '45' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 224 'ListUserCurrencyTransactions' test.out

#- 225 CheckWallet
eval_tap 0 225 'CheckWallet # SKIP deprecated' test.out

#- 226 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '8Ugio0Fb' \
    --namespace $AB_NAMESPACE \
    --userId 'xs13t3My' \
    --body '{"amount": 86, "expireAt": "1995-05-11T00:00:00Z", "origin": "Other", "reason": "yvxDc49w", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 226 'CreditUserWallet' test.out

#- 227 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '9Nyn6hlv' \
    --namespace $AB_NAMESPACE \
    --userId 'CZBsAEjc' \
    --body '{"amount": 64, "walletPlatform": "GooglePlay"}' \
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
    --nextEvaluatedKey 'pdVGFDwJ' \
    --end 'Ehjwycpu' \
    --start 'hj2wPu4Q' \
    > test.out 2>&1
eval_tap $? 235 'SyncOrders' test.out

#- 236 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["ryUaeaLm", "UxtSZMsk", "RGShFLIq"], "apiKey": "rEmiBmU0", "authoriseAsCapture": false, "blockedPaymentMethods": ["Md0PE39f", "xNA40bea", "2GQVzWW1"], "clientKey": "Ag5bzqBf", "dropInSettings": "tOisoQ9n", "liveEndpointUrlPrefix": "q2ypQnIp", "merchantAccount": "4XoVIhbv", "notificationHmacKey": "x8zZZDmR", "notificationPassword": "exSarNBq", "notificationUsername": "KHay5W2Q", "returnUrl": "kNxpftwu", "settings": "laucshaY"}' \
    > test.out 2>&1
eval_tap $? 236 'TestAdyenConfig' test.out

#- 237 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "U0Sh1FAl", "privateKey": "5S3Ex0Rq", "publicKey": "GR0DMCTj", "returnUrl": "yWuZF0Al"}' \
    > test.out 2>&1
eval_tap $? 237 'TestAliPayConfig' test.out

#- 238 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "7rEHVFvv", "secretKey": "LSuncVdI"}' \
    > test.out 2>&1
eval_tap $? 238 'TestCheckoutConfig' test.out

#- 239 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'YxdTj1WU' \
    --region '3epWE8ui' \
    > test.out 2>&1
eval_tap $? 239 'DebugMatchedPaymentMerchantConfig' test.out

#- 240 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "VaTF7f2c", "clientSecret": "qhIV0ilp", "returnUrl": "vxeYJwHx", "webHookId": "V6SFLU3y"}' \
    > test.out 2>&1
eval_tap $? 240 'TestPayPalConfig' test.out

#- 241 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["tyUBJBOt", "X0Sb0loD", "EyuIU9W2"], "publishableKey": "ElaoEsOq", "secretKey": "cT8Jqgkd", "webhookSecret": "I9Swdo9A"}' \
    > test.out 2>&1
eval_tap $? 241 'TestStripeConfig' test.out

#- 242 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "r1n725Jr", "key": "djHxvJCE", "mchid": "nNOGZ7XZ", "returnUrl": "qxTrhBl5"}' \
    > test.out 2>&1
eval_tap $? 242 'TestWxPayConfig' test.out

#- 243 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "FWbGAAdk", "flowCompletionUrl": "hvORQwC6", "merchantId": 95, "projectId": 43, "projectSecretKey": "l3OYCR7A"}' \
    > test.out 2>&1
eval_tap $? 243 'TestXsollaConfig' test.out

#- 244 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'tKCbBh2I' \
    > test.out 2>&1
eval_tap $? 244 'GetPaymentMerchantConfig' test.out

#- 245 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '4OMxVqav' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["VtnqCQYc", "nMYwxi6i", "3yaaUxMV"], "apiKey": "jPRswfgy", "authoriseAsCapture": false, "blockedPaymentMethods": ["M8gMK2Cc", "hNW7XjIF", "3C5kmxRN"], "clientKey": "KBN4NvlP", "dropInSettings": "WQFVQxbD", "liveEndpointUrlPrefix": "wXEL6mXT", "merchantAccount": "zFYzsmOr", "notificationHmacKey": "MmGmnz3k", "notificationPassword": "7DVW39mb", "notificationUsername": "ADQTBqVx", "returnUrl": "Hiom7tME", "settings": "muwtwjQz"}' \
    > test.out 2>&1
eval_tap $? 245 'UpdateAdyenConfig' test.out

#- 246 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'i9wb4w7I' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfigById' test.out

#- 247 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'uWuPGX1F' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "1Tvdtp6r", "privateKey": "wuf5DeJa", "publicKey": "IkZUKmAQ", "returnUrl": "o99MuH30"}' \
    > test.out 2>&1
eval_tap $? 247 'UpdateAliPayConfig' test.out

#- 248 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'W5jIbVC4' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 248 'TestAliPayConfigById' test.out

#- 249 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Fuob8lBF' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "FKbY2Rsr", "secretKey": "ezPWK8n9"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateCheckoutConfig' test.out

#- 250 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'iYubXtZa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfigById' test.out

#- 251 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ed84oHyc' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "p1yr35JP", "clientSecret": "9b7oo9QA", "returnUrl": "yfevJWmI", "webHookId": "uKYQiLgK"}' \
    > test.out 2>&1
eval_tap $? 251 'UpdatePayPalConfig' test.out

#- 252 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'cuxFn9sz' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfigById' test.out

#- 253 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'O6B1UxZF' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["IyTTSwub", "eEbpJqqn", "j0JdQvVl"], "publishableKey": "JIrAsuNg", "secretKey": "wVK0V32h", "webhookSecret": "D4XNslAI"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateStripeConfig' test.out

#- 254 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'EhDMxqZL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 254 'TestStripeConfigById' test.out

#- 255 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'wbdQHh9F' \
    --validate 'false' \
    --body '{"appId": "qSC24HWC", "key": "H7i1Oxmo", "mchid": "CP3WI03d", "returnUrl": "3P8dibhx"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfig' test.out

#- 256 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'CkFHKhY3' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 256 'UpdateWxPayConfigCert' test.out

#- 257 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'CaQzAGYI' \
    > test.out 2>&1
eval_tap $? 257 'TestWxPayConfigById' test.out

#- 258 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'CmHaJN9S' \
    --validate 'true' \
    --body '{"apiKey": "f9kd21ZO", "flowCompletionUrl": "bRl98SLC", "merchantId": 32, "projectId": 61, "projectSecretKey": "QMbpRGkm"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateXsollaConfig' test.out

#- 259 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'fgUwqk5E' \
    > test.out 2>&1
eval_tap $? 259 'TestXsollaConfigById' test.out

#- 260 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '67WzvV6e' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 260 'UpdateXsollaUIConfig' test.out

#- 261 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '70' \
    --namespace 'lHRTlACb' \
    --offset '97' \
    --region 'LGvXWW2V' \
    > test.out 2>&1
eval_tap $? 261 'QueryPaymentProviderConfig' test.out

#- 262 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "UMT7esN9", "region": "ajf0xhLF", "sandboxTaxJarApiToken": "7hNGp8re", "specials": ["CHECKOUT", "WALLET", "ADYEN"], "taxJarApiToken": "Zs7IZW6s", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 262 'CreatePaymentProviderConfig' test.out

#- 263 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 263 'GetAggregatePaymentProviders' test.out

#- 264 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'thaNggIQ' \
    --region 'VRhuVjQ8' \
    > test.out 2>&1
eval_tap $? 264 'DebugMatchedPaymentProviderConfig' test.out

#- 265 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 265 'GetSpecialPaymentProviders' test.out

#- 266 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'whUiaxQZ' \
    --body '{"aggregate": "XSOLLA", "namespace": "4qYiOvUT", "region": "IORRs2OX", "sandboxTaxJarApiToken": "QDafmS4G", "specials": ["ADYEN", "ALIPAY", "XSOLLA"], "taxJarApiToken": "3nEz0SX9", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 266 'UpdatePaymentProviderConfig' test.out

#- 267 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'jVDPxMuz' \
    > test.out 2>&1
eval_tap $? 267 'DeletePaymentProviderConfig' test.out

#- 268 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentTaxConfig' test.out

#- 269 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "BKjU58DJ", "taxJarApiToken": "iWdhlTM4", "taxJarEnabled": false, "taxJarProductCodesMapping": {"HdmByq92": "p9HW8DTR", "rnr348m6": "fgUhWLhn", "6GVzMCms": "AYdEWEuT"}}' \
    > test.out 2>&1
eval_tap $? 269 'UpdatePaymentTaxConfig' test.out

#- 270 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '5UV0PXgH' \
    --end 'pkZbXUmL' \
    --start 'g5ZUE5oX' \
    > test.out 2>&1
eval_tap $? 270 'SyncPaymentOrders' test.out

#- 271 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'qnCp6kS7' \
    --storeId 'ByqMccCi' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRootCategories' test.out

#- 272 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '8ICgE8nJ' \
    --storeId 'ZcAmAc8s' \
    > test.out 2>&1
eval_tap $? 272 'DownloadCategories' test.out

#- 273 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Ol1gSJ3X' \
    --namespace $AB_NAMESPACE \
    --language 'oiARk84V' \
    --storeId 'sTNujq2G' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCategory' test.out

#- 274 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '7mkHjm6C' \
    --namespace $AB_NAMESPACE \
    --language 'BrIMJvqJ' \
    --storeId 'fKjCsPdj' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetChildCategories' test.out

#- 275 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'CR0WO9SR' \
    --namespace $AB_NAMESPACE \
    --language 'uZM3AWWs' \
    --storeId 'UOsw5VPn' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetDescendantCategories' test.out

#- 276 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 276 'PublicListCurrencies' test.out

#- 277 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'a0l9lYDN' \
    --region 'pgCvyZlP' \
    --storeId 'Xg9ckbZa' \
    --appId 'SKLz8D0F' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemByAppId' test.out

#- 278 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'qzICmhZU' \
    --categoryPath 'Z7VszeML' \
    --features 'HvnM2ZJZ' \
    --itemType 'MEDIA' \
    --language 'Jn69B9t4' \
    --limit '91' \
    --offset '72' \
    --region '8tt8AFVB' \
    --sortBy '["name:desc", "updatedAt:desc", "createdAt:asc"]' \
    --storeId 'BZft8v3t' \
    --tags 'aZebejjz' \
    > test.out 2>&1
eval_tap $? 278 'PublicQueryItems' test.out

#- 279 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'PP258Otu' \
    --region 'crNFL6P6' \
    --storeId 'wMdVckTo' \
    --sku 'sdHV55xp' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItemBySku' test.out

#- 280 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'A9rFBJWm' \
    --region 'CE8NAW5U' \
    --storeId 'bRxqWe8B' \
    --itemIds 'cPlBjK4P' \
    > test.out 2>&1
eval_tap $? 280 'PublicBulkGetItems' test.out

#- 281 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["LmfmIMMB", "cbbFpcLC", "ziaTIzyT"]}' \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateItemPurchaseCondition' test.out

#- 282 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '74' \
    --offset '72' \
    --region 'bJGC52Mi' \
    --storeId '6dlGW3J4' \
    --keyword '1JZF6jgy' \
    --language 'ihu8craH' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchItems' test.out

#- 283 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '0MoxQoC2' \
    --namespace $AB_NAMESPACE \
    --language 'JBKfsjLz' \
    --region 'u4qJu6Ta' \
    --storeId '7Al0mwzO' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetApp' test.out

#- 284 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'jFa0Y7Yd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItemDynamicData' test.out

#- 285 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'mld6IAbN' \
    --namespace $AB_NAMESPACE \
    --language 'sb5IY3Wq' \
    --populateBundle 'true' \
    --region 'M2QEvfWw' \
    --storeId 'uCnIltt4' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItem' test.out

#- 286 GetPaymentCustomization
eval_tap 0 286 'GetPaymentCustomization # SKIP deprecated' test.out

#- 287 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "8CPjpJzR", "paymentProvider": "WALLET", "returnUrl": "Xr9CvESV", "ui": "1EnyiO8i", "zipCode": "kpszfKBt"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentUrl' test.out

#- 288 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ldzhye0d' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPaymentMethods' test.out

#- 289 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nTNSWYgW' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUnpaidPaymentOrder' test.out

#- 290 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2E1DhG5x' \
    --paymentProvider 'CHECKOUT' \
    --zipCode '1TfXiSvH' \
    --body '{"token": "qI1Z5g4V"}' \
    > test.out 2>&1
eval_tap $? 290 'Pay' test.out

#- 291 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KSj91N7w' \
    > test.out 2>&1
eval_tap $? 291 'PublicCheckPaymentOrderPaidStatus' test.out

#- 292 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'Vm5fYDYF' \
    > test.out 2>&1
eval_tap $? 292 'GetPaymentPublicConfig' test.out

#- 293 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'ngE2McSE' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetQRCode' test.out

#- 294 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9nVN2Jz2' \
    --foreinginvoice 'BbiDJTjR' \
    --invoiceId '5CEQtlm1' \
    --payload 'sOoVgsNL' \
    --redirectResult '8IVyQQ7R' \
    --resultCode 'Fn57LQ6e' \
    --sessionId 'x2ks5OLG' \
    --status 'LRmXp603' \
    --token '2SRAPwEU' \
    --type 'BjwJt03W' \
    --userId 'ziksprPd' \
    --orderNo 'iOENj7ka' \
    --paymentOrderNo 'FdfC7vQN' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'WmNfS6RC' \
    > test.out 2>&1
eval_tap $? 294 'PublicNormalizePaymentReturnUrl' test.out

#- 295 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'QLCmvf6R' \
    --paymentOrderNo '6ap7YYgU' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 295 'GetPaymentTaxValue' test.out

#- 296 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'gL938vlV' \
    > test.out 2>&1
eval_tap $? 296 'GetRewardByCode' test.out

#- 297 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'wEfgWOxl' \
    --limit '25' \
    --offset '9' \
    --sortBy '["rewardCode:asc", "namespace:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 297 'QueryRewards1' test.out

#- 298 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZEt2jAN4' \
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
    --appIds '["og1oP4qq", "Ts8J1qf3", "2gnPg76T"]' \
    --itemIds '["mtQpywSz", "yVYnYSf4", "j1I4OZ8a"]' \
    --skus '["fG0mVAIT", "0D0aRPMy", "lNV53oyJ"]' \
    > test.out 2>&1
eval_tap $? 300 'PublicExistsAnyMyActiveEntitlement' test.out

#- 301 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'SnWrbEgN' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 302 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'dRY7sItD' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 303 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'LAZJS2po' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 304 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["WXZGJOup", "K2XSCpHq", "RoIztDn5"]' \
    --itemIds '["8lyl8pKE", "KsMDP4HA", "x8JCHSza"]' \
    --skus '["Ljxx4LI6", "du37qAPu", "wRbW7nMA"]' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetEntitlementOwnershipToken' test.out

#- 305 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'vTWxwSYS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'PublicGetMyWallet' test.out

#- 306 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'srg2agtB' \
    --body '{"epicGamesJwtToken": "8hHN5BMH"}' \
    > test.out 2>&1
eval_tap $? 306 'SyncEpicGameDLC' test.out

#- 307 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'g5EOS3er' \
    --body '{"serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 307 'PublicSyncPsnDlcInventory' test.out

#- 308 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '4zwVMgOM' \
    --body '{"appId": "BO6MCRzX", "steamId": "nkFJbSpC"}' \
    > test.out 2>&1
eval_tap $? 308 'SyncSteamDLC' test.out

#- 309 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uhlcvOSl' \
    --body '{"xstsToken": "bWSo2Sih"}' \
    > test.out 2>&1
eval_tap $? 309 'SyncXboxDLC' test.out

#- 310 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'YxEdEcnr' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'WW2XI9el' \
    --features '["RP2Y5ABD", "Zgyzvb3N", "r4ccVwkL"]' \
    --itemId '["xPUIszaJ", "EbajA4Lj", "6cLGmaXw"]' \
    --limit '98' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 310 'PublicQueryUserEntitlements' test.out

#- 311 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'zUWnfGHc' \
    --appId 'xJzbr9Ne' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserAppEntitlementByAppId' test.out

#- 312 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'twB47Q0A' \
    --limit '78' \
    --offset '27' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 312 'PublicQueryUserEntitlementsByAppType' test.out

#- 313 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nA3q9H3u' \
    --entitlementClazz 'APP' \
    --itemId 'ItTnQROo' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementByItemId' test.out

#- 314 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '8xuVtzEB' \
    --entitlementClazz 'APP' \
    --sku '5s20gmyb' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserEntitlementBySku' test.out

#- 315 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Um3u3IGD' \
    --appIds '["HEt1GS88", "qxhm9VSt", "sBELm9ev"]' \
    --itemIds '["X4Lc5HxM", "jWBsEOfG", "l3BKUAbi"]' \
    --skus '["MkbKc826", "Qyu51hzb", "epHe1i5z"]' \
    > test.out 2>&1
eval_tap $? 315 'PublicExistsAnyUserActiveEntitlement' test.out

#- 316 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'fYVkfrL6' \
    --appId 'ujn7dH1I' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dlMkS4wN' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'jmTLSoR8' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 318 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '2lT1lYvm' \
    --ids '["0y98FpmA", "lLHNE2aN", "CXs7bA2G"]' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 319 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uWUjzIGk' \
    --entitlementClazz 'CODE' \
    --sku 'npNKazAD' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 320 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'aCxCWTLd' \
    --namespace $AB_NAMESPACE \
    --userId 'BBs5xlFr' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlement' test.out

#- 321 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'gOLpR1fd' \
    --namespace $AB_NAMESPACE \
    --userId 'rcTVCHIn' \
    --body '{"options": ["zUFPVlrI", "vwPmUZx1", "T7UlxMLy"], "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 321 'PublicConsumeUserEntitlement' test.out

#- 322 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '8qfbppMn' \
    --body '{"code": "157AfjpR", "language": "GIah_rGQV", "region": "xGSheIuj"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicRedeemCode' test.out

#- 323 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'z8MYSvRy' \
    --body '{"excludeOldTransactions": false, "language": "UALS", "productId": "YYsXkZPK", "receiptData": "Vc3fsvOr", "region": "zY8Gn8cv", "transactionId": "Gxv5mSdu"}' \
    > test.out 2>&1
eval_tap $? 323 'PublicFulfillAppleIAPItem' test.out

#- 324 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZGPxgDE8' \
    --body '{"epicGamesJwtToken": "heDXB8xR"}' \
    > test.out 2>&1
eval_tap $? 324 'SyncEpicGamesInventory' test.out

#- 325 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kyhFIOmY' \
    --body '{"autoAck": true, "language": "GABR-xwCr", "orderId": "AfetIWs5", "packageName": "ZR5e9Jl1", "productId": "UzIZP1oR", "purchaseTime": 2, "purchaseToken": "Zsp9qNci", "region": "ggVwFV8j"}' \
    > test.out 2>&1
eval_tap $? 325 'PublicFulfillGoogleIAPItem' test.out

#- 326 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'B1sfIO2V' \
    --body '{"currencyCode": "SGqUS1ih", "price": 0.5785638501860031, "productId": "gwOBR5vM", "serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 326 'PublicReconcilePlayStationStore' test.out

#- 327 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pYdE1lLV' \
    --body '{"appId": "HyDL5LiH", "language": "Vyeh-efiN", "region": "kayDJDLw", "stadiaPlayerId": "fPis88LL"}' \
    > test.out 2>&1
eval_tap $? 327 'SyncStadiaEntitlement' test.out

#- 328 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'a6QXJ8L8' \
    --body '{"appId": "Pr6ra1Er", "currencyCode": "DXcMs3m7", "language": "hj-VZuk", "price": 0.18832109191040047, "productId": "3mvdTibE", "region": "wQ7Lvj3U", "steamId": "PKJsUpAQ"}' \
    > test.out 2>&1
eval_tap $? 328 'SyncSteamInventory' test.out

#- 329 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rAl1e9AR' \
    --body '{"gameId": "n2HltQCK", "language": "xXt-OGCo-gf", "region": "KbzSOgnm"}' \
    > test.out 2>&1
eval_tap $? 329 'SyncTwitchDropsEntitlement' test.out

#- 330 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'r7zJzZdo' \
    --body '{"currencyCode": "3QcZ0dBr", "price": 0.774686029753194, "productId": "uiQN6lYO", "xstsToken": "jNg4GY1B"}' \
    > test.out 2>&1
eval_tap $? 330 'SyncXboxInventory' test.out

#- 331 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'u4yaiZW8' \
    --itemId 'tpRu7TeZ' \
    --limit '5' \
    --offset '95' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 331 'PublicQueryUserOrders' test.out

#- 332 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AW2ppv97' \
    --body '{"currencyCode": "7cr0bQ6F", "discountedPrice": 1, "ext": {"p1JnVq7j": {}, "92d61bVM": {}, "PYLkHsKt": {}}, "itemId": "AOjhM9Uh", "language": "lwaj_akuB_081", "price": 61, "quantity": 47, "region": "bX5WWF7H", "returnUrl": "AGd6j2Qd"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserOrder' test.out

#- 333 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ujjZQIAs' \
    --userId 'ktOEO80g' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserOrder' test.out

#- 334 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qrbmtMbl' \
    --userId 'xW30NF1O' \
    > test.out 2>&1
eval_tap $? 334 'PublicCancelUserOrder' test.out

#- 335 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'aawziBZ7' \
    --userId 'yuzJbPHB' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserOrderHistories' test.out

#- 336 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'oa60xwfc' \
    --userId '1Z183BnS' \
    > test.out 2>&1
eval_tap $? 336 'PublicDownloadUserOrderReceipt' test.out

#- 337 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '8z9yH6Pm' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetPaymentAccounts' test.out

#- 338 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'SAghEvVs' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'A2iYrsSA' \
    > test.out 2>&1
eval_tap $? 338 'PublicDeletePaymentAccount' test.out

#- 339 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '0mOfuAOM' \
    --chargeStatus 'SETUP' \
    --itemId 'yyue1Tu9' \
    --limit '20' \
    --offset '80' \
    --sku '8I2YpePz' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserSubscriptions' test.out

#- 340 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lxDLEVi9' \
    --body '{"currencyCode": "WnDT6lq7", "itemId": "vStTkAF4", "language": "jIbL", "region": "9SIe7tWr", "returnUrl": "AiCxMuGS", "source": "ReKbQdvr"}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSubscribeSubscription' test.out

#- 341 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7Alhz2oD' \
    --itemId 'sxzqxHWe' \
    > test.out 2>&1
eval_tap $? 341 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 342 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gFXlp84s' \
    --userId 'N9DcjPql' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserSubscription' test.out

#- 343 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fS6EiVYy' \
    --userId 'RmZCwEKA' \
    > test.out 2>&1
eval_tap $? 343 'PublicChangeSubscriptionBillingAccount' test.out

#- 344 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i6nZi15O' \
    --userId 'GNjuSBLm' \
    --body '{"immediate": true, "reason": "lNQBq3Vn"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelSubscription' test.out

#- 345 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bYNmdue0' \
    --userId 'I70jhdnG' \
    --excludeFree 'false' \
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserSubscriptionBillingHistories' test.out

#- 346 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '4eeRluhC' \
    --namespace $AB_NAMESPACE \
    --userId 'eqi20vDf' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetWallet' test.out

#- 347 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'VjbgY5n7' \
    --namespace $AB_NAMESPACE \
    --userId 'M6KuSPVd' \
    --limit '76' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 347 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE