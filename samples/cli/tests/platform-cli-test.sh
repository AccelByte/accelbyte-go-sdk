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
echo "1..360"

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
    --body '{"context": {"item": {"appId": "G9Ks3UIz", "appType": "SOFTWARE", "baseAppId": "JoY2cDen", "boothName": "YC6t9O0u", "boundItemIds": ["xuEkzqdH", "AbFBTu2O", "r8sUbBdF"], "categoryPath": "SUFyuDRe", "clazz": "KvJThXGS", "createdAt": "1989-06-19T00:00:00Z", "description": "nNphgJ61", "displayOrder": 43, "entitlementType": "CONSUMABLE", "ext": {"2STm0BCm": {}, "e1RfdDuR": {}, "lrTukRWS": {}}, "features": ["3CVQ1drU", "bOwSdxT5", "DwHaKN1g"], "fresh": false, "images": [{"as": "bhjeGKtO", "caption": "NyvvM7Mx", "height": 62, "imageUrl": "KJvu4Fy9", "smallImageUrl": "2mP9KW6X", "width": 37}, {"as": "GvkoaYbA", "caption": "7yAmB6ih", "height": 34, "imageUrl": "L6uiYE5L", "smallImageUrl": "808LyToW", "width": 15}, {"as": "bVEbbmiA", "caption": "BOwMj3fw", "height": 19, "imageUrl": "He38pbCd", "smallImageUrl": "hO1SOs2r", "width": 4}], "itemId": "ByDhtXAC", "itemIds": ["9b1T4jtW", "ItJfLEsW", "llT989w7"], "itemQty": {"Of1NZ79i": 93, "1ZGIU0s0": 9, "G2rSyWna": 99}, "itemType": "APP", "language": "sRwpqWVL", "listable": false, "localExt": {"KOpAkVDW": {}, "1EtUj3Ug": {}, "EeMNWjOg": {}}, "longDescription": "aeP525F6", "maxCount": 48, "maxCountPerUser": 96, "name": "Q2IU6x2Q", "namespace": "aax5eg4R", "optionBoxConfig": {"boxItems": [{"count": 25, "itemId": "2eQe1xta", "itemSku": "gjYM5TMP"}, {"count": 72, "itemId": "BcDXEGfm", "itemSku": "RwdKDNhq"}, {"count": 5, "itemId": "NF5Yv8zN", "itemSku": "3kEY9xYa"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 98, "comparison": "isLessThanOrEqual", "name": "BASM3XvH", "predicateType": "SeasonTierPredicate", "value": "m3sPECf7", "values": ["nURkynOI", "Faxtkele", "R53yIfZ1"]}, {"anyOf": 39, "comparison": "isNot", "name": "wfw0BBK0", "predicateType": "SeasonPassPredicate", "value": "qoZLvj3i", "values": ["BnhJ3fDI", "pj1NGumL", "iUJdcwhy"]}, {"anyOf": 70, "comparison": "isGreaterThan", "name": "APq69Wop", "predicateType": "EntitlementPredicate", "value": "gnmiN280", "values": ["zwjTcNyC", "tfIDy07u", "nZKOG0uc"]}]}, {"operator": "and", "predicates": [{"anyOf": 68, "comparison": "isLessThanOrEqual", "name": "zqKixK5A", "predicateType": "SeasonTierPredicate", "value": "RBdaKWv5", "values": ["nKuDdjmU", "RzjZN8Cb", "DCho7zLz"]}, {"anyOf": 83, "comparison": "isGreaterThan", "name": "Rmuk64zC", "predicateType": "EntitlementPredicate", "value": "QiQY6luZ", "values": ["5LkZAaSt", "vTZDfcJZ", "Wwi2G90d"]}, {"anyOf": 62, "comparison": "isGreaterThanOrEqual", "name": "TNb2GYYN", "predicateType": "EntitlementPredicate", "value": "Z5I7wYNB", "values": ["6L8tMZYB", "J4TE7rv4", "RSY49y1q"]}]}, {"operator": "and", "predicates": [{"anyOf": 14, "comparison": "isLessThan", "name": "WboMpE3w", "predicateType": "SeasonTierPredicate", "value": "QbzePnT6", "values": ["h1NGSBoI", "dNgsp2V3", "iDXvqejW"]}, {"anyOf": 36, "comparison": "isLessThanOrEqual", "name": "I7RCSnPm", "predicateType": "EntitlementPredicate", "value": "QPMVrYRV", "values": ["QWQFCZe7", "7ClBFZ6K", "CwNK8649"]}, {"anyOf": 20, "comparison": "includes", "name": "UvDodxji", "predicateType": "SeasonTierPredicate", "value": "ycU1yEQG", "values": ["KLlw9U1Z", "1fQww0kJ", "tLpS4mxR"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 80, "fixedTrialCycles": 99, "graceDays": 12}, "region": "hRTf1JyA", "regionData": [{"currencyCode": "x70jEBhi", "currencyNamespace": "cHYbobC7", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1973-03-02T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1982-12-04T00:00:00Z", "discountedPrice": 64, "expireAt": "1995-01-14T00:00:00Z", "price": 17, "purchaseAt": "1974-01-27T00:00:00Z", "trialPrice": 63}, {"currencyCode": "AsZE650M", "currencyNamespace": "cOIxSjgD", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1984-01-09T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1995-07-06T00:00:00Z", "discountedPrice": 65, "expireAt": "1983-01-19T00:00:00Z", "price": 65, "purchaseAt": "1974-06-21T00:00:00Z", "trialPrice": 2}, {"currencyCode": "NG2ygYjK", "currencyNamespace": "l8fzayXQ", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1981-05-23T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1982-07-19T00:00:00Z", "discountedPrice": 60, "expireAt": "1980-12-26T00:00:00Z", "price": 27, "purchaseAt": "1989-02-16T00:00:00Z", "trialPrice": 18}], "seasonType": "TIER", "sku": "Z2LqceGZ", "stackable": true, "status": "ACTIVE", "tags": ["a7qknQfM", "Utc2nebv", "b7co1LNN"], "targetCurrencyCode": "VrR2nt5j", "targetItemId": "4SEC55YF", "targetNamespace": "LSaQqC7m", "thumbnailUrl": "SrwNozDM", "title": "O8Bhe8JF", "updatedAt": "1978-05-30T00:00:00Z", "useCount": 75}, "namespace": "stPNImr8", "order": {"currency": {"currencyCode": "cMZbR8qe", "currencySymbol": "YXn7Y38N", "currencyType": "VIRTUAL", "decimals": 2, "namespace": "FcLrcdzT"}, "ext": {"y0D2oq1l": {}, "ia84xtg1": {}, "4W2DKMZz": {}}, "free": true}, "source": "REFERRAL_BONUS"}, "script": "tNU7xYBf", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'KHoZ8zxe' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'yUWgXvVX' \
    --body '{"grantDays": "TzaMc6tt"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'ipw2x1Mr' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'MXPMiHqV' \
    --body '{"grantDays": "apGfUYaE"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "pfXQtzgC", "dryRun": false, "fulfillmentUrl": "JFvbfJlc", "itemType": "CODE", "purchaseConditionUrl": "3wxIhLOf"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '9TyV0uEY' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ach9ikky' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'wlDzTN5O' \
    --body '{"clazz": "XVONZDCK", "dryRun": false, "fulfillmentUrl": "yTP1Vftz", "purchaseConditionUrl": "bXQCwXDo"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'OrQj3TYu' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'XIjFc6G7' \
    --offset '87' \
    --tag 'rsR6zgA8' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dSXPm6d2", "items": [{"extraSubscriptionDays": 54, "itemId": "6KmG35yt", "itemName": "y7CVWjf7", "quantity": 6}, {"extraSubscriptionDays": 7, "itemId": "SW03yGMx", "itemName": "YFAW2WX8", "quantity": 54}, {"extraSubscriptionDays": 75, "itemId": "Zi2XJvMo", "itemName": "2Q6AmU6L", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 41, "maxRedeemCountPerCode": 94, "maxRedeemCountPerCodePerUser": 84, "maxSaleCount": 10, "name": "luRHRUzT", "redeemEnd": "1984-02-16T00:00:00Z", "redeemStart": "1975-01-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["7a2862wr", "fLjr3oBX", "FYsVwG7Z"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'b8A0ovgv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'HyYtlxZz' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hRA5jcvd", "items": [{"extraSubscriptionDays": 62, "itemId": "ZmJNASP1", "itemName": "8Y4lTSfE", "quantity": 25}, {"extraSubscriptionDays": 12, "itemId": "EcXEaVgI", "itemName": "ZGvoFnB9", "quantity": 37}, {"extraSubscriptionDays": 73, "itemId": "Z5K3eP4m", "itemName": "6hJ6cEzO", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 31, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 29, "name": "Z8kn5XGd", "redeemEnd": "1977-08-12T00:00:00Z", "redeemStart": "1990-02-21T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["PKunHP3n", "8f5mZdA6", "ApcWjEtl"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'dNTznF2v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'TRTS9aDF' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Mla3Y7Sw' \
    --body '{"categoryPath": "cVZrzJkq", "localizationDisplayNames": {"ABRneSoM": "L4dTR9SI", "Euce4ozD": "l2OQpwCM", "7MQDeM48": "CREKOyQB"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'JC8P3tzT' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'OJkmz2Sz' \
    --namespace $AB_NAMESPACE \
    --storeId 'B8BRZXbx' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'YHNbpZiX' \
    --namespace $AB_NAMESPACE \
    --storeId 'yFFZCUDT' \
    --body '{"localizationDisplayNames": {"oQ01kWWD": "vnVY6Hqd", "kbGik8qx": "o6O5OGJ2", "FtiCyGnn": "shjhGVq0"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'SiiyjX04' \
    --namespace $AB_NAMESPACE \
    --storeId 'VOGXklIs' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '8s37UEHP' \
    --namespace $AB_NAMESPACE \
    --storeId 'XwoXXmzi' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 't6BWB4BV' \
    --namespace $AB_NAMESPACE \
    --storeId '9zPSL51q' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'b7KUSAhY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '41' \
    --code 'nwNIQqnH' \
    --limit '89' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'lu3UkK1b' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 60}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'd61uFQWH' \
    --namespace $AB_NAMESPACE \
    --batchNo '98' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'eNY1QuxX' \
    --namespace $AB_NAMESPACE \
    --batchNo '2' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'oEftMdYh' \
    --namespace $AB_NAMESPACE \
    --batchNo '67' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'JXWwHwLw' \
    --namespace $AB_NAMESPACE \
    --code 'DKzwSED8' \
    --limit '21' \
    --offset '45' \
    --userId 'hIvJ6XMb' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'F59CXRv8' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'UIfiO25m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'lacefJkC' \
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
    --body '{"currencyCode": "wYRSXsV3", "currencySymbol": "hlWm8HmB", "currencyType": "REAL", "decimals": 28, "localizationDescriptions": {"yB7Wfzpc": "l4FDJ01j", "eVP3roPe": "0EGFdbgt", "IcxMnXRa": "cgxW8pCr"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'dM03rtjA' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"xnckx7bm": "putWtSp2", "6HWx2zTB": "ga4OlMTZ", "3cpcMtMM": "MZ4vHTMQ"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '6Ze2AWcp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ljlhP1pt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'FYqRSRRR' \
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
    --body '{"data": [{"id": "Ad7oAMDE", "rewards": [{"currency": {"currencyCode": "e22wdGIO", "namespace": "pdJoyl2V"}, "item": {"itemId": "8SBVDfnJ", "itemSku": "r801O94P", "itemType": "Ifum37mk"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "7yN6UHGX", "namespace": "uL5pRjEb"}, "item": {"itemId": "Hxsk9CBq", "itemSku": "5G6o2LDO", "itemType": "1ls9KL1k"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "PncL494H", "namespace": "Ms3oMkIo"}, "item": {"itemId": "HYpqKFka", "itemSku": "OUj45FbE", "itemType": "v94nDWZ8"}, "quantity": 94, "type": "ITEM"}]}, {"id": "VqN3jJA5", "rewards": [{"currency": {"currencyCode": "wVrtz6K6", "namespace": "FhMcSrR9"}, "item": {"itemId": "xyLtw5Iv", "itemSku": "l2o0pQmd", "itemType": "MllIrPpK"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "jQJzReTU", "namespace": "aoC4zJ5t"}, "item": {"itemId": "fZ8nS07j", "itemSku": "E1ZuryYC", "itemType": "SXOR9zD4"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "H9jtVp0z", "namespace": "yyTOoxMj"}, "item": {"itemId": "BGEXbUWS", "itemSku": "G2vUB63S", "itemType": "jQflWwML"}, "quantity": 21, "type": "CURRENCY"}]}, {"id": "FhBQ92W9", "rewards": [{"currency": {"currencyCode": "PB0vnoxQ", "namespace": "4uZvVO1m"}, "item": {"itemId": "yT8a7IzR", "itemSku": "9i070Sro", "itemType": "jMtxxWZs"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "6Tzbj0R2", "namespace": "J4CujxHW"}, "item": {"itemId": "TpDFzdW9", "itemSku": "n7mzes2E", "itemType": "JfsTQ5lv"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"currencyCode": "9aYKfZed", "namespace": "jS8lf3QA"}, "item": {"itemId": "FfHMea2R", "itemSku": "nni4jMzz", "itemType": "Xek2I106"}, "quantity": 73, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"sTD6HTPU": "xsc3FjCw", "3GkJ9kAg": "TXWwodhp", "8hs4E4mx": "CeVxqecQ"}}, {"platform": "PSN", "platformDlcIdMap": {"yFYw0aw9": "PcZrjSEl", "vVCV6BUn": "I6cp5Pdg", "HCCI0Jir": "3KZZeaE6"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"UatG4s5X": "KTEDghYE", "fIoFNxkj": "oXSNFINr", "QS4PDiVF": "T6CpzptR"}}]}' \
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
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'Af1EDHk5' \
    --itemId '["ujQOabwP", "HrflJIuF", "dHDxnhyx"]' \
    --limit '92' \
    --offset '42' \
    --userId 'OVkgdfLI' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '6g3PemkP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '87' \
    --status 'FAIL' \
    --userId '9NyA9Vga' \
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
    --body '{"bundleId": "rWMG9IpQ", "password": "FsZSeb1K"}' \
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
    --body '{"sandboxId": "43xkOKWI"}' \
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
    --body '{"applicationName": "9gNblVTK", "serviceAccountId": "B6skGROC"}' \
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
    --body '{"data": [{"itemIdentity": "mzqlTlni", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4g3eytBH": "3BHUTUop", "jT8UNlyG": "UK2qyKXm", "5njCN4z6": "Y0bFYUAR"}}, {"itemIdentity": "uK7ZVKZT", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Ofmn6Ghy": "zW4DQkyo", "ONMpfjdv": "vL0cnky8", "vJY01JxP": "YlRvXmtB"}}, {"itemIdentity": "O9FygZw4", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"6Sq6Ee0h": "MlKlwFMW", "yUQ8aPnd": "P0uvJEzp", "mjaJ6wyf": "YQZy4whq"}}]}' \
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
    --body '{"environment": "xbJDdbrS"}' \
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
    --body '{"appId": "CBiIgSU5", "publisherAuthenticationKey": "Zsr2Nnql"}' \
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
    --body '{"clientId": "HZeZJzsH", "clientSecret": "Kc5CUK2R", "organizationId": "oKwZ2Mab"}' \
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
    --body '{"relyingPartyCert": "GOTYHjCE"}' \
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
    --password 'qtZW11tJ' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'gAu0reEF' \
    --itemId 'P3oVb9CA' \
    --itemType 'MEDIA' \
    --endTime '0nmEtoRF' \
    --startTime 'iXcKTonx' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'l1Ghq0ZU' \
    --itemId 'UJDIlADs' \
    --itemType 'SEASON' \
    --endTime 'bduz9i1t' \
    --startTime '95FkVjhK' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qNnMUo18' \
    --body '{"categoryPath": "SuIZyIMi", "targetItemId": "LkyzPyiU", "targetNamespace": "uRw6xr4Y"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '5VBjFjha' \
    --body '{"appId": "BzZHZ9KC", "appType": "DEMO", "baseAppId": "lTIAPY51", "boothName": "7i3bqpTF", "categoryPath": "GwZq4yMN", "clazz": "YIPdULro", "displayOrder": 24, "entitlementType": "CONSUMABLE", "ext": {"Du6k6lTB": {}, "uVcTHhVv": {}, "1uHSwrA7": {}}, "features": ["IhgN3IaV", "EnXlkKyW", "zOZfobXe"], "images": [{"as": "0DZTCcHm", "caption": "J3qzIULu", "height": 59, "imageUrl": "zsZxsb7k", "smallImageUrl": "9NLo821G", "width": 49}, {"as": "OKPbgFtd", "caption": "hoEEypIg", "height": 32, "imageUrl": "h4JWVFtn", "smallImageUrl": "rEPtMyNm", "width": 48}, {"as": "B7X8ayYW", "caption": "TGoerjM1", "height": 80, "imageUrl": "FFB2JGQ8", "smallImageUrl": "FDEBkO4f", "width": 30}], "itemIds": ["rMi3cNny", "LzSK11BS", "SIqXTB4z"], "itemQty": {"tCxds01t": 45, "SPorVZ4s": 24, "bFKteEzQ": 9}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"LWg7UTl5": {"description": "JJclbZzL", "localExt": {"0STNVQ2D": {}, "21lDziKA": {}, "F3t4U3ha": {}}, "longDescription": "8rdtIIan", "title": "18ydWa1X"}, "JD87i44V": {"description": "BZxytpLf", "localExt": {"G13OTRz5": {}, "eJSj04vM": {}, "B8Xwinv2": {}}, "longDescription": "jHPJCPjo", "title": "vAWXYvKH"}, "sxvyYUVH": {"description": "pHOExNk8", "localExt": {"YNTaATty": {}, "rnZxdClT": {}, "JreEI6ot": {}}, "longDescription": "mSa0nHeQ", "title": "8q5Fntnv"}}, "maxCount": 56, "maxCountPerUser": 93, "name": "Xukhfg0q", "optionBoxConfig": {"boxItems": [{"count": 18, "itemId": "Hi0qYrfN", "itemSku": "vpYVMwL0"}, {"count": 9, "itemId": "uhrFnuyZ", "itemSku": "hIdtc3dK"}, {"count": 71, "itemId": "BmdtySxE", "itemSku": "kBq2rkEv"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 78, "fixedTrialCycles": 31, "graceDays": 55}, "regionData": {"sFp6gQFK": [{"currencyCode": "NKekaLQD", "currencyNamespace": "7kjjt9Mg", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-03-20T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-08-06T00:00:00Z", "discountedPrice": 39, "expireAt": "1985-02-06T00:00:00Z", "price": 13, "purchaseAt": "1972-04-19T00:00:00Z", "trialPrice": 35}, {"currencyCode": "x6STaf6h", "currencyNamespace": "Nzy3jRGY", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1987-07-28T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1990-04-28T00:00:00Z", "discountedPrice": 52, "expireAt": "1984-02-17T00:00:00Z", "price": 63, "purchaseAt": "1985-12-01T00:00:00Z", "trialPrice": 30}, {"currencyCode": "IulEw98D", "currencyNamespace": "7zX9KDtx", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1983-04-09T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-06-14T00:00:00Z", "discountedPrice": 40, "expireAt": "1989-08-27T00:00:00Z", "price": 65, "purchaseAt": "1980-09-23T00:00:00Z", "trialPrice": 46}], "vKIQ8YCf": [{"currencyCode": "jr0pTgmi", "currencyNamespace": "fWVObnHt", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1982-10-17T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1995-11-16T00:00:00Z", "discountedPrice": 63, "expireAt": "1977-12-22T00:00:00Z", "price": 82, "purchaseAt": "1980-04-29T00:00:00Z", "trialPrice": 31}, {"currencyCode": "nLrwmho8", "currencyNamespace": "rTxbH0a5", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1992-10-13T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1977-09-13T00:00:00Z", "discountedPrice": 31, "expireAt": "1983-08-21T00:00:00Z", "price": 15, "purchaseAt": "1974-04-24T00:00:00Z", "trialPrice": 53}, {"currencyCode": "AD17hWtt", "currencyNamespace": "zkwe13Lx", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1981-10-26T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 60, "expireAt": "1986-10-10T00:00:00Z", "price": 94, "purchaseAt": "1982-06-30T00:00:00Z", "trialPrice": 92}], "zGDrjv79": [{"currencyCode": "6FY0RHGb", "currencyNamespace": "2Z5Gjgv3", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1977-12-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-11-08T00:00:00Z", "discountedPrice": 43, "expireAt": "1993-07-14T00:00:00Z", "price": 35, "purchaseAt": "1973-04-16T00:00:00Z", "trialPrice": 62}, {"currencyCode": "aABAtREs", "currencyNamespace": "0cugOzhO", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1998-02-19T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1992-11-13T00:00:00Z", "discountedPrice": 85, "expireAt": "1986-12-25T00:00:00Z", "price": 23, "purchaseAt": "1973-04-13T00:00:00Z", "trialPrice": 36}, {"currencyCode": "IFgY3iWQ", "currencyNamespace": "pvIxVehR", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1983-06-07T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1974-09-23T00:00:00Z", "discountedPrice": 24, "expireAt": "1981-04-13T00:00:00Z", "price": 60, "purchaseAt": "1995-04-07T00:00:00Z", "trialPrice": 20}]}, "seasonType": "PASS", "sku": "yVcBoR6z", "stackable": true, "status": "ACTIVE", "tags": ["iKMVikDX", "6wcR4Gs1", "OKI3SwR9"], "targetCurrencyCode": "PFFpsD2I", "targetNamespace": "AZW2P8tp", "thumbnailUrl": "xbQfJEbs", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'dX9KXnNh' \
    --appId 'RGYtnPZL' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'pCWuUMGw' \
    --baseAppId 'ezJ79YyZ' \
    --categoryPath 'Prt4Gy1C' \
    --features 's84qxsBM' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '96' \
    --offset '32' \
    --region 'Uv07SwKb' \
    --sortBy '["updatedAt", "updatedAt:asc", "displayOrder:desc"]' \
    --storeId 'RR3P9hCv' \
    --tags '9W1Zvqop' \
    --targetNamespace '2bghC8Jn' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["H8DQK30d", "ihIAqE3Z", "iA3YkslF"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1pfdtG7p' \
    --sku 'Fi7p4hFe' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'p5CuzfPS' \
    --populateBundle 'false' \
    --region 'DvEEf2md' \
    --storeId 'mPSsQ33n' \
    --sku 'opEpeDku' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FtSamUI3' \
    --sku 'b30MaXGw' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["7CFmOzSR", "L0JCu4af", "rOJXHzFZ"]' \
    --storeId 'ZV3acPos' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '5eBVjleA' \
    --region 'V5u3e0H9' \
    --storeId 'vam1cvpt' \
    --itemIds 'UMhoIqFg' \
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
    --userId 'vJOq5Tx0' \
    --body '{"itemIds": ["RItFvtuf", "R8COWaZx", "RFePL3wK"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '100' \
    --offset '19' \
    --sortBy 'y37LEIAa' \
    --storeId 'Kefy9nQj' \
    --keyword 'usrsz6qW' \
    --language 'Qc58WiK8' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '34' \
    --offset '1' \
    --sortBy '["displayOrder", "name", "displayOrder:desc"]' \
    --storeId 'BxQiaKAV' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'W1prqmgS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'xC0C29zr' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'UTjBwef8' \
    --namespace $AB_NAMESPACE \
    --storeId 'TVM1vNlb' \
    --body '{"appId": "dgPBqvVQ", "appType": "DLC", "baseAppId": "GQugNa6x", "boothName": "tyt8PZi0", "categoryPath": "LRZR0OOU", "clazz": "jFbMBBxQ", "displayOrder": 54, "entitlementType": "DURABLE", "ext": {"KokIrr2i": {}, "o6OcS6NN": {}, "9DOPUK6Z": {}}, "features": ["vYYOUZmb", "QHRwliwU", "RPSe8gdQ"], "images": [{"as": "tXyRpxRn", "caption": "ClQMA7R1", "height": 35, "imageUrl": "DWWeelfK", "smallImageUrl": "rId1H7Z5", "width": 22}, {"as": "38sGwuqH", "caption": "8nQIrcZL", "height": 42, "imageUrl": "HF6xJTiz", "smallImageUrl": "yKYYsS9Z", "width": 84}, {"as": "HPOpHRyJ", "caption": "tDFPHTnj", "height": 35, "imageUrl": "mz7jvcJh", "smallImageUrl": "UkqQ6mbN", "width": 1}], "itemIds": ["WcsptRJW", "bPk5Jzhy", "C5viocuA"], "itemQty": {"DtbKnFKa": 89, "wTN2X3bx": 0, "lnpksL8O": 62}, "itemType": "SEASON", "listable": false, "localizations": {"mkWFjIRG": {"description": "uev9riVX", "localExt": {"3fF4VGCB": {}, "Ntrmuok7": {}, "aoEKE8Ph": {}}, "longDescription": "QJVAMrCs", "title": "wE6VviWU"}, "bSpFszdF": {"description": "uHQgUJOL", "localExt": {"5MXaTg1b": {}, "64zxO7En": {}, "TOaeurbL": {}}, "longDescription": "Lob8oqLp", "title": "rlNoPnK1"}, "FtwzTAQr": {"description": "TzwND2ZN", "localExt": {"yUdzXaYz": {}, "roQganCM": {}, "92zRoNf0": {}}, "longDescription": "nwDQB8v3", "title": "A0UUqle3"}}, "maxCount": 37, "maxCountPerUser": 55, "name": "ApyXcX1I", "optionBoxConfig": {"boxItems": [{"count": 48, "itemId": "fIrbVUzk", "itemSku": "npekcniN"}, {"count": 88, "itemId": "dNQMXhDU", "itemSku": "Ya9GBiov"}, {"count": 7, "itemId": "HYTuoXVy", "itemSku": "EtPlDQuH"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 33, "fixedTrialCycles": 89, "graceDays": 34}, "regionData": {"LAYwIM8N": [{"currencyCode": "Qy2VlBFH", "currencyNamespace": "J49J3bEg", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1973-03-02T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1984-05-12T00:00:00Z", "discountedPrice": 49, "expireAt": "1992-07-25T00:00:00Z", "price": 90, "purchaseAt": "1999-05-05T00:00:00Z", "trialPrice": 12}, {"currencyCode": "G8Q8esB0", "currencyNamespace": "sqT7LDD0", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1976-07-08T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1978-03-25T00:00:00Z", "discountedPrice": 69, "expireAt": "1989-10-29T00:00:00Z", "price": 78, "purchaseAt": "1989-08-07T00:00:00Z", "trialPrice": 55}, {"currencyCode": "fwti1PCR", "currencyNamespace": "CDXyh5AC", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1978-08-24T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1975-08-14T00:00:00Z", "discountedPrice": 89, "expireAt": "1974-06-21T00:00:00Z", "price": 76, "purchaseAt": "1989-05-25T00:00:00Z", "trialPrice": 11}], "fah8MzhX": [{"currencyCode": "NErCFghD", "currencyNamespace": "sXUfGnkM", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1985-07-26T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1990-01-29T00:00:00Z", "discountedPrice": 3, "expireAt": "1978-04-25T00:00:00Z", "price": 34, "purchaseAt": "1992-10-05T00:00:00Z", "trialPrice": 92}, {"currencyCode": "dssc1QOT", "currencyNamespace": "ofwIfLhn", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1993-12-07T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1971-03-15T00:00:00Z", "discountedPrice": 97, "expireAt": "1998-08-25T00:00:00Z", "price": 89, "purchaseAt": "1981-03-25T00:00:00Z", "trialPrice": 20}, {"currencyCode": "EfYtRg1D", "currencyNamespace": "VwEDbeIc", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1979-01-18T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1986-11-22T00:00:00Z", "discountedPrice": 82, "expireAt": "1981-11-11T00:00:00Z", "price": 97, "purchaseAt": "1984-09-06T00:00:00Z", "trialPrice": 76}], "89dEkw1B": [{"currencyCode": "84t2SpBm", "currencyNamespace": "Zr3w7MOn", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1995-08-01T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1987-06-26T00:00:00Z", "discountedPrice": 86, "expireAt": "1978-10-21T00:00:00Z", "price": 1, "purchaseAt": "1971-10-07T00:00:00Z", "trialPrice": 63}, {"currencyCode": "USfLsBG2", "currencyNamespace": "gbmvbWca", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1989-02-20T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1974-05-10T00:00:00Z", "discountedPrice": 10, "expireAt": "1975-03-20T00:00:00Z", "price": 43, "purchaseAt": "1971-03-07T00:00:00Z", "trialPrice": 58}, {"currencyCode": "rqaufVZv", "currencyNamespace": "cwA4LGJG", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1975-12-22T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1983-04-08T00:00:00Z", "discountedPrice": 99, "expireAt": "1998-03-12T00:00:00Z", "price": 54, "purchaseAt": "1991-09-16T00:00:00Z", "trialPrice": 97}]}, "seasonType": "PASS", "sku": "tlOA54cE", "stackable": true, "status": "ACTIVE", "tags": ["bfSqSfkC", "oBfauNYd", "GaXw0BM7"], "targetCurrencyCode": "lJVJK65R", "targetNamespace": "e3bftb55", "thumbnailUrl": "JZIq7Sdq", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'GBlNLi6b' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'E3dZaueC' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'dwwgewnP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 88, "orderNo": "KXfBTeM5"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'JD66svHQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'EzqzZ3E6' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'Z1EtNL5L' \
    --namespace $AB_NAMESPACE \
    --storeId 'J4BuyFVL' \
    --body '{"carousel": [{"alt": "pNiAMlgm", "previewUrl": "j0tL8Bs2", "thumbnailUrl": "Ka0DDWPZ", "type": "image", "url": "tldf8j4M", "videoSource": "youtube"}, {"alt": "83DZBWDv", "previewUrl": "JjM3sqvl", "thumbnailUrl": "eHxjElmc", "type": "image", "url": "JDTdVit5", "videoSource": "generic"}, {"alt": "lC6OwX7e", "previewUrl": "p4RrWQcr", "thumbnailUrl": "7NGi7hAT", "type": "image", "url": "s9TAEFhw", "videoSource": "generic"}], "developer": "1ypKlg1X", "forumUrl": "jFQYkkUR", "genres": ["MassivelyMultiplayer", "Sports", "Casual"], "localizations": {"nP2NazJF": {"announcement": "W5vkf9Yt", "slogan": "OXl4aYEG"}, "2xiOUPW1": {"announcement": "d2FbIjaw", "slogan": "JZMxgbDV"}, "ZF8VY4V6": {"announcement": "t4r4QBJE", "slogan": "jVNY3kcJ"}}, "platformRequirements": {"se4aCmNY": [{"additionals": "r9QmbLgD", "directXVersion": "UZ6Pn2q8", "diskSpace": "qdvavxWE", "graphics": "Pg9byOG4", "label": "UYz7br5v", "osVersion": "PlN6BYAg", "processor": "Lx0nNrBT", "ram": "Ko4qlS4q", "soundCard": "LDXy0WR0"}, {"additionals": "m8nBy0nP", "directXVersion": "FmulJokv", "diskSpace": "p1mOlXuz", "graphics": "CofJdCpa", "label": "WccpCutn", "osVersion": "tho2lHTm", "processor": "S58pYILe", "ram": "hm9dH0gJ", "soundCard": "rumf2hTb"}, {"additionals": "uoUSK0pp", "directXVersion": "rClpnOwX", "diskSpace": "9vEliNkh", "graphics": "7FSRTKlw", "label": "5wPE20Ei", "osVersion": "AH4BOIHt", "processor": "k0hMWEzI", "ram": "iBGyuJZ4", "soundCard": "Yhrg3G1u"}], "80mG3e6z": [{"additionals": "L5mFa9NZ", "directXVersion": "RAV3pHBo", "diskSpace": "I06O4wXI", "graphics": "VT3WbMvA", "label": "Voran7Bz", "osVersion": "nLLHgOPa", "processor": "iwDW2hCo", "ram": "l29sh4T4", "soundCard": "K5emX3IW"}, {"additionals": "wwLGhh7K", "directXVersion": "DPvGUgQV", "diskSpace": "vnVvbmEe", "graphics": "3mS3BAHR", "label": "q6Kw1sbP", "osVersion": "mjAtrhw8", "processor": "8BkRNUP0", "ram": "sx1MRPcD", "soundCard": "Xbd4I0cx"}, {"additionals": "JuOcUczd", "directXVersion": "gzdFtBB2", "diskSpace": "gO822PSw", "graphics": "lqH7r8Ml", "label": "rE8sFxpV", "osVersion": "CXIkf7jc", "processor": "z43f2R1K", "ram": "Lo8n3EXE", "soundCard": "JG6o9PaW"}], "oyKbsi49": [{"additionals": "e1bu52r4", "directXVersion": "rEBb00D5", "diskSpace": "0IhURBiu", "graphics": "y1a3CeyX", "label": "NxxSDPaa", "osVersion": "dy8myUt2", "processor": "QUk9KunE", "ram": "enZmx0o3", "soundCard": "yNbKLjwR"}, {"additionals": "O7PIDLPw", "directXVersion": "pTsAJMJ9", "diskSpace": "V9DCNFhU", "graphics": "k2SjLImm", "label": "8mhreqmk", "osVersion": "KOZCW8ui", "processor": "Z2kCn9fJ", "ram": "dal3ZRa3", "soundCard": "umujefuY"}, {"additionals": "9vawEhow", "directXVersion": "N5QVN5V5", "diskSpace": "6sKz6GPQ", "graphics": "PpZlqvzh", "label": "EImZadC2", "osVersion": "RbwIjpVU", "processor": "fZUxxwwj", "ram": "XRr4pJMT", "soundCard": "aOWvskXX"}]}, "platforms": ["MacOS", "IOS", "IOS"], "players": ["Single", "Multi", "Coop"], "primaryGenre": "Racing", "publisher": "ys6SFZMO", "releaseDate": "1971-06-29T00:00:00Z", "websiteUrl": "l0pBcXWi"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'khumKrsQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'U0hw4yu9' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'FIlkWDM8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'bCCMISeg' \
    --namespace $AB_NAMESPACE \
    --storeId 'or9sxiww' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'zKQJXxdW' \
    --itemId 'ZYkOFONF' \
    --namespace $AB_NAMESPACE \
    --storeId 'll0TJYV9' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Cb1oofhc' \
    --itemId 'BWilGKwP' \
    --namespace $AB_NAMESPACE \
    --storeId '4EK3PSNl' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'ddIA8UtY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'dCs79FJJ' \
    --populateBundle 'true' \
    --region 'VJekzGTI' \
    --storeId 'houThlba' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'PykaX0qi' \
    --namespace $AB_NAMESPACE \
    --storeId 'KOgFxJ8H' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 86, "comparison": "excludes", "name": "F4V2VOUC", "predicateType": "SeasonPassPredicate", "value": "nSuXenqp", "values": ["22guj8dO", "0R4eMt1h", "vVqYEnfl"]}, {"anyOf": 8, "comparison": "isNot", "name": "6sDKA8FF", "predicateType": "SeasonPassPredicate", "value": "8OQDPpak", "values": ["44ff5KS8", "ta5OY2cO", "iz5dZu0t"]}, {"anyOf": 73, "comparison": "isLessThan", "name": "hxrj3BkK", "predicateType": "SeasonPassPredicate", "value": "42v0qPF4", "values": ["1UKzk6NM", "pSvHNFm2", "m8eIf0E5"]}]}, {"operator": "or", "predicates": [{"anyOf": 13, "comparison": "isLessThanOrEqual", "name": "6eLMFGMG", "predicateType": "EntitlementPredicate", "value": "XLeXhmGW", "values": ["pHZlDULg", "iiKXzeL9", "wBjldpRY"]}, {"anyOf": 93, "comparison": "includes", "name": "v5SDGFW4", "predicateType": "EntitlementPredicate", "value": "SVeOFLZW", "values": ["O4nnFjVb", "rMpp4xCf", "Letc2mGQ"]}, {"anyOf": 42, "comparison": "excludes", "name": "o8Egjf25", "predicateType": "SeasonPassPredicate", "value": "RnNYsrsN", "values": ["J6pIKcc6", "gtJfPmyP", "8bPlrLAv"]}]}, {"operator": "and", "predicates": [{"anyOf": 27, "comparison": "isGreaterThanOrEqual", "name": "IHikOFJb", "predicateType": "SeasonPassPredicate", "value": "Tkxj6rHj", "values": ["jGjMgMJ5", "RfOO7ult", "OBAVAnuD"]}, {"anyOf": 71, "comparison": "isNot", "name": "O0ebw8t5", "predicateType": "SeasonTierPredicate", "value": "zg5m9hj5", "values": ["66mzlfi6", "3PTJQ1dp", "5U2ZvZBL"]}, {"anyOf": 8, "comparison": "isLessThanOrEqual", "name": "SDVIS9Jw", "predicateType": "EntitlementPredicate", "value": "7NN3mq4Y", "values": ["ZIfUliOM", "9nkjfP1v", "6cuT2uuj"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'ALCTxFyX' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "UkG3qDhI"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'SmUGvajH' \
    --offset '26' \
    --tag 'wFibjLb8' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GJ22MplX", "name": "yrhU0x26", "status": "ACTIVE", "tags": ["GUHmWXzx", "RFtvEbOx", "3oUTc3V5"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
samples/cli/sample-apps Platform getKeyGroupByBoothName \
    --namespace $AB_NAMESPACE \
    --boothName '28IPT5Cp' \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupByBoothName' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'AQHexVq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'lSAbUTcg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oOI1M6Sj", "name": "Lj0fdGxa", "status": "INACTIVE", "tags": ["fqjbZoUX", "kkSdWySV", "ngZwK921"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'aQWmzpUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'OEWmeTWW' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '45' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'lqCBTaH1' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '27B2J28d' \
    --limit '87' \
    --offset '55' \
    --orderNos '["KbWva9x7", "VegQJRpN", "Yetimqj9"]' \
    --sortBy 'orkLydRj' \
    --startTime 'SRkS3I40' \
    --status 'REFUNDED' \
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
    --orderNo 'FEcMP3B1' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'K0GapLSq' \
    --body '{"description": "4OZ87gWg"}' \
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
    --body '{"dryRun": true, "notifyUrl": "RBBnAjom", "privateKey": "MKF2mQM9"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'eJScS7zH' \
    --externalId 'cMYFCEDf' \
    --limit '41' \
    --notificationSource 'STRIPE' \
    --notificationType 'nfQD2cbu' \
    --offset '50' \
    --paymentOrderNo '7YMY3m9n' \
    --startDate 'rcZhzz4e' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'ilwmdCeD' \
    --limit '7' \
    --offset '93' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "en14ZAi2", "currencyNamespace": "Di4DXqbY", "customParameters": {"ZhqPLlWx": {}, "FLQeWHGV": {}, "nNM5hS6J": {}}, "description": "RQHRGEZT", "extOrderNo": "pyptPr3N", "extUserId": "UiPSJ1VH", "itemType": "MEDIA", "language": "dS-oqEs_959", "metadata": {"LR76waLc": "RuGFka4o", "VL6uev01": "NtK9I1iL", "lRDw0btK": "qnrpBAUW"}, "notifyUrl": "1DNJvKP9", "omitNotification": false, "platform": "4Vv2fvgi", "price": 52, "recurringPaymentOrderNo": "YOCxon4f", "region": "ml8d5Loq", "returnUrl": "p1VsreXj", "sandbox": true, "sku": "M6grVWHy", "subscriptionId": "xTeLcw6o", "targetNamespace": "dfUOc714", "targetUserId": "7ZLP87M3", "title": "Uo5N19lj"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '6kvXpDwA' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zwk7FN7d' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2HXNs69u' \
    --body '{"extTxId": "b7WyPDLc", "paymentMethod": "lx0LFQpq", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'h0SAxVU9' \
    --body '{"description": "Z6P1zGBl"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mZTwz2Fd' \
    --body '{"amount": 20, "currencyCode": "T8DLZlO7", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 66, "vat": 70}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rEL4vLXh' \
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
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Xbox", "Playstation", "Stadia"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gqLc5nVj", "eventTopic": "Di5JjSGX", "maxAwarded": 42, "maxAwardedPerUser": 82, "namespaceExpression": "ti7OPeQO", "rewardCode": "RP9E9302", "rewardConditions": [{"condition": "USNo2BZM", "conditionName": "33ueqwDH", "eventName": "7wuzwRyU", "rewardItems": [{"duration": 32, "itemId": "DF8gLkTM", "quantity": 70}, {"duration": 9, "itemId": "YZeZernA", "quantity": 84}, {"duration": 91, "itemId": "iFXa2OOo", "quantity": 42}]}, {"condition": "s6QXgydO", "conditionName": "1pSyDJ0t", "eventName": "JLoP2ByC", "rewardItems": [{"duration": 78, "itemId": "swyGilgq", "quantity": 34}, {"duration": 46, "itemId": "BiKQEjRu", "quantity": 89}, {"duration": 27, "itemId": "l6FOQOIv", "quantity": 43}]}, {"condition": "R1rWXhIu", "conditionName": "iDA4Bks7", "eventName": "tCYckBF2", "rewardItems": [{"duration": 69, "itemId": "upzd9TvZ", "quantity": 76}, {"duration": 27, "itemId": "KEyhteLb", "quantity": 86}, {"duration": 62, "itemId": "pAV1n433", "quantity": 84}]}], "userIdExpression": "OQIfBqWj"}' \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '2Tng6QzV' \
    --limit '14' \
    --offset '64' \
    --sortBy '["rewardCode", "namespace:desc", "rewardCode:desc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'gTiZOufy' \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'i79I2Lir' \
    --body '{"description": "4YS64Obn", "eventTopic": "yiWjOhFs", "maxAwarded": 57, "maxAwardedPerUser": 83, "namespaceExpression": "pkuHUoli", "rewardCode": "xOZxTvB2", "rewardConditions": [{"condition": "Yt7jiAji", "conditionName": "nmOALCga", "eventName": "Jkb1lobm", "rewardItems": [{"duration": 47, "itemId": "DnR55Hfl", "quantity": 38}, {"duration": 82, "itemId": "yg9FuRpb", "quantity": 55}, {"duration": 42, "itemId": "HsgCA5RV", "quantity": 50}]}, {"condition": "NKNrilY9", "conditionName": "RPfoLST9", "eventName": "R5y4u64u", "rewardItems": [{"duration": 24, "itemId": "gx5Z6AN5", "quantity": 22}, {"duration": 73, "itemId": "UhoIzhZw", "quantity": 77}, {"duration": 46, "itemId": "54wzXh2J", "quantity": 99}]}, {"condition": "wZWfr7zn", "conditionName": "qKs5pWay", "eventName": "H37nmxi3", "rewardItems": [{"duration": 59, "itemId": "MLzszhLA", "quantity": 71}, {"duration": 15, "itemId": "KEtzAfsb", "quantity": 37}, {"duration": 88, "itemId": "tPSNKGKE", "quantity": 100}]}], "userIdExpression": "n5rqLJIF"}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'k3iGqjzg' \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'LzBS1awX' \
    --body '{"payload": {"nPRz5ofM": {}, "F743w0uc": {}, "HkmPhH8i": {}}}' \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'KEBMFD1A' \
    --body '{"conditionName": "kQsik7Au", "userId": "bPm0Er7Q"}' \
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
    --body '{"defaultLanguage": "nPhWBojo", "defaultRegion": "rqIt2oka", "description": "0TYmmprs", "supportedLanguages": ["Yl1ImnoW", "2IUcKNWW", "zWzwde8H"], "supportedRegions": ["gwABrF4O", "OyOx8h1M", "hiyo9VxD"], "title": "XQsqDOb4"}' \
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
    --storeId 'XXAk2bm5' \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ITnEzpVg' \
    --body '{"defaultLanguage": "zPj7fnMc", "defaultRegion": "SW0o50e2", "description": "8yzvwdpJ", "supportedLanguages": ["az9w44Ce", "UA0Shg7R", "QDrdWA51"], "supportedRegions": ["zuXN7Qz7", "1ezYHbTM", "7StJ0mFe"], "title": "UpD9t8W1"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GPTvf9Mj' \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'mVSlZ1PM' \
    --action 'DELETE' \
    --itemSku 'CEXeEEa3' \
    --itemType 'APP' \
    --limit '89' \
    --offset '62' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'gdOspWmu' \
    --updatedAtStart 'OUe8m5xa' \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'PTHes7Rm' \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '8O0XiwLi' \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '8fedoXqM' \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'U9isKHvm' \
    --action 'CREATE' \
    --itemSku 'MUcUKJsG' \
    --itemType 'INGAMEITEM' \
    --type 'CATEGORY' \
    --updatedAtEnd 'ooDcqhei' \
    --updatedAtStart 'dIry00Cj' \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '1454TEzu' \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'TgDNDx6F' \
    --namespace $AB_NAMESPACE \
    --storeId 'QTiY19oZ' \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'nryNBxGC' \
    --namespace $AB_NAMESPACE \
    --storeId 'K5CAsTeK' \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ofK2m9Kc' \
    --targetStoreId 'iwiFBATD' \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'blMEDZiF' \
    --limit '68' \
    --offset '46' \
    --sku 'FKuC4sm5' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId '9TkzHrvz' \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fS25YCP0' \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '5QgCW4p0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Y4VprtCT' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "d2EGWR4L"}' \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ppCojbRc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'c6aw1X9J' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 95, "orderNo": "MIoNcPNi"}' \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'CF6w1cmE' \
    --body '{"achievements": [{"id": "WRl5PPzT", "value": 33}, {"id": "eSCrxO6X", "value": 8}, {"id": "VUN8I09o", "value": 67}], "steamUserId": "jb4D7giN"}' \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'rPyBlkDE' \
    --xboxUserId 'fnYpeNNy' \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'zH9FgpQw' \
    --body '{"achievements": [{"id": "scJy5Iw5", "percentComplete": 14}, {"id": "t1utg02C", "percentComplete": 16}, {"id": "C2B2PQYT", "percentComplete": 74}], "serviceConfigId": "9D3dhPLo", "titleId": "AzFUgIlw", "xboxUserId": "prmvT3He"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'ZOsW5L6M' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IlqMjAWE' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'EZFfUN1r' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'yQ3ndS0X' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'eJGEOLXL' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'onnP7s2O' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '1uNG0GFO' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'LLvdCfEi' \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LbGh1Tbl' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'UB4PkOTe' \
    --features '["zjGy2UQM", "lf03JEnD", "5C442V23"]' \
    --itemId '["ddgHB6jN", "1icyJakV", "1KlSlOeC"]' \
    --limit '31' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tzrWPLzM' \
    --body '[{"endDate": "1977-12-26T00:00:00Z", "grantedCode": "67qoeiW9", "itemId": "UqRx7gXg", "itemNamespace": "PVd6I1eE", "language": "MzW_UaVX-OL", "quantity": 2, "region": "IiUgTDi6", "source": "REDEEM_CODE", "startDate": "1999-04-09T00:00:00Z", "storeId": "fLLMGsYs"}, {"endDate": "1988-01-26T00:00:00Z", "grantedCode": "k6o19bnz", "itemId": "fhJuxiQA", "itemNamespace": "c6EWQmhf", "language": "JMW-IjBL_RI", "quantity": 22, "region": "B7zbG30B", "source": "GIFT", "startDate": "1987-04-16T00:00:00Z", "storeId": "ygsAKVlR"}, {"endDate": "1979-06-24T00:00:00Z", "grantedCode": "U7PguElZ", "itemId": "h2txnq1a", "itemNamespace": "ixqYmDLM", "language": "CqP", "quantity": 8, "region": "G0S5kMQN", "source": "REDEEM_CODE", "startDate": "1975-08-07T00:00:00Z", "storeId": "4BGY5hPB"}]' \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'QomoBYin' \
    --activeOnly 'true' \
    --appId 'etUgL3k9' \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'BPPpqTaA' \
    --activeOnly 'false' \
    --limit '46' \
    --offset '78' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'CzJ9KNM4' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ZoJrUwoe' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'X5EOMTCf' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '4idXN77u' \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '0r175y1b' \
    --appIds '["UT1FFYIp", "7o4Icbjq", "K2TXytEe"]' \
    --itemIds '["SnbTTynR", "XT5h9RWD", "NdiyRJMK"]' \
    --skus '["v6s1TSrP", "8V8n6rmK", "PWps73Tl"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '47uuNaQd' \
    --itemIds '["oFnncEa6", "QaTsbas5", "VEQNWDjU"]' \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'pNGYDSP6' \
    --appId 'dRwepce2' \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'R9aPwHfL' \
    --entitlementClazz 'CODE' \
    --itemId '8KqAm0ap' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'dhoXFtd3' \
    --ids '["4c15g6wF", "DkQyZQ01", "wsweesgn"]' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '5UQs6PGp' \
    --entitlementClazz 'MEDIA' \
    --sku 'q7mMbeE5' \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'jA38WKNR' \
    --entitlementIds 'vwYbGpPg' \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'PSv9chRM' \
    --namespace $AB_NAMESPACE \
    --userId 'BsaD0BHJ' \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'OjQHsk6E' \
    --namespace $AB_NAMESPACE \
    --userId 'XHOLDV6T' \
    --body '{"endDate": "1972-10-08T00:00:00Z", "nullFieldList": ["cbm0leY0", "UDC64gHP", "RjhyrsdI"], "startDate": "1981-02-16T00:00:00Z", "status": "ACTIVE", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'tKMKWLb3' \
    --namespace $AB_NAMESPACE \
    --userId 'Q8WCHr7Y' \
    --body '{"options": ["We2GskY4", "VSxzhgxA", "QKPmHIGP"], "requestId": "ENyo7Uao", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'rf50OQLr' \
    --namespace $AB_NAMESPACE \
    --userId 'zheoFlje' \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'j6izGG6G' \
    --namespace $AB_NAMESPACE \
    --userId 'LvrwfVdU' \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'NFWwda3m' \
    --namespace $AB_NAMESPACE \
    --userId 'PNheZCxy' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'yl3MOYK1' \
    --namespace $AB_NAMESPACE \
    --userId 'JPULcCoQ' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'V6PEZDFG' \
    --body '{"duration": 74, "endDate": "1999-03-04T00:00:00Z", "itemId": "U5SPm7Kx", "itemSku": "nkGJD0U8", "language": "La1fXNHN", "order": {"currency": {"currencyCode": "LdW3F6Kr", "currencySymbol": "mpu8gRND", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "s5IHQ45S"}, "ext": {"MJ0jDugT": {}, "UYALncOa": {}, "mm22k7fJ": {}}, "free": false}, "orderNo": "gMCXRZNL", "origin": "System", "quantity": 16, "region": "httjM5a7", "source": "REFERRAL_BONUS", "startDate": "1998-08-15T00:00:00Z", "storeId": "edncHd26"}' \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'DjPgSV7B' \
    --body '{"code": "R1jIR1nV", "language": "DcN-bH", "region": "KskIOmFi"}' \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'p4wWN8Q1' \
    --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "0gpngamc", "namespace": "Ea03VwlV"}, "item": {"itemId": "VakKMbFw", "itemSku": "LYiXmjsc", "itemType": "SF2KBiqO"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "ear7NxE0", "namespace": "QLi0Nd6t"}, "item": {"itemId": "X37KHeyW", "itemSku": "HxhMjKMX", "itemType": "VZhJkbS7"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "yFRVZn6z", "namespace": "GBUPOZMU"}, "item": {"itemId": "hYlZ6CRa", "itemSku": "miYNjBne", "itemType": "yVi2Z1xH"}, "quantity": 76, "type": "ITEM"}], "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'hU8mhqB8' \
    --endTime 'TMNw3ku7' \
    --limit '70' \
    --offset '23' \
    --productId 'KMAF2ee1' \
    --startTime 'oEX3ygDr' \
    --status 'VERIFIED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SBchQRcV' \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'wTfXpJNW' \
    --endTime 'D72UASX4' \
    --limit '6' \
    --offset '55' \
    --startTime 'KPIlwLS5' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'XlHGhVur' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "APUG_AOrQ_Yd", "productId": "8qzS7kZ6", "region": "mtpRCBR8", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '6qUPif2Y' \
    --itemId 'J9fQkoeQ' \
    --limit '66' \
    --offset '41' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8IKAgMeK' \
    --body '{"currencyCode": "aJwn53VR", "currencyNamespace": "9Y9szHLt", "discountedPrice": 61, "ext": {"V7AqsK6F": {}, "cUvbcuTF": {}, "3rKf9mj9": {}}, "itemId": "ecJFDUdD", "language": "2sJwhzUt", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 34, "quantity": 8, "region": "Q0U4LiHi", "returnUrl": "Cw70WqC6", "sandbox": true}' \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'JplLfWrc' \
    --itemId 'U7gBJQIX' \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'q9rbvDZ8' \
    --userId 'dnP9bPnb' \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '7Wr2IOnJ' \
    --userId 'DpMGLfHf' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "mEC4uj09"}' \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kyCkvxbE' \
    --userId 'NOprc7hX' \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'Nq8tPcKw' \
    --userId 'wyHlvrBE' \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'GDYYoNVK' \
    --userId 'saLbDNsj' \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '0tbUtvil' \
    --userId 'SvzWbrI5' \
    --body '{"additionalData": {"cardSummary": "3h24W8Kr"}, "authorisedTime": "1983-08-27T00:00:00Z", "chargebackReversedTime": "1993-05-06T00:00:00Z", "chargebackTime": "1998-04-13T00:00:00Z", "chargedTime": "1975-05-17T00:00:00Z", "createdTime": "1981-05-30T00:00:00Z", "currency": {"currencyCode": "7YR5uFHq", "currencySymbol": "PFHwRJkA", "currencyType": "VIRTUAL", "decimals": 44, "namespace": "P4SFZkvh"}, "customParameters": {"msf9OxSQ": {}, "CPxNU0ym": {}, "3u4AbIug": {}}, "extOrderNo": "YVPy1WyW", "extTxId": "50L2az9P", "extUserId": "kqfrhmtZ", "issuedAt": "1993-07-12T00:00:00Z", "metadata": {"rY4EkOya": "t44wIZAQ", "fCcBEI8Z": "8mP44UIL", "6BazsgXQ": "zuUKnVfv"}, "namespace": "5iaaLvSe", "nonceStr": "dRJXIuQg", "paymentMethod": "xymK9l6V", "paymentMethodFee": 43, "paymentOrderNo": "ocKLND10", "paymentProvider": "XSOLLA", "paymentProviderFee": 38, "paymentStationUrl": "H58VS5j0", "price": 58, "refundedTime": "1979-02-17T00:00:00Z", "salesTax": 57, "sandbox": true, "sku": "HxuW0H1B", "status": "REQUEST_FOR_INFORMATION", "statusReason": "VZHH0p8H", "subscriptionId": "dwkfTqyM", "subtotalPrice": 84, "targetNamespace": "AhH9aPnw", "targetUserId": "rY92KVYU", "tax": 96, "totalPrice": 36, "totalTax": 60, "txEndTime": "1990-08-02T00:00:00Z", "type": "sFzV0npp", "userId": "XCQHkhIv", "vat": 98}' \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'bJ12Ctki' \
    --userId '2GhEzN6p' \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KhqBhJML' \
    --body '{"currencyCode": "a9IinOBZ", "currencyNamespace": "c3MaOqdA", "customParameters": {"YbwWOGmT": {}, "DqtmAfxV": {}, "R7c1Ml0S": {}}, "description": "CYlzmLPn", "extOrderNo": "cONJoIjv", "extUserId": "xnxMVfzL", "itemType": "EXTENSION", "language": "iZS_XK", "metadata": {"S6zlcq9Q": "FMT649P9", "SnKbhHGx": "c1svRu39", "jvThJrzw": "x0zy8fdK"}, "notifyUrl": "WHwesdfd", "omitNotification": true, "platform": "AaQZGM5r", "price": 78, "recurringPaymentOrderNo": "MTksJUGk", "region": "am8b6TIe", "returnUrl": "pqAhhcKJ", "sandbox": true, "sku": "gHaAhs2m", "subscriptionId": "AxHTjXm0", "title": "RTPNCpaV"}' \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ymhjxxXi' \
    --userId 'uqeoxAsH' \
    --body '{"description": "6JLFXAkK"}' \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'jshEJE5L' \
    --body '{"code": "AXlqaGyx", "orderNo": "SBPPfW1I"}' \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'BlqBT8nh' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'CrtOGDje' \
    --limit '9' \
    --offset '96' \
    --sku 'UGbpRnZQ' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Va6sbesx' \
    --excludeSystem 'true' \
    --limit '97' \
    --offset '79' \
    --subscriptionId 'V0lPxsQo' \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'iicOG0TW' \
    --body '{"grantDays": 6, "itemId": "XMExYK0z", "language": "7wQz5pKh", "reason": "FnDgDSi1", "region": "A2QjpfPZ", "source": "iAqaFuKT"}' \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zdCfSrR5' \
    --itemId 'rb7hrIzI' \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yenaDBn6' \
    --userId 'HLHhnv5o' \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hi1HxdQJ' \
    --userId 'c8e675Zy' \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tjYxP0C6' \
    --userId '27K0i8oE' \
    --force 'true' \
    --body '{"immediate": true, "reason": "v0c9u7nR"}' \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xv9kqdZR' \
    --userId 'UBYR4aLA' \
    --body '{"grantDays": 48, "reason": "lGZhkO8e"}' \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1gz02j73' \
    --userId '0MZh40bE' \
    --excludeFree 'true' \
    --limit '91' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uWOn3MLL' \
    --userId 'zHmgCgF9' \
    --body '{"additionalData": {"cardSummary": "NsMlRjrJ"}, "authorisedTime": "1994-01-26T00:00:00Z", "chargebackReversedTime": "1977-10-26T00:00:00Z", "chargebackTime": "1974-09-27T00:00:00Z", "chargedTime": "1980-08-26T00:00:00Z", "createdTime": "1996-05-16T00:00:00Z", "currency": {"currencyCode": "F0NQoYXn", "currencySymbol": "Iggw4VmJ", "currencyType": "REAL", "decimals": 0, "namespace": "iEp7rNWH"}, "customParameters": {"6lrOZBMq": {}, "RttzSIzP": {}, "eaM9iG90": {}}, "extOrderNo": "8EqjGlXw", "extTxId": "ZcEKGo3F", "extUserId": "UPB2VF5o", "issuedAt": "1974-08-20T00:00:00Z", "metadata": {"ogJaXevp": "MgRqdABV", "IeFGmr6V": "qRmENrxb", "4rAjdaSY": "z0mJq2IA"}, "namespace": "WtF86Rlv", "nonceStr": "MbwB1bRT", "paymentMethod": "N67xI336", "paymentMethodFee": 73, "paymentOrderNo": "DfTXCk1N", "paymentProvider": "ALIPAY", "paymentProviderFee": 19, "paymentStationUrl": "kH95JYHB", "price": 12, "refundedTime": "1975-10-22T00:00:00Z", "salesTax": 36, "sandbox": false, "sku": "DhqCELJc", "status": "CHARGEBACK", "statusReason": "WGIYGdcC", "subscriptionId": "XBRPVqam", "subtotalPrice": 86, "targetNamespace": "yoRfXiBX", "targetUserId": "gRH8iWT4", "tax": 15, "totalPrice": 21, "totalTax": 96, "txEndTime": "1980-01-03T00:00:00Z", "type": "NMbHzyOz", "userId": "K6f7oTLn", "vat": 83}' \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '8tsiSwzQ' \
    --namespace $AB_NAMESPACE \
    --userId '5lEtG8l8' \
    --body '{"count": 9, "orderNo": "PXklqxM3"}' \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'ncnntfF5' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'c7xHq4ed' \
    --namespace $AB_NAMESPACE \
    --userId 'WavdmcZf' \
    --limit '51' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'XoxjS3V8' \
    --namespace $AB_NAMESPACE \
    --userId 'dHjH8DIx' \
    --body '{"amount": 20, "expireAt": "1971-01-24T00:00:00Z", "origin": "Steam", "reason": "s1GG9Fh6", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'cahU93NR' \
    --namespace $AB_NAMESPACE \
    --userId 'IYj74OET' \
    --body '{"amount": 92, "walletPlatform": "Steam"}' \
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
    --nextEvaluatedKey 'DXfP8Ww2' \
    --end 'pI5l5GPI' \
    --start '4dukKLXL' \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["I0NBUSIA", "vLR0LS7w", "PNxZ31T2"], "apiKey": "yzjzUkdY", "authoriseAsCapture": true, "blockedPaymentMethods": ["dmTf6A0J", "M4O9Juis", "S06nFMJ7"], "clientKey": "yWIsMIa1", "dropInSettings": "ToKOH4ge", "liveEndpointUrlPrefix": "k2Bhf2xF", "merchantAccount": "vX4px29P", "notificationHmacKey": "SAgCV4Xc", "notificationPassword": "NQm1UpYE", "notificationUsername": "32Qo6B54", "returnUrl": "sQ2ojUbP", "settings": "nChFkF58"}' \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "9ZqpF8lB", "privateKey": "owGFLpFC", "publicKey": "qU3hUNyI", "returnUrl": "LmoOiiH5"}' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "pnEAYwO1", "secretKey": "2YGiUHqb"}' \
    > test.out 2>&1
eval_tap $? 248 'TestCheckoutConfig' test.out

#- 249 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'ftNcTaty' \
    --region '5mO4zRE7' \
    > test.out 2>&1
eval_tap $? 249 'DebugMatchedPaymentMerchantConfig' test.out

#- 250 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "gpGrPvFH", "clientSecret": "IveHKffx", "returnUrl": "7RkFLWpU", "webHookId": "L52W5KkM"}' \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["mrDfdRe0", "olCreHjN", "xqhcF3bP"], "publishableKey": "S9G98SCT", "secretKey": "elHpMVRU", "webhookSecret": "9ywBibIG"}' \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "PQmH76zc", "key": "Sagxuxwg", "mchid": "yFanrCzV", "returnUrl": "Zd22Yegl"}' \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "hYOQ1u2v", "flowCompletionUrl": "h5ZEveNJ", "merchantId": 28, "projectId": 81, "projectSecretKey": "Y5Ab3MzO"}' \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'nm3Gmf2D' \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ie4t9oGt' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["u3bChnBd", "0Wfrd0jt", "9xGLAzCg"], "apiKey": "pdx3pFiJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["YJur9sta", "GzJ6tPNA", "pJSlYY0a"], "clientKey": "eJEmW44F", "dropInSettings": "3NnHhL3F", "liveEndpointUrlPrefix": "gl7irsit", "merchantAccount": "0yxuEYwA", "notificationHmacKey": "hofzvBEP", "notificationPassword": "ZeLbnHzv", "notificationUsername": "bTNErTmR", "returnUrl": "ZKwg4DIz", "settings": "6VJjUjzu"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '16BbMGEV' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'tZIXeJ0V' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "qm0l6jTY", "privateKey": "PycftAD1", "publicKey": "A2lSpKd3", "returnUrl": "mU0A2xcp"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'nyb6KHxj' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'y6e4e17U' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "FLhXxx0b", "secretKey": "V4QiMAeT"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'aheOU169' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'qX77R8UL' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "fkikTALb", "clientSecret": "fnkdV6uh", "returnUrl": "t4J2RLQp", "webHookId": "2AgbTSRu"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'RM12pwMc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'mGgR8qqt' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["QIclbhmK", "jUn762QX", "aMrPdoVf"], "publishableKey": "hCB4abfk", "secretKey": "l6UsG7Ng", "webhookSecret": "CKymvjlL"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'jG2oLQLu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'WCcacyQF' \
    --validate 'true' \
    --body '{"appId": "VxAMIrkq", "key": "v2RmugJG", "mchid": "eFVNXoeg", "returnUrl": "jltuI9u6"}' \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'UD7C9dLL' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'hr1EJ4fQ' \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Z4vHUIqq' \
    --validate 'true' \
    --body '{"apiKey": "cWm1AjPq", "flowCompletionUrl": "qeai97YU", "merchantId": 77, "projectId": 31, "projectSecretKey": "3mgJCzja"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '8kwqxUNP' \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'zg3MWQvz' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaUIConfig' test.out

#- 271 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'FotVi5hS' \
    --offset '84' \
    --region '3X3nMJ3X' \
    > test.out 2>&1
eval_tap $? 271 'QueryPaymentProviderConfig' test.out

#- 272 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "SpukfHlG", "region": "8MpzvUy7", "sandboxTaxJarApiToken": "UfR8GNBq", "specials": ["XSOLLA", "ALIPAY", "ALIPAY"], "taxJarApiToken": "1F9eWPBc", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 272 'CreatePaymentProviderConfig' test.out

#- 273 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetAggregatePaymentProviders' test.out

#- 274 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '53EhfXlo' \
    --region 'EriRkO0S' \
    > test.out 2>&1
eval_tap $? 274 'DebugMatchedPaymentProviderConfig' test.out

#- 275 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 275 'GetSpecialPaymentProviders' test.out

#- 276 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'tz8qFWxE' \
    --body '{"aggregate": "ADYEN", "namespace": "qca8xYWe", "region": "Pris6in2", "sandboxTaxJarApiToken": "1JjYW0By", "specials": ["XSOLLA", "ALIPAY", "ALIPAY"], "taxJarApiToken": "fLWTNMnT", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '2CmFBiPd' \
    > test.out 2>&1
eval_tap $? 277 'DeletePaymentProviderConfig' test.out

#- 278 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentTaxConfig' test.out

#- 279 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "1uAEPeYf", "taxJarApiToken": "eI23Mv7A", "taxJarEnabled": true, "taxJarProductCodesMapping": {"PJtoeVDB": "fu94rZrN", "83s1ZL4k": "AMKTYylI", "4XwOQ5BZ": "9wdEdbjr"}}' \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '6sUeCOOE' \
    --end 'OMZPFwwV' \
    --start 'c0SIEsA8' \
    > test.out 2>&1
eval_tap $? 280 'SyncPaymentOrders' test.out

#- 281 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'MJO8zMUx' \
    --storeId 'kRi3xdhX' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRootCategories' test.out

#- 282 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'TgAXAeMy' \
    --storeId 'zIZXA3KC' \
    > test.out 2>&1
eval_tap $? 282 'DownloadCategories' test.out

#- 283 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'K0J36WJr' \
    --namespace $AB_NAMESPACE \
    --language 'ngIiTr5z' \
    --storeId 'heszaySL' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'au0SsiRl' \
    --namespace $AB_NAMESPACE \
    --language 'LH0l35dJ' \
    --storeId '2wtp9hg3' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Fv6mGUSO' \
    --namespace $AB_NAMESPACE \
    --language 'TLfiA2L1' \
    --storeId 'U3RC7HNT' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetDescendantCategories' test.out

#- 286 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 286 'PublicListCurrencies' test.out

#- 287 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'tcV3okjJ' \
    --region '3PBdk22e' \
    --storeId 'F22a5pK4' \
    --appId 'UEIf3KVY' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemByAppId' test.out

#- 288 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'USoCBB0e' \
    --categoryPath 'TfbL66QY' \
    --features '6CG9Dms0' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --language '62qxd0S0' \
    --limit '41' \
    --offset '77' \
    --region 'lKg6Sxps' \
    --sortBy '["name:desc", "displayOrder:asc", "displayOrder:desc"]' \
    --storeId 'AWRLzMWp' \
    --tags '1lZrZLJ9' \
    > test.out 2>&1
eval_tap $? 288 'PublicQueryItems' test.out

#- 289 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'XUheOiDB' \
    --region 'dPKFuKso' \
    --storeId 'agcAMFRl' \
    --sku 'ZNeAhPYA' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '2RD4cXjq' \
    --region 'UmBbr1qS' \
    --storeId 'eXY0NOXL' \
    --itemIds 'n0Vg2NJ7' \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["yHBwVQZx", "SNbEFdLC", "HPak1H2g"]}' \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SUBSCRIPTION' \
    --limit '62' \
    --offset '47' \
    --region 'Ni5Zq0mk' \
    --storeId '5wVmeF4I' \
    --keyword 'DS8hHJlg' \
    --language 'uacf0rQT' \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'WGXiyHjT' \
    --namespace $AB_NAMESPACE \
    --language 'IY1roKVo' \
    --region 'nXqrK1Lj' \
    --storeId 'qb8KC9Tc' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'lWbkAIq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '13Dah0vs' \
    --namespace $AB_NAMESPACE \
    --language 'NvLkKTIB' \
    --populateBundle 'false' \
    --region 'W4rRxrsN' \
    --storeId 'uhzI1tYP' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "gVOBEJbn", "paymentProvider": "WALLET", "returnUrl": "yA6GIybf", "ui": "bcnVQPgZ", "zipCode": "mR5vQ6BE"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'N3Ah9uIu' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dDic5v8f' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KFA8Mn78' \
    --paymentProvider 'ADYEN' \
    --zipCode '1b36FfdU' \
    --body '{"token": "MXNjq26c"}' \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cX71zM2y' \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region 'NHUt2Zvi' \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'ttjQdw0h' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'UAKLl1c7' \
    --foreinginvoice 'iF2tcEiI' \
    --invoiceId '4XFb9Y7f' \
    --payload '0pQP4Htp' \
    --redirectResult 'rIwRZNq8' \
    --resultCode '5eDCtjgz' \
    --sessionId 'Vx3Nt6Q0' \
    --status 'Iv6435J4' \
    --token '8a8KxeCu' \
    --type 'nfxFEgae' \
    --userId '4FCQqZ4A' \
    --orderNo 'J9qkRwuS' \
    --paymentOrderNo 's1fgVOnU' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'wFYHw1Wg' \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'n5cTya7e' \
    --paymentOrderNo 'Jgzv7HUl' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'UGO3EAbP' \
    > test.out 2>&1
eval_tap $? 306 'GetRewardByCode' test.out

#- 307 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JHEq6BKT' \
    --limit '89' \
    --offset '89' \
    --sortBy '["rewardCode", "rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 307 'QueryRewards1' test.out

#- 308 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Zpyz2OAS' \
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
    --appIds '["oEV9dr7f", "VqZUa7Dz", "6vXDWTsr"]' \
    --itemIds '["R5ocaLtl", "XiZCJ2rB", "dQZhl3Ei"]' \
    --skus '["FVQgoCMo", "kwCusqOL", "6eYqJ6ls"]' \
    > test.out 2>&1
eval_tap $? 310 'PublicExistsAnyMyActiveEntitlement' test.out

#- 311 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'aNMiypNz' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'wFSbW7As' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'ySnNlRUP' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 314 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["nse2O6Bq", "zYjnty4a", "5QpUwBZ5"]' \
    --itemIds '["k0WmGKYO", "cG2gURlH", "TPKHHe6U"]' \
    --skus '["9InrzJoM", "5unKAZlr", "bj4Akgep"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetEntitlementOwnershipToken' test.out

#- 315 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'eVgNoL8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'REibtuMn' \
    --body '{"epicGamesJwtToken": "aA2cR5yF"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'DOaZ0PGA' \
    --body '{"serviceLabel": 17}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'igU0YRg3' \
    --body '{"appId": "d7a4vpES", "steamId": "WD14hagi"}' \
    > test.out 2>&1
eval_tap $? 318 'SyncSteamDLC' test.out

#- 319 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xphoKTsv' \
    --body '{"xstsToken": "HFipYDwA"}' \
    > test.out 2>&1
eval_tap $? 319 'SyncXboxDLC' test.out

#- 320 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '90H4uCxD' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'E59I6xg8' \
    --features '["NCZ4ZJaS", "EMuNjkIi", "v4pJd1oc"]' \
    --itemId '["bQ7wbjUt", "qHT8sSiD", "DlKWcPtp"]' \
    --limit '57' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlements' test.out

#- 321 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HlJZcM0Q' \
    --appId '9MqxSENt' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserAppEntitlementByAppId' test.out

#- 322 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'GJFXw357' \
    --limit '61' \
    --offset '0' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserEntitlementsByAppType' test.out

#- 323 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'DBZbWlli' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'pQQ1E6A8' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementByItemId' test.out

#- 324 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'KN8G5Xvq' \
    --entitlementClazz 'CODE' \
    --sku 'ojt64Q1p' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementBySku' test.out

#- 325 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'txwmBh2N' \
    --appIds '["RGCqgUaU", "c3jEbCza", "jQ0KOzNb"]' \
    --itemIds '["PJUTjapf", "oDc56fFK", "0cD5ADJc"]' \
    --skus '["wa3J8ENq", "Mh2iiayk", "WEYK2cFJ"]' \
    > test.out 2>&1
eval_tap $? 325 'PublicExistsAnyUserActiveEntitlement' test.out

#- 326 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wG8cDVkp' \
    --appId 'lhAI1fR8' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'A7kxXwri' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'qF2uho97' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'wNBa4iSG' \
    --ids '["ChjPyS6x", "vHesZWTz", "llZT4zZM"]' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 329 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'fT6eVkoG' \
    --entitlementClazz 'CODE' \
    --sku 'nVlWBiqK' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 330 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'sojJcXP3' \
    --namespace $AB_NAMESPACE \
    --userId 'McII9Pt8' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlement' test.out

#- 331 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'VnzRT9kg' \
    --namespace $AB_NAMESPACE \
    --userId '1Pxlur4x' \
    --body '{"options": ["EKIOt7gk", "FMR4IFT1", "rHncdJ9g"], "requestId": "cxwxCTXF", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 331 'PublicConsumeUserEntitlement' test.out

#- 332 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'I5yhatqV' \
    --body '{"code": "MIeh9cFR", "language": "EBJs", "region": "grSBPH2I"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicRedeemCode' test.out

#- 333 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5jKwVUX0' \
    --body '{"excludeOldTransactions": true, "language": "EIzS-XzpZ_sk", "productId": "WiO9L0xu", "receiptData": "96fjWrnG", "region": "SJjdGhWG", "transactionId": "DqwE2ILx"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillAppleIAPItem' test.out

#- 334 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'A235cHL0' \
    --body '{"epicGamesJwtToken": "Wpy9i246"}' \
    > test.out 2>&1
eval_tap $? 334 'SyncEpicGamesInventory' test.out

#- 335 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'q9eQBCSB' \
    --body '{"autoAck": false, "language": "JxAD_JNhR-575", "orderId": "qBueGkMA", "packageName": "sNy5NFjB", "productId": "cLovOw0r", "purchaseTime": 25, "purchaseToken": "H5Wv7u3i", "region": "2Rh9Fg9u"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicFulfillGoogleIAPItem' test.out

#- 336 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'vAUa0Jwl' \
    --body '{"currencyCode": "lZ0eHwQy", "price": 0.1972184652559843, "productId": "lESVSKVb", "serviceLabel": 31}' \
    > test.out 2>&1
eval_tap $? 336 'PublicReconcilePlayStationStore' test.out

#- 337 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '2GS1PjWF' \
    --body '{"appId": "YWTHYfsM", "language": "FEtw-Xw", "region": "rPGKGvzx", "stadiaPlayerId": "lQQxnwOS"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncStadiaEntitlement' test.out

#- 338 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XpduozJJ' \
    --body '{"appId": "IQ3ZWa3R", "currencyCode": "UD64uJNJ", "language": "hJlx-zA", "price": 0.9251031572917834, "productId": "oJDOWzyr", "region": "sgeCJ25q", "steamId": "zsl4cicn"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncSteamInventory' test.out

#- 339 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AOVGGnBN' \
    --body '{"gameId": "OHfqNNs3", "language": "ODA_cS", "region": "Dc2c3y1T"}' \
    > test.out 2>&1
eval_tap $? 339 'SyncTwitchDropsEntitlement' test.out

#- 340 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'JwLuc3mB' \
    --body '{"currencyCode": "iFdoLliz", "price": 0.3911329425982557, "productId": "mBLmpi7v", "xstsToken": "NGH1QpJA"}' \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxInventory' test.out

#- 341 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mtynrTDp' \
    --itemId 'rklOo90j' \
    --limit '69' \
    --offset '78' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserOrders' test.out

#- 342 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MsalE9RE' \
    --body '{"currencyCode": "a5HisdwY", "discountedPrice": 8, "ext": {"b3J3lEQq": {}, "hPTjzDZQ": {}, "1CTZulwY": {}}, "itemId": "yldd3d8C", "language": "KV", "price": 47, "quantity": 29, "region": "NN7nhBi7", "returnUrl": "YrK2xLFa"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserOrder' test.out

#- 343 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BPzW3mZZ' \
    --userId '4Bf1s1a3' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrder' test.out

#- 344 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IXzUY83t' \
    --userId 'OF1P6uh4' \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelUserOrder' test.out

#- 345 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ait3WY6v' \
    --userId 'JpQL6oGX' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrderHistories' test.out

#- 346 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '6gqaTBH7' \
    --userId 'gjAYNcbL' \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadUserOrderReceipt' test.out

#- 347 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'oWUKdMhg' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetPaymentAccounts' test.out

#- 348 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '7IJ3TjVs' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'mFTItXOo' \
    > test.out 2>&1
eval_tap $? 348 'PublicDeletePaymentAccount' test.out

#- 349 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'OJ53TLFP' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'wndDd9ks' \
    --limit '47' \
    --offset '58' \
    --sku 'hPsfu7Ak' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserSubscriptions' test.out

#- 350 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'dKMFkfjD' \
    --body '{"currencyCode": "RB3PsdhR", "itemId": "7D3ebOpb", "language": "Ns_tVrN-CS", "region": "dwgc60kQ", "returnUrl": "JWwXBsOf", "source": "XqDjRE8k"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSubscribeSubscription' test.out

#- 351 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'R4LK0daI' \
    --itemId '9ZwEeMdf' \
    > test.out 2>&1
eval_tap $? 351 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 352 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'm3UE1X9V' \
    --userId 'prpPwP96' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserSubscription' test.out

#- 353 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l7iuurY6' \
    --userId 'svLgCNZl' \
    > test.out 2>&1
eval_tap $? 353 'PublicChangeSubscriptionBillingAccount' test.out

#- 354 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rRvjumir' \
    --userId 'V92uiVfb' \
    --body '{"immediate": true, "reason": "Splxm12P"}' \
    > test.out 2>&1
eval_tap $? 354 'PublicCancelSubscription' test.out

#- 355 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yMDmS7LL' \
    --userId 'lTZsNjkm' \
    --excludeFree 'true' \
    --limit '5' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserSubscriptionBillingHistories' test.out

#- 356 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'CqaS4QhQ' \
    --namespace $AB_NAMESPACE \
    --userId '5oNcMnAS' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetWallet' test.out

#- 357 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'zQDji9uF' \
    --namespace $AB_NAMESPACE \
    --userId 'bqFvoO1P' \
    --limit '87' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 357 'PublicListUserWalletTransactions' test.out

#- 358 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'h5aU5nko' \
    --baseAppId 'mTkuhAGk' \
    --categoryPath 'nQ80vy53' \
    --features 'taxi2fTX' \
    --includeSubCategoryItem 'false' \
    --itemStatus 'INACTIVE' \
    --itemType 'MEDIA' \
    --limit '15' \
    --offset '46' \
    --region '0pDu2BDH' \
    --sortBy '["updatedAt:desc", "displayOrder:asc", "updatedAt:asc"]' \
    --storeId 'inlBrkni' \
    --tags 'Q1WF3Xt0' \
    --targetNamespace '93VPBOO7' \
    > test.out 2>&1
eval_tap $? 358 'QueryItems1' test.out

#- 359 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4PhYOtpY' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 359 'ImportStore1' test.out

#- 360 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'XgSEsPwK' \
    --body '{"itemIds": ["csoYZQ7D", "Xk6uywDh", "QreBBn92"]}' \
    > test.out 2>&1
eval_tap $? 360 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE