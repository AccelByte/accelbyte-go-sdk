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
    --body '{"context": {"item": {"appId": "AldYOpC3", "appType": "DLC", "baseAppId": "SeBlBDFD", "boothName": "GaFMBSge", "boundItemIds": ["MIYW72SB", "ojFee5qN", "GojGTy9u"], "categoryPath": "JaaCGxSm", "clazz": "SSAyB7Uo", "createdAt": "1986-09-18T00:00:00Z", "description": "gPvO9THe", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"qAVRLviW": {}, "gh0sGiWg": {}, "5QehH4hl": {}}, "features": ["twSfu2xK", "X6rfz5v3", "F4PI9ML4"], "fresh": false, "images": [{"as": "J7QM2C41", "caption": "R5vu3LeB", "height": 17, "imageUrl": "jZUaxUSZ", "smallImageUrl": "Q2OnCj4I", "width": 96}, {"as": "lBGn0NGc", "caption": "xr9gdJCq", "height": 1, "imageUrl": "8eJJXgmP", "smallImageUrl": "J9tFzJlL", "width": 88}, {"as": "3jiPLndQ", "caption": "PbaQjkIW", "height": 61, "imageUrl": "t5ldZz6z", "smallImageUrl": "c9OJ6bA1", "width": 12}], "itemId": "8DOzrn82", "itemIds": ["FsNvAhA4", "WY56nidz", "7T7xag0I"], "itemQty": {"KgUD2D6Y": 29, "UvavpzQ2": 98, "VfRevy4R": 95}, "itemType": "EXTENSION", "language": "nwTkZSAa", "listable": true, "localExt": {"QQV3MR85": {}, "Ng6JXQgv": {}, "t5yDmPwi": {}}, "longDescription": "RaIkkQ8d", "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 11, "itemId": "EFAHpk5f", "itemSku": "ILpmDJoM", "itemType": "Iphsg6Ch"}, {"count": 99, "itemId": "PjAt9voL", "itemSku": "wAEgEitb", "itemType": "TEQuRBWB"}, {"count": 51, "itemId": "2FGI9s4S", "itemSku": "rlrwhYT4", "itemType": "9otkb0Dh"}], "name": "UBz6NKR3", "odds": 0.7632370179845124, "type": "PROBABILITY_GROUP", "weight": 62}, {"lootBoxItems": [{"count": 33, "itemId": "9LIryfxG", "itemSku": "8DPFAwo7", "itemType": "TiwKAGTj"}, {"count": 28, "itemId": "P5SpMzDX", "itemSku": "bUkKM2cu", "itemType": "LqRM7K20"}, {"count": 31, "itemId": "JX034L4N", "itemSku": "cuV6V3hY", "itemType": "Rmd4JQaQ"}], "name": "xoKVquee", "odds": 0.15823293325248133, "type": "PROBABILITY_GROUP", "weight": 67}, {"lootBoxItems": [{"count": 94, "itemId": "0QBKhsQN", "itemSku": "msOKTCr0", "itemType": "eoZnYQop"}, {"count": 58, "itemId": "puViTJew", "itemSku": "HgshpkG0", "itemType": "baLa1tLv"}, {"count": 47, "itemId": "QhE36kLn", "itemSku": "gsdegCRh", "itemType": "dizFDbKV"}], "name": "h0PvHxHF", "odds": 0.08628200065881064, "type": "PROBABILITY_GROUP", "weight": 45}], "rollFunction": "CUSTOM"}, "maxCount": 21, "maxCountPerUser": 8, "name": "8eUZSHKo", "namespace": "s4i8vPb8", "optionBoxConfig": {"boxItems": [{"count": 11, "itemId": "hQGmRcKd", "itemSku": "yvObExJQ", "itemType": "zWwzNgHP"}, {"count": 3, "itemId": "7vRbsyKB", "itemSku": "3evMRe4q", "itemType": "4JIw0rnx"}, {"count": 29, "itemId": "dsQCWylP", "itemSku": "d2uygvgZ", "itemType": "iskvZU9T"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 12, "comparison": "includes", "name": "7VLJtNkJ", "predicateType": "SeasonPassPredicate", "value": "XCWOA4SB", "values": ["fbQY9TlG", "UbW4E7bA", "j8mN44WV"]}, {"anyOf": 55, "comparison": "excludes", "name": "UQoVSPVu", "predicateType": "SeasonTierPredicate", "value": "Z1CSU0lK", "values": ["rv41S9Fv", "zkmmgybj", "PeZN6kIg"]}, {"anyOf": 94, "comparison": "excludes", "name": "lTVo6xsE", "predicateType": "SeasonPassPredicate", "value": "rEj5wqmr", "values": ["ULLJQPo5", "MUR5z8ew", "jk3yVVwQ"]}]}, {"operator": "or", "predicates": [{"anyOf": 36, "comparison": "excludes", "name": "hthFvGl7", "predicateType": "EntitlementPredicate", "value": "zbtJh90U", "values": ["GrjtLEm9", "qRNHSBbw", "5BEbzDQB"]}, {"anyOf": 67, "comparison": "isGreaterThan", "name": "zQXYMGmd", "predicateType": "SeasonTierPredicate", "value": "UYhVgIAn", "values": ["9HINn2rB", "KMsBhpDU", "CcK4r2zv"]}, {"anyOf": 40, "comparison": "isGreaterThanOrEqual", "name": "sN42ZiEd", "predicateType": "EntitlementPredicate", "value": "StWYihx9", "values": ["XD6jiDeX", "72FaLZ4L", "IW8IS8TH"]}]}, {"operator": "or", "predicates": [{"anyOf": 57, "comparison": "is", "name": "dVlFaewi", "predicateType": "EntitlementPredicate", "value": "kUUpOFKt", "values": ["96l4ksU9", "AHonKU3T", "2EyMa3po"]}, {"anyOf": 61, "comparison": "isLessThanOrEqual", "name": "EiUwcO4p", "predicateType": "SeasonTierPredicate", "value": "uFdARbIB", "values": ["qoH0G0MR", "D1eDzeRE", "yRyzHprd"]}, {"anyOf": 72, "comparison": "isGreaterThan", "name": "iMVpaIzz", "predicateType": "EntitlementPredicate", "value": "NmeC7lWp", "values": ["nRtMJWaf", "sYVssor6", "yBxaxcxD"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 15, "fixedTrialCycles": 80, "graceDays": 2}, "region": "RaAyMCEN", "regionData": [{"currencyCode": "R5HytPi9", "currencyNamespace": "gpbmGKns", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1974-09-23T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1976-09-06T00:00:00Z", "discountedPrice": 97, "expireAt": "1979-10-22T00:00:00Z", "price": 31, "purchaseAt": "1972-06-13T00:00:00Z", "trialPrice": 12}, {"currencyCode": "RaEd5lwB", "currencyNamespace": "Tow8ivXl", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1999-12-08T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1971-02-05T00:00:00Z", "discountedPrice": 31, "expireAt": "1987-08-19T00:00:00Z", "price": 54, "purchaseAt": "1991-07-05T00:00:00Z", "trialPrice": 23}, {"currencyCode": "R2q8nNrg", "currencyNamespace": "DzTCUMpf", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1992-10-06T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-01-04T00:00:00Z", "discountedPrice": 36, "expireAt": "1992-09-18T00:00:00Z", "price": 73, "purchaseAt": "1998-02-08T00:00:00Z", "trialPrice": 60}], "seasonType": "TIER", "sku": "deiGavAk", "stackable": false, "status": "INACTIVE", "tags": ["uH7RXUbA", "ORBpZpny", "yb7nkvgc"], "targetCurrencyCode": "nDIEoYGb", "targetItemId": "d5F4oo2z", "targetNamespace": "gktOSn9w", "thumbnailUrl": "q8NREwB0", "title": "UnBizITq", "updatedAt": "1989-07-19T00:00:00Z", "useCount": 84}, "namespace": "hUFbuHsT", "order": {"currency": {"currencyCode": "sauPd27P", "currencySymbol": "Ppwg0qe3", "currencyType": "VIRTUAL", "decimals": 43, "namespace": "M3aFp88t"}, "ext": {"286TOtyR": {}, "lMCvXJ79": {}, "fLu7hGut": {}}, "free": true}, "source": "REFERRAL_BONUS"}, "script": "DadDuZCX", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'TiEz1t1W' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'KCnYNxYv' \
    --body '{"grantDays": "2esqdj56"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'VeqeOj2V' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'lrMcQ9o9' \
    --body '{"grantDays": "8FJEAZzf"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "d0t74jHR", "dryRun": true, "fulfillmentUrl": "uWm7WRIL", "itemType": "OPTIONBOX", "purchaseConditionUrl": "i4e5yqr8"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'ysjGghIN' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'UQPZ1yKI' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'ytkXfzTY' \
    --body '{"clazz": "lQ9NawxK", "dryRun": true, "fulfillmentUrl": "Lcb9mcaz", "purchaseConditionUrl": "ID0mJkM6"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'p7ZCjk0d' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'RjUSRLzb' \
    --offset '55' \
    --tag 'D9MHJQCa' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GRgBgUbd", "items": [{"extraSubscriptionDays": 34, "itemId": "9UPwVv3D", "itemName": "X6E957K1", "quantity": 94}, {"extraSubscriptionDays": 14, "itemId": "FynADUCf", "itemName": "ZeKMv7HR", "quantity": 6}, {"extraSubscriptionDays": 11, "itemId": "L2Lc68LX", "itemName": "eZ7Sl5nK", "quantity": 62}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 3, "maxSaleCount": 75, "name": "CFdvxBHo", "redeemEnd": "1988-01-06T00:00:00Z", "redeemStart": "1999-02-03T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["6TCJKnaC", "IgoQMMxZ", "2yiWfp2S"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '4LswMTOl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'VPK3mdQE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sl6Eqwsu", "items": [{"extraSubscriptionDays": 3, "itemId": "I8Q8lzSU", "itemName": "CqdfW9gt", "quantity": 58}, {"extraSubscriptionDays": 24, "itemId": "OAkkU9AN", "itemName": "9i1A6aYY", "quantity": 41}, {"extraSubscriptionDays": 17, "itemId": "PmzSV0eJ", "itemName": "6ln87d9t", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 44, "maxRedeemCountPerCode": 67, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 44, "name": "Nxcto7oM", "redeemEnd": "1978-11-18T00:00:00Z", "redeemStart": "1986-12-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["SlTLYIBY", "fjKvII9a", "t5sG6X83"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '1zU338wW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'mXT4xheJ' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'lWbbZlI0' \
    --body '{"categoryPath": "hgj95DEN", "localizationDisplayNames": {"j4f70x1K": "MTkTdLAA", "Tzl4NvjI": "YS3OUZ6T", "X6lQUn4A": "dPlmvth1"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'Sar9EG2A' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'MUSDiiOF' \
    --namespace $AB_NAMESPACE \
    --storeId 'vTtJmQQp' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'KgMTAmuW' \
    --namespace $AB_NAMESPACE \
    --storeId 'L1jvV8RL' \
    --body '{"localizationDisplayNames": {"DIVJeTZ7": "I2Palpm1", "DAmbmc1S": "N0vGen7R", "jCkpVhgG": "mci20LOk"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Q2uFeylZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'NSFOWwbr' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '65xILgQ7' \
    --namespace $AB_NAMESPACE \
    --storeId 'qS2RCmiQ' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'YV8NZz8w' \
    --namespace $AB_NAMESPACE \
    --storeId '5FyziP0e' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '9UtcPhUn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '51' \
    --code 'xCiBAsU9' \
    --limit '53' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'yDSCTy6c' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 48}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId '7JLCLhu5' \
    --namespace $AB_NAMESPACE \
    --batchNo '53' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'YzIZ90uM' \
    --namespace $AB_NAMESPACE \
    --batchNo '42' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'eJvAWZa7' \
    --namespace $AB_NAMESPACE \
    --batchNo '89' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'xjLUdiC8' \
    --namespace $AB_NAMESPACE \
    --code 'hcXSC3n1' \
    --limit '4' \
    --offset '9' \
    --userId 'moKwGWCN' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'UsDWx7Ux' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'S2MwenPe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'EhSoFDMH' \
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
    --body '{"grpcServerAddress": "pXrwrkLX"}' \
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
    --body '{"currencyCode": "zjQ8P2wo", "currencySymbol": "ilm7NIF5", "currencyType": "VIRTUAL", "decimals": 39, "localizationDescriptions": {"qd310p5T": "cBH9mWFJ", "vvlnzNhM": "L6DgWGGg", "Xy9lZouL": "tMr7FVu1"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '9pQy1Bfg' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"YpxNnB49": "eUaCUSLX", "PgbKp4aD": "2dsf434n", "fu47lu8v": "5kTePsXf"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 's2g2F8GZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Xm4yJYrm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ZR6yhKaY' \
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
    --body '{"data": [{"id": "e8mx47Jk", "rewards": [{"currency": {"currencyCode": "S7SyMTJM", "namespace": "5RIjaq2n"}, "item": {"itemId": "ixUz9iK4", "itemSku": "YtbQLkQJ", "itemType": "vSe7SZHP"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "bVoLpCKr", "namespace": "cXS5XQm1"}, "item": {"itemId": "qEFCYJqv", "itemSku": "XSAYRRVe", "itemType": "D9rFWDO9"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "of7rq85Z", "namespace": "sUmQX7uX"}, "item": {"itemId": "11cLjY0o", "itemSku": "9SyFWCcg", "itemType": "tccNadJw"}, "quantity": 63, "type": "CURRENCY"}]}, {"id": "S8lBJHRq", "rewards": [{"currency": {"currencyCode": "EB08m1qk", "namespace": "SAf5USSG"}, "item": {"itemId": "j79EWQbM", "itemSku": "EUSDGG55", "itemType": "T77d5637"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "rSd9u3Du", "namespace": "TSaykOhf"}, "item": {"itemId": "ryd5CUgN", "itemSku": "rrR4bMz7", "itemType": "JhuEv1GF"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "lMDEkEbu", "namespace": "Ybzz6wJP"}, "item": {"itemId": "8sqHozbv", "itemSku": "AILJOhqw", "itemType": "hSZO8v4D"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "zVtwJZ24", "rewards": [{"currency": {"currencyCode": "23g49Db5", "namespace": "M5KlKMQp"}, "item": {"itemId": "iJG330oH", "itemSku": "yjDMIMj0", "itemType": "a3af18nh"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "9TQzm8KZ", "namespace": "tfwgvxJd"}, "item": {"itemId": "JyWkL9mZ", "itemSku": "lJPjpw64", "itemType": "jiLgtHKS"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "E2Ezticz", "namespace": "VolR5ldm"}, "item": {"itemId": "kQWZPvlx", "itemSku": "Z6amuN3M", "itemType": "jHNsltGR"}, "quantity": 43, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"sALpQmjs": "RypwvNT7", "4ylTlWHE": "y07tCyvr", "1W2YazuM": "JbkIfrb9"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"pxYNztCW": "CAvfHmfx", "IAcGjYwk": "iXFKh0Kw", "4WuWCxr2": "Wjx3IHah"}}, {"platform": "STEAM", "platformDlcIdMap": {"f1FINY73": "tiE1LOB9", "bg5miuQK": "Rc9Add3R", "WxCR35m0": "Z8yotow0"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'kg3Et5my' \
    --itemId '["SVK3Ay7R", "5uNrV2dS", "bKq6aTzr"]' \
    --limit '23' \
    --offset '66' \
    --userId 'BDFO4rq8' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'P3k6yDPN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '10' \
    --status 'SUCCESS' \
    --userId 'uvQEbXKt' \
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
    --body '{"bundleId": "ivpKVf9m", "password": "DfvGb9xX"}' \
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
    --body '{"sandboxId": "v22KxjeX"}' \
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
    --body '{"applicationName": "VKchecPq", "serviceAccountId": "wuIazoHV"}' \
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
    --body '{"data": [{"itemIdentity": "Ji0a90bR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"OAaOL46P": "E0mi1OK7", "oLdOkgu9": "EQPd2No6", "tpZKnLZl": "TnBreqEr"}}, {"itemIdentity": "B81Qbic3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"teFwO515": "sQDkJIeF", "SXALpOTz": "QZUEU4JF", "olAsdkvw": "yXD5stHc"}}, {"itemIdentity": "cF44nzbd", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"M7zNIjFv": "BsoZyNnL", "ZXxJrWEP": "LHdPU3I5", "wDEo8LpM": "n6Qc9j4d"}}]}' \
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
    --body '{"environment": "mRd5na76"}' \
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
    --body '{"appId": "R8vRsjDf", "publisherAuthenticationKey": "Y7N7B4ab"}' \
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
    --body '{"clientId": "eC9lHEzt", "clientSecret": "GIdcR68X", "organizationId": "2mosiNyE"}' \
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
    --body '{"relyingPartyCert": "kqeMwew6"}' \
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
    --password '6Od64BKD' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'tM865iz1' \
    --itemId 'NFCDNv0R' \
    --itemType 'LOOTBOX' \
    --endTime '6qI3rTru' \
    --startTime 'tVmeOXNS' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'fXkbLuHI' \
    --itemId 'nlNoDVpO' \
    --itemType 'SEASON' \
    --endTime 'U0ZgF0AI' \
    --startTime 'j4HkG6ZD' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Ii4bycxo' \
    --body '{"categoryPath": "Y20k7pC2", "targetItemId": "4EvhXPLH", "targetNamespace": "g6e8t651"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'rAFXZQfM' \
    --body '{"appId": "vPwqonBc", "appType": "GAME", "baseAppId": "7sirXBIF", "boothName": "HbEoxmVO", "categoryPath": "Sg64OE93", "clazz": "SyehNM1t", "displayOrder": 22, "entitlementType": "CONSUMABLE", "ext": {"ViXXJbaH": {}, "UsOPg7Nq": {}, "rdtjMFWn": {}}, "features": ["9rVMbOWV", "5JZHxInS", "lj3LGmwu"], "images": [{"as": "fTfYyJ1U", "caption": "LDqImlnN", "height": 35, "imageUrl": "ASOocfS6", "smallImageUrl": "MwiJwhBm", "width": 91}, {"as": "xOX3FODS", "caption": "ABHjhdfV", "height": 97, "imageUrl": "63RG7coS", "smallImageUrl": "J6oIEnDH", "width": 67}, {"as": "714WfoYX", "caption": "DsVMIk4H", "height": 44, "imageUrl": "RsVfohgB", "smallImageUrl": "dbe3P31E", "width": 10}], "itemIds": ["JivqPSi5", "fzFBJ21T", "JBeE0bHm"], "itemQty": {"R7LWlOs3": 91, "golUN30i": 94, "br4srACJ": 56}, "itemType": "SEASON", "listable": false, "localizations": {"mWLYPIzR": {"description": "o2WrCwnn", "localExt": {"4bX2IJvr": {}, "H0ZVvdQQ": {}, "uy3XL1fF": {}}, "longDescription": "vNc8gVAR", "title": "6XztpG4L"}, "0CMolTM1": {"description": "KYCb4m42", "localExt": {"AILiG7hF": {}, "R1CXmJ5V": {}, "1S2QsIjr": {}}, "longDescription": "EQNiQNK2", "title": "Z3YnZX9a"}, "HdRoh93p": {"description": "sESnyoif", "localExt": {"KLtCyoBo": {}, "UfT1ZVTc": {}, "jMY5KYC6": {}}, "longDescription": "r74dSS7D", "title": "nA3MxOZ2"}}, "lootBoxConfig": {"rewardCount": 13, "rewards": [{"lootBoxItems": [{"count": 46, "itemId": "XniXSmNJ", "itemSku": "UaSy8NL2", "itemType": "7jfyRjsF"}, {"count": 14, "itemId": "QEIc4ezE", "itemSku": "WbCx1g2O", "itemType": "Ja2eXA3u"}, {"count": 77, "itemId": "DgovMHG2", "itemSku": "r2bxaGi0", "itemType": "m6qxj7qU"}], "name": "8oRbC18B", "odds": 0.0607861111105209, "type": "REWARD_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 95, "itemId": "qBm8aJoe", "itemSku": "oxrWYcnq", "itemType": "zVbvtXXL"}, {"count": 10, "itemId": "eM1DLWxl", "itemSku": "p1Ahd0OP", "itemType": "xGsKGTYR"}, {"count": 45, "itemId": "WrvfspB3", "itemSku": "tiNQNjEf", "itemType": "dOLRawyC"}], "name": "fGRpngue", "odds": 0.9391482222592105, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 17, "itemId": "hjlFRZwu", "itemSku": "Pn6KkJtM", "itemType": "iGwGDZB4"}, {"count": 70, "itemId": "uIYlGNTX", "itemSku": "3smoVUpG", "itemType": "B2LC3PQl"}, {"count": 28, "itemId": "dPHlLPFZ", "itemSku": "EF5rP8A2", "itemType": "2sqyxmbR"}], "name": "ELbar0Jh", "odds": 0.1904672170202849, "type": "REWARD", "weight": 17}], "rollFunction": "CUSTOM"}, "maxCount": 17, "maxCountPerUser": 5, "name": "nswQ1zcK", "optionBoxConfig": {"boxItems": [{"count": 10, "itemId": "soPUu9zM", "itemSku": "kfeOaqYe", "itemType": "JwPrMwZc"}, {"count": 70, "itemId": "5e987TVk", "itemSku": "Smp3j3wM", "itemType": "88MVZirz"}, {"count": 38, "itemId": "y3OHPuIK", "itemSku": "aMhaZGfB", "itemType": "PTWEPifs"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 93, "fixedTrialCycles": 54, "graceDays": 53}, "regionData": {"Daqt4eeQ": [{"currencyCode": "IkaPXbYM", "currencyNamespace": "V84Lugj2", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1992-02-24T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1996-08-29T00:00:00Z", "discountedPrice": 96, "expireAt": "1988-02-05T00:00:00Z", "price": 2, "purchaseAt": "1978-06-20T00:00:00Z", "trialPrice": 71}, {"currencyCode": "yAHAjYWS", "currencyNamespace": "PuhxProk", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1976-07-08T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1990-11-01T00:00:00Z", "discountedPrice": 61, "expireAt": "1986-02-06T00:00:00Z", "price": 41, "purchaseAt": "1976-03-12T00:00:00Z", "trialPrice": 55}, {"currencyCode": "eYMYyjmT", "currencyNamespace": "MRVo0jtl", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1980-01-31T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1981-03-01T00:00:00Z", "discountedPrice": 54, "expireAt": "1988-07-20T00:00:00Z", "price": 92, "purchaseAt": "1986-09-26T00:00:00Z", "trialPrice": 95}], "aHT7bJTU": [{"currencyCode": "SwpVsdzC", "currencyNamespace": "soI3iaXf", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1996-08-08T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1974-03-03T00:00:00Z", "discountedPrice": 27, "expireAt": "1971-09-03T00:00:00Z", "price": 81, "purchaseAt": "1976-11-07T00:00:00Z", "trialPrice": 19}, {"currencyCode": "HwelYBJN", "currencyNamespace": "LwhDNydw", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1986-08-29T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1978-04-26T00:00:00Z", "discountedPrice": 39, "expireAt": "1973-08-23T00:00:00Z", "price": 70, "purchaseAt": "1990-08-26T00:00:00Z", "trialPrice": 62}, {"currencyCode": "cc6ccIyg", "currencyNamespace": "Q8rXYFKy", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1980-11-06T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1986-05-08T00:00:00Z", "discountedPrice": 58, "expireAt": "1992-06-16T00:00:00Z", "price": 37, "purchaseAt": "1989-04-08T00:00:00Z", "trialPrice": 88}], "MtnAADP0": [{"currencyCode": "k2ppkQNp", "currencyNamespace": "Qfs4JwSQ", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1992-01-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1987-01-02T00:00:00Z", "discountedPrice": 60, "expireAt": "1991-12-28T00:00:00Z", "price": 85, "purchaseAt": "1997-08-25T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Ky674nAv", "currencyNamespace": "w7VK4Yr0", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1978-08-26T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1976-04-03T00:00:00Z", "discountedPrice": 13, "expireAt": "1990-03-02T00:00:00Z", "price": 12, "purchaseAt": "1996-08-31T00:00:00Z", "trialPrice": 39}, {"currencyCode": "OYHej8iI", "currencyNamespace": "CJKu96EZ", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1989-10-06T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1990-09-15T00:00:00Z", "discountedPrice": 40, "expireAt": "1986-06-18T00:00:00Z", "price": 11, "purchaseAt": "1988-11-07T00:00:00Z", "trialPrice": 29}]}, "seasonType": "TIER", "sku": "zxXUIpdf", "stackable": true, "status": "INACTIVE", "tags": ["CD1oGhBI", "RSeP5q3i", "gu9vGvTk"], "targetCurrencyCode": "1FsxS3M8", "targetNamespace": "TXVTl9rI", "thumbnailUrl": "uiwkMRKb", "useCount": 15}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5g4SxKEy' \
    --appId 'KOrVd0KS' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'z7qtv7DM' \
    --baseAppId 'ZMLJcAlT' \
    --categoryPath '66sebRMo' \
    --features 'y4JTvyk2' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --limit '43' \
    --offset '75' \
    --region 'tdB4Xz3f' \
    --sortBy '["updatedAt:desc", "createdAt:asc", "displayOrder:desc"]' \
    --storeId 'YqhhKrNW' \
    --tags 'gkbbrSw1' \
    --targetNamespace 'A19sLy6o' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["u9HL2Swg", "CgocmXr4", "IJIrw26p"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FnvVbmNm' \
    --sku 'AKGhnIVk' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '9Tsq4JtL' \
    --populateBundle 'false' \
    --region 'n4zV08Cb' \
    --storeId 'Zyr8JqH5' \
    --sku 'TLnTWVs3' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'P7YLihcj' \
    --sku 'LgRuY4qV' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["los8q2en", "AOr98Hpy", "Tdr3y6Br"]' \
    --storeId 'XQokDhqA' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '5KNqUOB5' \
    --region 'BfSWyQQn' \
    --storeId 'b9x3y403' \
    --itemIds 'jAA2GUQf' \
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
    --userId '5Pz0mSmS' \
    --body '{"itemIds": ["TDvs97Gu", "BOTH3TOC", "Keqif55M"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'INGAMEITEM' \
    --limit '9' \
    --offset '59' \
    --sortBy 'xwASdxxl' \
    --storeId 'tNxmmhVP' \
    --keyword 'nQzr88B7' \
    --language 'b4D7g9el' \
    > test.out 2>&1
eval_tap $? 97 'SearchItems' test.out

#- 98 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '50' \
    --offset '36' \
    --sortBy '["updatedAt:asc", "createdAt:asc", "displayOrder:desc"]' \
    --storeId 'erUqrgiE' \
    > test.out 2>&1
eval_tap $? 98 'QueryUncategorizedItems' test.out

#- 99 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'As9IsfG3' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'bdcjMaU0' \
    > test.out 2>&1
eval_tap $? 99 'GetItem' test.out

#- 100 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'McM2Szy2' \
    --namespace $AB_NAMESPACE \
    --storeId 'HGqrCGfY' \
    --body '{"appId": "l6Rdayna", "appType": "GAME", "baseAppId": "gc93Ac3b", "boothName": "q5EmsTcI", "categoryPath": "CF9TkwlP", "clazz": "D3AzYTgY", "displayOrder": 66, "entitlementType": "CONSUMABLE", "ext": {"iBmbkyea": {}, "6z3xwUYp": {}, "iClN5GJr": {}}, "features": ["TRfrSIAf", "7XYP01DB", "7P2TsvzT"], "images": [{"as": "YWbUxmYk", "caption": "iwAHptek", "height": 67, "imageUrl": "BUtOzFLs", "smallImageUrl": "jpzTmAVK", "width": 46}, {"as": "RKPJtIWL", "caption": "GQCBOvqd", "height": 10, "imageUrl": "jaV9ArYq", "smallImageUrl": "NGO4CwFP", "width": 3}, {"as": "68n25ZnQ", "caption": "Ag4ILEnV", "height": 85, "imageUrl": "mgVMNw9F", "smallImageUrl": "Q0wROlYX", "width": 12}], "itemIds": ["dn3Hxt53", "2pTmmFWx", "tn5cjyT2"], "itemQty": {"sDMo8lpT": 3, "FXSnRleE": 92, "kBUhIcQu": 45}, "itemType": "SEASON", "listable": false, "localizations": {"dPMBCn3W": {"description": "8jWvVNtI", "localExt": {"JPm1pPR5": {}, "oRwD4R9f": {}, "RMn6oV1A": {}}, "longDescription": "10LN4Tbh", "title": "UtVqJ4po"}, "UX4bPISP": {"description": "xA7DigzT", "localExt": {"JZyDyI0f": {}, "VdRlaNHI": {}, "rjMxt9es": {}}, "longDescription": "WabBcq5z", "title": "DV11DIhL"}, "rL5It8Lm": {"description": "CAdDxkDD", "localExt": {"AyVZGblH": {}, "B2ejAyBC": {}, "tGfw5owq": {}}, "longDescription": "a3JrISiG", "title": "jXDAVeJn"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 30, "itemId": "XZUIvfdG", "itemSku": "jnWbqwYW", "itemType": "WyN9cJ3U"}, {"count": 83, "itemId": "eLjYiFY4", "itemSku": "mbQUHFSU", "itemType": "HnChAbm2"}, {"count": 2, "itemId": "M9LtuRJQ", "itemSku": "x4sN90Ol", "itemType": "PQ07ELFZ"}], "name": "3cLssCuq", "odds": 0.685751126118321, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 85, "itemId": "9Bvhllrm", "itemSku": "ze88uecn", "itemType": "dxi2Nwb6"}, {"count": 25, "itemId": "tRblERwb", "itemSku": "UaWwRpX4", "itemType": "n42nXNqj"}, {"count": 60, "itemId": "WjtWnNpt", "itemSku": "8a7jFh0M", "itemType": "0PViF8qn"}], "name": "aUKdH6aj", "odds": 0.5897678807515534, "type": "REWARD_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 4, "itemId": "OTQWx0jO", "itemSku": "IQbBzZbg", "itemType": "Yu8mwwlJ"}, {"count": 17, "itemId": "NsG5fi8H", "itemSku": "m94oKrIb", "itemType": "IQbGKDJR"}, {"count": 29, "itemId": "xvk67Vmy", "itemSku": "9VQxSIdS", "itemType": "GPDEWFOr"}], "name": "b669iEzH", "odds": 0.9395562658704697, "type": "PROBABILITY_GROUP", "weight": 13}], "rollFunction": "CUSTOM"}, "maxCount": 42, "maxCountPerUser": 62, "name": "XXXqiy1p", "optionBoxConfig": {"boxItems": [{"count": 68, "itemId": "7KapSxZs", "itemSku": "oCmZxAJN", "itemType": "VJzYVEWl"}, {"count": 27, "itemId": "TffdSlt2", "itemSku": "I0gRMOgw", "itemType": "8vNYD8GH"}, {"count": 66, "itemId": "90JFf7tq", "itemSku": "z5d8txYk", "itemType": "13FBCDkU"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 85, "fixedTrialCycles": 95, "graceDays": 7}, "regionData": {"A0kdQXqc": [{"currencyCode": "QDMMmf1Y", "currencyNamespace": "XBRMyHRO", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1998-09-13T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1976-03-09T00:00:00Z", "discountedPrice": 49, "expireAt": "1996-06-20T00:00:00Z", "price": 76, "purchaseAt": "1974-04-11T00:00:00Z", "trialPrice": 66}, {"currencyCode": "4d8fdV6Y", "currencyNamespace": "YtSdCCSR", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1999-09-04T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1997-11-10T00:00:00Z", "discountedPrice": 98, "expireAt": "1971-06-29T00:00:00Z", "price": 4, "purchaseAt": "1972-03-31T00:00:00Z", "trialPrice": 90}, {"currencyCode": "klMYbMBE", "currencyNamespace": "p2kT3jP5", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1987-11-22T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1975-10-26T00:00:00Z", "discountedPrice": 74, "expireAt": "1983-07-18T00:00:00Z", "price": 60, "purchaseAt": "1995-05-19T00:00:00Z", "trialPrice": 59}], "t7PP4vmV": [{"currencyCode": "wCfK4qf8", "currencyNamespace": "96WPyWuJ", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1977-08-28T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1981-06-13T00:00:00Z", "discountedPrice": 86, "expireAt": "1987-08-30T00:00:00Z", "price": 65, "purchaseAt": "1982-06-28T00:00:00Z", "trialPrice": 95}, {"currencyCode": "hCoJ5STy", "currencyNamespace": "coyXWjuo", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1989-09-21T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1988-09-07T00:00:00Z", "discountedPrice": 88, "expireAt": "1988-12-18T00:00:00Z", "price": 80, "purchaseAt": "1989-07-20T00:00:00Z", "trialPrice": 40}, {"currencyCode": "0HCnkMIQ", "currencyNamespace": "98Gskrcn", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1982-11-05T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1998-12-20T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-09-23T00:00:00Z", "price": 42, "purchaseAt": "1999-02-28T00:00:00Z", "trialPrice": 97}], "YNksAZ6L": [{"currencyCode": "qdkghCw5", "currencyNamespace": "XU1XgjRq", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1982-06-22T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1984-07-24T00:00:00Z", "discountedPrice": 19, "expireAt": "1994-04-30T00:00:00Z", "price": 83, "purchaseAt": "1991-11-14T00:00:00Z", "trialPrice": 11}, {"currencyCode": "GNe2yiYH", "currencyNamespace": "dkvi0Jw8", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1977-11-10T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1972-05-27T00:00:00Z", "discountedPrice": 65, "expireAt": "1994-12-22T00:00:00Z", "price": 44, "purchaseAt": "1988-09-27T00:00:00Z", "trialPrice": 58}, {"currencyCode": "hk4S1tFn", "currencyNamespace": "KNK2zYBt", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1995-03-07T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1987-10-25T00:00:00Z", "discountedPrice": 55, "expireAt": "1998-10-11T00:00:00Z", "price": 49, "purchaseAt": "1979-08-02T00:00:00Z", "trialPrice": 35}]}, "seasonType": "PASS", "sku": "4pBHHI7L", "stackable": false, "status": "INACTIVE", "tags": ["DMPgtamY", "dFCz0FGn", "tYtqjAYv"], "targetCurrencyCode": "ZgI9Pe7y", "targetNamespace": "A80MUlu3", "thumbnailUrl": "gQz5viVo", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItem' test.out

#- 101 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'ZmOiDy4d' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'Y3QPiy8Z' \
    > test.out 2>&1
eval_tap $? 101 'DeleteItem' test.out

#- 102 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'NGWJuFbu' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 45, "orderNo": "riCaUtvX"}' \
    > test.out 2>&1
eval_tap $? 102 'AcquireItem' test.out

#- 103 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Byr0mFJq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'NlwY2CqD' \
    > test.out 2>&1
eval_tap $? 103 'GetApp' test.out

#- 104 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'PLlzTR5W' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZCFQGRW5' \
    --body '{"carousel": [{"alt": "NV9apNGk", "previewUrl": "7LXZN8RD", "thumbnailUrl": "uJ6rHc31", "type": "video", "url": "W20uogVO", "videoSource": "generic"}, {"alt": "P5c540pF", "previewUrl": "ABSq5BpE", "thumbnailUrl": "4jatnko5", "type": "image", "url": "hIffDGgW", "videoSource": "generic"}, {"alt": "Y6QNJvWI", "previewUrl": "fzks23AR", "thumbnailUrl": "v03kZAes", "type": "video", "url": "ZuBT9pYT", "videoSource": "generic"}], "developer": "gbtfslHZ", "forumUrl": "WPrDDrd8", "genres": ["MassivelyMultiplayer", "Sports", "Action"], "localizations": {"1hkC8ZdB": {"announcement": "rwKSCx3Z", "slogan": "aUXSBUI5"}, "0UN0sT60": {"announcement": "YohPGcFT", "slogan": "zXURgFlu"}, "Q9bTG2Nw": {"announcement": "bDlUQzF3", "slogan": "OHzxY0RI"}}, "platformRequirements": {"Pfodyyz3": [{"additionals": "RfayFtAy", "directXVersion": "Uqslgwyh", "diskSpace": "omeahlQ0", "graphics": "rUmJA2gL", "label": "OcPMHbOL", "osVersion": "e0cSfSWk", "processor": "ZUNpBztW", "ram": "V7y831oA", "soundCard": "CPav0Uvn"}, {"additionals": "X5WonDde", "directXVersion": "7FebEeQ1", "diskSpace": "2Dn3ptVG", "graphics": "QGSE2Svo", "label": "6eGtnXNq", "osVersion": "Ds8v3s97", "processor": "nDFd54Ij", "ram": "wiEBa63F", "soundCard": "I4q2xxFd"}, {"additionals": "FluQr8TU", "directXVersion": "2bHhvCaH", "diskSpace": "Xnsuzdjc", "graphics": "cyd0rlcn", "label": "NrNE9AuC", "osVersion": "Md82qAho", "processor": "4zbRwe6I", "ram": "rdAaEOsS", "soundCard": "Of1i7RDw"}], "vRQxGwk1": [{"additionals": "MxHDrHve", "directXVersion": "7aEocqFH", "diskSpace": "PWmsDAyw", "graphics": "5Y5oFvob", "label": "FDBGzgxZ", "osVersion": "5oE7GZzk", "processor": "emMQ0avV", "ram": "7E1WN9hN", "soundCard": "BYCDR6XE"}, {"additionals": "1DHO25sx", "directXVersion": "cLE7JFRj", "diskSpace": "3dAPAa9H", "graphics": "hCj0k2iH", "label": "rSaiyFPO", "osVersion": "O5MFj34D", "processor": "4P2p6jX3", "ram": "Gl9aFJyg", "soundCard": "Ec8gfwVr"}, {"additionals": "AQzcEUih", "directXVersion": "sGlgoaCK", "diskSpace": "vYzdFiJS", "graphics": "kt3qzv1m", "label": "irOClzb8", "osVersion": "ozPl58nB", "processor": "Hc5B30PT", "ram": "092RYfX5", "soundCard": "za0Eh0OG"}], "nAuJx50S": [{"additionals": "hafi7CK7", "directXVersion": "31CK5mLg", "diskSpace": "AYstQMLn", "graphics": "6epDArwa", "label": "JjSQC2DP", "osVersion": "jIe5nTEy", "processor": "4k16jCa6", "ram": "eEQNMuI7", "soundCard": "41u1PhXl"}, {"additionals": "pXqQ0XS8", "directXVersion": "vrxB6LkD", "diskSpace": "WSkSQKdd", "graphics": "GIZTYtWS", "label": "t8JrydR9", "osVersion": "FwdZYNRb", "processor": "wNsVm4UZ", "ram": "uZIt5ixJ", "soundCard": "2TtSIHXy"}, {"additionals": "mjSxFWvy", "directXVersion": "nZw2Dskb", "diskSpace": "QvsGT7Vs", "graphics": "PWyZj2hc", "label": "IsIUPfXo", "osVersion": "iEa15Hy7", "processor": "uWqtt8TC", "ram": "ss2xVr6L", "soundCard": "pYoxcnKD"}]}, "platforms": ["MacOS", "Linux", "IOS"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "Single"], "primaryGenre": "Strategy", "publisher": "Vsf4JGns", "releaseDate": "1982-10-28T00:00:00Z", "websiteUrl": "ldf8xulz"}' \
    > test.out 2>&1
eval_tap $? 104 'UpdateApp' test.out

#- 105 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'V9aWeiAR' \
    --namespace $AB_NAMESPACE \
    --storeId 'd8UsOpGW' \
    > test.out 2>&1
eval_tap $? 105 'DisableItem' test.out

#- 106 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'VK1BPNI3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'GetItemDynamicData' test.out

#- 107 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '3QNRZ7Io' \
    --namespace $AB_NAMESPACE \
    --storeId 'OcmWqzqD' \
    > test.out 2>&1
eval_tap $? 107 'EnableItem' test.out

#- 108 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '3YnmIc0i' \
    --itemId 'X7HqDOIa' \
    --namespace $AB_NAMESPACE \
    --storeId 'sG4GtFPT' \
    > test.out 2>&1
eval_tap $? 108 'FeatureItem' test.out

#- 109 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'tKx477XB' \
    --itemId 'sFhu3DUK' \
    --namespace $AB_NAMESPACE \
    --storeId 'yKvhwRIG' \
    > test.out 2>&1
eval_tap $? 109 'DefeatureItem' test.out

#- 110 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'SyPz4auB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'BSmmBlf5' \
    --populateBundle 'false' \
    --region 'EfMkux5j' \
    --storeId 'djDO1jyp' \
    > test.out 2>&1
eval_tap $? 110 'GetLocaleItem' test.out

#- 111 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'xlWhnPD6' \
    --namespace $AB_NAMESPACE \
    --storeId '1WxIKpnF' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 7, "comparison": "is", "name": "D8OHXMfx", "predicateType": "EntitlementPredicate", "value": "s6cETG13", "values": ["INnX3js8", "uBiI8k7n", "UBWFHC8Y"]}, {"anyOf": 38, "comparison": "isLessThanOrEqual", "name": "csy1fp1i", "predicateType": "EntitlementPredicate", "value": "qUNd6Ya7", "values": ["u8N3IGPd", "z8M12YSQ", "6CiLH2eA"]}, {"anyOf": 63, "comparison": "is", "name": "FF9JnuIv", "predicateType": "EntitlementPredicate", "value": "cu0Aikj5", "values": ["k6vFMr52", "pfeNkBJv", "IssNw5Ds"]}]}, {"operator": "and", "predicates": [{"anyOf": 88, "comparison": "isLessThan", "name": "FzfxJN42", "predicateType": "SeasonTierPredicate", "value": "SBC9hLdT", "values": ["h2VpjSJX", "yB3AFsXn", "AdWNHMKM"]}, {"anyOf": 84, "comparison": "excludes", "name": "38YwvVeP", "predicateType": "SeasonTierPredicate", "value": "oCkabRHx", "values": ["qsN4Yrgm", "munFImlt", "TQrKqiq0"]}, {"anyOf": 69, "comparison": "includes", "name": "BqQcqnc9", "predicateType": "SeasonPassPredicate", "value": "XzdufbZv", "values": ["qQIernso", "qvHl2IQ3", "kL8Qzn4h"]}]}, {"operator": "or", "predicates": [{"anyOf": 44, "comparison": "isGreaterThan", "name": "W3vnaV5z", "predicateType": "EntitlementPredicate", "value": "WNC0zpPG", "values": ["QihXAFxJ", "VJi1DIUv", "I7TxM7DU"]}, {"anyOf": 15, "comparison": "isLessThanOrEqual", "name": "OOJUdjrO", "predicateType": "SeasonTierPredicate", "value": "ZcQh1hv4", "values": ["PSnlzSRz", "sbQG2tOS", "rOgOyrFX"]}, {"anyOf": 13, "comparison": "excludes", "name": "CAYGFJ9n", "predicateType": "SeasonPassPredicate", "value": "PjSywQRm", "values": ["LisqpExD", "12emzGqn", "3YO6ni3y"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateItemPurchaseCondition' test.out

#- 112 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ZAW07xlV' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DRfvp00K"}' \
    > test.out 2>&1
eval_tap $? 112 'ReturnItem' test.out

#- 113 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'hD99BavZ' \
    --offset '91' \
    --tag 'eIiMIfKi' \
    > test.out 2>&1
eval_tap $? 113 'QueryKeyGroups' test.out

#- 114 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "REw1kCUF", "name": "qgbq6bTu", "status": "INACTIVE", "tags": ["EnOVQKcs", "Q09ECjT2", "1vGOp3TT"]}' \
    > test.out 2>&1
eval_tap $? 114 'CreateKeyGroup' test.out

#- 115 GetKeyGroupByBoothName
eval_tap 0 115 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 116 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'CDQwcW3u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroup' test.out

#- 117 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 't4vfnFXo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "C4JMhmDi", "name": "8ieYxEOn", "status": "INACTIVE", "tags": ["36wuD2a1", "E9KqAKqo", "JbeleooP"]}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateKeyGroup' test.out

#- 118 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'ZCUa9xdT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetKeyGroupDynamic' test.out

#- 119 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '55qRaC22' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '39' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 119 'ListKeys' test.out

#- 120 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'EnuWcD2Q' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 120 'UploadKeys' test.out

#- 121 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'QItjsBIt' \
    --limit '87' \
    --offset '55' \
    --orderNos '["jTI87hfZ", "SkOKKYqg", "cGIDAmNn"]' \
    --sortBy 'vqOUBs9B' \
    --startTime 'E3d1BBID' \
    --status 'REFUNDING' \
    --withTotal 'false' \
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
    --orderNo 'nOlbmWPU' \
    > test.out 2>&1
eval_tap $? 123 'GetOrder' test.out

#- 124 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jbNlkJkd' \
    --body '{"description": "ATgWawZM"}' \
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
    --body '{"dryRun": false, "notifyUrl": "pps3hn2o", "privateKey": "QWyi1YoQ"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdatePaymentCallbackConfig' test.out

#- 127 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'VEaYbgfO' \
    --externalId 'Dw87jM8f' \
    --limit '47' \
    --notificationSource 'XSOLLA' \
    --notificationType 'lC182CpF' \
    --offset '95' \
    --paymentOrderNo 'E7iee9Dp' \
    --startDate 'p3St1ZeL' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 127 'QueryPaymentNotifications' test.out

#- 128 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'csUmRIWH' \
    --limit '39' \
    --offset '27' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentOrders' test.out

#- 129 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "KXsQoF4p", "currencyNamespace": "zn42GY6L", "customParameters": {"CMgsEGTX": {}, "W9wFscvo": {}, "GTXrq3wM": {}}, "description": "q0ikX2vg", "extOrderNo": "lmmCSZS2", "extUserId": "KYhVl0nS", "itemType": "SEASON", "language": "BG_307", "metadata": {"4tmbLwb6": "t6UDHP2D", "apUlu5d2": "p7AS7POd", "a3Q5djuo": "wc0xx7MF"}, "notifyUrl": "HbidnCUM", "omitNotification": true, "platform": "0BUpqpPx", "price": 56, "recurringPaymentOrderNo": "hSWgDEMA", "region": "eFpo7j6I", "returnUrl": "hhi7J5Dm", "sandbox": true, "sku": "Lle52KF2", "subscriptionId": "Y7uni44N", "targetNamespace": "7vSnE73u", "targetUserId": "cXWSah3C", "title": "eu1ARPKg"}' \
    > test.out 2>&1
eval_tap $? 129 'CreatePaymentOrderByDedicated' test.out

#- 130 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '5jnzUK8p' \
    > test.out 2>&1
eval_tap $? 130 'ListExtOrderNoByExtTxId' test.out

#- 131 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2CGl8E7m' \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrder' test.out

#- 132 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kQfE6JlB' \
    --body '{"extTxId": "YxN6Ilaf", "paymentMethod": "iaAptyvN", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 132 'ChargePaymentOrder' test.out

#- 133 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bqjD0mGK' \
    --body '{"description": "EHqPEp5P"}' \
    > test.out 2>&1
eval_tap $? 133 'RefundPaymentOrderByDedicated' test.out

#- 134 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CIz4OdLR' \
    --body '{"amount": 49, "currencyCode": "TxacG029", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 55, "vat": 6}' \
    > test.out 2>&1
eval_tap $? 134 'SimulatePaymentOrderNotification' test.out

#- 135 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZcNbMoJ7' \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentOrderChargeStatus' test.out

#- 136 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 136 'GetPlatformWalletConfig' test.out

#- 137 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["System", "GooglePlay", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdatePlatformWalletConfig' test.out

#- 138 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 138 'ResetPlatformWalletConfig' test.out

#- 139 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QvZ9jV8K", "eventTopic": "vK1AQSy4", "maxAwarded": 61, "maxAwardedPerUser": 98, "namespaceExpression": "pqZHXLhL", "rewardCode": "8VHmjZAi", "rewardConditions": [{"condition": "U3kIm7ps", "conditionName": "XMT5FwBD", "eventName": "Nm3kajAD", "rewardItems": [{"duration": 0, "itemId": "UDOAze7I", "quantity": 35}, {"duration": 13, "itemId": "vncXzKw4", "quantity": 51}, {"duration": 74, "itemId": "UbJVJA3c", "quantity": 51}]}, {"condition": "fMjP6ra5", "conditionName": "Te2cB7QP", "eventName": "LraIeDed", "rewardItems": [{"duration": 44, "itemId": "nU9mHtp0", "quantity": 25}, {"duration": 96, "itemId": "j6osxlwO", "quantity": 32}, {"duration": 30, "itemId": "QTqEX6EN", "quantity": 94}]}, {"condition": "6Tn6of2c", "conditionName": "J1nKLWI4", "eventName": "xTZJoq42", "rewardItems": [{"duration": 63, "itemId": "K8ZfOVHN", "quantity": 6}, {"duration": 91, "itemId": "a62Y6TP1", "quantity": 2}, {"duration": 19, "itemId": "DhXG2s9s", "quantity": 28}]}], "userIdExpression": "YkLgDjmp"}' \
    > test.out 2>&1
eval_tap $? 139 'CreateReward' test.out

#- 140 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'L1g0Q6R8' \
    --limit '76' \
    --offset '88' \
    --sortBy '["namespace:desc", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'ImportRewards' test.out

#- 143 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'OuUN6NzF' \
    > test.out 2>&1
eval_tap $? 143 'GetReward' test.out

#- 144 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wtUFaQGs' \
    --body '{"description": "f27LPobz", "eventTopic": "UEx30cFO", "maxAwarded": 15, "maxAwardedPerUser": 52, "namespaceExpression": "cPBilE0O", "rewardCode": "FJD4Veit", "rewardConditions": [{"condition": "8Srvjt8m", "conditionName": "XkSlfRUo", "eventName": "dlJK9g16", "rewardItems": [{"duration": 57, "itemId": "Uk037HSC", "quantity": 29}, {"duration": 35, "itemId": "I6eWQS3t", "quantity": 97}, {"duration": 69, "itemId": "Ak28aVtB", "quantity": 11}]}, {"condition": "QCrgNKTK", "conditionName": "skU9z8DU", "eventName": "6mqquqFq", "rewardItems": [{"duration": 5, "itemId": "ACcAfpUV", "quantity": 73}, {"duration": 66, "itemId": "jQw7SNkB", "quantity": 9}, {"duration": 75, "itemId": "JNQC7HdW", "quantity": 37}]}, {"condition": "AygRAWaT", "conditionName": "cpEJvVPM", "eventName": "5EaKFbEa", "rewardItems": [{"duration": 66, "itemId": "8StSmQtX", "quantity": 27}, {"duration": 29, "itemId": "2tKehNbG", "quantity": 19}, {"duration": 3, "itemId": "LrFB8Mhi", "quantity": 0}]}], "userIdExpression": "L03tQuKq"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateReward' test.out

#- 145 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'DNqU0m0L' \
    > test.out 2>&1
eval_tap $? 145 'DeleteReward' test.out

#- 146 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'ChI2HX4v' \
    --body '{"payload": {"6fDeAynR": {}, "UZfbN4kj": {}, "7KVXzNDA": {}}}' \
    > test.out 2>&1
eval_tap $? 146 'CheckEventCondition' test.out

#- 147 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'tb3MFjVU' \
    --body '{"conditionName": "z0gFypdR", "userId": "tuNHRu1a"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteRewardConditionRecord' test.out

#- 148 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'iZiVtF1S' \
    --limit '95' \
    --offset '23' \
    --start '5qDiP1bD' \
    --storeId '2HYXHqH4' \
    --viewId 'A97qDJTU' \
    > test.out 2>&1
eval_tap $? 148 'QuerySections' test.out

#- 149 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'BZYdVaRD' \
    --body '{"active": false, "displayOrder": 60, "endDate": "1971-02-26T00:00:00Z", "ext": {"srZrMyG1": {}, "0iNSY9SB": {}, "PILizltn": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 30, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "3n7IQxxo", "sku": "EQpQfCWg"}, {"id": "qk4bVtmQ", "sku": "lB0ifecH"}, {"id": "pvxR8znf", "sku": "BUCzG4jZ"}], "localizations": {"6obNXzTl": {"description": "S6jLif8C", "localExt": {"yByASXL5": {}, "BodGMjIL": {}, "xBCaCwCo": {}}, "longDescription": "3yvaYZTv", "title": "GZnzc7Aj"}, "NmkrsbBr": {"description": "ZVG3MQO5", "localExt": {"PjJf975G": {}, "2AO2NE60": {}, "iDRPtZkx": {}}, "longDescription": "R58ZGrbI", "title": "L3BTzJt4"}, "RL8Pvhnv": {"description": "OtSyRL34", "localExt": {"jR1hJh2V": {}, "rObvHGwL": {}, "q0PUhphX": {}}, "longDescription": "r49PzZGm", "title": "PV4LXQTY"}}, "name": "62OaLGwD", "rotationType": "NONE", "startDate": "1994-03-20T00:00:00Z", "viewId": "R9tawiKh"}' \
    > test.out 2>&1
eval_tap $? 149 'CreateSection' test.out

#- 150 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '17GtOBj3' \
    > test.out 2>&1
eval_tap $? 150 'PurgeExpiredSection' test.out

#- 151 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Fo2pn30F' \
    --storeId '4snJIf4C' \
    > test.out 2>&1
eval_tap $? 151 'GetSection' test.out

#- 152 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '4fWtvMKF' \
    --storeId 'i3Tvzl7V' \
    --body '{"active": false, "displayOrder": 79, "endDate": "1997-11-28T00:00:00Z", "ext": {"EuxtCc0B": {}, "JbxZQ51u": {}, "ZYPLVXwS": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 50, "itemCount": 40, "rule": "SEQUENCE"}, "items": [{"id": "TT39PXzV", "sku": "r6SXFlcu"}, {"id": "4UsAsagM", "sku": "SZg73a58"}, {"id": "vRHz7jB8", "sku": "DzeXQ5kd"}], "localizations": {"AUr5SYI2": {"description": "XplaXwlf", "localExt": {"eVPg165f": {}, "G1h6t08T": {}, "yzBoBStk": {}}, "longDescription": "cPAl0Vsz", "title": "NhirzgxE"}, "EAhqpl9h": {"description": "KOlwF6Gs", "localExt": {"0pODi5DG": {}, "fkD5FQKt": {}, "l5hE7z4s": {}}, "longDescription": "kgRR2dax", "title": "DqMt5VWy"}, "6pA83brg": {"description": "DibMko5i", "localExt": {"QzLcKbJf": {}, "3NfyorgK": {}, "O4ejTgPA": {}}, "longDescription": "hPHZXzfo", "title": "yzivA8Qi"}}, "name": "sUHhvYNp", "rotationType": "NONE", "startDate": "1994-08-31T00:00:00Z", "viewId": "O4SperQm"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSection' test.out

#- 153 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SgdLjJqT' \
    --storeId 'LkJQmWWa' \
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
    --body '{"defaultLanguage": "oiHSv8qH", "defaultRegion": "zpNbCmWA", "description": "uimVva9L", "supportedLanguages": ["AH5a7Zhm", "9vK2b8IU", "koLGvlsj"], "supportedRegions": ["4kQVB1Hu", "NJThgGlq", "HVZid4Ig"], "title": "xjeVKTYg"}' \
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
    --storeId 'khza45J5' \
    > test.out 2>&1
eval_tap $? 161 'GetStore' test.out

#- 162 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'XnVg6CDE' \
    --body '{"defaultLanguage": "Z1M7YZWi", "defaultRegion": "NP9KQNdW", "description": "iYhNvGkY", "supportedLanguages": ["NKSFEioh", "xk8MWJp8", "AuW9rHDy"], "supportedRegions": ["qe9Y7ExU", "MtNq0VzN", "JNa3CYsT"], "title": "kmOH2EOo"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateStore' test.out

#- 163 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'gDy1q9LN' \
    > test.out 2>&1
eval_tap $? 163 'DeleteStore' test.out

#- 164 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'oQ7bzLeT' \
    --action 'UPDATE' \
    --itemSku 'zUchmHGW' \
    --itemType 'BUNDLE' \
    --limit '14' \
    --offset '56' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt:desc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'iNqUnKuT' \
    --updatedAtStart 'NyZp5R5Q' \
    > test.out 2>&1
eval_tap $? 164 'QueryChanges' test.out

#- 165 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '8JNfuscv' \
    > test.out 2>&1
eval_tap $? 165 'PublishAll' test.out

#- 166 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'TGDELGH8' \
    > test.out 2>&1
eval_tap $? 166 'PublishSelected' test.out

#- 167 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'l806vRty' \
    > test.out 2>&1
eval_tap $? 167 'SelectAllRecords' test.out

#- 168 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'DoK2bPSn' \
    --action 'UPDATE' \
    --itemSku 'j7CqCQ5t' \
    --itemType 'OPTIONBOX' \
    --type 'CATEGORY' \
    --updatedAtEnd 'oWExkoHx' \
    --updatedAtStart 'f6YhbCyw' \
    > test.out 2>&1
eval_tap $? 168 'GetStatistic' test.out

#- 169 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'VfDl5eU7' \
    > test.out 2>&1
eval_tap $? 169 'UnselectAllRecords' test.out

#- 170 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'XMGGH1Yg' \
    --namespace $AB_NAMESPACE \
    --storeId 'w2YNCpLY' \
    > test.out 2>&1
eval_tap $? 170 'SelectRecord' test.out

#- 171 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'DCWMO45h' \
    --namespace $AB_NAMESPACE \
    --storeId 'QCgRfuqf' \
    > test.out 2>&1
eval_tap $? 171 'UnselectRecord' test.out

#- 172 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'R7cmnlwv' \
    --targetStoreId '8AgzBINm' \
    > test.out 2>&1
eval_tap $? 172 'CloneStore' test.out

#- 173 ExportStore
eval_tap 0 173 'ExportStore # SKIP deprecated' test.out

#- 174 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'IbHpvIoR' \
    --limit '38' \
    --offset '65' \
    --sku 'g1wxvFIu' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'nIGxYp9v' \
    > test.out 2>&1
eval_tap $? 174 'QuerySubscriptions' test.out

#- 175 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zKaG01fp' \
    > test.out 2>&1
eval_tap $? 175 'RecurringChargeSubscription' test.out

#- 176 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fGN2Ikdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'GetTicketDynamic' test.out

#- 177 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'vmWFNWDa' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ErIdonjH"}' \
    > test.out 2>&1
eval_tap $? 177 'DecreaseTicketSale' test.out

#- 178 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'YPZIXSvY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetTicketBoothID' test.out

#- 179 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'yFMj0kNj' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 45, "orderNo": "snfPhGeI"}' \
    > test.out 2>&1
eval_tap $? 179 'IncreaseTicketSale' test.out

#- 180 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aB5Cf5OD' \
    --body '{"achievements": [{"id": "FUdJjbkZ", "value": 46}, {"id": "o4tYjZRj", "value": 23}, {"id": "zdKu39uQ", "value": 75}], "steamUserId": "P672dvFb"}' \
    > test.out 2>&1
eval_tap $? 180 'UnlockSteamUserAchievement' test.out

#- 181 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Htn4kFVN' \
    --xboxUserId 'iIwQnMtZ' \
    > test.out 2>&1
eval_tap $? 181 'GetXblUserAchievements' test.out

#- 182 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'NJNam0CI' \
    --body '{"achievements": [{"id": "BD8sywSs", "percentComplete": 91}, {"id": "tmEZwlFu", "percentComplete": 69}, {"id": "EskdoMoM", "percentComplete": 92}], "serviceConfigId": "JSNPdC27", "titleId": "xPgiyTRi", "xboxUserId": "5vmJGsdu"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateXblUserAchievement' test.out

#- 183 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'gXBPdAZP' \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeCampaign' test.out

#- 184 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JiwLVlXB' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeEntitlement' test.out

#- 185 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '6ioeugkH' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeFulfillment' test.out

#- 186 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'HaRrDhQC' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeIntegration' test.out

#- 187 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'zRwHOglU' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeOrder' test.out

#- 188 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'xZ8vFvkY' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizePayment' test.out

#- 189 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oCx8iBxj' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeSubscription' test.out

#- 190 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '8tbPOoYr' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeWallet' test.out

#- 191 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'duzabDhQ' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 191 'GetUserDLC' test.out

#- 192 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NIPyIGmQ' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'v8ooykhh' \
    --features '["MmpT92Ti", "FKbyIimt", "yIGI1YkU"]' \
    --itemId '["055E1stn", "2qNZcJYT", "WEJyLtpF"]' \
    --limit '77' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlements' test.out

#- 193 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '1zKKiiA8' \
    --body '[{"endDate": "1995-10-02T00:00:00Z", "grantedCode": "O7aDv5mA", "itemId": "6J9P4mgh", "itemNamespace": "HMmeTnyg", "language": "OU_370", "quantity": 52, "region": "zf2asL5o", "source": "REDEEM_CODE", "startDate": "1983-12-14T00:00:00Z", "storeId": "4XjCWjyN"}, {"endDate": "1975-01-07T00:00:00Z", "grantedCode": "AppheJpl", "itemId": "2NNDz59o", "itemNamespace": "yHQG0noZ", "language": "pqSa-IccQ", "quantity": 46, "region": "J7vw4eje", "source": "GIFT", "startDate": "1971-08-08T00:00:00Z", "storeId": "4cAeQp7H"}, {"endDate": "1979-07-14T00:00:00Z", "grantedCode": "6egacBNL", "itemId": "rNBV6qy6", "itemNamespace": "PMcMOOHh", "language": "wkD_QOjq-744", "quantity": 4, "region": "mzM1xK29", "source": "GIFT", "startDate": "1984-12-11T00:00:00Z", "storeId": "lasnCJ8Y"}]' \
    > test.out 2>&1
eval_tap $? 193 'GrantUserEntitlement' test.out

#- 194 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rhDF95u3' \
    --activeOnly 'false' \
    --appId 'Vlcohajq' \
    > test.out 2>&1
eval_tap $? 194 'GetUserAppEntitlementByAppId' test.out

#- 195 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SMYU7MwF' \
    --activeOnly 'true' \
    --limit '62' \
    --offset '62' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlementsByAppType' test.out

#- 196 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OCXHMcWt' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'JQ5gfuJc' \
    > test.out 2>&1
eval_tap $? 196 'GetUserEntitlementByItemId' test.out

#- 197 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'zKPnHQVI' \
    --ids '["UnODcnAJ", "mDr73c5u", "T1TwRgh3"]' \
    > test.out 2>&1
eval_tap $? 197 'GetUserActiveEntitlementsByItemIds' test.out

#- 198 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'sqOwKeOd' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --sku 'GE6VzQyb' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementBySku' test.out

#- 199 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'lBKc6pBR' \
    --appIds '["n5QcjDzg", "YvvrN1c8", "PKblFAN2"]' \
    --itemIds '["O5IsQX0T", "UWhCLvdo", "gqSfFqVy"]' \
    --skus '["JKGPgjSE", "QVQW7MDw", "xeGBwZSu"]' \
    > test.out 2>&1
eval_tap $? 199 'ExistsAnyUserActiveEntitlement' test.out

#- 200 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tkjkGp4U' \
    --itemIds '["IyNR9bFr", "hTUnJVbA", "WIwj9V9r"]' \
    > test.out 2>&1
eval_tap $? 200 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 201 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 't1KGfjW9' \
    --appId 'Y4Ksmpsf' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 202 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'D7DqT5YG' \
    --entitlementClazz 'CODE' \
    --itemId 'jbXLSXWt' \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementOwnershipByItemId' test.out

#- 203 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'v9NNf7Vd' \
    --ids '["8iOyiPz7", "0WAhU6Xs", "CRXkdg2Q"]' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementOwnershipByItemIds' test.out

#- 204 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'K1k7XizA' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'IP7W9bfK' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipBySku' test.out

#- 205 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '208Alzid' \
    --entitlementIds 'FmNSJugY' \
    > test.out 2>&1
eval_tap $? 205 'RevokeUserEntitlements' test.out

#- 206 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'VXMIYay9' \
    --namespace $AB_NAMESPACE \
    --userId 'Oz0vZo61' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlement' test.out

#- 207 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'KAnnpirm' \
    --namespace $AB_NAMESPACE \
    --userId 'ptgZyAyg' \
    --body '{"endDate": "1999-08-08T00:00:00Z", "nullFieldList": ["OgDAuQYT", "jJEyKtsE", "BmuFUZCO"], "startDate": "1976-08-08T00:00:00Z", "status": "REVOKED", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 207 'UpdateUserEntitlement' test.out

#- 208 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'rMHeg6aE' \
    --namespace $AB_NAMESPACE \
    --userId 'DpP5Al7F' \
    --body '{"options": ["LPuM8b6V", "bnU9RN8Z", "H6cka4y2"], "requestId": "75rAlVdh", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 208 'ConsumeUserEntitlement' test.out

#- 209 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'D8o2SbPy' \
    --namespace $AB_NAMESPACE \
    --userId 'y0YOS88P' \
    > test.out 2>&1
eval_tap $? 209 'DisableUserEntitlement' test.out

#- 210 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'gCn0uzat' \
    --namespace $AB_NAMESPACE \
    --userId 'Tt7gJRX7' \
    > test.out 2>&1
eval_tap $? 210 'EnableUserEntitlement' test.out

#- 211 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Y1kRVLPo' \
    --namespace $AB_NAMESPACE \
    --userId 'DNwe3y4G' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementHistories' test.out

#- 212 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'btL0nESN' \
    --namespace $AB_NAMESPACE \
    --userId 'Q1ZF50Ii' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserEntitlement' test.out

#- 213 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '15JdFIRg' \
    --body '{"duration": 91, "endDate": "1973-04-27T00:00:00Z", "itemId": "4EabpisV", "itemSku": "HBplFIUO", "language": "2m4SgoGM", "order": {"currency": {"currencyCode": "JMtDQsyp", "currencySymbol": "ezderNdx", "currencyType": "VIRTUAL", "decimals": 79, "namespace": "RVng8W0S"}, "ext": {"RVIQPEtz": {}, "bp5CZaGi": {}, "8MUyBXmW": {}}, "free": true}, "orderNo": "0YVydLbY", "origin": "Other", "quantity": 13, "region": "6EM8rROB", "source": "ACHIEVEMENT", "startDate": "1995-02-05T00:00:00Z", "storeId": "3hHyIVu0"}' \
    > test.out 2>&1
eval_tap $? 213 'FulfillItem' test.out

#- 214 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'y9vl6n5e' \
    --body '{"code": "YG8ez064", "language": "jf_fGzA_qC", "region": "EQADQ9Hc"}' \
    > test.out 2>&1
eval_tap $? 214 'RedeemCode' test.out

#- 215 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nr0aHlSg' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "tFpk7XgB", "namespace": "RTEerBM0"}, "item": {"itemId": "0w15MzCN", "itemSku": "ZvzNIsr2", "itemType": "fIgUcj05"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "s2eXbZWF", "namespace": "uMGujYzc"}, "item": {"itemId": "eq2jf4il", "itemSku": "HJwTxZ7N", "itemType": "v91p4LMW"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "xh8rOMf2", "namespace": "0hAfANdM"}, "item": {"itemId": "Jnh80tgQ", "itemSku": "2F8tiABQ", "itemType": "XPGJHBFW"}, "quantity": 11, "type": "ITEM"}], "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillRewards' test.out

#- 216 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UmltaVfl' \
    --endTime 'YLlUO6aB' \
    --limit '49' \
    --offset '43' \
    --productId 'YvzctELu' \
    --startTime '1POPg0Lr' \
    --status 'FULFILLED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 216 'QueryUserIAPOrders' test.out

#- 217 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'IM21byRb' \
    > test.out 2>&1
eval_tap $? 217 'QueryAllUserIAPOrders' test.out

#- 218 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'qOYFH1g8' \
    --endTime 'fbis8qBM' \
    --limit '14' \
    --offset '91' \
    --startTime 'GqDwhZe3' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPConsumeHistory' test.out

#- 219 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '7X2Rlyqa' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Ek_fpcz", "productId": "Yb47J0cI", "region": "ljNO4Upa", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 219 'MockFulfillIAPItem' test.out

#- 220 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'GbHyce6s' \
    --itemId 'fIdnQOEM' \
    --limit '73' \
    --offset '58' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserOrders' test.out

#- 221 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2LSV6LA0' \
    --body '{"currencyCode": "pWK0bR0O", "currencyNamespace": "i1c0bGOj", "discountedPrice": 33, "ext": {"r2KZJFUa": {}, "c10YyYiL": {}, "0Da90kfB": {}}, "itemId": "qBc2r12M", "language": "AcJWSAUt", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 23, "quantity": 75, "region": "ZXt8uO1F", "returnUrl": "ZWp7Mque", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 221 'AdminCreateUserOrder' test.out

#- 222 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'srrSU3Zu' \
    --itemId 'hHXpxhtM' \
    > test.out 2>&1
eval_tap $? 222 'CountOfPurchasedItem' test.out

#- 223 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'F2ACNmel' \
    --userId 'n1eoXJTH' \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrder' test.out

#- 224 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'FOirVG66' \
    --userId '9d9tlOgz' \
    --body '{"status": "CHARGEBACK", "statusReason": "prPAoMZb"}' \
    > test.out 2>&1
eval_tap $? 224 'UpdateUserOrderStatus' test.out

#- 225 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6DhXtMdd' \
    --userId '1OARwfVZ' \
    > test.out 2>&1
eval_tap $? 225 'FulfillUserOrder' test.out

#- 226 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'MdxXLPoH' \
    --userId 'rDS1QiLP' \
    > test.out 2>&1
eval_tap $? 226 'GetUserOrderGrant' test.out

#- 227 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'MVdLrQgk' \
    --userId '7TWIuDfA' \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrderHistories' test.out

#- 228 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'CvvWEoGs' \
    --userId 'JFVOTbKb' \
    --body '{"additionalData": {"cardSummary": "OpOMvOCH"}, "authorisedTime": "1994-08-21T00:00:00Z", "chargebackReversedTime": "1984-06-08T00:00:00Z", "chargebackTime": "1974-08-10T00:00:00Z", "chargedTime": "1995-07-03T00:00:00Z", "createdTime": "1996-02-11T00:00:00Z", "currency": {"currencyCode": "Nwurol9z", "currencySymbol": "r4uMJktO", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "dug88XJw"}, "customParameters": {"Dq8xOzlS": {}, "B04gvvqH": {}, "awOoWZFp": {}}, "extOrderNo": "MobIeAb4", "extTxId": "lOOrH70b", "extUserId": "boWpYDbY", "issuedAt": "1983-11-05T00:00:00Z", "metadata": {"PWdn9pkN": "KWp3Sqn8", "9iV52y2M": "DU1YghHW", "hvOoSUwa": "8BYvagBL"}, "namespace": "Il69BbUN", "nonceStr": "j2y31cCU", "paymentMethod": "vx414wY2", "paymentMethodFee": 28, "paymentOrderNo": "122BTS28", "paymentProvider": "ALIPAY", "paymentProviderFee": 52, "paymentStationUrl": "YquC7jsN", "price": 35, "refundedTime": "1976-11-14T00:00:00Z", "salesTax": 87, "sandbox": false, "sku": "DDMi63o1", "status": "CHARGED", "statusReason": "IYxbJrbN", "subscriptionId": "ySU7uaVU", "subtotalPrice": 63, "targetNamespace": "L3PFaIor", "targetUserId": "pG4rM9Xm", "tax": 44, "totalPrice": 9, "totalTax": 60, "txEndTime": "1984-10-21T00:00:00Z", "type": "jEdR3nr0", "userId": "wyM8c1xq", "vat": 21}' \
    > test.out 2>&1
eval_tap $? 228 'ProcessUserOrderNotification' test.out

#- 229 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'GOUu5gJx' \
    --userId 'JuQLFVeQ' \
    > test.out 2>&1
eval_tap $? 229 'DownloadUserOrderReceipt' test.out

#- 230 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QYGbm4PX' \
    --body '{"currencyCode": "7MPVpqVC", "currencyNamespace": "DyT2PtV2", "customParameters": {"bVH86x6d": {}, "q31wwfjc": {}, "OvCdia7Y": {}}, "description": "K94paJBP", "extOrderNo": "d68aw9vB", "extUserId": "ZWCVRhOG", "itemType": "EXTENSION", "language": "oet", "metadata": {"VJy6bMhd": "4wsE5GOe", "4sjAGsbc": "rxW69Ngi", "mIEVV6p9": "3xb2o2Oo"}, "notifyUrl": "1bSZEOMX", "omitNotification": false, "platform": "lBMdOJ0k", "price": 87, "recurringPaymentOrderNo": "bIrpPi5w", "region": "REl3wFMf", "returnUrl": "edZ5XKAx", "sandbox": true, "sku": "8F3f9Qjj", "subscriptionId": "oPGaDQ4v", "title": "30ja7R12"}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserPaymentOrder' test.out

#- 231 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yozAuXos' \
    --userId 'lM0Ec2Hm' \
    --body '{"description": "uafrSfcU"}' \
    > test.out 2>&1
eval_tap $? 231 'RefundUserPaymentOrder' test.out

#- 232 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '7Akv4kKt' \
    --body '{"code": "iP5LNNBd", "orderNo": "Q5xvjNcC"}' \
    > test.out 2>&1
eval_tap $? 232 'ApplyUserRedemption' test.out

#- 233 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'M4E9oCnb' \
    --chargeStatus 'SETUP' \
    --itemId 'rqOVZPas' \
    --limit '20' \
    --offset '7' \
    --sku 'TBU9riCq' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserSubscriptions' test.out

#- 234 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'trdta2gG' \
    --excludeSystem 'true' \
    --limit '86' \
    --offset '46' \
    --subscriptionId 'J7aXIiV9' \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscriptionActivities' test.out

#- 235 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'KdtfdpUD' \
    --body '{"grantDays": 82, "itemId": "QZwLeTtq", "language": "fJJJ28sO", "reason": "OS98TlDc", "region": "onO6YSZI", "source": "lZz3NZaO"}' \
    > test.out 2>&1
eval_tap $? 235 'PlatformSubscribeSubscription' test.out

#- 236 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uOP5id2s' \
    --itemId '6ZUQ4yk6' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 237 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5jOTLz8B' \
    --userId 'R4W7jXEE' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscription' test.out

#- 238 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'O6lUo6mK' \
    --userId 'no9khyM6' \
    > test.out 2>&1
eval_tap $? 238 'DeleteUserSubscription' test.out

#- 239 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0idp2Mqb' \
    --userId 'R1q6eJCH' \
    --force 'false' \
    --body '{"immediate": false, "reason": "Gv3xLuag"}' \
    > test.out 2>&1
eval_tap $? 239 'CancelSubscription' test.out

#- 240 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rXooSILY' \
    --userId 'XVgtJblx' \
    --body '{"grantDays": 67, "reason": "j7Xx67ES"}' \
    > test.out 2>&1
eval_tap $? 240 'GrantDaysToSubscription' test.out

#- 241 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KpM3QPMN' \
    --userId 'DPri1aaX' \
    --excludeFree 'true' \
    --limit '21' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionBillingHistories' test.out

#- 242 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'leM1F0nt' \
    --userId 'RQ9IP1sD' \
    --body '{"additionalData": {"cardSummary": "gpzw2Wml"}, "authorisedTime": "1987-11-09T00:00:00Z", "chargebackReversedTime": "1987-03-02T00:00:00Z", "chargebackTime": "1989-09-26T00:00:00Z", "chargedTime": "1976-08-24T00:00:00Z", "createdTime": "1982-01-12T00:00:00Z", "currency": {"currencyCode": "n4BViMTd", "currencySymbol": "NU4eaMso", "currencyType": "REAL", "decimals": 67, "namespace": "PZwkrjQh"}, "customParameters": {"8JAcIRyy": {}, "FxzigU2h": {}, "vTef6hkl": {}}, "extOrderNo": "ZuzaLx7x", "extTxId": "mShtE1Rv", "extUserId": "pOeIYnFx", "issuedAt": "1981-12-10T00:00:00Z", "metadata": {"O7XyFNXd": "lsNlqtaG", "zdSS7dCt": "wMEMJgLY", "I1rEuFqG": "mjLayey3"}, "namespace": "JchWFMcN", "nonceStr": "N2Qxau07", "paymentMethod": "hvDbpZVF", "paymentMethodFee": 21, "paymentOrderNo": "3HMivLlj", "paymentProvider": "ALIPAY", "paymentProviderFee": 13, "paymentStationUrl": "ctGBPWf1", "price": 69, "refundedTime": "1999-08-30T00:00:00Z", "salesTax": 28, "sandbox": false, "sku": "e2nSnrnB", "status": "REFUNDING", "statusReason": "PCGJUrba", "subscriptionId": "AEiyJlIa", "subtotalPrice": 17, "targetNamespace": "XZe9AiSS", "targetUserId": "OAOQ4SBR", "tax": 39, "totalPrice": 56, "totalTax": 52, "txEndTime": "1978-05-03T00:00:00Z", "type": "PuAxZtxD", "userId": "V0MITRlb", "vat": 78}' \
    > test.out 2>&1
eval_tap $? 242 'ProcessUserSubscriptionNotification' test.out

#- 243 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 's1O5GcUD' \
    --namespace $AB_NAMESPACE \
    --userId 'UI5fSMIn' \
    --body '{"count": 22, "orderNo": "tNyFjFzC"}' \
    > test.out 2>&1
eval_tap $? 243 'AcquireUserTicket' test.out

#- 244 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '93SkrPbK' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserCurrencyWallets' test.out

#- 245 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'OzL2qsNR' \
    --namespace $AB_NAMESPACE \
    --userId 'n2ECkbLU' \
    --limit '61' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 245 'ListUserCurrencyTransactions' test.out

#- 246 CheckWallet
eval_tap 0 246 'CheckWallet # SKIP deprecated' test.out

#- 247 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '9tbrKo2l' \
    --namespace $AB_NAMESPACE \
    --userId 'fxjqPKdq' \
    --body '{"amount": 72, "expireAt": "1984-12-11T00:00:00Z", "origin": "Other", "reason": "VF08aGI8", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 247 'CreditUserWallet' test.out

#- 248 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'v0AOTqOX' \
    --namespace $AB_NAMESPACE \
    --userId 'Fy1EdCV0' \
    --body '{"amount": 37, "walletPlatform": "Epic"}' \
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
    --storeId 'qahyZ7XT' \
    > test.out 2>&1
eval_tap $? 254 'ListViews' test.out

#- 255 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '7gM6SqTG' \
    --body '{"displayOrder": 96, "localizations": {"cpmUnnO7": {"description": "mHp30S8Q", "localExt": {"5EhR6LQD": {}, "WFwoWqwH": {}, "THKY2W2t": {}}, "longDescription": "413pjdfI", "title": "6pUuWFdB"}, "HF8gogHj": {"description": "Ik0oeeI6", "localExt": {"fjhoU2nO": {}, "TvvGBzsY": {}, "B0wy2XBa": {}}, "longDescription": "B9PKnI9T", "title": "CwAIGahX"}, "w49iTFO4": {"description": "Km5bVz92", "localExt": {"4rg2dI1e": {}, "ApaMhc3c": {}, "G4Was0lw": {}}, "longDescription": "IzNoW5Bs", "title": "ekkJ4L2j"}}, "name": "8s4uD88x"}' \
    > test.out 2>&1
eval_tap $? 255 'CreateView' test.out

#- 256 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'EXJpT5qg' \
    --storeId 'EN4vUOxL' \
    > test.out 2>&1
eval_tap $? 256 'GetView' test.out

#- 257 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'AhIfddXL' \
    --storeId 'M3T5DTuG' \
    --body '{"displayOrder": 1, "localizations": {"7QhUTTze": {"description": "Fste2n0L", "localExt": {"6SNfLmIu": {}, "NDoYlz7w": {}, "wbiAtsAO": {}}, "longDescription": "Tu4EGOa1", "title": "BEJRRptA"}, "Ia83r4Rc": {"description": "hIo8RWga", "localExt": {"gyMpdx2C": {}, "sUiIugpM": {}, "K8gsIUL7": {}}, "longDescription": "kbvIxj7K", "title": "JHr05dqu"}, "kmiK5trH": {"description": "gwEZ2QAl", "localExt": {"ljSR3HrX": {}, "Uxmc5BH7": {}, "2z5uiFpl": {}}, "longDescription": "FWqo2AJd", "title": "RbdNfuUt"}}, "name": "u8qb1NzG"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateView' test.out

#- 258 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'knRxiySW' \
    --storeId 'BYs9eHNH' \
    > test.out 2>&1
eval_tap $? 258 'DeleteView' test.out

#- 259 QueryWallets
eval_tap 0 259 'QueryWallets # SKIP deprecated' test.out

#- 260 GetWallet
eval_tap 0 260 'GetWallet # SKIP deprecated' test.out

#- 261 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'xbFtpU6t' \
    --end 'sGgTLq6j' \
    --start 'AYvKjeFk' \
    > test.out 2>&1
eval_tap $? 261 'SyncOrders' test.out

#- 262 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["IrPRreg1", "KxnC2hY9", "PZgC32ST"], "apiKey": "jguCUos1", "authoriseAsCapture": true, "blockedPaymentMethods": ["rtINDuzX", "pNI59yEV", "TwNLkc6J"], "clientKey": "TRwC7U5G", "dropInSettings": "UxQi07Sp", "liveEndpointUrlPrefix": "klzUauqk", "merchantAccount": "Hsh7gyyJ", "notificationHmacKey": "WPUipVBB", "notificationPassword": "W7HRm997", "notificationUsername": "HQIRAKOK", "returnUrl": "tP5FukXp", "settings": "s3LIDo2O"}' \
    > test.out 2>&1
eval_tap $? 262 'TestAdyenConfig' test.out

#- 263 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "MWMaAgsm", "privateKey": "wcDuxsZS", "publicKey": "QzbNyEu0", "returnUrl": "AQn8IHZe"}' \
    > test.out 2>&1
eval_tap $? 263 'TestAliPayConfig' test.out

#- 264 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "Vnqwip0B", "secretKey": "NcHm3YC1"}' \
    > test.out 2>&1
eval_tap $? 264 'TestCheckoutConfig' test.out

#- 265 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'tOzQTppq' \
    --region '1OegP6vy' \
    > test.out 2>&1
eval_tap $? 265 'DebugMatchedPaymentMerchantConfig' test.out

#- 266 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "4bXeEu3E", "clientSecret": "YPxBhqpB", "returnUrl": "GKLCB7Kj", "webHookId": "8qelxRDU"}' \
    > test.out 2>&1
eval_tap $? 266 'TestPayPalConfig' test.out

#- 267 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["PbGgmFfX", "rkD1EgXm", "0YY01aAb"], "publishableKey": "xeKMP8i2", "secretKey": "tB0Uv1wF", "webhookSecret": "ufL0D1t7"}' \
    > test.out 2>&1
eval_tap $? 267 'TestStripeConfig' test.out

#- 268 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "lMbhAs2R", "key": "ijZrteN6", "mchid": "E0MmJdKg", "returnUrl": "Ww2bMmnw"}' \
    > test.out 2>&1
eval_tap $? 268 'TestWxPayConfig' test.out

#- 269 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "pibLeqHU", "flowCompletionUrl": "tBI67z0e", "merchantId": 92, "projectId": 78, "projectSecretKey": "r4MLjazs"}' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfig' test.out

#- 270 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'iM1Bv014' \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentMerchantConfig' test.out

#- 271 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'pLKDtCZN' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["uVQxx1uK", "Q9uibWTk", "51cBvd7N"], "apiKey": "VAgmxxr7", "authoriseAsCapture": true, "blockedPaymentMethods": ["OHBxyFQj", "zbogOOtA", "tAPtj12D"], "clientKey": "380Amv4A", "dropInSettings": "ylsNmhkn", "liveEndpointUrlPrefix": "bOIQ8j7i", "merchantAccount": "agva7g1p", "notificationHmacKey": "xsLQV3Jq", "notificationPassword": "P1LvqcDc", "notificationUsername": "XzwZVVvO", "returnUrl": "UvUXsEOX", "settings": "Yem9RcCc"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateAdyenConfig' test.out

#- 272 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'FrGz9cbn' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 272 'TestAdyenConfigById' test.out

#- 273 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'UeyHU54H' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "gHaSIX4u", "privateKey": "xat7bZWs", "publicKey": "OqMYNKBr", "returnUrl": "EuFKSXuk"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateAliPayConfig' test.out

#- 274 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '1RXvZgLR' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 274 'TestAliPayConfigById' test.out

#- 275 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'NHH8IYyB' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "O01TKU60", "secretKey": "DNEu4h7B"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateCheckoutConfig' test.out

#- 276 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Gqi3uPVO' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestCheckoutConfigById' test.out

#- 277 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'uUyD61s8' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "Rey9lMCl", "clientSecret": "wvP8oAt9", "returnUrl": "pmy6ZO5z", "webHookId": "UwYRzk1g"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdatePayPalConfig' test.out

#- 278 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '2Aib7LdA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestPayPalConfigById' test.out

#- 279 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '4jgLe5nC' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["T1jlpkTz", "hWsdS47n", "PPXhMjV8"], "publishableKey": "oo88XPdo", "secretKey": "OV7wJWtU", "webhookSecret": "03OR1RP6"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateStripeConfig' test.out

#- 280 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'QaoEZnVU' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 280 'TestStripeConfigById' test.out

#- 281 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'LV5ezeK5' \
    --validate 'true' \
    --body '{"appId": "c9Fthpz1", "key": "3Xak8iBd", "mchid": "JRsvCdBC", "returnUrl": "bW4vMHct"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdateWxPayConfig' test.out

#- 282 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '7Cum5Ke5' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 282 'UpdateWxPayConfigCert' test.out

#- 283 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IHe0rQ8l' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfigById' test.out

#- 284 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ekTuimUj' \
    --validate 'false' \
    --body '{"apiKey": "PdIbdumJ", "flowCompletionUrl": "bwE4aDAk", "merchantId": 53, "projectId": 86, "projectSecretKey": "WqPiBHMS"}' \
    > test.out 2>&1
eval_tap $? 284 'UpdateXsollaConfig' test.out

#- 285 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '0oePLw0O' \
    > test.out 2>&1
eval_tap $? 285 'TestXsollaConfigById' test.out

#- 286 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'AVg8gQVw' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateXsollaUIConfig' test.out

#- 287 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '99' \
    --namespace '6UnE0NgJ' \
    --offset '39' \
    --region 'ElaW5tda' \
    > test.out 2>&1
eval_tap $? 287 'QueryPaymentProviderConfig' test.out

#- 288 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "r7sX6VKk", "region": "CtbaFZtX", "sandboxTaxJarApiToken": "aaRBCXSC", "specials": ["PAYPAL", "PAYPAL", "ADYEN"], "taxJarApiToken": "xyKCf2z6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 288 'CreatePaymentProviderConfig' test.out

#- 289 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 289 'GetAggregatePaymentProviders' test.out

#- 290 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'eZYwV7AP' \
    --region '04ddJz4Z' \
    > test.out 2>&1
eval_tap $? 290 'DebugMatchedPaymentProviderConfig' test.out

#- 291 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 291 'GetSpecialPaymentProviders' test.out

#- 292 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Fn3sbAQw' \
    --body '{"aggregate": "ADYEN", "namespace": "InNiCUGn", "region": "8RdDP6HJ", "sandboxTaxJarApiToken": "R9r5L1Nw", "specials": ["ALIPAY", "XSOLLA", "WXPAY"], "taxJarApiToken": "QnR6dYQd", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentProviderConfig' test.out

#- 293 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'W5AVIUOk' \
    > test.out 2>&1
eval_tap $? 293 'DeletePaymentProviderConfig' test.out

#- 294 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxConfig' test.out

#- 295 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "z7l7R88q", "taxJarApiToken": "Vj4TiMse", "taxJarEnabled": false, "taxJarProductCodesMapping": {"PmnlorxK": "4mSk8Ibm", "aXkz9sdh": "nBghFUco", "m45P55TM": "8kRzD9ME"}}' \
    > test.out 2>&1
eval_tap $? 295 'UpdatePaymentTaxConfig' test.out

#- 296 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'IQixVTOf' \
    --end 'QGg2NwjK' \
    --start '7ce2jbi6' \
    > test.out 2>&1
eval_tap $? 296 'SyncPaymentOrders' test.out

#- 297 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '7BSyEp3B' \
    --storeId 'lBvowcuT' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRootCategories' test.out

#- 298 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'qqiufhpp' \
    --storeId 'ddipBWAb' \
    > test.out 2>&1
eval_tap $? 298 'DownloadCategories' test.out

#- 299 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'm6bj2PCM' \
    --namespace $AB_NAMESPACE \
    --language 'JLcwPHUK' \
    --storeId 'rcNvzeI3' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetCategory' test.out

#- 300 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'gJ8PGxCU' \
    --namespace $AB_NAMESPACE \
    --language 'jJG0jUia' \
    --storeId 'hHHs82Jp' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetChildCategories' test.out

#- 301 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'mNr4Y4Ft' \
    --namespace $AB_NAMESPACE \
    --language 'o46hOLsU' \
    --storeId 'gP7Ct66A' \
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
    --language 'jn7zSgay' \
    --region 'kYYt4JsQ' \
    --storeId '4263v4m0' \
    --appId 'LKdXGoFZ' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetItemByAppId' test.out

#- 304 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'rYNOETkb' \
    --categoryPath 'rv4kpyfY' \
    --features 'afG0Yrmi' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --language 'ri1uKc6k' \
    --limit '78' \
    --offset '62' \
    --region 'bjJk8GN6' \
    --sortBy '["displayOrder:desc", "createdAt:desc", "name:asc"]' \
    --storeId 'hhxL3ahP' \
    --tags 'jMxeo3XP' \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryItems' test.out

#- 305 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'UHwaocQv' \
    --region 'OT6HZ0Rj' \
    --storeId 'ZBLJk07L' \
    --sku 'rKsGQKHM' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetItemBySku' test.out

#- 306 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'IysiRbey' \
    --region 'ZEXXwh4s' \
    --storeId 'dHzQU4WK' \
    --itemIds 's3oelVQt' \
    > test.out 2>&1
eval_tap $? 306 'PublicBulkGetItems' test.out

#- 307 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["8YYV65M9", "ZECfUfYi", "BqWz1ln0"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicValidateItemPurchaseCondition' test.out

#- 308 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'APP' \
    --limit '51' \
    --offset '2' \
    --region 'wZ5H8eGK' \
    --storeId 'AbA4YKWm' \
    --keyword 'wVo4dcHG' \
    --language 'T887ycQJ' \
    > test.out 2>&1
eval_tap $? 308 'PublicSearchItems' test.out

#- 309 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '9RrndEh8' \
    --namespace $AB_NAMESPACE \
    --language 'cOutHOlT' \
    --region 'GeJ4O793' \
    --storeId 'SsHpqMbY' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetApp' test.out

#- 310 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'sExbLcBN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemDynamicData' test.out

#- 311 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'KEB4q08j' \
    --namespace $AB_NAMESPACE \
    --language 'lNbjGMBE' \
    --populateBundle 'true' \
    --region 'dUvt2t9d' \
    --storeId 'p2SBGskD' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetItem' test.out

#- 312 GetPaymentCustomization
eval_tap 0 312 'GetPaymentCustomization # SKIP deprecated' test.out

#- 313 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "Ef2kDpa0", "paymentProvider": "WALLET", "returnUrl": "qSBWbMc9", "ui": "y6ymxerN", "zipCode": "Un9M2CLw"}' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentUrl' test.out

#- 314 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pVy9gT86' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetPaymentMethods' test.out

#- 315 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MGtRl9OR' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUnpaidPaymentOrder' test.out

#- 316 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Gpf2fygO' \
    --paymentProvider 'WALLET' \
    --zipCode 'zyQwrzRf' \
    --body '{"token": "P2xZFzo8"}' \
    > test.out 2>&1
eval_tap $? 316 'Pay' test.out

#- 317 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JYLBSvjT' \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckPaymentOrderPaidStatus' test.out

#- 318 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'MErCaFnG' \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentPublicConfig' test.out

#- 319 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'F09y6gmm' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetQRCode' test.out

#- 320 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'dZ7riCb0' \
    --foreinginvoice 'JJvVL2JD' \
    --invoiceId '7GCxh9wZ' \
    --payload '1aXm8iQc' \
    --redirectResult 'Wa7Hc3Yl' \
    --resultCode 'G29kUHmT' \
    --sessionId '7GPsghkx' \
    --status 'uMOTIJ4U' \
    --token 'VHPNEsri' \
    --type 'uri1ZNaR' \
    --userId 'JiP2Rm8N' \
    --orderNo 'v9ZePWT9' \
    --paymentOrderNo 'NhSQMEJX' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'WhHw1ZOX' \
    > test.out 2>&1
eval_tap $? 320 'PublicNormalizePaymentReturnUrl' test.out

#- 321 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '3XlbsKiA' \
    --paymentOrderNo 'xiIidAXJ' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 321 'GetPaymentTaxValue' test.out

#- 322 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '518b5lPM' \
    > test.out 2>&1
eval_tap $? 322 'GetRewardByCode' test.out

#- 323 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'NhtFTfH8' \
    --limit '65' \
    --offset '94' \
    --sortBy '["namespace", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 323 'QueryRewards1' test.out

#- 324 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '9zeer8Sm' \
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
    --appIds '["kZWUjA3a", "MBRnByBI", "KZzNZsme"]' \
    --itemIds '["F6A9xham", "GDI9zR9z", "hcxm1b7U"]' \
    --skus '["4TbFsi1q", "v1palPUH", "jYo7kAtu"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyMyActiveEntitlement' test.out

#- 327 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'c5Q32eNm' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'WttfkLB8' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 329 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'Nbnr9onu' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 330 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["VNnjrWQz", "QUsbUFgP", "RjTDKmV3"]' \
    --itemIds '["YW6iXluF", "nNoBWdEW", "yZ2attEv"]' \
    --skus '["NQrQg2vP", "fsgwd9l0", "18FKgzFj"]' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetEntitlementOwnershipToken' test.out

#- 331 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'gshS9Onn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyWallet' test.out

#- 332 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PZYmSFua' \
    --body '{"epicGamesJwtToken": "84KRtTtw"}' \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGameDLC' test.out

#- 333 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'aKlwAlE1' \
    --body '{"serviceLabel": 96}' \
    > test.out 2>&1
eval_tap $? 333 'PublicSyncPsnDlcInventory' test.out

#- 334 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Uh5rsw7J' \
    --body '{"serviceLabels": [73, 27, 78]}' \
    > test.out 2>&1
eval_tap $? 334 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 335 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HC7Sjp6Q' \
    --body '{"appId": "85iEg0n0", "steamId": "cDHr61Lv"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncSteamDLC' test.out

#- 336 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'OjYpSwjl' \
    --body '{"xstsToken": "vOeNSMKL"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxDLC' test.out

#- 337 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LRaXyCfy' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'j1xchGbS' \
    --features '["lRUIzbRQ", "fLbSlzWD", "uhn815iM"]' \
    --itemId '["QVrrQ2nF", "uDJW6klY", "kGa8dJLK"]' \
    --limit '96' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserEntitlements' test.out

#- 338 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'agytlWz4' \
    --appId 'sNsDeiQw' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserAppEntitlementByAppId' test.out

#- 339 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'fqEkJUbb' \
    --limit '76' \
    --offset '21' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserEntitlementsByAppType' test.out

#- 340 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2yaFbV9B' \
    --entitlementClazz 'MEDIA' \
    --itemId 'DJQImzkH' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserEntitlementByItemId' test.out

#- 341 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'McKBEdcO' \
    --entitlementClazz 'MEDIA' \
    --sku 'dhckX86n' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementBySku' test.out

#- 342 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '35O48zQy' \
    --appIds '["BLUd2g8v", "2k0KkOSl", "1y26O1dQ"]' \
    --itemIds '["EQzm2JRj", "HgrlL4uA", "OxQbsEng"]' \
    --skus '["ZIJzoPKP", "RokkPYbD", "F0CGMkDI"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyUserActiveEntitlement' test.out

#- 343 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wHgAZxdw' \
    --appId 'Xu21475R' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Xk27fVGw' \
    --entitlementClazz 'CODE' \
    --itemId '4jh1RAoS' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 345 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ewT6kSJ7' \
    --ids '["qWyIaL1n", "gifhVSA1", "4btWz2i0"]' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 346 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'KvTXq6fb' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'ptuWZP3f' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 347 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Rat65lpR' \
    --namespace $AB_NAMESPACE \
    --userId 'xbgM1I2U' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlement' test.out

#- 348 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'uuYPIyDF' \
    --namespace $AB_NAMESPACE \
    --userId 'VLEMauJt' \
    --body '{"options": ["3rsG5bLY", "Z660WDMu", "snXfWcSM"], "requestId": "HtuHHp9E", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 348 'PublicConsumeUserEntitlement' test.out

#- 349 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'T7wxu2w4' \
    --body '{"code": "5rRrON0o", "language": "HYU-LJ", "region": "c72FIQnp"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicRedeemCode' test.out

#- 350 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'sqhScM7Y' \
    --body '{"excludeOldTransactions": false, "language": "tcpx_IO", "productId": "pr9OuYTY", "receiptData": "dpYaXE0B", "region": "Dish3Pkr", "transactionId": "oTM2o9Eq"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicFulfillAppleIAPItem' test.out

#- 351 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TSgEwBao' \
    --body '{"epicGamesJwtToken": "TkLrq7gZ"}' \
    > test.out 2>&1
eval_tap $? 351 'SyncEpicGamesInventory' test.out

#- 352 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ybonc0LJ' \
    --body '{"autoAck": true, "language": "ok", "orderId": "64fPWSrC", "packageName": "TlTqWGVz", "productId": "mMW05oYF", "purchaseTime": 45, "purchaseToken": "pwbM4UDl", "region": "MTMTlP2E"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicFulfillGoogleIAPItem' test.out

#- 353 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'kBhj5P0Z' \
    --body '{"currencyCode": "2sqrhgUr", "price": 0.3209240005185915, "productId": "JSfUAJzj", "serviceLabel": 40}' \
    > test.out 2>&1
eval_tap $? 353 'PublicReconcilePlayStationStore' test.out

#- 354 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'VD9yO2Qb' \
    --body '{"currencyCode": "OgiZDmJ2", "price": 0.7631871029227486, "productId": "uUFNX9pO", "serviceLabels": [82, 91, 36]}' \
    > test.out 2>&1
eval_tap $? 354 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 355 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '85nypilt' \
    --body '{"appId": "3LCxRf9E", "language": "uZQF_711", "region": "XJWUSkoE", "stadiaPlayerId": "qZq0i7k5"}' \
    > test.out 2>&1
eval_tap $? 355 'SyncStadiaEntitlement' test.out

#- 356 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'RnltLGn8' \
    --body '{"appId": "FrNml6EL", "currencyCode": "UqrGbeep", "language": "Srr", "price": 0.9174974853562344, "productId": "W3WaTmxt", "region": "hi23txad", "steamId": "tBwtY4Jz"}' \
    > test.out 2>&1
eval_tap $? 356 'SyncSteamInventory' test.out

#- 357 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'I7fIW1aC' \
    --body '{"gameId": "oAHYV36S", "language": "wVo-963", "region": "5FDJ6HIA"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncTwitchDropsEntitlement' test.out

#- 358 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'kZOIEfIP' \
    --body '{"currencyCode": "zPqdJ8lr", "price": 0.3033605538582129, "productId": "m5n0tmPm", "xstsToken": "6A9WuhpS"}' \
    > test.out 2>&1
eval_tap $? 358 'SyncXboxInventory' test.out

#- 359 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '6nREXOMs' \
    --itemId 'VQADJcZ7' \
    --limit '39' \
    --offset '81' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 359 'PublicQueryUserOrders' test.out

#- 360 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ZeVA3XFc' \
    --body '{"currencyCode": "NMIT3ZDo", "discountedPrice": 10, "ext": {"useA128L": {}, "nRHFd7BU": {}, "yNd6VsY9": {}}, "itemId": "a2Iu3atN", "language": "XThz-SAtS", "price": 81, "quantity": 0, "region": "HJFLa7ED", "returnUrl": "W8wvPipR"}' \
    > test.out 2>&1
eval_tap $? 360 'PublicCreateUserOrder' test.out

#- 361 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CoJ17QhB' \
    --userId 'wztrxdrh' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserOrder' test.out

#- 362 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4Lt3LlMF' \
    --userId 'N205wspL' \
    > test.out 2>&1
eval_tap $? 362 'PublicCancelUserOrder' test.out

#- 363 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'YyTH8yuF' \
    --userId 'qhLPd5GZ' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserOrderHistories' test.out

#- 364 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'F7xZzqJv' \
    --userId 'nSqVaUsw' \
    > test.out 2>&1
eval_tap $? 364 'PublicDownloadUserOrderReceipt' test.out

#- 365 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '9JBUyJ0U' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentAccounts' test.out

#- 366 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '5f171i50' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'U6xHQPLJ' \
    > test.out 2>&1
eval_tap $? 366 'PublicDeletePaymentAccount' test.out

#- 367 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'Xmg24S9Y' \
    --language 'jmiu2Dq9' \
    --region 'mjWTz0si' \
    --storeId 'JaqKS0kU' \
    --viewId 'VisqppLI' \
    > test.out 2>&1
eval_tap $? 367 'PublicListActiveSections' test.out

#- 368 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'HVOJDjxV' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'S48knIry' \
    --limit '15' \
    --offset '52' \
    --sku '4WDjaLjY' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 368 'PublicQueryUserSubscriptions' test.out

#- 369 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'XFsGRrxq' \
    --body '{"currencyCode": "FKQTwckT", "itemId": "FjQIEx94", "language": "Yhc_fEUU", "region": "BPJo5p3U", "returnUrl": "aoKDE27X", "source": "qMh1mHQs"}' \
    > test.out 2>&1
eval_tap $? 369 'PublicSubscribeSubscription' test.out

#- 370 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ztowRTU7' \
    --itemId 'yWvNgOZb' \
    > test.out 2>&1
eval_tap $? 370 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 371 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZEBGSlzL' \
    --userId 'BVvWqKbH' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscription' test.out

#- 372 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rIyVlXEK' \
    --userId 'unk5psVf' \
    > test.out 2>&1
eval_tap $? 372 'PublicChangeSubscriptionBillingAccount' test.out

#- 373 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nIqgPQuA' \
    --userId 'zrGx283q' \
    --body '{"immediate": true, "reason": "45hqf57v"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicCancelSubscription' test.out

#- 374 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ur8XCzSF' \
    --userId 'b4WFQm29' \
    --excludeFree 'true' \
    --limit '82' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscriptionBillingHistories' test.out

#- 375 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'ShzU3tqz' \
    --language 'JBRq02XO' \
    --storeId 'OeGp1tbv' \
    > test.out 2>&1
eval_tap $? 375 'PublicListViews' test.out

#- 376 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'FN50IaRo' \
    --namespace $AB_NAMESPACE \
    --userId 'fgs7TZd1' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetWallet' test.out

#- 377 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'PW8i0hhd' \
    --namespace $AB_NAMESPACE \
    --userId 'r2YAE5hC' \
    --limit '27' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 377 'PublicListUserWalletTransactions' test.out

#- 378 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate '1ahccrXh' \
    --baseAppId 'ELXzKqV1' \
    --categoryPath 'a0Ud7ZhN' \
    --features '7nPICOug' \
    --includeSubCategoryItem 'true' \
    --itemName '3Wvs8hPy' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '22' \
    --offset '24' \
    --region '4va7NPF0' \
    --sortBy '["updatedAt:asc", "updatedAt", "createdAt:desc"]' \
    --storeId 'ZyxzsAAR' \
    --tags 'BMjooPY9' \
    --targetNamespace 'a4yNxIwP' \
    > test.out 2>&1
eval_tap $? 378 'QueryItems1' test.out

#- 379 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'PPCO6iDo' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 379 'ImportStore1' test.out

#- 380 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Qanq0kNY' \
    --body '{"itemIds": ["KW6PRl5V", "7DL6GJND", "GrXezM9H"]}' \
    > test.out 2>&1
eval_tap $? 380 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE