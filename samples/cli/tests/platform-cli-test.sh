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
echo "1..346"

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
    --body '{"context": {"item": {"appId": "xo6grj4x", "appType": "DEMO", "baseAppId": "riJfHiun", "boothName": "c6HQb2m1", "boundItemIds": ["7GsXB4fr", "HsshMySA", "smDZ0V95"], "categoryPath": "PrFiC6e9", "clazz": "HlWm7yj9", "createdAt": "1983-01-13T00:00:00Z", "description": "cMHE9KlA", "displayOrder": 36, "entitlementType": "CONSUMABLE", "ext": {"hrWI5pZ3": {}, "GAtYNCsl": {}, "gzeUyLmZ": {}}, "features": ["zoko2eim", "9jug8UoP", "hWjHIZes"], "images": [{"as": "P1gvxTft", "caption": "m9VLDKjE", "height": 48, "imageUrl": "s9f2e7t3", "smallImageUrl": "0RoMw1Gv", "width": 96}, {"as": "ClouZNu3", "caption": "HB8BlHlZ", "height": 0, "imageUrl": "1sJGhfxw", "smallImageUrl": "J9YIefoj", "width": 43}, {"as": "mE2R0t2D", "caption": "AxCRzYxj", "height": 45, "imageUrl": "2wYhLtqb", "smallImageUrl": "LEWUrAEk", "width": 13}], "itemId": "BKj1JDQc", "itemIds": ["EewEVvV6", "P3GZaF5f", "D4F0if49"], "itemQty": {"54sYJ9yz": 70, "RHW0J9DX": 86, "0EnDbDSr": 1}, "itemType": "INGAMEITEM", "language": "K1JW8OoU", "listable": true, "localExt": {"fUu4qi09": {}, "zRabxjOY": {}, "8pNQx7o3": {}}, "longDescription": "UtqwelEA", "maxCount": 61, "maxCountPerUser": 95, "name": "ibq8LneZ", "namespace": "7tlSTVEm", "optionBoxConfig": {"boxItems": [{"count": 59, "itemId": "ooo07P7F", "itemSku": "hMTRSuSD"}, {"count": 43, "itemId": "8NkFiiuU", "itemSku": "GhxDzU90"}, {"count": 24, "itemId": "atLMCrJb", "itemSku": "BcI50P24"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 29, "comparison": "isLessThan", "name": "T6vo5rPl", "predicateType": "EntitlementPredicate", "value": "WP8GWgZ3", "values": ["vmYLOXSW", "S6DQjRQo", "rdK84PCb"]}, {"anyOf": 5, "comparison": "isGreaterThan", "name": "HAOAoP2t", "predicateType": "SeasonTierPredicate", "value": "o5hjHmlS", "values": ["b8R9JLOb", "sVNWAS2A", "35KOExQ9"]}, {"anyOf": 78, "comparison": "excludes", "name": "rMhGGTo0", "predicateType": "SeasonTierPredicate", "value": "A26goAJA", "values": ["DGeJYDBU", "RC97DxEA", "Pvjiu2aX"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "isLessThan", "name": "dHz3Sxyc", "predicateType": "SeasonTierPredicate", "value": "F5pQJdW3", "values": ["B1orLDwR", "Hk0TrB5i", "arirGGnZ"]}, {"anyOf": 32, "comparison": "excludes", "name": "U2SBje9J", "predicateType": "SeasonPassPredicate", "value": "biMLiw8h", "values": ["MunFwAIs", "KBdbOQvF", "dFDdSbSh"]}, {"anyOf": 41, "comparison": "isGreaterThan", "name": "F4NLYgiq", "predicateType": "SeasonTierPredicate", "value": "PlHZmaH3", "values": ["XaTgDw1L", "0RMUVsfF", "QeIT2kaA"]}]}, {"operator": "and", "predicates": [{"anyOf": 63, "comparison": "isNot", "name": "3XEszAAP", "predicateType": "EntitlementPredicate", "value": "w7u75faW", "values": ["QZUuS841", "pewN0MKo", "5ZXIfJm1"]}, {"anyOf": 56, "comparison": "isGreaterThan", "name": "m0GHhCMJ", "predicateType": "EntitlementPredicate", "value": "0XI37nd6", "values": ["AEGI9ot0", "nWJe2z2o", "EAcqQL2z"]}, {"anyOf": 26, "comparison": "includes", "name": "9zJJVqNa", "predicateType": "SeasonPassPredicate", "value": "ePZsLyW6", "values": ["zuZxpFnj", "PmcBns6M", "OXgcxzfS"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 37, "fixedTrialCycles": 94, "graceDays": 36}, "region": "LpXlBvG9", "regionData": [{"currencyCode": "Uzfd4w1T", "currencyNamespace": "H8Zr2ehA", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1981-10-04T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1981-10-26T00:00:00Z", "discountedPrice": 62, "expireAt": "1992-06-16T00:00:00Z", "price": 95, "purchaseAt": "1988-02-23T00:00:00Z", "trialPrice": 84}, {"currencyCode": "R8HfdFek", "currencyNamespace": "MHDyzDkY", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1974-12-02T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1972-04-11T00:00:00Z", "discountedPrice": 67, "expireAt": "1988-08-09T00:00:00Z", "price": 64, "purchaseAt": "1986-08-18T00:00:00Z", "trialPrice": 100}, {"currencyCode": "XMTpcpH4", "currencyNamespace": "jBiXAbK8", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1975-02-21T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1972-05-19T00:00:00Z", "discountedPrice": 28, "expireAt": "1982-12-20T00:00:00Z", "price": 32, "purchaseAt": "1980-01-06T00:00:00Z", "trialPrice": 39}], "seasonType": "TIER", "sku": "fZdTXtdw", "stackable": true, "status": "ACTIVE", "tags": ["fpkW0UsQ", "VmTXfSVi", "wPFwPG4W"], "targetCurrencyCode": "CMWdQHIo", "targetItemId": "pHzWewkN", "targetNamespace": "z75UlYkk", "thumbnailUrl": "GLKMzgRF", "title": "3kJykKPk", "updatedAt": "1998-09-25T00:00:00Z", "useCount": 0}, "namespace": "vN6o0y8N", "order": {"currency": {"currencyCode": "sZ6sfkXp", "currencySymbol": "ChmBAKRW", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "jUkTQohc"}, "ext": {"Dz0jjvj4": {}, "HRvmhbwb": {}, "HWqYgKqy": {}}, "free": true}, "source": "PROMOTION"}, "script": "MEvzQdpd", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'MtVusPpH' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --body '{"grantDays": "uzv67jUa"}' \
    --id 'zTsKTRBH' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'mR8OWhfx' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --body '{"grantDays": "YPeKM2yW"}' \
    --id 'BMhpsjqL' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace 'xppUHv8y' \
    --limit '80' \
    --name 'LUkz0iZl' \
    --offset '63' \
    --tag 'BZA1iItt' \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --body '{"description": "m7AuskZC", "items": [{"extraSubscriptionDays": 28, "itemId": "vVDeT5RZ", "itemName": "4FAOvjec", "quantity": 79}, {"extraSubscriptionDays": 68, "itemId": "8s7qKAqm", "itemName": "qE3jqLsp", "quantity": 89}, {"extraSubscriptionDays": 78, "itemId": "fCY1iHiH", "itemName": "scHROXdk", "quantity": 77}], "maxRedeemCountPerCampaignPerUser": 94, "maxRedeemCountPerCode": 57, "maxRedeemCountPerCodePerUser": 41, "maxSaleCount": 41, "name": "iccwt6Hu", "redeemEnd": "1991-11-15T00:00:00Z", "redeemStart": "1988-09-04T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["dgiiqADr", "DhXaBXBE", "zEEJhakm"], "type": "REDEMPTION"}' \
    --namespace 'shUP4WlE' \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'NQtc6TW5' \
    --namespace 'FV5Ja2XU' \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --body '{"description": "PpArXiFc", "items": [{"extraSubscriptionDays": 23, "itemId": "UeSITPFW", "itemName": "0Ub8Zvrp", "quantity": 44}, {"extraSubscriptionDays": 98, "itemId": "vi4I8ZK5", "itemName": "wHFJf58S", "quantity": 67}, {"extraSubscriptionDays": 36, "itemId": "q1kIF3Dr", "itemName": "EqX9JHhB", "quantity": 34}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 89, "maxRedeemCountPerCodePerUser": 78, "maxSaleCount": 81, "name": "Qm2LnVmx", "redeemEnd": "1989-09-21T00:00:00Z", "redeemStart": "1980-07-24T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["OiRKwZhM", "7DGCcX2X", "Ykp7kluB"]}' \
    --campaignId 'TzCqkjGi' \
    --namespace 'fw3i9GHG' \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ngt5AkPy' \
    --namespace 'YRHgR2BA' \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace 'PseJTgyk' \
    --storeId 'n75J16AA' \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --body '{"categoryPath": "YXKUspBW", "localizationDisplayNames": {"Qk5JpWxp": "JBDDZ7Ss", "DydSejEi": "HQxEnsKO", "D7W7afyM": "DJmnt0Zp"}}' \
    --namespace 'VhzQbxmw' \
    --storeId '3hu6GbWu' \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace 'vxkiRcGY' \
    --storeId 'Kf19Zth5' \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'l5B8dBob' \
    --namespace 'JhVW61sG' \
    --storeId 'FlQnraRJ' \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --body '{"localizationDisplayNames": {"kaOED6zU": "uC7sc8DM", "7IlK1K2k": "xqm0XTv0", "hucAjPhd": "CXXI0SaQ"}}' \
    --categoryPath 'PV3Z683G' \
    --namespace 'fXoOmzWL' \
    --storeId 'WjrHUb9s' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Dc6Y8uhq' \
    --namespace 'hZttBjeX' \
    --storeId '96UuJ1TO' \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'k20MSHUK' \
    --namespace 'mzKS6yGY' \
    --storeId 'lsivNU3E' \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'DWKhTo3D' \
    --namespace 'XKvBnbWS' \
    --storeId 'xMV9Z2wv' \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'AQc7q9un' \
    --namespace 'B9jbnmKc' \
    --activeOnly 'true' \
    --batchNo '11' \
    --code 'OcycoYqc' \
    --limit '11' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --body '{"quantity": 69}' \
    --campaignId 'bYRJ2CnE' \
    --namespace '1xY3Mn7I' \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
samples/cli/sample-apps Platform download \
    --campaignId 'SWroirCh' \
    --namespace 'gpU5LPcy' \
    --batchNo '26' \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'wgS5UJaQ' \
    --namespace 'njgs7uDK' \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'qoxUoEjE' \
    --namespace '95vwVXYW' \
    --batchNo '17' \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'KSBtZrBL' \
    --namespace 'sGYpQEYc' \
    --code 'gt9Ga0vk' \
    --limit '27' \
    --offset '64' \
    --userId 'qejeBwxe' \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'lXqI76o9' \
    --namespace 'ZSIP8cXR' \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'MXQ2yxhA' \
    --namespace 'mnanJ4dl' \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'qjUzb2Qq' \
    --namespace 'RKXssmkm' \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace 'toiKpy1D' \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --body '{"currencyCode": "lwJYUHHA", "currencySymbol": "0xwBAsAR", "currencyType": "VIRTUAL", "decimals": 58, "localizationDescriptions": {"L6xynbrg": "ovXwxgeJ", "Wucp6Gu7": "LzJq5Eaw", "azQNQa1u": "MQ6KkuRs"}}' \
    --namespace 'BlPvs2cG' \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --body '{"localizationDescriptions": {"uwY2Ahre": "f9LWnMXY", "IbW6UoBY": "56vts97W", "7AAiosOb": "9f9GU25r"}}' \
    --currencyCode '7txVc2Mg' \
    --namespace 'xNlgsC22' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'QyUH2uca' \
    --namespace 'PDSIgaoG' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'VULS7H7h' \
    --namespace 'bRlqtUXo' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'tVcYra0k' \
    --namespace 'fw0v3Bg2' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace 'RiadJ46e' \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --body '{"data": [{"id": "rqpUXHDZ", "rewards": [{"currency": {"currencyCode": "93qJeEye", "namespace": "Iqn377rW"}, "item": {"itemId": "xa3362wY", "itemSku": "fIOHAaVO", "itemType": "xqOp9vNu"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "7IqE4jzq", "namespace": "2DESWx3A"}, "item": {"itemId": "bPV9aUJJ", "itemSku": "P0OwBu9T", "itemType": "JmIImp3v"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "PXp6GoJR", "namespace": "FXDvxfMH"}, "item": {"itemId": "RVHiBkJw", "itemSku": "CmQsTe1N", "itemType": "aOxFMQS7"}, "quantity": 23, "type": "ITEM"}]}, {"id": "dbzP0cyP", "rewards": [{"currency": {"currencyCode": "T1kw83is", "namespace": "m027aX2j"}, "item": {"itemId": "G1McrHvw", "itemSku": "psfE11DJ", "itemType": "P3KTCBdP"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "baQRiEej", "namespace": "eJZZLY50"}, "item": {"itemId": "gLwCkEH9", "itemSku": "0ka0Pxr1", "itemType": "L4zMFJsh"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "CmFS8VGh", "namespace": "w7hQSLzI"}, "item": {"itemId": "3GeX40W5", "itemSku": "oYpUlmWp", "itemType": "xa9w0TZt"}, "quantity": 46, "type": "CURRENCY"}]}, {"id": "b0Sk7stq", "rewards": [{"currency": {"currencyCode": "XQzjY5eQ", "namespace": "glhWwLV6"}, "item": {"itemId": "DgowPKYe", "itemSku": "gJHMrkqA", "itemType": "p06H7yEJ"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "nZjUe030", "namespace": "DatkneHw"}, "item": {"itemId": "2PpxNRO5", "itemSku": "OkT9AYMU", "itemType": "GAAOABYj"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "1P5szWgA", "namespace": "hxIFCePI"}, "item": {"itemId": "8AbKnHrI", "itemSku": "SE42K18a", "itemType": "5NLbOVwe"}, "quantity": 52, "type": "CURRENCY"}]}]}' \
    --namespace '59XJLdSH' \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace 'G0rceOcx' \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace 'OIFk7Ms1' \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"bHW7dwpd": "CNLQYrm2", "k2ELiTpi": "LzH8Q8ky", "xMYxBxmY": "uv3Pjbav"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"7HskYgtM": "qSROXNd8", "dF2kPeTw": "yFkMWfdM", "eznXZEyq": "nWHRgVHf"}}, {"platform": "PSN", "platformDlcIdMap": {"S9IyENVV": "AYoklKqH", "8PMulYua": "m0XceBeB", "LVFetw01": "8frijDh3"}}]}' \
    --namespace '3qubkVNL' \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace 'txnUOE11' \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace 'ANO4kPJh' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'vatUtI1H' \
    --itemId '["txisD1T9", "klllKtnm", "RRsC9Pau"]' \
    --limit '75' \
    --offset '29' \
    --userId 'tk6kIxji' \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'D2HLQnFW' \
    --namespace 'hNFiQV4V' \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace 'jKugFf5P' \
    --limit '32' \
    --offset '37' \
    --status 'FAIL' \
    --userId '3Lfyy9TH' \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace 'o7DDJmys' \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --body '{"bundleId": "ri5FRUsy", "password": "Dug81382"}' \
    --namespace 'kY4PKBL0' \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace 'djRDQfms' \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace 'fP4cfVb6' \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --body '{"sandboxId": "lOp4gdIQ"}' \
    --namespace '2FKgYUPJ' \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace 'C8ZlMxdX' \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace 'aTAQILf5' \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --body '{"applicationName": "5xjZx8wY", "serviceAccountId": "aGbSC51q"}' \
    --namespace '8VslaFOL' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace 'jrkfRL3J' \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --file 'tmp.dat' \
    --namespace '5mRjjulM' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace 'nqMzt1RU' \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --body '{"data": [{"itemIdentity": "ljAQumoB", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"gAujAeOs": "o7ZixZAh", "JiWlIygM": "fNZodNCo", "Tc4CzuVA": "pnaiauSS"}}, {"itemIdentity": "gtjppMwa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6RFnjvF3": "bVIC2tE2", "2ysJX2z4": "PWRmtC3s", "3gkN0iVU": "GExTmPFT"}}, {"itemIdentity": "cpDbW4Vu", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7qPu5dGV": "0ZifjWrw", "dRAMpUNk": "dDjIogIM", "qBBIaiHn": "CkvZ8sGp"}}]}' \
    --namespace 'zlW7ZazP' \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace '8N9D7mQu' \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace 'XRaSWf0N' \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --body '{"environment": "RRXqvcNV"}' \
    --namespace 'Y7hnpEtH' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace 'PQJ3pMbA' \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
samples/cli/sample-apps Platform getStadiaIAPConfig \
    --namespace 'g6MVmwNH' \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
samples/cli/sample-apps Platform deleteStadiaIAPConfig \
    --namespace '42t08WUV' \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
samples/cli/sample-apps Platform updateStadiaJsonConfigFile \
    --file 'tmp.dat' \
    --namespace '7bIWlNqO' \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace 's081LESs' \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --body '{"appId": "X3aKEbKC", "publisherAuthenticationKey": "a6mkKqTt"}' \
    --namespace 'UUIOh20H' \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace '5oy1sDwL' \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace 'vnFayGlL' \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --body '{"clientId": "AtRNGma0", "clientSecret": "KWTqNWYa", "organizationId": "ZeGQnOXs"}' \
    --namespace 'jcC6uOxW' \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'lN5ECtyr' \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace 'SzUJRAdu' \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --body '{"relyingPartyCert": "Z7NTzvVh"}' \
    --namespace '4sbCeL89' \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace '8h9x0rqD' \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --file 'tmp.dat' \
    --password 'v3lLO8PJ' \
    --namespace 'uUUIIb6l' \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --body '{"categoryPath": "iIGK5B1M", "targetItemId": "3mLoVSvk", "targetNamespace": "EPUxGyvo"}' \
    --namespace 'WeBnT0Zl' \
    --storeId 'UQt3vrau' \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
samples/cli/sample-apps Platform createItem \
    --body '{"appId": "TNC76XER", "appType": "SOFTWARE", "baseAppId": "0XhtMKRu", "boothName": "DNV223WO", "categoryPath": "JQ3A7vLR", "clazz": "LDjvCpJf", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"sPeoiKkn": {}, "xmOlYq4p": {}, "zwelR3bF": {}}, "features": ["LTdimNks", "Jo8Tdji2", "V5E74dyF"], "images": [{"as": "RIUxAhrp", "caption": "V7m6xY2I", "height": 49, "imageUrl": "6EsQ7VNv", "smallImageUrl": "tnloqCox", "width": 20}, {"as": "gjPQQ7AK", "caption": "5aOByElV", "height": 26, "imageUrl": "CbvUKR12", "smallImageUrl": "oeVTVaMy", "width": 41}, {"as": "BWdahKIz", "caption": "fWuhk0zn", "height": 19, "imageUrl": "cJ7aDwXe", "smallImageUrl": "Mmk2Cujk", "width": 26}], "itemIds": ["gdYTIs4P", "xEZnkhXq", "ktrdn1X0"], "itemQty": {"8WVehXG6": 53, "7mIgYSd3": 75, "R1ZBBuU1": 92}, "itemType": "COINS", "listable": false, "localizations": {"mTUai9S1": {"description": "eBTpLwUn", "localExt": {"2eCFPcTl": {}, "0cHM6Yi3": {}, "M8SsYzpf": {}}, "longDescription": "7x2wh7DF", "title": "6oFOUEcd"}, "dZhOJoaP": {"description": "FQYzA7sb", "localExt": {"aFnAAC45": {}, "Aty6rlSP": {}, "yOPDRv86": {}}, "longDescription": "nUeQe7K9", "title": "xgSo1gZ0"}, "CG3b3YGw": {"description": "rma3nvXp", "localExt": {"ovasL7fH": {}, "R1HQjyyf": {}, "Q4qz0dHH": {}}, "longDescription": "w9zMvB9I", "title": "koSP2ou3"}}, "maxCount": 20, "maxCountPerUser": 11, "name": "y2Ff7nG1", "optionBoxConfig": {"boxItems": [{"count": 22, "itemId": "rci0U9s4", "itemSku": "bwczcyS1"}, {"count": 64, "itemId": "rVwdr8Xh", "itemSku": "rhoRtt29"}, {"count": 63, "itemId": "jUPLUbnM", "itemSku": "rzNDYOti"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 33, "fixedTrialCycles": 64, "graceDays": 99}, "regionData": {"1tq72bK2": [{"currencyCode": "xtVswn02", "currencyNamespace": "K73nEB7Z", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1998-04-14T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1987-08-05T00:00:00Z", "discountedPrice": 18, "expireAt": "1975-05-01T00:00:00Z", "price": 28, "purchaseAt": "1994-10-12T00:00:00Z", "trialPrice": 98}, {"currencyCode": "I5odlgMU", "currencyNamespace": "SVCFGz7t", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1982-01-27T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1983-12-19T00:00:00Z", "discountedPrice": 34, "expireAt": "1991-08-18T00:00:00Z", "price": 51, "purchaseAt": "1999-11-03T00:00:00Z", "trialPrice": 80}, {"currencyCode": "1OqEUFV7", "currencyNamespace": "M5dRBNA1", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1973-01-11T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1981-01-06T00:00:00Z", "discountedPrice": 79, "expireAt": "1982-12-24T00:00:00Z", "price": 76, "purchaseAt": "1988-09-01T00:00:00Z", "trialPrice": 0}], "CMPwNrcx": [{"currencyCode": "I6f0MlDw", "currencyNamespace": "okZwdKRc", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1990-06-02T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1978-01-20T00:00:00Z", "discountedPrice": 29, "expireAt": "1976-10-16T00:00:00Z", "price": 27, "purchaseAt": "1981-10-09T00:00:00Z", "trialPrice": 8}, {"currencyCode": "iOwetRYC", "currencyNamespace": "kUFkONZe", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1978-12-30T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1995-10-05T00:00:00Z", "discountedPrice": 2, "expireAt": "1995-07-18T00:00:00Z", "price": 93, "purchaseAt": "1993-09-26T00:00:00Z", "trialPrice": 6}, {"currencyCode": "ibUzkgVV", "currencyNamespace": "H5spImRT", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1999-07-30T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1991-07-02T00:00:00Z", "discountedPrice": 21, "expireAt": "1998-05-12T00:00:00Z", "price": 52, "purchaseAt": "1998-04-09T00:00:00Z", "trialPrice": 77}], "h7htOAKW": [{"currencyCode": "61tGvh0N", "currencyNamespace": "Kmo4b9HI", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1992-04-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1982-03-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1979-10-31T00:00:00Z", "price": 79, "purchaseAt": "1995-11-06T00:00:00Z", "trialPrice": 6}, {"currencyCode": "MbIULSK6", "currencyNamespace": "H4DUQGNE", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1978-05-25T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1971-08-07T00:00:00Z", "discountedPrice": 39, "expireAt": "1992-03-11T00:00:00Z", "price": 78, "purchaseAt": "1987-07-06T00:00:00Z", "trialPrice": 62}, {"currencyCode": "cRHx580k", "currencyNamespace": "y7wS1Xuk", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1979-06-25T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1984-06-26T00:00:00Z", "discountedPrice": 20, "expireAt": "1990-03-23T00:00:00Z", "price": 76, "purchaseAt": "1998-04-20T00:00:00Z", "trialPrice": 38}]}, "seasonType": "PASS", "sku": "dhq1p0lh", "stackable": false, "status": "ACTIVE", "tags": ["oX1AWVGB", "zqQiLLP3", "5pKdApe0"], "targetCurrencyCode": "wTkckhGd", "targetNamespace": "wsMgua4V", "thumbnailUrl": "8YgXDrkA", "useCount": 31}' \
    --namespace 'xEemSLWG' \
    --storeId 'krr6N600' \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace 'ks6yN4Vd' \
    --activeOnly 'true' \
    --storeId 'lXPtcc7t' \
    --appId 'I4euwRqc' \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace 'aqossIzj' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'M0qs76jR' \
    --baseAppId 'Ifo3degl' \
    --categoryPath 'PxCv2FTw' \
    --features 'hd3FInxL' \
    --itemType 'BUNDLE' \
    --limit '29' \
    --offset '13' \
    --region '8xTXopfh' \
    --sortBy '["createdAt", "name", "updatedAt:desc"]' \
    --storeId 's4rWKc0t' \
    --tags 'h8OHfkI1' \
    --targetNamespace 'gOqE7nmD' \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace 'Lhu65cfH' \
    --activeOnly 'false' \
    --features '["MvVQtbK9", "upoqbA43", "6Y6BdUt0"]' \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace 'j0vVf9oI' \
    --activeOnly 'true' \
    --storeId 'p1CoPuIz' \
    --sku 'bqFYDm0N' \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace 'fEKkr1gK' \
    --activeOnly 'true' \
    --language '8wluRRko' \
    --populateBundle 'false' \
    --region 'UefKgWuy' \
    --storeId 'Oz258Tff' \
    --sku 'o9c2Hcf0' \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace '9cgYHNZd' \
    --activeOnly 'true' \
    --storeId '0aRcWjux' \
    --sku 'JlXEwYpo' \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace '5gxZ8EU4' \
    --sku '["cG3OCarV", "s27geIji", "NLFDdLhl"]' \
    --storeId 'WvVEP7GJ' \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace '2i7btYhn' \
    --activeOnly 'false' \
    --language '0Jxy3K0h' \
    --region 'vXamCS6B' \
    --storeId 'lIgYoHas' \
    --itemIds '76N8Z0l6' \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace '1zwjTMOC' \
    > test.out 2>&1
eval_tap $? 84 'GetAvailablePredicateTypes' test.out

#- 85 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --body '{"itemIds": ["5NSSe6dq", "EPrlrL01", "owCfd0Az"]}' \
    --namespace 'G53Cph1R' \
    --userId 'xPgcmo3y' \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace '0xN2oZI8' \
    --activeOnly 'false' \
    --itemType 'MEDIA' \
    --limit '9' \
    --offset '16' \
    --storeId 'NAbEyFMD' \
    --keyword 'MXm59iLq' \
    --language 'ZfztkJfd' \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace 'Km1zvLgs' \
    --activeOnly 'false' \
    --limit '87' \
    --offset '47' \
    --sortBy '["createdAt"]' \
    --storeId 'Y2i2yHwT' \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'oUJcUMUV' \
    --namespace 'uRoK2d28' \
    --activeOnly 'false' \
    --storeId 'bQE9St65' \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --body '{"appId": "7rIqHxcy", "appType": "SOFTWARE", "baseAppId": "8qJEeJdQ", "boothName": "JEcUoycp", "categoryPath": "1yi6NjbV", "clazz": "qo0Ii2X4", "displayOrder": 15, "entitlementType": "CONSUMABLE", "ext": {"BAVpwUqT": {}, "M7GdOu8o": {}, "1LA8opRF": {}}, "features": ["bcmhb40T", "xpY05BIX", "wdjVsM8w"], "images": [{"as": "BURsS7ID", "caption": "vAhN2RoL", "height": 48, "imageUrl": "yoCnaXV3", "smallImageUrl": "tHaZfXTr", "width": 41}, {"as": "z3i2Hbzq", "caption": "IUZ7gdVH", "height": 80, "imageUrl": "wx7MWsIh", "smallImageUrl": "xqIz5bFr", "width": 59}, {"as": "u4qoX65L", "caption": "dprHD7F8", "height": 30, "imageUrl": "UbEliyvg", "smallImageUrl": "FxNPtehH", "width": 88}], "itemIds": ["mUETEAsd", "6tQqLGVv", "CEBGBkHF"], "itemQty": {"OigCc8YC": 69, "wKb1X28D": 22, "kVYMyuhf": 20}, "itemType": "APP", "listable": true, "localizations": {"fLHyA1EX": {"description": "tZVDH7gD", "localExt": {"eNFACKfP": {}, "AizAUTwE": {}, "PYwkYz5E": {}}, "longDescription": "DTNvOwvn", "title": "8SmYxJe5"}, "SvzAVH3r": {"description": "jFsSMmw9", "localExt": {"sa9pNvzM": {}, "LOA916cZ": {}, "u4vZeKOi": {}}, "longDescription": "Mp6mUHSB", "title": "duqUx0Kx"}, "gar2vb6v": {"description": "HRvNug1k", "localExt": {"FMYqie7v": {}, "J6TRouTK": {}, "heTCRQxF": {}}, "longDescription": "Q62CQsT3", "title": "lR01hXnW"}}, "maxCount": 2, "maxCountPerUser": 94, "name": "iTgvE1Q5", "optionBoxConfig": {"boxItems": [{"count": 86, "itemId": "0NareGyS", "itemSku": "XzgZUIan"}, {"count": 65, "itemId": "9IIjSNVT", "itemSku": "9FVVhdGN"}, {"count": 91, "itemId": "JGakI2tb", "itemSku": "cZCzR6u4"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 100, "fixedTrialCycles": 2, "graceDays": 51}, "regionData": {"eeTLh6BR": [{"currencyCode": "cVurJV1t", "currencyNamespace": "JJgWUTFA", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1985-12-31T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1976-12-27T00:00:00Z", "discountedPrice": 69, "expireAt": "1984-08-21T00:00:00Z", "price": 12, "purchaseAt": "1974-01-23T00:00:00Z", "trialPrice": 62}, {"currencyCode": "tRP9tIaO", "currencyNamespace": "uWBPeOGl", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1975-12-14T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1992-09-10T00:00:00Z", "discountedPrice": 64, "expireAt": "1978-05-22T00:00:00Z", "price": 58, "purchaseAt": "1997-09-21T00:00:00Z", "trialPrice": 64}, {"currencyCode": "rd9pTIpj", "currencyNamespace": "NHotQADx", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1997-10-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1995-11-26T00:00:00Z", "discountedPrice": 72, "expireAt": "1993-02-12T00:00:00Z", "price": 94, "purchaseAt": "1997-02-19T00:00:00Z", "trialPrice": 81}], "G95LG9HC": [{"currencyCode": "KMDZ222T", "currencyNamespace": "RCm51PTA", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1986-11-27T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1996-01-24T00:00:00Z", "discountedPrice": 24, "expireAt": "1990-07-08T00:00:00Z", "price": 22, "purchaseAt": "1988-07-03T00:00:00Z", "trialPrice": 96}, {"currencyCode": "rzopmYUQ", "currencyNamespace": "QfrjvdCb", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1971-02-12T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1984-08-05T00:00:00Z", "discountedPrice": 82, "expireAt": "1992-05-24T00:00:00Z", "price": 74, "purchaseAt": "1987-04-17T00:00:00Z", "trialPrice": 51}, {"currencyCode": "GoUPnZZS", "currencyNamespace": "3Rb0G8yq", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1991-10-04T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1972-11-17T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-08-08T00:00:00Z", "price": 74, "purchaseAt": "1977-05-02T00:00:00Z", "trialPrice": 86}], "TM8enBZA": [{"currencyCode": "ZaGTqWK1", "currencyNamespace": "ldlNt7mr", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1973-11-25T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1989-10-15T00:00:00Z", "discountedPrice": 28, "expireAt": "1976-09-19T00:00:00Z", "price": 59, "purchaseAt": "1998-02-06T00:00:00Z", "trialPrice": 79}, {"currencyCode": "TYU8m8Fh", "currencyNamespace": "5H7RIEbY", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1998-03-01T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1993-08-13T00:00:00Z", "discountedPrice": 74, "expireAt": "1985-11-02T00:00:00Z", "price": 44, "purchaseAt": "1987-11-05T00:00:00Z", "trialPrice": 13}, {"currencyCode": "HKDbhikH", "currencyNamespace": "X6iNhqWs", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1979-04-02T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1974-10-16T00:00:00Z", "discountedPrice": 48, "expireAt": "1982-02-19T00:00:00Z", "price": 80, "purchaseAt": "1973-06-16T00:00:00Z", "trialPrice": 9}]}, "seasonType": "TIER", "sku": "LK9qQVuC", "stackable": true, "status": "INACTIVE", "tags": ["kvbGjT9b", "2AauqqBQ", "fX4K5LAM"], "targetCurrencyCode": "C5Dd0KBZ", "targetNamespace": "dEgtulP7", "thumbnailUrl": "TWYJ9mne", "useCount": 82}' \
    --itemId 'i44EHAkn' \
    --namespace 'hFeULxnk' \
    --storeId '9FrbaKme' \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'uD4oYlrg' \
    --namespace 'TgWl7A5n' \
    --storeId '3aG0ynbv' \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --body '{"count": 75, "orderNo": "JJoVQF0V"}' \
    --itemId 'Jg7g9jDL' \
    --namespace 'mPLzakcP' \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'tkNleqUR' \
    --namespace 'QoltkmPN' \
    --activeOnly 'false' \
    --storeId 'c9wZ4YEU' \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --body '{"carousel": [{"alt": "veyZ5yjC", "previewUrl": "KaYgqJe4", "thumbnailUrl": "59pVRfiF", "type": "video", "url": "BJbvR5fo", "videoSource": "vimeo"}, {"alt": "YW8QWXw3", "previewUrl": "0t1TqZGF", "thumbnailUrl": "5FCLj3IW", "type": "video", "url": "Vigp0zVW", "videoSource": "generic"}, {"alt": "bQP2qbyu", "previewUrl": "hEa2hyLq", "thumbnailUrl": "wr0Ne2Qn", "type": "image", "url": "LO6slkbK", "videoSource": "vimeo"}], "developer": "sJn1vCGa", "forumUrl": "qxmnwzbM", "genres": ["Casual", "Simulation", "Strategy"], "localizations": {"ArYcI1QM": {"announcement": "Upr1ifCg", "slogan": "qXSkreAk"}, "68g6YamS": {"announcement": "mMU7dEu7", "slogan": "8uE6OFse"}, "FZ1v96eR": {"announcement": "nP0W46Ed", "slogan": "Ff3hny6i"}}, "platformRequirements": {"85WXsJxS": [{"additionals": "8tXafC5O", "directXVersion": "WTJNcP3z", "diskSpace": "z39mbRdL", "graphics": "wC8Yoybe", "label": "B1oQxOvi", "osVersion": "MynKrCVJ", "processor": "1Mh4DUPH", "ram": "mTyiJMPy", "soundCard": "PONhAkL9"}, {"additionals": "3Gs5lXsC", "directXVersion": "ZE09keL6", "diskSpace": "SwpfgrlS", "graphics": "QLJnTWdM", "label": "7fdleHgV", "osVersion": "Pjhx9fFl", "processor": "R1k8zJEY", "ram": "6F4bv2KJ", "soundCard": "IlPGlmUv"}, {"additionals": "cvFZ2dHA", "directXVersion": "Mgyi4Iyh", "diskSpace": "SkeKmNmH", "graphics": "ORrLYtSZ", "label": "qz7G67Ti", "osVersion": "rhvuMB42", "processor": "iiiiNTCC", "ram": "KLT7FkGV", "soundCard": "hjHtticx"}], "cGQD3BTe": [{"additionals": "cvjiqHSR", "directXVersion": "OPetguAX", "diskSpace": "rxfHO31E", "graphics": "AeLkcJzM", "label": "SqNsBVcW", "osVersion": "c2tTpvxs", "processor": "FDSIObey", "ram": "lGMMcq5w", "soundCard": "hi0uNwJd"}, {"additionals": "pW4PM1e4", "directXVersion": "KtDFmaUC", "diskSpace": "z1Z298qj", "graphics": "FGZ69yxI", "label": "pQ2Fe3AC", "osVersion": "9Ry34WzT", "processor": "VDmkAaPR", "ram": "eiJDeg42", "soundCard": "DmFC03L1"}, {"additionals": "Dw7jFnNV", "directXVersion": "AZh6GbcY", "diskSpace": "YKZWPKAn", "graphics": "Es0yr7ZJ", "label": "xQzrIaam", "osVersion": "pvvKRZUI", "processor": "KKo0cSUq", "ram": "ppyzHgrG", "soundCard": "Yyj05wJ1"}], "mCKdYKsh": [{"additionals": "Jkmv1VOI", "directXVersion": "pQbgDS5C", "diskSpace": "AU4IL1pg", "graphics": "0znssLko", "label": "weGFLwDa", "osVersion": "RbeSIUSd", "processor": "1qBJmkXe", "ram": "mhT5OH2J", "soundCard": "yXyIjlN7"}, {"additionals": "acnVPZLc", "directXVersion": "pYkduZw2", "diskSpace": "bAlxsOWP", "graphics": "w6pF7qsw", "label": "YiQORz4C", "osVersion": "G9wV1VEU", "processor": "O2NbEjZP", "ram": "OH9hh9kz", "soundCard": "FPYH5PH5"}, {"additionals": "i11FJ2LB", "directXVersion": "Qk5iERgq", "diskSpace": "p5eAgUnJ", "graphics": "TPRe3SfO", "label": "oA6LUKkN", "osVersion": "lhLT8PZb", "processor": "9Z8slQn9", "ram": "HFDl5cAG", "soundCard": "quzwOzM0"}]}, "platforms": ["Android", "Android", "Android"], "players": ["Single", "Multi", "Coop"], "primaryGenre": "Action", "publisher": "ZkNLCWBV", "releaseDate": "1974-09-25T00:00:00Z", "websiteUrl": "dLdzhSGp"}' \
    --itemId 'ziUN5dZN' \
    --namespace 'waDGz5ix' \
    --storeId '6uvpAaX4' \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'KZAcpSv8' \
    --namespace 'jiyaux3p' \
    --storeId 'wGXWMnvD' \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'PS6t8jIZ' \
    --namespace 'Ng9kVeeK' \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Coj4jXSB' \
    --namespace 'HcRE2ewj' \
    --storeId 'vFbJbXsm' \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'QrLaS8RY' \
    --itemId 'cuDGvkdX' \
    --namespace 'IyFKkEnP' \
    --storeId 'GxPMAVxt' \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '1cPmDuyJ' \
    --itemId '31sugp41' \
    --namespace 'JMunA51F' \
    --storeId 'ApT4VYTQ' \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'kAChlX4J' \
    --namespace 'aPwzHqmj' \
    --activeOnly 'false' \
    --language '4cyElXIr' \
    --populateBundle 'true' \
    --region 'siVRS2NW' \
    --storeId 'dmU6hMKp' \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "isLessThanOrEqual", "name": "zDe8PdcH", "predicateType": "SeasonTierPredicate", "value": "i13bFdcl", "values": ["RHUhmSYx", "pEtubfSg", "7d3s4Qyh"]}, {"anyOf": 34, "comparison": "includes", "name": "8E8E6kQs", "predicateType": "SeasonTierPredicate", "value": "VFecztZf", "values": ["SeJ4rfxj", "7wJHiCyx", "q3TGQG1m"]}, {"anyOf": 98, "comparison": "isGreaterThanOrEqual", "name": "BwWvYMyP", "predicateType": "SeasonTierPredicate", "value": "j2qTN0Ea", "values": ["TdDrlw26", "AFT3pzri", "9YS7SvRV"]}]}, {"operator": "and", "predicates": [{"anyOf": 78, "comparison": "includes", "name": "fXOCb38i", "predicateType": "SeasonTierPredicate", "value": "GFKQxpu3", "values": ["xkfV7Aiy", "6zeneljG", "94R9bELy"]}, {"anyOf": 77, "comparison": "isLessThan", "name": "asnIfF88", "predicateType": "SeasonTierPredicate", "value": "DLdKt7nE", "values": ["SAwrj5ZX", "HgTAy4Gq", "DKG36JA2"]}, {"anyOf": 71, "comparison": "isLessThanOrEqual", "name": "dbXawfaw", "predicateType": "SeasonPassPredicate", "value": "ttBvcTsD", "values": ["B52znltx", "hkJYGXFU", "iKHLuZ3Q"]}]}, {"operator": "and", "predicates": [{"anyOf": 94, "comparison": "excludes", "name": "8IelkUW5", "predicateType": "SeasonTierPredicate", "value": "UuQHsUBP", "values": ["XaH8BcaR", "XP9avWJm", "bHXNJXu9"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "zDtZFb0l", "predicateType": "SeasonTierPredicate", "value": "Lyo6zzP2", "values": ["NuUqo13b", "EEq5YFGE", "GGUYEwI4"]}, {"anyOf": 74, "comparison": "isLessThan", "name": "G2NXtNnn", "predicateType": "EntitlementPredicate", "value": "KtZVehPZ", "values": ["FiIyfmWn", "v2nDfEG5", "MmFmI2Tk"]}]}]}}' \
    --itemId 'CzRWsv1L' \
    --namespace 'MQgUzWEi' \
    --storeId 'I3oOAfWU' \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --body '{"orderNo": "tY8G31nv"}' \
    --itemId 'VJ3HjF6K' \
    --namespace 'smBrdLu0' \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace 'felJtCYs' \
    --limit '13' \
    --name 'lpw56piv' \
    --offset '55' \
    --tag 'gEjFC7gj' \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --body '{"description": "Yjhj8yzO", "name": "61OsXdGi", "status": "ACTIVE", "tags": ["Tcd9KRzN", "j2lxGYx7", "B6nR52T3"]}' \
    --namespace '7RWMtMHQ' \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'EZR7aKwL' \
    --namespace '3iFtHFCe' \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --body '{"description": "lxIDofa6", "name": "Wdn87Pkx", "status": "ACTIVE", "tags": ["896o3gMj", "kTXWwfMx", "HAOyFtdi"]}' \
    --keyGroupId 'PHCFO9tD' \
    --namespace 'kHCy9HIk' \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'tGX575dN' \
    --namespace 'sX2qaNoZ' \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Dz1mNNzy' \
    --namespace 'WAHjzClT' \
    --limit '66' \
    --offset '27' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --file 'tmp.dat' \
    --keyGroupId 'x7tyXGuy' \
    --namespace 'qnKvqjHL' \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace 'LTn8Cxzf' \
    --endTime 'PZczvHSg' \
    --limit '2' \
    --offset '85' \
    --orderNos '["vyPMNhvm", "PFf6BNPg", "d2w1NnHf"]' \
    --sortBy 'UVY6BlWm' \
    --startTime '44XtF4ox' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 109 'QueryOrders' test.out

#- 110 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace 'LikHoLMN' \
    > test.out 2>&1
eval_tap $? 110 'GetOrderStatistics' test.out

#- 111 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace 'v3iR64Oa' \
    --orderNo 'Wwnf4PYC' \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --body '{"description": "CCqSwG1C"}' \
    --namespace 'CsPcTHZW' \
    --orderNo 'PgVgFxcD' \
    > test.out 2>&1
eval_tap $? 112 'RefundOrder' test.out

#- 113 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace '2eVbvGlK' \
    > test.out 2>&1
eval_tap $? 113 'GetPaymentCallbackConfig' test.out

#- 114 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --body '{"dryRun": false, "notifyUrl": "sbm3ZEZs", "privateKey": "wQBWOr8p"}' \
    --namespace 'SLgtkHRy' \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace 'Z34mnIQZ' \
    --endDate 'mBsCopJU' \
    --externalId 'Zp2XBEOH' \
    --limit '76' \
    --notificationSource 'ALIPAY' \
    --notificationType 'QHBB98vB' \
    --offset '7' \
    --paymentOrderNo 'XTBeWTob' \
    --startDate 'FYqNCD4d' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace 'opan3KgK' \
    --channel 'INTERNAL' \
    --extTxId 'HHusLsAu' \
    --limit '49' \
    --offset '19' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --body '{"currencyCode": "FZdSgN6F", "currencyNamespace": "DCbipS96", "customParameters": {"4PqiWn7c": {}, "olGSTWd6": {}, "oLujFrcg": {}}, "description": "fvWEULZJ", "extOrderNo": "TPR2QKcm", "extUserId": "h9eReSfi", "itemType": "BUNDLE", "language": "Gb", "metadata": {"XKizAkZF": "qIlFxjbc", "po9vLwmF": "6LRW0AQC", "sshiFvDt": "mukK7cUg"}, "notifyUrl": "U2H4Bpg8", "omitNotification": true, "platform": "GW5WvNy3", "price": 0, "recurringPaymentOrderNo": "SxmqrsCs", "region": "KpOxMUin", "returnUrl": "56BE7Of5", "sandbox": false, "sku": "yDbXBVRh", "subscriptionId": "5s2S2F7D", "targetNamespace": "BRpNgj2R", "targetUserId": "lLn9NNTh", "title": "RyLNxDBv"}' \
    --namespace 'Pmda0v1C' \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'ExZKv7R7' \
    --extTxId 'XiCctpJY' \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace '1VlQ8fi8' \
    --paymentOrderNo '9KMwPbeL' \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --body '{"extTxId": "6gg3YQXj", "paymentMethod": "vv3HYOqM", "paymentProvider": "ADYEN"}' \
    --namespace 'OT1P8xEd' \
    --paymentOrderNo 'fFiiX7Jt' \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --body '{"description": "P3Hd3wBw"}' \
    --namespace 'jYS4m47k' \
    --paymentOrderNo 'svqwtL8K' \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --body '{"amount": 24, "currencyCode": "JoJ79GTl", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 90, "vat": 77}' \
    --namespace 'dxe5kEMG' \
    --paymentOrderNo 'RCy57kUW' \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'yoHMPbng' \
    --paymentOrderNo 'ojetgA6C' \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace 'X5JKVOC3' \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --body '{"allowedBalanceOrigins": ["Playstation", "Stadia", "Nintendo"]}' \
    --namespace 'J0GyQ0eR' \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace '1CD1Iy0B' \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
samples/cli/sample-apps Platform createReward \
    --body '{"description": "y5S40CTo", "eventTopic": "0oBHC9uk", "maxAwarded": 52, "maxAwardedPerUser": 35, "namespaceExpression": "jnBlISxf", "rewardCode": "16EagyAk", "rewardConditions": [{"condition": "2tIMySFi", "conditionName": "sZ4Cf9fB", "eventName": "xJTXpr5F", "rewardItems": [{"duration": 28, "itemId": "pwpVvjsU", "quantity": 92}, {"duration": 59, "itemId": "r5ZhG3mA", "quantity": 87}, {"duration": 94, "itemId": "1H6CxLfQ", "quantity": 90}]}, {"condition": "nQFzYlLg", "conditionName": "znUA4dhv", "eventName": "kWJmuxLs", "rewardItems": [{"duration": 74, "itemId": "krQG9FJn", "quantity": 6}, {"duration": 27, "itemId": "h5Hu1YyR", "quantity": 9}, {"duration": 86, "itemId": "mRST1HFF", "quantity": 28}]}, {"condition": "NvL3GRN1", "conditionName": "SZP2oZMu", "eventName": "a6RvuL0m", "rewardItems": [{"duration": 32, "itemId": "9TRbQiUu", "quantity": 30}, {"duration": 7, "itemId": "ZP6clXRR", "quantity": 68}, {"duration": 49, "itemId": "IEsPp0Aa", "quantity": 37}]}], "userIdExpression": "EEZuvbRy"}' \
    --namespace 'LIzqW9rI' \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace 'sWKmmvLi' \
    --eventTopic 'IZZGJTuM' \
    --limit '2' \
    --offset '62' \
    --sortBy '["rewardCode", "namespace:asc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 128 'QueryRewards' test.out

#- 129 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace '6M108OcK' \
    > test.out 2>&1
eval_tap $? 129 'ExportRewards' test.out

#- 130 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --file 'tmp.dat' \
    --namespace 'FHnNxfqn' \
    --replaceExisting 'true' \
    > test.out 2>&1
eval_tap $? 130 'ImportRewards' test.out

#- 131 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace 'oGohlZBL' \
    --rewardId 'BgDP8Aoh' \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --body '{"description": "Bj2Ycb45", "eventTopic": "v8SWmCrV", "maxAwarded": 7, "maxAwardedPerUser": 56, "namespaceExpression": "gf154Jpc", "rewardCode": "fGICdowM", "rewardConditions": [{"condition": "Cw0Cj1Bc", "conditionName": "CIEgjlzH", "eventName": "JpWUAf5J", "rewardItems": [{"duration": 78, "itemId": "tDOTpl21", "quantity": 60}, {"duration": 57, "itemId": "qY2pi5gh", "quantity": 94}, {"duration": 91, "itemId": "qYSg4g4t", "quantity": 66}]}, {"condition": "MWvQpYjy", "conditionName": "vIanpwTG", "eventName": "4gXZSR4c", "rewardItems": [{"duration": 94, "itemId": "BsfoMVnQ", "quantity": 76}, {"duration": 74, "itemId": "Ob6wxl1K", "quantity": 2}, {"duration": 54, "itemId": "PpAemp5K", "quantity": 97}]}, {"condition": "nJAHwq4n", "conditionName": "LUEOdqet", "eventName": "R6KbVuy1", "rewardItems": [{"duration": 23, "itemId": "Bc4qKZrc", "quantity": 53}, {"duration": 56, "itemId": "zyvWiSAc", "quantity": 29}, {"duration": 65, "itemId": "BQlpaRWW", "quantity": 28}]}], "userIdExpression": "Sqiv1Hjw"}' \
    --namespace 'kw03rKyO' \
    --rewardId 'fFRCJLx4' \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace 'SArYnKZL' \
    --rewardId 'cMpP9Lag' \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --body '{"payload": {"CSq3IVQP": {}, "smMco3Hc": {}, "Ff0QKebj": {}}}' \
    --namespace 'mqSwHgsH' \
    --rewardId '2uXJFiOc' \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace '6oQ4oCWP' \
    > test.out 2>&1
eval_tap $? 135 'ListStores' test.out

#- 136 CreateStore
samples/cli/sample-apps Platform createStore \
    --body '{"defaultLanguage": "PrR5rHiW", "defaultRegion": "DQulBtDf", "description": "uTRUjCd0", "supportedLanguages": ["6yiTrHFy", "g6SjJz12", "TcSUkGtg"], "supportedRegions": ["T8PXGMfP", "Yefiokps", "mGKbGnV4"], "title": "Uh9Ax5SR"}' \
    --namespace 'Nigs1DAf' \
    > test.out 2>&1
eval_tap $? 136 'CreateStore' test.out

#- 137 ImportStore
samples/cli/sample-apps Platform importStore \
    --file 'tmp.dat' \
    --namespace 'xM90qeIA' \
    --storeId 'QJfnf3dG' \
    > test.out 2>&1
eval_tap $? 137 'ImportStore' test.out

#- 138 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'DBRk807v' \
    > test.out 2>&1
eval_tap $? 138 'GetPublishedStore' test.out

#- 139 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'NjDYuX4y' \
    > test.out 2>&1
eval_tap $? 139 'DeletePublishedStore' test.out

#- 140 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'NRgL4O2y' \
    > test.out 2>&1
eval_tap $? 140 'GetPublishedStoreBackup' test.out

#- 141 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace '0sE8uHX6' \
    > test.out 2>&1
eval_tap $? 141 'RollbackPublishedStore' test.out

#- 142 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace '6DtNcwuO' \
    --storeId 'mCPjbxB7' \
    > test.out 2>&1
eval_tap $? 142 'GetStore' test.out

#- 143 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --body '{"defaultLanguage": "s8WlZQZL", "defaultRegion": "7eulcbSh", "description": "kIY6tZwG", "supportedLanguages": ["0nZGip3P", "aBX9NVtF", "yIjzZsoR"], "supportedRegions": ["v5HP1e6o", "w84SqzJt", "w8fO7dmY"], "title": "7eThYXs6"}' \
    --namespace 'PXquxbct' \
    --storeId 'HfpLM5n3' \
    > test.out 2>&1
eval_tap $? 143 'UpdateStore' test.out

#- 144 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace 'RofPmcnG' \
    --storeId 'oPoVHQxn' \
    > test.out 2>&1
eval_tap $? 144 'DeleteStore' test.out

#- 145 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace 'Xu63RK1B' \
    --storeId 'QTpt8tZY' \
    --action 'UPDATE' \
    --itemSku 'nOTyw4At' \
    --itemType 'BUNDLE' \
    --limit '44' \
    --offset '0' \
    --selected 'false' \
    --sortBy '["createdAt", "createdAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'gXWf95EZ' \
    --updatedAtStart 'goVYwKBp' \
    > test.out 2>&1
eval_tap $? 145 'QueryChanges' test.out

#- 146 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace 'SgQvdJwC' \
    --storeId 'Qw6BDelI' \
    > test.out 2>&1
eval_tap $? 146 'PublishAll' test.out

#- 147 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace 'k8y8LH8Q' \
    --storeId 'wmkGACGv' \
    > test.out 2>&1
eval_tap $? 147 'PublishSelected' test.out

#- 148 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace 'OcuHsdAV' \
    --storeId 'CoDH4ONU' \
    > test.out 2>&1
eval_tap $? 148 'SelectAllRecords' test.out

#- 149 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace 'YmPs0BbP' \
    --storeId 'gk44StrO' \
    --action 'UPDATE' \
    --itemSku 'rgxj9fii' \
    --itemType 'SUBSCRIPTION' \
    --type 'ITEM' \
    --updatedAtEnd 'kvSvfsPU' \
    --updatedAtStart 's2dzwJr8' \
    > test.out 2>&1
eval_tap $? 149 'GetStatistic' test.out

#- 150 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace 'MRO6AFBz' \
    --storeId '87w6rq4r' \
    > test.out 2>&1
eval_tap $? 150 'UnselectAllRecords' test.out

#- 151 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'oUdPiHF9' \
    --namespace 'Ye6ZT2il' \
    --storeId 'NTOxYoEE' \
    > test.out 2>&1
eval_tap $? 151 'SelectRecord' test.out

#- 152 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'QxUIqkQ1' \
    --namespace 'beWyBL3b' \
    --storeId 'KWD5VzvV' \
    > test.out 2>&1
eval_tap $? 152 'UnselectRecord' test.out

#- 153 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace 'rOG1cENx' \
    --storeId 'XzpzjDJ4' \
    --targetStoreId 'UISjaUCb' \
    > test.out 2>&1
eval_tap $? 153 'CloneStore' test.out

#- 154 ExportStore
samples/cli/sample-apps Platform exportStore \
    --namespace 'GqoWQpzl' \
    --storeId 'MVFtqLZo' \
    > test.out 2>&1
eval_tap $? 154 'ExportStore' test.out

#- 155 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'GZhKFQKK' \
    --chargeStatus 'NEVER' \
    --itemId 'Qmh6nP5c' \
    --limit '84' \
    --offset '81' \
    --sku '24nOZpO7' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'GlBPDClm' \
    > test.out 2>&1
eval_tap $? 155 'QuerySubscriptions' test.out

#- 156 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'pboa0NfI' \
    --subscriptionId 'hDKaLmJ4' \
    > test.out 2>&1
eval_tap $? 156 'RecurringChargeSubscription' test.out

#- 157 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'hdTRiFzZ' \
    --namespace '8NXqavhw' \
    > test.out 2>&1
eval_tap $? 157 'GetTicketDynamic' test.out

#- 158 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --body '{"orderNo": "GDJn65f0"}' \
    --boothName 'CRnzmhOH' \
    --namespace 'mFdojGdJ' \
    > test.out 2>&1
eval_tap $? 158 'DecreaseTicketSale' test.out

#- 159 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ax4uBdzp' \
    --namespace 'bNxhhj5G' \
    > test.out 2>&1
eval_tap $? 159 'GetTicketBoothID' test.out

#- 160 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --body '{"count": 33, "orderNo": "KPEpnTOI"}' \
    --boothName 'hKoaZmTt' \
    --namespace '0tym4tGW' \
    > test.out 2>&1
eval_tap $? 160 'IncreaseTicketSale' test.out

#- 161 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --body '{"achievements": [{"id": "2HaOnM8g", "value": 69}, {"id": "stKizK9g", "value": 53}, {"id": "PnVI5y9R", "value": 14}], "steamUserId": "CzOsWfkv"}' \
    --namespace 'dXVuWzVn' \
    --userId 'l0gp3YSy' \
    > test.out 2>&1
eval_tap $? 161 'UnlockSteamUserAchievement' test.out

#- 162 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace 'A1d3d3uP' \
    --userId 'lcW0q1oy' \
    --xboxUserId 'mEJ01TkC' \
    > test.out 2>&1
eval_tap $? 162 'GetXblUserAchievements' test.out

#- 163 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --body '{"achievements": [{"id": "1JyQXt51", "percentComplete": 71}, {"id": "cM5cet2b", "percentComplete": 72}, {"id": "KIwKprPs", "percentComplete": 8}], "serviceConfigId": "j1NUIsxH", "titleId": "i88wFDW3", "xboxUserId": "JcUrbrKq"}' \
    --namespace 'LfAIrFPX' \
    --userId 'wdOrCYpL' \
    > test.out 2>&1
eval_tap $? 163 'UpdateXblUserAchievement' test.out

#- 164 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'rmkf1fYA' \
    --userId 'TwdUjnpz' \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeCampaign' test.out

#- 165 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace '639jBQ5W' \
    --userId 'nLLxxWWT' \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeEntitlement' test.out

#- 166 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'F4syUZZa' \
    --userId 'lJ7BarqK' \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeFulfillment' test.out

#- 167 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'ys7My9zE' \
    --userId 'iIdwvABu' \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeIntegration' test.out

#- 168 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'lvstVxlM' \
    --userId 'NnIPMWVv' \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeOrder' test.out

#- 169 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'FpR0PgPu' \
    --userId 'uNDJQrZl' \
    > test.out 2>&1
eval_tap $? 169 'AnonymizePayment' test.out

#- 170 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace '3om2yfCr' \
    --userId 'foGMmdVL' \
    > test.out 2>&1
eval_tap $? 170 'AnonymizeSubscription' test.out

#- 171 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace 'T9ocNMYL' \
    --userId 'NHUuZLDq' \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeWallet' test.out

#- 172 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 'ZoRDQXux' \
    --userId 'iY8Z3VBL' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName '4Q7bHkut' \
    --itemId '["BDExEJBT", "5roUkwkJ", "iYZdOS38"]' \
    --limit '36' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 172 'QueryUserEntitlements' test.out

#- 173 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --body '[{"endDate": "1989-04-24T00:00:00Z", "grantedCode": "5cpV9Won", "itemId": "T1US4hjQ", "itemNamespace": "oNCwtnPb", "language": "HVMa_naCj", "quantity": 36, "region": "TTdUDURJ", "source": "PROMOTION", "startDate": "1986-11-04T00:00:00Z", "storeId": "ixbji8el"}, {"endDate": "1990-06-14T00:00:00Z", "grantedCode": "uBk7jZKe", "itemId": "4lJxAYH6", "itemNamespace": "8b2CsuwB", "language": "TiF_uf", "quantity": 23, "region": "wsGUdk9B", "source": "REDEEM_CODE", "startDate": "1990-03-07T00:00:00Z", "storeId": "pSA44j3D"}, {"endDate": "1999-08-30T00:00:00Z", "grantedCode": "wa2xH6dP", "itemId": "SfKTap4U", "itemNamespace": "5lroTS7G", "language": "RavO", "quantity": 54, "region": "1NWABUdg", "source": "ACHIEVEMENT", "startDate": "1975-02-18T00:00:00Z", "storeId": "WDc5urfO"}]' \
    --namespace 'ntWvtXSq' \
    --userId 'Yidz3QJp' \
    > test.out 2>&1
eval_tap $? 173 'GrantUserEntitlement' test.out

#- 174 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'fVKF4xj7' \
    --userId 'MuDWu3HJ' \
    --activeOnly 'true' \
    --appId 'yK9IAXxC' \
    > test.out 2>&1
eval_tap $? 174 'GetUserAppEntitlementByAppId' test.out

#- 175 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'Sr5rbc7Z' \
    --userId 'YDMuOvZm' \
    --activeOnly 'true' \
    --limit '82' \
    --offset '84' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 175 'QueryUserEntitlementsByAppType' test.out

#- 176 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'mSHGiV44' \
    --userId 'kGd8oVEa' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'IULL18Dy' \
    > test.out 2>&1
eval_tap $? 176 'GetUserEntitlementByItemId' test.out

#- 177 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'tYhcWgFl' \
    --userId 'WVDjQ0oI' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'Jv0ZATnM' \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementBySku' test.out

#- 178 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace '0rozbBEg' \
    --userId 'SZpmwVeu' \
    --appIds '["WBw6VfXI", "wjiJRsov", "CHjSOrfV"]' \
    --itemIds '["v4o8oFKx", "yEpSVRwA", "vGRaeKVB"]' \
    --skus '["XjXU6L8I", "MTR1gyns", "laU8nxKk"]' \
    > test.out 2>&1
eval_tap $? 178 'ExistsAnyUserActiveEntitlement' test.out

#- 179 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace '0HKHot2x' \
    --userId 'u0pG81p3' \
    --itemIds '["cLC0m2wO", "KxW6sw1m", "O9EElmKV"]' \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 180 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'Ad9pqwSP' \
    --userId 'QC3GEhyP' \
    --appId 'xhZ9FDXI' \
    > test.out 2>&1
eval_tap $? 180 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 181 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'bfSNsba4' \
    --userId 'kT6ZwFZA' \
    --entitlementClazz 'CODE' \
    --itemId 'X30Y6ND4' \
    > test.out 2>&1
eval_tap $? 181 'GetUserEntitlementOwnershipByItemId' test.out

#- 182 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace 'KOriluf0' \
    --userId 'V26TzaKN' \
    --ids '["NmCuCM70", "gqRLv3mm", "mtB7s6Dn"]' \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemIds' test.out

#- 183 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'YIo93c8q' \
    --userId 'AiAIGA0j' \
    --entitlementClazz 'MEDIA' \
    --sku 'r4WF576P' \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipBySku' test.out

#- 184 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'suYlbOSD' \
    --userId '9p31CJHa' \
    --entitlementIds 'yKva5zMN' \
    > test.out 2>&1
eval_tap $? 184 'RevokeUserEntitlements' test.out

#- 185 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'OoavAdNh' \
    --namespace 'ZVfWBCJI' \
    --userId 'pJPO0Uky' \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlement' test.out

#- 186 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --body '{"endDate": "1978-10-21T00:00:00Z", "nullFieldList": ["XMeHPjXz", "q99lzzte", "epnwkfpa"], "startDate": "1975-10-11T00:00:00Z", "status": "CONSUMED", "useCount": 49}' \
    --entitlementId 'QDzp2eR3' \
    --namespace 'bJjjtIhB' \
    --userId 'uN7ypdsM' \
    > test.out 2>&1
eval_tap $? 186 'UpdateUserEntitlement' test.out

#- 187 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --body '{"options": ["yuR975pU", "5d7IMjlA", "p2CVogAa"], "useCount": 27}' \
    --entitlementId 'plA8vKix' \
    --namespace '4q4EpMgv' \
    --userId 'ICAoq6PS' \
    > test.out 2>&1
eval_tap $? 187 'ConsumeUserEntitlement' test.out

#- 188 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Ix4R7pHc' \
    --namespace 'ijG6KWGT' \
    --userId 'ksPNbYgD' \
    > test.out 2>&1
eval_tap $? 188 'DisableUserEntitlement' test.out

#- 189 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'WY2zjzRQ' \
    --namespace 'JZHG2gL4' \
    --userId 'P04tpBM7' \
    > test.out 2>&1
eval_tap $? 189 'EnableUserEntitlement' test.out

#- 190 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'FKCK0Ird' \
    --namespace 'EOMECtev' \
    --userId 'lsmEPYxs' \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementHistories' test.out

#- 191 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'GcTltMZw' \
    --namespace 'qaxh5iCG' \
    --userId 'GgGQqb9g' \
    > test.out 2>&1
eval_tap $? 191 'RevokeUserEntitlement' test.out

#- 192 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --body '{"duration": 79, "endDate": "1974-04-21T00:00:00Z", "itemId": "xU1CCjyE", "itemSku": "Nsj7a8NJ", "language": "0yPBlH2h", "order": {"currency": {"currencyCode": "7qq54tIH", "currencySymbol": "K0tYSKVw", "currencyType": "REAL", "decimals": 11, "namespace": "fevdQDwv"}, "ext": {"j5WgaXH7": {}, "npPI7oUd": {}, "41Gl7TKI": {}}, "free": true}, "orderNo": "jKcGHPeI", "origin": "IOS", "quantity": 20, "region": "4gA54J83", "source": "PURCHASE", "startDate": "1976-10-10T00:00:00Z", "storeId": "4rTqGkER"}' \
    --namespace 's0Jut26t' \
    --userId '1T71AGJ0' \
    > test.out 2>&1
eval_tap $? 192 'FulfillItem' test.out

#- 193 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --body '{"code": "qQ9uCNEk", "language": "QERC_Rp", "region": "h4iS4qtb"}' \
    --namespace 'Jh9fREKY' \
    --userId 'USuiJ05N' \
    > test.out 2>&1
eval_tap $? 193 'RedeemCode' test.out

#- 194 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "7zPKDYfO", "namespace": "ywEp7pB0"}, "item": {"itemId": "xST6Sheh", "itemSku": "uMTR2EvM", "itemType": "8p7lsRVn"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "lnlyoFsi", "namespace": "tNvt7TGJ"}, "item": {"itemId": "lUySPzq3", "itemSku": "SRzVbE39", "itemType": "Jo1ki7G4"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "h7bXvJiC", "namespace": "zku15WFv"}, "item": {"itemId": "uUog78Hb", "itemSku": "NS0RbJ9M", "itemType": "4eZLy3aE"}, "quantity": 91, "type": "CURRENCY"}], "source": "GIFT"}' \
    --namespace 'inNeHakk' \
    --userId '3lld7DGd' \
    > test.out 2>&1
eval_tap $? 194 'FulfillRewards' test.out

#- 195 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'ShU41JRZ' \
    --userId 'ozS4QR4Y' \
    --endTime 'mycLEgpr' \
    --limit '28' \
    --offset '85' \
    --productId 'jAg3DHWm' \
    --startTime 'DMAi8gO9' \
    --status 'FULFILLED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 195 'QueryUserIAPOrders' test.out

#- 196 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'aGQz9XN8' \
    --userId 'vbKhiC1Y' \
    > test.out 2>&1
eval_tap $? 196 'QueryAllUserIAPOrders' test.out

#- 197 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ayfw-XYzh", "productId": "57VBkSPt", "region": "D4f96lFx", "type": "STEAM"}' \
    --namespace '2EnKHGKv' \
    --userId '7sMYQRzc' \
    > test.out 2>&1
eval_tap $? 197 'MockFulfillIAPItem' test.out

#- 198 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'UHj85Byy' \
    --userId 'fYQx4ccc' \
    --itemId 'A65hITbO' \
    --limit '53' \
    --offset '63' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 198 'QueryUserOrders' test.out

#- 199 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --body '{"currencyCode": "xW1r3QkE", "currencyNamespace": "OVj2palL", "discountedPrice": 99, "ext": {"c2lZFQJT": {}, "wSjeEFes": {}, "xC66AEvw": {}}, "itemId": "FJF0daz0", "language": "15955BPT", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 32, "quantity": 15, "region": "tlYv4DKM", "returnUrl": "3RTapJo0", "sandbox": true}' \
    --namespace 'YCyRgepX' \
    --userId 'KdHwIZyc' \
    > test.out 2>&1
eval_tap $? 199 'AdminCreateUserOrder' test.out

#- 200 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'KnHvN1A4' \
    --userId '1PCdkl4f' \
    --itemId 'UlC92AeO' \
    > test.out 2>&1
eval_tap $? 200 'CountOfPurchasedItem' test.out

#- 201 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace 'U2IwMWZk' \
    --orderNo 'UVqhbNwA' \
    --userId 'QHCYUDBh' \
    > test.out 2>&1
eval_tap $? 201 'GetUserOrder' test.out

#- 202 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --body '{"status": "REFUND_FAILED", "statusReason": "NWbfti53"}' \
    --namespace 'XBJSTrbr' \
    --orderNo '1c7ar26h' \
    --userId 'Q2wjlQju' \
    > test.out 2>&1
eval_tap $? 202 'UpdateUserOrderStatus' test.out

#- 203 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'HHAt4wOL' \
    --orderNo 't7kjrMfa' \
    --userId '1ul8OJqx' \
    > test.out 2>&1
eval_tap $? 203 'FulfillUserOrder' test.out

#- 204 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace 'Yyo6yYDq' \
    --orderNo 'vUBi4ZDw' \
    --userId 'VYpq8Fp3' \
    > test.out 2>&1
eval_tap $? 204 'GetUserOrderGrant' test.out

#- 205 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace '5qlTKmrJ' \
    --orderNo 'HmKIPXKI' \
    --userId 'uRhzd5PT' \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderHistories' test.out

#- 206 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --body '{"additionalData": {"cardSummary": "GLLKTPgS"}, "authorisedTime": "1974-08-17T00:00:00Z", "chargebackReversedTime": "1976-05-17T00:00:00Z", "chargebackTime": "1989-06-30T00:00:00Z", "chargedTime": "1989-07-26T00:00:00Z", "createdTime": "1989-12-14T00:00:00Z", "currency": {"currencyCode": "1XNKHNqX", "currencySymbol": "6SVwagqu", "currencyType": "VIRTUAL", "decimals": 24, "namespace": "RdHal1Lv"}, "customParameters": {"SfQfVsSr": {}, "hSMwisdt": {}, "yNEITH7H": {}}, "extOrderNo": "DQ5GklAw", "extTxId": "7fGMTbbp", "extUserId": "eAJWBKJY", "issuedAt": "1991-02-10T00:00:00Z", "metadata": {"W85jvxs2": "DOTzSvas", "5t6J2i7i": "UDE8mWSw", "WEhYgp7I": "Ny3zKQBB"}, "namespace": "cAsbj43p", "nonceStr": "KG9ng705", "paymentMethod": "UNFwI2Tj", "paymentMethodFee": 0, "paymentOrderNo": "mraceWRm", "paymentProvider": "WXPAY", "paymentProviderFee": 5, "paymentStationUrl": "Bcp3i7NY", "price": 91, "refundedTime": "1988-05-27T00:00:00Z", "salesTax": 38, "sandbox": false, "sku": "bsrhKp7I", "status": "INIT", "statusReason": "Gnf28zIc", "subscriptionId": "8Jp9jVxM", "subtotalPrice": 43, "targetNamespace": "CNJfVAKZ", "targetUserId": "ZgLtz5Pp", "tax": 94, "totalPrice": 10, "totalTax": 52, "txEndTime": "1992-11-15T00:00:00Z", "type": "p6SneZXq", "userId": "jBoN3Ydz", "vat": 89}' \
    --namespace 'gsQRaMBm' \
    --orderNo 'Hgxn3kOp' \
    --userId 'SYFWYE41' \
    > test.out 2>&1
eval_tap $? 206 'ProcessUserOrderNotification' test.out

#- 207 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace '3lAA0JMO' \
    --orderNo 'LELEMeeJ' \
    --userId 'UVpCfNiY' \
    > test.out 2>&1
eval_tap $? 207 'DownloadUserOrderReceipt' test.out

#- 208 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --body '{"currencyCode": "5JOTEkLU", "currencyNamespace": "8SKLPa1N", "customParameters": {"n4EYt0jO": {}, "zpSg3sAS": {}, "hQ0MKo6o": {}}, "description": "nQQ0acUr", "extOrderNo": "2u8WHXBX", "extUserId": "byt1xqiS", "itemType": "APP", "language": "ME", "metadata": {"GjB6ckcT": "pKVFmPtn", "HpiJzfQ7": "YUG4BL1i", "3D9kfwFT": "z1OJEWmc"}, "notifyUrl": "7veYMO2l", "omitNotification": true, "platform": "tTALAdRs", "price": 50, "recurringPaymentOrderNo": "KEdyKdma", "region": "l1ohISRO", "returnUrl": "QPJT6uAk", "sandbox": false, "sku": "pXbf2CM4", "subscriptionId": "IJ4XsR3P", "title": "hG9mWAqq"}' \
    --namespace 'YtZkLnRf' \
    --userId 'Jlf3gSzY' \
    > test.out 2>&1
eval_tap $? 208 'CreateUserPaymentOrder' test.out

#- 209 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --body '{"description": "6UVTtHg5"}' \
    --namespace '0g38sMSc' \
    --paymentOrderNo 'N5tuL1vm' \
    --userId 'gwgXcs1s' \
    > test.out 2>&1
eval_tap $? 209 'RefundUserPaymentOrder' test.out

#- 210 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --body '{"code": "UNpDQRzv", "orderNo": "MUINDFGs"}' \
    --namespace 'csSro2iS' \
    --userId 'ZCrNjWDY' \
    > test.out 2>&1
eval_tap $? 210 'ApplyUserRedemption' test.out

#- 211 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace 'TtftRa5N' \
    --userId 'QSpm11QS' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'Edb9FAsT' \
    --limit '88' \
    --offset '75' \
    --sku 'vXPT3Zaa' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 211 'QueryUserSubscriptions' test.out

#- 212 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'kqlCYU8L' \
    --userId 'ZdT8r33V' \
    --excludeSystem 'false' \
    --limit '14' \
    --offset '1' \
    --subscriptionId 'Hi8dRQsm' \
    > test.out 2>&1
eval_tap $? 212 'GetUserSubscriptionActivities' test.out

#- 213 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --body '{"grantDays": 28, "itemId": "2wQfRcqh", "language": "wcM16WD6", "reason": "4e0kmXig", "region": "cjT3Y7bx", "source": "Z9OW41QZ"}' \
    --namespace 'q9oqjuhX' \
    --userId 'PAoEaPBV' \
    > test.out 2>&1
eval_tap $? 213 'PlatformSubscribeSubscription' test.out

#- 214 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'w2B4aCIN' \
    --userId 'xJv4myoP' \
    --itemId 'Vc5eztl7' \
    > test.out 2>&1
eval_tap $? 214 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 215 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'N4bW8v84' \
    --subscriptionId 'Apem3917' \
    --userId 'gGA2ueEu' \
    > test.out 2>&1
eval_tap $? 215 'GetUserSubscription' test.out

#- 216 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace '22dX4roL' \
    --subscriptionId 'fcmEzzpp' \
    --userId '1YGqey67' \
    > test.out 2>&1
eval_tap $? 216 'DeleteUserSubscription' test.out

#- 217 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --body '{"immediate": false, "reason": "0LPgw32G"}' \
    --namespace 'RVwhGmXn' \
    --subscriptionId '1uheagFr' \
    --userId 'sFWhnKLg' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 217 'CancelSubscription' test.out

#- 218 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --body '{"grantDays": 97, "reason": "DoLQbOet"}' \
    --namespace 'jg5Gvm2C' \
    --subscriptionId 'plWAnffv' \
    --userId 'PI0hkL8T' \
    > test.out 2>&1
eval_tap $? 218 'GrantDaysToSubscription' test.out

#- 219 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'OJsxvoXW' \
    --subscriptionId 'iotZABwr' \
    --userId 'b4k4yJJk' \
    --excludeFree 'false' \
    --limit '91' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 219 'GetUserSubscriptionBillingHistories' test.out

#- 220 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --body '{"additionalData": {"cardSummary": "unpc3V8P"}, "authorisedTime": "1984-12-18T00:00:00Z", "chargebackReversedTime": "1988-07-20T00:00:00Z", "chargebackTime": "1980-05-07T00:00:00Z", "chargedTime": "1975-09-14T00:00:00Z", "createdTime": "1991-11-05T00:00:00Z", "currency": {"currencyCode": "pW7ishuJ", "currencySymbol": "NivLgi4X", "currencyType": "VIRTUAL", "decimals": 61, "namespace": "gwNlNh1P"}, "customParameters": {"qdopLPi4": {}, "TOVRXeOh": {}, "ZU8lcEe1": {}}, "extOrderNo": "WPeQpUNW", "extTxId": "I6vJzKop", "extUserId": "PcQnINwo", "issuedAt": "1993-09-20T00:00:00Z", "metadata": {"RPzeUw7k": "9XTbsBNp", "OPgbBGnr": "TauAyhZU", "vTPNNrEh": "nCmMXg30"}, "namespace": "xVrzymFc", "nonceStr": "2uUj19Um", "paymentMethod": "LCBeCyZD", "paymentMethodFee": 77, "paymentOrderNo": "ugb3A02j", "paymentProvider": "WALLET", "paymentProviderFee": 94, "paymentStationUrl": "xjUu6Cj1", "price": 3, "refundedTime": "1984-12-15T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "RVOe9jeM", "status": "CHARGEBACK", "statusReason": "1pmwxfxd", "subscriptionId": "4hTILleu", "subtotalPrice": 26, "targetNamespace": "KQ8rHc1v", "targetUserId": "TKEDDoUW", "tax": 43, "totalPrice": 3, "totalTax": 3, "txEndTime": "1984-03-21T00:00:00Z", "type": "DJO7vrsF", "userId": "gSXXvMOw", "vat": 62}' \
    --namespace 'f69uXOFH' \
    --subscriptionId 'JRoz2ncc' \
    --userId 'mbZhzC1A' \
    > test.out 2>&1
eval_tap $? 220 'ProcessUserSubscriptionNotification' test.out

#- 221 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --body '{"count": 1, "orderNo": "Tt5l9OQ7"}' \
    --boothName 'SXnLDeDH' \
    --namespace '8h98IByk' \
    --userId 'bjEpLFxV' \
    > test.out 2>&1
eval_tap $? 221 'AcquireUserTicket' test.out

#- 222 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace 'C6MMyYPI' \
    --userId 'PkyYxH8h' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserCurrencyWallets' test.out

#- 223 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'bRUTApOJ' \
    --namespace 'ilcafEeq' \
    --userId 'DkdyRLTu' \
    --limit '64' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 223 'ListUserCurrencyTransactions' test.out

#- 224 CheckWallet
eval_tap 0 224 'CheckWallet # SKIP deprecated' test.out

#- 225 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --body '{"amount": 71, "expireAt": "1975-09-12T00:00:00Z", "origin": "GooglePlay", "reason": "JptiRAae", "source": "REWARD"}' \
    --currencyCode 'JyF27ZDt' \
    --namespace 'Q9Ed295x' \
    --userId 'vC5GC1xq' \
    > test.out 2>&1
eval_tap $? 225 'CreditUserWallet' test.out

#- 226 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --body '{"amount": 25, "walletPlatform": "Steam"}' \
    --currencyCode 'HUv28Ote' \
    --namespace 'dhaitLtM' \
    --userId 'WZCzKFma' \
    > test.out 2>&1
eval_tap $? 226 'PayWithUserWallet' test.out

#- 227 GetUserWallet
eval_tap 0 227 'GetUserWallet # SKIP deprecated' test.out

#- 228 DebitUserWallet
eval_tap 0 228 'DebitUserWallet # SKIP deprecated' test.out

#- 229 DisableUserWallet
eval_tap 0 229 'DisableUserWallet # SKIP deprecated' test.out

#- 230 EnableUserWallet
eval_tap 0 230 'EnableUserWallet # SKIP deprecated' test.out

#- 231 ListUserWalletTransactions
eval_tap 0 231 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 232 QueryWallets
eval_tap 0 232 'QueryWallets # SKIP deprecated' test.out

#- 233 GetWallet
eval_tap 0 233 'GetWallet # SKIP deprecated' test.out

#- 234 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'Z3BlZpX9' \
    --end 'dK1PRp65' \
    --start 'ku63fluD' \
    > test.out 2>&1
eval_tap $? 234 'SyncOrders' test.out

#- 235 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --body '{"allowedPaymentMethods": ["KF57aQx8", "Fl9KVIwj", "N2mUScjl"], "apiKey": "gp3gF2ov", "authoriseAsCapture": true, "blockedPaymentMethods": ["VIcbqle7", "uTqfdWvg", "43n5BtSP"], "clientKey": "jw3m7Pb8", "dropInSettings": "5juAaG8d", "liveEndpointUrlPrefix": "j1v11fu6", "merchantAccount": "MhIUMbUX", "notificationHmacKey": "xhf4okbx", "notificationPassword": "y16nBaba", "notificationUsername": "axQB2Y78", "returnUrl": "QzYNOqE3", "settings": "BL7ycKGe"}' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 235 'TestAdyenConfig' test.out

#- 236 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --body '{"appId": "PwsKxnM7", "privateKey": "AjPLVQE1", "publicKey": "EVyimR56", "returnUrl": "LV6MYDzi"}' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 236 'TestAliPayConfig' test.out

#- 237 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --body '{"publicKey": "2Byc9meH", "secretKey": "57kGqMR4"}' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 237 'TestCheckoutConfig' test.out

#- 238 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'aTZnGbJW' \
    --region '9WBPLz5t' \
    > test.out 2>&1
eval_tap $? 238 'DebugMatchedPaymentMerchantConfig' test.out

#- 239 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --body '{"clientID": "OR1IP2mM", "clientSecret": "My1ERSg4", "returnUrl": "ezGfraLR", "webHookId": "qFWtcnFz"}' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 239 'TestPayPalConfig' test.out

#- 240 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["hgrYLoD8", "VzqA4GoN", "Q8yRLeNz"], "publishableKey": "pFLsNqZA", "secretKey": "A8hFquXl", "webhookSecret": "k6QN1i05"}' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfig' test.out

#- 241 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "BbAfaOnl", "key": "xcsfAeCZ", "mchid": "ftJ50Jtj", "returnUrl": "rfya2NLp"}' \
    > test.out 2>&1
eval_tap $? 241 'TestWxPayConfig' test.out

#- 242 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Vha4aaBj", "flowCompletionUrl": "bBYM2eTv", "merchantId": 95, "projectId": 29, "projectSecretKey": "M2N22UYH"}' \
    > test.out 2>&1
eval_tap $? 242 'TestXsollaConfig' test.out

#- 243 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'jvVtLU9B' \
    > test.out 2>&1
eval_tap $? 243 'GetPaymentMerchantConfig' test.out

#- 244 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --body '{"allowedPaymentMethods": ["aPoxyzk8", "SuBGMl9u", "DuNyk7Uh"], "apiKey": "wpiqBonV", "authoriseAsCapture": true, "blockedPaymentMethods": ["57TqQdbW", "RaPVlKWz", "JFVeyT96"], "clientKey": "j3hEtj10", "dropInSettings": "6WTX1NdS", "liveEndpointUrlPrefix": "n0cTDHnl", "merchantAccount": "MmiSa623", "notificationHmacKey": "BSjPO8JX", "notificationPassword": "MLilcMB4", "notificationUsername": "VzLexXog", "returnUrl": "TQFBxloo", "settings": "YnssfWrc"}' \
    --id 'KSQK4rWL' \
    --sandbox 'true' \
    --validate 'true' \
    > test.out 2>&1
eval_tap $? 244 'UpdateAdyenConfig' test.out

#- 245 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'uagoJ7Ht' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 245 'TestAdyenConfigById' test.out

#- 246 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --body '{"appId": "p12unawq", "privateKey": "1wL7zIUf", "publicKey": "h6tDR8pI", "returnUrl": "B1GDpkUD"}' \
    --id 'LUqrl5jo' \
    --sandbox 'true' \
    --validate 'true' \
    > test.out 2>&1
eval_tap $? 246 'UpdateAliPayConfig' test.out

#- 247 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'nl7ELM65' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfigById' test.out

#- 248 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --body '{"publicKey": "8ENSykP7", "secretKey": "pO2WbUyE"}' \
    --id '5fxK6dOV' \
    --sandbox 'true' \
    --validate 'false' \
    > test.out 2>&1
eval_tap $? 248 'UpdateCheckoutConfig' test.out

#- 249 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'e5LO1Bjs' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 249 'TestCheckoutConfigById' test.out

#- 250 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --body '{"clientID": "kQsqEjbK", "clientSecret": "2VFGXXht", "returnUrl": "WVbDVUiT", "webHookId": "PxnfoEJV"}' \
    --id 'cYoEvLAG' \
    --sandbox 'false' \
    --validate 'true' \
    > test.out 2>&1
eval_tap $? 250 'UpdatePayPalConfig' test.out

#- 251 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'R3D9t01d' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 251 'TestPayPalConfigById' test.out

#- 252 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --body '{"allowedPaymentMethodTypes": ["y3RkC3LB", "sVz3Tipt", "0b1pYjBI"], "publishableKey": "wRTYVXcf", "secretKey": "1YmtLdcI", "webhookSecret": "cEz2b4Tv"}' \
    --id '0c7rQbyO' \
    --sandbox 'false' \
    --validate 'false' \
    > test.out 2>&1
eval_tap $? 252 'UpdateStripeConfig' test.out

#- 253 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'kvUhhNHB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfigById' test.out

#- 254 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --body '{"appId": "HZe99Dxh", "key": "DXwXoDGY", "mchid": "KjqjRte9", "returnUrl": "pCA8Y85p"}' \
    --id 'NybRsEBI' \
    --validate 'false' \
    > test.out 2>&1
eval_tap $? 254 'UpdateWxPayConfig' test.out

#- 255 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --file 'tmp.dat' \
    --id 'dY276TXP' \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfigCert' test.out

#- 256 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'fYDTuUuo' \
    > test.out 2>&1
eval_tap $? 256 'TestWxPayConfigById' test.out

#- 257 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --body '{"apiKey": "lI8dmOri", "flowCompletionUrl": "5Hc9Hs2p", "merchantId": 58, "projectId": 85, "projectSecretKey": "ulQOTrXK"}' \
    --id 'vs8EGA5p' \
    --validate 'true' \
    > test.out 2>&1
eval_tap $? 257 'UpdateXsollaConfig' test.out

#- 258 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'kgEHhs3s' \
    > test.out 2>&1
eval_tap $? 258 'TestXsollaConfigById' test.out

#- 259 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    --id 'N3GBfJSF' \
    > test.out 2>&1
eval_tap $? 259 'UpdateXsollaUIConfig' test.out

#- 260 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '91' \
    --namespace 'tSDNDnz5' \
    --offset '65' \
    --region 'Tb2jQWtD' \
    > test.out 2>&1
eval_tap $? 260 'QueryPaymentProviderConfig' test.out

#- 261 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "5aSb9MYs", "region": "nYUCLjYB", "sandboxTaxJarApiToken": "tb1kmlmh", "specials": ["STRIPE", "PAYPAL", "WALLET"], "taxJarApiToken": "EZ92FDM1", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 261 'CreatePaymentProviderConfig' test.out

#- 262 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 262 'GetAggregatePaymentProviders' test.out

#- 263 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'wKfH4xuO' \
    --region 'aEMY39w0' \
    > test.out 2>&1
eval_tap $? 263 'DebugMatchedPaymentProviderConfig' test.out

#- 264 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 264 'GetSpecialPaymentProviders' test.out

#- 265 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "8CIioKn7", "region": "wmFhAotY", "sandboxTaxJarApiToken": "D4tGIgsj", "specials": ["XSOLLA", "STRIPE", "PAYPAL"], "taxJarApiToken": "0BS0djtH", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --id 'ledRY12L' \
    > test.out 2>&1
eval_tap $? 265 'UpdatePaymentProviderConfig' test.out

#- 266 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'AwzDQebE' \
    > test.out 2>&1
eval_tap $? 266 'DeletePaymentProviderConfig' test.out

#- 267 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 267 'GetPaymentTaxConfig' test.out

#- 268 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "MxCPJEEi", "taxJarApiToken": "gYT1ij2I", "taxJarEnabled": true, "taxJarProductCodesMapping": {"euRonNNN": "01HBc9jF", "uPfDikRt": "FTnX46G6", "0BPgkSie": "XEGg0iLy"}}' \
    > test.out 2>&1
eval_tap $? 268 'UpdatePaymentTaxConfig' test.out

#- 269 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'bxrG1SJW' \
    --end 'bwA2neAa' \
    --start 'oVcrXMJc' \
    > test.out 2>&1
eval_tap $? 269 'SyncPaymentOrders' test.out

#- 270 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'cB5fGW9G' \
    --language 'navzbHgl' \
    --storeId 'I1UHtW4A' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRootCategories' test.out

#- 271 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace 'spOEO0Dd' \
    --language 'aVQNYl4Y' \
    --storeId 'WjLJ8scp' \
    > test.out 2>&1
eval_tap $? 271 'DownloadCategories' test.out

#- 272 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Z36i9Pvj' \
    --namespace 'D9Kt3BPX' \
    --language 'z3vGxfbz' \
    --storeId 'Q6sVLrGb' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetCategory' test.out

#- 273 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '1piJ4CYz' \
    --namespace 'mcUiqmYO' \
    --language '8X7tUSUI' \
    --storeId 'MepyA5TG' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetChildCategories' test.out

#- 274 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'XsQOPc9V' \
    --namespace 'UBbwnSXX' \
    --language 'PsbPY6s6' \
    --storeId 'aSIMVO0N' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetDescendantCategories' test.out

#- 275 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'YkkPBJDO' \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 275 'PublicListCurrencies' test.out

#- 276 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'iu9bxc3V' \
    --language 'Uz0B7pS8' \
    --region 'iOk6S1tY' \
    --storeId 'BJLio8FL' \
    --appId '9tKmnCpT' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetItemByAppId' test.out

#- 277 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'peuDRZli' \
    --appType 'GAME' \
    --baseAppId 'JHFBTSgX' \
    --categoryPath 'vTeRYaFz' \
    --features '02tgvpI5' \
    --itemType 'INGAMEITEM' \
    --language '0OGxvaC2' \
    --limit '11' \
    --offset '32' \
    --region 'USBEXOdX' \
    --sortBy '["name:desc"]' \
    --storeId 'mhGsqZ2v' \
    --tags 'Pg6bTiWV' \
    > test.out 2>&1
eval_tap $? 277 'PublicQueryItems' test.out

#- 278 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'amPyT0ol' \
    --language 'tt2nrLVG' \
    --region 'dlBHYqCO' \
    --storeId 'BdkXYk0o' \
    --sku 'aFRh2e94' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItemBySku' test.out

#- 279 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace '1quBXJNQ' \
    --language 'Tx7hFNsm' \
    --region 'TuOT2Qiz' \
    --storeId 'zb7D9wlR' \
    --itemIds 'G9RrNLu2' \
    > test.out 2>&1
eval_tap $? 279 'PublicBulkGetItems' test.out

#- 280 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --body '{"itemIds": ["WoktT9tQ", "1og0OSOG", "aTOyvx02"]}' \
    --namespace 'LrRLT1do' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateItemPurchaseCondition' test.out

#- 281 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'mggZoXoh' \
    --itemType 'COINS' \
    --limit '25' \
    --offset '32' \
    --region 'Z6llJV90' \
    --storeId '8CHSZ2QV' \
    --keyword '9J5DY7KA' \
    --language 'AuT2K41k' \
    > test.out 2>&1
eval_tap $? 281 'PublicSearchItems' test.out

#- 282 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'siMRP2hg' \
    --namespace 'yqFcFEKP' \
    --language 'TSmaLH1I' \
    --region 'mGJt5rM9' \
    --storeId 'dNWRj5yf' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetApp' test.out

#- 283 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'cDAyrs0Q' \
    --namespace 'E74OZfXl' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetItemDynamicData' test.out

#- 284 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'GlnNwanR' \
    --namespace 'lsqzfbqE' \
    --language 'FWXX9u3S' \
    --populateBundle 'false' \
    --region '5B2rk7ND' \
    --storeId 'GT0VnpQd' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItem' test.out

#- 285 GetPaymentCustomization
eval_tap 0 285 'GetPaymentCustomization # SKIP deprecated' test.out

#- 286 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --body '{"paymentOrderNo": "2h3JhuAh", "paymentProvider": "WALLET", "returnUrl": "ehamkh5Z", "ui": "Hv8jNnsg", "zipCode": "jzopUaEs"}' \
    --namespace 'VPutOy82' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetPaymentUrl' test.out

#- 287 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace '9eMaiCzb' \
    --paymentOrderNo 'YIPYFPih' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentMethods' test.out

#- 288 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'OX7hHZvs' \
    --paymentOrderNo '0CF7hPK6' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUnpaidPaymentOrder' test.out

#- 289 Pay
samples/cli/sample-apps Platform pay \
    --body '{"token": "b6UgV8Qp"}' \
    --namespace 'oRXAz52d' \
    --paymentOrderNo 'IlZ2kEe2' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'K5cgXBrQ' \
    > test.out 2>&1
eval_tap $? 289 'Pay' test.out

#- 290 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'MSx4r5zw' \
    --paymentOrderNo 'avFcDrrh' \
    > test.out 2>&1
eval_tap $? 290 'PublicCheckPaymentOrderPaidStatus' test.out

#- 291 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'EvaxeOsf' \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'aaE3gGVa' \
    > test.out 2>&1
eval_tap $? 291 'GetPaymentPublicConfig' test.out

#- 292 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'rJBtLSx5' \
    --code 'ybxKpmPl' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetQRCode' test.out

#- 293 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'Iigi7HVm' \
    --payerID 'WQDu8w00' \
    --foreinginvoice 'VpJu8ICx' \
    --invoiceId 'RC5Ug7wv' \
    --payload 'rcjSm4xj' \
    --redirectResult 'nGb7NEYK' \
    --resultCode 'f8NwdNui' \
    --sessionId 'KNZ5LcMF' \
    --status 'hEhXFC55' \
    --token '46vt6OJu' \
    --type 'LXQPotur' \
    --userId 'vSg3S22M' \
    --orderNo 'iwqzz7Uf' \
    --paymentOrderNo 'poWaqypI' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'pWmjFC54' \
    > test.out 2>&1
eval_tap $? 293 'PublicNormalizePaymentReturnUrl' test.out

#- 294 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'HJiJ99tS' \
    --zipCode 'rq70xazf' \
    --paymentOrderNo 'm1Ru1NlU' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxValue' test.out

#- 295 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'uD3UyUs2' \
    --rewardCode 'bvjzSLYR' \
    > test.out 2>&1
eval_tap $? 295 'GetRewardByCode' test.out

#- 296 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'DUm5dy4F' \
    --eventTopic 'gR58fXkZ' \
    --limit '65' \
    --offset '32' \
    --sortBy '["rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 296 'QueryRewards1' test.out

#- 297 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace 'BXlU5pZz' \
    --rewardId '6LK8YZbN' \
    > test.out 2>&1
eval_tap $? 297 'GetReward1' test.out

#- 298 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace 'Y7hjmCJ0' \
    > test.out 2>&1
eval_tap $? 298 'PublicListStores' test.out

#- 299 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'TzoZuyYC' \
    --appIds '["OWl8eECk", "pZ5bolIl", "ttcl6fpN"]' \
    --itemIds '["7dbSCe62", "aBx3umtV", "d7KjH7Rj"]' \
    --skus '["6qdNuvYS", "Sq5svwTN", "RbpeI4Qe"]' \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyMyActiveEntitlement' test.out

#- 300 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace '202nuZ4w' \
    --appId 'WDJa30nh' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'JrJ2fydK' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '280o33M0' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 302 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'P3Fq4kKm' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'ESJikoGE' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 303 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'HWob5lhx' \
    --appIds '["AlY1LL16", "5q3PZUCg", "1XpGnwfx"]' \
    --itemIds '["Sp8hpubl", "rgc7lKI6", "xI29s30m"]' \
    --skus '["E2DxAwZm", "JtmD4x4X", "HYbZRQOP"]' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetEntitlementOwnershipToken' test.out

#- 304 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'iXsB4DeD' \
    --namespace 't5hPo0ww' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetMyWallet' test.out

#- 305 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --body '{"epicGamesJwtToken": "xFSAzAcb"}' \
    --namespace 'SaJxZvMW' \
    --userId '1HwJBNkN' \
    > test.out 2>&1
eval_tap $? 305 'SyncEpicGameDLC' test.out

#- 306 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --body '{"serviceLabel": 38}' \
    --namespace 'MgBne56R' \
    --userId 'e2qGouqC' \
    > test.out 2>&1
eval_tap $? 306 'PublicSyncPsnDlcInventory' test.out

#- 307 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --body '{"appId": "8CBWU0ru", "steamId": "ov6bcFaK"}' \
    --namespace 'wV8xn5B9' \
    --userId 'c2MLN6tO' \
    > test.out 2>&1
eval_tap $? 307 'SyncSteamDLC' test.out

#- 308 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --body '{"xstsToken": "lSSczPOZ"}' \
    --namespace '0oKqGI0F' \
    --userId '6IkwN1A1' \
    > test.out 2>&1
eval_tap $? 308 'SyncXboxDLC' test.out

#- 309 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'sZ4gksu0' \
    --userId 'fZbrA1Cc' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName '4mnoWdMh' \
    --itemId '["cGaZX2P8", "QwbQq4Cc", "hUuROAui"]' \
    --limit '6' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryUserEntitlements' test.out

#- 310 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'J0Ue8VU4' \
    --userId 'hTNbQDNq' \
    --appId 'cn025imE' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserAppEntitlementByAppId' test.out

#- 311 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'fmjiQ92s' \
    --userId '0DSuxIp4' \
    --limit '24' \
    --offset '68' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 311 'PublicQueryUserEntitlementsByAppType' test.out

#- 312 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace 'dU5X3Ogg' \
    --userId 'FD48FIdE' \
    --entitlementClazz 'CODE' \
    --itemId 'RQFO2zVj' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserEntitlementByItemId' test.out

#- 313 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace 'oKDvdMbK' \
    --userId '28tsz9Lz' \
    --entitlementClazz 'APP' \
    --sku 'iGwqmUZP' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementBySku' test.out

#- 314 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'fH4L2XQh' \
    --userId 'rvjyy8zh' \
    --appIds '["isf25KzJ", "9CxFE9Bt", "B6R3v4IM"]' \
    --itemIds '["y2S4d4p7", "OShLMx8U", "DZhIBI0s"]' \
    --skus '["6mw8hZxF", "STcQw4Ql", "BywOwLYE"]' \
    > test.out 2>&1
eval_tap $? 314 'PublicExistsAnyUserActiveEntitlement' test.out

#- 315 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'EIIY6WCb' \
    --userId 'v5skeR0n' \
    --appId 'yesOAy4A' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 316 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'E22XqEzd' \
    --userId 'F3N2qbU3' \
    --entitlementClazz 'MEDIA' \
    --itemId 'ykPpibTm' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace 'REEJYpTJ' \
    --userId 'W5pSSbH7' \
    --ids '["SeM9tDk0", "WNqtcErX", "0xdqqggO"]' \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 318 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'jl4AQGmN' \
    --userId 'JZC3VXUn' \
    --entitlementClazz 'MEDIA' \
    --sku 'SZ1xmEb9' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 319 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'PNx2GzeW' \
    --namespace 'LeEbInx9' \
    --userId 'Ona81AvL' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlement' test.out

#- 320 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --body '{"options": ["p6rbcz9w", "M5EKG3ji", "3d6d7ZYj"], "useCount": 68}' \
    --entitlementId 'pYYOp1Rt' \
    --namespace '0Sye2btA' \
    --userId 'jLnVpKjc' \
    > test.out 2>&1
eval_tap $? 320 'PublicConsumeUserEntitlement' test.out

#- 321 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --body '{"code": "UQC39Bz2", "language": "Sb-DbAo", "region": "M6MmKHx4"}' \
    --namespace 'kjXHjH9I' \
    --userId 'HRbOmztt' \
    > test.out 2>&1
eval_tap $? 321 'PublicRedeemCode' test.out

#- 322 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --body '{"excludeOldTransactions": false, "language": "eGS", "productId": "8BBGlejE", "receiptData": "l6GvSQ3M", "region": "jtzJacqa", "transactionId": "TleNefYg"}' \
    --namespace 'DUFoAxy6' \
    --userId 'IxKH0vZe' \
    > test.out 2>&1
eval_tap $? 322 'PublicFulfillAppleIAPItem' test.out

#- 323 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --body '{"epicGamesJwtToken": "7nMmWR0V"}' \
    --namespace 'aK4wgPBn' \
    --userId '68dYEL4f' \
    > test.out 2>&1
eval_tap $? 323 'SyncEpicGamesInventory' test.out

#- 324 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --body '{"autoAck": true, "language": "ZI", "orderId": "lYftRUpE", "packageName": "zUnIHrW7", "productId": "pwpk3UsB", "purchaseTime": 50, "purchaseToken": "yeE9fAsQ", "region": "EDSCvgUn"}' \
    --namespace '2cx8uIZy' \
    --userId 'BSL2LrDT' \
    > test.out 2>&1
eval_tap $? 324 'PublicFulfillGoogleIAPItem' test.out

#- 325 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --body '{"currencyCode": "79oc3vBm", "price": 0.6978631985946675, "productId": "YYewpmrj", "serviceLabel": 1}' \
    --namespace 'bTHPzl6H' \
    --userId 'Ia8MlKXB' \
    > test.out 2>&1
eval_tap $? 325 'PublicReconcilePlayStationStore' test.out

#- 326 SyncStadiaEntitlement
samples/cli/sample-apps Platform syncStadiaEntitlement \
    --body '{"appId": "doDGUQPd", "language": "ZXo_441", "region": "5YMzMpiK", "stadiaPlayerId": "vYCW3RIJ"}' \
    --namespace 'Cs1BAWdQ' \
    --userId 'Dp6kZelS' \
    > test.out 2>&1
eval_tap $? 326 'SyncStadiaEntitlement' test.out

#- 327 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --body '{"appId": "Yj7yrUlM", "currencyCode": "e7meVY1s", "language": "QUQQ", "price": 0.39955695518121104, "productId": "AIq0jx6v", "region": "cIuLrl0N", "steamId": "Ube9Q7q1"}' \
    --namespace 'ohMc616z' \
    --userId 'i4KuAaw4' \
    > test.out 2>&1
eval_tap $? 327 'SyncSteamInventory' test.out

#- 328 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --body '{"gameId": "uz3Iq54J", "language": "UO_ndwM-xp", "region": "JGxvU4fe"}' \
    --namespace 'bDxZzn8O' \
    --userId 'IRH3aNZ2' \
    > test.out 2>&1
eval_tap $? 328 'SyncTwitchDropsEntitlement' test.out

#- 329 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --body '{"currencyCode": "c61ifgts", "price": 0.08177917709082438, "productId": "U6iiOmIv", "xstsToken": "NI3nnYIC"}' \
    --namespace 't2IP22cT' \
    --userId 'CpAMRVdh' \
    > test.out 2>&1
eval_tap $? 329 'SyncXboxInventory' test.out

#- 330 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace '9obyBQw2' \
    --userId 'vLvKWDH2' \
    --itemId 'nEv06nZn' \
    --limit '80' \
    --offset '93' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 330 'PublicQueryUserOrders' test.out

#- 331 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --body '{"currencyCode": "6iIKsulV", "discountedPrice": 67, "ext": {"DF6y4V42": {}, "UW8OFzdI": {}, "nLwweQM9": {}}, "itemId": "qpUBkQCJ", "language": "thR-MV", "price": 81, "quantity": 5, "region": "BdpxGmJO", "returnUrl": "5Bch0Z2R"}' \
    --namespace 'IJNUh1qc' \
    --userId 'TKinGrvX' \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateUserOrder' test.out

#- 332 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'PqVhDSB8' \
    --orderNo 'BjRLUZyM' \
    --userId 'S6KPt8gr' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserOrder' test.out

#- 333 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'w8S0oUct' \
    --orderNo '6fhzEgpl' \
    --userId 'UmlkJvKX' \
    > test.out 2>&1
eval_tap $? 333 'PublicCancelUserOrder' test.out

#- 334 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace '988lYbdj' \
    --orderNo 'hl2kH2a6' \
    --userId 'aASYbowD' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetUserOrderHistories' test.out

#- 335 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'iHOdfEjd' \
    --orderNo 'OP0jvj4g' \
    --userId 'W5EX2Yy2' \
    > test.out 2>&1
eval_tap $? 335 'PublicDownloadUserOrderReceipt' test.out

#- 336 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'IsO3HOs7' \
    --userId 'QTWhrOr5' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetPaymentAccounts' test.out

#- 337 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'yZ5Jip0Y' \
    --namespace 'cOMJJ2Zk' \
    --type 'paypal' \
    --userId 'IShOz6q8' \
    > test.out 2>&1
eval_tap $? 337 'PublicDeletePaymentAccount' test.out

#- 338 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'LCG9408z' \
    --userId '0CY39xHc' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'n54KvILG' \
    --limit '67' \
    --offset '94' \
    --sku '88wkH8yb' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 338 'PublicQueryUserSubscriptions' test.out

#- 339 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --body '{"currencyCode": "kbTXIMVz", "itemId": "U3KS2peX", "language": "ccoq-dUkJ-536", "region": "sQfOBeYi", "returnUrl": "8lihIfew", "source": "RJ285L2T"}' \
    --namespace 'EfsYAGOI' \
    --userId 'TNCIuf6I' \
    > test.out 2>&1
eval_tap $? 339 'PublicSubscribeSubscription' test.out

#- 340 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'tNMHJUGz' \
    --userId '89WOfxli' \
    --itemId 'rzPqJG3j' \
    > test.out 2>&1
eval_tap $? 340 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 341 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace '8oRaYZwH' \
    --subscriptionId 'JKXqUzcZ' \
    --userId 'aKDlxq66' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserSubscription' test.out

#- 342 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'Jb3WYufN' \
    --subscriptionId 'Ax2sbJM7' \
    --userId 'Wm9Fl6ay' \
    > test.out 2>&1
eval_tap $? 342 'PublicChangeSubscriptionBillingAccount' test.out

#- 343 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --body '{"immediate": false, "reason": "J2l9zjH2"}' \
    --namespace 'Cm0S4Ica' \
    --subscriptionId 'oxjljHRE' \
    --userId 'qlrFghXf' \
    > test.out 2>&1
eval_tap $? 343 'PublicCancelSubscription' test.out

#- 344 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'gpBoJim8' \
    --subscriptionId 'XyGT95eL' \
    --userId 'ZJ3yOXXm' \
    --excludeFree 'false' \
    --limit '25' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserSubscriptionBillingHistories' test.out

#- 345 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Den9RapA' \
    --namespace 'E0NtxlrO' \
    --userId 'Z4DJRphO' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetWallet' test.out

#- 346 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'bbua40c4' \
    --namespace 'lTkjKWSY' \
    --userId '88RRlSFW' \
    --limit '86' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 346 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE