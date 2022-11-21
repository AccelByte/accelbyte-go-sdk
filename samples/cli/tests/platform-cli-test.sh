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
echo "1..362"

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
    --body '{"context": {"item": {"appId": "ZCBz4Sme", "appType": "DEMO", "baseAppId": "e1C3J4k8", "boothName": "MLI3EztJ", "boundItemIds": ["JRBvoZa2", "mqpcQEjd", "MukXPH2g"], "categoryPath": "h2ddq6kX", "clazz": "bB0N5C1N", "createdAt": "1971-10-27T00:00:00Z", "description": "FwJBE1q7", "displayOrder": 81, "entitlementType": "DURABLE", "ext": {"Jf2dfR7F": {}, "7ZWQ4c3k": {}, "N6uCYAZg": {}}, "features": ["G7mFo15m", "hNoarhh7", "fyEuLqak"], "fresh": true, "images": [{"as": "q25p8WQA", "caption": "flguGkm6", "height": 52, "imageUrl": "OlqwT0ue", "smallImageUrl": "loUxO0Fr", "width": 15}, {"as": "BLHvedQj", "caption": "El0s2rKp", "height": 5, "imageUrl": "TCfLoaFS", "smallImageUrl": "tc6rGSZP", "width": 94}, {"as": "xScSamXb", "caption": "sBdG2a14", "height": 54, "imageUrl": "79vj6IBc", "smallImageUrl": "8w6xwVWQ", "width": 5}], "itemId": "d8mutdDt", "itemIds": ["HW3sVJCq", "W7V9OWwg", "M9O77KZy"], "itemQty": {"s2Mll0yn": 30, "EQwWJxVP": 8, "eTtdkwEF": 36}, "itemType": "APP", "language": "1iL4fU0s", "listable": true, "localExt": {"j0wUrD8U": {}, "L7QUWzFw": {}, "41vSW9eh": {}}, "longDescription": "r3YV4YVA", "lootBoxConfig": {"rewardCount": 88, "rewards": [{"lootBoxItems": [{"count": 70, "itemId": "antHfIgO", "itemSku": "1vQHVH2A", "itemType": "WId5e2f6"}, {"count": 55, "itemId": "oFL9mUf1", "itemSku": "lluLpRtW", "itemType": "Rd1Yh5XV"}, {"count": 88, "itemId": "yCn2uDyL", "itemSku": "e2z2C20M", "itemType": "r3O831Uv"}], "name": "oBhP7L7y", "odds": 0.5749116811396725, "type": "REWARD", "weight": 96}, {"lootBoxItems": [{"count": 57, "itemId": "VgA9tQIY", "itemSku": "3MnTg7oA", "itemType": "szMoPdOS"}, {"count": 3, "itemId": "A1exIfjL", "itemSku": "bmTocc1I", "itemType": "Wi5ubtto"}, {"count": 53, "itemId": "numcOvGX", "itemSku": "R4xwls1c", "itemType": "yVd6P4MI"}], "name": "H53eXzYg", "odds": 0.5567146379184742, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 93, "itemId": "sPdN81JU", "itemSku": "2nV6EF9O", "itemType": "Mow5RuSG"}, {"count": 60, "itemId": "h1Jsayye", "itemSku": "nw7pfvkv", "itemType": "6b0Mxjj0"}, {"count": 65, "itemId": "A3PyJgWV", "itemSku": "PHAD7p2J", "itemType": "aD8jCmcH"}], "name": "YWqvTKi0", "odds": 0.432112888686344, "type": "PROBABILITY_GROUP", "weight": 13}]}, "maxCount": 52, "maxCountPerUser": 72, "name": "NuFw7grd", "namespace": "8vU3wjGe", "optionBoxConfig": {"boxItems": [{"count": 68, "itemId": "vKdlZb9l", "itemSku": "8mG1AcR4", "itemType": "QsQcp4ob"}, {"count": 81, "itemId": "HFYwhIZY", "itemSku": "dNkuqZZ0", "itemType": "FfoI51Bi"}, {"count": 49, "itemId": "61sPeQoM", "itemSku": "X666eoVy", "itemType": "W3nksyg3"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 85, "comparison": "isNot", "name": "0izLv63M", "predicateType": "SeasonPassPredicate", "value": "7o7OtqCQ", "values": ["pgREWeGl", "p2lRHZC9", "FYPXx4kR"]}, {"anyOf": 27, "comparison": "excludes", "name": "wwtQ8CkA", "predicateType": "EntitlementPredicate", "value": "5e7DwvbL", "values": ["ogU7611t", "Hk5QwLhf", "qAi1VwyL"]}, {"anyOf": 12, "comparison": "isNot", "name": "Xw045QDe", "predicateType": "SeasonPassPredicate", "value": "I7R2FqA7", "values": ["9IIRLdfu", "bcGWUYLe", "IfsbfJ1l"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "isGreaterThan", "name": "9rYoXVO1", "predicateType": "SeasonPassPredicate", "value": "D0HDBxfA", "values": ["cWmkuYu2", "ymKWWAoQ", "CXXo22be"]}, {"anyOf": 91, "comparison": "isNot", "name": "sXEtuB1r", "predicateType": "EntitlementPredicate", "value": "D3Kp1NdO", "values": ["qeh2JZiu", "HrvqzM9M", "N25zfMfS"]}, {"anyOf": 53, "comparison": "isLessThan", "name": "ZK8dyxw0", "predicateType": "EntitlementPredicate", "value": "GEmxEvnW", "values": ["r6y1ysTY", "uBP0GGdC", "DPmN2LF9"]}]}, {"operator": "or", "predicates": [{"anyOf": 46, "comparison": "is", "name": "lWqWtZ6P", "predicateType": "EntitlementPredicate", "value": "4YPr8pZa", "values": ["3wMRK6B1", "qyjQ03PQ", "SAigFaM2"]}, {"anyOf": 36, "comparison": "isLessThan", "name": "oC2lQ5l6", "predicateType": "SeasonPassPredicate", "value": "2TSB8wie", "values": ["ywm3DI4d", "9aDokV0p", "giCLaWie"]}, {"anyOf": 48, "comparison": "is", "name": "QNUg3Gmv", "predicateType": "SeasonTierPredicate", "value": "rN1tiNWj", "values": ["xqYAnGUW", "8M6RPy1o", "6FdY9yYT"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 87, "fixedTrialCycles": 94, "graceDays": 92}, "region": "Clh7nuPY", "regionData": [{"currencyCode": "yZVhhAYV", "currencyNamespace": "bxFvdC6j", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1990-05-11T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1996-05-29T00:00:00Z", "discountedPrice": 80, "expireAt": "1988-05-09T00:00:00Z", "price": 92, "purchaseAt": "1989-08-25T00:00:00Z", "trialPrice": 34}, {"currencyCode": "Co4THb3e", "currencyNamespace": "sVLB6zw4", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1983-10-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1977-08-29T00:00:00Z", "discountedPrice": 72, "expireAt": "1981-06-20T00:00:00Z", "price": 29, "purchaseAt": "1985-05-18T00:00:00Z", "trialPrice": 78}, {"currencyCode": "mN7dXpDC", "currencyNamespace": "f4dL2Xtp", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1980-01-18T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1971-12-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1978-10-03T00:00:00Z", "price": 98, "purchaseAt": "1990-06-04T00:00:00Z", "trialPrice": 88}], "seasonType": "PASS", "sku": "G4aooaYl", "stackable": true, "status": "INACTIVE", "tags": ["JsBo8sJX", "cRMGMLlT", "yn78kTRe"], "targetCurrencyCode": "VYyQM3M6", "targetItemId": "p8G0IxUF", "targetNamespace": "975H3MIr", "thumbnailUrl": "TpqoZUB9", "title": "au7xiAvc", "updatedAt": "1973-01-21T00:00:00Z", "useCount": 14}, "namespace": "RnEJerCe", "order": {"currency": {"currencyCode": "woBD1qV8", "currencySymbol": "cXLdSSTt", "currencyType": "VIRTUAL", "decimals": 51, "namespace": "ylfEFemf"}, "ext": {"a2toZHfI": {}, "PHhet5ev": {}, "pyOyTHDo": {}}, "free": false}, "source": "ACHIEVEMENT"}, "script": "4adUw6Mn", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'Rq3jODzB' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'gnpqLDPE' \
    --body '{"grantDays": "inFAwO0w"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'RKjsPkew' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'VPu8Qm6g' \
    --body '{"grantDays": "guAslPC2"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "oTNZYwka", "dryRun": false, "fulfillmentUrl": "uqTBx5bN", "itemType": "BUNDLE", "purchaseConditionUrl": "5jjv3Lo0"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'uW1ZRa1H' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'EcdeDEzD' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'SwdkyfxV' \
    --body '{"clazz": "Zq4sK76S", "dryRun": false, "fulfillmentUrl": "GsfUvFNX", "purchaseConditionUrl": "KDg9Tyht"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Q5xFqMlI' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --name 'mqU3sTj3' \
    --offset '24' \
    --tag 'zZTyBnja' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BvO9qsoy", "items": [{"extraSubscriptionDays": 65, "itemId": "e3Rj1ksn", "itemName": "3P13JP6O", "quantity": 62}, {"extraSubscriptionDays": 22, "itemId": "9X9ypYex", "itemName": "Afm5k6DC", "quantity": 74}, {"extraSubscriptionDays": 21, "itemId": "cWq8tphh", "itemName": "YKvRdUEH", "quantity": 55}], "maxRedeemCountPerCampaignPerUser": 94, "maxRedeemCountPerCode": 54, "maxRedeemCountPerCodePerUser": 24, "maxSaleCount": 0, "name": "9VB9vBIU", "redeemEnd": "1997-05-01T00:00:00Z", "redeemStart": "1989-02-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["xfYx4yyQ", "SpFygpll", "cuZD41p2"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'J8VeKHbY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'aZcRIrWP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HVvuaoZn", "items": [{"extraSubscriptionDays": 9, "itemId": "aauSIkyu", "itemName": "6I5sDB3v", "quantity": 86}, {"extraSubscriptionDays": 30, "itemId": "ZFHPjWX6", "itemName": "hredPHLj", "quantity": 48}, {"extraSubscriptionDays": 42, "itemId": "KO4OnELf", "itemName": "G877FHUD", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 7, "maxRedeemCountPerCode": 58, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 73, "name": "6zpuGtzH", "redeemEnd": "1993-05-30T00:00:00Z", "redeemStart": "1989-01-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["SgOSzncl", "2Ce7RDIU", "YZ9QQh4i"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'z2tV2HLA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'NPxmDlSz' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'f8AV0xsm' \
    --body '{"categoryPath": "PQmDH4JW", "localizationDisplayNames": {"96KlKbt3": "yapWLjtG", "lGpqSoDu": "ToHatGud", "zwPlMP9Q": "PZHJ2BJW"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'o3zUWw3z' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'wV3C7wf6' \
    --namespace $AB_NAMESPACE \
    --storeId 'dnSBS5sA' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'UBZUmrta' \
    --namespace $AB_NAMESPACE \
    --storeId 'fJSJZo9z' \
    --body '{"localizationDisplayNames": {"zUNys40p": "wmj9Kzat", "rZvfuDZH": "gWjOX9z0", "5VcepNgW": "TTQnB0jQ"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'EwkKVONu' \
    --namespace $AB_NAMESPACE \
    --storeId 'VvBbkOdT' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'HX17PiKW' \
    --namespace $AB_NAMESPACE \
    --storeId 'Hz0hDBF1' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'SbdkPLl1' \
    --namespace $AB_NAMESPACE \
    --storeId 'eq4xqeiD' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'bpp8f9YJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '15' \
    --code 'mAdeWo22' \
    --limit '42' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'fIznnNV4' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 73}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'TbsXN6IS' \
    --namespace $AB_NAMESPACE \
    --batchNo '67' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'SG9CLlCc' \
    --namespace $AB_NAMESPACE \
    --batchNo '45' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '6aPvizEk' \
    --namespace $AB_NAMESPACE \
    --batchNo '40' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'XaDfLhYb' \
    --namespace $AB_NAMESPACE \
    --code 'yVzwwvdo' \
    --limit '8' \
    --offset '38' \
    --userId 'VFyOotYu' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'skUo5Jhd' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'FUopjxjN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'hb7j2sDE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "g6CbKB3t", "currencySymbol": "c2MGhGvj", "currencyType": "VIRTUAL", "decimals": 59, "localizationDescriptions": {"HNvJogoc": "IGemorg6", "MZ92OYMV": "Vz4IiaJ6", "S5GhKHLY": "9t6jtYpY"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 's9cB5RPH' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"oaNeb5Ct": "Sgvnu7Gd", "yYjKBFc9": "3IMJw7bY", "YGbfM3cv": "mIzFa4CZ"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'oZ0cuREx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'akbPN8TI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'XB0xQ3Gj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetCurrencySummary' test.out

#- 42 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetDLCItemConfig' test.out

#- 43 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "7MmsLrwj", "rewards": [{"currency": {"currencyCode": "abkAz7OW", "namespace": "OkV8pxJ3"}, "item": {"itemId": "mC6y5nFX", "itemSku": "PzK3gnoP", "itemType": "9HC6MoW6"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZohAoEao", "namespace": "nFf6WVcV"}, "item": {"itemId": "7eCUxgCa", "itemSku": "PrGUQoIn", "itemType": "pD0QcrpA"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "rAtFaEGJ", "namespace": "O4Fl8hx5"}, "item": {"itemId": "I9nyDXn1", "itemSku": "T0vAjmhq", "itemType": "EcXO3K4f"}, "quantity": 5, "type": "ITEM"}]}, {"id": "Gia6qkR7", "rewards": [{"currency": {"currencyCode": "DwQXXj2C", "namespace": "aUDganWN"}, "item": {"itemId": "V7Sev8Yx", "itemSku": "Q2ZaROfy", "itemType": "uBKi0tXB"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "zEBUgW6X", "namespace": "LaTX2Zjx"}, "item": {"itemId": "bSLmpmSi", "itemSku": "1RkjEfac", "itemType": "l5UApPwg"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "9sN9fVYQ", "namespace": "WPITT24h"}, "item": {"itemId": "IomYumjz", "itemSku": "Eu0gKuPj", "itemType": "ATRmHE9c"}, "quantity": 7, "type": "ITEM"}]}, {"id": "jxEjfns2", "rewards": [{"currency": {"currencyCode": "utuI2e8q", "namespace": "L8K1PNvH"}, "item": {"itemId": "dNlAdtRc", "itemSku": "5IKTgNL0", "itemType": "yqTKtpIG"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "wlEE17T0", "namespace": "bkOS26b7"}, "item": {"itemId": "6bJHqt23", "itemSku": "FhAlUX7J", "itemType": "NIeKZdUu"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "Tc2nhWd1", "namespace": "aUV7K7Ex"}, "item": {"itemId": "9O1Etnqo", "itemSku": "IgBcPMkM", "itemType": "4xAaUw6b"}, "quantity": 53, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateDLCItemConfig' test.out

#- 44 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteDLCItemConfig' test.out

#- 45 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetPlatformDLCConfig' test.out

#- 46 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"gQ2Tvdnd": "9uw1wr7S", "oAU0wL1J": "YhKd4nxl", "UkSYjQmC": "vSWWsDU8"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"B1MPOuKB": "WaMiBvWA", "I7p88OPD": "Co7X59Qi", "UtHfq6ix": "yvWJrs21"}}, {"platform": "STEAM", "platformDlcIdMap": {"BWk72nlc": "d0BIaqeP", "aY8cRxio": "osO5PTyX", "KA3m5H6h": "cAk6SaDp"}}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdatePlatformDLCConfig' test.out

#- 47 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeletePlatformDLCConfig' test.out

#- 48 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName 'XsWReFzs' \
    --itemId '["lyH1pPvG", "bOgKjjGd", "yz5nCctF"]' \
    --limit '18' \
    --offset '91' \
    --userId 'pKGfufVt' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'tsoXlFDJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '79' \
    --status 'SUCCESS' \
    --userId 'RPNL301S' \
    > test.out 2>&1
eval_tap $? 50 'QueryFulfillmentHistories' test.out

#- 51 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetAppleIAPConfig' test.out

#- 52 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "m21eP1Th", "password": "YZJx2Ang"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateAppleIAPConfig' test.out

#- 53 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'DeleteAppleIAPConfig' test.out

#- 54 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetEpicGamesIAPConfig' test.out

#- 55 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "UKMV0fN5"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateEpicGamesIAPConfig' test.out

#- 56 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteEpicGamesIAPConfig' test.out

#- 57 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetGoogleIAPConfig' test.out

#- 58 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "OVflbsTX", "serviceAccountId": "zGmNbKka"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGoogleIAPConfig' test.out

#- 59 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteGoogleIAPConfig' test.out

#- 60 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGoogleP12File' test.out

#- 61 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetIAPItemConfig' test.out

#- 62 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "JUvoMRQ3", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"vgwSUZL3": "5vH9GVoT", "eOA246r0": "zx2o2mKz", "NM21oZ23": "XiGjKHhA"}}, {"itemIdentity": "aiECd0dK", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7Hp5frzA": "Pinadty5", "0RCW3U3a": "9GQXWmon", "PstS28dI": "KYoB6hop"}}, {"itemIdentity": "MaQawPvp", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"UJMaRTGv": "dgjFvmY8", "IQ8lNOXV": "zBl19pCY", "7ynm5yQK": "rqWw45uE"}}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateIAPItemConfig' test.out

#- 63 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteIAPItemConfig' test.out

#- 64 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetPlayStationIAPConfig' test.out

#- 65 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "rj5q9D9Z"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdatePlaystationIAPConfig' test.out

#- 66 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeletePlaystationIAPConfig' test.out

#- 67 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStadiaIAPConfig' test.out

#- 68 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteStadiaIAPConfig' test.out

#- 69 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 69 'UpdateStadiaJsonConfigFile' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "sx2I8Hdv", "publisherAuthenticationKey": "LM8OSaWY"}' \
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
    --body '{"clientId": "YibIuZkO", "clientSecret": "L2MKMXu7", "organizationId": "minDSo5D"}' \
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
    --body '{"relyingPartyCert": "6Rlbtzy3"}' \
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
    --password 'SFXZAIrj' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'XBysFHjI' \
    --itemId 'dqAYXs8H' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'LYykJ7bn' \
    --startTime 'TrkH8X68' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'IIeWLmE5' \
    --itemId 'qUlXo4FR' \
    --itemType 'BUNDLE' \
    --endTime 'A4BsZW3t' \
    --startTime '5afT8pN2' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bfOJjWky' \
    --body '{"categoryPath": "tWgBYJvc", "targetItemId": "97HIlwB1", "targetNamespace": "cjZKPZw3"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'meoSPB4Q' \
    --body '{"appId": "svLp9mRy", "appType": "SOFTWARE", "baseAppId": "FdBn3k7f", "boothName": "q5Le0V6N", "categoryPath": "vWeF0lwU", "clazz": "EvZy44yz", "displayOrder": 63, "entitlementType": "DURABLE", "ext": {"Chq513Wa": {}, "j1Ewsld6": {}, "Xbbu3Ozg": {}}, "features": ["wfbqXR1h", "zziEVz41", "Z3aRg0jt"], "images": [{"as": "RhRW0HRU", "caption": "Qz8vCeCI", "height": 1, "imageUrl": "8QrBgphl", "smallImageUrl": "Cll18298", "width": 15}, {"as": "hcYlSmAI", "caption": "QWVjqeLy", "height": 68, "imageUrl": "aJwXCoDT", "smallImageUrl": "ZlErKo35", "width": 20}, {"as": "VPC6s9pv", "caption": "cX5QQk68", "height": 59, "imageUrl": "F7mxT2yw", "smallImageUrl": "w1nv13gW", "width": 43}], "itemIds": ["yeNJh4tI", "KXXOO3UH", "cFbsmqYe"], "itemQty": {"fvvB02Tr": 64, "BTQ0PEET": 69, "s7N2rDaJ": 13}, "itemType": "EXTENSION", "listable": true, "localizations": {"mFpRozgN": {"description": "OeykOYAr", "localExt": {"4URuZGD7": {}, "eBHo76Ox": {}, "Es0MZnDg": {}}, "longDescription": "0zBwMXJw", "title": "xlHlgB5X"}, "Ckvl8O31": {"description": "rS0zHAnD", "localExt": {"FtrRejU3": {}, "PQ1nKrnb": {}, "lc3ebxdO": {}}, "longDescription": "LMTu2NQF", "title": "SgIo3xdb"}, "kjbiiwxN": {"description": "fv8DSiVa", "localExt": {"u8iA1B1R": {}, "Kl3fKTSb": {}, "iPm0OzIw": {}}, "longDescription": "SuaAFEbz", "title": "kGxBHw36"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 14, "itemId": "3aZbDMHo", "itemSku": "VFp0BAAq", "itemType": "0rWvLliP"}, {"count": 53, "itemId": "TJ4d6VrR", "itemSku": "0rvJDPSV", "itemType": "mzSYafDk"}, {"count": 0, "itemId": "z1bhH91u", "itemSku": "BaahENck", "itemType": "h05mZsMU"}], "name": "bOymvMCX", "odds": 0.14075524540553364, "type": "PROBABILITY_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 67, "itemId": "t9nnUSzQ", "itemSku": "IHUmjY7V", "itemType": "StNBtQK9"}, {"count": 67, "itemId": "U2YsQjGk", "itemSku": "jiOFWvNu", "itemType": "CGor54t3"}, {"count": 13, "itemId": "5JSBVXU1", "itemSku": "JnJPwr9j", "itemType": "Zg4jyDrW"}], "name": "7nPBXRiX", "odds": 0.6621170368548595, "type": "PROBABILITY_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 92, "itemId": "lhMR2R6m", "itemSku": "JEELULDG", "itemType": "syuG3yuy"}, {"count": 91, "itemId": "wKKPd804", "itemSku": "xEHiozFO", "itemType": "WEFE8Hms"}, {"count": 89, "itemId": "3hKpS57A", "itemSku": "H1eDaIqI", "itemType": "3yLWgdwB"}], "name": "olooNju9", "odds": 0.40888918131981933, "type": "REWARD", "weight": 45}]}, "maxCount": 46, "maxCountPerUser": 11, "name": "UrGj0y4q", "optionBoxConfig": {"boxItems": [{"count": 7, "itemId": "Aqr7ZSfN", "itemSku": "XLHBruog", "itemType": "TlPbze0s"}, {"count": 96, "itemId": "Gqji51kU", "itemSku": "yzXJfkgp", "itemType": "eEFqVMeZ"}, {"count": 46, "itemId": "zEgapkvA", "itemSku": "wjGwrBF6", "itemType": "IkPuJug4"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 29, "fixedTrialCycles": 30, "graceDays": 86}, "regionData": {"oADNpYsd": [{"currencyCode": "sag6csQs", "currencyNamespace": "qxwHQBpW", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1974-12-11T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1993-02-21T00:00:00Z", "discountedPrice": 62, "expireAt": "1981-04-13T00:00:00Z", "price": 23, "purchaseAt": "1976-08-09T00:00:00Z", "trialPrice": 74}, {"currencyCode": "l2VEix1X", "currencyNamespace": "LNpJwrdX", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1987-08-06T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1994-10-12T00:00:00Z", "discountedPrice": 52, "expireAt": "1985-11-13T00:00:00Z", "price": 82, "purchaseAt": "1982-10-09T00:00:00Z", "trialPrice": 25}, {"currencyCode": "GopcQXro", "currencyNamespace": "E04APr6C", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1998-04-21T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1984-03-28T00:00:00Z", "discountedPrice": 77, "expireAt": "1984-10-08T00:00:00Z", "price": 98, "purchaseAt": "1976-07-04T00:00:00Z", "trialPrice": 88}], "tgHqmUJ5": [{"currencyCode": "dQWPdBzK", "currencyNamespace": "6iqMbx1K", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1994-10-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1996-07-29T00:00:00Z", "discountedPrice": 16, "expireAt": "1975-02-01T00:00:00Z", "price": 33, "purchaseAt": "1997-03-18T00:00:00Z", "trialPrice": 54}, {"currencyCode": "FmKiZs7e", "currencyNamespace": "HOHfrHYu", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1977-08-29T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1988-12-09T00:00:00Z", "discountedPrice": 1, "expireAt": "1989-11-25T00:00:00Z", "price": 100, "purchaseAt": "1999-07-09T00:00:00Z", "trialPrice": 63}, {"currencyCode": "23LolJyl", "currencyNamespace": "CSI0G7ni", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1979-04-14T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1985-06-14T00:00:00Z", "discountedPrice": 32, "expireAt": "1983-01-18T00:00:00Z", "price": 74, "purchaseAt": "1982-06-02T00:00:00Z", "trialPrice": 5}], "m9aSCXdc": [{"currencyCode": "PODQ71VW", "currencyNamespace": "TNRml8PJ", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1978-06-16T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1986-05-05T00:00:00Z", "discountedPrice": 13, "expireAt": "1979-06-08T00:00:00Z", "price": 42, "purchaseAt": "1998-02-21T00:00:00Z", "trialPrice": 83}, {"currencyCode": "r7zqEgmh", "currencyNamespace": "IL8x8ff8", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1992-05-23T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1990-07-30T00:00:00Z", "discountedPrice": 45, "expireAt": "1984-04-14T00:00:00Z", "price": 58, "purchaseAt": "1975-03-30T00:00:00Z", "trialPrice": 55}, {"currencyCode": "2DR9DkaR", "currencyNamespace": "n6kRPv3z", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1993-08-01T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1976-01-04T00:00:00Z", "discountedPrice": 30, "expireAt": "1998-07-03T00:00:00Z", "price": 23, "purchaseAt": "1974-08-19T00:00:00Z", "trialPrice": 37}]}, "seasonType": "TIER", "sku": "TQrnDxMa", "stackable": true, "status": "INACTIVE", "tags": ["7vcDbvrj", "g9AstsTs", "JKtun6jR"], "targetCurrencyCode": "Am3VDvZk", "targetNamespace": "HuB8k0e2", "thumbnailUrl": "GZRb8ecw", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'U3dvXDgG' \
    --appId 'xPKiaN5h' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate '4rnGYh47' \
    --baseAppId 'bJdOeYNU' \
    --categoryPath 'tVnuPyYS' \
    --features 'nRlynQva' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '74' \
    --offset '48' \
    --region '20CbMKVD' \
    --sortBy '["name", "displayOrder:asc"]' \
    --storeId '03PQDCIy' \
    --tags 'D6xJV0wY' \
    --targetNamespace '8BBB8hGE' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["UDcyBAXN", "emBxC6mE", "nl7AFJIs"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'f1ywvaiR' \
    --sku 'cfaS0v04' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '5MYdjIfi' \
    --populateBundle 'false' \
    --region 'yNeL0MIq' \
    --storeId 'D79Jzxu4' \
    --sku 'ruXKNZkR' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0ZoZq6ah' \
    --sku 'FrUL0EcN' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["Ly9OzYYG", "VbVnGXQu", "h3TJ1E7s"]' \
    --storeId '1aZ2scjf' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MiOLxwdI' \
    --region 'xV4VPuBY' \
    --storeId '2lXCVAoj' \
    --itemIds 'MrEBiOzr' \
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
    --userId 'Bso544ew' \
    --body '{"itemIds": ["mOAfzuFs", "qGDaRsRs", "WA86Wde0"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '75' \
    --offset '59' \
    --sortBy 'Gghp2Z90' \
    --storeId 'UzLmz91Q' \
    --keyword 'TemUi7uw' \
    --language 'VbCT3Tt5' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '28' \
    --offset '87' \
    --sortBy '["updatedAt", "createdAt:asc"]' \
    --storeId 'Z0LXf0h3' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'GqTrawMq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'oHzRPDB6' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'I0cf48y9' \
    --namespace $AB_NAMESPACE \
    --storeId 'c1xgvI6L' \
    --body '{"appId": "KZGQPnpd", "appType": "DLC", "baseAppId": "1Y1m3Rsi", "boothName": "GGOIEeQv", "categoryPath": "798dIlXo", "clazz": "VKnQVfIK", "displayOrder": 67, "entitlementType": "DURABLE", "ext": {"lf7IwGjb": {}, "i9zXWo1C": {}, "z7gVgITR": {}}, "features": ["80ZjFN7X", "J97wDC3P", "ggsUOo6v"], "images": [{"as": "FrphVdJG", "caption": "6Iqg7hWY", "height": 64, "imageUrl": "HQt2dKcg", "smallImageUrl": "V18ijZJc", "width": 100}, {"as": "XrVeCTsJ", "caption": "uMbRRmvR", "height": 87, "imageUrl": "lvSTPpy9", "smallImageUrl": "tsFTYQBF", "width": 9}, {"as": "Q6VQKCSP", "caption": "Tuoro3bS", "height": 61, "imageUrl": "EkUZAPYt", "smallImageUrl": "1faT6L5H", "width": 62}], "itemIds": ["VoytfF2y", "11PgS6Sn", "jPo4WrCE"], "itemQty": {"L5u28f1k": 82, "e5ODJqHS": 5, "5Nfg49gT": 45}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"03LxbvyN": {"description": "0IeeMBtU", "localExt": {"oRzNsDg2": {}, "g1TWlWcr": {}, "XZ8uu0nK": {}}, "longDescription": "CjqQHfYs", "title": "ZypPsRWA"}, "xt1oOIZu": {"description": "QNXCw58I", "localExt": {"E05YEPym": {}, "6zlX3EIB": {}, "5fAAT6Vj": {}}, "longDescription": "QeWVBtLd", "title": "tsWvVVvR"}, "YzuPxb4z": {"description": "0F4BdvCf", "localExt": {"BDN3LTaS": {}, "xcKLJjAk": {}, "iuqLJEMV": {}}, "longDescription": "9aX9iaWR", "title": "3BdG2bSg"}}, "lootBoxConfig": {"rewardCount": 4, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "9AC5lWWp", "itemSku": "WckqKn7P", "itemType": "uwU5uMqJ"}, {"count": 5, "itemId": "artTgv5L", "itemSku": "uV6sUNxy", "itemType": "aK5Oms62"}, {"count": 6, "itemId": "yzLTpeBq", "itemSku": "wYgjQkzo", "itemType": "5H1I76aw"}], "name": "Fr8qeI1d", "odds": 0.8456842244288828, "type": "REWARD", "weight": 80}, {"lootBoxItems": [{"count": 23, "itemId": "hlHkZO1o", "itemSku": "l3h2LsFB", "itemType": "nJ75jS7o"}, {"count": 50, "itemId": "pKMaW3G6", "itemSku": "ElHgE37q", "itemType": "kqORtKG2"}, {"count": 64, "itemId": "OVTF0eRn", "itemSku": "VvEYVcC5", "itemType": "2afuXSVz"}], "name": "KtIneznN", "odds": 0.2791661720432972, "type": "PROBABILITY_GROUP", "weight": 31}, {"lootBoxItems": [{"count": 84, "itemId": "i9eIWeD7", "itemSku": "w2jH4QJw", "itemType": "2MVTYLCm"}, {"count": 23, "itemId": "seRcvgl4", "itemSku": "ldlLLwgy", "itemType": "OGsLnA6R"}, {"count": 2, "itemId": "yGc4zf1U", "itemSku": "6T660bHi", "itemType": "9AUNVYNX"}], "name": "Tbw7M5wB", "odds": 0.5616003318957933, "type": "REWARD", "weight": 65}]}, "maxCount": 92, "maxCountPerUser": 82, "name": "G7SwYHrv", "optionBoxConfig": {"boxItems": [{"count": 16, "itemId": "kNV0Hce4", "itemSku": "ilNkWSpD", "itemType": "rhICZDMi"}, {"count": 45, "itemId": "MpavuTA3", "itemSku": "ghhFOScD", "itemType": "LAxqgLwZ"}, {"count": 9, "itemId": "YJEq63xP", "itemSku": "IBe3Bd5g", "itemType": "StI4w08M"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 83, "fixedTrialCycles": 97, "graceDays": 7}, "regionData": {"LNVP5Zq2": [{"currencyCode": "j0QKl8lm", "currencyNamespace": "YC8uMe7z", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1985-08-13T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1999-10-10T00:00:00Z", "discountedPrice": 86, "expireAt": "1996-01-06T00:00:00Z", "price": 35, "purchaseAt": "1980-10-17T00:00:00Z", "trialPrice": 66}, {"currencyCode": "VM979XNL", "currencyNamespace": "1k2WcEDD", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1981-11-11T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1995-12-27T00:00:00Z", "discountedPrice": 19, "expireAt": "1980-09-19T00:00:00Z", "price": 3, "purchaseAt": "1990-04-09T00:00:00Z", "trialPrice": 35}, {"currencyCode": "tDDcLSfe", "currencyNamespace": "5Ls5eSFr", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1983-05-08T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1977-11-18T00:00:00Z", "discountedPrice": 42, "expireAt": "1998-09-05T00:00:00Z", "price": 43, "purchaseAt": "1999-04-17T00:00:00Z", "trialPrice": 97}], "jqLdw580": [{"currencyCode": "rdax3RI0", "currencyNamespace": "euqA2prl", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1995-09-19T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-03-17T00:00:00Z", "discountedPrice": 37, "expireAt": "1974-08-26T00:00:00Z", "price": 54, "purchaseAt": "1974-11-14T00:00:00Z", "trialPrice": 74}, {"currencyCode": "jJ1QH6HW", "currencyNamespace": "37TDollb", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1997-05-06T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1979-10-30T00:00:00Z", "discountedPrice": 65, "expireAt": "1991-01-27T00:00:00Z", "price": 20, "purchaseAt": "1993-05-04T00:00:00Z", "trialPrice": 93}, {"currencyCode": "sa6CGYLg", "currencyNamespace": "TpNU5gI8", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1974-07-31T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-06-22T00:00:00Z", "discountedPrice": 69, "expireAt": "1976-01-13T00:00:00Z", "price": 67, "purchaseAt": "1974-11-24T00:00:00Z", "trialPrice": 93}], "rlrzF7lX": [{"currencyCode": "3SsmY0kv", "currencyNamespace": "ConeCeCf", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1971-01-14T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1979-10-19T00:00:00Z", "discountedPrice": 8, "expireAt": "1984-11-05T00:00:00Z", "price": 97, "purchaseAt": "1971-09-07T00:00:00Z", "trialPrice": 79}, {"currencyCode": "lclzaQYr", "currencyNamespace": "UiTsOYSq", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1981-07-26T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1990-03-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1997-02-08T00:00:00Z", "price": 100, "purchaseAt": "1986-11-09T00:00:00Z", "trialPrice": 18}, {"currencyCode": "ll6sT1x5", "currencyNamespace": "50dSN9pB", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1999-10-20T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1990-12-16T00:00:00Z", "discountedPrice": 55, "expireAt": "1996-02-25T00:00:00Z", "price": 33, "purchaseAt": "1991-03-19T00:00:00Z", "trialPrice": 4}]}, "seasonType": "PASS", "sku": "UtQU5iGH", "stackable": true, "status": "INACTIVE", "tags": ["pWOPGQ7R", "7M1NleCF", "aT5FNy13"], "targetCurrencyCode": "JEQHRbxP", "targetNamespace": "7HhbrWJA", "thumbnailUrl": "Y30YSBtS", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'e4lvP95o' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'JapQpFwv' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'dUjiSdpO' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "unYOWlBp"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'O5ZD3OPz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'uFwysaAw' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'w6rQukoF' \
    --namespace $AB_NAMESPACE \
    --storeId 'vzZaOG6X' \
    --body '{"carousel": [{"alt": "kbaUN0zo", "previewUrl": "NIU8SiGl", "thumbnailUrl": "gud7ef3c", "type": "image", "url": "3IPzwD26", "videoSource": "vimeo"}, {"alt": "rJcNrYb0", "previewUrl": "R2w8aAg0", "thumbnailUrl": "hGJIRSCI", "type": "video", "url": "gaIVAVcm", "videoSource": "generic"}, {"alt": "qPM4XOys", "previewUrl": "qunyWuwQ", "thumbnailUrl": "1qsTe1Bv", "type": "video", "url": "Esl3EhWP", "videoSource": "youtube"}], "developer": "41n5LY6Y", "forumUrl": "swIxRjen", "genres": ["Simulation", "MassivelyMultiplayer", "Action"], "localizations": {"q8oxU0k6": {"announcement": "WEYErWpJ", "slogan": "7YAgm9Kk"}, "ydWVCfSS": {"announcement": "p8lZ03mp", "slogan": "TX5lhBmm"}, "Xi2VvE6U": {"announcement": "8TPXK76W", "slogan": "Gq64ck5C"}}, "platformRequirements": {"CzeKsUaM": [{"additionals": "JOORXAiT", "directXVersion": "LwGWwhzt", "diskSpace": "bZbEJCw1", "graphics": "N6ss6Elo", "label": "3xg6S9fz", "osVersion": "bF7jinWu", "processor": "eZDxFdOa", "ram": "KaWS84Kn", "soundCard": "eOa8FotQ"}, {"additionals": "Q7GxujKo", "directXVersion": "OamtqU9g", "diskSpace": "WNL52y8R", "graphics": "bt5UeLyj", "label": "goEwzoFq", "osVersion": "1GBMFv8x", "processor": "HuF4q5Ka", "ram": "Uz92rteT", "soundCard": "n36oG6Dq"}, {"additionals": "GI3WIIOK", "directXVersion": "lTxL35ll", "diskSpace": "ElANbO2V", "graphics": "1qQDFxj9", "label": "HfCWMgjz", "osVersion": "LeDVjVSR", "processor": "kG5raxnc", "ram": "erfDv95P", "soundCard": "1R6BfxlU"}], "ufuAfzBm": [{"additionals": "XkaaA0xb", "directXVersion": "g8kzz96W", "diskSpace": "oe5N9bAR", "graphics": "YreWwXrk", "label": "RGxwYzzY", "osVersion": "8RgGPjis", "processor": "feG1PeHw", "ram": "dPIAdXZU", "soundCard": "JSlN2zEc"}, {"additionals": "XHfpQ2V6", "directXVersion": "khLjuvUd", "diskSpace": "jpSKhuK6", "graphics": "T34rSCJQ", "label": "0R7TxNS1", "osVersion": "BjwAhYir", "processor": "G0jxGslN", "ram": "BVP9StWD", "soundCard": "AvhA4SBx"}, {"additionals": "yvmY9kfY", "directXVersion": "PU1nCWr7", "diskSpace": "EvnwqLgI", "graphics": "6a93FlXa", "label": "MFEwEtTf", "osVersion": "dyW1AHLm", "processor": "VPC9gZ9p", "ram": "gr2Tlvp2", "soundCard": "w938RStT"}], "I8R05Oju": [{"additionals": "1W0JSifP", "directXVersion": "9Bpob2UI", "diskSpace": "NCwDY5Wh", "graphics": "Xlj7yf9x", "label": "Zi0CZIvh", "osVersion": "IdGQ5lmP", "processor": "SILoFP4y", "ram": "Acm6JwQE", "soundCard": "rA3oyzLq"}, {"additionals": "HX6XOfuD", "directXVersion": "KeVWUQYK", "diskSpace": "kJgRkQgj", "graphics": "7NZi08lY", "label": "kv9B3z08", "osVersion": "niH22IDL", "processor": "mj2dkhcC", "ram": "rpiR422F", "soundCard": "4bHOVNgO"}, {"additionals": "V0UcozhB", "directXVersion": "vm5pSnhQ", "diskSpace": "d7Z9fVel", "graphics": "uwKhnaPs", "label": "tKCFZObB", "osVersion": "S3rJkIZa", "processor": "c3SiEWTj", "ram": "CPIBvnaW", "soundCard": "VGcRdnbW"}]}, "platforms": ["Windows", "Android", "IOS"], "players": ["MMO", "Coop", "Coop"], "primaryGenre": "RPG", "publisher": "UP5gn1LE", "releaseDate": "1980-01-31T00:00:00Z", "websiteUrl": "avKK0nCW"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'rwOznBCG' \
    --namespace $AB_NAMESPACE \
    --storeId 'coS6u4Zq' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'T3YsZPWo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '4833XJS6' \
    --namespace $AB_NAMESPACE \
    --storeId '1lISSVdU' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'u1c3r97i' \
    --itemId '5nTEXWw6' \
    --namespace $AB_NAMESPACE \
    --storeId 'E98xAlkA' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'AjbIX0mx' \
    --itemId 'KWgxlrBr' \
    --namespace $AB_NAMESPACE \
    --storeId 'ylV4BqHo' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'U83UJleI' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '6vRwdUeu' \
    --populateBundle 'false' \
    --region 'Dn21qZJV' \
    --storeId 'Gac7EG9O' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'AlN3TVO9' \
    --namespace $AB_NAMESPACE \
    --storeId '4SPQGTGx' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 28, "comparison": "isGreaterThan", "name": "wehwFJKQ", "predicateType": "EntitlementPredicate", "value": "Jy6WiWxb", "values": ["ZHtA197m", "Jqw0AETC", "d1H3bZzn"]}, {"anyOf": 41, "comparison": "includes", "name": "0zrIO0AS", "predicateType": "SeasonPassPredicate", "value": "Ot1mTcQz", "values": ["DDSNaVCi", "oRbtbIh4", "3lUyIf1T"]}, {"anyOf": 5, "comparison": "isNot", "name": "wzHa3AmU", "predicateType": "EntitlementPredicate", "value": "P6B0RDu6", "values": ["S9w1Puzu", "lyGTtiu3", "Mv7UJ2tH"]}]}, {"operator": "and", "predicates": [{"anyOf": 96, "comparison": "is", "name": "iUeP34G8", "predicateType": "SeasonTierPredicate", "value": "FhTgGNup", "values": ["QyRQdwVl", "NMdcZpxX", "HFmfS1hd"]}, {"anyOf": 46, "comparison": "isGreaterThanOrEqual", "name": "KQoFlYE3", "predicateType": "EntitlementPredicate", "value": "eSHKnbgl", "values": ["qaGGdLwh", "GINH8Hg2", "URjRMAKc"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "M486bzrX", "predicateType": "EntitlementPredicate", "value": "GJdCBtgi", "values": ["iPnkxaaH", "Ww3fyvZ6", "yRn1mOav"]}]}, {"operator": "or", "predicates": [{"anyOf": 70, "comparison": "isLessThanOrEqual", "name": "cszAjdrO", "predicateType": "SeasonPassPredicate", "value": "1VnbvpZg", "values": ["puCzAq5p", "aqOKRCWc", "Bmq8dTO5"]}, {"anyOf": 33, "comparison": "isGreaterThan", "name": "vu0U5aLu", "predicateType": "EntitlementPredicate", "value": "1WEXPM4S", "values": ["MYLjCEbm", "ECtB59mW", "FXVXPdJX"]}, {"anyOf": 11, "comparison": "excludes", "name": "ykIPk3Tv", "predicateType": "SeasonPassPredicate", "value": "eHqPLzyy", "values": ["0K3Czc8I", "tVzmDYxR", "Xrf1398Y"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '0L8xK2Y5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "EI2erwyK"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --name '49hsp4CB' \
    --offset '94' \
    --tag 'RVlsix0U' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "U6TysykR", "name": "Huf3Jzka", "status": "ACTIVE", "tags": ["RMuEcV2q", "IsykjaW5", "AkWDwXYw"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'x3bbdRJl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '7cD5lmE9' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "n9mkPnKl", "name": "mnmhDZP1", "status": "INACTIVE", "tags": ["nvUy7My3", "SKodqghP", "vXyPCfjX"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'S6T57kIj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'CJKo36ea' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '36' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'dtMYLkkU' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'gmMy8CCV' \
    --limit '16' \
    --offset '59' \
    --orderNos '["Vl5PsKVL", "mQtI2T01", "KFlgXmNZ"]' \
    --sortBy 'OBun9LrI' \
    --startTime 'CKae4oak' \
    --status 'CHARGEBACK' \
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
    --orderNo '6U5H0vIF' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kmausYxY' \
    --body '{"description": "HdjS7TO1"}' \
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
    --body '{"dryRun": false, "notifyUrl": "UiK3R8uM", "privateKey": "yyRBU4GE"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'uRTqOVdk' \
    --externalId 'alYX1Afd' \
    --limit '7' \
    --notificationSource 'STRIPE' \
    --notificationType '9yZCUVQd' \
    --offset '20' \
    --paymentOrderNo 'MEIvOoa8' \
    --startDate '272gVMDG' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'NjWbvVkz' \
    --limit '79' \
    --offset '23' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ZuQ2gUkp", "currencyNamespace": "Mr0Mmk8n", "customParameters": {"1lFp2A9j": {}, "H81oNldF": {}, "TfS9CHNh": {}}, "description": "3MTOzneC", "extOrderNo": "ntE10x0s", "extUserId": "qOq9PTM0", "itemType": "APP", "language": "YuNB", "metadata": {"gz582iJc": "Q2UJlUVP", "SPsrvsr8": "xzHDUVBe", "1rZrsYjl": "UVkumvSe"}, "notifyUrl": "AAiZZgLP", "omitNotification": true, "platform": "vahDoHsb", "price": 14, "recurringPaymentOrderNo": "9s7kVqxR", "region": "lX95uoz7", "returnUrl": "arsqAQQq", "sandbox": false, "sku": "T87z0Gl7", "subscriptionId": "VMrrWdmX", "targetNamespace": "44SYuGx6", "targetUserId": "5h2Gcw1F", "title": "MMZBPUkO"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'vLeDzaLL' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '59C9mC1s' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'q5nvfTHP' \
    --body '{"extTxId": "0JZ7BR1a", "paymentMethod": "00gMXdCL", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0iUXdrp7' \
    --body '{"description": "u5pX3HHe"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nfJtCsLM' \
    --body '{"amount": 0, "currencyCode": "NfVIf3T2", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 47, "vat": 17}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sL040btz' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["IOS", "IOS", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Xgz0ZbNq", "eventTopic": "GfX5oF2I", "maxAwarded": 41, "maxAwardedPerUser": 61, "namespaceExpression": "Rd5Nxc43", "rewardCode": "JFAufpYf", "rewardConditions": [{"condition": "VwGcjZBY", "conditionName": "qiLqzvmY", "eventName": "lnrehYyv", "rewardItems": [{"duration": 25, "itemId": "7KN5nvcz", "quantity": 91}, {"duration": 10, "itemId": "R72Ex1Hj", "quantity": 10}, {"duration": 59, "itemId": "uKhXTs9V", "quantity": 25}]}, {"condition": "0ObjNOfn", "conditionName": "5MJsHEaa", "eventName": "mYcMsznZ", "rewardItems": [{"duration": 12, "itemId": "9CWFsGfw", "quantity": 51}, {"duration": 94, "itemId": "6L4PiOZL", "quantity": 100}, {"duration": 96, "itemId": "qwEv2EkW", "quantity": 70}]}, {"condition": "SFE9qhEw", "conditionName": "uJK6G66v", "eventName": "2JXvnVaY", "rewardItems": [{"duration": 36, "itemId": "82NmC35z", "quantity": 72}, {"duration": 14, "itemId": "bGR3t1eq", "quantity": 63}, {"duration": 74, "itemId": "6oAtVcMx", "quantity": 85}]}], "userIdExpression": "HP5INW8x"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'DCgQaZAG' \
    --limit '59' \
    --offset '76' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 137 'QueryRewards' test.out

#- 138 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'ExportRewards' test.out

#- 139 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '02bBpJ8n' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pbj2aAVo' \
    --body '{"description": "BHXBjQDU", "eventTopic": "nB6yglvi", "maxAwarded": 56, "maxAwardedPerUser": 44, "namespaceExpression": "kxuQe1nq", "rewardCode": "jEjMx1Fn", "rewardConditions": [{"condition": "lSmZ2AcP", "conditionName": "nPUWWg8C", "eventName": "Rv8B52Ad", "rewardItems": [{"duration": 18, "itemId": "Ngo89jeW", "quantity": 48}, {"duration": 66, "itemId": "7mQtAmYG", "quantity": 50}, {"duration": 33, "itemId": "wp5mPKOd", "quantity": 34}]}, {"condition": "H4c75k9k", "conditionName": "Ycf9F6wR", "eventName": "BSQe1yOQ", "rewardItems": [{"duration": 87, "itemId": "FzoNXdrF", "quantity": 80}, {"duration": 94, "itemId": "9mSzBIu4", "quantity": 7}, {"duration": 39, "itemId": "UuTdDzN6", "quantity": 17}]}, {"condition": "ieKb7jzG", "conditionName": "H6S67tzu", "eventName": "QgsiyzCh", "rewardItems": [{"duration": 53, "itemId": "bL4euaY2", "quantity": 89}, {"duration": 23, "itemId": "qyNWxmt1", "quantity": 74}, {"duration": 17, "itemId": "onje3nb0", "quantity": 63}]}], "userIdExpression": "Ry6LqQUY"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '87bO4CCy' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'tfka5Kad' \
    --body '{"payload": {"Mu2KG2kZ": {}, "9LW9rSis": {}, "XA9RRMau": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'aJ7Oa3IF' \
    --body '{"conditionName": "OUwLe5lq", "userId": "7PPq3cJm"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteRewardConditionRecord' test.out

#- 145 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'ListStores' test.out

#- 146 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "EPdA4Bnl", "defaultRegion": "H61SJVo1", "description": "zQuCNc8W", "supportedLanguages": ["owQWs66l", "8OuilbQR", "RxzFYf5I"], "supportedRegions": ["Joozkhf0", "HpopRue2", "AIImUe0c"], "title": "cwQPxyC1"}' \
    > test.out 2>&1
eval_tap $? 146 'CreateStore' test.out

#- 147 ImportStore
eval_tap 0 147 'ImportStore # SKIP deprecated' test.out

#- 148 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetPublishedStore' test.out

#- 149 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'DeletePublishedStore' test.out

#- 150 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 150 'GetPublishedStoreBackup' test.out

#- 151 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'RollbackPublishedStore' test.out

#- 152 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TmLVfL0O' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'CJ2sG89V' \
    --body '{"defaultLanguage": "7engiyE4", "defaultRegion": "0r8RlDPJ", "description": "ldQuKMwd", "supportedLanguages": ["7Q1MmZKp", "1mkOWet5", "EYLIr3Bt"], "supportedRegions": ["2Z4u2d9G", "NeneVT9M", "pWNWCDHq"], "title": "EE1Ld3IZ"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'khzxfC3l' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ANOoc1iA' \
    --action 'UPDATE' \
    --itemSku 'JmV0HchP' \
    --itemType 'CODE' \
    --limit '88' \
    --offset '99' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'u0GtuWtn' \
    --updatedAtStart 'yCM2JwSm' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'L5x5g0Wl' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '1YzSamVp' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '0NKZsXU9' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'HSouisdF' \
    --action 'UPDATE' \
    --itemSku 'oRuAD3Xo' \
    --itemType 'EXTENSION' \
    --type 'ITEM' \
    --updatedAtEnd 'kXsx4G8x' \
    --updatedAtStart 'ruqYEFvF' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '1srSmTZI' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'dS9zFaEF' \
    --namespace $AB_NAMESPACE \
    --storeId '3QQJgX8c' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '8ayD7w0z' \
    --namespace $AB_NAMESPACE \
    --storeId 'm1DHmDCp' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '3Efsk9Nf' \
    --targetStoreId 'xSvZ6JdR' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId '62sfJAOD' \
    --limit '8' \
    --offset '82' \
    --sku 'aViQsoHK' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'PzrsGT1i' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LvVJjGVk' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pqRYxeqI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'uHkQjRdq' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ZYnjlzQn"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'tmFhNWly' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kApJ8QqA' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 23, "orderNo": "bwXc0YQH"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'J4PE7chZ' \
    --body '{"achievements": [{"id": "DLLbWGbv", "value": 78}, {"id": "xPORrOpj", "value": 42}, {"id": "xm197S9n", "value": 72}], "steamUserId": "FKiaBsB1"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'av3mK0Pr' \
    --xboxUserId '7vhWq2Fe' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'pdRwAxO8' \
    --body '{"achievements": [{"id": "fvSde19m", "percentComplete": 83}, {"id": "Ic2HKRfH", "percentComplete": 61}, {"id": "nHGgsoFQ", "percentComplete": 64}], "serviceConfigId": "uMuJ67RX", "titleId": "q6k3LxR8", "xboxUserId": "ai8IymcM"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'p0YakMMO' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'onMA4mhu' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'GS1iYolM' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'P0MVLFVR' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'OPP1HBA4' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'W7RYAVAk' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'xwsQmoFQ' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'hImmCJJ9' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Jbj59M9s' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName '1g3pjUCe' \
    --features '["UCX0HVBx", "92wF6u6Y", "ZYMXBvzk"]' \
    --itemId '["MwFJLIq0", "hZWMR6LW", "zU1wHTzA"]' \
    --limit '82' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mroFIEm9' \
    --body '[{"endDate": "1982-05-01T00:00:00Z", "grantedCode": "AvayZBZV", "itemId": "SEXXOiiN", "itemNamespace": "CkbWr8YC", "language": "MR-NK", "quantity": 87, "region": "5fxB1Q8y", "source": "ACHIEVEMENT", "startDate": "1985-07-08T00:00:00Z", "storeId": "ml171lre"}, {"endDate": "1983-02-05T00:00:00Z", "grantedCode": "IDIY9NQO", "itemId": "cNLLx9zE", "itemNamespace": "265k2fqo", "language": "Mgtg_hj", "quantity": 43, "region": "SfNfiG3m", "source": "IAP", "startDate": "1988-09-14T00:00:00Z", "storeId": "QhP7EFZb"}, {"endDate": "1998-12-10T00:00:00Z", "grantedCode": "CYZySZ8a", "itemId": "9qf5d1Lt", "itemNamespace": "OzopJdoe", "language": "kYd-765", "quantity": 9, "region": "q4LFe3wg", "source": "REDEEM_CODE", "startDate": "1995-03-15T00:00:00Z", "storeId": "0mRTj5wu"}]' \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JvWPQvJb' \
    --activeOnly 'false' \
    --appId 'abjrdXw5' \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'TW7bIfSr' \
    --activeOnly 'false' \
    --limit '26' \
    --offset '33' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Z81nhfAK' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'pOV30IEC' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'JjlBUkst' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --sku 'mAaYo9Ah' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hR7GiF52' \
    --appIds '["QvY40tLm", "DWfDfuwh", "YykKLUsX"]' \
    --itemIds '["Wkg7Vs5a", "Sd7ysX6X", "HA7ZfIBN"]' \
    --skus '["r2MylgjY", "Hw9PCBNO", "IuaZq7wN"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'P1EAU90w' \
    --itemIds '["VfL2RXNk", "HdK2Oanm", "6nlWnnFM"]' \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BxQgeIFs' \
    --appId 'cOgKJIs8' \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PLuHGFxK' \
    --entitlementClazz 'APP' \
    --itemId '8TTkBH8q' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Hxi994pQ' \
    --ids '["ChCkTRm7", "elOTBvpv", "K9g7rCsE"]' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oVsmIcZX' \
    --entitlementClazz 'CODE' \
    --sku 'fNQCYD5E' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'xjC1ggP5' \
    --entitlementIds 'FUxhovNZ' \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'yNwCUrJa' \
    --namespace $AB_NAMESPACE \
    --userId 'MkE3pVDb' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'iIkez2S2' \
    --namespace $AB_NAMESPACE \
    --userId 'ERztLwRU' \
    --body '{"endDate": "1975-11-22T00:00:00Z", "nullFieldList": ["RHJbOFPj", "tZepVXqV", "3VkNdXs6"], "startDate": "1999-06-21T00:00:00Z", "status": "ACTIVE", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'y5Y3oKS2' \
    --namespace $AB_NAMESPACE \
    --userId '3BqUHjux' \
    --body '{"options": ["5j1QkGvB", "Wc6ngHMs", "rNkk1gTp"], "requestId": "JLVpDOwb", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'jxryO0zh' \
    --namespace $AB_NAMESPACE \
    --userId 'mKeawFLu' \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'efCNYGm8' \
    --namespace $AB_NAMESPACE \
    --userId 'PzdbP5PK' \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'xwON73GR' \
    --namespace $AB_NAMESPACE \
    --userId 'U3m9cX1j' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '5B9ER4Uf' \
    --namespace $AB_NAMESPACE \
    --userId '6OUo2BM6' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'qED2hHtx' \
    --body '{"duration": 91, "endDate": "1998-08-11T00:00:00Z", "itemId": "1sujubp9", "itemSku": "WvwiO1IG", "language": "CUijmVyi", "order": {"currency": {"currencyCode": "ZelPetSH", "currencySymbol": "dxRR8sa7", "currencyType": "VIRTUAL", "decimals": 8, "namespace": "avgVmZOJ"}, "ext": {"Y0U4dwEd": {}, "7M0lR6b4": {}, "t7xmcqBf": {}}, "free": false}, "orderNo": "8K8We8ow", "origin": "Steam", "quantity": 54, "region": "mTWQLyFe", "source": "ACHIEVEMENT", "startDate": "1999-02-05T00:00:00Z", "storeId": "wdQ0O9wP"}' \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'vYXkl1Tu' \
    --body '{"code": "BGYcydUL", "language": "lma", "region": "fjf9TKOb"}' \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'wGPF5G9v' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "SavZfxKu", "namespace": "CsjZA1xt"}, "item": {"itemId": "7PY1C7yk", "itemSku": "07lXXtec", "itemType": "x2TyJo58"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "0pCUetkQ", "namespace": "vq8fgbw9"}, "item": {"itemId": "NPVqpSys", "itemSku": "nhox8JzD", "itemType": "Xj6Ok0BI"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "kH1ag9v5", "namespace": "Ua0r4Gp1"}, "item": {"itemId": "cRUifsOJ", "itemSku": "Wad5awO2", "itemType": "0PCAkGbP"}, "quantity": 27, "type": "CURRENCY"}], "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ad3vezGe' \
    --endTime 'x0bDydWR' \
    --limit '40' \
    --offset '5' \
    --productId 'I6dnsMvA' \
    --startTime 'Kx071fIu' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xeYkhB2e' \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '23e4BZba' \
    --endTime 'OK2m24BH' \
    --limit '77' \
    --offset '94' \
    --startTime '12jnYS8g' \
    --status 'FAIL' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'pmMdBbm7' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "MhA", "productId": "Ry40zxHS", "region": "sfrTLhxH", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'zwteFSqE' \
    --itemId 'UP2lXI1M' \
    --limit '38' \
    --offset '92' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MXJi7j1n' \
    --body '{"currencyCode": "Nu4SMklx", "currencyNamespace": "yr3fBSdK", "discountedPrice": 38, "ext": {"5zGrvkKQ": {}, "WlZheZ0V": {}, "F7hJaArz": {}}, "itemId": "OpmVOe1u", "language": "zTy4OHV6", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 14, "quantity": 84, "region": "IlFnwC50", "returnUrl": "CGMDa9lU", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'uUgodwMY' \
    --itemId 'I4vHKMrV' \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ctsOfdyu' \
    --userId 'jVx5yngs' \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'P7F0FSTF' \
    --userId 'dxTzo6Y1' \
    --body '{"status": "FULFILLED", "statusReason": "UFMBxbDw"}' \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IbmiA9FD' \
    --userId 'C8uXGJzu' \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'kOEcMmrb' \
    --userId 'xbaG3atq' \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '73ZCwxun' \
    --userId 'A8z158y9' \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'OzPd7M3s' \
    --userId 'bDVlTOI9' \
    --body '{"additionalData": {"cardSummary": "IXwIWzQl"}, "authorisedTime": "1998-09-01T00:00:00Z", "chargebackReversedTime": "1977-02-12T00:00:00Z", "chargebackTime": "1981-02-20T00:00:00Z", "chargedTime": "1999-06-21T00:00:00Z", "createdTime": "1984-02-07T00:00:00Z", "currency": {"currencyCode": "GeVO3ozj", "currencySymbol": "C725mL7X", "currencyType": "REAL", "decimals": 21, "namespace": "nbPs2xNs"}, "customParameters": {"awkEmYts": {}, "6hJfp1FW": {}, "5aShtjS2": {}}, "extOrderNo": "8AUYotqj", "extTxId": "8sSEqUDZ", "extUserId": "o8NF5Q0Q", "issuedAt": "1989-10-13T00:00:00Z", "metadata": {"OGxt0G6T": "ZxEpSIl3", "5AL3EUDb": "sWwPGNzS", "zp0mJWZg": "x6mF10YY"}, "namespace": "mkBd43sn", "nonceStr": "MRUG4LQl", "paymentMethod": "MfnJlhir", "paymentMethodFee": 50, "paymentOrderNo": "j1AOCDcU", "paymentProvider": "XSOLLA", "paymentProviderFee": 22, "paymentStationUrl": "CuzW0tyn", "price": 100, "refundedTime": "1974-02-28T00:00:00Z", "salesTax": 81, "sandbox": true, "sku": "AESTWWL2", "status": "REFUND_FAILED", "statusReason": "iXrePXAa", "subscriptionId": "stkkhP6J", "subtotalPrice": 15, "targetNamespace": "OCo4RyAO", "targetUserId": "cW18rP0b", "tax": 7, "totalPrice": 93, "totalTax": 28, "txEndTime": "1972-06-23T00:00:00Z", "type": "K3VTxWlM", "userId": "gFhYfWgI", "vat": 61}' \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'WvofyvQx' \
    --userId 'DAxh7TwL' \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'icV3EfRT' \
    --body '{"currencyCode": "y09Xt0Z8", "currencyNamespace": "aGf3EnTv", "customParameters": {"jIFLrsjd": {}, "Cn8rR56Z": {}, "ygfZWBlp": {}}, "description": "xXc0E3I8", "extOrderNo": "Se6XQesq", "extUserId": "R49c7QJV", "itemType": "MEDIA", "language": "RDbY-aLCR_651", "metadata": {"WmSXf8BL": "9mvCf5Bi", "WdUsWAnG": "RWvIjAwQ", "dK86iAlp": "flk0Wl50"}, "notifyUrl": "YyNbymCW", "omitNotification": false, "platform": "aSDjAxFr", "price": 66, "recurringPaymentOrderNo": "M5Wyc4w1", "region": "5HZOulpy", "returnUrl": "qU1Ix5uy", "sandbox": true, "sku": "6sTpFSfD", "subscriptionId": "GXxKscGw", "title": "NFUp9C3v"}' \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TTJvlCsH' \
    --userId 'fTTJDnAl' \
    --body '{"description": "4jbiSTf5"}' \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Th9KH5It' \
    --body '{"code": "omNvMdHa", "orderNo": "cujQOBU5"}' \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'eGOgfoSf' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '1xXuwoKr' \
    --limit '96' \
    --offset '53' \
    --sku '2v7kUihd' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'cvfYUpx6' \
    --excludeSystem 'false' \
    --limit '90' \
    --offset '60' \
    --subscriptionId 'FD6qqZNa' \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'VkvxNeqU' \
    --body '{"grantDays": 13, "itemId": "IXXLZ3rM", "language": "cbQmJnOh", "reason": "m89shElq", "region": "C7fB1HFa", "source": "hVnzPhH0"}' \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'CapHypCu' \
    --itemId 'W7i0wtH9' \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WZlIN4UH' \
    --userId 'V78yhf7h' \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ctqImviC' \
    --userId 'twi8TCsD' \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'W3LIhhaH' \
    --userId 'mGAWpuSj' \
    --force 'false' \
    --body '{"immediate": true, "reason": "7hxrn0WW"}' \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qjCnDFiB' \
    --userId 'FyeoLyOq' \
    --body '{"grantDays": 57, "reason": "ObXAWz3p"}' \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qm6DJ41z' \
    --userId 'rREa9k2e' \
    --excludeFree 'true' \
    --limit '12' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kY5R51IF' \
    --userId '0dOXu3Al' \
    --body '{"additionalData": {"cardSummary": "Zu8zp0C0"}, "authorisedTime": "1976-10-23T00:00:00Z", "chargebackReversedTime": "1987-04-19T00:00:00Z", "chargebackTime": "1974-08-15T00:00:00Z", "chargedTime": "1980-04-02T00:00:00Z", "createdTime": "1979-08-06T00:00:00Z", "currency": {"currencyCode": "DuZtCPBs", "currencySymbol": "FcIbGv6l", "currencyType": "REAL", "decimals": 3, "namespace": "0VNi6V7p"}, "customParameters": {"8pTa4nEh": {}, "vMcXGm8M": {}, "IbzQt9yQ": {}}, "extOrderNo": "v3WurOdS", "extTxId": "rbdCXmNX", "extUserId": "Y8X8S3VB", "issuedAt": "1992-01-24T00:00:00Z", "metadata": {"JgzErm1J": "9xorTQ5K", "BGxOU1ht": "ABfq0wZs", "sHdQCICP": "igtoXJKQ"}, "namespace": "yk95HEBA", "nonceStr": "ezsWuo0N", "paymentMethod": "AKLGw5uQ", "paymentMethodFee": 6, "paymentOrderNo": "8RP8DEbQ", "paymentProvider": "PAYPAL", "paymentProviderFee": 16, "paymentStationUrl": "5eIgTpmf", "price": 58, "refundedTime": "1994-06-28T00:00:00Z", "salesTax": 32, "sandbox": false, "sku": "Yc6UDnUb", "status": "AUTHORISE_FAILED", "statusReason": "QGVfite9", "subscriptionId": "jVRgV135", "subtotalPrice": 80, "targetNamespace": "qvBqRL3m", "targetUserId": "GwWoSugK", "tax": 66, "totalPrice": 9, "totalTax": 16, "txEndTime": "1985-04-29T00:00:00Z", "type": "nmjyx7HF", "userId": "gmYrBA4M", "vat": 84}' \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '8RmZ6wu9' \
    --namespace $AB_NAMESPACE \
    --userId 'Lh0zYfHw' \
    --body '{"count": 94, "orderNo": "oHbravnM"}' \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '14FwZwus' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Ds7fQZ8k' \
    --namespace $AB_NAMESPACE \
    --userId 'c3bkW6rU' \
    --limit '63' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'BcNNu5E2' \
    --namespace $AB_NAMESPACE \
    --userId 'GSBigjH6' \
    --body '{"amount": 65, "expireAt": "1991-05-27T00:00:00Z", "origin": "System", "reason": "d0UbkKls", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'MpdN9BrT' \
    --namespace $AB_NAMESPACE \
    --userId 'NNrNazNa' \
    --body '{"amount": 96, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 237 'PayWithUserWallet' test.out

#- 238 GetUserWallet
eval_tap 0 238 'GetUserWallet # SKIP deprecated' test.out

#- 239 DebitUserWallet
eval_tap 0 239 'DebitUserWallet # SKIP deprecated' test.out

#- 240 DisableUserWallet
eval_tap 0 240 'DisableUserWallet # SKIP deprecated' test.out

#- 241 EnableUserWallet
eval_tap 0 241 'EnableUserWallet # SKIP deprecated' test.out

#- 242 ListUserWalletTransactions
eval_tap 0 242 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 243 QueryWallets
eval_tap 0 243 'QueryWallets # SKIP deprecated' test.out

#- 244 GetWallet
eval_tap 0 244 'GetWallet # SKIP deprecated' test.out

#- 245 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '8QuyOywt' \
    --end 'nJVa5PNY' \
    --start 'gB7wMcHM' \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["SbEmF7s2", "yr8Vseuz", "RA1qfdFp"], "apiKey": "3huZXvWE", "authoriseAsCapture": true, "blockedPaymentMethods": ["fpDWbqM2", "kI7cCrp4", "Z0eAtFsN"], "clientKey": "bkxKv0xt", "dropInSettings": "6uRkWdDq", "liveEndpointUrlPrefix": "gVnJGpjS", "merchantAccount": "RViacGht", "notificationHmacKey": "FJ4evwx1", "notificationPassword": "aLjHurlG", "notificationUsername": "GfLMyTA9", "returnUrl": "HtQ9DcZr", "settings": "EZUGi3j5"}' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "TqdmXjWq", "privateKey": "JoxveoKY", "publicKey": "83r6zBKg", "returnUrl": "RAWhfhe7"}' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "aY8zwg5B", "secretKey": "QpUgXHMs"}' \
    > test.out 2>&1
eval_tap $? 248 'TestCheckoutConfig' test.out

#- 249 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'kkHnfcva' \
    --region 'sTKK1536' \
    > test.out 2>&1
eval_tap $? 249 'DebugMatchedPaymentMerchantConfig' test.out

#- 250 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "Xhxdmyqp", "clientSecret": "4aDNFmJf", "returnUrl": "jE7poJ8d", "webHookId": "ZJT6E8Ec"}' \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["R8FeP5Xz", "Rxuck0HN", "K9sOehDl"], "publishableKey": "yCz7xy2T", "secretKey": "PQxLov69", "webhookSecret": "NBYanpCS"}' \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "JtoqGt7F", "key": "kyJcSfYI", "mchid": "63DGbqbS", "returnUrl": "uzKADN08"}' \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "vxSsjeUE", "flowCompletionUrl": "KBYYPUI5", "merchantId": 32, "projectId": 82, "projectSecretKey": "0QyBKXJJ"}' \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'QmErk2ar' \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'Evimdey8' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["QkLy45nm", "Hr2K6mKM", "UXqgvGH4"], "apiKey": "TEUJVdcF", "authoriseAsCapture": true, "blockedPaymentMethods": ["LK9Dh1wT", "OLI0ESNb", "24MVRQOB"], "clientKey": "iOh6wGWX", "dropInSettings": "pN5ton0b", "liveEndpointUrlPrefix": "mmIrlIp4", "merchantAccount": "UwLkGzP9", "notificationHmacKey": "mtWxlLWE", "notificationPassword": "IsbwvJwP", "notificationUsername": "fwdHDW80", "returnUrl": "VaKAqu7F", "settings": "7oOjXq9h"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'FEi8GJMX' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'FhOnLrAV' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "wvdHWF7J", "privateKey": "ACzaP0rI", "publicKey": "YAufLfVU", "returnUrl": "u1ihYhxP"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '7qOOH5mM' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'i43br63g' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "PCWKNm3z", "secretKey": "nLKkqTQw"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '9HSM6CHx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '7XZT9Zrz' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "Pf4ZWZLI", "clientSecret": "yM3ft2kv", "returnUrl": "WTXOFjoL", "webHookId": "7ORWvIXd"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '38nAvcth' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'gq813k7q' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["v1C1lAFV", "uWpuXUXq", "FIHlr2qu"], "publishableKey": "bJ1Q4CR2", "secretKey": "0vrj4a5j", "webhookSecret": "s6vkhyPr"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'NMcCe1tm' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'X75z8qcs' \
    --validate 'true' \
    --body '{"appId": "W47D4qy5", "key": "iGcb6zkT", "mchid": "NSYIqRb3", "returnUrl": "OoS21ymo"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '2JZ1n11c' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'xaolRhGs' \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'PRWL2h0q' \
    --validate 'false' \
    --body '{"apiKey": "ggAPPMku", "flowCompletionUrl": "AdfGMgZo", "merchantId": 4, "projectId": 96, "projectSecretKey": "yVxfSPlX"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '4BqONa0p' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'HpYegOVu' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaUIConfig' test.out

#- 271 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '72' \
    --namespace 'gxmwUbew' \
    --offset '35' \
    --region '8LyP96YG' \
    > test.out 2>&1
eval_tap $? 271 'QueryPaymentProviderConfig' test.out

#- 272 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "BRFMo6Hl", "region": "nNSJVgpI", "sandboxTaxJarApiToken": "RTbJRvaH", "specials": ["CHECKOUT", "STRIPE", "ADYEN"], "taxJarApiToken": "YCGUOyOR", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 272 'CreatePaymentProviderConfig' test.out

#- 273 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetAggregatePaymentProviders' test.out

#- 274 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '71hgtE7X' \
    --region 'ZgBHOb7T' \
    > test.out 2>&1
eval_tap $? 274 'DebugMatchedPaymentProviderConfig' test.out

#- 275 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetSpecialPaymentProviders' test.out

#- 276 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'GszTm1Pr' \
    --body '{"aggregate": "ADYEN", "namespace": "OvzfPei3", "region": "FmRVZfOP", "sandboxTaxJarApiToken": "O98EIx5m", "specials": ["XSOLLA", "PAYPAL", "PAYPAL"], "taxJarApiToken": "O4Q0faSG", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '5NYaysr3' \
    > test.out 2>&1
eval_tap $? 277 'DeletePaymentProviderConfig' test.out

#- 278 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentTaxConfig' test.out

#- 279 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "pQ1bXw52", "taxJarApiToken": "3hHYzob3", "taxJarEnabled": false, "taxJarProductCodesMapping": {"La2DaqeG": "bkNR28kw", "didLkfl5": "NxYYqBRm", "1NsSAyao": "DlK6uZXI"}}' \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'ZFOXFCD8' \
    --end 'mV6dJRw6' \
    --start 'rGQo7kdV' \
    > test.out 2>&1
eval_tap $? 280 'SyncPaymentOrders' test.out

#- 281 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'kqMDEvwK' \
    --storeId 'Z1XAcQEt' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRootCategories' test.out

#- 282 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'XIHxFGKE' \
    --storeId 'UyTC1Tdd' \
    > test.out 2>&1
eval_tap $? 282 'DownloadCategories' test.out

#- 283 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '1Fkuq3FS' \
    --namespace $AB_NAMESPACE \
    --language 'GyuGxfcP' \
    --storeId 'eSLkk3im' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Lga0zs1v' \
    --namespace $AB_NAMESPACE \
    --language 'd4yuZba8' \
    --storeId 'Zk8r0xZa' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Q2BP6IOE' \
    --namespace $AB_NAMESPACE \
    --language 'gglRjeae' \
    --storeId '7zqt638r' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetDescendantCategories' test.out

#- 286 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 286 'PublicListCurrencies' test.out

#- 287 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'iBFqG3PD' \
    --region 'bnSpp3Zi' \
    --storeId 'ZG6IKFWW' \
    --appId 'uXzlCukn' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemByAppId' test.out

#- 288 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'WAz0AOyh' \
    --categoryPath 'KS0vhBdk' \
    --features 'RyjEMXuD' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --language 'v2O5BphH' \
    --limit '64' \
    --offset '36' \
    --region 'KgqCQS9X' \
    --sortBy '["name:desc", "displayOrder:asc", "createdAt:desc"]' \
    --storeId 'XHnpJE29' \
    --tags 'EWb7Bp3N' \
    > test.out 2>&1
eval_tap $? 288 'PublicQueryItems' test.out

#- 289 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'kLeomBYe' \
    --region '6pgPuOe7' \
    --storeId 'wr0d7TVu' \
    --sku 'oxkKVRYP' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'rjY1AVdh' \
    --region '9MfZdyoL' \
    --storeId 'SP495AWE' \
    --itemIds 'ilLjarvr' \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Pi1L8eSX", "weLMBP2l", "p1ME0QR3"]}' \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'MEDIA' \
    --limit '70' \
    --offset '64' \
    --region 'I9t33noB' \
    --storeId 'MmuN3fRu' \
    --keyword 'mQHoLTwv' \
    --language 'It0a82hy' \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ZmN5JziS' \
    --namespace $AB_NAMESPACE \
    --language 'UFNF86WY' \
    --region '34x5l1c4' \
    --storeId 'q4LxSMgE' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'uk91kkXt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Dkp02NpF' \
    --namespace $AB_NAMESPACE \
    --language 'Qeq1axnu' \
    --populateBundle 'false' \
    --region 'eXTdIAFU' \
    --storeId 'rFbjvPt2' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "F1xgY43e", "paymentProvider": "CHECKOUT", "returnUrl": "TMAUmQQV", "ui": "dr9BmKyM", "zipCode": "2v00YEUY"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ai3jQRG0' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MrkrR1Zx' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ujZUBzia' \
    --paymentProvider 'ADYEN' \
    --zipCode 'qwFxzxze' \
    --body '{"token": "kwQS1xkJ"}' \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UwEj4BSm' \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 't6bpm2aN' \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Wlkx5ewL' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'HredlXYj' \
    --foreinginvoice 'qLLhwCmu' \
    --invoiceId 'fGPjkhgw' \
    --payload 'B1CkzyVf' \
    --redirectResult 'DhC4dF17' \
    --resultCode 'ZbDftuZT' \
    --sessionId 'Ic9UMN8g' \
    --status 'zAHr6M8d' \
    --token 'iTyuFD8x' \
    --type 'ffAKw5di' \
    --userId 'LqLzYjdo' \
    --orderNo 'eGViKyq0' \
    --paymentOrderNo 'MKOalSWK' \
    --paymentProvider 'WXPAY' \
    --returnUrl '50AKBNko' \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'j5cS6Amn' \
    --paymentOrderNo 'yVKEQJkO' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '8hbc9Jz1' \
    > test.out 2>&1
eval_tap $? 306 'GetRewardByCode' test.out

#- 307 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'App8eqmM' \
    --limit '0' \
    --offset '60' \
    --sortBy '["namespace", "namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 307 'QueryRewards1' test.out

#- 308 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'p9QLtDYQ' \
    > test.out 2>&1
eval_tap $? 308 'GetReward1' test.out

#- 309 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'PublicListStores' test.out

#- 310 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["SDGCmkxB", "0SF4dMgV", "GwRITyhs"]' \
    --itemIds '["mueJZ4Xk", "E7igw7FC", "l6628Gzx"]' \
    --skus '["aCqwn1rC", "HLxcTDJZ", "IC14y8Fa"]' \
    > test.out 2>&1
eval_tap $? 310 'PublicExistsAnyMyActiveEntitlement' test.out

#- 311 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '8c0G53dy' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'Y5pZBUnV' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'ufA5vATN' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 314 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["tHRLG1oT", "EXwIMwsJ", "JvNrcNY3"]' \
    --itemIds '["TZpxRtQ6", "9r2WGLwQ", "HDh7hGPc"]' \
    --skus '["p18MbDWU", "3Z6yf0tI", "BLuwiBEC"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetEntitlementOwnershipToken' test.out

#- 315 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'A4MKrAnt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'SaysEL0S' \
    --body '{"epicGamesJwtToken": "Iem6nn8K"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'DJV7o8NE' \
    --body '{"serviceLabel": 25}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'BoOUqLh5' \
    --body '{"serviceLabels": [0, 28, 62]}' \
    > test.out 2>&1
eval_tap $? 318 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 319 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'k7h9siSc' \
    --body '{"appId": "5B3aMnff", "steamId": "VZfAoOhe"}' \
    > test.out 2>&1
eval_tap $? 319 'SyncSteamDLC' test.out

#- 320 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'XZYFOwdI' \
    --body '{"xstsToken": "Uq4kf1wt"}' \
    > test.out 2>&1
eval_tap $? 320 'SyncXboxDLC' test.out

#- 321 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'D8WnJMg9' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 'zC91kDNp' \
    --features '["nodZt02Y", "1zyHTDP6", "isW8uEhU"]' \
    --itemId '["livMwewU", "TE1qAm3I", "bnljXmRE"]' \
    --limit '28' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 321 'PublicQueryUserEntitlements' test.out

#- 322 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WVUPGekj' \
    --appId '5G2FNiVt' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserAppEntitlementByAppId' test.out

#- 323 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '4eZxGzs4' \
    --limit '12' \
    --offset '55' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlementsByAppType' test.out

#- 324 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4xh79C8p' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'Y7SR3qXW' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementByItemId' test.out

#- 325 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xHtgfExJ' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'NQkYfR1t' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementBySku' test.out

#- 326 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '1d7A0uEY' \
    --appIds '["kDqQ7Xde", "8b9hBelj", "Qq8F9DFA"]' \
    --itemIds '["LiVLmdSd", "nNCj09CZ", "Pny8p35D"]' \
    --skus '["4jy6SAIV", "25Cpf7KN", "MSLJpZN3"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyUserActiveEntitlement' test.out

#- 327 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Kdm0ovX5' \
    --appId 'ZLhqFW1E' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NxKdX3fc' \
    --entitlementClazz 'MEDIA' \
    --itemId 'b86n9vmh' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 329 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'N9vYBs5k' \
    --ids '["Ve3F2HRK", "K55WyH9s", "XwlLxiOC"]' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 330 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Ju8cdfRI' \
    --entitlementClazz 'MEDIA' \
    --sku 'qNfGx4he' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 331 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ghOaYk5E' \
    --namespace $AB_NAMESPACE \
    --userId 'PUjrxCuK' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlement' test.out

#- 332 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Q0MLpjyE' \
    --namespace $AB_NAMESPACE \
    --userId 'Q6W0wDRb' \
    --body '{"options": ["7l3HVg7e", "NHvfkQnk", "k3K0t49h"], "requestId": "tpo0bhbx", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 332 'PublicConsumeUserEntitlement' test.out

#- 333 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'kKqrzS0y' \
    --body '{"code": "ui5bF8Zl", "language": "XNIW", "region": "DoAm2odp"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicRedeemCode' test.out

#- 334 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'YVsOolb1' \
    --body '{"excludeOldTransactions": false, "language": "uu-JapT_vY", "productId": "4GHJknyX", "receiptData": "8jv2cVoS", "region": "8WV0HbQC", "transactionId": "AI8LCzrj"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicFulfillAppleIAPItem' test.out

#- 335 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'RfJTLrBf' \
    --body '{"epicGamesJwtToken": "xyLmv7vJ"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncEpicGamesInventory' test.out

#- 336 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '2Sqrqn3Q' \
    --body '{"autoAck": true, "language": "FVm-Pknp-543", "orderId": "R8sY7CCV", "packageName": "x2rltefK", "productId": "X9x4rQkC", "purchaseTime": 31, "purchaseToken": "vLxglcqV", "region": "Qhmj7qQM"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillGoogleIAPItem' test.out

#- 337 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'S6T85gdH' \
    --body '{"currencyCode": "6RsoQZjy", "price": 0.6085234073570173, "productId": "1aUUlVYc", "serviceLabel": 68}' \
    > test.out 2>&1
eval_tap $? 337 'PublicReconcilePlayStationStore' test.out

#- 338 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '0FTBlsfw' \
    --body '{"currencyCode": "59IWJD79", "price": 0.651882408467721, "productId": "ZBdsq0Z4", "serviceLabels": [89, 98, 95]}' \
    > test.out 2>&1
eval_tap $? 338 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 339 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Ip9FSA9j' \
    --body '{"appId": "NzaOEkJ7", "language": "yL", "region": "tIYnowtj", "stadiaPlayerId": "vKaqPXhN"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncStadiaEntitlement' test.out

#- 340 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '3iHj4wuC' \
    --body '{"appId": "y4l6KIsl", "currencyCode": "h0QpvQzP", "language": "GDxW", "price": 0.8229513473450667, "productId": "BlcbQL4B", "region": "jnvulIwt", "steamId": "bDhxxBiq"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncSteamInventory' test.out

#- 341 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Y2dM9UWU' \
    --body '{"gameId": "l54hb0rc", "language": "Wrb_DVnr", "region": "eic0Rzvw"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncTwitchDropsEntitlement' test.out

#- 342 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qzJA3r7e' \
    --body '{"currencyCode": "6JhXug3i", "price": 0.5303889742200635, "productId": "4HsAdxp8", "xstsToken": "0QARELav"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxInventory' test.out

#- 343 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '6IRuPLJz' \
    --itemId 'TxrvQOCV' \
    --limit '85' \
    --offset '87' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserOrders' test.out

#- 344 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'CrEXtsxp' \
    --body '{"currencyCode": "pDXtfcgP", "discountedPrice": 66, "ext": {"rETSXMoW": {}, "Yh18VkMM": {}, "r0qVO4nn": {}}, "itemId": "mA4HXjle", "language": "jlC_HWYc", "price": 15, "quantity": 36, "region": "VXSMtG3w", "returnUrl": "WRbUGhBG"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCreateUserOrder' test.out

#- 345 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '94Ua95KC' \
    --userId 'EBGdlplN' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrder' test.out

#- 346 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1zbYJlgs' \
    --userId 'iiYwraO1' \
    > test.out 2>&1
eval_tap $? 346 'PublicCancelUserOrder' test.out

#- 347 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'bw4w6cRQ' \
    --userId 'gBK2ks2U' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrderHistories' test.out

#- 348 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'sreg4b33' \
    --userId 'FOkHPpC5' \
    > test.out 2>&1
eval_tap $? 348 'PublicDownloadUserOrderReceipt' test.out

#- 349 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'oPQp5R2s' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentAccounts' test.out

#- 350 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'CIFLYFkc' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'v8Oyzzp0' \
    > test.out 2>&1
eval_tap $? 350 'PublicDeletePaymentAccount' test.out

#- 351 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'bvruSswY' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'MQYLAwAO' \
    --limit '18' \
    --offset '38' \
    --sku 'CfvaIsmE' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 351 'PublicQueryUserSubscriptions' test.out

#- 352 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'zb3Wq2sM' \
    --body '{"currencyCode": "mrPneyS3", "itemId": "7vspETYU", "language": "MBO_493", "region": "jfcB1tII", "returnUrl": "y1tD1X9l", "source": "fiBJXXgZ"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicSubscribeSubscription' test.out

#- 353 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3f5DEzt4' \
    --itemId 'elbrhjVo' \
    > test.out 2>&1
eval_tap $? 353 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 354 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sODPxU4W' \
    --userId '1DEhT4XJ' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserSubscription' test.out

#- 355 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0f5Pw5ib' \
    --userId 'mxOkHnTY' \
    > test.out 2>&1
eval_tap $? 355 'PublicChangeSubscriptionBillingAccount' test.out

#- 356 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8hVDUHGx' \
    --userId 'toLLN98P' \
    --body '{"immediate": false, "reason": "9Ku6BUgH"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicCancelSubscription' test.out

#- 357 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jorRKVqH' \
    --userId '8qz1yhVo' \
    --excludeFree 'true' \
    --limit '20' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserSubscriptionBillingHistories' test.out

#- 358 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'HriME33W' \
    --namespace $AB_NAMESPACE \
    --userId 'k3xsg0Qe' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetWallet' test.out

#- 359 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'VCZ1VSzP' \
    --namespace $AB_NAMESPACE \
    --userId 'KjEJuGrl' \
    --limit '6' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 359 'PublicListUserWalletTransactions' test.out

#- 360 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'O78rgvEc' \
    --baseAppId 'vLBTOXn6' \
    --categoryPath 'woJAIgAW' \
    --features '1KWmu8sn' \
    --includeSubCategoryItem 'false' \
    --itemName 'f3jPPHby' \
    --itemStatus 'INACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '26' \
    --offset '82' \
    --region 'v2z2368p' \
    --sortBy '["name:desc", "createdAt:desc", "createdAt"]' \
    --storeId 'WxImHumL' \
    --tags 'eigUgp8E' \
    --targetNamespace 'EkolG74o' \
    > test.out 2>&1
eval_tap $? 360 'QueryItems1' test.out

#- 361 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'H3v0nVoQ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 361 'ImportStore1' test.out

#- 362 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'hbDhhJtc' \
    --body '{"itemIds": ["psW6xOca", "gdizA8h8", "eS1B7R4C"]}' \
    > test.out 2>&1
eval_tap $? 362 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE