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
echo "1..356"

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
    --body '{"context": {"item": {"appId": "WyovX6RI", "appType": "DEMO", "baseAppId": "Y6qvr1c9", "boothName": "oUU5mkG9", "boundItemIds": ["OO2mqxez", "BAiRbseP", "3GFFBBJl"], "categoryPath": "4eKPV5zR", "clazz": "UhWZiLoi", "createdAt": "1978-05-26T00:00:00Z", "description": "jzVx6pyf", "displayOrder": 65, "entitlementType": "CONSUMABLE", "ext": {"0sBcB8sF": {}, "p5R9G559": {}, "qRJP15Bg": {}}, "features": ["F3nh2rrL", "NuOPtR8R", "QihnO61T"], "fresh": false, "images": [{"as": "iQ2mtc7G", "caption": "cFE6FK0c", "height": 39, "imageUrl": "ez3MiJ5j", "smallImageUrl": "TDj2YlRd", "width": 15}, {"as": "l8hRGqI6", "caption": "VQMLOrdJ", "height": 100, "imageUrl": "GnuKJZtS", "smallImageUrl": "o9qFsZ80", "width": 99}, {"as": "KtxdYtsF", "caption": "Iw8mJBxl", "height": 47, "imageUrl": "fYpNfV2O", "smallImageUrl": "jkGxiKP4", "width": 35}], "itemId": "miQANLyQ", "itemIds": ["qbeGG3RL", "nIAD3GmP", "kaWM2m3Z"], "itemQty": {"pyAOuVvM": 28, "CTf2WAjD": 87, "MhtchCQq": 17}, "itemType": "OPTIONBOX", "language": "8bSX1wqk", "listable": false, "localExt": {"FdZ1pHWR": {}, "oyKOtpNX": {}, "FzMfM9mq": {}}, "longDescription": "GY6eS06d", "maxCount": 100, "maxCountPerUser": 17, "name": "QUWzNnHE", "namespace": "sGwTGygw", "optionBoxConfig": {"boxItems": [{"count": 99, "itemId": "rubucaYc", "itemSku": "vvL4ZFG1"}, {"count": 93, "itemId": "JIyoCSkm", "itemSku": "wwtTz4y2"}, {"count": 37, "itemId": "o6AONz8t", "itemSku": "OCHqaRPV"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 8, "comparison": "isNot", "name": "OHvAsbmS", "predicateType": "SeasonPassPredicate", "value": "3AUcliCz", "values": ["GRLQb6eI", "yoJ2OuE6", "vkpW2hsl"]}, {"anyOf": 7, "comparison": "isGreaterThanOrEqual", "name": "nc6V87ro", "predicateType": "SeasonPassPredicate", "value": "d8O5GTMz", "values": ["S7z5biGT", "lJbR0qUr", "2NkNWmjl"]}, {"anyOf": 95, "comparison": "excludes", "name": "foP6Y3gE", "predicateType": "EntitlementPredicate", "value": "a2vclkwW", "values": ["yaK5SZTA", "67s5C6fb", "QhUPeq8b"]}]}, {"operator": "or", "predicates": [{"anyOf": 47, "comparison": "excludes", "name": "CAvENeOW", "predicateType": "EntitlementPredicate", "value": "UIRzZLIl", "values": ["hWvpD5so", "kVuacCXy", "4l8mJTPy"]}, {"anyOf": 99, "comparison": "includes", "name": "yCejK8a7", "predicateType": "SeasonPassPredicate", "value": "DKWYyczD", "values": ["OZoiy8Mq", "1YVYRzxT", "ic2B1uYk"]}, {"anyOf": 76, "comparison": "isNot", "name": "GrdwdhG7", "predicateType": "SeasonPassPredicate", "value": "9fkD3Npy", "values": ["VtbNje6F", "OWZQ9r5O", "uCPFp7m7"]}]}, {"operator": "and", "predicates": [{"anyOf": 75, "comparison": "is", "name": "mzMYtpHf", "predicateType": "SeasonTierPredicate", "value": "RIhfyNpU", "values": ["MniBHiXD", "0ehuaGhd", "gU077M5S"]}, {"anyOf": 87, "comparison": "isGreaterThan", "name": "eUAssBhc", "predicateType": "EntitlementPredicate", "value": "LfSFfITC", "values": ["tKM4iEa0", "TSuK5GNM", "9YZO5evc"]}, {"anyOf": 88, "comparison": "isLessThan", "name": "Wa5igitv", "predicateType": "EntitlementPredicate", "value": "NKDJ8CxZ", "values": ["F5nSVTsD", "ioefJJ5i", "pek1UCG7"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 10, "fixedTrialCycles": 25, "graceDays": 5}, "region": "BBMVTdv0", "regionData": [{"currencyCode": "JKKHbXSW", "currencyNamespace": "zZydllUq", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1999-03-26T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1977-01-06T00:00:00Z", "discountedPrice": 52, "expireAt": "1989-11-06T00:00:00Z", "price": 54, "purchaseAt": "1972-02-05T00:00:00Z", "trialPrice": 62}, {"currencyCode": "qiBorRnJ", "currencyNamespace": "S43yJFrq", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1990-02-07T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1988-04-29T00:00:00Z", "discountedPrice": 95, "expireAt": "1992-09-28T00:00:00Z", "price": 53, "purchaseAt": "1986-06-13T00:00:00Z", "trialPrice": 76}, {"currencyCode": "8RWFIjmu", "currencyNamespace": "mcivSFnc", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1979-12-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1995-04-23T00:00:00Z", "discountedPrice": 52, "expireAt": "1973-10-29T00:00:00Z", "price": 23, "purchaseAt": "1991-11-09T00:00:00Z", "trialPrice": 69}], "seasonType": "PASS", "sku": "9qUGh0ya", "stackable": true, "status": "ACTIVE", "tags": ["lbV7R076", "8UViQSFA", "UFDfyLia"], "targetCurrencyCode": "nIKzTvmF", "targetItemId": "aLQXpkuK", "targetNamespace": "h3XFKzzy", "thumbnailUrl": "ViDvzl8C", "title": "WxTaKL7f", "updatedAt": "1995-10-31T00:00:00Z", "useCount": 7}, "namespace": "fiYQZyWJ", "order": {"currency": {"currencyCode": "RQbkJ8Al", "currencySymbol": "1gqCh5Oh", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "VL1F68O5"}, "ext": {"uOxwlkEn": {}, "yVN7H8vU": {}, "2Isl1KbM": {}}, "free": true}, "source": "PROMOTION"}, "script": "qPI64bKr", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'M8fQCimT' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'a3JuEwze' \
    --body '{"grantDays": "HVd2lZ4b"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'NwMJfl1o' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'V2K6mLUH' \
    --body '{"grantDays": "XwH4c3Gp"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "PGP3pbxF", "dryRun": true, "fulfillmentUrl": "C6cUDyWG", "itemType": "INGAMEITEM", "purchaseConditionUrl": "LxW6lUTR"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'FespOXJ8' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'uOkudANl' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'QY99kjhL' \
    --body '{"clazz": "4iMqNUuL", "dryRun": false, "fulfillmentUrl": "qRuD3JMV", "purchaseConditionUrl": "zRdbTyOT"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'sJJwXEuR' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'Lp9ZX1y6' \
    --offset '34' \
    --tag 'A5UH4IbR' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tllPosHD", "items": [{"extraSubscriptionDays": 5, "itemId": "ASAm6plp", "itemName": "YV9L7dF7", "quantity": 97}, {"extraSubscriptionDays": 47, "itemId": "2uVvLqZg", "itemName": "AqyQ4E4r", "quantity": 88}, {"extraSubscriptionDays": 29, "itemId": "jE3LS0eU", "itemName": "62HdBTCz", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 90, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 75, "name": "Daw7h7BD", "redeemEnd": "1991-06-19T00:00:00Z", "redeemStart": "1998-05-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["NaBwtJC6", "ZJPTl6Gk", "4agnyw3C"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '2efgIZHM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '75RVYiOs' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fQRE40Fg", "items": [{"extraSubscriptionDays": 26, "itemId": "l5BCm4RZ", "itemName": "IZ1yBnTe", "quantity": 16}, {"extraSubscriptionDays": 32, "itemId": "xHA9url1", "itemName": "S7hgZXFu", "quantity": 86}, {"extraSubscriptionDays": 51, "itemId": "H7aXoYJH", "itemName": "9aHpjXWr", "quantity": 59}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 4, "maxSaleCount": 12, "name": "MyHF3Zp2", "redeemEnd": "1996-12-24T00:00:00Z", "redeemStart": "1995-07-18T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["6Cg3dodf", "Wsuq4qZK", "fYjHH82z"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'eAb02dTx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'fN7ArAIk' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'IxkS72h7' \
    --body '{"categoryPath": "X0VZnFOd", "localizationDisplayNames": {"fkabWO6G": "jyJnhSdM", "nxnC5mAN": "UMqf6SaP", "trrUANQ2": "GeMtNKpf"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'um7ZA3Th' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'BRqEK6G7' \
    --namespace $AB_NAMESPACE \
    --storeId 'Ta2lfHzY' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '5G0luMRf' \
    --namespace $AB_NAMESPACE \
    --storeId 'mrb8aAtS' \
    --body '{"localizationDisplayNames": {"pojMk0O6": "5FRCOmkJ", "P1CJ6FZ0": "aazIMvin", "mbcgTaCh": "Wajzv9W9"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '6JL1vTPC' \
    --namespace $AB_NAMESPACE \
    --storeId 'NqflIHPu' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'W45ecxE7' \
    --namespace $AB_NAMESPACE \
    --storeId 'HlIlK4O4' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'GQJ4OQ9D' \
    --namespace $AB_NAMESPACE \
    --storeId 'V6t30IuV' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Dq2wjkeW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '10' \
    --code '8JYzyqXn' \
    --limit '16' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'rJnLOYhJ' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 17}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'NoF99vep' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'MKK2mP4B' \
    --namespace $AB_NAMESPACE \
    --batchNo '27' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'sglyj9AN' \
    --namespace $AB_NAMESPACE \
    --batchNo '63' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'wsUDUdg7' \
    --namespace $AB_NAMESPACE \
    --code 'Fu9oVudQ' \
    --limit '28' \
    --offset '91' \
    --userId 'JFNHf1Q4' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'hv0l8bCP' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'rYpdf0Sb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'tM29uFcN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "rRE0ec06", "currencySymbol": "lO4GQ44v", "currencyType": "VIRTUAL", "decimals": 73, "localizationDescriptions": {"7HUXlie3": "NxPfQIRp", "dBqUCua9": "36c4QeNf", "KarSnAb9": "YCSjtRY2"}}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'ePC1SHav' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"aVymqxWf": "nylIP89K", "HkjtnJfm": "hxgpcrtM", "VJPuQAqx": "2fSAGwh3"}}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'UgW4XfS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'KOsYKKf6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'SQEVSfQJ' \
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
    --body '{"data": [{"id": "3rYxobQL", "rewards": [{"currency": {"currencyCode": "v3GpCo96", "namespace": "UTlVcoc4"}, "item": {"itemId": "NWjACQwa", "itemSku": "MYOvgsoY", "itemType": "S4q2TCHM"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "oXo1LukJ", "namespace": "yO4lIrUQ"}, "item": {"itemId": "XUYO9oUZ", "itemSku": "XLDmcUvl", "itemType": "IFx4unUz"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "ZFlPI37U", "namespace": "jzdh2p8R"}, "item": {"itemId": "kCf3xSGG", "itemSku": "un779RIT", "itemType": "hctIvwxb"}, "quantity": 44, "type": "ITEM"}]}, {"id": "mX9hoiIk", "rewards": [{"currency": {"currencyCode": "r2gAWC5R", "namespace": "j9ROx0oo"}, "item": {"itemId": "lqT6rfHr", "itemSku": "sO7RpdfJ", "itemType": "tNijy2ve"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"currencyCode": "9lUmmgjr", "namespace": "lU36jQKN"}, "item": {"itemId": "8GMdCDeW", "itemSku": "vqrjRbLw", "itemType": "YMBEyKuv"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "EYzj0ibz", "namespace": "ZbQ0Uew9"}, "item": {"itemId": "LshLYzpK", "itemSku": "yiztIgLu", "itemType": "Mo8cVr7V"}, "quantity": 7, "type": "ITEM"}]}, {"id": "CZsedZKO", "rewards": [{"currency": {"currencyCode": "uuz3XNCh", "namespace": "lYnaJDWr"}, "item": {"itemId": "swimaiTg", "itemSku": "3W0Cf5ii", "itemType": "eBnpRU0L"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "B6CdypXN", "namespace": "DYcvuBTh"}, "item": {"itemId": "veUp6826", "itemSku": "bLqMgSYp", "itemType": "xUfa3uOe"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "I7zwHO8x", "namespace": "LU67qrg8"}, "item": {"itemId": "7L8w1Qso", "itemSku": "urQMijp0", "itemType": "3GUkNWoB"}, "quantity": 11, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"qtIHYbM2": "qEaxdozN", "GyOYJ1cJ": "M29GMiRI", "bLxqxHcP": "qmCyBfZ1"}}, {"platform": "PSN", "platformDlcIdMap": {"Gtd4oqz3": "tNdohjN8", "DWMEMu15": "i39Tkjl8", "cKd3rXaI": "0hQElSNg"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"YH4yWjEI": "6DCQ3vRr", "JR6MkrS5": "H95cExkx", "YxijDgW9": "jkY7dL9D"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '08QHwPQ1' \
    --itemId '["71dphxvS", "3KSvXOaW", "kMaaQyOA"]' \
    --limit '31' \
    --offset '5' \
    --userId '2xBz8grN' \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'j7w2F7ud' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '85' \
    --status 'SUCCESS' \
    --userId '7ib5EqJ5' \
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
    --body '{"bundleId": "WYCutLSF", "password": "CzzoNi4T"}' \
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
    --body '{"sandboxId": "1czHvBHm"}' \
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
    --body '{"applicationName": "bWmtYmH5", "serviceAccountId": "NQeQezrH"}' \
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
    --body '{"data": [{"itemIdentity": "zYKB01Bs", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"lnmHatdc": "kyvD4DGv", "Sbc8LGDP": "9kveDbOw", "ljui7AFL": "SzXbYe7b"}}, {"itemIdentity": "TvavHPwq", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8uLxWYDc": "gXVK7uGM", "ES1pCDqc": "nhz6nmhD", "e0nawocd": "jyZXzleJ"}}, {"itemIdentity": "LmeurGM7", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"S89mlZlM": "AIT9wJd6", "m7hPY1zq": "ENYTvEfu", "FgqiZivy": "hN6wNohv"}}]}' \
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
    --body '{"environment": "TvrKR1JA"}' \
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
    --body '{"appId": "ezWKTbUq", "publisherAuthenticationKey": "Q63AC4Y9"}' \
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
    --body '{"clientId": "F3ZjZd7G", "clientSecret": "D2h9J2ge", "organizationId": "QMS1Z2xw"}' \
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
    --body '{"relyingPartyCert": "7Dx4GKyx"}' \
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
    --password 'QOXCBSNO' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '2GlooUZs' \
    --itemId 'tJJvyGod' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'B6RelZsv' \
    --startTime 'peDpMGwL' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'GzOxzU5x' \
    --itemId 'QBgFLgki' \
    --itemType 'APP' \
    --endTime 'Z6P0oRLc' \
    --startTime 'YWw1eLJk' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ybrGzNMP' \
    --body '{"categoryPath": "ELvWMArr", "targetItemId": "H32t0ISG", "targetNamespace": "96CeSoMT"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'xzkvINry' \
    --body '{"appId": "SMtrFZQq", "appType": "SOFTWARE", "baseAppId": "PzxQVth7", "boothName": "IzUmFm2l", "categoryPath": "JWB7j67r", "clazz": "UHMpCuM9", "displayOrder": 11, "entitlementType": "CONSUMABLE", "ext": {"4hnjzbXq": {}, "jD51tQkU": {}, "1jHwDLwG": {}}, "features": ["6FIS7NRY", "rofOdwlA", "YEuC5lll"], "images": [{"as": "3cjDdJI8", "caption": "IfoE28Kq", "height": 64, "imageUrl": "AbjOT00a", "smallImageUrl": "BIFJLUWI", "width": 68}, {"as": "LbfWrfrp", "caption": "IhCjx0o5", "height": 13, "imageUrl": "a5iq1k6X", "smallImageUrl": "aIJDIcvK", "width": 73}, {"as": "cdnlhvc5", "caption": "aU9468W9", "height": 95, "imageUrl": "qAtGfUly", "smallImageUrl": "6FmaLhH6", "width": 30}], "itemIds": ["1M26mPyy", "E6voNJT4", "olOUoAMF"], "itemQty": {"wpNlYlb5": 32, "EjjMceY5": 55, "uXYZ0cNo": 53}, "itemType": "BUNDLE", "listable": true, "localizations": {"zm1Cz0t1": {"description": "pi48Io9o", "localExt": {"81vC0vNL": {}, "gSN89kIz": {}, "qdUOTxz8": {}}, "longDescription": "PKPINHrM", "title": "JxCm1kPa"}, "M379estK": {"description": "2NgtgvdT", "localExt": {"gF5Yp9LR": {}, "DN1pofOg": {}, "hOeSJIQ6": {}}, "longDescription": "1MYEDjxs", "title": "NxBrshQZ"}, "WmSnWfwi": {"description": "wtN4lHN2", "localExt": {"bC51kLn3": {}, "aLhlz3j5": {}, "yOaW8KeK": {}}, "longDescription": "39axfuSk", "title": "cEa5m3QX"}}, "maxCount": 63, "maxCountPerUser": 100, "name": "OjuNOFj9", "optionBoxConfig": {"boxItems": [{"count": 99, "itemId": "EYFApYR2", "itemSku": "EMz20R3Z"}, {"count": 8, "itemId": "QlA56iOw", "itemSku": "PyqGV8tM"}, {"count": 99, "itemId": "2y2Gtpjl", "itemSku": "76uiVpHw"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 54, "fixedTrialCycles": 95, "graceDays": 69}, "regionData": {"letNREuH": [{"currencyCode": "ZhahVq58", "currencyNamespace": "GTDtSen0", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1995-04-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1981-03-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1972-07-07T00:00:00Z", "price": 38, "purchaseAt": "1976-10-12T00:00:00Z", "trialPrice": 1}, {"currencyCode": "IbYczGQo", "currencyNamespace": "KM86nuKD", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1974-02-24T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-09-29T00:00:00Z", "discountedPrice": 61, "expireAt": "1974-06-29T00:00:00Z", "price": 85, "purchaseAt": "1977-11-21T00:00:00Z", "trialPrice": 36}, {"currencyCode": "2ZUygaWr", "currencyNamespace": "kONUejQg", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1993-08-12T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1971-03-01T00:00:00Z", "discountedPrice": 69, "expireAt": "1993-03-19T00:00:00Z", "price": 0, "purchaseAt": "1995-11-06T00:00:00Z", "trialPrice": 57}], "uQ6fcpoA": [{"currencyCode": "JFdEv4jO", "currencyNamespace": "mBgxNnNq", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1972-09-22T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1976-03-15T00:00:00Z", "discountedPrice": 34, "expireAt": "1980-10-16T00:00:00Z", "price": 45, "purchaseAt": "1997-10-09T00:00:00Z", "trialPrice": 83}, {"currencyCode": "0AKyBfcy", "currencyNamespace": "Ki4TY93A", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1996-10-22T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1990-12-03T00:00:00Z", "discountedPrice": 58, "expireAt": "1994-07-24T00:00:00Z", "price": 19, "purchaseAt": "1988-08-04T00:00:00Z", "trialPrice": 63}, {"currencyCode": "cVjkFC1w", "currencyNamespace": "LrO4Uj7i", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1973-10-14T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1980-05-23T00:00:00Z", "discountedPrice": 95, "expireAt": "1987-08-25T00:00:00Z", "price": 77, "purchaseAt": "1996-05-21T00:00:00Z", "trialPrice": 23}], "eZTyFQYX": [{"currencyCode": "M19P0v4r", "currencyNamespace": "HckLZv4g", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1991-09-05T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1985-01-15T00:00:00Z", "discountedPrice": 11, "expireAt": "1975-02-11T00:00:00Z", "price": 52, "purchaseAt": "1996-09-08T00:00:00Z", "trialPrice": 4}, {"currencyCode": "chp4m5pK", "currencyNamespace": "8intExDg", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1996-07-23T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1989-11-17T00:00:00Z", "discountedPrice": 23, "expireAt": "1985-05-01T00:00:00Z", "price": 39, "purchaseAt": "1982-08-22T00:00:00Z", "trialPrice": 32}, {"currencyCode": "nygy23Lc", "currencyNamespace": "ORNNOQ5U", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1987-09-14T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1979-08-22T00:00:00Z", "discountedPrice": 81, "expireAt": "1978-04-12T00:00:00Z", "price": 29, "purchaseAt": "1986-04-06T00:00:00Z", "trialPrice": 60}]}, "seasonType": "TIER", "sku": "2KYK34MG", "stackable": true, "status": "INACTIVE", "tags": ["MPgyFtWB", "iO6JxEIx", "ymclroLW"], "targetCurrencyCode": "f61TculU", "targetNamespace": "1lIZUxYs", "thumbnailUrl": "5H7ZLB4u", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'I2o3MQ6E' \
    --appId '0QH2Ar9F' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'vzVDArly' \
    --baseAppId 'Ai63WCJA' \
    --categoryPath 'ulGd0CTJ' \
    --features '1oTHTw8F' \
    --itemType 'BUNDLE' \
    --limit '70' \
    --offset '48' \
    --region 'dpBkyRLK' \
    --sortBy '["displayOrder", "updatedAt:desc"]' \
    --storeId '0J6ylv3K' \
    --tags 'Gj1edJit' \
    --targetNamespace 'ilt5B8Vl' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["GAsMb4up", "K5W2htoR", "AuQV4rL2"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'OZlMLqtk' \
    --sku '04seE47A' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'nTo9ChSj' \
    --populateBundle 'false' \
    --region 'ySJ2KtuM' \
    --storeId 'BpR0GzB1' \
    --sku 'XkecmHFq' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'z6Mt2MkO' \
    --sku 'ffOBSCIe' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["GzwkGylc", "Yb8NTrp6", "jftcEAPC"]' \
    --storeId 'XNunLEHg' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dXrVavUk' \
    --region 'y9r1ZIst' \
    --storeId 'u87aH5zJ' \
    --itemIds '73VFT0zy' \
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
    --userId '6iHoxWw3' \
    --body '{"itemIds": ["FLxw1B1e", "hkjEPjgU", "WQFnNaDT"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'EXTENSION' \
    --limit '65' \
    --offset '54' \
    --storeId 'GlW2ZJBQ' \
    --keyword 'aaDdSkVy' \
    --language 'trTqJElo' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '91' \
    --offset '95' \
    --sortBy '["displayOrder", "createdAt"]' \
    --storeId 'C2eEBOYd' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'ExvEcWKM' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '2LmUO208' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'pa2ztN3c' \
    --namespace $AB_NAMESPACE \
    --storeId 'mx6CKIh8' \
    --body '{"appId": "tfrYv7uO", "appType": "DEMO", "baseAppId": "xtGaiPFb", "boothName": "FwCx9k5S", "categoryPath": "c13fcZDZ", "clazz": "e7g5i1DP", "displayOrder": 81, "entitlementType": "CONSUMABLE", "ext": {"9RnlG6Hw": {}, "Vk830tyW": {}, "cFaAaVJ7": {}}, "features": ["H0WAWXRV", "K27LYSpI", "fHM9tRop"], "images": [{"as": "sHucidOB", "caption": "hx9q7Qiv", "height": 70, "imageUrl": "ZDhI9gLY", "smallImageUrl": "DxXXjfqm", "width": 30}, {"as": "TATP2Bur", "caption": "h22Gtegn", "height": 71, "imageUrl": "AF8qYVYH", "smallImageUrl": "CmzRbPgE", "width": 53}, {"as": "FUbx8KIS", "caption": "1EC5GH73", "height": 58, "imageUrl": "7yVuXKfO", "smallImageUrl": "XWHKJvwR", "width": 99}], "itemIds": ["IhuA0tdV", "gtyGNIYL", "AbKrB2cJ"], "itemQty": {"daehV5nH": 29, "ZIXMWcdC": 95, "FrAFZm8O": 71}, "itemType": "APP", "listable": false, "localizations": {"ef7zCA3P": {"description": "koDV4BAy", "localExt": {"XryhyejN": {}, "1j7Mrwew": {}, "nibYDCYG": {}}, "longDescription": "QAWusGb0", "title": "nUzenkwK"}, "BqpPWAdp": {"description": "CMLtOLxC", "localExt": {"sgZn7ec1": {}, "Z4wQNGWo": {}, "i9y92zAX": {}}, "longDescription": "Ghk5fIav", "title": "sPzmkfNv"}, "K1yLoYEy": {"description": "LJBuNULB", "localExt": {"bbeP14fa": {}, "xue4z1wW": {}, "eKMkyxt1": {}}, "longDescription": "CXaTlhED", "title": "WVFD5kIm"}}, "maxCount": 78, "maxCountPerUser": 56, "name": "nophZ5GY", "optionBoxConfig": {"boxItems": [{"count": 21, "itemId": "k3pvRHvk", "itemSku": "iancKPrV"}, {"count": 48, "itemId": "kNMQBbCW", "itemSku": "Oegmq7vz"}, {"count": 3, "itemId": "POA49LOJ", "itemSku": "X7EnsS3J"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 67, "fixedTrialCycles": 75, "graceDays": 62}, "regionData": {"516zIUkW": [{"currencyCode": "CIZ565rA", "currencyNamespace": "gAtJVa8T", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1975-04-09T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1992-01-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1983-03-03T00:00:00Z", "price": 75, "purchaseAt": "1988-07-24T00:00:00Z", "trialPrice": 15}, {"currencyCode": "buWKNmXO", "currencyNamespace": "9mHmJP9a", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1982-09-27T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1990-06-04T00:00:00Z", "discountedPrice": 89, "expireAt": "1995-03-28T00:00:00Z", "price": 7, "purchaseAt": "1984-01-27T00:00:00Z", "trialPrice": 80}, {"currencyCode": "r8UmYHUQ", "currencyNamespace": "OVea3wey", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1980-07-25T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1990-04-26T00:00:00Z", "discountedPrice": 9, "expireAt": "1984-05-02T00:00:00Z", "price": 33, "purchaseAt": "1988-12-26T00:00:00Z", "trialPrice": 76}], "poGJub8Z": [{"currencyCode": "fRnYJUJB", "currencyNamespace": "QL6QCASe", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1979-02-19T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1973-06-27T00:00:00Z", "discountedPrice": 22, "expireAt": "1981-07-12T00:00:00Z", "price": 99, "purchaseAt": "1984-04-16T00:00:00Z", "trialPrice": 9}, {"currencyCode": "emFNys7B", "currencyNamespace": "nzcsF4EB", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1973-05-02T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1996-11-15T00:00:00Z", "discountedPrice": 18, "expireAt": "1976-03-05T00:00:00Z", "price": 85, "purchaseAt": "1984-10-05T00:00:00Z", "trialPrice": 77}, {"currencyCode": "4PHJYCPV", "currencyNamespace": "KiQiHNxE", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1988-01-11T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1974-03-03T00:00:00Z", "discountedPrice": 17, "expireAt": "1996-11-27T00:00:00Z", "price": 40, "purchaseAt": "1991-05-20T00:00:00Z", "trialPrice": 2}], "6atcNTGw": [{"currencyCode": "UKyVccCK", "currencyNamespace": "tKqm6wVJ", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1974-01-21T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-02-13T00:00:00Z", "discountedPrice": 62, "expireAt": "1985-01-21T00:00:00Z", "price": 83, "purchaseAt": "1998-06-11T00:00:00Z", "trialPrice": 75}, {"currencyCode": "6t4lEovm", "currencyNamespace": "S71TzNCn", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1989-05-26T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1980-12-05T00:00:00Z", "discountedPrice": 11, "expireAt": "1977-01-21T00:00:00Z", "price": 7, "purchaseAt": "1998-11-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "R9UPZrlG", "currencyNamespace": "YEue0IXh", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1983-12-03T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1995-08-19T00:00:00Z", "discountedPrice": 73, "expireAt": "1995-05-24T00:00:00Z", "price": 7, "purchaseAt": "1988-10-27T00:00:00Z", "trialPrice": 13}]}, "seasonType": "TIER", "sku": "w7C8ntxN", "stackable": false, "status": "ACTIVE", "tags": ["hSrmA6l4", "fANUI3QZ", "16UIJyCW"], "targetCurrencyCode": "8fk3VNqr", "targetNamespace": "89qFCfnt", "thumbnailUrl": "gB0N3vyU", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'kij8A0DA' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'hgrqQqsS' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Vd0d7GjL' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 57, "orderNo": "GpGUOsg8"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'xMktuQRz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'QcIYjFII' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'oG6onFdK' \
    --namespace $AB_NAMESPACE \
    --storeId 'V5Cb2Rf8' \
    --body '{"carousel": [{"alt": "eSlswKV9", "previewUrl": "jGNbgTUe", "thumbnailUrl": "pNJIzIXR", "type": "video", "url": "yxYJ0f6p", "videoSource": "vimeo"}, {"alt": "n3gd4lzY", "previewUrl": "MAf3puPh", "thumbnailUrl": "rLESjenJ", "type": "image", "url": "A5nxxjEZ", "videoSource": "youtube"}, {"alt": "hCMJb7iB", "previewUrl": "DbUu3Znw", "thumbnailUrl": "XJw94rCl", "type": "image", "url": "xfwrBXlI", "videoSource": "youtube"}], "developer": "f2nSQzQy", "forumUrl": "NcevfRn8", "genres": ["Simulation", "Strategy", "Adventure"], "localizations": {"3uv8vHsW": {"announcement": "0TUYVDbR", "slogan": "vTZkzNIE"}, "pvRoTTu0": {"announcement": "8hn8Sdff", "slogan": "G8mRCZ4f"}, "ePhk1x7W": {"announcement": "NZmkgYKm", "slogan": "ULWvDmAi"}}, "platformRequirements": {"Uyx71sTU": [{"additionals": "q9ECqoHE", "directXVersion": "YT8th3AT", "diskSpace": "LdJSfEVA", "graphics": "jiyI4Yq9", "label": "HPPl91cq", "osVersion": "LEDV2you", "processor": "5BZrZQHN", "ram": "BHUKnkk1", "soundCard": "QbyH2axX"}, {"additionals": "C7Wnw4fk", "directXVersion": "hC1CIDVd", "diskSpace": "tuExE8Qp", "graphics": "YlLlLBrj", "label": "0v2cBlB9", "osVersion": "SdsrtxUT", "processor": "1lOe9VcF", "ram": "j8j5kaQl", "soundCard": "fgaVhlYS"}, {"additionals": "xb53MoqU", "directXVersion": "B5DjRbs6", "diskSpace": "xpD1HN9b", "graphics": "bh8eVreo", "label": "UNT9fSwp", "osVersion": "BbXhrnzh", "processor": "AyK5izNv", "ram": "WGGYHd30", "soundCard": "3WaMCBWb"}], "AuttNMDS": [{"additionals": "uTYX7BeL", "directXVersion": "tfPIEZ1X", "diskSpace": "m4OqUgLo", "graphics": "sFLDlx1I", "label": "x7CoEUms", "osVersion": "7JpD0jDd", "processor": "6mhKOZKY", "ram": "VrrFR61u", "soundCard": "O3jgOIAu"}, {"additionals": "8UyPcJ5r", "directXVersion": "m8Uw4hv8", "diskSpace": "uDsqYbeR", "graphics": "khk04CNH", "label": "sU385b4i", "osVersion": "gg842kSd", "processor": "bX9JEev3", "ram": "z1qFwC89", "soundCard": "NvIhnfRe"}, {"additionals": "mACLfw11", "directXVersion": "nFVjH8kl", "diskSpace": "0rVjh2vO", "graphics": "AtGaXGLZ", "label": "qRmSvQkO", "osVersion": "QJhRWzTT", "processor": "xw3LvO1o", "ram": "KctJq4I8", "soundCard": "yrNHScOI"}], "cIOuYI9h": [{"additionals": "6RmtZQTj", "directXVersion": "iMpjIoFB", "diskSpace": "ClHYuPna", "graphics": "aIh7FH6k", "label": "mPPSdfxo", "osVersion": "SSrNOVcY", "processor": "kjvIcZoe", "ram": "g4mBzSCq", "soundCard": "jNKtpzI6"}, {"additionals": "yLMGCMN8", "directXVersion": "ipysZqWh", "diskSpace": "Aeen6ojw", "graphics": "wnuVvkYz", "label": "EJjl6KFt", "osVersion": "wrbhJJfT", "processor": "NFMJh8qk", "ram": "yCbNdL0z", "soundCard": "2m4qZFCG"}, {"additionals": "x3EvsYpd", "directXVersion": "TMsHNBEL", "diskSpace": "CuIHkbDD", "graphics": "zHhyw7RX", "label": "ZHJqNoWI", "osVersion": "L9NLbrKK", "processor": "joMT1vVj", "ram": "330kwhmH", "soundCard": "dullto6J"}]}, "platforms": ["Android", "IOS", "Windows"], "players": ["MMO", "MMO", "CrossPlatformMulti"], "primaryGenre": "Strategy", "publisher": "PhGEpEdj", "releaseDate": "1985-08-01T00:00:00Z", "websiteUrl": "fh7pE4EB"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'JW7QrdqG' \
    --namespace $AB_NAMESPACE \
    --storeId 'k49tNMSd' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'dJohurPW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '22xHZNhI' \
    --namespace $AB_NAMESPACE \
    --storeId 'uWyR2Rck' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '2qXciISF' \
    --itemId 'jeFs1UIr' \
    --namespace $AB_NAMESPACE \
    --storeId '1a7Fpac2' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'vauQeBNt' \
    --itemId 'nR2SwuWn' \
    --namespace $AB_NAMESPACE \
    --storeId 'oAjAdoVQ' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'xv1VLzbG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'BmshlugM' \
    --populateBundle 'false' \
    --region 'nBBEh2Q4' \
    --storeId 'yNZk119a' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'AZpBppoI' \
    --namespace $AB_NAMESPACE \
    --storeId 'WC0O5cSW' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 23, "comparison": "includes", "name": "kxUyIFnH", "predicateType": "EntitlementPredicate", "value": "bN5Xg6mY", "values": ["ni7QfNCh", "0l8HD1Ui", "juiy9drk"]}, {"anyOf": 21, "comparison": "isGreaterThan", "name": "B6Vywenk", "predicateType": "EntitlementPredicate", "value": "d3v7pErx", "values": ["PkImYZdz", "igFfj7jv", "7LH9vk54"]}, {"anyOf": 89, "comparison": "isGreaterThan", "name": "taHOOgIE", "predicateType": "SeasonPassPredicate", "value": "UIdoPbbq", "values": ["LnvOphvZ", "tOc9aRr4", "CP3X6cKn"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "isLessThan", "name": "8cH2gWuw", "predicateType": "SeasonTierPredicate", "value": "CisWx9FX", "values": ["H7g7pG0S", "WsZMbSKc", "mfvSvvIi"]}, {"anyOf": 31, "comparison": "is", "name": "LC0VLk3z", "predicateType": "EntitlementPredicate", "value": "OfcRtmZN", "values": ["2yJxjSO6", "rrzzICFl", "FsZRaJWJ"]}, {"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "byUV2c81", "predicateType": "SeasonTierPredicate", "value": "sOrsBUGg", "values": ["cy088zj6", "DUEfiZGC", "n0KppD5q"]}]}, {"operator": "and", "predicates": [{"anyOf": 2, "comparison": "includes", "name": "fTpj8Yus", "predicateType": "SeasonPassPredicate", "value": "MHoaQtEE", "values": ["TjiKIgZo", "H4YUKHvb", "bj3S7fEV"]}, {"anyOf": 9, "comparison": "includes", "name": "KegyJHbr", "predicateType": "EntitlementPredicate", "value": "XOSwwEv7", "values": ["vuegQXZy", "Ida962Tv", "lnodmfV5"]}, {"anyOf": 22, "comparison": "isGreaterThan", "name": "FtymATGz", "predicateType": "SeasonPassPredicate", "value": "dsBhFuyX", "values": ["MdZe9jLp", "4HwqCBnu", "Nf20D1Ah"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'PFRPO9ur' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Fb9LFvWg"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'AQxMlBos' \
    --offset '67' \
    --tag 'dhYzIMuI' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "C7F9SLrR", "name": "HzDDTDrY", "status": "ACTIVE", "tags": ["mYr8zgys", "eT3aViTX", "WVCistQs"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '9nnIKH84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroup' test.out

#- 113 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'psV4GF1I' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Oys5BIiA", "name": "UeAJcfGY", "status": "INACTIVE", "tags": ["HYcLA2do", "LwsclNb8", "D2OEnGrV"]}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateKeyGroup' test.out

#- 114 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'FeDPxSzR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroupDynamic' test.out

#- 115 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'fqSOelEt' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '7' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 115 'ListKeys' test.out

#- 116 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'rz2D7acE' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 116 'UploadKeys' test.out

#- 117 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'wOfEIycI' \
    --limit '56' \
    --offset '58' \
    --orderNos '["LepnOnsi", "cLpc8vVz", "47RlZCLN"]' \
    --sortBy 'TzYQS8vA' \
    --startTime '6AECIXnc' \
    --status 'DELETED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 117 'QueryOrders' test.out

#- 118 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetOrderStatistics' test.out

#- 119 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HXLDtgJC' \
    > test.out 2>&1
eval_tap $? 119 'GetOrder' test.out

#- 120 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'FpIW0ADi' \
    --body '{"description": "KvHUhiJv"}' \
    > test.out 2>&1
eval_tap $? 120 'RefundOrder' test.out

#- 121 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetPaymentCallbackConfig' test.out

#- 122 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "IhqZWwJV", "privateKey": "9X0Wjk4G"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdatePaymentCallbackConfig' test.out

#- 123 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'ZQZjoeTj' \
    --externalId 'WtZR8qR9' \
    --limit '85' \
    --notificationSource 'WXPAY' \
    --notificationType 'Hjjm24lr' \
    --offset '58' \
    --paymentOrderNo 'mAdP3NnS' \
    --startDate 'blwPJwbN' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 123 'QueryPaymentNotifications' test.out

#- 124 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '477mczxB' \
    --limit '81' \
    --offset '89' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentOrders' test.out

#- 125 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ByFjlwd9", "currencyNamespace": "THdjCR88", "customParameters": {"NwU7SlUL": {}, "SPJPpZbu": {}, "l0xsOcAe": {}}, "description": "NKJ6qfgP", "extOrderNo": "vf9aMjXh", "extUserId": "zhyFwmGC", "itemType": "INGAMEITEM", "language": "zy", "metadata": {"fEPAVMyu": "V0gqMjP1", "l4uihTJD": "IrrU15sU", "i3bz0djz": "Q6KzSPHb"}, "notifyUrl": "4uL1gdKE", "omitNotification": true, "platform": "eFUAK0Zk", "price": 84, "recurringPaymentOrderNo": "FFDzlfQD", "region": "ayifxpYx", "returnUrl": "OELWIrtW", "sandbox": true, "sku": "EMHFT5gs", "subscriptionId": "VHUm5QVp", "targetNamespace": "vNrDKJNL", "targetUserId": "C4wR6UEv", "title": "mL6pDs3z"}' \
    > test.out 2>&1
eval_tap $? 125 'CreatePaymentOrderByDedicated' test.out

#- 126 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'SqewbhxI' \
    > test.out 2>&1
eval_tap $? 126 'ListExtOrderNoByExtTxId' test.out

#- 127 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KIWb5pNk' \
    > test.out 2>&1
eval_tap $? 127 'GetPaymentOrder' test.out

#- 128 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'c2Yi0yiA' \
    --body '{"extTxId": "EJW3AOE5", "paymentMethod": "iNRjEH6f", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 128 'ChargePaymentOrder' test.out

#- 129 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7Jj2TmTw' \
    --body '{"description": "gLI13fMe"}' \
    > test.out 2>&1
eval_tap $? 129 'RefundPaymentOrderByDedicated' test.out

#- 130 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '62JgT6za' \
    --body '{"amount": 74, "currencyCode": "sxWTulnz", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 74, "vat": 80}' \
    > test.out 2>&1
eval_tap $? 130 'SimulatePaymentOrderNotification' test.out

#- 131 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZOCZ1qiR' \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrderChargeStatus' test.out

#- 132 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 132 'GetPlatformWalletConfig' test.out

#- 133 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["IOS", "Playstation", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 133 'UpdatePlatformWalletConfig' test.out

#- 134 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 134 'ResetPlatformWalletConfig' test.out

#- 135 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MlFtOwp1", "eventTopic": "ngtYc4yg", "maxAwarded": 52, "maxAwardedPerUser": 25, "namespaceExpression": "g9XdMioj", "rewardCode": "AIWoqVdg", "rewardConditions": [{"condition": "41jB8onS", "conditionName": "ydcfGFE1", "eventName": "x0LUnjgL", "rewardItems": [{"duration": 95, "itemId": "qhScKxhD", "quantity": 32}, {"duration": 10, "itemId": "7WEbkS6j", "quantity": 44}, {"duration": 35, "itemId": "jYrybP6T", "quantity": 38}]}, {"condition": "sU5nA54k", "conditionName": "Im3456i0", "eventName": "FklX99VV", "rewardItems": [{"duration": 68, "itemId": "nrUw1dMA", "quantity": 34}, {"duration": 85, "itemId": "wW0s48vz", "quantity": 42}, {"duration": 0, "itemId": "YOoy4jWH", "quantity": 44}]}, {"condition": "6saIDug1", "conditionName": "39bBxP4C", "eventName": "RV3Rhv8m", "rewardItems": [{"duration": 30, "itemId": "pSdcaLhT", "quantity": 99}, {"duration": 74, "itemId": "BHEiRclg", "quantity": 79}, {"duration": 81, "itemId": "AxFkB1g3", "quantity": 52}]}], "userIdExpression": "6OaqdBYw"}' \
    > test.out 2>&1
eval_tap $? 135 'CreateReward' test.out

#- 136 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'sSGr4c5K' \
    --limit '63' \
    --offset '27' \
    --sortBy '["namespace:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 136 'QueryRewards' test.out

#- 137 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'ExportRewards' test.out

#- 138 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'ImportRewards' test.out

#- 139 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5p11ZIqX' \
    > test.out 2>&1
eval_tap $? 139 'GetReward' test.out

#- 140 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'yzzohvry' \
    --body '{"description": "sAYEBclE", "eventTopic": "b5nqPcSS", "maxAwarded": 86, "maxAwardedPerUser": 51, "namespaceExpression": "5UN1XA7V", "rewardCode": "hTaTGFXn", "rewardConditions": [{"condition": "vHOcGmt8", "conditionName": "GaxLCYwe", "eventName": "tGj7KntI", "rewardItems": [{"duration": 31, "itemId": "WUzqN0Y6", "quantity": 26}, {"duration": 93, "itemId": "hyzuwtN2", "quantity": 22}, {"duration": 75, "itemId": "ulYBgsLz", "quantity": 77}]}, {"condition": "FbZlp6l0", "conditionName": "h4QY09sx", "eventName": "DmAu6r42", "rewardItems": [{"duration": 94, "itemId": "pwnUY8VL", "quantity": 75}, {"duration": 26, "itemId": "2htY7QVn", "quantity": 30}, {"duration": 89, "itemId": "i8ZN8iYH", "quantity": 6}]}, {"condition": "Xzxu39F4", "conditionName": "VrWlixXU", "eventName": "RW0TVtmg", "rewardItems": [{"duration": 100, "itemId": "uudLuUu6", "quantity": 41}, {"duration": 40, "itemId": "Husg9FXQ", "quantity": 53}, {"duration": 98, "itemId": "D6hgiUuX", "quantity": 23}]}], "userIdExpression": "PIZjNHBf"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateReward' test.out

#- 141 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'cKLlfG99' \
    > test.out 2>&1
eval_tap $? 141 'DeleteReward' test.out

#- 142 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'q8rCVcEu' \
    --body '{"payload": {"Gr8BZBAk": {}, "dKcyBIf3": {}, "9Mdfoaqy": {}}}' \
    > test.out 2>&1
eval_tap $? 142 'CheckEventCondition' test.out

#- 143 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'MIWtpXt8' \
    --body '{"conditionName": "9kjdenQr", "userId": "4eIJvGF7"}' \
    > test.out 2>&1
eval_tap $? 143 'DeleteRewardConditionRecord' test.out

#- 144 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'ListStores' test.out

#- 145 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "leyZ0j23", "defaultRegion": "uJbW7d1y", "description": "HYDWZo5X", "supportedLanguages": ["nYkO39nz", "1XE5kpnc", "hg3gJB05"], "supportedRegions": ["Zyzr2rIF", "GPfaSzNg", "vYqNgUfV"], "title": "OPZUFZNB"}' \
    > test.out 2>&1
eval_tap $? 145 'CreateStore' test.out

#- 146 ImportStore
samples/cli/sample-apps Platform importStore \
    --namespace $AB_NAMESPACE \
    --storeId 'uhhJrEaY' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 146 'ImportStore' test.out

#- 147 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPublishedStore' test.out

#- 148 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'DeletePublishedStore' test.out

#- 149 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPublishedStoreBackup' test.out

#- 150 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 150 'RollbackPublishedStore' test.out

#- 151 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId '7p649dyY' \
    > test.out 2>&1
eval_tap $? 151 'GetStore' test.out

#- 152 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'esEpiB4x' \
    --body '{"defaultLanguage": "I7EY5QLp", "defaultRegion": "Fvztwjd8", "description": "FuHQ7tAr", "supportedLanguages": ["rlDhs5cu", "0Rd4y3vd", "TezTsM8y"], "supportedRegions": ["GsfL92UE", "M7CKZt6x", "wNYIM4Wq"], "title": "35YWwSMQ"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateStore' test.out

#- 153 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '6zOO4api' \
    > test.out 2>&1
eval_tap $? 153 'DeleteStore' test.out

#- 154 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'w9MgpEQ4' \
    --action 'CREATE' \
    --itemSku 'jgjpjSlM' \
    --itemType 'SUBSCRIPTION' \
    --limit '54' \
    --offset '55' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd '8zqD4vrq' \
    --updatedAtStart 'dFGAcZHf' \
    > test.out 2>&1
eval_tap $? 154 'QueryChanges' test.out

#- 155 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Acx9fTF5' \
    > test.out 2>&1
eval_tap $? 155 'PublishAll' test.out

#- 156 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'hUNO5HLS' \
    > test.out 2>&1
eval_tap $? 156 'PublishSelected' test.out

#- 157 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'r5Vacj77' \
    > test.out 2>&1
eval_tap $? 157 'SelectAllRecords' test.out

#- 158 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'IdcKhhxq' \
    --action 'UPDATE' \
    --itemSku 'z4LJO6Ja' \
    --itemType 'SUBSCRIPTION' \
    --type 'ITEM' \
    --updatedAtEnd 'miqs9EHa' \
    --updatedAtStart 'J4g45Hvz' \
    > test.out 2>&1
eval_tap $? 158 'GetStatistic' test.out

#- 159 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'b5reTFTa' \
    > test.out 2>&1
eval_tap $? 159 'UnselectAllRecords' test.out

#- 160 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'rdEiJGOa' \
    --namespace $AB_NAMESPACE \
    --storeId 'GXzOaCqG' \
    > test.out 2>&1
eval_tap $? 160 'SelectRecord' test.out

#- 161 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'SPRcVwdQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'mjSGgSCy' \
    > test.out 2>&1
eval_tap $? 161 'UnselectRecord' test.out

#- 162 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '1GTcR2qM' \
    --targetStoreId 'V2o0K2b6' \
    > test.out 2>&1
eval_tap $? 162 'CloneStore' test.out

#- 163 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace $AB_NAMESPACE \
    --storeId 'biJtngYG' \
    > test.out 2>&1
eval_tap $? 163 'ExportStore' test.out

#- 164 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'a5SGTHai' \
    --limit '39' \
    --offset '33' \
    --sku 'VNjr9m4K' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'OEGDkeUu' \
    > test.out 2>&1
eval_tap $? 164 'QuerySubscriptions' test.out

#- 165 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dIgMuHND' \
    > test.out 2>&1
eval_tap $? 165 'RecurringChargeSubscription' test.out

#- 166 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'NdMSZj1D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 166 'GetTicketDynamic' test.out

#- 167 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'bWOiuryM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "R5VdAGNq"}' \
    > test.out 2>&1
eval_tap $? 167 'DecreaseTicketSale' test.out

#- 168 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'HKDKqzJj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 168 'GetTicketBoothID' test.out

#- 169 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'PJis2eGO' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 34, "orderNo": "CkuoxeKc"}' \
    > test.out 2>&1
eval_tap $? 169 'IncreaseTicketSale' test.out

#- 170 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'igFQyaKI' \
    --body '{"achievements": [{"id": "X6pLx5J7", "value": 12}, {"id": "03ftzIgw", "value": 18}, {"id": "qqCEM7NO", "value": 93}], "steamUserId": "zhKL3B57"}' \
    > test.out 2>&1
eval_tap $? 170 'UnlockSteamUserAchievement' test.out

#- 171 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xwJtPBP0' \
    --xboxUserId 'UgFGxgFa' \
    > test.out 2>&1
eval_tap $? 171 'GetXblUserAchievements' test.out

#- 172 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'x0ZLZ1Ul' \
    --body '{"achievements": [{"id": "NVLv7WI0", "percentComplete": 47}, {"id": "989KcLzB", "percentComplete": 25}, {"id": "Zg0tp0aW", "percentComplete": 50}], "serviceConfigId": "UIo1LuMc", "titleId": "l3exWGG9", "xboxUserId": "CvoYih25"}' \
    > test.out 2>&1
eval_tap $? 172 'UpdateXblUserAchievement' test.out

#- 173 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'ed2LD4Sw' \
    > test.out 2>&1
eval_tap $? 173 'AnonymizeCampaign' test.out

#- 174 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jxetFaKY' \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeEntitlement' test.out

#- 175 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Etz3ug5s' \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeFulfillment' test.out

#- 176 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '8mVshfs6' \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeIntegration' test.out

#- 177 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '5ADwHPp1' \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeOrder' test.out

#- 178 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Wx9GG3Zs' \
    > test.out 2>&1
eval_tap $? 178 'AnonymizePayment' test.out

#- 179 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'u12Bxgez' \
    > test.out 2>&1
eval_tap $? 179 'AnonymizeSubscription' test.out

#- 180 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'OVT1pdGk' \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeWallet' test.out

#- 181 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Xyg4kjZX' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'mrr8wh1r' \
    --features '["6MW70fjy", "EAvu0UZl", "KXcM43nx"]' \
    --itemId '["NuDHCFKF", "Cp3dEBQc", "MyDNlsRo"]' \
    --limit '13' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 181 'QueryUserEntitlements' test.out

#- 182 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'FEovO14N' \
    --body '[{"endDate": "1988-05-25T00:00:00Z", "grantedCode": "l62Ty61Z", "itemId": "D9YCBf84", "itemNamespace": "cNv3n3zN", "language": "otGu_292", "quantity": 18, "region": "3F2BB8KN", "source": "IAP", "startDate": "1973-04-06T00:00:00Z", "storeId": "e4Bkpu4o"}, {"endDate": "1979-10-25T00:00:00Z", "grantedCode": "qfJYoVqC", "itemId": "IbWp8u7S", "itemNamespace": "362E4OTe", "language": "kO-zu", "quantity": 65, "region": "zINVPzom", "source": "REDEEM_CODE", "startDate": "1974-03-03T00:00:00Z", "storeId": "7BaE3dDP"}, {"endDate": "1989-06-12T00:00:00Z", "grantedCode": "kPNH3TMX", "itemId": "9TKQh1q9", "itemNamespace": "07M7AcUq", "language": "awg", "quantity": 74, "region": "CfySCpe4", "source": "ACHIEVEMENT", "startDate": "1996-07-22T00:00:00Z", "storeId": "PjiMsUO5"}]' \
    > test.out 2>&1
eval_tap $? 182 'GrantUserEntitlement' test.out

#- 183 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dWKJ1vLv' \
    --activeOnly 'false' \
    --appId 'zVbONjB4' \
    > test.out 2>&1
eval_tap $? 183 'GetUserAppEntitlementByAppId' test.out

#- 184 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'nLNH7ZRw' \
    --activeOnly 'true' \
    --limit '71' \
    --offset '26' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 184 'QueryUserEntitlementsByAppType' test.out

#- 185 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9l37eCKw' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'QBr0wCsF' \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlementByItemId' test.out

#- 186 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EkQohHEf' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --sku '9J7IitYY' \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementBySku' test.out

#- 187 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'myByFP4R' \
    --appIds '["RRz7qBEH", "YGfvwxlm", "joUJSget"]' \
    --itemIds '["8Ht70dWv", "qGIG1bql", "0vhG53E1"]' \
    --skus '["eEv4fshl", "35QEHc0M", "glV0lzNa"]' \
    > test.out 2>&1
eval_tap $? 187 'ExistsAnyUserActiveEntitlement' test.out

#- 188 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'BYyMTS6E' \
    --itemIds '["XkkQIMgw", "Im3ToeE9", "zXDTEeKq"]' \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 189 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2yd7fAZE' \
    --appId 'jisMYUYw' \
    > test.out 2>&1
eval_tap $? 189 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 190 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uOYdnjB3' \
    --entitlementClazz 'CODE' \
    --itemId '1yRZkIn2' \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementOwnershipByItemId' test.out

#- 191 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Yk9rVt6n' \
    --ids '["Tolqjgz8", "sPI6oDf5", "IYgX5HZh"]' \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemIds' test.out

#- 192 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'QgzBhf0P' \
    --entitlementClazz 'APP' \
    --sku 'a9AZWIuk' \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipBySku' test.out

#- 193 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'h8vpCzfK' \
    --entitlementIds 'jtEs7ZPp' \
    > test.out 2>&1
eval_tap $? 193 'RevokeUserEntitlements' test.out

#- 194 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'VY8wGWK7' \
    --namespace $AB_NAMESPACE \
    --userId 'sQxtPTYP' \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlement' test.out

#- 195 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'iKlbqOKP' \
    --namespace $AB_NAMESPACE \
    --userId 'uE7ZStys' \
    --body '{"endDate": "1976-03-25T00:00:00Z", "nullFieldList": ["YwBGRnQV", "zU3oqApF", "evajp5gc"], "startDate": "1991-01-26T00:00:00Z", "status": "ACTIVE", "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateUserEntitlement' test.out

#- 196 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'WDbgPudC' \
    --namespace $AB_NAMESPACE \
    --userId 'OH6OuYm9' \
    --body '{"options": ["b27sKcMI", "gCW0rpc9", "CwYSUhId"], "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 196 'ConsumeUserEntitlement' test.out

#- 197 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Rvmabu46' \
    --namespace $AB_NAMESPACE \
    --userId 'ox7PE0OZ' \
    > test.out 2>&1
eval_tap $? 197 'DisableUserEntitlement' test.out

#- 198 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ojksqnbc' \
    --namespace $AB_NAMESPACE \
    --userId '7nCH0WAw' \
    > test.out 2>&1
eval_tap $? 198 'EnableUserEntitlement' test.out

#- 199 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'pci0pzIw' \
    --namespace $AB_NAMESPACE \
    --userId '2GJ9KNRD' \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementHistories' test.out

#- 200 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'KtyMpzBc' \
    --namespace $AB_NAMESPACE \
    --userId 'Pbsi5cBt' \
    > test.out 2>&1
eval_tap $? 200 'RevokeUserEntitlement' test.out

#- 201 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'yI64hEzu' \
    --body '{"duration": 62, "endDate": "1986-01-09T00:00:00Z", "itemId": "eCVUgzNh", "itemSku": "a89CuY0q", "language": "DgxvcSeK", "order": {"currency": {"currencyCode": "VVCNXIcD", "currencySymbol": "7GpAU61n", "currencyType": "REAL", "decimals": 52, "namespace": "2OFfuqSn"}, "ext": {"AoUSrNyr": {}, "RZtC7cUm": {}, "q9tygsGt": {}}, "free": false}, "orderNo": "HnDmstII", "origin": "Epic", "quantity": 77, "region": "D3qy3Yr8", "source": "REDEEM_CODE", "startDate": "1998-06-01T00:00:00Z", "storeId": "mgVcw7tY"}' \
    > test.out 2>&1
eval_tap $? 201 'FulfillItem' test.out

#- 202 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'AJ7O0U8V' \
    --body '{"code": "lGKtEERI", "language": "qouB_yVEF-YE", "region": "qnvbG1aG"}' \
    > test.out 2>&1
eval_tap $? 202 'RedeemCode' test.out

#- 203 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Z6dpu5G3' \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "dyIdTxW5", "namespace": "3cNjIP05"}, "item": {"itemId": "hIK2WoE0", "itemSku": "M0K64qJ8", "itemType": "9pSdE3bX"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "EUqIrlfM", "namespace": "HWGH2bKi"}, "item": {"itemId": "HB2sjm4f", "itemSku": "ZM6bWdkE", "itemType": "4AsEcay3"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "d3iTuXED", "namespace": "8K5gTcVF"}, "item": {"itemId": "8HMStJ0e", "itemSku": "87JqLjwq", "itemType": "tqKyP6yD"}, "quantity": 2, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 203 'FulfillRewards' test.out

#- 204 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FMoqWUKh' \
    --endTime '5MHNASv0' \
    --limit '56' \
    --offset '10' \
    --productId 'NgaoPLIH' \
    --startTime 'R80urs3x' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 204 'QueryUserIAPOrders' test.out

#- 205 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dI1gHQ9M' \
    > test.out 2>&1
eval_tap $? 205 'QueryAllUserIAPOrders' test.out

#- 206 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xsWF6xnq' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "YMxm-FSIZ_247", "productId": "BoUD8d9V", "region": "DmjOQzle", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 206 'MockFulfillIAPItem' test.out

#- 207 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'MeHTcTOg' \
    --itemId 'ebTGGHOz' \
    --limit '38' \
    --offset '13' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 207 'QueryUserOrders' test.out

#- 208 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dDJzf7BE' \
    --body '{"currencyCode": "JAehKI8V", "currencyNamespace": "4cFBKij4", "discountedPrice": 86, "ext": {"TR4bIlEY": {}, "6Iz6Gfzm": {}, "w7yawC27": {}}, "itemId": "pBxGhN41", "language": "cAbmMBvd", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 100, "quantity": 7, "region": "NjIe8jK0", "returnUrl": "hnluZV0V", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 208 'AdminCreateUserOrder' test.out

#- 209 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'DkY2r4L9' \
    --itemId 'um5jGImX' \
    > test.out 2>&1
eval_tap $? 209 'CountOfPurchasedItem' test.out

#- 210 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tfVGt44U' \
    --userId 'yBwEyGpf' \
    > test.out 2>&1
eval_tap $? 210 'GetUserOrder' test.out

#- 211 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '1KfsVcxt' \
    --userId 'QZlH6ADD' \
    --body '{"status": "FULFILLED", "statusReason": "6n5U7THJ"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateUserOrderStatus' test.out

#- 212 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lO8spR4r' \
    --userId 'xRd794bw' \
    > test.out 2>&1
eval_tap $? 212 'FulfillUserOrder' test.out

#- 213 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'pWmOlbx4' \
    --userId 'YVJRT6sc' \
    > test.out 2>&1
eval_tap $? 213 'GetUserOrderGrant' test.out

#- 214 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'qK7NmmXH' \
    --userId 'gz664V4o' \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrderHistories' test.out

#- 215 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'xOEpzbka' \
    --userId '3bnaGh0m' \
    --body '{"additionalData": {"cardSummary": "9OyhUmEc"}, "authorisedTime": "1971-08-31T00:00:00Z", "chargebackReversedTime": "1980-09-07T00:00:00Z", "chargebackTime": "1991-03-15T00:00:00Z", "chargedTime": "1982-04-15T00:00:00Z", "createdTime": "1987-10-11T00:00:00Z", "currency": {"currencyCode": "OVLBB0lG", "currencySymbol": "F7PvahC9", "currencyType": "VIRTUAL", "decimals": 56, "namespace": "aYtPBtr1"}, "customParameters": {"ItBfhoup": {}, "7CPDU5wp": {}, "FLGwmeev": {}}, "extOrderNo": "InwLNlN2", "extTxId": "kts2GiKq", "extUserId": "eiGPOl50", "issuedAt": "1980-05-15T00:00:00Z", "metadata": {"FiEHzt6g": "CWS2UD6a", "jmDtuMuA": "thZvlhhB", "2L8RB9aY": "AypXledw"}, "namespace": "D52xQ9UB", "nonceStr": "RZELLd4X", "paymentMethod": "WeZkgdV0", "paymentMethodFee": 86, "paymentOrderNo": "RiUJ66kz", "paymentProvider": "WALLET", "paymentProviderFee": 2, "paymentStationUrl": "VhTTQEzr", "price": 24, "refundedTime": "1975-11-07T00:00:00Z", "salesTax": 18, "sandbox": false, "sku": "CqtmTZ7C", "status": "REQUEST_FOR_INFORMATION", "statusReason": "vyjjSmGI", "subscriptionId": "UhZeTqhn", "subtotalPrice": 85, "targetNamespace": "nJYPrtjJ", "targetUserId": "7SB6fOYi", "tax": 43, "totalPrice": 21, "totalTax": 31, "txEndTime": "1995-08-05T00:00:00Z", "type": "MjlSgFmM", "userId": "kTKjoiti", "vat": 30}' \
    > test.out 2>&1
eval_tap $? 215 'ProcessUserOrderNotification' test.out

#- 216 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'AFKz6n9F' \
    --userId 'ah31FFwW' \
    > test.out 2>&1
eval_tap $? 216 'DownloadUserOrderReceipt' test.out

#- 217 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Qppxo5D9' \
    --body '{"currencyCode": "Rce0Yl6K", "currencyNamespace": "uy3L0DYS", "customParameters": {"JXlIG7IA": {}, "XcePvPRw": {}, "PGg1YslJ": {}}, "description": "bwT7ICYB", "extOrderNo": "ac6SmRFp", "extUserId": "tjCaNCft", "itemType": "SUBSCRIPTION", "language": "Wf-764", "metadata": {"vSZnNSj5": "zqfyl9DW", "KD2weL6V": "VaDEk6Tc", "IneVlvRO": "aKQCGiVe"}, "notifyUrl": "WQTiSh9s", "omitNotification": true, "platform": "mqwOvln3", "price": 70, "recurringPaymentOrderNo": "8AZiIHdw", "region": "2dIsEDXI", "returnUrl": "61aoYxtH", "sandbox": false, "sku": "T6BYnCr8", "subscriptionId": "MhBYccQb", "title": "CYby0YPI"}' \
    > test.out 2>&1
eval_tap $? 217 'CreateUserPaymentOrder' test.out

#- 218 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GHiNFT2O' \
    --userId '6tk91d6g' \
    --body '{"description": "ZmCOHZvC"}' \
    > test.out 2>&1
eval_tap $? 218 'RefundUserPaymentOrder' test.out

#- 219 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'x0TTdnKG' \
    --body '{"code": "fGbQSzmy", "orderNo": "EskQzF2y"}' \
    > test.out 2>&1
eval_tap $? 219 'ApplyUserRedemption' test.out

#- 220 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MsvVOpxS' \
    --chargeStatus 'CHARGED' \
    --itemId 'oHQaopRC' \
    --limit '92' \
    --offset '50' \
    --sku 'Bszf5VHI' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserSubscriptions' test.out

#- 221 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'W5l7Hy1q' \
    --excludeSystem 'false' \
    --limit '92' \
    --offset '43' \
    --subscriptionId 'ZpDCuAT9' \
    > test.out 2>&1
eval_tap $? 221 'GetUserSubscriptionActivities' test.out

#- 222 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2O9mY9uF' \
    --body '{"grantDays": 27, "itemId": "kXqzUfgZ", "language": "sb1DFMzQ", "reason": "DzJAXdAh", "region": "xAr4bci8", "source": "wL1ikmMk"}' \
    > test.out 2>&1
eval_tap $? 222 'PlatformSubscribeSubscription' test.out

#- 223 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4bYm68Is' \
    --itemId 'ID5WzSnu' \
    > test.out 2>&1
eval_tap $? 223 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 224 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eJncBmSk' \
    --userId 'nGH3qIas' \
    > test.out 2>&1
eval_tap $? 224 'GetUserSubscription' test.out

#- 225 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ve6D6wRG' \
    --userId 'CjqBB2cY' \
    > test.out 2>&1
eval_tap $? 225 'DeleteUserSubscription' test.out

#- 226 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2xuSoLuq' \
    --userId 'yESY0IUg' \
    --force 'false' \
    --body '{"immediate": true, "reason": "tFyuK76m"}' \
    > test.out 2>&1
eval_tap $? 226 'CancelSubscription' test.out

#- 227 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HDfYv6aR' \
    --userId 'jFhdCHRr' \
    --body '{"grantDays": 7, "reason": "HPkXSZXJ"}' \
    > test.out 2>&1
eval_tap $? 227 'GrantDaysToSubscription' test.out

#- 228 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UEcu9Tzs' \
    --userId '2wvo37xl' \
    --excludeFree 'false' \
    --limit '69' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscriptionBillingHistories' test.out

#- 229 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dgsn9yNT' \
    --userId 'x5Z7ETUC' \
    --body '{"additionalData": {"cardSummary": "l2PdZj5l"}, "authorisedTime": "1991-12-06T00:00:00Z", "chargebackReversedTime": "1982-04-01T00:00:00Z", "chargebackTime": "1983-12-16T00:00:00Z", "chargedTime": "1996-02-08T00:00:00Z", "createdTime": "1996-09-07T00:00:00Z", "currency": {"currencyCode": "gGsFN5QV", "currencySymbol": "MU8slLGf", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "fks7gtv0"}, "customParameters": {"k0N9Vpbh": {}, "j2eKUsdP": {}, "b741cnqB": {}}, "extOrderNo": "d78weKY6", "extTxId": "rGhRHdvx", "extUserId": "z6oiTuH8", "issuedAt": "1984-01-10T00:00:00Z", "metadata": {"X24nG9Wq": "nyADhnRB", "OdszoPb1": "eL9Ko7vL", "Iw0uLQf2": "8mincaZR"}, "namespace": "r3HQTz8K", "nonceStr": "ovLfvqpQ", "paymentMethod": "TIkCEyow", "paymentMethodFee": 24, "paymentOrderNo": "xPbqrySB", "paymentProvider": "ADYEN", "paymentProviderFee": 8, "paymentStationUrl": "vpJ78PWt", "price": 81, "refundedTime": "1983-10-26T00:00:00Z", "salesTax": 26, "sandbox": true, "sku": "HeKlpQNj", "status": "REFUND_FAILED", "statusReason": "aEbO27dw", "subscriptionId": "3Mu82UfE", "subtotalPrice": 99, "targetNamespace": "oMFrs1km", "targetUserId": "dlSW8Tzv", "tax": 26, "totalPrice": 43, "totalTax": 92, "txEndTime": "1973-09-02T00:00:00Z", "type": "oWeDEUlO", "userId": "3dIO1NUi", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 229 'ProcessUserSubscriptionNotification' test.out

#- 230 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'VtfhA08N' \
    --namespace $AB_NAMESPACE \
    --userId 'JmPmSM3e' \
    --body '{"count": 55, "orderNo": "wPoDQw8A"}' \
    > test.out 2>&1
eval_tap $? 230 'AcquireUserTicket' test.out

#- 231 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'cvcPJ91n' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserCurrencyWallets' test.out

#- 232 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'hWp3SjCq' \
    --namespace $AB_NAMESPACE \
    --userId '4seQurDL' \
    --limit '91' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 232 'ListUserCurrencyTransactions' test.out

#- 233 CheckWallet
eval_tap 0 233 'CheckWallet # SKIP deprecated' test.out

#- 234 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'RkCR9Uzy' \
    --namespace $AB_NAMESPACE \
    --userId 'U95cljkb' \
    --body '{"amount": 100, "expireAt": "1971-10-01T00:00:00Z", "origin": "IOS", "reason": "Y6oVZYdW", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 234 'CreditUserWallet' test.out

#- 235 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'cFP4SIhl' \
    --namespace $AB_NAMESPACE \
    --userId '06G28dpB' \
    --body '{"amount": 60, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 235 'PayWithUserWallet' test.out

#- 236 GetUserWallet
eval_tap 0 236 'GetUserWallet # SKIP deprecated' test.out

#- 237 DebitUserWallet
eval_tap 0 237 'DebitUserWallet # SKIP deprecated' test.out

#- 238 DisableUserWallet
eval_tap 0 238 'DisableUserWallet # SKIP deprecated' test.out

#- 239 EnableUserWallet
eval_tap 0 239 'EnableUserWallet # SKIP deprecated' test.out

#- 240 ListUserWalletTransactions
eval_tap 0 240 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 241 QueryWallets
eval_tap 0 241 'QueryWallets # SKIP deprecated' test.out

#- 242 GetWallet
eval_tap 0 242 'GetWallet # SKIP deprecated' test.out

#- 243 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'F5Rwxg4B' \
    --end 'u1u8XY59' \
    --start 'zRUZgBof' \
    > test.out 2>&1
eval_tap $? 243 'SyncOrders' test.out

#- 244 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["s1oZqTNA", "55DPUQmY", "zUYON9Cq"], "apiKey": "A6ZyJ86F", "authoriseAsCapture": false, "blockedPaymentMethods": ["CL1vDJSc", "Y4h9henf", "mragou6E"], "clientKey": "PMMMC1UG", "dropInSettings": "1Un4v6nk", "liveEndpointUrlPrefix": "QC7MAInT", "merchantAccount": "qs7VGHqB", "notificationHmacKey": "h25Dhvij", "notificationPassword": "Vaz1OeMs", "notificationUsername": "ZeAOlk9a", "returnUrl": "oYvRpNri", "settings": "2F4akfVx"}' \
    > test.out 2>&1
eval_tap $? 244 'TestAdyenConfig' test.out

#- 245 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "iCwvR9NK", "privateKey": "xHjcKW58", "publicKey": "lXHV9kH4", "returnUrl": "49qdErnz"}' \
    > test.out 2>&1
eval_tap $? 245 'TestAliPayConfig' test.out

#- 246 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "mYv8gMLt", "secretKey": "rcDaORIB"}' \
    > test.out 2>&1
eval_tap $? 246 'TestCheckoutConfig' test.out

#- 247 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'BCYV2VJ3' \
    --region 'Bqlx3DzX' \
    > test.out 2>&1
eval_tap $? 247 'DebugMatchedPaymentMerchantConfig' test.out

#- 248 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "JatHef9I", "clientSecret": "m8O4jfEF", "returnUrl": "zVNcnTH4", "webHookId": "hDQd1Rhe"}' \
    > test.out 2>&1
eval_tap $? 248 'TestPayPalConfig' test.out

#- 249 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["E6XLuccv", "Zba30OrM", "uRPlNQEy"], "publishableKey": "8IvAeIXR", "secretKey": "GYOlAOcV", "webhookSecret": "S375bV0i"}' \
    > test.out 2>&1
eval_tap $? 249 'TestStripeConfig' test.out

#- 250 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Pa8tlOZi", "key": "1bXBnT6n", "mchid": "YPZNrtDA", "returnUrl": "L7iYyNDB"}' \
    > test.out 2>&1
eval_tap $? 250 'TestWxPayConfig' test.out

#- 251 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "NDeYZeKR", "flowCompletionUrl": "4PuEMCTy", "merchantId": 48, "projectId": 38, "projectSecretKey": "FBOCEEMP"}' \
    > test.out 2>&1
eval_tap $? 251 'TestXsollaConfig' test.out

#- 252 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'Ud3ckbWy' \
    > test.out 2>&1
eval_tap $? 252 'GetPaymentMerchantConfig' test.out

#- 253 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'LrZHPIQm' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["iPtS0J9k", "1cUiVPVJ", "EzFx8JXE"], "apiKey": "iIddIpYn", "authoriseAsCapture": true, "blockedPaymentMethods": ["T78Dbqgk", "6IWRn08R", "DXLryXS3"], "clientKey": "DHUgELaG", "dropInSettings": "DJ5liHbP", "liveEndpointUrlPrefix": "xOaryCqK", "merchantAccount": "VEOrYAxQ", "notificationHmacKey": "GwJYpvSA", "notificationPassword": "R6yh1HRw", "notificationUsername": "kRMxG3ds", "returnUrl": "Dr4K538X", "settings": "eETIYQUZ"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateAdyenConfig' test.out

#- 254 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'wC1W7tii' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 254 'TestAdyenConfigById' test.out

#- 255 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'VxflX5Um' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "gIZdP2hC", "privateKey": "GfwGPwxw", "publicKey": "QLAnwTxL", "returnUrl": "pHmX3wn9"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateAliPayConfig' test.out

#- 256 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'tXZpLKkt' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 256 'TestAliPayConfigById' test.out

#- 257 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Vd6X1ZEt' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "5coTM1hE", "secretKey": "QcS9X2oI"}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateCheckoutConfig' test.out

#- 258 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'uf2kpmAj' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 258 'TestCheckoutConfigById' test.out

#- 259 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'dPife5hK' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "3hI2p4ZP", "clientSecret": "WYRBr902", "returnUrl": "E12yTbkC", "webHookId": "xODhGIx7"}' \
    > test.out 2>&1
eval_tap $? 259 'UpdatePayPalConfig' test.out

#- 260 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'dbdeXNOk' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 260 'TestPayPalConfigById' test.out

#- 261 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'mzd3hCRb' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["5ycJvVOn", "xywPqgKU", "F4yN7CHB"], "publishableKey": "y0lY1MFu", "secretKey": "Vc4mM46H", "webhookSecret": "ERpTEkhL"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateStripeConfig' test.out

#- 262 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'edlRwiUv' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 262 'TestStripeConfigById' test.out

#- 263 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '5czeFAgn' \
    --validate 'false' \
    --body '{"appId": "xHDLeP5Y", "key": "1ThvPmCh", "mchid": "20hFl1cd", "returnUrl": "1EKhgHLk"}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateWxPayConfig' test.out

#- 264 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'iAfaVQ4a' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 264 'UpdateWxPayConfigCert' test.out

#- 265 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'tSPhDHAQ' \
    > test.out 2>&1
eval_tap $? 265 'TestWxPayConfigById' test.out

#- 266 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '2lWZJMDA' \
    --validate 'true' \
    --body '{"apiKey": "vbIUXQ8u", "flowCompletionUrl": "1mbBe7Nz", "merchantId": 2, "projectId": 60, "projectSecretKey": "Khs3FwaY"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateXsollaConfig' test.out

#- 267 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'euIwaMKI' \
    > test.out 2>&1
eval_tap $? 267 'TestXsollaConfigById' test.out

#- 268 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '6XN4SR4X' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaUIConfig' test.out

#- 269 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '9' \
    --namespace 'DaQ8K71p' \
    --offset '2' \
    --region 'VVTjbBlO' \
    > test.out 2>&1
eval_tap $? 269 'QueryPaymentProviderConfig' test.out

#- 270 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "zDFo8q1s", "region": "OTuEBSXI", "sandboxTaxJarApiToken": "yLNOVxg1", "specials": ["ADYEN", "WXPAY", "PAYPAL"], "taxJarApiToken": "HKqkHhdj", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 270 'CreatePaymentProviderConfig' test.out

#- 271 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 271 'GetAggregatePaymentProviders' test.out

#- 272 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'FV5L0Vjn' \
    --region 'UmiIUCmx' \
    > test.out 2>&1
eval_tap $? 272 'DebugMatchedPaymentProviderConfig' test.out

#- 273 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 273 'GetSpecialPaymentProviders' test.out

#- 274 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'WYF9jid5' \
    --body '{"aggregate": "ADYEN", "namespace": "WlUOhdJF", "region": "NUPneuyt", "sandboxTaxJarApiToken": "lcnr1kB9", "specials": ["ADYEN", "WXPAY", "ADYEN"], "taxJarApiToken": "FQl40wnW", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 274 'UpdatePaymentProviderConfig' test.out

#- 275 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'N8iYArtL' \
    > test.out 2>&1
eval_tap $? 275 'DeletePaymentProviderConfig' test.out

#- 276 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 276 'GetPaymentTaxConfig' test.out

#- 277 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "1283KMUO", "taxJarApiToken": "FKsAB0p6", "taxJarEnabled": false, "taxJarProductCodesMapping": {"0EOYgwoT": "mbsUacgh", "9Jvq8bSO": "bXxADaLc", "iyWoqR2E": "pZVycIfw"}}' \
    > test.out 2>&1
eval_tap $? 277 'UpdatePaymentTaxConfig' test.out

#- 278 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'kAmfZ2nR' \
    --end 'aEo1CSR0' \
    --start 'RshjBc5i' \
    > test.out 2>&1
eval_tap $? 278 'SyncPaymentOrders' test.out

#- 279 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'SsOPL5DL' \
    --storeId 'SPE6HCK5' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetRootCategories' test.out

#- 280 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'og99jZ4i' \
    --storeId '9G62Elq2' \
    > test.out 2>&1
eval_tap $? 280 'DownloadCategories' test.out

#- 281 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'bRffJ7m9' \
    --namespace $AB_NAMESPACE \
    --language 'MviRZ85e' \
    --storeId 'KNP3Nti4' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetCategory' test.out

#- 282 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Rc0IlWZg' \
    --namespace $AB_NAMESPACE \
    --language 'zdpB1zRd' \
    --storeId 'QUnN4VDt' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetChildCategories' test.out

#- 283 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '8lOMvio5' \
    --namespace $AB_NAMESPACE \
    --language 'ire5DCDu' \
    --storeId 'u3Zn8TTt' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetDescendantCategories' test.out

#- 284 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 284 'PublicListCurrencies' test.out

#- 285 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'PZ5yzALo' \
    --region 's6UYfLPG' \
    --storeId 'z5qJuAYP' \
    --appId 'jwhIMOmT' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItemByAppId' test.out

#- 286 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'AXO2PmFE' \
    --categoryPath 'PfTsV0nC' \
    --features 'N18WL00s' \
    --itemType 'CODE' \
    --language 'eNlGq5qA' \
    --limit '38' \
    --offset '8' \
    --region 'GtsdpuVE' \
    --sortBy '["createdAt:desc", "updatedAt:desc", "updatedAt:asc"]' \
    --storeId 'dGCbEcL7' \
    --tags 'QzggFbz0' \
    > test.out 2>&1
eval_tap $? 286 'PublicQueryItems' test.out

#- 287 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'XvihSN64' \
    --region 'JM660n9J' \
    --storeId 'pblwVxas' \
    --sku 'u2o7D1GY' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemBySku' test.out

#- 288 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'AQTcSeuy' \
    --region 'mLqKf43g' \
    --storeId '1daLTSQL' \
    --itemIds 'NRrzBOYq' \
    > test.out 2>&1
eval_tap $? 288 'PublicBulkGetItems' test.out

#- 289 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["aFy9SWvZ", "1Gx1mpL6", "wcIxM1m4"]}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateItemPurchaseCondition' test.out

#- 290 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '87' \
    --offset '66' \
    --region 'FzKXTrs6' \
    --storeId 'iiHz5blV' \
    --keyword 'SypsipdM' \
    --language '0QmuD2Fg' \
    > test.out 2>&1
eval_tap $? 290 'PublicSearchItems' test.out

#- 291 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'n7h3StbJ' \
    --namespace $AB_NAMESPACE \
    --language 'WUwGWPA3' \
    --region 'h3lfudg6' \
    --storeId 'pQRwelSd' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetApp' test.out

#- 292 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'tsqRlzNj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'PublicGetItemDynamicData' test.out

#- 293 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '7MgjTGLs' \
    --namespace $AB_NAMESPACE \
    --language 'zH5Mnxdu' \
    --populateBundle 'true' \
    --region 'jJQkA8KC' \
    --storeId 't7fjwPc9' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetItem' test.out

#- 294 GetPaymentCustomization
eval_tap 0 294 'GetPaymentCustomization # SKIP deprecated' test.out

#- 295 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "xL06ss6Q", "paymentProvider": "ALIPAY", "returnUrl": "0RpWHODF", "ui": "fQpn2c4W", "zipCode": "0p6ByQKy"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetPaymentUrl' test.out

#- 296 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'A4hrmvst' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetPaymentMethods' test.out

#- 297 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xMzKjtMb' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUnpaidPaymentOrder' test.out

#- 298 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OH0TeDgd' \
    --paymentProvider 'STRIPE' \
    --zipCode 'GS5QdZlQ' \
    --body '{"token": "xlw1QB4K"}' \
    > test.out 2>&1
eval_tap $? 298 'Pay' test.out

#- 299 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GOdLdy2Y' \
    > test.out 2>&1
eval_tap $? 299 'PublicCheckPaymentOrderPaidStatus' test.out

#- 300 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'UYh5URqw' \
    > test.out 2>&1
eval_tap $? 300 'GetPaymentPublicConfig' test.out

#- 301 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'V0hnxzG2' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetQRCode' test.out

#- 302 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9uvci0Mj' \
    --foreinginvoice 'auPl2WLO' \
    --invoiceId 'kVKaINHE' \
    --payload '6STx5CRW' \
    --redirectResult 'Zf1r9t8A' \
    --resultCode 'hEREXVDJ' \
    --sessionId 'QjpW1c7E' \
    --status 'clg6PSQP' \
    --token 'b9VogOcO' \
    --type 'A2QIYrdL' \
    --userId 'NiNQpfbW' \
    --orderNo 'DO4g6WI3' \
    --paymentOrderNo '3c8X0jLF' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'CujoIKvp' \
    > test.out 2>&1
eval_tap $? 302 'PublicNormalizePaymentReturnUrl' test.out

#- 303 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'qxx8DlNf' \
    --paymentOrderNo 'CXIDtQ9i' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 303 'GetPaymentTaxValue' test.out

#- 304 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'ZcIFWZjY' \
    > test.out 2>&1
eval_tap $? 304 'GetRewardByCode' test.out

#- 305 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '9B4symo9' \
    --limit '47' \
    --offset '55' \
    --sortBy '["namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 305 'QueryRewards1' test.out

#- 306 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'a5gutkTl' \
    > test.out 2>&1
eval_tap $? 306 'GetReward1' test.out

#- 307 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'PublicListStores' test.out

#- 308 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["vASRRENW", "Uj5OLv63", "B4yqbViU"]' \
    --itemIds '["vmMEQdDC", "mqcYzeJl", "vcyVspuG"]' \
    --skus '["ofb3GM6X", "7tcdq0Pb", "l4l9Fc5j"]' \
    > test.out 2>&1
eval_tap $? 308 'PublicExistsAnyMyActiveEntitlement' test.out

#- 309 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'I8M8IvDz' \
    > test.out 2>&1
eval_tap $? 309 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 310 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId '0xRZA4Q5' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 311 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'Mh6hTdjH' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 312 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["wrgJV2St", "oqp6JGjI", "l7pRXW2O"]' \
    --itemIds '["1Lg910GQ", "9K4LmTJf", "G7A6imok"]' \
    --skus '["hPIBxYBk", "k3lFVmTi", "tmF18pUx"]' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetEntitlementOwnershipToken' test.out

#- 313 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'TXbVNGI1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyWallet' test.out

#- 314 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fAsYYu7u' \
    --body '{"epicGamesJwtToken": "5YBRTHW6"}' \
    > test.out 2>&1
eval_tap $? 314 'SyncEpicGameDLC' test.out

#- 315 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'vtpVa6pL' \
    --body '{"serviceLabel": 98}' \
    > test.out 2>&1
eval_tap $? 315 'PublicSyncPsnDlcInventory' test.out

#- 316 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '891sPPtS' \
    --body '{"appId": "tCRW52Z4", "steamId": "HsQabmnC"}' \
    > test.out 2>&1
eval_tap $? 316 'SyncSteamDLC' test.out

#- 317 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ivaDM5pJ' \
    --body '{"xstsToken": "HSynFl1p"}' \
    > test.out 2>&1
eval_tap $? 317 'SyncXboxDLC' test.out

#- 318 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'h9t9kx8g' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'ylWdRjn5' \
    --features '["WqV77aSi", "IVTKRyIk", "NQ4GGAuB"]' \
    --itemId '["0GrwesUb", "2m7Zswe7", "5BUdnQoW"]' \
    --limit '50' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 318 'PublicQueryUserEntitlements' test.out

#- 319 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JKelSbDK' \
    --appId '9OPYFV98' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserAppEntitlementByAppId' test.out

#- 320 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1aFH9ElQ' \
    --limit '36' \
    --offset '78' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlementsByAppType' test.out

#- 321 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2ZGtDUZB' \
    --entitlementClazz 'MEDIA' \
    --itemId 'nOiUrkpn' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserEntitlementByItemId' test.out

#- 322 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oOrWcm4w' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '3ohlf9XZ' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserEntitlementBySku' test.out

#- 323 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '9uPR2l8a' \
    --appIds '["3bmCBqUW", "UnE1bNB7", "0BISgp6T"]' \
    --itemIds '["13wtHmXv", "l6BJA5BN", "nC8wWqPH"]' \
    --skus '["6E9yCtK9", "6l7pfTwD", "RcWl7beY"]' \
    > test.out 2>&1
eval_tap $? 323 'PublicExistsAnyUserActiveEntitlement' test.out

#- 324 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'czpyB3MP' \
    --appId 'KmH3fz32' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 325 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'aBgPIb4i' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'unSYm8Xb' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 326 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZOvObdFP' \
    --ids '["rFwUhnGT", "bolOIiPu", "xbGOLO7x"]' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 327 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'PXaS4UgA' \
    --entitlementClazz 'APP' \
    --sku 'LypBARcE' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 328 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'nhfOIAau' \
    --namespace $AB_NAMESPACE \
    --userId 'vCWFgwpu' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlement' test.out

#- 329 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'Irr8Me6f' \
    --namespace $AB_NAMESPACE \
    --userId 'Syhk74ps' \
    --body '{"options": ["JqKaeWtl", "qJSDGfxo", "YYGp5UvS"], "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 329 'PublicConsumeUserEntitlement' test.out

#- 330 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'wVpzSZ80' \
    --body '{"code": "Fa2iFsQu", "language": "kUj", "region": "M7dharlJ"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicRedeemCode' test.out

#- 331 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5fhynQsN' \
    --body '{"excludeOldTransactions": false, "language": "wNl", "productId": "HS6sO0jw", "receiptData": "DQMEtXWE", "region": "eTuCJil6", "transactionId": "wEnv2VVS"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicFulfillAppleIAPItem' test.out

#- 332 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZVAUelbF' \
    --body '{"epicGamesJwtToken": "tbRxW5ac"}' \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGamesInventory' test.out

#- 333 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'baWhkJZI' \
    --body '{"autoAck": false, "language": "eb_LeKb-633", "orderId": "6Rg65frv", "packageName": "BM3spAKc", "productId": "MUysXqEM", "purchaseTime": 28, "purchaseToken": "cPgDtMda", "region": "hDNLsClO"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillGoogleIAPItem' test.out

#- 334 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'b1YjFiHb' \
    --body '{"currencyCode": "omcLsF0y", "price": 0.6891890702043924, "productId": "kyiCRJZ9", "serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 334 'PublicReconcilePlayStationStore' test.out

#- 335 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '6FWasoYS' \
    --body '{"appId": "zBpFS43W", "language": "OK_416", "region": "OWut07EZ", "stadiaPlayerId": "sbn8zXQF"}' \
    > test.out 2>&1
eval_tap $? 335 'SyncStadiaEntitlement' test.out

#- 336 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gqWh8fix' \
    --body '{"appId": "7ad1iyNQ", "currencyCode": "9WlpUiEu", "language": "KE-dBXf", "price": 0.5522930293367287, "productId": "Y1YqQyHY", "region": "JNaUBpDf", "steamId": "fuoqvG5X"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncSteamInventory' test.out

#- 337 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'W0t4w2yl' \
    --body '{"gameId": "oTS8Ko69", "language": "gSDn-FZPg-121", "region": "BKFJMNLk"}' \
    > test.out 2>&1
eval_tap $? 337 'SyncTwitchDropsEntitlement' test.out

#- 338 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '3FveYApu' \
    --body '{"currencyCode": "djjGE0Sq", "price": 0.36676779377153934, "productId": "qJrzKa8k", "xstsToken": "WX3sbOgR"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncXboxInventory' test.out

#- 339 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nDLdCjkx' \
    --itemId 'F8PNqTXO' \
    --limit '15' \
    --offset '21' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserOrders' test.out

#- 340 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'hFiNWB44' \
    --body '{"currencyCode": "5i3oXa4U", "discountedPrice": 1, "ext": {"583gpihj": {}, "1UVQFF6T": {}, "UbWYg1ql": {}}, "itemId": "dyQwXQUM", "language": "jEz", "price": 51, "quantity": 11, "region": "re2pswFs", "returnUrl": "4f1SbCLY"}' \
    > test.out 2>&1
eval_tap $? 340 'PublicCreateUserOrder' test.out

#- 341 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PoItVJwL' \
    --userId 'gGFfRnZi' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserOrder' test.out

#- 342 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'DaMFr5h7' \
    --userId 'lT9tPytp' \
    > test.out 2>&1
eval_tap $? 342 'PublicCancelUserOrder' test.out

#- 343 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'D8ldHQZw' \
    --userId '9dFAA871' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrderHistories' test.out

#- 344 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Ukq9wWN1' \
    --userId 'gi1po4mK' \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadUserOrderReceipt' test.out

#- 345 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2EvmZuBp' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentAccounts' test.out

#- 346 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'BsGo9m14' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '8TmXS8nC' \
    > test.out 2>&1
eval_tap $? 346 'PublicDeletePaymentAccount' test.out

#- 347 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'U02JlaCi' \
    --chargeStatus 'SETUP' \
    --itemId 'aPsoGEcA' \
    --limit '53' \
    --offset '73' \
    --sku 'sNgDd4dt' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserSubscriptions' test.out

#- 348 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'wDWWGXhU' \
    --body '{"currencyCode": "XizzfbaA", "itemId": "71d6zLHP", "language": "xnV-798", "region": "EM8q1fK9", "returnUrl": "hMNoV5c8", "source": "xSk3FXkV"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicSubscribeSubscription' test.out

#- 349 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'da3HHPDg' \
    --itemId 'Vu4MnCz2' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 350 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZjYwH0fi' \
    --userId 'cSx9aHET' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserSubscription' test.out

#- 351 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fgEEt9UM' \
    --userId 'gi5WNjKU' \
    > test.out 2>&1
eval_tap $? 351 'PublicChangeSubscriptionBillingAccount' test.out

#- 352 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '78xJa30w' \
    --userId 'LHquck64' \
    --body '{"immediate": true, "reason": "BpGlghg8"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicCancelSubscription' test.out

#- 353 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'schBrOys' \
    --userId 'ChwMzF2k' \
    --excludeFree 'true' \
    --limit '79' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserSubscriptionBillingHistories' test.out

#- 354 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'BNwzqBxQ' \
    --namespace $AB_NAMESPACE \
    --userId '79N9LGdR' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetWallet' test.out

#- 355 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'yrIFcXf8' \
    --namespace $AB_NAMESPACE \
    --userId 'bGfF0Hh4' \
    --limit '94' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 355 'PublicListUserWalletTransactions' test.out

#- 356 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'vcIUYzni' \
    --baseAppId '3SHPDlQA' \
    --categoryPath '5Haa0CCY' \
    --features 'fcTXtWoq' \
    --itemStatus 'INACTIVE' \
    --itemType 'APP' \
    --limit '47' \
    --offset '85' \
    --region 'X0XHwu0Y' \
    --sortBy 'FPBSbZsA' \
    --storeId 'gFpsA9vA' \
    --tags 'UiNgM54s' \
    --targetNamespace 'aZfeQkri' \
    > test.out 2>&1
eval_tap $? 356 'QueryItems1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE